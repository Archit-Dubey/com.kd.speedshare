package com.google.android.gms.internal.ads;

import java.util.Iterator;

/* compiled from: com.google.android.gms:play-services-gass@@19.2.0 */
public abstract class zzdst<E> {
    zzdst() {
    }

    public abstract zzdst<E> zzab(E e);

    public zzdst<E> zzg(Iterable<? extends E> iterable) {
        for (Object zzab : iterable) {
            zzab(zzab);
        }
        return this;
    }

    public zzdst<E> zza(Iterator<? extends E> it) {
        while (it.hasNext()) {
            zzab(it.next());
        }
        return this;
    }
}
