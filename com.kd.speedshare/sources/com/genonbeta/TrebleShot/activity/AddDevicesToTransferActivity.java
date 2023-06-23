package com.genonbeta.TrebleShot.activity;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Bundle;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ProgressBar;
import android.widget.TextView;
import android.widget.Toast;
import androidx.appcompat.app.AlertDialog;
import androidx.appcompat.widget.Toolbar;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentTransaction;
import com.genonbeta.TrebleShot.app.Activity;
import com.genonbeta.TrebleShot.database.AccessDatabase;
import com.genonbeta.TrebleShot.fragment.TransferAssigneeListFragment;
import com.genonbeta.TrebleShot.object.NetworkDevice;
import com.genonbeta.TrebleShot.object.TransferGroup;
import com.genonbeta.TrebleShot.service.WorkerService;
import com.genonbeta.TrebleShot.task.AddDeviceRunningTask;
import com.genonbeta.android.framework.ui.callback.SnackbarSupport;
import com.google.android.material.floatingactionbutton.FloatingActionButton;
import com.google.android.material.snackbar.Snackbar;
import com.kd.speedshare.R;

public class AddDevicesToTransferActivity extends Activity implements SnackbarSupport, WorkerService.OnAttachListener {
    public static final String EXTRA_DEVICE_ID = "extraDeviceId";
    public static final String EXTRA_GROUP_ID = "extraGroupId";
    public static final int REQUEST_CODE_CHOOSE_DEVICE = 0;
    public static final String TAG = AddDevicesToTransferActivity.class.getSimpleName();
    private FloatingActionButton mActionButton;
    private IntentFilter mFilter = new IntentFilter(AccessDatabase.ACTION_DATABASE_CHANGE);
    private TransferGroup mGroup = null;
    private ViewGroup mLayoutStatusContainer;
    private ProgressBar mProgressBar;
    /* access modifiers changed from: private */
    public TextView mProgressTextLeft;
    /* access modifiers changed from: private */
    public TextView mProgressTextRight;
    private BroadcastReceiver mReceiver = new BroadcastReceiver() {
        public void onReceive(Context context, Intent intent) {
            if (AccessDatabase.ACTION_DATABASE_CHANGE.equals(intent.getAction()) && intent.hasExtra(AccessDatabase.EXTRA_TABLE_NAME) && AccessDatabase.TABLE_TRANSFERGROUP.equals(intent.getStringExtra(AccessDatabase.EXTRA_TABLE_NAME)) && !AddDevicesToTransferActivity.this.checkGroupIntegrity()) {
                AddDevicesToTransferActivity.this.finish();
            }
        }
    };
    /* access modifiers changed from: private */
    public AddDeviceRunningTask mTask;

    public static void startInstance(Context context, long j) {
        context.startActivity(new Intent(context, AddDevicesToTransferActivity.class).putExtra("extraGroupId", j).addFlags(268435456));
    }

    /* access modifiers changed from: protected */
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView((int) R.layout.activity_add_devices_to_transfer);
        if (checkGroupIntegrity()) {
            setSupportActionBar((Toolbar) findViewById(R.id.toolbar));
            Bundle bundle2 = new Bundle();
            bundle2.putLong("groupId", this.mGroup.groupId);
            bundle2.putBoolean("useHorizontalView", false);
            this.mProgressBar = (ProgressBar) findViewById(R.id.progressBar);
            this.mProgressTextLeft = (TextView) findViewById(R.id.text1);
            this.mProgressTextRight = (TextView) findViewById(R.id.text2);
            this.mActionButton = (FloatingActionButton) findViewById(R.id.content_fab);
            this.mLayoutStatusContainer = (ViewGroup) findViewById(R.id.layoutStatusContainer);
            if (((TransferAssigneeListFragment) getSupportFragmentManager().findFragmentById(R.id.assigneeListFragment)) == null) {
                FragmentTransaction beginTransaction = getSupportFragmentManager().beginTransaction();
                beginTransaction.add((int) R.id.assigneeListFragment, (Fragment) (TransferAssigneeListFragment) Fragment.instantiate(this, TransferAssigneeListFragment.class.getName(), bundle2));
                beginTransaction.commit();
            }
            resetStatusViews();
        }
    }

    public boolean onOptionsItemSelected(MenuItem menuItem) {
        int itemId = menuItem.getItemId();
        if (itemId == 16908332 || itemId == R.id.actions_add_devices_done) {
            AddDeviceRunningTask addDeviceRunningTask = this.mTask;
            if (addDeviceRunningTask != null) {
                addDeviceRunningTask.getInterrupter().interrupt();
            }
            finish();
            return true;
        } else if (itemId != R.id.actions_add_devices_help) {
            return super.onOptionsItemSelected(menuItem);
        } else {
            AlertDialog.Builder builder = new AlertDialog.Builder(this);
            builder.setTitle((int) R.string.text_help).setMessage((int) R.string.text_addDeviceHelp).setPositiveButton((int) R.string.butn_close, (DialogInterface.OnClickListener) null);
            builder.show();
            return true;
        }
    }

    public boolean onCreateOptionsMenu(Menu menu) {
        getMenuInflater().inflate(R.menu.actions_add_devices, menu);
        return super.onCreateOptionsMenu(menu);
    }

    /* access modifiers changed from: protected */
    public void onActivityResult(int i, int i2, Intent intent) {
        super.onActivityResult(i, i2, intent);
        if (i2 == -1 && i == 0 && intent != null && intent.hasExtra("extraDeviceId") && intent.hasExtra("extraConnectionAdapter")) {
            String stringExtra = intent.getStringExtra("extraDeviceId");
            String stringExtra2 = intent.getStringExtra("extraConnectionAdapter");
            try {
                NetworkDevice networkDevice = new NetworkDevice(stringExtra);
                NetworkDevice.Connection connection = new NetworkDevice.Connection(stringExtra, stringExtra2);
                getDatabase().reconstruct(networkDevice);
                getDatabase().reconstruct(connection);
                doCommunicate(networkDevice, connection);
            } catch (Exception unused) {
                Toast.makeText(this, R.string.mesg_somethingWentWrong, 0).show();
            }
        }
    }

    /* access modifiers changed from: protected */
    public void onPreviousRunningTask(WorkerService.RunningTask runningTask) {
        super.onPreviousRunningTask(runningTask);
        if (runningTask instanceof AddDeviceRunningTask) {
            AddDeviceRunningTask addDeviceRunningTask = (AddDeviceRunningTask) runningTask;
            this.mTask = addDeviceRunningTask;
            addDeviceRunningTask.setAnchorListener(this);
        }
    }

    /* access modifiers changed from: protected */
    public void onStart() {
        super.onStart();
        checkForTasks();
    }

    /* access modifiers changed from: protected */
    public void onResume() {
        super.onResume();
        registerReceiver(this.mReceiver, this.mFilter);
        if (!checkGroupIntegrity()) {
            finish();
        }
    }

    /* access modifiers changed from: protected */
    public void onPause() {
        super.onPause();
        unregisterReceiver(this.mReceiver);
    }

    public void onAttachedToTask(WorkerService.RunningTask runningTask) {
        takeOnProcessMode();
    }

    /* JADX WARNING: Can't wrap try/catch for region: R(3:10|11|12) */
    /* JADX WARNING: Code restructure failed: missing block: B:12:0x003a, code lost:
        throw new java.lang.Exception(getString(com.kd.speedshare.R.string.mesg_notValidTransfer));
     */
    /* JADX WARNING: Missing exception handler attribute for start block: B:10:0x002e */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public boolean checkGroupIntegrity() {
        /*
            r6 = this;
            java.lang.String r0 = "extraGroupId"
            r1 = 1
            android.content.Intent r2 = r6.getIntent()     // Catch:{ Exception -> 0x0048 }
            if (r2 == 0) goto L_0x003b
            android.content.Intent r2 = r6.getIntent()     // Catch:{ Exception -> 0x0048 }
            boolean r2 = r2.hasExtra(r0)     // Catch:{ Exception -> 0x0048 }
            if (r2 == 0) goto L_0x003b
            com.genonbeta.TrebleShot.object.TransferGroup r2 = new com.genonbeta.TrebleShot.object.TransferGroup     // Catch:{ Exception -> 0x0048 }
            android.content.Intent r3 = r6.getIntent()     // Catch:{ Exception -> 0x0048 }
            r4 = -1
            long r3 = r3.getLongExtra(r0, r4)     // Catch:{ Exception -> 0x0048 }
            r2.<init>((long) r3)     // Catch:{ Exception -> 0x0048 }
            r6.mGroup = r2     // Catch:{ Exception -> 0x0048 }
            com.genonbeta.TrebleShot.database.AccessDatabase r0 = r6.getDatabase()     // Catch:{ Exception -> 0x002e }
            com.genonbeta.TrebleShot.object.TransferGroup r2 = r6.mGroup     // Catch:{ Exception -> 0x002e }
            r0.reconstruct(r2)     // Catch:{ Exception -> 0x002e }
            return r1
        L_0x002e:
            java.lang.Exception r0 = new java.lang.Exception     // Catch:{ Exception -> 0x0048 }
            r2 = 2131820788(0x7f1100f4, float:1.92743E38)
            java.lang.String r2 = r6.getString(r2)     // Catch:{ Exception -> 0x0048 }
            r0.<init>(r2)     // Catch:{ Exception -> 0x0048 }
            throw r0     // Catch:{ Exception -> 0x0048 }
        L_0x003b:
            java.lang.Exception r0 = new java.lang.Exception     // Catch:{ Exception -> 0x0048 }
            r2 = 2131820939(0x7f11018b, float:1.9274607E38)
            java.lang.String r2 = r6.getString(r2)     // Catch:{ Exception -> 0x0048 }
            r0.<init>(r2)     // Catch:{ Exception -> 0x0048 }
            throw r0     // Catch:{ Exception -> 0x0048 }
        L_0x0048:
            r0 = move-exception
            java.lang.String r0 = r0.getMessage()
            android.widget.Toast r0 = android.widget.Toast.makeText(r6, r0, r1)
            r0.show()
            r6.finish()
            r0 = 0
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.genonbeta.TrebleShot.activity.AddDevicesToTransferActivity.checkGroupIntegrity():boolean");
    }

    public Snackbar createSnackbar(int i, Object... objArr) {
        return Snackbar.make(findViewById(R.id.container), (CharSequence) getString(i, objArr), 0);
    }

    public void doCommunicate(NetworkDevice networkDevice, NetworkDevice.Connection connection) {
        AddDeviceRunningTask addDeviceRunningTask = new AddDeviceRunningTask(this.mGroup, networkDevice, connection);
        addDeviceRunningTask.setTitle(getString(R.string.mesg_communicating)).setAnchorListener(this).setContentIntent(this, getIntent()).run(this);
        attachRunningTask(addDeviceRunningTask);
    }

    public Intent getIntent() {
        return super.getIntent();
    }

    public void resetStatusViews() {
        this.mProgressBar.setMax(0);
        this.mProgressBar.setProgress(0);
        this.mActionButton.setImageResource(R.drawable.ic_add_white_24dp);
        this.mLayoutStatusContainer.setVisibility(8);
        this.mActionButton.setOnClickListener(new View.OnClickListener() {
            public void onClick(View view) {
                AddDevicesToTransferActivity.this.startConnectionManagerActivity();
            }
        });
    }

    /* access modifiers changed from: private */
    public void startConnectionManagerActivity() {
        startActivityForResult(new Intent(this, ConnectionManagerActivity.class).putExtra(ConnectionManagerActivity.EXTRA_ACTIVITY_SUBTITLE, getString(R.string.text_addDevicesToTransfer)), 0);
    }

    public void takeOnProcessMode() {
        this.mLayoutStatusContainer.setVisibility(0);
        this.mActionButton.setImageResource(R.drawable.ic_close_white_24dp);
        this.mActionButton.setOnClickListener(new View.OnClickListener() {
            public void onClick(View view) {
                if (AddDevicesToTransferActivity.this.mTask != null) {
                    AddDevicesToTransferActivity.this.mTask.getInterrupter().interrupt();
                }
            }
        });
    }

    public void updateProgress(final int i, final int i2) {
        if (!isFinishing()) {
            runOnUiThread(new Runnable() {
                public void run() {
                    AddDevicesToTransferActivity.this.mProgressTextLeft.setText(String.valueOf(i2));
                    AddDevicesToTransferActivity.this.mProgressTextRight.setText(String.valueOf(i));
                }
            });
            this.mProgressBar.setProgress(i2);
            this.mProgressBar.setMax(i);
        }
    }
}
