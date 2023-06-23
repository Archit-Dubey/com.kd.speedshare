package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzebf;
import java.security.GeneralSecurityException;

/* compiled from: com.google.android.gms:play-services-ads@@19.2.0 */
public final class zzdxt extends zzdwj<zzeac> {
    zzdxt() {
        super(zzeac.class, new zzdxs(zzdwc.class));
    }

    public final String getKeyType() {
        return "type.googleapis.com/google.crypto.tink.ChaCha20Poly1305Key";
    }

    public final zzebf.zza zzaxl() {
        return zzebf.zza.SYMMETRIC;
    }

    public final zzdwm<zzeaf, zzeac> zzaxo() {
        return new zzdxv(this, zzeaf.class);
    }

    public final /* synthetic */ void zzc(zzehl zzehl) throws GeneralSecurityException {
        zzeac zzeac = (zzeac) zzehl;
        zzedv.zzy(zzeac.getVersion(), 0);
        if (zzeac.zzayb().size() != 32) {
            throw new GeneralSecurityException("invalid ChaCha20Poly1305Key: incorrect key length");
        }
    }

    public final /* synthetic */ zzehl zzp(zzeer zzeer) throws zzegl {
        return zzeac.zzl(zzeer, zzefo.zzbeq());
    }
}
