package com.google.android.gms.ads.internal.overlay;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.os.RemoteException;
import com.google.android.gms.ads.internal.zzq;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.internal.ads.zzaqh;

/* compiled from: com.google.android.gms:play-services-ads@@19.2.0 */
public final class zzu extends zzaqh {
    private Activity zzaar;
    private boolean zzdnh = false;
    private AdOverlayInfoParcel zzdoo;
    private boolean zzdop = false;

    public zzu(Activity activity, AdOverlayInfoParcel adOverlayInfoParcel) {
        this.zzdoo = adOverlayInfoParcel;
        this.zzaar = activity;
    }

    public final void onActivityResult(int i, int i2, Intent intent) throws RemoteException {
    }

    public final void onBackPressed() throws RemoteException {
    }

    public final void onRestart() throws RemoteException {
    }

    public final void onStart() throws RemoteException {
    }

    public final void zzad(IObjectWrapper iObjectWrapper) throws RemoteException {
    }

    public final void zzdp() throws RemoteException {
    }

    public final boolean zzul() throws RemoteException {
        return false;
    }

    public final void onCreate(Bundle bundle) {
        boolean z = false;
        if (bundle != null && bundle.getBoolean("com.google.android.gms.ads.internal.overlay.hasResumed", false)) {
            z = true;
        }
        AdOverlayInfoParcel adOverlayInfoParcel = this.zzdoo;
        if (adOverlayInfoParcel == null) {
            this.zzaar.finish();
        } else if (z) {
            this.zzaar.finish();
        } else {
            if (bundle == null) {
                if (adOverlayInfoParcel.zzcgl != null) {
                    this.zzdoo.zzcgl.onAdClicked();
                }
                if (!(this.zzaar.getIntent() == null || !this.zzaar.getIntent().getBooleanExtra("shouldCallOnOverlayOpened", true) || this.zzdoo.zzdoe == null)) {
                    this.zzdoo.zzdoe.zzue();
                }
            }
            zzq.zzku();
            if (!zzb.zza((Context) this.zzaar, this.zzdoo.zzdod, this.zzdoo.zzdoi)) {
                this.zzaar.finish();
            }
        }
    }

    public final void onResume() throws RemoteException {
        if (this.zzdnh) {
            this.zzaar.finish();
            return;
        }
        this.zzdnh = true;
        if (this.zzdoo.zzdoe != null) {
            this.zzdoo.zzdoe.onResume();
        }
    }

    public final void onSaveInstanceState(Bundle bundle) throws RemoteException {
        bundle.putBoolean("com.google.android.gms.ads.internal.overlay.hasResumed", this.zzdnh);
    }

    public final void onPause() throws RemoteException {
        if (this.zzdoo.zzdoe != null) {
            this.zzdoo.zzdoe.onPause();
        }
        if (this.zzaar.isFinishing()) {
            zzuv();
        }
    }

    public final void onStop() throws RemoteException {
        if (this.zzaar.isFinishing()) {
            zzuv();
        }
    }

    public final void onDestroy() throws RemoteException {
        if (this.zzaar.isFinishing()) {
            zzuv();
        }
    }

    private final synchronized void zzuv() {
        if (!this.zzdop) {
            if (this.zzdoo.zzdoe != null) {
                this.zzdoo.zzdoe.zzud();
            }
            this.zzdop = true;
        }
    }
}
