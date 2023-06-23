package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.concurrent.Executor;

/* compiled from: com.google.android.gms:play-services-ads@@19.2.0 */
public final class zzctc implements zzcqw<zzccd, zzdlm, zzcsd> {
    private final Executor zzflp;
    private final zzcbc zzglu;
    private final Context zzvr;

    public zzctc(Context context, zzcbc zzcbc, Executor executor) {
        this.zzvr = context;
        this.zzglu = zzcbc;
        this.zzflp = executor;
    }

    public final void zza(zzdkw zzdkw, zzdkk zzdkk, zzcqv<zzdlm, zzcsd> zzcqv) throws zzdlg {
        ((zzdlm) zzcqv.zzdka).zza(this.zzvr, zzdkw.zzhat.zzfpv.zzhay, zzdkk.zzgzu.toString(), zzazy.zza((zzazz) zzdkk.zzgzr), (zzamx) zzcqv.zzgki, zzdkw.zzhat.zzfpv.zzdkn, zzdkw.zzhat.zzfpv.zzhba);
    }

    private static boolean zza(zzdkw zzdkw, int i) {
        return zzdkw.zzhat.zzfpv.zzhba.contains(Integer.toString(i));
    }

    public final /* synthetic */ Object zzb(zzdkw zzdkw, zzdkk zzdkk, zzcqv zzcqv) throws zzdlg, zzctw {
        zzcck zzcck;
        zzana zztk = ((zzdlm) zzcqv.zzdka).zztk();
        zzanf zztl = ((zzdlm) zzcqv.zzdka).zztl();
        zzang zztq = ((zzdlm) zzcqv.zzdka).zztq();
        if (zztq != null && zza(zzdkw, 6)) {
            zzcck = zzcck.zzb(zztq);
        } else if (zztk != null && zza(zzdkw, 6)) {
            zzcck = zzcck.zzb(zztk);
        } else if (zztk != null && zza(zzdkw, 2)) {
            zzcck = zzcck.zza(zztk);
        } else if (zztl != null && zza(zzdkw, 6)) {
            zzcck = zzcck.zzb(zztl);
        } else if (zztl == null || !zza(zzdkw, 1)) {
            throw new zzctw(zzdls.zzhbq, "No native ad mappers");
        } else {
            zzcck = zzcck.zza(zztl);
        }
        if (zzdkw.zzhat.zzfpv.zzhba.contains(Integer.toString(zzcck.zzalg()))) {
            zzccp zza = this.zzglu.zza(new zzbpr(zzdkw, zzdkk, zzcqv.zzfpp), new zzccw(zzcck), new zzcel(zztl, zztk, zztq));
            ((zzcsd) zzcqv.zzgki).zzb((zzamx) zza.zzaem());
            zza.zzaeh().zza(new zzbli((zzdlm) zzcqv.zzdka), this.zzflp);
            return zza.zzaeo();
        }
        throw new zzctw(zzdls.zzhbq, "No corresponding native ad listener");
    }
}
