package com.google.android.gms.internal.ads;

import android.os.Bundle;
import java.util.Set;

/* compiled from: com.google.android.gms:play-services-ads@@19.2.0 */
public final class zzdcj implements zzddz<Bundle> {
    private final String zzgti;

    /* access modifiers changed from: private */
    public static boolean zze(Set<String> set) {
        return set.contains("rewarded") || set.contains("interstitial") || set.contains("native") || set.contains("banner");
    }

    public zzdcj(String str) {
        this.zzgti = str;
    }

    public final /* synthetic */ void zzs(Object obj) {
        zzdlf.zza((Bundle) obj, "omid_v", this.zzgti);
    }
}
