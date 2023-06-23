package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Bundle;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.dynamic.IObjectWrapper;
import java.util.concurrent.Executor;

/* compiled from: com.google.android.gms:play-services-ads@@19.2.0 */
public final class zzcxd extends zzwv {
    private final Executor zzflp;
    /* access modifiers changed from: private */
    public final zzbif zzgmd;
    private final Context zzgov;
    private final zzdlc zzgow;
    /* access modifiers changed from: private */
    public final zzcxb zzgpa = new zzcxb();
    /* access modifiers changed from: private */
    public final zzcxa zzgpc = new zzcxa();
    /* access modifiers changed from: private */
    public final zzcww zzgpd = new zzcww();
    private zzabo zzgpg;
    /* access modifiers changed from: private */
    public zzdvf<zzbzj> zzgph;
    /* access modifiers changed from: private */
    public final zzdiu zzgpu = new zzdiu(new zzdmi());
    /* access modifiers changed from: private */
    public zzbzj zzgpv;
    private boolean zzgpw;

    public zzcxd(zzbif zzbif, Context context, zzvh zzvh, String str) {
        zzdlc zzdlc = new zzdlc();
        this.zzgow = zzdlc;
        this.zzgpw = false;
        this.zzgmd = zzbif;
        zzdlc.zzd(zzvh).zzgs(str);
        this.zzflp = zzbif.zzade();
        this.zzgov = context;
    }

    public final zzyi getVideoController() {
        return null;
    }

    public final void setUserId(String str) {
    }

    public final void stopLoading() {
    }

    public final void zza(zzaqs zzaqs) {
    }

    public final void zza(zzaqy zzaqy, String str) {
    }

    public final void zza(zzsg zzsg) {
    }

    public final void zza(zzvh zzvh) {
    }

    public final void zza(zzvo zzvo) {
    }

    public final void zza(zzwi zzwi) {
    }

    public final void zza(zzyo zzyo) {
    }

    public final void zzbo(String str) {
    }

    public final IObjectWrapper zzkf() {
        return null;
    }

    public final void zzkg() {
    }

    public final zzvh zzkh() {
        return null;
    }

    /* JADX WARNING: Code restructure failed: missing block: B:11:0x0027, code lost:
        return false;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:30:0x0155, code lost:
        return false;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final synchronized boolean zza(com.google.android.gms.internal.ads.zzve r5) {
        /*
            r4 = this;
            monitor-enter(r4)
            java.lang.String r0 = "loadAd must be called on the main UI thread."
            com.google.android.gms.common.internal.Preconditions.checkMainThread(r0)     // Catch:{ all -> 0x0156 }
            com.google.android.gms.ads.internal.zzq.zzkw()     // Catch:{ all -> 0x0156 }
            android.content.Context r0 = r4.zzgov     // Catch:{ all -> 0x0156 }
            boolean r0 = com.google.android.gms.internal.ads.zzaye.zzbf(r0)     // Catch:{ all -> 0x0156 }
            r1 = 0
            if (r0 == 0) goto L_0x0028
            com.google.android.gms.internal.ads.zzuw r0 = r5.zzchg     // Catch:{ all -> 0x0156 }
            if (r0 != 0) goto L_0x0028
            java.lang.String r5 = "Failed to load the ad because app ID is missing."
            com.google.android.gms.internal.ads.zzaxv.zzfb(r5)     // Catch:{ all -> 0x0156 }
            com.google.android.gms.internal.ads.zzcxb r5 = r4.zzgpa     // Catch:{ all -> 0x0156 }
            if (r5 == 0) goto L_0x0026
            com.google.android.gms.internal.ads.zzcxb r5 = r4.zzgpa     // Catch:{ all -> 0x0156 }
            r0 = 8
            r5.onAdFailedToLoad(r0)     // Catch:{ all -> 0x0156 }
        L_0x0026:
            monitor-exit(r4)
            return r1
        L_0x0028:
            com.google.android.gms.internal.ads.zzdvf<com.google.android.gms.internal.ads.zzbzj> r0 = r4.zzgph     // Catch:{ all -> 0x0156 }
            if (r0 != 0) goto L_0x0154
            boolean r0 = r4.zzapx()     // Catch:{ all -> 0x0156 }
            if (r0 == 0) goto L_0x0034
            goto L_0x0154
        L_0x0034:
            android.content.Context r0 = r4.zzgov     // Catch:{ all -> 0x0156 }
            boolean r1 = r5.zzcgv     // Catch:{ all -> 0x0156 }
            com.google.android.gms.internal.ads.zzdlj.zze(r0, r1)     // Catch:{ all -> 0x0156 }
            r0 = 0
            r4.zzgpv = r0     // Catch:{ all -> 0x0156 }
            com.google.android.gms.internal.ads.zzdlc r0 = r4.zzgow     // Catch:{ all -> 0x0156 }
            com.google.android.gms.internal.ads.zzdlc r5 = r0.zzh((com.google.android.gms.internal.ads.zzve) r5)     // Catch:{ all -> 0x0156 }
            com.google.android.gms.internal.ads.zzdla r5 = r5.zzaso()     // Catch:{ all -> 0x0156 }
            com.google.android.gms.internal.ads.zzaag<java.lang.Boolean> r0 = com.google.android.gms.internal.ads.zzaav.zzcxm     // Catch:{ all -> 0x0156 }
            com.google.android.gms.internal.ads.zzaar r1 = com.google.android.gms.internal.ads.zzwg.zzpw()     // Catch:{ all -> 0x0156 }
            java.lang.Object r0 = r1.zzd(r0)     // Catch:{ all -> 0x0156 }
            java.lang.Boolean r0 = (java.lang.Boolean) r0     // Catch:{ all -> 0x0156 }
            boolean r0 = r0.booleanValue()     // Catch:{ all -> 0x0156 }
            if (r0 == 0) goto L_0x0095
            com.google.android.gms.internal.ads.zzbif r0 = r4.zzgmd     // Catch:{ all -> 0x0156 }
            com.google.android.gms.internal.ads.zzcah r0 = r0.zzado()     // Catch:{ all -> 0x0156 }
            com.google.android.gms.internal.ads.zzbrx$zza r1 = new com.google.android.gms.internal.ads.zzbrx$zza     // Catch:{ all -> 0x0156 }
            r1.<init>()     // Catch:{ all -> 0x0156 }
            android.content.Context r2 = r4.zzgov     // Catch:{ all -> 0x0156 }
            com.google.android.gms.internal.ads.zzbrx$zza r1 = r1.zzce(r2)     // Catch:{ all -> 0x0156 }
            com.google.android.gms.internal.ads.zzbrx$zza r5 = r1.zza((com.google.android.gms.internal.ads.zzdla) r5)     // Catch:{ all -> 0x0156 }
            com.google.android.gms.internal.ads.zzbrx r5 = r5.zzaiz()     // Catch:{ all -> 0x0156 }
            com.google.android.gms.internal.ads.zzcah r5 = r0.zzd((com.google.android.gms.internal.ads.zzbrx) r5)     // Catch:{ all -> 0x0156 }
            com.google.android.gms.internal.ads.zzbxa$zza r0 = new com.google.android.gms.internal.ads.zzbxa$zza     // Catch:{ all -> 0x0156 }
            r0.<init>()     // Catch:{ all -> 0x0156 }
            com.google.android.gms.internal.ads.zzbxa r0 = r0.zzajw()     // Catch:{ all -> 0x0156 }
            com.google.android.gms.internal.ads.zzcah r5 = r5.zzd((com.google.android.gms.internal.ads.zzbxa) r0)     // Catch:{ all -> 0x0156 }
            com.google.android.gms.internal.ads.zzcvw r0 = new com.google.android.gms.internal.ads.zzcvw     // Catch:{ all -> 0x0156 }
            com.google.android.gms.internal.ads.zzabo r1 = r4.zzgpg     // Catch:{ all -> 0x0156 }
            r0.<init>(r1)     // Catch:{ all -> 0x0156 }
            com.google.android.gms.internal.ads.zzcah r5 = r5.zzb(r0)     // Catch:{ all -> 0x0156 }
            com.google.android.gms.internal.ads.zzcae r5 = r5.zzafu()     // Catch:{ all -> 0x0156 }
            goto L_0x013d
        L_0x0095:
            com.google.android.gms.internal.ads.zzbxa$zza r0 = new com.google.android.gms.internal.ads.zzbxa$zza     // Catch:{ all -> 0x0156 }
            r0.<init>()     // Catch:{ all -> 0x0156 }
            com.google.android.gms.internal.ads.zzdiu r1 = r4.zzgpu     // Catch:{ all -> 0x0156 }
            if (r1 == 0) goto L_0x00c1
            com.google.android.gms.internal.ads.zzdiu r1 = r4.zzgpu     // Catch:{ all -> 0x0156 }
            com.google.android.gms.internal.ads.zzbif r2 = r4.zzgmd     // Catch:{ all -> 0x0156 }
            java.util.concurrent.Executor r2 = r2.zzade()     // Catch:{ all -> 0x0156 }
            com.google.android.gms.internal.ads.zzbxa$zza r1 = r0.zza((com.google.android.gms.internal.ads.zzbsl) r1, (java.util.concurrent.Executor) r2)     // Catch:{ all -> 0x0156 }
            com.google.android.gms.internal.ads.zzdiu r2 = r4.zzgpu     // Catch:{ all -> 0x0156 }
            com.google.android.gms.internal.ads.zzbif r3 = r4.zzgmd     // Catch:{ all -> 0x0156 }
            java.util.concurrent.Executor r3 = r3.zzade()     // Catch:{ all -> 0x0156 }
            com.google.android.gms.internal.ads.zzbxa$zza r1 = r1.zza((com.google.android.gms.internal.ads.zzbua) r2, (java.util.concurrent.Executor) r3)     // Catch:{ all -> 0x0156 }
            com.google.android.gms.internal.ads.zzdiu r2 = r4.zzgpu     // Catch:{ all -> 0x0156 }
            com.google.android.gms.internal.ads.zzbif r3 = r4.zzgmd     // Catch:{ all -> 0x0156 }
            java.util.concurrent.Executor r3 = r3.zzade()     // Catch:{ all -> 0x0156 }
            r1.zza((com.google.android.gms.internal.ads.zzbsq) r2, (java.util.concurrent.Executor) r3)     // Catch:{ all -> 0x0156 }
        L_0x00c1:
            com.google.android.gms.internal.ads.zzbif r1 = r4.zzgmd     // Catch:{ all -> 0x0156 }
            com.google.android.gms.internal.ads.zzcah r1 = r1.zzado()     // Catch:{ all -> 0x0156 }
            com.google.android.gms.internal.ads.zzbrx$zza r2 = new com.google.android.gms.internal.ads.zzbrx$zza     // Catch:{ all -> 0x0156 }
            r2.<init>()     // Catch:{ all -> 0x0156 }
            android.content.Context r3 = r4.zzgov     // Catch:{ all -> 0x0156 }
            com.google.android.gms.internal.ads.zzbrx$zza r2 = r2.zzce(r3)     // Catch:{ all -> 0x0156 }
            com.google.android.gms.internal.ads.zzbrx$zza r5 = r2.zza((com.google.android.gms.internal.ads.zzdla) r5)     // Catch:{ all -> 0x0156 }
            com.google.android.gms.internal.ads.zzbrx r5 = r5.zzaiz()     // Catch:{ all -> 0x0156 }
            com.google.android.gms.internal.ads.zzcah r5 = r1.zzd((com.google.android.gms.internal.ads.zzbrx) r5)     // Catch:{ all -> 0x0156 }
            com.google.android.gms.internal.ads.zzcxb r1 = r4.zzgpa     // Catch:{ all -> 0x0156 }
            com.google.android.gms.internal.ads.zzbif r2 = r4.zzgmd     // Catch:{ all -> 0x0156 }
            java.util.concurrent.Executor r2 = r2.zzade()     // Catch:{ all -> 0x0156 }
            com.google.android.gms.internal.ads.zzbxa$zza r0 = r0.zza((com.google.android.gms.internal.ads.zzbsl) r1, (java.util.concurrent.Executor) r2)     // Catch:{ all -> 0x0156 }
            com.google.android.gms.internal.ads.zzcxb r1 = r4.zzgpa     // Catch:{ all -> 0x0156 }
            com.google.android.gms.internal.ads.zzbif r2 = r4.zzgmd     // Catch:{ all -> 0x0156 }
            java.util.concurrent.Executor r2 = r2.zzade()     // Catch:{ all -> 0x0156 }
            com.google.android.gms.internal.ads.zzbxa$zza r0 = r0.zza((com.google.android.gms.internal.ads.zzbua) r1, (java.util.concurrent.Executor) r2)     // Catch:{ all -> 0x0156 }
            com.google.android.gms.internal.ads.zzcxb r1 = r4.zzgpa     // Catch:{ all -> 0x0156 }
            com.google.android.gms.internal.ads.zzbif r2 = r4.zzgmd     // Catch:{ all -> 0x0156 }
            java.util.concurrent.Executor r2 = r2.zzade()     // Catch:{ all -> 0x0156 }
            com.google.android.gms.internal.ads.zzbxa$zza r0 = r0.zza((com.google.android.gms.internal.ads.zzbsq) r1, (java.util.concurrent.Executor) r2)     // Catch:{ all -> 0x0156 }
            com.google.android.gms.internal.ads.zzcxb r1 = r4.zzgpa     // Catch:{ all -> 0x0156 }
            com.google.android.gms.internal.ads.zzbif r2 = r4.zzgmd     // Catch:{ all -> 0x0156 }
            java.util.concurrent.Executor r2 = r2.zzade()     // Catch:{ all -> 0x0156 }
            com.google.android.gms.internal.ads.zzbxa$zza r0 = r0.zza((com.google.android.gms.internal.ads.zzuu) r1, (java.util.concurrent.Executor) r2)     // Catch:{ all -> 0x0156 }
            com.google.android.gms.internal.ads.zzcxa r1 = r4.zzgpc     // Catch:{ all -> 0x0156 }
            com.google.android.gms.internal.ads.zzbif r2 = r4.zzgmd     // Catch:{ all -> 0x0156 }
            java.util.concurrent.Executor r2 = r2.zzade()     // Catch:{ all -> 0x0156 }
            com.google.android.gms.internal.ads.zzbxa$zza r0 = r0.zza((com.google.android.gms.ads.doubleclick.AppEventListener) r1, (java.util.concurrent.Executor) r2)     // Catch:{ all -> 0x0156 }
            com.google.android.gms.internal.ads.zzcww r1 = r4.zzgpd     // Catch:{ all -> 0x0156 }
            com.google.android.gms.internal.ads.zzbif r2 = r4.zzgmd     // Catch:{ all -> 0x0156 }
            java.util.concurrent.Executor r2 = r2.zzade()     // Catch:{ all -> 0x0156 }
            com.google.android.gms.internal.ads.zzbxa$zza r0 = r0.zza((com.google.android.gms.internal.ads.zzbup) r1, (java.util.concurrent.Executor) r2)     // Catch:{ all -> 0x0156 }
            com.google.android.gms.internal.ads.zzbxa r0 = r0.zzajw()     // Catch:{ all -> 0x0156 }
            com.google.android.gms.internal.ads.zzcah r5 = r5.zzd((com.google.android.gms.internal.ads.zzbxa) r0)     // Catch:{ all -> 0x0156 }
            com.google.android.gms.internal.ads.zzcvw r0 = new com.google.android.gms.internal.ads.zzcvw     // Catch:{ all -> 0x0156 }
            com.google.android.gms.internal.ads.zzabo r1 = r4.zzgpg     // Catch:{ all -> 0x0156 }
            r0.<init>(r1)     // Catch:{ all -> 0x0156 }
            com.google.android.gms.internal.ads.zzcah r5 = r5.zzb(r0)     // Catch:{ all -> 0x0156 }
            com.google.android.gms.internal.ads.zzcae r5 = r5.zzafu()     // Catch:{ all -> 0x0156 }
        L_0x013d:
            com.google.android.gms.internal.ads.zzbpz r0 = r5.zzaex()     // Catch:{ all -> 0x0156 }
            com.google.android.gms.internal.ads.zzdvf r0 = r0.zzaiq()     // Catch:{ all -> 0x0156 }
            r4.zzgph = r0     // Catch:{ all -> 0x0156 }
            com.google.android.gms.internal.ads.zzcxc r1 = new com.google.android.gms.internal.ads.zzcxc     // Catch:{ all -> 0x0156 }
            r1.<init>(r4, r5)     // Catch:{ all -> 0x0156 }
            java.util.concurrent.Executor r5 = r4.zzflp     // Catch:{ all -> 0x0156 }
            com.google.android.gms.internal.ads.zzdux.zza(r0, r1, r5)     // Catch:{ all -> 0x0156 }
            r5 = 1
            monitor-exit(r4)
            return r5
        L_0x0154:
            monitor-exit(r4)
            return r1
        L_0x0156:
            r5 = move-exception
            monitor-exit(r4)
            throw r5
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzcxd.zza(com.google.android.gms.internal.ads.zzve):boolean");
    }

    public final synchronized void destroy() {
        Preconditions.checkMainThread("destroy must be called on the main UI thread.");
        if (this.zzgpv != null) {
            this.zzgpv.zzaig().zzcc((Context) null);
        }
    }

    public final synchronized void pause() {
        Preconditions.checkMainThread("pause must be called on the main UI thread.");
        if (this.zzgpv != null) {
            this.zzgpv.zzaig().zzca((Context) null);
        }
    }

    public final synchronized void resume() {
        Preconditions.checkMainThread("resume must be called on the main UI thread.");
        if (this.zzgpv != null) {
            this.zzgpv.zzaig().zzcb((Context) null);
        }
    }

    public final void zza(zzwj zzwj) {
        Preconditions.checkMainThread("setAdListener must be called on the main UI thread.");
        this.zzgpa.zzc(zzwj);
    }

    public final void zza(zzxe zzxe) {
        Preconditions.checkMainThread("setAppEventListener must be called on the main UI thread.");
        this.zzgpc.zzb(zzxe);
    }

    public final synchronized void showInterstitial() {
        Preconditions.checkMainThread("showInterstitial must be called on the main UI thread.");
        if (this.zzgpv != null) {
            this.zzgpv.zzbi(this.zzgpw);
        }
    }

    public final synchronized String getMediationAdapterClassName() {
        if (this.zzgpv == null || this.zzgpv.zzaih() == null) {
            return null;
        }
        return this.zzgpv.zzaih().getMediationAdapterClassName();
    }

    public final synchronized String zzki() {
        if (this.zzgpv == null || this.zzgpv.zzaih() == null) {
            return null;
        }
        return this.zzgpv.zzaih().getMediationAdapterClassName();
    }

    public final synchronized zzyd zzkj() {
        if (!((Boolean) zzwg.zzpw().zzd(zzaav.zzcwq)).booleanValue()) {
            return null;
        }
        if (this.zzgpv == null) {
            return null;
        }
        return this.zzgpv.zzaih();
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

    public final synchronized boolean isReady() {
        Preconditions.checkMainThread("isLoaded must be called on the main UI thread.");
        return zzapx();
    }

    public final synchronized String getAdUnitId() {
        return this.zzgow.zzasm();
    }

    public final zzxe zzkk() {
        return this.zzgpc.zzapv();
    }

    public final zzwj zzkl() {
        return this.zzgpa.zzapw();
    }

    public final synchronized void setImmersiveMode(boolean z) {
        Preconditions.checkMainThread("setImmersiveMode must be called on the main UI thread.");
        this.zzgpw = z;
    }

    public final synchronized void zza(zzaaa zzaaa) {
        this.zzgow.zzc(zzaaa);
    }

    public final synchronized void zza(zzabo zzabo) {
        Preconditions.checkMainThread("setOnCustomRenderedAdLoadedListener must be called on the main UI thread.");
        this.zzgpg = zzabo;
    }

    private final synchronized boolean zzapx() {
        return this.zzgpv != null && !this.zzgpv.isClosed();
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

    public final void zza(zzatq zzatq) {
        this.zzgpu.zzb(zzatq);
    }
}
