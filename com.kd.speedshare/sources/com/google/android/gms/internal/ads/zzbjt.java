package com.google.android.gms.internal.ads;

import android.content.Context;

/* compiled from: com.google.android.gms:play-services-ads@@19.2.0 */
final class zzbjt implements zzdkb {
    private final /* synthetic */ zzbiz zzeto;
    private Context zzfep;
    private String zzfeq;

    private zzbjt(zzbiz zzbiz) {
        this.zzeto = zzbiz;
    }

    public final zzdkc zzafv() {
        zzelg.zza(this.zzfep, Context.class);
        return new zzbjw(this.zzeto, this.zzfep, this.zzfeq);
    }

    public final /* synthetic */ zzdkb zzfv(String str) {
        this.zzfeq = str;
        return this;
    }

    public final /* synthetic */ zzdkb zzbz(Context context) {
        this.zzfep = (Context) zzelg.checkNotNull(context);
        return this;
    }
}
