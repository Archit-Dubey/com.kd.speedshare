package com.google.android.gms.internal.ads;

import org.checkerframework.checker.nullness.compatqual.NullableDecl;

/* compiled from: com.google.android.gms:play-services-ads@@19.2.0 */
final class zzbqd implements zzduu<Void> {
    private final /* synthetic */ zzbpz zzfqe;

    zzbqd(zzbpz zzbpz) {
        this.zzfqe = zzbpz;
    }

    public final void zzb(Throwable th) {
        this.zzfqe.zzfpz.zzbh(false);
    }

    public final /* synthetic */ void onSuccess(@NullableDecl Object obj) {
        Void voidR = (Void) obj;
        this.zzfqe.zzfpz.zzbh(true);
    }
}
