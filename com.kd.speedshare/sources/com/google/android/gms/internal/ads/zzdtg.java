package com.google.android.gms.internal.ads;

import java.util.Iterator;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;

/* compiled from: com.google.android.gms:play-services-gass@@19.2.0 */
final class zzdtg<K> extends zzdsz<K> {
    private final transient zzdss<K> zzhlv;
    private final transient zzdsw<K, ?> zzhmh;

    zzdtg(zzdsw<K, ?> zzdsw, zzdss<K> zzdss) {
        this.zzhmh = zzdsw;
        this.zzhlv = zzdss;
    }

    /* access modifiers changed from: package-private */
    public final boolean zzawl() {
        return true;
    }

    public final zzdtn<K> zzawg() {
        return (zzdtn) zzawk().iterator();
    }

    /* access modifiers changed from: package-private */
    public final int zza(Object[] objArr, int i) {
        return zzawk().zza(objArr, i);
    }

    public final zzdss<K> zzawk() {
        return this.zzhlv;
    }

    public final boolean contains(@NullableDecl Object obj) {
        return this.zzhmh.get(obj) != null;
    }

    public final int size() {
        return this.zzhmh.size();
    }

    public final /* synthetic */ Iterator iterator() {
        return iterator();
    }
}
