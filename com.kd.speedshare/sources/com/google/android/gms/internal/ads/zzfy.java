package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzcf;
import java.lang.reflect.InvocationTargetException;

/* compiled from: com.google.android.gms:play-services-ads@@19.2.0 */
public final class zzfy extends zzgm {
    private long zzabd = -1;

    public zzfy(zzex zzex, String str, String str2, zzcf.zza.C0003zza zza, int i, int i2) {
        super(zzex, str, str2, zza, i, 12);
    }

    /* access modifiers changed from: protected */
    public final void zzcx() throws IllegalAccessException, InvocationTargetException {
        this.zzabb.zzi(-1);
        this.zzabb.zzi(((Long) this.zzabl.invoke((Object) null, new Object[]{this.zzwf.getContext()})).longValue());
    }
}
