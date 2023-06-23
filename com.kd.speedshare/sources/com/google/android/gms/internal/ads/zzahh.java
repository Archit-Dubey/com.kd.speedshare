package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.zzc;
import com.google.android.gms.common.util.CollectionUtils;
import java.util.Map;

/* compiled from: com.google.android.gms:play-services-ads@@19.2.0 */
public final class zzahh implements zzahc<zzbfn> {
    private static final Map<String, Integer> zzdeh = CollectionUtils.mapOfKeyValueArrays(new String[]{"resize", "playVideo", "storePicture", "createCalendarEvent", "setOrientationProperties", "closeResizedAd", "unload"}, new Integer[]{1, 2, 3, 4, 5, 6, 7});
    private final zzc zzdee;
    private final zzapt zzdef;
    private final zzaqc zzdeg;

    public zzahh(zzc zzc, zzapt zzapt, zzaqc zzaqc) {
        this.zzdee = zzc;
        this.zzdef = zzapt;
        this.zzdeg = zzaqc;
    }

    public final /* synthetic */ void zza(Object obj, Map map) {
        zzc zzc;
        zzbfn zzbfn = (zzbfn) obj;
        int intValue = zzdeh.get((String) map.get("a")).intValue();
        if (intValue != 5 && intValue != 7 && (zzc = this.zzdee) != null && !zzc.zzjy()) {
            this.zzdee.zzbn((String) null);
        } else if (intValue == 1) {
            this.zzdef.zzg(map);
        } else if (intValue == 3) {
            new zzapu(zzbfn, map).execute();
        } else if (intValue == 4) {
            new zzapo(zzbfn, map).execute();
        } else if (intValue == 5) {
            new zzapv(zzbfn, map).execute();
        } else if (intValue == 6) {
            this.zzdef.zzac(true);
        } else if (intValue != 7) {
            zzaxv.zzfc("Unknown MRAID command called.");
        } else {
            this.zzdeg.zzui();
        }
    }
}
