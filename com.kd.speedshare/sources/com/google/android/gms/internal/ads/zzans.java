package com.google.android.gms.internal.ads;

import android.location.Location;
import com.google.android.gms.ads.VideoOptions;
import com.google.android.gms.ads.formats.NativeAdOptions;
import com.google.android.gms.ads.mediation.NativeMediationAdRequest;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;

/* compiled from: com.google.android.gms:play-services-ads-lite@@19.2.0 */
public final class zzans implements NativeMediationAdRequest {
    private final String zzadi;
    private final int zzcgt;
    private final boolean zzche;
    private final int zzdjw;
    private final int zzdjx;
    private final zzadj zzdkn;
    private final List<String> zzdko = new ArrayList();
    private final Map<String, Boolean> zzdkp = new HashMap();
    private final Date zzmx;
    private final Set<String> zzmz;
    private final boolean zzna;
    private final Location zznb;

    public zzans(Date date, int i, Set<String> set, Location location, boolean z, int i2, zzadj zzadj, List<String> list, boolean z2, int i3, String str) {
        this.zzmx = date;
        this.zzcgt = i;
        this.zzmz = set;
        this.zznb = location;
        this.zzna = z;
        this.zzdjw = i2;
        this.zzdkn = zzadj;
        this.zzche = z2;
        this.zzdjx = i3;
        this.zzadi = str;
        if (list != null) {
            for (String next : list) {
                if (next.startsWith("custom:")) {
                    String[] split = next.split(":", 3);
                    if (split.length == 3) {
                        if ("true".equals(split[2])) {
                            this.zzdkp.put(split[1], true);
                        } else if ("false".equals(split[2])) {
                            this.zzdkp.put(split[1], false);
                        }
                    }
                } else {
                    this.zzdko.add(next);
                }
            }
        }
    }

    @Deprecated
    public final Date getBirthday() {
        return this.zzmx;
    }

    @Deprecated
    public final int getGender() {
        return this.zzcgt;
    }

    public final Set<String> getKeywords() {
        return this.zzmz;
    }

    public final Location getLocation() {
        return this.zznb;
    }

    public final boolean isTesting() {
        return this.zzna;
    }

    public final int taggedForChildDirectedTreatment() {
        return this.zzdjw;
    }

    public final NativeAdOptions getNativeAdOptions() {
        if (this.zzdkn == null) {
            return null;
        }
        NativeAdOptions.Builder requestMultipleImages = new NativeAdOptions.Builder().setReturnUrlsForImageAssets(this.zzdkn.zzdcf).setImageOrientation(this.zzdkn.zzbng).setRequestMultipleImages(this.zzdkn.zzbni);
        if (this.zzdkn.versionCode >= 2) {
            requestMultipleImages.setAdChoicesPlacement(this.zzdkn.zzbnj);
        }
        if (this.zzdkn.versionCode >= 3 && this.zzdkn.zzdcg != null) {
            requestMultipleImages.setVideoOptions(new VideoOptions(this.zzdkn.zzdcg));
        }
        return requestMultipleImages.build();
    }

    public final boolean isAdMuted() {
        return zzyt.zzqs().zzqd();
    }

    public final float getAdVolume() {
        return zzyt.zzqs().zzqc();
    }

    public final boolean isAppInstallAdRequested() {
        List<String> list = this.zzdko;
        if (list != null) {
            return list.contains("2") || this.zzdko.contains("6");
        }
        return false;
    }

    public final boolean isUnifiedNativeAdRequested() {
        List<String> list = this.zzdko;
        return list != null && list.contains("6");
    }

    public final boolean isContentAdRequested() {
        List<String> list = this.zzdko;
        if (list != null) {
            return list.contains("1") || this.zzdko.contains("6");
        }
        return false;
    }

    public final boolean zzua() {
        List<String> list = this.zzdko;
        return list != null && list.contains("3");
    }

    public final Map<String, Boolean> zzub() {
        return this.zzdkp;
    }

    @Deprecated
    public final boolean isDesignedForFamilies() {
        return this.zzche;
    }
}
