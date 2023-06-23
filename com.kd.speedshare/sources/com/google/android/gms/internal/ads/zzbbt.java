package com.google.android.gms.internal.ads;

/* compiled from: com.google.android.gms:play-services-ads@@19.2.0 */
final class zzbbt implements zzduu<T> {
    private final /* synthetic */ zzbbu zzedt;

    zzbbt(zzbbu zzbbu) {
        this.zzedt = zzbbu;
    }

    public final void onSuccess(T t) {
        this.zzedt.zzedv.set(1);
    }

    public final void zzb(Throwable th) {
        this.zzedt.zzedv.set(-1);
    }
}
