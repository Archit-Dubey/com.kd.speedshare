package com.google.android.gms.internal.ads;

import java.util.Iterator;

/* compiled from: com.google.android.gms:play-services-ads@@19.2.0 */
final /* synthetic */ class zzdhn implements zzduh {
    private final zzdho zzgxe;
    private final zzdmw zzgxf;
    private final zzbpz zzgxg;

    zzdhn(zzdho zzdho, zzdmw zzdmw, zzbpz zzbpz) {
        this.zzgxe = zzdho;
        this.zzgxf = zzdmw;
        this.zzgxg = zzbpz;
    }

    public final zzdvf zzf(Object obj) {
        zzdmw zzdmw = this.zzgxf;
        zzbpz zzbpz = this.zzgxg;
        zzdkw zzdkw = (zzdkw) obj;
        zzdmw.zzetl = zzdkw;
        Iterator<zzdkk> it = zzdkw.zzhau.zzhaq.iterator();
        boolean z = false;
        boolean z2 = false;
        loop0:
        while (true) {
            if (!it.hasNext()) {
                z = z2;
                break;
            }
            Iterator<String> it2 = it.next().zzgzk.iterator();
            while (true) {
                if (it2.hasNext()) {
                    if (!it2.next().contains("FirstPartyRenderer")) {
                        break loop0;
                    }
                    z2 = true;
                }
            }
        }
        if (!z) {
            return zzdux.zzaf(null);
        }
        return zzbpz.zzb((zzdvf<zzdkw>) zzdux.zzaf(zzdkw));
    }
}
