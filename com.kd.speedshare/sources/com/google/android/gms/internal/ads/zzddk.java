package com.google.android.gms.internal.ads;

import android.os.Bundle;

/* compiled from: com.google.android.gms:play-services-ads@@19.2.0 */
public final class zzddk implements zzddz<Bundle> {
    private final String zzdwi;
    private final String zzgtu;
    private final String zzgtv;
    private final String zzgtw;
    private final Long zzgtx;

    public zzddk(String str, String str2, String str3, String str4, Long l) {
        this.zzdwi = str;
        this.zzgtu = str2;
        this.zzgtv = str3;
        this.zzgtw = str4;
        this.zzgtx = l;
    }

    public final /* synthetic */ void zzs(Object obj) {
        Bundle bundle = (Bundle) obj;
        zzdlf.zza(bundle, "gmp_app_id", this.zzdwi);
        zzdlf.zza(bundle, "fbs_aiid", this.zzgtu);
        zzdlf.zza(bundle, "fbs_aeid", this.zzgtv);
        zzdlf.zza(bundle, "apm_id_origin", this.zzgtw);
        Long l = this.zzgtx;
        if (l != null) {
            bundle.putLong("sai_timeout", l.longValue());
        }
    }
}
