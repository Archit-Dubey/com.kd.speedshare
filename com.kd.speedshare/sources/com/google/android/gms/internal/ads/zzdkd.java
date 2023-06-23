package com.google.android.gms.internal.ads;

/* compiled from: com.google.android.gms:play-services-ads@@19.2.0 */
final class zzdkd implements zzcxp<zzchj> {
    private final /* synthetic */ zzdke zzgzc;

    zzdkd(zzdke zzdke) {
        this.zzgzc = zzdke;
    }

    public final void zzapy() {
        synchronized (this.zzgzc) {
            zzchj unused = this.zzgzc.zzgzb = null;
        }
    }

    public final /* synthetic */ void onSuccess(Object obj) {
        zzchj zzchj = (zzchj) obj;
        synchronized (this.zzgzc) {
            zzchj unused = this.zzgzc.zzgzb = zzchj;
            this.zzgzc.zzgzb.zzahr();
        }
    }
}
