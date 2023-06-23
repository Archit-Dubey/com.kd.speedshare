package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.text.TextUtils;
import com.google.ads.mediation.AbstractAdViewAdapter;
import com.google.firebase.analytics.FirebaseAnalytics;
import java.util.ArrayList;
import java.util.Iterator;

/* compiled from: com.google.android.gms:play-services-ads@@19.2.0 */
public abstract class zzctn<AdT> implements zzcqt<AdT> {
    /* access modifiers changed from: protected */
    public abstract zzdvf<AdT> zza(zzdla zzdla, Bundle bundle);

    public final boolean zza(zzdkw zzdkw, zzdkk zzdkk) {
        return !TextUtils.isEmpty(zzdkk.zzgzu.optString(AbstractAdViewAdapter.AD_UNIT_ID_PARAMETER, ""));
    }

    public final zzdvf<AdT> zzb(zzdkw zzdkw, zzdkk zzdkk) {
        zzdkk zzdkk2 = zzdkk;
        String optString = zzdkk2.zzgzu.optString(AbstractAdViewAdapter.AD_UNIT_ID_PARAMETER, "");
        zzdla zzdla = zzdkw.zzhat.zzfpv;
        zzdlc zzgs = new zzdlc().zzc(zzdla).zzgs(optString);
        Bundle zzn = zzn(zzdla.zzhay.zzcgz);
        Bundle zzn2 = zzn(zzn.getBundle("com.google.ads.mediation.admob.AdMobAdapter"));
        zzn2.putInt("gw", 1);
        String optString2 = zzdkk2.zzgzu.optString("mad_hac", (String) null);
        if (optString2 != null) {
            zzn2.putString("mad_hac", optString2);
        }
        String optString3 = zzdkk2.zzgzu.optString("adJson", (String) null);
        if (optString3 != null) {
            zzn2.putString("_ad", optString3);
        }
        zzn2.putBoolean("_noRefresh", true);
        Iterator<String> keys = zzdkk2.zzgzx.keys();
        while (keys.hasNext()) {
            String next = keys.next();
            String optString4 = zzdkk2.zzgzx.optString(next, (String) null);
            if (next != null) {
                zzn2.putString(next, optString4);
            }
        }
        zzn.putBundle("com.google.ads.mediation.admob.AdMobAdapter", zzn2);
        zzve zzve = r5;
        zzve zzve2 = new zzve(zzdla.zzhay.versionCode, zzdla.zzhay.zzcgs, zzn2, zzdla.zzhay.zzcgt, zzdla.zzhay.zzcgu, zzdla.zzhay.zzcgv, zzdla.zzhay.zzadg, zzdla.zzhay.zzbnr, zzdla.zzhay.zzcgw, zzdla.zzhay.zzcgx, zzdla.zzhay.zznb, zzdla.zzhay.zzcgy, zzn, zzdla.zzhay.zzcha, zzdla.zzhay.zzchb, zzdla.zzhay.zzchc, zzdla.zzhay.zzchd, zzdla.zzhay.zzche, zzdla.zzhay.zzchg, zzdla.zzhay.zzadh, zzdla.zzhay.zzadi, zzdla.zzhay.zzchf);
        zzdla zzaso = zzgs.zzh(zzve).zzaso();
        Bundle bundle = new Bundle();
        zzdkw zzdkw2 = zzdkw;
        zzdkm zzdkm = zzdkw2.zzhau.zzhar;
        Bundle bundle2 = new Bundle();
        bundle2.putStringArrayList("nofill_urls", new ArrayList(zzdkm.zzdii));
        bundle2.putInt("refresh_interval", zzdkm.zzhai);
        bundle2.putString("gws_query_id", zzdkm.zzdrt);
        bundle.putBundle("parent_common_config", bundle2);
        String str = zzdkw2.zzhat.zzfpv.zzhaz;
        Bundle bundle3 = new Bundle();
        bundle3.putString("initial_ad_unit_id", str);
        zzdkk zzdkk3 = zzdkk;
        bundle3.putString("allocation_id", zzdkk3.zzdjb);
        bundle3.putStringArrayList("click_urls", new ArrayList(zzdkk3.zzdif));
        bundle3.putStringArrayList("imp_urls", new ArrayList(zzdkk3.zzdig));
        bundle3.putStringArrayList("manual_tracking_urls", new ArrayList(zzdkk3.zzdrh));
        bundle3.putStringArrayList("fill_urls", new ArrayList(zzdkk3.zzgzp));
        bundle3.putStringArrayList("video_start_urls", new ArrayList(zzdkk3.zzdrv));
        bundle3.putStringArrayList("video_reward_urls", new ArrayList(zzdkk3.zzdrw));
        bundle3.putStringArrayList("video_complete_urls", new ArrayList(zzdkk3.zzgzo));
        bundle3.putString(FirebaseAnalytics.Param.TRANSACTION_ID, zzdkk3.zzdjm);
        bundle3.putString("valid_from_timestamp", zzdkk3.zzdjn);
        bundle3.putBoolean("is_closable_area_disabled", zzdkk3.zzbor);
        if (zzdkk3.zzdru != null) {
            Bundle bundle4 = new Bundle();
            bundle4.putInt("rb_amount", zzdkk3.zzdru.zzdun);
            bundle4.putString("rb_type", zzdkk3.zzdru.type);
            bundle3.putParcelableArray("rewards", new Bundle[]{bundle4});
        }
        bundle.putBundle("parent_ad_config", bundle3);
        return zza(zzaso, bundle);
    }

    private static Bundle zzn(Bundle bundle) {
        return bundle == null ? new Bundle() : new Bundle(bundle);
    }
}
