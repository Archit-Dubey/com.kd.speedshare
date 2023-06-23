package com.google.android.gms.internal.ads;

import android.os.Bundle;
import com.github.kevinsawicki.http.HttpRequest;

/* compiled from: com.google.android.gms:play-services-ads@@19.2.0 */
public final class zzddo implements zzddz<Bundle> {
    private final String zzbpn;
    private final int zzdqa;
    private final boolean zzdqx;
    private final boolean zzedg;
    private final boolean zzgtz;
    private final int zzgua;
    private final int zzgub;

    public zzddo(boolean z, boolean z2, String str, boolean z3, int i, int i2, int i3) {
        this.zzgtz = z;
        this.zzedg = z2;
        this.zzbpn = str;
        this.zzdqx = z3;
        this.zzdqa = i;
        this.zzgua = i2;
        this.zzgub = i3;
    }

    public final /* synthetic */ void zzs(Object obj) {
        Bundle bundle = (Bundle) obj;
        bundle.putString("js", this.zzbpn);
        bundle.putBoolean("is_nonagon", true);
        bundle.putString("extra_caps", (String) zzwg.zzpw().zzd(zzaav.zzcrc));
        bundle.putInt("target_api", this.zzdqa);
        bundle.putInt("dv", this.zzgua);
        bundle.putInt("lv", this.zzgub);
        Bundle zza = zzdlf.zza(bundle, "sdk_env");
        zza.putBoolean("mf", zzacl.zzdak.get().booleanValue());
        zza.putBoolean("instant_app", this.zzgtz);
        zza.putBoolean("lite", this.zzedg);
        zza.putBoolean("is_privileged_process", this.zzdqx);
        bundle.putBundle("sdk_env", zza);
        Bundle zza2 = zzdlf.zza(zza, "build_meta");
        zza2.putString("cl", "312401170");
        zza2.putString("rapid_rc", "dev");
        zza2.putString("rapid_rollup", HttpRequest.METHOD_HEAD);
        zza.putBundle("build_meta", zza2);
    }
}
