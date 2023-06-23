package com.genonbeta.TrebleShot.fragment;

import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import com.genonbeta.TrebleShot.object.NetworkDevice;
import com.genonbeta.TrebleShot.service.CommunicationService;
import com.genonbeta.TrebleShot.ui.callback.NetworkDeviceSelectedListener;
import com.kd.speedshare.R;

public class CustomNetworkDeviceListFragment extends NetworkDeviceListFragment {
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setHasOptionsMenu(false);
        setFilteringSupported(false);
        setUseDefaultPaddingDecoration(false);
        setUseDefaultPaddingDecorationSpaceForEdges(false);
        if (isScreenLarge()) {
            setDefaultViewingGridSize(4, 5);
        } else if (isScreenNormal()) {
            setDefaultViewingGridSize(3, 4);
        } else {
            setDefaultViewingGridSize(2, 3);
        }
        setDeviceSelectedListener(new NetworkDeviceSelectedListener() {
            public boolean isListenerEffective() {
                return true;
            }

            public boolean onNetworkDeviceSelected(NetworkDevice networkDevice, NetworkDevice.Connection connection) {
                if (CustomNetworkDeviceListFragment.this.getContext() == null) {
                    return false;
                }
                CustomNetworkDeviceListFragment.this.getContext().sendBroadcast(new Intent(CommunicationService.ACTION_DEVICE_ACQUAINTANCE).putExtra("extraDeviceId", networkDevice.deviceId).putExtra(CommunicationService.EXTRA_CONNECTION_ADAPTER_NAME, connection.adapterName));
                return true;
            }
        });
    }

    public void onViewCreated(View view, Bundle bundle) {
        super.onViewCreated(view, bundle);
        getListView().setNestedScrollingEnabled(true);
        setDividerVisible(false);
        if (getContext() != null) {
            float dimension = getContext().getResources().getDimension(R.dimen.short_content_width_padding);
            getListView().setClipToPadding(false);
            int i = (int) dimension;
            getListView().setPadding(i, 0, i, 0);
        }
    }
}
