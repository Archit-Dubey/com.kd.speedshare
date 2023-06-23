package com.google.android.gms.internal.ads;

import android.location.Location;
import android.os.Bundle;
import android.text.TextUtils;
import com.genonbeta.TrebleShot.database.AccessDatabase;
import com.google.android.gms.common.internal.ImagesContract;
import com.google.android.gms.common.internal.Preconditions;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;

/* compiled from: com.google.android.gms:play-services-ads@@19.2.0 */
public final class zzczc implements zzddz<Bundle> {
    private final zzdla zzfpv;

    public zzczc(zzdla zzdla) {
        Preconditions.checkNotNull(zzdla, "the targeting must not be null");
        this.zzfpv = zzdla;
    }

    public final /* synthetic */ void zzs(Object obj) {
        Bundle bundle = (Bundle) obj;
        zzve zzve = this.zzfpv.zzhay;
        bundle.putString("slotname", this.zzfpv.zzhaz);
        boolean z = true;
        int i = zzczb.zzgch[this.zzfpv.zzhbf.zzhaj - 1];
        if (i == 1) {
            bundle.putBoolean("is_new_rewarded", true);
        } else if (i == 2) {
            bundle.putBoolean("is_rewarded_interstitial", true);
        }
        zzdlf.zza(bundle, "cust_age", new SimpleDateFormat("yyyyMMdd", Locale.US).format(new Date(zzve.zzcgs)), zzve.zzcgs != -1);
        zzdlf.zza(bundle, "extras", zzve.extras);
        zzdlf.zza(bundle, "cust_gender", Integer.valueOf(zzve.zzcgt), zzve.zzcgt != -1);
        zzdlf.zza(bundle, "kw", zzve.zzcgu);
        zzdlf.zza(bundle, "tag_for_child_directed_treatment", Integer.valueOf(zzve.zzadg), zzve.zzadg != -1);
        if (zzve.zzcgv) {
            bundle.putBoolean("test_request", zzve.zzcgv);
        }
        zzdlf.zza(bundle, "d_imp_hdr", (Integer) 1, zzve.versionCode >= 2 && zzve.zzbnr);
        zzdlf.zza(bundle, "ppid", zzve.zzcgw, zzve.versionCode >= 2 && !TextUtils.isEmpty(zzve.zzcgw));
        if (zzve.zznb != null) {
            Location location = zzve.zznb;
            Float valueOf = Float.valueOf(location.getAccuracy() * 1000.0f);
            Long valueOf2 = Long.valueOf(location.getTime() * 1000);
            Long valueOf3 = Long.valueOf((long) (location.getLatitude() * 1.0E7d));
            Long valueOf4 = Long.valueOf((long) (location.getLongitude() * 1.0E7d));
            Bundle bundle2 = new Bundle();
            bundle2.putFloat("radius", valueOf.floatValue());
            bundle2.putLong("lat", valueOf3.longValue());
            bundle2.putLong("long", valueOf4.longValue());
            bundle2.putLong(AccessDatabase.FIELD_CLIPBOARD_TIME, valueOf2.longValue());
            bundle.putBundle("uule", bundle2);
        }
        zzdlf.zza(bundle, ImagesContract.URL, zzve.zzcgy);
        zzdlf.zza(bundle, "neighboring_content_urls", zzve.zzchf);
        zzdlf.zza(bundle, "custom_targeting", zzve.zzcha);
        zzdlf.zza(bundle, "category_exclusions", zzve.zzchb);
        zzdlf.zza(bundle, "request_agent", zzve.zzchc);
        zzdlf.zza(bundle, "request_pkg", zzve.zzchd);
        zzdlf.zza(bundle, "is_designed_for_families", Boolean.valueOf(zzve.zzche), zzve.versionCode >= 7);
        if (zzve.versionCode >= 8) {
            Integer valueOf5 = Integer.valueOf(zzve.zzadh);
            if (zzve.zzadh == -1) {
                z = false;
            }
            zzdlf.zza(bundle, "tag_for_under_age_of_consent", valueOf5, z);
            zzdlf.zza(bundle, "max_ad_content_rating", zzve.zzadi);
        }
    }
}
