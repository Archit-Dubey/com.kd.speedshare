package com.google.android.gms.internal.ads;

import java.util.Iterator;

/* compiled from: com.google.android.gms:play-services-ads-lite@@19.2.0 */
final class zzejg implements Iterator<String> {
    private final /* synthetic */ zzeje zzijb;
    private Iterator<String> zzijx = this.zzijb.zzijc.iterator();

    zzejg(zzeje zzeje) {
        this.zzijb = zzeje;
    }

    public final boolean hasNext() {
        return this.zzijx.hasNext();
    }

    public final void remove() {
        throw new UnsupportedOperationException();
    }

    public final /* synthetic */ Object next() {
        return this.zzijx.next();
    }
}
