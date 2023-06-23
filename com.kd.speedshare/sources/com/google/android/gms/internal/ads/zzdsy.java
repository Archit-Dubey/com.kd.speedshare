package com.google.android.gms.internal.ads;

import java.util.Iterator;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;

/* compiled from: com.google.android.gms:play-services-gass@@19.2.0 */
public final class zzdsy<E> extends zzdsq<E> {
    private int zzahp;
    @NullableDecl
    private Object[] zzhmb;

    public zzdsy() {
        super(4);
    }

    zzdsy(int i) {
        super(i);
        this.zzhmb = new Object[zzdsz.zzem(i)];
    }

    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r0v6, resolved type: com.google.android.gms.internal.ads.zzdti} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r0v8, resolved type: com.google.android.gms.internal.ads.zzdsz} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r0v18, resolved type: com.google.android.gms.internal.ads.zzdti} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r2v9, resolved type: com.google.android.gms.internal.ads.zzdti} */
    /* JADX WARNING: Multi-variable type inference failed */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final com.google.android.gms.internal.ads.zzdsz<E> zzawq() {
        /*
            r8 = this;
            int r0 = r8.size
            if (r0 == 0) goto L_0x005b
            r1 = 1
            if (r0 == r1) goto L_0x0051
            java.lang.Object[] r0 = r8.zzhmb
            if (r0 == 0) goto L_0x003d
            int r0 = r8.size
            int r0 = com.google.android.gms.internal.ads.zzdsz.zzem(r0)
            java.lang.Object[] r2 = r8.zzhmb
            int r2 = r2.length
            if (r0 != r2) goto L_0x003d
            int r0 = r8.size
            java.lang.Object[] r2 = r8.zzhlr
            int r2 = r2.length
            boolean r0 = com.google.android.gms.internal.ads.zzdsz.zzv(r0, r2)
            if (r0 == 0) goto L_0x002a
            java.lang.Object[] r0 = r8.zzhlr
            int r2 = r8.size
            java.lang.Object[] r0 = java.util.Arrays.copyOf(r0, r2)
            goto L_0x002c
        L_0x002a:
            java.lang.Object[] r0 = r8.zzhlr
        L_0x002c:
            r3 = r0
            com.google.android.gms.internal.ads.zzdti r0 = new com.google.android.gms.internal.ads.zzdti
            int r4 = r8.zzahp
            java.lang.Object[] r5 = r8.zzhmb
            int r2 = r5.length
            int r6 = r2 + -1
            int r7 = r8.size
            r2 = r0
            r2.<init>(r3, r4, r5, r6, r7)
            goto L_0x004b
        L_0x003d:
            int r0 = r8.size
            java.lang.Object[] r2 = r8.zzhlr
            com.google.android.gms.internal.ads.zzdsz r0 = com.google.android.gms.internal.ads.zzdsz.zza(r0, r2)
            int r2 = r0.size()
            r8.size = r2
        L_0x004b:
            r8.zzhls = r1
            r1 = 0
            r8.zzhmb = r1
            return r0
        L_0x0051:
            java.lang.Object[] r0 = r8.zzhlr
            r1 = 0
            r0 = r0[r1]
            com.google.android.gms.internal.ads.zzdsz r0 = com.google.android.gms.internal.ads.zzdsz.zzad(r0)
            return r0
        L_0x005b:
            com.google.android.gms.internal.ads.zzdti<java.lang.Object> r0 = com.google.android.gms.internal.ads.zzdti.zzhmn
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzdsy.zzawq():com.google.android.gms.internal.ads.zzdsz");
    }

    public final /* synthetic */ zzdst zzg(Iterable iterable) {
        zzdsh.checkNotNull(iterable);
        if (this.zzhmb != null) {
            for (Object zzab : iterable) {
                zzab(zzab);
            }
        } else {
            super.zzg(iterable);
        }
        return this;
    }

    public final /* synthetic */ zzdsq zzaa(Object obj) {
        return (zzdsy) zzab(obj);
    }

    public final /* synthetic */ zzdst zza(Iterator it) {
        zzdsh.checkNotNull(it);
        while (it.hasNext()) {
            zzab(it.next());
        }
        return this;
    }

    public final /* synthetic */ zzdst zzab(Object obj) {
        zzdsh.checkNotNull(obj);
        if (this.zzhmb != null) {
            int zzem = zzdsz.zzem(this.size);
            Object[] objArr = this.zzhmb;
            if (zzem <= objArr.length) {
                int length = objArr.length - 1;
                int hashCode = obj.hashCode();
                int zzek = zzdso.zzek(hashCode);
                while (true) {
                    int i = zzek & length;
                    Object[] objArr2 = this.zzhmb;
                    Object obj2 = objArr2[i];
                    if (obj2 != null) {
                        if (obj2.equals(obj)) {
                            break;
                        }
                        zzek = i + 1;
                    } else {
                        objArr2[i] = obj;
                        this.zzahp += hashCode;
                        super.zzab(obj);
                        break;
                    }
                }
                return this;
            }
        }
        this.zzhmb = null;
        super.zzab(obj);
        return this;
    }
}
