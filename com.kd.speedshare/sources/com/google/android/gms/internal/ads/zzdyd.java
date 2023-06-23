package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzebf;
import java.security.GeneralSecurityException;

/* compiled from: com.google.android.gms:play-services-ads@@19.2.0 */
public final class zzdyd extends zzdwj<zzece> {
    zzdyd() {
        super(zzece.class, new zzdyc(zzdwc.class));
    }

    public final String getKeyType() {
        return "type.googleapis.com/google.crypto.tink.XChaCha20Poly1305Key";
    }

    public final zzebf.zza zzaxl() {
        return zzebf.zza.SYMMETRIC;
    }

    public final zzdwm<zzecf, zzece> zzaxo() {
        return new zzdyf(this, zzecf.class);
    }

    public final /* synthetic */ void zzc(zzehl zzehl) throws GeneralSecurityException {
        zzece zzece = (zzece) zzehl;
        zzedv.zzy(zzece.getVersion(), 0);
        if (zzece.zzayb().size() != 32) {
            throw new GeneralSecurityException("invalid XChaCha20Poly1305Key: incorrect key length");
        }
    }

    public final /* synthetic */ zzehl zzp(zzeer zzeer) throws zzegl {
        return zzece.zzw(zzeer, zzefo.zzbeq());
    }
}
