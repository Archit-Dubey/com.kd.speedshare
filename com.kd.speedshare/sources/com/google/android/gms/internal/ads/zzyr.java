package com.google.android.gms.internal.ads;

/* compiled from: com.google.android.gms:play-services-ads-lite@@19.2.0 */
final class zzyr extends zzwf {
    private final /* synthetic */ zzys zzcji;

    zzyr(zzys zzys) {
        this.zzcji = zzys;
    }

    public final void onAdLoaded() {
        this.zzcji.zzcjk.zza(this.zzcji.zzdu());
        super.onAdLoaded();
    }

    public final void onAdFailedToLoad(int i) {
        this.zzcji.zzcjk.zza(this.zzcji.zzdu());
        super.onAdFailedToLoad(i);
    }
}
