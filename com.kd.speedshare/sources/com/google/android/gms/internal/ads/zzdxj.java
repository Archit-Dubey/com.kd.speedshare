package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;

/* compiled from: com.google.android.gms:play-services-ads@@19.2.0 */
final class zzdxj extends zzdwm<zzdzl, zzdzi> {
    private final /* synthetic */ zzdxh zzhqx;

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    zzdxj(zzdxh zzdxh, Class cls) {
        super(cls);
        this.zzhqx = zzdxh;
    }

    public final /* synthetic */ Object zze(zzehl zzehl) throws GeneralSecurityException {
        zzdzl zzdzl = (zzdzl) zzehl;
        return (zzdzi) ((zzegb) zzdzi.zzayl().zzb((zzdzm) new zzdxi().zzaxo().zze(zzdzl.zzayn())).zzb((zzeax) new zzdyw().zzaxo().zze(zzdzl.zzayo())).zzes(0).zzbfq());
    }

    public final /* synthetic */ zzehl zzr(zzeer zzeer) throws zzegl {
        return zzdzl.zze(zzeer, zzefo.zzbeq());
    }

    public final /* synthetic */ void zzd(zzehl zzehl) throws GeneralSecurityException {
        zzdzl zzdzl = (zzdzl) zzehl;
        new zzdxi().zzaxo().zzd(zzdzl.zzayn());
        new zzdyw().zzaxo().zzd(zzdzl.zzayo());
        zzedv.zzfo(zzdzl.zzayn().getKeySize());
    }
}
