package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.RemoteException;
import com.google.android.gms.ads.mediation.Adapter;
import com.google.android.gms.dynamic.ObjectWrapper;

/* compiled from: com.google.android.gms:play-services-ads-lite@@19.2.0 */
public final class zzanr extends zzamw {
    private final zzatx zzdkc;
    private final Adapter zzdkm;

    zzanr(Adapter adapter, zzatx zzatx) {
        this.zzdkm = adapter;
        this.zzdkc = zzatx;
    }

    public final void onAdImpression() throws RemoteException {
    }

    public final void onAdLeftApplication() throws RemoteException {
    }

    public final void onAppEvent(String str, String str2) throws RemoteException {
    }

    public final void onVideoEnd() throws RemoteException {
    }

    public final void onVideoPause() throws RemoteException {
    }

    public final void onVideoPlay() throws RemoteException {
    }

    public final void zza(zzaep zzaep, String str) throws RemoteException {
    }

    public final void zza(zzamy zzamy) throws RemoteException {
    }

    public final void zzb(Bundle bundle) throws RemoteException {
    }

    public final void zzb(zzaub zzaub) throws RemoteException {
    }

    public final void zzc(int i, String str) throws RemoteException {
    }

    public final void zzdc(int i) throws RemoteException {
    }

    public final void zzdm(String str) throws RemoteException {
    }

    public final void zzdn(String str) {
    }

    public final void onAdLoaded() throws RemoteException {
        zzatx zzatx = this.zzdkc;
        if (zzatx != null) {
            zzatx.zzag(ObjectWrapper.wrap(this.zzdkm));
        }
    }

    public final void onAdOpened() throws RemoteException {
        zzatx zzatx = this.zzdkc;
        if (zzatx != null) {
            zzatx.zzah(ObjectWrapper.wrap(this.zzdkm));
        }
    }

    public final void onAdClosed() throws RemoteException {
        zzatx zzatx = this.zzdkc;
        if (zzatx != null) {
            zzatx.zzaj(ObjectWrapper.wrap(this.zzdkm));
        }
    }

    public final void zza(zzaud zzaud) throws RemoteException {
        zzatx zzatx = this.zzdkc;
        if (zzatx != null) {
            zzatx.zza(ObjectWrapper.wrap(this.zzdkm), new zzaub(zzaud.getType(), zzaud.getAmount()));
        }
    }

    public final void zztt() throws RemoteException {
        zzatx zzatx = this.zzdkc;
        if (zzatx != null) {
            zzatx.zzai(ObjectWrapper.wrap(this.zzdkm));
        }
    }

    public final void zztu() throws RemoteException {
        zzatx zzatx = this.zzdkc;
        if (zzatx != null) {
            zzatx.zzam(ObjectWrapper.wrap(this.zzdkm));
        }
    }

    public final void onAdClicked() throws RemoteException {
        zzatx zzatx = this.zzdkc;
        if (zzatx != null) {
            zzatx.zzak(ObjectWrapper.wrap(this.zzdkm));
        }
    }

    public final void onAdFailedToLoad(int i) throws RemoteException {
        zzatx zzatx = this.zzdkc;
        if (zzatx != null) {
            zzatx.zze(ObjectWrapper.wrap(this.zzdkm), i);
        }
    }
}
