package com.google.android.gms.internal.ads;

/* compiled from: com.google.android.gms:play-services-ads@@19.2.0 */
final class zzcgv implements zzduu<zzbfn> {
    private final /* synthetic */ String zzemd;
    private final /* synthetic */ zzahc zzgbt;

    zzcgv(zzcgr zzcgr, String str, zzahc zzahc) {
        this.zzemd = str;
        this.zzgbt = zzahc;
    }

    public final void zzb(Throwable th) {
    }

    public final /* synthetic */ void onSuccess(Object obj) {
        ((zzbfn) obj).zza(this.zzemd, (zzahc<? super zzbfn>) this.zzgbt);
    }
}
