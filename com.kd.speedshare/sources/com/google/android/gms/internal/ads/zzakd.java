package com.google.android.gms.internal.ads;

import fi.iki.elonen.NanoHTTPD;

/* compiled from: com.google.android.gms:play-services-ads@@19.2.0 */
final class zzakd implements Runnable {
    private final /* synthetic */ String zzdfs;
    private final /* synthetic */ zzajw zzdft;

    zzakd(zzajw zzajw, String str) {
        this.zzdft = zzajw;
        this.zzdfs = str;
    }

    public final void run() {
        this.zzdft.zzdfp.loadData(this.zzdfs, NanoHTTPD.MIME_HTML, "UTF-8");
    }
}
