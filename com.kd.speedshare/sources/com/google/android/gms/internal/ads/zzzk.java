package com.google.android.gms.internal.ads;

import android.os.RemoteException;
import com.google.android.gms.dynamic.IObjectWrapper;
import java.util.Collections;
import java.util.List;

/* compiled from: com.google.android.gms:play-services-ads-lite@@19.2.0 */
public final class zzzk extends zzxl {
    private zzaij zzckh;

    public final String getVersionString() {
        return "";
    }

    public final void setAppMuted(boolean z) throws RemoteException {
    }

    public final void setAppVolume(float f) throws RemoteException {
    }

    public final void zza(zzamr zzamr) throws RemoteException {
    }

    public final void zza(zzzu zzzu) throws RemoteException {
    }

    public final void zza(String str, IObjectWrapper iObjectWrapper) throws RemoteException {
    }

    public final void zzb(IObjectWrapper iObjectWrapper, String str) throws RemoteException {
    }

    public final void zzcg(String str) throws RemoteException {
    }

    public final void zzch(String str) throws RemoteException {
    }

    public final float zzqc() throws RemoteException {
        return 1.0f;
    }

    public final boolean zzqd() throws RemoteException {
        return false;
    }

    public final void zzqf() {
    }

    public final void initialize() throws RemoteException {
        zzbba.zzfb("The initialization is not processed because MobileAdsSettingsManager is not created successfully.");
        zzbaq.zzaag.post(new zzzn(this));
    }

    public final void zza(zzaij zzaij) throws RemoteException {
        this.zzckh = zzaij;
    }

    public final List<zzaic> zzqe() throws RemoteException {
        return Collections.emptyList();
    }

    /* access modifiers changed from: package-private */
    public final /* synthetic */ void zzqu() {
        zzaij zzaij = this.zzckh;
        if (zzaij != null) {
            try {
                zzaij.zze(Collections.emptyList());
            } catch (RemoteException e) {
                zzbba.zzd("Could not notify onComplete event.", e);
            }
        }
    }
}
