package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import com.google.android.gms.ads.internal.zzq;
import java.lang.ref.WeakReference;

/* compiled from: com.google.android.gms:play-services-ads@@19.2.0 */
public final class zzchj extends zzbpb {
    private final zzaud zzduw;
    private final WeakReference<zzbfn> zzftp;
    private final zzbxx zzftq;
    private final zzbpv zzfts;
    private final zzdpx zzftt;
    private final zzbss zzftu;
    private final zzcam zzftw;
    private boolean zzgbj = false;
    private final zzbtz zzgbx;
    private final Context zzvr;

    zzchj(zzbpa zzbpa, Context context, zzbfn zzbfn, zzcam zzcam, zzbxx zzbxx, zzbss zzbss, zzbtz zzbtz, zzbpv zzbpv, zzdkk zzdkk, zzdpx zzdpx) {
        super(zzbpa);
        this.zzvr = context;
        this.zzftw = zzcam;
        this.zzftp = new WeakReference<>(zzbfn);
        this.zzftq = zzbxx;
        this.zzftu = zzbss;
        this.zzgbx = zzbtz;
        this.zzfts = zzbpv;
        this.zzftt = zzdpx;
        this.zzduw = new zzave(zzdkk.zzdru);
    }

    public final boolean zzb(boolean z, Activity activity) {
        if (((Boolean) zzwg.zzpw().zzd(zzaav.zzcnn)).booleanValue()) {
            zzq.zzkw();
            if (zzaye.zzaw(this.zzvr)) {
                zzaxv.zzfd("Rewarded ads that show when your app is in the background are a violation of AdMob policies and may lead to blocked ad serving. To learn more, visit https://googlemobileadssdk.page.link/admob-interstitial-policies");
                this.zzftu.zzaja();
                if (((Boolean) zzwg.zzpw().zzd(zzaav.zzcno)).booleanValue()) {
                    this.zzftt.zzhb(this.zzfkn.zzhau.zzhar.zzdrt);
                }
                return false;
            }
        }
        if (this.zzgbj) {
            zzaxv.zzfd("The rewarded ad have been showed.");
            this.zzftu.zzc(new zzuy(1, "The ad has already been shown.", "com.google.android.gms.ads"));
            return false;
        }
        this.zzgbj = true;
        this.zzftq.zzajx();
        Context context = activity;
        if (activity == null) {
            context = this.zzvr;
        }
        try {
            this.zzftw.zza(z, context);
            return true;
        } catch (zzcap e) {
            this.zzftu.zza(e);
            return false;
        }
    }

    public final boolean zzana() {
        return this.zzgbj;
    }

    public final zzaud zzqv() {
        return this.zzduw;
    }

    public final boolean isClosed() {
        return this.zzfts.isClosed();
    }

    public final boolean zzqw() {
        zzbfn zzbfn = (zzbfn) this.zzftp.get();
        return zzbfn != null && !zzbfn.zzabo();
    }

    public final Bundle getAdMetadata() {
        return this.zzgbx.getAdMetadata();
    }

    public final void finalize() throws Throwable {
        try {
            zzbfn zzbfn = (zzbfn) this.zzftp.get();
            if (((Boolean) zzwg.zzpw().zzd(zzaav.zzcwo)).booleanValue()) {
                if (!this.zzgbj && zzbfn != null) {
                    zzdvi zzdvi = zzbbf.zzedl;
                    zzbfn.getClass();
                    zzdvi.execute(zzchi.zzh(zzbfn));
                }
            } else if (zzbfn != null) {
                zzbfn.destroy();
            }
        } finally {
            super.finalize();
        }
    }
}
