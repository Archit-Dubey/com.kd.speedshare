package com.google.android.gms.internal.ads;

import java.util.Map;

/* compiled from: com.google.android.gms:play-services-ads@@19.2.0 */
final class zzaha implements zzahc<zzbfn> {
    zzaha() {
    }

    public final /* synthetic */ void zza(Object obj, Map map) {
        zzbfn zzbfn = (zzbfn) obj;
        if (map.keySet().contains("start")) {
            zzbfn.zzaz(true);
        }
        if (map.keySet().contains("stop")) {
            zzbfn.zzaz(false);
        }
    }
}
