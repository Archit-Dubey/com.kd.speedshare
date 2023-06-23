package com.google.android.gms.internal.ads;

import android.content.Context;

/* compiled from: com.google.android.gms:play-services-ads@@19.2.0 */
final /* synthetic */ class zzcud implements zzcam {
    private final zzcqv zzgku;

    zzcud(zzcqv zzcqv) {
        this.zzgku = zzcqv;
    }

    public final void zza(boolean z, Context context) {
        zzcqv zzcqv = this.zzgku;
        try {
            ((zzdlm) zzcqv.zzdka).setImmersiveMode(z);
            ((zzdlm) zzcqv.zzdka).zzci(context);
        } catch (zzdlg e) {
            throw new zzcap(e.getCause());
        }
    }
}
