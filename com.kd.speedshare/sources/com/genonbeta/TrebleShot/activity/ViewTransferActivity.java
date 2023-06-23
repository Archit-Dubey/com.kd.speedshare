package com.genonbeta.TrebleShot.activity;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.AsyncTask;
import android.view.Menu;
import android.view.MenuItem;
import android.view.SubMenu;
import android.view.View;
import androidx.appcompat.app.AlertDialog;
import androidx.fragment.app.Fragment;
import com.genonbeta.TrebleShot.app.Activity;
import com.genonbeta.TrebleShot.callback.OnDeviceSelectedListener;
import com.genonbeta.TrebleShot.database.AccessDatabase;
import com.genonbeta.TrebleShot.dialog.EstablishConnectionDialog;
import com.genonbeta.TrebleShot.dialog.SelectAssigneeDialog;
import com.genonbeta.TrebleShot.dialog.ToggleMultipleTransferDialog;
import com.genonbeta.TrebleShot.dialog.TransferInfoDialog;
import com.genonbeta.TrebleShot.fragment.TransferFileExplorerFragment;
import com.genonbeta.TrebleShot.object.NetworkDevice;
import com.genonbeta.TrebleShot.object.ShowingAssignee;
import com.genonbeta.TrebleShot.object.TransferGroup;
import com.genonbeta.TrebleShot.object.TransferObject;
import com.genonbeta.TrebleShot.service.CommunicationService;
import com.genonbeta.TrebleShot.ui.callback.PowerfulActionModeSupport;
import com.genonbeta.TrebleShot.util.AppUtils;
import com.genonbeta.TrebleShot.util.FileUtils;
import com.genonbeta.TrebleShot.util.TextUtils;
import com.genonbeta.TrebleShot.util.TransferUtils;
import com.genonbeta.android.database.DatabaseObject;
import com.genonbeta.android.framework.ui.callback.SnackbarSupport;
import com.genonbeta.android.framework.widget.PowerfulActionMode;
import com.google.android.material.snackbar.Snackbar;
import com.kd.speedshare.R;
import java.util.ArrayList;
import java.util.List;

public class ViewTransferActivity extends Activity implements PowerfulActionModeSupport, SnackbarSupport {
    public static final String ACTION_LIST_TRANSFERS = "com.genonbeta.TrebleShot.action.LIST_TRANSFERS";
    public static final String EXTRA_DEVICE_ID = "extraDeviceId";
    public static final String EXTRA_GROUP_ID = "extraGroupId";
    public static final String EXTRA_REQUEST_ID = "extraRequestId";
    public static final String EXTRA_REQUEST_TYPE = "extraRequestType";
    public static final int REQUEST_ADD_DEVICES = 5045;
    public static final String TAG = ViewTransferActivity.class.getSimpleName();
    /* access modifiers changed from: private */
    public final List<String> mActiveProcesses = new ArrayList();
    private MenuItem mAddDeviceMenu;
    private Activity.OnBackPressedListener mBackPressedListener;
    private MenuItem mCnTestMenu;
    private CrunchLatestDataTask mDataCruncher;
    private String mDeviceId;
    /* access modifiers changed from: private */
    public TransferGroup mGroup;
    private PowerfulActionMode mMode;
    private BroadcastReceiver mReceiver = new BroadcastReceiver() {
        public void onReceive(Context context, Intent intent) {
            if (!AccessDatabase.ACTION_DATABASE_CHANGE.equals(intent.getAction()) || !intent.hasExtra(AccessDatabase.EXTRA_TABLE_NAME)) {
                if (!CommunicationService.ACTION_TASK_STATUS_CHANGE.equals(intent.getAction()) || !intent.hasExtra("extraGroupId") || !intent.hasExtra("extraDeviceId")) {
                    if (CommunicationService.ACTION_TASK_RUNNING_LIST_CHANGE.equals(intent.getAction())) {
                        long[] longArrayExtra = intent.getLongArrayExtra(CommunicationService.EXTRA_TASK_LIST_RUNNING);
                        ArrayList<String> stringArrayListExtra = intent.getStringArrayListExtra(CommunicationService.EXTRA_DEVICE_LIST_RUNNING);
                        if (longArrayExtra != null && stringArrayListExtra != null && longArrayExtra.length == stringArrayListExtra.size()) {
                            synchronized (ViewTransferActivity.this.mActiveProcesses) {
                                ViewTransferActivity.this.mActiveProcesses.clear();
                                int length = longArrayExtra.length;
                                int i = 0;
                                int i2 = 0;
                                while (i < length) {
                                    long j = longArrayExtra[i];
                                    int i3 = i2 + 1;
                                    String str = stringArrayListExtra.get(i2);
                                    if (j == ViewTransferActivity.this.mGroup.groupId) {
                                        ViewTransferActivity.this.mActiveProcesses.add(str);
                                    }
                                    i++;
                                    i2 = i3;
                                }
                                ViewTransferActivity.this.showMenus();
                            }
                        }
                    }
                } else if (intent.getLongExtra("extraGroupId", -1) == ViewTransferActivity.this.mGroup.groupId) {
                    String stringExtra = intent.getStringExtra("extraDeviceId");
                    int intExtra = intent.getIntExtra(CommunicationService.EXTRA_TASK_CHANGE_TYPE, -1);
                    synchronized (ViewTransferActivity.this.mActiveProcesses) {
                        if (intExtra == 0) {
                            ViewTransferActivity.this.mActiveProcesses.add(stringExtra);
                        } else {
                            ViewTransferActivity.this.mActiveProcesses.remove(stringExtra);
                        }
                    }
                    ViewTransferActivity.this.showMenus();
                }
            } else if (AccessDatabase.TABLE_TRANSFERGROUP.equals(intent.getStringExtra(AccessDatabase.EXTRA_TABLE_NAME))) {
                ViewTransferActivity.this.reconstructGroup();
            } else if (intent.hasExtra(AccessDatabase.EXTRA_CHANGE_TYPE) && AccessDatabase.TABLE_TRANSFER.equals(intent.getStringExtra(AccessDatabase.EXTRA_TABLE_NAME))) {
                if (AccessDatabase.TYPE_INSERT.equals(intent.getStringExtra(AccessDatabase.EXTRA_CHANGE_TYPE)) || AccessDatabase.TYPE_REMOVE.equals(intent.getStringExtra(AccessDatabase.EXTRA_CHANGE_TYPE))) {
                    ViewTransferActivity.this.updateCalculations();
                }
            }
        }
    };
    private MenuItem mRetryMenu;
    private MenuItem mSettingsMenu;
    private MenuItem mShowFilesMenu;
    private MenuItem mToggleBrowserShare;
    private MenuItem mToggleMenu;
    /* access modifiers changed from: private */
    public final TransferGroup.Index mTransactionIndex = new TransferGroup.Index();
    /* access modifiers changed from: private */
    public TransferObject mTransferObject;
    private MenuItem mWebShareShortcut;

    public static void startInstance(Context context, long j) {
        context.startActivity(new Intent(context, ViewTransferActivity.class).setAction(ACTION_LIST_TRANSFERS).putExtra("extraGroupId", j).addFlags(268435456));
    }

    /* JADX WARNING: type inference failed for: r0v4, types: [androidx.fragment.app.Fragment] */
    /* access modifiers changed from: protected */
    /* JADX WARNING: Multi-variable type inference failed */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public void onCreate(android.os.Bundle r10) {
        /*
            r9 = this;
            java.lang.String r0 = "extraRequestType"
            java.lang.String r1 = "extraDeviceId"
            java.lang.String r2 = "extraRequestId"
            super.onCreate(r10)
            r10 = 2131492911(0x7f0c002f, float:1.8609287E38)
            r9.setContentView((int) r10)
            r10 = 2131296388(0x7f090084, float:1.8210691E38)
            android.view.View r10 = r9.findViewById(r10)
            com.genonbeta.android.framework.widget.PowerfulActionMode r10 = (com.genonbeta.android.framework.widget.PowerfulActionMode) r10
            r9.mMode = r10
            r10 = 2131296769(0x7f090201, float:1.8211464E38)
            android.view.View r10 = r9.findViewById(r10)
            androidx.appcompat.widget.Toolbar r10 = (androidx.appcompat.widget.Toolbar) r10
            r9.setSupportActionBar(r10)
            androidx.appcompat.app.ActionBar r3 = r9.getSupportActionBar()
            r4 = 1
            if (r3 == 0) goto L_0x003e
            androidx.appcompat.app.ActionBar r3 = r9.getSupportActionBar()
            r5 = 2131165358(0x7f0700ae, float:1.794493E38)
            r3.setHomeAsUpIndicator((int) r5)
            androidx.appcompat.app.ActionBar r3 = r9.getSupportActionBar()
            r3.setDisplayHomeAsUpEnabled(r4)
        L_0x003e:
            android.content.Intent r3 = r9.getIntent()
            java.lang.String r3 = r3.getAction()
            java.lang.String r5 = "android.intent.action.VIEW"
            boolean r3 = r5.equals(r3)
            java.lang.String r5 = "com.genonbeta.TrebleShot.action.LIST_TRANSFERS"
            java.lang.String r6 = "extraGroupId"
            if (r3 == 0) goto L_0x0104
            android.content.Intent r3 = r9.getIntent()
            android.net.Uri r3 = r3.getData()
            if (r3 == 0) goto L_0x0104
            r0 = 0
            android.content.Intent r1 = r9.getIntent()     // Catch:{ Exception -> 0x00f4 }
            android.net.Uri r1 = r1.getData()     // Catch:{ Exception -> 0x00f4 }
            com.genonbeta.android.framework.io.StreamInfo r1 = com.genonbeta.android.framework.io.StreamInfo.getStreamInfo(r9, r1)     // Catch:{ Exception -> 0x00f4 }
            java.lang.String r2 = TAG     // Catch:{ Exception -> 0x00f4 }
            java.lang.StringBuilder r3 = new java.lang.StringBuilder     // Catch:{ Exception -> 0x00f4 }
            r3.<init>()     // Catch:{ Exception -> 0x00f4 }
            java.lang.String r7 = "Requested file is: "
            r3.append(r7)     // Catch:{ Exception -> 0x00f4 }
            java.lang.String r7 = r1.friendlyName     // Catch:{ Exception -> 0x00f4 }
            r3.append(r7)     // Catch:{ Exception -> 0x00f4 }
            java.lang.String r3 = r3.toString()     // Catch:{ Exception -> 0x00f4 }
            android.util.Log.d(r2, r3)     // Catch:{ Exception -> 0x00f4 }
            com.genonbeta.TrebleShot.database.AccessDatabase r2 = r9.getDatabase()     // Catch:{ Exception -> 0x00f4 }
            com.genonbeta.android.database.SQLQuery$Select r3 = new com.genonbeta.android.database.SQLQuery$Select     // Catch:{ Exception -> 0x00f4 }
            java.lang.String r7 = "transfer"
            java.lang.String[] r8 = new java.lang.String[r0]     // Catch:{ Exception -> 0x00f4 }
            r3.<init>(r7, r8)     // Catch:{ Exception -> 0x00f4 }
            java.lang.String r7 = "file=?"
            java.lang.String[] r4 = new java.lang.String[r4]     // Catch:{ Exception -> 0x00f4 }
            java.lang.String r1 = r1.friendlyName     // Catch:{ Exception -> 0x00f4 }
            r4[r0] = r1     // Catch:{ Exception -> 0x00f4 }
            com.genonbeta.android.database.SQLQuery$Select r1 = r3.setWhere(r7, r4)     // Catch:{ Exception -> 0x00f4 }
            com.genonbeta.android.database.CursorItem r1 = r2.getFirstFromTable(r1)     // Catch:{ Exception -> 0x00f4 }
            if (r1 == 0) goto L_0x00ec
            com.genonbeta.TrebleShot.object.TransferObject r2 = new com.genonbeta.TrebleShot.object.TransferObject     // Catch:{ Exception -> 0x00f4 }
            r2.<init>(r1)     // Catch:{ Exception -> 0x00f4 }
            com.genonbeta.TrebleShot.object.TransferGroup r1 = new com.genonbeta.TrebleShot.object.TransferGroup     // Catch:{ Exception -> 0x00f4 }
            long r3 = r2.groupId     // Catch:{ Exception -> 0x00f4 }
            r1.<init>((long) r3)     // Catch:{ Exception -> 0x00f4 }
            com.genonbeta.TrebleShot.database.AccessDatabase r3 = r9.getDatabase()     // Catch:{ Exception -> 0x00f4 }
            r3.reconstruct(r2)     // Catch:{ Exception -> 0x00f4 }
            r9.mGroup = r1     // Catch:{ Exception -> 0x00f4 }
            r9.mTransferObject = r2     // Catch:{ Exception -> 0x00f4 }
            android.content.Intent r1 = r9.getIntent()     // Catch:{ Exception -> 0x00f4 }
            android.os.Bundle r1 = r1.getExtras()     // Catch:{ Exception -> 0x00f4 }
            if (r1 == 0) goto L_0x00cc
            android.content.Intent r1 = r9.getIntent()     // Catch:{ Exception -> 0x00f4 }
            android.os.Bundle r1 = r1.getExtras()     // Catch:{ Exception -> 0x00f4 }
            r1.clear()     // Catch:{ Exception -> 0x00f4 }
        L_0x00cc:
            android.content.Intent r1 = r9.getIntent()     // Catch:{ Exception -> 0x00f4 }
            android.content.Intent r1 = r1.setAction(r5)     // Catch:{ Exception -> 0x00f4 }
            com.genonbeta.TrebleShot.object.TransferGroup r3 = r9.mGroup     // Catch:{ Exception -> 0x00f4 }
            long r3 = r3.groupId     // Catch:{ Exception -> 0x00f4 }
            r1.putExtra(r6, r3)     // Catch:{ Exception -> 0x00f4 }
            com.genonbeta.TrebleShot.dialog.TransferInfoDialog r1 = new com.genonbeta.TrebleShot.dialog.TransferInfoDialog     // Catch:{ Exception -> 0x00f4 }
            r1.<init>(r9, r2)     // Catch:{ Exception -> 0x00f4 }
            r1.show()     // Catch:{ Exception -> 0x00f4 }
            java.lang.String r1 = TAG     // Catch:{ Exception -> 0x00f4 }
            java.lang.String r2 = "Created instance from an file intent. Original has been cleaned and changed to open intent"
            android.util.Log.d(r1, r2)     // Catch:{ Exception -> 0x00f4 }
            goto L_0x0189
        L_0x00ec:
            java.lang.Exception r1 = new java.lang.Exception     // Catch:{ Exception -> 0x00f4 }
            java.lang.String r2 = "File is not found in the database"
            r1.<init>(r2)     // Catch:{ Exception -> 0x00f4 }
            throw r1     // Catch:{ Exception -> 0x00f4 }
        L_0x00f4:
            r1 = move-exception
            r1.printStackTrace()
            r1 = 2131820788(0x7f1100f4, float:1.92743E38)
            android.widget.Toast r0 = android.widget.Toast.makeText(r9, r1, r0)
            r0.show()
            goto L_0x0189
        L_0x0104:
            android.content.Intent r3 = r9.getIntent()
            java.lang.String r3 = r3.getAction()
            boolean r3 = r5.equals(r3)
            if (r3 == 0) goto L_0x0189
            android.content.Intent r3 = r9.getIntent()
            boolean r3 = r3.hasExtra(r6)
            if (r3 == 0) goto L_0x0189
            com.genonbeta.TrebleShot.object.TransferGroup r3 = new com.genonbeta.TrebleShot.object.TransferGroup
            android.content.Intent r4 = r9.getIntent()
            r7 = -1
            long r4 = r4.getLongExtra(r6, r7)
            r3.<init>((long) r4)
            com.genonbeta.TrebleShot.database.AccessDatabase r4 = r9.getDatabase()     // Catch:{ Exception -> 0x0185 }
            r4.reconstruct(r3)     // Catch:{ Exception -> 0x0185 }
            r9.mGroup = r3     // Catch:{ Exception -> 0x0185 }
            android.content.Intent r3 = r9.getIntent()     // Catch:{ Exception -> 0x0185 }
            boolean r3 = r3.hasExtra(r2)     // Catch:{ Exception -> 0x0185 }
            if (r3 == 0) goto L_0x0189
            android.content.Intent r3 = r9.getIntent()     // Catch:{ Exception -> 0x0185 }
            boolean r3 = r3.hasExtra(r1)     // Catch:{ Exception -> 0x0185 }
            if (r3 == 0) goto L_0x0189
            android.content.Intent r3 = r9.getIntent()     // Catch:{ Exception -> 0x0185 }
            boolean r3 = r3.hasExtra(r0)     // Catch:{ Exception -> 0x0185 }
            if (r3 == 0) goto L_0x0189
            android.content.Intent r3 = r9.getIntent()     // Catch:{ Exception -> 0x0185 }
            long r2 = r3.getLongExtra(r2, r7)     // Catch:{ Exception -> 0x0185 }
            android.content.Intent r4 = r9.getIntent()     // Catch:{ Exception -> 0x0185 }
            java.lang.String r1 = r4.getStringExtra(r1)     // Catch:{ Exception -> 0x0185 }
            android.content.Intent r4 = r9.getIntent()     // Catch:{ Exception -> 0x0183 }
            java.lang.String r0 = r4.getStringExtra(r0)     // Catch:{ Exception -> 0x0183 }
            com.genonbeta.TrebleShot.object.TransferObject$Type r0 = com.genonbeta.TrebleShot.object.TransferObject.Type.valueOf(r0)     // Catch:{ Exception -> 0x0183 }
            com.genonbeta.TrebleShot.object.TransferObject r4 = new com.genonbeta.TrebleShot.object.TransferObject     // Catch:{ Exception -> 0x0183 }
            r4.<init>(r2, r1, r0)     // Catch:{ Exception -> 0x0183 }
            com.genonbeta.TrebleShot.database.AccessDatabase r0 = r9.getDatabase()     // Catch:{ Exception -> 0x0183 }
            r0.reconstruct(r4)     // Catch:{ Exception -> 0x0183 }
            com.genonbeta.TrebleShot.dialog.TransferInfoDialog r0 = new com.genonbeta.TrebleShot.dialog.TransferInfoDialog     // Catch:{ Exception -> 0x0183 }
            r0.<init>(r9, r4)     // Catch:{ Exception -> 0x0183 }
            r0.show()     // Catch:{ Exception -> 0x0183 }
            goto L_0x0189
        L_0x0183:
            goto L_0x0189
        L_0x0185:
            r0 = move-exception
            r0.printStackTrace()
        L_0x0189:
            com.genonbeta.TrebleShot.object.TransferGroup r0 = r9.mGroup
            if (r0 != 0) goto L_0x0191
            r9.finish()
            goto L_0x01ea
        L_0x0191:
            android.os.Bundle r0 = new android.os.Bundle
            r0.<init>()
            com.genonbeta.TrebleShot.object.TransferGroup r1 = r9.mGroup
            long r1 = r1.groupId
            java.lang.String r3 = "argGroupId"
            r0.putLong(r3, r1)
            com.genonbeta.TrebleShot.object.TransferObject r1 = r9.mTransferObject
            if (r1 == 0) goto L_0x01ad
            java.lang.String r1 = r1.directory
            if (r1 != 0) goto L_0x01a8
            goto L_0x01ad
        L_0x01a8:
            com.genonbeta.TrebleShot.object.TransferObject r1 = r9.mTransferObject
            java.lang.String r1 = r1.directory
            goto L_0x01ae
        L_0x01ad:
            r1 = 0
        L_0x01ae:
            java.lang.String r2 = "argPath"
            r0.putString(r2, r1)
            androidx.fragment.app.FragmentManager r1 = r9.getSupportFragmentManager()
            r2 = 2131296389(0x7f090085, float:1.8210693E38)
            androidx.fragment.app.Fragment r1 = r1.findFragmentById(r2)
            com.genonbeta.TrebleShot.fragment.TransferFileExplorerFragment r1 = (com.genonbeta.TrebleShot.fragment.TransferFileExplorerFragment) r1
            if (r1 != 0) goto L_0x01dd
            java.lang.Class<com.genonbeta.TrebleShot.fragment.TransferFileExplorerFragment> r1 = com.genonbeta.TrebleShot.fragment.TransferFileExplorerFragment.class
            java.lang.String r1 = r1.getName()
            androidx.fragment.app.Fragment r0 = androidx.fragment.app.Fragment.instantiate(r9, r1, r0)
            r1 = r0
            com.genonbeta.TrebleShot.fragment.TransferFileExplorerFragment r1 = (com.genonbeta.TrebleShot.fragment.TransferFileExplorerFragment) r1
            androidx.fragment.app.FragmentManager r0 = r9.getSupportFragmentManager()
            androidx.fragment.app.FragmentTransaction r0 = r0.beginTransaction()
            r0.add((int) r2, (androidx.fragment.app.Fragment) r1)
            r0.commit()
        L_0x01dd:
            r9.attachListeners(r1)
            com.genonbeta.android.framework.widget.PowerfulActionMode r0 = r9.mMode
            com.genonbeta.TrebleShot.activity.ViewTransferActivity$2 r1 = new com.genonbeta.TrebleShot.activity.ViewTransferActivity$2
            r1.<init>(r10)
            r0.setOnSelectionTaskListener(r1)
        L_0x01ea:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.genonbeta.TrebleShot.activity.ViewTransferActivity.onCreate(android.os.Bundle):void");
    }

    /* access modifiers changed from: protected */
    public void onResume() {
        super.onResume();
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction(AccessDatabase.ACTION_DATABASE_CHANGE);
        intentFilter.addAction(CommunicationService.ACTION_TASK_STATUS_CHANGE);
        intentFilter.addAction(CommunicationService.ACTION_TASK_RUNNING_LIST_CHANGE);
        registerReceiver(this.mReceiver, intentFilter);
        reconstructGroup();
        requestTaskStateUpdate();
        updateCalculations();
    }

    /* access modifiers changed from: protected */
    public void onPause() {
        super.onPause();
        unregisterReceiver(this.mReceiver);
    }

    public boolean onCreateOptionsMenu(Menu menu) {
        super.onCreateOptionsMenu(menu);
        getMenuInflater().inflate(R.menu.actions_transfer, menu);
        this.mCnTestMenu = menu.findItem(R.id.actions_transfer_test_connection);
        this.mToggleMenu = menu.findItem(R.id.actions_transfer_toggle);
        this.mRetryMenu = menu.findItem(R.id.actions_transfer_receiver_retry_receiving);
        this.mShowFilesMenu = menu.findItem(R.id.actions_transfer_receiver_show_files);
        this.mAddDeviceMenu = menu.findItem(R.id.actions_transfer_sender_add_device);
        this.mSettingsMenu = menu.findItem(R.id.actions_transfer_settings);
        this.mWebShareShortcut = menu.findItem(R.id.actions_transfer_web_share_shortcut);
        this.mToggleBrowserShare = menu.findItem(R.id.actions_transfer_toggle_browser_share);
        showMenus();
        return true;
    }

    /* JADX WARNING: Code restructure failed: missing block: B:3:0x0018, code lost:
        if (r0 == null) goto L_0x001c;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public boolean onPrepareOptionsMenu(android.view.Menu r5) {
        /*
            r4 = this;
            java.lang.String r0 = r4.mDeviceId
            int r0 = r4.findDevice(r0)
            r1 = 2131296365(0x7f09006d, float:1.8210645E38)
            android.view.MenuItem r1 = r5.findItem(r1)
            android.view.SubMenu r1 = r1.getSubMenu()
            r2 = 1
            if (r0 < 0) goto L_0x001b
            android.view.MenuItem r0 = r1.getItem(r0)
            if (r0 != 0) goto L_0x002b
            goto L_0x001c
        L_0x001b:
            r0 = 0
        L_0x001c:
            int r3 = r1.size()
            if (r3 <= 0) goto L_0x002b
            int r0 = r1.size()
            int r0 = r0 - r2
            android.view.MenuItem r0 = r1.getItem(r0)
        L_0x002b:
            if (r0 == 0) goto L_0x0030
            r0.setChecked(r2)
        L_0x0030:
            boolean r5 = super.onPrepareOptionsMenu(r5)
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: com.genonbeta.TrebleShot.activity.ViewTransferActivity.onPrepareOptionsMenu(android.view.Menu):boolean");
    }

    public boolean onOptionsItemSelected(MenuItem menuItem) {
        int itemId = menuItem.getItemId();
        if (itemId == 16908332) {
            finish();
        } else if (itemId == R.id.actions_transfer_toggle) {
            toggleTask();
        } else {
            String str = null;
            if (itemId == R.id.actions_transfer_remove) {
                new AlertDialog.Builder(this).setTitle((int) R.string.ques_removeAll).setMessage((int) R.string.text_removeCertainPendingTransfersSummary).setNegativeButton((int) R.string.butn_cancel, (DialogInterface.OnClickListener) null).setPositiveButton((int) R.string.butn_remove, (DialogInterface.OnClickListener) new DialogInterface.OnClickListener() {
                    public void onClick(DialogInterface dialogInterface, int i) {
                        AccessDatabase database = ViewTransferActivity.this.getDatabase();
                        ViewTransferActivity viewTransferActivity = ViewTransferActivity.this;
                        database.removeAsynchronous((android.app.Activity) viewTransferActivity, (DatabaseObject) viewTransferActivity.mGroup);
                    }
                }).show();
            } else if (itemId == R.id.actions_transfer_receiver_retry_receiving) {
                TransferUtils.recoverIncomingInterruptions(this, this.mGroup.groupId);
                createSnackbar(R.string.mesg_retryReceivingNotice, new Object[0]).show();
            } else if (itemId == R.id.actions_transfer_receiver_show_files) {
                startActivity(new Intent(this, FileExplorerActivity.class).putExtra(FileExplorerActivity.EXTRA_FILE_PATH, FileUtils.getSavePath(this, this.mGroup).getUri()));
            } else if (itemId == R.id.actions_transfer_sender_add_device) {
                startDeviceAddingActivity();
            } else if (itemId == R.id.actions_transfer_test_connection) {
                final List<ShowingAssignee> loadAssigneeList = TransferUtils.loadAssigneeList(getDatabase(), this.mGroup.groupId);
                if (loadAssigneeList.size() == 1) {
                    new EstablishConnectionDialog(this, loadAssigneeList.get(0).device, (OnDeviceSelectedListener) null).show();
                } else if (loadAssigneeList.size() > 1) {
                    new SelectAssigneeDialog(this, loadAssigneeList, new DialogInterface.OnClickListener() {
                        public void onClick(DialogInterface dialogInterface, int i) {
                            new EstablishConnectionDialog(ViewTransferActivity.this, ((ShowingAssignee) loadAssigneeList.get(i)).device, (OnDeviceSelectedListener) null).show();
                        }
                    }).show();
                }
            } else if (menuItem.getItemId() == R.id.actions_transfer_toggle_browser_share) {
                TransferGroup transferGroup = this.mGroup;
                transferGroup.isServedOnWeb = !transferGroup.isServedOnWeb;
                getDatabase().update((DatabaseObject) this.mGroup);
                showMenus();
                if (this.mGroup.isServedOnWeb) {
                    AppUtils.startWebShareActivity(this, true);
                }
            } else if (menuItem.getGroupId() == R.id.actions_abs_view_transfer_activity_settings) {
                if (menuItem.getOrder() < this.mTransactionIndex.assignees.size()) {
                    str = this.mTransactionIndex.assignees.get(menuItem.getOrder()).deviceId;
                }
                this.mDeviceId = str;
                TransferFileExplorerFragment transferFileExplorerFragment = (TransferFileExplorerFragment) getSupportFragmentManager().findFragmentById(R.id.activity_transaction_content_frame);
                if (transferFileExplorerFragment != null && transferFileExplorerFragment.setDeviceId(this.mDeviceId)) {
                    transferFileExplorerFragment.refreshList();
                }
            } else if (menuItem.getItemId() != R.id.actions_transfer_web_share_shortcut) {
                return super.onOptionsItemSelected(menuItem);
            } else {
                AppUtils.startWebShareActivity(this, false);
            }
        }
        return true;
    }

    public void startDeviceAddingActivity() {
        startActivityForResult(new Intent(this, AddDevicesToTransferActivity.class).putExtra("extraGroupId", this.mGroup.groupId), REQUEST_ADD_DEVICES);
    }

    public void onBackPressed() {
        Activity.OnBackPressedListener onBackPressedListener = this.mBackPressedListener;
        if (onBackPressedListener == null || !onBackPressedListener.onBackPressed()) {
            super.onBackPressed();
        }
    }

    private void attachListeners(Fragment fragment) {
        this.mBackPressedListener = fragment instanceof Activity.OnBackPressedListener ? (Activity.OnBackPressedListener) fragment : null;
    }

    public Snackbar createSnackbar(int i, Object... objArr) {
        TransferFileExplorerFragment transferFileExplorerFragment = (TransferFileExplorerFragment) getSupportFragmentManager().findFragmentById(R.id.activity_transaction_content_frame);
        if (transferFileExplorerFragment == null || !transferFileExplorerFragment.isAdded()) {
            return Snackbar.make(findViewById(R.id.activity_transaction_content_frame), (CharSequence) getString(i, objArr), 0);
        }
        return transferFileExplorerFragment.createSnackbar(i, objArr);
    }

    public int findDevice(String str) {
        ArrayList arrayList = new ArrayList(this.mTransactionIndex.assignees);
        if (str == null || arrayList.size() <= 0) {
            return -1;
        }
        for (int i = 0; i < arrayList.size(); i++) {
            if (str.equals(((ShowingAssignee) arrayList.get(i)).device.deviceId)) {
                return i;
            }
        }
        return -1;
    }

    public TransferGroup getGroup() {
        return this.mGroup;
    }

    public TransferGroup.Index getIndex() {
        return this.mTransactionIndex;
    }

    public PowerfulActionMode getPowerfulActionMode() {
        return this.mMode;
    }

    public void reconstructGroup() {
        try {
            if (this.mGroup != null) {
                getDatabase().reconstruct(this.mGroup);
            }
        } catch (Exception e) {
            e.printStackTrace();
            finish();
        }
    }

    private void requestTaskStateUpdate() {
        if (this.mGroup != null) {
            AppUtils.startForegroundService(this, new Intent(this, CommunicationService.class).setAction(CommunicationService.ACTION_REQUEST_TASK_RUNNING_LIST_CHANGE));
        }
    }

    /* access modifiers changed from: private */
    public void showMenus() {
        int i;
        boolean z = getIndex().incomingCount > 0;
        boolean z2 = getIndex().outgoingCount > 0;
        boolean z3 = z || z2;
        boolean z4 = this.mActiveProcesses.size() > 0;
        MenuItem menuItem = this.mToggleMenu;
        if (menuItem != null && this.mRetryMenu != null && this.mShowFilesMenu != null) {
            if (z3 || z4) {
                if (z4) {
                    this.mToggleMenu.setTitle(R.string.butn_pause);
                } else {
                    this.mToggleMenu.setTitle(z == z2 ? R.string.butn_start : z ? R.string.butn_receive : R.string.butn_send);
                }
                this.mToggleMenu.setVisible(true);
            } else {
                menuItem.setVisible(false);
            }
            this.mToggleBrowserShare.setTitle(this.mGroup.isServedOnWeb ? R.string.butn_hideOnBrowser : R.string.butn_shareOnBrowser);
            this.mToggleBrowserShare.setVisible(z2 || this.mGroup.isServedOnWeb);
            this.mWebShareShortcut.setVisible(z2 && this.mGroup.isServedOnWeb);
            this.mCnTestMenu.setVisible(z3);
            this.mAddDeviceMenu.setVisible(z2);
            this.mRetryMenu.setVisible(z);
            this.mShowFilesMenu.setVisible(z);
            if (!z2 || (this.mTransactionIndex.assignees.size() <= 0 && this.mDeviceId == null)) {
                this.mSettingsMenu.setVisible(false);
            } else {
                SubMenu subMenu = this.mSettingsMenu.setVisible(true).getSubMenu();
                subMenu.clear();
                if (this.mTransactionIndex.assignees.size() > 0) {
                    i = 0;
                    while (i < this.mTransactionIndex.assignees.size()) {
                        subMenu.add(R.id.actions_abs_view_transfer_activity_settings, 0, i, this.mTransactionIndex.assignees.get(i).device.nickname);
                        i++;
                    }
                } else {
                    i = 0;
                }
                subMenu.add(R.id.actions_abs_view_transfer_activity_settings, 0, i, getString(R.string.text_default));
                subMenu.setGroupCheckable(R.id.actions_abs_view_transfer_activity_settings, true, true);
            }
            setTitle(getResources().getQuantityString(R.plurals.text_files, getIndex().incomingCount + getIndex().outgoingCount, new Object[]{Integer.valueOf(getIndex().incomingCount + getIndex().outgoingCount)}));
        }
    }

    private void toggleTask() {
        List<ShowingAssignee> loadAssigneeList = TransferUtils.loadAssigneeList(getDatabase(), this.mGroup.groupId);
        if (loadAssigneeList.size() > 0) {
            boolean z = true;
            if (loadAssigneeList.size() == 1) {
                boolean z2 = getIndex().outgoingCount > 0;
                if (getIndex().incomingCount <= 0) {
                    z = false;
                }
                if (z2 != z) {
                    ShowingAssignee showingAssignee = loadAssigneeList.get(0);
                    toggleTaskForAssignee(showingAssignee, getIndex().incomingCount > 0 ? TransferObject.Type.INCOMING : TransferObject.Type.OUTGOING, this.mActiveProcesses.contains(showingAssignee.deviceId));
                    return;
                }
            }
            new ToggleMultipleTransferDialog(this, this.mGroup, loadAssigneeList, this.mActiveProcesses, getIndex()).show();
        } else if (getIndex().outgoingCount > 0) {
            startDeviceAddingActivity();
        }
    }

    public void toggleTaskForAssignee(final ShowingAssignee showingAssignee, TransferObject.Type type, boolean z) {
        if (z) {
            try {
                TransferUtils.pauseTransfer((Context) this, showingAssignee.groupId, showingAssignee.deviceId);
            } catch (Exception e) {
                e.printStackTrace();
                createSnackbar(R.string.mesg_transferConnectionNotSetUpFix, new Object[0]).setAction((int) R.string.butn_setUp, (View.OnClickListener) new View.OnClickListener() {
                    public void onClick(View view) {
                        ViewTransferActivity viewTransferActivity = ViewTransferActivity.this;
                        TransferUtils.changeConnection(viewTransferActivity, viewTransferActivity.getDatabase(), ViewTransferActivity.this.mGroup, showingAssignee.device, new TransferUtils.ConnectionUpdatedListener() {
                            public void onConnectionUpdated(NetworkDevice.Connection connection, TransferGroup.Assignee assignee) {
                                ViewTransferActivity.this.createSnackbar(R.string.mesg_connectionUpdated, TextUtils.getAdapterName(ViewTransferActivity.this.getApplicationContext(), connection)).show();
                            }
                        });
                    }
                }).show();
            }
        } else {
            getDatabase().reconstruct(new NetworkDevice.Connection((TransferGroup.Assignee) showingAssignee));
            TransferUtils.startTransferWithTest(this, this.mGroup, showingAssignee, type);
        }
    }

    public synchronized void updateCalculations() {
        if (this.mDataCruncher == null || !this.mDataCruncher.requestRestart()) {
            CrunchLatestDataTask crunchLatestDataTask = new CrunchLatestDataTask(new CrunchLatestDataTask.PostExecuteListener() {
                public void onPostExecute() {
                    ViewTransferActivity.this.showMenus();
                    ViewTransferActivity.this.findViewById(R.id.activity_transaction_no_devices_warning).setVisibility(ViewTransferActivity.this.mTransactionIndex.assignees.size() > 0 ? 8 : 0);
                    if (ViewTransferActivity.this.mTransactionIndex.assignees.size() == 0 && ViewTransferActivity.this.mTransferObject != null) {
                        ViewTransferActivity viewTransferActivity = ViewTransferActivity.this;
                        new TransferInfoDialog(viewTransferActivity, viewTransferActivity.mTransferObject).show();
                        TransferObject unused = ViewTransferActivity.this.mTransferObject = null;
                    }
                }
            });
            this.mDataCruncher = crunchLatestDataTask;
            crunchLatestDataTask.execute(new ViewTransferActivity[]{this});
        }
    }

    public static class CrunchLatestDataTask extends AsyncTask<ViewTransferActivity, Void, Void> {
        private PostExecuteListener mListener;
        private boolean mRestartRequested = false;

        public interface PostExecuteListener {
            void onPostExecute();
        }

        public CrunchLatestDataTask(PostExecuteListener postExecuteListener) {
            this.mListener = postExecuteListener;
        }

        /* access modifiers changed from: protected */
        /* JADX WARNING: Removed duplicated region for block: B:0:0x0000 A[LOOP_START, MTH_ENTER_BLOCK] */
        /* Code decompiled incorrectly, please refer to instructions dump. */
        public java.lang.Void doInBackground(com.genonbeta.TrebleShot.activity.ViewTransferActivity... r7) {
            /*
                r6 = this;
            L_0x0000:
                r0 = 0
                r6.mRestartRequested = r0
                int r1 = r7.length
            L_0x0004:
                if (r0 >= r1) goto L_0x0022
                r2 = r7[r0]
                com.genonbeta.TrebleShot.object.TransferGroup r3 = r2.getGroup()
                if (r3 == 0) goto L_0x001f
                com.genonbeta.TrebleShot.database.AccessDatabase r3 = r2.getDatabase()
                com.genonbeta.TrebleShot.object.TransferGroup r4 = r2.getGroup()
                long r4 = r4.groupId
                com.genonbeta.TrebleShot.object.TransferGroup$Index r2 = r2.getIndex()
                r3.calculateTransactionSize(r4, r2)
            L_0x001f:
                int r0 = r0 + 1
                goto L_0x0004
            L_0x0022:
                boolean r0 = r6.mRestartRequested
                if (r0 == 0) goto L_0x002c
                boolean r0 = r6.isCancelled()
                if (r0 == 0) goto L_0x0000
            L_0x002c:
                r7 = 0
                return r7
            */
            throw new UnsupportedOperationException("Method not decompiled: com.genonbeta.TrebleShot.activity.ViewTransferActivity.CrunchLatestDataTask.doInBackground(com.genonbeta.TrebleShot.activity.ViewTransferActivity[]):java.lang.Void");
        }

        public boolean requestRestart() {
            if (getStatus().equals(AsyncTask.Status.RUNNING)) {
                this.mRestartRequested = true;
            }
            return this.mRestartRequested;
        }

        /* access modifiers changed from: protected */
        public void onPostExecute(Void voidR) {
            super.onPostExecute(voidR);
            this.mListener.onPostExecute();
        }
    }
}
