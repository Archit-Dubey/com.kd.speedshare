package com.google.android.gms.internal.ads;

import android.view.ViewGroup;
import android.view.ViewParent;
import java.util.concurrent.Executor;

/* compiled from: com.google.android.gms:play-services-ads@@19.2.0 */
final class zzcwv implements zzduu<zzbnc> {
    private final /* synthetic */ zzbny zzgpk;
    final /* synthetic */ zzcws zzgpl;

    zzcwv(zzcws zzcws, zzbny zzbny) {
        this.zzgpl = zzcws;
        this.zzgpk = zzbny;
    }

    public final void zzb(Throwable th) {
        zzuy zze = zzcmi.zze(th);
        synchronized (this.zzgpl) {
            zzdvf unused = this.zzgpl.zzgph = null;
            this.zzgpk.zzaey().onAdFailedToLoad(zze.errorCode);
            if (((Boolean) zzwg.zzpw().zzd(zzaav.zzcxj)).booleanValue()) {
                this.zzgpl.zzgmd.zzade().execute(new zzcwx(this, zze));
            }
            this.zzgpl.zzgpe.zzdu(60);
            zzdlj.zza(zze.errorCode, th, "BannerAdManagerShim.onFailure");
        }
    }

    public final /* synthetic */ void onSuccess(Object obj) {
        zzbnc zzbnc = (zzbnc) obj;
        synchronized (this.zzgpl) {
            zzdvf unused = this.zzgpl.zzgph = null;
            if (this.zzgpl.zzgoq != null) {
                this.zzgpl.zzgoq.destroy();
            }
            zzbnc unused2 = this.zzgpl.zzgoq = zzbnc;
            this.zzgpl.zzfng.removeAllViews();
            if (zzbnc.zzahk() != null) {
                ViewParent parent = zzbnc.zzahk().getParent();
                if (parent instanceof ViewGroup) {
                    String mediationAdapterClassName = this.zzgpl.getMediationAdapterClassName();
                    StringBuilder sb = new StringBuilder(String.valueOf(mediationAdapterClassName).length() + 78);
                    sb.append("Banner view provided from ");
                    sb.append(mediationAdapterClassName);
                    sb.append(" already has a parent view. Removing its old parent.");
                    zzaxv.zzfd(sb.toString());
                    ((ViewGroup) parent).removeView(zzbnc.zzahk());
                }
            }
            if (((Boolean) zzwg.zzpw().zzd(zzaav.zzcxj)).booleanValue()) {
                zzbnc.zzaij().zza(this.zzgpl.zzgpa).zza(this.zzgpl.zzgpb).zza(this.zzgpl.zzgpc).zza(this.zzgpl.zzgpd);
            }
            this.zzgpl.zzfng.addView(zzbnc.zzahk());
            zzbnc.zzahr();
            if (((Boolean) zzwg.zzpw().zzd(zzaav.zzcxj)).booleanValue()) {
                Executor zzade = this.zzgpl.zzgmd.zzade();
                zzcxb zzf = this.zzgpl.zzgpa;
                zzf.getClass();
                zzade.execute(zzcwu.zzb(zzf));
            }
            this.zzgpl.zzgpe.zzdu(zzbnc.zzahq());
        }
    }
}
