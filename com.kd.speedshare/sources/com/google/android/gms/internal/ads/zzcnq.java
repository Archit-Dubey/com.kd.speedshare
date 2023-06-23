package com.google.android.gms.internal.ads;

import java.util.regex.Matcher;

/* compiled from: com.google.android.gms:play-services-ads@@19.2.0 */
final class zzcnq implements zzduu<zzdkw> {
    private final /* synthetic */ zzcnp zzghd;

    zzcnq(zzcnp zzcnp) {
        this.zzghd = zzcnp;
    }

    public final void zzb(Throwable th) {
        if (((Boolean) zzwg.zzpw().zzd(zzaav.zzcvp)).booleanValue()) {
            Matcher matcher = zzcnp.zzggy.matcher(th.getMessage());
            if (matcher.matches()) {
                this.zzghd.zzggx.zzdx(Integer.parseInt(matcher.group(1)));
            }
        }
    }

    public final /* synthetic */ void onSuccess(Object obj) {
        zzdkw zzdkw = (zzdkw) obj;
        if (((Boolean) zzwg.zzpw().zzd(zzaav.zzcvp)).booleanValue()) {
            this.zzghd.zzggx.zzdx(zzdkw.zzhau.zzhar.responseCode);
            this.zzghd.zzggx.zzeq(zzdkw.zzhau.zzhar.zzgix);
        }
    }
}
