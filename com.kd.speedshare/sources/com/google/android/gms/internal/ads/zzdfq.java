package com.google.android.gms.internal.ads;

import org.json.JSONException;
import org.json.JSONObject;

/* compiled from: com.google.android.gms:play-services-ads@@19.2.0 */
public final class zzdfq implements zzddz<JSONObject> {
    private String zzgvq;
    private String zzgvr;

    public zzdfq(String str, String str2) {
        this.zzgvq = str;
        this.zzgvr = str2;
    }

    public final /* synthetic */ void zzs(Object obj) {
        try {
            JSONObject zzb = zzazy.zzb((JSONObject) obj, "pii");
            zzb.put("doritos", (Object) this.zzgvq);
            zzb.put("doritos_v2", (Object) this.zzgvr);
        } catch (JSONException unused) {
            zzaxv.zzeh("Failed putting doritos string.");
        }
    }
}
