package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
import java.util.logging.Logger;

/* compiled from: com.google.android.gms:play-services-ads@@19.2.0 */
class zzdyz implements zzdwt<zzdwp> {
    private static final Logger logger = Logger.getLogger(zzdyz.class.getName());

    zzdyz() {
    }

    public final Class<zzdwp> zzaxi() {
        return zzdwp.class;
    }

    /* compiled from: com.google.android.gms:play-services-ads@@19.2.0 */
    static class zza implements zzdwp {
        private final zzdwr<zzdwp> zzhrl;
        private final byte[] zzhrw;

        private zza(zzdwr<zzdwp> zzdwr) {
            this.zzhrw = new byte[]{0};
            this.zzhrl = zzdwr;
        }

        public final byte[] zzl(byte[] bArr) throws GeneralSecurityException {
            if (this.zzhrl.zzaxr().zzaxu().equals(zzebz.LEGACY)) {
                return zzecp.zza(this.zzhrl.zzaxr().zzaxv(), this.zzhrl.zzaxr().zzaxs().zzl(zzecp.zza(bArr, this.zzhrw)));
            }
            return zzecp.zza(this.zzhrl.zzaxr().zzaxv(), this.zzhrl.zzaxr().zzaxs().zzl(bArr));
        }
    }

    public final /* synthetic */ Object zza(zzdwr zzdwr) throws GeneralSecurityException {
        return new zza(zzdwr);
    }
}
