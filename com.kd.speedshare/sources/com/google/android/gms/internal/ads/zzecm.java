package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
import javax.crypto.Cipher;

/* compiled from: com.google.android.gms:play-services-ads@@19.2.0 */
final class zzecm extends ThreadLocal<Cipher> {
    zzecm() {
    }

    private static Cipher zzbck() {
        try {
            return zzedf.zzhye.zzhq("AES/ECB/NOPADDING");
        } catch (GeneralSecurityException e) {
            throw new IllegalStateException(e);
        }
    }

    /* access modifiers changed from: protected */
    public final /* synthetic */ Object initialValue() {
        return zzbck();
    }
}
