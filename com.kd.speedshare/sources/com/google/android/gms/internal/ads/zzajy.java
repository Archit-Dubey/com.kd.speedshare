package com.google.android.gms.internal.ads;

import com.google.android.gms.common.util.Predicate;

/* compiled from: com.google.android.gms:play-services-ads@@19.2.0 */
final /* synthetic */ class zzajy implements Predicate {
    private final zzahc zzdfq;

    zzajy(zzahc zzahc) {
        this.zzdfq = zzahc;
    }

    public final boolean apply(Object obj) {
        zzahc zzahc = (zzahc) obj;
        return (zzahc instanceof zzakf) && zzakf.zza((zzakf) zzahc).equals(this.zzdfq);
    }
}
