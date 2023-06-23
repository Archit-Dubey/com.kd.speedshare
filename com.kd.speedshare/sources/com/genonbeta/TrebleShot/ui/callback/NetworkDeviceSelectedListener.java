package com.genonbeta.TrebleShot.ui.callback;

import com.genonbeta.TrebleShot.object.NetworkDevice;

public interface NetworkDeviceSelectedListener {
    boolean isListenerEffective();

    boolean onNetworkDeviceSelected(NetworkDevice networkDevice, NetworkDevice.Connection connection);
}
