package com.google.android.gms.internal.ads;

import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.internal.BaseGmsClient;

/* compiled from: com.google.android.gms:play-services-ads@@19.2.0 */
final class zzaid implements BaseGmsClient.BaseOnConnectionFailedListener {
    private final /* synthetic */ zzbbn zzbvf;

    zzaid(zzahw zzahw, zzbbn zzbbn) {
        this.zzbvf = zzbbn;
    }

    public final void onConnectionFailed(ConnectionResult connectionResult) {
        this.zzbvf.setException(new RuntimeException("Connection failed."));
    }
}
