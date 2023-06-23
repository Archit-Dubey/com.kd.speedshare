package com.google.android.gms.internal.ads;

import java.util.LinkedHashMap;

/* compiled from: com.google.android.gms:play-services-ads@@19.2.0 */
public class zzekw<K, V, V2> {
    final LinkedHashMap<K, zzelj<V>> zzipr;

    zzekw(int i) {
        this.zzipr = zzekv.zzhz(i);
    }

    /* access modifiers changed from: package-private */
    public zzekw<K, V, V2> zza(K k, zzelj<V> zzelj) {
        this.zzipr.put(zzelg.zza(k, "key"), zzelg.zza(zzelj, "provider"));
        return this;
    }
}
