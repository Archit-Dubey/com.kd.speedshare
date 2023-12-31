package com.google.android.gms.measurement.internal;

import com.google.android.gms.internal.measurement.zzw;

/* compiled from: com.google.android.gms:play-services-measurement-sdk@@17.4.4 */
final class zzh implements Runnable {
    private final /* synthetic */ zzw zza;
    private final /* synthetic */ AppMeasurementDynamiteService zzb;

    zzh(AppMeasurementDynamiteService appMeasurementDynamiteService, zzw zzw) {
        this.zzb = appMeasurementDynamiteService;
        this.zza = zzw;
    }

    public final void run() {
        this.zzb.zza.zzw().zza(this.zza);
    }
}
