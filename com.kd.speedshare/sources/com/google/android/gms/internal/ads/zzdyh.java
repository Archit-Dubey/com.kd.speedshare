package com.google.android.gms.internal.ads;

import java.math.BigInteger;
import java.security.GeneralSecurityException;
import java.security.interfaces.ECPrivateKey;
import java.security.spec.ECPrivateKeySpec;

/* compiled from: com.google.android.gms:play-services-ads@@19.2.0 */
final class zzdyh extends zzdwl<zzdwg, zzeap> {
    zzdyh(Class cls) {
        super(cls);
    }

    public final /* synthetic */ Object zzag(Object obj) throws GeneralSecurityException {
        zzeap zzeap = (zzeap) obj;
        zzeam zzazo = zzeap.zzazv().zzazo();
        zzeat zzazq = zzazo.zzazq();
        zzede zza = zzdyq.zza(zzazq.zzbad());
        byte[] byteArray = zzeap.zzayb().toByteArray();
        ECPrivateKeySpec eCPrivateKeySpec = new ECPrivateKeySpec(new BigInteger(1, byteArray), zzedc.zza(zza));
        return new zzecv((ECPrivateKey) zzedf.zzhyk.zzhq("EC").generatePrivate(eCPrivateKeySpec), zzazq.zzbaf().toByteArray(), zzdyq.zza(zzazq.zzbae()), zzdyq.zza(zzazo.zzazs()), new zzdys(zzazo.zzazr().zzazl()));
    }
}
