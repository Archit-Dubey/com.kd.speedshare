package com.google.android.gms.internal.ads;

import android.os.RemoteException;

/* compiled from: com.google.android.gms:play-services-ads@@19.2.0 */
final class zzcst extends zzaop {
    private zzcqv<zzaox, zzcsd> zzgkv;

    private zzcst(zzcsr zzcsr, zzcqv<zzaox, zzcsd> zzcqv) {
        this.zzgkv = zzcqv;
    }

    public final void zzuc() throws RemoteException {
        ((zzcsd) this.zzgkv.zzgki).onAdLoaded();
    }

    public final void zzdp(String str) throws RemoteException {
        ((zzcsd) this.zzgkv.zzgki).zzc(0, str);
    }
}
