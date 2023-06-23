package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.text.TextUtils;
import com.google.android.gms.common.internal.Preconditions;
import java.util.ArrayList;

/* compiled from: com.google.android.gms:play-services-ads@@19.2.0 */
public final class zzczk implements zzddz<Bundle> {
    private final String zzacv;
    private final zzvh zzboz;
    private final float zzbru;
    private final boolean zzchk;
    private final int zzdmt;
    private final int zzdmu;
    private final String zzgrq;
    private final String zzgrr;
    private final boolean zzgrs;

    public zzczk(zzvh zzvh, String str, boolean z, String str2, float f, int i, int i2, String str3, boolean z2) {
        Preconditions.checkNotNull(zzvh, "the adSize must not be null");
        this.zzboz = zzvh;
        this.zzacv = str;
        this.zzchk = z;
        this.zzgrq = str2;
        this.zzbru = f;
        this.zzdmt = i;
        this.zzdmu = i2;
        this.zzgrr = str3;
        this.zzgrs = z2;
    }

    public final /* synthetic */ void zzs(Object obj) {
        Bundle bundle = (Bundle) obj;
        zzdlf.zza(bundle, "smart_w", "full", this.zzboz.width == -1);
        zzdlf.zza(bundle, "smart_h", "auto", this.zzboz.height == -2);
        zzdlf.zza(bundle, "ene", (Boolean) true, this.zzboz.zzchl);
        zzdlf.zza(bundle, "rafmt", "102", this.zzboz.zzcho);
        zzdlf.zza(bundle, "rafmt", "103", this.zzboz.zzchp);
        zzdlf.zza(bundle, "inline_adaptive_slot", (Boolean) true, this.zzgrs);
        zzdlf.zza(bundle, "format", this.zzacv);
        zzdlf.zza(bundle, "fluid", "height", this.zzchk);
        String str = this.zzgrq;
        zzdlf.zza(bundle, "sz", str, !TextUtils.isEmpty(str));
        bundle.putFloat("u_sd", this.zzbru);
        bundle.putInt("sw", this.zzdmt);
        bundle.putInt("sh", this.zzdmu);
        String str2 = this.zzgrr;
        zzdlf.zza(bundle, "sc", str2, true ^ TextUtils.isEmpty(str2));
        ArrayList arrayList = new ArrayList();
        if (this.zzboz.zzchj == null) {
            Bundle bundle2 = new Bundle();
            bundle2.putInt("height", this.zzboz.height);
            bundle2.putInt("width", this.zzboz.width);
            bundle2.putBoolean("is_fluid_height", this.zzboz.zzchk);
            arrayList.add(bundle2);
        } else {
            for (zzvh zzvh : this.zzboz.zzchj) {
                Bundle bundle3 = new Bundle();
                bundle3.putBoolean("is_fluid_height", zzvh.zzchk);
                bundle3.putInt("height", zzvh.height);
                bundle3.putInt("width", zzvh.width);
                arrayList.add(bundle3);
            }
        }
        bundle.putParcelableArrayList("valid_ad_sizes", arrayList);
    }
}
