package com.google.android.gms.internal.ads;

import java.util.Comparator;

/* compiled from: com.google.android.gms:play-services-ads@@19.2.0 */
final class zzrq implements Comparator<zzrw> {
    zzrq(zzrr zzrr) {
    }

    public final /* synthetic */ int compare(Object obj, Object obj2) {
        zzrw zzrw = (zzrw) obj;
        zzrw zzrw2 = (zzrw) obj2;
        int i = zzrw.zzbtt - zzrw2.zzbtt;
        if (i != 0) {
            return i;
        }
        return (int) (zzrw.value - zzrw2.value);
    }
}
