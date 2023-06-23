package com.google.android.gms.internal.ads;

import org.checkerframework.checker.nullness.compatqual.NullableDecl;

/* compiled from: com.google.android.gms:play-services-ads@@19.2.0 */
final class zzdih implements zzdrx<zzcop, zzdij> {
    private final /* synthetic */ zzdif zzgyf;

    zzdih(zzdif zzdif) {
        this.zzgyf = zzdif;
    }

    @NullableDecl
    public final /* synthetic */ Object apply(@NullableDecl Object obj) {
        zzbba.zzc("", (zzcop) obj);
        zzaxv.zzeh("Failed to get a cache key, reverting to legacy flow.");
        zzdij unused = this.zzgyf.zzgyd = new zzdij((zzasm) null, this.zzgyf.zzasb(), (zzdih) null);
        return this.zzgyf.zzgyd;
    }
}
