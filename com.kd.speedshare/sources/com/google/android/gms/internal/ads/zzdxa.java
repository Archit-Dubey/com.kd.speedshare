package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzdwy;
import java.security.GeneralSecurityException;
import java.util.Set;

/* compiled from: com.google.android.gms:play-services-ads@@19.2.0 */
final class zzdxa implements zzdwy.zzb {
    private final /* synthetic */ zzdwj zzhqk;

    zzdxa(zzdwj zzdwj) {
        this.zzhqk = zzdwj;
    }

    public final Class<?> zzaxy() {
        return null;
    }

    public final <Q> zzdwi<Q> zzb(Class<Q> cls) throws GeneralSecurityException {
        try {
            return new zzdwh(this.zzhqk, cls);
        } catch (IllegalArgumentException e) {
            throw new GeneralSecurityException("Primitive type not supported", e);
        }
    }

    public final zzdwi<?> zzaxw() {
        zzdwj zzdwj = this.zzhqk;
        return new zzdwh(zzdwj, zzdwj.zzaxn());
    }

    public final Class<?> zzaxx() {
        return this.zzhqk.getClass();
    }

    public final Set<Class<?>> zzaxm() {
        return this.zzhqk.zzaxm();
    }
}
