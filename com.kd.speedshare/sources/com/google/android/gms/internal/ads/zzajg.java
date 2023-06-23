package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.ads.internal.zzq;
import fi.iki.elonen.NanoHTTPD;
import java.util.Map;
import javax.annotation.ParametersAreNonnullByDefault;
import org.json.JSONObject;

@ParametersAreNonnullByDefault
/* compiled from: com.google.android.gms:play-services-ads@@19.2.0 */
public final class zzajg extends zzajt<zzalf> implements zzajp, zzaju {
    private final zzbhu zzdfd;
    /* access modifiers changed from: private */
    public zzajx zzdfe;

    public zzajg(Context context, zzbbd zzbbd) throws zzbfz {
        try {
            zzbhu zzbhu = new zzbhu(context, new zzajm(this));
            this.zzdfd = zzbhu;
            zzbhu.setWillNotDraw(true);
            this.zzdfd.addJavascriptInterface(new zzajn(this), "GoogleJsInterface");
            zzq.zzkw().zza(context, zzbbd.zzbpn, this.zzdfd.getSettings());
            super.zzg(this);
        } catch (Throwable th) {
            throw new zzbfz("Init failed.", th);
        }
    }

    public final void zza(String str, Map map) {
        zzajo.zza((zzajp) this, str, map);
    }

    public final void zza(String str, JSONObject jSONObject) {
        zzajo.zza((zzajp) this, str, jSONObject);
    }

    public final void zzb(String str, JSONObject jSONObject) {
        zzajo.zzb(this, str, jSONObject);
    }

    public final void zzj(String str, String str2) {
        zzajo.zza((zzajp) this, str, str2);
    }

    public final void zzcy(String str) {
        zzcz(String.format("<!DOCTYPE html><html><head><script src=\"%s\"></script></head></html>", new Object[]{str}));
    }

    public final void zzcz(String str) {
        zzbbf.zzedl.execute(new zzajj(this, str));
    }

    public final void zzda(String str) {
        zzbbf.zzedl.execute(new zzaji(this, str));
    }

    public final void zza(zzajx zzajx) {
        this.zzdfe = zzajx;
    }

    public final void destroy() {
        this.zzdfd.destroy();
    }

    public final boolean isDestroyed() {
        return this.zzdfd.isDestroyed();
    }

    public final zzale zzsy() {
        return new zzalh(this);
    }

    public final void zzdb(String str) {
        zzbbf.zzedl.execute(new zzajl(this, str));
    }

    /* access modifiers changed from: package-private */
    public final /* synthetic */ void zzdc(String str) {
        this.zzdfd.zzdb(str);
    }

    /* access modifiers changed from: package-private */
    public final /* synthetic */ void zzdd(String str) {
        this.zzdfd.loadUrl(str);
    }

    /* access modifiers changed from: package-private */
    public final /* synthetic */ void zzde(String str) {
        this.zzdfd.loadData(str, NanoHTTPD.MIME_HTML, "UTF-8");
    }
}
