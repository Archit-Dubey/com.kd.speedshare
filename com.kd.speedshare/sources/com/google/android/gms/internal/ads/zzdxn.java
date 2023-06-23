package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzebf;
import java.security.GeneralSecurityException;

/* compiled from: com.google.android.gms:play-services-ads@@19.2.0 */
public final class zzdxn extends zzdwj<zzdzt> {
    zzdxn() {
        super(zzdzt.class, new zzdxm(zzdwc.class));
    }

    public final String getKeyType() {
        return "type.googleapis.com/google.crypto.tink.AesEaxKey";
    }

    public final zzebf.zza zzaxl() {
        return zzebf.zza.SYMMETRIC;
    }

    public final zzdwm<zzdzu, zzdzt> zzaxo() {
        return new zzdxp(this, zzdzu.class);
    }

    public final /* synthetic */ void zzc(zzehl zzehl) throws GeneralSecurityException {
        zzdzt zzdzt = (zzdzt) zzehl;
        zzedv.zzy(zzdzt.getVersion(), 0);
        zzedv.zzfo(zzdzt.zzayb().size());
        if (zzdzt.zzayz().zzayw() != 12 && zzdzt.zzayz().zzayw() != 16) {
            throw new GeneralSecurityException("invalid IV size; acceptable values have 12 or 16 bytes");
        }
    }

    public final /* synthetic */ zzehl zzp(zzeer zzeer) throws zzegl {
        return zzdzt.zzh(zzeer, zzefo.zzbeq());
    }
}
