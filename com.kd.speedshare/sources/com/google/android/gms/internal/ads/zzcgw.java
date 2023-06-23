package com.google.android.gms.internal.ads;

import android.os.Bundle;
import com.google.android.gms.ads.internal.overlay.zzo;
import com.google.android.gms.ads.internal.overlay.zzt;

/* compiled from: com.google.android.gms:play-services-ads@@19.2.0 */
final class zzcgw implements zzo, zzt, zzagi, zzagk, zzuu {
    private zzuu zzcgl;
    private zzagi zzddi;
    private zzagk zzddj;
    private zzo zzdoe;
    private zzt zzdoi;

    private zzcgw() {
    }

    public final synchronized void onAdClicked() {
        if (this.zzcgl != null) {
            this.zzcgl.onAdClicked();
        }
    }

    public final synchronized void zzud() {
        if (this.zzdoe != null) {
            this.zzdoe.zzud();
        }
    }

    public final synchronized void onPause() {
        if (this.zzdoe != null) {
            this.zzdoe.onPause();
        }
    }

    public final synchronized void onResume() {
        if (this.zzdoe != null) {
            this.zzdoe.onResume();
        }
    }

    public final synchronized void zzue() {
        if (this.zzdoe != null) {
            this.zzdoe.zzue();
        }
    }

    public final synchronized void zzuu() {
        if (this.zzdoi != null) {
            this.zzdoi.zzuu();
        }
    }

    public final synchronized void zza(String str, Bundle bundle) {
        if (this.zzddi != null) {
            this.zzddi.zza(str, bundle);
        }
    }

    public final synchronized void onAppEvent(String str, String str2) {
        if (this.zzddj != null) {
            this.zzddj.onAppEvent(str, str2);
        }
    }

    /* access modifiers changed from: private */
    public final synchronized void zza(zzuu zzuu, zzagi zzagi, zzo zzo, zzagk zzagk, zzt zzt) {
        this.zzcgl = zzuu;
        this.zzddi = zzagi;
        this.zzdoe = zzo;
        this.zzddj = zzagk;
        this.zzdoi = zzt;
    }

    /* synthetic */ zzcgw(zzcgs zzcgs) {
        this();
    }
}
