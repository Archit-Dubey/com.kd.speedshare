package com.google.android.gms.internal.ads;

import java.util.Comparator;

/* compiled from: com.google.android.gms:play-services-ads@@19.2.0 */
public final class zzsb implements Comparator<zzrp> {
    public zzsb(zzry zzry) {
    }

    public final /* synthetic */ int compare(Object obj, Object obj2) {
        zzrp zzrp = (zzrp) obj;
        zzrp zzrp2 = (zzrp) obj2;
        if (zzrp.zzmo() < zzrp2.zzmo()) {
            return -1;
        }
        if (zzrp.zzmo() > zzrp2.zzmo()) {
            return 1;
        }
        if (zzrp.zzmn() < zzrp2.zzmn()) {
            return -1;
        }
        if (zzrp.zzmn() > zzrp2.zzmn()) {
            return 1;
        }
        float zzmq = (zzrp.zzmq() - zzrp.zzmo()) * (zzrp.zzmp() - zzrp.zzmn());
        float zzmq2 = (zzrp2.zzmq() - zzrp2.zzmo()) * (zzrp2.zzmp() - zzrp2.zzmn());
        if (zzmq > zzmq2) {
            return -1;
        }
        if (zzmq < zzmq2) {
            return 1;
        }
        return 0;
    }
}
