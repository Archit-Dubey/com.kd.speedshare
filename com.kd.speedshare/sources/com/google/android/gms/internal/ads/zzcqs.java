package com.google.android.gms.internal.ads;

import java.util.concurrent.Executor;

/* compiled from: com.google.android.gms:play-services-ads@@19.2.0 */
public final class zzcqs<DelegateT, AdapterT> implements zzcqt<AdapterT> {
    private final zzcqt<DelegateT> zzgkg;
    private final zzdrx<DelegateT, AdapterT> zzgkh;

    public zzcqs(zzcqt<DelegateT> zzcqt, zzdrx<DelegateT, AdapterT> zzdrx) {
        this.zzgkg = zzcqt;
        this.zzgkh = zzdrx;
    }

    public final boolean zza(zzdkw zzdkw, zzdkk zzdkk) {
        return this.zzgkg.zza(zzdkw, zzdkk);
    }

    public final zzdvf<AdapterT> zzb(zzdkw zzdkw, zzdkk zzdkk) {
        return zzdux.zzb(this.zzgkg.zzb(zzdkw, zzdkk), this.zzgkh, (Executor) zzbbf.zzedh);
    }
}
