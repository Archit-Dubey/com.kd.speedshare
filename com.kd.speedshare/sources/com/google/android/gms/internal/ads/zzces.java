package com.google.android.gms.internal.ads;

import android.graphics.Bitmap;

/* compiled from: com.google.android.gms:play-services-ads@@19.2.0 */
final class zzces implements zzdrx<zzy, Bitmap> {
    private final /* synthetic */ double zzfzz;
    private final /* synthetic */ boolean zzgaa;
    private final /* synthetic */ zzcet zzgab;

    zzces(zzcet zzcet, double d, boolean z) {
        this.zzgab = zzcet;
        this.zzfzz = d;
        this.zzgaa = z;
    }

    public final /* synthetic */ Object apply(Object obj) {
        return this.zzgab.zza(((zzy) obj).data, this.zzfzz, this.zzgaa);
    }
}
