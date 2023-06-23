package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.view.View;
import com.google.android.gms.ads.formats.NativeAd;
import com.google.android.gms.ads.mediation.UnifiedNativeAdMapper;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

/* compiled from: com.google.android.gms:play-services-ads-lite@@19.2.0 */
public final class zzaoi extends zzanj {
    private final UnifiedNativeAdMapper zzdkv;

    public zzaoi(UnifiedNativeAdMapper unifiedNativeAdMapper) {
        this.zzdkv = unifiedNativeAdMapper;
    }

    public final zzadl zzsd() {
        return null;
    }

    public final String getHeadline() {
        return this.zzdkv.getHeadline();
    }

    public final List getImages() {
        List<NativeAd.Image> images = this.zzdkv.getImages();
        ArrayList arrayList = new ArrayList();
        if (images != null) {
            for (NativeAd.Image next : images) {
                arrayList.add(new zzadf(next.getDrawable(), next.getUri(), next.getScale(), next.getWidth(), next.getHeight()));
            }
        }
        return arrayList;
    }

    public final String getBody() {
        return this.zzdkv.getBody();
    }

    public final zzadt zzsc() {
        NativeAd.Image icon = this.zzdkv.getIcon();
        if (icon != null) {
            return new zzadf(icon.getDrawable(), icon.getUri(), icon.getScale(), icon.getWidth(), icon.getHeight());
        }
        return null;
    }

    public final String getCallToAction() {
        return this.zzdkv.getCallToAction();
    }

    public final String getAdvertiser() {
        return this.zzdkv.getAdvertiser();
    }

    public final double getStarRating() {
        if (this.zzdkv.getStarRating() != null) {
            return this.zzdkv.getStarRating().doubleValue();
        }
        return -1.0d;
    }

    public final String getStore() {
        return this.zzdkv.getStore();
    }

    public final String getPrice() {
        return this.zzdkv.getPrice();
    }

    public final zzyi getVideoController() {
        if (this.zzdkv.getVideoController() != null) {
            return this.zzdkv.getVideoController().zzdu();
        }
        return null;
    }

    public final IObjectWrapper zztv() {
        View adChoicesContent = this.zzdkv.getAdChoicesContent();
        if (adChoicesContent == null) {
            return null;
        }
        return ObjectWrapper.wrap(adChoicesContent);
    }

    public final IObjectWrapper zztw() {
        View zzacy = this.zzdkv.zzacy();
        if (zzacy == null) {
            return null;
        }
        return ObjectWrapper.wrap(zzacy);
    }

    public final float getMediaContentAspectRatio() {
        return this.zzdkv.getMediaContentAspectRatio();
    }

    public final float getVideoDuration() {
        return this.zzdkv.getDuration();
    }

    public final float getVideoCurrentTime() {
        return this.zzdkv.getCurrentTime();
    }

    public final IObjectWrapper zzse() {
        Object zzjw = this.zzdkv.zzjw();
        if (zzjw == null) {
            return null;
        }
        return ObjectWrapper.wrap(zzjw);
    }

    public final Bundle getExtras() {
        return this.zzdkv.getExtras();
    }

    public final boolean getOverrideImpressionRecording() {
        return this.zzdkv.getOverrideImpressionRecording();
    }

    public final boolean getOverrideClickHandling() {
        return this.zzdkv.getOverrideClickHandling();
    }

    public final void recordImpression() {
        this.zzdkv.recordImpression();
    }

    public final void zzu(IObjectWrapper iObjectWrapper) {
        this.zzdkv.handleClick((View) ObjectWrapper.unwrap(iObjectWrapper));
    }

    public final void zzc(IObjectWrapper iObjectWrapper, IObjectWrapper iObjectWrapper2, IObjectWrapper iObjectWrapper3) {
        this.zzdkv.trackViews((View) ObjectWrapper.unwrap(iObjectWrapper), (HashMap) ObjectWrapper.unwrap(iObjectWrapper2), (HashMap) ObjectWrapper.unwrap(iObjectWrapper3));
    }

    public final void zzw(IObjectWrapper iObjectWrapper) {
        this.zzdkv.untrackView((View) ObjectWrapper.unwrap(iObjectWrapper));
    }
}
