package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;

/* compiled from: com.google.android.gms:play-services-ads@@19.2.0 */
final class zzdxp extends zzdwm<zzdzu, zzdzt> {
    private final /* synthetic */ zzdxn zzhqz;

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    zzdxp(zzdxn zzdxn, Class cls) {
        super(cls);
        this.zzhqz = zzdxn;
    }

    public final /* synthetic */ Object zze(zzehl zzehl) throws GeneralSecurityException {
        zzdzu zzdzu = (zzdzu) zzehl;
        return (zzdzt) ((zzegb) zzdzt.zzaza().zzv(zzeer.zzu(zzedu.zzfn(zzdzu.getKeySize()))).zzb(zzdzu.zzayz()).zzeu(0).zzbfq());
    }

    public final /* synthetic */ zzehl zzr(zzeer zzeer) throws zzegl {
        return zzdzu.zzi(zzeer, zzefo.zzbeq());
    }

    public final /* synthetic */ void zzd(zzehl zzehl) throws GeneralSecurityException {
        zzdzu zzdzu = (zzdzu) zzehl;
        zzedv.zzfo(zzdzu.getKeySize());
        if (zzdzu.zzayz().zzayw() != 12 && zzdzu.zzayz().zzayw() != 16) {
            throw new GeneralSecurityException("invalid IV size; acceptable values have 12 or 16 bytes");
        }
    }
}
