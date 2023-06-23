package com.google.android.gms.internal.ads;

import android.os.Bundle;

/* compiled from: com.google.android.gms:play-services-ads@@19.2.0 */
public final class zzdaf implements zzddz<Bundle> {
    private final boolean zzgsg = false;
    private final boolean zzgsh = false;
    private final boolean zzgsi;

    public zzdaf(boolean z, boolean z2, boolean z3) {
        this.zzgsi = z3;
    }

    public final /* synthetic */ void zzs(Object obj) {
        Bundle bundle = (Bundle) obj;
        bundle.putBoolean("c_pcbg", this.zzgsg);
        bundle.putBoolean("c_phbg", this.zzgsh);
        bundle.putBoolean("ar_lr", this.zzgsi);
    }
}
