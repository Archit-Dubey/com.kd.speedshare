package com.google.android.gms.internal.ads;

/* compiled from: com.google.android.gms:play-services-ads@@19.2.0 */
final class zzdka implements zzcxp<zzchj> {
    private final /* synthetic */ zzdjy zzgyy;

    zzdka(zzdjy zzdjy) {
        this.zzgyy = zzdjy;
    }

    public final void zzapy() {
        synchronized (this.zzgyy) {
            zzchj unused = this.zzgyy.zzgzb = null;
        }
    }

    public final /* synthetic */ void onSuccess(Object obj) {
        zzchj zzchj = (zzchj) obj;
        synchronized (this.zzgyy) {
            zzchj unused = this.zzgyy.zzgzb = zzchj;
            this.zzgyy.zzgzb.zzahr();
        }
    }
}
