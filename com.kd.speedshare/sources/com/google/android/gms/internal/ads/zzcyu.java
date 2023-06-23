package com.google.android.gms.internal.ads;

import java.util.concurrent.Executor;

/* compiled from: com.google.android.gms:play-services-ads@@19.2.0 */
public final class zzcyu implements zzduh<zzasm, zzcyv> {
    private Executor executor;
    private zzcnf zzgre;

    public zzcyu(Executor executor2, zzcnf zzcnf) {
        this.executor = executor2;
        this.zzgre = zzcnf;
    }

    public final /* synthetic */ zzdvf zzf(Object obj) throws Exception {
        zzasm zzasm = (zzasm) obj;
        return zzdux.zzb(this.zzgre.zzg(zzasm), new zzcyt(zzasm), this.executor);
    }
}
