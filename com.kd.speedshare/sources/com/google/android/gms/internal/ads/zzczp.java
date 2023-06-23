package com.google.android.gms.internal.ads;

import android.os.Bundle;

/* compiled from: com.google.android.gms:play-services-ads@@19.2.0 */
public final class zzczp implements zzddz<Bundle> {
    private final Bundle zzgrx;

    private zzczp(Bundle bundle) {
        this.zzgrx = bundle;
    }

    public final /* synthetic */ void zzs(Object obj) {
        Bundle bundle = (Bundle) obj;
        if (!this.zzgrx.isEmpty()) {
            bundle.putBundle("installed_adapter_data", this.zzgrx);
        }
    }
}
