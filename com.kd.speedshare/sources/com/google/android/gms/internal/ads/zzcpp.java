package com.google.android.gms.internal.ads;

import com.genonbeta.TrebleShot.config.Keyword;
import com.google.android.gms.ads.internal.zzq;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;

/* compiled from: com.google.android.gms:play-services-ads@@19.2.0 */
final class zzcpp implements zzalk<zzcpm> {
    zzcpp() {
    }

    public final /* synthetic */ JSONObject zzj(Object obj) throws JSONException {
        zzcpm zzcpm = (zzcpm) obj;
        JSONObject jSONObject = new JSONObject();
        JSONObject jSONObject2 = new JSONObject();
        JSONObject jSONObject3 = new JSONObject();
        jSONObject2.put("base_url", (Object) zzcpm.zzgip.zzva());
        jSONObject2.put("signals", (Object) zzcpm.zzgio);
        jSONObject3.put("body", (Object) zzcpm.zzgin.zzdrd);
        jSONObject3.put("headers", (Object) zzq.zzkw().zzj((Map<String, ?>) zzcpm.zzgin.zzam));
        jSONObject3.put("response_code", zzcpm.zzgin.zzgiw);
        jSONObject3.put("latency", zzcpm.zzgin.zzgix);
        jSONObject.put(Keyword.REQUEST, (Object) jSONObject2);
        jSONObject.put("response", (Object) jSONObject3);
        jSONObject.put("flags", (Object) zzcpm.zzgip.zzvd());
        return jSONObject;
    }
}
