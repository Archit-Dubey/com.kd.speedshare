package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.ads.internal.zza;
import com.google.android.gms.ads.internal.zzi;
import com.google.android.gms.ads.internal.zzq;
import com.google.android.gms.common.util.Predicate;
import java.util.Map;
import javax.annotation.ParametersAreNonnullByDefault;
import org.json.JSONObject;

@ParametersAreNonnullByDefault
/* compiled from: com.google.android.gms:play-services-ads@@19.2.0 */
public final class zzajw implements zzajp, zzaju {
    /* access modifiers changed from: private */
    public final zzbfn zzdfp;
    private final Context zzvr;

    public zzajw(Context context, zzbbd zzbbd, zzeg zzeg, zza zza) throws zzbfz {
        Context context2 = context;
        this.zzvr = context2;
        zzq.zzkx();
        zzbfn zza2 = zzbfv.zza(context2, zzbhg.zzacp(), "", false, false, zzeg, zzbbd, (zzabi) null, (zzi) null, (zza) null, zztm.zzmz(), (zzso) null, false);
        this.zzdfp = zza2;
        zza2.getView().setWillNotDraw(true);
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

    private static void runOnUiThread(Runnable runnable) {
        zzwg.zzps();
        if (zzbaq.zzyi()) {
            runnable.run();
        } else {
            zzaye.zzdzw.post(runnable);
        }
    }

    public final void zzdb(String str) {
        runOnUiThread(new zzajz(this, str));
    }

    public final void zzcy(String str) {
        runOnUiThread(new zzaka(this, String.format("<!DOCTYPE html><html><head><script src=\"%s\"></script></head><body></body></html>", new Object[]{str})));
    }

    public final void zzcz(String str) {
        runOnUiThread(new zzakd(this, str));
    }

    public final void zzda(String str) {
        runOnUiThread(new zzakc(this, str));
    }

    public final void zza(String str, zzahc<? super zzalf> zzahc) {
        this.zzdfp.zza(str, (zzahc<? super zzbfn>) new zzakf(this, zzahc));
    }

    public final void zzb(String str, zzahc<? super zzalf> zzahc) {
        this.zzdfp.zza(str, (Predicate<zzahc<? super zzbfn>>) new zzajy(zzahc));
    }

    public final void zza(zzajx zzajx) {
        zzbgz zzaaz = this.zzdfp.zzaaz();
        zzajx.getClass();
        zzaaz.zza(zzakb.zzb(zzajx));
    }

    public final zzale zzsy() {
        return new zzalh(this);
    }

    public final void destroy() {
        this.zzdfp.destroy();
    }

    public final boolean isDestroyed() {
        return this.zzdfp.isDestroyed();
    }

    /* access modifiers changed from: package-private */
    public final /* synthetic */ void zzdg(String str) {
        this.zzdfp.zzdb(str);
    }
}
