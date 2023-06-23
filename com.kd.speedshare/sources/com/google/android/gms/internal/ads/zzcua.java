package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.concurrent.Executor;

/* compiled from: com.google.android.gms:play-services-ads@@19.2.0 */
public final class zzcua implements zzcqw<zzchj, zzdlm, zzcsd> {
    private final Executor zzflp;
    private final zzchm zzgmt;
    private final Context zzvr;

    public zzcua(Context context, Executor executor, zzchm zzchm) {
        this.zzvr = context;
        this.zzflp = executor;
        this.zzgmt = zzchm;
    }

    public final void zza(zzdkw zzdkw, zzdkk zzdkk, zzcqv<zzdlm, zzcsd> zzcqv) throws zzdlg {
        try {
            zzdla zzdla = zzdkw.zzhat.zzfpv;
            if (zzdla.zzhbf.zzhaj == zzdks.zzhan) {
                ((zzdlm) zzcqv.zzdka).zzc(this.zzvr, zzdla.zzhay, zzdkk.zzgzu.toString(), (zzamx) zzcqv.zzgki);
            } else {
                ((zzdlm) zzcqv.zzdka).zzb(this.zzvr, zzdla.zzhay, zzdkk.zzgzu.toString(), (zzamx) zzcqv.zzgki);
            }
        } catch (Exception e) {
            String valueOf = String.valueOf(zzcqv.zzfpp);
            zzaxv.zzd(valueOf.length() != 0 ? "Fail to load ad from adapter ".concat(valueOf) : new String("Fail to load ad from adapter "), e);
        }
    }

    public final /* synthetic */ Object zzb(zzdkw zzdkw, zzdkk zzdkk, zzcqv zzcqv) throws zzdlg, zzctw {
        zzchl zza = this.zzgmt.zza(new zzbpr(zzdkw, zzdkk, zzcqv.zzfpp), new zzchk(new zzcud(zzcqv)));
        zza.zzaeh().zza(new zzbli((zzdlm) zzcqv.zzdka), this.zzflp);
        ((zzcsd) zzcqv.zzgki).zzb((zzamx) zza.zzage());
        return zza.zzagc();
    }
}
