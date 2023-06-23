package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzebf;
import java.security.GeneralSecurityException;

/* compiled from: com.google.android.gms:play-services-ads@@19.2.0 */
public final class zzdyw extends zzdwj<zzeax> {
    public zzdyw() {
        super(zzeax.class, new zzdyv(zzdwp.class));
    }

    public final String getKeyType() {
        return "type.googleapis.com/google.crypto.tink.HmacKey";
    }

    public final zzebf.zza zzaxl() {
        return zzebf.zza.SYMMETRIC;
    }

    /* access modifiers changed from: private */
    public static void zza(zzebc zzebc) throws GeneralSecurityException {
        if (zzebc.zzayg() >= 10) {
            int i = zzdyx.zzhrm[zzebc.zzbao().ordinal()];
            if (i != 1) {
                if (i != 2) {
                    if (i != 3) {
                        throw new GeneralSecurityException("unknown hash type");
                    } else if (zzebc.zzayg() > 64) {
                        throw new GeneralSecurityException("tag size too big");
                    }
                } else if (zzebc.zzayg() > 32) {
                    throw new GeneralSecurityException("tag size too big");
                }
            } else if (zzebc.zzayg() > 20) {
                throw new GeneralSecurityException("tag size too big");
            }
        } else {
            throw new GeneralSecurityException("tag size too small");
        }
    }

    public final zzdwm<zzebb, zzeax> zzaxo() {
        return new zzdyy(this, zzebb.class);
    }

    public final /* synthetic */ void zzc(zzehl zzehl) throws GeneralSecurityException {
        zzeax zzeax = (zzeax) zzehl;
        zzedv.zzy(zzeax.getVersion(), 0);
        if (zzeax.zzayb().size() >= 16) {
            zza(zzeax.zzbai());
            return;
        }
        throw new GeneralSecurityException("key too short");
    }

    public final /* synthetic */ zzehl zzp(zzeer zzeer) throws zzegl {
        return zzeax.zzq(zzeer, zzefo.zzbeq());
    }
}
