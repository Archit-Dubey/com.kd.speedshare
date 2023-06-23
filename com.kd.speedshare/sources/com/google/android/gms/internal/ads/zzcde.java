package com.google.android.gms.internal.ads;

import android.view.MotionEvent;
import android.view.View;
import android.view.ViewTreeObserver;
import android.widget.FrameLayout;
import com.google.android.gms.ads.formats.NativeAppInstallAd;
import com.google.android.gms.ads.formats.NativeContentAd;
import com.google.android.gms.ads.formats.UnifiedNativeAdAssetNames;
import com.google.android.gms.ads.internal.zzq;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import java.util.Map;

/* compiled from: com.google.android.gms:play-services-ads@@19.2.0 */
public final class zzcde extends zzadw implements ViewTreeObserver.OnGlobalLayoutListener, ViewTreeObserver.OnScrollChangedListener, zzcee {
    public static final String[] zzfxw = {NativeAppInstallAd.ASSET_MEDIA_VIDEO, NativeContentAd.ASSET_MEDIA_VIDEO, UnifiedNativeAdAssetNames.ASSET_MEDIA_VIDEO};
    private FrameLayout zzbnm;
    private zzado zzckd;
    private Map<String, WeakReference<View>> zzdow = new HashMap();
    private final int zzede;
    private boolean zzenl = false;
    private final String zzfxv;
    private FrameLayout zzfxx;
    private zzdvi zzfxy;
    private View zzfxz;
    private zzccd zzfya;
    private zzqo zzfyb;
    private IObjectWrapper zzfyc = null;
    private boolean zzfyd;

    public zzcde(FrameLayout frameLayout, FrameLayout frameLayout2, int i) {
        String str;
        this.zzfxx = frameLayout;
        this.zzbnm = frameLayout2;
        this.zzede = i;
        String canonicalName = frameLayout.getClass().getCanonicalName();
        if ("com.google.android.gms.ads.formats.NativeContentAdView".equals(canonicalName)) {
            str = NativeContentAd.ASSET_ATTRIBUTION_ICON_IMAGE;
        } else if ("com.google.android.gms.ads.formats.NativeAppInstallAdView".equals(canonicalName)) {
            str = NativeAppInstallAd.ASSET_ATTRIBUTION_ICON_IMAGE;
        } else {
            "com.google.android.gms.ads.formats.UnifiedNativeAdView".equals(canonicalName);
            str = "3012";
        }
        this.zzfxv = str;
        zzq.zzlt();
        zzbbv.zza((View) frameLayout, (ViewTreeObserver.OnGlobalLayoutListener) this);
        zzq.zzlt();
        zzbbv.zza((View) frameLayout, (ViewTreeObserver.OnScrollChangedListener) this);
        this.zzfxy = zzbbf.zzedl;
        this.zzfyb = new zzqo(this.zzfxx.getContext(), this.zzfxx);
        frameLayout.setOnTouchListener(this);
        frameLayout.setOnClickListener(this);
    }

    public final synchronized void zzb(String str, IObjectWrapper iObjectWrapper) {
        zza(str, (View) ObjectWrapper.unwrap(iObjectWrapper), true);
    }

    /* JADX WARNING: Code restructure failed: missing block: B:24:0x0040, code lost:
        return;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final synchronized void zza(java.lang.String r2, android.view.View r3, boolean r4) {
        /*
            r1 = this;
            monitor-enter(r1)
            boolean r4 = r1.zzenl     // Catch:{ all -> 0x0041 }
            if (r4 == 0) goto L_0x0007
            monitor-exit(r1)
            return
        L_0x0007:
            if (r3 != 0) goto L_0x0010
            java.util.Map<java.lang.String, java.lang.ref.WeakReference<android.view.View>> r3 = r1.zzdow     // Catch:{ all -> 0x0041 }
            r3.remove(r2)     // Catch:{ all -> 0x0041 }
            monitor-exit(r1)
            return
        L_0x0010:
            java.util.Map<java.lang.String, java.lang.ref.WeakReference<android.view.View>> r4 = r1.zzdow     // Catch:{ all -> 0x0041 }
            java.lang.ref.WeakReference r0 = new java.lang.ref.WeakReference     // Catch:{ all -> 0x0041 }
            r0.<init>(r3)     // Catch:{ all -> 0x0041 }
            r4.put(r2, r0)     // Catch:{ all -> 0x0041 }
            java.lang.String r4 = "1098"
            boolean r4 = r4.equals(r2)     // Catch:{ all -> 0x0041 }
            if (r4 != 0) goto L_0x003f
            java.lang.String r4 = "3011"
            boolean r2 = r4.equals(r2)     // Catch:{ all -> 0x0041 }
            if (r2 == 0) goto L_0x002b
            goto L_0x003f
        L_0x002b:
            int r2 = r1.zzede     // Catch:{ all -> 0x0041 }
            boolean r2 = com.google.android.gms.internal.ads.zzbae.zzdg(r2)     // Catch:{ all -> 0x0041 }
            if (r2 == 0) goto L_0x0036
            r3.setOnTouchListener(r1)     // Catch:{ all -> 0x0041 }
        L_0x0036:
            r2 = 1
            r3.setClickable(r2)     // Catch:{ all -> 0x0041 }
            r3.setOnClickListener(r1)     // Catch:{ all -> 0x0041 }
            monitor-exit(r1)
            return
        L_0x003f:
            monitor-exit(r1)
            return
        L_0x0041:
            r2 = move-exception
            monitor-exit(r1)
            throw r2
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzcde.zza(java.lang.String, android.view.View, boolean):void");
    }

    public final synchronized IObjectWrapper zzcr(String str) {
        return ObjectWrapper.wrap(zzge(str));
    }

    public final synchronized View zzge(String str) {
        if (this.zzenl) {
            return null;
        }
        WeakReference weakReference = this.zzdow.get(str);
        if (weakReference == null) {
            return null;
        }
        return (View) weakReference.get();
    }

    /* JADX WARNING: Code restructure failed: missing block: B:20:0x0047, code lost:
        return;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final synchronized void zza(com.google.android.gms.dynamic.IObjectWrapper r2) {
        /*
            r1 = this;
            monitor-enter(r1)
            boolean r0 = r1.zzenl     // Catch:{ all -> 0x0048 }
            if (r0 == 0) goto L_0x0007
            monitor-exit(r1)
            return
        L_0x0007:
            java.lang.Object r2 = com.google.android.gms.dynamic.ObjectWrapper.unwrap(r2)     // Catch:{ all -> 0x0048 }
            boolean r0 = r2 instanceof com.google.android.gms.internal.ads.zzccd     // Catch:{ all -> 0x0048 }
            if (r0 != 0) goto L_0x0016
            java.lang.String r2 = "Not an instance of native engine. This is most likely a transient error"
            com.google.android.gms.internal.ads.zzaxv.zzfd(r2)     // Catch:{ all -> 0x0048 }
            monitor-exit(r1)
            return
        L_0x0016:
            com.google.android.gms.internal.ads.zzccd r0 = r1.zzfya     // Catch:{ all -> 0x0048 }
            if (r0 == 0) goto L_0x001f
            com.google.android.gms.internal.ads.zzccd r0 = r1.zzfya     // Catch:{ all -> 0x0048 }
            r0.zzb(r1)     // Catch:{ all -> 0x0048 }
        L_0x001f:
            r1.zzamg()     // Catch:{ all -> 0x0048 }
            com.google.android.gms.internal.ads.zzccd r2 = (com.google.android.gms.internal.ads.zzccd) r2     // Catch:{ all -> 0x0048 }
            r1.zzfya = r2     // Catch:{ all -> 0x0048 }
            r2.zza((com.google.android.gms.internal.ads.zzcee) r1)     // Catch:{ all -> 0x0048 }
            com.google.android.gms.internal.ads.zzccd r2 = r1.zzfya     // Catch:{ all -> 0x0048 }
            android.widget.FrameLayout r0 = r1.zzfxx     // Catch:{ all -> 0x0048 }
            r2.zzaa(r0)     // Catch:{ all -> 0x0048 }
            com.google.android.gms.internal.ads.zzccd r2 = r1.zzfya     // Catch:{ all -> 0x0048 }
            android.widget.FrameLayout r0 = r1.zzbnm     // Catch:{ all -> 0x0048 }
            r2.zzab(r0)     // Catch:{ all -> 0x0048 }
            boolean r2 = r1.zzfyd     // Catch:{ all -> 0x0048 }
            if (r2 == 0) goto L_0x0046
            com.google.android.gms.internal.ads.zzccd r2 = r1.zzfya     // Catch:{ all -> 0x0048 }
            com.google.android.gms.internal.ads.zzccj r2 = r2.zzald()     // Catch:{ all -> 0x0048 }
            com.google.android.gms.internal.ads.zzado r0 = r1.zzckd     // Catch:{ all -> 0x0048 }
            r2.zza(r0)     // Catch:{ all -> 0x0048 }
        L_0x0046:
            monitor-exit(r1)
            return
        L_0x0048:
            r2 = move-exception
            monitor-exit(r1)
            throw r2
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzcde.zza(com.google.android.gms.dynamic.IObjectWrapper):void");
    }

    private final synchronized void zzamg() {
        this.zzfxy.execute(new zzcdh(this));
    }

    public final synchronized void destroy() {
        if (!this.zzenl) {
            if (this.zzfya != null) {
                this.zzfya.zzb(this);
                this.zzfya = null;
            }
            this.zzdow.clear();
            this.zzfxx.removeAllViews();
            this.zzbnm.removeAllViews();
            this.zzdow = null;
            this.zzfxx = null;
            this.zzbnm = null;
            this.zzfxz = null;
            this.zzfyb = null;
            this.zzenl = true;
        }
    }

    public final synchronized void zzc(IObjectWrapper iObjectWrapper, int i) {
    }

    public final synchronized void onClick(View view) {
        if (this.zzfya != null) {
            this.zzfya.cancelUnconfirmedClick();
            this.zzfya.zza(view, this.zzfxx, zzamh(), zzami(), false);
        }
    }

    public final synchronized boolean onTouch(View view, MotionEvent motionEvent) {
        if (this.zzfya != null) {
            this.zzfya.zza(view, motionEvent, this.zzfxx);
        }
        return false;
    }

    public final synchronized void onGlobalLayout() {
        if (this.zzfya != null) {
            this.zzfya.zzb(this.zzfxx, zzamh(), zzami(), zzccd.zzz(this.zzfxx));
        }
    }

    public final synchronized void onScrollChanged() {
        if (this.zzfya != null) {
            this.zzfya.zzb(this.zzfxx, zzamh(), zzami(), zzccd.zzz(this.zzfxx));
        }
    }

    public final synchronized Map<String, WeakReference<View>> zzamh() {
        return this.zzdow;
    }

    public final synchronized Map<String, WeakReference<View>> zzami() {
        return this.zzdow;
    }

    public final synchronized Map<String, WeakReference<View>> zzamj() {
        return null;
    }

    public final synchronized String zzamk() {
        return this.zzfxv;
    }

    public final FrameLayout zzaml() {
        return this.zzbnm;
    }

    public final zzqo zzamm() {
        return this.zzfyb;
    }

    public final synchronized void zze(IObjectWrapper iObjectWrapper) {
        this.zzfya.setClickConfirmingView((View) ObjectWrapper.unwrap(iObjectWrapper));
    }

    public final synchronized void zzg(IObjectWrapper iObjectWrapper) {
        if (!this.zzenl) {
            this.zzfyc = iObjectWrapper;
        }
    }

    public final IObjectWrapper zzamn() {
        return this.zzfyc;
    }

    public final void zzf(IObjectWrapper iObjectWrapper) {
        onTouch(this.zzfxx, (MotionEvent) ObjectWrapper.unwrap(iObjectWrapper));
    }

    /* JADX WARNING: Code restructure failed: missing block: B:12:0x001a, code lost:
        return;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final synchronized void zza(com.google.android.gms.internal.ads.zzado r2) {
        /*
            r1 = this;
            monitor-enter(r1)
            boolean r0 = r1.zzenl     // Catch:{ all -> 0x001b }
            if (r0 == 0) goto L_0x0007
            monitor-exit(r1)
            return
        L_0x0007:
            r0 = 1
            r1.zzfyd = r0     // Catch:{ all -> 0x001b }
            r1.zzckd = r2     // Catch:{ all -> 0x001b }
            com.google.android.gms.internal.ads.zzccd r0 = r1.zzfya     // Catch:{ all -> 0x001b }
            if (r0 == 0) goto L_0x0019
            com.google.android.gms.internal.ads.zzccd r0 = r1.zzfya     // Catch:{ all -> 0x001b }
            com.google.android.gms.internal.ads.zzccj r0 = r0.zzald()     // Catch:{ all -> 0x001b }
            r0.zza(r2)     // Catch:{ all -> 0x001b }
        L_0x0019:
            monitor-exit(r1)
            return
        L_0x001b:
            r2 = move-exception
            monitor-exit(r1)
            throw r2
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzcde.zza(com.google.android.gms.internal.ads.zzado):void");
    }

    public final /* synthetic */ View zzahk() {
        return this.zzfxx;
    }

    /* access modifiers changed from: package-private */
    public final /* synthetic */ void zzamo() {
        if (this.zzfxz == null) {
            View view = new View(this.zzfxx.getContext());
            this.zzfxz = view;
            view.setLayoutParams(new FrameLayout.LayoutParams(-1, 0));
        }
        if (this.zzfxx != this.zzfxz.getParent()) {
            this.zzfxx.addView(this.zzfxz);
        }
    }
}
