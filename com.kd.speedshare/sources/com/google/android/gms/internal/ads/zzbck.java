package com.google.android.gms.internal.ads;

/* compiled from: com.google.android.gms:play-services-ads@@19.2.0 */
final class zzbck implements Runnable {
    private final /* synthetic */ zzbbz zzeeq;

    zzbck(zzbbz zzbbz) {
        this.zzeeq = zzbbz;
    }

    public final void run() {
        if (this.zzeeq.zzeeo != null) {
            this.zzeeq.zzeeo.onPaused();
        }
    }
}
