package com.google.android.gms.internal.ads;

import android.os.Bundle;

/* compiled from: com.google.android.gms:play-services-ads@@19.2.0 */
public final class zzdca implements zzddz<Bundle> {
    private final zzdki zzfkk;

    public zzdca(zzdki zzdki) {
        this.zzfkk = zzdki;
    }

    public final /* synthetic */ void zzs(Object obj) {
        Bundle bundle = (Bundle) obj;
        zzdki zzdki = this.zzfkk;
        if (zzdki != null) {
            bundle.putBoolean("render_in_browser", zzdki.zzase());
            bundle.putBoolean("disable_ml", this.zzfkk.zzasf());
        }
    }
}
