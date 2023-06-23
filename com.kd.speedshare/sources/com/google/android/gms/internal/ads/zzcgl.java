package com.google.android.gms.internal.ads;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import androidx.collection.SimpleArrayMap;
import com.google.android.gms.ads.internal.zzq;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;
import java.util.Arrays;
import java.util.List;

/* compiled from: com.google.android.gms:play-services-ads@@19.2.0 */
public final class zzcgl extends zzaeo {
    private final Context zzaah;
    private final zzcck zzfuu;
    /* access modifiers changed from: private */
    public zzccd zzfya;
    private zzcdg zzgbm;

    public zzcgl(Context context, zzcck zzcck, zzcdg zzcdg, zzccd zzccd) {
        this.zzaah = context;
        this.zzfuu = zzcck;
        this.zzgbm = zzcdg;
        this.zzfya = zzccd;
    }

    public final IObjectWrapper zzsb() {
        return null;
    }

    public final String zzcw(String str) {
        return this.zzfuu.zzalq().get(str);
    }

    public final zzadt zzcx(String str) {
        return this.zzfuu.zzalo().get(str);
    }

    public final List<String> getAvailableAssetNames() {
        SimpleArrayMap<String, zzadf> zzalo = this.zzfuu.zzalo();
        SimpleArrayMap<String, String> zzalq = this.zzfuu.zzalq();
        String[] strArr = new String[(zzalo.size() + zzalq.size())];
        int i = 0;
        int i2 = 0;
        int i3 = 0;
        while (i2 < zzalo.size()) {
            strArr[i3] = zzalo.keyAt(i2);
            i2++;
            i3++;
        }
        while (i < zzalq.size()) {
            strArr[i3] = zzalq.keyAt(i);
            i++;
            i3++;
        }
        return Arrays.asList(strArr);
    }

    public final String getCustomTemplateId() {
        return this.zzfuu.getCustomTemplateId();
    }

    public final void performClick(String str) {
        zzccd zzccd = this.zzfya;
        if (zzccd != null) {
            zzccd.zzfy(str);
        }
    }

    public final void recordImpression() {
        zzccd zzccd = this.zzfya;
        if (zzccd != null) {
            zzccd.zzakv();
        }
    }

    public final zzyi getVideoController() {
        return this.zzfuu.getVideoController();
    }

    public final void destroy() {
        zzccd zzccd = this.zzfya;
        if (zzccd != null) {
            zzccd.destroy();
        }
        this.zzfya = null;
        this.zzgbm = null;
    }

    public final IObjectWrapper zzsg() {
        return ObjectWrapper.wrap(this.zzaah);
    }

    public final boolean zzp(IObjectWrapper iObjectWrapper) {
        Object unwrap = ObjectWrapper.unwrap(iObjectWrapper);
        if (!(unwrap instanceof ViewGroup)) {
            return false;
        }
        zzcdg zzcdg = this.zzgbm;
        if (!(zzcdg != null && zzcdg.zza((ViewGroup) unwrap))) {
            return false;
        }
        this.zzfuu.zzall().zza((zzadh) new zzcgk(this));
        return true;
    }

    public final boolean zzsh() {
        zzccd zzccd = this.zzfya;
        if ((zzccd == null || zzccd.zzalc()) && this.zzfuu.zzalm() != null && this.zzfuu.zzall() == null) {
            return true;
        }
        return false;
    }

    public final boolean zzsi() {
        IObjectWrapper zzaln = this.zzfuu.zzaln();
        if (zzaln != null) {
            zzq.zzll().zzab(zzaln);
            return true;
        }
        zzaxv.zzfd("Trying to start OMID session before creation.");
        return false;
    }

    public final void zzq(IObjectWrapper iObjectWrapper) {
        zzccd zzccd;
        Object unwrap = ObjectWrapper.unwrap(iObjectWrapper);
        if ((unwrap instanceof View) && this.zzfuu.zzaln() != null && (zzccd = this.zzfya) != null) {
            zzccd.zzaa((View) unwrap);
        }
    }

    public final void zzsj() {
        String zzalp = this.zzfuu.zzalp();
        if ("Google".equals(zzalp)) {
            zzaxv.zzfd("Illegal argument specified for omid partner name.");
            return;
        }
        zzccd zzccd = this.zzfya;
        if (zzccd != null) {
            zzccd.zzg(zzalp, false);
        }
    }
}
