package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzcf;
import java.lang.reflect.InvocationTargetException;

/* compiled from: com.google.android.gms:play-services-ads@@19.2.0 */
public final class zzfx extends zzgm {
    private static final Object zzaaz = new Object();
    private static volatile String zzabc;

    public zzfx(zzex zzex, String str, String str2, zzcf.zza.C0003zza zza, int i, int i2) {
        super(zzex, str, str2, zza, i, 1);
    }

    /* access modifiers changed from: protected */
    public final void zzcx() throws IllegalAccessException, InvocationTargetException {
        this.zzabb.zzt("E");
        if (zzabc == null) {
            synchronized (zzaaz) {
                if (zzabc == null) {
                    zzabc = (String) this.zzabl.invoke((Object) null, new Object[0]);
                }
            }
        }
        synchronized (this.zzabb) {
            this.zzabb.zzt(zzabc);
        }
    }
}
