package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.RemoteException;
import com.google.android.gms.dynamic.IObjectWrapper;

/* compiled from: com.google.android.gms:play-services-ads@@19.2.0 */
final class zzcuy extends zzaua {
    private final /* synthetic */ zzbui zzgnd;
    private final /* synthetic */ zzbsk zzgne;
    private final /* synthetic */ zzbtl zzgnf;
    private final /* synthetic */ zzbyq zzgng;

    zzcuy(zzcuu zzcuu, zzbui zzbui, zzbsk zzbsk, zzbtl zzbtl, zzbyq zzbyq) {
        this.zzgnd = zzbui;
        this.zzgne = zzbsk;
        this.zzgnf = zzbtl;
        this.zzgng = zzbyq;
    }

    public final void zzaf(IObjectWrapper iObjectWrapper) {
    }

    public final void zzag(IObjectWrapper iObjectWrapper) {
    }

    public final void zzb(Bundle bundle) {
    }

    public final void zzd(IObjectWrapper iObjectWrapper, int i) {
    }

    public final void zze(IObjectWrapper iObjectWrapper, int i) {
    }

    public final void zzah(IObjectWrapper iObjectWrapper) {
        this.zzgnd.zzue();
    }

    public final void zzaj(IObjectWrapper iObjectWrapper) {
        this.zzgnd.zzud();
    }

    public final void zzak(IObjectWrapper iObjectWrapper) {
        this.zzgne.onAdClicked();
    }

    public final void zzal(IObjectWrapper iObjectWrapper) {
        this.zzgnf.onAdLeftApplication();
    }

    public final void zza(IObjectWrapper iObjectWrapper, zzaub zzaub) {
        this.zzgng.zza(zzaub);
    }

    public final void zzai(IObjectWrapper iObjectWrapper) {
        this.zzgng.zzsq();
    }

    public final void zzam(IObjectWrapper iObjectWrapper) throws RemoteException {
        this.zzgnf.onRewardedVideoCompleted();
    }
}
