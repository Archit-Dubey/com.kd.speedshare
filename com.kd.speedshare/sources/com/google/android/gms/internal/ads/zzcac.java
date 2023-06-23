package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.overlay.zzo;

/* compiled from: com.google.android.gms:play-services-ads@@19.2.0 */
public final class zzcac implements zzo {
    private final zzbui zzfty;
    private final zzbyc zzftz;

    public zzcac(zzbui zzbui, zzbyc zzbyc) {
        this.zzfty = zzbui;
        this.zzftz = zzbyc;
    }

    public final void zzud() {
        this.zzfty.zzud();
        this.zzftz.onHide();
    }

    public final void onPause() {
        this.zzfty.onPause();
    }

    public final void onResume() {
        this.zzfty.onResume();
    }

    public final void zzue() {
        this.zzfty.zzue();
        this.zzftz.zzaka();
    }
}
