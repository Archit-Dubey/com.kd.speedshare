package com.google.android.gms.internal.ads;

import android.content.Context;
import android.graphics.Rect;
import android.os.Build;
import android.os.PowerManager;
import android.text.TextUtils;
import android.view.Display;
import android.view.WindowManager;
import com.google.android.gms.ads.internal.zzq;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* compiled from: com.google.android.gms:play-services-ads@@19.2.0 */
public final class zzbls implements zzalk<zzblw> {
    private final PowerManager zzaai;
    private final zzqn zzflj;
    private final Context zzvr;

    public zzbls(Context context, zzqn zzqn) {
        this.zzvr = context;
        this.zzflj = zzqn;
        this.zzaai = (PowerManager) context.getSystemService("power");
    }

    /* renamed from: zza */
    public final JSONObject zzj(zzblw zzblw) throws JSONException {
        JSONObject jSONObject;
        boolean z;
        JSONArray jSONArray = new JSONArray();
        JSONObject jSONObject2 = new JSONObject();
        if (zzblw.zzfly == null) {
            jSONObject = new JSONObject();
        } else {
            zzqt zzqt = zzblw.zzfly;
            if (this.zzflj.zzkt() != null) {
                boolean z2 = zzqt.zzbrm;
                JSONObject jSONObject3 = new JSONObject();
                JSONObject put = jSONObject3.put("afmaVersion", (Object) this.zzflj.zzks()).put("activeViewJSON", (Object) this.zzflj.zzkt()).put("timestamp", zzblw.timestamp).put("adFormat", (Object) this.zzflj.zzkr()).put("hashCode", (Object) this.zzflj.getUniqueId()).put("isMraid", false).put("isStopped", false).put("isPaused", zzblw.zzflv).put("isNative", this.zzflj.isNative());
                if (Build.VERSION.SDK_INT >= 20) {
                    z = this.zzaai.isInteractive();
                } else {
                    z = this.zzaai.isScreenOn();
                }
                put.put("isScreenOn", z).put("appMuted", zzq.zzlb().zzqd()).put("appVolume", (double) zzq.zzlb().zzqc()).put("deviceVolume", (double) zzayw.zzbi(this.zzvr.getApplicationContext()));
                Rect rect = new Rect();
                Display defaultDisplay = ((WindowManager) this.zzvr.getSystemService("window")).getDefaultDisplay();
                rect.right = defaultDisplay.getWidth();
                rect.bottom = defaultDisplay.getHeight();
                jSONObject3.put("windowVisibility", zzqt.zzaap).put("isAttachedToWindow", z2).put("viewBox", (Object) new JSONObject().put("top", zzqt.zzbrn.top).put("bottom", zzqt.zzbrn.bottom).put("left", zzqt.zzbrn.left).put("right", zzqt.zzbrn.right)).put("adBox", (Object) new JSONObject().put("top", zzqt.zzbro.top).put("bottom", zzqt.zzbro.bottom).put("left", zzqt.zzbro.left).put("right", zzqt.zzbro.right)).put("globalVisibleBox", (Object) new JSONObject().put("top", zzqt.zzbrp.top).put("bottom", zzqt.zzbrp.bottom).put("left", zzqt.zzbrp.left).put("right", zzqt.zzbrp.right)).put("globalVisibleBoxVisible", zzqt.zzbrq).put("localVisibleBox", (Object) new JSONObject().put("top", zzqt.zzbrr.top).put("bottom", zzqt.zzbrr.bottom).put("left", zzqt.zzbrr.left).put("right", zzqt.zzbrr.right)).put("localVisibleBoxVisible", zzqt.zzbrs).put("hitBox", (Object) new JSONObject().put("top", zzqt.zzbrt.top).put("bottom", zzqt.zzbrt.bottom).put("left", zzqt.zzbrt.left).put("right", zzqt.zzbrt.right)).put("screenDensity", (double) this.zzvr.getResources().getDisplayMetrics().density);
                jSONObject3.put("isVisible", zzblw.zzbrd);
                if (((Boolean) zzwg.zzpw().zzd(zzaav.zzcpl)).booleanValue()) {
                    JSONArray jSONArray2 = new JSONArray();
                    if (zzqt.zzbrv != null) {
                        for (Rect next : zzqt.zzbrv) {
                            jSONArray2.put((Object) new JSONObject().put("top", next.top).put("bottom", next.bottom).put("left", next.left).put("right", next.right));
                        }
                    }
                    jSONObject3.put("scrollableContainerBoxes", (Object) jSONArray2);
                }
                if (!TextUtils.isEmpty(zzblw.zzflx)) {
                    jSONObject3.put("doneReasonCode", (Object) "u");
                }
                jSONObject = jSONObject3;
            } else {
                throw new JSONException("Active view Info cannot be null.");
            }
        }
        jSONArray.put((Object) jSONObject);
        jSONObject2.put("units", (Object) jSONArray);
        return jSONObject2;
    }
}
