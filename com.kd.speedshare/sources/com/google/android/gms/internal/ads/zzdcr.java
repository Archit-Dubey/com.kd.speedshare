package com.google.android.gms.internal.ads;

import android.os.Bundle;

/* compiled from: com.google.android.gms:play-services-ads@@19.2.0 */
public final class zzdcr implements zzddz<Bundle> {
    private final Bundle zzfrg;

    public zzdcr(Bundle bundle) {
        this.zzfrg = bundle;
    }

    public final /* synthetic */ void zzs(Object obj) {
        Bundle bundle = (Bundle) obj;
        Bundle bundle2 = this.zzfrg;
        if (bundle2 != null) {
            bundle.putAll(bundle2);
        }
    }
}
