package com.google.android.gms.internal.ads;

import android.text.TextUtils;
import com.google.android.gms.ads.identifier.AdvertisingIdClient;
import org.json.JSONException;
import org.json.JSONObject;

/* compiled from: com.google.android.gms:play-services-ads@@19.2.0 */
public final class zzden implements zzddz<JSONObject> {
    private final AdvertisingIdClient.Info zzguw;
    private final String zzgux;

    public zzden(AdvertisingIdClient.Info info, String str) {
        this.zzguw = info;
        this.zzgux = str;
    }

    public final /* synthetic */ void zzs(Object obj) {
        try {
            JSONObject zzb = zzazy.zzb((JSONObject) obj, "pii");
            if (this.zzguw == null || TextUtils.isEmpty(this.zzguw.getId())) {
                zzb.put("pdid", (Object) this.zzgux);
                zzb.put("pdidtype", (Object) "ssaid");
                return;
            }
            zzb.put("rdid", (Object) this.zzguw.getId());
            zzb.put("is_lat", this.zzguw.isLimitAdTrackingEnabled());
            zzb.put("idtype", (Object) "adid");
        } catch (JSONException e) {
            zzaxv.zza("Failed putting Ad ID.", e);
        }
    }
}
