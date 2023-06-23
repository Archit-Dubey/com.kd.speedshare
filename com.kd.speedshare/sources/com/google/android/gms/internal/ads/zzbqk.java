package com.google.android.gms.internal.ads;

import com.google.android.gms.common.util.Clock;

/* compiled from: com.google.android.gms:play-services-ads@@19.2.0 */
public final class zzbqk implements zzbsl, zzbtd, zzbua, zzbva, zzuu {
    private final Clock zzbqd;
    private final zzaxg zzfqj;

    public zzbqk(Clock clock, zzaxg zzaxg) {
        this.zzbqd = clock;
        this.zzfqj = zzaxg;
    }

    public final void onAdLeftApplication() {
    }

    public final void onAdOpened() {
    }

    public final void onRewardedVideoCompleted() {
    }

    public final void onRewardedVideoStarted() {
    }

    public final void zzb(zzatg zzatg, String str, String str2) {
    }

    public final void zzd(zzasm zzasm) {
    }

    public final void onAdClicked() {
        this.zzfqj.zzvv();
    }

    public final void onAdLoaded() {
        this.zzfqj.zzan(true);
    }

    public final void onAdImpression() {
        this.zzfqj.zzvu();
    }

    public final void zzf(zzve zzve) {
        this.zzfqj.zze(zzve);
    }

    public final void zzb(zzdkw zzdkw) {
        this.zzfqj.zzey(this.zzbqd.elapsedRealtime());
    }

    public final void onAdClosed() {
        this.zzfqj.zzvw();
    }

    public final String zzvx() {
        return this.zzfqj.zzvx();
    }
}
