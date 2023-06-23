package com.google.android.gms.internal.ads;

import java.util.Map;

/* compiled from: com.google.android.gms:play-services-ads@@19.2.0 */
public final class zzbla implements zzduh<zzdkw, zzdkw> {
    private Map<String, zzbld> zzfkj;

    public zzbla(Map<String, zzbld> map) {
        this.zzfkj = map;
    }

    public final /* synthetic */ zzdvf zzf(Object obj) throws Exception {
        zzdkw zzdkw = (zzdkw) obj;
        for (zzdkt next : zzdkw.zzhau.zzhas) {
            if (this.zzfkj.containsKey(next.name)) {
                this.zzfkj.get(next.name).zzl(next.zzhap);
            }
        }
        return zzdux.zzaf(zzdkw);
    }
}
