package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.internal.ads.zzcf;
import java.lang.reflect.InvocationTargetException;
import java.util.concurrent.atomic.AtomicReference;

/* compiled from: com.google.android.gms:play-services-ads@@19.2.0 */
public final class zzfl extends zzgm {
    private static zzgl<String> zzaat = new zzgl<>();
    private final Context zzaau;

    public zzfl(zzex zzex, String str, String str2, zzcf.zza.C0003zza zza, int i, int i2, Context context) {
        super(zzex, str, str2, zza, i, 29);
        this.zzaau = context;
    }

    /* access modifiers changed from: protected */
    public final void zzcx() throws IllegalAccessException, InvocationTargetException {
        this.zzabb.zzw("E");
        AtomicReference<String> zzas = zzaat.zzas(this.zzaau.getPackageName());
        if (zzas.get() == null) {
            synchronized (zzas) {
                if (zzas.get() == null) {
                    zzas.set((String) this.zzabl.invoke((Object) null, new Object[]{this.zzaau}));
                }
            }
        }
        String str = zzas.get();
        synchronized (this.zzabb) {
            this.zzabb.zzw(zzcv.zza(str.getBytes(), true));
        }
    }
}
