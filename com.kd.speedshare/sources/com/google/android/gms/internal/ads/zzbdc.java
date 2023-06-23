package com.google.android.gms.internal.ads;

import org.json.JSONException;
import org.json.JSONObject;

/* compiled from: com.google.android.gms:play-services-ads@@19.2.0 */
public final class zzbdc {
    public final boolean zzehh;
    public final int zzehi;
    public final int zzehj;
    public final int zzehk;
    private final String zzehl;
    public final int zzehm;
    public final int zzehn;
    public final int zzeho;
    public final int zzehp;
    public final boolean zzehq;
    public final int zzehr;

    public zzbdc(String str) {
        JSONObject jSONObject = null;
        if (str != null) {
            try {
                jSONObject = new JSONObject(str);
            } catch (JSONException unused) {
            }
        }
        this.zzehh = zza(jSONObject, "aggressive_media_codec_release", zzaav.zzcmh);
        this.zzehi = zzb(jSONObject, "byte_buffer_precache_limit", zzaav.zzclp);
        this.zzehj = zzb(jSONObject, "exo_cache_buffer_size", zzaav.zzclw);
        this.zzehk = zzb(jSONObject, "exo_connect_timeout_millis", zzaav.zzcll);
        this.zzehl = zzc(jSONObject, "exo_player_version", zzaav.zzclk);
        this.zzehm = zzb(jSONObject, "exo_read_timeout_millis", zzaav.zzclm);
        this.zzehn = zzb(jSONObject, "load_check_interval_bytes", zzaav.zzcln);
        this.zzeho = zzb(jSONObject, "player_precache_limit", zzaav.zzclo);
        this.zzehp = zzb(jSONObject, "socket_receive_buffer_size", zzaav.zzclq);
        this.zzehq = zza(jSONObject, "use_cache_data_source", zzaav.zzcsk);
        this.zzehr = zzb(jSONObject, "min_retry_count", zzaav.zzcls);
    }

    /* JADX WARNING: type inference failed for: r3v0, types: [com.google.android.gms.internal.ads.zzaag<java.lang.Boolean>, com.google.android.gms.internal.ads.zzaag] */
    /* JADX WARNING: Unknown variable types count: 1 */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private static boolean zza(org.json.JSONObject r1, java.lang.String r2, com.google.android.gms.internal.ads.zzaag<java.lang.Boolean> r3) {
        /*
            com.google.android.gms.internal.ads.zzaar r0 = com.google.android.gms.internal.ads.zzwg.zzpw()
            java.lang.Object r3 = r0.zzd(r3)
            java.lang.Boolean r3 = (java.lang.Boolean) r3
            boolean r3 = r3.booleanValue()
            boolean r1 = zza((org.json.JSONObject) r1, (java.lang.String) r2, (boolean) r3)
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzbdc.zza(org.json.JSONObject, java.lang.String, com.google.android.gms.internal.ads.zzaag):boolean");
    }

    private static boolean zza(JSONObject jSONObject, String str, boolean z) {
        if (jSONObject != null) {
            try {
                return jSONObject.getBoolean(str);
            } catch (JSONException unused) {
            }
        }
        return z;
    }

    /* JADX WARNING: type inference failed for: r2v0, types: [com.google.android.gms.internal.ads.zzaag<java.lang.Integer>, com.google.android.gms.internal.ads.zzaag] */
    /* JADX WARNING: Unknown variable types count: 1 */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private static int zzb(org.json.JSONObject r0, java.lang.String r1, com.google.android.gms.internal.ads.zzaag<java.lang.Integer> r2) {
        /*
            if (r0 == 0) goto L_0x0007
            int r0 = r0.getInt(r1)     // Catch:{ JSONException -> 0x0007 }
            return r0
        L_0x0007:
            com.google.android.gms.internal.ads.zzaar r0 = com.google.android.gms.internal.ads.zzwg.zzpw()
            java.lang.Object r0 = r0.zzd(r2)
            java.lang.Integer r0 = (java.lang.Integer) r0
            int r0 = r0.intValue()
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzbdc.zzb(org.json.JSONObject, java.lang.String, com.google.android.gms.internal.ads.zzaag):int");
    }

    /* JADX WARNING: type inference failed for: r2v0, types: [com.google.android.gms.internal.ads.zzaag<java.lang.String>, com.google.android.gms.internal.ads.zzaag] */
    /* JADX WARNING: Unknown variable types count: 1 */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private static java.lang.String zzc(org.json.JSONObject r0, java.lang.String r1, com.google.android.gms.internal.ads.zzaag<java.lang.String> r2) {
        /*
            if (r0 == 0) goto L_0x0007
            java.lang.String r0 = r0.getString(r1)     // Catch:{ JSONException -> 0x0007 }
            return r0
        L_0x0007:
            com.google.android.gms.internal.ads.zzaar r0 = com.google.android.gms.internal.ads.zzwg.zzpw()
            java.lang.Object r0 = r0.zzd(r2)
            java.lang.String r0 = (java.lang.String) r0
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzbdc.zzc(org.json.JSONObject, java.lang.String, com.google.android.gms.internal.ads.zzaag):java.lang.String");
    }
}
