package com.genonbeta.TrebleShot.adapter;

import android.content.Context;
import android.net.wifi.ScanResult;
import android.net.wifi.WifiInfo;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import com.genonbeta.TrebleShot.config.AppConfig;
import com.genonbeta.TrebleShot.database.AccessDatabase;
import com.genonbeta.TrebleShot.exception.NotReadyException;
import com.genonbeta.TrebleShot.graphics.drawable.TextDrawable;
import com.genonbeta.TrebleShot.object.Editable;
import com.genonbeta.TrebleShot.object.NetworkDevice;
import com.genonbeta.TrebleShot.util.AppUtils;
import com.genonbeta.TrebleShot.util.ConnectionUtils;
import com.genonbeta.TrebleShot.util.NetworkDeviceLoader;
import com.genonbeta.TrebleShot.widget.EditableListAdapter;
import com.genonbeta.android.database.SQLQuery;
import com.kd.speedshare.R;
import java.util.ArrayList;
import java.util.List;

public class NetworkDeviceListAdapter extends EditableListAdapter<EditableNetworkDevice, EditableListAdapter.EditableViewHolder> {
    private ConnectionUtils mConnectionUtils;
    private TextDrawable.IShapeBuilder mIconBuilder;

    public NetworkDeviceListAdapter(Context context, ConnectionUtils connectionUtils) {
        super(context);
        this.mConnectionUtils = connectionUtils;
        this.mIconBuilder = AppUtils.getDefaultIconBuilder(context);
    }

    public List<EditableNetworkDevice> onLoad() {
        ArrayList arrayList = new ArrayList();
        if (this.mConnectionUtils.canReadScanResults()) {
            for (ScanResult next : this.mConnectionUtils.getWifiManager().getScanResults()) {
                if (next.SSID.startsWith(AppConfig.PREFIX_ACCESS_POINT)) {
                    HotspotNetwork hotspotNetwork = new HotspotNetwork();
                    hotspotNetwork.lastUsageTime = System.currentTimeMillis();
                    hotspotNetwork.SSID = next.SSID;
                    hotspotNetwork.BSSID = next.BSSID;
                    hotspotNetwork.nickname = AppUtils.getFriendlySSID(next.SSID);
                    arrayList.add(hotspotNetwork);
                }
            }
        }
        if (arrayList.size() == 0 && this.mConnectionUtils.isConnectionSelfNetwork()) {
            WifiInfo connectionInfo = this.mConnectionUtils.getWifiManager().getConnectionInfo();
            HotspotNetwork hotspotNetwork2 = new HotspotNetwork();
            hotspotNetwork2.lastUsageTime = System.currentTimeMillis();
            hotspotNetwork2.SSID = connectionInfo.getSSID();
            hotspotNetwork2.BSSID = connectionInfo.getBSSID();
            hotspotNetwork2.nickname = AppUtils.getFriendlySSID(connectionInfo.getSSID());
            arrayList.add(hotspotNetwork2);
        }
        for (EditableNetworkDevice next2 : AppUtils.getDatabase(getContext()).castQuery(new SQLQuery.Select(AccessDatabase.TABLE_DEVICES, new String[0]).setOrderBy("lastUsedTime DESC"), EditableNetworkDevice.class)) {
            if (filterItem(next2) && (!next2.isLocalAddress || AppUtils.getDefaultPreferences(getContext()).getBoolean("developer_mode", false))) {
                arrayList.add(next2);
            }
        }
        return arrayList;
    }

    public EditableListAdapter.EditableViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
        return new EditableListAdapter.EditableViewHolder(getInflater().inflate((isHorizontalOrientation() || isGridLayoutRequested()) ? R.layout.list_network_device_grid : R.layout.list_network_device, viewGroup, false));
    }

    public void onBindViewHolder(EditableListAdapter.EditableViewHolder editableViewHolder, int i) {
        try {
            NetworkDevice networkDevice = (NetworkDevice) getItem(i);
            View view = editableViewHolder.getView();
            boolean z = networkDevice instanceof HotspotNetwork;
            TextView textView = (TextView) view.findViewById(R.id.text2);
            ImageView imageView = (ImageView) view.findViewById(R.id.image);
            ImageView imageView2 = (ImageView) view.findViewById(R.id.imageStatus);
            ((TextView) view.findViewById(R.id.text1)).setText(networkDevice.nickname);
            textView.setText(z ? getContext().getString(R.string.text_trebleshotHotspot) : networkDevice.model);
            NetworkDeviceLoader.showPictureIntoView(networkDevice, imageView, this.mIconBuilder);
            if (networkDevice.isRestricted) {
                imageView2.setVisibility(0);
                imageView2.setImageResource(R.drawable.ic_block_white_24dp);
            } else if (networkDevice.isTrusted) {
                imageView2.setVisibility(0);
                imageView2.setImageResource(R.drawable.ic_vpn_key_white_24dp);
            } else {
                imageView2.setVisibility(8);
            }
        } catch (NotReadyException e) {
            e.printStackTrace();
        }
    }

    public static class EditableNetworkDevice extends NetworkDevice implements Editable {
        private boolean mIsSelected = false;

        public boolean comparisonSupported() {
            return true;
        }

        public long getComparableSize() {
            return 0;
        }

        public void setId(long j) {
        }

        public boolean applyFilter(String[] strArr) {
            for (String lowerCase : strArr) {
                if (this.nickname.toLowerCase().contains(lowerCase.toLowerCase())) {
                    return true;
                }
            }
            return false;
        }

        public long getId() {
            return (long) this.deviceId.hashCode();
        }

        public String getComparableName() {
            return this.nickname;
        }

        public long getComparableDate() {
            return this.lastUsageTime;
        }

        public String getSelectableTitle() {
            return this.nickname;
        }

        public boolean isSelectableSelected() {
            return this.mIsSelected;
        }

        public boolean setSelectableSelected(boolean z) {
            this.mIsSelected = z;
            return true;
        }
    }

    public static class HotspotNetwork extends EditableNetworkDevice {
        public String BSSID;
        public String SSID;
        public int keyManagement;
        public String password;
        public boolean qrConnection;

        public HotspotNetwork() {
            this.versionName = "stamp";
            this.versionNumber = -1;
        }

        public long getId() {
            return (long) this.SSID.hashCode();
        }
    }
}
