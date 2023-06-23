package com.genonbeta.TrebleShot.app;

import android.content.ComponentName;
import android.content.Intent;
import android.content.ServiceConnection;
import android.content.SharedPreferences;
import android.content.pm.PackageManager;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.IBinder;
import android.util.Log;
import android.widget.ImageView;
import androidx.appcompat.app.AlertDialog;
import androidx.appcompat.app.AppCompatActivity;
import androidx.fragment.app.FragmentActivity;
import androidx.recyclerview.widget.ItemTouchHelper;
import com.bumptech.glide.request.Request;
import com.bumptech.glide.request.target.SizeReadyCallback;
import com.bumptech.glide.request.target.Target;
import com.bumptech.glide.request.transition.Transition;
import com.genonbeta.TrebleShot.GlideApp;
import com.genonbeta.TrebleShot.R;
import com.genonbeta.TrebleShot.activity.WelcomeActivity;
import com.genonbeta.TrebleShot.database.AccessDatabase;
import com.genonbeta.TrebleShot.dialog.ProfileEditorDialog;
import com.genonbeta.TrebleShot.dialog.RationalePermissionRequest;
import com.genonbeta.TrebleShot.service.CommunicationService;
import com.genonbeta.TrebleShot.service.DeviceScannerService;
import com.genonbeta.TrebleShot.service.WorkerService;
import com.genonbeta.TrebleShot.util.AppUtils;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.util.ArrayList;
import java.util.List;

public abstract class Activity extends AppCompatActivity {
    public static final int REQUEST_PICK_PROFILE_PHOTO = 1000;
    private boolean mAmoledDarkThemeRequested = false;
    /* access modifiers changed from: private */
    public final List<WorkerService.RunningTask> mAttachedTasks = new ArrayList();
    private boolean mCustomFontsEnabled = false;
    private boolean mDarkThemeRequested = false;
    private boolean mExitAppRequested = false;
    private AlertDialog mOngoingRequest;
    private boolean mSkipPermissionRequest = false;
    private boolean mThemeLoadingFailed = false;
    private boolean mWelcomePageDisallowed = false;

    public interface OnBackPressedListener {
        boolean onBackPressed();
    }

    public interface OnPreloadArgumentWatcher {
        Bundle passPreLoadingArguments();
    }

    /* access modifiers changed from: protected */
    public void onPreviousRunningTask(WorkerService.RunningTask runningTask) {
    }

    public void onUserProfileUpdated() {
    }

    /* access modifiers changed from: protected */
    public void onCreate(Bundle bundle) {
        int i;
        Class<Activity> cls = Activity.class;
        this.mDarkThemeRequested = isDarkThemeRequested();
        this.mAmoledDarkThemeRequested = isAmoledDarkThemeRequested();
        this.mCustomFontsEnabled = isUsingCustomFonts();
        if (this.mDarkThemeRequested) {
            try {
                boolean z = false;
                int i2 = getPackageManager().getActivityInfo(getComponentName(), 0).theme;
                String simpleName = cls.getSimpleName();
                Log.d(simpleName, "Activity theme id: " + i2);
                if (i2 == 0) {
                    i2 = getApplicationInfo().theme;
                }
                String simpleName2 = cls.getSimpleName();
                Log.d(simpleName2, "After change theme: " + i2);
                switch (i2) {
                    case R.style.Theme_TrebleShot:
                        i = R.style.Theme_TrebleShot_Dark;
                        break;
                    case R.style.Theme_TrebleShot_NoActionBar:
                        i = R.style.Theme_TrebleShot_Dark_NoActionBar;
                        break;
                    case R.style.Theme_TrebleShot_NoActionBar_StaticStatusBar:
                        i = R.style.Theme_TrebleShot_Dark_NoActionBar_StaticStatusBar;
                        break;
                    default:
                        Log.e(cls.getSimpleName(), "There is an unknown theme applied. Resources could fail. Dark theme won't be effective");
                        i = 0;
                        break;
                }
                if (i == 0) {
                    z = true;
                }
                this.mThemeLoadingFailed = z;
                if (!z) {
                    setTheme(i);
                    if (this.mAmoledDarkThemeRequested) {
                        getTheme().applyStyle(com.kd.speedshare.R.style.BlackPatch, true);
                    }
                }
            } catch (PackageManager.NameNotFoundException e) {
                e.printStackTrace();
            }
        }
        if (this.mCustomFontsEnabled) {
            Log.d(cls.getSimpleName(), "Custom fonts have been applied");
            getTheme().applyStyle(R.style.TextAppearance_Ubuntu, true);
        }
        super.onCreate(bundle);
    }

    /* access modifiers changed from: protected */
    public void onResume() {
        super.onResume();
        if (((this.mDarkThemeRequested != isDarkThemeRequested() || (isDarkThemeRequested() && this.mAmoledDarkThemeRequested != isAmoledDarkThemeRequested())) && !this.mThemeLoadingFailed) || this.mCustomFontsEnabled != isUsingCustomFonts()) {
            recreate();
        }
        if (!hasIntroductionShown() && !this.mWelcomePageDisallowed) {
            startActivity(new Intent(this, WelcomeActivity.class));
            finish();
        } else if (AppUtils.checkRunningConditions(this)) {
            AppUtils.startForegroundService(this, new Intent(this, CommunicationService.class).setAction(CommunicationService.ACTION_SERVICE_STATUS).putExtra(CommunicationService.EXTRA_STATUS_STARTED, true));
        } else if (!this.mSkipPermissionRequest) {
            requestRequiredPermissions(true);
        }
        this.mExitAppRequested = false;
    }

    /* access modifiers changed from: protected */
    public void onPause() {
        super.onPause();
        if (!this.mExitAppRequested) {
            AppUtils.startForegroundService(this, new Intent(this, CommunicationService.class).setAction(CommunicationService.ACTION_SERVICE_STATUS).putExtra(CommunicationService.EXTRA_STATUS_STARTED, false));
        }
    }

    /* access modifiers changed from: protected */
    public void onStop() {
        super.onStop();
        synchronized (this.mAttachedTasks) {
            for (WorkerService.RunningTask detachAnchor : this.mAttachedTasks) {
                detachAnchor.detachAnchor();
            }
            this.mAttachedTasks.clear();
        }
    }

    public void onRequestPermissionsResult(int i, String[] strArr, int[] iArr) {
        super.onRequestPermissionsResult(i, strArr, iArr);
        if (AppUtils.checkRunningConditions(this)) {
            AppUtils.startForegroundService(this, new Intent(this, CommunicationService.class));
        } else {
            requestRequiredPermissions(!this.mSkipPermissionRequest);
        }
    }

    /* access modifiers changed from: protected */
    public void onActivityResult(int i, int i2, Intent intent) {
        Uri data;
        super.onActivityResult(i, i2, intent);
        if (i == 1000 && i2 == -1 && intent != null && (data = intent.getData()) != null) {
            GlideApp.with((FragmentActivity) this).load(data).centerCrop().override(ItemTouchHelper.Callback.DEFAULT_DRAG_ANIMATION_DURATION, ItemTouchHelper.Callback.DEFAULT_DRAG_ANIMATION_DURATION).into(new Target<Drawable>() {
                public Request getRequest() {
                    return null;
                }

                public void getSize(SizeReadyCallback sizeReadyCallback) {
                }

                public void onDestroy() {
                }

                public void onLoadCleared(Drawable drawable) {
                }

                public void onLoadFailed(Drawable drawable) {
                }

                public void onLoadStarted(Drawable drawable) {
                }

                public void onStart() {
                }

                public void onStop() {
                }

                public void removeCallback(SizeReadyCallback sizeReadyCallback) {
                }

                public void setRequest(Request request) {
                }

                public void onResourceReady(Drawable drawable, Transition<? super Drawable> transition) {
                    try {
                        Bitmap createBitmap = Bitmap.createBitmap(100, 100, Bitmap.Config.ARGB_8888);
                        Canvas canvas = new Canvas(createBitmap);
                        FileOutputStream openFileOutput = Activity.this.openFileOutput("profilePicture", 0);
                        drawable.setBounds(0, 0, canvas.getWidth(), canvas.getHeight());
                        drawable.draw(canvas);
                        createBitmap.compress(Bitmap.CompressFormat.PNG, 100, openFileOutput);
                        openFileOutput.close();
                        Activity.this.notifyUserProfileChanged();
                    } catch (Exception e) {
                        e.printStackTrace();
                    }
                }
            });
        }
    }

    public void attachRunningTask(WorkerService.RunningTask runningTask) {
        synchronized (this.mAttachedTasks) {
            this.mAttachedTasks.add(runningTask);
        }
    }

    public boolean checkForTasks() {
        return bindService(new Intent(this, WorkerService.class), new ServiceConnection() {
            public void onServiceDisconnected(ComponentName componentName) {
            }

            public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
                WorkerService.RunningTask findTaskByHash = ((WorkerService.LocalBinder) iBinder).getService().findTaskByHash(WorkerService.intentHash(Activity.this.getIntent()));
                Activity.this.onPreviousRunningTask(findTaskByHash);
                if (findTaskByHash != null) {
                    synchronized (Activity.this.mAttachedTasks) {
                        Activity.this.attachRunningTask(findTaskByHash);
                    }
                }
                Activity.this.unbindService(this);
            }
        }, 1);
    }

    public void exitApp() {
        this.mExitAppRequested = true;
        stopService(new Intent(this, CommunicationService.class));
        stopService(new Intent(this, DeviceScannerService.class));
        stopService(new Intent(this, WorkerService.class));
        finish();
    }

    public AccessDatabase getDatabase() {
        return AppUtils.getDatabase(this);
    }

    /* access modifiers changed from: protected */
    public SharedPreferences getDefaultPreferences() {
        return AppUtils.getDefaultPreferences(this);
    }

    public boolean hasIntroductionShown() {
        return getDefaultPreferences().getBoolean("introduction_shown", false);
    }

    public boolean isAmoledDarkThemeRequested() {
        return getDefaultPreferences().getBoolean("amoled_theme", false);
    }

    public boolean isDarkThemeRequested() {
        return getDefaultPreferences().getBoolean("dark_theme", false);
    }

    public boolean isUsingCustomFonts() {
        return getDefaultPreferences().getBoolean("custom_fonts", false) && Build.VERSION.SDK_INT >= 16;
    }

    public void loadProfilePictureInto(String str, ImageView imageView) {
        try {
            GlideApp.with((FragmentActivity) this).load(BitmapFactory.decodeStream(openFileInput("profilePicture"))).circleCrop().into(imageView);
        } catch (FileNotFoundException e) {
            e.printStackTrace();
            imageView.setImageDrawable(AppUtils.getDefaultIconBuilder(this).buildRound(str));
        }
    }

    public void notifyUserProfileChanged() {
        if (!isFinishing()) {
            runOnUiThread(new Runnable() {
                public void run() {
                    Activity.this.onUserProfileUpdated();
                }
            });
        }
    }

    public void setSkipPermissionRequest(boolean z) {
        this.mSkipPermissionRequest = z;
    }

    public void requestProfilePictureChange() {
        startActivityForResult(new Intent("android.intent.action.PICK").setType("image/*"), 1000);
    }

    public boolean requestRequiredPermissions(boolean z) {
        AlertDialog alertDialog = this.mOngoingRequest;
        if (alertDialog != null && alertDialog.isShowing()) {
            return false;
        }
        for (RationalePermissionRequest.PermissionRequest requestIfNecessary : AppUtils.getRequiredPermissions(this)) {
            AlertDialog requestIfNecessary2 = RationalePermissionRequest.requestIfNecessary(this, requestIfNecessary, z);
            this.mOngoingRequest = requestIfNecessary2;
            if (requestIfNecessary2 != null) {
                return false;
            }
        }
        return true;
    }

    public void setWelcomePageDisallowed(boolean z) {
        this.mWelcomePageDisallowed = z;
    }

    public void startProfileEditor() {
        new ProfileEditorDialog(this).show();
    }
}
