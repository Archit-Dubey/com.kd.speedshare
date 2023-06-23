package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.formats.UnifiedNativeAd;

/* compiled from: com.google.android.gms:play-services-ads-lite@@19.2.0 */
public final class zzagh extends zzafl {
    private final UnifiedNativeAd.OnUnifiedNativeAdLoadedListener zzddh;

    public zzagh(UnifiedNativeAd.OnUnifiedNativeAdLoadedListener onUnifiedNativeAdLoadedListener) {
        this.zzddh = onUnifiedNativeAdLoadedListener;
    }

    public final void zza(zzaft zzaft) {
        this.zzddh.onUnifiedNativeAdLoaded(new zzafu(zzaft));
    }
}
