package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.net.Uri;
import android.os.Build;
import android.util.DisplayMetrics;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.view.WindowManager;
import android.webkit.DownloadListener;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import com.google.android.gms.ads.internal.overlay.zzc;
import com.google.android.gms.ads.internal.overlay.zzd;
import com.google.android.gms.ads.internal.zza;
import com.google.android.gms.ads.internal.zzi;
import com.google.android.gms.ads.internal.zzq;
import com.google.android.gms.common.util.PlatformVersion;
import com.google.android.gms.common.util.Predicate;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.internal.ads.zzto;
import com.google.android.gms.internal.ads.zzty;
import com.google.firebase.analytics.FirebaseAnalytics;
import fi.iki.elonen.NanoHTTPD;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.atomic.AtomicReference;
import javax.annotation.ParametersAreNonnullByDefault;
import org.json.JSONObject;

@ParametersAreNonnullByDefault
/* compiled from: com.google.android.gms:play-services-ads@@19.2.0 */
final class zzbho extends zzbhu implements ViewTreeObserver.OnGlobalLayoutListener, DownloadListener, zzajp, zzbfn {
    private int maxHeight = -1;
    private int maxWidth = -1;
    private String zzacv;
    private final zzbbd zzboy;
    private final WindowManager zzbqy;
    private int zzdmt = -1;
    private int zzdmu = -1;
    private boolean zzdog;
    private String zzdpt = "";
    private zzabg zzehs;
    private final zztm zzelk;
    private final zzbhd zzemy;
    private final zzeg zzemz;
    private final zzi zzena;
    private final zza zzenb;
    private final zzso zzend;
    private final boolean zzene;
    private zzc zzeni;
    private zzbhg zzenk;
    private boolean zzenm;
    private boolean zzenn;
    private int zzeno;
    private boolean zzenp = true;
    private boolean zzenq = false;
    private zzbgh zzenr;
    private boolean zzens;
    private boolean zzent;
    private zzadh zzenu;
    private zzadc zzenv;
    private zzsa zzenw;
    private int zzenx;
    /* access modifiers changed from: private */
    public int zzeny;
    private zzabg zzenz;
    private zzabg zzeoa;
    private zzabj zzeob;
    private WeakReference<View.OnClickListener> zzeoc;
    private zzc zzeod;
    private zzban zzeof;
    private Map<String, zzbes> zzeog;
    private final zzbhf zzepd;
    private final AtomicReference<IObjectWrapper> zzepe = new AtomicReference<>();
    private final DisplayMetrics zzxc;

    protected zzbho(zzbhd zzbhd, zzbhf zzbhf, zzbhg zzbhg, String str, boolean z, boolean z2, zzeg zzeg, zzbbd zzbbd, zzabi zzabi, zzi zzi, zza zza, zztm zztm, zzso zzso, boolean z3) {
        super(zzbhd, zzbhf);
        this.zzemy = zzbhd;
        this.zzepd = zzbhf;
        this.zzenk = zzbhg;
        this.zzacv = str;
        this.zzenm = z;
        this.zzeno = -1;
        this.zzemz = zzeg;
        this.zzboy = zzbbd;
        this.zzena = zzi;
        this.zzenb = zza;
        this.zzbqy = (WindowManager) getContext().getSystemService("window");
        zzq.zzkw();
        this.zzxc = zzaye.zza(this.zzbqy);
        this.zzelk = zztm;
        this.zzend = zzso;
        this.zzene = z3;
        this.zzeof = new zzban(this.zzemy.zzzl(), this, this, (ViewTreeObserver.OnScrollChangedListener) null);
        zzq.zzkw().zza((Context) zzbhd, zzbbd.zzbpn, getSettings());
        setDownloadListener(this);
        zzaci();
        if (PlatformVersion.isAtLeastJellyBeanMR1()) {
            addJavascriptInterface(zzbgm.zzc(this), "googleAdsJsInterface");
        }
        zzacm();
        zzabj zzabj = new zzabj(new zzabi(true, "make_wv", this.zzacv));
        this.zzeob = zzabj;
        zzabj.zzrp().zzc(zzabi);
        zzabg zzb = zzabd.zzb(this.zzeob.zzrp());
        this.zzehs = zzb;
        this.zzeob.zza("native:view_create", zzb);
        this.zzeoa = null;
        this.zzenz = null;
        zzq.zzky().zzbg(zzbhd);
    }

    public final View getView() {
        return this;
    }

    public final WebView getWebView() {
        return this;
    }

    public final void zza(String str, Map map) {
        zzajo.zza((zzajp) this, str, map);
    }

    public final void zza(String str, JSONObject jSONObject) {
        zzajo.zza((zzajp) this, str, jSONObject);
    }

    public final void zzabf() {
    }

    public final boolean zzabo() {
        return false;
    }

    public final void zzb(String str, JSONObject jSONObject) {
        zzajo.zzb(this, str, jSONObject);
    }

    public final void zzj(String str, String str2) {
        zzajo.zza((zzajp) this, str, str2);
    }

    public final zzbcu zzzi() {
        return null;
    }

    public final zza zzzm() {
        return this.zzenb;
    }

    private final boolean zzacf() {
        int i;
        int i2;
        boolean z = false;
        if (!this.zzepd.zzabs() && !this.zzepd.zzabt()) {
            return false;
        }
        zzwg.zzps();
        DisplayMetrics displayMetrics = this.zzxc;
        int zzb = zzbaq.zzb(displayMetrics, displayMetrics.widthPixels);
        zzwg.zzps();
        DisplayMetrics displayMetrics2 = this.zzxc;
        int zzb2 = zzbaq.zzb(displayMetrics2, displayMetrics2.heightPixels);
        Activity zzzl = this.zzemy.zzzl();
        if (zzzl == null || zzzl.getWindow() == null) {
            i2 = zzb;
            i = zzb2;
        } else {
            zzq.zzkw();
            int[] zzd = zzaye.zzd(zzzl);
            zzwg.zzps();
            int zzb3 = zzbaq.zzb(this.zzxc, zzd[0]);
            zzwg.zzps();
            i = zzbaq.zzb(this.zzxc, zzd[1]);
            i2 = zzb3;
        }
        if (this.zzdmt == zzb && this.zzdmu == zzb2 && this.maxWidth == i2 && this.maxHeight == i) {
            return false;
        }
        if (!(this.zzdmt == zzb && this.zzdmu == zzb2)) {
            z = true;
        }
        this.zzdmt = zzb;
        this.zzdmu = zzb2;
        this.maxWidth = i2;
        this.maxHeight = i;
        new zzaqd(this).zza(zzb, zzb2, i2, i, this.zzxc.density, this.zzbqy.getDefaultDisplay().getRotation());
        return z;
    }

    public final synchronized void zzb(String str, String str2, String str3) {
        String str4 = str;
        super.loadDataWithBaseURL(str4, zzbgw.zzf(str2, zzbgw.zzaco()), NanoHTTPD.MIME_HTML, "UTF-8", str3);
    }

    public final synchronized void zzdb(String str) {
        if (!isDestroyed()) {
            super.zzdb(str);
        } else {
            zzaxv.zzfd("The webview is destroyed. Ignoring action.");
        }
    }

    public final void zzaas() {
        zzach();
        HashMap hashMap = new HashMap(1);
        hashMap.put("version", this.zzboy.zzbpn);
        zzajo.zza((zzajp) this, "onhide", (Map) hashMap);
    }

    public final void zzds(int i) {
        if (i == 0) {
            zzabd.zza(this.zzeob.zzrp(), this.zzehs, "aebb2");
        }
        zzach();
        if (this.zzeob.zzrp() != null) {
            this.zzeob.zzrp().zzh("close_type", String.valueOf(i));
        }
        HashMap hashMap = new HashMap(2);
        hashMap.put("closetype", String.valueOf(i));
        hashMap.put("version", this.zzboy.zzbpn);
        zzajo.zza((zzajp) this, "onhide", (Map) hashMap);
    }

    private final void zzach() {
        zzabd.zza(this.zzeob.zzrp(), this.zzehs, "aeh2");
    }

    public final void zzuq() {
        if (this.zzenz == null) {
            zzabd.zza(this.zzeob.zzrp(), this.zzehs, "aes2");
            zzabg zzb = zzabd.zzb(this.zzeob.zzrp());
            this.zzenz = zzb;
            this.zzeob.zza("native:view_show", zzb);
        }
        HashMap hashMap = new HashMap(1);
        hashMap.put("version", this.zzboy.zzbpn);
        zzajo.zza((zzajp) this, "onshow", (Map) hashMap);
    }

    public final void zzaat() {
        HashMap hashMap = new HashMap(3);
        hashMap.put("app_muted", String.valueOf(zzq.zzlb().zzqd()));
        hashMap.put("app_volume", String.valueOf(zzq.zzlb().zzqc()));
        hashMap.put("device_volume", String.valueOf(zzayw.zzbi(getContext())));
        zzajo.zza((zzajp) this, "volume", (Map) hashMap);
    }

    public final void zza(boolean z, long j) {
        HashMap hashMap = new HashMap(2);
        hashMap.put(FirebaseAnalytics.Param.SUCCESS, z ? "1" : "0");
        hashMap.put("duration", Long.toString(j));
        zzajo.zza((zzajp) this, "onCacheAccessComplete", (Map) hashMap);
    }

    public final synchronized zzc zzaav() {
        return this.zzeni;
    }

    public final IObjectWrapper zzabd() {
        return this.zzepe.get();
    }

    public final synchronized zzc zzaaw() {
        return this.zzeod;
    }

    public final synchronized zzbhg zzaax() {
        return this.zzenk;
    }

    public final synchronized String zzaay() {
        return this.zzacv;
    }

    public final WebViewClient zzaba() {
        return this.zzepd;
    }

    public final synchronized boolean zzabb() {
        return this.zzdog;
    }

    public final zzeg zzabc() {
        return this.zzemz;
    }

    public final zzbbd zzzo() {
        return this.zzboy;
    }

    public final synchronized boolean zzabe() {
        return this.zzenm;
    }

    public final void onDownloadStart(String str, String str2, String str3, String str4, long j) {
        try {
            Intent intent = new Intent("android.intent.action.VIEW");
            intent.setDataAndType(Uri.parse(str), str4);
            zzq.zzkw();
            zzaye.zza(getContext(), intent);
        } catch (ActivityNotFoundException unused) {
            StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 51 + String.valueOf(str4).length());
            sb.append("Couldn't find an Activity to view url/mimetype: ");
            sb.append(str);
            sb.append(" / ");
            sb.append(str4);
            zzaxv.zzee(sb.toString());
        }
    }

    public final boolean onTouchEvent(MotionEvent motionEvent) {
        if (!this.zzepd.zzabt() || this.zzepd.zzabu()) {
            zzeg zzeg = this.zzemz;
            if (zzeg != null) {
                zzeg.zza(motionEvent);
            }
        } else {
            synchronized (this) {
                if (this.zzenu != null) {
                    this.zzenu.zzc(motionEvent);
                }
            }
        }
        return super.onTouchEvent(motionEvent);
    }

    public final boolean onGenericMotionEvent(MotionEvent motionEvent) {
        float axisValue = motionEvent.getAxisValue(9);
        float axisValue2 = motionEvent.getAxisValue(10);
        if (motionEvent.getActionMasked() == 8) {
            if (axisValue > 0.0f && !canScrollVertically(-1)) {
                return false;
            }
            if (axisValue < 0.0f && !canScrollVertically(1)) {
                return false;
            }
            if (axisValue2 > 0.0f && !canScrollHorizontally(-1)) {
                return false;
            }
            if (axisValue2 < 0.0f && !canScrollHorizontally(1)) {
                return false;
            }
        }
        return super.onGenericMotionEvent(motionEvent);
    }

    /* access modifiers changed from: protected */
    /* JADX WARNING: Removed duplicated region for block: B:103:0x0172  */
    /* JADX WARNING: Removed duplicated region for block: B:109:0x01d8 A[SYNTHETIC, Splitter:B:109:0x01d8] */
    /* JADX WARNING: Removed duplicated region for block: B:86:0x0125  */
    /* JADX WARNING: Removed duplicated region for block: B:93:0x0141  */
    /* JADX WARNING: Unknown top exception splitter block from list: {B:64:0x00de=Splitter:B:64:0x00de, B:116:0x01ee=Splitter:B:116:0x01ee} */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final synchronized void onMeasure(int r8, int r9) {
        /*
            r7 = this;
            monitor-enter(r7)
            boolean r0 = r7.isDestroyed()     // Catch:{ all -> 0x01f3 }
            r1 = 0
            if (r0 == 0) goto L_0x000d
            r7.setMeasuredDimension(r1, r1)     // Catch:{ all -> 0x01f3 }
            monitor-exit(r7)
            return
        L_0x000d:
            boolean r0 = r7.isInEditMode()     // Catch:{ all -> 0x01f3 }
            if (r0 != 0) goto L_0x01ee
            boolean r0 = r7.zzenm     // Catch:{ all -> 0x01f3 }
            if (r0 != 0) goto L_0x01ee
            com.google.android.gms.internal.ads.zzbhg r0 = r7.zzenk     // Catch:{ all -> 0x01f3 }
            boolean r0 = r0.zzact()     // Catch:{ all -> 0x01f3 }
            if (r0 == 0) goto L_0x0021
            goto L_0x01ee
        L_0x0021:
            com.google.android.gms.internal.ads.zzbhg r0 = r7.zzenk     // Catch:{ all -> 0x01f3 }
            boolean r0 = r0.zzacv()     // Catch:{ all -> 0x01f3 }
            if (r0 == 0) goto L_0x002e
            super.onMeasure(r8, r9)     // Catch:{ all -> 0x01f3 }
            monitor-exit(r7)
            return
        L_0x002e:
            com.google.android.gms.internal.ads.zzbhg r0 = r7.zzenk     // Catch:{ all -> 0x01f3 }
            boolean r0 = r0.zzacu()     // Catch:{ all -> 0x01f3 }
            if (r0 == 0) goto L_0x0091
            com.google.android.gms.internal.ads.zzaag<java.lang.Boolean> r0 = com.google.android.gms.internal.ads.zzaav.zzcro     // Catch:{ all -> 0x01f3 }
            com.google.android.gms.internal.ads.zzaar r1 = com.google.android.gms.internal.ads.zzwg.zzpw()     // Catch:{ all -> 0x01f3 }
            java.lang.Object r0 = r1.zzd(r0)     // Catch:{ all -> 0x01f3 }
            java.lang.Boolean r0 = (java.lang.Boolean) r0     // Catch:{ all -> 0x01f3 }
            boolean r0 = r0.booleanValue()     // Catch:{ all -> 0x01f3 }
            if (r0 == 0) goto L_0x004d
            super.onMeasure(r8, r9)     // Catch:{ all -> 0x01f3 }
            monitor-exit(r7)
            return
        L_0x004d:
            com.google.android.gms.internal.ads.zzbgh r0 = r7.zzzj()     // Catch:{ all -> 0x01f3 }
            r1 = 0
            if (r0 == 0) goto L_0x0059
            float r0 = r0.getAspectRatio()     // Catch:{ all -> 0x01f3 }
            goto L_0x005a
        L_0x0059:
            r0 = 0
        L_0x005a:
            int r1 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r1 != 0) goto L_0x0063
            super.onMeasure(r8, r9)     // Catch:{ all -> 0x01f3 }
            monitor-exit(r7)
            return
        L_0x0063:
            int r8 = android.view.View.MeasureSpec.getSize(r8)     // Catch:{ all -> 0x01f3 }
            int r9 = android.view.View.MeasureSpec.getSize(r9)     // Catch:{ all -> 0x01f3 }
            float r1 = (float) r9     // Catch:{ all -> 0x01f3 }
            float r1 = r1 * r0
            int r1 = (int) r1     // Catch:{ all -> 0x01f3 }
            float r2 = (float) r8     // Catch:{ all -> 0x01f3 }
            float r2 = r2 / r0
            int r2 = (int) r2     // Catch:{ all -> 0x01f3 }
            if (r9 != 0) goto L_0x007c
            if (r2 == 0) goto L_0x007c
            float r9 = (float) r2     // Catch:{ all -> 0x01f3 }
            float r9 = r9 * r0
            int r1 = (int) r9     // Catch:{ all -> 0x01f3 }
            r9 = r2
            goto L_0x0084
        L_0x007c:
            if (r8 != 0) goto L_0x0084
            if (r1 == 0) goto L_0x0084
            float r8 = (float) r1     // Catch:{ all -> 0x01f3 }
            float r8 = r8 / r0
            int r2 = (int) r8     // Catch:{ all -> 0x01f3 }
            r8 = r1
        L_0x0084:
            int r8 = java.lang.Math.min(r1, r8)     // Catch:{ all -> 0x01f3 }
            int r9 = java.lang.Math.min(r2, r9)     // Catch:{ all -> 0x01f3 }
            r7.setMeasuredDimension(r8, r9)     // Catch:{ all -> 0x01f3 }
            monitor-exit(r7)
            return
        L_0x0091:
            com.google.android.gms.internal.ads.zzbhg r0 = r7.zzenk     // Catch:{ all -> 0x01f3 }
            boolean r0 = r0.isFluid()     // Catch:{ all -> 0x01f3 }
            if (r0 == 0) goto L_0x00e3
            com.google.android.gms.internal.ads.zzaag<java.lang.Boolean> r0 = com.google.android.gms.internal.ads.zzaav.zzcrr     // Catch:{ all -> 0x01f3 }
            com.google.android.gms.internal.ads.zzaar r1 = com.google.android.gms.internal.ads.zzwg.zzpw()     // Catch:{ all -> 0x01f3 }
            java.lang.Object r0 = r1.zzd(r0)     // Catch:{ all -> 0x01f3 }
            java.lang.Boolean r0 = (java.lang.Boolean) r0     // Catch:{ all -> 0x01f3 }
            boolean r0 = r0.booleanValue()     // Catch:{ all -> 0x01f3 }
            if (r0 != 0) goto L_0x00de
            boolean r0 = com.google.android.gms.common.util.PlatformVersion.isAtLeastJellyBeanMR1()     // Catch:{ all -> 0x01f3 }
            if (r0 != 0) goto L_0x00b2
            goto L_0x00de
        L_0x00b2:
            java.lang.String r0 = "/contentHeight"
            com.google.android.gms.internal.ads.zzbhq r1 = new com.google.android.gms.internal.ads.zzbhq     // Catch:{ all -> 0x01f3 }
            r1.<init>(r7)     // Catch:{ all -> 0x01f3 }
            r7.zza((java.lang.String) r0, (com.google.android.gms.internal.ads.zzahc<? super com.google.android.gms.internal.ads.zzbfn>) r1)     // Catch:{ all -> 0x01f3 }
            java.lang.String r0 = "(function() {  var height = -1;  if (document.body) {    height = document.body.offsetHeight;  } else if (document.documentElement) {    height = document.documentElement.offsetHeight;  }  var url = 'gmsg://mobileads.google.com/contentHeight?';  url += 'height=' + height;  try {    window.googleAdsJsInterface.notify(url);  } catch (e) {    var frame = document.getElementById('afma-notify-fluid');    if (!frame) {      frame = document.createElement('IFRAME');      frame.id = 'afma-notify-fluid';      frame.style.display = 'none';      var body = document.body || document.documentElement;      body.appendChild(frame);    }    frame.src = url;  }})();"
            r7.zzdb(r0)     // Catch:{ all -> 0x01f3 }
            int r8 = android.view.View.MeasureSpec.getSize(r8)     // Catch:{ all -> 0x01f3 }
            int r0 = r7.zzeny     // Catch:{ all -> 0x01f3 }
            r1 = -1
            if (r0 == r1) goto L_0x00d5
            int r9 = r7.zzeny     // Catch:{ all -> 0x01f3 }
            float r9 = (float) r9     // Catch:{ all -> 0x01f3 }
            android.util.DisplayMetrics r0 = r7.zzxc     // Catch:{ all -> 0x01f3 }
            float r0 = r0.density     // Catch:{ all -> 0x01f3 }
            float r9 = r9 * r0
            int r9 = (int) r9     // Catch:{ all -> 0x01f3 }
            goto L_0x00d9
        L_0x00d5:
            int r9 = android.view.View.MeasureSpec.getSize(r9)     // Catch:{ all -> 0x01f3 }
        L_0x00d9:
            r7.setMeasuredDimension(r8, r9)     // Catch:{ all -> 0x01f3 }
            monitor-exit(r7)
            return
        L_0x00de:
            super.onMeasure(r8, r9)     // Catch:{ all -> 0x01f3 }
            monitor-exit(r7)
            return
        L_0x00e3:
            com.google.android.gms.internal.ads.zzbhg r0 = r7.zzenk     // Catch:{ all -> 0x01f3 }
            boolean r0 = r0.zzacs()     // Catch:{ all -> 0x01f3 }
            if (r0 == 0) goto L_0x00f8
            android.util.DisplayMetrics r8 = r7.zzxc     // Catch:{ all -> 0x01f3 }
            int r8 = r8.widthPixels     // Catch:{ all -> 0x01f3 }
            android.util.DisplayMetrics r9 = r7.zzxc     // Catch:{ all -> 0x01f3 }
            int r9 = r9.heightPixels     // Catch:{ all -> 0x01f3 }
            r7.setMeasuredDimension(r8, r9)     // Catch:{ all -> 0x01f3 }
            monitor-exit(r7)
            return
        L_0x00f8:
            int r0 = android.view.View.MeasureSpec.getMode(r8)     // Catch:{ all -> 0x01f3 }
            int r8 = android.view.View.MeasureSpec.getSize(r8)     // Catch:{ all -> 0x01f3 }
            int r2 = android.view.View.MeasureSpec.getMode(r9)     // Catch:{ all -> 0x01f3 }
            int r9 = android.view.View.MeasureSpec.getSize(r9)     // Catch:{ all -> 0x01f3 }
            r3 = 1073741824(0x40000000, float:2.0)
            r4 = -2147483648(0xffffffff80000000, float:-0.0)
            r5 = 2147483647(0x7fffffff, float:NaN)
            if (r0 == r4) goto L_0x0118
            if (r0 != r3) goto L_0x0114
            goto L_0x0118
        L_0x0114:
            r0 = 2147483647(0x7fffffff, float:NaN)
            goto L_0x0119
        L_0x0118:
            r0 = r8
        L_0x0119:
            if (r2 == r4) goto L_0x011d
            if (r2 != r3) goto L_0x011e
        L_0x011d:
            r5 = r9
        L_0x011e:
            com.google.android.gms.internal.ads.zzbhg r2 = r7.zzenk     // Catch:{ all -> 0x01f3 }
            int r2 = r2.widthPixels     // Catch:{ all -> 0x01f3 }
            r3 = 1
            if (r2 > r0) goto L_0x012e
            com.google.android.gms.internal.ads.zzbhg r2 = r7.zzenk     // Catch:{ all -> 0x01f3 }
            int r2 = r2.heightPixels     // Catch:{ all -> 0x01f3 }
            if (r2 <= r5) goto L_0x012c
            goto L_0x012e
        L_0x012c:
            r2 = 0
            goto L_0x012f
        L_0x012e:
            r2 = 1
        L_0x012f:
            com.google.android.gms.internal.ads.zzaag<java.lang.Boolean> r4 = com.google.android.gms.internal.ads.zzaav.zzctz     // Catch:{ all -> 0x01f3 }
            com.google.android.gms.internal.ads.zzaar r6 = com.google.android.gms.internal.ads.zzwg.zzpw()     // Catch:{ all -> 0x01f3 }
            java.lang.Object r4 = r6.zzd(r4)     // Catch:{ all -> 0x01f3 }
            java.lang.Boolean r4 = (java.lang.Boolean) r4     // Catch:{ all -> 0x01f3 }
            boolean r4 = r4.booleanValue()     // Catch:{ all -> 0x01f3 }
            if (r4 == 0) goto L_0x016e
            com.google.android.gms.internal.ads.zzbhg r4 = r7.zzenk     // Catch:{ all -> 0x01f3 }
            int r4 = r4.widthPixels     // Catch:{ all -> 0x01f3 }
            float r4 = (float) r4     // Catch:{ all -> 0x01f3 }
            android.util.DisplayMetrics r6 = r7.zzxc     // Catch:{ all -> 0x01f3 }
            float r6 = r6.density     // Catch:{ all -> 0x01f3 }
            float r4 = r4 / r6
            float r0 = (float) r0     // Catch:{ all -> 0x01f3 }
            android.util.DisplayMetrics r6 = r7.zzxc     // Catch:{ all -> 0x01f3 }
            float r6 = r6.density     // Catch:{ all -> 0x01f3 }
            float r0 = r0 / r6
            int r0 = (r4 > r0 ? 1 : (r4 == r0 ? 0 : -1))
            if (r0 > 0) goto L_0x016a
            com.google.android.gms.internal.ads.zzbhg r0 = r7.zzenk     // Catch:{ all -> 0x01f3 }
            int r0 = r0.heightPixels     // Catch:{ all -> 0x01f3 }
            float r0 = (float) r0     // Catch:{ all -> 0x01f3 }
            android.util.DisplayMetrics r4 = r7.zzxc     // Catch:{ all -> 0x01f3 }
            float r4 = r4.density     // Catch:{ all -> 0x01f3 }
            float r0 = r0 / r4
            float r4 = (float) r5     // Catch:{ all -> 0x01f3 }
            android.util.DisplayMetrics r5 = r7.zzxc     // Catch:{ all -> 0x01f3 }
            float r5 = r5.density     // Catch:{ all -> 0x01f3 }
            float r4 = r4 / r5
            int r0 = (r0 > r4 ? 1 : (r0 == r4 ? 0 : -1))
            if (r0 > 0) goto L_0x016a
            goto L_0x016b
        L_0x016a:
            r3 = 0
        L_0x016b:
            if (r2 == 0) goto L_0x016e
            r2 = r3
        L_0x016e:
            r0 = 8
            if (r2 == 0) goto L_0x01d8
            com.google.android.gms.internal.ads.zzbhg r2 = r7.zzenk     // Catch:{ all -> 0x01f3 }
            int r2 = r2.widthPixels     // Catch:{ all -> 0x01f3 }
            float r2 = (float) r2     // Catch:{ all -> 0x01f3 }
            android.util.DisplayMetrics r3 = r7.zzxc     // Catch:{ all -> 0x01f3 }
            float r3 = r3.density     // Catch:{ all -> 0x01f3 }
            float r2 = r2 / r3
            int r2 = (int) r2     // Catch:{ all -> 0x01f3 }
            com.google.android.gms.internal.ads.zzbhg r3 = r7.zzenk     // Catch:{ all -> 0x01f3 }
            int r3 = r3.heightPixels     // Catch:{ all -> 0x01f3 }
            float r3 = (float) r3     // Catch:{ all -> 0x01f3 }
            android.util.DisplayMetrics r4 = r7.zzxc     // Catch:{ all -> 0x01f3 }
            float r4 = r4.density     // Catch:{ all -> 0x01f3 }
            float r3 = r3 / r4
            int r3 = (int) r3     // Catch:{ all -> 0x01f3 }
            float r8 = (float) r8     // Catch:{ all -> 0x01f3 }
            android.util.DisplayMetrics r4 = r7.zzxc     // Catch:{ all -> 0x01f3 }
            float r4 = r4.density     // Catch:{ all -> 0x01f3 }
            float r8 = r8 / r4
            int r8 = (int) r8     // Catch:{ all -> 0x01f3 }
            float r9 = (float) r9     // Catch:{ all -> 0x01f3 }
            android.util.DisplayMetrics r4 = r7.zzxc     // Catch:{ all -> 0x01f3 }
            float r4 = r4.density     // Catch:{ all -> 0x01f3 }
            float r9 = r9 / r4
            int r9 = (int) r9     // Catch:{ all -> 0x01f3 }
            r4 = 103(0x67, float:1.44E-43)
            java.lang.StringBuilder r5 = new java.lang.StringBuilder     // Catch:{ all -> 0x01f3 }
            r5.<init>(r4)     // Catch:{ all -> 0x01f3 }
            java.lang.String r4 = "Not enough space to show ad. Needs "
            r5.append(r4)     // Catch:{ all -> 0x01f3 }
            r5.append(r2)     // Catch:{ all -> 0x01f3 }
            java.lang.String r2 = "x"
            r5.append(r2)     // Catch:{ all -> 0x01f3 }
            r5.append(r3)     // Catch:{ all -> 0x01f3 }
            java.lang.String r2 = " dp, but only has "
            r5.append(r2)     // Catch:{ all -> 0x01f3 }
            r5.append(r8)     // Catch:{ all -> 0x01f3 }
            java.lang.String r8 = "x"
            r5.append(r8)     // Catch:{ all -> 0x01f3 }
            r5.append(r9)     // Catch:{ all -> 0x01f3 }
            java.lang.String r8 = " dp."
            r5.append(r8)     // Catch:{ all -> 0x01f3 }
            java.lang.String r8 = r5.toString()     // Catch:{ all -> 0x01f3 }
            com.google.android.gms.internal.ads.zzaxv.zzfd(r8)     // Catch:{ all -> 0x01f3 }
            int r8 = r7.getVisibility()     // Catch:{ all -> 0x01f3 }
            if (r8 == r0) goto L_0x01d3
            r8 = 4
            r7.setVisibility(r8)     // Catch:{ all -> 0x01f3 }
        L_0x01d3:
            r7.setMeasuredDimension(r1, r1)     // Catch:{ all -> 0x01f3 }
            monitor-exit(r7)
            return
        L_0x01d8:
            int r8 = r7.getVisibility()     // Catch:{ all -> 0x01f3 }
            if (r8 == r0) goto L_0x01e1
            r7.setVisibility(r1)     // Catch:{ all -> 0x01f3 }
        L_0x01e1:
            com.google.android.gms.internal.ads.zzbhg r8 = r7.zzenk     // Catch:{ all -> 0x01f3 }
            int r8 = r8.widthPixels     // Catch:{ all -> 0x01f3 }
            com.google.android.gms.internal.ads.zzbhg r9 = r7.zzenk     // Catch:{ all -> 0x01f3 }
            int r9 = r9.heightPixels     // Catch:{ all -> 0x01f3 }
            r7.setMeasuredDimension(r8, r9)     // Catch:{ all -> 0x01f3 }
            monitor-exit(r7)
            return
        L_0x01ee:
            super.onMeasure(r8, r9)     // Catch:{ all -> 0x01f3 }
            monitor-exit(r7)
            return
        L_0x01f3:
            r8 = move-exception
            monitor-exit(r7)
            throw r8
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzbho.onMeasure(int, int):void");
    }

    public final void onGlobalLayout() {
        boolean zzacf = zzacf();
        zzc zzaav = zzaav();
        if (zzaav != null && zzacf) {
            zzaav.zzup();
        }
    }

    public final synchronized void zza(zzc zzc) {
        this.zzeni = zzc;
    }

    public final void zzap(IObjectWrapper iObjectWrapper) {
        this.zzepe.set(iObjectWrapper);
    }

    public final synchronized void zzb(zzc zzc) {
        this.zzeod = zzc;
    }

    public final synchronized void zza(zzbhg zzbhg) {
        this.zzenk = zzbhg;
        requestLayout();
    }

    public final synchronized void zzax(boolean z) {
        boolean z2 = z != this.zzenm;
        this.zzenm = z;
        zzaci();
        if (z2) {
            if (!((Boolean) zzwg.zzpw().zzd(zzaav.zzcmp)).booleanValue() || !this.zzenk.zzacs()) {
                new zzaqd(this).zzdy(z ? "expanded" : "default");
            }
        }
    }

    public final void zzabi() {
        this.zzeof.zzyd();
    }

    /* access modifiers changed from: protected */
    public final synchronized void onAttachedToWindow() {
        super.onAttachedToWindow();
        if (!isDestroyed()) {
            this.zzeof.onAttachedToWindow();
        }
        boolean z = this.zzens;
        if (this.zzepd != null && this.zzepd.zzabt()) {
            if (!this.zzent) {
                this.zzepd.zzabv();
                this.zzepd.zzabw();
                this.zzent = true;
            }
            zzacf();
            z = true;
        }
        zzbd(z);
    }

    /* access modifiers changed from: protected */
    public final void onDetachedFromWindow() {
        synchronized (this) {
            if (!isDestroyed()) {
                this.zzeof.onDetachedFromWindow();
            }
            super.onDetachedFromWindow();
            if (this.zzent && this.zzepd != null && this.zzepd.zzabt() && getViewTreeObserver() != null && getViewTreeObserver().isAlive()) {
                this.zzepd.zzabv();
                this.zzepd.zzabw();
                this.zzent = false;
            }
        }
        zzbd(false);
    }

    public final void zzbw(Context context) {
        this.zzemy.setBaseContext(context);
        this.zzeof.zzh(this.zzemy.zzzl());
    }

    public final synchronized void zzal(boolean z) {
        if (this.zzeni != null) {
            this.zzeni.zza(this.zzepd.zzabs(), z);
        } else {
            this.zzdog = z;
        }
    }

    public final synchronized void setRequestedOrientation(int i) {
        this.zzeno = i;
        if (this.zzeni != null) {
            this.zzeni.setRequestedOrientation(i);
        }
    }

    public final Activity zzzl() {
        return this.zzemy.zzzl();
    }

    public final Context zzaau() {
        return this.zzemy.zzaau();
    }

    private final synchronized void zzaci() {
        if (!this.zzenm) {
            if (!this.zzenk.zzacs()) {
                if (Build.VERSION.SDK_INT < 18) {
                    zzaxv.zzee("Disabling hardware acceleration on an AdView.");
                    zzacj();
                    return;
                }
                zzaxv.zzee("Enabling hardware acceleration on an AdView.");
                zzack();
                return;
            }
        }
        zzaxv.zzee("Enabling hardware acceleration on an overlay.");
        zzack();
    }

    private final synchronized void zzacj() {
        if (!this.zzenn) {
            zzq.zzky();
            setLayerType(1, (Paint) null);
        }
        this.zzenn = true;
    }

    private final synchronized void zzack() {
        if (this.zzenn) {
            zzq.zzky();
            setLayerType(0, (Paint) null);
        }
        this.zzenn = false;
    }

    /* access modifiers changed from: protected */
    public final synchronized void zzbe(boolean z) {
        if (!z) {
            zzacm();
            this.zzeof.zzye();
            if (this.zzeni != null) {
                this.zzeni.close();
                this.zzeni.onDestroy();
                this.zzeni = null;
            }
        }
        this.zzepe.set((Object) null);
        this.zzepd.destroy();
        zzq.zzls();
        zzbep.zzc(this);
        zzacl();
    }

    /* access modifiers changed from: protected */
    public final void onDraw(Canvas canvas) {
        if (Build.VERSION.SDK_INT != 21 || !canvas.isHardwareAccelerated() || isAttachedToWindow()) {
            super.onDraw(canvas);
            zzbhf zzbhf = this.zzepd;
        }
    }

    public final void zzabj() {
        if (this.zzeoa == null) {
            zzabg zzb = zzabd.zzb(this.zzeob.zzrp());
            this.zzeoa = zzb;
            this.zzeob.zza("native:view_load", zzb);
        }
    }

    public final void onPause() {
        try {
            super.onPause();
        } catch (Exception e) {
            zzaxv.zzc("Could not pause webview.", e);
        }
    }

    public final void onResume() {
        try {
            super.onResume();
        } catch (Exception e) {
            zzaxv.zzc("Could not resume webview.", e);
        }
    }

    public final void zzabm() {
        zzaxv.zzeh("Cannot add text view to inner AdWebView");
    }

    public final void zzba(boolean z) {
        this.zzepd.zzba(z);
    }

    public final void stopLoading() {
        try {
            super.stopLoading();
        } catch (Exception e) {
            zzaxv.zzc("Could not stop loading webview.", e);
        }
    }

    public final synchronized void zzay(boolean z) {
        this.zzenp = z;
    }

    public final synchronized boolean zzabg() {
        return this.zzenp;
    }

    public final synchronized void zzkd() {
        this.zzenq = true;
        if (this.zzena != null) {
            this.zzena.zzkd();
        }
    }

    public final synchronized void zzke() {
        this.zzenq = false;
        if (this.zzena != null) {
            this.zzena.zzke();
        }
    }

    private final synchronized void zzacl() {
        if (this.zzeog != null) {
            for (zzbes release : this.zzeog.values()) {
                release.release();
            }
        }
        this.zzeog = null;
    }

    public final synchronized void zza(String str, zzbes zzbes) {
        if (this.zzeog == null) {
            this.zzeog = new HashMap();
        }
        this.zzeog.put(str, zzbes);
    }

    public final synchronized zzbes zzfi(String str) {
        if (this.zzeog == null) {
            return null;
        }
        return this.zzeog.get(str);
    }

    public final synchronized String getRequestId() {
        return this.zzdpt;
    }

    public final zzabg zzzk() {
        return this.zzehs;
    }

    public final zzabj zzzn() {
        return this.zzeob;
    }

    public final void setOnClickListener(View.OnClickListener onClickListener) {
        this.zzeoc = new WeakReference<>(onClickListener);
        super.setOnClickListener(onClickListener);
    }

    public final synchronized void zza(zzadh zzadh) {
        this.zzenu = zzadh;
    }

    public final synchronized zzadh zzabk() {
        return this.zzenu;
    }

    public final synchronized void zzzr() {
        if (this.zzenv != null) {
            this.zzenv.zzrx();
        }
    }

    public final synchronized void zza(zzadc zzadc) {
        this.zzenv = zzadc;
    }

    public final synchronized void zza(zzsa zzsa) {
        this.zzenw = zzsa;
    }

    public final synchronized zzsa zzabn() {
        return this.zzenw;
    }

    public final synchronized zzbgh zzzj() {
        return this.zzenr;
    }

    public final synchronized void zza(zzbgh zzbgh) {
        if (this.zzenr != null) {
            zzaxv.zzfb("Attempt to create multiple AdWebViewVideoControllers.");
        } else {
            this.zzenr = zzbgh;
        }
    }

    public final synchronized boolean zzabh() {
        return this.zzenx > 0;
    }

    public final synchronized void zzaz(boolean z) {
        int i = this.zzenx + (z ? 1 : -1);
        this.zzenx = i;
        if (i <= 0 && this.zzeni != null) {
            this.zzeni.zzus();
        }
    }

    private final void zzacm() {
        zzabi zzrp;
        zzabj zzabj = this.zzeob;
        if (zzabj != null && (zzrp = zzabj.zzrp()) != null && zzq.zzla().zzvy() != null) {
            zzq.zzla().zzvy().zza(zzrp);
        }
    }

    public final void zzabl() {
        setBackgroundColor(0);
    }

    public final void zzav(boolean z) {
        this.zzepd.zzav(z);
    }

    public final void zzur() {
        zzc zzaav = zzaav();
        if (zzaav != null) {
            zzaav.zzur();
        }
    }

    public final int zzzp() {
        return getMeasuredHeight();
    }

    public final int zzzq() {
        return getMeasuredWidth();
    }

    public final void zza(zzd zzd) {
        this.zzepd.zza(zzd);
    }

    public final void zzc(boolean z, int i) {
        this.zzepd.zzc(z, i);
    }

    public final void zza(boolean z, int i, String str) {
        this.zzepd.zza(z, i, str);
    }

    public final void zza(boolean z, int i, String str, String str2) {
        this.zzepd.zza(z, i, str, str2);
    }

    public final void zza(zzqt zzqt) {
        synchronized (this) {
            this.zzens = zzqt.zzbrd;
        }
        zzbd(zzqt.zzbrd);
    }

    private final void zzbd(boolean z) {
        HashMap hashMap = new HashMap();
        hashMap.put("isVisible", z ? "1" : "0");
        zzajo.zza((zzajp) this, "onAdVisibilityChanged", (Map) hashMap);
    }

    public final void zza(String str, zzahc<? super zzbfn> zzahc) {
        zzbhf zzbhf = this.zzepd;
        if (zzbhf != null) {
            zzbhf.zza(str, zzahc);
        }
    }

    public final void zzb(String str, zzahc<? super zzbfn> zzahc) {
        zzbhf zzbhf = this.zzepd;
        if (zzbhf != null) {
            zzbhf.zzb(str, zzahc);
        }
    }

    public final void zza(String str, Predicate<zzahc<? super zzbfn>> predicate) {
        zzbhf zzbhf = this.zzepd;
        if (zzbhf != null) {
            zzbhf.zza(str, predicate);
        }
    }

    public final boolean zzb(boolean z, int i) {
        destroy();
        this.zzelk.zza((zztp) new zzbhn(z, i));
        this.zzelk.zza(zzto.zza.C0014zza.ANDROID_WEBVIEW_CRASH);
        return true;
    }

    public final void zza(ViewGroup viewGroup, Activity activity, String str, String str2) {
        if (!zzabq()) {
            zzaxv.zzeh("AR ad is not enabled or the ad from the server is not an AR ad.");
            return;
        }
        if (getParent() instanceof ViewGroup) {
            ((ViewGroup) getParent()).removeView(this);
        }
        zzaxv.zzeh("Initializing ArWebView object.");
        this.zzend.zza(activity, this);
        this.zzend.zzc(str, str2);
        if (viewGroup != null) {
            viewGroup.addView(this.zzend.getView());
        } else {
            zzaxv.zzfb("The FrameLayout object cannot be null.");
        }
    }

    public final zzso zzabp() {
        return this.zzend;
    }

    public final boolean zzabq() {
        return ((Boolean) zzwg.zzpw().zzd(zzaav.zzcvu)).booleanValue() && this.zzend != null && this.zzene;
    }

    public final /* synthetic */ zzbgz zzaaz() {
        return this.zzepd;
    }

    static final /* synthetic */ void zza(boolean z, int i, zzty.zzi.zza zza) {
        zzty.zzae.zza zzpe = zzty.zzae.zzpe();
        if (zzpe.zzpd() != z) {
            zzpe.zzw(z);
        }
        zza.zzb((zzty.zzae) ((zzegb) zzpe.zzcw(i).zzbfq()));
    }
}
