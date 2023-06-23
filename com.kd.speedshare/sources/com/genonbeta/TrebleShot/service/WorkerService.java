package com.genonbeta.TrebleShot.service;

import android.app.PendingIntent;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.Binder;
import android.os.IBinder;
import com.genonbeta.TrebleShot.R;
import com.genonbeta.TrebleShot.app.Service;
import com.genonbeta.TrebleShot.util.AppUtils;
import com.genonbeta.TrebleShot.util.DynamicNotification;
import com.genonbeta.TrebleShot.util.InterruptAwareJob;
import com.genonbeta.TrebleShot.util.NotificationUtils;
import com.genonbeta.android.framework.util.Interrupter;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

public class WorkerService extends Service {
    public static final String ACTION_KILL_ALL_SIGNAL = "com.genonbeta.intent.action.KILL_ALL_SIGNAL";
    public static final String ACTION_KILL_SIGNAL = "com.genonbeta.intent.action.KILL_SIGNAL";
    public static final String EXTRA_TASK_HASH = "extraTaskId";
    public static final int ID_NOTIFICATION_FOREGROUND = 1103;
    public static final int REQUEST_CODE_RESCUE_TASK = 10910;
    public static final String TAG = WorkerService.class.getSimpleName();
    private LocalBinder mBinder = new LocalBinder();
    private ExecutorService mExecutor = Executors.newFixedThreadPool(Runtime.getRuntime().availableProcessors());
    private DynamicNotification mNotification;
    private NotificationUtils mNotificationUtils;
    private final List<RunningTask> mTaskList = new ArrayList();

    public interface OnAttachListener {
        void onAttachedToTask(RunningTask runningTask);
    }

    public static int intentHash(Intent intent) {
        StringBuilder sb = new StringBuilder();
        sb.append(intent.getComponent());
        sb.append(intent.getData());
        sb.append(intent.getPackage());
        sb.append(intent.getAction());
        sb.append(intent.getFlags());
        sb.append(intent.getType());
        if (intent.getExtras() != null) {
            sb.append(intent.getExtras().toString());
        }
        return sb.toString().hashCode();
    }

    public void onCreate() {
        super.onCreate();
        this.mNotificationUtils = new NotificationUtils(this, getDatabase(), getDefaultPreferences());
    }

    public IBinder onBind(Intent intent) {
        return this.mBinder;
    }

    public int onStartCommand(Intent intent, int i, int i2) {
        if (intent == null) {
            return 1;
        }
        if (ACTION_KILL_SIGNAL.equals(intent.getAction()) && intent.hasExtra(EXTRA_TASK_HASH)) {
            int intExtra = intent.getIntExtra(EXTRA_TASK_HASH, -1);
            RunningTask findTaskByHash = findTaskByHash(intExtra);
            if (findTaskByHash == null || findTaskByHash.getInterrupter().interrupted()) {
                getNotificationUtils().cancel(intExtra);
                return 1;
            }
            findTaskByHash.getInterrupter().interrupt();
            findTaskByHash.onInterrupted();
            return 1;
        } else if (!ACTION_KILL_ALL_SIGNAL.equals(intent.getAction())) {
            return 1;
        } else {
            synchronized (getTaskList()) {
                for (RunningTask next : getTaskList()) {
                    next.getInterrupter().interrupt();
                    next.onInterrupted();
                }
            }
            return 1;
        }
    }

    public void onDestroy() {
        super.onDestroy();
        synchronized (getTaskList()) {
            for (RunningTask interrupter : getTaskList()) {
                interrupter.getInterrupter().interrupt(false);
            }
        }
    }

    public synchronized RunningTask findTaskByHash(int i) {
        synchronized (getTaskList()) {
            for (RunningTask next : getTaskList()) {
                if (next.hashCode() == i) {
                    return next;
                }
            }
            return null;
        }
    }

    public List<RunningTask> getTaskList() {
        return this.mTaskList;
    }

    public void publishNotification(RunningTask runningTask) {
        int i;
        if (runningTask.mNotification == null) {
            PendingIntent service = PendingIntent.getService(this, AppUtils.getUniqueNumber(), new Intent(this, WorkerService.class).setAction(ACTION_KILL_SIGNAL).putExtra(EXTRA_TASK_HASH, runningTask.hashCode()), 0);
            DynamicNotification unused = runningTask.mNotification = this.mNotificationUtils.buildDynamicNotification((long) runningTask.hashCode(), NotificationUtils.NOTIFICATION_CHANNEL_LOW);
            DynamicNotification access$000 = runningTask.mNotification;
            if (runningTask.getIconRes() == 0) {
                i = R.drawable.ic_autorenew_white_24dp_static;
            } else {
                i = runningTask.getIconRes();
            }
            access$000.setSmallIcon(i).setContentTitle(getString(com.kd.speedshare.R.string.text_taskOngoing)).addAction(R.drawable.ic_close_white_24dp_static, getString(com.kd.speedshare.R.string.butn_cancel), service);
            if (runningTask.mActivityIntent != null) {
                runningTask.mNotification.setContentIntent(runningTask.mActivityIntent);
            }
        }
        runningTask.mNotification.setContentTitle(runningTask.getTitle()).setContentText(runningTask.getStatusText());
        runningTask.mNotification.show();
    }

    public void publishForegroundNotification() {
        if (this.mNotification == null) {
            DynamicNotification buildDynamicNotification = this.mNotificationUtils.buildDynamicNotification(1103, NotificationUtils.NOTIFICATION_CHANNEL_LOW);
            this.mNotification = buildDynamicNotification;
            buildDynamicNotification.setSmallIcon(R.drawable.ic_autorenew_white_24dp_static).setContentTitle(getString(com.kd.speedshare.R.string.text_taskOngoing));
        }
        this.mNotification.setContentText(getString(com.kd.speedshare.R.string.text_workerService));
        startForeground(ID_NOTIFICATION_FOREGROUND, this.mNotification.build());
    }

    /* access modifiers changed from: protected */
    public synchronized void registerWork(RunningTask runningTask) {
        synchronized (getTaskList()) {
            getTaskList().add(runningTask);
        }
        publishForegroundNotification();
        publishNotification(runningTask);
    }

    public void run(final RunningTask runningTask) {
        this.mExecutor.submit(new Runnable() {
            public void run() {
                runningTask.setService(WorkerService.this);
                WorkerService.this.registerWork(runningTask);
                runningTask.run();
                WorkerService.this.unregisterWork(runningTask);
                runningTask.setService((WorkerService) null);
            }
        });
    }

    /* access modifiers changed from: protected */
    public synchronized void unregisterWork(RunningTask runningTask) {
        runningTask.mNotification.cancel();
        synchronized (getTaskList()) {
            getTaskList().remove(runningTask);
            if (getTaskList().size() <= 0) {
                stopForeground(true);
            }
        }
    }

    public static abstract class RunningTask<T extends OnAttachListener> extends InterruptAwareJob {
        /* access modifiers changed from: private */
        public PendingIntent mActivityIntent;
        private T mAnchorListener;
        private int mHash = 0;
        private int mIconRes;
        private Interrupter mInterrupter;
        private long mLastNotified = 0;
        /* access modifiers changed from: private */
        public DynamicNotification mNotification;
        private WorkerService mService;
        private String mStatusText;
        private String mTitle;

        public void onInterrupted() {
        }

        /* access modifiers changed from: protected */
        public abstract void onRun();

        public Interrupter getInterrupter() {
            if (this.mInterrupter == null) {
                this.mInterrupter = new Interrupter();
            }
            return this.mInterrupter;
        }

        public RunningTask<T> setInterrupter(Interrupter interrupter) {
            this.mInterrupter = interrupter;
            return this;
        }

        public void detachAnchor() {
            this.mAnchorListener = null;
        }

        public int hashCode() {
            int i = this.mHash;
            if (i != 0) {
                return i;
            }
            return super.hashCode();
        }

        /* JADX WARNING: Code restructure failed: missing block: B:6:0x000e, code lost:
            r2 = r2.mHash;
         */
        /* Code decompiled incorrectly, please refer to instructions dump. */
        public boolean equals(java.lang.Object r2) {
            /*
                r1 = this;
                boolean r0 = r2 instanceof com.genonbeta.TrebleShot.service.WorkerService.RunningTask
                if (r0 == 0) goto L_0x0018
                android.app.PendingIntent r0 = r1.mActivityIntent
                if (r0 == 0) goto L_0x0018
                com.genonbeta.TrebleShot.service.WorkerService$RunningTask r2 = (com.genonbeta.TrebleShot.service.WorkerService.RunningTask) r2
                int r0 = r1.mHash
                if (r0 == 0) goto L_0x0016
                int r2 = r2.mHash
                if (r2 == 0) goto L_0x0016
                if (r0 != r2) goto L_0x0016
                r2 = 1
                goto L_0x0017
            L_0x0016:
                r2 = 0
            L_0x0017:
                return r2
            L_0x0018:
                boolean r2 = super.equals(r2)
                return r2
            */
            throw new UnsupportedOperationException("Method not decompiled: com.genonbeta.TrebleShot.service.WorkerService.RunningTask.equals(java.lang.Object):boolean");
        }

        public T getAnchorListener() {
            return this.mAnchorListener;
        }

        public RunningTask<T> setAnchorListener(T t) {
            this.mAnchorListener = t;
            t.onAttachedToTask(this);
            return this;
        }

        public PendingIntent getContentIntent() {
            return this.mActivityIntent;
        }

        public RunningTask<T> setContentIntent(PendingIntent pendingIntent) {
            this.mActivityIntent = pendingIntent;
            return this;
        }

        /* access modifiers changed from: protected */
        public WorkerService getService() {
            return this.mService;
        }

        /* access modifiers changed from: private */
        public void setService(WorkerService workerService) {
            this.mService = workerService;
        }

        public int getIconRes() {
            return this.mIconRes;
        }

        public RunningTask<T> setIconRes(int i) {
            this.mIconRes = i;
            return this;
        }

        public String getTitle() {
            return this.mTitle;
        }

        public RunningTask<T> setTitle(String str) {
            this.mTitle = str;
            return this;
        }

        public String getStatusText() {
            return this.mStatusText;
        }

        public boolean publishStatusText(String str) {
            this.mStatusText = str;
            if (System.currentTimeMillis() - this.mLastNotified <= 2000) {
                return false;
            }
            this.mService.publishNotification(this);
            this.mLastNotified = System.currentTimeMillis();
            return true;
        }

        public RunningTask<T> setContentIntent(Context context, Intent intent) {
            this.mHash = WorkerService.intentHash(intent);
            setContentIntent(PendingIntent.getActivity(context, 0, intent, 0));
            return this;
        }

        /* access modifiers changed from: protected */
        public void run() {
            run(getInterrupter());
        }

        public boolean run(final Context context) {
            return context.bindService(new Intent(context, WorkerService.class), new ServiceConnection() {
                public void onServiceDisconnected(ComponentName componentName) {
                }

                public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
                    AppUtils.startForegroundService(context, new Intent(context, WorkerService.class));
                    ((LocalBinder) iBinder).getService().run(RunningTask.this);
                    context.unbindService(this);
                }
            }, 1);
        }
    }

    public class LocalBinder extends Binder {
        public LocalBinder() {
        }

        public WorkerService getService() {
            return WorkerService.this;
        }
    }
}
