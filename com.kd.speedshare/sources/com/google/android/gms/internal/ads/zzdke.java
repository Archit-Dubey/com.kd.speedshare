package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import android.os.RemoteException;
import com.google.android.gms.ads.reward.AdMetadataListener;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;

/* compiled from: com.google.android.gms:play-services-ads@@19.2.0 */
public final class zzdke extends zzatm {
    private final zzdkv zzfri;
    private boolean zzgpw = false;
    private final zzdjq zzgyz;
    private final zzdiu zzgza;
    /* access modifiers changed from: private */
    public zzchj zzgzb;

    public zzdke(zzdjq zzdjq, zzdiu zzdiu, zzdkv zzdkv) {
        this.zzgyz = zzdjq;
        this.zzgza = zzdiu;
        this.zzfri = zzdkv;
    }

    public final void setAppPackageName(String str) throws RemoteException {
    }

    public final synchronized void zza(zzatw zzatw) throws RemoteException {
        Preconditions.checkMainThread("loadAd must be called on the main UI thread.");
        if (!zzaax.zzcs(zzatw.zzbum)) {
            if (zzapx()) {
                if (!((Boolean) zzwg.zzpw().zzd(zzaav.zzcua)).booleanValue()) {
                    return;
                }
            }
            zzdjn zzdjn = new zzdjn((String) null);
            this.zzgzb = null;
            this.zzgyz.zzdy(zzdks.zzhal);
            this.zzgyz.zza(zzatw.zzdpj, zzatw.zzbum, zzdjn, new zzdkd(this));
        }
    }

    public final void destroy() throws RemoteException {
        zzl((IObjectWrapper) null);
    }

    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r3v4, resolved type: java.lang.Object} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r1v2, resolved type: android.content.Context} */
    /* JADX WARNING: Multi-variable type inference failed */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final synchronized void zzl(com.google.android.gms.dynamic.IObjectWrapper r3) {
        /*
            r2 = this;
            monitor-enter(r2)
            java.lang.String r0 = "destroy must be called on the main UI thread."
            com.google.android.gms.common.internal.Preconditions.checkMainThread(r0)     // Catch:{ all -> 0x0025 }
            com.google.android.gms.internal.ads.zzdiu r0 = r2.zzgza     // Catch:{ all -> 0x0025 }
            r1 = 0
            r0.zza(r1)     // Catch:{ all -> 0x0025 }
            com.google.android.gms.internal.ads.zzchj r0 = r2.zzgzb     // Catch:{ all -> 0x0025 }
            if (r0 == 0) goto L_0x0023
            if (r3 != 0) goto L_0x0013
            goto L_0x001a
        L_0x0013:
            java.lang.Object r3 = com.google.android.gms.dynamic.ObjectWrapper.unwrap(r3)     // Catch:{ all -> 0x0025 }
            r1 = r3
            android.content.Context r1 = (android.content.Context) r1     // Catch:{ all -> 0x0025 }
        L_0x001a:
            com.google.android.gms.internal.ads.zzchj r3 = r2.zzgzb     // Catch:{ all -> 0x0025 }
            com.google.android.gms.internal.ads.zzbtf r3 = r3.zzaig()     // Catch:{ all -> 0x0025 }
            r3.zzcc(r1)     // Catch:{ all -> 0x0025 }
        L_0x0023:
            monitor-exit(r2)
            return
        L_0x0025:
            r3 = move-exception
            monitor-exit(r2)
            throw r3
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzdke.zzl(com.google.android.gms.dynamic.IObjectWrapper):void");
    }

    public final void pause() {
        zzj((IObjectWrapper) null);
    }

    public final synchronized void zzj(IObjectWrapper iObjectWrapper) {
        Context context;
        Preconditions.checkMainThread("pause must be called on the main UI thread.");
        if (this.zzgzb != null) {
            if (iObjectWrapper == null) {
                context = null;
            } else {
                context = (Context) ObjectWrapper.unwrap(iObjectWrapper);
            }
            this.zzgzb.zzaig().zzca(context);
        }
    }

    public final void resume() {
        zzk((IObjectWrapper) null);
    }

    public final synchronized void zzk(IObjectWrapper iObjectWrapper) {
        Context context;
        Preconditions.checkMainThread("resume must be called on the main UI thread.");
        if (this.zzgzb != null) {
            if (iObjectWrapper == null) {
                context = null;
            } else {
                context = (Context) ObjectWrapper.unwrap(iObjectWrapper);
            }
            this.zzgzb.zzaig().zzcb(context);
        }
    }

    public final synchronized void show() throws RemoteException {
        zzi((IObjectWrapper) null);
    }

    public final synchronized void zzi(IObjectWrapper iObjectWrapper) throws RemoteException {
        Activity activity;
        Preconditions.checkMainThread("showAd must be called on the main UI thread.");
        if (this.zzgzb != null) {
            if (iObjectWrapper != null) {
                Object unwrap = ObjectWrapper.unwrap(iObjectWrapper);
                if (unwrap instanceof Activity) {
                    activity = (Activity) unwrap;
                    this.zzgzb.zzb(this.zzgpw, activity);
                }
            }
            activity = null;
            this.zzgzb.zzb(this.zzgpw, activity);
        }
    }

    public final boolean zzqw() {
        zzchj zzchj = this.zzgzb;
        return zzchj != null && zzchj.zzqw();
    }

    public final synchronized String getMediationAdapterClassName() throws RemoteException {
        if (this.zzgzb == null || this.zzgzb.zzaih() == null) {
            return null;
        }
        return this.zzgzb.zzaih().getMediationAdapterClassName();
    }

    public final boolean isLoaded() throws RemoteException {
        Preconditions.checkMainThread("isLoaded must be called on the main UI thread.");
        return zzapx();
    }

    public final void zza(zzatq zzatq) throws RemoteException {
        Preconditions.checkMainThread("setRewardedVideoAdListener can only be called from the UI thread.");
        this.zzgza.zzb(zzatq);
    }

    public final void zza(zzath zzath) {
        Preconditions.checkMainThread("#008 Must be called on the main UI thread.: setRewardedAdSkuListener");
        this.zzgza.zzb(zzath);
    }

    public final void zza(zzwz zzwz) {
        Preconditions.checkMainThread("setAdMetadataListener can only be called from the UI thread.");
        if (zzwz == null) {
            this.zzgza.zza((AdMetadataListener) null);
        } else {
            this.zzgza.zza(new zzdkg(this, zzwz));
        }
    }

    public final Bundle getAdMetadata() {
        Preconditions.checkMainThread("getAdMetadata can only be called from the UI thread.");
        zzchj zzchj = this.zzgzb;
        return zzchj != null ? zzchj.getAdMetadata() : new Bundle();
    }

    public final synchronized void setUserId(String str) throws RemoteException {
        Preconditions.checkMainThread("setUserId must be called on the main UI thread.");
        this.zzfri.zzdur = str;
    }

    public final synchronized void setCustomData(String str) throws RemoteException {
        if (((Boolean) zzwg.zzpw().zzd(zzaav.zzcob)).booleanValue()) {
            Preconditions.checkMainThread("#008 Must be called on the main UI thread.: setCustomData");
            this.zzfri.zzdus = str;
        }
    }

    public final synchronized void setImmersiveMode(boolean z) {
        Preconditions.checkMainThread("setImmersiveMode must be called on the main UI thread.");
        this.zzgpw = z;
    }

    public final synchronized zzyd zzkj() throws RemoteException {
        if (!((Boolean) zzwg.zzpw().zzd(zzaav.zzcwq)).booleanValue()) {
            return null;
        }
        if (this.zzgzb == null) {
            return null;
        }
        return this.zzgzb.zzaih();
    }

    private final synchronized boolean zzapx() {
        return this.zzgzb != null && !this.zzgzb.isClosed();
    }
}
