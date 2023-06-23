package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.view.View;
import com.google.android.gms.ads.formats.NativeAd;
import com.google.android.gms.ads.mediation.NativeContentAdMapper;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

/* compiled from: com.google.android.gms:play-services-ads-lite@@19.2.0 */
public final class zzant extends zzane {
    private final NativeContentAdMapper zzdkq;

    public zzant(NativeContentAdMapper nativeContentAdMapper) {
        this.zzdkq = nativeContentAdMapper;
    }

    public final zzadl zzsd() {
        return null;
    }

    public final IObjectWrapper zzse() {
        return null;
    }

    public final String getHeadline() {
        return this.zzdkq.getHeadline();
    }

    public final List getImages() {
        List<NativeAd.Image> images = this.zzdkq.getImages();
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
        return this.zzdkq.getBody();
    }

    public final zzadt zzsf() {
        NativeAd.Image logo = this.zzdkq.getLogo();
        if (logo != null) {
            return new zzadf(logo.getDrawable(), logo.getUri(), logo.getScale(), logo.getWidth(), logo.getHeight());
        }
        return null;
    }

    public final String getCallToAction() {
        return this.zzdkq.getCallToAction();
    }

    public final String getAdvertiser() {
        return this.zzdkq.getAdvertiser();
    }

    public final void recordImpression() {
        this.zzdkq.recordImpression();
    }

    public final void zzu(IObjectWrapper iObjectWrapper) {
        this.zzdkq.handleClick((View) ObjectWrapper.unwrap(iObjectWrapper));
    }

    public final void zzv(IObjectWrapper iObjectWrapper) {
        this.zzdkq.trackView((View) ObjectWrapper.unwrap(iObjectWrapper));
    }

    public final void zzc(IObjectWrapper iObjectWrapper, IObjectWrapper iObjectWrapper2, IObjectWrapper iObjectWrapper3) {
        this.zzdkq.trackViews((View) ObjectWrapper.unwrap(iObjectWrapper), (HashMap) ObjectWrapper.unwrap(iObjectWrapper2), (HashMap) ObjectWrapper.unwrap(iObjectWrapper3));
    }

    public final void zzw(IObjectWrapper iObjectWrapper) {
        this.zzdkq.untrackView((View) ObjectWrapper.unwrap(iObjectWrapper));
    }

    public final boolean getOverrideImpressionRecording() {
        return this.zzdkq.getOverrideImpressionRecording();
    }

    public final boolean getOverrideClickHandling() {
        return this.zzdkq.getOverrideClickHandling();
    }

    public final Bundle getExtras() {
        return this.zzdkq.getExtras();
    }

    public final IObjectWrapper zztv() {
        View adChoicesContent = this.zzdkq.getAdChoicesContent();
        if (adChoicesContent == null) {
            return null;
        }
        return ObjectWrapper.wrap(adChoicesContent);
    }

    public final zzyi getVideoController() {
        if (this.zzdkq.getVideoController() != null) {
            return this.zzdkq.getVideoController().zzdu();
        }
        return null;
    }

    public final IObjectWrapper zztw() {
        View zzacy = this.zzdkq.zzacy();
        if (zzacy == null) {
            return null;
        }
        return ObjectWrapper.wrap(zzacy);
    }
}
