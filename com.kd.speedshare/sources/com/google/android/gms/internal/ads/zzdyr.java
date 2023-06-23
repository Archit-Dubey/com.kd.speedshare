package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzebf;
import java.security.GeneralSecurityException;

/* compiled from: com.google.android.gms:play-services-ads@@19.2.0 */
public final class zzdyr extends zzdwj<zzdzd> {
    zzdyr() {
        super(zzdzd.class, new zzdyu(zzdwp.class));
    }

    public final String getKeyType() {
        return "type.googleapis.com/google.crypto.tink.AesCmacKey";
    }

    public final zzebf.zza zzaxl() {
        return zzebf.zza.SYMMETRIC;
    }

    /* access modifiers changed from: private */
    public static void zza(zzdzh zzdzh) throws GeneralSecurityException {
        if (zzdzh.zzayg() < 10) {
            throw new GeneralSecurityException("tag size too short");
        } else if (zzdzh.zzayg() > 16) {
            throw new GeneralSecurityException("tag size too long");
        }
    }

    /* access modifiers changed from: private */
    public static void zzep(int i) throws GeneralSecurityException {
        if (i != 32) {
            throw new GeneralSecurityException("AesCmacKey size wrong, must be 16 bytes");
        }
    }

    public final zzdwm<zzdze, zzdzd> zzaxo() {
        return new zzdyt(this, zzdze.class);
    }

    public final /* synthetic */ void zzc(zzehl zzehl) throws GeneralSecurityException {
        zzdzd zzdzd = (zzdzd) zzehl;
        zzedv.zzy(zzdzd.getVersion(), 0);
        zzep(zzdzd.zzayb().size());
        zza(zzdzd.zzayc());
    }

    public final /* synthetic */ zzehl zzp(zzeer zzeer) throws zzegl {
        return zzdzd.zzb(zzeer, zzefo.zzbeq());
    }
}
