package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.text.TextUtils;

/* compiled from: com.google.android.gms:play-services-ads@@19.2.0 */
public final class zzdej implements zzddz<Bundle> {
    private final String zzdsz;
    private final int zzdtk;
    private final int zzdtl;
    private final int zzdtm;
    private final boolean zzdtr;
    private final int zzdts;

    public zzdej(String str, int i, int i2, int i3, boolean z, int i4) {
        this.zzdsz = str;
        this.zzdtk = i;
        this.zzdtl = i2;
        this.zzdtm = i3;
        this.zzdtr = z;
        this.zzdts = i4;
    }

    public final /* synthetic */ void zzs(Object obj) {
        Bundle bundle = (Bundle) obj;
        String str = this.zzdsz;
        boolean z = true;
        zzdlf.zza(bundle, "carrier", str, !TextUtils.isEmpty(str));
        Integer valueOf = Integer.valueOf(this.zzdtk);
        if (this.zzdtk == -2) {
            z = false;
        }
        zzdlf.zza(bundle, "cnt", valueOf, z);
        bundle.putInt("gnt", this.zzdtl);
        bundle.putInt("pt", this.zzdtm);
        Bundle zza = zzdlf.zza(bundle, "device");
        bundle.putBundle("device", zza);
        Bundle zza2 = zzdlf.zza(zza, "network");
        zza.putBundle("network", zza2);
        zza2.putInt("active_network_state", this.zzdts);
        zza2.putBoolean("active_network_metered", this.zzdtr);
    }
}
