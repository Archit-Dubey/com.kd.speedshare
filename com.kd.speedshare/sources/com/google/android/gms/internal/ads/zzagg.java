package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.formats.UnifiedNativeAd;

/* compiled from: com.google.android.gms:play-services-ads-lite@@19.2.0 */
public final class zzagg extends zzafr {
    private final UnifiedNativeAd.UnconfirmedClickListener zzddg;

    public zzagg(UnifiedNativeAd.UnconfirmedClickListener unconfirmedClickListener) {
        this.zzddg = unconfirmedClickListener;
    }

    public final void onUnconfirmedClickReceived(String str) {
        this.zzddg.onUnconfirmedClickReceived(str);
    }

    public final void onUnconfirmedClickCancelled() {
        this.zzddg.onUnconfirmedClickCancelled();
    }
}
