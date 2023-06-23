package com.genonbeta.TrebleShot.util;

import java.net.NetworkInterface;

public class AddressedInterface {
    private String associatedAddress;
    private NetworkInterface networkInterface;

    public AddressedInterface(NetworkInterface networkInterface2, String str) {
        this.networkInterface = networkInterface2;
        this.associatedAddress = str;
    }

    public String getAssociatedAddress() {
        return this.associatedAddress;
    }

    public NetworkInterface getNetworkInterface() {
        return this.networkInterface;
    }
}
