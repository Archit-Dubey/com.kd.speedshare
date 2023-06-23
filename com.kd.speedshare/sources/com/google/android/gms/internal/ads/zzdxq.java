package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;

/* compiled from: com.google.android.gms:play-services-ads@@19.2.0 */
final class zzdxq extends zzdwm<zzeab, zzdzy> {
    private final /* synthetic */ zzdxo zzhra;

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    zzdxq(zzdxo zzdxo, Class cls) {
        super(cls);
        this.zzhra = zzdxo;
    }

    public final /* synthetic */ Object zze(zzehl zzehl) throws GeneralSecurityException {
        return (zzdzy) ((zzegb) zzdzy.zzazf().zzw(zzeer.zzu(zzedu.zzfn(((zzeab) zzehl).getKeySize()))).zzev(0).zzbfq());
    }

    public final /* synthetic */ zzehl zzr(zzeer zzeer) throws zzegl {
        return zzeab.zzk(zzeer, zzefo.zzbeq());
    }

    public final /* synthetic */ void zzd(zzehl zzehl) throws GeneralSecurityException {
        zzedv.zzfo(((zzeab) zzehl).getKeySize());
    }
}
