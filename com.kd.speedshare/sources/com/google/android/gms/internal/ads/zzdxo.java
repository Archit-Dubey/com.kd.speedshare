package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzebf;
import java.security.GeneralSecurityException;

/* compiled from: com.google.android.gms:play-services-ads@@19.2.0 */
public final class zzdxo extends zzdwj<zzdzy> {
    zzdxo() {
        super(zzdzy.class, new zzdxr(zzdwc.class));
    }

    public final String getKeyType() {
        return "type.googleapis.com/google.crypto.tink.AesGcmKey";
    }

    public final zzebf.zza zzaxl() {
        return zzebf.zza.SYMMETRIC;
    }

    public final zzdwm<zzeab, zzdzy> zzaxo() {
        return new zzdxq(this, zzeab.class);
    }

    public final /* synthetic */ void zzc(zzehl zzehl) throws GeneralSecurityException {
        zzdzy zzdzy = (zzdzy) zzehl;
        zzedv.zzy(zzdzy.getVersion(), 0);
        zzedv.zzfo(zzdzy.zzayb().size());
    }

    public final /* synthetic */ zzehl zzp(zzeer zzeer) throws zzegl {
        return zzdzy.zzj(zzeer, zzefo.zzbeq());
    }
}
