package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
import java.util.logging.Logger;

/* compiled from: com.google.android.gms:play-services-ads@@19.2.0 */
public class zzdxd implements zzdwt<zzdwc> {
    private static final Logger logger = Logger.getLogger(zzdxd.class.getName());

    zzdxd() {
    }

    public final Class<zzdwc> zzaxi() {
        return zzdwc.class;
    }

    /* compiled from: com.google.android.gms:play-services-ads@@19.2.0 */
    static class zza implements zzdwc {
        private final zzdwr<zzdwc> zzhqw;

        private zza(zzdwr<zzdwc> zzdwr) {
            this.zzhqw = zzdwr;
        }

        public final byte[] zzc(byte[] bArr, byte[] bArr2) throws GeneralSecurityException {
            return zzecp.zza(this.zzhqw.zzaxr().zzaxv(), this.zzhqw.zzaxr().zzaxs().zzc(bArr, bArr2));
        }
    }

    public final /* synthetic */ Object zza(zzdwr zzdwr) throws GeneralSecurityException {
        return new zza(zzdwr);
    }
}
