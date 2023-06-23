package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.RemoteException;
import com.google.android.gms.dynamic.ObjectWrapper;

/* compiled from: com.google.android.gms:play-services-ads@@19.2.0 */
public final class zzcuf implements zzcqw<zzchj, zzaox, zzcsd> {
    private final zzchm zzgmt;
    private final Context zzvr;

    public zzcuf(Context context, zzchm zzchm) {
        this.zzvr = context;
        this.zzgmt = zzchm;
    }

    public final void zza(zzdkw zzdkw, zzdkk zzdkk, zzcqv<zzaox, zzcsd> zzcqv) throws zzdlg {
        try {
            ((zzaox) zzcqv.zzdka).zzdq(zzdkk.zzdla);
            if (zzdkw.zzhat.zzfpv.zzhbf.zzhaj == zzdks.zzhan) {
                ((zzaox) zzcqv.zzdka).zzb(zzdkk.zzepm, zzdkk.zzgzu.toString(), zzdkw.zzhat.zzfpv.zzhay, ObjectWrapper.wrap(this.zzvr), new zzcuh(this, zzcqv), (zzamx) zzcqv.zzgki);
            } else {
                ((zzaox) zzcqv.zzdka).zza(zzdkk.zzepm, zzdkk.zzgzu.toString(), zzdkw.zzhat.zzfpv.zzhay, ObjectWrapper.wrap(this.zzvr), (zzaos) new zzcuh(this, zzcqv), (zzamx) zzcqv.zzgki);
            }
        } catch (RemoteException e) {
            zzaxv.zza("Remote exception loading a rewarded RTB ad", e);
        }
    }

    public final /* synthetic */ Object zzb(zzdkw zzdkw, zzdkk zzdkk, zzcqv zzcqv) throws zzdlg, zzctw {
        zzcsn zzcsn = new zzcsn(zzdkk, (zzaox) zzcqv.zzdka, true);
        zzchl zza = this.zzgmt.zza(new zzbpr(zzdkw, zzdkk, zzcqv.zzfpp), new zzchk(zzcsn));
        zzcsn.zza(zza.zzaek());
        ((zzcsd) zzcqv.zzgki).zzb((zzamx) zza.zzagf());
        return zza.zzagc();
    }
}
