package com.google.android.gms.internal.ads;

import android.os.Bundle;

/* compiled from: com.google.android.gms:play-services-ads@@19.2.0 */
public final class zzdbs implements zzddz<Bundle> {
    private final String zzdqj;
    private final boolean zzdql;

    public zzdbs(String str, boolean z) {
        this.zzdqj = str;
        this.zzdql = z;
    }

    public final /* synthetic */ void zzs(Object obj) {
        Bundle bundle = (Bundle) obj;
        bundle.putString("gct", this.zzdqj);
        if (this.zzdql) {
            bundle.putString("de", "1");
        }
    }
}
