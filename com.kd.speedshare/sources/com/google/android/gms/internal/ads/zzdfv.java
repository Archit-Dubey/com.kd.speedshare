package com.google.android.gms.internal.ads;

import android.location.Location;
import com.genonbeta.TrebleShot.database.AccessDatabase;
import org.json.JSONException;
import org.json.JSONObject;

/* compiled from: com.google.android.gms:play-services-ads@@19.2.0 */
public final class zzdfv implements zzddz<JSONObject> {
    private final Location zznb;

    public zzdfv(Location location) {
        this.zznb = location;
    }

    public final /* synthetic */ void zzs(Object obj) {
        JSONObject jSONObject = (JSONObject) obj;
        try {
            if (this.zznb != null) {
                JSONObject jSONObject2 = new JSONObject();
                Float valueOf = Float.valueOf(this.zznb.getAccuracy() * 1000.0f);
                Long valueOf2 = Long.valueOf(this.zznb.getTime() * 1000);
                Long valueOf3 = Long.valueOf((long) (this.zznb.getLatitude() * 1.0E7d));
                Long valueOf4 = Long.valueOf((long) (this.zznb.getLongitude() * 1.0E7d));
                jSONObject2.put("radius", (Object) valueOf);
                jSONObject2.put("lat", (Object) valueOf3);
                jSONObject2.put("long", (Object) valueOf4);
                jSONObject2.put(AccessDatabase.FIELD_CLIPBOARD_TIME, (Object) valueOf2);
                jSONObject.put("uule", (Object) jSONObject2);
            }
        } catch (JSONException e) {
            zzaxv.zza("Failed adding location to the request JSON.", e);
        }
    }
}
