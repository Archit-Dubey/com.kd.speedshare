package com.google.android.gms.internal.ads;

import android.text.TextUtils;
import java.util.List;
import org.json.JSONException;
import org.json.JSONObject;

/* compiled from: com.google.android.gms:play-services-ads@@19.2.0 */
public final class zzdfu implements zzddz<JSONObject> {
    private List<String> zzdpu;

    public zzdfu(List<String> list) {
        this.zzdpu = list;
    }

    public final /* synthetic */ void zzs(Object obj) {
        try {
            ((JSONObject) obj).put("eid", (Object) TextUtils.join(",", this.zzdpu));
        } catch (JSONException unused) {
            zzaxv.zzeh("Failed putting experiment ids.");
        }
    }
}
