package com.google.android.gms.internal.ads;

import org.checkerframework.checker.nullness.compatqual.NullableDecl;

/* compiled from: com.google.android.gms:play-services-ads@@19.2.0 */
final class zzbqa implements zzduu<zzasm> {
    private final /* synthetic */ zzbpz zzfqe;

    zzbqa(zzbpz zzbpz) {
        this.zzfqe = zzbpz;
    }

    public final void zzb(Throwable th) {
        this.zzfqe.zzfpz.zzbg(false);
    }

    public final /* synthetic */ void onSuccess(@NullableDecl Object obj) {
        zzasm zzasm = (zzasm) obj;
        this.zzfqe.zzfpz.zzbg(true);
    }
}
