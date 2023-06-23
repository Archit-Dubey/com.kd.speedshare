package com.google.android.gms.internal.ads;

import javax.annotation.ParametersAreNonnullByDefault;

/* compiled from: com.google.android.gms:play-services-ads@@19.2.0 */
public final class zzchh implements zzahm {
    private final zzbtl zzfpq;
    private final zzaub zzgce;
    private final String zzgcf;
    private final String zzgcg;

    public zzchh(zzbtl zzbtl, zzdkk zzdkk) {
        this.zzfpq = zzbtl;
        this.zzgce = zzdkk.zzdru;
        this.zzgcf = zzdkk.zzdjm;
        this.zzgcg = zzdkk.zzdjn;
    }

    public final void zzsq() {
        this.zzfpq.onRewardedVideoStarted();
    }

    @ParametersAreNonnullByDefault
    public final void zza(zzaub zzaub) {
        int i;
        String str;
        zzaub zzaub2 = this.zzgce;
        if (zzaub2 != null) {
            zzaub = zzaub2;
        }
        if (zzaub != null) {
            str = zzaub.type;
            i = zzaub.zzdun;
        } else {
            str = "";
            i = 1;
        }
        this.zzfpq.zzb(new zzate(str, i), this.zzgcf, this.zzgcg);
    }

    public final void zzsr() {
        this.zzfpq.onRewardedVideoCompleted();
    }
}
