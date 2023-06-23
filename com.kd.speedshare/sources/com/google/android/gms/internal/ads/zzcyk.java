package com.google.android.gms.internal.ads;

import android.net.Uri;
import android.os.RemoteException;
import java.util.Collections;
import javax.annotation.Nonnull;

/* compiled from: com.google.android.gms:play-services-ads@@19.2.0 */
final class zzcyk implements zzduu<Uri> {
    private final /* synthetic */ zzaqz zzgqy;

    zzcyk(zzcxz zzcxz, zzaqz zzaqz) {
        this.zzgqy = zzaqz;
    }

    public final void zzb(Throwable th) {
        try {
            zzaqz zzaqz = this.zzgqy;
            String valueOf = String.valueOf(th.getMessage());
            zzaqz.onError(valueOf.length() != 0 ? "Internal error: ".concat(valueOf) : new String("Internal error: "));
        } catch (RemoteException e) {
            zzbba.zzc("", e);
        }
    }

    public final /* synthetic */ void onSuccess(@Nonnull Object obj) {
        try {
            this.zzgqy.onSuccess(Collections.singletonList((Uri) obj));
        } catch (RemoteException e) {
            zzbba.zzc("", e);
        }
    }
}
