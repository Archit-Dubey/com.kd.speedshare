package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.RemoteException;
import com.google.android.gms.dynamic.ObjectWrapper;

/* compiled from: com.google.android.gms:play-services-ads@@19.2.0 */
public final class zzcsr implements zzcqw<zzbzj, zzaox, zzcsd> {
    private final zzcae zzgkx;
    private final Context zzvr;

    public zzcsr(Context context, zzcae zzcae) {
        this.zzvr = context;
        this.zzgkx = zzcae;
    }

    public final void zza(zzdkw zzdkw, zzdkk zzdkk, zzcqv<zzaox, zzcsd> zzcqv) throws zzdlg {
        try {
            ((zzaox) zzcqv.zzdka).zzdq(zzdkk.zzdla);
            ((zzaox) zzcqv.zzdka).zza(zzdkk.zzepm, zzdkk.zzgzu.toString(), zzdkw.zzhat.zzfpv.zzhay, ObjectWrapper.wrap(this.zzvr), (zzaom) new zzcst(this, zzcqv), (zzamx) zzcqv.zzgki);
        } catch (RemoteException e) {
            throw new zzdlg(e);
        }
    }

    public final /* synthetic */ Object zzb(zzdkw zzdkw, zzdkk zzdkk, zzcqv zzcqv) throws zzdlg, zzctw {
        zzcsn zzcsn = new zzcsn(zzdkk, (zzaox) zzcqv.zzdka, false);
        zzbzl zza = this.zzgkx.zza(new zzbpr(zzdkw, zzdkk, zzcqv.zzfpp), new zzbzk(zzcsn));
        zzcsn.zza(zza.zzaek());
        ((zzcsd) zzcqv.zzgki).zzb((zzamx) zza.zzaen());
        return zza.zzafw();
    }
}
