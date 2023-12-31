package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzebf;
import java.security.GeneralSecurityException;

/* compiled from: com.google.android.gms:play-services-ads@@19.2.0 */
public final class zzdxy extends zzdwj<zzebv> {
    zzdxy() {
        super(zzebv.class, new zzdyb(zzdwc.class));
    }

    public final String getKeyType() {
        return "type.googleapis.com/google.crypto.tink.KmsEnvelopeAeadKey";
    }

    public final zzebf.zza zzaxl() {
        return zzebf.zza.REMOTE;
    }

    public final zzdwm<zzeby, zzebv> zzaxo() {
        return new zzdya(this, zzeby.class);
    }

    public final /* synthetic */ void zzc(zzehl zzehl) throws GeneralSecurityException {
        zzedv.zzy(((zzebv) zzehl).getVersion(), 0);
    }

    public final /* synthetic */ zzehl zzp(zzeer zzeer) throws zzegl {
        return zzebv.zzu(zzeer, zzefo.zzbeq());
    }
}
