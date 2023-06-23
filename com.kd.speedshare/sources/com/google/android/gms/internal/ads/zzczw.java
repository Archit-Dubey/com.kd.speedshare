package com.google.android.gms.internal.ads;

import android.os.Bundle;

/* compiled from: com.google.android.gms:play-services-ads@@19.2.0 */
public final class zzczw implements zzddz<Bundle> {
    private final zzvo zzgsb;

    public zzczw(zzvo zzvo) {
        this.zzgsb = zzvo;
    }

    public final /* synthetic */ void zzs(Object obj) {
        Bundle bundle = (Bundle) obj;
        zzvo zzvo = this.zzgsb;
        if (zzvo == null) {
            return;
        }
        if (zzvo.orientation == 1) {
            bundle.putString("avo", "p");
        } else if (this.zzgsb.orientation == 2) {
            bundle.putString("avo", "l");
        }
    }
}
