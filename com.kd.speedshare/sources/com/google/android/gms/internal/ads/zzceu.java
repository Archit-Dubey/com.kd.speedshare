package com.google.android.gms.internal.ads;

import android.text.TextUtils;
import java.util.List;
import java.util.concurrent.Executor;
import org.json.JSONObject;

/* compiled from: com.google.android.gms:play-services-ads@@19.2.0 */
public final class zzceu {
    private final zzdvi zzgad;
    private final zzcey zzgae;
    private final zzcfi zzgaf;

    public zzceu(zzdvi zzdvi, zzcey zzcey, zzcfi zzcfi) {
        this.zzgad = zzdvi;
        this.zzgae = zzcey;
        this.zzgaf = zzcfi;
    }

    public final zzdvf<zzcck> zza(zzdkw zzdkw, zzdkk zzdkk, JSONObject jSONObject) {
        zzdvf zzb;
        JSONObject jSONObject2 = jSONObject;
        zzdkw zzdkw2 = zzdkw;
        zzdvf zze = this.zzgad.zze(new zzcex(this, zzdkw, zzdkk, jSONObject2));
        zzdvf<List<zzadf>> zzd = this.zzgae.zzd(jSONObject2, "images");
        zzdvf<zzadf> zzc = this.zzgae.zzc(jSONObject2, "secondary_image");
        zzdvf<zzadf> zzc2 = this.zzgae.zzc(jSONObject2, "app_icon");
        zzdvf<zzada> zze2 = this.zzgae.zze(jSONObject2, "attribution");
        zzdvf<zzbfn> zzm = this.zzgae.zzm(jSONObject2);
        zzcey zzcey = this.zzgae;
        if (!jSONObject2.optBoolean("enable_omid")) {
            zzb = zzdux.zzaf(null);
        } else {
            JSONObject optJSONObject = jSONObject2.optJSONObject("omid_settings");
            if (optJSONObject == null) {
                zzb = zzdux.zzaf(null);
            } else {
                String optString = optJSONObject.optString("omid_html");
                if (TextUtils.isEmpty(optString)) {
                    zzb = zzdux.zzaf(null);
                } else {
                    zzb = zzdux.zzb(zzdux.zzaf(null), new zzcfc(zzcey, optString), (Executor) zzbbf.zzedl);
                }
            }
        }
        zzdvf zzdvf = zzb;
        zzdvf<List<zzcfn>> zzg = this.zzgaf.zzg(jSONObject2, "custom_assets");
        return zzdux.zza((zzdvf<? extends V>[]) new zzdvf[]{zze, zzd, zzc, zzc2, zze2, zzm, zzdvf, zzg}).zza(new zzcew(this, zze, zzd, zzc2, zzc, zze2, jSONObject, zzm, zzdvf, zzg), this.zzgad);
    }
}
