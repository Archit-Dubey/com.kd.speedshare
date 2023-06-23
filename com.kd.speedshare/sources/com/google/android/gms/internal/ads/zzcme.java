package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.zzq;
import javax.annotation.Nullable;

/* compiled from: com.google.android.gms:play-services-ads@@19.2.0 */
final class zzcme implements zzduu<String> {
    final /* synthetic */ zzclx zzgfv;

    zzcme(zzclx zzclx) {
        this.zzgfv = zzclx;
    }

    public final void zzb(Throwable th) {
        synchronized (this) {
            boolean unused = this.zzgfv.zzgfi = true;
            this.zzgfv.zza("com.google.android.gms.ads.MobileAds", false, "Internal Error.", (int) (zzq.zzld().elapsedRealtime() - this.zzgfv.zzgfj));
            this.zzgfv.zzgfk.setException(new Exception());
        }
    }

    public final /* synthetic */ void onSuccess(@Nullable Object obj) {
        String str = (String) obj;
        synchronized (this) {
            boolean unused = this.zzgfv.zzgfi = true;
            this.zzgfv.zza("com.google.android.gms.ads.MobileAds", true, "", (int) (zzq.zzld().elapsedRealtime() - this.zzgfv.zzgfj));
            this.zzgfv.executor.execute(new zzcmh(this, str));
        }
    }
}
