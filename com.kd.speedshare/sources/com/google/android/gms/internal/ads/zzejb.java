package com.google.android.gms.internal.ads;

import java.io.IOException;

/* compiled from: com.google.android.gms:play-services-ads-lite@@19.2.0 */
final class zzejb extends zzeiz<zzejc, zzejc> {
    zzejb() {
    }

    /* access modifiers changed from: package-private */
    public final boolean zza(zzeib zzeib) {
        return false;
    }

    private static void zza(Object obj, zzejc zzejc) {
        ((zzegb) obj).zzieg = zzejc;
    }

    /* access modifiers changed from: package-private */
    public final void zzaj(Object obj) {
        ((zzegb) obj).zzieg.zzbcz();
    }

    /* access modifiers changed from: package-private */
    public final /* synthetic */ int zzat(Object obj) {
        return ((zzejc) obj).zzbfe();
    }

    /* access modifiers changed from: package-private */
    public final /* synthetic */ int zzaz(Object obj) {
        return ((zzejc) obj).zzbhu();
    }

    /* access modifiers changed from: package-private */
    public final /* synthetic */ Object zzk(Object obj, Object obj2) {
        zzejc zzejc = (zzejc) obj;
        zzejc zzejc2 = (zzejc) obj2;
        if (zzejc2.equals(zzejc.zzbhs())) {
            return zzejc;
        }
        return zzejc.zza(zzejc, zzejc2);
    }

    /* access modifiers changed from: package-private */
    public final /* synthetic */ void zzc(Object obj, zzejw zzejw) throws IOException {
        ((zzejc) obj).zza(zzejw);
    }

    /* access modifiers changed from: package-private */
    public final /* synthetic */ void zza(Object obj, zzejw zzejw) throws IOException {
        ((zzejc) obj).zzb(zzejw);
    }

    /* access modifiers changed from: package-private */
    public final /* synthetic */ void zzj(Object obj, Object obj2) {
        zza(obj, (zzejc) obj2);
    }

    /* access modifiers changed from: package-private */
    public final /* synthetic */ Object zzay(Object obj) {
        zzejc zzejc = ((zzegb) obj).zzieg;
        if (zzejc != zzejc.zzbhs()) {
            return zzejc;
        }
        zzejc zzbht = zzejc.zzbht();
        zza(obj, zzbht);
        return zzbht;
    }

    /* access modifiers changed from: package-private */
    public final /* synthetic */ Object zzax(Object obj) {
        return ((zzegb) obj).zzieg;
    }

    /* access modifiers changed from: package-private */
    public final /* synthetic */ void zzi(Object obj, Object obj2) {
        zza(obj, (zzejc) obj2);
    }

    /* access modifiers changed from: package-private */
    public final /* synthetic */ Object zzar(Object obj) {
        zzejc zzejc = (zzejc) obj;
        zzejc.zzbcz();
        return zzejc;
    }

    /* access modifiers changed from: package-private */
    public final /* synthetic */ Object zzbhr() {
        return zzejc.zzbht();
    }

    /* access modifiers changed from: package-private */
    public final /* synthetic */ void zza(Object obj, int i, Object obj2) {
        ((zzejc) obj).zzd((i << 3) | 3, (zzejc) obj2);
    }

    /* access modifiers changed from: package-private */
    public final /* synthetic */ void zza(Object obj, int i, zzeer zzeer) {
        ((zzejc) obj).zzd((i << 3) | 2, zzeer);
    }

    /* access modifiers changed from: package-private */
    public final /* synthetic */ void zzb(Object obj, int i, long j) {
        ((zzejc) obj).zzd((i << 3) | 1, Long.valueOf(j));
    }

    /* access modifiers changed from: package-private */
    public final /* synthetic */ void zzc(Object obj, int i, int i2) {
        ((zzejc) obj).zzd((i << 3) | 5, Integer.valueOf(i2));
    }

    /* access modifiers changed from: package-private */
    public final /* synthetic */ void zza(Object obj, int i, long j) {
        ((zzejc) obj).zzd(i << 3, Long.valueOf(j));
    }
}
