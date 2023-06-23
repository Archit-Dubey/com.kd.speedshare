package com.google.android.gms.internal.ads;

import android.text.TextUtils;
import org.json.JSONException;
import org.json.JSONObject;

/* compiled from: com.google.android.gms:play-services-ads@@19.2.0 */
public final class zzdfb implements zzddz<JSONObject> {
    private String zzgvg;

    public zzdfb(String str) {
        this.zzgvg = str;
    }

    public final /* synthetic */ void zzs(Object obj) {
        try {
            JSONObject zzb = zzazy.zzb((JSONObject) obj, "pii");
            if (!TextUtils.isEmpty(this.zzgvg)) {
                zzb.put("attok", (Object) this.zzgvg);
            }
        } catch (JSONException e) {
            zzaxv.zza("Failed putting attestation token.", e);
        }
    }
}
