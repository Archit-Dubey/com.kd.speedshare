package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.content.ContentResolver;
import android.content.Context;
import android.content.res.Configuration;
import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.os.Process;
import android.provider.Settings;
import android.telephony.TelephonyManager;
import android.view.View;
import android.view.ViewGroup;
import android.webkit.CookieManager;
import android.webkit.CookieSyncManager;
import android.webkit.WebResourceResponse;
import android.webkit.WebSettings;
import com.google.android.gms.ads.internal.zzq;
import java.io.InputStream;
import java.util.Map;

/* compiled from: com.google.android.gms:play-services-ads@@19.2.0 */
public class zzayj {
    public String getDefaultUserAgent(Context context) {
        return "";
    }

    public boolean isAttachedToWindow(View view) {
        return (view.getWindowToken() == null && view.getWindowVisibility() == 8) ? false : true;
    }

    public boolean zza(Activity activity, Configuration configuration) {
        return false;
    }

    public void zzbg(Context context) {
    }

    public void zzg(Activity activity) {
    }

    public int zzxn() {
        return 5;
    }

    public int zzxq() {
        return 1;
    }

    public long zzxr() {
        return -1;
    }

    public boolean zza(Context context, WebSettings webSettings) {
        zzbai.zza(context, new zzaym(context, webSettings));
        webSettings.setAllowFileAccessFromFileURLs(false);
        webSettings.setAllowUniversalAccessFromFileURLs(false);
        return true;
    }

    public static boolean zza(zzbfn zzbfn) {
        if (zzbfn == null) {
            return false;
        }
        zzbfn.onPause();
        return true;
    }

    public static boolean zzb(zzbfn zzbfn) {
        if (zzbfn == null) {
            return false;
        }
        zzbfn.onResume();
        return true;
    }

    public zzbfq zza(zzbfn zzbfn, zztm zztm, boolean z) {
        return new zzbgs(zzbfn, zztm, z);
    }

    public ViewGroup.LayoutParams zzxo() {
        return new ViewGroup.LayoutParams(-2, -2);
    }

    public Drawable zza(Context context, Bitmap bitmap, boolean z, float f) {
        return new BitmapDrawable(context.getResources(), bitmap);
    }

    public static boolean zzxp() {
        int myUid = Process.myUid();
        return myUid == 0 || myUid == 1000;
    }

    public CookieManager zzbh(Context context) {
        if (zzxp()) {
            return null;
        }
        try {
            CookieSyncManager.createInstance(context);
            return CookieManager.getInstance();
        } catch (Throwable th) {
            zzaxv.zzc("Failed to obtain CookieManager.", th);
            zzq.zzla().zza(th, "ApiLevelUtil.getCookieManager");
            return null;
        }
    }

    public zzui zza(Context context, TelephonyManager telephonyManager) {
        return zzui.ENUM_UNKNOWN;
    }

    public int zza(ContentResolver contentResolver) {
        return Settings.System.getInt(contentResolver, "wifi_on", 0);
    }

    public int zzb(ContentResolver contentResolver) {
        return Settings.System.getInt(contentResolver, "airplane_mode_on", 0);
    }

    public WebResourceResponse zza(String str, String str2, int i, String str3, Map<String, String> map, InputStream inputStream) {
        return new WebResourceResponse(str, str2, inputStream);
    }

    private zzayj() {
    }

    public static zzayj zzdf(int i) {
        if (i >= 28) {
            return new zzayu();
        }
        if (i >= 26) {
            return new zzayr();
        }
        if (i >= 24) {
            return new zzays();
        }
        if (i >= 21) {
            return new zzayp();
        }
        if (i >= 19) {
            return new zzayq();
        }
        if (i >= 18) {
            return new zzayn();
        }
        if (i >= 17) {
            return new zzayo();
        }
        return new zzayj();
    }
}
