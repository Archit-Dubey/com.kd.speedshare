package com.google.android.gms.internal.ads;

import android.os.Bundle;

/* compiled from: com.google.android.gms:play-services-ads@@19.2.0 */
public final class zzddb implements zzddz<Bundle> {
    private final String zzgto;

    public zzddb(String str) {
        this.zzgto = str;
    }

    public final /* synthetic */ void zzs(Object obj) {
        ((Bundle) obj).putString("rtb", this.zzgto);
    }
}
