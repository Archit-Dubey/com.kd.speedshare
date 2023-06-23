package com.google.android.gms.internal.ads;

import android.os.RemoteException;

/* compiled from: com.google.android.gms:play-services-ads@@19.2.0 */
public final class zzcxb implements zzbsl, zzbsq, zzbtd, zzbua, zzuu {
    private zzwj zzgpr;

    public final void onRewardedVideoCompleted() {
    }

    public final void onRewardedVideoStarted() {
    }

    public final void zzb(zzatg zzatg, String str, String str2) {
    }

    public final synchronized void zzc(zzwj zzwj) {
        this.zzgpr = zzwj;
    }

    public final synchronized zzwj zzapw() {
        return this.zzgpr;
    }

    public final synchronized void onAdClosed() {
        if (this.zzgpr != null) {
            try {
                this.zzgpr.onAdClosed();
            } catch (RemoteException e) {
                zzaxv.zzd("Remote Exception at onAdClosed.", e);
            }
        }
    }

    public final synchronized void onAdFailedToLoad(int i) {
        if (this.zzgpr != null) {
            try {
                this.zzgpr.onAdFailedToLoad(i);
            } catch (RemoteException e) {
                zzaxv.zzd("Remote Exception at onAdFailedToLoad.", e);
            }
        }
    }

    public final synchronized void onAdLeftApplication() {
        if (this.zzgpr != null) {
            try {
                this.zzgpr.onAdLeftApplication();
            } catch (RemoteException e) {
                zzaxv.zzd("Remote Exception at onAdLeftApplication.", e);
            }
        }
    }

    public final synchronized void onAdLoaded() {
        if (this.zzgpr != null) {
            try {
                this.zzgpr.onAdLoaded();
            } catch (RemoteException e) {
                zzaxv.zzd("Remote Exception at onAdLoaded.", e);
            }
        }
    }

    public final synchronized void onAdOpened() {
        if (this.zzgpr != null) {
            try {
                this.zzgpr.onAdOpened();
            } catch (RemoteException e) {
                zzaxv.zzd("Remote Exception at onAdOpened.", e);
            }
        }
    }

    public final synchronized void onAdClicked() {
        if (this.zzgpr != null) {
            try {
                this.zzgpr.onAdClicked();
            } catch (RemoteException e) {
                zzaxv.zzd("Remote Exception at onAdClicked.", e);
            }
        }
    }

    public final synchronized void onAdImpression() {
        if (this.zzgpr != null) {
            try {
                this.zzgpr.onAdImpression();
            } catch (RemoteException e) {
                zzaxv.zzd("Remote Exception at onAdImpression.", e);
            }
        }
    }
}
