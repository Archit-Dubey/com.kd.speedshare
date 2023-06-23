package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.concurrent.Executor;

/* compiled from: com.google.android.gms:play-services-ads@@19.2.0 */
public final class zzcuk implements zzcqt<zzchj> {
    private final zzbbd zzbov;
    private final Executor zzflp;
    private final zzdla zzfpv;
    private final zzchw zzfyz;
    private final zzchm zzgmt;
    private final Context zzvr;

    public zzcuk(Context context, zzbbd zzbbd, zzdla zzdla, Executor executor, zzchm zzchm, zzchw zzchw) {
        this.zzvr = context;
        this.zzfpv = zzdla;
        this.zzgmt = zzchm;
        this.zzflp = executor;
        this.zzbov = zzbbd;
        this.zzfyz = zzchw;
    }

    public final boolean zza(zzdkw zzdkw, zzdkk zzdkk) {
        return (zzdkk.zzgzr == null || zzdkk.zzgzr.zzdoh == null) ? false : true;
    }

    public final zzdvf<zzchj> zzb(zzdkw zzdkw, zzdkk zzdkk) {
        zzcim zzcim = new zzcim();
        zzdvf<zzchj> zzb = zzdux.zzb(zzdux.zzaf(null), new zzcun(this, zzdkk, zzcim, zzdkw), this.zzflp);
        zzcim.getClass();
        zzb.addListener(zzcum.zza(zzcim), this.zzflp);
        return zzb;
    }

    /* access modifiers changed from: package-private */
    public final /* synthetic */ zzdvf zzb(zzdkk zzdkk, zzcim zzcim, zzdkw zzdkw, Object obj) throws Exception {
        zzdvf<?> zzdvf;
        zzdkk zzdkk2 = zzdkk;
        zzbfn zza = this.zzfyz.zza(this.zzfpv.zzboz, zzdkk2.zzene);
        zza.zzba(zzdkk2.zzdsh);
        zzcim.zzc(this.zzvr, zza.getView());
        zzbbn zzbbn = new zzbbn();
        zzchm zzchm = this.zzgmt;
        zzbpr zzbpr = new zzbpr(zzdkw, zzdkk2, (String) null);
        zzcuq zzcuq = r1;
        zzcuq zzcuq2 = new zzcuq(this.zzvr, this.zzfyz, this.zzfpv, this.zzbov, zzdkk, zzbbn, zza);
        zzchl zza2 = zzchm.zza(zzbpr, new zzchk(zzcuq, zza));
        zzbbn.set(zza2);
        zzahn.zza(zza, (zzahm) zza2.zzagd());
        zza2.zzaek().zza(new zzcup(zza), zzbbf.zzedm);
        zza2.zzafj().zzb(zza, true);
        if (!((Boolean) zzwg.zzpw().zzd(zzaav.zzcvu)).booleanValue() || !zzdkk2.zzene) {
            zza2.zzafj();
            zzdvf = zzchy.zza(zza, zzdkk2.zzgzr.zzdof, zzdkk2.zzgzr.zzdoh);
        } else {
            zzdvf = zzdux.zzaf(null);
        }
        return zzdux.zzb(zzdvf, new zzcuo(this, zza, zzdkk2, zza2), this.zzflp);
    }
}
