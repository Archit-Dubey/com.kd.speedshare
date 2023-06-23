package com.google.android.gms.internal.ads;

import android.os.Bundle;

/* compiled from: com.google.android.gms:play-services-ads@@19.2.0 */
public final class zzdcv implements zzddz<Bundle> {
    private String zzdpt;

    public zzdcv(String str) {
        this.zzdpt = str;
    }

    public final /* synthetic */ void zzs(Object obj) {
        ((Bundle) obj).putString("request_id", this.zzdpt);
    }
}
