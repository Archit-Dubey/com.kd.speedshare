package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
import java.security.KeyPair;
import java.security.interfaces.ECPrivateKey;
import java.security.interfaces.ECPublicKey;
import java.security.spec.ECPoint;

/* compiled from: com.google.android.gms:play-services-ads@@19.2.0 */
final class zzdyg extends zzdwm<zzeal, zzeap> {
    private final /* synthetic */ zzdye zzhri;

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    zzdyg(zzdye zzdye, Class cls) {
        super(cls);
        this.zzhri = zzdye;
    }

    public final /* synthetic */ Object zze(zzehl zzehl) throws GeneralSecurityException {
        zzeal zzeal = (zzeal) zzehl;
        KeyPair zza = zzedc.zza(zzedc.zza(zzdyq.zza(zzeal.zzazo().zzazq().zzbad())));
        ECPoint w = ((ECPublicKey) zza.getPublic()).getW();
        return (zzeap) ((zzegb) zzeap.zzazw().zzey(0).zzb((zzeaq) ((zzegb) zzeaq.zzbaa().zzez(0).zzc(zzeal.zzazo()).zzab(zzeer.zzu(w.getAffineX().toByteArray())).zzac(zzeer.zzu(w.getAffineY().toByteArray())).zzbfq())).zzaa(zzeer.zzu(((ECPrivateKey) zza.getPrivate()).getS().toByteArray())).zzbfq());
    }

    public final /* synthetic */ zzehl zzr(zzeer zzeer) throws zzegl {
        return zzeal.zzn(zzeer, zzefo.zzbeq());
    }

    public final /* synthetic */ void zzd(zzehl zzehl) throws GeneralSecurityException {
        zzdyq.zza(((zzeal) zzehl).zzazo());
    }
}
