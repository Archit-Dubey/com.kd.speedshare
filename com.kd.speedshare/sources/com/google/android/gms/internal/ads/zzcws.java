package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.widget.FrameLayout;
import com.google.android.gms.ads.doubleclick.AppEventListener;
import com.google.android.gms.ads.internal.zzq;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;
import com.google.android.gms.internal.ads.zzbrx;
import com.google.android.gms.internal.ads.zzbxa;
import java.util.Collections;

/* compiled from: com.google.android.gms:play-services-ads@@19.2.0 */
public final class zzcws extends zzwv implements zzbuw {
    /* access modifiers changed from: private */
    public final ViewGroup zzfng;
    /* access modifiers changed from: private */
    public final zzbif zzgmd;
    /* access modifiers changed from: private */
    public zzbnc zzgoq;
    private final Context zzgov;
    private final zzdlc zzgow = new zzdlc();
    /* access modifiers changed from: private */
    public final zzcxb zzgpa = new zzcxb();
    /* access modifiers changed from: private */
    public final zzcwy zzgpb = new zzcwy();
    /* access modifiers changed from: private */
    public final zzcxa zzgpc = new zzcxa();
    /* access modifiers changed from: private */
    public final zzcww zzgpd = new zzcww();
    /* access modifiers changed from: private */
    public final zzbus zzgpe;
    private zzvh zzgpf;
    private zzabo zzgpg;
    /* access modifiers changed from: private */
    public zzdvf<zzbnc> zzgph;

    public zzcws(zzbif zzbif, Context context, zzvh zzvh, String str) {
        this.zzfng = new FrameLayout(context);
        this.zzgmd = zzbif;
        this.zzgov = context;
        this.zzgow.zzd(zzvh).zzgs(str);
        zzbus zzadi = zzbif.zzadi();
        this.zzgpe = zzadi;
        zzadi.zza(this, this.zzgmd.zzade());
        this.zzgpf = zzvh;
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

    public final void zza(zzsg zzsg) {
    }

    public final void zza(zzvo zzvo) {
    }

    public final void zza(zzyo zzyo) {
    }

    public final void zzbo(String str) {
    }

    public final IObjectWrapper zzkf() {
        Preconditions.checkMainThread("destroy must be called on the main UI thread.");
        return ObjectWrapper.wrap(this.zzfng);
    }

    public final synchronized boolean zza(zzve zzve) {
        this.zzgow.zzd(this.zzgpf);
        this.zzgow.zzbo(this.zzgpf.zzchp);
        return zzg(zzve);
    }

    /* JADX WARNING: Code restructure failed: missing block: B:11:0x0027, code lost:
        return false;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private final synchronized boolean zzg(com.google.android.gms.internal.ads.zzve r4) {
        /*
            r3 = this;
            monitor-enter(r3)
            java.lang.String r0 = "loadAd must be called on the main UI thread."
            com.google.android.gms.common.internal.Preconditions.checkMainThread(r0)     // Catch:{ all -> 0x0081 }
            com.google.android.gms.ads.internal.zzq.zzkw()     // Catch:{ all -> 0x0081 }
            android.content.Context r0 = r3.zzgov     // Catch:{ all -> 0x0081 }
            boolean r0 = com.google.android.gms.internal.ads.zzaye.zzbf(r0)     // Catch:{ all -> 0x0081 }
            r1 = 0
            if (r0 == 0) goto L_0x0028
            com.google.android.gms.internal.ads.zzuw r0 = r4.zzchg     // Catch:{ all -> 0x0081 }
            if (r0 != 0) goto L_0x0028
            java.lang.String r4 = "Failed to load the ad because app ID is missing."
            com.google.android.gms.internal.ads.zzaxv.zzfb(r4)     // Catch:{ all -> 0x0081 }
            com.google.android.gms.internal.ads.zzcxb r4 = r3.zzgpa     // Catch:{ all -> 0x0081 }
            if (r4 == 0) goto L_0x0026
            com.google.android.gms.internal.ads.zzcxb r4 = r3.zzgpa     // Catch:{ all -> 0x0081 }
            r0 = 8
            r4.onAdFailedToLoad(r0)     // Catch:{ all -> 0x0081 }
        L_0x0026:
            monitor-exit(r3)
            return r1
        L_0x0028:
            com.google.android.gms.internal.ads.zzdvf<com.google.android.gms.internal.ads.zzbnc> r0 = r3.zzgph     // Catch:{ all -> 0x0081 }
            if (r0 == 0) goto L_0x002e
            monitor-exit(r3)
            return r1
        L_0x002e:
            android.content.Context r0 = r3.zzgov     // Catch:{ all -> 0x0081 }
            boolean r2 = r4.zzcgv     // Catch:{ all -> 0x0081 }
            com.google.android.gms.internal.ads.zzdlj.zze(r0, r2)     // Catch:{ all -> 0x0081 }
            com.google.android.gms.internal.ads.zzdlc r0 = r3.zzgow     // Catch:{ all -> 0x0081 }
            com.google.android.gms.internal.ads.zzdlc r4 = r0.zzh((com.google.android.gms.internal.ads.zzve) r4)     // Catch:{ all -> 0x0081 }
            com.google.android.gms.internal.ads.zzdla r4 = r4.zzaso()     // Catch:{ all -> 0x0081 }
            com.google.android.gms.internal.ads.zzabx<java.lang.Boolean> r0 = com.google.android.gms.internal.ads.zzacm.zzdao     // Catch:{ all -> 0x0081 }
            java.lang.Object r0 = r0.get()     // Catch:{ all -> 0x0081 }
            java.lang.Boolean r0 = (java.lang.Boolean) r0     // Catch:{ all -> 0x0081 }
            boolean r0 = r0.booleanValue()     // Catch:{ all -> 0x0081 }
            r2 = 1
            if (r0 == 0) goto L_0x0063
            com.google.android.gms.internal.ads.zzdlc r0 = r3.zzgow     // Catch:{ all -> 0x0081 }
            com.google.android.gms.internal.ads.zzvh r0 = r0.zzkh()     // Catch:{ all -> 0x0081 }
            boolean r0 = r0.zzchm     // Catch:{ all -> 0x0081 }
            if (r0 == 0) goto L_0x0063
            com.google.android.gms.internal.ads.zzcxb r0 = r3.zzgpa     // Catch:{ all -> 0x0081 }
            if (r0 == 0) goto L_0x0063
            com.google.android.gms.internal.ads.zzcxb r4 = r3.zzgpa     // Catch:{ all -> 0x0081 }
            r4.onAdFailedToLoad(r2)     // Catch:{ all -> 0x0081 }
            monitor-exit(r3)
            return r1
        L_0x0063:
            com.google.android.gms.internal.ads.zzbny r4 = r3.zzb((com.google.android.gms.internal.ads.zzdla) r4)     // Catch:{ all -> 0x0081 }
            com.google.android.gms.internal.ads.zzbpz r0 = r4.zzaex()     // Catch:{ all -> 0x0081 }
            com.google.android.gms.internal.ads.zzdvf r0 = r0.zzaiq()     // Catch:{ all -> 0x0081 }
            r3.zzgph = r0     // Catch:{ all -> 0x0081 }
            com.google.android.gms.internal.ads.zzcwv r1 = new com.google.android.gms.internal.ads.zzcwv     // Catch:{ all -> 0x0081 }
            r1.<init>(r3, r4)     // Catch:{ all -> 0x0081 }
            com.google.android.gms.internal.ads.zzbif r4 = r3.zzgmd     // Catch:{ all -> 0x0081 }
            java.util.concurrent.Executor r4 = r4.zzade()     // Catch:{ all -> 0x0081 }
            com.google.android.gms.internal.ads.zzdux.zza(r0, r1, r4)     // Catch:{ all -> 0x0081 }
            monitor-exit(r3)
            return r2
        L_0x0081:
            r4 = move-exception
            monitor-exit(r3)
            throw r4
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzcws.zzg(com.google.android.gms.internal.ads.zzve):boolean");
    }

    private final synchronized zzbny zzb(zzdla zzdla) {
        if (((Boolean) zzwg.zzpw().zzd(zzaav.zzcxj)).booleanValue()) {
            return this.zzgmd.zzadl().zzc(new zzbrx.zza().zzce(this.zzgov).zza(zzdla).zzaiz()).zzc(new zzbxa.zza().zzajw()).zza(new zzcvw(this.zzgpg)).zzb(new zzcay(zzccv.zzfxs, (zzwj) null)).zza(new zzbou(this.zzgpe)).zzb(new zzbnb(this.zzfng)).zzafk();
        }
        return this.zzgmd.zzadl().zzc(new zzbrx.zza().zzce(this.zzgov).zza(zzdla).zzaiz()).zzc(new zzbxa.zza().zza((zzuu) this.zzgpa, this.zzgmd.zzade()).zza((zzuu) this.zzgpb, this.zzgmd.zzade()).zza((zzbsl) this.zzgpa, this.zzgmd.zzade()).zza((zzbua) this.zzgpa, this.zzgmd.zzade()).zza((zzbsq) this.zzgpa, this.zzgmd.zzade()).zza((AppEventListener) this.zzgpc, this.zzgmd.zzade()).zza((zzbup) this.zzgpd, this.zzgmd.zzade()).zzajw()).zza(new zzcvw(this.zzgpg)).zzb(new zzcay(zzccv.zzfxs, (zzwj) null)).zza(new zzbou(this.zzgpe)).zzb(new zzbnb(this.zzfng)).zzafk();
    }

    public final synchronized void destroy() {
        Preconditions.checkMainThread("destroy must be called on the main UI thread.");
        if (this.zzgoq != null) {
            this.zzgoq.destroy();
        }
    }

    public final synchronized void pause() {
        Preconditions.checkMainThread("pause must be called on the main UI thread.");
        if (this.zzgoq != null) {
            this.zzgoq.zzaig().zzca((Context) null);
        }
    }

    public final synchronized void resume() {
        Preconditions.checkMainThread("resume must be called on the main UI thread.");
        if (this.zzgoq != null) {
            this.zzgoq.zzaig().zzcb((Context) null);
        }
    }

    public final void zza(zzwj zzwj) {
        Preconditions.checkMainThread("setAdListener must be called on the main UI thread.");
        this.zzgpa.zzc(zzwj);
    }

    public final zzwj zzkl() {
        return this.zzgpa.zzapw();
    }

    public final void zza(zzxe zzxe) {
        Preconditions.checkMainThread("setAppEventListener must be called on the main UI thread.");
        this.zzgpc.zzb(zzxe);
    }

    public final zzxe zzkk() {
        return this.zzgpc.zzapv();
    }

    public final synchronized void zzkg() {
        Preconditions.checkMainThread("recordManualImpression must be called on the main UI thread.");
        if (this.zzgoq != null) {
            this.zzgoq.zzkg();
        }
    }

    public final synchronized zzvh zzkh() {
        Preconditions.checkMainThread("getAdSize must be called on the main UI thread.");
        if (this.zzgoq != null) {
            return zzdld.zzb(this.zzgov, Collections.singletonList(this.zzgoq.zzahj()));
        }
        return this.zzgow.zzkh();
    }

    public final synchronized void zza(zzvh zzvh) {
        Preconditions.checkMainThread("setAdSize must be called on the main UI thread.");
        this.zzgow.zzd(zzvh);
        this.zzgpf = zzvh;
        if (this.zzgoq != null) {
            this.zzgoq.zza(this.zzfng, zzvh);
        }
    }

    public final synchronized String getMediationAdapterClassName() {
        if (this.zzgoq == null || this.zzgoq.zzaih() == null) {
            return null;
        }
        return this.zzgoq.zzaih().getMediationAdapterClassName();
    }

    public final synchronized String zzki() {
        if (this.zzgoq == null || this.zzgoq.zzaih() == null) {
            return null;
        }
        return this.zzgoq.zzaih().getMediationAdapterClassName();
    }

    public final synchronized zzyd zzkj() {
        if (!((Boolean) zzwg.zzpw().zzd(zzaav.zzcwq)).booleanValue()) {
            return null;
        }
        if (this.zzgoq == null) {
            return null;
        }
        return this.zzgoq.zzaih();
    }

    public final synchronized void zza(zzxk zzxk) {
        Preconditions.checkMainThread("setCorrelationIdProvider must be called on the main UI thread");
        this.zzgow.zzc(zzxk);
    }

    public final synchronized void setManualImpressionsEnabled(boolean z) {
        Preconditions.checkMainThread("setManualImpressionsEnabled must be called from the main thread.");
        this.zzgow.zzbp(z);
    }

    public final synchronized boolean isLoading() {
        return this.zzgph != null && !this.zzgph.isDone();
    }

    public final synchronized zzyi getVideoController() {
        Preconditions.checkMainThread("getVideoController must be called from the main thread.");
        if (this.zzgoq == null) {
            return null;
        }
        return this.zzgoq.getVideoController();
    }

    public final synchronized String getAdUnitId() {
        return this.zzgow.zzasm();
    }

    public final synchronized void zza(zzaaa zzaaa) {
        Preconditions.checkMainThread("setVideoOptions must be called on the main UI thread.");
        this.zzgow.zzc(zzaaa);
    }

    public final void zza(zzwi zzwi) {
        Preconditions.checkMainThread("setAdListener must be called on the main UI thread.");
        this.zzgpb.zzb(zzwi);
    }

    public final synchronized void zza(zzabo zzabo) {
        Preconditions.checkMainThread("setOnCustomRenderedAdLoadedListener must be called on the main UI thread.");
        this.zzgpg = zzabo;
    }

    public final synchronized void zzajf() {
        boolean z;
        ViewParent parent = this.zzfng.getParent();
        if (!(parent instanceof View)) {
            z = false;
        } else {
            View view = (View) parent;
            z = zzq.zzkw().zza(view, view.getContext());
        }
        if (z) {
            if (!(this.zzgoq == null || this.zzgoq.zzahp() == null)) {
                this.zzgow.zzd(zzdld.zzb(this.zzgov, Collections.singletonList(this.zzgoq.zzahp())));
            }
            zzg(this.zzgow.zzasl());
            return;
        }
        this.zzgpe.zzdu(60);
    }

    public final void zza(zzyc zzyc) {
        Preconditions.checkMainThread("setPaidEventListener must be called on the main UI thread.");
        this.zzgpd.zzb(zzyc);
    }

    public final void zza(zzwz zzwz) {
        Preconditions.checkMainThread("setAdMetadataListener must be called on the main UI thread.");
    }

    public final Bundle getAdMetadata() {
        Preconditions.checkMainThread("getAdMetadata must be called on the main UI thread.");
        return new Bundle();
    }
}
