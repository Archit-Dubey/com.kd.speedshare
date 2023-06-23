package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Bundle;
import android.os.RemoteException;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.RelativeLayout;
import com.google.android.gms.ads.internal.overlay.zzp;
import com.google.android.gms.ads.internal.overlay.zzy;
import com.google.android.gms.ads.internal.zzq;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;
import java.util.Collections;
import java.util.concurrent.atomic.AtomicBoolean;

/* compiled from: com.google.android.gms:play-services-ads@@19.2.0 */
public final class zzdha extends zzwv implements zzy, zzbuf, zzsa {
    /* access modifiers changed from: private */
    public final zzbbd zzbov;
    private final String zzbum;
    /* access modifiers changed from: private */
    public final ViewGroup zzfng;
    private final zzbif zzgmd;
    private final Context zzgov;
    private AtomicBoolean zzgwm = new AtomicBoolean();
    private final zzdgr zzgwn;
    /* access modifiers changed from: private */
    public final zzdhi zzgwo;
    private long zzgwp;
    private zzbml zzgwq;
    protected zzbmw zzgwr;

    public zzdha(zzbif zzbif, Context context, String str, zzdgr zzdgr, zzdhi zzdhi, zzbbd zzbbd) {
        this.zzfng = new FrameLayout(context);
        this.zzgmd = zzbif;
        this.zzgov = context;
        this.zzbum = str;
        this.zzgwn = zzdgr;
        this.zzgwo = zzdhi;
        zzdhi.zza(this);
        this.zzbov = zzbbd;
    }

    public final boolean isReady() {
        return false;
    }

    public final void setImmersiveMode(boolean z) {
    }

    public final void setUserId(String str) {
    }

    public final void showInterstitial() {
    }

    public final void stopLoading() {
    }

    public final void zza(zzaqs zzaqs) {
    }

    public final void zza(zzaqy zzaqy, String str) {
    }

    public final void zza(zzatq zzatq) {
    }

    public final void zza(zzwi zzwi) {
    }

    public final void zza(zzwj zzwj) {
    }

    public final void zza(zzwz zzwz) {
    }

    public final void zza(zzxe zzxe) {
    }

    public final void zza(zzyc zzyc) {
    }

    public final void zza(zzyo zzyo) {
    }

    public final void zzbo(String str) {
    }

    public final zzxe zzkk() {
        return null;
    }

    public final zzwj zzkl() {
        return null;
    }

    public final IObjectWrapper zzkf() {
        Preconditions.checkMainThread("getAdFrame must be called on the main UI thread.");
        return ObjectWrapper.wrap(this.zzfng);
    }

    public final void zza(zzvo zzvo) {
        this.zzgwn.zza(zzvo);
    }

    public final synchronized boolean zza(zzve zzve) throws RemoteException {
        Preconditions.checkMainThread("loadAd must be called on the main UI thread.");
        zzq.zzkw();
        if (zzaye.zzbf(this.zzgov) && zzve.zzchg == null) {
            zzaxv.zzfb("Failed to load the ad because app ID is missing.");
            this.zzgwo.onAdFailedToLoad(8);
            return false;
        } else if (isLoading()) {
            return false;
        } else {
            this.zzgwm = new AtomicBoolean();
            return this.zzgwn.zza(zzve, this.zzbum, new zzdhb(this), new zzdhe(this));
        }
    }

    /* access modifiers changed from: private */
    public final com.google.android.gms.ads.internal.overlay.zzq zza(zzbmw zzbmw) {
        boolean zzabs = zzbmw.zzabs();
        int intValue = ((Integer) zzwg.zzpw().zzd(zzaav.zzctd)).intValue();
        zzp zzp = new zzp();
        zzp.size = 50;
        zzp.paddingLeft = zzabs ? intValue : 0;
        zzp.paddingRight = zzabs ? 0 : intValue;
        zzp.paddingTop = 0;
        zzp.paddingBottom = intValue;
        return new com.google.android.gms.ads.internal.overlay.zzq(this.zzgov, zzp, this);
    }

    /* access modifiers changed from: private */
    public static RelativeLayout.LayoutParams zzb(zzbmw zzbmw) {
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, -2);
        layoutParams.addRule(10);
        layoutParams.addRule(zzbmw.zzabs() ? 11 : 9);
        return layoutParams;
    }

    /* access modifiers changed from: private */
    public final void zzc(zzbmw zzbmw) {
        zzbmw.zza((zzsa) this);
    }

    public final void zzuk() {
        zzaru();
    }

    public final void zzms() {
        zzaru();
    }

    public final void zzajb() {
        if (this.zzgwr != null) {
            this.zzgwp = zzq.zzld().elapsedRealtime();
            int zzahc = this.zzgwr.zzahc();
            if (zzahc > 0) {
                zzbml zzbml = new zzbml(this.zzgmd.zzadf(), zzq.zzld());
                this.zzgwq = zzbml;
                zzbml.zza(zzahc, new zzdhc(this));
            }
        }
    }

    /* access modifiers changed from: private */
    /* renamed from: zzarr */
    public final void zzaru() {
        if (this.zzgwm.compareAndSet(false, true)) {
            zzbmw zzbmw = this.zzgwr;
            if (!(zzbmw == null || zzbmw.zzahm() == null)) {
                this.zzgwo.zzb(this.zzgwr.zzahm());
            }
            this.zzgwo.onAdClosed();
            this.zzfng.removeAllViews();
            zzbml zzbml = this.zzgwq;
            if (zzbml != null) {
                zzq.zzkz().zzb(zzbml);
            }
            zzbmw zzbmw2 = this.zzgwr;
            if (zzbmw2 != null) {
                zzbmw2.zzfd(zzq.zzld().elapsedRealtime() - this.zzgwp);
            }
            destroy();
        }
    }

    /* access modifiers changed from: private */
    public final zzvh zzars() {
        return zzdld.zzb(this.zzgov, Collections.singletonList(this.zzgwr.zzahj()));
    }

    public final synchronized void destroy() {
        Preconditions.checkMainThread("destroy must be called on the main UI thread.");
        if (this.zzgwr != null) {
            this.zzgwr.destroy();
        }
    }

    public final synchronized void pause() {
        Preconditions.checkMainThread("pause must be called on the main UI thread.");
    }

    public final synchronized void resume() {
        Preconditions.checkMainThread("resume must be called on the main UI thread.");
    }

    public final void zza(zzsg zzsg) {
        this.zzgwo.zzb(zzsg);
    }

    public final synchronized zzvh zzkh() {
        Preconditions.checkMainThread("getAdSize must be called on the main UI thread.");
        if (this.zzgwr == null) {
            return null;
        }
        return zzdld.zzb(this.zzgov, Collections.singletonList(this.zzgwr.zzahj()));
    }

    public final synchronized void zza(zzvh zzvh) {
        Preconditions.checkMainThread("setAdSize must be called on the main UI thread.");
    }

    public final synchronized String getMediationAdapterClassName() {
        return null;
    }

    public final synchronized String zzki() {
        return null;
    }

    public final synchronized zzyd zzkj() {
        return null;
    }

    public final synchronized boolean isLoading() {
        return this.zzgwn.isLoading();
    }

    public final synchronized String getAdUnitId() {
        return this.zzbum;
    }

    public final synchronized void zzkg() {
    }

    public final synchronized void zza(zzxk zzxk) {
    }

    public final synchronized void setManualImpressionsEnabled(boolean z) {
    }

    public final synchronized zzyi getVideoController() {
        return null;
    }

    public final synchronized void zza(zzaaa zzaaa) {
    }

    public final synchronized void zza(zzabo zzabo) {
    }

    public final Bundle getAdMetadata() {
        return new Bundle();
    }

    /* access modifiers changed from: package-private */
    public final /* synthetic */ void zzart() {
        this.zzgmd.zzade().execute(new zzdgz(this));
    }
}
