package com.google.android.gms.internal.ads;

import java.util.concurrent.AbstractExecutorService;
import java.util.concurrent.Callable;
import java.util.concurrent.Future;
import java.util.concurrent.RunnableFuture;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;

/* compiled from: com.google.android.gms:play-services-ads@@19.2.0 */
public abstract class zzdtx extends AbstractExecutorService implements zzdvi {
    /* access modifiers changed from: protected */
    public final <T> RunnableFuture<T> newTaskFor(Runnable runnable, T t) {
        return zzdvt.zza(runnable, t);
    }

    /* access modifiers changed from: protected */
    public final <T> RunnableFuture<T> newTaskFor(Callable<T> callable) {
        return zzdvt.zzf(callable);
    }

    /* renamed from: zzf */
    public final zzdvf<?> submit(Runnable runnable) {
        return (zzdvf) super.submit(runnable);
    }

    /* renamed from: zze */
    public final <T> zzdvf<T> submit(Callable<T> callable) {
        return (zzdvf) super.submit(callable);
    }

    public /* synthetic */ Future submit(Runnable runnable, @NullableDecl Object obj) {
        return (zzdvf) super.submit(runnable, obj);
    }
}
