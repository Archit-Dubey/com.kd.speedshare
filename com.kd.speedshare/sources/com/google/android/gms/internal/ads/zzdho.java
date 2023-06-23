package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzbpb;
import com.google.android.gms.internal.ads.zzbrv;
import java.util.concurrent.Executor;

/* compiled from: com.google.android.gms:play-services-ads@@19.2.0 */
public final class zzdho<R extends zzbrv<AdT>, AdT extends zzbpb> implements zzdil<R, zzdmw<AdT>> {
    private final Executor executor = zzdvh.zzaxf();
    private R zzgxh;

    public final zzdvf<zzdmw<AdT>> zza(zzdiq zzdiq, zzdin<R> zzdin) {
        zzdvf<zzdkw> zzdvf;
        zzbru<R> zzc = zzdin.zzc(zzdiq.zzgyh);
        zzc.zza(new zzdir(true));
        R r = (zzbrv) zzc.zzaeg();
        this.zzgxh = r;
        zzbpz zzaex = r.zzaex();
        zzdmw zzdmw = new zzdmw();
        if (zzdiq.zzgyg != null) {
            zzdvf = zzaex.zza(zzdiq.zzgyg);
        } else {
            zzdvf = zzaex.zzaip();
        }
        return zzduo.zzg(zzdvf).zzb(new zzdhn(this, zzdmw, zzaex), this.executor).zza(new zzdhq(zzdmw), this.executor);
    }

    public final /* synthetic */ Object zzarv() {
        return this.zzgxh;
    }
}
