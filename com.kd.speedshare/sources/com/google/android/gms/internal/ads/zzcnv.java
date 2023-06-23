package com.google.android.gms.internal.ads;

import com.genonbeta.TrebleShot.config.Keyword;
import org.json.JSONObject;

/* compiled from: com.google.android.gms:play-services-ads@@19.2.0 */
final /* synthetic */ class zzcnv implements zzduh {
    private final zzcns zzghg;
    private final zzuw zzghh;

    zzcnv(zzcns zzcns, zzuw zzuw) {
        this.zzghg = zzcns;
        this.zzghh = zzuw;
    }

    public final zzdvf zzf(Object obj) {
        zzuw zzuw = this.zzghh;
        String str = (String) obj;
        String str2 = zzuw.zzcgm;
        String str3 = zzuw.zzcgn;
        JSONObject jSONObject = new JSONObject();
        JSONObject jSONObject2 = new JSONObject();
        JSONObject jSONObject3 = new JSONObject();
        jSONObject3.put("headers", (Object) new JSONObject());
        jSONObject3.put("body", (Object) str2);
        jSONObject2.put("base_url", (Object) "");
        jSONObject2.put("signals", (Object) new JSONObject(str3));
        jSONObject.put(Keyword.REQUEST, (Object) jSONObject2);
        jSONObject.put("response", (Object) jSONObject3);
        jSONObject.put("flags", (Object) new JSONObject());
        return zzdux.zzaf(jSONObject);
    }
}
