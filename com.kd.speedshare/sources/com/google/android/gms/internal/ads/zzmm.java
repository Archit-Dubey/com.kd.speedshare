package com.google.android.gms.internal.ads;

/* compiled from: com.google.android.gms:play-services-ads@@19.2.0 */
public final class zzmm implements zznn {
    private final zznn[] zzbdc;

    public zzmm(zznn[] zznnArr) {
        this.zzbdc = zznnArr;
    }

    public final long zzhm() {
        long j = Long.MAX_VALUE;
        for (zznn zzhm : this.zzbdc) {
            long zzhm2 = zzhm.zzhm();
            if (zzhm2 != Long.MIN_VALUE) {
                j = Math.min(j, zzhm2);
            }
        }
        if (j == Long.MAX_VALUE) {
            return Long.MIN_VALUE;
        }
        return j;
    }

    public final boolean zzee(long j) {
        boolean z;
        boolean z2 = false;
        do {
            long zzhm = zzhm();
            if (zzhm == Long.MIN_VALUE) {
                break;
            }
            z = false;
            for (zznn zznn : this.zzbdc) {
                if (zznn.zzhm() == zzhm) {
                    z |= zznn.zzee(j);
                }
            }
            z2 |= z;
        } while (z);
        return z2;
    }
}
