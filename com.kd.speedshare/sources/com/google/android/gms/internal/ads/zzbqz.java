package com.google.android.gms.internal.ads;

import java.util.concurrent.Executor;

/* compiled from: com.google.android.gms:play-services-ads@@19.2.0 */
public final class zzbqz implements zzela<zzbyg<zzbsp>> {
    private final zzelj<Executor> zzerc;
    private final zzelj<zzckl> zzfmj;

    private zzbqz(zzelj<zzckl> zzelj, zzelj<Executor> zzelj2) {
        this.zzfmj = zzelj;
        this.zzerc = zzelj2;
    }

    public static zzbqz zzm(zzelj<zzckl> zzelj, zzelj<Executor> zzelj2) {
        return new zzbqz(zzelj, zzelj2);
    }

    public final /* synthetic */ Object get() {
        return (zzbyg) zzelg.zza(new zzbyg(this.zzfmj.get(), this.zzerc.get()), "Cannot return null from a non-@Nullable @Provides method");
    }
}
