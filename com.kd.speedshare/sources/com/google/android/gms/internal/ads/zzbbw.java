package com.google.android.gms.internal.ads;

/* compiled from: com.google.android.gms:play-services-ads@@19.2.0 */
final class zzbbw implements zzduu<T> {
    private final /* synthetic */ zzbbr zzedw;
    private final /* synthetic */ zzbbp zzedx;

    zzbbw(zzbbu zzbbu, zzbbr zzbbr, zzbbp zzbbp) {
        this.zzedw = zzbbr;
        this.zzedx = zzbbp;
    }

    public final void onSuccess(T t) {
        this.zzedw.zzh(t);
    }

    public final void zzb(Throwable th) {
        this.zzedx.run();
    }
}
