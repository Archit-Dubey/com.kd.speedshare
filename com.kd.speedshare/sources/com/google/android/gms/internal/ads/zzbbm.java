package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.zzq;

/* compiled from: com.google.android.gms:play-services-ads@@19.2.0 */
final class zzbbm implements zzduu<Object> {
    private final /* synthetic */ String zzedq;

    zzbbm(String str) {
        this.zzedq = str;
    }

    public final void onSuccess(Object obj) {
    }

    public final void zzb(Throwable th) {
        zzq.zzla().zza(th, this.zzedq);
    }
}
