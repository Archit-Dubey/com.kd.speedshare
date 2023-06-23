package com.google.android.gms.internal.ads;

import java.io.IOException;
import java.util.Iterator;
import java.util.Map;

/* compiled from: com.google.android.gms:play-services-ads-lite@@19.2.0 */
final class zzehr<T> implements zzeih<T> {
    private final zzehl zzigw;
    private final boolean zzigx;
    private final zzeiz<?, ?> zzihg;
    private final zzefq<?> zzihh;

    private zzehr(zzeiz<?, ?> zzeiz, zzefq<?> zzefq, zzehl zzehl) {
        this.zzihg = zzeiz;
        this.zzigx = zzefq.zzj(zzehl);
        this.zzihh = zzefq;
        this.zzigw = zzehl;
    }

    static <T> zzehr<T> zza(zzeiz<?, ?> zzeiz, zzefq<?> zzefq, zzehl zzehl) {
        return new zzehr<>(zzeiz, zzefq, zzehl);
    }

    public final T newInstance() {
        return this.zzigw.zzbfj().zzbfp();
    }

    public final boolean equals(T t, T t2) {
        if (!this.zzihg.zzax(t).equals(this.zzihg.zzax(t2))) {
            return false;
        }
        if (this.zzigx) {
            return this.zzihh.zzah(t).equals(this.zzihh.zzah(t2));
        }
        return true;
    }

    public final int hashCode(T t) {
        int hashCode = this.zzihg.zzax(t).hashCode();
        return this.zzigx ? (hashCode * 53) + this.zzihh.zzah(t).hashCode() : hashCode;
    }

    public final void zzg(T t, T t2) {
        zzeij.zza(this.zzihg, t, t2);
        if (this.zzigx) {
            zzeij.zza(this.zzihh, t, t2);
        }
    }

    public final void zza(T t, zzejw zzejw) throws IOException {
        Iterator<Map.Entry<?, Object>> it = this.zzihh.zzah(t).iterator();
        while (it.hasNext()) {
            Map.Entry next = it.next();
            zzefw zzefw = (zzefw) next.getKey();
            if (zzefw.zzbey() != zzejt.MESSAGE || zzefw.zzbez() || zzefw.zzbfa()) {
                throw new IllegalStateException("Found invalid MessageSet item.");
            } else if (next instanceof zzegs) {
                zzejw.zzc(zzefw.zzw(), ((zzegs) next).zzbgf().zzbct());
            } else {
                zzejw.zzc(zzefw.zzw(), next.getValue());
            }
        }
        zzeiz<?, ?> zzeiz = this.zzihg;
        zzeiz.zzc(zzeiz.zzax(t), zzejw);
    }

    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r12v14, resolved type: java.lang.Object} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r0v11, resolved type: com.google.android.gms.internal.ads.zzegb$zzf} */
    /* JADX WARNING: Multi-variable type inference failed */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final void zza(T r10, byte[] r11, int r12, int r13, com.google.android.gms.internal.ads.zzeem r14) throws java.io.IOException {
        /*
            r9 = this;
            r0 = r10
            com.google.android.gms.internal.ads.zzegb r0 = (com.google.android.gms.internal.ads.zzegb) r0
            com.google.android.gms.internal.ads.zzejc r1 = r0.zzieg
            com.google.android.gms.internal.ads.zzejc r2 = com.google.android.gms.internal.ads.zzejc.zzbhs()
            if (r1 != r2) goto L_0x0011
            com.google.android.gms.internal.ads.zzejc r1 = com.google.android.gms.internal.ads.zzejc.zzbht()
            r0.zzieg = r1
        L_0x0011:
            com.google.android.gms.internal.ads.zzegb$zzd r10 = (com.google.android.gms.internal.ads.zzegb.zzd) r10
            r10.zzbfr()
            r10 = 0
            r0 = r10
        L_0x0018:
            if (r12 >= r13) goto L_0x00a4
            int r4 = com.google.android.gms.internal.ads.zzeen.zza(r11, r12, r14)
            int r2 = r14.zzhzo
            r12 = 11
            r3 = 2
            if (r2 == r12) goto L_0x0051
            r12 = r2 & 7
            if (r12 != r3) goto L_0x004c
            com.google.android.gms.internal.ads.zzefq<?> r12 = r9.zzihh
            com.google.android.gms.internal.ads.zzefo r0 = r14.zzhzr
            com.google.android.gms.internal.ads.zzehl r3 = r9.zzigw
            int r5 = r2 >>> 3
            java.lang.Object r12 = r12.zza(r0, r3, r5)
            r0 = r12
            com.google.android.gms.internal.ads.zzegb$zzf r0 = (com.google.android.gms.internal.ads.zzegb.zzf) r0
            if (r0 != 0) goto L_0x0043
            r3 = r11
            r5 = r13
            r6 = r1
            r7 = r14
            int r12 = com.google.android.gms.internal.ads.zzeen.zza((int) r2, (byte[]) r3, (int) r4, (int) r5, (com.google.android.gms.internal.ads.zzejc) r6, (com.google.android.gms.internal.ads.zzeem) r7)
            goto L_0x0018
        L_0x0043:
            com.google.android.gms.internal.ads.zzeia.zzbgz()
            java.lang.NoSuchMethodError r10 = new java.lang.NoSuchMethodError
            r10.<init>()
            throw r10
        L_0x004c:
            int r12 = com.google.android.gms.internal.ads.zzeen.zza((int) r2, (byte[]) r11, (int) r4, (int) r13, (com.google.android.gms.internal.ads.zzeem) r14)
            goto L_0x0018
        L_0x0051:
            r12 = 0
            r2 = r10
        L_0x0053:
            if (r4 >= r13) goto L_0x0099
            int r4 = com.google.android.gms.internal.ads.zzeen.zza(r11, r4, r14)
            int r5 = r14.zzhzo
            int r6 = r5 >>> 3
            r7 = r5 & 7
            if (r6 == r3) goto L_0x007b
            r8 = 3
            if (r6 == r8) goto L_0x0065
            goto L_0x0090
        L_0x0065:
            if (r0 != 0) goto L_0x0072
            if (r7 != r3) goto L_0x0090
            int r4 = com.google.android.gms.internal.ads.zzeen.zze(r11, r4, r14)
            java.lang.Object r2 = r14.zzhzq
            com.google.android.gms.internal.ads.zzeer r2 = (com.google.android.gms.internal.ads.zzeer) r2
            goto L_0x0053
        L_0x0072:
            com.google.android.gms.internal.ads.zzeia.zzbgz()
            java.lang.NoSuchMethodError r10 = new java.lang.NoSuchMethodError
            r10.<init>()
            throw r10
        L_0x007b:
            if (r7 != 0) goto L_0x0090
            int r4 = com.google.android.gms.internal.ads.zzeen.zza(r11, r4, r14)
            int r12 = r14.zzhzo
            com.google.android.gms.internal.ads.zzefq<?> r0 = r9.zzihh
            com.google.android.gms.internal.ads.zzefo r5 = r14.zzhzr
            com.google.android.gms.internal.ads.zzehl r6 = r9.zzigw
            java.lang.Object r0 = r0.zza(r5, r6, r12)
            com.google.android.gms.internal.ads.zzegb$zzf r0 = (com.google.android.gms.internal.ads.zzegb.zzf) r0
            goto L_0x0053
        L_0x0090:
            r6 = 12
            if (r5 == r6) goto L_0x0099
            int r4 = com.google.android.gms.internal.ads.zzeen.zza((int) r5, (byte[]) r11, (int) r4, (int) r13, (com.google.android.gms.internal.ads.zzeem) r14)
            goto L_0x0053
        L_0x0099:
            if (r2 == 0) goto L_0x00a1
            int r12 = r12 << 3
            r12 = r12 | r3
            r1.zzd(r12, r2)
        L_0x00a1:
            r12 = r4
            goto L_0x0018
        L_0x00a4:
            if (r12 != r13) goto L_0x00a7
            return
        L_0x00a7:
            com.google.android.gms.internal.ads.zzegl r10 = com.google.android.gms.internal.ads.zzegl.zzbgb()
            goto L_0x00ad
        L_0x00ac:
            throw r10
        L_0x00ad:
            goto L_0x00ac
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzehr.zza(java.lang.Object, byte[], int, int, com.google.android.gms.internal.ads.zzeem):void");
    }

    public final void zza(T t, zzeib zzeib, zzefo zzefo) throws IOException {
        boolean z;
        zzeiz<?, ?> zzeiz = this.zzihg;
        zzefq<?> zzefq = this.zzihh;
        Object zzay = zzeiz.zzay(t);
        zzefu<?> zzai = zzefq.zzai(t);
        do {
            try {
                if (zzeib.zzbek() == Integer.MAX_VALUE) {
                    zzeiz.zzj(t, zzay);
                    return;
                }
                int tag = zzeib.getTag();
                if (tag == 11) {
                    int i = 0;
                    Object obj = null;
                    zzeer zzeer = null;
                    while (zzeib.zzbek() != Integer.MAX_VALUE) {
                        int tag2 = zzeib.getTag();
                        if (tag2 == 16) {
                            i = zzeib.zzbdv();
                            obj = zzefq.zza(zzefo, this.zzigw, i);
                        } else if (tag2 == 26) {
                            if (obj != null) {
                                zzefq.zza(zzeib, obj, zzefo, zzai);
                            } else {
                                zzeer = zzeib.zzbdu();
                            }
                        } else if (!zzeib.zzbel()) {
                            break;
                        }
                    }
                    if (zzeib.getTag() != 12) {
                        throw zzegl.zzbfy();
                    } else if (zzeer != null) {
                        if (obj != null) {
                            zzefq.zza(zzeer, obj, zzefo, zzai);
                        } else {
                            zzeiz.zza(zzay, i, zzeer);
                        }
                    }
                } else if ((tag & 7) == 2) {
                    Object zza = zzefq.zza(zzefo, this.zzigw, tag >>> 3);
                    if (zza != null) {
                        zzefq.zza(zzeib, zza, zzefo, zzai);
                    } else {
                        z = zzeiz.zza(zzay, zzeib);
                        continue;
                    }
                } else {
                    z = zzeib.zzbel();
                    continue;
                }
                z = true;
                continue;
            } finally {
                zzeiz.zzj(t, zzay);
            }
        } while (z);
    }

    public final void zzaj(T t) {
        this.zzihg.zzaj(t);
        this.zzihh.zzaj(t);
    }

    public final boolean zzav(T t) {
        return this.zzihh.zzah(t).isInitialized();
    }

    public final int zzat(T t) {
        zzeiz<?, ?> zzeiz = this.zzihg;
        int zzaz = zzeiz.zzaz(zzeiz.zzax(t)) + 0;
        return this.zzigx ? zzaz + this.zzihh.zzah(t).zzbew() : zzaz;
    }
}
