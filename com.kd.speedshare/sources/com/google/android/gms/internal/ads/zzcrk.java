package com.google.android.gms.internal.ads;

import android.content.Context;
import android.view.View;
import com.google.android.gms.ads.zzb;
import java.util.concurrent.Executor;

/* compiled from: com.google.android.gms:play-services-ads@@19.2.0 */
public final class zzcrk implements zzcqw<zzbnc, zzdlm, zzcsd> {
    private final zzbbd zzbov;
    private final Executor zzflp;
    private final zzbny zzgkn;
    private final Context zzvr;

    public zzcrk(Context context, zzbbd zzbbd, zzbny zzbny, Executor executor) {
        this.zzvr = context;
        this.zzbov = zzbbd;
        this.zzgkn = zzbny;
        this.zzflp = executor;
    }

    public final void zza(zzdkw zzdkw, zzdkk zzdkk, zzcqv<zzdlm, zzcsd> zzcqv) throws zzdlg {
        zzvh zzvh;
        zzvh zzvh2 = zzdkw.zzhat.zzfpv.zzboz;
        if (zzvh2.zzchp) {
            zzvh = new zzvh(this.zzvr, zzb.zza(zzvh2.width, zzvh2.height));
        } else {
            zzvh = zzdld.zzb(this.zzvr, zzdkk.zzgzt);
        }
        zzvh zzvh3 = zzvh;
        if (this.zzbov.zzede < 4100000) {
            ((zzdlm) zzcqv.zzdka).zza(this.zzvr, zzvh3, zzdkw.zzhat.zzfpv.zzhay, zzdkk.zzgzu.toString(), (zzamx) zzcqv.zzgki);
        } else {
            ((zzdlm) zzcqv.zzdka).zza(this.zzvr, zzvh3, zzdkw.zzhat.zzfpv.zzhay, zzdkk.zzgzu.toString(), zzazy.zza((zzazz) zzdkk.zzgzr), (zzamx) zzcqv.zzgki);
        }
    }

    public final /* synthetic */ Object zzb(zzdkw zzdkw, zzdkk zzdkk, zzcqv zzcqv) throws zzdlg, zzctw {
        zzbny zzbny = this.zzgkn;
        zzbpr zzbpr = new zzbpr(zzdkw, zzdkk, zzcqv.zzfpp);
        View view = ((zzdlm) zzcqv.zzdka).getView();
        zzdlm zzdlm = (zzdlm) zzcqv.zzdka;
        zzdlm.getClass();
        zzbnf zza = zzbny.zza(zzbpr, new zzbnj(view, (zzbfn) null, zzcrn.zza(zzdlm), zzdkk.zzgzt.get(0)));
        zza.zzafo().zzv(((zzdlm) zzcqv.zzdka).getView());
        zza.zzaeh().zza(new zzbli((zzdlm) zzcqv.zzdka), this.zzflp);
        ((zzcsd) zzcqv.zzgki).zzb((zzamx) zza.zzaem());
        return zza.zzafn();
    }
}
