package com.google.android.gms.internal.ads;

import java.util.Map;

/* compiled from: com.google.android.gms:play-services-ads@@19.2.0 */
final class zzcgx implements zzduu<zzbfn> {
    private final /* synthetic */ String zzgbu;
    private final /* synthetic */ Map zzgbv;

    zzcgx(zzcgr zzcgr, String str, Map map) {
        this.zzgbu = str;
        this.zzgbv = map;
    }

    public final void zzb(Throwable th) {
    }

    public final /* synthetic */ void onSuccess(Object obj) {
        ((zzbfn) obj).zza(this.zzgbu, this.zzgbv);
    }
}
