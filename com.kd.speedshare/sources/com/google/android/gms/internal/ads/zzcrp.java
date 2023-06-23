package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.RemoteException;
import android.view.View;
import com.google.android.gms.dynamic.ObjectWrapper;

/* compiled from: com.google.android.gms:play-services-ads@@19.2.0 */
public final class zzcrp implements zzcqw<zzbnc, zzaox, zzcsd> {
    /* access modifiers changed from: private */
    public View view;
    private final zzbny zzgkn;
    private final Context zzvr;

    public zzcrp(Context context, zzbny zzbny) {
        this.zzvr = context;
        this.zzgkn = zzbny;
    }

    public final void zza(zzdkw zzdkw, zzdkk zzdkk, zzcqv<zzaox, zzcsd> zzcqv) throws zzdlg {
        try {
            ((zzaox) zzcqv.zzdka).zzdq(zzdkk.zzdla);
            ((zzaox) zzcqv.zzdka).zza(zzdkk.zzepm, zzdkk.zzgzu.toString(), zzdkw.zzhat.zzfpv.zzhay, ObjectWrapper.wrap(this.zzvr), new zzcrq(this, zzcqv), (zzamx) zzcqv.zzgki, zzdkw.zzhat.zzfpv.zzboz);
        } catch (RemoteException e) {
            throw new zzdlg(e);
        }
    }

    public final /* synthetic */ Object zzb(zzdkw zzdkw, zzdkk zzdkk, zzcqv zzcqv) throws zzdlg, zzctw {
        zzbnf zza = this.zzgkn.zza(new zzbpr(zzdkw, zzdkk, zzcqv.zzfpp), new zzbnj(this.view, (zzbfn) null, new zzcro(zzcqv), zzdkk.zzgzt.get(0)));
        zza.zzafo().zzv(this.view);
        ((zzcsd) zzcqv.zzgki).zzb((zzamx) zza.zzaen());
        return zza.zzafn();
    }

    static final /* synthetic */ zzyi zza(zzcqv zzcqv) throws zzdlg {
        try {
            return ((zzaox) zzcqv.zzdka).getVideoController();
        } catch (RemoteException e) {
            throw new zzdlg(e);
        }
    }
}
