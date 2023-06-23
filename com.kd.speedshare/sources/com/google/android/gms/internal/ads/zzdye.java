package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzebf;
import java.security.GeneralSecurityException;

/* compiled from: com.google.android.gms:play-services-ads@@19.2.0 */
public final class zzdye extends zzdwv<zzeap, zzeaq> {
    zzdye() {
        super(zzeap.class, zzeaq.class, new zzdyh(zzdwg.class));
    }

    public final String getKeyType() {
        return "type.googleapis.com/google.crypto.tink.EciesAeadHkdfPrivateKey";
    }

    public final zzebf.zza zzaxl() {
        return zzebf.zza.ASYMMETRIC_PRIVATE;
    }

    public final zzdwm<zzeal, zzeap> zzaxo() {
        return new zzdyg(this, zzeal.class);
    }

    public final /* synthetic */ void zzc(zzehl zzehl) throws GeneralSecurityException {
        zzeap zzeap = (zzeap) zzehl;
        if (!zzeap.zzayb().isEmpty()) {
            zzedv.zzy(zzeap.getVersion(), 0);
            zzdyq.zza(zzeap.zzazv().zzazo());
            return;
        }
        throw new GeneralSecurityException("invalid ECIES private key");
    }

    public final /* synthetic */ zzehl zzp(zzeer zzeer) throws zzegl {
        return zzeap.zzo(zzeer, zzefo.zzbeq());
    }
}
