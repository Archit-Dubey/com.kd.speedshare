package com.google.android.gms.internal.ads;

import android.os.ParcelFileDescriptor;
import android.os.RemoteException;

/* compiled from: com.google.android.gms:play-services-ads@@19.2.0 */
final class zzcpk implements zzduu<ParcelFileDescriptor> {
    private final /* synthetic */ zzasg zzgim;

    zzcpk(zzcoy zzcoy, zzasg zzasg) {
        this.zzgim = zzasg;
    }

    public final void zzb(Throwable th) {
        try {
            this.zzgim.zza(zzazi.zzc(th));
        } catch (RemoteException e) {
            zzaxv.zza("Service can't call client", e);
        }
    }

    public final /* synthetic */ void onSuccess(Object obj) {
        try {
            this.zzgim.zzb((ParcelFileDescriptor) obj);
        } catch (RemoteException e) {
            zzaxv.zza("Service can't call client", e);
        }
    }
}
