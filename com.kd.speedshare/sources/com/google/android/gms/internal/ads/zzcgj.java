package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.RemoteException;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;
import java.util.List;

/* compiled from: com.google.android.gms:play-services-ads@@19.2.0 */
public final class zzcgj extends zzaek {
    private final String zzfpp;
    private final zzcck zzfuu;
    private final zzccd zzfya;

    public zzcgj(String str, zzccd zzccd, zzcck zzcck) {
        this.zzfpp = str;
        this.zzfya = zzccd;
        this.zzfuu = zzcck;
    }

    public final IObjectWrapper zzsb() throws RemoteException {
        return ObjectWrapper.wrap(this.zzfya);
    }

    public final String getHeadline() throws RemoteException {
        return this.zzfuu.getHeadline();
    }

    public final List<?> getImages() throws RemoteException {
        return this.zzfuu.getImages();
    }

    public final String getBody() throws RemoteException {
        return this.zzfuu.getBody();
    }

    public final zzadt zzsf() throws RemoteException {
        return this.zzfuu.zzsf();
    }

    public final String getCallToAction() throws RemoteException {
        return this.zzfuu.getCallToAction();
    }

    public final String getAdvertiser() throws RemoteException {
        return this.zzfuu.getAdvertiser();
    }

    public final Bundle getExtras() throws RemoteException {
        return this.zzfuu.getExtras();
    }

    public final void destroy() throws RemoteException {
        this.zzfya.destroy();
    }

    public final zzyi getVideoController() throws RemoteException {
        return this.zzfuu.getVideoController();
    }

    public final void performClick(Bundle bundle) throws RemoteException {
        this.zzfya.zzg(bundle);
    }

    public final boolean recordImpression(Bundle bundle) throws RemoteException {
        return this.zzfya.zzi(bundle);
    }

    public final void reportTouchEvent(Bundle bundle) throws RemoteException {
        this.zzfya.zzh(bundle);
    }

    public final zzadl zzsd() throws RemoteException {
        return this.zzfuu.zzsd();
    }

    public final IObjectWrapper zzse() throws RemoteException {
        return this.zzfuu.zzse();
    }

    public final String getMediationAdapterClassName() throws RemoteException {
        return this.zzfpp;
    }
}
