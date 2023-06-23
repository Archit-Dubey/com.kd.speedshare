package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.overlay.zzo;

/* compiled from: com.google.android.gms:play-services-ads@@19.2.0 */
final class zzapm implements zzo {
    private final /* synthetic */ zzapn zzdlk;

    zzapm(zzapn zzapn) {
        this.zzdlk = zzapn;
    }

    public final void zzud() {
        zzbba.zzee("AdMobCustomTabsAdapter overlay is closed.");
        this.zzdlk.zzdlm.onAdClosed(this.zzdlk);
    }

    public final void onPause() {
        zzbba.zzee("AdMobCustomTabsAdapter overlay is paused.");
    }

    public final void onResume() {
        zzbba.zzee("AdMobCustomTabsAdapter overlay is resumed.");
    }

    public final void zzue() {
        zzbba.zzee("Opening AdMobCustomTabsAdapter overlay.");
        this.zzdlk.zzdlm.onAdOpened(this.zzdlk);
    }
}
