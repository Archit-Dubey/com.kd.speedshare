package com.genonbeta.TrebleShot.fragment;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Bundle;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Toast;
import androidx.appcompat.app.AlertDialog;
import androidx.core.content.ContextCompat;
import androidx.recyclerview.widget.RecyclerView;
import androidx.swiperefreshlayout.widget.SwipeRefreshLayout;
import com.genonbeta.TrebleShot.activity.ConnectionManagerActivity;
import com.genonbeta.TrebleShot.adapter.NetworkDeviceListAdapter;
import com.genonbeta.TrebleShot.app.EditableListFragment;
import com.genonbeta.TrebleShot.callback.OnDeviceSelectedListener;
import com.genonbeta.TrebleShot.database.AccessDatabase;
import com.genonbeta.TrebleShot.dialog.DeviceInfoDialog;
import com.genonbeta.TrebleShot.dialog.EstablishConnectionDialog;
import com.genonbeta.TrebleShot.object.NetworkDevice;
import com.genonbeta.TrebleShot.service.DeviceScannerService;
import com.genonbeta.TrebleShot.ui.UIConnectionUtils;
import com.genonbeta.TrebleShot.ui.UITask;
import com.genonbeta.TrebleShot.ui.callback.DetachListener;
import com.genonbeta.TrebleShot.ui.callback.IconSupport;
import com.genonbeta.TrebleShot.ui.callback.NetworkDeviceSelectedListener;
import com.genonbeta.TrebleShot.ui.callback.TitleSupport;
import com.genonbeta.TrebleShot.util.AppUtils;
import com.genonbeta.TrebleShot.util.ConnectionUtils;
import com.genonbeta.TrebleShot.util.NetworkDeviceLoader;
import com.genonbeta.TrebleShot.util.NsdDiscovery;
import com.genonbeta.TrebleShot.widget.EditableListAdapter;
import com.kd.speedshare.R;
import java.util.List;

public class NetworkDeviceListFragment extends EditableListFragment<NetworkDeviceListAdapter.EditableNetworkDevice, EditableListAdapter.EditableViewHolder, NetworkDeviceListAdapter> implements TitleSupport, DetachListener, IconSupport, ConnectionManagerActivity.DeviceSelectionSupport {
    public static final String ARG_USE_HORIZONTAL_VIEW = "useHorizontalView";
    public static final int REQUEST_LOCATION_PERMISSION = 643;
    private UIConnectionUtils mConnectionUtils;
    /* access modifiers changed from: private */
    public NetworkDeviceSelectedListener mDeviceSelectedListener;
    private IntentFilter mIntentFilter = new IntentFilter();
    private NsdDiscovery mNsdDiscovery;
    private StatusReceiver mStatusReceiver = new StatusReceiver();
    private SwipeRefreshLayout mSwipeRefreshLayout;
    /* access modifiers changed from: private */
    public boolean mWaitForWiFi = false;
    /* access modifiers changed from: private */
    public UIConnectionUtils.RequestWatcher mWiFiWatcher = new UIConnectionUtils.RequestWatcher() {
        public void onResultReturned(boolean z, boolean z2) {
            boolean unused = NetworkDeviceListFragment.this.mWaitForWiFi = z2;
        }
    };

    public int getIconRes() {
        return R.drawable.ic_devices_white_24dp;
    }

    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setFilteringSupported(true);
        setSortingSupported(false);
        setUseDefaultPaddingDecoration(true);
        setUseDefaultPaddingDecorationSpaceForEdges(true);
        setDefaultPaddingDecorationSize(getResources().getDimension(R.dimen.padding_list_content_parent_layout));
        this.mIntentFilter.addAction(DeviceScannerService.ACTION_SCAN_STARTED);
        this.mIntentFilter.addAction(DeviceScannerService.ACTION_DEVICE_SCAN_COMPLETED);
        this.mIntentFilter.addAction(AccessDatabase.ACTION_DATABASE_CHANGE);
        this.mIntentFilter.addAction("android.net.wifi.SCAN_RESULTS");
        this.mIntentFilter.addAction("android.net.wifi.WIFI_STATE_CHANGED");
        this.mNsdDiscovery = new NsdDiscovery(getContext(), AppUtils.getDatabase(getContext()), AppUtils.getDefaultPreferences(getContext()));
    }

    /* access modifiers changed from: protected */
    public RecyclerView onListView(ViewGroup viewGroup) {
        if (isHorizontalOrientation()) {
            return super.onListView(viewGroup);
        }
        Context context = viewGroup.getContext();
        SwipeRefreshLayout swipeRefreshLayout = new SwipeRefreshLayout(getActivity());
        this.mSwipeRefreshLayout = swipeRefreshLayout;
        swipeRefreshLayout.setColorSchemeColors(ContextCompat.getColor(context, AppUtils.getReference(getActivity(), R.attr.colorAccent)));
        this.mSwipeRefreshLayout.setLayoutParams(new ViewGroup.LayoutParams(-1, -1));
        this.mSwipeRefreshLayout.setProgressBackgroundColorSchemeColor(ContextCompat.getColor(context, AppUtils.getReference(context, R.attr.colorSurface)));
        viewGroup.addView(this.mSwipeRefreshLayout);
        return super.onListView(this.mSwipeRefreshLayout);
    }

    public void onViewCreated(View view, Bundle bundle) {
        super.onViewCreated(view, bundle);
        setEmptyImage(R.drawable.ic_devices_white_24dp);
        setEmptyText(getString(R.string.text_findDevicesHint));
        SwipeRefreshLayout swipeRefreshLayout = this.mSwipeRefreshLayout;
        if (swipeRefreshLayout != null) {
            swipeRefreshLayout.setOnRefreshListener(new SwipeRefreshLayout.OnRefreshListener() {
                public void onRefresh() {
                    NetworkDeviceListFragment.this.requestRefresh();
                }
            });
        }
    }

    public void onActivityCreated(Bundle bundle) {
        super.onActivityCreated(bundle);
        setHasOptionsMenu(true);
        if (AppUtils.getDefaultPreferences(getContext()).getBoolean("scan_devices_auto", false)) {
            requestRefresh();
        }
    }

    public NetworkDeviceListAdapter onAdapter() {
        final AnonymousClass3 r0 = new AppUtils.QuickActions<EditableListAdapter.EditableViewHolder>() {
            public void onQuickActions(final EditableListAdapter.EditableViewHolder editableViewHolder) {
                NetworkDeviceListFragment.this.registerLayoutViewClicks(editableViewHolder);
                editableViewHolder.getView().findViewById(R.id.menu).setOnClickListener(new View.OnClickListener() {
                    public void onClick(View view) {
                        NetworkDeviceListFragment.this.openInfo((NetworkDevice) ((NetworkDeviceListAdapter) NetworkDeviceListFragment.this.getAdapter()).getList().get(editableViewHolder.getAdapterPosition()));
                    }
                });
            }
        };
        return new NetworkDeviceListAdapter(getContext(), getConnectionUtils()) {
            public EditableListAdapter.EditableViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
                return (EditableListAdapter.EditableViewHolder) AppUtils.quickAction(super.onCreateViewHolder(viewGroup, i), r0);
            }
        };
    }

    public boolean onDefaultClickAction(EditableListAdapter.EditableViewHolder editableViewHolder) {
        final NetworkDevice networkDevice = (NetworkDevice) ((NetworkDeviceListAdapter) getAdapter()).getList().get(editableViewHolder.getAdapterPosition());
        NetworkDeviceSelectedListener networkDeviceSelectedListener = this.mDeviceSelectedListener;
        if (networkDeviceSelectedListener == null || !networkDeviceSelectedListener.isListenerEffective()) {
            openInfo(networkDevice);
            return true;
        } else if (networkDevice.versionNumber != -1 && networkDevice.versionNumber < 62) {
            createSnackbar(R.string.mesg_versionNotSupported, new Object[0]).show();
            return true;
        } else if (networkDevice instanceof NetworkDeviceListAdapter.HotspotNetwork) {
            this.mConnectionUtils.makeAcquaintance(getActivity(), (UITask) null, networkDevice, -1, new NetworkDeviceLoader.OnDeviceRegisteredErrorListener() {
                public void onError(Exception exc) {
                }

                public void onDeviceRegistered(AccessDatabase accessDatabase, NetworkDevice networkDevice, NetworkDevice.Connection connection) {
                    NetworkDeviceListFragment.this.mDeviceSelectedListener.onNetworkDeviceSelected(networkDevice, connection);
                }
            });
            return true;
        } else {
            new EstablishConnectionDialog(getActivity(), networkDevice, new OnDeviceSelectedListener() {
                public void onDeviceSelected(NetworkDevice.Connection connection, List<NetworkDevice.Connection> list) {
                    NetworkDeviceListFragment.this.mDeviceSelectedListener.onNetworkDeviceSelected(networkDevice, connection);
                }
            }).show();
            return true;
        }
    }

    public void onResume() {
        super.onResume();
        getActivity().registerReceiver(this.mStatusReceiver, this.mIntentFilter);
        refreshList();
        checkRefreshing();
        this.mNsdDiscovery.startDiscovering();
    }

    public void onPause() {
        super.onPause();
        getActivity().unregisterReceiver(this.mStatusReceiver);
        this.mNsdDiscovery.stopDiscovering();
    }

    public void onCreateOptionsMenu(Menu menu, MenuInflater menuInflater) {
        super.onCreateOptionsMenu(menu, menuInflater);
        if (!isHorizontalOrientation()) {
            menuInflater.inflate(R.menu.actions_network_device, menu);
        }
    }

    public boolean onOptionsItemSelected(MenuItem menuItem) {
        if (R.id.network_devices_scan != menuItem.getItemId()) {
            return super.onOptionsItemSelected(menuItem);
        }
        requestRefresh();
        return true;
    }

    public void onRequestPermissionsResult(int i, String[] strArr, int[] iArr) {
        super.onRequestPermissionsResult(i, strArr, iArr);
        if (643 == i) {
            getUIConnectionUtils().showConnectionOptions(getActivity(), 643, this.mWiFiWatcher);
        }
    }

    public void onPrepareDetach() {
        showCustomView(false);
    }

    public void checkRefreshing() {
        SwipeRefreshLayout swipeRefreshLayout = this.mSwipeRefreshLayout;
        if (swipeRefreshLayout != null) {
            swipeRefreshLayout.setRefreshing(!DeviceScannerService.getDeviceScanner().isScannerAvailable());
        }
    }

    public ConnectionUtils getConnectionUtils() {
        return getUIConnectionUtils().getConnectionUtils();
    }

    public UIConnectionUtils getUIConnectionUtils() {
        if (this.mConnectionUtils == null) {
            this.mConnectionUtils = new UIConnectionUtils(ConnectionUtils.getInstance(getContext()), this);
        }
        return this.mConnectionUtils;
    }

    public CharSequence getTitle(Context context) {
        return context.getString(R.string.text_useKnownDevice);
    }

    public boolean isHorizontalOrientation() {
        return (getArguments() != null && getArguments().getBoolean("useHorizontalView")) || super.isHorizontalOrientation();
    }

    /* access modifiers changed from: private */
    public void openInfo(NetworkDevice networkDevice) {
        if (networkDevice instanceof NetworkDeviceListAdapter.HotspotNetwork) {
            final NetworkDeviceListAdapter.HotspotNetwork hotspotNetwork = (NetworkDeviceListAdapter.HotspotNetwork) networkDevice;
            AlertDialog.Builder builder = new AlertDialog.Builder(getContext());
            builder.setTitle((CharSequence) hotspotNetwork.nickname);
            builder.setMessage((int) R.string.text_trebleshotHotspotDescription);
            builder.setNegativeButton((int) R.string.butn_close, (DialogInterface.OnClickListener) null);
            builder.setPositiveButton(getConnectionUtils().isConnectedToNetwork(hotspotNetwork) ? R.string.butn_disconnect : R.string.butn_connect, (DialogInterface.OnClickListener) new DialogInterface.OnClickListener() {
                public void onClick(DialogInterface dialogInterface, int i) {
                    NetworkDeviceListFragment.this.getConnectionUtils().toggleConnection(hotspotNetwork);
                }
            });
            builder.show();
            return;
        }
        new DeviceInfoDialog(getActivity(), AppUtils.getDatabase(getContext()), networkDevice).show();
    }

    public void requestRefresh() {
        getConnectionUtils().getWifiManager().startScan();
        if (!AppUtils.toggleDeviceScanning(getContext())) {
            Toast.makeText(getContext(), R.string.mesg_stopping, 0).show();
        }
    }

    public void setDeviceSelectedListener(NetworkDeviceSelectedListener networkDeviceSelectedListener) {
        this.mDeviceSelectedListener = networkDeviceSelectedListener;
    }

    private class StatusReceiver extends BroadcastReceiver {
        private StatusReceiver() {
        }

        public void onReceive(Context context, Intent intent) {
            NetworkDeviceListFragment.this.checkRefreshing();
            if (DeviceScannerService.ACTION_SCAN_STARTED.equals(intent.getAction()) && intent.hasExtra(DeviceScannerService.EXTRA_SCAN_STATUS)) {
                String stringExtra = intent.getStringExtra(DeviceScannerService.EXTRA_SCAN_STATUS);
                if (DeviceScannerService.STATUS_OK.equals(stringExtra) || DeviceScannerService.SCANNER_NOT_AVAILABLE.equals(stringExtra)) {
                    if (!NetworkDeviceListFragment.this.getConnectionUtils().isConnectionSelfNetwork()) {
                        NetworkDeviceListFragment.this.createSnackbar(DeviceScannerService.STATUS_OK.equals(stringExtra) ? R.string.mesg_scanningDevices : R.string.mesg_stillScanning, new Object[0]).show();
                    } else {
                        NetworkDeviceListFragment.this.createSnackbar(R.string.mesg_scanningDevicesSelfHotspot, new Object[0]).setAction((int) R.string.butn_disconnect, (View.OnClickListener) new View.OnClickListener() {
                            public void onClick(View view) {
                                NetworkDeviceListFragment.this.getConnectionUtils().getWifiManager().disconnect();
                            }
                        }).show();
                    }
                } else if (DeviceScannerService.STATUS_NO_NETWORK_INTERFACE.equals(stringExtra)) {
                    NetworkDeviceListFragment.this.getUIConnectionUtils().showConnectionOptions(NetworkDeviceListFragment.this.getActivity(), 643, NetworkDeviceListFragment.this.mWiFiWatcher);
                }
            } else if (DeviceScannerService.ACTION_DEVICE_SCAN_COMPLETED.equals(intent.getAction())) {
                NetworkDeviceListFragment.this.createSnackbar(R.string.mesg_scanCompleted, new Object[0]).show();
            } else if ("android.net.wifi.SCAN_RESULTS".equals(intent.getAction()) || (AccessDatabase.ACTION_DATABASE_CHANGE.equals(intent.getAction()) && AccessDatabase.TABLE_DEVICES.equals(intent.getStringExtra(AccessDatabase.EXTRA_TABLE_NAME)))) {
                NetworkDeviceListFragment.this.refreshList();
            } else if (NetworkDeviceListFragment.this.getUIConnectionUtils().notifyWirelessRequestHandled() && "android.net.wifi.WIFI_STATE_CHANGED".equals(intent.getAction()) && 3 == intent.getIntExtra("wifi_state", -1)) {
                NetworkDeviceListFragment.this.requestRefresh();
            }
        }
    }
}
