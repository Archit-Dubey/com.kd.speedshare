package com.google.android.gms.internal.ads;

/* compiled from: com.google.android.gms:play-services-ads@@19.2.0 */
public final class zzcaq implements zzbsl {
    private final zzbtc zzfud;
    private final zzdkk zzfue;

    public zzcaq(zzbtc zzbtc, zzdkk zzdkk) {
        this.zzfud = zzbtc;
        this.zzfue = zzdkk;
    }

    public final void onAdClosed() {
    }

    public final void onAdLeftApplication() {
    }

    public final void onRewardedVideoCompleted() {
    }

    public final void onRewardedVideoStarted() {
    }

    public final void zzb(zzatg zzatg, String str, String str2) {
    }

    public final void onAdOpened() {
        if (this.zzfue.zzhac == 0 || this.zzfue.zzhac == 1) {
            this.zzfud.onAdImpression();
        }
    }
}
