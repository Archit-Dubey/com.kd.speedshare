package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
import javax.crypto.spec.SecretKeySpec;

/* compiled from: com.google.android.gms:play-services-ads@@19.2.0 */
final class zzdyv extends zzdwl<zzdwp, zzeax> {
    zzdyv(Class cls) {
        super(cls);
    }

    public final /* synthetic */ Object zzag(Object obj) throws GeneralSecurityException {
        zzeax zzeax = (zzeax) obj;
        zzeav zzbao = zzeax.zzbai().zzbao();
        SecretKeySpec secretKeySpec = new SecretKeySpec(zzeax.zzayb().toByteArray(), "HMAC");
        int zzayg = zzeax.zzbai().zzayg();
        int i = zzdyx.zzhrm[zzbao.ordinal()];
        if (i == 1) {
            return new zzeds("HMACSHA1", secretKeySpec, zzayg);
        }
        if (i == 2) {
            return new zzeds("HMACSHA256", secretKeySpec, zzayg);
        }
        if (i == 3) {
            return new zzeds("HMACSHA512", secretKeySpec, zzayg);
        }
        throw new GeneralSecurityException("unknown hash");
    }
}
