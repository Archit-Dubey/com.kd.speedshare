package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzehl;
import java.security.GeneralSecurityException;

/* compiled from: com.google.android.gms:play-services-ads@@19.2.0 */
public class zzdwh<PrimitiveT, KeyProtoT extends zzehl> implements zzdwi<PrimitiveT> {
    private final zzdwj<KeyProtoT> zzhpk;
    private final Class<PrimitiveT> zzhpl;

    public zzdwh(zzdwj<KeyProtoT> zzdwj, Class<PrimitiveT> cls) {
        if (zzdwj.zzaxm().contains(cls) || Void.class.equals(cls)) {
            this.zzhpk = zzdwj;
            this.zzhpl = cls;
            return;
        }
        throw new IllegalArgumentException(String.format("Given internalKeyMananger %s does not support primitive class %s", new Object[]{zzdwj.toString(), cls.getName()}));
    }

    public final PrimitiveT zzm(zzeer zzeer) throws GeneralSecurityException {
        try {
            return zzb(this.zzhpk.zzp(zzeer));
        } catch (zzegl e) {
            String valueOf = String.valueOf(this.zzhpk.zzaxk().getName());
            throw new GeneralSecurityException(valueOf.length() != 0 ? "Failures parsing proto of type ".concat(valueOf) : new String("Failures parsing proto of type "), e);
        }
    }

    public final PrimitiveT zza(zzehl zzehl) throws GeneralSecurityException {
        String valueOf = String.valueOf(this.zzhpk.zzaxk().getName());
        String concat = valueOf.length() != 0 ? "Expected proto of type ".concat(valueOf) : new String("Expected proto of type ");
        if (this.zzhpk.zzaxk().isInstance(zzehl)) {
            return zzb(zzehl);
        }
        throw new GeneralSecurityException(concat);
    }

    public final zzehl zzn(zzeer zzeer) throws GeneralSecurityException {
        try {
            return zzaxj().zzq(zzeer);
        } catch (zzegl e) {
            String valueOf = String.valueOf(this.zzhpk.zzaxo().zzaxp().getName());
            throw new GeneralSecurityException(valueOf.length() != 0 ? "Failures parsing proto of type ".concat(valueOf) : new String("Failures parsing proto of type "), e);
        }
    }

    public final String getKeyType() {
        return this.zzhpk.getKeyType();
    }

    public final zzebf zzo(zzeer zzeer) throws GeneralSecurityException {
        try {
            return (zzebf) ((zzegb) zzebf.zzbau().zzho(this.zzhpk.getKeyType()).zzaf(zzaxj().zzq(zzeer).zzbct()).zzb(this.zzhpk.zzaxl()).zzbfq());
        } catch (zzegl e) {
            throw new GeneralSecurityException("Unexpected proto", e);
        }
    }

    public final Class<PrimitiveT> zzaxi() {
        return this.zzhpl;
    }

    private final PrimitiveT zzb(KeyProtoT keyprotot) throws GeneralSecurityException {
        if (!Void.class.equals(this.zzhpl)) {
            this.zzhpk.zzc(keyprotot);
            return this.zzhpk.zza(keyprotot, this.zzhpl);
        }
        throw new GeneralSecurityException("Cannot create a primitive for Void");
    }

    private final zzdwk<?, KeyProtoT> zzaxj() {
        return new zzdwk<>(this.zzhpk.zzaxo());
    }
}
