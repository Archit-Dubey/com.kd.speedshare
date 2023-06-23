package com.google.android.gms.internal.ads;

import java.util.Iterator;
import org.json.JSONException;
import org.json.JSONObject;

/* compiled from: com.google.android.gms:play-services-ads@@19.2.0 */
public final class zzdex implements zzddz<JSONObject> {
    private final JSONObject zzgvc;

    public zzdex(JSONObject jSONObject) {
        this.zzgvc = jSONObject;
    }

    public final /* synthetic */ void zzs(Object obj) {
        try {
            JSONObject zzb = zzazy.zzb((JSONObject) obj, "content_info");
            JSONObject jSONObject = this.zzgvc;
            Iterator<String> keys = jSONObject.keys();
            while (keys.hasNext()) {
                String next = keys.next();
                zzb.put(next, jSONObject.get(next));
            }
        } catch (JSONException unused) {
            zzaxv.zzeh("Failed putting app indexing json.");
        }
    }
}
