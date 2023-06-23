package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzebf;
import java.security.GeneralSecurityException;

/* compiled from: com.google.android.gms:play-services-ads@@19.2.0 */
final class zzdyj extends zzdwj<zzeaq> {
    public zzdyj() {
        super(zzeaq.class, new zzdyi(zzdwf.class));
    }

    public final String getKeyType() {
        return "type.googleapis.com/google.crypto.tink.EciesAeadHkdfPublicKey";
    }

    public final zzebf.zza zzaxl() {
        return zzebf.zza.ASYMMETRIC_PUBLIC;
    }

    public final /* synthetic */ void zzc(zzehl zzehl) throws GeneralSecurityException {
        zzeaq zzeaq = (zzeaq) zzehl;
        zzedv.zzy(zzeaq.getVersion(), 0);
        zzdyq.zza(zzeaq.zzazo());
    }

    public final /* synthetic */ zzehl zzp(zzeer zzeer) throws zzegl {
        return zzeaq.zzp(zzeer, zzefo.zzbeq());
    }
}
