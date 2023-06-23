package com.google.android.gms.internal.ads;

import android.net.Uri;
import com.google.android.gms.ads.query.UpdateImpressionUrlsCallback;
import java.util.List;

/* compiled from: com.google.android.gms:play-services-ads-lite@@19.2.0 */
final class zzarf extends zzarc {
    private final /* synthetic */ UpdateImpressionUrlsCallback zzdov;

    zzarf(zzarg zzarg, UpdateImpressionUrlsCallback updateImpressionUrlsCallback) {
        this.zzdov = updateImpressionUrlsCallback;
    }

    public final void onSuccess(List<Uri> list) {
        this.zzdov.onSuccess(list);
    }

    public final void onError(String str) {
        this.zzdov.onFailure(str);
    }
}
