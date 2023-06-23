package com.google.android.gms.ads.mediation.customevent;

import android.content.Context;
import android.os.Bundle;
import android.view.View;
import com.google.android.gms.ads.AdSize;
import com.google.android.gms.ads.mediation.MediationAdRequest;
import com.google.android.gms.ads.mediation.MediationBannerAdapter;
import com.google.android.gms.ads.mediation.MediationBannerListener;
import com.google.android.gms.ads.mediation.MediationInterstitialAdapter;
import com.google.android.gms.ads.mediation.MediationInterstitialListener;
import com.google.android.gms.ads.mediation.MediationNativeAdapter;
import com.google.android.gms.ads.mediation.MediationNativeListener;
import com.google.android.gms.ads.mediation.NativeAdMapper;
import com.google.android.gms.ads.mediation.NativeMediationAdRequest;
import com.google.android.gms.ads.mediation.UnifiedNativeAdMapper;
import com.google.android.gms.ads.reward.mediation.MediationRewardedVideoAdAdapter;
import com.google.android.gms.internal.ads.zzbba;

/* compiled from: com.google.android.gms:play-services-ads-lite@@19.2.0 */
public final class CustomEventAdapter implements MediationBannerAdapter, MediationInterstitialAdapter, MediationNativeAdapter {
    private CustomEventBanner zzeqm;
    private CustomEventInterstitial zzeqn;
    private CustomEventNative zzeqo;
    private View zzne;

    private static <T> T zzal(String str) {
        try {
            return Class.forName(str).newInstance();
        } catch (Throwable th) {
            String message = th.getMessage();
            StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 46 + String.valueOf(message).length());
            sb.append("Could not instantiate custom event adapter: ");
            sb.append(str);
            sb.append(". ");
            sb.append(message);
            zzbba.zzfd(sb.toString());
            return null;
        }
    }

    /* compiled from: com.google.android.gms:play-services-ads-lite@@19.2.0 */
    class zza implements CustomEventInterstitialListener {
        private final CustomEventAdapter zzeqp;
        private final MediationInterstitialListener zzeqq;

        public zza(CustomEventAdapter customEventAdapter, MediationInterstitialListener mediationInterstitialListener) {
            this.zzeqp = customEventAdapter;
            this.zzeqq = mediationInterstitialListener;
        }

        public final void onAdLoaded() {
            zzbba.zzee("Custom event adapter called onReceivedAd.");
            this.zzeqq.onAdLoaded(CustomEventAdapter.this);
        }

        public final void onAdFailedToLoad(int i) {
            zzbba.zzee("Custom event adapter called onFailedToReceiveAd.");
            this.zzeqq.onAdFailedToLoad(this.zzeqp, i);
        }

        public final void onAdClicked() {
            zzbba.zzee("Custom event adapter called onAdClicked.");
            this.zzeqq.onAdClicked(this.zzeqp);
        }

        public final void onAdOpened() {
            zzbba.zzee("Custom event adapter called onAdOpened.");
            this.zzeqq.onAdOpened(this.zzeqp);
        }

        public final void onAdClosed() {
            zzbba.zzee("Custom event adapter called onAdClosed.");
            this.zzeqq.onAdClosed(this.zzeqp);
        }

        public final void onAdLeftApplication() {
            zzbba.zzee("Custom event adapter called onAdLeftApplication.");
            this.zzeqq.onAdLeftApplication(this.zzeqp);
        }
    }

    /* compiled from: com.google.android.gms:play-services-ads-lite@@19.2.0 */
    static final class zzb implements CustomEventBannerListener {
        private final CustomEventAdapter zzeqp;
        private final MediationBannerListener zzeqs;

        public zzb(CustomEventAdapter customEventAdapter, MediationBannerListener mediationBannerListener) {
            this.zzeqp = customEventAdapter;
            this.zzeqs = mediationBannerListener;
        }

        public final void onAdLoaded(View view) {
            zzbba.zzee("Custom event adapter called onAdLoaded.");
            this.zzeqp.zza(view);
            this.zzeqs.onAdLoaded(this.zzeqp);
        }

        public final void onAdFailedToLoad(int i) {
            zzbba.zzee("Custom event adapter called onAdFailedToLoad.");
            this.zzeqs.onAdFailedToLoad(this.zzeqp, i);
        }

        public final void onAdClicked() {
            zzbba.zzee("Custom event adapter called onAdClicked.");
            this.zzeqs.onAdClicked(this.zzeqp);
        }

        public final void onAdOpened() {
            zzbba.zzee("Custom event adapter called onAdOpened.");
            this.zzeqs.onAdOpened(this.zzeqp);
        }

        public final void onAdClosed() {
            zzbba.zzee("Custom event adapter called onAdClosed.");
            this.zzeqs.onAdClosed(this.zzeqp);
        }

        public final void onAdLeftApplication() {
            zzbba.zzee("Custom event adapter called onAdLeftApplication.");
            this.zzeqs.onAdLeftApplication(this.zzeqp);
        }
    }

    /* compiled from: com.google.android.gms:play-services-ads-lite@@19.2.0 */
    static class zzc implements CustomEventNativeListener {
        private final CustomEventAdapter zzeqp;
        private final MediationNativeListener zzeqt;

        public zzc(CustomEventAdapter customEventAdapter, MediationNativeListener mediationNativeListener) {
            this.zzeqp = customEventAdapter;
            this.zzeqt = mediationNativeListener;
        }

        public final void onAdLoaded(NativeAdMapper nativeAdMapper) {
            zzbba.zzee("Custom event adapter called onAdLoaded.");
            this.zzeqt.onAdLoaded((MediationNativeAdapter) this.zzeqp, nativeAdMapper);
        }

        public final void onAdLoaded(UnifiedNativeAdMapper unifiedNativeAdMapper) {
            zzbba.zzee("Custom event adapter called onAdLoaded.");
            this.zzeqt.onAdLoaded((MediationNativeAdapter) this.zzeqp, unifiedNativeAdMapper);
        }

        public final void onAdFailedToLoad(int i) {
            zzbba.zzee("Custom event adapter called onAdFailedToLoad.");
            this.zzeqt.onAdFailedToLoad(this.zzeqp, i);
        }

        public final void onAdOpened() {
            zzbba.zzee("Custom event adapter called onAdOpened.");
            this.zzeqt.onAdOpened(this.zzeqp);
        }

        public final void onAdClicked() {
            zzbba.zzee("Custom event adapter called onAdClicked.");
            this.zzeqt.onAdClicked(this.zzeqp);
        }

        public final void onAdClosed() {
            zzbba.zzee("Custom event adapter called onAdClosed.");
            this.zzeqt.onAdClosed(this.zzeqp);
        }

        public final void onAdLeftApplication() {
            zzbba.zzee("Custom event adapter called onAdLeftApplication.");
            this.zzeqt.onAdLeftApplication(this.zzeqp);
        }

        public final void onAdImpression() {
            zzbba.zzee("Custom event adapter called onAdImpression.");
            this.zzeqt.onAdImpression(this.zzeqp);
        }
    }

    public final void onDestroy() {
        CustomEventBanner customEventBanner = this.zzeqm;
        if (customEventBanner != null) {
            customEventBanner.onDestroy();
        }
        CustomEventInterstitial customEventInterstitial = this.zzeqn;
        if (customEventInterstitial != null) {
            customEventInterstitial.onDestroy();
        }
        CustomEventNative customEventNative = this.zzeqo;
        if (customEventNative != null) {
            customEventNative.onDestroy();
        }
    }

    public final void onPause() {
        CustomEventBanner customEventBanner = this.zzeqm;
        if (customEventBanner != null) {
            customEventBanner.onPause();
        }
        CustomEventInterstitial customEventInterstitial = this.zzeqn;
        if (customEventInterstitial != null) {
            customEventInterstitial.onPause();
        }
        CustomEventNative customEventNative = this.zzeqo;
        if (customEventNative != null) {
            customEventNative.onPause();
        }
    }

    public final void onResume() {
        CustomEventBanner customEventBanner = this.zzeqm;
        if (customEventBanner != null) {
            customEventBanner.onResume();
        }
        CustomEventInterstitial customEventInterstitial = this.zzeqn;
        if (customEventInterstitial != null) {
            customEventInterstitial.onResume();
        }
        CustomEventNative customEventNative = this.zzeqo;
        if (customEventNative != null) {
            customEventNative.onResume();
        }
    }

    public final View getBannerView() {
        return this.zzne;
    }

    public final void requestBannerAd(Context context, MediationBannerListener mediationBannerListener, Bundle bundle, AdSize adSize, MediationAdRequest mediationAdRequest, Bundle bundle2) {
        Bundle bundle3;
        CustomEventBanner customEventBanner = (CustomEventBanner) zzal(bundle.getString("class_name"));
        this.zzeqm = customEventBanner;
        if (customEventBanner == null) {
            mediationBannerListener.onAdFailedToLoad(this, 0);
            return;
        }
        if (bundle2 == null) {
            bundle3 = null;
        } else {
            bundle3 = bundle2.getBundle(bundle.getString("class_name"));
        }
        Context context2 = context;
        this.zzeqm.requestBannerAd(context2, new zzb(this, mediationBannerListener), bundle.getString(MediationRewardedVideoAdAdapter.CUSTOM_EVENT_SERVER_PARAMETER_FIELD), adSize, mediationAdRequest, bundle3);
    }

    public final void requestInterstitialAd(Context context, MediationInterstitialListener mediationInterstitialListener, Bundle bundle, MediationAdRequest mediationAdRequest, Bundle bundle2) {
        Bundle bundle3;
        CustomEventInterstitial customEventInterstitial = (CustomEventInterstitial) zzal(bundle.getString("class_name"));
        this.zzeqn = customEventInterstitial;
        if (customEventInterstitial == null) {
            mediationInterstitialListener.onAdFailedToLoad(this, 0);
            return;
        }
        if (bundle2 == null) {
            bundle3 = null;
        } else {
            bundle3 = bundle2.getBundle(bundle.getString("class_name"));
        }
        Context context2 = context;
        this.zzeqn.requestInterstitialAd(context2, new zza(this, mediationInterstitialListener), bundle.getString(MediationRewardedVideoAdAdapter.CUSTOM_EVENT_SERVER_PARAMETER_FIELD), mediationAdRequest, bundle3);
    }

    public final void requestNativeAd(Context context, MediationNativeListener mediationNativeListener, Bundle bundle, NativeMediationAdRequest nativeMediationAdRequest, Bundle bundle2) {
        Bundle bundle3;
        CustomEventNative customEventNative = (CustomEventNative) zzal(bundle.getString("class_name"));
        this.zzeqo = customEventNative;
        if (customEventNative == null) {
            mediationNativeListener.onAdFailedToLoad(this, 0);
            return;
        }
        if (bundle2 == null) {
            bundle3 = null;
        } else {
            bundle3 = bundle2.getBundle(bundle.getString("class_name"));
        }
        Context context2 = context;
        this.zzeqo.requestNativeAd(context2, new zzc(this, mediationNativeListener), bundle.getString(MediationRewardedVideoAdAdapter.CUSTOM_EVENT_SERVER_PARAMETER_FIELD), nativeMediationAdRequest, bundle3);
    }

    public final void showInterstitial() {
        this.zzeqn.showInterstitial();
    }

    /* access modifiers changed from: private */
    public final void zza(View view) {
        this.zzne = view;
    }
}
