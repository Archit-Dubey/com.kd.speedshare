package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzebf;
import java.security.GeneralSecurityException;

/* compiled from: com.google.android.gms:play-services-ads@@19.2.0 */
public final class zzdxh extends zzdwj<zzdzi> {
    zzdxh() {
        super(zzdzi.class, new zzdxg(zzdwc.class));
    }

    public final String getKeyType() {
        return "type.googleapis.com/google.crypto.tink.AesCtrHmacAeadKey";
    }

    public final zzebf.zza zzaxl() {
        return zzebf.zza.SYMMETRIC;
    }

    public final zzdwm<zzdzl, zzdzi> zzaxo() {
        return new zzdxj(this, zzdzl.class);
    }

    public final /* synthetic */ void zzc(zzehl zzehl) throws GeneralSecurityException {
        zzedv.zzy(((zzdzi) zzehl).getVersion(), 0);
    }

    public final /* synthetic */ zzehl zzp(zzeer zzeer) throws zzegl {
        return zzdzi.zzd(zzeer, zzefo.zzbeq());
    }
}
