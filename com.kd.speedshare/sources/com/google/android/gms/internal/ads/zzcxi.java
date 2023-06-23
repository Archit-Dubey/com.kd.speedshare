package com.google.android.gms.internal.ads;

/* compiled from: com.google.android.gms:play-services-ads@@19.2.0 */
final class zzcxi implements zzcxp<zzbpb> {
    private final /* synthetic */ zzcxj zzgpy;

    zzcxi(zzcxj zzcxj) {
        this.zzgpy = zzcxj;
    }

    public final void zzapy() {
        synchronized (this.zzgpy) {
            boolean unused = this.zzgpy.zzaeu = false;
        }
    }

    public final /* synthetic */ void onSuccess(Object obj) {
        zzbpb zzbpb = (zzbpb) obj;
        synchronized (this.zzgpy) {
            boolean unused = this.zzgpy.zzaeu = false;
            zzyd unused2 = this.zzgpy.zzadl = zzbpb.zzaih();
            zzbpb.zzahr();
        }
    }
}
