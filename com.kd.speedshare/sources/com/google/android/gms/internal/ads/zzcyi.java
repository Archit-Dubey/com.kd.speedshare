package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.RemoteException;

/* compiled from: com.google.android.gms:play-services-ads@@19.2.0 */
final class zzcyi implements zzduu<zzcyv> {
    private final /* synthetic */ zzawq zzgqw;
    private final /* synthetic */ zzcxz zzgqx;

    zzcyi(zzcxz zzcxz, zzawq zzawq) {
        this.zzgqx = zzcxz;
        this.zzgqw = zzawq;
    }

    public final void zzb(Throwable th) {
        try {
            zzawq zzawq = this.zzgqw;
            String valueOf = String.valueOf(th.getMessage());
            zzawq.onError(valueOf.length() != 0 ? "Internal error. ".concat(valueOf) : new String("Internal error. "));
        } catch (RemoteException e) {
            zzbba.zzc("", e);
        }
    }

    public final /* synthetic */ void onSuccess(Object obj) {
        zzcyv zzcyv = (zzcyv) obj;
        try {
            if (((Boolean) zzwg.zzpw().zzd(zzaav.zzcwu)).booleanValue()) {
                if (this.zzgqx.zzbov.zzede >= ((Integer) zzwg.zzpw().zzd(zzaav.zzcww)).intValue()) {
                    if (zzcyv == null) {
                        this.zzgqw.zza((String) null, (String) null, (Bundle) null);
                        return;
                    } else {
                        this.zzgqw.zza(zzcyv.zzgrf, zzcyv.zzgrg, zzcyv.zzgrh);
                        return;
                    }
                }
            }
            if (zzcyv == null) {
                this.zzgqw.zzk((String) null, (String) null);
            } else {
                this.zzgqw.zzk(zzcyv.zzgrf, zzcyv.zzgrg);
            }
        } catch (RemoteException e) {
            zzbba.zzc("", e);
        }
    }
}
