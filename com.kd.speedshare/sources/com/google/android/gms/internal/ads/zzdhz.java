package com.google.android.gms.internal.ads;

import org.checkerframework.checker.nullness.compatqual.NullableDecl;

/* compiled from: com.google.android.gms:play-services-ads@@19.2.0 */
final class zzdhz implements zzduu<Void> {
    zzdhz(zzdhy zzdhy) {
    }

    public final void zzb(Throwable th) {
        zzaxv.zzeh("Notification of cache hit failed.");
    }

    public final /* synthetic */ void onSuccess(@NullableDecl Object obj) {
        Void voidR = (Void) obj;
        zzaxv.zzeh("Notification of cache hit successful.");
    }
}
