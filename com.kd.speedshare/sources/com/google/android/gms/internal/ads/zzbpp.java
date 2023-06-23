package com.google.android.gms.internal.ads;

/* compiled from: com.google.android.gms:play-services-ads@@19.2.0 */
final class zzbpp implements zzduu<zzbph> {
    private final /* synthetic */ zzduu zzfpm;
    private final /* synthetic */ zzbpi zzfpn;

    zzbpp(zzbpi zzbpi, zzduu zzduu) {
        this.zzfpn = zzbpi;
        this.zzfpm = zzduu;
    }

    public final void zzb(Throwable th) {
        this.zzfpm.zzb(th);
        this.zzfpn.zzaik();
    }

    public final /* synthetic */ void onSuccess(Object obj) {
        this.zzfpn.zza(((zzbph) obj).zzfpg, this.zzfpm);
    }
}
