package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.AdListener;

/* compiled from: com.google.android.gms:play-services-ads-lite@@19.2.0 */
public class zzwf extends AdListener {
    private final Object lock = new Object();
    private AdListener zzcik;

    public final void zza(AdListener adListener) {
        synchronized (this.lock) {
            this.zzcik = adListener;
        }
    }

    public void onAdClosed() {
        synchronized (this.lock) {
            if (this.zzcik != null) {
                this.zzcik.onAdClosed();
            }
        }
    }

    public void onAdFailedToLoad(int i) {
        synchronized (this.lock) {
            if (this.zzcik != null) {
                this.zzcik.onAdFailedToLoad(i);
            }
        }
    }

    public void onAdLeftApplication() {
        synchronized (this.lock) {
            if (this.zzcik != null) {
                this.zzcik.onAdLeftApplication();
            }
        }
    }

    public void onAdOpened() {
        synchronized (this.lock) {
            if (this.zzcik != null) {
                this.zzcik.onAdOpened();
            }
        }
    }

    public void onAdLoaded() {
        synchronized (this.lock) {
            if (this.zzcik != null) {
                this.zzcik.onAdLoaded();
            }
        }
    }
}
