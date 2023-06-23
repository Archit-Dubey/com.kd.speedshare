package com.google.android.gms.internal.ads;

import android.webkit.ValueCallback;

/* compiled from: com.google.android.gms:play-services-ads@@19.2.0 */
final class zzrn implements ValueCallback<String> {
    private final /* synthetic */ zzrk zzbtq;

    zzrn(zzrk zzrk) {
        this.zzbtq = zzrk;
    }

    public final /* synthetic */ void onReceiveValue(Object obj) {
        this.zzbtq.zzbtm.zza(this.zzbtq.zzbtj, this.zzbtq.zzbtk, (String) obj, this.zzbtq.zzbtl);
    }
}
