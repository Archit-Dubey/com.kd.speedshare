package com.google.android.gms.internal.ads;

/* compiled from: com.google.android.gms:play-services-ads@@19.2.0 */
final class zzdjr implements zzduu<zzchj> {
    private final /* synthetic */ zzcxp zzgqi;
    private final /* synthetic */ zzdjw zzgyu;
    final /* synthetic */ zzdjq zzgyv;

    zzdjr(zzdjq zzdjq, zzcxp zzcxp, zzdjw zzdjw) {
        this.zzgyv = zzdjq;
        this.zzgqi = zzcxp;
        this.zzgyu = zzdjw;
    }

    public final void zzb(Throwable th) {
        zzuy zze = zzcmi.zze(th);
        synchronized (this.zzgyv) {
            zzchm zzchm = (zzchm) this.zzgyv.zzgwc.zzarv();
            if (zzchm != null) {
                zzchm.zzaey().onAdFailedToLoad(zze.errorCode);
                if (((Boolean) zzwg.zzpw().zzd(zzaav.zzcxk)).booleanValue()) {
                    this.zzgyv.zzflp.execute(new zzdjt(this, zze));
                }
            } else {
                this.zzgyv.zzgys.onAdFailedToLoad(zze.errorCode);
                this.zzgyv.zze(this.zzgyu).zzafz().zzaex().zzair().zzajk();
            }
            zzdlj.zza(zze.errorCode, th, "RewardedAdLoader.onFailure");
            this.zzgqi.zzapy();
        }
    }

    public final /* synthetic */ void onSuccess(Object obj) {
        zzchj zzchj = (zzchj) obj;
        synchronized (this.zzgyv) {
            if (((Boolean) zzwg.zzpw().zzd(zzaav.zzcxk)).booleanValue()) {
                zzchj.zzaij().zza(this.zzgyv.zzgys);
            }
            this.zzgqi.onSuccess(zzchj);
            if (((Boolean) zzwg.zzpw().zzd(zzaav.zzcxk)).booleanValue()) {
                this.zzgyv.zzflp.execute(new zzdju(this));
            }
            this.zzgyv.zzgys.onAdMetadataChanged();
        }
    }
}
