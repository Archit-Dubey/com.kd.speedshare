package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.AdError;
import com.google.android.gms.ads.FullScreenContentCallback;
import com.google.android.gms.ads.OnUserEarnedRewardListener;

/* compiled from: com.google.android.gms:play-services-ads-lite@@19.2.0 */
public final class zzavd extends zzaum {
    private FullScreenContentCallback zzduy;
    private OnUserEarnedRewardListener zzduz;

    public final void onRewardedAdFailedToShow(int i) {
    }

    public final void setFullScreenContentCallback(FullScreenContentCallback fullScreenContentCallback) {
        this.zzduy = fullScreenContentCallback;
    }

    public final void zza(OnUserEarnedRewardListener onUserEarnedRewardListener) {
        this.zzduz = onUserEarnedRewardListener;
    }

    public final void onRewardedAdOpened() {
        FullScreenContentCallback fullScreenContentCallback = this.zzduy;
        if (fullScreenContentCallback != null) {
            fullScreenContentCallback.onAdShowedFullScreenContent();
        }
    }

    public final void onRewardedAdClosed() {
        FullScreenContentCallback fullScreenContentCallback = this.zzduy;
        if (fullScreenContentCallback != null) {
            fullScreenContentCallback.onAdDismissedFullScreenContent();
        }
    }

    public final void zzb(zzuy zzuy) {
        FullScreenContentCallback fullScreenContentCallback = this.zzduy;
        if (fullScreenContentCallback != null) {
            fullScreenContentCallback.onAdFailedToShowFullScreenContent(new AdError(zzuy.errorCode, zzuy.zzcgo, zzuy.zzcgp));
        }
    }

    public final void zza(zzaud zzaud) {
        OnUserEarnedRewardListener onUserEarnedRewardListener = this.zzduz;
        if (onUserEarnedRewardListener != null) {
            onUserEarnedRewardListener.onUserEarnedReward(new zzauw(zzaud));
        }
    }
}
