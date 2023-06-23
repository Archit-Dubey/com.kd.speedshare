package com.google.android.gms.internal.ads;

/* compiled from: com.google.android.gms:play-services-ads@@19.2.0 */
final class zzcxs implements zzduu<zzbpb> {
    private final /* synthetic */ zzcxp zzgqi;
    private final /* synthetic */ zzcbc zzgqj;
    final /* synthetic */ zzcxr zzgqk;

    zzcxs(zzcxr zzcxr, zzcxp zzcxp, zzcbc zzcbc) {
        this.zzgqk = zzcxr;
        this.zzgqi = zzcxp;
        this.zzgqj = zzcbc;
    }

    public final void zzb(Throwable th) {
        zzuy zze = zzcmi.zze(th);
        this.zzgqj.zzaey().onAdFailedToLoad(zze.errorCode);
        if (((Boolean) zzwg.zzpw().zzd(zzaav.zzcxn)).booleanValue()) {
            this.zzgqk.zzgmd.zzade().execute(new zzcxu(this, zze));
        }
        zzdlj.zza(zze.errorCode, th, "NativeAdLoader.onFailure");
        this.zzgqi.zzapy();
    }

    public final /* synthetic */ void onSuccess(Object obj) {
        zzbpb zzbpb = (zzbpb) obj;
        synchronized (this.zzgqk) {
            if (((Boolean) zzwg.zzpw().zzd(zzaav.zzcxn)).booleanValue()) {
                zzbpb.zzaij().zza(this.zzgqk.zzgqg.zzaqa());
            }
            this.zzgqi.onSuccess(zzbpb);
            if (((Boolean) zzwg.zzpw().zzd(zzaav.zzcxn)).booleanValue()) {
                this.zzgqk.zzgmd.zzade().execute(new zzcxv(this));
            }
        }
    }
}
