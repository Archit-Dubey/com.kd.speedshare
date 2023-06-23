package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;

/* compiled from: com.google.android.gms:play-services-ads@@19.2.0 */
final class zzdyy extends zzdwm<zzebb, zzeax> {
    private final /* synthetic */ zzdyw zzhru;

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    zzdyy(zzdyw zzdyw, Class cls) {
        super(cls);
        this.zzhru = zzdyw;
    }

    public final /* synthetic */ Object zze(zzehl zzehl) throws GeneralSecurityException {
        zzebb zzebb = (zzebb) zzehl;
        return (zzeax) ((zzegb) zzeax.zzbaj().zzfc(0).zzd(zzebb.zzbai()).zzad(zzeer.zzu(zzedu.zzfn(zzebb.getKeySize()))).zzbfq());
    }

    public final /* synthetic */ zzehl zzr(zzeer zzeer) throws zzegl {
        return zzebb.zzr(zzeer, zzefo.zzbeq());
    }

    public final /* synthetic */ void zzd(zzehl zzehl) throws GeneralSecurityException {
        zzebb zzebb = (zzebb) zzehl;
        if (zzebb.getKeySize() >= 16) {
            zzdyw.zza(zzebb.zzbai());
            return;
        }
        throw new GeneralSecurityException("key too short");
    }
}
