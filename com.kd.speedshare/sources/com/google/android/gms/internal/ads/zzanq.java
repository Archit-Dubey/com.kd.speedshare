package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.view.View;
import com.google.android.gms.ads.formats.NativeAd;
import com.google.android.gms.ads.mediation.NativeAppInstallAdMapper;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

/* compiled from: com.google.android.gms:play-services-ads-lite@@19.2.0 */
public final class zzanq extends zzand {
    private final NativeAppInstallAdMapper zzdkl;

    public zzanq(NativeAppInstallAdMapper nativeAppInstallAdMapper) {
        this.zzdkl = nativeAppInstallAdMapper;
    }

    public final zzadl zzsd() {
        return null;
    }

    public final IObjectWrapper zzse() {
        return null;
    }

    public final String getHeadline() {
        return this.zzdkl.getHeadline();
    }

    public final List getImages() {
        List<NativeAd.Image> images = this.zzdkl.getImages();
        if (images == null) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        for (NativeAd.Image next : images) {
            arrayList.add(new zzadf(next.getDrawable(), next.getUri(), next.getScale(), next.getWidth(), next.getHeight()));
        }
        return arrayList;
    }

    public final String getBody() {
        return this.zzdkl.getBody();
    }

    public final zzadt zzsc() {
        NativeAd.Image icon = this.zzdkl.getIcon();
        if (icon != null) {
            return new zzadf(icon.getDrawable(), icon.getUri(), icon.getScale(), icon.getWidth(), icon.getHeight());
        }
        return null;
    }

    public final String getCallToAction() {
        return this.zzdkl.getCallToAction();
    }

    public final double getStarRating() {
        return this.zzdkl.getStarRating();
    }

    public final String getStore() {
        return this.zzdkl.getStore();
    }

    public final String getPrice() {
        return this.zzdkl.getPrice();
    }

    public final void recordImpression() {
        this.zzdkl.recordImpression();
    }

    public final void zzu(IObjectWrapper iObjectWrapper) {
        this.zzdkl.handleClick((View) ObjectWrapper.unwrap(iObjectWrapper));
    }

    public final void zzv(IObjectWrapper iObjectWrapper) {
        this.zzdkl.trackView((View) ObjectWrapper.unwrap(iObjectWrapper));
    }

    public final void zzc(IObjectWrapper iObjectWrapper, IObjectWrapper iObjectWrapper2, IObjectWrapper iObjectWrapper3) {
        this.zzdkl.trackViews((View) ObjectWrapper.unwrap(iObjectWrapper), (HashMap) ObjectWrapper.unwrap(iObjectWrapper2), (HashMap) ObjectWrapper.unwrap(iObjectWrapper3));
    }

    public final void zzw(IObjectWrapper iObjectWrapper) {
        this.zzdkl.untrackView((View) ObjectWrapper.unwrap(iObjectWrapper));
    }

    public final boolean getOverrideImpressionRecording() {
        return this.zzdkl.getOverrideImpressionRecording();
    }

    public final boolean getOverrideClickHandling() {
        return this.zzdkl.getOverrideClickHandling();
    }

    public final Bundle getExtras() {
        return this.zzdkl.getExtras();
    }

    public final zzyi getVideoController() {
        if (this.zzdkl.getVideoController() != null) {
            return this.zzdkl.getVideoController().zzdu();
        }
        return null;
    }

    public final IObjectWrapper zztv() {
        View adChoicesContent = this.zzdkl.getAdChoicesContent();
        if (adChoicesContent == null) {
            return null;
        }
        return ObjectWrapper.wrap(adChoicesContent);
    }

    public final IObjectWrapper zztw() {
        View zzacy = this.zzdkl.zzacy();
        if (zzacy == null) {
            return null;
        }
        return ObjectWrapper.wrap(zzacy);
    }
}
