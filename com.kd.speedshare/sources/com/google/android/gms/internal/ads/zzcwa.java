package com.google.android.gms.internal.ads;

import android.content.Context;
import android.view.View;

/* compiled from: com.google.android.gms:play-services-ads@@19.2.0 */
public final class zzcwa implements zzcvu<zzbzj> {
    private final zzcae zzgkx;
    private final Context zzvr;

    public zzcwa(Context context, zzcae zzcae) {
        this.zzvr = context;
        this.zzgkx = zzcae;
    }

    public final /* synthetic */ Object zza(zzdkw zzdkw, zzdkk zzdkk, View view, zzcwb zzcwb) {
        zzbzl zza = this.zzgkx.zza(new zzbpr(zzdkw, zzdkk, (String) null), new zzcwc(this, zzcwd.zzgok));
        zzcwb.zza(new zzcwf(this, zza));
        return zza.zzafw();
    }
}
