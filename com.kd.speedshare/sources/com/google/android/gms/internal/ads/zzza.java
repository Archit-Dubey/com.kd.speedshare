package com.google.android.gms.internal.ads;

import android.os.RemoteException;

/* compiled from: com.google.android.gms:play-services-ads-lite@@19.2.0 */
public final class zzza extends zzxw {
    private final String description;
    private final String zzckc;

    public zzza(String str, String str2) {
        this.description = str;
        this.zzckc = str2;
    }

    public final String getDescription() throws RemoteException {
        return this.description;
    }

    public final String zzqg() throws RemoteException {
        return this.zzckc;
    }
}
