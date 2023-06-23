package com.genonbeta.TrebleShot.activity;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ProgressBar;
import androidx.appcompat.widget.Toolbar;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentFactory;
import androidx.fragment.app.FragmentTransaction;
import com.genonbeta.TrebleShot.app.Activity;
import com.genonbeta.TrebleShot.database.AccessDatabase;
import com.genonbeta.TrebleShot.dialog.ManualIpAddressConnectionDialog;
import com.genonbeta.TrebleShot.fragment.BarcodeConnectFragment;
import com.genonbeta.TrebleShot.fragment.HotspotManagerFragment;
import com.genonbeta.TrebleShot.fragment.NetworkDeviceListFragment;
import com.genonbeta.TrebleShot.fragment.NetworkManagerFragment;
import com.genonbeta.TrebleShot.object.NetworkDevice;
import com.genonbeta.TrebleShot.service.CommunicationService;
import com.genonbeta.TrebleShot.ui.UIConnectionUtils;
import com.genonbeta.TrebleShot.ui.UITask;
import com.genonbeta.TrebleShot.ui.callback.NetworkDeviceSelectedListener;
import com.genonbeta.TrebleShot.ui.help.ConnectionSetUpAssistant;
import com.genonbeta.TrebleShot.util.AppUtils;
import com.genonbeta.TrebleShot.util.ConnectionUtils;
import com.genonbeta.TrebleShot.util.NetworkDeviceLoader;
import com.genonbeta.android.framework.ui.callback.SnackbarSupport;
import com.genonbeta.android.framework.util.Interrupter;
import com.google.android.material.appbar.AppBarLayout;
import com.google.android.material.appbar.CollapsingToolbarLayout;
import com.google.android.material.snackbar.Snackbar;
import com.kd.speedshare.R;

public class ConnectionManagerActivity extends Activity implements SnackbarSupport {
    public static final String ACTION_CHANGE_FRAGMENT = "com.genonbeta.intent.action.CONNECTION_MANAGER_CHANGE_FRAGMENT";
    public static final String EXTRA_ACTIVITY_SUBTITLE = "extraActivitySubtitle";
    public static final String EXTRA_CONNECTION_ADAPTER = "extraConnectionAdapter";
    public static final String EXTRA_DEVICE_ID = "extraDeviceId";
    public static final String EXTRA_FRAGMENT_ENUM = "extraFragmentEnum";
    public static final String EXTRA_REQUEST_TYPE = "extraRequestType";
    private AppBarLayout mAppBarLayout;
    private BarcodeConnectFragment mBarcodeConnectFragment;
    private NetworkDeviceListFragment mDeviceListFragment;
    /* access modifiers changed from: private */
    public final NetworkDeviceSelectedListener mDeviceSelectionListener = new NetworkDeviceSelectedListener() {
        public boolean isListenerEffective() {
            return true;
        }

        public boolean onNetworkDeviceSelected(NetworkDevice networkDevice, NetworkDevice.Connection connection) {
            if (ConnectionManagerActivity.this.mRequestType.equals(RequestType.RETURN_RESULT)) {
                ConnectionManagerActivity.this.setResult(-1, new Intent().putExtra("extraDeviceId", networkDevice.deviceId).putExtra("extraConnectionAdapter", connection.adapterName));
                ConnectionManagerActivity.this.finish();
                return true;
            }
            new UIConnectionUtils(ConnectionUtils.getInstance(ConnectionManagerActivity.this), ConnectionManagerActivity.this).makeAcquaintance(ConnectionManagerActivity.this, new UITask() {
                public void updateTaskStarted(Interrupter interrupter) {
                    ConnectionManagerActivity.this.mProgressBar.setVisibility(0);
                }

                public void updateTaskStopped() {
                    ConnectionManagerActivity.this.mProgressBar.setVisibility(8);
                }
            }, connection.ipAddress, -1, new NetworkDeviceLoader.OnDeviceRegisteredListener() {
                public void onDeviceRegistered(AccessDatabase accessDatabase, NetworkDevice networkDevice, NetworkDevice.Connection connection) {
                    ConnectionManagerActivity.this.createSnackbar(R.string.mesg_completing, new Object[0]).show();
                }
            });
            return true;
        }
    };
    private final IntentFilter mFilter = new IntentFilter();
    private HotspotManagerFragment mHotspotManagerFragment;
    private NetworkManagerFragment mNetworkManagerFragment;
    private OptionsFragment mOptionsFragment;
    /* access modifiers changed from: private */
    public ProgressBar mProgressBar;
    private final BroadcastReceiver mReceiver = new BroadcastReceiver() {
        public void onReceive(Context context, Intent intent) {
            if (ConnectionManagerActivity.ACTION_CHANGE_FRAGMENT.equals(intent.getAction()) && intent.hasExtra(ConnectionManagerActivity.EXTRA_FRAGMENT_ENUM)) {
                try {
                    AvailableFragment valueOf = AvailableFragment.valueOf(intent.getStringExtra(ConnectionManagerActivity.EXTRA_FRAGMENT_ENUM));
                    if (AvailableFragment.EnterIpAddress.equals(valueOf)) {
                        ConnectionManagerActivity.this.showEnterIpAddressDialog();
                    } else {
                        ConnectionManagerActivity.this.setFragment(valueOf);
                    }
                } catch (Exception unused) {
                }
            } else if (ConnectionManagerActivity.this.mRequestType.equals(RequestType.RETURN_RESULT)) {
                if (CommunicationService.ACTION_DEVICE_ACQUAINTANCE.equals(intent.getAction()) && intent.hasExtra("extraDeviceId") && intent.hasExtra(CommunicationService.EXTRA_CONNECTION_ADAPTER_NAME)) {
                    NetworkDevice networkDevice = new NetworkDevice(intent.getStringExtra("extraDeviceId"));
                    NetworkDevice.Connection connection = new NetworkDevice.Connection(networkDevice.deviceId, intent.getStringExtra(CommunicationService.EXTRA_CONNECTION_ADAPTER_NAME));
                    try {
                        AppUtils.getDatabase(ConnectionManagerActivity.this).reconstruct(networkDevice);
                        AppUtils.getDatabase(ConnectionManagerActivity.this).reconstruct(connection);
                        ConnectionManagerActivity.this.mDeviceSelectionListener.onNetworkDeviceSelected(networkDevice, connection);
                    } catch (Exception e) {
                        e.printStackTrace();
                    }
                }
            } else if (ConnectionManagerActivity.this.mRequestType.equals(RequestType.MAKE_ACQUAINTANCE) && CommunicationService.ACTION_INCOMING_TRANSFER_READY.equals(intent.getAction()) && intent.hasExtra("extraGroupId")) {
                ViewTransferActivity.startInstance(ConnectionManagerActivity.this, intent.getLongExtra("extraGroupId", -1));
                ConnectionManagerActivity.this.finish();
            }
        }
    };
    /* access modifiers changed from: private */
    public RequestType mRequestType = RequestType.RETURN_RESULT;
    private String mTitleProvided;
    private CollapsingToolbarLayout mToolbarLayout;

    public enum AvailableFragment {
        Options,
        UseExistingNetwork,
        UseKnownDevice,
        ScanQrCode,
        CreateHotspot,
        EnterIpAddress
    }

    public interface DeviceSelectionSupport {
        void setDeviceSelectedListener(NetworkDeviceSelectedListener networkDeviceSelectedListener);
    }

    public enum RequestType {
        RETURN_RESULT,
        MAKE_ACQUAINTANCE
    }

    /* access modifiers changed from: protected */
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setResult(0);
        setContentView((int) R.layout.activity_connection_manager);
        FragmentFactory fragmentFactory = getSupportFragmentManager().getFragmentFactory();
        this.mAppBarLayout = (AppBarLayout) findViewById(R.id.app_bar);
        this.mProgressBar = (ProgressBar) findViewById(R.id.activity_connection_establishing_progress_bar);
        this.mToolbarLayout = (CollapsingToolbarLayout) findViewById(R.id.toolbar_layout);
        this.mOptionsFragment = (OptionsFragment) fragmentFactory.instantiate(getClassLoader(), OptionsFragment.class.getName(), (Bundle) null);
        this.mBarcodeConnectFragment = (BarcodeConnectFragment) fragmentFactory.instantiate(getClassLoader(), BarcodeConnectFragment.class.getName(), (Bundle) null);
        this.mHotspotManagerFragment = (HotspotManagerFragment) fragmentFactory.instantiate(getClassLoader(), HotspotManagerFragment.class.getName(), (Bundle) null);
        this.mNetworkManagerFragment = (NetworkManagerFragment) fragmentFactory.instantiate(getClassLoader(), NetworkManagerFragment.class.getName(), (Bundle) null);
        this.mDeviceListFragment = (NetworkDeviceListFragment) fragmentFactory.instantiate(getClassLoader(), NetworkDeviceListFragment.class.getName(), (Bundle) null);
        this.mFilter.addAction(ACTION_CHANGE_FRAGMENT);
        this.mFilter.addAction(CommunicationService.ACTION_DEVICE_ACQUAINTANCE);
        this.mFilter.addAction(CommunicationService.ACTION_INCOMING_TRANSFER_READY);
        setSupportActionBar((Toolbar) findViewById(R.id.toolbar));
        if (getSupportActionBar() != null) {
            getSupportActionBar().setDisplayHomeAsUpEnabled(true);
        }
        if (getIntent() != null) {
            if (getIntent().hasExtra("extraRequestType")) {
                try {
                    this.mRequestType = RequestType.valueOf(getIntent().getStringExtra("extraRequestType"));
                } catch (Exception unused) {
                }
            }
            if (getIntent().hasExtra(EXTRA_ACTIVITY_SUBTITLE)) {
                this.mTitleProvided = getIntent().getStringExtra(EXTRA_ACTIVITY_SUBTITLE);
            }
        }
    }

    /* access modifiers changed from: protected */
    public void onResume() {
        super.onResume();
        checkFragment();
        registerReceiver(this.mReceiver, this.mFilter);
    }

    /* access modifiers changed from: protected */
    public void onPause() {
        super.onPause();
        unregisterReceiver(this.mReceiver);
    }

    public void onBackPressed() {
        if (getShowingFragment() instanceof OptionsFragment) {
            super.onBackPressed();
        } else {
            setFragment(AvailableFragment.Options);
        }
    }

    public boolean onOptionsItemSelected(MenuItem menuItem) {
        if (menuItem.getItemId() != 16908332) {
            return super.onOptionsItemSelected(menuItem);
        }
        onBackPressed();
        return true;
    }

    /* JADX WARNING: Incorrect type for immutable var: ssa=java.lang.String, code=java.lang.CharSequence, for r5v0, types: [java.lang.String] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public void applyViewChanges(androidx.fragment.app.Fragment r4, java.lang.CharSequence r5) {
        /*
            r3 = this;
            boolean r0 = r4 instanceof com.genonbeta.TrebleShot.activity.ConnectionManagerActivity.OptionsFragment
            boolean r1 = r4 instanceof com.genonbeta.TrebleShot.activity.ConnectionManagerActivity.DeviceSelectionSupport
            if (r1 == 0) goto L_0x000e
            r1 = r4
            com.genonbeta.TrebleShot.activity.ConnectionManagerActivity$DeviceSelectionSupport r1 = (com.genonbeta.TrebleShot.activity.ConnectionManagerActivity.DeviceSelectionSupport) r1
            com.genonbeta.TrebleShot.ui.callback.NetworkDeviceSelectedListener r2 = r3.mDeviceSelectionListener
            r1.setDeviceSelectedListener(r2)
        L_0x000e:
            androidx.appcompat.app.ActionBar r1 = r3.getSupportActionBar()
            if (r1 == 0) goto L_0x0037
            boolean r1 = r4 instanceof com.genonbeta.TrebleShot.ui.callback.TitleSupport
            if (r1 == 0) goto L_0x001f
            com.genonbeta.TrebleShot.ui.callback.TitleSupport r4 = (com.genonbeta.TrebleShot.ui.callback.TitleSupport) r4
            java.lang.CharSequence r4 = r4.getTitle(r3)
            goto L_0x0026
        L_0x001f:
            r4 = 2131820911(0x7f11016f, float:1.927455E38)
            java.lang.String r4 = r3.getString(r4)
        L_0x0026:
            if (r0 == 0) goto L_0x0032
            com.google.android.material.appbar.CollapsingToolbarLayout r1 = r3.mToolbarLayout
            if (r5 == 0) goto L_0x002d
            goto L_0x002e
        L_0x002d:
            r5 = r4
        L_0x002e:
            r1.setTitle(r5)
            goto L_0x0037
        L_0x0032:
            com.google.android.material.appbar.CollapsingToolbarLayout r5 = r3.mToolbarLayout
            r5.setTitle(r4)
        L_0x0037:
            com.google.android.material.appbar.AppBarLayout r4 = r3.mAppBarLayout
            r5 = 1
            r4.setExpanded(r0, r5)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.genonbeta.TrebleShot.activity.ConnectionManagerActivity.applyViewChanges(androidx.fragment.app.Fragment, java.lang.String):void");
    }

    private void checkFragment() {
        Fragment showingFragment = getShowingFragment();
        if (showingFragment == null) {
            setFragment(AvailableFragment.Options);
        } else {
            applyViewChanges(showingFragment, this.mTitleProvided);
        }
    }

    public Snackbar createSnackbar(int i, Object... objArr) {
        return Snackbar.make(findViewById(R.id.activity_connection_establishing_content_view), (CharSequence) getString(i, objArr), 0);
    }

    public AvailableFragment getShowingFragmentId() {
        Fragment showingFragment = getShowingFragment();
        if (showingFragment instanceof BarcodeConnectFragment) {
            return AvailableFragment.ScanQrCode;
        }
        if (showingFragment instanceof HotspotManagerFragment) {
            return AvailableFragment.CreateHotspot;
        }
        if (showingFragment instanceof NetworkManagerFragment) {
            return AvailableFragment.UseExistingNetwork;
        }
        if (showingFragment instanceof NetworkDeviceListFragment) {
            return AvailableFragment.UseKnownDevice;
        }
        return AvailableFragment.Options;
    }

    public Fragment getShowingFragment() {
        return getSupportFragmentManager().findFragmentById(R.id.activity_connection_establishing_content_view);
    }

    public void setFragment(AvailableFragment availableFragment) {
        Fragment fragment;
        Fragment showingFragment = getShowingFragment();
        int i = AnonymousClass3.$SwitchMap$com$genonbeta$TrebleShot$activity$ConnectionManagerActivity$AvailableFragment[availableFragment.ordinal()];
        if (i != 1) {
            if (i == 2) {
                fragment = this.mHotspotManagerFragment;
            } else if (i == 3) {
                fragment = this.mNetworkManagerFragment;
            } else if (i != 4) {
                fragment = this.mOptionsFragment;
            } else {
                fragment = this.mDeviceListFragment;
            }
            if (showingFragment == null || fragment != showingFragment) {
                FragmentTransaction beginTransaction = getSupportFragmentManager().beginTransaction();
                if (showingFragment != null) {
                    beginTransaction.remove(showingFragment);
                }
                if (showingFragment == null || !(fragment instanceof OptionsFragment)) {
                    beginTransaction.setCustomAnimations(R.anim.enter_from_right, R.anim.exit_to_left);
                } else {
                    beginTransaction.setCustomAnimations(R.anim.enter_from_left, R.anim.exit_to_right);
                }
                beginTransaction.add((int) R.id.activity_connection_establishing_content_view, fragment);
                beginTransaction.commit();
                applyViewChanges(fragment, this.mTitleProvided);
            }
        } else if (this.mOptionsFragment.isAdded()) {
            this.mOptionsFragment.startCodeScanner();
        }
    }

    /* renamed from: com.genonbeta.TrebleShot.activity.ConnectionManagerActivity$3  reason: invalid class name */
    static /* synthetic */ class AnonymousClass3 {
        static final /* synthetic */ int[] $SwitchMap$com$genonbeta$TrebleShot$activity$ConnectionManagerActivity$AvailableFragment;

        /* JADX WARNING: Can't wrap try/catch for region: R(8:0|1|2|3|4|5|6|(3:7|8|10)) */
        /* JADX WARNING: Failed to process nested try/catch */
        /* JADX WARNING: Missing exception handler attribute for start block: B:3:0x0012 */
        /* JADX WARNING: Missing exception handler attribute for start block: B:5:0x001d */
        /* JADX WARNING: Missing exception handler attribute for start block: B:7:0x0028 */
        static {
            /*
                com.genonbeta.TrebleShot.activity.ConnectionManagerActivity$AvailableFragment[] r0 = com.genonbeta.TrebleShot.activity.ConnectionManagerActivity.AvailableFragment.values()
                int r0 = r0.length
                int[] r0 = new int[r0]
                $SwitchMap$com$genonbeta$TrebleShot$activity$ConnectionManagerActivity$AvailableFragment = r0
                com.genonbeta.TrebleShot.activity.ConnectionManagerActivity$AvailableFragment r1 = com.genonbeta.TrebleShot.activity.ConnectionManagerActivity.AvailableFragment.ScanQrCode     // Catch:{ NoSuchFieldError -> 0x0012 }
                int r1 = r1.ordinal()     // Catch:{ NoSuchFieldError -> 0x0012 }
                r2 = 1
                r0[r1] = r2     // Catch:{ NoSuchFieldError -> 0x0012 }
            L_0x0012:
                int[] r0 = $SwitchMap$com$genonbeta$TrebleShot$activity$ConnectionManagerActivity$AvailableFragment     // Catch:{ NoSuchFieldError -> 0x001d }
                com.genonbeta.TrebleShot.activity.ConnectionManagerActivity$AvailableFragment r1 = com.genonbeta.TrebleShot.activity.ConnectionManagerActivity.AvailableFragment.CreateHotspot     // Catch:{ NoSuchFieldError -> 0x001d }
                int r1 = r1.ordinal()     // Catch:{ NoSuchFieldError -> 0x001d }
                r2 = 2
                r0[r1] = r2     // Catch:{ NoSuchFieldError -> 0x001d }
            L_0x001d:
                int[] r0 = $SwitchMap$com$genonbeta$TrebleShot$activity$ConnectionManagerActivity$AvailableFragment     // Catch:{ NoSuchFieldError -> 0x0028 }
                com.genonbeta.TrebleShot.activity.ConnectionManagerActivity$AvailableFragment r1 = com.genonbeta.TrebleShot.activity.ConnectionManagerActivity.AvailableFragment.UseExistingNetwork     // Catch:{ NoSuchFieldError -> 0x0028 }
                int r1 = r1.ordinal()     // Catch:{ NoSuchFieldError -> 0x0028 }
                r2 = 3
                r0[r1] = r2     // Catch:{ NoSuchFieldError -> 0x0028 }
            L_0x0028:
                int[] r0 = $SwitchMap$com$genonbeta$TrebleShot$activity$ConnectionManagerActivity$AvailableFragment     // Catch:{ NoSuchFieldError -> 0x0033 }
                com.genonbeta.TrebleShot.activity.ConnectionManagerActivity$AvailableFragment r1 = com.genonbeta.TrebleShot.activity.ConnectionManagerActivity.AvailableFragment.UseKnownDevice     // Catch:{ NoSuchFieldError -> 0x0033 }
                int r1 = r1.ordinal()     // Catch:{ NoSuchFieldError -> 0x0033 }
                r2 = 4
                r0[r1] = r2     // Catch:{ NoSuchFieldError -> 0x0033 }
            L_0x0033:
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: com.genonbeta.TrebleShot.activity.ConnectionManagerActivity.AnonymousClass3.<clinit>():void");
        }
    }

    /* access modifiers changed from: protected */
    public void showEnterIpAddressDialog() {
        new ManualIpAddressConnectionDialog(this, new UIConnectionUtils(ConnectionUtils.getInstance(this), this), this.mDeviceSelectionListener).show();
    }

    public static class OptionsFragment extends com.genonbeta.android.framework.app.Fragment implements DeviceSelectionSupport {
        public static final int REQUEST_CHOOSE_DEVICE = 100;
        private NetworkDeviceSelectedListener mListener;

        public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
            View inflate = layoutInflater.inflate(R.layout.layout_connection_options_fragment, viewGroup, false);
            AnonymousClass1 r3 = new View.OnClickListener() {
                public void onClick(View view) {
                    switch (view.getId()) {
                        case R.id.connection_option_devices /*2131296442*/:
                            OptionsFragment.this.updateFragment(AvailableFragment.UseKnownDevice);
                            return;
                        case R.id.connection_option_hotspot /*2131296444*/:
                            OptionsFragment.this.updateFragment(AvailableFragment.CreateHotspot);
                            return;
                        case R.id.connection_option_manual_ip /*2131296445*/:
                            OptionsFragment.this.updateFragment(AvailableFragment.EnterIpAddress);
                            return;
                        case R.id.connection_option_network /*2131296446*/:
                            OptionsFragment.this.updateFragment(AvailableFragment.UseExistingNetwork);
                            return;
                        case R.id.connection_option_scan /*2131296447*/:
                            OptionsFragment.this.startCodeScanner();
                            return;
                        default:
                            return;
                    }
                }
            };
            inflate.findViewById(R.id.connection_option_devices).setOnClickListener(r3);
            inflate.findViewById(R.id.connection_option_hotspot).setOnClickListener(r3);
            inflate.findViewById(R.id.connection_option_network).setOnClickListener(r3);
            inflate.findViewById(R.id.connection_option_scan).setOnClickListener(r3);
            inflate.findViewById(R.id.connection_option_manual_ip).setOnClickListener(r3);
            inflate.findViewById(R.id.connection_option_guide).setOnClickListener(new View.OnClickListener() {
                public void onClick(View view) {
                    new ConnectionSetUpAssistant(OptionsFragment.this.getActivity()).startShowing();
                }
            });
            return inflate;
        }

        public void onActivityResult(int i, int i2, Intent intent) {
            super.onActivityResult(i, i2, intent);
            if (i == 100 && i2 == -1 && intent != null) {
                try {
                    NetworkDevice networkDevice = new NetworkDevice(intent.getStringExtra("extraDeviceId"));
                    AppUtils.getDatabase(getContext()).reconstruct(networkDevice);
                    NetworkDevice.Connection connection = new NetworkDevice.Connection(networkDevice.deviceId, intent.getStringExtra("extraConnectionAdapter"));
                    AppUtils.getDatabase(getContext()).reconstruct(connection);
                    if (this.mListener != null) {
                        this.mListener.onNetworkDeviceSelected(networkDevice, connection);
                    }
                } catch (Exception unused) {
                }
            }
        }

        /* access modifiers changed from: private */
        public void startCodeScanner() {
            startActivityForResult(new Intent(getActivity(), BarcodeScannerActivity.class), 100);
        }

        public void updateFragment(AvailableFragment availableFragment) {
            if (getContext() != null) {
                getContext().sendBroadcast(new Intent(ConnectionManagerActivity.ACTION_CHANGE_FRAGMENT).putExtra(ConnectionManagerActivity.EXTRA_FRAGMENT_ENUM, availableFragment.toString()));
            }
        }

        public void setDeviceSelectedListener(NetworkDeviceSelectedListener networkDeviceSelectedListener) {
            this.mListener = networkDeviceSelectedListener;
        }
    }
}
