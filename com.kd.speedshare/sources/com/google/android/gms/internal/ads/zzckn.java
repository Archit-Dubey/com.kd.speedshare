package com.google.android.gms.internal.ads;

/* compiled from: com.google.android.gms:play-services-ads@@19.2.0 */
public final class zzckn implements zzbsq, zzbua, zzbva {
    private final zzckv zzgeg;
    private final zzclc zzgeh;

    public zzckn(zzckv zzckv, zzclc zzclc) {
        this.zzgeg = zzckv;
        this.zzgeh = zzclc;
    }

    public final void onAdLoaded() {
        this.zzgeg.zzro().put("action", "loaded");
        this.zzgeh.zzn(this.zzgeg.zzro());
    }

    public final void onAdFailedToLoad(int i) {
        this.zzgeg.zzro().put("action", "ftl");
        this.zzgeg.zzro().put("ftl", String.valueOf(i));
        this.zzgeh.zzn(this.zzgeg.zzro());
    }

    public final void zzd(zzasm zzasm) {
        this.zzgeg.zzj(zzasm.zzdsq);
    }

    public final void zzb(zzdkw zzdkw) {
        this.zzgeg.zzc(zzdkw);
    }
}
