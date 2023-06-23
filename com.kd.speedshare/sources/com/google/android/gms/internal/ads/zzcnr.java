package com.google.android.gms.internal.ads;

import java.util.concurrent.TimeoutException;

/* compiled from: com.google.android.gms:play-services-ads@@19.2.0 */
final /* synthetic */ class zzcnr implements zzduh {
    static final zzduh zzboi = new zzcnr();

    private zzcnr() {
    }

    public final zzdvf zzf(Object obj) {
        TimeoutException timeoutException = (TimeoutException) obj;
        return zzdux.immediateFailedFuture(new zzcmi(zzdls.zzhbu));
    }
}
