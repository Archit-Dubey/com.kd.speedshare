package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.RemoteException;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;
import java.util.Collections;
import java.util.List;

/* compiled from: com.google.android.gms:play-services-ads@@19.2.0 */
public final class zzcgm extends zzafs {
    private final String zzfpp;
    private final zzcck zzfuu;
    private final zzccd zzfya;

    public zzcgm(String str, zzccd zzccd, zzcck zzcck) {
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

    public final List<?> getMuteThisAdReasons() throws RemoteException {
        if (isCustomMuteThisAdEnabled()) {
            return this.zzfuu.getMuteThisAdReasons();
        }
        return Collections.emptyList();
    }

    public final boolean isCustomMuteThisAdEnabled() throws RemoteException {
        return !this.zzfuu.getMuteThisAdReasons().isEmpty() && this.zzfuu.zzalj() != null;
    }

    public final String getBody() throws RemoteException {
        return this.zzfuu.getBody();
    }

    public final zzadt zzsc() throws RemoteException {
        return this.zzfuu.zzsc();
    }

    public final String getCallToAction() throws RemoteException {
        return this.zzfuu.getCallToAction();
    }

    public final String getAdvertiser() throws RemoteException {
        return this.zzfuu.getAdvertiser();
    }

    public final double getStarRating() throws RemoteException {
        return this.zzfuu.getStarRating();
    }

    public final String getStore() throws RemoteException {
        return this.zzfuu.getStore();
    }

    public final String getPrice() throws RemoteException {
        return this.zzfuu.getPrice();
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

    public final Bundle getExtras() throws RemoteException {
        return this.zzfuu.getExtras();
    }

    public final void zza(zzafo zzafo) throws RemoteException {
        this.zzfya.zza(zzafo);
    }

    public final void zza(zzxt zzxt) throws RemoteException {
        this.zzfya.zza(zzxt);
    }

    public final void zza(zzxp zzxp) throws RemoteException {
        this.zzfya.zza(zzxp);
    }

    public final void zzsm() {
        this.zzfya.zzsm();
    }

    public final void recordCustomClickGesture() {
        this.zzfya.recordCustomClickGesture();
    }

    public final boolean isCustomClickGestureEnabled() {
        return this.zzfya.isCustomClickGestureEnabled();
    }

    public final void cancelUnconfirmedClick() throws RemoteException {
        this.zzfya.cancelUnconfirmedClick();
    }

    public final zzado zzsn() throws RemoteException {
        return this.zzfya.zzald().zzsn();
    }

    public final zzyd zzkj() throws RemoteException {
        if (!((Boolean) zzwg.zzpw().zzd(zzaav.zzcwq)).booleanValue()) {
            return null;
        }
        return this.zzfya.zzaih();
    }

    public final void zza(zzyc zzyc) throws RemoteException {
        this.zzfya.zza(zzyc);
    }
}
