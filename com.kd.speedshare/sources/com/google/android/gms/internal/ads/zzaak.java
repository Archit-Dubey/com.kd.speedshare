package com.google.android.gms.internal.ads;

import android.content.SharedPreferences;
import android.os.Bundle;
import org.json.JSONObject;

/* compiled from: com.google.android.gms:play-services-ads-lite@@19.2.0 */
final class zzaak extends zzaag<Float> {
    zzaak(int i, String str, Float f) {
        super(1, str, f, (zzaaj) null);
    }

    public final /* synthetic */ Object zza(Bundle bundle) {
        String valueOf = String.valueOf(getKey());
        if (!bundle.containsKey(valueOf.length() != 0 ? "com.google.android.gms.ads.flag.".concat(valueOf) : new String("com.google.android.gms.ads.flag."))) {
            return (Float) zzrb();
        }
        String valueOf2 = String.valueOf(getKey());
        return Float.valueOf(bundle.getFloat(valueOf2.length() != 0 ? "com.google.android.gms.ads.flag.".concat(valueOf2) : new String("com.google.android.gms.ads.flag.")));
    }

    public final /* synthetic */ void zza(SharedPreferences.Editor editor, Object obj) {
        editor.putFloat(getKey(), ((Float) obj).floatValue());
    }

    public final /* synthetic */ Object zzb(JSONObject jSONObject) {
        return Float.valueOf((float) jSONObject.optDouble(getKey(), (double) ((Float) zzrb()).floatValue()));
    }

    public final /* synthetic */ Object zza(SharedPreferences sharedPreferences) {
        return Float.valueOf(sharedPreferences.getFloat(getKey(), ((Float) zzrb()).floatValue()));
    }
}
