package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.RemoteException;

/* compiled from: com.google.android.gms:play-services-ads@@19.2.0 */
public final class zzcwt extends zzwn {
    private final zzcxj zzgpi;

    public zzcwt(Context context, zzbif zzbif, zzdlc zzdlc, zzccv zzccv, zzwj zzwj) {
        zzcxl zzcxl = new zzcxl(zzccv);
        zzcxl.zzc(zzwj);
        this.zzgpi = new zzcxj(new zzcxr(zzbif, context, zzcxl, zzdlc), zzdlc.zzasm());
    }

    public final synchronized boolean isLoading() throws RemoteException {
        return this.zzgpi.isLoading();
    }

    public final void zzb(zzve zzve) throws RemoteException {
        this.zzgpi.zza(zzve, 1);
    }

    public final synchronized void zza(zzve zzve, int i) throws RemoteException {
        this.zzgpi.zza(zzve, i);
    }

    public final synchronized String getMediationAdapterClassName() {
        return this.zzgpi.getMediationAdapterClassName();
    }

    public final synchronized String zzki() {
        return this.zzgpi.zzki();
    }
}
