package com.google.android.gms.internal.ads;

import java.util.Iterator;
import java.util.Map;

/* compiled from: com.google.android.gms:play-services-ads-lite@@19.2.0 */
final class zzegr<K> implements Iterator<Map.Entry<K, Object>> {
    private Iterator<Map.Entry<K, Object>> zzifv;

    public zzegr(Iterator<Map.Entry<K, Object>> it) {
        this.zzifv = it;
    }

    public final boolean hasNext() {
        return this.zzifv.hasNext();
    }

    public final void remove() {
        this.zzifv.remove();
    }

    public final /* synthetic */ Object next() {
        Map.Entry next = this.zzifv.next();
        return next.getValue() instanceof zzegq ? new zzegs(next) : next;
    }
}
