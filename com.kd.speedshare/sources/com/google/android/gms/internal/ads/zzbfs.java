package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.zzq;

/* compiled from: com.google.android.gms:play-services-ads@@19.2.0 */
final /* synthetic */ class zzbfs implements Runnable {
    private final String zzdfo;

    zzbfs(String str) {
        this.zzdfo = str;
    }

    public final void run() {
        zzq.zzla().zzvy().zzcu(this.zzdfo.substring(1));
    }
}
