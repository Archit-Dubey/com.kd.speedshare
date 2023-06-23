package com.google.android.gms.internal.ads;

import com.github.kevinsawicki.http.HttpRequest;
import java.util.Map;

/* compiled from: com.google.android.gms:play-services-ads@@19.2.0 */
public final class zzazw extends zzaa<zzy> {
    private final Map<String, String> zzam;
    private final zzbbn<zzy> zzebq;
    private final zzbau zzebr;

    public zzazw(String str, zzbbn<zzy> zzbbn) {
        this(str, (Map<String, String>) null, zzbbn);
    }

    private zzazw(String str, Map<String, String> map, zzbbn<zzy> zzbbn) {
        super(0, str, new zzazv(zzbbn));
        this.zzam = null;
        this.zzebq = zzbbn;
        zzbau zzbau = new zzbau();
        this.zzebr = zzbau;
        zzbau.zza(str, HttpRequest.METHOD_GET, (Map<String, ?>) null, (byte[]) null);
    }

    /* access modifiers changed from: protected */
    public final zzaj<zzy> zza(zzy zzy) {
        return zzaj.zza(zzy, zzbc.zzb(zzy));
    }

    /* access modifiers changed from: protected */
    public final /* synthetic */ void zza(Object obj) {
        zzy zzy = (zzy) obj;
        this.zzebr.zza((Map<String, ?>) zzy.zzam, zzy.statusCode);
        zzbau zzbau = this.zzebr;
        byte[] bArr = zzy.data;
        if (zzbau.isEnabled() && bArr != null) {
            zzbau.zzi(bArr);
        }
        this.zzebq.set(zzy);
    }
}
