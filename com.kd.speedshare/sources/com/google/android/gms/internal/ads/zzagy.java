package com.google.android.gms.internal.ads;

import java.util.Map;

/* compiled from: com.google.android.gms:play-services-ads@@19.2.0 */
final class zzagy implements zzahc<zzbfn> {
    zzagy() {
    }

    public final /* synthetic */ void zza(Object obj, Map map) {
        zzbfn zzbfn = (zzbfn) obj;
        String str = (String) map.get("action");
        if ("pause".equals(str)) {
            zzbfn.zzkd();
        } else if ("resume".equals(str)) {
            zzbfn.zzke();
        }
    }
}
