package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.overlay.zzo;
import java.util.concurrent.atomic.AtomicBoolean;

/* compiled from: com.google.android.gms:play-services-ads@@19.2.0 */
public final class zzbpv implements zzo {
    private final zzbtl zzfpq;
    private AtomicBoolean zzfpr = new AtomicBoolean(false);

    public zzbpv(zzbtl zzbtl) {
        this.zzfpq = zzbtl;
    }

    public final void onPause() {
    }

    public final void onResume() {
    }

    public final void zzud() {
        this.zzfpr.set(true);
        this.zzfpq.onAdClosed();
    }

    public final void zzue() {
        this.zzfpq.onAdOpened();
    }

    public final boolean isClosed() {
        return this.zzfpr.get();
    }
}
