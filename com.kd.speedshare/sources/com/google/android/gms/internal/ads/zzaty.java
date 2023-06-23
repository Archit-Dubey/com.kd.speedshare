package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Bundle;
import android.os.RemoteException;
import com.google.android.gms.ads.AdRequest;
import com.google.android.gms.ads.ResponseInfo;
import com.google.android.gms.ads.doubleclick.PublisherAdRequest;
import com.google.android.gms.ads.reward.AdMetadataListener;
import com.google.android.gms.ads.reward.RewardedVideoAd;
import com.google.android.gms.ads.reward.RewardedVideoAdListener;
import com.google.android.gms.dynamic.ObjectWrapper;

/* compiled from: com.google.android.gms:play-services-ads-lite@@19.2.0 */
public final class zzaty implements RewardedVideoAd {
    private final Object lock = new Object();
    private final zzatj zzdup;
    private final zzatt zzduq = new zzatt((RewardedVideoAdListener) null);
    private String zzdur;
    private String zzdus;
    private final Context zzvr;

    public zzaty(Context context, zzatj zzatj) {
        this.zzdup = zzatj == null ? new zzzq() : zzatj;
        this.zzvr = context.getApplicationContext();
    }

    private final void zza(String str, zzyq zzyq) {
        synchronized (this.lock) {
            if (this.zzdup != null) {
                try {
                    this.zzdup.zza(zzvf.zza(this.zzvr, zzyq, str));
                } catch (RemoteException e) {
                    zzbba.zze("#007 Could not call remote method.", e);
                }
            }
        }
    }

    public final void loadAd(String str, AdRequest adRequest) {
        zza(str, adRequest.zzdq());
    }

    public final void loadAd(String str, PublisherAdRequest publisherAdRequest) {
        zza(str, publisherAdRequest.zzdq());
    }

    public final void show() {
        synchronized (this.lock) {
            if (this.zzdup != null) {
                try {
                    this.zzdup.show();
                } catch (RemoteException e) {
                    zzbba.zze("#007 Could not call remote method.", e);
                }
            }
        }
    }

    public final void setRewardedVideoAdListener(RewardedVideoAdListener rewardedVideoAdListener) {
        synchronized (this.lock) {
            this.zzduq.setRewardedVideoAdListener(rewardedVideoAdListener);
            if (this.zzdup != null) {
                try {
                    this.zzdup.zza((zzatq) this.zzduq);
                } catch (RemoteException e) {
                    zzbba.zze("#007 Could not call remote method.", e);
                }
            }
        }
    }

    public final void setAdMetadataListener(AdMetadataListener adMetadataListener) {
        synchronized (this.lock) {
            if (this.zzdup != null) {
                try {
                    this.zzdup.zza((zzwz) new zzvb(adMetadataListener));
                } catch (RemoteException e) {
                    zzbba.zze("#007 Could not call remote method.", e);
                }
            }
        }
    }

    public final Bundle getAdMetadata() {
        synchronized (this.lock) {
            if (this.zzdup != null) {
                try {
                    Bundle adMetadata = this.zzdup.getAdMetadata();
                    return adMetadata;
                } catch (RemoteException e) {
                    zzbba.zze("#007 Could not call remote method.", e);
                }
            }
            Bundle bundle = new Bundle();
            return bundle;
        }
    }

    public final void setUserId(String str) {
        synchronized (this.lock) {
            this.zzdur = str;
            if (this.zzdup != null) {
                try {
                    this.zzdup.setUserId(str);
                } catch (RemoteException e) {
                    zzbba.zze("#007 Could not call remote method.", e);
                }
            }
        }
    }

    public final boolean isLoaded() {
        synchronized (this.lock) {
            if (this.zzdup == null) {
                return false;
            }
            try {
                boolean isLoaded = this.zzdup.isLoaded();
                return isLoaded;
            } catch (RemoteException e) {
                zzbba.zze("#007 Could not call remote method.", e);
                return false;
            }
        }
    }

    public final void pause() {
        pause((Context) null);
    }

    public final void pause(Context context) {
        synchronized (this.lock) {
            if (this.zzdup != null) {
                try {
                    this.zzdup.zzj(ObjectWrapper.wrap(context));
                } catch (RemoteException e) {
                    zzbba.zze("#007 Could not call remote method.", e);
                }
            }
        }
    }

    public final void resume() {
        resume((Context) null);
    }

    public final void resume(Context context) {
        synchronized (this.lock) {
            if (this.zzdup != null) {
                try {
                    this.zzdup.zzk(ObjectWrapper.wrap(context));
                } catch (RemoteException e) {
                    zzbba.zze("#007 Could not call remote method.", e);
                }
            }
        }
    }

    public final void destroy() {
        destroy((Context) null);
    }

    public final void destroy(Context context) {
        synchronized (this.lock) {
            this.zzduq.setRewardedVideoAdListener((RewardedVideoAdListener) null);
            if (this.zzdup != null) {
                try {
                    this.zzdup.zzl(ObjectWrapper.wrap(context));
                } catch (RemoteException e) {
                    zzbba.zze("#007 Could not call remote method.", e);
                }
            }
        }
    }

    public final RewardedVideoAdListener getRewardedVideoAdListener() {
        RewardedVideoAdListener rewardedVideoAdListener;
        synchronized (this.lock) {
            rewardedVideoAdListener = this.zzduq.getRewardedVideoAdListener();
        }
        return rewardedVideoAdListener;
    }

    public final String getUserId() {
        String str;
        synchronized (this.lock) {
            str = this.zzdur;
        }
        return str;
    }

    public final String getMediationAdapterClassName() {
        try {
            if (this.zzdup != null) {
                return this.zzdup.getMediationAdapterClassName();
            }
            return null;
        } catch (RemoteException e) {
            zzbba.zze("#007 Could not call remote method.", e);
            return null;
        }
    }

    public final void setImmersiveMode(boolean z) {
        synchronized (this.lock) {
            if (this.zzdup != null) {
                try {
                    this.zzdup.setImmersiveMode(z);
                } catch (RemoteException e) {
                    zzbba.zze("#007 Could not call remote method.", e);
                }
            }
        }
    }

    public final void setCustomData(String str) {
        synchronized (this.lock) {
            if (this.zzdup != null) {
                try {
                    this.zzdup.setCustomData(str);
                    this.zzdus = str;
                } catch (RemoteException e) {
                    zzbba.zze("#007 Could not call remote method.", e);
                }
            }
        }
    }

    public final String getCustomData() {
        String str;
        synchronized (this.lock) {
            str = this.zzdus;
        }
        return str;
    }

    public final ResponseInfo getResponseInfo() {
        zzyd zzyd = null;
        try {
            if (this.zzdup != null) {
                zzyd = this.zzdup.zzkj();
            }
        } catch (RemoteException e) {
            zzbba.zze("#007 Could not call remote method.", e);
        }
        return ResponseInfo.zza(zzyd);
    }
}
