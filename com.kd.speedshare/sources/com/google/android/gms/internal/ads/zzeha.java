package com.google.android.gms.internal.ads;

import java.util.List;

/* compiled from: com.google.android.gms:play-services-ads-lite@@19.2.0 */
final class zzeha extends zzegv {
    private zzeha() {
        super();
    }

    /* access modifiers changed from: package-private */
    public final <L> List<L> zza(Object obj, long j) {
        zzegm zzd = zzd(obj, j);
        if (zzd.zzbcy()) {
            return zzd;
        }
        int size = zzd.size();
        zzegm zzfs = zzd.zzfs(size == 0 ? 10 : size << 1);
        zzejf.zza(obj, j, (Object) zzfs);
        return zzfs;
    }

    /* access modifiers changed from: package-private */
    public final void zzb(Object obj, long j) {
        zzd(obj, j).zzbcz();
    }

    /* access modifiers changed from: package-private */
    public final <E> void zza(Object obj, Object obj2, long j) {
        zzegm zzd = zzd(obj, j);
        zzegm zzd2 = zzd(obj2, j);
        int size = zzd.size();
        int size2 = zzd2.size();
        if (size > 0 && size2 > 0) {
            if (!zzd.zzbcy()) {
                zzd = zzd.zzfs(size2 + size);
            }
            zzd.addAll(zzd2);
        }
        if (size > 0) {
            zzd2 = zzd;
        }
        zzejf.zza(obj, j, (Object) zzd2);
    }

    private static <E> zzegm<E> zzd(Object obj, long j) {
        return (zzegm) zzejf.zzp(obj, j);
    }
}
