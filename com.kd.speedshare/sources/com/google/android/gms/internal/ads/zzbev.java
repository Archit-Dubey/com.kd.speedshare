package com.google.android.gms.internal.ads;

import androidx.core.app.NotificationCompat;
import java.util.HashMap;
import java.util.Map;

/* compiled from: com.google.android.gms:play-services-ads@@19.2.0 */
final class zzbev implements Runnable {
    private final /* synthetic */ String zzebn;
    private final /* synthetic */ String zzekf;
    private final /* synthetic */ zzbes zzekj;
    private final /* synthetic */ long zzekm;

    zzbev(zzbes zzbes, String str, String str2, long j) {
        this.zzekj = zzbes;
        this.zzebn = str;
        this.zzekf = str2;
        this.zzekm = j;
    }

    public final void run() {
        HashMap hashMap = new HashMap();
        hashMap.put(NotificationCompat.CATEGORY_EVENT, "precacheComplete");
        hashMap.put("src", this.zzebn);
        hashMap.put("cachedSrc", this.zzekf);
        hashMap.put("totalDuration", Long.toString(this.zzekm));
        this.zzekj.zza("onPrecacheEvent", (Map<String, String>) hashMap);
    }
}
