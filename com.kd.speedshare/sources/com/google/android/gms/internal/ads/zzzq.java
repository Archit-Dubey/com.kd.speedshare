package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.RemoteException;
import com.google.android.gms.dynamic.IObjectWrapper;

/* compiled from: com.google.android.gms:play-services-ads-lite@@19.2.0 */
public final class zzzq extends zzatm {
    /* access modifiers changed from: private */
    public zzatq zzckk;

    public final void destroy() throws RemoteException {
    }

    public final String getMediationAdapterClassName() throws RemoteException {
        return null;
    }

    public final boolean isLoaded() throws RemoteException {
        return false;
    }

    public final void pause() throws RemoteException {
    }

    public final void resume() throws RemoteException {
    }

    public final void setAppPackageName(String str) {
    }

    public final void setCustomData(String str) throws RemoteException {
    }

    public final void setImmersiveMode(boolean z) throws RemoteException {
    }

    public final void setUserId(String str) throws RemoteException {
    }

    public final void show() throws RemoteException {
    }

    public final void zza(zzath zzath) throws RemoteException {
    }

    public final void zza(zzwz zzwz) throws RemoteException {
    }

    public final void zzi(IObjectWrapper iObjectWrapper) throws RemoteException {
    }

    public final void zzj(IObjectWrapper iObjectWrapper) throws RemoteException {
    }

    public final void zzk(IObjectWrapper iObjectWrapper) throws RemoteException {
    }

    public final zzyd zzkj() {
        return null;
    }

    public final void zzl(IObjectWrapper iObjectWrapper) throws RemoteException {
    }

    public final boolean zzqw() {
        return false;
    }

    public final void zza(zzatw zzatw) throws RemoteException {
        zzbba.zzfb("This app is using a lightweight version of the Google Mobile Ads SDK that requires the latest Google Play services to be installed, but Google Play services is either missing or out of date.");
        zzbaq.zzaag.post(new zzzt(this));
    }

    public final void zza(zzatq zzatq) throws RemoteException {
        this.zzckk = zzatq;
    }

    public final Bundle getAdMetadata() throws RemoteException {
        return new Bundle();
    }
}
