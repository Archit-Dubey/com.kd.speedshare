package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzcf;
import java.lang.reflect.InvocationTargetException;

/* compiled from: com.google.android.gms:play-services-ads@@19.2.0 */
public final class zzgi extends zzgm {
    public zzgi(zzex zzex, String str, String str2, zzcf.zza.C0003zza zza, int i, int i2) {
        super(zzex, str, str2, zza, i, 48);
    }

    /* access modifiers changed from: protected */
    public final void zzcx() throws IllegalAccessException, InvocationTargetException {
        this.zzabb.zza(zzcn.ENUM_FAILURE);
        boolean booleanValue = ((Boolean) this.zzabl.invoke((Object) null, new Object[]{this.zzwf.getContext()})).booleanValue();
        synchronized (this.zzabb) {
            if (booleanValue) {
                this.zzabb.zza(zzcn.ENUM_TRUE);
            } else {
                this.zzabb.zza(zzcn.ENUM_FALSE);
            }
        }
    }
}
