package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Bundle;
import java.util.HashSet;

/* compiled from: com.google.android.gms:play-services-ads@@19.2.0 */
public final class zzdlv implements zzaxn, zzbsq {
    private final zzaxs zzdxc;
    private final HashSet<zzaxg> zzhbx = new HashSet<>();
    private final Context zzvr;

    public zzdlv(Context context, zzaxs zzaxs) {
        this.zzvr = context;
        this.zzdxc = zzaxs;
    }

    public final synchronized void onAdFailedToLoad(int i) {
        if (i != 3) {
            this.zzdxc.zzb(this.zzhbx);
        }
    }

    public final synchronized void zza(HashSet<zzaxg> hashSet) {
        this.zzhbx.clear();
        this.zzhbx.addAll(hashSet);
    }

    public final Bundle zzasu() {
        return this.zzdxc.zza(this.zzvr, (zzaxn) this);
    }
}
