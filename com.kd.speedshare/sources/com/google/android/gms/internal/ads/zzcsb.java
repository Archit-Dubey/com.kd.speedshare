package com.google.android.gms.internal.ads;

/* compiled from: com.google.android.gms:play-services-ads@@19.2.0 */
final class zzcsb implements zzduu<zzbnc> {
    private final /* synthetic */ zzcrw zzglf;

    zzcsb(zzcrw zzcrw) {
        this.zzglf = zzcrw;
    }

    public final void zzb(Throwable th) {
        zzuy zze = zzcmi.zze(th);
        this.zzglf.zzftb.onAdFailedToLoad(zze.errorCode);
        zzdlj.zza(zze.errorCode, th, "DelayedBannerAd.onFailure");
    }

    public final /* synthetic */ void onSuccess(Object obj) {
        ((zzbnc) obj).zzahr();
    }
}
