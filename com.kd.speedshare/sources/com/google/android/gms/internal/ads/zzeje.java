package com.google.android.gms.internal.ads;

import java.util.AbstractList;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.RandomAccess;

/* compiled from: com.google.android.gms:play-services-ads-lite@@19.2.0 */
public final class zzeje extends AbstractList<String> implements zzegw, RandomAccess {
    /* access modifiers changed from: private */
    public final zzegw zzijc;

    public zzeje(zzegw zzegw) {
        this.zzijc = zzegw;
    }

    public final zzegw zzbgh() {
        return this;
    }

    public final Object zzhd(int i) {
        return this.zzijc.zzhd(i);
    }

    public final int size() {
        return this.zzijc.size();
    }

    public final void zzaj(zzeer zzeer) {
        throw new UnsupportedOperationException();
    }

    public final ListIterator<String> listIterator(int i) {
        return new zzejd(this, i);
    }

    public final Iterator<String> iterator() {
        return new zzejg(this);
    }

    public final List<?> zzbgg() {
        return this.zzijc.zzbgg();
    }

    public final /* synthetic */ Object get(int i) {
        return (String) this.zzijc.get(i);
    }
}
