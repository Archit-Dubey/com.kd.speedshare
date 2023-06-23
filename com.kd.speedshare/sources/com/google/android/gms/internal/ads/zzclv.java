package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.ads.doubleclick.AppEventListener;
import com.google.android.gms.ads.internal.zzq;
import java.util.Collections;
import java.util.List;
import javax.annotation.ParametersAreNonnullByDefault;

/* compiled from: com.google.android.gms:play-services-ads@@19.2.0 */
public final class zzclv implements AppEventListener, zzbsl, zzbsq, zzbtd, zzbtg, zzbua, zzbva, zzdpa, zzuu {
    private long startTime;
    private final List<Object> zzecz;
    private final zzclj zzgfe;

    public zzclv(zzclj zzclj, zzbif zzbif) {
        this.zzgfe = zzclj;
        this.zzecz = Collections.singletonList(zzbif);
    }

    public final void zzb(zzdkw zzdkw) {
    }

    public final void zzca(Context context) {
        zza((Class<?>) zzbtg.class, "onPause", context);
    }

    public final void zzcb(Context context) {
        zza((Class<?>) zzbtg.class, "onResume", context);
    }

    public final void zzcc(Context context) {
        zza((Class<?>) zzbtg.class, "onDestroy", context);
    }

    public final void onAppEvent(String str, String str2) {
        zza((Class<?>) AppEventListener.class, "onAppEvent", str, str2);
    }

    public final void onAdLoaded() {
        long elapsedRealtime = zzq.zzld().elapsedRealtime() - this.startTime;
        StringBuilder sb = new StringBuilder(41);
        sb.append("Ad Request Latency : ");
        sb.append(elapsedRealtime);
        zzaxv.zzeh(sb.toString());
        zza((Class<?>) zzbua.class, "onAdLoaded", new Object[0]);
    }

    public final void onAdFailedToLoad(int i) {
        zza((Class<?>) zzbsq.class, "onAdFailedToLoad", Integer.valueOf(i));
    }

    public final void onAdOpened() {
        zza((Class<?>) zzbsl.class, "onAdOpened", new Object[0]);
    }

    public final void onAdClosed() {
        zza((Class<?>) zzbsl.class, "onAdClosed", new Object[0]);
    }

    public final void onAdLeftApplication() {
        zza((Class<?>) zzbsl.class, "onAdLeftApplication", new Object[0]);
    }

    public final void onAdClicked() {
        zza((Class<?>) zzuu.class, "onAdClicked", new Object[0]);
    }

    public final void onAdImpression() {
        zza((Class<?>) zzbtd.class, "onAdImpression", new Object[0]);
    }

    public final void onRewardedVideoStarted() {
        zza((Class<?>) zzbsl.class, "onRewardedVideoStarted", new Object[0]);
    }

    @ParametersAreNonnullByDefault
    public final void zzb(zzatg zzatg, String str, String str2) {
        zza((Class<?>) zzbsl.class, "onRewarded", zzatg, str, str2);
    }

    public final void onRewardedVideoCompleted() {
        zza((Class<?>) zzbsl.class, "onRewardedVideoCompleted", new Object[0]);
    }

    public final void zza(zzdor zzdor, String str) {
        zza((Class<?>) zzdos.class, "onTaskCreated", str);
    }

    public final void zzb(zzdor zzdor, String str) {
        zza((Class<?>) zzdos.class, "onTaskStarted", str);
    }

    public final void zza(zzdor zzdor, String str, Throwable th) {
        zza((Class<?>) zzdos.class, "onTaskFailed", str, th.getClass().getSimpleName());
    }

    public final void zzc(zzdor zzdor, String str) {
        zza((Class<?>) zzdos.class, "onTaskSucceeded", str);
    }

    private final void zza(Class<?> cls, String str, Object... objArr) {
        zzclj zzclj = this.zzgfe;
        List<Object> list = this.zzecz;
        String valueOf = String.valueOf(cls.getSimpleName());
        zzclj.zza(list, valueOf.length() != 0 ? "Event-".concat(valueOf) : new String("Event-"), str, objArr);
    }

    public final void zzd(zzasm zzasm) {
        this.startTime = zzq.zzld().elapsedRealtime();
        zza((Class<?>) zzbva.class, "onAdRequest", new Object[0]);
    }
}
