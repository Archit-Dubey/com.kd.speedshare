package com.google.android.gms.internal.ads;

/* compiled from: com.google.android.gms:play-services-ads@@19.2.0 */
final class zzcxc implements zzduu<zzbzj> {
    private final /* synthetic */ zzcae zzgps;
    final /* synthetic */ zzcxd zzgpt;

    zzcxc(zzcxd zzcxd, zzcae zzcae) {
        this.zzgpt = zzcxd;
        this.zzgps = zzcae;
    }

    public final void zzb(Throwable th) {
        zzuy zze = zzcmi.zze(th);
        synchronized (this.zzgpt) {
            zzdvf unused = this.zzgpt.zzgph = null;
            this.zzgps.zzaey().onAdFailedToLoad(zze.errorCode);
            if (((Boolean) zzwg.zzpw().zzd(zzaav.zzcxj)).booleanValue()) {
                this.zzgpt.zzgmd.zzade().execute(new zzcxh(this, zze));
                this.zzgpt.zzgmd.zzade().execute(new zzcxg(this, zze));
            }
            zzdlj.zza(zze.errorCode, th, "InterstitialAdManagerShim.onFailure");
        }
    }

    public final /* synthetic */ void onSuccess(Object obj) {
        zzbzj zzbzj = (zzbzj) obj;
        synchronized (this.zzgpt) {
            zzdvf unused = this.zzgpt.zzgph = null;
            zzbzj unused2 = this.zzgpt.zzgpv = zzbzj;
            if (((Boolean) zzwg.zzpw().zzd(zzaav.zzcxm)).booleanValue()) {
                zzbzj.zzaij().zza(this.zzgpt.zzgpa).zza(this.zzgpt.zzgpc).zza(this.zzgpt.zzgpd).zza(this.zzgpt.zzgpu);
            }
            zzbzj.zzahr();
            if (((Boolean) zzwg.zzpw().zzd(zzaav.zzcxm)).booleanValue()) {
                this.zzgpt.zzgmd.zzade().execute(new zzcxf(this));
                this.zzgpt.zzgmd.zzade().execute(new zzcxe(this));
            }
        }
    }
}
