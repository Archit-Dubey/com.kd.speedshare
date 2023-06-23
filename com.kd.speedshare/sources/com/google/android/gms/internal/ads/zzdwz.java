package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzdwy;
import java.security.GeneralSecurityException;
import java.util.Set;

/* compiled from: com.google.android.gms:play-services-ads@@19.2.0 */
final class zzdwz implements zzdwy.zzb {
    private final /* synthetic */ zzdwv zzhqi;
    private final /* synthetic */ zzdwj zzhqj;

    zzdwz(zzdwv zzdwv, zzdwj zzdwj) {
        this.zzhqi = zzdwv;
        this.zzhqj = zzdwj;
    }

    public final <Q> zzdwi<Q> zzb(Class<Q> cls) throws GeneralSecurityException {
        try {
            return new zzdww(this.zzhqi, this.zzhqj, cls);
        } catch (IllegalArgumentException e) {
            throw new GeneralSecurityException("Primitive type not supported", e);
        }
    }

    public final zzdwi<?> zzaxw() {
        zzdwv zzdwv = this.zzhqi;
        return new zzdww(zzdwv, this.zzhqj, zzdwv.zzaxn());
    }

    public final Class<?> zzaxx() {
        return this.zzhqi.getClass();
    }

    public final Set<Class<?>> zzaxm() {
        return this.zzhqi.zzaxm();
    }

    public final Class<?> zzaxy() {
        return this.zzhqj.getClass();
    }
}
