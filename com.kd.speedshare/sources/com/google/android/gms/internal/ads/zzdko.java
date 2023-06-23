package com.google.android.gms.internal.ads;

import android.util.JsonReader;
import android.util.JsonWriter;
import java.io.IOException;
import org.json.JSONException;
import org.json.JSONObject;

/* compiled from: com.google.android.gms:play-services-ads@@19.2.0 */
public final class zzdko implements zzazz {
    public final String zzdof = this.zzhak.optString("ad_base_url", (String) null);
    public final String zzdoh;
    public final JSONObject zzfus = this.zzhak.optJSONObject("ad_json");
    private final JSONObject zzhak;

    zzdko(JsonReader jsonReader) throws IllegalStateException, IOException, JSONException, NumberFormatException {
        JSONObject zzc = zzazy.zzc(jsonReader);
        this.zzhak = zzc;
        this.zzdoh = zzc.optString("ad_html", (String) null);
    }

    public final void zza(JsonWriter jsonWriter) throws IOException {
        zzazy.zza(jsonWriter, this.zzhak);
    }
}
