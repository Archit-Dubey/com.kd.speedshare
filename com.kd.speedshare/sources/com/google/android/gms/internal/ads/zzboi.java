package com.google.android.gms.internal.ads;

import android.os.RemoteException;
import android.view.View;
import android.view.ViewGroup;
import com.google.android.gms.dynamic.ObjectWrapper;
import java.util.concurrent.Executor;
import java.util.concurrent.atomic.AtomicReference;

/* compiled from: com.google.android.gms:play-services-ads@@19.2.0 */
public final class zzboi extends zzbnc {
    private final Executor zzflp;
    private final zzafn zzfog;
    private final Runnable zzfoh;

    public zzboi(zzbpa zzbpa, zzafn zzafn, Runnable runnable, Executor executor) {
        super(zzbpa);
        this.zzfog = zzafn;
        this.zzfoh = runnable;
        this.zzflp = executor;
    }

    public final zzyi getVideoController() {
        return null;
    }

    public final void zza(ViewGroup viewGroup, zzvh zzvh) {
    }

    public final zzdkj zzahj() {
        return null;
    }

    public final View zzahk() {
        return null;
    }

    public final zzdkj zzahp() {
        return null;
    }

    public final int zzahq() {
        return 0;
    }

    public final void zzkg() {
    }

    public final void zzahr() {
        this.zzflp.execute(new zzbok(this, new zzbol(new AtomicReference(this.zzfoh))));
    }

    /* access modifiers changed from: package-private */
    public final /* synthetic */ void zze(Runnable runnable) {
        try {
            if (!this.zzfog.zzm(ObjectWrapper.wrap(runnable))) {
                runnable.run();
            }
        } catch (RemoteException unused) {
            runnable.run();
        }
    }
}
