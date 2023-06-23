package com.google.android.gms.internal.ads;

import android.content.Context;
import android.content.pm.PackageInfo;
import com.google.android.gms.ads.identifier.AdvertisingIdClient;

/* compiled from: com.google.android.gms:play-services-ads@@19.2.0 */
public final class zzaxb implements zzaxd {
    public final zzdvf<String> zza(String str, PackageInfo packageInfo) {
        return zzdux.zzaf(str);
    }

    public final zzdvf<AdvertisingIdClient.Info> zzal(Context context) {
        zzbbn zzbbn = new zzbbn();
        zzwg.zzps();
        if (zzbaq.zzbp(context)) {
            zzbbf.zzedh.execute(new zzaxe(this, context, zzbbn));
        }
        return zzbbn;
    }

    public final zzdvf<String> zza(Context context, int i) {
        return zzdux.zzaf(null);
    }
}
