package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.content.Context;
import android.content.res.Resources;
import android.graphics.drawable.GradientDrawable;
import android.view.View;
import android.view.ViewGroup;
import android.webkit.WebChromeClient;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.FrameLayout;
import android.widget.TextView;
import com.google.android.gms.ads.impl.R;
import com.google.android.gms.ads.internal.overlay.zzc;
import com.google.android.gms.ads.internal.overlay.zzd;
import com.google.android.gms.ads.internal.zza;
import com.google.android.gms.ads.internal.zzq;
import com.google.android.gms.common.util.Predicate;
import com.google.android.gms.dynamic.IObjectWrapper;
import java.util.Map;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONObject;

/* compiled from: com.google.android.gms:play-services-ads@@19.2.0 */
public final class zzbgc extends FrameLayout implements zzbfn {
    /* access modifiers changed from: private */
    public final zzbfn zzemv;
    private final zzbcu zzemw;
    private final AtomicBoolean zzemx = new AtomicBoolean();

    public zzbgc(zzbfn zzbfn) {
        super(zzbfn.getContext());
        this.zzemv = zzbfn;
        this.zzemw = new zzbcu(zzbfn.zzaau(), this, this);
        if (!zzabq()) {
            addView(this.zzemv.getView());
        }
    }

    public final View getView() {
        return this;
    }

    public final zzbcu zzzi() {
        return this.zzemw;
    }

    public final void onPause() {
        this.zzemw.onPause();
        this.zzemv.onPause();
    }

    public final void zzabf() {
        this.zzemw.onDestroy();
        this.zzemv.zzabf();
    }

    public final void zzabl() {
        setBackgroundColor(0);
        this.zzemv.setBackgroundColor(0);
    }

    public final int zzzp() {
        return getMeasuredHeight();
    }

    public final int zzzq() {
        return getMeasuredWidth();
    }

    public final void zzzr() {
        this.zzemv.zzzr();
    }

    public final WebView getWebView() {
        return this.zzemv.getWebView();
    }

    public final void zza(String str, Map<String, ?> map) {
        this.zzemv.zza(str, map);
    }

    public final void zzb(String str, JSONObject jSONObject) {
        this.zzemv.zzb(str, jSONObject);
    }

    public final void zza(String str, zzahc<? super zzbfn> zzahc) {
        this.zzemv.zza(str, zzahc);
    }

    public final void zzb(String str, zzahc<? super zzbfn> zzahc) {
        this.zzemv.zzb(str, zzahc);
    }

    public final void zza(String str, Predicate<zzahc<? super zzbfn>> predicate) {
        this.zzemv.zza(str, predicate);
    }

    public final void zzaas() {
        this.zzemv.zzaas();
    }

    public final void zzds(int i) {
        this.zzemv.zzds(i);
    }

    public final void zzuq() {
        this.zzemv.zzuq();
    }

    public final void zzaat() {
        this.zzemv.zzaat();
    }

    public final void zza(boolean z, long j) {
        this.zzemv.zza(z, j);
    }

    public final void zzdb(String str) {
        this.zzemv.zzdb(str);
    }

    public final void zza(String str, JSONObject jSONObject) {
        this.zzemv.zza(str, jSONObject);
    }

    public final Activity zzzl() {
        return this.zzemv.zzzl();
    }

    public final Context zzaau() {
        return this.zzemv.zzaau();
    }

    public final zza zzzm() {
        return this.zzemv.zzzm();
    }

    public final zzc zzaav() {
        return this.zzemv.zzaav();
    }

    public final IObjectWrapper zzabd() {
        return this.zzemv.zzabd();
    }

    public final zzc zzaaw() {
        return this.zzemv.zzaaw();
    }

    public final zzbhg zzaax() {
        return this.zzemv.zzaax();
    }

    public final String zzaay() {
        return this.zzemv.zzaay();
    }

    public final zzbgz zzaaz() {
        return this.zzemv.zzaaz();
    }

    public final WebViewClient zzaba() {
        return this.zzemv.zzaba();
    }

    public final boolean zzabb() {
        return this.zzemv.zzabb();
    }

    public final zzeg zzabc() {
        return this.zzemv.zzabc();
    }

    public final zzbbd zzzo() {
        return this.zzemv.zzzo();
    }

    public final boolean zzabe() {
        return this.zzemv.zzabe();
    }

    public final boolean isDestroyed() {
        return this.zzemv.isDestroyed();
    }

    public final boolean zzabg() {
        return this.zzemv.zzabg();
    }

    public final void zzke() {
        this.zzemv.zzke();
    }

    public final void zzkd() {
        this.zzemv.zzkd();
    }

    public final String getRequestId() {
        return this.zzemv.getRequestId();
    }

    public final zzabg zzzk() {
        return this.zzemv.zzzk();
    }

    public final zzabj zzzn() {
        return this.zzemv.zzzn();
    }

    public final zzbgh zzzj() {
        return this.zzemv.zzzj();
    }

    public final void zza(zzc zzc) {
        this.zzemv.zza(zzc);
    }

    public final void zzap(IObjectWrapper iObjectWrapper) {
        this.zzemv.zzap(iObjectWrapper);
    }

    public final void zza(zzbhg zzbhg) {
        this.zzemv.zza(zzbhg);
    }

    public final void zzax(boolean z) {
        this.zzemv.zzax(z);
    }

    public final void zzabi() {
        this.zzemv.zzabi();
    }

    public final void zzbw(Context context) {
        this.zzemv.zzbw(context);
    }

    public final void zzal(boolean z) {
        this.zzemv.zzal(z);
    }

    public final void setRequestedOrientation(int i) {
        this.zzemv.setRequestedOrientation(i);
    }

    public final void zzb(zzc zzc) {
        this.zzemv.zzb(zzc);
    }

    public final void zzay(boolean z) {
        this.zzemv.zzay(z);
    }

    public final void zza(String str, zzbes zzbes) {
        this.zzemv.zza(str, zzbes);
    }

    public final zzbes zzfi(String str) {
        return this.zzemv.zzfi(str);
    }

    public final void zzabj() {
        this.zzemv.zzabj();
    }

    public final void destroy() {
        IObjectWrapper zzabd = zzabd();
        if (zzabd != null) {
            zzaye.zzdzw.post(new zzbgb(zzabd));
            zzaye.zzdzw.postDelayed(new zzbge(this), (long) ((Integer) zzwg.zzpw().zzd(zzaav.zzctl)).intValue());
            return;
        }
        this.zzemv.destroy();
    }

    public final void loadData(String str, String str2, String str3) {
        this.zzemv.loadData(str, str2, str3);
    }

    public final void loadDataWithBaseURL(String str, String str2, String str3, String str4, String str5) {
        this.zzemv.loadDataWithBaseURL(str, str2, str3, str4, str5);
    }

    public final void loadUrl(String str) {
        this.zzemv.loadUrl(str);
    }

    public final void zzb(String str, String str2, String str3) {
        this.zzemv.zzb(str, str2, str3);
    }

    public final void setOnClickListener(View.OnClickListener onClickListener) {
        this.zzemv.setOnClickListener(onClickListener);
    }

    public final void setOnTouchListener(View.OnTouchListener onTouchListener) {
        this.zzemv.setOnTouchListener(onTouchListener);
    }

    public final void setWebChromeClient(WebChromeClient webChromeClient) {
        this.zzemv.setWebChromeClient(webChromeClient);
    }

    public final void setWebViewClient(WebViewClient webViewClient) {
        this.zzemv.setWebViewClient(webViewClient);
    }

    public final void onResume() {
        this.zzemv.onResume();
    }

    public final void zzabm() {
        TextView textView = new TextView(getContext());
        Resources resources = zzq.zzla().getResources();
        textView.setText(resources != null ? resources.getString(R.string.s7) : "Test Ad");
        textView.setTextSize(15.0f);
        textView.setTextColor(-1);
        textView.setPadding(5, 0, 5, 0);
        GradientDrawable gradientDrawable = new GradientDrawable();
        gradientDrawable.setShape(0);
        gradientDrawable.setColor(-12303292);
        gradientDrawable.setCornerRadius(8.0f);
        textView.setBackground(gradientDrawable);
        addView(textView, new FrameLayout.LayoutParams(-2, -2, 49));
        bringChildToFront(textView);
    }

    public final void zzba(boolean z) {
        this.zzemv.zzba(z);
    }

    public final void zza(zzadc zzadc) {
        this.zzemv.zza(zzadc);
    }

    public final void zza(zzsa zzsa) {
        this.zzemv.zza(zzsa);
    }

    public final zzsa zzabn() {
        return this.zzemv.zzabn();
    }

    public final void zza(zzqt zzqt) {
        this.zzemv.zza(zzqt);
    }

    public final void zza(zzadh zzadh) {
        this.zzemv.zza(zzadh);
    }

    public final zzadh zzabk() {
        return this.zzemv.zzabk();
    }

    public final void zza(zzbgh zzbgh) {
        this.zzemv.zza(zzbgh);
    }

    public final boolean zzabh() {
        return this.zzemv.zzabh();
    }

    public final void zzaz(boolean z) {
        this.zzemv.zzaz(z);
    }

    public final void zzav(boolean z) {
        this.zzemv.zzav(z);
    }

    public final void zzur() {
        this.zzemv.zzur();
    }

    public final void zza(zzd zzd) {
        this.zzemv.zza(zzd);
    }

    public final void zzc(boolean z, int i) {
        this.zzemv.zzc(z, i);
    }

    public final void zza(boolean z, int i, String str) {
        this.zzemv.zza(z, i, str);
    }

    public final void zza(boolean z, int i, String str, String str2) {
        this.zzemv.zza(z, i, str, str2);
    }

    public final boolean zzb(boolean z, int i) {
        if (!this.zzemx.compareAndSet(false, true)) {
            return true;
        }
        if (((Boolean) zzwg.zzpw().zzd(zzaav.zzcns)).booleanValue()) {
            return false;
        }
        if (this.zzemv.getParent() instanceof ViewGroup) {
            ((ViewGroup) this.zzemv.getParent()).removeView(this.zzemv.getView());
        }
        return this.zzemv.zzb(z, i);
    }

    public final boolean zzabo() {
        return this.zzemx.get();
    }

    public final void zza(ViewGroup viewGroup, Activity activity, String str, String str2) {
        this.zzemv.zza(this, activity, str, str2);
    }

    public final zzso zzabp() {
        return this.zzemv.zzabp();
    }

    public final boolean zzabq() {
        return this.zzemv.zzabq();
    }
}
