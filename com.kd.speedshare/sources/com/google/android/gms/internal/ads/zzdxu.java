package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzebf;
import java.security.GeneralSecurityException;

/* compiled from: com.google.android.gms:play-services-ads@@19.2.0 */
public final class zzdxu extends zzdwj<zzebr> {
    zzdxu() {
        super(zzebr.class, new zzdxx(zzdwc.class));
    }

    public final String getKeyType() {
        return "type.googleapis.com/google.crypto.tink.KmsAeadKey";
    }

    public final zzebf.zza zzaxl() {
        return zzebf.zza.REMOTE;
    }

    public final zzdwm<zzebu, zzebr> zzaxo() {
        return new zzdxw(this, zzebu.class);
    }

    public final /* synthetic */ void zzc(zzehl zzehl) throws GeneralSecurityException {
        zzedv.zzy(((zzebr) zzehl).getVersion(), 0);
    }

    public final /* synthetic */ zzehl zzp(zzeer zzeer) throws zzegl {
        return zzebr.zzs(zzeer, zzefo.zzbeq());
    }
}
