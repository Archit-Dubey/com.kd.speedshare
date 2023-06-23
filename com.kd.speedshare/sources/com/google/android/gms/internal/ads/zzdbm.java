package com.google.android.gms.internal.ads;

import android.os.Bundle;

/* compiled from: com.google.android.gms:play-services-ads@@19.2.0 */
final class zzdbm implements zzddz<Bundle> {
    private final String zzdqz;
    private final String zzgsz;
    private final Bundle zzgta;

    private zzdbm(String str, String str2, Bundle bundle) {
        this.zzdqz = str;
        this.zzgsz = str2;
        this.zzgta = bundle;
    }

    public final /* synthetic */ void zzs(Object obj) {
        Bundle bundle = (Bundle) obj;
        bundle.putString("consent_string", this.zzdqz);
        bundle.putString("fc_consent", this.zzgsz);
        bundle.putBundle("iab_consent_info", this.zzgta);
    }
}
