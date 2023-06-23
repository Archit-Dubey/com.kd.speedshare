package com.google.android.gms.internal.ads;

import java.util.Set;

/* compiled from: com.google.android.gms:play-services-ads@@19.2.0 */
final class zzdot extends zzbwv<zzdpa> implements zzdos<zzdor> {
    zzdot(Set<zzbyg<zzdpa>> set) {
        super(set);
    }

    public final void zza(zzdod<zzdor, ?> zzdod) {
        zza(new zzdow(zzdod));
    }

    public final void zzb(zzdod<zzdor, ?> zzdod) {
        zza(new zzdov(zzdod));
    }

    public final void zza(zzdod<zzdor, ?> zzdod, Throwable th) {
        zza(new zzdoy(zzdod, th));
    }

    public final void zzc(zzdod<zzdor, ?> zzdod) {
        zza(new zzdox(zzdod));
    }
}
