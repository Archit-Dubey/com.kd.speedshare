package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzbrv;

/* compiled from: com.google.android.gms:play-services-ads@@19.2.0 */
public final class zzdig<RequestComponentT extends zzbrv<AdT>, AdT> implements zzdil<RequestComponentT, AdT> {
    private RequestComponentT zzgxk;
    private final zzdil<RequestComponentT, AdT> zzgye;

    public zzdig(zzdil<RequestComponentT, AdT> zzdil) {
        this.zzgye = zzdil;
    }

    /* access modifiers changed from: private */
    /* renamed from: zzarw */
    public final synchronized RequestComponentT zzarv() {
        return this.zzgxk;
    }

    public final synchronized zzdvf<AdT> zza(zzdiq zzdiq, zzdin<RequestComponentT> zzdin) {
        if (zzdiq.zzgyg != null) {
            RequestComponentT requestcomponentt = (zzbrv) zzdin.zzc(zzdiq.zzgyh).zzaeg();
            this.zzgxk = requestcomponentt;
            return requestcomponentt.zzaex().zzb(zzdiq.zzgyg);
        }
        zzdvf<AdT> zza = this.zzgye.zza(zzdiq, zzdin);
        this.zzgxk = (zzbrv) this.zzgye.zzarv();
        return zza;
    }
}
