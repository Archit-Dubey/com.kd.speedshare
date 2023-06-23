package com.google.android.gms.internal.ads;

/* compiled from: com.google.android.gms:play-services-ads@@19.2.0 */
public final class zzbfc extends zzbes {
    public zzbfc(zzbdb zzbdb) {
        super(zzbdb);
    }

    public final void abort() {
    }

    public final boolean zzfm(String str) {
        zzbdb zzbdb = (zzbdb) this.zzekk.get();
        if (zzbdb != null) {
            zzbdb.zza(zzfn(str), (zzbes) this);
        }
        zzaxv.zzfd("VideoStreamNoopCache is doing nothing.");
        zza(str, zzfn(str), "noop", "Noop cache is a noop.");
        return false;
    }
}
