package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.concurrent.Executor;

/* compiled from: com.google.android.gms:play-services-ads@@19.2.0 */
public final class zzcsm implements zzcqw<zzbzj, zzdlm, zzcsd> {
    private final zzbbd zzbov;
    private final Executor zzflp;
    private final zzcae zzgkx;
    private final Context zzvr;

    public zzcsm(Context context, zzbbd zzbbd, zzcae zzcae, Executor executor) {
        this.zzvr = context;
        this.zzbov = zzbbd;
        this.zzgkx = zzcae;
        this.zzflp = executor;
    }

    public final void zza(zzdkw zzdkw, zzdkk zzdkk, zzcqv<zzdlm, zzcsd> zzcqv) throws zzdlg {
        if (this.zzbov.zzede < 4100000) {
            ((zzdlm) zzcqv.zzdka).zza(this.zzvr, zzdkw.zzhat.zzfpv.zzhay, zzdkk.zzgzu.toString(), (zzamx) zzcqv.zzgki);
        } else {
            ((zzdlm) zzcqv.zzdka).zza(this.zzvr, zzdkw.zzhat.zzfpv.zzhay, zzdkk.zzgzu.toString(), zzazy.zza((zzazz) zzdkk.zzgzr), (zzamx) zzcqv.zzgki);
        }
    }

    public final /* synthetic */ Object zzb(zzdkw zzdkw, zzdkk zzdkk, zzcqv zzcqv) throws zzdlg, zzctw {
        zzbzl zza = this.zzgkx.zza(new zzbpr(zzdkw, zzdkk, zzcqv.zzfpp), new zzbzk(new zzcsp(zzcqv)));
        zza.zzaeh().zza(new zzbli((zzdlm) zzcqv.zzdka), this.zzflp);
        ((zzcsd) zzcqv.zzgki).zzb((zzamx) zza.zzaem());
        return zza.zzafw();
    }
}
