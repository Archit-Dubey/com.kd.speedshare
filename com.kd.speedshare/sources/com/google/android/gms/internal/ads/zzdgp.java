package com.google.android.gms.internal.ads;

import android.os.Build;
import java.util.HashMap;
import java.util.concurrent.Callable;

/* compiled from: com.google.android.gms:play-services-ads@@19.2.0 */
final /* synthetic */ class zzdgp implements Callable {
    static final Callable zzgtd = new zzdgp();

    private zzdgp() {
    }

    public final Object call() {
        HashMap hashMap = new HashMap();
        String str = (String) zzwg.zzpw().zzd(zzaav.zzcmj);
        if (str != null && !str.isEmpty()) {
            if (Build.VERSION.SDK_INT >= ((Integer) zzwg.zzpw().zzd(zzaav.zzcmk)).intValue()) {
                for (String str2 : str.split(",", -1)) {
                    hashMap.put(str2, zzbao.zzev(str2));
                }
            }
        }
        return new zzdgn(hashMap);
    }
}
