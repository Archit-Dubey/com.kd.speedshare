package com.google.android.gms.internal.ads;

/* compiled from: com.google.android.gms:play-services-gass@@19.2.0 */
public enum zzcn implements zzegg {
    ENUM_FALSE(0),
    ENUM_TRUE(1),
    ENUM_FAILURE(2),
    ENUM_UNKNOWN(1000);
    
    private static final zzegf<zzcn> zzes = null;
    private final int value;

    public final int zzw() {
        return this.value;
    }

    public static zzcn zzn(int i) {
        if (i == 0) {
            return ENUM_FALSE;
        }
        if (i == 1) {
            return ENUM_TRUE;
        }
        if (i == 2) {
            return ENUM_FAILURE;
        }
        if (i != 1000) {
            return null;
        }
        return ENUM_UNKNOWN;
    }

    public static zzegi zzx() {
        return zzcp.zzeu;
    }

    public final String toString() {
        return "<" + getClass().getName() + '@' + Integer.toHexString(System.identityHashCode(this)) + " number=" + this.value + " name=" + name() + '>';
    }

    private zzcn(int i) {
        this.value = i;
    }

    static {
        zzes = new zzcq();
    }
}
