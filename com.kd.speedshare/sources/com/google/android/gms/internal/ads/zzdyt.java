package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;

/* compiled from: com.google.android.gms:play-services-ads@@19.2.0 */
final class zzdyt extends zzdwm<zzdze, zzdzd> {
    zzdyt(zzdyr zzdyr, Class cls) {
        super(cls);
    }

    public final /* synthetic */ Object zze(zzehl zzehl) throws GeneralSecurityException {
        zzdze zzdze = (zzdze) zzehl;
        return (zzdzd) ((zzegb) zzdzd.zzayd().zzer(0).zzt(zzeer.zzu(zzedu.zzfn(zzdze.getKeySize()))).zzd(zzdze.zzayc()).zzbfq());
    }

    public final /* synthetic */ zzehl zzr(zzeer zzeer) throws zzegl {
        return zzdze.zzc(zzeer, zzefo.zzbeq());
    }

    public final /* synthetic */ void zzd(zzehl zzehl) throws GeneralSecurityException {
        zzdze zzdze = (zzdze) zzehl;
        zzdyr.zza(zzdze.zzayc());
        zzdyr.zzep(zzdze.getKeySize());
    }
}
