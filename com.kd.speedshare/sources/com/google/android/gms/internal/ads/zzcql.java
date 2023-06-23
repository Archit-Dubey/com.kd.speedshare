package com.google.android.gms.internal.ads;

import android.os.Bundle;
import com.google.android.gms.internal.ads.zzty;
import java.util.ArrayList;

/* compiled from: com.google.android.gms:play-services-ads@@19.2.0 */
final class zzcql implements zzduu<Bundle> {
    private final /* synthetic */ boolean zzgjz;
    final /* synthetic */ zzcqi zzgka;

    zzcql(zzcqi zzcqi, boolean z) {
        this.zzgka = zzcqi;
        this.zzgjz = z;
    }

    public final void zzb(Throwable th) {
        zzaxv.zzfb("Failed to get signals bundle");
    }

    public final /* synthetic */ void onSuccess(Object obj) {
        Bundle bundle = (Bundle) obj;
        ArrayList zza = zzcqi.zzm(bundle);
        zzty.zzo.zzc zzb = zzcqi.zzl(bundle);
        this.zzgka.zzgjr.zza(new zzcqk(this, this.zzgjz, zza, this.zzgka.zzk(bundle), zzb));
    }
}
