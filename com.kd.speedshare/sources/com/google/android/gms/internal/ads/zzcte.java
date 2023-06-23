package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.RemoteException;
import com.google.android.gms.dynamic.ObjectWrapper;

/* compiled from: com.google.android.gms:play-services-ads@@19.2.0 */
public final class zzcte implements zzcqw<zzccd, zzaox, zzcsd> {
    private final zzcbc zzglu;
    /* access modifiers changed from: private */
    public zzang zzgmb;
    private final Context zzvr;

    public zzcte(Context context, zzcbc zzcbc) {
        this.zzvr = context;
        this.zzglu = zzcbc;
    }

    public final void zza(zzdkw zzdkw, zzdkk zzdkk, zzcqv<zzaox, zzcsd> zzcqv) throws zzdlg {
        try {
            ((zzaox) zzcqv.zzdka).zzdq(zzdkk.zzdla);
            ((zzaox) zzcqv.zzdka).zza(zzdkk.zzepm, zzdkk.zzgzu.toString(), zzdkw.zzhat.zzfpv.zzhay, ObjectWrapper.wrap(this.zzvr), (zzaor) new zzctg(this, zzcqv), (zzamx) zzcqv.zzgki);
        } catch (RemoteException e) {
            throw new zzdlg(e);
        }
    }

    public final /* synthetic */ Object zzb(zzdkw zzdkw, zzdkk zzdkk, zzcqv zzcqv) throws zzdlg, zzctw {
        if (zzdkw.zzhat.zzfpv.zzhba.contains(Integer.toString(6))) {
            zzcck zzb = zzcck.zzb(this.zzgmb);
            if (zzdkw.zzhat.zzfpv.zzhba.contains(Integer.toString(zzb.zzalg()))) {
                zzccp zza = this.zzglu.zza(new zzbpr(zzdkw, zzdkk, zzcqv.zzfpp), new zzccw(zzb), new zzcel((zzanf) null, (zzana) null, this.zzgmb));
                ((zzcsd) zzcqv.zzgki).zzb((zzamx) zza.zzaen());
                return zza.zzaeo();
            }
            throw new zzctw(zzdls.zzhbq, "No corresponding native ad listener");
        }
        throw new zzctw(zzdls.zzhbr, "Unified must be used for RTB.");
    }
}
