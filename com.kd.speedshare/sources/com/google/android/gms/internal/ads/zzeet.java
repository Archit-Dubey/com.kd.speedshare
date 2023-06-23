package com.google.android.gms.internal.ads;

import java.util.Comparator;

/* compiled from: com.google.android.gms:play-services-ads-lite@@19.2.0 */
final class zzeet implements Comparator<zzeer> {
    zzeet() {
    }

    public final /* synthetic */ int compare(Object obj, Object obj2) {
        zzeer zzeer = (zzeer) obj;
        zzeer zzeer2 = (zzeer) obj2;
        zzeew zzeew = (zzeew) zzeer.iterator();
        zzeew zzeew2 = (zzeew) zzeer2.iterator();
        while (zzeew.hasNext() && zzeew2.hasNext()) {
            int compare = Integer.compare(zzeer.zzb(zzeew.nextByte()), zzeer.zzb(zzeew2.nextByte()));
            if (compare != 0) {
                return compare;
            }
        }
        return Integer.compare(zzeer.size(), zzeer2.size());
    }
}
