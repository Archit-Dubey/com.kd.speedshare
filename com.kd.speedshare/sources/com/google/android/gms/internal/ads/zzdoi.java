package com.google.android.gms.internal.ads;

import java.util.List;
import java.util.concurrent.Callable;

/* compiled from: com.google.android.gms:play-services-ads@@19.2.0 */
public final class zzdoi {
    private final E zzhfj;
    private final List<zzdvf<?>> zzhfo;
    private final /* synthetic */ zzdog zzhfp;

    private zzdoi(zzdog zzdog, E e, List<zzdvf<?>> list) {
        this.zzhfp = zzdog;
        this.zzhfj = e;
        this.zzhfo = list;
    }

    public final <O> zzdom<O> zzb(Callable<O> callable) {
        zzduy<V> zzk = zzdux.zzk(this.zzhfo);
        zzdvf<C> zza = zzk.zza(zzdoh.zzgtd, zzbbf.zzedm);
        zzdog zzdog = this.zzhfp;
        return new zzdom(zzdog, this.zzhfj, (String) null, zza, this.zzhfo, zzk.zza(callable, zzdog.zzgad), (zzdof) null);
    }
}
