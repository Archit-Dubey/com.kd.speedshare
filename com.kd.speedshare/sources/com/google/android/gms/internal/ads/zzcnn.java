package com.google.android.gms.internal.ads;

import java.util.regex.Matcher;

/* compiled from: com.google.android.gms:play-services-ads@@19.2.0 */
final class zzcnn implements zzduu<zzdkw> {
    private final /* synthetic */ zzcni zzghb;

    zzcnn(zzcni zzcni) {
        this.zzghb = zzcni;
    }

    public final void zzb(Throwable th) {
        if (((Boolean) zzwg.zzpw().zzd(zzaav.zzcvp)).booleanValue()) {
            Matcher matcher = zzcni.zzggy.matcher(th.getMessage());
            if (matcher.matches()) {
                this.zzghb.zzggx.zzdx(Integer.parseInt(matcher.group(1)));
            }
        }
    }

    public final /* synthetic */ void onSuccess(Object obj) {
        zzdkw zzdkw = (zzdkw) obj;
        if (((Boolean) zzwg.zzpw().zzd(zzaav.zzcvp)).booleanValue()) {
            this.zzghb.zzggx.zzdx(zzdkw.zzhau.zzhar.responseCode);
            this.zzghb.zzggx.zzeq(zzdkw.zzhau.zzhar.zzgix);
        }
    }
}
