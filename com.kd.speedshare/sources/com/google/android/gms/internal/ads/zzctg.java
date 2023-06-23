package com.google.android.gms.internal.ads;

import android.os.RemoteException;

/* compiled from: com.google.android.gms:play-services-ads@@19.2.0 */
final class zzctg extends zzaoq {
    private zzcqv<zzaox, zzcsd> zzgkv;
    private final /* synthetic */ zzcte zzgmc;

    private zzctg(zzcte zzcte, zzcqv<zzaox, zzcsd> zzcqv) {
        this.zzgmc = zzcte;
        this.zzgkv = zzcqv;
    }

    public final void zza(zzang zzang) throws RemoteException {
        zzang unused = this.zzgmc.zzgmb = zzang;
        ((zzcsd) this.zzgkv.zzgki).onAdLoaded();
    }

    public final void zzdp(String str) throws RemoteException {
        ((zzcsd) this.zzgkv.zzgki).zzc(0, str);
    }
}
