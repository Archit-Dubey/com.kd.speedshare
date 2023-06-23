package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzebf;
import java.security.GeneralSecurityException;

/* compiled from: com.google.android.gms:play-services-ads@@19.2.0 */
public final class zzdxi extends zzdwj<zzdzm> {
    zzdxi() {
        super(zzdzm.class, new zzdxl(zzedp.class));
    }

    public final String getKeyType() {
        return "type.googleapis.com/google.crypto.tink.AesCtrKey";
    }

    public final zzebf.zza zzaxl() {
        return zzebf.zza.SYMMETRIC;
    }

    public final zzdwm<zzdzp, zzdzm> zzaxo() {
        return new zzdxk(this, zzdzp.class);
    }

    /* access modifiers changed from: private */
    public static void zza(zzdzq zzdzq) throws GeneralSecurityException {
        if (zzdzq.zzayw() < 12 || zzdzq.zzayw() > 16) {
            throw new GeneralSecurityException("invalid IV size");
        }
    }

    public final /* synthetic */ void zzc(zzehl zzehl) throws GeneralSecurityException {
        zzdzm zzdzm = (zzdzm) zzehl;
        zzedv.zzy(zzdzm.getVersion(), 0);
        zzedv.zzfo(zzdzm.zzayb().size());
        zza(zzdzm.zzayq());
    }

    public final /* synthetic */ zzehl zzp(zzeer zzeer) throws zzegl {
        return zzdzm.zzf(zzeer, zzefo.zzbeq());
    }
}
