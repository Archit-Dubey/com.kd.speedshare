package com.google.android.gms.internal.ads;

/* compiled from: com.google.android.gms:play-services-ads@@19.2.0 */
public final class zzbrh implements zzela<zzbyg<zzbtg>> {
    private final zzelj<zzbro> zzfmj;
    private final zzbqu zzfqp;

    private zzbrh(zzbqu zzbqu, zzelj<zzbro> zzelj) {
        this.zzfqp = zzbqu;
        this.zzfmj = zzelj;
    }

    public static zzbrh zzc(zzbqu zzbqu, zzelj<zzbro> zzelj) {
        return new zzbrh(zzbqu, zzelj);
    }

    public final /* synthetic */ Object get() {
        return (zzbyg) zzelg.zza(new zzbyg(this.zzfmj.get(), zzbbf.zzedm), "Cannot return null from a non-@Nullable @Provides method");
    }
}
