package com.google.android.gms.internal.ads;

import java.util.ListIterator;

/* compiled from: com.google.android.gms:play-services-ads-lite@@19.2.0 */
final class zzejd implements ListIterator<String> {
    private final /* synthetic */ int zzhnr;
    private ListIterator<String> zzija = this.zzijb.zzijc.listIterator(this.zzhnr);
    private final /* synthetic */ zzeje zzijb;

    zzejd(zzeje zzeje, int i) {
        this.zzijb = zzeje;
        this.zzhnr = i;
    }

    public final boolean hasNext() {
        return this.zzija.hasNext();
    }

    public final boolean hasPrevious() {
        return this.zzija.hasPrevious();
    }

    public final int nextIndex() {
        return this.zzija.nextIndex();
    }

    public final int previousIndex() {
        return this.zzija.previousIndex();
    }

    public final void remove() {
        throw new UnsupportedOperationException();
    }

    public final /* synthetic */ void add(Object obj) {
        String str = (String) obj;
        throw new UnsupportedOperationException();
    }

    public final /* synthetic */ void set(Object obj) {
        String str = (String) obj;
        throw new UnsupportedOperationException();
    }

    public final /* synthetic */ Object previous() {
        return this.zzija.previous();
    }

    public final /* synthetic */ Object next() {
        return this.zzija.next();
    }
}
