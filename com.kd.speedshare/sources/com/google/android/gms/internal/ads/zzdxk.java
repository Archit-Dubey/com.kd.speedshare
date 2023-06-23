package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;

/* compiled from: com.google.android.gms:play-services-ads@@19.2.0 */
final class zzdxk extends zzdwm<zzdzp, zzdzm> {
    private final /* synthetic */ zzdxi zzhqy;

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    zzdxk(zzdxi zzdxi, Class cls) {
        super(cls);
        this.zzhqy = zzdxi;
    }

    public final /* synthetic */ Object zze(zzehl zzehl) throws GeneralSecurityException {
        zzdzp zzdzp = (zzdzp) zzehl;
        return (zzdzm) ((zzegb) zzdzm.zzayr().zzc(zzdzp.zzayq()).zzu(zzeer.zzu(zzedu.zzfn(zzdzp.getKeySize()))).zzet(0).zzbfq());
    }

    public final /* synthetic */ zzehl zzr(zzeer zzeer) throws zzegl {
        return zzdzp.zzg(zzeer, zzefo.zzbeq());
    }

    public final /* synthetic */ void zzd(zzehl zzehl) throws GeneralSecurityException {
        zzdzp zzdzp = (zzdzp) zzehl;
        zzedv.zzfo(zzdzp.getKeySize());
        zzdxi.zza(zzdzp.zzayq());
    }
}
