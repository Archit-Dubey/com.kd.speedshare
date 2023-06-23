package com.google.android.gms.internal.ads;

import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;

/* compiled from: com.google.android.gms:play-services-ads@@19.2.0 */
final class zzduq<V> extends zzduo<V> {
    private final zzdvf<V> zzhol;

    zzduq(zzdvf<V> zzdvf) {
        this.zzhol = (zzdvf) zzdsh.checkNotNull(zzdvf);
    }

    public final void addListener(Runnable runnable, Executor executor) {
        this.zzhol.addListener(runnable, executor);
    }

    public final boolean cancel(boolean z) {
        return this.zzhol.cancel(z);
    }

    public final boolean isCancelled() {
        return this.zzhol.isCancelled();
    }

    public final boolean isDone() {
        return this.zzhol.isDone();
    }

    public final V get() throws InterruptedException, ExecutionException {
        return this.zzhol.get();
    }

    public final V get(long j, TimeUnit timeUnit) throws InterruptedException, ExecutionException, TimeoutException {
        return this.zzhol.get(j, timeUnit);
    }

    public final String toString() {
        return this.zzhol.toString();
    }
}
