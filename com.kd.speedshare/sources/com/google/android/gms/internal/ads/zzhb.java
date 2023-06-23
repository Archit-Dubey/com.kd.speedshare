package com.google.android.gms.internal.ads;

import java.io.IOException;

/* compiled from: com.google.android.gms:play-services-ads@@19.2.0 */
public final class zzhb extends Exception {
    private final int type;
    private final int zzaea;

    public static zzhb zza(Exception exc, int i) {
        return new zzhb(1, (String) null, exc, i);
    }

    public static zzhb zza(IOException iOException) {
        return new zzhb(0, (String) null, iOException, -1);
    }

    static zzhb zza(RuntimeException runtimeException) {
        return new zzhb(2, (String) null, runtimeException, -1);
    }

    private zzhb(int i, String str, Throwable th, int i2) {
        super((String) null, th);
        this.type = i;
        this.zzaea = i2;
    }
}
