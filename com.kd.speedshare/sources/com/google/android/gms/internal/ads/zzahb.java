package com.google.android.gms.internal.ads;

import java.util.Map;

/* compiled from: com.google.android.gms:play-services-ads@@19.2.0 */
final class zzahb implements zzahc<zzbfn> {
    zzahb() {
    }

    public final /* synthetic */ void zza(Object obj, Map map) {
        zzbfn zzbfn = (zzbfn) obj;
        if (map.keySet().contains("start")) {
            zzbfn.zzaaz().zzabz();
        } else if (map.keySet().contains("stop")) {
            zzbfn.zzaaz().zzaca();
        } else if (map.keySet().contains("cancel")) {
            zzbfn.zzaaz().zzacb();
        }
    }
}
