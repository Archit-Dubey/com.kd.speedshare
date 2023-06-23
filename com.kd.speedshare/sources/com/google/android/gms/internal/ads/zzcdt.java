package com.google.android.gms.internal.ads;

import android.text.TextUtils;
import fi.iki.elonen.NanoHTTPD;
import java.util.Map;

/* compiled from: com.google.android.gms:play-services-ads@@19.2.0 */
final /* synthetic */ class zzcdt implements zzahc {
    private final zzcdo zzfzb;

    zzcdt(zzcdo zzcdo) {
        this.zzfzb = zzcdo;
    }

    public final void zza(Object obj, Map map) {
        zzbfn zzbfn = (zzbfn) obj;
        zzbfn.zzaaz().zza((zzbhc) new zzcdu(this.zzfzb, map));
        String str = (String) map.get("overlayHtml");
        String str2 = (String) map.get("baseUrl");
        if (TextUtils.isEmpty(str2)) {
            zzbfn.loadData(str, NanoHTTPD.MIME_HTML, "UTF-8");
        } else {
            zzbfn.loadDataWithBaseURL(str2, str, NanoHTTPD.MIME_HTML, "UTF-8", (String) null);
        }
    }
}
