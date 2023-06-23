package com.google.android.gms.internal.ads;

import org.json.JSONException;
import org.json.JSONObject;

/* compiled from: com.google.android.gms:play-services-ads@@19.2.0 */
public final class zzdfh implements zzddz<JSONObject> {
    private JSONObject zzgvj;

    public zzdfh(JSONObject jSONObject) {
        this.zzgvj = jSONObject;
    }

    public final /* synthetic */ void zzs(Object obj) {
        try {
            ((JSONObject) obj).put("cache_state", (Object) this.zzgvj);
        } catch (JSONException unused) {
            zzaxv.zzeh("Unable to get cache_state");
        }
    }
}
