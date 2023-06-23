package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzto;
import com.google.android.gms.internal.ads.zzty;
import javax.annotation.Nullable;

/* compiled from: com.google.android.gms:play-services-ads@@19.2.0 */
public final class zzcjq implements zzbsq, zzbtd, zzbua, zzbva, zzbww, zzuu {
    private final zztm zzgdn;
    private boolean zzgdo = false;
    private boolean zzgdp = false;

    public zzcjq(zztm zztm, @Nullable zzdir zzdir) {
        this.zzgdn = zztm;
        zztm.zza(zzto.zza.C0014zza.AD_REQUEST);
        if (zzdir != null) {
            zztm.zza(zzto.zza.C0014zza.REQUEST_IS_PREFETCH);
        }
    }

    public final void zzd(zzasm zzasm) {
    }

    public final void zzb(zzdkw zzdkw) {
        this.zzgdn.zza((zztp) new zzcjt(zzdkw));
    }

    public final void onAdLoaded() {
        this.zzgdn.zza(zzto.zza.C0014zza.AD_LOADED);
    }

    public final void onAdFailedToLoad(int i) {
        switch (i) {
            case 1:
                this.zzgdn.zza(zzto.zza.C0014zza.AD_FAILED_TO_LOAD_INVALID_REQUEST);
                return;
            case 2:
                this.zzgdn.zza(zzto.zza.C0014zza.AD_FAILED_TO_LOAD_NETWORK_ERROR);
                return;
            case 3:
                this.zzgdn.zza(zzto.zza.C0014zza.AD_FAILED_TO_LOAD_NO_FILL);
                return;
            case 4:
                this.zzgdn.zza(zzto.zza.C0014zza.AD_FAILED_TO_LOAD_TIMEOUT);
                return;
            case 5:
                this.zzgdn.zza(zzto.zza.C0014zza.AD_FAILED_TO_LOAD_CANCELLED);
                return;
            case 6:
                this.zzgdn.zza(zzto.zza.C0014zza.AD_FAILED_TO_LOAD_NO_ERROR);
                return;
            case 7:
                this.zzgdn.zza(zzto.zza.C0014zza.AD_FAILED_TO_LOAD_NOT_FOUND);
                return;
            default:
                this.zzgdn.zza(zzto.zza.C0014zza.AD_FAILED_TO_LOAD);
                return;
        }
    }

    public final synchronized void onAdImpression() {
        this.zzgdn.zza(zzto.zza.C0014zza.AD_IMPRESSION);
    }

    public final synchronized void onAdClicked() {
        if (!this.zzgdp) {
            this.zzgdn.zza(zzto.zza.C0014zza.AD_FIRST_CLICK);
            this.zzgdp = true;
            return;
        }
        this.zzgdn.zza(zzto.zza.C0014zza.AD_SUBSEQUENT_CLICK);
    }

    public final void zzc(zzty.zzb zzb) {
        this.zzgdn.zza((zztp) new zzcjs(zzb));
        this.zzgdn.zza(zzto.zza.C0014zza.REQUEST_LOADED_FROM_CACHE);
    }

    public final void zzd(zzty.zzb zzb) {
        this.zzgdn.zza((zztp) new zzcjv(zzb));
        this.zzgdn.zza(zzto.zza.C0014zza.REQUEST_SAVED_TO_CACHE);
    }

    public final void zze(zzty.zzb zzb) {
        this.zzgdn.zza((zztp) new zzcju(zzb));
        this.zzgdn.zza(zzto.zza.C0014zza.REQUEST_PREFETCH_INTERCEPTED);
    }

    public final void zzbg(boolean z) {
        zzto.zza.C0014zza zza;
        zztm zztm = this.zzgdn;
        if (z) {
            zza = zzto.zza.C0014zza.REQUESTED_CACHE_KEY_FROM_SERVICE_SUCCEEDED;
        } else {
            zza = zzto.zza.C0014zza.REQUESTED_CACHE_KEY_FROM_SERVICE_FAILED;
        }
        zztm.zza(zza);
    }

    public final void zzbh(boolean z) {
        zzto.zza.C0014zza zza;
        zztm zztm = this.zzgdn;
        if (z) {
            zza = zzto.zza.C0014zza.NOTIFIED_CACHE_HIT_TO_SERVICE_SUCCEEDED;
        } else {
            zza = zzto.zza.C0014zza.NOTIFIED_CACHE_HIT_TO_SERVICE_FAILED;
        }
        zztm.zza(zza);
    }

    public final void zzajk() {
        this.zzgdn.zza(zzto.zza.C0014zza.REQUEST_FAILED_TO_LOAD_FROM_CACHE);
    }
}
