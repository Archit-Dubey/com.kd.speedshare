package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.identifier.AdvertisingIdClient;
import com.google.android.gms.internal.ads.zzcf;
import java.io.IOException;
import java.lang.reflect.InvocationTargetException;

/* compiled from: com.google.android.gms:play-services-ads@@19.2.0 */
public final class zzfr extends zzgm {
    public zzfr(zzex zzex, String str, String str2, zzcf.zza.C0003zza zza, int i, int i2) {
        super(zzex, str, str2, zza, i, 24);
    }

    public final Void zzcz() throws Exception {
        if (this.zzwf.isInitialized()) {
            return super.call();
        }
        if (!this.zzwf.zzcl()) {
            return null;
        }
        zzda();
        return null;
    }

    /* access modifiers changed from: protected */
    public final void zzcx() throws IllegalAccessException, InvocationTargetException {
        if (this.zzwf.zzcl()) {
            zzda();
            return;
        }
        synchronized (this.zzabb) {
            this.zzabb.zzab((String) this.zzabl.invoke((Object) null, new Object[]{this.zzwf.getContext()}));
        }
    }

    private final void zzda() {
        AdvertisingIdClient zzct = this.zzwf.zzct();
        if (zzct != null) {
            try {
                AdvertisingIdClient.Info info = zzct.getInfo();
                String zzaq = zzfg.zzaq(info.getId());
                if (zzaq != null) {
                    synchronized (this.zzabb) {
                        this.zzabb.zzab(zzaq);
                        this.zzabb.zza(info.isLimitAdTrackingEnabled());
                        this.zzabb.zza(zzcf.zza.zzc.DEVICE_IDENTIFIER_ANDROID_AD_ID);
                    }
                }
            } catch (IOException unused) {
            }
        }
    }

    public final /* synthetic */ Object call() throws Exception {
        return call();
    }
}
