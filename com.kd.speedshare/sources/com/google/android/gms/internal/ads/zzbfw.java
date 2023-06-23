package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.overlay.zzo;

/* compiled from: com.google.android.gms:play-services-ads@@19.2.0 */
final class zzbfw implements zzo {
    private zzo zzdoe;
    private zzbfn zzeme;

    public zzbfw(zzbfn zzbfn, zzo zzo) {
        this.zzeme = zzbfn;
        this.zzdoe = zzo;
    }

    public final void onPause() {
    }

    public final void onResume() {
    }

    public final void zzue() {
        zzo zzo = this.zzdoe;
        if (zzo != null) {
            zzo.zzue();
        }
        this.zzeme.zzuq();
    }

    public final void zzud() {
        zzo zzo = this.zzdoe;
        if (zzo != null) {
            zzo.zzud();
        }
        this.zzeme.zzaas();
    }
}
