package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.rewarded.RewardedAdCallback;

/* compiled from: com.google.android.gms:play-services-ads-lite@@19.2.0 */
public final class zzauv extends zzaum {
    private final RewardedAdCallback zzduv;

    public zzauv(RewardedAdCallback rewardedAdCallback) {
        this.zzduv = rewardedAdCallback;
    }

    public final void zzb(zzuy zzuy) {
    }

    public final void onRewardedAdOpened() {
        RewardedAdCallback rewardedAdCallback = this.zzduv;
        if (rewardedAdCallback != null) {
            rewardedAdCallback.onRewardedAdOpened();
        }
    }

    public final void onRewardedAdClosed() {
        RewardedAdCallback rewardedAdCallback = this.zzduv;
        if (rewardedAdCallback != null) {
            rewardedAdCallback.onRewardedAdClosed();
        }
    }

    public final void zza(zzaud zzaud) {
        RewardedAdCallback rewardedAdCallback = this.zzduv;
        if (rewardedAdCallback != null) {
            rewardedAdCallback.onUserEarnedReward(new zzauw(zzaud));
        }
    }

    public final void onRewardedAdFailedToShow(int i) {
        RewardedAdCallback rewardedAdCallback = this.zzduv;
        if (rewardedAdCallback != null) {
            rewardedAdCallback.onRewardedAdFailedToShow(i);
        }
    }
}
