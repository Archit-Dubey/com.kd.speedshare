package com.google.android.gms.internal.ads;

import java.io.IOException;
import java.lang.reflect.Field;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import sun.misc.Unsafe;

/* compiled from: com.google.android.gms:play-services-ads-lite@@19.2.0 */
final class zzehp<T> implements zzeih<T> {
    private static final Unsafe zzhni = zzejf.zzbhx();
    private static final int[] zzigr = new int[0];
    private final int[] zzigs;
    private final Object[] zzigt;
    private final int zzigu;
    private final int zzigv;
    private final zzehl zzigw;
    private final boolean zzigx;
    private final boolean zzigy;
    private final boolean zzigz;
    private final boolean zziha;
    private final int[] zzihb;
    private final int zzihc;
    private final int zzihd;
    private final zzeht zzihe;
    private final zzegv zzihf;
    private final zzeiz<?, ?> zzihg;
    private final zzefq<?> zzihh;
    private final zzehi zzihi;

    private zzehp(int[] iArr, Object[] objArr, int i, int i2, zzehl zzehl, boolean z, boolean z2, int[] iArr2, int i3, int i4, zzeht zzeht, zzegv zzegv, zzeiz<?, ?> zzeiz, zzefq<?> zzefq, zzehi zzehi) {
        this.zzigs = iArr;
        this.zzigt = objArr;
        this.zzigu = i;
        this.zzigv = i2;
        this.zzigy = zzehl instanceof zzegb;
        this.zzigz = z;
        this.zzigx = zzefq != null && zzefq.zzj(zzehl);
        this.zziha = false;
        this.zzihb = iArr2;
        this.zzihc = i3;
        this.zzihd = i4;
        this.zzihe = zzeht;
        this.zzihf = zzegv;
        this.zzihg = zzeiz;
        this.zzihh = zzefq;
        this.zzigw = zzehl;
        this.zzihi = zzehi;
    }

    private static boolean zzhj(int i) {
        return (i & 536870912) != 0;
    }

    /* JADX WARNING: Removed duplicated region for block: B:159:0x033e  */
    /* JADX WARNING: Removed duplicated region for block: B:171:0x038c  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    static <T> com.google.android.gms.internal.ads.zzehp<T> zza(java.lang.Class<T> r33, com.google.android.gms.internal.ads.zzehj r34, com.google.android.gms.internal.ads.zzeht r35, com.google.android.gms.internal.ads.zzegv r36, com.google.android.gms.internal.ads.zzeiz<?, ?> r37, com.google.android.gms.internal.ads.zzefq<?> r38, com.google.android.gms.internal.ads.zzehi r39) {
        /*
            r0 = r34
            boolean r1 = r0 instanceof com.google.android.gms.internal.ads.zzeic
            if (r1 == 0) goto L_0x040f
            com.google.android.gms.internal.ads.zzeic r0 = (com.google.android.gms.internal.ads.zzeic) r0
            int r1 = r0.zzbgp()
            int r2 = com.google.android.gms.internal.ads.zzegb.zze.zziex
            r3 = 0
            r4 = 1
            if (r1 != r2) goto L_0x0014
            r11 = 1
            goto L_0x0015
        L_0x0014:
            r11 = 0
        L_0x0015:
            java.lang.String r1 = r0.zzbha()
            int r2 = r1.length()
            char r5 = r1.charAt(r3)
            r6 = 55296(0xd800, float:7.7486E-41)
            if (r5 < r6) goto L_0x0031
            r5 = 1
        L_0x0027:
            int r7 = r5 + 1
            char r5 = r1.charAt(r5)
            if (r5 < r6) goto L_0x0032
            r5 = r7
            goto L_0x0027
        L_0x0031:
            r7 = 1
        L_0x0032:
            int r5 = r7 + 1
            char r7 = r1.charAt(r7)
            if (r7 < r6) goto L_0x0051
            r7 = r7 & 8191(0x1fff, float:1.1478E-41)
            r9 = 13
        L_0x003e:
            int r10 = r5 + 1
            char r5 = r1.charAt(r5)
            if (r5 < r6) goto L_0x004e
            r5 = r5 & 8191(0x1fff, float:1.1478E-41)
            int r5 = r5 << r9
            r7 = r7 | r5
            int r9 = r9 + 13
            r5 = r10
            goto L_0x003e
        L_0x004e:
            int r5 = r5 << r9
            r7 = r7 | r5
            r5 = r10
        L_0x0051:
            if (r7 != 0) goto L_0x005e
            int[] r7 = zzigr
            r14 = r7
            r7 = 0
            r9 = 0
            r10 = 0
            r12 = 0
            r13 = 0
            r15 = 0
            goto L_0x016f
        L_0x005e:
            int r7 = r5 + 1
            char r5 = r1.charAt(r5)
            if (r5 < r6) goto L_0x007d
            r5 = r5 & 8191(0x1fff, float:1.1478E-41)
            r9 = 13
        L_0x006a:
            int r10 = r7 + 1
            char r7 = r1.charAt(r7)
            if (r7 < r6) goto L_0x007a
            r7 = r7 & 8191(0x1fff, float:1.1478E-41)
            int r7 = r7 << r9
            r5 = r5 | r7
            int r9 = r9 + 13
            r7 = r10
            goto L_0x006a
        L_0x007a:
            int r7 = r7 << r9
            r5 = r5 | r7
            r7 = r10
        L_0x007d:
            int r9 = r7 + 1
            char r7 = r1.charAt(r7)
            if (r7 < r6) goto L_0x009c
            r7 = r7 & 8191(0x1fff, float:1.1478E-41)
            r10 = 13
        L_0x0089:
            int r12 = r9 + 1
            char r9 = r1.charAt(r9)
            if (r9 < r6) goto L_0x0099
            r9 = r9 & 8191(0x1fff, float:1.1478E-41)
            int r9 = r9 << r10
            r7 = r7 | r9
            int r10 = r10 + 13
            r9 = r12
            goto L_0x0089
        L_0x0099:
            int r9 = r9 << r10
            r7 = r7 | r9
            r9 = r12
        L_0x009c:
            int r10 = r9 + 1
            char r9 = r1.charAt(r9)
            if (r9 < r6) goto L_0x00bb
            r9 = r9 & 8191(0x1fff, float:1.1478E-41)
            r12 = 13
        L_0x00a8:
            int r13 = r10 + 1
            char r10 = r1.charAt(r10)
            if (r10 < r6) goto L_0x00b8
            r10 = r10 & 8191(0x1fff, float:1.1478E-41)
            int r10 = r10 << r12
            r9 = r9 | r10
            int r12 = r12 + 13
            r10 = r13
            goto L_0x00a8
        L_0x00b8:
            int r10 = r10 << r12
            r9 = r9 | r10
            r10 = r13
        L_0x00bb:
            int r12 = r10 + 1
            char r10 = r1.charAt(r10)
            if (r10 < r6) goto L_0x00da
            r10 = r10 & 8191(0x1fff, float:1.1478E-41)
            r13 = 13
        L_0x00c7:
            int r14 = r12 + 1
            char r12 = r1.charAt(r12)
            if (r12 < r6) goto L_0x00d7
            r12 = r12 & 8191(0x1fff, float:1.1478E-41)
            int r12 = r12 << r13
            r10 = r10 | r12
            int r13 = r13 + 13
            r12 = r14
            goto L_0x00c7
        L_0x00d7:
            int r12 = r12 << r13
            r10 = r10 | r12
            r12 = r14
        L_0x00da:
            int r13 = r12 + 1
            char r12 = r1.charAt(r12)
            if (r12 < r6) goto L_0x00f9
            r12 = r12 & 8191(0x1fff, float:1.1478E-41)
            r14 = 13
        L_0x00e6:
            int r15 = r13 + 1
            char r13 = r1.charAt(r13)
            if (r13 < r6) goto L_0x00f6
            r13 = r13 & 8191(0x1fff, float:1.1478E-41)
            int r13 = r13 << r14
            r12 = r12 | r13
            int r14 = r14 + 13
            r13 = r15
            goto L_0x00e6
        L_0x00f6:
            int r13 = r13 << r14
            r12 = r12 | r13
            r13 = r15
        L_0x00f9:
            int r14 = r13 + 1
            char r13 = r1.charAt(r13)
            if (r13 < r6) goto L_0x011a
            r13 = r13 & 8191(0x1fff, float:1.1478E-41)
            r15 = 13
        L_0x0105:
            int r16 = r14 + 1
            char r14 = r1.charAt(r14)
            if (r14 < r6) goto L_0x0116
            r14 = r14 & 8191(0x1fff, float:1.1478E-41)
            int r14 = r14 << r15
            r13 = r13 | r14
            int r15 = r15 + 13
            r14 = r16
            goto L_0x0105
        L_0x0116:
            int r14 = r14 << r15
            r13 = r13 | r14
            r14 = r16
        L_0x011a:
            int r15 = r14 + 1
            char r14 = r1.charAt(r14)
            if (r14 < r6) goto L_0x013d
            r14 = r14 & 8191(0x1fff, float:1.1478E-41)
            r16 = 13
        L_0x0126:
            int r17 = r15 + 1
            char r15 = r1.charAt(r15)
            if (r15 < r6) goto L_0x0138
            r15 = r15 & 8191(0x1fff, float:1.1478E-41)
            int r15 = r15 << r16
            r14 = r14 | r15
            int r16 = r16 + 13
            r15 = r17
            goto L_0x0126
        L_0x0138:
            int r15 = r15 << r16
            r14 = r14 | r15
            r15 = r17
        L_0x013d:
            int r16 = r15 + 1
            char r15 = r1.charAt(r15)
            if (r15 < r6) goto L_0x0162
            r15 = r15 & 8191(0x1fff, float:1.1478E-41)
            r3 = r16
            r16 = 13
        L_0x014b:
            int r17 = r3 + 1
            char r3 = r1.charAt(r3)
            if (r3 < r6) goto L_0x015d
            r3 = r3 & 8191(0x1fff, float:1.1478E-41)
            int r3 = r3 << r16
            r15 = r15 | r3
            int r16 = r16 + 13
            r3 = r17
            goto L_0x014b
        L_0x015d:
            int r3 = r3 << r16
            r15 = r15 | r3
            r16 = r17
        L_0x0162:
            int r3 = r15 + r13
            int r3 = r3 + r14
            int[] r3 = new int[r3]
            int r14 = r5 << 1
            int r14 = r14 + r7
            r7 = r14
            r14 = r3
            r3 = r5
            r5 = r16
        L_0x016f:
            sun.misc.Unsafe r8 = zzhni
            java.lang.Object[] r16 = r0.zzbhb()
            com.google.android.gms.internal.ads.zzehl r17 = r0.zzbgr()
            java.lang.Class r6 = r17.getClass()
            r17 = r5
            int r5 = r12 * 3
            int[] r5 = new int[r5]
            int r12 = r12 << r4
            java.lang.Object[] r12 = new java.lang.Object[r12]
            int r19 = r15 + r13
            r13 = r7
            r21 = r15
            r7 = r17
            r22 = r19
            r17 = 0
            r20 = 0
        L_0x0193:
            if (r7 >= r2) goto L_0x03e3
            int r23 = r7 + 1
            char r7 = r1.charAt(r7)
            r4 = 55296(0xd800, float:7.7486E-41)
            if (r7 < r4) goto L_0x01c5
            r7 = r7 & 8191(0x1fff, float:1.1478E-41)
            r4 = r23
            r23 = 13
        L_0x01a6:
            int r25 = r4 + 1
            char r4 = r1.charAt(r4)
            r26 = r2
            r2 = 55296(0xd800, float:7.7486E-41)
            if (r4 < r2) goto L_0x01bf
            r2 = r4 & 8191(0x1fff, float:1.1478E-41)
            int r2 = r2 << r23
            r7 = r7 | r2
            int r23 = r23 + 13
            r4 = r25
            r2 = r26
            goto L_0x01a6
        L_0x01bf:
            int r2 = r4 << r23
            r7 = r7 | r2
            r2 = r25
            goto L_0x01c9
        L_0x01c5:
            r26 = r2
            r2 = r23
        L_0x01c9:
            int r4 = r2 + 1
            char r2 = r1.charAt(r2)
            r23 = r4
            r4 = 55296(0xd800, float:7.7486E-41)
            if (r2 < r4) goto L_0x01fb
            r2 = r2 & 8191(0x1fff, float:1.1478E-41)
            r4 = r23
            r23 = 13
        L_0x01dc:
            int r25 = r4 + 1
            char r4 = r1.charAt(r4)
            r27 = r15
            r15 = 55296(0xd800, float:7.7486E-41)
            if (r4 < r15) goto L_0x01f5
            r4 = r4 & 8191(0x1fff, float:1.1478E-41)
            int r4 = r4 << r23
            r2 = r2 | r4
            int r23 = r23 + 13
            r4 = r25
            r15 = r27
            goto L_0x01dc
        L_0x01f5:
            int r4 = r4 << r23
            r2 = r2 | r4
            r4 = r25
            goto L_0x01ff
        L_0x01fb:
            r27 = r15
            r4 = r23
        L_0x01ff:
            r15 = r2 & 255(0xff, float:3.57E-43)
            r23 = r10
            r10 = r2 & 1024(0x400, float:1.435E-42)
            if (r10 == 0) goto L_0x020d
            int r10 = r17 + 1
            r14[r17] = r20
            r17 = r10
        L_0x020d:
            r10 = 51
            r29 = r9
            if (r15 < r10) goto L_0x02aa
            int r10 = r4 + 1
            char r4 = r1.charAt(r4)
            r9 = 55296(0xd800, float:7.7486E-41)
            if (r4 < r9) goto L_0x023c
            r4 = r4 & 8191(0x1fff, float:1.1478E-41)
            r31 = 13
        L_0x0222:
            int r32 = r10 + 1
            char r10 = r1.charAt(r10)
            if (r10 < r9) goto L_0x0237
            r9 = r10 & 8191(0x1fff, float:1.1478E-41)
            int r9 = r9 << r31
            r4 = r4 | r9
            int r31 = r31 + 13
            r10 = r32
            r9 = 55296(0xd800, float:7.7486E-41)
            goto L_0x0222
        L_0x0237:
            int r9 = r10 << r31
            r4 = r4 | r9
            r10 = r32
        L_0x023c:
            int r9 = r15 + -51
            r31 = r10
            r10 = 9
            if (r9 == r10) goto L_0x025d
            r10 = 17
            if (r9 != r10) goto L_0x0249
            goto L_0x025d
        L_0x0249:
            r10 = 12
            if (r9 != r10) goto L_0x025b
            if (r11 != 0) goto L_0x025b
            int r9 = r20 / 3
            r10 = 1
            int r9 = r9 << r10
            int r9 = r9 + r10
            int r10 = r13 + 1
            r13 = r16[r13]
            r12[r9] = r13
            r13 = r10
        L_0x025b:
            r10 = 1
            goto L_0x026a
        L_0x025d:
            int r9 = r20 / 3
            r10 = 1
            int r9 = r9 << r10
            int r9 = r9 + r10
            int r24 = r13 + 1
            r13 = r16[r13]
            r12[r9] = r13
            r13 = r24
        L_0x026a:
            int r4 = r4 << r10
            r9 = r16[r4]
            boolean r10 = r9 instanceof java.lang.reflect.Field
            if (r10 == 0) goto L_0x0274
            java.lang.reflect.Field r9 = (java.lang.reflect.Field) r9
            goto L_0x027c
        L_0x0274:
            java.lang.String r9 = (java.lang.String) r9
            java.lang.reflect.Field r9 = zza((java.lang.Class<?>) r6, (java.lang.String) r9)
            r16[r4] = r9
        L_0x027c:
            long r9 = r8.objectFieldOffset(r9)
            int r10 = (int) r9
            int r4 = r4 + 1
            r9 = r16[r4]
            r25 = r10
            boolean r10 = r9 instanceof java.lang.reflect.Field
            if (r10 == 0) goto L_0x028e
            java.lang.reflect.Field r9 = (java.lang.reflect.Field) r9
            goto L_0x0296
        L_0x028e:
            java.lang.String r9 = (java.lang.String) r9
            java.lang.reflect.Field r9 = zza((java.lang.Class<?>) r6, (java.lang.String) r9)
            r16[r4] = r9
        L_0x0296:
            long r9 = r8.objectFieldOffset(r9)
            int r4 = (int) r9
            r30 = r1
            r9 = r4
            r1 = r11
            r24 = r12
            r10 = r25
            r11 = r31
            r4 = 0
            r18 = 1
            goto L_0x03a8
        L_0x02aa:
            int r9 = r13 + 1
            r10 = r16[r13]
            java.lang.String r10 = (java.lang.String) r10
            java.lang.reflect.Field r10 = zza((java.lang.Class<?>) r6, (java.lang.String) r10)
            r13 = 9
            if (r15 == r13) goto L_0x031e
            r13 = 17
            if (r15 != r13) goto L_0x02bd
            goto L_0x031e
        L_0x02bd:
            r13 = 27
            if (r15 == r13) goto L_0x030d
            r13 = 49
            if (r15 != r13) goto L_0x02c6
            goto L_0x030d
        L_0x02c6:
            r13 = 12
            if (r15 == r13) goto L_0x02f9
            r13 = 30
            if (r15 == r13) goto L_0x02f9
            r13 = 44
            if (r15 != r13) goto L_0x02d3
            goto L_0x02f9
        L_0x02d3:
            r13 = 50
            if (r15 != r13) goto L_0x032c
            int r13 = r21 + 1
            r14[r21] = r20
            int r21 = r20 / 3
            r24 = 1
            int r21 = r21 << 1
            int r25 = r9 + 1
            r9 = r16[r9]
            r12[r21] = r9
            r9 = r2 & 2048(0x800, float:2.87E-42)
            if (r9 == 0) goto L_0x02f6
            int r21 = r21 + 1
            int r9 = r25 + 1
            r25 = r16[r25]
            r12[r21] = r25
            r21 = r13
            goto L_0x032c
        L_0x02f6:
            r21 = r13
            goto L_0x031b
        L_0x02f9:
            if (r11 != 0) goto L_0x030a
            int r13 = r20 / 3
            r24 = 1
            int r13 = r13 << 1
            int r13 = r13 + 1
            int r25 = r9 + 1
            r9 = r16[r9]
            r12[r13] = r9
            goto L_0x031b
        L_0x030a:
            r24 = 1
            goto L_0x032c
        L_0x030d:
            r24 = 1
            int r13 = r20 / 3
            int r13 = r13 << 1
            int r13 = r13 + 1
            int r25 = r9 + 1
            r9 = r16[r9]
            r12[r13] = r9
        L_0x031b:
            r13 = r25
            goto L_0x032d
        L_0x031e:
            r24 = 1
            int r13 = r20 / 3
            int r13 = r13 << 1
            int r13 = r13 + 1
            java.lang.Class r25 = r10.getType()
            r12[r13] = r25
        L_0x032c:
            r13 = r9
        L_0x032d:
            long r9 = r8.objectFieldOffset(r10)
            int r10 = (int) r9
            r9 = r2 & 4096(0x1000, float:5.74E-42)
            r25 = r13
            r13 = 4096(0x1000, float:5.74E-42)
            if (r9 != r13) goto L_0x038c
            r9 = 17
            if (r15 > r9) goto L_0x038c
            int r9 = r4 + 1
            char r4 = r1.charAt(r4)
            r13 = 55296(0xd800, float:7.7486E-41)
            if (r4 < r13) goto L_0x0364
            r4 = r4 & 8191(0x1fff, float:1.1478E-41)
            r18 = 13
        L_0x034d:
            int r28 = r9 + 1
            char r9 = r1.charAt(r9)
            if (r9 < r13) goto L_0x035f
            r9 = r9 & 8191(0x1fff, float:1.1478E-41)
            int r9 = r9 << r18
            r4 = r4 | r9
            int r18 = r18 + 13
            r9 = r28
            goto L_0x034d
        L_0x035f:
            int r9 = r9 << r18
            r4 = r4 | r9
            r9 = r28
        L_0x0364:
            r18 = 1
            int r24 = r3 << 1
            int r28 = r4 / 32
            int r24 = r24 + r28
            r13 = r16[r24]
            r30 = r1
            boolean r1 = r13 instanceof java.lang.reflect.Field
            if (r1 == 0) goto L_0x0377
            java.lang.reflect.Field r13 = (java.lang.reflect.Field) r13
            goto L_0x037f
        L_0x0377:
            java.lang.String r13 = (java.lang.String) r13
            java.lang.reflect.Field r13 = zza((java.lang.Class<?>) r6, (java.lang.String) r13)
            r16[r24] = r13
        L_0x037f:
            r1 = r11
            r24 = r12
            long r11 = r8.objectFieldOffset(r13)
            int r12 = (int) r11
            int r4 = r4 % 32
            r11 = r9
            r9 = r12
            goto L_0x0398
        L_0x038c:
            r30 = r1
            r1 = r11
            r24 = r12
            r18 = 1
            r9 = 1048575(0xfffff, float:1.469367E-39)
            r11 = r4
            r4 = 0
        L_0x0398:
            r12 = 18
            if (r15 < r12) goto L_0x03a6
            r12 = 49
            if (r15 > r12) goto L_0x03a6
            int r12 = r22 + 1
            r14[r22] = r10
            r22 = r12
        L_0x03a6:
            r13 = r25
        L_0x03a8:
            int r12 = r20 + 1
            r5[r20] = r7
            int r7 = r12 + 1
            r20 = r3
            r3 = r2 & 512(0x200, float:7.175E-43)
            if (r3 == 0) goto L_0x03b7
            r3 = 536870912(0x20000000, float:1.0842022E-19)
            goto L_0x03b8
        L_0x03b7:
            r3 = 0
        L_0x03b8:
            r2 = r2 & 256(0x100, float:3.59E-43)
            if (r2 == 0) goto L_0x03bf
            r2 = 268435456(0x10000000, float:2.5243549E-29)
            goto L_0x03c0
        L_0x03bf:
            r2 = 0
        L_0x03c0:
            r2 = r2 | r3
            int r3 = r15 << 20
            r2 = r2 | r3
            r2 = r2 | r10
            r5[r12] = r2
            int r2 = r7 + 1
            int r3 = r4 << 20
            r3 = r3 | r9
            r5[r7] = r3
            r7 = r11
            r3 = r20
            r10 = r23
            r12 = r24
            r15 = r27
            r9 = r29
            r4 = 1
            r11 = r1
            r20 = r2
            r2 = r26
            r1 = r30
            goto L_0x0193
        L_0x03e3:
            r29 = r9
            r23 = r10
            r1 = r11
            r24 = r12
            r27 = r15
            com.google.android.gms.internal.ads.zzehp r2 = new com.google.android.gms.internal.ads.zzehp
            com.google.android.gms.internal.ads.zzehl r10 = r0.zzbgr()
            r12 = 0
            r0 = r5
            r5 = r2
            r6 = r0
            r7 = r24
            r8 = r29
            r9 = r23
            r13 = r14
            r14 = r27
            r15 = r19
            r16 = r35
            r17 = r36
            r18 = r37
            r19 = r38
            r20 = r39
            r5.<init>(r6, r7, r8, r9, r10, r11, r12, r13, r14, r15, r16, r17, r18, r19, r20)
            return r2
        L_0x040f:
            com.google.android.gms.internal.ads.zzeiw r0 = (com.google.android.gms.internal.ads.zzeiw) r0
            int r0 = r0.zzbgp()
            int r1 = com.google.android.gms.internal.ads.zzegb.zze.zziex
            java.lang.NoSuchMethodError r0 = new java.lang.NoSuchMethodError
            r0.<init>()
            goto L_0x041e
        L_0x041d:
            throw r0
        L_0x041e:
            goto L_0x041d
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzehp.zza(java.lang.Class, com.google.android.gms.internal.ads.zzehj, com.google.android.gms.internal.ads.zzeht, com.google.android.gms.internal.ads.zzegv, com.google.android.gms.internal.ads.zzeiz, com.google.android.gms.internal.ads.zzefq, com.google.android.gms.internal.ads.zzehi):com.google.android.gms.internal.ads.zzehp");
    }

    private static Field zza(Class<?> cls, String str) {
        try {
            return cls.getDeclaredField(str);
        } catch (NoSuchFieldException unused) {
            Field[] declaredFields = cls.getDeclaredFields();
            for (Field field : declaredFields) {
                if (str.equals(field.getName())) {
                    return field;
                }
            }
            String name = cls.getName();
            String arrays = Arrays.toString(declaredFields);
            StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 40 + String.valueOf(name).length() + String.valueOf(arrays).length());
            sb.append("Field ");
            sb.append(str);
            sb.append(" for ");
            sb.append(name);
            sb.append(" not found. Known fields are ");
            sb.append(arrays);
            throw new RuntimeException(sb.toString());
        }
    }

    public final T newInstance() {
        return this.zzihe.newInstance(this.zzigw);
    }

    /* JADX WARNING: Can't fix incorrect switch cases order */
    /* JADX WARNING: Code restructure failed: missing block: B:14:0x006a, code lost:
        if (com.google.android.gms.internal.ads.zzeij.zzh(com.google.android.gms.internal.ads.zzejf.zzp(r10, r6), com.google.android.gms.internal.ads.zzejf.zzp(r11, r6)) != false) goto L_0x01c2;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:18:0x007e, code lost:
        if (com.google.android.gms.internal.ads.zzejf.zzl(r10, r6) == com.google.android.gms.internal.ads.zzejf.zzl(r11, r6)) goto L_0x01c2;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:22:0x0090, code lost:
        if (com.google.android.gms.internal.ads.zzejf.zzk(r10, r6) == com.google.android.gms.internal.ads.zzejf.zzk(r11, r6)) goto L_0x01c2;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:26:0x00a4, code lost:
        if (com.google.android.gms.internal.ads.zzejf.zzl(r10, r6) == com.google.android.gms.internal.ads.zzejf.zzl(r11, r6)) goto L_0x01c2;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:30:0x00b6, code lost:
        if (com.google.android.gms.internal.ads.zzejf.zzk(r10, r6) == com.google.android.gms.internal.ads.zzejf.zzk(r11, r6)) goto L_0x01c2;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:34:0x00c8, code lost:
        if (com.google.android.gms.internal.ads.zzejf.zzk(r10, r6) == com.google.android.gms.internal.ads.zzejf.zzk(r11, r6)) goto L_0x01c2;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:38:0x00da, code lost:
        if (com.google.android.gms.internal.ads.zzejf.zzk(r10, r6) == com.google.android.gms.internal.ads.zzejf.zzk(r11, r6)) goto L_0x01c2;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:42:0x00f0, code lost:
        if (com.google.android.gms.internal.ads.zzeij.zzh(com.google.android.gms.internal.ads.zzejf.zzp(r10, r6), com.google.android.gms.internal.ads.zzejf.zzp(r11, r6)) != false) goto L_0x01c2;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:46:0x0106, code lost:
        if (com.google.android.gms.internal.ads.zzeij.zzh(com.google.android.gms.internal.ads.zzejf.zzp(r10, r6), com.google.android.gms.internal.ads.zzejf.zzp(r11, r6)) != false) goto L_0x01c2;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:50:0x011c, code lost:
        if (com.google.android.gms.internal.ads.zzeij.zzh(com.google.android.gms.internal.ads.zzejf.zzp(r10, r6), com.google.android.gms.internal.ads.zzejf.zzp(r11, r6)) != false) goto L_0x01c2;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:54:0x012e, code lost:
        if (com.google.android.gms.internal.ads.zzejf.zzm(r10, r6) == com.google.android.gms.internal.ads.zzejf.zzm(r11, r6)) goto L_0x01c2;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:58:0x0140, code lost:
        if (com.google.android.gms.internal.ads.zzejf.zzk(r10, r6) == com.google.android.gms.internal.ads.zzejf.zzk(r11, r6)) goto L_0x01c2;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:62:0x0154, code lost:
        if (com.google.android.gms.internal.ads.zzejf.zzl(r10, r6) == com.google.android.gms.internal.ads.zzejf.zzl(r11, r6)) goto L_0x01c2;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:66:0x0165, code lost:
        if (com.google.android.gms.internal.ads.zzejf.zzk(r10, r6) == com.google.android.gms.internal.ads.zzejf.zzk(r11, r6)) goto L_0x01c2;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:70:0x0178, code lost:
        if (com.google.android.gms.internal.ads.zzejf.zzl(r10, r6) == com.google.android.gms.internal.ads.zzejf.zzl(r11, r6)) goto L_0x01c2;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:74:0x018b, code lost:
        if (com.google.android.gms.internal.ads.zzejf.zzl(r10, r6) == com.google.android.gms.internal.ads.zzejf.zzl(r11, r6)) goto L_0x01c2;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:78:0x01a4, code lost:
        if (java.lang.Float.floatToIntBits(com.google.android.gms.internal.ads.zzejf.zzn(r10, r6)) == java.lang.Float.floatToIntBits(com.google.android.gms.internal.ads.zzejf.zzn(r11, r6))) goto L_0x01c2;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:82:0x01bf, code lost:
        if (java.lang.Double.doubleToLongBits(com.google.android.gms.internal.ads.zzejf.zzo(r10, r6)) == java.lang.Double.doubleToLongBits(com.google.android.gms.internal.ads.zzejf.zzo(r11, r6))) goto L_0x01c2;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:83:0x01c1, code lost:
        r3 = false;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:8:0x0038, code lost:
        if (com.google.android.gms.internal.ads.zzeij.zzh(com.google.android.gms.internal.ads.zzejf.zzp(r10, r6), com.google.android.gms.internal.ads.zzejf.zzp(r11, r6)) != false) goto L_0x01c2;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final boolean equals(T r10, T r11) {
        /*
            r9 = this;
            int[] r0 = r9.zzigs
            int r0 = r0.length
            r1 = 0
            r2 = 0
        L_0x0005:
            r3 = 1
            if (r2 >= r0) goto L_0x01c9
            int r4 = r9.zzhh(r2)
            r5 = 1048575(0xfffff, float:1.469367E-39)
            r6 = r4 & r5
            long r6 = (long) r6
            r8 = 267386880(0xff00000, float:2.3665827E-29)
            r4 = r4 & r8
            int r4 = r4 >>> 20
            switch(r4) {
                case 0: goto L_0x01a7;
                case 1: goto L_0x018e;
                case 2: goto L_0x017b;
                case 3: goto L_0x0168;
                case 4: goto L_0x0157;
                case 5: goto L_0x0144;
                case 6: goto L_0x0132;
                case 7: goto L_0x0120;
                case 8: goto L_0x010a;
                case 9: goto L_0x00f4;
                case 10: goto L_0x00de;
                case 11: goto L_0x00cc;
                case 12: goto L_0x00ba;
                case 13: goto L_0x00a8;
                case 14: goto L_0x0094;
                case 15: goto L_0x0082;
                case 16: goto L_0x006e;
                case 17: goto L_0x0058;
                case 18: goto L_0x004a;
                case 19: goto L_0x004a;
                case 20: goto L_0x004a;
                case 21: goto L_0x004a;
                case 22: goto L_0x004a;
                case 23: goto L_0x004a;
                case 24: goto L_0x004a;
                case 25: goto L_0x004a;
                case 26: goto L_0x004a;
                case 27: goto L_0x004a;
                case 28: goto L_0x004a;
                case 29: goto L_0x004a;
                case 30: goto L_0x004a;
                case 31: goto L_0x004a;
                case 32: goto L_0x004a;
                case 33: goto L_0x004a;
                case 34: goto L_0x004a;
                case 35: goto L_0x004a;
                case 36: goto L_0x004a;
                case 37: goto L_0x004a;
                case 38: goto L_0x004a;
                case 39: goto L_0x004a;
                case 40: goto L_0x004a;
                case 41: goto L_0x004a;
                case 42: goto L_0x004a;
                case 43: goto L_0x004a;
                case 44: goto L_0x004a;
                case 45: goto L_0x004a;
                case 46: goto L_0x004a;
                case 47: goto L_0x004a;
                case 48: goto L_0x004a;
                case 49: goto L_0x004a;
                case 50: goto L_0x003c;
                case 51: goto L_0x001c;
                case 52: goto L_0x001c;
                case 53: goto L_0x001c;
                case 54: goto L_0x001c;
                case 55: goto L_0x001c;
                case 56: goto L_0x001c;
                case 57: goto L_0x001c;
                case 58: goto L_0x001c;
                case 59: goto L_0x001c;
                case 60: goto L_0x001c;
                case 61: goto L_0x001c;
                case 62: goto L_0x001c;
                case 63: goto L_0x001c;
                case 64: goto L_0x001c;
                case 65: goto L_0x001c;
                case 66: goto L_0x001c;
                case 67: goto L_0x001c;
                case 68: goto L_0x001c;
                default: goto L_0x001a;
            }
        L_0x001a:
            goto L_0x01c2
        L_0x001c:
            int r4 = r9.zzhi(r2)
            r4 = r4 & r5
            long r4 = (long) r4
            int r8 = com.google.android.gms.internal.ads.zzejf.zzk(r10, r4)
            int r4 = com.google.android.gms.internal.ads.zzejf.zzk(r11, r4)
            if (r8 != r4) goto L_0x01c1
            java.lang.Object r4 = com.google.android.gms.internal.ads.zzejf.zzp(r10, r6)
            java.lang.Object r5 = com.google.android.gms.internal.ads.zzejf.zzp(r11, r6)
            boolean r4 = com.google.android.gms.internal.ads.zzeij.zzh(r4, r5)
            if (r4 != 0) goto L_0x01c2
            goto L_0x01c1
        L_0x003c:
            java.lang.Object r3 = com.google.android.gms.internal.ads.zzejf.zzp(r10, r6)
            java.lang.Object r4 = com.google.android.gms.internal.ads.zzejf.zzp(r11, r6)
            boolean r3 = com.google.android.gms.internal.ads.zzeij.zzh(r3, r4)
            goto L_0x01c2
        L_0x004a:
            java.lang.Object r3 = com.google.android.gms.internal.ads.zzejf.zzp(r10, r6)
            java.lang.Object r4 = com.google.android.gms.internal.ads.zzejf.zzp(r11, r6)
            boolean r3 = com.google.android.gms.internal.ads.zzeij.zzh(r3, r4)
            goto L_0x01c2
        L_0x0058:
            boolean r4 = r9.zzc(r10, r11, r2)
            if (r4 == 0) goto L_0x01c1
            java.lang.Object r4 = com.google.android.gms.internal.ads.zzejf.zzp(r10, r6)
            java.lang.Object r5 = com.google.android.gms.internal.ads.zzejf.zzp(r11, r6)
            boolean r4 = com.google.android.gms.internal.ads.zzeij.zzh(r4, r5)
            if (r4 != 0) goto L_0x01c2
            goto L_0x01c1
        L_0x006e:
            boolean r4 = r9.zzc(r10, r11, r2)
            if (r4 == 0) goto L_0x01c1
            long r4 = com.google.android.gms.internal.ads.zzejf.zzl(r10, r6)
            long r6 = com.google.android.gms.internal.ads.zzejf.zzl(r11, r6)
            int r8 = (r4 > r6 ? 1 : (r4 == r6 ? 0 : -1))
            if (r8 == 0) goto L_0x01c2
            goto L_0x01c1
        L_0x0082:
            boolean r4 = r9.zzc(r10, r11, r2)
            if (r4 == 0) goto L_0x01c1
            int r4 = com.google.android.gms.internal.ads.zzejf.zzk(r10, r6)
            int r5 = com.google.android.gms.internal.ads.zzejf.zzk(r11, r6)
            if (r4 == r5) goto L_0x01c2
            goto L_0x01c1
        L_0x0094:
            boolean r4 = r9.zzc(r10, r11, r2)
            if (r4 == 0) goto L_0x01c1
            long r4 = com.google.android.gms.internal.ads.zzejf.zzl(r10, r6)
            long r6 = com.google.android.gms.internal.ads.zzejf.zzl(r11, r6)
            int r8 = (r4 > r6 ? 1 : (r4 == r6 ? 0 : -1))
            if (r8 == 0) goto L_0x01c2
            goto L_0x01c1
        L_0x00a8:
            boolean r4 = r9.zzc(r10, r11, r2)
            if (r4 == 0) goto L_0x01c1
            int r4 = com.google.android.gms.internal.ads.zzejf.zzk(r10, r6)
            int r5 = com.google.android.gms.internal.ads.zzejf.zzk(r11, r6)
            if (r4 == r5) goto L_0x01c2
            goto L_0x01c1
        L_0x00ba:
            boolean r4 = r9.zzc(r10, r11, r2)
            if (r4 == 0) goto L_0x01c1
            int r4 = com.google.android.gms.internal.ads.zzejf.zzk(r10, r6)
            int r5 = com.google.android.gms.internal.ads.zzejf.zzk(r11, r6)
            if (r4 == r5) goto L_0x01c2
            goto L_0x01c1
        L_0x00cc:
            boolean r4 = r9.zzc(r10, r11, r2)
            if (r4 == 0) goto L_0x01c1
            int r4 = com.google.android.gms.internal.ads.zzejf.zzk(r10, r6)
            int r5 = com.google.android.gms.internal.ads.zzejf.zzk(r11, r6)
            if (r4 == r5) goto L_0x01c2
            goto L_0x01c1
        L_0x00de:
            boolean r4 = r9.zzc(r10, r11, r2)
            if (r4 == 0) goto L_0x01c1
            java.lang.Object r4 = com.google.android.gms.internal.ads.zzejf.zzp(r10, r6)
            java.lang.Object r5 = com.google.android.gms.internal.ads.zzejf.zzp(r11, r6)
            boolean r4 = com.google.android.gms.internal.ads.zzeij.zzh(r4, r5)
            if (r4 != 0) goto L_0x01c2
            goto L_0x01c1
        L_0x00f4:
            boolean r4 = r9.zzc(r10, r11, r2)
            if (r4 == 0) goto L_0x01c1
            java.lang.Object r4 = com.google.android.gms.internal.ads.zzejf.zzp(r10, r6)
            java.lang.Object r5 = com.google.android.gms.internal.ads.zzejf.zzp(r11, r6)
            boolean r4 = com.google.android.gms.internal.ads.zzeij.zzh(r4, r5)
            if (r4 != 0) goto L_0x01c2
            goto L_0x01c1
        L_0x010a:
            boolean r4 = r9.zzc(r10, r11, r2)
            if (r4 == 0) goto L_0x01c1
            java.lang.Object r4 = com.google.android.gms.internal.ads.zzejf.zzp(r10, r6)
            java.lang.Object r5 = com.google.android.gms.internal.ads.zzejf.zzp(r11, r6)
            boolean r4 = com.google.android.gms.internal.ads.zzeij.zzh(r4, r5)
            if (r4 != 0) goto L_0x01c2
            goto L_0x01c1
        L_0x0120:
            boolean r4 = r9.zzc(r10, r11, r2)
            if (r4 == 0) goto L_0x01c1
            boolean r4 = com.google.android.gms.internal.ads.zzejf.zzm(r10, r6)
            boolean r5 = com.google.android.gms.internal.ads.zzejf.zzm(r11, r6)
            if (r4 == r5) goto L_0x01c2
            goto L_0x01c1
        L_0x0132:
            boolean r4 = r9.zzc(r10, r11, r2)
            if (r4 == 0) goto L_0x01c1
            int r4 = com.google.android.gms.internal.ads.zzejf.zzk(r10, r6)
            int r5 = com.google.android.gms.internal.ads.zzejf.zzk(r11, r6)
            if (r4 == r5) goto L_0x01c2
            goto L_0x01c1
        L_0x0144:
            boolean r4 = r9.zzc(r10, r11, r2)
            if (r4 == 0) goto L_0x01c1
            long r4 = com.google.android.gms.internal.ads.zzejf.zzl(r10, r6)
            long r6 = com.google.android.gms.internal.ads.zzejf.zzl(r11, r6)
            int r8 = (r4 > r6 ? 1 : (r4 == r6 ? 0 : -1))
            if (r8 == 0) goto L_0x01c2
            goto L_0x01c1
        L_0x0157:
            boolean r4 = r9.zzc(r10, r11, r2)
            if (r4 == 0) goto L_0x01c1
            int r4 = com.google.android.gms.internal.ads.zzejf.zzk(r10, r6)
            int r5 = com.google.android.gms.internal.ads.zzejf.zzk(r11, r6)
            if (r4 == r5) goto L_0x01c2
            goto L_0x01c1
        L_0x0168:
            boolean r4 = r9.zzc(r10, r11, r2)
            if (r4 == 0) goto L_0x01c1
            long r4 = com.google.android.gms.internal.ads.zzejf.zzl(r10, r6)
            long r6 = com.google.android.gms.internal.ads.zzejf.zzl(r11, r6)
            int r8 = (r4 > r6 ? 1 : (r4 == r6 ? 0 : -1))
            if (r8 == 0) goto L_0x01c2
            goto L_0x01c1
        L_0x017b:
            boolean r4 = r9.zzc(r10, r11, r2)
            if (r4 == 0) goto L_0x01c1
            long r4 = com.google.android.gms.internal.ads.zzejf.zzl(r10, r6)
            long r6 = com.google.android.gms.internal.ads.zzejf.zzl(r11, r6)
            int r8 = (r4 > r6 ? 1 : (r4 == r6 ? 0 : -1))
            if (r8 == 0) goto L_0x01c2
            goto L_0x01c1
        L_0x018e:
            boolean r4 = r9.zzc(r10, r11, r2)
            if (r4 == 0) goto L_0x01c1
            float r4 = com.google.android.gms.internal.ads.zzejf.zzn(r10, r6)
            int r4 = java.lang.Float.floatToIntBits(r4)
            float r5 = com.google.android.gms.internal.ads.zzejf.zzn(r11, r6)
            int r5 = java.lang.Float.floatToIntBits(r5)
            if (r4 == r5) goto L_0x01c2
            goto L_0x01c1
        L_0x01a7:
            boolean r4 = r9.zzc(r10, r11, r2)
            if (r4 == 0) goto L_0x01c1
            double r4 = com.google.android.gms.internal.ads.zzejf.zzo(r10, r6)
            long r4 = java.lang.Double.doubleToLongBits(r4)
            double r6 = com.google.android.gms.internal.ads.zzejf.zzo(r11, r6)
            long r6 = java.lang.Double.doubleToLongBits(r6)
            int r8 = (r4 > r6 ? 1 : (r4 == r6 ? 0 : -1))
            if (r8 == 0) goto L_0x01c2
        L_0x01c1:
            r3 = 0
        L_0x01c2:
            if (r3 != 0) goto L_0x01c5
            return r1
        L_0x01c5:
            int r2 = r2 + 3
            goto L_0x0005
        L_0x01c9:
            com.google.android.gms.internal.ads.zzeiz<?, ?> r0 = r9.zzihg
            java.lang.Object r0 = r0.zzax(r10)
            com.google.android.gms.internal.ads.zzeiz<?, ?> r2 = r9.zzihg
            java.lang.Object r2 = r2.zzax(r11)
            boolean r0 = r0.equals(r2)
            if (r0 != 0) goto L_0x01dc
            return r1
        L_0x01dc:
            boolean r0 = r9.zzigx
            if (r0 == 0) goto L_0x01f1
            com.google.android.gms.internal.ads.zzefq<?> r0 = r9.zzihh
            com.google.android.gms.internal.ads.zzefu r10 = r0.zzah(r10)
            com.google.android.gms.internal.ads.zzefq<?> r0 = r9.zzihh
            com.google.android.gms.internal.ads.zzefu r11 = r0.zzah(r11)
            boolean r10 = r10.equals(r11)
            return r10
        L_0x01f1:
            return r3
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzehp.equals(java.lang.Object, java.lang.Object):boolean");
    }

    /* JADX WARNING: Can't fix incorrect switch cases order */
    /* JADX WARNING: Code restructure failed: missing block: B:73:0x01c3, code lost:
        r2 = (r2 * 53) + r7;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:83:0x0227, code lost:
        r2 = r2 + r3;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:84:0x0228, code lost:
        r1 = r1 + 3;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final int hashCode(T r9) {
        /*
            r8 = this;
            int[] r0 = r8.zzigs
            int r0 = r0.length
            r1 = 0
            r2 = 0
        L_0x0005:
            if (r1 >= r0) goto L_0x022c
            int r3 = r8.zzhh(r1)
            int[] r4 = r8.zzigs
            r4 = r4[r1]
            r5 = 1048575(0xfffff, float:1.469367E-39)
            r5 = r5 & r3
            long r5 = (long) r5
            r7 = 267386880(0xff00000, float:2.3665827E-29)
            r3 = r3 & r7
            int r3 = r3 >>> 20
            r7 = 37
            switch(r3) {
                case 0: goto L_0x0219;
                case 1: goto L_0x020e;
                case 2: goto L_0x0203;
                case 3: goto L_0x01f8;
                case 4: goto L_0x01f1;
                case 5: goto L_0x01e6;
                case 6: goto L_0x01df;
                case 7: goto L_0x01d4;
                case 8: goto L_0x01c7;
                case 9: goto L_0x01b9;
                case 10: goto L_0x01ad;
                case 11: goto L_0x01a5;
                case 12: goto L_0x019d;
                case 13: goto L_0x0195;
                case 14: goto L_0x0189;
                case 15: goto L_0x0181;
                case 16: goto L_0x0175;
                case 17: goto L_0x016a;
                case 18: goto L_0x015e;
                case 19: goto L_0x015e;
                case 20: goto L_0x015e;
                case 21: goto L_0x015e;
                case 22: goto L_0x015e;
                case 23: goto L_0x015e;
                case 24: goto L_0x015e;
                case 25: goto L_0x015e;
                case 26: goto L_0x015e;
                case 27: goto L_0x015e;
                case 28: goto L_0x015e;
                case 29: goto L_0x015e;
                case 30: goto L_0x015e;
                case 31: goto L_0x015e;
                case 32: goto L_0x015e;
                case 33: goto L_0x015e;
                case 34: goto L_0x015e;
                case 35: goto L_0x015e;
                case 36: goto L_0x015e;
                case 37: goto L_0x015e;
                case 38: goto L_0x015e;
                case 39: goto L_0x015e;
                case 40: goto L_0x015e;
                case 41: goto L_0x015e;
                case 42: goto L_0x015e;
                case 43: goto L_0x015e;
                case 44: goto L_0x015e;
                case 45: goto L_0x015e;
                case 46: goto L_0x015e;
                case 47: goto L_0x015e;
                case 48: goto L_0x015e;
                case 49: goto L_0x015e;
                case 50: goto L_0x0152;
                case 51: goto L_0x013c;
                case 52: goto L_0x012a;
                case 53: goto L_0x0118;
                case 54: goto L_0x0106;
                case 55: goto L_0x00f8;
                case 56: goto L_0x00e6;
                case 57: goto L_0x00d8;
                case 58: goto L_0x00c6;
                case 59: goto L_0x00b2;
                case 60: goto L_0x00a0;
                case 61: goto L_0x008e;
                case 62: goto L_0x0080;
                case 63: goto L_0x0072;
                case 64: goto L_0x0064;
                case 65: goto L_0x0052;
                case 66: goto L_0x0044;
                case 67: goto L_0x0032;
                case 68: goto L_0x0020;
                default: goto L_0x001e;
            }
        L_0x001e:
            goto L_0x0228
        L_0x0020:
            boolean r3 = r8.zza(r9, (int) r4, (int) r1)
            if (r3 == 0) goto L_0x0228
            java.lang.Object r3 = com.google.android.gms.internal.ads.zzejf.zzp(r9, r5)
            int r2 = r2 * 53
            int r3 = r3.hashCode()
            goto L_0x0227
        L_0x0032:
            boolean r3 = r8.zza(r9, (int) r4, (int) r1)
            if (r3 == 0) goto L_0x0228
            int r2 = r2 * 53
            long r3 = zzi(r9, r5)
            int r3 = com.google.android.gms.internal.ads.zzegd.zzfr(r3)
            goto L_0x0227
        L_0x0044:
            boolean r3 = r8.zza(r9, (int) r4, (int) r1)
            if (r3 == 0) goto L_0x0228
            int r2 = r2 * 53
            int r3 = zzh(r9, r5)
            goto L_0x0227
        L_0x0052:
            boolean r3 = r8.zza(r9, (int) r4, (int) r1)
            if (r3 == 0) goto L_0x0228
            int r2 = r2 * 53
            long r3 = zzi(r9, r5)
            int r3 = com.google.android.gms.internal.ads.zzegd.zzfr(r3)
            goto L_0x0227
        L_0x0064:
            boolean r3 = r8.zza(r9, (int) r4, (int) r1)
            if (r3 == 0) goto L_0x0228
            int r2 = r2 * 53
            int r3 = zzh(r9, r5)
            goto L_0x0227
        L_0x0072:
            boolean r3 = r8.zza(r9, (int) r4, (int) r1)
            if (r3 == 0) goto L_0x0228
            int r2 = r2 * 53
            int r3 = zzh(r9, r5)
            goto L_0x0227
        L_0x0080:
            boolean r3 = r8.zza(r9, (int) r4, (int) r1)
            if (r3 == 0) goto L_0x0228
            int r2 = r2 * 53
            int r3 = zzh(r9, r5)
            goto L_0x0227
        L_0x008e:
            boolean r3 = r8.zza(r9, (int) r4, (int) r1)
            if (r3 == 0) goto L_0x0228
            int r2 = r2 * 53
            java.lang.Object r3 = com.google.android.gms.internal.ads.zzejf.zzp(r9, r5)
            int r3 = r3.hashCode()
            goto L_0x0227
        L_0x00a0:
            boolean r3 = r8.zza(r9, (int) r4, (int) r1)
            if (r3 == 0) goto L_0x0228
            java.lang.Object r3 = com.google.android.gms.internal.ads.zzejf.zzp(r9, r5)
            int r2 = r2 * 53
            int r3 = r3.hashCode()
            goto L_0x0227
        L_0x00b2:
            boolean r3 = r8.zza(r9, (int) r4, (int) r1)
            if (r3 == 0) goto L_0x0228
            int r2 = r2 * 53
            java.lang.Object r3 = com.google.android.gms.internal.ads.zzejf.zzp(r9, r5)
            java.lang.String r3 = (java.lang.String) r3
            int r3 = r3.hashCode()
            goto L_0x0227
        L_0x00c6:
            boolean r3 = r8.zza(r9, (int) r4, (int) r1)
            if (r3 == 0) goto L_0x0228
            int r2 = r2 * 53
            boolean r3 = zzj(r9, r5)
            int r3 = com.google.android.gms.internal.ads.zzegd.zzbu(r3)
            goto L_0x0227
        L_0x00d8:
            boolean r3 = r8.zza(r9, (int) r4, (int) r1)
            if (r3 == 0) goto L_0x0228
            int r2 = r2 * 53
            int r3 = zzh(r9, r5)
            goto L_0x0227
        L_0x00e6:
            boolean r3 = r8.zza(r9, (int) r4, (int) r1)
            if (r3 == 0) goto L_0x0228
            int r2 = r2 * 53
            long r3 = zzi(r9, r5)
            int r3 = com.google.android.gms.internal.ads.zzegd.zzfr(r3)
            goto L_0x0227
        L_0x00f8:
            boolean r3 = r8.zza(r9, (int) r4, (int) r1)
            if (r3 == 0) goto L_0x0228
            int r2 = r2 * 53
            int r3 = zzh(r9, r5)
            goto L_0x0227
        L_0x0106:
            boolean r3 = r8.zza(r9, (int) r4, (int) r1)
            if (r3 == 0) goto L_0x0228
            int r2 = r2 * 53
            long r3 = zzi(r9, r5)
            int r3 = com.google.android.gms.internal.ads.zzegd.zzfr(r3)
            goto L_0x0227
        L_0x0118:
            boolean r3 = r8.zza(r9, (int) r4, (int) r1)
            if (r3 == 0) goto L_0x0228
            int r2 = r2 * 53
            long r3 = zzi(r9, r5)
            int r3 = com.google.android.gms.internal.ads.zzegd.zzfr(r3)
            goto L_0x0227
        L_0x012a:
            boolean r3 = r8.zza(r9, (int) r4, (int) r1)
            if (r3 == 0) goto L_0x0228
            int r2 = r2 * 53
            float r3 = zzg(r9, (long) r5)
            int r3 = java.lang.Float.floatToIntBits(r3)
            goto L_0x0227
        L_0x013c:
            boolean r3 = r8.zza(r9, (int) r4, (int) r1)
            if (r3 == 0) goto L_0x0228
            int r2 = r2 * 53
            double r3 = zzf(r9, (long) r5)
            long r3 = java.lang.Double.doubleToLongBits(r3)
            int r3 = com.google.android.gms.internal.ads.zzegd.zzfr(r3)
            goto L_0x0227
        L_0x0152:
            int r2 = r2 * 53
            java.lang.Object r3 = com.google.android.gms.internal.ads.zzejf.zzp(r9, r5)
            int r3 = r3.hashCode()
            goto L_0x0227
        L_0x015e:
            int r2 = r2 * 53
            java.lang.Object r3 = com.google.android.gms.internal.ads.zzejf.zzp(r9, r5)
            int r3 = r3.hashCode()
            goto L_0x0227
        L_0x016a:
            java.lang.Object r3 = com.google.android.gms.internal.ads.zzejf.zzp(r9, r5)
            if (r3 == 0) goto L_0x01c3
            int r7 = r3.hashCode()
            goto L_0x01c3
        L_0x0175:
            int r2 = r2 * 53
            long r3 = com.google.android.gms.internal.ads.zzejf.zzl(r9, r5)
            int r3 = com.google.android.gms.internal.ads.zzegd.zzfr(r3)
            goto L_0x0227
        L_0x0181:
            int r2 = r2 * 53
            int r3 = com.google.android.gms.internal.ads.zzejf.zzk(r9, r5)
            goto L_0x0227
        L_0x0189:
            int r2 = r2 * 53
            long r3 = com.google.android.gms.internal.ads.zzejf.zzl(r9, r5)
            int r3 = com.google.android.gms.internal.ads.zzegd.zzfr(r3)
            goto L_0x0227
        L_0x0195:
            int r2 = r2 * 53
            int r3 = com.google.android.gms.internal.ads.zzejf.zzk(r9, r5)
            goto L_0x0227
        L_0x019d:
            int r2 = r2 * 53
            int r3 = com.google.android.gms.internal.ads.zzejf.zzk(r9, r5)
            goto L_0x0227
        L_0x01a5:
            int r2 = r2 * 53
            int r3 = com.google.android.gms.internal.ads.zzejf.zzk(r9, r5)
            goto L_0x0227
        L_0x01ad:
            int r2 = r2 * 53
            java.lang.Object r3 = com.google.android.gms.internal.ads.zzejf.zzp(r9, r5)
            int r3 = r3.hashCode()
            goto L_0x0227
        L_0x01b9:
            java.lang.Object r3 = com.google.android.gms.internal.ads.zzejf.zzp(r9, r5)
            if (r3 == 0) goto L_0x01c3
            int r7 = r3.hashCode()
        L_0x01c3:
            int r2 = r2 * 53
            int r2 = r2 + r7
            goto L_0x0228
        L_0x01c7:
            int r2 = r2 * 53
            java.lang.Object r3 = com.google.android.gms.internal.ads.zzejf.zzp(r9, r5)
            java.lang.String r3 = (java.lang.String) r3
            int r3 = r3.hashCode()
            goto L_0x0227
        L_0x01d4:
            int r2 = r2 * 53
            boolean r3 = com.google.android.gms.internal.ads.zzejf.zzm(r9, r5)
            int r3 = com.google.android.gms.internal.ads.zzegd.zzbu(r3)
            goto L_0x0227
        L_0x01df:
            int r2 = r2 * 53
            int r3 = com.google.android.gms.internal.ads.zzejf.zzk(r9, r5)
            goto L_0x0227
        L_0x01e6:
            int r2 = r2 * 53
            long r3 = com.google.android.gms.internal.ads.zzejf.zzl(r9, r5)
            int r3 = com.google.android.gms.internal.ads.zzegd.zzfr(r3)
            goto L_0x0227
        L_0x01f1:
            int r2 = r2 * 53
            int r3 = com.google.android.gms.internal.ads.zzejf.zzk(r9, r5)
            goto L_0x0227
        L_0x01f8:
            int r2 = r2 * 53
            long r3 = com.google.android.gms.internal.ads.zzejf.zzl(r9, r5)
            int r3 = com.google.android.gms.internal.ads.zzegd.zzfr(r3)
            goto L_0x0227
        L_0x0203:
            int r2 = r2 * 53
            long r3 = com.google.android.gms.internal.ads.zzejf.zzl(r9, r5)
            int r3 = com.google.android.gms.internal.ads.zzegd.zzfr(r3)
            goto L_0x0227
        L_0x020e:
            int r2 = r2 * 53
            float r3 = com.google.android.gms.internal.ads.zzejf.zzn(r9, r5)
            int r3 = java.lang.Float.floatToIntBits(r3)
            goto L_0x0227
        L_0x0219:
            int r2 = r2 * 53
            double r3 = com.google.android.gms.internal.ads.zzejf.zzo(r9, r5)
            long r3 = java.lang.Double.doubleToLongBits(r3)
            int r3 = com.google.android.gms.internal.ads.zzegd.zzfr(r3)
        L_0x0227:
            int r2 = r2 + r3
        L_0x0228:
            int r1 = r1 + 3
            goto L_0x0005
        L_0x022c:
            int r2 = r2 * 53
            com.google.android.gms.internal.ads.zzeiz<?, ?> r0 = r8.zzihg
            java.lang.Object r0 = r0.zzax(r9)
            int r0 = r0.hashCode()
            int r2 = r2 + r0
            boolean r0 = r8.zzigx
            if (r0 == 0) goto L_0x024a
            int r2 = r2 * 53
            com.google.android.gms.internal.ads.zzefq<?> r0 = r8.zzihh
            com.google.android.gms.internal.ads.zzefu r9 = r0.zzah(r9)
            int r9 = r9.hashCode()
            int r2 = r2 + r9
        L_0x024a:
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzehp.hashCode(java.lang.Object):int");
    }

    public final void zzg(T t, T t2) {
        if (t2 != null) {
            for (int i = 0; i < this.zzigs.length; i += 3) {
                int zzhh = zzhh(i);
                long j = (long) (1048575 & zzhh);
                int i2 = this.zzigs[i];
                switch ((zzhh & 267386880) >>> 20) {
                    case 0:
                        if (!zze(t2, i)) {
                            break;
                        } else {
                            zzejf.zza((Object) t, j, zzejf.zzo(t2, j));
                            zzf(t, i);
                            break;
                        }
                    case 1:
                        if (!zze(t2, i)) {
                            break;
                        } else {
                            zzejf.zza((Object) t, j, zzejf.zzn(t2, j));
                            zzf(t, i);
                            break;
                        }
                    case 2:
                        if (!zze(t2, i)) {
                            break;
                        } else {
                            zzejf.zza((Object) t, j, zzejf.zzl(t2, j));
                            zzf(t, i);
                            break;
                        }
                    case 3:
                        if (!zze(t2, i)) {
                            break;
                        } else {
                            zzejf.zza((Object) t, j, zzejf.zzl(t2, j));
                            zzf(t, i);
                            break;
                        }
                    case 4:
                        if (!zze(t2, i)) {
                            break;
                        } else {
                            zzejf.zzb((Object) t, j, zzejf.zzk(t2, j));
                            zzf(t, i);
                            break;
                        }
                    case 5:
                        if (!zze(t2, i)) {
                            break;
                        } else {
                            zzejf.zza((Object) t, j, zzejf.zzl(t2, j));
                            zzf(t, i);
                            break;
                        }
                    case 6:
                        if (!zze(t2, i)) {
                            break;
                        } else {
                            zzejf.zzb((Object) t, j, zzejf.zzk(t2, j));
                            zzf(t, i);
                            break;
                        }
                    case 7:
                        if (!zze(t2, i)) {
                            break;
                        } else {
                            zzejf.zza((Object) t, j, zzejf.zzm(t2, j));
                            zzf(t, i);
                            break;
                        }
                    case 8:
                        if (!zze(t2, i)) {
                            break;
                        } else {
                            zzejf.zza((Object) t, j, zzejf.zzp(t2, j));
                            zzf(t, i);
                            break;
                        }
                    case 9:
                        zza(t, t2, i);
                        break;
                    case 10:
                        if (!zze(t2, i)) {
                            break;
                        } else {
                            zzejf.zza((Object) t, j, zzejf.zzp(t2, j));
                            zzf(t, i);
                            break;
                        }
                    case 11:
                        if (!zze(t2, i)) {
                            break;
                        } else {
                            zzejf.zzb((Object) t, j, zzejf.zzk(t2, j));
                            zzf(t, i);
                            break;
                        }
                    case 12:
                        if (!zze(t2, i)) {
                            break;
                        } else {
                            zzejf.zzb((Object) t, j, zzejf.zzk(t2, j));
                            zzf(t, i);
                            break;
                        }
                    case 13:
                        if (!zze(t2, i)) {
                            break;
                        } else {
                            zzejf.zzb((Object) t, j, zzejf.zzk(t2, j));
                            zzf(t, i);
                            break;
                        }
                    case 14:
                        if (!zze(t2, i)) {
                            break;
                        } else {
                            zzejf.zza((Object) t, j, zzejf.zzl(t2, j));
                            zzf(t, i);
                            break;
                        }
                    case 15:
                        if (!zze(t2, i)) {
                            break;
                        } else {
                            zzejf.zzb((Object) t, j, zzejf.zzk(t2, j));
                            zzf(t, i);
                            break;
                        }
                    case 16:
                        if (!zze(t2, i)) {
                            break;
                        } else {
                            zzejf.zza((Object) t, j, zzejf.zzl(t2, j));
                            zzf(t, i);
                            break;
                        }
                    case 17:
                        zza(t, t2, i);
                        break;
                    case 18:
                    case 19:
                    case 20:
                    case 21:
                    case 22:
                    case 23:
                    case 24:
                    case 25:
                    case 26:
                    case 27:
                    case 28:
                    case 29:
                    case 30:
                    case 31:
                    case 32:
                    case 33:
                    case 34:
                    case 35:
                    case 36:
                    case 37:
                    case 38:
                    case 39:
                    case 40:
                    case 41:
                    case 42:
                    case 43:
                    case 44:
                    case 45:
                    case 46:
                    case 47:
                    case 48:
                    case 49:
                        this.zzihf.zza(t, t2, j);
                        break;
                    case 50:
                        zzeij.zza(this.zzihi, t, t2, j);
                        break;
                    case 51:
                    case 52:
                    case 53:
                    case 54:
                    case 55:
                    case 56:
                    case 57:
                    case 58:
                    case 59:
                        if (!zza(t2, i2, i)) {
                            break;
                        } else {
                            zzejf.zza((Object) t, j, zzejf.zzp(t2, j));
                            zzb(t, i2, i);
                            break;
                        }
                    case 60:
                        zzb(t, t2, i);
                        break;
                    case 61:
                    case 62:
                    case 63:
                    case 64:
                    case 65:
                    case 66:
                    case 67:
                        if (!zza(t2, i2, i)) {
                            break;
                        } else {
                            zzejf.zza((Object) t, j, zzejf.zzp(t2, j));
                            zzb(t, i2, i);
                            break;
                        }
                    case 68:
                        zzb(t, t2, i);
                        break;
                }
            }
            zzeij.zza(this.zzihg, t, t2);
            if (this.zzigx) {
                zzeij.zza(this.zzihh, t, t2);
                return;
            }
            return;
        }
        throw null;
    }

    private final void zza(T t, T t2, int i) {
        long zzhh = (long) (zzhh(i) & 1048575);
        if (zze(t2, i)) {
            Object zzp = zzejf.zzp(t, zzhh);
            Object zzp2 = zzejf.zzp(t2, zzhh);
            if (zzp != null && zzp2 != null) {
                zzejf.zza((Object) t, zzhh, zzegd.zze(zzp, zzp2));
                zzf(t, i);
            } else if (zzp2 != null) {
                zzejf.zza((Object) t, zzhh, zzp2);
                zzf(t, i);
            }
        }
    }

    private final void zzb(T t, T t2, int i) {
        int zzhh = zzhh(i);
        int i2 = this.zzigs[i];
        long j = (long) (zzhh & 1048575);
        if (zza(t2, i2, i)) {
            Object zzp = zzejf.zzp(t, j);
            Object zzp2 = zzejf.zzp(t2, j);
            if (zzp != null && zzp2 != null) {
                zzejf.zza((Object) t, j, zzegd.zze(zzp, zzp2));
                zzb(t, i2, i);
            } else if (zzp2 != null) {
                zzejf.zza((Object) t, j, zzp2);
                zzb(t, i2, i);
            }
        }
    }

    /* JADX WARNING: Can't fix incorrect switch cases order */
    /* JADX WARNING: Code restructure failed: missing block: B:397:0x0832, code lost:
        r9 = (r9 + r10) + r4;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:417:0x090b, code lost:
        r13 = 0;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:433:0x0953, code lost:
        r5 = r5 + r9;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:470:0x09fd, code lost:
        r5 = r5 + r9;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:479:0x0a1f, code lost:
        r3 = r3 + 3;
        r9 = r13;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final int zzat(T r20) {
        /*
            r19 = this;
            r0 = r19
            r1 = r20
            boolean r2 = r0.zzigz
            r3 = 267386880(0xff00000, float:2.3665827E-29)
            r4 = 0
            r7 = 1
            r8 = 1048575(0xfffff, float:1.469367E-39)
            r9 = 0
            r11 = 0
            if (r2 == 0) goto L_0x04f2
            sun.misc.Unsafe r2 = zzhni
            r12 = 0
            r13 = 0
        L_0x0016:
            int[] r14 = r0.zzigs
            int r14 = r14.length
            if (r12 >= r14) goto L_0x04ea
            int r14 = r0.zzhh(r12)
            r15 = r14 & r3
            int r15 = r15 >>> 20
            int[] r3 = r0.zzigs
            r3 = r3[r12]
            r14 = r14 & r8
            long r5 = (long) r14
            com.google.android.gms.internal.ads.zzefv r14 = com.google.android.gms.internal.ads.zzefv.DOUBLE_LIST_PACKED
            int r14 = r14.id()
            if (r15 < r14) goto L_0x0041
            com.google.android.gms.internal.ads.zzefv r14 = com.google.android.gms.internal.ads.zzefv.SINT64_LIST_PACKED
            int r14 = r14.id()
            if (r15 > r14) goto L_0x0041
            int[] r14 = r0.zzigs
            int r17 = r12 + 2
            r14 = r14[r17]
            r14 = r14 & r8
            goto L_0x0042
        L_0x0041:
            r14 = 0
        L_0x0042:
            switch(r15) {
                case 0: goto L_0x04d6;
                case 1: goto L_0x04ca;
                case 2: goto L_0x04ba;
                case 3: goto L_0x04aa;
                case 4: goto L_0x049a;
                case 5: goto L_0x048e;
                case 6: goto L_0x0482;
                case 7: goto L_0x0476;
                case 8: goto L_0x0458;
                case 9: goto L_0x0444;
                case 10: goto L_0x0433;
                case 11: goto L_0x0424;
                case 12: goto L_0x0415;
                case 13: goto L_0x040a;
                case 14: goto L_0x03ff;
                case 15: goto L_0x03f0;
                case 16: goto L_0x03e1;
                case 17: goto L_0x03cc;
                case 18: goto L_0x03c1;
                case 19: goto L_0x03b8;
                case 20: goto L_0x03af;
                case 21: goto L_0x03a6;
                case 22: goto L_0x039d;
                case 23: goto L_0x0394;
                case 24: goto L_0x038b;
                case 25: goto L_0x0382;
                case 26: goto L_0x0379;
                case 27: goto L_0x036c;
                case 28: goto L_0x0363;
                case 29: goto L_0x035a;
                case 30: goto L_0x0350;
                case 31: goto L_0x0346;
                case 32: goto L_0x033c;
                case 33: goto L_0x0332;
                case 34: goto L_0x0328;
                case 35: goto L_0x0308;
                case 36: goto L_0x02eb;
                case 37: goto L_0x02ce;
                case 38: goto L_0x02b1;
                case 39: goto L_0x0293;
                case 40: goto L_0x0275;
                case 41: goto L_0x0257;
                case 42: goto L_0x0239;
                case 43: goto L_0x021b;
                case 44: goto L_0x01fd;
                case 45: goto L_0x01df;
                case 46: goto L_0x01c1;
                case 47: goto L_0x01a3;
                case 48: goto L_0x0185;
                case 49: goto L_0x0177;
                case 50: goto L_0x0167;
                case 51: goto L_0x0159;
                case 52: goto L_0x014d;
                case 53: goto L_0x013d;
                case 54: goto L_0x012d;
                case 55: goto L_0x011d;
                case 56: goto L_0x0111;
                case 57: goto L_0x0105;
                case 58: goto L_0x00f9;
                case 59: goto L_0x00db;
                case 60: goto L_0x00c7;
                case 61: goto L_0x00b5;
                case 62: goto L_0x00a5;
                case 63: goto L_0x0095;
                case 64: goto L_0x0089;
                case 65: goto L_0x007d;
                case 66: goto L_0x006d;
                case 67: goto L_0x005d;
                case 68: goto L_0x0047;
                default: goto L_0x0045;
            }
        L_0x0045:
            goto L_0x04e4
        L_0x0047:
            boolean r14 = r0.zza(r1, (int) r3, (int) r12)
            if (r14 == 0) goto L_0x04e4
            java.lang.Object r5 = com.google.android.gms.internal.ads.zzejf.zzp(r1, r5)
            com.google.android.gms.internal.ads.zzehl r5 = (com.google.android.gms.internal.ads.zzehl) r5
            com.google.android.gms.internal.ads.zzeih r6 = r0.zzhe(r12)
            int r3 = com.google.android.gms.internal.ads.zzefl.zzc(r3, r5, r6)
            goto L_0x03c9
        L_0x005d:
            boolean r14 = r0.zza(r1, (int) r3, (int) r12)
            if (r14 == 0) goto L_0x04e4
            long r5 = zzi(r1, r5)
            int r3 = com.google.android.gms.internal.ads.zzefl.zzm(r3, r5)
            goto L_0x03c9
        L_0x006d:
            boolean r14 = r0.zza(r1, (int) r3, (int) r12)
            if (r14 == 0) goto L_0x04e4
            int r5 = zzh(r1, r5)
            int r3 = com.google.android.gms.internal.ads.zzefl.zzah(r3, r5)
            goto L_0x03c9
        L_0x007d:
            boolean r5 = r0.zza(r1, (int) r3, (int) r12)
            if (r5 == 0) goto L_0x04e4
            int r3 = com.google.android.gms.internal.ads.zzefl.zzo(r3, r9)
            goto L_0x03c9
        L_0x0089:
            boolean r5 = r0.zza(r1, (int) r3, (int) r12)
            if (r5 == 0) goto L_0x04e4
            int r3 = com.google.android.gms.internal.ads.zzefl.zzaj(r3, r11)
            goto L_0x03c9
        L_0x0095:
            boolean r14 = r0.zza(r1, (int) r3, (int) r12)
            if (r14 == 0) goto L_0x04e4
            int r5 = zzh(r1, r5)
            int r3 = com.google.android.gms.internal.ads.zzefl.zzak(r3, r5)
            goto L_0x03c9
        L_0x00a5:
            boolean r14 = r0.zza(r1, (int) r3, (int) r12)
            if (r14 == 0) goto L_0x04e4
            int r5 = zzh(r1, r5)
            int r3 = com.google.android.gms.internal.ads.zzefl.zzag(r3, r5)
            goto L_0x03c9
        L_0x00b5:
            boolean r14 = r0.zza(r1, (int) r3, (int) r12)
            if (r14 == 0) goto L_0x04e4
            java.lang.Object r5 = com.google.android.gms.internal.ads.zzejf.zzp(r1, r5)
            com.google.android.gms.internal.ads.zzeer r5 = (com.google.android.gms.internal.ads.zzeer) r5
            int r3 = com.google.android.gms.internal.ads.zzefl.zzc((int) r3, (com.google.android.gms.internal.ads.zzeer) r5)
            goto L_0x03c9
        L_0x00c7:
            boolean r14 = r0.zza(r1, (int) r3, (int) r12)
            if (r14 == 0) goto L_0x04e4
            java.lang.Object r5 = com.google.android.gms.internal.ads.zzejf.zzp(r1, r5)
            com.google.android.gms.internal.ads.zzeih r6 = r0.zzhe(r12)
            int r3 = com.google.android.gms.internal.ads.zzeij.zzc((int) r3, (java.lang.Object) r5, (com.google.android.gms.internal.ads.zzeih) r6)
            goto L_0x03c9
        L_0x00db:
            boolean r14 = r0.zza(r1, (int) r3, (int) r12)
            if (r14 == 0) goto L_0x04e4
            java.lang.Object r5 = com.google.android.gms.internal.ads.zzejf.zzp(r1, r5)
            boolean r6 = r5 instanceof com.google.android.gms.internal.ads.zzeer
            if (r6 == 0) goto L_0x00f1
            com.google.android.gms.internal.ads.zzeer r5 = (com.google.android.gms.internal.ads.zzeer) r5
            int r3 = com.google.android.gms.internal.ads.zzefl.zzc((int) r3, (com.google.android.gms.internal.ads.zzeer) r5)
            goto L_0x03c9
        L_0x00f1:
            java.lang.String r5 = (java.lang.String) r5
            int r3 = com.google.android.gms.internal.ads.zzefl.zzl((int) r3, (java.lang.String) r5)
            goto L_0x03c9
        L_0x00f9:
            boolean r5 = r0.zza(r1, (int) r3, (int) r12)
            if (r5 == 0) goto L_0x04e4
            int r3 = com.google.android.gms.internal.ads.zzefl.zzi((int) r3, (boolean) r7)
            goto L_0x03c9
        L_0x0105:
            boolean r5 = r0.zza(r1, (int) r3, (int) r12)
            if (r5 == 0) goto L_0x04e4
            int r3 = com.google.android.gms.internal.ads.zzefl.zzai(r3, r11)
            goto L_0x03c9
        L_0x0111:
            boolean r5 = r0.zza(r1, (int) r3, (int) r12)
            if (r5 == 0) goto L_0x04e4
            int r3 = com.google.android.gms.internal.ads.zzefl.zzn(r3, r9)
            goto L_0x03c9
        L_0x011d:
            boolean r14 = r0.zza(r1, (int) r3, (int) r12)
            if (r14 == 0) goto L_0x04e4
            int r5 = zzh(r1, r5)
            int r3 = com.google.android.gms.internal.ads.zzefl.zzaf(r3, r5)
            goto L_0x03c9
        L_0x012d:
            boolean r14 = r0.zza(r1, (int) r3, (int) r12)
            if (r14 == 0) goto L_0x04e4
            long r5 = zzi(r1, r5)
            int r3 = com.google.android.gms.internal.ads.zzefl.zzl((int) r3, (long) r5)
            goto L_0x03c9
        L_0x013d:
            boolean r14 = r0.zza(r1, (int) r3, (int) r12)
            if (r14 == 0) goto L_0x04e4
            long r5 = zzi(r1, r5)
            int r3 = com.google.android.gms.internal.ads.zzefl.zzk((int) r3, (long) r5)
            goto L_0x03c9
        L_0x014d:
            boolean r5 = r0.zza(r1, (int) r3, (int) r12)
            if (r5 == 0) goto L_0x04e4
            int r3 = com.google.android.gms.internal.ads.zzefl.zzb((int) r3, (float) r4)
            goto L_0x03c9
        L_0x0159:
            boolean r5 = r0.zza(r1, (int) r3, (int) r12)
            if (r5 == 0) goto L_0x04e4
            r5 = 0
            int r3 = com.google.android.gms.internal.ads.zzefl.zzc((int) r3, (double) r5)
            goto L_0x03c9
        L_0x0167:
            com.google.android.gms.internal.ads.zzehi r14 = r0.zzihi
            java.lang.Object r5 = com.google.android.gms.internal.ads.zzejf.zzp(r1, r5)
            java.lang.Object r6 = r0.zzhf(r12)
            int r3 = r14.zzb(r3, r5, r6)
            goto L_0x03c9
        L_0x0177:
            java.util.List r5 = zze((java.lang.Object) r1, (long) r5)
            com.google.android.gms.internal.ads.zzeih r6 = r0.zzhe(r12)
            int r3 = com.google.android.gms.internal.ads.zzeij.zzd(r3, r5, r6)
            goto L_0x03c9
        L_0x0185:
            java.lang.Object r5 = r2.getObject(r1, r5)
            java.util.List r5 = (java.util.List) r5
            int r5 = com.google.android.gms.internal.ads.zzeij.zzac(r5)
            if (r5 <= 0) goto L_0x04e4
            boolean r6 = r0.zziha
            if (r6 == 0) goto L_0x0199
            long r14 = (long) r14
            r2.putInt(r1, r14, r5)
        L_0x0199:
            int r3 = com.google.android.gms.internal.ads.zzefl.zzgp(r3)
            int r6 = com.google.android.gms.internal.ads.zzefl.zzgr(r5)
            goto L_0x0324
        L_0x01a3:
            java.lang.Object r5 = r2.getObject(r1, r5)
            java.util.List r5 = (java.util.List) r5
            int r5 = com.google.android.gms.internal.ads.zzeij.zzag(r5)
            if (r5 <= 0) goto L_0x04e4
            boolean r6 = r0.zziha
            if (r6 == 0) goto L_0x01b7
            long r14 = (long) r14
            r2.putInt(r1, r14, r5)
        L_0x01b7:
            int r3 = com.google.android.gms.internal.ads.zzefl.zzgp(r3)
            int r6 = com.google.android.gms.internal.ads.zzefl.zzgr(r5)
            goto L_0x0324
        L_0x01c1:
            java.lang.Object r5 = r2.getObject(r1, r5)
            java.util.List r5 = (java.util.List) r5
            int r5 = com.google.android.gms.internal.ads.zzeij.zzai(r5)
            if (r5 <= 0) goto L_0x04e4
            boolean r6 = r0.zziha
            if (r6 == 0) goto L_0x01d5
            long r14 = (long) r14
            r2.putInt(r1, r14, r5)
        L_0x01d5:
            int r3 = com.google.android.gms.internal.ads.zzefl.zzgp(r3)
            int r6 = com.google.android.gms.internal.ads.zzefl.zzgr(r5)
            goto L_0x0324
        L_0x01df:
            java.lang.Object r5 = r2.getObject(r1, r5)
            java.util.List r5 = (java.util.List) r5
            int r5 = com.google.android.gms.internal.ads.zzeij.zzah(r5)
            if (r5 <= 0) goto L_0x04e4
            boolean r6 = r0.zziha
            if (r6 == 0) goto L_0x01f3
            long r14 = (long) r14
            r2.putInt(r1, r14, r5)
        L_0x01f3:
            int r3 = com.google.android.gms.internal.ads.zzefl.zzgp(r3)
            int r6 = com.google.android.gms.internal.ads.zzefl.zzgr(r5)
            goto L_0x0324
        L_0x01fd:
            java.lang.Object r5 = r2.getObject(r1, r5)
            java.util.List r5 = (java.util.List) r5
            int r5 = com.google.android.gms.internal.ads.zzeij.zzad(r5)
            if (r5 <= 0) goto L_0x04e4
            boolean r6 = r0.zziha
            if (r6 == 0) goto L_0x0211
            long r14 = (long) r14
            r2.putInt(r1, r14, r5)
        L_0x0211:
            int r3 = com.google.android.gms.internal.ads.zzefl.zzgp(r3)
            int r6 = com.google.android.gms.internal.ads.zzefl.zzgr(r5)
            goto L_0x0324
        L_0x021b:
            java.lang.Object r5 = r2.getObject(r1, r5)
            java.util.List r5 = (java.util.List) r5
            int r5 = com.google.android.gms.internal.ads.zzeij.zzaf(r5)
            if (r5 <= 0) goto L_0x04e4
            boolean r6 = r0.zziha
            if (r6 == 0) goto L_0x022f
            long r14 = (long) r14
            r2.putInt(r1, r14, r5)
        L_0x022f:
            int r3 = com.google.android.gms.internal.ads.zzefl.zzgp(r3)
            int r6 = com.google.android.gms.internal.ads.zzefl.zzgr(r5)
            goto L_0x0324
        L_0x0239:
            java.lang.Object r5 = r2.getObject(r1, r5)
            java.util.List r5 = (java.util.List) r5
            int r5 = com.google.android.gms.internal.ads.zzeij.zzaj(r5)
            if (r5 <= 0) goto L_0x04e4
            boolean r6 = r0.zziha
            if (r6 == 0) goto L_0x024d
            long r14 = (long) r14
            r2.putInt(r1, r14, r5)
        L_0x024d:
            int r3 = com.google.android.gms.internal.ads.zzefl.zzgp(r3)
            int r6 = com.google.android.gms.internal.ads.zzefl.zzgr(r5)
            goto L_0x0324
        L_0x0257:
            java.lang.Object r5 = r2.getObject(r1, r5)
            java.util.List r5 = (java.util.List) r5
            int r5 = com.google.android.gms.internal.ads.zzeij.zzah(r5)
            if (r5 <= 0) goto L_0x04e4
            boolean r6 = r0.zziha
            if (r6 == 0) goto L_0x026b
            long r14 = (long) r14
            r2.putInt(r1, r14, r5)
        L_0x026b:
            int r3 = com.google.android.gms.internal.ads.zzefl.zzgp(r3)
            int r6 = com.google.android.gms.internal.ads.zzefl.zzgr(r5)
            goto L_0x0324
        L_0x0275:
            java.lang.Object r5 = r2.getObject(r1, r5)
            java.util.List r5 = (java.util.List) r5
            int r5 = com.google.android.gms.internal.ads.zzeij.zzai(r5)
            if (r5 <= 0) goto L_0x04e4
            boolean r6 = r0.zziha
            if (r6 == 0) goto L_0x0289
            long r14 = (long) r14
            r2.putInt(r1, r14, r5)
        L_0x0289:
            int r3 = com.google.android.gms.internal.ads.zzefl.zzgp(r3)
            int r6 = com.google.android.gms.internal.ads.zzefl.zzgr(r5)
            goto L_0x0324
        L_0x0293:
            java.lang.Object r5 = r2.getObject(r1, r5)
            java.util.List r5 = (java.util.List) r5
            int r5 = com.google.android.gms.internal.ads.zzeij.zzae(r5)
            if (r5 <= 0) goto L_0x04e4
            boolean r6 = r0.zziha
            if (r6 == 0) goto L_0x02a7
            long r14 = (long) r14
            r2.putInt(r1, r14, r5)
        L_0x02a7:
            int r3 = com.google.android.gms.internal.ads.zzefl.zzgp(r3)
            int r6 = com.google.android.gms.internal.ads.zzefl.zzgr(r5)
            goto L_0x0324
        L_0x02b1:
            java.lang.Object r5 = r2.getObject(r1, r5)
            java.util.List r5 = (java.util.List) r5
            int r5 = com.google.android.gms.internal.ads.zzeij.zzab(r5)
            if (r5 <= 0) goto L_0x04e4
            boolean r6 = r0.zziha
            if (r6 == 0) goto L_0x02c5
            long r14 = (long) r14
            r2.putInt(r1, r14, r5)
        L_0x02c5:
            int r3 = com.google.android.gms.internal.ads.zzefl.zzgp(r3)
            int r6 = com.google.android.gms.internal.ads.zzefl.zzgr(r5)
            goto L_0x0324
        L_0x02ce:
            java.lang.Object r5 = r2.getObject(r1, r5)
            java.util.List r5 = (java.util.List) r5
            int r5 = com.google.android.gms.internal.ads.zzeij.zzaa(r5)
            if (r5 <= 0) goto L_0x04e4
            boolean r6 = r0.zziha
            if (r6 == 0) goto L_0x02e2
            long r14 = (long) r14
            r2.putInt(r1, r14, r5)
        L_0x02e2:
            int r3 = com.google.android.gms.internal.ads.zzefl.zzgp(r3)
            int r6 = com.google.android.gms.internal.ads.zzefl.zzgr(r5)
            goto L_0x0324
        L_0x02eb:
            java.lang.Object r5 = r2.getObject(r1, r5)
            java.util.List r5 = (java.util.List) r5
            int r5 = com.google.android.gms.internal.ads.zzeij.zzah(r5)
            if (r5 <= 0) goto L_0x04e4
            boolean r6 = r0.zziha
            if (r6 == 0) goto L_0x02ff
            long r14 = (long) r14
            r2.putInt(r1, r14, r5)
        L_0x02ff:
            int r3 = com.google.android.gms.internal.ads.zzefl.zzgp(r3)
            int r6 = com.google.android.gms.internal.ads.zzefl.zzgr(r5)
            goto L_0x0324
        L_0x0308:
            java.lang.Object r5 = r2.getObject(r1, r5)
            java.util.List r5 = (java.util.List) r5
            int r5 = com.google.android.gms.internal.ads.zzeij.zzai(r5)
            if (r5 <= 0) goto L_0x04e4
            boolean r6 = r0.zziha
            if (r6 == 0) goto L_0x031c
            long r14 = (long) r14
            r2.putInt(r1, r14, r5)
        L_0x031c:
            int r3 = com.google.android.gms.internal.ads.zzefl.zzgp(r3)
            int r6 = com.google.android.gms.internal.ads.zzefl.zzgr(r5)
        L_0x0324:
            int r3 = r3 + r6
            int r3 = r3 + r5
            goto L_0x03c9
        L_0x0328:
            java.util.List r5 = zze((java.lang.Object) r1, (long) r5)
            int r3 = com.google.android.gms.internal.ads.zzeij.zzq(r3, r5, r11)
            goto L_0x03c9
        L_0x0332:
            java.util.List r5 = zze((java.lang.Object) r1, (long) r5)
            int r3 = com.google.android.gms.internal.ads.zzeij.zzu(r3, r5, r11)
            goto L_0x03c9
        L_0x033c:
            java.util.List r5 = zze((java.lang.Object) r1, (long) r5)
            int r3 = com.google.android.gms.internal.ads.zzeij.zzw(r3, r5, r11)
            goto L_0x03c9
        L_0x0346:
            java.util.List r5 = zze((java.lang.Object) r1, (long) r5)
            int r3 = com.google.android.gms.internal.ads.zzeij.zzv(r3, r5, r11)
            goto L_0x03c9
        L_0x0350:
            java.util.List r5 = zze((java.lang.Object) r1, (long) r5)
            int r3 = com.google.android.gms.internal.ads.zzeij.zzr(r3, r5, r11)
            goto L_0x03c9
        L_0x035a:
            java.util.List r5 = zze((java.lang.Object) r1, (long) r5)
            int r3 = com.google.android.gms.internal.ads.zzeij.zzt(r3, r5, r11)
            goto L_0x03c9
        L_0x0363:
            java.util.List r5 = zze((java.lang.Object) r1, (long) r5)
            int r3 = com.google.android.gms.internal.ads.zzeij.zzd(r3, r5)
            goto L_0x03c9
        L_0x036c:
            java.util.List r5 = zze((java.lang.Object) r1, (long) r5)
            com.google.android.gms.internal.ads.zzeih r6 = r0.zzhe(r12)
            int r3 = com.google.android.gms.internal.ads.zzeij.zzc((int) r3, (java.util.List<?>) r5, (com.google.android.gms.internal.ads.zzeih) r6)
            goto L_0x03c9
        L_0x0379:
            java.util.List r5 = zze((java.lang.Object) r1, (long) r5)
            int r3 = com.google.android.gms.internal.ads.zzeij.zzc(r3, r5)
            goto L_0x03c9
        L_0x0382:
            java.util.List r5 = zze((java.lang.Object) r1, (long) r5)
            int r3 = com.google.android.gms.internal.ads.zzeij.zzx(r3, r5, r11)
            goto L_0x03c9
        L_0x038b:
            java.util.List r5 = zze((java.lang.Object) r1, (long) r5)
            int r3 = com.google.android.gms.internal.ads.zzeij.zzv(r3, r5, r11)
            goto L_0x03c9
        L_0x0394:
            java.util.List r5 = zze((java.lang.Object) r1, (long) r5)
            int r3 = com.google.android.gms.internal.ads.zzeij.zzw(r3, r5, r11)
            goto L_0x03c9
        L_0x039d:
            java.util.List r5 = zze((java.lang.Object) r1, (long) r5)
            int r3 = com.google.android.gms.internal.ads.zzeij.zzs(r3, r5, r11)
            goto L_0x03c9
        L_0x03a6:
            java.util.List r5 = zze((java.lang.Object) r1, (long) r5)
            int r3 = com.google.android.gms.internal.ads.zzeij.zzp(r3, r5, r11)
            goto L_0x03c9
        L_0x03af:
            java.util.List r5 = zze((java.lang.Object) r1, (long) r5)
            int r3 = com.google.android.gms.internal.ads.zzeij.zzo(r3, r5, r11)
            goto L_0x03c9
        L_0x03b8:
            java.util.List r5 = zze((java.lang.Object) r1, (long) r5)
            int r3 = com.google.android.gms.internal.ads.zzeij.zzv(r3, r5, r11)
            goto L_0x03c9
        L_0x03c1:
            java.util.List r5 = zze((java.lang.Object) r1, (long) r5)
            int r3 = com.google.android.gms.internal.ads.zzeij.zzw(r3, r5, r11)
        L_0x03c9:
            int r13 = r13 + r3
            goto L_0x04e4
        L_0x03cc:
            boolean r14 = r0.zze(r1, (int) r12)
            if (r14 == 0) goto L_0x04e4
            java.lang.Object r5 = com.google.android.gms.internal.ads.zzejf.zzp(r1, r5)
            com.google.android.gms.internal.ads.zzehl r5 = (com.google.android.gms.internal.ads.zzehl) r5
            com.google.android.gms.internal.ads.zzeih r6 = r0.zzhe(r12)
            int r3 = com.google.android.gms.internal.ads.zzefl.zzc(r3, r5, r6)
            goto L_0x03c9
        L_0x03e1:
            boolean r14 = r0.zze(r1, (int) r12)
            if (r14 == 0) goto L_0x04e4
            long r5 = com.google.android.gms.internal.ads.zzejf.zzl(r1, r5)
            int r3 = com.google.android.gms.internal.ads.zzefl.zzm(r3, r5)
            goto L_0x03c9
        L_0x03f0:
            boolean r14 = r0.zze(r1, (int) r12)
            if (r14 == 0) goto L_0x04e4
            int r5 = com.google.android.gms.internal.ads.zzejf.zzk(r1, r5)
            int r3 = com.google.android.gms.internal.ads.zzefl.zzah(r3, r5)
            goto L_0x03c9
        L_0x03ff:
            boolean r5 = r0.zze(r1, (int) r12)
            if (r5 == 0) goto L_0x04e4
            int r3 = com.google.android.gms.internal.ads.zzefl.zzo(r3, r9)
            goto L_0x03c9
        L_0x040a:
            boolean r5 = r0.zze(r1, (int) r12)
            if (r5 == 0) goto L_0x04e4
            int r3 = com.google.android.gms.internal.ads.zzefl.zzaj(r3, r11)
            goto L_0x03c9
        L_0x0415:
            boolean r14 = r0.zze(r1, (int) r12)
            if (r14 == 0) goto L_0x04e4
            int r5 = com.google.android.gms.internal.ads.zzejf.zzk(r1, r5)
            int r3 = com.google.android.gms.internal.ads.zzefl.zzak(r3, r5)
            goto L_0x03c9
        L_0x0424:
            boolean r14 = r0.zze(r1, (int) r12)
            if (r14 == 0) goto L_0x04e4
            int r5 = com.google.android.gms.internal.ads.zzejf.zzk(r1, r5)
            int r3 = com.google.android.gms.internal.ads.zzefl.zzag(r3, r5)
            goto L_0x03c9
        L_0x0433:
            boolean r14 = r0.zze(r1, (int) r12)
            if (r14 == 0) goto L_0x04e4
            java.lang.Object r5 = com.google.android.gms.internal.ads.zzejf.zzp(r1, r5)
            com.google.android.gms.internal.ads.zzeer r5 = (com.google.android.gms.internal.ads.zzeer) r5
            int r3 = com.google.android.gms.internal.ads.zzefl.zzc((int) r3, (com.google.android.gms.internal.ads.zzeer) r5)
            goto L_0x03c9
        L_0x0444:
            boolean r14 = r0.zze(r1, (int) r12)
            if (r14 == 0) goto L_0x04e4
            java.lang.Object r5 = com.google.android.gms.internal.ads.zzejf.zzp(r1, r5)
            com.google.android.gms.internal.ads.zzeih r6 = r0.zzhe(r12)
            int r3 = com.google.android.gms.internal.ads.zzeij.zzc((int) r3, (java.lang.Object) r5, (com.google.android.gms.internal.ads.zzeih) r6)
            goto L_0x03c9
        L_0x0458:
            boolean r14 = r0.zze(r1, (int) r12)
            if (r14 == 0) goto L_0x04e4
            java.lang.Object r5 = com.google.android.gms.internal.ads.zzejf.zzp(r1, r5)
            boolean r6 = r5 instanceof com.google.android.gms.internal.ads.zzeer
            if (r6 == 0) goto L_0x046e
            com.google.android.gms.internal.ads.zzeer r5 = (com.google.android.gms.internal.ads.zzeer) r5
            int r3 = com.google.android.gms.internal.ads.zzefl.zzc((int) r3, (com.google.android.gms.internal.ads.zzeer) r5)
            goto L_0x03c9
        L_0x046e:
            java.lang.String r5 = (java.lang.String) r5
            int r3 = com.google.android.gms.internal.ads.zzefl.zzl((int) r3, (java.lang.String) r5)
            goto L_0x03c9
        L_0x0476:
            boolean r5 = r0.zze(r1, (int) r12)
            if (r5 == 0) goto L_0x04e4
            int r3 = com.google.android.gms.internal.ads.zzefl.zzi((int) r3, (boolean) r7)
            goto L_0x03c9
        L_0x0482:
            boolean r5 = r0.zze(r1, (int) r12)
            if (r5 == 0) goto L_0x04e4
            int r3 = com.google.android.gms.internal.ads.zzefl.zzai(r3, r11)
            goto L_0x03c9
        L_0x048e:
            boolean r5 = r0.zze(r1, (int) r12)
            if (r5 == 0) goto L_0x04e4
            int r3 = com.google.android.gms.internal.ads.zzefl.zzn(r3, r9)
            goto L_0x03c9
        L_0x049a:
            boolean r14 = r0.zze(r1, (int) r12)
            if (r14 == 0) goto L_0x04e4
            int r5 = com.google.android.gms.internal.ads.zzejf.zzk(r1, r5)
            int r3 = com.google.android.gms.internal.ads.zzefl.zzaf(r3, r5)
            goto L_0x03c9
        L_0x04aa:
            boolean r14 = r0.zze(r1, (int) r12)
            if (r14 == 0) goto L_0x04e4
            long r5 = com.google.android.gms.internal.ads.zzejf.zzl(r1, r5)
            int r3 = com.google.android.gms.internal.ads.zzefl.zzl((int) r3, (long) r5)
            goto L_0x03c9
        L_0x04ba:
            boolean r14 = r0.zze(r1, (int) r12)
            if (r14 == 0) goto L_0x04e4
            long r5 = com.google.android.gms.internal.ads.zzejf.zzl(r1, r5)
            int r3 = com.google.android.gms.internal.ads.zzefl.zzk((int) r3, (long) r5)
            goto L_0x03c9
        L_0x04ca:
            boolean r5 = r0.zze(r1, (int) r12)
            if (r5 == 0) goto L_0x04e4
            int r3 = com.google.android.gms.internal.ads.zzefl.zzb((int) r3, (float) r4)
            goto L_0x03c9
        L_0x04d6:
            boolean r5 = r0.zze(r1, (int) r12)
            if (r5 == 0) goto L_0x04e4
            r5 = 0
            int r3 = com.google.android.gms.internal.ads.zzefl.zzc((int) r3, (double) r5)
            goto L_0x03c9
        L_0x04e4:
            int r12 = r12 + 3
            r3 = 267386880(0xff00000, float:2.3665827E-29)
            goto L_0x0016
        L_0x04ea:
            com.google.android.gms.internal.ads.zzeiz<?, ?> r2 = r0.zzihg
            int r1 = zza(r2, r1)
            int r13 = r13 + r1
            return r13
        L_0x04f2:
            sun.misc.Unsafe r2 = zzhni
            r3 = 0
            r5 = 0
            r6 = 1048575(0xfffff, float:1.469367E-39)
            r12 = 0
        L_0x04fa:
            int[] r13 = r0.zzigs
            int r13 = r13.length
            if (r3 >= r13) goto L_0x0a26
            int r13 = r0.zzhh(r3)
            int[] r14 = r0.zzigs
            r15 = r14[r3]
            r16 = 267386880(0xff00000, float:2.3665827E-29)
            r17 = r13 & r16
            int r4 = r17 >>> 20
            r11 = 17
            if (r4 > r11) goto L_0x0525
            int r11 = r3 + 2
            r11 = r14[r11]
            r14 = r11 & r8
            int r18 = r11 >>> 20
            int r18 = r7 << r18
            if (r14 == r6) goto L_0x0523
            long r9 = (long) r14
            int r12 = r2.getInt(r1, r9)
            r6 = r14
        L_0x0523:
            r9 = r11
            goto L_0x0544
        L_0x0525:
            boolean r9 = r0.zziha
            if (r9 == 0) goto L_0x0541
            com.google.android.gms.internal.ads.zzefv r9 = com.google.android.gms.internal.ads.zzefv.DOUBLE_LIST_PACKED
            int r9 = r9.id()
            if (r4 < r9) goto L_0x0541
            com.google.android.gms.internal.ads.zzefv r9 = com.google.android.gms.internal.ads.zzefv.SINT64_LIST_PACKED
            int r9 = r9.id()
            if (r4 > r9) goto L_0x0541
            int[] r9 = r0.zzigs
            int r10 = r3 + 2
            r9 = r9[r10]
            r9 = r9 & r8
            goto L_0x0542
        L_0x0541:
            r9 = 0
        L_0x0542:
            r18 = 0
        L_0x0544:
            r10 = r13 & r8
            long r10 = (long) r10
            switch(r4) {
                case 0: goto L_0x0a10;
                case 1: goto L_0x0a00;
                case 2: goto L_0x09ee;
                case 3: goto L_0x09de;
                case 4: goto L_0x09ce;
                case 5: goto L_0x09c2;
                case 6: goto L_0x09b6;
                case 7: goto L_0x09ac;
                case 8: goto L_0x0990;
                case 9: goto L_0x097e;
                case 10: goto L_0x096f;
                case 11: goto L_0x0962;
                case 12: goto L_0x0955;
                case 13: goto L_0x094a;
                case 14: goto L_0x093f;
                case 15: goto L_0x0932;
                case 16: goto L_0x0925;
                case 17: goto L_0x0912;
                case 18: goto L_0x08fe;
                case 19: goto L_0x08f2;
                case 20: goto L_0x08e6;
                case 21: goto L_0x08da;
                case 22: goto L_0x08ce;
                case 23: goto L_0x08c2;
                case 24: goto L_0x08b6;
                case 25: goto L_0x08aa;
                case 26: goto L_0x089f;
                case 27: goto L_0x0890;
                case 28: goto L_0x0884;
                case 29: goto L_0x0877;
                case 30: goto L_0x086a;
                case 31: goto L_0x085d;
                case 32: goto L_0x0850;
                case 33: goto L_0x0843;
                case 34: goto L_0x0836;
                case 35: goto L_0x0816;
                case 36: goto L_0x07f9;
                case 37: goto L_0x07dc;
                case 38: goto L_0x07bf;
                case 39: goto L_0x07a1;
                case 40: goto L_0x0783;
                case 41: goto L_0x0765;
                case 42: goto L_0x0747;
                case 43: goto L_0x0729;
                case 44: goto L_0x070b;
                case 45: goto L_0x06ed;
                case 46: goto L_0x06cf;
                case 47: goto L_0x06b1;
                case 48: goto L_0x0693;
                case 49: goto L_0x0683;
                case 50: goto L_0x0673;
                case 51: goto L_0x0665;
                case 52: goto L_0x0658;
                case 53: goto L_0x0648;
                case 54: goto L_0x0638;
                case 55: goto L_0x0628;
                case 56: goto L_0x061a;
                case 57: goto L_0x060d;
                case 58: goto L_0x0601;
                case 59: goto L_0x05e3;
                case 60: goto L_0x05cf;
                case 61: goto L_0x05bd;
                case 62: goto L_0x05ad;
                case 63: goto L_0x059d;
                case 64: goto L_0x0590;
                case 65: goto L_0x0582;
                case 66: goto L_0x0572;
                case 67: goto L_0x0562;
                case 68: goto L_0x054c;
                default: goto L_0x054a;
            }
        L_0x054a:
            goto L_0x090a
        L_0x054c:
            boolean r4 = r0.zza(r1, (int) r15, (int) r3)
            if (r4 == 0) goto L_0x090a
            java.lang.Object r4 = r2.getObject(r1, r10)
            com.google.android.gms.internal.ads.zzehl r4 = (com.google.android.gms.internal.ads.zzehl) r4
            com.google.android.gms.internal.ads.zzeih r9 = r0.zzhe(r3)
            int r4 = com.google.android.gms.internal.ads.zzefl.zzc(r15, r4, r9)
            goto L_0x0909
        L_0x0562:
            boolean r4 = r0.zza(r1, (int) r15, (int) r3)
            if (r4 == 0) goto L_0x090a
            long r9 = zzi(r1, r10)
            int r4 = com.google.android.gms.internal.ads.zzefl.zzm(r15, r9)
            goto L_0x0909
        L_0x0572:
            boolean r4 = r0.zza(r1, (int) r15, (int) r3)
            if (r4 == 0) goto L_0x090a
            int r4 = zzh(r1, r10)
            int r4 = com.google.android.gms.internal.ads.zzefl.zzah(r15, r4)
            goto L_0x0909
        L_0x0582:
            boolean r4 = r0.zza(r1, (int) r15, (int) r3)
            if (r4 == 0) goto L_0x090a
            r9 = 0
            int r4 = com.google.android.gms.internal.ads.zzefl.zzo(r15, r9)
            goto L_0x0909
        L_0x0590:
            boolean r4 = r0.zza(r1, (int) r15, (int) r3)
            if (r4 == 0) goto L_0x090a
            r4 = 0
            int r9 = com.google.android.gms.internal.ads.zzefl.zzaj(r15, r4)
            goto L_0x0953
        L_0x059d:
            boolean r4 = r0.zza(r1, (int) r15, (int) r3)
            if (r4 == 0) goto L_0x090a
            int r4 = zzh(r1, r10)
            int r4 = com.google.android.gms.internal.ads.zzefl.zzak(r15, r4)
            goto L_0x0909
        L_0x05ad:
            boolean r4 = r0.zza(r1, (int) r15, (int) r3)
            if (r4 == 0) goto L_0x090a
            int r4 = zzh(r1, r10)
            int r4 = com.google.android.gms.internal.ads.zzefl.zzag(r15, r4)
            goto L_0x0909
        L_0x05bd:
            boolean r4 = r0.zza(r1, (int) r15, (int) r3)
            if (r4 == 0) goto L_0x090a
            java.lang.Object r4 = r2.getObject(r1, r10)
            com.google.android.gms.internal.ads.zzeer r4 = (com.google.android.gms.internal.ads.zzeer) r4
            int r4 = com.google.android.gms.internal.ads.zzefl.zzc((int) r15, (com.google.android.gms.internal.ads.zzeer) r4)
            goto L_0x0909
        L_0x05cf:
            boolean r4 = r0.zza(r1, (int) r15, (int) r3)
            if (r4 == 0) goto L_0x090a
            java.lang.Object r4 = r2.getObject(r1, r10)
            com.google.android.gms.internal.ads.zzeih r9 = r0.zzhe(r3)
            int r4 = com.google.android.gms.internal.ads.zzeij.zzc((int) r15, (java.lang.Object) r4, (com.google.android.gms.internal.ads.zzeih) r9)
            goto L_0x0909
        L_0x05e3:
            boolean r4 = r0.zza(r1, (int) r15, (int) r3)
            if (r4 == 0) goto L_0x090a
            java.lang.Object r4 = r2.getObject(r1, r10)
            boolean r9 = r4 instanceof com.google.android.gms.internal.ads.zzeer
            if (r9 == 0) goto L_0x05f9
            com.google.android.gms.internal.ads.zzeer r4 = (com.google.android.gms.internal.ads.zzeer) r4
            int r4 = com.google.android.gms.internal.ads.zzefl.zzc((int) r15, (com.google.android.gms.internal.ads.zzeer) r4)
            goto L_0x0909
        L_0x05f9:
            java.lang.String r4 = (java.lang.String) r4
            int r4 = com.google.android.gms.internal.ads.zzefl.zzl((int) r15, (java.lang.String) r4)
            goto L_0x0909
        L_0x0601:
            boolean r4 = r0.zza(r1, (int) r15, (int) r3)
            if (r4 == 0) goto L_0x090a
            int r4 = com.google.android.gms.internal.ads.zzefl.zzi((int) r15, (boolean) r7)
            goto L_0x0909
        L_0x060d:
            boolean r4 = r0.zza(r1, (int) r15, (int) r3)
            if (r4 == 0) goto L_0x090a
            r4 = 0
            int r9 = com.google.android.gms.internal.ads.zzefl.zzai(r15, r4)
            goto L_0x0953
        L_0x061a:
            boolean r4 = r0.zza(r1, (int) r15, (int) r3)
            if (r4 == 0) goto L_0x090a
            r9 = 0
            int r4 = com.google.android.gms.internal.ads.zzefl.zzn(r15, r9)
            goto L_0x0909
        L_0x0628:
            boolean r4 = r0.zza(r1, (int) r15, (int) r3)
            if (r4 == 0) goto L_0x090a
            int r4 = zzh(r1, r10)
            int r4 = com.google.android.gms.internal.ads.zzefl.zzaf(r15, r4)
            goto L_0x0909
        L_0x0638:
            boolean r4 = r0.zza(r1, (int) r15, (int) r3)
            if (r4 == 0) goto L_0x090a
            long r9 = zzi(r1, r10)
            int r4 = com.google.android.gms.internal.ads.zzefl.zzl((int) r15, (long) r9)
            goto L_0x0909
        L_0x0648:
            boolean r4 = r0.zza(r1, (int) r15, (int) r3)
            if (r4 == 0) goto L_0x090a
            long r9 = zzi(r1, r10)
            int r4 = com.google.android.gms.internal.ads.zzefl.zzk((int) r15, (long) r9)
            goto L_0x0909
        L_0x0658:
            boolean r4 = r0.zza(r1, (int) r15, (int) r3)
            if (r4 == 0) goto L_0x090a
            r4 = 0
            int r9 = com.google.android.gms.internal.ads.zzefl.zzb((int) r15, (float) r4)
            goto L_0x0953
        L_0x0665:
            boolean r4 = r0.zza(r1, (int) r15, (int) r3)
            if (r4 == 0) goto L_0x090a
            r9 = 0
            int r4 = com.google.android.gms.internal.ads.zzefl.zzc((int) r15, (double) r9)
            goto L_0x0909
        L_0x0673:
            com.google.android.gms.internal.ads.zzehi r4 = r0.zzihi
            java.lang.Object r9 = r2.getObject(r1, r10)
            java.lang.Object r10 = r0.zzhf(r3)
            int r4 = r4.zzb(r15, r9, r10)
            goto L_0x0909
        L_0x0683:
            java.lang.Object r4 = r2.getObject(r1, r10)
            java.util.List r4 = (java.util.List) r4
            com.google.android.gms.internal.ads.zzeih r9 = r0.zzhe(r3)
            int r4 = com.google.android.gms.internal.ads.zzeij.zzd(r15, r4, r9)
            goto L_0x0909
        L_0x0693:
            java.lang.Object r4 = r2.getObject(r1, r10)
            java.util.List r4 = (java.util.List) r4
            int r4 = com.google.android.gms.internal.ads.zzeij.zzac(r4)
            if (r4 <= 0) goto L_0x090a
            boolean r10 = r0.zziha
            if (r10 == 0) goto L_0x06a7
            long r9 = (long) r9
            r2.putInt(r1, r9, r4)
        L_0x06a7:
            int r9 = com.google.android.gms.internal.ads.zzefl.zzgp(r15)
            int r10 = com.google.android.gms.internal.ads.zzefl.zzgr(r4)
            goto L_0x0832
        L_0x06b1:
            java.lang.Object r4 = r2.getObject(r1, r10)
            java.util.List r4 = (java.util.List) r4
            int r4 = com.google.android.gms.internal.ads.zzeij.zzag(r4)
            if (r4 <= 0) goto L_0x090a
            boolean r10 = r0.zziha
            if (r10 == 0) goto L_0x06c5
            long r9 = (long) r9
            r2.putInt(r1, r9, r4)
        L_0x06c5:
            int r9 = com.google.android.gms.internal.ads.zzefl.zzgp(r15)
            int r10 = com.google.android.gms.internal.ads.zzefl.zzgr(r4)
            goto L_0x0832
        L_0x06cf:
            java.lang.Object r4 = r2.getObject(r1, r10)
            java.util.List r4 = (java.util.List) r4
            int r4 = com.google.android.gms.internal.ads.zzeij.zzai(r4)
            if (r4 <= 0) goto L_0x090a
            boolean r10 = r0.zziha
            if (r10 == 0) goto L_0x06e3
            long r9 = (long) r9
            r2.putInt(r1, r9, r4)
        L_0x06e3:
            int r9 = com.google.android.gms.internal.ads.zzefl.zzgp(r15)
            int r10 = com.google.android.gms.internal.ads.zzefl.zzgr(r4)
            goto L_0x0832
        L_0x06ed:
            java.lang.Object r4 = r2.getObject(r1, r10)
            java.util.List r4 = (java.util.List) r4
            int r4 = com.google.android.gms.internal.ads.zzeij.zzah(r4)
            if (r4 <= 0) goto L_0x090a
            boolean r10 = r0.zziha
            if (r10 == 0) goto L_0x0701
            long r9 = (long) r9
            r2.putInt(r1, r9, r4)
        L_0x0701:
            int r9 = com.google.android.gms.internal.ads.zzefl.zzgp(r15)
            int r10 = com.google.android.gms.internal.ads.zzefl.zzgr(r4)
            goto L_0x0832
        L_0x070b:
            java.lang.Object r4 = r2.getObject(r1, r10)
            java.util.List r4 = (java.util.List) r4
            int r4 = com.google.android.gms.internal.ads.zzeij.zzad(r4)
            if (r4 <= 0) goto L_0x090a
            boolean r10 = r0.zziha
            if (r10 == 0) goto L_0x071f
            long r9 = (long) r9
            r2.putInt(r1, r9, r4)
        L_0x071f:
            int r9 = com.google.android.gms.internal.ads.zzefl.zzgp(r15)
            int r10 = com.google.android.gms.internal.ads.zzefl.zzgr(r4)
            goto L_0x0832
        L_0x0729:
            java.lang.Object r4 = r2.getObject(r1, r10)
            java.util.List r4 = (java.util.List) r4
            int r4 = com.google.android.gms.internal.ads.zzeij.zzaf(r4)
            if (r4 <= 0) goto L_0x090a
            boolean r10 = r0.zziha
            if (r10 == 0) goto L_0x073d
            long r9 = (long) r9
            r2.putInt(r1, r9, r4)
        L_0x073d:
            int r9 = com.google.android.gms.internal.ads.zzefl.zzgp(r15)
            int r10 = com.google.android.gms.internal.ads.zzefl.zzgr(r4)
            goto L_0x0832
        L_0x0747:
            java.lang.Object r4 = r2.getObject(r1, r10)
            java.util.List r4 = (java.util.List) r4
            int r4 = com.google.android.gms.internal.ads.zzeij.zzaj(r4)
            if (r4 <= 0) goto L_0x090a
            boolean r10 = r0.zziha
            if (r10 == 0) goto L_0x075b
            long r9 = (long) r9
            r2.putInt(r1, r9, r4)
        L_0x075b:
            int r9 = com.google.android.gms.internal.ads.zzefl.zzgp(r15)
            int r10 = com.google.android.gms.internal.ads.zzefl.zzgr(r4)
            goto L_0x0832
        L_0x0765:
            java.lang.Object r4 = r2.getObject(r1, r10)
            java.util.List r4 = (java.util.List) r4
            int r4 = com.google.android.gms.internal.ads.zzeij.zzah(r4)
            if (r4 <= 0) goto L_0x090a
            boolean r10 = r0.zziha
            if (r10 == 0) goto L_0x0779
            long r9 = (long) r9
            r2.putInt(r1, r9, r4)
        L_0x0779:
            int r9 = com.google.android.gms.internal.ads.zzefl.zzgp(r15)
            int r10 = com.google.android.gms.internal.ads.zzefl.zzgr(r4)
            goto L_0x0832
        L_0x0783:
            java.lang.Object r4 = r2.getObject(r1, r10)
            java.util.List r4 = (java.util.List) r4
            int r4 = com.google.android.gms.internal.ads.zzeij.zzai(r4)
            if (r4 <= 0) goto L_0x090a
            boolean r10 = r0.zziha
            if (r10 == 0) goto L_0x0797
            long r9 = (long) r9
            r2.putInt(r1, r9, r4)
        L_0x0797:
            int r9 = com.google.android.gms.internal.ads.zzefl.zzgp(r15)
            int r10 = com.google.android.gms.internal.ads.zzefl.zzgr(r4)
            goto L_0x0832
        L_0x07a1:
            java.lang.Object r4 = r2.getObject(r1, r10)
            java.util.List r4 = (java.util.List) r4
            int r4 = com.google.android.gms.internal.ads.zzeij.zzae(r4)
            if (r4 <= 0) goto L_0x090a
            boolean r10 = r0.zziha
            if (r10 == 0) goto L_0x07b5
            long r9 = (long) r9
            r2.putInt(r1, r9, r4)
        L_0x07b5:
            int r9 = com.google.android.gms.internal.ads.zzefl.zzgp(r15)
            int r10 = com.google.android.gms.internal.ads.zzefl.zzgr(r4)
            goto L_0x0832
        L_0x07bf:
            java.lang.Object r4 = r2.getObject(r1, r10)
            java.util.List r4 = (java.util.List) r4
            int r4 = com.google.android.gms.internal.ads.zzeij.zzab(r4)
            if (r4 <= 0) goto L_0x090a
            boolean r10 = r0.zziha
            if (r10 == 0) goto L_0x07d3
            long r9 = (long) r9
            r2.putInt(r1, r9, r4)
        L_0x07d3:
            int r9 = com.google.android.gms.internal.ads.zzefl.zzgp(r15)
            int r10 = com.google.android.gms.internal.ads.zzefl.zzgr(r4)
            goto L_0x0832
        L_0x07dc:
            java.lang.Object r4 = r2.getObject(r1, r10)
            java.util.List r4 = (java.util.List) r4
            int r4 = com.google.android.gms.internal.ads.zzeij.zzaa(r4)
            if (r4 <= 0) goto L_0x090a
            boolean r10 = r0.zziha
            if (r10 == 0) goto L_0x07f0
            long r9 = (long) r9
            r2.putInt(r1, r9, r4)
        L_0x07f0:
            int r9 = com.google.android.gms.internal.ads.zzefl.zzgp(r15)
            int r10 = com.google.android.gms.internal.ads.zzefl.zzgr(r4)
            goto L_0x0832
        L_0x07f9:
            java.lang.Object r4 = r2.getObject(r1, r10)
            java.util.List r4 = (java.util.List) r4
            int r4 = com.google.android.gms.internal.ads.zzeij.zzah(r4)
            if (r4 <= 0) goto L_0x090a
            boolean r10 = r0.zziha
            if (r10 == 0) goto L_0x080d
            long r9 = (long) r9
            r2.putInt(r1, r9, r4)
        L_0x080d:
            int r9 = com.google.android.gms.internal.ads.zzefl.zzgp(r15)
            int r10 = com.google.android.gms.internal.ads.zzefl.zzgr(r4)
            goto L_0x0832
        L_0x0816:
            java.lang.Object r4 = r2.getObject(r1, r10)
            java.util.List r4 = (java.util.List) r4
            int r4 = com.google.android.gms.internal.ads.zzeij.zzai(r4)
            if (r4 <= 0) goto L_0x090a
            boolean r10 = r0.zziha
            if (r10 == 0) goto L_0x082a
            long r9 = (long) r9
            r2.putInt(r1, r9, r4)
        L_0x082a:
            int r9 = com.google.android.gms.internal.ads.zzefl.zzgp(r15)
            int r10 = com.google.android.gms.internal.ads.zzefl.zzgr(r4)
        L_0x0832:
            int r9 = r9 + r10
            int r9 = r9 + r4
            goto L_0x0953
        L_0x0836:
            java.lang.Object r4 = r2.getObject(r1, r10)
            java.util.List r4 = (java.util.List) r4
            r9 = 0
            int r4 = com.google.android.gms.internal.ads.zzeij.zzq(r15, r4, r9)
            goto L_0x0909
        L_0x0843:
            r9 = 0
            java.lang.Object r4 = r2.getObject(r1, r10)
            java.util.List r4 = (java.util.List) r4
            int r4 = com.google.android.gms.internal.ads.zzeij.zzu(r15, r4, r9)
            goto L_0x0909
        L_0x0850:
            r9 = 0
            java.lang.Object r4 = r2.getObject(r1, r10)
            java.util.List r4 = (java.util.List) r4
            int r4 = com.google.android.gms.internal.ads.zzeij.zzw(r15, r4, r9)
            goto L_0x0909
        L_0x085d:
            r9 = 0
            java.lang.Object r4 = r2.getObject(r1, r10)
            java.util.List r4 = (java.util.List) r4
            int r4 = com.google.android.gms.internal.ads.zzeij.zzv(r15, r4, r9)
            goto L_0x0909
        L_0x086a:
            r9 = 0
            java.lang.Object r4 = r2.getObject(r1, r10)
            java.util.List r4 = (java.util.List) r4
            int r4 = com.google.android.gms.internal.ads.zzeij.zzr(r15, r4, r9)
            goto L_0x0909
        L_0x0877:
            r9 = 0
            java.lang.Object r4 = r2.getObject(r1, r10)
            java.util.List r4 = (java.util.List) r4
            int r4 = com.google.android.gms.internal.ads.zzeij.zzt(r15, r4, r9)
            goto L_0x0909
        L_0x0884:
            java.lang.Object r4 = r2.getObject(r1, r10)
            java.util.List r4 = (java.util.List) r4
            int r4 = com.google.android.gms.internal.ads.zzeij.zzd(r15, r4)
            goto L_0x0909
        L_0x0890:
            java.lang.Object r4 = r2.getObject(r1, r10)
            java.util.List r4 = (java.util.List) r4
            com.google.android.gms.internal.ads.zzeih r9 = r0.zzhe(r3)
            int r4 = com.google.android.gms.internal.ads.zzeij.zzc((int) r15, (java.util.List<?>) r4, (com.google.android.gms.internal.ads.zzeih) r9)
            goto L_0x0909
        L_0x089f:
            java.lang.Object r4 = r2.getObject(r1, r10)
            java.util.List r4 = (java.util.List) r4
            int r4 = com.google.android.gms.internal.ads.zzeij.zzc(r15, r4)
            goto L_0x0909
        L_0x08aa:
            java.lang.Object r4 = r2.getObject(r1, r10)
            java.util.List r4 = (java.util.List) r4
            r9 = 0
            int r4 = com.google.android.gms.internal.ads.zzeij.zzx(r15, r4, r9)
            goto L_0x0909
        L_0x08b6:
            r9 = 0
            java.lang.Object r4 = r2.getObject(r1, r10)
            java.util.List r4 = (java.util.List) r4
            int r4 = com.google.android.gms.internal.ads.zzeij.zzv(r15, r4, r9)
            goto L_0x0909
        L_0x08c2:
            r9 = 0
            java.lang.Object r4 = r2.getObject(r1, r10)
            java.util.List r4 = (java.util.List) r4
            int r4 = com.google.android.gms.internal.ads.zzeij.zzw(r15, r4, r9)
            goto L_0x0909
        L_0x08ce:
            r9 = 0
            java.lang.Object r4 = r2.getObject(r1, r10)
            java.util.List r4 = (java.util.List) r4
            int r4 = com.google.android.gms.internal.ads.zzeij.zzs(r15, r4, r9)
            goto L_0x0909
        L_0x08da:
            r9 = 0
            java.lang.Object r4 = r2.getObject(r1, r10)
            java.util.List r4 = (java.util.List) r4
            int r4 = com.google.android.gms.internal.ads.zzeij.zzp(r15, r4, r9)
            goto L_0x0909
        L_0x08e6:
            r9 = 0
            java.lang.Object r4 = r2.getObject(r1, r10)
            java.util.List r4 = (java.util.List) r4
            int r4 = com.google.android.gms.internal.ads.zzeij.zzo(r15, r4, r9)
            goto L_0x0909
        L_0x08f2:
            r9 = 0
            java.lang.Object r4 = r2.getObject(r1, r10)
            java.util.List r4 = (java.util.List) r4
            int r4 = com.google.android.gms.internal.ads.zzeij.zzv(r15, r4, r9)
            goto L_0x0909
        L_0x08fe:
            r9 = 0
            java.lang.Object r4 = r2.getObject(r1, r10)
            java.util.List r4 = (java.util.List) r4
            int r4 = com.google.android.gms.internal.ads.zzeij.zzw(r15, r4, r9)
        L_0x0909:
            int r5 = r5 + r4
        L_0x090a:
            r4 = 0
        L_0x090b:
            r9 = 0
            r10 = 0
            r13 = 0
            goto L_0x0a1f
        L_0x0912:
            r4 = r12 & r18
            if (r4 == 0) goto L_0x090a
            java.lang.Object r4 = r2.getObject(r1, r10)
            com.google.android.gms.internal.ads.zzehl r4 = (com.google.android.gms.internal.ads.zzehl) r4
            com.google.android.gms.internal.ads.zzeih r9 = r0.zzhe(r3)
            int r4 = com.google.android.gms.internal.ads.zzefl.zzc(r15, r4, r9)
            goto L_0x0909
        L_0x0925:
            r4 = r12 & r18
            if (r4 == 0) goto L_0x090a
            long r9 = r2.getLong(r1, r10)
            int r4 = com.google.android.gms.internal.ads.zzefl.zzm(r15, r9)
            goto L_0x0909
        L_0x0932:
            r4 = r12 & r18
            if (r4 == 0) goto L_0x090a
            int r4 = r2.getInt(r1, r10)
            int r4 = com.google.android.gms.internal.ads.zzefl.zzah(r15, r4)
            goto L_0x0909
        L_0x093f:
            r4 = r12 & r18
            if (r4 == 0) goto L_0x090a
            r9 = 0
            int r4 = com.google.android.gms.internal.ads.zzefl.zzo(r15, r9)
            goto L_0x0909
        L_0x094a:
            r4 = r12 & r18
            if (r4 == 0) goto L_0x090a
            r4 = 0
            int r9 = com.google.android.gms.internal.ads.zzefl.zzaj(r15, r4)
        L_0x0953:
            int r5 = r5 + r9
            goto L_0x090a
        L_0x0955:
            r4 = r12 & r18
            if (r4 == 0) goto L_0x090a
            int r4 = r2.getInt(r1, r10)
            int r4 = com.google.android.gms.internal.ads.zzefl.zzak(r15, r4)
            goto L_0x0909
        L_0x0962:
            r4 = r12 & r18
            if (r4 == 0) goto L_0x090a
            int r4 = r2.getInt(r1, r10)
            int r4 = com.google.android.gms.internal.ads.zzefl.zzag(r15, r4)
            goto L_0x0909
        L_0x096f:
            r4 = r12 & r18
            if (r4 == 0) goto L_0x090a
            java.lang.Object r4 = r2.getObject(r1, r10)
            com.google.android.gms.internal.ads.zzeer r4 = (com.google.android.gms.internal.ads.zzeer) r4
            int r4 = com.google.android.gms.internal.ads.zzefl.zzc((int) r15, (com.google.android.gms.internal.ads.zzeer) r4)
            goto L_0x0909
        L_0x097e:
            r4 = r12 & r18
            if (r4 == 0) goto L_0x090a
            java.lang.Object r4 = r2.getObject(r1, r10)
            com.google.android.gms.internal.ads.zzeih r9 = r0.zzhe(r3)
            int r4 = com.google.android.gms.internal.ads.zzeij.zzc((int) r15, (java.lang.Object) r4, (com.google.android.gms.internal.ads.zzeih) r9)
            goto L_0x0909
        L_0x0990:
            r4 = r12 & r18
            if (r4 == 0) goto L_0x090a
            java.lang.Object r4 = r2.getObject(r1, r10)
            boolean r9 = r4 instanceof com.google.android.gms.internal.ads.zzeer
            if (r9 == 0) goto L_0x09a4
            com.google.android.gms.internal.ads.zzeer r4 = (com.google.android.gms.internal.ads.zzeer) r4
            int r4 = com.google.android.gms.internal.ads.zzefl.zzc((int) r15, (com.google.android.gms.internal.ads.zzeer) r4)
            goto L_0x0909
        L_0x09a4:
            java.lang.String r4 = (java.lang.String) r4
            int r4 = com.google.android.gms.internal.ads.zzefl.zzl((int) r15, (java.lang.String) r4)
            goto L_0x0909
        L_0x09ac:
            r4 = r12 & r18
            if (r4 == 0) goto L_0x090a
            int r4 = com.google.android.gms.internal.ads.zzefl.zzi((int) r15, (boolean) r7)
            goto L_0x0909
        L_0x09b6:
            r4 = r12 & r18
            if (r4 == 0) goto L_0x090a
            r4 = 0
            int r9 = com.google.android.gms.internal.ads.zzefl.zzai(r15, r4)
            int r5 = r5 + r9
            goto L_0x090b
        L_0x09c2:
            r4 = 0
            r9 = r12 & r18
            r13 = 0
            if (r9 == 0) goto L_0x09fe
            int r9 = com.google.android.gms.internal.ads.zzefl.zzn(r15, r13)
            goto L_0x09fd
        L_0x09ce:
            r4 = 0
            r13 = 0
            r9 = r12 & r18
            if (r9 == 0) goto L_0x09fe
            int r9 = r2.getInt(r1, r10)
            int r9 = com.google.android.gms.internal.ads.zzefl.zzaf(r15, r9)
            goto L_0x09fd
        L_0x09de:
            r4 = 0
            r13 = 0
            r9 = r12 & r18
            if (r9 == 0) goto L_0x09fe
            long r9 = r2.getLong(r1, r10)
            int r9 = com.google.android.gms.internal.ads.zzefl.zzl((int) r15, (long) r9)
            goto L_0x09fd
        L_0x09ee:
            r4 = 0
            r13 = 0
            r9 = r12 & r18
            if (r9 == 0) goto L_0x09fe
            long r9 = r2.getLong(r1, r10)
            int r9 = com.google.android.gms.internal.ads.zzefl.zzk((int) r15, (long) r9)
        L_0x09fd:
            int r5 = r5 + r9
        L_0x09fe:
            r9 = 0
            goto L_0x0a0d
        L_0x0a00:
            r4 = 0
            r13 = 0
            r9 = r12 & r18
            if (r9 == 0) goto L_0x09fe
            r9 = 0
            int r10 = com.google.android.gms.internal.ads.zzefl.zzb((int) r15, (float) r9)
            int r5 = r5 + r10
        L_0x0a0d:
            r10 = 0
            goto L_0x0a1f
        L_0x0a10:
            r4 = 0
            r9 = 0
            r13 = 0
            r10 = r12 & r18
            if (r10 == 0) goto L_0x0a0d
            r10 = 0
            int r15 = com.google.android.gms.internal.ads.zzefl.zzc((int) r15, (double) r10)
            int r5 = r5 + r15
        L_0x0a1f:
            int r3 = r3 + 3
            r9 = r13
            r4 = 0
            r11 = 0
            goto L_0x04fa
        L_0x0a26:
            r4 = 0
            com.google.android.gms.internal.ads.zzeiz<?, ?> r2 = r0.zzihg
            int r2 = zza(r2, r1)
            int r5 = r5 + r2
            boolean r2 = r0.zzigx
            if (r2 == 0) goto L_0x0a80
            com.google.android.gms.internal.ads.zzefq<?> r2 = r0.zzihh
            com.google.android.gms.internal.ads.zzefu r1 = r2.zzah(r1)
            r11 = 0
        L_0x0a39:
            com.google.android.gms.internal.ads.zzeim<T, java.lang.Object> r2 = r1.zzibl
            int r2 = r2.zzbhj()
            if (r11 >= r2) goto L_0x0a59
            com.google.android.gms.internal.ads.zzeim<T, java.lang.Object> r2 = r1.zzibl
            java.util.Map$Entry r2 = r2.zzho(r11)
            java.lang.Object r3 = r2.getKey()
            com.google.android.gms.internal.ads.zzefw r3 = (com.google.android.gms.internal.ads.zzefw) r3
            java.lang.Object r2 = r2.getValue()
            int r2 = com.google.android.gms.internal.ads.zzefu.zzb((com.google.android.gms.internal.ads.zzefw<?>) r3, (java.lang.Object) r2)
            int r4 = r4 + r2
            int r11 = r11 + 1
            goto L_0x0a39
        L_0x0a59:
            com.google.android.gms.internal.ads.zzeim<T, java.lang.Object> r1 = r1.zzibl
            java.lang.Iterable r1 = r1.zzbhk()
            java.util.Iterator r1 = r1.iterator()
        L_0x0a63:
            boolean r2 = r1.hasNext()
            if (r2 == 0) goto L_0x0a7f
            java.lang.Object r2 = r1.next()
            java.util.Map$Entry r2 = (java.util.Map.Entry) r2
            java.lang.Object r3 = r2.getKey()
            com.google.android.gms.internal.ads.zzefw r3 = (com.google.android.gms.internal.ads.zzefw) r3
            java.lang.Object r2 = r2.getValue()
            int r2 = com.google.android.gms.internal.ads.zzefu.zzb((com.google.android.gms.internal.ads.zzefw<?>) r3, (java.lang.Object) r2)
            int r4 = r4 + r2
            goto L_0x0a63
        L_0x0a7f:
            int r5 = r5 + r4
        L_0x0a80:
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzehp.zzat(java.lang.Object):int");
    }

    private static <UT, UB> int zza(zzeiz<UT, UB> zzeiz, T t) {
        return zzeiz.zzat(zzeiz.zzax(t));
    }

    private static List<?> zze(Object obj, long j) {
        return (List) zzejf.zzp(obj, j);
    }

    /* JADX WARNING: Removed duplicated region for block: B:10:0x003b  */
    /* JADX WARNING: Removed duplicated region for block: B:163:0x0513  */
    /* JADX WARNING: Removed duplicated region for block: B:178:0x0552  */
    /* JADX WARNING: Removed duplicated region for block: B:331:0x0a2a  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final void zza(T r14, com.google.android.gms.internal.ads.zzejw r15) throws java.io.IOException {
        /*
            r13 = this;
            int r0 = r15.zzbep()
            int r1 = com.google.android.gms.internal.ads.zzegb.zze.zzifa
            r2 = 267386880(0xff00000, float:2.3665827E-29)
            r3 = 0
            r4 = 1
            r5 = 0
            r6 = 1048575(0xfffff, float:1.469367E-39)
            if (r0 != r1) goto L_0x0529
            com.google.android.gms.internal.ads.zzeiz<?, ?> r0 = r13.zzihg
            zza(r0, r14, (com.google.android.gms.internal.ads.zzejw) r15)
            boolean r0 = r13.zzigx
            if (r0 == 0) goto L_0x0032
            com.google.android.gms.internal.ads.zzefq<?> r0 = r13.zzihh
            com.google.android.gms.internal.ads.zzefu r0 = r0.zzah(r14)
            com.google.android.gms.internal.ads.zzeim<T, java.lang.Object> r1 = r0.zzibl
            boolean r1 = r1.isEmpty()
            if (r1 != 0) goto L_0x0032
            java.util.Iterator r0 = r0.descendingIterator()
            java.lang.Object r1 = r0.next()
            java.util.Map$Entry r1 = (java.util.Map.Entry) r1
            goto L_0x0034
        L_0x0032:
            r0 = r3
            r1 = r0
        L_0x0034:
            int[] r7 = r13.zzigs
            int r7 = r7.length
            int r7 = r7 + -3
        L_0x0039:
            if (r7 < 0) goto L_0x0511
            int r8 = r13.zzhh(r7)
            int[] r9 = r13.zzigs
            r9 = r9[r7]
        L_0x0043:
            if (r1 == 0) goto L_0x0061
            com.google.android.gms.internal.ads.zzefq<?> r10 = r13.zzihh
            int r10 = r10.zza(r1)
            if (r10 <= r9) goto L_0x0061
            com.google.android.gms.internal.ads.zzefq<?> r10 = r13.zzihh
            r10.zza(r15, r1)
            boolean r1 = r0.hasNext()
            if (r1 == 0) goto L_0x005f
            java.lang.Object r1 = r0.next()
            java.util.Map$Entry r1 = (java.util.Map.Entry) r1
            goto L_0x0043
        L_0x005f:
            r1 = r3
            goto L_0x0043
        L_0x0061:
            r10 = r8 & r2
            int r10 = r10 >>> 20
            switch(r10) {
                case 0: goto L_0x04fe;
                case 1: goto L_0x04ee;
                case 2: goto L_0x04de;
                case 3: goto L_0x04ce;
                case 4: goto L_0x04be;
                case 5: goto L_0x04ae;
                case 6: goto L_0x049e;
                case 7: goto L_0x048d;
                case 8: goto L_0x047c;
                case 9: goto L_0x0467;
                case 10: goto L_0x0454;
                case 11: goto L_0x0443;
                case 12: goto L_0x0432;
                case 13: goto L_0x0421;
                case 14: goto L_0x0410;
                case 15: goto L_0x03ff;
                case 16: goto L_0x03ee;
                case 17: goto L_0x03d9;
                case 18: goto L_0x03c8;
                case 19: goto L_0x03b7;
                case 20: goto L_0x03a6;
                case 21: goto L_0x0395;
                case 22: goto L_0x0384;
                case 23: goto L_0x0373;
                case 24: goto L_0x0362;
                case 25: goto L_0x0351;
                case 26: goto L_0x0340;
                case 27: goto L_0x032b;
                case 28: goto L_0x031a;
                case 29: goto L_0x0309;
                case 30: goto L_0x02f8;
                case 31: goto L_0x02e7;
                case 32: goto L_0x02d6;
                case 33: goto L_0x02c5;
                case 34: goto L_0x02b4;
                case 35: goto L_0x02a3;
                case 36: goto L_0x0292;
                case 37: goto L_0x0281;
                case 38: goto L_0x0270;
                case 39: goto L_0x025f;
                case 40: goto L_0x024e;
                case 41: goto L_0x023d;
                case 42: goto L_0x022c;
                case 43: goto L_0x021b;
                case 44: goto L_0x020a;
                case 45: goto L_0x01f9;
                case 46: goto L_0x01e8;
                case 47: goto L_0x01d7;
                case 48: goto L_0x01c6;
                case 49: goto L_0x01b1;
                case 50: goto L_0x01a6;
                case 51: goto L_0x0195;
                case 52: goto L_0x0184;
                case 53: goto L_0x0173;
                case 54: goto L_0x0162;
                case 55: goto L_0x0151;
                case 56: goto L_0x0140;
                case 57: goto L_0x012f;
                case 58: goto L_0x011e;
                case 59: goto L_0x010d;
                case 60: goto L_0x00f8;
                case 61: goto L_0x00e5;
                case 62: goto L_0x00d4;
                case 63: goto L_0x00c3;
                case 64: goto L_0x00b2;
                case 65: goto L_0x00a1;
                case 66: goto L_0x0090;
                case 67: goto L_0x007f;
                case 68: goto L_0x006a;
                default: goto L_0x0068;
            }
        L_0x0068:
            goto L_0x050d
        L_0x006a:
            boolean r10 = r13.zza(r14, (int) r9, (int) r7)
            if (r10 == 0) goto L_0x050d
            r8 = r8 & r6
            long r10 = (long) r8
            java.lang.Object r8 = com.google.android.gms.internal.ads.zzejf.zzp(r14, r10)
            com.google.android.gms.internal.ads.zzeih r10 = r13.zzhe(r7)
            r15.zzb((int) r9, (java.lang.Object) r8, (com.google.android.gms.internal.ads.zzeih) r10)
            goto L_0x050d
        L_0x007f:
            boolean r10 = r13.zza(r14, (int) r9, (int) r7)
            if (r10 == 0) goto L_0x050d
            r8 = r8 & r6
            long r10 = (long) r8
            long r10 = zzi(r14, r10)
            r15.zzi(r9, r10)
            goto L_0x050d
        L_0x0090:
            boolean r10 = r13.zza(r14, (int) r9, (int) r7)
            if (r10 == 0) goto L_0x050d
            r8 = r8 & r6
            long r10 = (long) r8
            int r8 = zzh(r14, r10)
            r15.zzad(r9, r8)
            goto L_0x050d
        L_0x00a1:
            boolean r10 = r13.zza(r14, (int) r9, (int) r7)
            if (r10 == 0) goto L_0x050d
            r8 = r8 & r6
            long r10 = (long) r8
            long r10 = zzi(r14, r10)
            r15.zzq(r9, r10)
            goto L_0x050d
        L_0x00b2:
            boolean r10 = r13.zza(r14, (int) r9, (int) r7)
            if (r10 == 0) goto L_0x050d
            r8 = r8 & r6
            long r10 = (long) r8
            int r8 = zzh(r14, r10)
            r15.zzal(r9, r8)
            goto L_0x050d
        L_0x00c3:
            boolean r10 = r13.zza(r14, (int) r9, (int) r7)
            if (r10 == 0) goto L_0x050d
            r8 = r8 & r6
            long r10 = (long) r8
            int r8 = zzh(r14, r10)
            r15.zzam(r9, r8)
            goto L_0x050d
        L_0x00d4:
            boolean r10 = r13.zza(r14, (int) r9, (int) r7)
            if (r10 == 0) goto L_0x050d
            r8 = r8 & r6
            long r10 = (long) r8
            int r8 = zzh(r14, r10)
            r15.zzac(r9, r8)
            goto L_0x050d
        L_0x00e5:
            boolean r10 = r13.zza(r14, (int) r9, (int) r7)
            if (r10 == 0) goto L_0x050d
            r8 = r8 & r6
            long r10 = (long) r8
            java.lang.Object r8 = com.google.android.gms.internal.ads.zzejf.zzp(r14, r10)
            com.google.android.gms.internal.ads.zzeer r8 = (com.google.android.gms.internal.ads.zzeer) r8
            r15.zza((int) r9, (com.google.android.gms.internal.ads.zzeer) r8)
            goto L_0x050d
        L_0x00f8:
            boolean r10 = r13.zza(r14, (int) r9, (int) r7)
            if (r10 == 0) goto L_0x050d
            r8 = r8 & r6
            long r10 = (long) r8
            java.lang.Object r8 = com.google.android.gms.internal.ads.zzejf.zzp(r14, r10)
            com.google.android.gms.internal.ads.zzeih r10 = r13.zzhe(r7)
            r15.zza((int) r9, (java.lang.Object) r8, (com.google.android.gms.internal.ads.zzeih) r10)
            goto L_0x050d
        L_0x010d:
            boolean r10 = r13.zza(r14, (int) r9, (int) r7)
            if (r10 == 0) goto L_0x050d
            r8 = r8 & r6
            long r10 = (long) r8
            java.lang.Object r8 = com.google.android.gms.internal.ads.zzejf.zzp(r14, r10)
            zza((int) r9, (java.lang.Object) r8, (com.google.android.gms.internal.ads.zzejw) r15)
            goto L_0x050d
        L_0x011e:
            boolean r10 = r13.zza(r14, (int) r9, (int) r7)
            if (r10 == 0) goto L_0x050d
            r8 = r8 & r6
            long r10 = (long) r8
            boolean r8 = zzj(r14, r10)
            r15.zzh((int) r9, (boolean) r8)
            goto L_0x050d
        L_0x012f:
            boolean r10 = r13.zza(r14, (int) r9, (int) r7)
            if (r10 == 0) goto L_0x050d
            r8 = r8 & r6
            long r10 = (long) r8
            int r8 = zzh(r14, r10)
            r15.zzae(r9, r8)
            goto L_0x050d
        L_0x0140:
            boolean r10 = r13.zza(r14, (int) r9, (int) r7)
            if (r10 == 0) goto L_0x050d
            r8 = r8 & r6
            long r10 = (long) r8
            long r10 = zzi(r14, r10)
            r15.zzj(r9, r10)
            goto L_0x050d
        L_0x0151:
            boolean r10 = r13.zza(r14, (int) r9, (int) r7)
            if (r10 == 0) goto L_0x050d
            r8 = r8 & r6
            long r10 = (long) r8
            int r8 = zzh(r14, r10)
            r15.zzab(r9, r8)
            goto L_0x050d
        L_0x0162:
            boolean r10 = r13.zza(r14, (int) r9, (int) r7)
            if (r10 == 0) goto L_0x050d
            r8 = r8 & r6
            long r10 = (long) r8
            long r10 = zzi(r14, r10)
            r15.zzh((int) r9, (long) r10)
            goto L_0x050d
        L_0x0173:
            boolean r10 = r13.zza(r14, (int) r9, (int) r7)
            if (r10 == 0) goto L_0x050d
            r8 = r8 & r6
            long r10 = (long) r8
            long r10 = zzi(r14, r10)
            r15.zzp(r9, r10)
            goto L_0x050d
        L_0x0184:
            boolean r10 = r13.zza(r14, (int) r9, (int) r7)
            if (r10 == 0) goto L_0x050d
            r8 = r8 & r6
            long r10 = (long) r8
            float r8 = zzg(r14, (long) r10)
            r15.zza((int) r9, (float) r8)
            goto L_0x050d
        L_0x0195:
            boolean r10 = r13.zza(r14, (int) r9, (int) r7)
            if (r10 == 0) goto L_0x050d
            r8 = r8 & r6
            long r10 = (long) r8
            double r10 = zzf(r14, (long) r10)
            r15.zzb((int) r9, (double) r10)
            goto L_0x050d
        L_0x01a6:
            r8 = r8 & r6
            long r10 = (long) r8
            java.lang.Object r8 = com.google.android.gms.internal.ads.zzejf.zzp(r14, r10)
            r13.zza((com.google.android.gms.internal.ads.zzejw) r15, (int) r9, (java.lang.Object) r8, (int) r7)
            goto L_0x050d
        L_0x01b1:
            int[] r9 = r13.zzigs
            r9 = r9[r7]
            r8 = r8 & r6
            long r10 = (long) r8
            java.lang.Object r8 = com.google.android.gms.internal.ads.zzejf.zzp(r14, r10)
            java.util.List r8 = (java.util.List) r8
            com.google.android.gms.internal.ads.zzeih r10 = r13.zzhe(r7)
            com.google.android.gms.internal.ads.zzeij.zzb((int) r9, (java.util.List<?>) r8, (com.google.android.gms.internal.ads.zzejw) r15, (com.google.android.gms.internal.ads.zzeih) r10)
            goto L_0x050d
        L_0x01c6:
            int[] r9 = r13.zzigs
            r9 = r9[r7]
            r8 = r8 & r6
            long r10 = (long) r8
            java.lang.Object r8 = com.google.android.gms.internal.ads.zzejf.zzp(r14, r10)
            java.util.List r8 = (java.util.List) r8
            com.google.android.gms.internal.ads.zzeij.zze(r9, r8, r15, r4)
            goto L_0x050d
        L_0x01d7:
            int[] r9 = r13.zzigs
            r9 = r9[r7]
            r8 = r8 & r6
            long r10 = (long) r8
            java.lang.Object r8 = com.google.android.gms.internal.ads.zzejf.zzp(r14, r10)
            java.util.List r8 = (java.util.List) r8
            com.google.android.gms.internal.ads.zzeij.zzj(r9, r8, r15, r4)
            goto L_0x050d
        L_0x01e8:
            int[] r9 = r13.zzigs
            r9 = r9[r7]
            r8 = r8 & r6
            long r10 = (long) r8
            java.lang.Object r8 = com.google.android.gms.internal.ads.zzejf.zzp(r14, r10)
            java.util.List r8 = (java.util.List) r8
            com.google.android.gms.internal.ads.zzeij.zzg(r9, r8, r15, r4)
            goto L_0x050d
        L_0x01f9:
            int[] r9 = r13.zzigs
            r9 = r9[r7]
            r8 = r8 & r6
            long r10 = (long) r8
            java.lang.Object r8 = com.google.android.gms.internal.ads.zzejf.zzp(r14, r10)
            java.util.List r8 = (java.util.List) r8
            com.google.android.gms.internal.ads.zzeij.zzl(r9, r8, r15, r4)
            goto L_0x050d
        L_0x020a:
            int[] r9 = r13.zzigs
            r9 = r9[r7]
            r8 = r8 & r6
            long r10 = (long) r8
            java.lang.Object r8 = com.google.android.gms.internal.ads.zzejf.zzp(r14, r10)
            java.util.List r8 = (java.util.List) r8
            com.google.android.gms.internal.ads.zzeij.zzm(r9, r8, r15, r4)
            goto L_0x050d
        L_0x021b:
            int[] r9 = r13.zzigs
            r9 = r9[r7]
            r8 = r8 & r6
            long r10 = (long) r8
            java.lang.Object r8 = com.google.android.gms.internal.ads.zzejf.zzp(r14, r10)
            java.util.List r8 = (java.util.List) r8
            com.google.android.gms.internal.ads.zzeij.zzi(r9, r8, r15, r4)
            goto L_0x050d
        L_0x022c:
            int[] r9 = r13.zzigs
            r9 = r9[r7]
            r8 = r8 & r6
            long r10 = (long) r8
            java.lang.Object r8 = com.google.android.gms.internal.ads.zzejf.zzp(r14, r10)
            java.util.List r8 = (java.util.List) r8
            com.google.android.gms.internal.ads.zzeij.zzn(r9, r8, r15, r4)
            goto L_0x050d
        L_0x023d:
            int[] r9 = r13.zzigs
            r9 = r9[r7]
            r8 = r8 & r6
            long r10 = (long) r8
            java.lang.Object r8 = com.google.android.gms.internal.ads.zzejf.zzp(r14, r10)
            java.util.List r8 = (java.util.List) r8
            com.google.android.gms.internal.ads.zzeij.zzk(r9, r8, r15, r4)
            goto L_0x050d
        L_0x024e:
            int[] r9 = r13.zzigs
            r9 = r9[r7]
            r8 = r8 & r6
            long r10 = (long) r8
            java.lang.Object r8 = com.google.android.gms.internal.ads.zzejf.zzp(r14, r10)
            java.util.List r8 = (java.util.List) r8
            com.google.android.gms.internal.ads.zzeij.zzf(r9, r8, r15, r4)
            goto L_0x050d
        L_0x025f:
            int[] r9 = r13.zzigs
            r9 = r9[r7]
            r8 = r8 & r6
            long r10 = (long) r8
            java.lang.Object r8 = com.google.android.gms.internal.ads.zzejf.zzp(r14, r10)
            java.util.List r8 = (java.util.List) r8
            com.google.android.gms.internal.ads.zzeij.zzh(r9, r8, r15, r4)
            goto L_0x050d
        L_0x0270:
            int[] r9 = r13.zzigs
            r9 = r9[r7]
            r8 = r8 & r6
            long r10 = (long) r8
            java.lang.Object r8 = com.google.android.gms.internal.ads.zzejf.zzp(r14, r10)
            java.util.List r8 = (java.util.List) r8
            com.google.android.gms.internal.ads.zzeij.zzd(r9, r8, r15, r4)
            goto L_0x050d
        L_0x0281:
            int[] r9 = r13.zzigs
            r9 = r9[r7]
            r8 = r8 & r6
            long r10 = (long) r8
            java.lang.Object r8 = com.google.android.gms.internal.ads.zzejf.zzp(r14, r10)
            java.util.List r8 = (java.util.List) r8
            com.google.android.gms.internal.ads.zzeij.zzc(r9, r8, r15, r4)
            goto L_0x050d
        L_0x0292:
            int[] r9 = r13.zzigs
            r9 = r9[r7]
            r8 = r8 & r6
            long r10 = (long) r8
            java.lang.Object r8 = com.google.android.gms.internal.ads.zzejf.zzp(r14, r10)
            java.util.List r8 = (java.util.List) r8
            com.google.android.gms.internal.ads.zzeij.zzb((int) r9, (java.util.List<java.lang.Float>) r8, (com.google.android.gms.internal.ads.zzejw) r15, (boolean) r4)
            goto L_0x050d
        L_0x02a3:
            int[] r9 = r13.zzigs
            r9 = r9[r7]
            r8 = r8 & r6
            long r10 = (long) r8
            java.lang.Object r8 = com.google.android.gms.internal.ads.zzejf.zzp(r14, r10)
            java.util.List r8 = (java.util.List) r8
            com.google.android.gms.internal.ads.zzeij.zza((int) r9, (java.util.List<java.lang.Double>) r8, (com.google.android.gms.internal.ads.zzejw) r15, (boolean) r4)
            goto L_0x050d
        L_0x02b4:
            int[] r9 = r13.zzigs
            r9 = r9[r7]
            r8 = r8 & r6
            long r10 = (long) r8
            java.lang.Object r8 = com.google.android.gms.internal.ads.zzejf.zzp(r14, r10)
            java.util.List r8 = (java.util.List) r8
            com.google.android.gms.internal.ads.zzeij.zze(r9, r8, r15, r5)
            goto L_0x050d
        L_0x02c5:
            int[] r9 = r13.zzigs
            r9 = r9[r7]
            r8 = r8 & r6
            long r10 = (long) r8
            java.lang.Object r8 = com.google.android.gms.internal.ads.zzejf.zzp(r14, r10)
            java.util.List r8 = (java.util.List) r8
            com.google.android.gms.internal.ads.zzeij.zzj(r9, r8, r15, r5)
            goto L_0x050d
        L_0x02d6:
            int[] r9 = r13.zzigs
            r9 = r9[r7]
            r8 = r8 & r6
            long r10 = (long) r8
            java.lang.Object r8 = com.google.android.gms.internal.ads.zzejf.zzp(r14, r10)
            java.util.List r8 = (java.util.List) r8
            com.google.android.gms.internal.ads.zzeij.zzg(r9, r8, r15, r5)
            goto L_0x050d
        L_0x02e7:
            int[] r9 = r13.zzigs
            r9 = r9[r7]
            r8 = r8 & r6
            long r10 = (long) r8
            java.lang.Object r8 = com.google.android.gms.internal.ads.zzejf.zzp(r14, r10)
            java.util.List r8 = (java.util.List) r8
            com.google.android.gms.internal.ads.zzeij.zzl(r9, r8, r15, r5)
            goto L_0x050d
        L_0x02f8:
            int[] r9 = r13.zzigs
            r9 = r9[r7]
            r8 = r8 & r6
            long r10 = (long) r8
            java.lang.Object r8 = com.google.android.gms.internal.ads.zzejf.zzp(r14, r10)
            java.util.List r8 = (java.util.List) r8
            com.google.android.gms.internal.ads.zzeij.zzm(r9, r8, r15, r5)
            goto L_0x050d
        L_0x0309:
            int[] r9 = r13.zzigs
            r9 = r9[r7]
            r8 = r8 & r6
            long r10 = (long) r8
            java.lang.Object r8 = com.google.android.gms.internal.ads.zzejf.zzp(r14, r10)
            java.util.List r8 = (java.util.List) r8
            com.google.android.gms.internal.ads.zzeij.zzi(r9, r8, r15, r5)
            goto L_0x050d
        L_0x031a:
            int[] r9 = r13.zzigs
            r9 = r9[r7]
            r8 = r8 & r6
            long r10 = (long) r8
            java.lang.Object r8 = com.google.android.gms.internal.ads.zzejf.zzp(r14, r10)
            java.util.List r8 = (java.util.List) r8
            com.google.android.gms.internal.ads.zzeij.zzb(r9, r8, r15)
            goto L_0x050d
        L_0x032b:
            int[] r9 = r13.zzigs
            r9 = r9[r7]
            r8 = r8 & r6
            long r10 = (long) r8
            java.lang.Object r8 = com.google.android.gms.internal.ads.zzejf.zzp(r14, r10)
            java.util.List r8 = (java.util.List) r8
            com.google.android.gms.internal.ads.zzeih r10 = r13.zzhe(r7)
            com.google.android.gms.internal.ads.zzeij.zza((int) r9, (java.util.List<?>) r8, (com.google.android.gms.internal.ads.zzejw) r15, (com.google.android.gms.internal.ads.zzeih) r10)
            goto L_0x050d
        L_0x0340:
            int[] r9 = r13.zzigs
            r9 = r9[r7]
            r8 = r8 & r6
            long r10 = (long) r8
            java.lang.Object r8 = com.google.android.gms.internal.ads.zzejf.zzp(r14, r10)
            java.util.List r8 = (java.util.List) r8
            com.google.android.gms.internal.ads.zzeij.zza((int) r9, (java.util.List<java.lang.String>) r8, (com.google.android.gms.internal.ads.zzejw) r15)
            goto L_0x050d
        L_0x0351:
            int[] r9 = r13.zzigs
            r9 = r9[r7]
            r8 = r8 & r6
            long r10 = (long) r8
            java.lang.Object r8 = com.google.android.gms.internal.ads.zzejf.zzp(r14, r10)
            java.util.List r8 = (java.util.List) r8
            com.google.android.gms.internal.ads.zzeij.zzn(r9, r8, r15, r5)
            goto L_0x050d
        L_0x0362:
            int[] r9 = r13.zzigs
            r9 = r9[r7]
            r8 = r8 & r6
            long r10 = (long) r8
            java.lang.Object r8 = com.google.android.gms.internal.ads.zzejf.zzp(r14, r10)
            java.util.List r8 = (java.util.List) r8
            com.google.android.gms.internal.ads.zzeij.zzk(r9, r8, r15, r5)
            goto L_0x050d
        L_0x0373:
            int[] r9 = r13.zzigs
            r9 = r9[r7]
            r8 = r8 & r6
            long r10 = (long) r8
            java.lang.Object r8 = com.google.android.gms.internal.ads.zzejf.zzp(r14, r10)
            java.util.List r8 = (java.util.List) r8
            com.google.android.gms.internal.ads.zzeij.zzf(r9, r8, r15, r5)
            goto L_0x050d
        L_0x0384:
            int[] r9 = r13.zzigs
            r9 = r9[r7]
            r8 = r8 & r6
            long r10 = (long) r8
            java.lang.Object r8 = com.google.android.gms.internal.ads.zzejf.zzp(r14, r10)
            java.util.List r8 = (java.util.List) r8
            com.google.android.gms.internal.ads.zzeij.zzh(r9, r8, r15, r5)
            goto L_0x050d
        L_0x0395:
            int[] r9 = r13.zzigs
            r9 = r9[r7]
            r8 = r8 & r6
            long r10 = (long) r8
            java.lang.Object r8 = com.google.android.gms.internal.ads.zzejf.zzp(r14, r10)
            java.util.List r8 = (java.util.List) r8
            com.google.android.gms.internal.ads.zzeij.zzd(r9, r8, r15, r5)
            goto L_0x050d
        L_0x03a6:
            int[] r9 = r13.zzigs
            r9 = r9[r7]
            r8 = r8 & r6
            long r10 = (long) r8
            java.lang.Object r8 = com.google.android.gms.internal.ads.zzejf.zzp(r14, r10)
            java.util.List r8 = (java.util.List) r8
            com.google.android.gms.internal.ads.zzeij.zzc(r9, r8, r15, r5)
            goto L_0x050d
        L_0x03b7:
            int[] r9 = r13.zzigs
            r9 = r9[r7]
            r8 = r8 & r6
            long r10 = (long) r8
            java.lang.Object r8 = com.google.android.gms.internal.ads.zzejf.zzp(r14, r10)
            java.util.List r8 = (java.util.List) r8
            com.google.android.gms.internal.ads.zzeij.zzb((int) r9, (java.util.List<java.lang.Float>) r8, (com.google.android.gms.internal.ads.zzejw) r15, (boolean) r5)
            goto L_0x050d
        L_0x03c8:
            int[] r9 = r13.zzigs
            r9 = r9[r7]
            r8 = r8 & r6
            long r10 = (long) r8
            java.lang.Object r8 = com.google.android.gms.internal.ads.zzejf.zzp(r14, r10)
            java.util.List r8 = (java.util.List) r8
            com.google.android.gms.internal.ads.zzeij.zza((int) r9, (java.util.List<java.lang.Double>) r8, (com.google.android.gms.internal.ads.zzejw) r15, (boolean) r5)
            goto L_0x050d
        L_0x03d9:
            boolean r10 = r13.zze(r14, (int) r7)
            if (r10 == 0) goto L_0x050d
            r8 = r8 & r6
            long r10 = (long) r8
            java.lang.Object r8 = com.google.android.gms.internal.ads.zzejf.zzp(r14, r10)
            com.google.android.gms.internal.ads.zzeih r10 = r13.zzhe(r7)
            r15.zzb((int) r9, (java.lang.Object) r8, (com.google.android.gms.internal.ads.zzeih) r10)
            goto L_0x050d
        L_0x03ee:
            boolean r10 = r13.zze(r14, (int) r7)
            if (r10 == 0) goto L_0x050d
            r8 = r8 & r6
            long r10 = (long) r8
            long r10 = com.google.android.gms.internal.ads.zzejf.zzl(r14, r10)
            r15.zzi(r9, r10)
            goto L_0x050d
        L_0x03ff:
            boolean r10 = r13.zze(r14, (int) r7)
            if (r10 == 0) goto L_0x050d
            r8 = r8 & r6
            long r10 = (long) r8
            int r8 = com.google.android.gms.internal.ads.zzejf.zzk(r14, r10)
            r15.zzad(r9, r8)
            goto L_0x050d
        L_0x0410:
            boolean r10 = r13.zze(r14, (int) r7)
            if (r10 == 0) goto L_0x050d
            r8 = r8 & r6
            long r10 = (long) r8
            long r10 = com.google.android.gms.internal.ads.zzejf.zzl(r14, r10)
            r15.zzq(r9, r10)
            goto L_0x050d
        L_0x0421:
            boolean r10 = r13.zze(r14, (int) r7)
            if (r10 == 0) goto L_0x050d
            r8 = r8 & r6
            long r10 = (long) r8
            int r8 = com.google.android.gms.internal.ads.zzejf.zzk(r14, r10)
            r15.zzal(r9, r8)
            goto L_0x050d
        L_0x0432:
            boolean r10 = r13.zze(r14, (int) r7)
            if (r10 == 0) goto L_0x050d
            r8 = r8 & r6
            long r10 = (long) r8
            int r8 = com.google.android.gms.internal.ads.zzejf.zzk(r14, r10)
            r15.zzam(r9, r8)
            goto L_0x050d
        L_0x0443:
            boolean r10 = r13.zze(r14, (int) r7)
            if (r10 == 0) goto L_0x050d
            r8 = r8 & r6
            long r10 = (long) r8
            int r8 = com.google.android.gms.internal.ads.zzejf.zzk(r14, r10)
            r15.zzac(r9, r8)
            goto L_0x050d
        L_0x0454:
            boolean r10 = r13.zze(r14, (int) r7)
            if (r10 == 0) goto L_0x050d
            r8 = r8 & r6
            long r10 = (long) r8
            java.lang.Object r8 = com.google.android.gms.internal.ads.zzejf.zzp(r14, r10)
            com.google.android.gms.internal.ads.zzeer r8 = (com.google.android.gms.internal.ads.zzeer) r8
            r15.zza((int) r9, (com.google.android.gms.internal.ads.zzeer) r8)
            goto L_0x050d
        L_0x0467:
            boolean r10 = r13.zze(r14, (int) r7)
            if (r10 == 0) goto L_0x050d
            r8 = r8 & r6
            long r10 = (long) r8
            java.lang.Object r8 = com.google.android.gms.internal.ads.zzejf.zzp(r14, r10)
            com.google.android.gms.internal.ads.zzeih r10 = r13.zzhe(r7)
            r15.zza((int) r9, (java.lang.Object) r8, (com.google.android.gms.internal.ads.zzeih) r10)
            goto L_0x050d
        L_0x047c:
            boolean r10 = r13.zze(r14, (int) r7)
            if (r10 == 0) goto L_0x050d
            r8 = r8 & r6
            long r10 = (long) r8
            java.lang.Object r8 = com.google.android.gms.internal.ads.zzejf.zzp(r14, r10)
            zza((int) r9, (java.lang.Object) r8, (com.google.android.gms.internal.ads.zzejw) r15)
            goto L_0x050d
        L_0x048d:
            boolean r10 = r13.zze(r14, (int) r7)
            if (r10 == 0) goto L_0x050d
            r8 = r8 & r6
            long r10 = (long) r8
            boolean r8 = com.google.android.gms.internal.ads.zzejf.zzm(r14, r10)
            r15.zzh((int) r9, (boolean) r8)
            goto L_0x050d
        L_0x049e:
            boolean r10 = r13.zze(r14, (int) r7)
            if (r10 == 0) goto L_0x050d
            r8 = r8 & r6
            long r10 = (long) r8
            int r8 = com.google.android.gms.internal.ads.zzejf.zzk(r14, r10)
            r15.zzae(r9, r8)
            goto L_0x050d
        L_0x04ae:
            boolean r10 = r13.zze(r14, (int) r7)
            if (r10 == 0) goto L_0x050d
            r8 = r8 & r6
            long r10 = (long) r8
            long r10 = com.google.android.gms.internal.ads.zzejf.zzl(r14, r10)
            r15.zzj(r9, r10)
            goto L_0x050d
        L_0x04be:
            boolean r10 = r13.zze(r14, (int) r7)
            if (r10 == 0) goto L_0x050d
            r8 = r8 & r6
            long r10 = (long) r8
            int r8 = com.google.android.gms.internal.ads.zzejf.zzk(r14, r10)
            r15.zzab(r9, r8)
            goto L_0x050d
        L_0x04ce:
            boolean r10 = r13.zze(r14, (int) r7)
            if (r10 == 0) goto L_0x050d
            r8 = r8 & r6
            long r10 = (long) r8
            long r10 = com.google.android.gms.internal.ads.zzejf.zzl(r14, r10)
            r15.zzh((int) r9, (long) r10)
            goto L_0x050d
        L_0x04de:
            boolean r10 = r13.zze(r14, (int) r7)
            if (r10 == 0) goto L_0x050d
            r8 = r8 & r6
            long r10 = (long) r8
            long r10 = com.google.android.gms.internal.ads.zzejf.zzl(r14, r10)
            r15.zzp(r9, r10)
            goto L_0x050d
        L_0x04ee:
            boolean r10 = r13.zze(r14, (int) r7)
            if (r10 == 0) goto L_0x050d
            r8 = r8 & r6
            long r10 = (long) r8
            float r8 = com.google.android.gms.internal.ads.zzejf.zzn(r14, r10)
            r15.zza((int) r9, (float) r8)
            goto L_0x050d
        L_0x04fe:
            boolean r10 = r13.zze(r14, (int) r7)
            if (r10 == 0) goto L_0x050d
            r8 = r8 & r6
            long r10 = (long) r8
            double r10 = com.google.android.gms.internal.ads.zzejf.zzo(r14, r10)
            r15.zzb((int) r9, (double) r10)
        L_0x050d:
            int r7 = r7 + -3
            goto L_0x0039
        L_0x0511:
            if (r1 == 0) goto L_0x0528
            com.google.android.gms.internal.ads.zzefq<?> r14 = r13.zzihh
            r14.zza(r15, r1)
            boolean r14 = r0.hasNext()
            if (r14 == 0) goto L_0x0526
            java.lang.Object r14 = r0.next()
            java.util.Map$Entry r14 = (java.util.Map.Entry) r14
            r1 = r14
            goto L_0x0511
        L_0x0526:
            r1 = r3
            goto L_0x0511
        L_0x0528:
            return
        L_0x0529:
            boolean r0 = r13.zzigz
            if (r0 == 0) goto L_0x0a44
            boolean r0 = r13.zzigx
            if (r0 == 0) goto L_0x054a
            com.google.android.gms.internal.ads.zzefq<?> r0 = r13.zzihh
            com.google.android.gms.internal.ads.zzefu r0 = r0.zzah(r14)
            com.google.android.gms.internal.ads.zzeim<T, java.lang.Object> r1 = r0.zzibl
            boolean r1 = r1.isEmpty()
            if (r1 != 0) goto L_0x054a
            java.util.Iterator r0 = r0.iterator()
            java.lang.Object r1 = r0.next()
            java.util.Map$Entry r1 = (java.util.Map.Entry) r1
            goto L_0x054c
        L_0x054a:
            r0 = r3
            r1 = r0
        L_0x054c:
            int[] r7 = r13.zzigs
            int r7 = r7.length
            r8 = 0
        L_0x0550:
            if (r8 >= r7) goto L_0x0a28
            int r9 = r13.zzhh(r8)
            int[] r10 = r13.zzigs
            r10 = r10[r8]
        L_0x055a:
            if (r1 == 0) goto L_0x0578
            com.google.android.gms.internal.ads.zzefq<?> r11 = r13.zzihh
            int r11 = r11.zza(r1)
            if (r11 > r10) goto L_0x0578
            com.google.android.gms.internal.ads.zzefq<?> r11 = r13.zzihh
            r11.zza(r15, r1)
            boolean r1 = r0.hasNext()
            if (r1 == 0) goto L_0x0576
            java.lang.Object r1 = r0.next()
            java.util.Map$Entry r1 = (java.util.Map.Entry) r1
            goto L_0x055a
        L_0x0576:
            r1 = r3
            goto L_0x055a
        L_0x0578:
            r11 = r9 & r2
            int r11 = r11 >>> 20
            switch(r11) {
                case 0: goto L_0x0a15;
                case 1: goto L_0x0a05;
                case 2: goto L_0x09f5;
                case 3: goto L_0x09e5;
                case 4: goto L_0x09d5;
                case 5: goto L_0x09c5;
                case 6: goto L_0x09b5;
                case 7: goto L_0x09a4;
                case 8: goto L_0x0993;
                case 9: goto L_0x097e;
                case 10: goto L_0x096b;
                case 11: goto L_0x095a;
                case 12: goto L_0x0949;
                case 13: goto L_0x0938;
                case 14: goto L_0x0927;
                case 15: goto L_0x0916;
                case 16: goto L_0x0905;
                case 17: goto L_0x08f0;
                case 18: goto L_0x08df;
                case 19: goto L_0x08ce;
                case 20: goto L_0x08bd;
                case 21: goto L_0x08ac;
                case 22: goto L_0x089b;
                case 23: goto L_0x088a;
                case 24: goto L_0x0879;
                case 25: goto L_0x0868;
                case 26: goto L_0x0857;
                case 27: goto L_0x0842;
                case 28: goto L_0x0831;
                case 29: goto L_0x0820;
                case 30: goto L_0x080f;
                case 31: goto L_0x07fe;
                case 32: goto L_0x07ed;
                case 33: goto L_0x07dc;
                case 34: goto L_0x07cb;
                case 35: goto L_0x07ba;
                case 36: goto L_0x07a9;
                case 37: goto L_0x0798;
                case 38: goto L_0x0787;
                case 39: goto L_0x0776;
                case 40: goto L_0x0765;
                case 41: goto L_0x0754;
                case 42: goto L_0x0743;
                case 43: goto L_0x0732;
                case 44: goto L_0x0721;
                case 45: goto L_0x0710;
                case 46: goto L_0x06ff;
                case 47: goto L_0x06ee;
                case 48: goto L_0x06dd;
                case 49: goto L_0x06c8;
                case 50: goto L_0x06bd;
                case 51: goto L_0x06ac;
                case 52: goto L_0x069b;
                case 53: goto L_0x068a;
                case 54: goto L_0x0679;
                case 55: goto L_0x0668;
                case 56: goto L_0x0657;
                case 57: goto L_0x0646;
                case 58: goto L_0x0635;
                case 59: goto L_0x0624;
                case 60: goto L_0x060f;
                case 61: goto L_0x05fc;
                case 62: goto L_0x05eb;
                case 63: goto L_0x05da;
                case 64: goto L_0x05c9;
                case 65: goto L_0x05b8;
                case 66: goto L_0x05a7;
                case 67: goto L_0x0596;
                case 68: goto L_0x0581;
                default: goto L_0x057f;
            }
        L_0x057f:
            goto L_0x0a24
        L_0x0581:
            boolean r11 = r13.zza(r14, (int) r10, (int) r8)
            if (r11 == 0) goto L_0x0a24
            r9 = r9 & r6
            long r11 = (long) r9
            java.lang.Object r9 = com.google.android.gms.internal.ads.zzejf.zzp(r14, r11)
            com.google.android.gms.internal.ads.zzeih r11 = r13.zzhe(r8)
            r15.zzb((int) r10, (java.lang.Object) r9, (com.google.android.gms.internal.ads.zzeih) r11)
            goto L_0x0a24
        L_0x0596:
            boolean r11 = r13.zza(r14, (int) r10, (int) r8)
            if (r11 == 0) goto L_0x0a24
            r9 = r9 & r6
            long r11 = (long) r9
            long r11 = zzi(r14, r11)
            r15.zzi(r10, r11)
            goto L_0x0a24
        L_0x05a7:
            boolean r11 = r13.zza(r14, (int) r10, (int) r8)
            if (r11 == 0) goto L_0x0a24
            r9 = r9 & r6
            long r11 = (long) r9
            int r9 = zzh(r14, r11)
            r15.zzad(r10, r9)
            goto L_0x0a24
        L_0x05b8:
            boolean r11 = r13.zza(r14, (int) r10, (int) r8)
            if (r11 == 0) goto L_0x0a24
            r9 = r9 & r6
            long r11 = (long) r9
            long r11 = zzi(r14, r11)
            r15.zzq(r10, r11)
            goto L_0x0a24
        L_0x05c9:
            boolean r11 = r13.zza(r14, (int) r10, (int) r8)
            if (r11 == 0) goto L_0x0a24
            r9 = r9 & r6
            long r11 = (long) r9
            int r9 = zzh(r14, r11)
            r15.zzal(r10, r9)
            goto L_0x0a24
        L_0x05da:
            boolean r11 = r13.zza(r14, (int) r10, (int) r8)
            if (r11 == 0) goto L_0x0a24
            r9 = r9 & r6
            long r11 = (long) r9
            int r9 = zzh(r14, r11)
            r15.zzam(r10, r9)
            goto L_0x0a24
        L_0x05eb:
            boolean r11 = r13.zza(r14, (int) r10, (int) r8)
            if (r11 == 0) goto L_0x0a24
            r9 = r9 & r6
            long r11 = (long) r9
            int r9 = zzh(r14, r11)
            r15.zzac(r10, r9)
            goto L_0x0a24
        L_0x05fc:
            boolean r11 = r13.zza(r14, (int) r10, (int) r8)
            if (r11 == 0) goto L_0x0a24
            r9 = r9 & r6
            long r11 = (long) r9
            java.lang.Object r9 = com.google.android.gms.internal.ads.zzejf.zzp(r14, r11)
            com.google.android.gms.internal.ads.zzeer r9 = (com.google.android.gms.internal.ads.zzeer) r9
            r15.zza((int) r10, (com.google.android.gms.internal.ads.zzeer) r9)
            goto L_0x0a24
        L_0x060f:
            boolean r11 = r13.zza(r14, (int) r10, (int) r8)
            if (r11 == 0) goto L_0x0a24
            r9 = r9 & r6
            long r11 = (long) r9
            java.lang.Object r9 = com.google.android.gms.internal.ads.zzejf.zzp(r14, r11)
            com.google.android.gms.internal.ads.zzeih r11 = r13.zzhe(r8)
            r15.zza((int) r10, (java.lang.Object) r9, (com.google.android.gms.internal.ads.zzeih) r11)
            goto L_0x0a24
        L_0x0624:
            boolean r11 = r13.zza(r14, (int) r10, (int) r8)
            if (r11 == 0) goto L_0x0a24
            r9 = r9 & r6
            long r11 = (long) r9
            java.lang.Object r9 = com.google.android.gms.internal.ads.zzejf.zzp(r14, r11)
            zza((int) r10, (java.lang.Object) r9, (com.google.android.gms.internal.ads.zzejw) r15)
            goto L_0x0a24
        L_0x0635:
            boolean r11 = r13.zza(r14, (int) r10, (int) r8)
            if (r11 == 0) goto L_0x0a24
            r9 = r9 & r6
            long r11 = (long) r9
            boolean r9 = zzj(r14, r11)
            r15.zzh((int) r10, (boolean) r9)
            goto L_0x0a24
        L_0x0646:
            boolean r11 = r13.zza(r14, (int) r10, (int) r8)
            if (r11 == 0) goto L_0x0a24
            r9 = r9 & r6
            long r11 = (long) r9
            int r9 = zzh(r14, r11)
            r15.zzae(r10, r9)
            goto L_0x0a24
        L_0x0657:
            boolean r11 = r13.zza(r14, (int) r10, (int) r8)
            if (r11 == 0) goto L_0x0a24
            r9 = r9 & r6
            long r11 = (long) r9
            long r11 = zzi(r14, r11)
            r15.zzj(r10, r11)
            goto L_0x0a24
        L_0x0668:
            boolean r11 = r13.zza(r14, (int) r10, (int) r8)
            if (r11 == 0) goto L_0x0a24
            r9 = r9 & r6
            long r11 = (long) r9
            int r9 = zzh(r14, r11)
            r15.zzab(r10, r9)
            goto L_0x0a24
        L_0x0679:
            boolean r11 = r13.zza(r14, (int) r10, (int) r8)
            if (r11 == 0) goto L_0x0a24
            r9 = r9 & r6
            long r11 = (long) r9
            long r11 = zzi(r14, r11)
            r15.zzh((int) r10, (long) r11)
            goto L_0x0a24
        L_0x068a:
            boolean r11 = r13.zza(r14, (int) r10, (int) r8)
            if (r11 == 0) goto L_0x0a24
            r9 = r9 & r6
            long r11 = (long) r9
            long r11 = zzi(r14, r11)
            r15.zzp(r10, r11)
            goto L_0x0a24
        L_0x069b:
            boolean r11 = r13.zza(r14, (int) r10, (int) r8)
            if (r11 == 0) goto L_0x0a24
            r9 = r9 & r6
            long r11 = (long) r9
            float r9 = zzg(r14, (long) r11)
            r15.zza((int) r10, (float) r9)
            goto L_0x0a24
        L_0x06ac:
            boolean r11 = r13.zza(r14, (int) r10, (int) r8)
            if (r11 == 0) goto L_0x0a24
            r9 = r9 & r6
            long r11 = (long) r9
            double r11 = zzf(r14, (long) r11)
            r15.zzb((int) r10, (double) r11)
            goto L_0x0a24
        L_0x06bd:
            r9 = r9 & r6
            long r11 = (long) r9
            java.lang.Object r9 = com.google.android.gms.internal.ads.zzejf.zzp(r14, r11)
            r13.zza((com.google.android.gms.internal.ads.zzejw) r15, (int) r10, (java.lang.Object) r9, (int) r8)
            goto L_0x0a24
        L_0x06c8:
            int[] r10 = r13.zzigs
            r10 = r10[r8]
            r9 = r9 & r6
            long r11 = (long) r9
            java.lang.Object r9 = com.google.android.gms.internal.ads.zzejf.zzp(r14, r11)
            java.util.List r9 = (java.util.List) r9
            com.google.android.gms.internal.ads.zzeih r11 = r13.zzhe(r8)
            com.google.android.gms.internal.ads.zzeij.zzb((int) r10, (java.util.List<?>) r9, (com.google.android.gms.internal.ads.zzejw) r15, (com.google.android.gms.internal.ads.zzeih) r11)
            goto L_0x0a24
        L_0x06dd:
            int[] r10 = r13.zzigs
            r10 = r10[r8]
            r9 = r9 & r6
            long r11 = (long) r9
            java.lang.Object r9 = com.google.android.gms.internal.ads.zzejf.zzp(r14, r11)
            java.util.List r9 = (java.util.List) r9
            com.google.android.gms.internal.ads.zzeij.zze(r10, r9, r15, r4)
            goto L_0x0a24
        L_0x06ee:
            int[] r10 = r13.zzigs
            r10 = r10[r8]
            r9 = r9 & r6
            long r11 = (long) r9
            java.lang.Object r9 = com.google.android.gms.internal.ads.zzejf.zzp(r14, r11)
            java.util.List r9 = (java.util.List) r9
            com.google.android.gms.internal.ads.zzeij.zzj(r10, r9, r15, r4)
            goto L_0x0a24
        L_0x06ff:
            int[] r10 = r13.zzigs
            r10 = r10[r8]
            r9 = r9 & r6
            long r11 = (long) r9
            java.lang.Object r9 = com.google.android.gms.internal.ads.zzejf.zzp(r14, r11)
            java.util.List r9 = (java.util.List) r9
            com.google.android.gms.internal.ads.zzeij.zzg(r10, r9, r15, r4)
            goto L_0x0a24
        L_0x0710:
            int[] r10 = r13.zzigs
            r10 = r10[r8]
            r9 = r9 & r6
            long r11 = (long) r9
            java.lang.Object r9 = com.google.android.gms.internal.ads.zzejf.zzp(r14, r11)
            java.util.List r9 = (java.util.List) r9
            com.google.android.gms.internal.ads.zzeij.zzl(r10, r9, r15, r4)
            goto L_0x0a24
        L_0x0721:
            int[] r10 = r13.zzigs
            r10 = r10[r8]
            r9 = r9 & r6
            long r11 = (long) r9
            java.lang.Object r9 = com.google.android.gms.internal.ads.zzejf.zzp(r14, r11)
            java.util.List r9 = (java.util.List) r9
            com.google.android.gms.internal.ads.zzeij.zzm(r10, r9, r15, r4)
            goto L_0x0a24
        L_0x0732:
            int[] r10 = r13.zzigs
            r10 = r10[r8]
            r9 = r9 & r6
            long r11 = (long) r9
            java.lang.Object r9 = com.google.android.gms.internal.ads.zzejf.zzp(r14, r11)
            java.util.List r9 = (java.util.List) r9
            com.google.android.gms.internal.ads.zzeij.zzi(r10, r9, r15, r4)
            goto L_0x0a24
        L_0x0743:
            int[] r10 = r13.zzigs
            r10 = r10[r8]
            r9 = r9 & r6
            long r11 = (long) r9
            java.lang.Object r9 = com.google.android.gms.internal.ads.zzejf.zzp(r14, r11)
            java.util.List r9 = (java.util.List) r9
            com.google.android.gms.internal.ads.zzeij.zzn(r10, r9, r15, r4)
            goto L_0x0a24
        L_0x0754:
            int[] r10 = r13.zzigs
            r10 = r10[r8]
            r9 = r9 & r6
            long r11 = (long) r9
            java.lang.Object r9 = com.google.android.gms.internal.ads.zzejf.zzp(r14, r11)
            java.util.List r9 = (java.util.List) r9
            com.google.android.gms.internal.ads.zzeij.zzk(r10, r9, r15, r4)
            goto L_0x0a24
        L_0x0765:
            int[] r10 = r13.zzigs
            r10 = r10[r8]
            r9 = r9 & r6
            long r11 = (long) r9
            java.lang.Object r9 = com.google.android.gms.internal.ads.zzejf.zzp(r14, r11)
            java.util.List r9 = (java.util.List) r9
            com.google.android.gms.internal.ads.zzeij.zzf(r10, r9, r15, r4)
            goto L_0x0a24
        L_0x0776:
            int[] r10 = r13.zzigs
            r10 = r10[r8]
            r9 = r9 & r6
            long r11 = (long) r9
            java.lang.Object r9 = com.google.android.gms.internal.ads.zzejf.zzp(r14, r11)
            java.util.List r9 = (java.util.List) r9
            com.google.android.gms.internal.ads.zzeij.zzh(r10, r9, r15, r4)
            goto L_0x0a24
        L_0x0787:
            int[] r10 = r13.zzigs
            r10 = r10[r8]
            r9 = r9 & r6
            long r11 = (long) r9
            java.lang.Object r9 = com.google.android.gms.internal.ads.zzejf.zzp(r14, r11)
            java.util.List r9 = (java.util.List) r9
            com.google.android.gms.internal.ads.zzeij.zzd(r10, r9, r15, r4)
            goto L_0x0a24
        L_0x0798:
            int[] r10 = r13.zzigs
            r10 = r10[r8]
            r9 = r9 & r6
            long r11 = (long) r9
            java.lang.Object r9 = com.google.android.gms.internal.ads.zzejf.zzp(r14, r11)
            java.util.List r9 = (java.util.List) r9
            com.google.android.gms.internal.ads.zzeij.zzc(r10, r9, r15, r4)
            goto L_0x0a24
        L_0x07a9:
            int[] r10 = r13.zzigs
            r10 = r10[r8]
            r9 = r9 & r6
            long r11 = (long) r9
            java.lang.Object r9 = com.google.android.gms.internal.ads.zzejf.zzp(r14, r11)
            java.util.List r9 = (java.util.List) r9
            com.google.android.gms.internal.ads.zzeij.zzb((int) r10, (java.util.List<java.lang.Float>) r9, (com.google.android.gms.internal.ads.zzejw) r15, (boolean) r4)
            goto L_0x0a24
        L_0x07ba:
            int[] r10 = r13.zzigs
            r10 = r10[r8]
            r9 = r9 & r6
            long r11 = (long) r9
            java.lang.Object r9 = com.google.android.gms.internal.ads.zzejf.zzp(r14, r11)
            java.util.List r9 = (java.util.List) r9
            com.google.android.gms.internal.ads.zzeij.zza((int) r10, (java.util.List<java.lang.Double>) r9, (com.google.android.gms.internal.ads.zzejw) r15, (boolean) r4)
            goto L_0x0a24
        L_0x07cb:
            int[] r10 = r13.zzigs
            r10 = r10[r8]
            r9 = r9 & r6
            long r11 = (long) r9
            java.lang.Object r9 = com.google.android.gms.internal.ads.zzejf.zzp(r14, r11)
            java.util.List r9 = (java.util.List) r9
            com.google.android.gms.internal.ads.zzeij.zze(r10, r9, r15, r5)
            goto L_0x0a24
        L_0x07dc:
            int[] r10 = r13.zzigs
            r10 = r10[r8]
            r9 = r9 & r6
            long r11 = (long) r9
            java.lang.Object r9 = com.google.android.gms.internal.ads.zzejf.zzp(r14, r11)
            java.util.List r9 = (java.util.List) r9
            com.google.android.gms.internal.ads.zzeij.zzj(r10, r9, r15, r5)
            goto L_0x0a24
        L_0x07ed:
            int[] r10 = r13.zzigs
            r10 = r10[r8]
            r9 = r9 & r6
            long r11 = (long) r9
            java.lang.Object r9 = com.google.android.gms.internal.ads.zzejf.zzp(r14, r11)
            java.util.List r9 = (java.util.List) r9
            com.google.android.gms.internal.ads.zzeij.zzg(r10, r9, r15, r5)
            goto L_0x0a24
        L_0x07fe:
            int[] r10 = r13.zzigs
            r10 = r10[r8]
            r9 = r9 & r6
            long r11 = (long) r9
            java.lang.Object r9 = com.google.android.gms.internal.ads.zzejf.zzp(r14, r11)
            java.util.List r9 = (java.util.List) r9
            com.google.android.gms.internal.ads.zzeij.zzl(r10, r9, r15, r5)
            goto L_0x0a24
        L_0x080f:
            int[] r10 = r13.zzigs
            r10 = r10[r8]
            r9 = r9 & r6
            long r11 = (long) r9
            java.lang.Object r9 = com.google.android.gms.internal.ads.zzejf.zzp(r14, r11)
            java.util.List r9 = (java.util.List) r9
            com.google.android.gms.internal.ads.zzeij.zzm(r10, r9, r15, r5)
            goto L_0x0a24
        L_0x0820:
            int[] r10 = r13.zzigs
            r10 = r10[r8]
            r9 = r9 & r6
            long r11 = (long) r9
            java.lang.Object r9 = com.google.android.gms.internal.ads.zzejf.zzp(r14, r11)
            java.util.List r9 = (java.util.List) r9
            com.google.android.gms.internal.ads.zzeij.zzi(r10, r9, r15, r5)
            goto L_0x0a24
        L_0x0831:
            int[] r10 = r13.zzigs
            r10 = r10[r8]
            r9 = r9 & r6
            long r11 = (long) r9
            java.lang.Object r9 = com.google.android.gms.internal.ads.zzejf.zzp(r14, r11)
            java.util.List r9 = (java.util.List) r9
            com.google.android.gms.internal.ads.zzeij.zzb(r10, r9, r15)
            goto L_0x0a24
        L_0x0842:
            int[] r10 = r13.zzigs
            r10 = r10[r8]
            r9 = r9 & r6
            long r11 = (long) r9
            java.lang.Object r9 = com.google.android.gms.internal.ads.zzejf.zzp(r14, r11)
            java.util.List r9 = (java.util.List) r9
            com.google.android.gms.internal.ads.zzeih r11 = r13.zzhe(r8)
            com.google.android.gms.internal.ads.zzeij.zza((int) r10, (java.util.List<?>) r9, (com.google.android.gms.internal.ads.zzejw) r15, (com.google.android.gms.internal.ads.zzeih) r11)
            goto L_0x0a24
        L_0x0857:
            int[] r10 = r13.zzigs
            r10 = r10[r8]
            r9 = r9 & r6
            long r11 = (long) r9
            java.lang.Object r9 = com.google.android.gms.internal.ads.zzejf.zzp(r14, r11)
            java.util.List r9 = (java.util.List) r9
            com.google.android.gms.internal.ads.zzeij.zza((int) r10, (java.util.List<java.lang.String>) r9, (com.google.android.gms.internal.ads.zzejw) r15)
            goto L_0x0a24
        L_0x0868:
            int[] r10 = r13.zzigs
            r10 = r10[r8]
            r9 = r9 & r6
            long r11 = (long) r9
            java.lang.Object r9 = com.google.android.gms.internal.ads.zzejf.zzp(r14, r11)
            java.util.List r9 = (java.util.List) r9
            com.google.android.gms.internal.ads.zzeij.zzn(r10, r9, r15, r5)
            goto L_0x0a24
        L_0x0879:
            int[] r10 = r13.zzigs
            r10 = r10[r8]
            r9 = r9 & r6
            long r11 = (long) r9
            java.lang.Object r9 = com.google.android.gms.internal.ads.zzejf.zzp(r14, r11)
            java.util.List r9 = (java.util.List) r9
            com.google.android.gms.internal.ads.zzeij.zzk(r10, r9, r15, r5)
            goto L_0x0a24
        L_0x088a:
            int[] r10 = r13.zzigs
            r10 = r10[r8]
            r9 = r9 & r6
            long r11 = (long) r9
            java.lang.Object r9 = com.google.android.gms.internal.ads.zzejf.zzp(r14, r11)
            java.util.List r9 = (java.util.List) r9
            com.google.android.gms.internal.ads.zzeij.zzf(r10, r9, r15, r5)
            goto L_0x0a24
        L_0x089b:
            int[] r10 = r13.zzigs
            r10 = r10[r8]
            r9 = r9 & r6
            long r11 = (long) r9
            java.lang.Object r9 = com.google.android.gms.internal.ads.zzejf.zzp(r14, r11)
            java.util.List r9 = (java.util.List) r9
            com.google.android.gms.internal.ads.zzeij.zzh(r10, r9, r15, r5)
            goto L_0x0a24
        L_0x08ac:
            int[] r10 = r13.zzigs
            r10 = r10[r8]
            r9 = r9 & r6
            long r11 = (long) r9
            java.lang.Object r9 = com.google.android.gms.internal.ads.zzejf.zzp(r14, r11)
            java.util.List r9 = (java.util.List) r9
            com.google.android.gms.internal.ads.zzeij.zzd(r10, r9, r15, r5)
            goto L_0x0a24
        L_0x08bd:
            int[] r10 = r13.zzigs
            r10 = r10[r8]
            r9 = r9 & r6
            long r11 = (long) r9
            java.lang.Object r9 = com.google.android.gms.internal.ads.zzejf.zzp(r14, r11)
            java.util.List r9 = (java.util.List) r9
            com.google.android.gms.internal.ads.zzeij.zzc(r10, r9, r15, r5)
            goto L_0x0a24
        L_0x08ce:
            int[] r10 = r13.zzigs
            r10 = r10[r8]
            r9 = r9 & r6
            long r11 = (long) r9
            java.lang.Object r9 = com.google.android.gms.internal.ads.zzejf.zzp(r14, r11)
            java.util.List r9 = (java.util.List) r9
            com.google.android.gms.internal.ads.zzeij.zzb((int) r10, (java.util.List<java.lang.Float>) r9, (com.google.android.gms.internal.ads.zzejw) r15, (boolean) r5)
            goto L_0x0a24
        L_0x08df:
            int[] r10 = r13.zzigs
            r10 = r10[r8]
            r9 = r9 & r6
            long r11 = (long) r9
            java.lang.Object r9 = com.google.android.gms.internal.ads.zzejf.zzp(r14, r11)
            java.util.List r9 = (java.util.List) r9
            com.google.android.gms.internal.ads.zzeij.zza((int) r10, (java.util.List<java.lang.Double>) r9, (com.google.android.gms.internal.ads.zzejw) r15, (boolean) r5)
            goto L_0x0a24
        L_0x08f0:
            boolean r11 = r13.zze(r14, (int) r8)
            if (r11 == 0) goto L_0x0a24
            r9 = r9 & r6
            long r11 = (long) r9
            java.lang.Object r9 = com.google.android.gms.internal.ads.zzejf.zzp(r14, r11)
            com.google.android.gms.internal.ads.zzeih r11 = r13.zzhe(r8)
            r15.zzb((int) r10, (java.lang.Object) r9, (com.google.android.gms.internal.ads.zzeih) r11)
            goto L_0x0a24
        L_0x0905:
            boolean r11 = r13.zze(r14, (int) r8)
            if (r11 == 0) goto L_0x0a24
            r9 = r9 & r6
            long r11 = (long) r9
            long r11 = com.google.android.gms.internal.ads.zzejf.zzl(r14, r11)
            r15.zzi(r10, r11)
            goto L_0x0a24
        L_0x0916:
            boolean r11 = r13.zze(r14, (int) r8)
            if (r11 == 0) goto L_0x0a24
            r9 = r9 & r6
            long r11 = (long) r9
            int r9 = com.google.android.gms.internal.ads.zzejf.zzk(r14, r11)
            r15.zzad(r10, r9)
            goto L_0x0a24
        L_0x0927:
            boolean r11 = r13.zze(r14, (int) r8)
            if (r11 == 0) goto L_0x0a24
            r9 = r9 & r6
            long r11 = (long) r9
            long r11 = com.google.android.gms.internal.ads.zzejf.zzl(r14, r11)
            r15.zzq(r10, r11)
            goto L_0x0a24
        L_0x0938:
            boolean r11 = r13.zze(r14, (int) r8)
            if (r11 == 0) goto L_0x0a24
            r9 = r9 & r6
            long r11 = (long) r9
            int r9 = com.google.android.gms.internal.ads.zzejf.zzk(r14, r11)
            r15.zzal(r10, r9)
            goto L_0x0a24
        L_0x0949:
            boolean r11 = r13.zze(r14, (int) r8)
            if (r11 == 0) goto L_0x0a24
            r9 = r9 & r6
            long r11 = (long) r9
            int r9 = com.google.android.gms.internal.ads.zzejf.zzk(r14, r11)
            r15.zzam(r10, r9)
            goto L_0x0a24
        L_0x095a:
            boolean r11 = r13.zze(r14, (int) r8)
            if (r11 == 0) goto L_0x0a24
            r9 = r9 & r6
            long r11 = (long) r9
            int r9 = com.google.android.gms.internal.ads.zzejf.zzk(r14, r11)
            r15.zzac(r10, r9)
            goto L_0x0a24
        L_0x096b:
            boolean r11 = r13.zze(r14, (int) r8)
            if (r11 == 0) goto L_0x0a24
            r9 = r9 & r6
            long r11 = (long) r9
            java.lang.Object r9 = com.google.android.gms.internal.ads.zzejf.zzp(r14, r11)
            com.google.android.gms.internal.ads.zzeer r9 = (com.google.android.gms.internal.ads.zzeer) r9
            r15.zza((int) r10, (com.google.android.gms.internal.ads.zzeer) r9)
            goto L_0x0a24
        L_0x097e:
            boolean r11 = r13.zze(r14, (int) r8)
            if (r11 == 0) goto L_0x0a24
            r9 = r9 & r6
            long r11 = (long) r9
            java.lang.Object r9 = com.google.android.gms.internal.ads.zzejf.zzp(r14, r11)
            com.google.android.gms.internal.ads.zzeih r11 = r13.zzhe(r8)
            r15.zza((int) r10, (java.lang.Object) r9, (com.google.android.gms.internal.ads.zzeih) r11)
            goto L_0x0a24
        L_0x0993:
            boolean r11 = r13.zze(r14, (int) r8)
            if (r11 == 0) goto L_0x0a24
            r9 = r9 & r6
            long r11 = (long) r9
            java.lang.Object r9 = com.google.android.gms.internal.ads.zzejf.zzp(r14, r11)
            zza((int) r10, (java.lang.Object) r9, (com.google.android.gms.internal.ads.zzejw) r15)
            goto L_0x0a24
        L_0x09a4:
            boolean r11 = r13.zze(r14, (int) r8)
            if (r11 == 0) goto L_0x0a24
            r9 = r9 & r6
            long r11 = (long) r9
            boolean r9 = com.google.android.gms.internal.ads.zzejf.zzm(r14, r11)
            r15.zzh((int) r10, (boolean) r9)
            goto L_0x0a24
        L_0x09b5:
            boolean r11 = r13.zze(r14, (int) r8)
            if (r11 == 0) goto L_0x0a24
            r9 = r9 & r6
            long r11 = (long) r9
            int r9 = com.google.android.gms.internal.ads.zzejf.zzk(r14, r11)
            r15.zzae(r10, r9)
            goto L_0x0a24
        L_0x09c5:
            boolean r11 = r13.zze(r14, (int) r8)
            if (r11 == 0) goto L_0x0a24
            r9 = r9 & r6
            long r11 = (long) r9
            long r11 = com.google.android.gms.internal.ads.zzejf.zzl(r14, r11)
            r15.zzj(r10, r11)
            goto L_0x0a24
        L_0x09d5:
            boolean r11 = r13.zze(r14, (int) r8)
            if (r11 == 0) goto L_0x0a24
            r9 = r9 & r6
            long r11 = (long) r9
            int r9 = com.google.android.gms.internal.ads.zzejf.zzk(r14, r11)
            r15.zzab(r10, r9)
            goto L_0x0a24
        L_0x09e5:
            boolean r11 = r13.zze(r14, (int) r8)
            if (r11 == 0) goto L_0x0a24
            r9 = r9 & r6
            long r11 = (long) r9
            long r11 = com.google.android.gms.internal.ads.zzejf.zzl(r14, r11)
            r15.zzh((int) r10, (long) r11)
            goto L_0x0a24
        L_0x09f5:
            boolean r11 = r13.zze(r14, (int) r8)
            if (r11 == 0) goto L_0x0a24
            r9 = r9 & r6
            long r11 = (long) r9
            long r11 = com.google.android.gms.internal.ads.zzejf.zzl(r14, r11)
            r15.zzp(r10, r11)
            goto L_0x0a24
        L_0x0a05:
            boolean r11 = r13.zze(r14, (int) r8)
            if (r11 == 0) goto L_0x0a24
            r9 = r9 & r6
            long r11 = (long) r9
            float r9 = com.google.android.gms.internal.ads.zzejf.zzn(r14, r11)
            r15.zza((int) r10, (float) r9)
            goto L_0x0a24
        L_0x0a15:
            boolean r11 = r13.zze(r14, (int) r8)
            if (r11 == 0) goto L_0x0a24
            r9 = r9 & r6
            long r11 = (long) r9
            double r11 = com.google.android.gms.internal.ads.zzejf.zzo(r14, r11)
            r15.zzb((int) r10, (double) r11)
        L_0x0a24:
            int r8 = r8 + 3
            goto L_0x0550
        L_0x0a28:
            if (r1 == 0) goto L_0x0a3e
            com.google.android.gms.internal.ads.zzefq<?> r2 = r13.zzihh
            r2.zza(r15, r1)
            boolean r1 = r0.hasNext()
            if (r1 == 0) goto L_0x0a3c
            java.lang.Object r1 = r0.next()
            java.util.Map$Entry r1 = (java.util.Map.Entry) r1
            goto L_0x0a28
        L_0x0a3c:
            r1 = r3
            goto L_0x0a28
        L_0x0a3e:
            com.google.android.gms.internal.ads.zzeiz<?, ?> r0 = r13.zzihg
            zza(r0, r14, (com.google.android.gms.internal.ads.zzejw) r15)
            return
        L_0x0a44:
            r13.zzb(r14, r15)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzehp.zza(java.lang.Object, com.google.android.gms.internal.ads.zzejw):void");
    }

    /* JADX WARNING: Removed duplicated region for block: B:170:0x0495  */
    /* JADX WARNING: Removed duplicated region for block: B:8:0x0031  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private final void zzb(T r18, com.google.android.gms.internal.ads.zzejw r19) throws java.io.IOException {
        /*
            r17 = this;
            r0 = r17
            r1 = r18
            r2 = r19
            boolean r3 = r0.zzigx
            if (r3 == 0) goto L_0x0023
            com.google.android.gms.internal.ads.zzefq<?> r3 = r0.zzihh
            com.google.android.gms.internal.ads.zzefu r3 = r3.zzah(r1)
            com.google.android.gms.internal.ads.zzeim<T, java.lang.Object> r5 = r3.zzibl
            boolean r5 = r5.isEmpty()
            if (r5 != 0) goto L_0x0023
            java.util.Iterator r3 = r3.iterator()
            java.lang.Object r5 = r3.next()
            java.util.Map$Entry r5 = (java.util.Map.Entry) r5
            goto L_0x0025
        L_0x0023:
            r3 = 0
            r5 = 0
        L_0x0025:
            int[] r6 = r0.zzigs
            int r6 = r6.length
            sun.misc.Unsafe r7 = zzhni
            r10 = 0
            r11 = 1048575(0xfffff, float:1.469367E-39)
            r12 = 0
        L_0x002f:
            if (r10 >= r6) goto L_0x0493
            int r13 = r0.zzhh(r10)
            int[] r14 = r0.zzigs
            r15 = r14[r10]
            r16 = 267386880(0xff00000, float:2.3665827E-29)
            r16 = r13 & r16
            int r4 = r16 >>> 20
            boolean r9 = r0.zzigz
            if (r9 != 0) goto L_0x005e
            r9 = 17
            if (r4 > r9) goto L_0x005e
            int r9 = r10 + 2
            r9 = r14[r9]
            r14 = 1048575(0xfffff, float:1.469367E-39)
            r8 = r9 & r14
            if (r8 == r11) goto L_0x0058
            long r11 = (long) r8
            int r12 = r7.getInt(r1, r11)
            r11 = r8
        L_0x0058:
            int r8 = r9 >>> 20
            r9 = 1
            int r8 = r9 << r8
            goto L_0x005f
        L_0x005e:
            r8 = 0
        L_0x005f:
            if (r5 == 0) goto L_0x007d
            com.google.android.gms.internal.ads.zzefq<?> r9 = r0.zzihh
            int r9 = r9.zza(r5)
            if (r9 > r15) goto L_0x007d
            com.google.android.gms.internal.ads.zzefq<?> r9 = r0.zzihh
            r9.zza(r2, r5)
            boolean r5 = r3.hasNext()
            if (r5 == 0) goto L_0x007b
            java.lang.Object r5 = r3.next()
            java.util.Map$Entry r5 = (java.util.Map.Entry) r5
            goto L_0x005f
        L_0x007b:
            r5 = 0
            goto L_0x005f
        L_0x007d:
            r9 = 1048575(0xfffff, float:1.469367E-39)
            r13 = r13 & r9
            long r13 = (long) r13
            switch(r4) {
                case 0: goto L_0x0484;
                case 1: goto L_0x0478;
                case 2: goto L_0x046c;
                case 3: goto L_0x0460;
                case 4: goto L_0x0454;
                case 5: goto L_0x0448;
                case 6: goto L_0x043c;
                case 7: goto L_0x0430;
                case 8: goto L_0x0424;
                case 9: goto L_0x0413;
                case 10: goto L_0x0404;
                case 11: goto L_0x03f7;
                case 12: goto L_0x03ea;
                case 13: goto L_0x03dd;
                case 14: goto L_0x03d0;
                case 15: goto L_0x03c3;
                case 16: goto L_0x03b6;
                case 17: goto L_0x03a5;
                case 18: goto L_0x0395;
                case 19: goto L_0x0385;
                case 20: goto L_0x0375;
                case 21: goto L_0x0365;
                case 22: goto L_0x0355;
                case 23: goto L_0x0345;
                case 24: goto L_0x0335;
                case 25: goto L_0x0325;
                case 26: goto L_0x0316;
                case 27: goto L_0x0303;
                case 28: goto L_0x02f4;
                case 29: goto L_0x02e4;
                case 30: goto L_0x02d4;
                case 31: goto L_0x02c4;
                case 32: goto L_0x02b4;
                case 33: goto L_0x02a4;
                case 34: goto L_0x0294;
                case 35: goto L_0x0284;
                case 36: goto L_0x0274;
                case 37: goto L_0x0264;
                case 38: goto L_0x0254;
                case 39: goto L_0x0244;
                case 40: goto L_0x0234;
                case 41: goto L_0x0224;
                case 42: goto L_0x0214;
                case 43: goto L_0x0204;
                case 44: goto L_0x01f4;
                case 45: goto L_0x01e4;
                case 46: goto L_0x01d4;
                case 47: goto L_0x01c4;
                case 48: goto L_0x01b4;
                case 49: goto L_0x01a1;
                case 50: goto L_0x0198;
                case 51: goto L_0x0189;
                case 52: goto L_0x017a;
                case 53: goto L_0x016b;
                case 54: goto L_0x015c;
                case 55: goto L_0x014d;
                case 56: goto L_0x013e;
                case 57: goto L_0x012f;
                case 58: goto L_0x0120;
                case 59: goto L_0x0111;
                case 60: goto L_0x00fe;
                case 61: goto L_0x00ee;
                case 62: goto L_0x00e0;
                case 63: goto L_0x00d2;
                case 64: goto L_0x00c4;
                case 65: goto L_0x00b6;
                case 66: goto L_0x00a8;
                case 67: goto L_0x009a;
                case 68: goto L_0x0088;
                default: goto L_0x0085;
            }
        L_0x0085:
            r4 = 0
            goto L_0x048f
        L_0x0088:
            boolean r4 = r0.zza(r1, (int) r15, (int) r10)
            if (r4 == 0) goto L_0x0085
            java.lang.Object r4 = r7.getObject(r1, r13)
            com.google.android.gms.internal.ads.zzeih r8 = r0.zzhe(r10)
            r2.zzb((int) r15, (java.lang.Object) r4, (com.google.android.gms.internal.ads.zzeih) r8)
            goto L_0x0085
        L_0x009a:
            boolean r4 = r0.zza(r1, (int) r15, (int) r10)
            if (r4 == 0) goto L_0x0085
            long r13 = zzi(r1, r13)
            r2.zzi(r15, r13)
            goto L_0x0085
        L_0x00a8:
            boolean r4 = r0.zza(r1, (int) r15, (int) r10)
            if (r4 == 0) goto L_0x0085
            int r4 = zzh(r1, r13)
            r2.zzad(r15, r4)
            goto L_0x0085
        L_0x00b6:
            boolean r4 = r0.zza(r1, (int) r15, (int) r10)
            if (r4 == 0) goto L_0x0085
            long r13 = zzi(r1, r13)
            r2.zzq(r15, r13)
            goto L_0x0085
        L_0x00c4:
            boolean r4 = r0.zza(r1, (int) r15, (int) r10)
            if (r4 == 0) goto L_0x0085
            int r4 = zzh(r1, r13)
            r2.zzal(r15, r4)
            goto L_0x0085
        L_0x00d2:
            boolean r4 = r0.zza(r1, (int) r15, (int) r10)
            if (r4 == 0) goto L_0x0085
            int r4 = zzh(r1, r13)
            r2.zzam(r15, r4)
            goto L_0x0085
        L_0x00e0:
            boolean r4 = r0.zza(r1, (int) r15, (int) r10)
            if (r4 == 0) goto L_0x0085
            int r4 = zzh(r1, r13)
            r2.zzac(r15, r4)
            goto L_0x0085
        L_0x00ee:
            boolean r4 = r0.zza(r1, (int) r15, (int) r10)
            if (r4 == 0) goto L_0x0085
            java.lang.Object r4 = r7.getObject(r1, r13)
            com.google.android.gms.internal.ads.zzeer r4 = (com.google.android.gms.internal.ads.zzeer) r4
            r2.zza((int) r15, (com.google.android.gms.internal.ads.zzeer) r4)
            goto L_0x0085
        L_0x00fe:
            boolean r4 = r0.zza(r1, (int) r15, (int) r10)
            if (r4 == 0) goto L_0x0085
            java.lang.Object r4 = r7.getObject(r1, r13)
            com.google.android.gms.internal.ads.zzeih r8 = r0.zzhe(r10)
            r2.zza((int) r15, (java.lang.Object) r4, (com.google.android.gms.internal.ads.zzeih) r8)
            goto L_0x0085
        L_0x0111:
            boolean r4 = r0.zza(r1, (int) r15, (int) r10)
            if (r4 == 0) goto L_0x0085
            java.lang.Object r4 = r7.getObject(r1, r13)
            zza((int) r15, (java.lang.Object) r4, (com.google.android.gms.internal.ads.zzejw) r2)
            goto L_0x0085
        L_0x0120:
            boolean r4 = r0.zza(r1, (int) r15, (int) r10)
            if (r4 == 0) goto L_0x0085
            boolean r4 = zzj(r1, r13)
            r2.zzh((int) r15, (boolean) r4)
            goto L_0x0085
        L_0x012f:
            boolean r4 = r0.zza(r1, (int) r15, (int) r10)
            if (r4 == 0) goto L_0x0085
            int r4 = zzh(r1, r13)
            r2.zzae(r15, r4)
            goto L_0x0085
        L_0x013e:
            boolean r4 = r0.zza(r1, (int) r15, (int) r10)
            if (r4 == 0) goto L_0x0085
            long r13 = zzi(r1, r13)
            r2.zzj(r15, r13)
            goto L_0x0085
        L_0x014d:
            boolean r4 = r0.zza(r1, (int) r15, (int) r10)
            if (r4 == 0) goto L_0x0085
            int r4 = zzh(r1, r13)
            r2.zzab(r15, r4)
            goto L_0x0085
        L_0x015c:
            boolean r4 = r0.zza(r1, (int) r15, (int) r10)
            if (r4 == 0) goto L_0x0085
            long r13 = zzi(r1, r13)
            r2.zzh((int) r15, (long) r13)
            goto L_0x0085
        L_0x016b:
            boolean r4 = r0.zza(r1, (int) r15, (int) r10)
            if (r4 == 0) goto L_0x0085
            long r13 = zzi(r1, r13)
            r2.zzp(r15, r13)
            goto L_0x0085
        L_0x017a:
            boolean r4 = r0.zza(r1, (int) r15, (int) r10)
            if (r4 == 0) goto L_0x0085
            float r4 = zzg(r1, (long) r13)
            r2.zza((int) r15, (float) r4)
            goto L_0x0085
        L_0x0189:
            boolean r4 = r0.zza(r1, (int) r15, (int) r10)
            if (r4 == 0) goto L_0x0085
            double r13 = zzf(r1, (long) r13)
            r2.zzb((int) r15, (double) r13)
            goto L_0x0085
        L_0x0198:
            java.lang.Object r4 = r7.getObject(r1, r13)
            r0.zza((com.google.android.gms.internal.ads.zzejw) r2, (int) r15, (java.lang.Object) r4, (int) r10)
            goto L_0x0085
        L_0x01a1:
            int[] r4 = r0.zzigs
            r4 = r4[r10]
            java.lang.Object r8 = r7.getObject(r1, r13)
            java.util.List r8 = (java.util.List) r8
            com.google.android.gms.internal.ads.zzeih r13 = r0.zzhe(r10)
            com.google.android.gms.internal.ads.zzeij.zzb((int) r4, (java.util.List<?>) r8, (com.google.android.gms.internal.ads.zzejw) r2, (com.google.android.gms.internal.ads.zzeih) r13)
            goto L_0x0085
        L_0x01b4:
            int[] r4 = r0.zzigs
            r4 = r4[r10]
            java.lang.Object r8 = r7.getObject(r1, r13)
            java.util.List r8 = (java.util.List) r8
            r15 = 1
            com.google.android.gms.internal.ads.zzeij.zze(r4, r8, r2, r15)
            goto L_0x0085
        L_0x01c4:
            r15 = 1
            int[] r4 = r0.zzigs
            r4 = r4[r10]
            java.lang.Object r8 = r7.getObject(r1, r13)
            java.util.List r8 = (java.util.List) r8
            com.google.android.gms.internal.ads.zzeij.zzj(r4, r8, r2, r15)
            goto L_0x0085
        L_0x01d4:
            r15 = 1
            int[] r4 = r0.zzigs
            r4 = r4[r10]
            java.lang.Object r8 = r7.getObject(r1, r13)
            java.util.List r8 = (java.util.List) r8
            com.google.android.gms.internal.ads.zzeij.zzg(r4, r8, r2, r15)
            goto L_0x0085
        L_0x01e4:
            r15 = 1
            int[] r4 = r0.zzigs
            r4 = r4[r10]
            java.lang.Object r8 = r7.getObject(r1, r13)
            java.util.List r8 = (java.util.List) r8
            com.google.android.gms.internal.ads.zzeij.zzl(r4, r8, r2, r15)
            goto L_0x0085
        L_0x01f4:
            r15 = 1
            int[] r4 = r0.zzigs
            r4 = r4[r10]
            java.lang.Object r8 = r7.getObject(r1, r13)
            java.util.List r8 = (java.util.List) r8
            com.google.android.gms.internal.ads.zzeij.zzm(r4, r8, r2, r15)
            goto L_0x0085
        L_0x0204:
            r15 = 1
            int[] r4 = r0.zzigs
            r4 = r4[r10]
            java.lang.Object r8 = r7.getObject(r1, r13)
            java.util.List r8 = (java.util.List) r8
            com.google.android.gms.internal.ads.zzeij.zzi(r4, r8, r2, r15)
            goto L_0x0085
        L_0x0214:
            r15 = 1
            int[] r4 = r0.zzigs
            r4 = r4[r10]
            java.lang.Object r8 = r7.getObject(r1, r13)
            java.util.List r8 = (java.util.List) r8
            com.google.android.gms.internal.ads.zzeij.zzn(r4, r8, r2, r15)
            goto L_0x0085
        L_0x0224:
            r15 = 1
            int[] r4 = r0.zzigs
            r4 = r4[r10]
            java.lang.Object r8 = r7.getObject(r1, r13)
            java.util.List r8 = (java.util.List) r8
            com.google.android.gms.internal.ads.zzeij.zzk(r4, r8, r2, r15)
            goto L_0x0085
        L_0x0234:
            r15 = 1
            int[] r4 = r0.zzigs
            r4 = r4[r10]
            java.lang.Object r8 = r7.getObject(r1, r13)
            java.util.List r8 = (java.util.List) r8
            com.google.android.gms.internal.ads.zzeij.zzf(r4, r8, r2, r15)
            goto L_0x0085
        L_0x0244:
            r15 = 1
            int[] r4 = r0.zzigs
            r4 = r4[r10]
            java.lang.Object r8 = r7.getObject(r1, r13)
            java.util.List r8 = (java.util.List) r8
            com.google.android.gms.internal.ads.zzeij.zzh(r4, r8, r2, r15)
            goto L_0x0085
        L_0x0254:
            r15 = 1
            int[] r4 = r0.zzigs
            r4 = r4[r10]
            java.lang.Object r8 = r7.getObject(r1, r13)
            java.util.List r8 = (java.util.List) r8
            com.google.android.gms.internal.ads.zzeij.zzd(r4, r8, r2, r15)
            goto L_0x0085
        L_0x0264:
            r15 = 1
            int[] r4 = r0.zzigs
            r4 = r4[r10]
            java.lang.Object r8 = r7.getObject(r1, r13)
            java.util.List r8 = (java.util.List) r8
            com.google.android.gms.internal.ads.zzeij.zzc(r4, r8, r2, r15)
            goto L_0x0085
        L_0x0274:
            r15 = 1
            int[] r4 = r0.zzigs
            r4 = r4[r10]
            java.lang.Object r8 = r7.getObject(r1, r13)
            java.util.List r8 = (java.util.List) r8
            com.google.android.gms.internal.ads.zzeij.zzb((int) r4, (java.util.List<java.lang.Float>) r8, (com.google.android.gms.internal.ads.zzejw) r2, (boolean) r15)
            goto L_0x0085
        L_0x0284:
            r15 = 1
            int[] r4 = r0.zzigs
            r4 = r4[r10]
            java.lang.Object r8 = r7.getObject(r1, r13)
            java.util.List r8 = (java.util.List) r8
            com.google.android.gms.internal.ads.zzeij.zza((int) r4, (java.util.List<java.lang.Double>) r8, (com.google.android.gms.internal.ads.zzejw) r2, (boolean) r15)
            goto L_0x0085
        L_0x0294:
            int[] r4 = r0.zzigs
            r4 = r4[r10]
            java.lang.Object r8 = r7.getObject(r1, r13)
            java.util.List r8 = (java.util.List) r8
            r15 = 0
            com.google.android.gms.internal.ads.zzeij.zze(r4, r8, r2, r15)
            goto L_0x0085
        L_0x02a4:
            r15 = 0
            int[] r4 = r0.zzigs
            r4 = r4[r10]
            java.lang.Object r8 = r7.getObject(r1, r13)
            java.util.List r8 = (java.util.List) r8
            com.google.android.gms.internal.ads.zzeij.zzj(r4, r8, r2, r15)
            goto L_0x0085
        L_0x02b4:
            r15 = 0
            int[] r4 = r0.zzigs
            r4 = r4[r10]
            java.lang.Object r8 = r7.getObject(r1, r13)
            java.util.List r8 = (java.util.List) r8
            com.google.android.gms.internal.ads.zzeij.zzg(r4, r8, r2, r15)
            goto L_0x0085
        L_0x02c4:
            r15 = 0
            int[] r4 = r0.zzigs
            r4 = r4[r10]
            java.lang.Object r8 = r7.getObject(r1, r13)
            java.util.List r8 = (java.util.List) r8
            com.google.android.gms.internal.ads.zzeij.zzl(r4, r8, r2, r15)
            goto L_0x0085
        L_0x02d4:
            r15 = 0
            int[] r4 = r0.zzigs
            r4 = r4[r10]
            java.lang.Object r8 = r7.getObject(r1, r13)
            java.util.List r8 = (java.util.List) r8
            com.google.android.gms.internal.ads.zzeij.zzm(r4, r8, r2, r15)
            goto L_0x0085
        L_0x02e4:
            r15 = 0
            int[] r4 = r0.zzigs
            r4 = r4[r10]
            java.lang.Object r8 = r7.getObject(r1, r13)
            java.util.List r8 = (java.util.List) r8
            com.google.android.gms.internal.ads.zzeij.zzi(r4, r8, r2, r15)
            goto L_0x0085
        L_0x02f4:
            int[] r4 = r0.zzigs
            r4 = r4[r10]
            java.lang.Object r8 = r7.getObject(r1, r13)
            java.util.List r8 = (java.util.List) r8
            com.google.android.gms.internal.ads.zzeij.zzb(r4, r8, r2)
            goto L_0x0085
        L_0x0303:
            int[] r4 = r0.zzigs
            r4 = r4[r10]
            java.lang.Object r8 = r7.getObject(r1, r13)
            java.util.List r8 = (java.util.List) r8
            com.google.android.gms.internal.ads.zzeih r13 = r0.zzhe(r10)
            com.google.android.gms.internal.ads.zzeij.zza((int) r4, (java.util.List<?>) r8, (com.google.android.gms.internal.ads.zzejw) r2, (com.google.android.gms.internal.ads.zzeih) r13)
            goto L_0x0085
        L_0x0316:
            int[] r4 = r0.zzigs
            r4 = r4[r10]
            java.lang.Object r8 = r7.getObject(r1, r13)
            java.util.List r8 = (java.util.List) r8
            com.google.android.gms.internal.ads.zzeij.zza((int) r4, (java.util.List<java.lang.String>) r8, (com.google.android.gms.internal.ads.zzejw) r2)
            goto L_0x0085
        L_0x0325:
            int[] r4 = r0.zzigs
            r4 = r4[r10]
            java.lang.Object r8 = r7.getObject(r1, r13)
            java.util.List r8 = (java.util.List) r8
            r15 = 0
            com.google.android.gms.internal.ads.zzeij.zzn(r4, r8, r2, r15)
            goto L_0x0085
        L_0x0335:
            r15 = 0
            int[] r4 = r0.zzigs
            r4 = r4[r10]
            java.lang.Object r8 = r7.getObject(r1, r13)
            java.util.List r8 = (java.util.List) r8
            com.google.android.gms.internal.ads.zzeij.zzk(r4, r8, r2, r15)
            goto L_0x0085
        L_0x0345:
            r15 = 0
            int[] r4 = r0.zzigs
            r4 = r4[r10]
            java.lang.Object r8 = r7.getObject(r1, r13)
            java.util.List r8 = (java.util.List) r8
            com.google.android.gms.internal.ads.zzeij.zzf(r4, r8, r2, r15)
            goto L_0x0085
        L_0x0355:
            r15 = 0
            int[] r4 = r0.zzigs
            r4 = r4[r10]
            java.lang.Object r8 = r7.getObject(r1, r13)
            java.util.List r8 = (java.util.List) r8
            com.google.android.gms.internal.ads.zzeij.zzh(r4, r8, r2, r15)
            goto L_0x0085
        L_0x0365:
            r15 = 0
            int[] r4 = r0.zzigs
            r4 = r4[r10]
            java.lang.Object r8 = r7.getObject(r1, r13)
            java.util.List r8 = (java.util.List) r8
            com.google.android.gms.internal.ads.zzeij.zzd(r4, r8, r2, r15)
            goto L_0x0085
        L_0x0375:
            r15 = 0
            int[] r4 = r0.zzigs
            r4 = r4[r10]
            java.lang.Object r8 = r7.getObject(r1, r13)
            java.util.List r8 = (java.util.List) r8
            com.google.android.gms.internal.ads.zzeij.zzc(r4, r8, r2, r15)
            goto L_0x0085
        L_0x0385:
            r15 = 0
            int[] r4 = r0.zzigs
            r4 = r4[r10]
            java.lang.Object r8 = r7.getObject(r1, r13)
            java.util.List r8 = (java.util.List) r8
            com.google.android.gms.internal.ads.zzeij.zzb((int) r4, (java.util.List<java.lang.Float>) r8, (com.google.android.gms.internal.ads.zzejw) r2, (boolean) r15)
            goto L_0x0085
        L_0x0395:
            r15 = 0
            int[] r4 = r0.zzigs
            r4 = r4[r10]
            java.lang.Object r8 = r7.getObject(r1, r13)
            java.util.List r8 = (java.util.List) r8
            com.google.android.gms.internal.ads.zzeij.zza((int) r4, (java.util.List<java.lang.Double>) r8, (com.google.android.gms.internal.ads.zzejw) r2, (boolean) r15)
            goto L_0x0085
        L_0x03a5:
            r4 = 0
            r8 = r8 & r12
            if (r8 == 0) goto L_0x048f
            java.lang.Object r8 = r7.getObject(r1, r13)
            com.google.android.gms.internal.ads.zzeih r13 = r0.zzhe(r10)
            r2.zzb((int) r15, (java.lang.Object) r8, (com.google.android.gms.internal.ads.zzeih) r13)
            goto L_0x048f
        L_0x03b6:
            r4 = 0
            r8 = r8 & r12
            if (r8 == 0) goto L_0x048f
            long r13 = r7.getLong(r1, r13)
            r2.zzi(r15, r13)
            goto L_0x048f
        L_0x03c3:
            r4 = 0
            r8 = r8 & r12
            if (r8 == 0) goto L_0x048f
            int r8 = r7.getInt(r1, r13)
            r2.zzad(r15, r8)
            goto L_0x048f
        L_0x03d0:
            r4 = 0
            r8 = r8 & r12
            if (r8 == 0) goto L_0x048f
            long r13 = r7.getLong(r1, r13)
            r2.zzq(r15, r13)
            goto L_0x048f
        L_0x03dd:
            r4 = 0
            r8 = r8 & r12
            if (r8 == 0) goto L_0x048f
            int r8 = r7.getInt(r1, r13)
            r2.zzal(r15, r8)
            goto L_0x048f
        L_0x03ea:
            r4 = 0
            r8 = r8 & r12
            if (r8 == 0) goto L_0x048f
            int r8 = r7.getInt(r1, r13)
            r2.zzam(r15, r8)
            goto L_0x048f
        L_0x03f7:
            r4 = 0
            r8 = r8 & r12
            if (r8 == 0) goto L_0x048f
            int r8 = r7.getInt(r1, r13)
            r2.zzac(r15, r8)
            goto L_0x048f
        L_0x0404:
            r4 = 0
            r8 = r8 & r12
            if (r8 == 0) goto L_0x048f
            java.lang.Object r8 = r7.getObject(r1, r13)
            com.google.android.gms.internal.ads.zzeer r8 = (com.google.android.gms.internal.ads.zzeer) r8
            r2.zza((int) r15, (com.google.android.gms.internal.ads.zzeer) r8)
            goto L_0x048f
        L_0x0413:
            r4 = 0
            r8 = r8 & r12
            if (r8 == 0) goto L_0x048f
            java.lang.Object r8 = r7.getObject(r1, r13)
            com.google.android.gms.internal.ads.zzeih r13 = r0.zzhe(r10)
            r2.zza((int) r15, (java.lang.Object) r8, (com.google.android.gms.internal.ads.zzeih) r13)
            goto L_0x048f
        L_0x0424:
            r4 = 0
            r8 = r8 & r12
            if (r8 == 0) goto L_0x048f
            java.lang.Object r8 = r7.getObject(r1, r13)
            zza((int) r15, (java.lang.Object) r8, (com.google.android.gms.internal.ads.zzejw) r2)
            goto L_0x048f
        L_0x0430:
            r4 = 0
            r8 = r8 & r12
            if (r8 == 0) goto L_0x048f
            boolean r8 = com.google.android.gms.internal.ads.zzejf.zzm(r1, r13)
            r2.zzh((int) r15, (boolean) r8)
            goto L_0x048f
        L_0x043c:
            r4 = 0
            r8 = r8 & r12
            if (r8 == 0) goto L_0x048f
            int r8 = r7.getInt(r1, r13)
            r2.zzae(r15, r8)
            goto L_0x048f
        L_0x0448:
            r4 = 0
            r8 = r8 & r12
            if (r8 == 0) goto L_0x048f
            long r13 = r7.getLong(r1, r13)
            r2.zzj(r15, r13)
            goto L_0x048f
        L_0x0454:
            r4 = 0
            r8 = r8 & r12
            if (r8 == 0) goto L_0x048f
            int r8 = r7.getInt(r1, r13)
            r2.zzab(r15, r8)
            goto L_0x048f
        L_0x0460:
            r4 = 0
            r8 = r8 & r12
            if (r8 == 0) goto L_0x048f
            long r13 = r7.getLong(r1, r13)
            r2.zzh((int) r15, (long) r13)
            goto L_0x048f
        L_0x046c:
            r4 = 0
            r8 = r8 & r12
            if (r8 == 0) goto L_0x048f
            long r13 = r7.getLong(r1, r13)
            r2.zzp(r15, r13)
            goto L_0x048f
        L_0x0478:
            r4 = 0
            r8 = r8 & r12
            if (r8 == 0) goto L_0x048f
            float r8 = com.google.android.gms.internal.ads.zzejf.zzn(r1, r13)
            r2.zza((int) r15, (float) r8)
            goto L_0x048f
        L_0x0484:
            r4 = 0
            r8 = r8 & r12
            if (r8 == 0) goto L_0x048f
            double r13 = com.google.android.gms.internal.ads.zzejf.zzo(r1, r13)
            r2.zzb((int) r15, (double) r13)
        L_0x048f:
            int r10 = r10 + 3
            goto L_0x002f
        L_0x0493:
            if (r5 == 0) goto L_0x04aa
            com.google.android.gms.internal.ads.zzefq<?> r4 = r0.zzihh
            r4.zza(r2, r5)
            boolean r4 = r3.hasNext()
            if (r4 == 0) goto L_0x04a8
            java.lang.Object r4 = r3.next()
            java.util.Map$Entry r4 = (java.util.Map.Entry) r4
            r5 = r4
            goto L_0x0493
        L_0x04a8:
            r5 = 0
            goto L_0x0493
        L_0x04aa:
            com.google.android.gms.internal.ads.zzeiz<?, ?> r3 = r0.zzihg
            zza(r3, r1, (com.google.android.gms.internal.ads.zzejw) r2)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzehp.zzb(java.lang.Object, com.google.android.gms.internal.ads.zzejw):void");
    }

    private final <K, V> void zza(zzejw zzejw, int i, Object obj, int i2) throws IOException {
        if (obj != null) {
            zzejw.zza(i, this.zzihi.zzao(zzhf(i2)), this.zzihi.zzap(obj));
        }
    }

    private static <UT, UB> void zza(zzeiz<UT, UB> zzeiz, T t, zzejw zzejw) throws IOException {
        zzeiz.zza(zzeiz.zzax(t), zzejw);
    }

    /* JADX WARNING: Can't wrap try/catch for region: R(5:149|150|(1:152)|153|(5:174|155|(2:158|156)|256|(2:160|264)(1:265))(1:252)) */
    /* JADX WARNING: Code restructure failed: missing block: B:150:?, code lost:
        r8.zza(r14);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:151:0x05a0, code lost:
        if (r10 == null) goto L_0x05a2;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:152:0x05a2, code lost:
        r10 = r8.zzay(r13);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:154:0x05ab, code lost:
        if (r8.zza(r10, r14) == false) goto L_0x05ad;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:155:0x05ad, code lost:
        r14 = r12.zzihc;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:157:0x05b1, code lost:
        if (r14 < r12.zzihd) goto L_0x05b3;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:158:0x05b3, code lost:
        r10 = zza((java.lang.Object) r13, r12.zzihb[r14], r10, r8);
        r14 = r14 + 1;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:159:0x05be, code lost:
        if (r10 != null) goto L_0x05c0;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:160:0x05c0, code lost:
        r8.zzj(r13, r10);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:264:?, code lost:
        return;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:265:?, code lost:
        return;
     */
    /* JADX WARNING: Missing exception handler attribute for start block: B:149:0x059d */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final void zza(T r13, com.google.android.gms.internal.ads.zzeib r14, com.google.android.gms.internal.ads.zzefo r15) throws java.io.IOException {
        /*
            r12 = this;
            r0 = 0
            if (r15 == 0) goto L_0x05dc
            com.google.android.gms.internal.ads.zzeiz<?, ?> r8 = r12.zzihg
            com.google.android.gms.internal.ads.zzefq<?> r9 = r12.zzihh
            r1 = r0
            r10 = r1
        L_0x0009:
            int r2 = r14.zzbek()     // Catch:{ all -> 0x05c4 }
            int r3 = r12.zzhk(r2)     // Catch:{ all -> 0x05c4 }
            if (r3 >= 0) goto L_0x0077
            r3 = 2147483647(0x7fffffff, float:NaN)
            if (r2 != r3) goto L_0x002f
            int r14 = r12.zzihc
        L_0x001a:
            int r15 = r12.zzihd
            if (r14 >= r15) goto L_0x0029
            int[] r15 = r12.zzihb
            r15 = r15[r14]
            java.lang.Object r10 = r12.zza((java.lang.Object) r13, (int) r15, r10, r8)
            int r14 = r14 + 1
            goto L_0x001a
        L_0x0029:
            if (r10 == 0) goto L_0x002e
            r8.zzj(r13, r10)
        L_0x002e:
            return
        L_0x002f:
            boolean r3 = r12.zzigx     // Catch:{ all -> 0x05c4 }
            if (r3 != 0) goto L_0x0035
            r3 = r0
            goto L_0x003c
        L_0x0035:
            com.google.android.gms.internal.ads.zzehl r3 = r12.zzigw     // Catch:{ all -> 0x05c4 }
            java.lang.Object r2 = r9.zza(r15, r3, r2)     // Catch:{ all -> 0x05c4 }
            r3 = r2
        L_0x003c:
            if (r3 == 0) goto L_0x0051
            if (r1 != 0) goto L_0x0044
            com.google.android.gms.internal.ads.zzefu r1 = r9.zzai(r13)     // Catch:{ all -> 0x05c4 }
        L_0x0044:
            r11 = r1
            r1 = r9
            r2 = r14
            r4 = r15
            r5 = r11
            r6 = r10
            r7 = r8
            java.lang.Object r10 = r1.zza(r2, r3, r4, r5, r6, r7)     // Catch:{ all -> 0x05c4 }
            r1 = r11
            goto L_0x0009
        L_0x0051:
            r8.zza(r14)     // Catch:{ all -> 0x05c4 }
            if (r10 != 0) goto L_0x005a
            java.lang.Object r10 = r8.zzay(r13)     // Catch:{ all -> 0x05c4 }
        L_0x005a:
            boolean r2 = r8.zza(r10, (com.google.android.gms.internal.ads.zzeib) r14)     // Catch:{ all -> 0x05c4 }
            if (r2 != 0) goto L_0x0009
            int r14 = r12.zzihc
        L_0x0062:
            int r15 = r12.zzihd
            if (r14 >= r15) goto L_0x0071
            int[] r15 = r12.zzihb
            r15 = r15[r14]
            java.lang.Object r10 = r12.zza((java.lang.Object) r13, (int) r15, r10, r8)
            int r14 = r14 + 1
            goto L_0x0062
        L_0x0071:
            if (r10 == 0) goto L_0x0076
            r8.zzj(r13, r10)
        L_0x0076:
            return
        L_0x0077:
            int r4 = r12.zzhh(r3)     // Catch:{ all -> 0x05c4 }
            r5 = 267386880(0xff00000, float:2.3665827E-29)
            r5 = r5 & r4
            int r5 = r5 >>> 20
            r6 = 1048575(0xfffff, float:1.469367E-39)
            switch(r5) {
                case 0: goto L_0x0571;
                case 1: goto L_0x0562;
                case 2: goto L_0x0553;
                case 3: goto L_0x0544;
                case 4: goto L_0x0535;
                case 5: goto L_0x0526;
                case 6: goto L_0x0517;
                case 7: goto L_0x0508;
                case 8: goto L_0x0500;
                case 9: goto L_0x04cf;
                case 10: goto L_0x04c0;
                case 11: goto L_0x04b1;
                case 12: goto L_0x048f;
                case 13: goto L_0x0480;
                case 14: goto L_0x0471;
                case 15: goto L_0x0462;
                case 16: goto L_0x0453;
                case 17: goto L_0x0422;
                case 18: goto L_0x0414;
                case 19: goto L_0x0406;
                case 20: goto L_0x03f8;
                case 21: goto L_0x03ea;
                case 22: goto L_0x03dc;
                case 23: goto L_0x03ce;
                case 24: goto L_0x03c0;
                case 25: goto L_0x03b2;
                case 26: goto L_0x0390;
                case 27: goto L_0x037e;
                case 28: goto L_0x0370;
                case 29: goto L_0x0362;
                case 30: goto L_0x034d;
                case 31: goto L_0x033f;
                case 32: goto L_0x0331;
                case 33: goto L_0x0323;
                case 34: goto L_0x0315;
                case 35: goto L_0x0307;
                case 36: goto L_0x02f9;
                case 37: goto L_0x02eb;
                case 38: goto L_0x02dd;
                case 39: goto L_0x02cf;
                case 40: goto L_0x02c1;
                case 41: goto L_0x02b3;
                case 42: goto L_0x02a5;
                case 43: goto L_0x0297;
                case 44: goto L_0x0282;
                case 45: goto L_0x0274;
                case 46: goto L_0x0266;
                case 47: goto L_0x0258;
                case 48: goto L_0x024a;
                case 49: goto L_0x0238;
                case 50: goto L_0x01f6;
                case 51: goto L_0x01e4;
                case 52: goto L_0x01d2;
                case 53: goto L_0x01c0;
                case 54: goto L_0x01ae;
                case 55: goto L_0x019c;
                case 56: goto L_0x018a;
                case 57: goto L_0x0178;
                case 58: goto L_0x0166;
                case 59: goto L_0x015e;
                case 60: goto L_0x012d;
                case 61: goto L_0x011f;
                case 62: goto L_0x010d;
                case 63: goto L_0x00e8;
                case 64: goto L_0x00d6;
                case 65: goto L_0x00c4;
                case 66: goto L_0x00b2;
                case 67: goto L_0x00a0;
                case 68: goto L_0x008e;
                default: goto L_0x0086;
            }
        L_0x0086:
            if (r10 != 0) goto L_0x0580
            java.lang.Object r10 = r8.zzbhr()     // Catch:{ zzego -> 0x059d }
            goto L_0x0580
        L_0x008e:
            r4 = r4 & r6
            long r4 = (long) r4     // Catch:{ zzego -> 0x059d }
            com.google.android.gms.internal.ads.zzeih r6 = r12.zzhe(r3)     // Catch:{ zzego -> 0x059d }
            java.lang.Object r6 = r14.zzb(r6, r15)     // Catch:{ zzego -> 0x059d }
            com.google.android.gms.internal.ads.zzejf.zza((java.lang.Object) r13, (long) r4, (java.lang.Object) r6)     // Catch:{ zzego -> 0x059d }
            r12.zzb(r13, (int) r2, (int) r3)     // Catch:{ zzego -> 0x059d }
            goto L_0x0009
        L_0x00a0:
            r4 = r4 & r6
            long r4 = (long) r4     // Catch:{ zzego -> 0x059d }
            long r6 = r14.zzbea()     // Catch:{ zzego -> 0x059d }
            java.lang.Long r6 = java.lang.Long.valueOf(r6)     // Catch:{ zzego -> 0x059d }
            com.google.android.gms.internal.ads.zzejf.zza((java.lang.Object) r13, (long) r4, (java.lang.Object) r6)     // Catch:{ zzego -> 0x059d }
            r12.zzb(r13, (int) r2, (int) r3)     // Catch:{ zzego -> 0x059d }
            goto L_0x0009
        L_0x00b2:
            r4 = r4 & r6
            long r4 = (long) r4     // Catch:{ zzego -> 0x059d }
            int r6 = r14.zzbdz()     // Catch:{ zzego -> 0x059d }
            java.lang.Integer r6 = java.lang.Integer.valueOf(r6)     // Catch:{ zzego -> 0x059d }
            com.google.android.gms.internal.ads.zzejf.zza((java.lang.Object) r13, (long) r4, (java.lang.Object) r6)     // Catch:{ zzego -> 0x059d }
            r12.zzb(r13, (int) r2, (int) r3)     // Catch:{ zzego -> 0x059d }
            goto L_0x0009
        L_0x00c4:
            r4 = r4 & r6
            long r4 = (long) r4     // Catch:{ zzego -> 0x059d }
            long r6 = r14.zzbdy()     // Catch:{ zzego -> 0x059d }
            java.lang.Long r6 = java.lang.Long.valueOf(r6)     // Catch:{ zzego -> 0x059d }
            com.google.android.gms.internal.ads.zzejf.zza((java.lang.Object) r13, (long) r4, (java.lang.Object) r6)     // Catch:{ zzego -> 0x059d }
            r12.zzb(r13, (int) r2, (int) r3)     // Catch:{ zzego -> 0x059d }
            goto L_0x0009
        L_0x00d6:
            r4 = r4 & r6
            long r4 = (long) r4     // Catch:{ zzego -> 0x059d }
            int r6 = r14.zzbdx()     // Catch:{ zzego -> 0x059d }
            java.lang.Integer r6 = java.lang.Integer.valueOf(r6)     // Catch:{ zzego -> 0x059d }
            com.google.android.gms.internal.ads.zzejf.zza((java.lang.Object) r13, (long) r4, (java.lang.Object) r6)     // Catch:{ zzego -> 0x059d }
            r12.zzb(r13, (int) r2, (int) r3)     // Catch:{ zzego -> 0x059d }
            goto L_0x0009
        L_0x00e8:
            int r5 = r14.zzbdw()     // Catch:{ zzego -> 0x059d }
            com.google.android.gms.internal.ads.zzegi r7 = r12.zzhg(r3)     // Catch:{ zzego -> 0x059d }
            if (r7 == 0) goto L_0x00ff
            boolean r7 = r7.zzi(r5)     // Catch:{ zzego -> 0x059d }
            if (r7 == 0) goto L_0x00f9
            goto L_0x00ff
        L_0x00f9:
            java.lang.Object r10 = com.google.android.gms.internal.ads.zzeij.zza((int) r2, (int) r5, r10, r8)     // Catch:{ zzego -> 0x059d }
            goto L_0x0009
        L_0x00ff:
            r4 = r4 & r6
            long r6 = (long) r4     // Catch:{ zzego -> 0x059d }
            java.lang.Integer r4 = java.lang.Integer.valueOf(r5)     // Catch:{ zzego -> 0x059d }
            com.google.android.gms.internal.ads.zzejf.zza((java.lang.Object) r13, (long) r6, (java.lang.Object) r4)     // Catch:{ zzego -> 0x059d }
            r12.zzb(r13, (int) r2, (int) r3)     // Catch:{ zzego -> 0x059d }
            goto L_0x0009
        L_0x010d:
            r4 = r4 & r6
            long r4 = (long) r4     // Catch:{ zzego -> 0x059d }
            int r6 = r14.zzbdv()     // Catch:{ zzego -> 0x059d }
            java.lang.Integer r6 = java.lang.Integer.valueOf(r6)     // Catch:{ zzego -> 0x059d }
            com.google.android.gms.internal.ads.zzejf.zza((java.lang.Object) r13, (long) r4, (java.lang.Object) r6)     // Catch:{ zzego -> 0x059d }
            r12.zzb(r13, (int) r2, (int) r3)     // Catch:{ zzego -> 0x059d }
            goto L_0x0009
        L_0x011f:
            r4 = r4 & r6
            long r4 = (long) r4     // Catch:{ zzego -> 0x059d }
            com.google.android.gms.internal.ads.zzeer r6 = r14.zzbdu()     // Catch:{ zzego -> 0x059d }
            com.google.android.gms.internal.ads.zzejf.zza((java.lang.Object) r13, (long) r4, (java.lang.Object) r6)     // Catch:{ zzego -> 0x059d }
            r12.zzb(r13, (int) r2, (int) r3)     // Catch:{ zzego -> 0x059d }
            goto L_0x0009
        L_0x012d:
            boolean r5 = r12.zza(r13, (int) r2, (int) r3)     // Catch:{ zzego -> 0x059d }
            if (r5 == 0) goto L_0x0149
            r4 = r4 & r6
            long r4 = (long) r4     // Catch:{ zzego -> 0x059d }
            java.lang.Object r6 = com.google.android.gms.internal.ads.zzejf.zzp(r13, r4)     // Catch:{ zzego -> 0x059d }
            com.google.android.gms.internal.ads.zzeih r7 = r12.zzhe(r3)     // Catch:{ zzego -> 0x059d }
            java.lang.Object r7 = r14.zza(r7, r15)     // Catch:{ zzego -> 0x059d }
            java.lang.Object r6 = com.google.android.gms.internal.ads.zzegd.zze(r6, r7)     // Catch:{ zzego -> 0x059d }
            com.google.android.gms.internal.ads.zzejf.zza((java.lang.Object) r13, (long) r4, (java.lang.Object) r6)     // Catch:{ zzego -> 0x059d }
            goto L_0x0159
        L_0x0149:
            r4 = r4 & r6
            long r4 = (long) r4     // Catch:{ zzego -> 0x059d }
            com.google.android.gms.internal.ads.zzeih r6 = r12.zzhe(r3)     // Catch:{ zzego -> 0x059d }
            java.lang.Object r6 = r14.zza(r6, r15)     // Catch:{ zzego -> 0x059d }
            com.google.android.gms.internal.ads.zzejf.zza((java.lang.Object) r13, (long) r4, (java.lang.Object) r6)     // Catch:{ zzego -> 0x059d }
            r12.zzf(r13, (int) r3)     // Catch:{ zzego -> 0x059d }
        L_0x0159:
            r12.zzb(r13, (int) r2, (int) r3)     // Catch:{ zzego -> 0x059d }
            goto L_0x0009
        L_0x015e:
            r12.zza((java.lang.Object) r13, (int) r4, (com.google.android.gms.internal.ads.zzeib) r14)     // Catch:{ zzego -> 0x059d }
            r12.zzb(r13, (int) r2, (int) r3)     // Catch:{ zzego -> 0x059d }
            goto L_0x0009
        L_0x0166:
            r4 = r4 & r6
            long r4 = (long) r4     // Catch:{ zzego -> 0x059d }
            boolean r6 = r14.zzbds()     // Catch:{ zzego -> 0x059d }
            java.lang.Boolean r6 = java.lang.Boolean.valueOf(r6)     // Catch:{ zzego -> 0x059d }
            com.google.android.gms.internal.ads.zzejf.zza((java.lang.Object) r13, (long) r4, (java.lang.Object) r6)     // Catch:{ zzego -> 0x059d }
            r12.zzb(r13, (int) r2, (int) r3)     // Catch:{ zzego -> 0x059d }
            goto L_0x0009
        L_0x0178:
            r4 = r4 & r6
            long r4 = (long) r4     // Catch:{ zzego -> 0x059d }
            int r6 = r14.zzbdr()     // Catch:{ zzego -> 0x059d }
            java.lang.Integer r6 = java.lang.Integer.valueOf(r6)     // Catch:{ zzego -> 0x059d }
            com.google.android.gms.internal.ads.zzejf.zza((java.lang.Object) r13, (long) r4, (java.lang.Object) r6)     // Catch:{ zzego -> 0x059d }
            r12.zzb(r13, (int) r2, (int) r3)     // Catch:{ zzego -> 0x059d }
            goto L_0x0009
        L_0x018a:
            r4 = r4 & r6
            long r4 = (long) r4     // Catch:{ zzego -> 0x059d }
            long r6 = r14.zzbdq()     // Catch:{ zzego -> 0x059d }
            java.lang.Long r6 = java.lang.Long.valueOf(r6)     // Catch:{ zzego -> 0x059d }
            com.google.android.gms.internal.ads.zzejf.zza((java.lang.Object) r13, (long) r4, (java.lang.Object) r6)     // Catch:{ zzego -> 0x059d }
            r12.zzb(r13, (int) r2, (int) r3)     // Catch:{ zzego -> 0x059d }
            goto L_0x0009
        L_0x019c:
            r4 = r4 & r6
            long r4 = (long) r4     // Catch:{ zzego -> 0x059d }
            int r6 = r14.zzbdp()     // Catch:{ zzego -> 0x059d }
            java.lang.Integer r6 = java.lang.Integer.valueOf(r6)     // Catch:{ zzego -> 0x059d }
            com.google.android.gms.internal.ads.zzejf.zza((java.lang.Object) r13, (long) r4, (java.lang.Object) r6)     // Catch:{ zzego -> 0x059d }
            r12.zzb(r13, (int) r2, (int) r3)     // Catch:{ zzego -> 0x059d }
            goto L_0x0009
        L_0x01ae:
            r4 = r4 & r6
            long r4 = (long) r4     // Catch:{ zzego -> 0x059d }
            long r6 = r14.zzbdn()     // Catch:{ zzego -> 0x059d }
            java.lang.Long r6 = java.lang.Long.valueOf(r6)     // Catch:{ zzego -> 0x059d }
            com.google.android.gms.internal.ads.zzejf.zza((java.lang.Object) r13, (long) r4, (java.lang.Object) r6)     // Catch:{ zzego -> 0x059d }
            r12.zzb(r13, (int) r2, (int) r3)     // Catch:{ zzego -> 0x059d }
            goto L_0x0009
        L_0x01c0:
            r4 = r4 & r6
            long r4 = (long) r4     // Catch:{ zzego -> 0x059d }
            long r6 = r14.zzbdo()     // Catch:{ zzego -> 0x059d }
            java.lang.Long r6 = java.lang.Long.valueOf(r6)     // Catch:{ zzego -> 0x059d }
            com.google.android.gms.internal.ads.zzejf.zza((java.lang.Object) r13, (long) r4, (java.lang.Object) r6)     // Catch:{ zzego -> 0x059d }
            r12.zzb(r13, (int) r2, (int) r3)     // Catch:{ zzego -> 0x059d }
            goto L_0x0009
        L_0x01d2:
            r4 = r4 & r6
            long r4 = (long) r4     // Catch:{ zzego -> 0x059d }
            float r6 = r14.readFloat()     // Catch:{ zzego -> 0x059d }
            java.lang.Float r6 = java.lang.Float.valueOf(r6)     // Catch:{ zzego -> 0x059d }
            com.google.android.gms.internal.ads.zzejf.zza((java.lang.Object) r13, (long) r4, (java.lang.Object) r6)     // Catch:{ zzego -> 0x059d }
            r12.zzb(r13, (int) r2, (int) r3)     // Catch:{ zzego -> 0x059d }
            goto L_0x0009
        L_0x01e4:
            r4 = r4 & r6
            long r4 = (long) r4     // Catch:{ zzego -> 0x059d }
            double r6 = r14.readDouble()     // Catch:{ zzego -> 0x059d }
            java.lang.Double r6 = java.lang.Double.valueOf(r6)     // Catch:{ zzego -> 0x059d }
            com.google.android.gms.internal.ads.zzejf.zza((java.lang.Object) r13, (long) r4, (java.lang.Object) r6)     // Catch:{ zzego -> 0x059d }
            r12.zzb(r13, (int) r2, (int) r3)     // Catch:{ zzego -> 0x059d }
            goto L_0x0009
        L_0x01f6:
            java.lang.Object r2 = r12.zzhf(r3)     // Catch:{ zzego -> 0x059d }
            int r3 = r12.zzhh(r3)     // Catch:{ zzego -> 0x059d }
            r3 = r3 & r6
            long r3 = (long) r3     // Catch:{ zzego -> 0x059d }
            java.lang.Object r5 = com.google.android.gms.internal.ads.zzejf.zzp(r13, r3)     // Catch:{ zzego -> 0x059d }
            if (r5 != 0) goto L_0x0210
            com.google.android.gms.internal.ads.zzehi r5 = r12.zzihi     // Catch:{ zzego -> 0x059d }
            java.lang.Object r5 = r5.zzas(r2)     // Catch:{ zzego -> 0x059d }
            com.google.android.gms.internal.ads.zzejf.zza((java.lang.Object) r13, (long) r3, (java.lang.Object) r5)     // Catch:{ zzego -> 0x059d }
            goto L_0x0227
        L_0x0210:
            com.google.android.gms.internal.ads.zzehi r6 = r12.zzihi     // Catch:{ zzego -> 0x059d }
            boolean r6 = r6.zzaq(r5)     // Catch:{ zzego -> 0x059d }
            if (r6 == 0) goto L_0x0227
            com.google.android.gms.internal.ads.zzehi r6 = r12.zzihi     // Catch:{ zzego -> 0x059d }
            java.lang.Object r6 = r6.zzas(r2)     // Catch:{ zzego -> 0x059d }
            com.google.android.gms.internal.ads.zzehi r7 = r12.zzihi     // Catch:{ zzego -> 0x059d }
            r7.zzf(r6, r5)     // Catch:{ zzego -> 0x059d }
            com.google.android.gms.internal.ads.zzejf.zza((java.lang.Object) r13, (long) r3, (java.lang.Object) r6)     // Catch:{ zzego -> 0x059d }
            r5 = r6
        L_0x0227:
            com.google.android.gms.internal.ads.zzehi r3 = r12.zzihi     // Catch:{ zzego -> 0x059d }
            java.util.Map r3 = r3.zzan(r5)     // Catch:{ zzego -> 0x059d }
            com.google.android.gms.internal.ads.zzehi r4 = r12.zzihi     // Catch:{ zzego -> 0x059d }
            com.google.android.gms.internal.ads.zzehg r2 = r4.zzao(r2)     // Catch:{ zzego -> 0x059d }
            r14.zza(r3, r2, (com.google.android.gms.internal.ads.zzefo) r15)     // Catch:{ zzego -> 0x059d }
            goto L_0x0009
        L_0x0238:
            r2 = r4 & r6
            long r4 = (long) r2     // Catch:{ zzego -> 0x059d }
            com.google.android.gms.internal.ads.zzeih r2 = r12.zzhe(r3)     // Catch:{ zzego -> 0x059d }
            com.google.android.gms.internal.ads.zzegv r3 = r12.zzihf     // Catch:{ zzego -> 0x059d }
            java.util.List r3 = r3.zza(r13, r4)     // Catch:{ zzego -> 0x059d }
            r14.zzb(r3, r2, r15)     // Catch:{ zzego -> 0x059d }
            goto L_0x0009
        L_0x024a:
            com.google.android.gms.internal.ads.zzegv r2 = r12.zzihf     // Catch:{ zzego -> 0x059d }
            r3 = r4 & r6
            long r3 = (long) r3     // Catch:{ zzego -> 0x059d }
            java.util.List r2 = r2.zza(r13, r3)     // Catch:{ zzego -> 0x059d }
            r14.zzz(r2)     // Catch:{ zzego -> 0x059d }
            goto L_0x0009
        L_0x0258:
            com.google.android.gms.internal.ads.zzegv r2 = r12.zzihf     // Catch:{ zzego -> 0x059d }
            r3 = r4 & r6
            long r3 = (long) r3     // Catch:{ zzego -> 0x059d }
            java.util.List r2 = r2.zza(r13, r3)     // Catch:{ zzego -> 0x059d }
            r14.zzy(r2)     // Catch:{ zzego -> 0x059d }
            goto L_0x0009
        L_0x0266:
            com.google.android.gms.internal.ads.zzegv r2 = r12.zzihf     // Catch:{ zzego -> 0x059d }
            r3 = r4 & r6
            long r3 = (long) r3     // Catch:{ zzego -> 0x059d }
            java.util.List r2 = r2.zza(r13, r3)     // Catch:{ zzego -> 0x059d }
            r14.zzx(r2)     // Catch:{ zzego -> 0x059d }
            goto L_0x0009
        L_0x0274:
            com.google.android.gms.internal.ads.zzegv r2 = r12.zzihf     // Catch:{ zzego -> 0x059d }
            r3 = r4 & r6
            long r3 = (long) r3     // Catch:{ zzego -> 0x059d }
            java.util.List r2 = r2.zza(r13, r3)     // Catch:{ zzego -> 0x059d }
            r14.zzw(r2)     // Catch:{ zzego -> 0x059d }
            goto L_0x0009
        L_0x0282:
            com.google.android.gms.internal.ads.zzegv r5 = r12.zzihf     // Catch:{ zzego -> 0x059d }
            r4 = r4 & r6
            long r6 = (long) r4     // Catch:{ zzego -> 0x059d }
            java.util.List r4 = r5.zza(r13, r6)     // Catch:{ zzego -> 0x059d }
            r14.zzv(r4)     // Catch:{ zzego -> 0x059d }
            com.google.android.gms.internal.ads.zzegi r3 = r12.zzhg(r3)     // Catch:{ zzego -> 0x059d }
            java.lang.Object r10 = com.google.android.gms.internal.ads.zzeij.zza(r2, r4, r3, r10, r8)     // Catch:{ zzego -> 0x059d }
            goto L_0x0009
        L_0x0297:
            com.google.android.gms.internal.ads.zzegv r2 = r12.zzihf     // Catch:{ zzego -> 0x059d }
            r3 = r4 & r6
            long r3 = (long) r3     // Catch:{ zzego -> 0x059d }
            java.util.List r2 = r2.zza(r13, r3)     // Catch:{ zzego -> 0x059d }
            r14.zzu(r2)     // Catch:{ zzego -> 0x059d }
            goto L_0x0009
        L_0x02a5:
            com.google.android.gms.internal.ads.zzegv r2 = r12.zzihf     // Catch:{ zzego -> 0x059d }
            r3 = r4 & r6
            long r3 = (long) r3     // Catch:{ zzego -> 0x059d }
            java.util.List r2 = r2.zza(r13, r3)     // Catch:{ zzego -> 0x059d }
            r14.zzr(r2)     // Catch:{ zzego -> 0x059d }
            goto L_0x0009
        L_0x02b3:
            com.google.android.gms.internal.ads.zzegv r2 = r12.zzihf     // Catch:{ zzego -> 0x059d }
            r3 = r4 & r6
            long r3 = (long) r3     // Catch:{ zzego -> 0x059d }
            java.util.List r2 = r2.zza(r13, r3)     // Catch:{ zzego -> 0x059d }
            r14.zzq(r2)     // Catch:{ zzego -> 0x059d }
            goto L_0x0009
        L_0x02c1:
            com.google.android.gms.internal.ads.zzegv r2 = r12.zzihf     // Catch:{ zzego -> 0x059d }
            r3 = r4 & r6
            long r3 = (long) r3     // Catch:{ zzego -> 0x059d }
            java.util.List r2 = r2.zza(r13, r3)     // Catch:{ zzego -> 0x059d }
            r14.zzp(r2)     // Catch:{ zzego -> 0x059d }
            goto L_0x0009
        L_0x02cf:
            com.google.android.gms.internal.ads.zzegv r2 = r12.zzihf     // Catch:{ zzego -> 0x059d }
            r3 = r4 & r6
            long r3 = (long) r3     // Catch:{ zzego -> 0x059d }
            java.util.List r2 = r2.zza(r13, r3)     // Catch:{ zzego -> 0x059d }
            r14.zzo(r2)     // Catch:{ zzego -> 0x059d }
            goto L_0x0009
        L_0x02dd:
            com.google.android.gms.internal.ads.zzegv r2 = r12.zzihf     // Catch:{ zzego -> 0x059d }
            r3 = r4 & r6
            long r3 = (long) r3     // Catch:{ zzego -> 0x059d }
            java.util.List r2 = r2.zza(r13, r3)     // Catch:{ zzego -> 0x059d }
            r14.zzm(r2)     // Catch:{ zzego -> 0x059d }
            goto L_0x0009
        L_0x02eb:
            com.google.android.gms.internal.ads.zzegv r2 = r12.zzihf     // Catch:{ zzego -> 0x059d }
            r3 = r4 & r6
            long r3 = (long) r3     // Catch:{ zzego -> 0x059d }
            java.util.List r2 = r2.zza(r13, r3)     // Catch:{ zzego -> 0x059d }
            r14.zzn(r2)     // Catch:{ zzego -> 0x059d }
            goto L_0x0009
        L_0x02f9:
            com.google.android.gms.internal.ads.zzegv r2 = r12.zzihf     // Catch:{ zzego -> 0x059d }
            r3 = r4 & r6
            long r3 = (long) r3     // Catch:{ zzego -> 0x059d }
            java.util.List r2 = r2.zza(r13, r3)     // Catch:{ zzego -> 0x059d }
            r14.zzl(r2)     // Catch:{ zzego -> 0x059d }
            goto L_0x0009
        L_0x0307:
            com.google.android.gms.internal.ads.zzegv r2 = r12.zzihf     // Catch:{ zzego -> 0x059d }
            r3 = r4 & r6
            long r3 = (long) r3     // Catch:{ zzego -> 0x059d }
            java.util.List r2 = r2.zza(r13, r3)     // Catch:{ zzego -> 0x059d }
            r14.zzk(r2)     // Catch:{ zzego -> 0x059d }
            goto L_0x0009
        L_0x0315:
            com.google.android.gms.internal.ads.zzegv r2 = r12.zzihf     // Catch:{ zzego -> 0x059d }
            r3 = r4 & r6
            long r3 = (long) r3     // Catch:{ zzego -> 0x059d }
            java.util.List r2 = r2.zza(r13, r3)     // Catch:{ zzego -> 0x059d }
            r14.zzz(r2)     // Catch:{ zzego -> 0x059d }
            goto L_0x0009
        L_0x0323:
            com.google.android.gms.internal.ads.zzegv r2 = r12.zzihf     // Catch:{ zzego -> 0x059d }
            r3 = r4 & r6
            long r3 = (long) r3     // Catch:{ zzego -> 0x059d }
            java.util.List r2 = r2.zza(r13, r3)     // Catch:{ zzego -> 0x059d }
            r14.zzy(r2)     // Catch:{ zzego -> 0x059d }
            goto L_0x0009
        L_0x0331:
            com.google.android.gms.internal.ads.zzegv r2 = r12.zzihf     // Catch:{ zzego -> 0x059d }
            r3 = r4 & r6
            long r3 = (long) r3     // Catch:{ zzego -> 0x059d }
            java.util.List r2 = r2.zza(r13, r3)     // Catch:{ zzego -> 0x059d }
            r14.zzx(r2)     // Catch:{ zzego -> 0x059d }
            goto L_0x0009
        L_0x033f:
            com.google.android.gms.internal.ads.zzegv r2 = r12.zzihf     // Catch:{ zzego -> 0x059d }
            r3 = r4 & r6
            long r3 = (long) r3     // Catch:{ zzego -> 0x059d }
            java.util.List r2 = r2.zza(r13, r3)     // Catch:{ zzego -> 0x059d }
            r14.zzw(r2)     // Catch:{ zzego -> 0x059d }
            goto L_0x0009
        L_0x034d:
            com.google.android.gms.internal.ads.zzegv r5 = r12.zzihf     // Catch:{ zzego -> 0x059d }
            r4 = r4 & r6
            long r6 = (long) r4     // Catch:{ zzego -> 0x059d }
            java.util.List r4 = r5.zza(r13, r6)     // Catch:{ zzego -> 0x059d }
            r14.zzv(r4)     // Catch:{ zzego -> 0x059d }
            com.google.android.gms.internal.ads.zzegi r3 = r12.zzhg(r3)     // Catch:{ zzego -> 0x059d }
            java.lang.Object r10 = com.google.android.gms.internal.ads.zzeij.zza(r2, r4, r3, r10, r8)     // Catch:{ zzego -> 0x059d }
            goto L_0x0009
        L_0x0362:
            com.google.android.gms.internal.ads.zzegv r2 = r12.zzihf     // Catch:{ zzego -> 0x059d }
            r3 = r4 & r6
            long r3 = (long) r3     // Catch:{ zzego -> 0x059d }
            java.util.List r2 = r2.zza(r13, r3)     // Catch:{ zzego -> 0x059d }
            r14.zzu(r2)     // Catch:{ zzego -> 0x059d }
            goto L_0x0009
        L_0x0370:
            com.google.android.gms.internal.ads.zzegv r2 = r12.zzihf     // Catch:{ zzego -> 0x059d }
            r3 = r4 & r6
            long r3 = (long) r3     // Catch:{ zzego -> 0x059d }
            java.util.List r2 = r2.zza(r13, r3)     // Catch:{ zzego -> 0x059d }
            r14.zzt(r2)     // Catch:{ zzego -> 0x059d }
            goto L_0x0009
        L_0x037e:
            com.google.android.gms.internal.ads.zzeih r2 = r12.zzhe(r3)     // Catch:{ zzego -> 0x059d }
            r3 = r4 & r6
            long r3 = (long) r3     // Catch:{ zzego -> 0x059d }
            com.google.android.gms.internal.ads.zzegv r5 = r12.zzihf     // Catch:{ zzego -> 0x059d }
            java.util.List r3 = r5.zza(r13, r3)     // Catch:{ zzego -> 0x059d }
            r14.zza(r3, r2, (com.google.android.gms.internal.ads.zzefo) r15)     // Catch:{ zzego -> 0x059d }
            goto L_0x0009
        L_0x0390:
            boolean r2 = zzhj(r4)     // Catch:{ zzego -> 0x059d }
            if (r2 == 0) goto L_0x03a4
            com.google.android.gms.internal.ads.zzegv r2 = r12.zzihf     // Catch:{ zzego -> 0x059d }
            r3 = r4 & r6
            long r3 = (long) r3     // Catch:{ zzego -> 0x059d }
            java.util.List r2 = r2.zza(r13, r3)     // Catch:{ zzego -> 0x059d }
            r14.zzs(r2)     // Catch:{ zzego -> 0x059d }
            goto L_0x0009
        L_0x03a4:
            com.google.android.gms.internal.ads.zzegv r2 = r12.zzihf     // Catch:{ zzego -> 0x059d }
            r3 = r4 & r6
            long r3 = (long) r3     // Catch:{ zzego -> 0x059d }
            java.util.List r2 = r2.zza(r13, r3)     // Catch:{ zzego -> 0x059d }
            r14.readStringList(r2)     // Catch:{ zzego -> 0x059d }
            goto L_0x0009
        L_0x03b2:
            com.google.android.gms.internal.ads.zzegv r2 = r12.zzihf     // Catch:{ zzego -> 0x059d }
            r3 = r4 & r6
            long r3 = (long) r3     // Catch:{ zzego -> 0x059d }
            java.util.List r2 = r2.zza(r13, r3)     // Catch:{ zzego -> 0x059d }
            r14.zzr(r2)     // Catch:{ zzego -> 0x059d }
            goto L_0x0009
        L_0x03c0:
            com.google.android.gms.internal.ads.zzegv r2 = r12.zzihf     // Catch:{ zzego -> 0x059d }
            r3 = r4 & r6
            long r3 = (long) r3     // Catch:{ zzego -> 0x059d }
            java.util.List r2 = r2.zza(r13, r3)     // Catch:{ zzego -> 0x059d }
            r14.zzq(r2)     // Catch:{ zzego -> 0x059d }
            goto L_0x0009
        L_0x03ce:
            com.google.android.gms.internal.ads.zzegv r2 = r12.zzihf     // Catch:{ zzego -> 0x059d }
            r3 = r4 & r6
            long r3 = (long) r3     // Catch:{ zzego -> 0x059d }
            java.util.List r2 = r2.zza(r13, r3)     // Catch:{ zzego -> 0x059d }
            r14.zzp(r2)     // Catch:{ zzego -> 0x059d }
            goto L_0x0009
        L_0x03dc:
            com.google.android.gms.internal.ads.zzegv r2 = r12.zzihf     // Catch:{ zzego -> 0x059d }
            r3 = r4 & r6
            long r3 = (long) r3     // Catch:{ zzego -> 0x059d }
            java.util.List r2 = r2.zza(r13, r3)     // Catch:{ zzego -> 0x059d }
            r14.zzo(r2)     // Catch:{ zzego -> 0x059d }
            goto L_0x0009
        L_0x03ea:
            com.google.android.gms.internal.ads.zzegv r2 = r12.zzihf     // Catch:{ zzego -> 0x059d }
            r3 = r4 & r6
            long r3 = (long) r3     // Catch:{ zzego -> 0x059d }
            java.util.List r2 = r2.zza(r13, r3)     // Catch:{ zzego -> 0x059d }
            r14.zzm(r2)     // Catch:{ zzego -> 0x059d }
            goto L_0x0009
        L_0x03f8:
            com.google.android.gms.internal.ads.zzegv r2 = r12.zzihf     // Catch:{ zzego -> 0x059d }
            r3 = r4 & r6
            long r3 = (long) r3     // Catch:{ zzego -> 0x059d }
            java.util.List r2 = r2.zza(r13, r3)     // Catch:{ zzego -> 0x059d }
            r14.zzn(r2)     // Catch:{ zzego -> 0x059d }
            goto L_0x0009
        L_0x0406:
            com.google.android.gms.internal.ads.zzegv r2 = r12.zzihf     // Catch:{ zzego -> 0x059d }
            r3 = r4 & r6
            long r3 = (long) r3     // Catch:{ zzego -> 0x059d }
            java.util.List r2 = r2.zza(r13, r3)     // Catch:{ zzego -> 0x059d }
            r14.zzl(r2)     // Catch:{ zzego -> 0x059d }
            goto L_0x0009
        L_0x0414:
            com.google.android.gms.internal.ads.zzegv r2 = r12.zzihf     // Catch:{ zzego -> 0x059d }
            r3 = r4 & r6
            long r3 = (long) r3     // Catch:{ zzego -> 0x059d }
            java.util.List r2 = r2.zza(r13, r3)     // Catch:{ zzego -> 0x059d }
            r14.zzk(r2)     // Catch:{ zzego -> 0x059d }
            goto L_0x0009
        L_0x0422:
            boolean r2 = r12.zze(r13, (int) r3)     // Catch:{ zzego -> 0x059d }
            if (r2 == 0) goto L_0x0440
            r2 = r4 & r6
            long r4 = (long) r2     // Catch:{ zzego -> 0x059d }
            java.lang.Object r2 = com.google.android.gms.internal.ads.zzejf.zzp(r13, r4)     // Catch:{ zzego -> 0x059d }
            com.google.android.gms.internal.ads.zzeih r3 = r12.zzhe(r3)     // Catch:{ zzego -> 0x059d }
            java.lang.Object r3 = r14.zzb(r3, r15)     // Catch:{ zzego -> 0x059d }
            java.lang.Object r2 = com.google.android.gms.internal.ads.zzegd.zze(r2, r3)     // Catch:{ zzego -> 0x059d }
            com.google.android.gms.internal.ads.zzejf.zza((java.lang.Object) r13, (long) r4, (java.lang.Object) r2)     // Catch:{ zzego -> 0x059d }
            goto L_0x0009
        L_0x0440:
            r2 = r4 & r6
            long r4 = (long) r2     // Catch:{ zzego -> 0x059d }
            com.google.android.gms.internal.ads.zzeih r2 = r12.zzhe(r3)     // Catch:{ zzego -> 0x059d }
            java.lang.Object r2 = r14.zzb(r2, r15)     // Catch:{ zzego -> 0x059d }
            com.google.android.gms.internal.ads.zzejf.zza((java.lang.Object) r13, (long) r4, (java.lang.Object) r2)     // Catch:{ zzego -> 0x059d }
            r12.zzf(r13, (int) r3)     // Catch:{ zzego -> 0x059d }
            goto L_0x0009
        L_0x0453:
            r2 = r4 & r6
            long r4 = (long) r2     // Catch:{ zzego -> 0x059d }
            long r6 = r14.zzbea()     // Catch:{ zzego -> 0x059d }
            com.google.android.gms.internal.ads.zzejf.zza((java.lang.Object) r13, (long) r4, (long) r6)     // Catch:{ zzego -> 0x059d }
            r12.zzf(r13, (int) r3)     // Catch:{ zzego -> 0x059d }
            goto L_0x0009
        L_0x0462:
            r2 = r4 & r6
            long r4 = (long) r2     // Catch:{ zzego -> 0x059d }
            int r2 = r14.zzbdz()     // Catch:{ zzego -> 0x059d }
            com.google.android.gms.internal.ads.zzejf.zzb((java.lang.Object) r13, (long) r4, (int) r2)     // Catch:{ zzego -> 0x059d }
            r12.zzf(r13, (int) r3)     // Catch:{ zzego -> 0x059d }
            goto L_0x0009
        L_0x0471:
            r2 = r4 & r6
            long r4 = (long) r2     // Catch:{ zzego -> 0x059d }
            long r6 = r14.zzbdy()     // Catch:{ zzego -> 0x059d }
            com.google.android.gms.internal.ads.zzejf.zza((java.lang.Object) r13, (long) r4, (long) r6)     // Catch:{ zzego -> 0x059d }
            r12.zzf(r13, (int) r3)     // Catch:{ zzego -> 0x059d }
            goto L_0x0009
        L_0x0480:
            r2 = r4 & r6
            long r4 = (long) r2     // Catch:{ zzego -> 0x059d }
            int r2 = r14.zzbdx()     // Catch:{ zzego -> 0x059d }
            com.google.android.gms.internal.ads.zzejf.zzb((java.lang.Object) r13, (long) r4, (int) r2)     // Catch:{ zzego -> 0x059d }
            r12.zzf(r13, (int) r3)     // Catch:{ zzego -> 0x059d }
            goto L_0x0009
        L_0x048f:
            int r5 = r14.zzbdw()     // Catch:{ zzego -> 0x059d }
            com.google.android.gms.internal.ads.zzegi r7 = r12.zzhg(r3)     // Catch:{ zzego -> 0x059d }
            if (r7 == 0) goto L_0x04a6
            boolean r7 = r7.zzi(r5)     // Catch:{ zzego -> 0x059d }
            if (r7 == 0) goto L_0x04a0
            goto L_0x04a6
        L_0x04a0:
            java.lang.Object r10 = com.google.android.gms.internal.ads.zzeij.zza((int) r2, (int) r5, r10, r8)     // Catch:{ zzego -> 0x059d }
            goto L_0x0009
        L_0x04a6:
            r2 = r4 & r6
            long r6 = (long) r2     // Catch:{ zzego -> 0x059d }
            com.google.android.gms.internal.ads.zzejf.zzb((java.lang.Object) r13, (long) r6, (int) r5)     // Catch:{ zzego -> 0x059d }
            r12.zzf(r13, (int) r3)     // Catch:{ zzego -> 0x059d }
            goto L_0x0009
        L_0x04b1:
            r2 = r4 & r6
            long r4 = (long) r2     // Catch:{ zzego -> 0x059d }
            int r2 = r14.zzbdv()     // Catch:{ zzego -> 0x059d }
            com.google.android.gms.internal.ads.zzejf.zzb((java.lang.Object) r13, (long) r4, (int) r2)     // Catch:{ zzego -> 0x059d }
            r12.zzf(r13, (int) r3)     // Catch:{ zzego -> 0x059d }
            goto L_0x0009
        L_0x04c0:
            r2 = r4 & r6
            long r4 = (long) r2     // Catch:{ zzego -> 0x059d }
            com.google.android.gms.internal.ads.zzeer r2 = r14.zzbdu()     // Catch:{ zzego -> 0x059d }
            com.google.android.gms.internal.ads.zzejf.zza((java.lang.Object) r13, (long) r4, (java.lang.Object) r2)     // Catch:{ zzego -> 0x059d }
            r12.zzf(r13, (int) r3)     // Catch:{ zzego -> 0x059d }
            goto L_0x0009
        L_0x04cf:
            boolean r2 = r12.zze(r13, (int) r3)     // Catch:{ zzego -> 0x059d }
            if (r2 == 0) goto L_0x04ed
            r2 = r4 & r6
            long r4 = (long) r2     // Catch:{ zzego -> 0x059d }
            java.lang.Object r2 = com.google.android.gms.internal.ads.zzejf.zzp(r13, r4)     // Catch:{ zzego -> 0x059d }
            com.google.android.gms.internal.ads.zzeih r3 = r12.zzhe(r3)     // Catch:{ zzego -> 0x059d }
            java.lang.Object r3 = r14.zza(r3, r15)     // Catch:{ zzego -> 0x059d }
            java.lang.Object r2 = com.google.android.gms.internal.ads.zzegd.zze(r2, r3)     // Catch:{ zzego -> 0x059d }
            com.google.android.gms.internal.ads.zzejf.zza((java.lang.Object) r13, (long) r4, (java.lang.Object) r2)     // Catch:{ zzego -> 0x059d }
            goto L_0x0009
        L_0x04ed:
            r2 = r4 & r6
            long r4 = (long) r2     // Catch:{ zzego -> 0x059d }
            com.google.android.gms.internal.ads.zzeih r2 = r12.zzhe(r3)     // Catch:{ zzego -> 0x059d }
            java.lang.Object r2 = r14.zza(r2, r15)     // Catch:{ zzego -> 0x059d }
            com.google.android.gms.internal.ads.zzejf.zza((java.lang.Object) r13, (long) r4, (java.lang.Object) r2)     // Catch:{ zzego -> 0x059d }
            r12.zzf(r13, (int) r3)     // Catch:{ zzego -> 0x059d }
            goto L_0x0009
        L_0x0500:
            r12.zza((java.lang.Object) r13, (int) r4, (com.google.android.gms.internal.ads.zzeib) r14)     // Catch:{ zzego -> 0x059d }
            r12.zzf(r13, (int) r3)     // Catch:{ zzego -> 0x059d }
            goto L_0x0009
        L_0x0508:
            r2 = r4 & r6
            long r4 = (long) r2     // Catch:{ zzego -> 0x059d }
            boolean r2 = r14.zzbds()     // Catch:{ zzego -> 0x059d }
            com.google.android.gms.internal.ads.zzejf.zza((java.lang.Object) r13, (long) r4, (boolean) r2)     // Catch:{ zzego -> 0x059d }
            r12.zzf(r13, (int) r3)     // Catch:{ zzego -> 0x059d }
            goto L_0x0009
        L_0x0517:
            r2 = r4 & r6
            long r4 = (long) r2     // Catch:{ zzego -> 0x059d }
            int r2 = r14.zzbdr()     // Catch:{ zzego -> 0x059d }
            com.google.android.gms.internal.ads.zzejf.zzb((java.lang.Object) r13, (long) r4, (int) r2)     // Catch:{ zzego -> 0x059d }
            r12.zzf(r13, (int) r3)     // Catch:{ zzego -> 0x059d }
            goto L_0x0009
        L_0x0526:
            r2 = r4 & r6
            long r4 = (long) r2     // Catch:{ zzego -> 0x059d }
            long r6 = r14.zzbdq()     // Catch:{ zzego -> 0x059d }
            com.google.android.gms.internal.ads.zzejf.zza((java.lang.Object) r13, (long) r4, (long) r6)     // Catch:{ zzego -> 0x059d }
            r12.zzf(r13, (int) r3)     // Catch:{ zzego -> 0x059d }
            goto L_0x0009
        L_0x0535:
            r2 = r4 & r6
            long r4 = (long) r2     // Catch:{ zzego -> 0x059d }
            int r2 = r14.zzbdp()     // Catch:{ zzego -> 0x059d }
            com.google.android.gms.internal.ads.zzejf.zzb((java.lang.Object) r13, (long) r4, (int) r2)     // Catch:{ zzego -> 0x059d }
            r12.zzf(r13, (int) r3)     // Catch:{ zzego -> 0x059d }
            goto L_0x0009
        L_0x0544:
            r2 = r4 & r6
            long r4 = (long) r2     // Catch:{ zzego -> 0x059d }
            long r6 = r14.zzbdn()     // Catch:{ zzego -> 0x059d }
            com.google.android.gms.internal.ads.zzejf.zza((java.lang.Object) r13, (long) r4, (long) r6)     // Catch:{ zzego -> 0x059d }
            r12.zzf(r13, (int) r3)     // Catch:{ zzego -> 0x059d }
            goto L_0x0009
        L_0x0553:
            r2 = r4 & r6
            long r4 = (long) r2     // Catch:{ zzego -> 0x059d }
            long r6 = r14.zzbdo()     // Catch:{ zzego -> 0x059d }
            com.google.android.gms.internal.ads.zzejf.zza((java.lang.Object) r13, (long) r4, (long) r6)     // Catch:{ zzego -> 0x059d }
            r12.zzf(r13, (int) r3)     // Catch:{ zzego -> 0x059d }
            goto L_0x0009
        L_0x0562:
            r2 = r4 & r6
            long r4 = (long) r2     // Catch:{ zzego -> 0x059d }
            float r2 = r14.readFloat()     // Catch:{ zzego -> 0x059d }
            com.google.android.gms.internal.ads.zzejf.zza((java.lang.Object) r13, (long) r4, (float) r2)     // Catch:{ zzego -> 0x059d }
            r12.zzf(r13, (int) r3)     // Catch:{ zzego -> 0x059d }
            goto L_0x0009
        L_0x0571:
            r2 = r4 & r6
            long r4 = (long) r2     // Catch:{ zzego -> 0x059d }
            double r6 = r14.readDouble()     // Catch:{ zzego -> 0x059d }
            com.google.android.gms.internal.ads.zzejf.zza((java.lang.Object) r13, (long) r4, (double) r6)     // Catch:{ zzego -> 0x059d }
            r12.zzf(r13, (int) r3)     // Catch:{ zzego -> 0x059d }
            goto L_0x0009
        L_0x0580:
            boolean r2 = r8.zza(r10, (com.google.android.gms.internal.ads.zzeib) r14)     // Catch:{ zzego -> 0x059d }
            if (r2 != 0) goto L_0x0009
            int r14 = r12.zzihc
        L_0x0588:
            int r15 = r12.zzihd
            if (r14 >= r15) goto L_0x0597
            int[] r15 = r12.zzihb
            r15 = r15[r14]
            java.lang.Object r10 = r12.zza((java.lang.Object) r13, (int) r15, r10, r8)
            int r14 = r14 + 1
            goto L_0x0588
        L_0x0597:
            if (r10 == 0) goto L_0x059c
            r8.zzj(r13, r10)
        L_0x059c:
            return
        L_0x059d:
            r8.zza(r14)     // Catch:{ all -> 0x05c4 }
            if (r10 != 0) goto L_0x05a7
            java.lang.Object r2 = r8.zzay(r13)     // Catch:{ all -> 0x05c4 }
            r10 = r2
        L_0x05a7:
            boolean r2 = r8.zza(r10, (com.google.android.gms.internal.ads.zzeib) r14)     // Catch:{ all -> 0x05c4 }
            if (r2 != 0) goto L_0x0009
            int r14 = r12.zzihc
        L_0x05af:
            int r15 = r12.zzihd
            if (r14 >= r15) goto L_0x05be
            int[] r15 = r12.zzihb
            r15 = r15[r14]
            java.lang.Object r10 = r12.zza((java.lang.Object) r13, (int) r15, r10, r8)
            int r14 = r14 + 1
            goto L_0x05af
        L_0x05be:
            if (r10 == 0) goto L_0x05c3
            r8.zzj(r13, r10)
        L_0x05c3:
            return
        L_0x05c4:
            r14 = move-exception
            int r15 = r12.zzihc
        L_0x05c7:
            int r0 = r12.zzihd
            if (r15 >= r0) goto L_0x05d6
            int[] r0 = r12.zzihb
            r0 = r0[r15]
            java.lang.Object r10 = r12.zza((java.lang.Object) r13, (int) r0, r10, r8)
            int r15 = r15 + 1
            goto L_0x05c7
        L_0x05d6:
            if (r10 == 0) goto L_0x05db
            r8.zzj(r13, r10)
        L_0x05db:
            throw r14
        L_0x05dc:
            goto L_0x05de
        L_0x05dd:
            throw r0
        L_0x05de:
            goto L_0x05dd
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzehp.zza(java.lang.Object, com.google.android.gms.internal.ads.zzeib, com.google.android.gms.internal.ads.zzefo):void");
    }

    private static zzejc zzau(Object obj) {
        zzegb zzegb = (zzegb) obj;
        zzejc zzejc = zzegb.zzieg;
        if (zzejc != zzejc.zzbhs()) {
            return zzejc;
        }
        zzejc zzbht = zzejc.zzbht();
        zzegb.zzieg = zzbht;
        return zzbht;
    }

    /* JADX WARNING: Code restructure failed: missing block: B:29:?, code lost:
        return r2 + 4;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:30:?, code lost:
        return r2 + 8;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private static int zza(byte[] r1, int r2, int r3, com.google.android.gms.internal.ads.zzejq r4, java.lang.Class<?> r5, com.google.android.gms.internal.ads.zzeem r6) throws java.io.IOException {
        /*
            int[] r0 = com.google.android.gms.internal.ads.zzehs.zziau
            int r4 = r4.ordinal()
            r4 = r0[r4]
            switch(r4) {
                case 1: goto L_0x0099;
                case 2: goto L_0x0094;
                case 3: goto L_0x0087;
                case 4: goto L_0x007a;
                case 5: goto L_0x007a;
                case 6: goto L_0x006f;
                case 7: goto L_0x006f;
                case 8: goto L_0x0064;
                case 9: goto L_0x0057;
                case 10: goto L_0x0057;
                case 11: goto L_0x0057;
                case 12: goto L_0x004a;
                case 13: goto L_0x004a;
                case 14: goto L_0x003d;
                case 15: goto L_0x002b;
                case 16: goto L_0x0019;
                case 17: goto L_0x0013;
                default: goto L_0x000b;
            }
        L_0x000b:
            java.lang.RuntimeException r1 = new java.lang.RuntimeException
            java.lang.String r2 = "unsupported field type."
            r1.<init>(r2)
            throw r1
        L_0x0013:
            int r1 = com.google.android.gms.internal.ads.zzeen.zzd(r1, r2, r6)
            goto L_0x00ae
        L_0x0019:
            int r1 = com.google.android.gms.internal.ads.zzeen.zzb(r1, r2, r6)
            long r2 = r6.zzhzp
            long r2 = com.google.android.gms.internal.ads.zzefc.zzfh(r2)
            java.lang.Long r2 = java.lang.Long.valueOf(r2)
            r6.zzhzq = r2
            goto L_0x00ae
        L_0x002b:
            int r1 = com.google.android.gms.internal.ads.zzeen.zza(r1, r2, r6)
            int r2 = r6.zzhzo
            int r2 = com.google.android.gms.internal.ads.zzefc.zzgb(r2)
            java.lang.Integer r2 = java.lang.Integer.valueOf(r2)
            r6.zzhzq = r2
            goto L_0x00ae
        L_0x003d:
            com.google.android.gms.internal.ads.zzeia r4 = com.google.android.gms.internal.ads.zzeia.zzbgz()
            com.google.android.gms.internal.ads.zzeih r4 = r4.zzh(r5)
            int r1 = com.google.android.gms.internal.ads.zzeen.zza((com.google.android.gms.internal.ads.zzeih) r4, (byte[]) r1, (int) r2, (int) r3, (com.google.android.gms.internal.ads.zzeem) r6)
            goto L_0x00ae
        L_0x004a:
            int r1 = com.google.android.gms.internal.ads.zzeen.zzb(r1, r2, r6)
            long r2 = r6.zzhzp
            java.lang.Long r2 = java.lang.Long.valueOf(r2)
            r6.zzhzq = r2
            goto L_0x00ae
        L_0x0057:
            int r1 = com.google.android.gms.internal.ads.zzeen.zza(r1, r2, r6)
            int r2 = r6.zzhzo
            java.lang.Integer r2 = java.lang.Integer.valueOf(r2)
            r6.zzhzq = r2
            goto L_0x00ae
        L_0x0064:
            float r1 = com.google.android.gms.internal.ads.zzeen.zzj(r1, r2)
            java.lang.Float r1 = java.lang.Float.valueOf(r1)
            r6.zzhzq = r1
            goto L_0x0084
        L_0x006f:
            long r3 = com.google.android.gms.internal.ads.zzeen.zzh(r1, r2)
            java.lang.Long r1 = java.lang.Long.valueOf(r3)
            r6.zzhzq = r1
            goto L_0x0091
        L_0x007a:
            int r1 = com.google.android.gms.internal.ads.zzeen.zzg(r1, r2)
            java.lang.Integer r1 = java.lang.Integer.valueOf(r1)
            r6.zzhzq = r1
        L_0x0084:
            int r1 = r2 + 4
            goto L_0x00ae
        L_0x0087:
            double r3 = com.google.android.gms.internal.ads.zzeen.zzi(r1, r2)
            java.lang.Double r1 = java.lang.Double.valueOf(r3)
            r6.zzhzq = r1
        L_0x0091:
            int r1 = r2 + 8
            goto L_0x00ae
        L_0x0094:
            int r1 = com.google.android.gms.internal.ads.zzeen.zze(r1, r2, r6)
            goto L_0x00ae
        L_0x0099:
            int r1 = com.google.android.gms.internal.ads.zzeen.zzb(r1, r2, r6)
            long r2 = r6.zzhzp
            r4 = 0
            int r0 = (r2 > r4 ? 1 : (r2 == r4 ? 0 : -1))
            if (r0 == 0) goto L_0x00a7
            r2 = 1
            goto L_0x00a8
        L_0x00a7:
            r2 = 0
        L_0x00a8:
            java.lang.Boolean r2 = java.lang.Boolean.valueOf(r2)
            r6.zzhzq = r2
        L_0x00ae:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzehp.zza(byte[], int, int, com.google.android.gms.internal.ads.zzejq, java.lang.Class, com.google.android.gms.internal.ads.zzeem):int");
    }

    /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxOverflowException: Regions count limit reached
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:47)
        	at jadx.core.utils.ErrorsCounter.methodError(ErrorsCounter.java:81)
        */
    /* JADX WARNING: Removed duplicated region for block: B:244:0x0422 A[SYNTHETIC] */
    /* JADX WARNING: Removed duplicated region for block: B:92:0x01eb  */
    private final int zza(T r17, byte[] r18, int r19, int r20, int r21, int r22, int r23, int r24, long r25, int r27, long r28, com.google.android.gms.internal.ads.zzeem r30) throws java.io.IOException {
        /*
            r16 = this;
            r0 = r16
            r1 = r17
            r3 = r18
            r4 = r19
            r5 = r20
            r2 = r21
            r6 = r23
            r8 = r24
            r9 = r28
            r7 = r30
            sun.misc.Unsafe r11 = zzhni
            java.lang.Object r11 = r11.getObject(r1, r9)
            com.google.android.gms.internal.ads.zzegm r11 = (com.google.android.gms.internal.ads.zzegm) r11
            boolean r12 = r11.zzbcy()
            r13 = 1
            if (r12 != 0) goto L_0x0036
            int r12 = r11.size()
            if (r12 != 0) goto L_0x002c
            r12 = 10
            goto L_0x002d
        L_0x002c:
            int r12 = r12 << r13
        L_0x002d:
            com.google.android.gms.internal.ads.zzegm r11 = r11.zzfs(r12)
            sun.misc.Unsafe r12 = zzhni
            r12.putObject(r1, r9, r11)
        L_0x0036:
            r9 = 5
            r14 = 0
            r10 = 2
            switch(r27) {
                case 18: goto L_0x03e4;
                case 19: goto L_0x03a6;
                case 20: goto L_0x0365;
                case 21: goto L_0x0365;
                case 22: goto L_0x034b;
                case 23: goto L_0x030c;
                case 24: goto L_0x02cd;
                case 25: goto L_0x0276;
                case 26: goto L_0x01c3;
                case 27: goto L_0x01a9;
                case 28: goto L_0x0151;
                case 29: goto L_0x034b;
                case 30: goto L_0x0119;
                case 31: goto L_0x02cd;
                case 32: goto L_0x030c;
                case 33: goto L_0x00cc;
                case 34: goto L_0x007f;
                case 35: goto L_0x03e4;
                case 36: goto L_0x03a6;
                case 37: goto L_0x0365;
                case 38: goto L_0x0365;
                case 39: goto L_0x034b;
                case 40: goto L_0x030c;
                case 41: goto L_0x02cd;
                case 42: goto L_0x0276;
                case 43: goto L_0x034b;
                case 44: goto L_0x0119;
                case 45: goto L_0x02cd;
                case 46: goto L_0x030c;
                case 47: goto L_0x00cc;
                case 48: goto L_0x007f;
                case 49: goto L_0x003f;
                default: goto L_0x003d;
            }
        L_0x003d:
            goto L_0x0422
        L_0x003f:
            r1 = 3
            if (r6 != r1) goto L_0x0422
            com.google.android.gms.internal.ads.zzeih r1 = r0.zzhe(r8)
            r6 = r2 & -8
            r6 = r6 | 4
            r22 = r1
            r23 = r18
            r24 = r19
            r25 = r20
            r26 = r6
            r27 = r30
            int r4 = com.google.android.gms.internal.ads.zzeen.zza((com.google.android.gms.internal.ads.zzeih) r22, (byte[]) r23, (int) r24, (int) r25, (int) r26, (com.google.android.gms.internal.ads.zzeem) r27)
            java.lang.Object r8 = r7.zzhzq
            r11.add(r8)
        L_0x005f:
            if (r4 >= r5) goto L_0x0422
            int r8 = com.google.android.gms.internal.ads.zzeen.zza(r3, r4, r7)
            int r9 = r7.zzhzo
            if (r2 != r9) goto L_0x0422
            r22 = r1
            r23 = r18
            r24 = r8
            r25 = r20
            r26 = r6
            r27 = r30
            int r4 = com.google.android.gms.internal.ads.zzeen.zza((com.google.android.gms.internal.ads.zzeih) r22, (byte[]) r23, (int) r24, (int) r25, (int) r26, (com.google.android.gms.internal.ads.zzeem) r27)
            java.lang.Object r8 = r7.zzhzq
            r11.add(r8)
            goto L_0x005f
        L_0x007f:
            if (r6 != r10) goto L_0x00a3
            com.google.android.gms.internal.ads.zzegz r11 = (com.google.android.gms.internal.ads.zzegz) r11
            int r1 = com.google.android.gms.internal.ads.zzeen.zza(r3, r4, r7)
            int r2 = r7.zzhzo
            int r2 = r2 + r1
        L_0x008a:
            if (r1 >= r2) goto L_0x009a
            int r1 = com.google.android.gms.internal.ads.zzeen.zzb(r3, r1, r7)
            long r4 = r7.zzhzp
            long r4 = com.google.android.gms.internal.ads.zzefc.zzfh(r4)
            r11.zzfs((long) r4)
            goto L_0x008a
        L_0x009a:
            if (r1 != r2) goto L_0x009e
            goto L_0x0423
        L_0x009e:
            com.google.android.gms.internal.ads.zzegl r1 = com.google.android.gms.internal.ads.zzegl.zzbfu()
            throw r1
        L_0x00a3:
            if (r6 != 0) goto L_0x0422
            com.google.android.gms.internal.ads.zzegz r11 = (com.google.android.gms.internal.ads.zzegz) r11
            int r1 = com.google.android.gms.internal.ads.zzeen.zzb(r3, r4, r7)
            long r8 = r7.zzhzp
            long r8 = com.google.android.gms.internal.ads.zzefc.zzfh(r8)
            r11.zzfs((long) r8)
        L_0x00b4:
            if (r1 >= r5) goto L_0x0423
            int r4 = com.google.android.gms.internal.ads.zzeen.zza(r3, r1, r7)
            int r6 = r7.zzhzo
            if (r2 != r6) goto L_0x0423
            int r1 = com.google.android.gms.internal.ads.zzeen.zzb(r3, r4, r7)
            long r8 = r7.zzhzp
            long r8 = com.google.android.gms.internal.ads.zzefc.zzfh(r8)
            r11.zzfs((long) r8)
            goto L_0x00b4
        L_0x00cc:
            if (r6 != r10) goto L_0x00f0
            com.google.android.gms.internal.ads.zzege r11 = (com.google.android.gms.internal.ads.zzege) r11
            int r1 = com.google.android.gms.internal.ads.zzeen.zza(r3, r4, r7)
            int r2 = r7.zzhzo
            int r2 = r2 + r1
        L_0x00d7:
            if (r1 >= r2) goto L_0x00e7
            int r1 = com.google.android.gms.internal.ads.zzeen.zza(r3, r1, r7)
            int r4 = r7.zzhzo
            int r4 = com.google.android.gms.internal.ads.zzefc.zzgb(r4)
            r11.zzhb(r4)
            goto L_0x00d7
        L_0x00e7:
            if (r1 != r2) goto L_0x00eb
            goto L_0x0423
        L_0x00eb:
            com.google.android.gms.internal.ads.zzegl r1 = com.google.android.gms.internal.ads.zzegl.zzbfu()
            throw r1
        L_0x00f0:
            if (r6 != 0) goto L_0x0422
            com.google.android.gms.internal.ads.zzege r11 = (com.google.android.gms.internal.ads.zzege) r11
            int r1 = com.google.android.gms.internal.ads.zzeen.zza(r3, r4, r7)
            int r4 = r7.zzhzo
            int r4 = com.google.android.gms.internal.ads.zzefc.zzgb(r4)
            r11.zzhb(r4)
        L_0x0101:
            if (r1 >= r5) goto L_0x0423
            int r4 = com.google.android.gms.internal.ads.zzeen.zza(r3, r1, r7)
            int r6 = r7.zzhzo
            if (r2 != r6) goto L_0x0423
            int r1 = com.google.android.gms.internal.ads.zzeen.zza(r3, r4, r7)
            int r4 = r7.zzhzo
            int r4 = com.google.android.gms.internal.ads.zzefc.zzgb(r4)
            r11.zzhb(r4)
            goto L_0x0101
        L_0x0119:
            if (r6 != r10) goto L_0x0120
            int r2 = com.google.android.gms.internal.ads.zzeen.zza((byte[]) r3, (int) r4, (com.google.android.gms.internal.ads.zzegm<?>) r11, (com.google.android.gms.internal.ads.zzeem) r7)
            goto L_0x0131
        L_0x0120:
            if (r6 != 0) goto L_0x0422
            r2 = r21
            r3 = r18
            r4 = r19
            r5 = r20
            r6 = r11
            r7 = r30
            int r2 = com.google.android.gms.internal.ads.zzeen.zza((int) r2, (byte[]) r3, (int) r4, (int) r5, (com.google.android.gms.internal.ads.zzegm<?>) r6, (com.google.android.gms.internal.ads.zzeem) r7)
        L_0x0131:
            com.google.android.gms.internal.ads.zzegb r1 = (com.google.android.gms.internal.ads.zzegb) r1
            com.google.android.gms.internal.ads.zzejc r3 = r1.zzieg
            com.google.android.gms.internal.ads.zzejc r4 = com.google.android.gms.internal.ads.zzejc.zzbhs()
            if (r3 != r4) goto L_0x013c
            r3 = 0
        L_0x013c:
            com.google.android.gms.internal.ads.zzegi r4 = r0.zzhg(r8)
            com.google.android.gms.internal.ads.zzeiz<?, ?> r5 = r0.zzihg
            r6 = r22
            java.lang.Object r3 = com.google.android.gms.internal.ads.zzeij.zza(r6, r11, r4, r3, r5)
            com.google.android.gms.internal.ads.zzejc r3 = (com.google.android.gms.internal.ads.zzejc) r3
            if (r3 == 0) goto L_0x014e
            r1.zzieg = r3
        L_0x014e:
            r1 = r2
            goto L_0x0423
        L_0x0151:
            if (r6 != r10) goto L_0x0422
            int r1 = com.google.android.gms.internal.ads.zzeen.zza(r3, r4, r7)
            int r4 = r7.zzhzo
            if (r4 < 0) goto L_0x01a4
            int r6 = r3.length
            int r6 = r6 - r1
            if (r4 > r6) goto L_0x019f
            if (r4 != 0) goto L_0x0167
            com.google.android.gms.internal.ads.zzeer r4 = com.google.android.gms.internal.ads.zzeer.zzhzv
            r11.add(r4)
            goto L_0x016f
        L_0x0167:
            com.google.android.gms.internal.ads.zzeer r6 = com.google.android.gms.internal.ads.zzeer.zzi((byte[]) r3, (int) r1, (int) r4)
            r11.add(r6)
        L_0x016e:
            int r1 = r1 + r4
        L_0x016f:
            if (r1 >= r5) goto L_0x0423
            int r4 = com.google.android.gms.internal.ads.zzeen.zza(r3, r1, r7)
            int r6 = r7.zzhzo
            if (r2 != r6) goto L_0x0423
            int r1 = com.google.android.gms.internal.ads.zzeen.zza(r3, r4, r7)
            int r4 = r7.zzhzo
            if (r4 < 0) goto L_0x019a
            int r6 = r3.length
            int r6 = r6 - r1
            if (r4 > r6) goto L_0x0195
            if (r4 != 0) goto L_0x018d
            com.google.android.gms.internal.ads.zzeer r4 = com.google.android.gms.internal.ads.zzeer.zzhzv
            r11.add(r4)
            goto L_0x016f
        L_0x018d:
            com.google.android.gms.internal.ads.zzeer r6 = com.google.android.gms.internal.ads.zzeer.zzi((byte[]) r3, (int) r1, (int) r4)
            r11.add(r6)
            goto L_0x016e
        L_0x0195:
            com.google.android.gms.internal.ads.zzegl r1 = com.google.android.gms.internal.ads.zzegl.zzbfu()
            throw r1
        L_0x019a:
            com.google.android.gms.internal.ads.zzegl r1 = com.google.android.gms.internal.ads.zzegl.zzbfv()
            throw r1
        L_0x019f:
            com.google.android.gms.internal.ads.zzegl r1 = com.google.android.gms.internal.ads.zzegl.zzbfu()
            throw r1
        L_0x01a4:
            com.google.android.gms.internal.ads.zzegl r1 = com.google.android.gms.internal.ads.zzegl.zzbfv()
            throw r1
        L_0x01a9:
            if (r6 != r10) goto L_0x0422
            com.google.android.gms.internal.ads.zzeih r1 = r0.zzhe(r8)
            r22 = r1
            r23 = r21
            r24 = r18
            r25 = r19
            r26 = r20
            r27 = r11
            r28 = r30
            int r1 = com.google.android.gms.internal.ads.zzeen.zza(r22, r23, r24, r25, r26, r27, r28)
            goto L_0x0423
        L_0x01c3:
            if (r6 != r10) goto L_0x0422
            r8 = 536870912(0x20000000, double:2.652494739E-315)
            long r8 = r25 & r8
            java.lang.String r1 = ""
            int r6 = (r8 > r14 ? 1 : (r8 == r14 ? 0 : -1))
            if (r6 != 0) goto L_0x0216
            int r4 = com.google.android.gms.internal.ads.zzeen.zza(r3, r4, r7)
            int r6 = r7.zzhzo
            if (r6 < 0) goto L_0x0211
            if (r6 != 0) goto L_0x01de
            r11.add(r1)
            goto L_0x01e9
        L_0x01de:
            java.lang.String r8 = new java.lang.String
            java.nio.charset.Charset r9 = com.google.android.gms.internal.ads.zzegd.UTF_8
            r8.<init>(r3, r4, r6, r9)
            r11.add(r8)
        L_0x01e8:
            int r4 = r4 + r6
        L_0x01e9:
            if (r4 >= r5) goto L_0x0422
            int r6 = com.google.android.gms.internal.ads.zzeen.zza(r3, r4, r7)
            int r8 = r7.zzhzo
            if (r2 != r8) goto L_0x0422
            int r4 = com.google.android.gms.internal.ads.zzeen.zza(r3, r6, r7)
            int r6 = r7.zzhzo
            if (r6 < 0) goto L_0x020c
            if (r6 != 0) goto L_0x0201
            r11.add(r1)
            goto L_0x01e9
        L_0x0201:
            java.lang.String r8 = new java.lang.String
            java.nio.charset.Charset r9 = com.google.android.gms.internal.ads.zzegd.UTF_8
            r8.<init>(r3, r4, r6, r9)
            r11.add(r8)
            goto L_0x01e8
        L_0x020c:
            com.google.android.gms.internal.ads.zzegl r1 = com.google.android.gms.internal.ads.zzegl.zzbfv()
            throw r1
        L_0x0211:
            com.google.android.gms.internal.ads.zzegl r1 = com.google.android.gms.internal.ads.zzegl.zzbfv()
            throw r1
        L_0x0216:
            int r4 = com.google.android.gms.internal.ads.zzeen.zza(r3, r4, r7)
            int r6 = r7.zzhzo
            if (r6 < 0) goto L_0x0271
            if (r6 != 0) goto L_0x0224
            r11.add(r1)
            goto L_0x0237
        L_0x0224:
            int r8 = r4 + r6
            boolean r9 = com.google.android.gms.internal.ads.zzeji.zzm(r3, r4, r8)
            if (r9 == 0) goto L_0x026c
            java.lang.String r9 = new java.lang.String
            java.nio.charset.Charset r10 = com.google.android.gms.internal.ads.zzegd.UTF_8
            r9.<init>(r3, r4, r6, r10)
            r11.add(r9)
        L_0x0236:
            r4 = r8
        L_0x0237:
            if (r4 >= r5) goto L_0x0422
            int r6 = com.google.android.gms.internal.ads.zzeen.zza(r3, r4, r7)
            int r8 = r7.zzhzo
            if (r2 != r8) goto L_0x0422
            int r4 = com.google.android.gms.internal.ads.zzeen.zza(r3, r6, r7)
            int r6 = r7.zzhzo
            if (r6 < 0) goto L_0x0267
            if (r6 != 0) goto L_0x024f
            r11.add(r1)
            goto L_0x0237
        L_0x024f:
            int r8 = r4 + r6
            boolean r9 = com.google.android.gms.internal.ads.zzeji.zzm(r3, r4, r8)
            if (r9 == 0) goto L_0x0262
            java.lang.String r9 = new java.lang.String
            java.nio.charset.Charset r10 = com.google.android.gms.internal.ads.zzegd.UTF_8
            r9.<init>(r3, r4, r6, r10)
            r11.add(r9)
            goto L_0x0236
        L_0x0262:
            com.google.android.gms.internal.ads.zzegl r1 = com.google.android.gms.internal.ads.zzegl.zzbgc()
            throw r1
        L_0x0267:
            com.google.android.gms.internal.ads.zzegl r1 = com.google.android.gms.internal.ads.zzegl.zzbfv()
            throw r1
        L_0x026c:
            com.google.android.gms.internal.ads.zzegl r1 = com.google.android.gms.internal.ads.zzegl.zzbgc()
            throw r1
        L_0x0271:
            com.google.android.gms.internal.ads.zzegl r1 = com.google.android.gms.internal.ads.zzegl.zzbfv()
            throw r1
        L_0x0276:
            r1 = 0
            if (r6 != r10) goto L_0x029e
            com.google.android.gms.internal.ads.zzeep r11 = (com.google.android.gms.internal.ads.zzeep) r11
            int r2 = com.google.android.gms.internal.ads.zzeen.zza(r3, r4, r7)
            int r4 = r7.zzhzo
            int r4 = r4 + r2
        L_0x0282:
            if (r2 >= r4) goto L_0x0295
            int r2 = com.google.android.gms.internal.ads.zzeen.zzb(r3, r2, r7)
            long r5 = r7.zzhzp
            int r8 = (r5 > r14 ? 1 : (r5 == r14 ? 0 : -1))
            if (r8 == 0) goto L_0x0290
            r5 = 1
            goto L_0x0291
        L_0x0290:
            r5 = 0
        L_0x0291:
            r11.addBoolean(r5)
            goto L_0x0282
        L_0x0295:
            if (r2 != r4) goto L_0x0299
            goto L_0x014e
        L_0x0299:
            com.google.android.gms.internal.ads.zzegl r1 = com.google.android.gms.internal.ads.zzegl.zzbfu()
            throw r1
        L_0x029e:
            if (r6 != 0) goto L_0x0422
            com.google.android.gms.internal.ads.zzeep r11 = (com.google.android.gms.internal.ads.zzeep) r11
            int r4 = com.google.android.gms.internal.ads.zzeen.zzb(r3, r4, r7)
            long r8 = r7.zzhzp
            int r6 = (r8 > r14 ? 1 : (r8 == r14 ? 0 : -1))
            if (r6 == 0) goto L_0x02ae
            r6 = 1
            goto L_0x02af
        L_0x02ae:
            r6 = 0
        L_0x02af:
            r11.addBoolean(r6)
        L_0x02b2:
            if (r4 >= r5) goto L_0x0422
            int r6 = com.google.android.gms.internal.ads.zzeen.zza(r3, r4, r7)
            int r8 = r7.zzhzo
            if (r2 != r8) goto L_0x0422
            int r4 = com.google.android.gms.internal.ads.zzeen.zzb(r3, r6, r7)
            long r8 = r7.zzhzp
            int r6 = (r8 > r14 ? 1 : (r8 == r14 ? 0 : -1))
            if (r6 == 0) goto L_0x02c8
            r6 = 1
            goto L_0x02c9
        L_0x02c8:
            r6 = 0
        L_0x02c9:
            r11.addBoolean(r6)
            goto L_0x02b2
        L_0x02cd:
            if (r6 != r10) goto L_0x02ed
            com.google.android.gms.internal.ads.zzege r11 = (com.google.android.gms.internal.ads.zzege) r11
            int r1 = com.google.android.gms.internal.ads.zzeen.zza(r3, r4, r7)
            int r2 = r7.zzhzo
            int r2 = r2 + r1
        L_0x02d8:
            if (r1 >= r2) goto L_0x02e4
            int r4 = com.google.android.gms.internal.ads.zzeen.zzg(r3, r1)
            r11.zzhb(r4)
            int r1 = r1 + 4
            goto L_0x02d8
        L_0x02e4:
            if (r1 != r2) goto L_0x02e8
            goto L_0x0423
        L_0x02e8:
            com.google.android.gms.internal.ads.zzegl r1 = com.google.android.gms.internal.ads.zzegl.zzbfu()
            throw r1
        L_0x02ed:
            if (r6 != r9) goto L_0x0422
            com.google.android.gms.internal.ads.zzege r11 = (com.google.android.gms.internal.ads.zzege) r11
            int r1 = com.google.android.gms.internal.ads.zzeen.zzg(r18, r19)
            r11.zzhb(r1)
        L_0x02f8:
            int r1 = r4 + 4
            if (r1 >= r5) goto L_0x0423
            int r4 = com.google.android.gms.internal.ads.zzeen.zza(r3, r1, r7)
            int r6 = r7.zzhzo
            if (r2 != r6) goto L_0x0423
            int r1 = com.google.android.gms.internal.ads.zzeen.zzg(r3, r4)
            r11.zzhb(r1)
            goto L_0x02f8
        L_0x030c:
            if (r6 != r10) goto L_0x032c
            com.google.android.gms.internal.ads.zzegz r11 = (com.google.android.gms.internal.ads.zzegz) r11
            int r1 = com.google.android.gms.internal.ads.zzeen.zza(r3, r4, r7)
            int r2 = r7.zzhzo
            int r2 = r2 + r1
        L_0x0317:
            if (r1 >= r2) goto L_0x0323
            long r4 = com.google.android.gms.internal.ads.zzeen.zzh(r3, r1)
            r11.zzfs((long) r4)
            int r1 = r1 + 8
            goto L_0x0317
        L_0x0323:
            if (r1 != r2) goto L_0x0327
            goto L_0x0423
        L_0x0327:
            com.google.android.gms.internal.ads.zzegl r1 = com.google.android.gms.internal.ads.zzegl.zzbfu()
            throw r1
        L_0x032c:
            if (r6 != r13) goto L_0x0422
            com.google.android.gms.internal.ads.zzegz r11 = (com.google.android.gms.internal.ads.zzegz) r11
            long r8 = com.google.android.gms.internal.ads.zzeen.zzh(r18, r19)
            r11.zzfs((long) r8)
        L_0x0337:
            int r1 = r4 + 8
            if (r1 >= r5) goto L_0x0423
            int r4 = com.google.android.gms.internal.ads.zzeen.zza(r3, r1, r7)
            int r6 = r7.zzhzo
            if (r2 != r6) goto L_0x0423
            long r8 = com.google.android.gms.internal.ads.zzeen.zzh(r3, r4)
            r11.zzfs((long) r8)
            goto L_0x0337
        L_0x034b:
            if (r6 != r10) goto L_0x0353
            int r1 = com.google.android.gms.internal.ads.zzeen.zza((byte[]) r3, (int) r4, (com.google.android.gms.internal.ads.zzegm<?>) r11, (com.google.android.gms.internal.ads.zzeem) r7)
            goto L_0x0423
        L_0x0353:
            if (r6 != 0) goto L_0x0422
            r22 = r18
            r23 = r19
            r24 = r20
            r25 = r11
            r26 = r30
            int r1 = com.google.android.gms.internal.ads.zzeen.zza((int) r21, (byte[]) r22, (int) r23, (int) r24, (com.google.android.gms.internal.ads.zzegm<?>) r25, (com.google.android.gms.internal.ads.zzeem) r26)
            goto L_0x0423
        L_0x0365:
            if (r6 != r10) goto L_0x0385
            com.google.android.gms.internal.ads.zzegz r11 = (com.google.android.gms.internal.ads.zzegz) r11
            int r1 = com.google.android.gms.internal.ads.zzeen.zza(r3, r4, r7)
            int r2 = r7.zzhzo
            int r2 = r2 + r1
        L_0x0370:
            if (r1 >= r2) goto L_0x037c
            int r1 = com.google.android.gms.internal.ads.zzeen.zzb(r3, r1, r7)
            long r4 = r7.zzhzp
            r11.zzfs((long) r4)
            goto L_0x0370
        L_0x037c:
            if (r1 != r2) goto L_0x0380
            goto L_0x0423
        L_0x0380:
            com.google.android.gms.internal.ads.zzegl r1 = com.google.android.gms.internal.ads.zzegl.zzbfu()
            throw r1
        L_0x0385:
            if (r6 != 0) goto L_0x0422
            com.google.android.gms.internal.ads.zzegz r11 = (com.google.android.gms.internal.ads.zzegz) r11
            int r1 = com.google.android.gms.internal.ads.zzeen.zzb(r3, r4, r7)
            long r8 = r7.zzhzp
            r11.zzfs((long) r8)
        L_0x0392:
            if (r1 >= r5) goto L_0x0423
            int r4 = com.google.android.gms.internal.ads.zzeen.zza(r3, r1, r7)
            int r6 = r7.zzhzo
            if (r2 != r6) goto L_0x0423
            int r1 = com.google.android.gms.internal.ads.zzeen.zzb(r3, r4, r7)
            long r8 = r7.zzhzp
            r11.zzfs((long) r8)
            goto L_0x0392
        L_0x03a6:
            if (r6 != r10) goto L_0x03c5
            com.google.android.gms.internal.ads.zzega r11 = (com.google.android.gms.internal.ads.zzega) r11
            int r1 = com.google.android.gms.internal.ads.zzeen.zza(r3, r4, r7)
            int r2 = r7.zzhzo
            int r2 = r2 + r1
        L_0x03b1:
            if (r1 >= r2) goto L_0x03bd
            float r4 = com.google.android.gms.internal.ads.zzeen.zzj(r3, r1)
            r11.zzh(r4)
            int r1 = r1 + 4
            goto L_0x03b1
        L_0x03bd:
            if (r1 != r2) goto L_0x03c0
            goto L_0x0423
        L_0x03c0:
            com.google.android.gms.internal.ads.zzegl r1 = com.google.android.gms.internal.ads.zzegl.zzbfu()
            throw r1
        L_0x03c5:
            if (r6 != r9) goto L_0x0422
            com.google.android.gms.internal.ads.zzega r11 = (com.google.android.gms.internal.ads.zzega) r11
            float r1 = com.google.android.gms.internal.ads.zzeen.zzj(r18, r19)
            r11.zzh(r1)
        L_0x03d0:
            int r1 = r4 + 4
            if (r1 >= r5) goto L_0x0423
            int r4 = com.google.android.gms.internal.ads.zzeen.zza(r3, r1, r7)
            int r6 = r7.zzhzo
            if (r2 != r6) goto L_0x0423
            float r1 = com.google.android.gms.internal.ads.zzeen.zzj(r3, r4)
            r11.zzh(r1)
            goto L_0x03d0
        L_0x03e4:
            if (r6 != r10) goto L_0x0403
            com.google.android.gms.internal.ads.zzefm r11 = (com.google.android.gms.internal.ads.zzefm) r11
            int r1 = com.google.android.gms.internal.ads.zzeen.zza(r3, r4, r7)
            int r2 = r7.zzhzo
            int r2 = r2 + r1
        L_0x03ef:
            if (r1 >= r2) goto L_0x03fb
            double r4 = com.google.android.gms.internal.ads.zzeen.zzi(r3, r1)
            r11.zzd(r4)
            int r1 = r1 + 8
            goto L_0x03ef
        L_0x03fb:
            if (r1 != r2) goto L_0x03fe
            goto L_0x0423
        L_0x03fe:
            com.google.android.gms.internal.ads.zzegl r1 = com.google.android.gms.internal.ads.zzegl.zzbfu()
            throw r1
        L_0x0403:
            if (r6 != r13) goto L_0x0422
            com.google.android.gms.internal.ads.zzefm r11 = (com.google.android.gms.internal.ads.zzefm) r11
            double r8 = com.google.android.gms.internal.ads.zzeen.zzi(r18, r19)
            r11.zzd(r8)
        L_0x040e:
            int r1 = r4 + 8
            if (r1 >= r5) goto L_0x0423
            int r4 = com.google.android.gms.internal.ads.zzeen.zza(r3, r1, r7)
            int r6 = r7.zzhzo
            if (r2 != r6) goto L_0x0423
            double r8 = com.google.android.gms.internal.ads.zzeen.zzi(r3, r4)
            r11.zzd(r8)
            goto L_0x040e
        L_0x0422:
            r1 = r4
        L_0x0423:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzehp.zza(java.lang.Object, byte[], int, int, int, int, int, int, long, int, long, com.google.android.gms.internal.ads.zzeem):int");
    }

    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r10v4, resolved type: byte} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r10v11, resolved type: byte} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r10v12, resolved type: byte} */
    /* JADX WARNING: Multi-variable type inference failed */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private final <K, V> int zza(T r8, byte[] r9, int r10, int r11, int r12, long r13, com.google.android.gms.internal.ads.zzeem r15) throws java.io.IOException {
        /*
            r7 = this;
            sun.misc.Unsafe r0 = zzhni
            java.lang.Object r12 = r7.zzhf(r12)
            java.lang.Object r1 = r0.getObject(r8, r13)
            com.google.android.gms.internal.ads.zzehi r2 = r7.zzihi
            boolean r2 = r2.zzaq(r1)
            if (r2 == 0) goto L_0x0021
            com.google.android.gms.internal.ads.zzehi r2 = r7.zzihi
            java.lang.Object r2 = r2.zzas(r12)
            com.google.android.gms.internal.ads.zzehi r3 = r7.zzihi
            r3.zzf(r2, r1)
            r0.putObject(r8, r13, r2)
            r1 = r2
        L_0x0021:
            com.google.android.gms.internal.ads.zzehi r8 = r7.zzihi
            com.google.android.gms.internal.ads.zzehg r8 = r8.zzao(r12)
            com.google.android.gms.internal.ads.zzehi r12 = r7.zzihi
            java.util.Map r12 = r12.zzan(r1)
            int r10 = com.google.android.gms.internal.ads.zzeen.zza(r9, r10, r15)
            int r13 = r15.zzhzo
            if (r13 < 0) goto L_0x0097
            int r14 = r11 - r10
            if (r13 > r14) goto L_0x0097
            int r13 = r13 + r10
            K r14 = r8.zzign
            V r0 = r8.zzckr
        L_0x003e:
            if (r10 >= r13) goto L_0x008c
            int r1 = r10 + 1
            byte r10 = r9[r10]
            if (r10 >= 0) goto L_0x004c
            int r1 = com.google.android.gms.internal.ads.zzeen.zza((int) r10, (byte[]) r9, (int) r1, (com.google.android.gms.internal.ads.zzeem) r15)
            int r10 = r15.zzhzo
        L_0x004c:
            r2 = r1
            int r1 = r10 >>> 3
            r3 = r10 & 7
            r4 = 1
            if (r1 == r4) goto L_0x0072
            r4 = 2
            if (r1 == r4) goto L_0x0058
            goto L_0x0087
        L_0x0058:
            com.google.android.gms.internal.ads.zzejq r1 = r8.zzigo
            int r1 = r1.zzbic()
            if (r3 != r1) goto L_0x0087
            com.google.android.gms.internal.ads.zzejq r4 = r8.zzigo
            V r10 = r8.zzckr
            java.lang.Class r5 = r10.getClass()
            r1 = r9
            r3 = r11
            r6 = r15
            int r10 = zza((byte[]) r1, (int) r2, (int) r3, (com.google.android.gms.internal.ads.zzejq) r4, (java.lang.Class<?>) r5, (com.google.android.gms.internal.ads.zzeem) r6)
            java.lang.Object r0 = r15.zzhzq
            goto L_0x003e
        L_0x0072:
            com.google.android.gms.internal.ads.zzejq r1 = r8.zzigm
            int r1 = r1.zzbic()
            if (r3 != r1) goto L_0x0087
            com.google.android.gms.internal.ads.zzejq r4 = r8.zzigm
            r5 = 0
            r1 = r9
            r3 = r11
            r6 = r15
            int r10 = zza((byte[]) r1, (int) r2, (int) r3, (com.google.android.gms.internal.ads.zzejq) r4, (java.lang.Class<?>) r5, (com.google.android.gms.internal.ads.zzeem) r6)
            java.lang.Object r14 = r15.zzhzq
            goto L_0x003e
        L_0x0087:
            int r10 = com.google.android.gms.internal.ads.zzeen.zza((int) r10, (byte[]) r9, (int) r2, (int) r11, (com.google.android.gms.internal.ads.zzeem) r15)
            goto L_0x003e
        L_0x008c:
            if (r10 != r13) goto L_0x0092
            r12.put(r14, r0)
            return r13
        L_0x0092:
            com.google.android.gms.internal.ads.zzegl r8 = com.google.android.gms.internal.ads.zzegl.zzbgb()
            throw r8
        L_0x0097:
            com.google.android.gms.internal.ads.zzegl r8 = com.google.android.gms.internal.ads.zzegl.zzbfu()
            goto L_0x009d
        L_0x009c:
            throw r8
        L_0x009d:
            goto L_0x009c
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzehp.zza(java.lang.Object, byte[], int, int, int, long, com.google.android.gms.internal.ads.zzeem):int");
    }

    /* JADX WARNING: Code restructure failed: missing block: B:62:0x018a, code lost:
        r2 = r4 + 4;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:66:0x019b, code lost:
        r2 = r4 + 8;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:67:0x019d, code lost:
        r12.putInt(r1, r13, r8);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:69:?, code lost:
        return r4;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:73:?, code lost:
        return r2;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private final int zza(T r17, byte[] r18, int r19, int r20, int r21, int r22, int r23, int r24, int r25, long r26, int r28, com.google.android.gms.internal.ads.zzeem r29) throws java.io.IOException {
        /*
            r16 = this;
            r0 = r16
            r1 = r17
            r3 = r18
            r4 = r19
            r2 = r21
            r8 = r22
            r5 = r23
            r9 = r26
            r6 = r28
            r11 = r29
            sun.misc.Unsafe r12 = zzhni
            int[] r7 = r0.zzigs
            int r13 = r6 + 2
            r7 = r7[r13]
            r13 = 1048575(0xfffff, float:1.469367E-39)
            r7 = r7 & r13
            long r13 = (long) r7
            r7 = 5
            r15 = 2
            switch(r25) {
                case 51: goto L_0x018d;
                case 52: goto L_0x017d;
                case 53: goto L_0x016d;
                case 54: goto L_0x016d;
                case 55: goto L_0x015d;
                case 56: goto L_0x014e;
                case 57: goto L_0x0140;
                case 58: goto L_0x0127;
                case 59: goto L_0x00f3;
                case 60: goto L_0x00c5;
                case 61: goto L_0x00b8;
                case 62: goto L_0x015d;
                case 63: goto L_0x008a;
                case 64: goto L_0x0140;
                case 65: goto L_0x014e;
                case 66: goto L_0x0075;
                case 67: goto L_0x0060;
                case 68: goto L_0x0028;
                default: goto L_0x0026;
            }
        L_0x0026:
            goto L_0x01a1
        L_0x0028:
            r7 = 3
            if (r5 != r7) goto L_0x01a1
            r2 = r2 & -8
            r7 = r2 | 4
            com.google.android.gms.internal.ads.zzeih r2 = r0.zzhe(r6)
            r3 = r18
            r4 = r19
            r5 = r20
            r6 = r7
            r7 = r29
            int r2 = com.google.android.gms.internal.ads.zzeen.zza((com.google.android.gms.internal.ads.zzeih) r2, (byte[]) r3, (int) r4, (int) r5, (int) r6, (com.google.android.gms.internal.ads.zzeem) r7)
            int r3 = r12.getInt(r1, r13)
            if (r3 != r8) goto L_0x004b
            java.lang.Object r15 = r12.getObject(r1, r9)
            goto L_0x004c
        L_0x004b:
            r15 = 0
        L_0x004c:
            if (r15 != 0) goto L_0x0055
            java.lang.Object r3 = r11.zzhzq
            r12.putObject(r1, r9, r3)
            goto L_0x019d
        L_0x0055:
            java.lang.Object r3 = r11.zzhzq
            java.lang.Object r3 = com.google.android.gms.internal.ads.zzegd.zze(r15, r3)
            r12.putObject(r1, r9, r3)
            goto L_0x019d
        L_0x0060:
            if (r5 != 0) goto L_0x01a1
            int r2 = com.google.android.gms.internal.ads.zzeen.zzb(r3, r4, r11)
            long r3 = r11.zzhzp
            long r3 = com.google.android.gms.internal.ads.zzefc.zzfh(r3)
            java.lang.Long r3 = java.lang.Long.valueOf(r3)
            r12.putObject(r1, r9, r3)
            goto L_0x019d
        L_0x0075:
            if (r5 != 0) goto L_0x01a1
            int r2 = com.google.android.gms.internal.ads.zzeen.zza(r3, r4, r11)
            int r3 = r11.zzhzo
            int r3 = com.google.android.gms.internal.ads.zzefc.zzgb(r3)
            java.lang.Integer r3 = java.lang.Integer.valueOf(r3)
            r12.putObject(r1, r9, r3)
            goto L_0x019d
        L_0x008a:
            if (r5 != 0) goto L_0x01a1
            int r3 = com.google.android.gms.internal.ads.zzeen.zza(r3, r4, r11)
            int r4 = r11.zzhzo
            com.google.android.gms.internal.ads.zzegi r5 = r0.zzhg(r6)
            if (r5 == 0) goto L_0x00ae
            boolean r5 = r5.zzi(r4)
            if (r5 == 0) goto L_0x009f
            goto L_0x00ae
        L_0x009f:
            com.google.android.gms.internal.ads.zzejc r1 = zzau(r17)
            long r4 = (long) r4
            java.lang.Long r4 = java.lang.Long.valueOf(r4)
            r1.zzd(r2, r4)
            r2 = r3
            goto L_0x01a2
        L_0x00ae:
            java.lang.Integer r2 = java.lang.Integer.valueOf(r4)
            r12.putObject(r1, r9, r2)
            r2 = r3
            goto L_0x019d
        L_0x00b8:
            if (r5 != r15) goto L_0x01a1
            int r2 = com.google.android.gms.internal.ads.zzeen.zze(r3, r4, r11)
            java.lang.Object r3 = r11.zzhzq
            r12.putObject(r1, r9, r3)
            goto L_0x019d
        L_0x00c5:
            if (r5 != r15) goto L_0x01a1
            com.google.android.gms.internal.ads.zzeih r2 = r0.zzhe(r6)
            r5 = r20
            int r2 = com.google.android.gms.internal.ads.zzeen.zza((com.google.android.gms.internal.ads.zzeih) r2, (byte[]) r3, (int) r4, (int) r5, (com.google.android.gms.internal.ads.zzeem) r11)
            int r3 = r12.getInt(r1, r13)
            if (r3 != r8) goto L_0x00dc
            java.lang.Object r15 = r12.getObject(r1, r9)
            goto L_0x00dd
        L_0x00dc:
            r15 = 0
        L_0x00dd:
            if (r15 != 0) goto L_0x00e5
            java.lang.Object r3 = r11.zzhzq
            r12.putObject(r1, r9, r3)
            goto L_0x00ee
        L_0x00e5:
            java.lang.Object r3 = r11.zzhzq
            java.lang.Object r3 = com.google.android.gms.internal.ads.zzegd.zze(r15, r3)
            r12.putObject(r1, r9, r3)
        L_0x00ee:
            r12.putInt(r1, r13, r8)
            goto L_0x01a2
        L_0x00f3:
            if (r5 != r15) goto L_0x01a1
            int r2 = com.google.android.gms.internal.ads.zzeen.zza(r3, r4, r11)
            int r4 = r11.zzhzo
            if (r4 != 0) goto L_0x0103
            java.lang.String r3 = ""
            r12.putObject(r1, r9, r3)
            goto L_0x0122
        L_0x0103:
            r5 = 536870912(0x20000000, float:1.0842022E-19)
            r5 = r24 & r5
            if (r5 == 0) goto L_0x0117
            int r5 = r2 + r4
            boolean r5 = com.google.android.gms.internal.ads.zzeji.zzm(r3, r2, r5)
            if (r5 == 0) goto L_0x0112
            goto L_0x0117
        L_0x0112:
            com.google.android.gms.internal.ads.zzegl r1 = com.google.android.gms.internal.ads.zzegl.zzbgc()
            throw r1
        L_0x0117:
            java.lang.String r5 = new java.lang.String
            java.nio.charset.Charset r6 = com.google.android.gms.internal.ads.zzegd.UTF_8
            r5.<init>(r3, r2, r4, r6)
            r12.putObject(r1, r9, r5)
            int r2 = r2 + r4
        L_0x0122:
            r12.putInt(r1, r13, r8)
            goto L_0x01a2
        L_0x0127:
            if (r5 != 0) goto L_0x01a1
            int r2 = com.google.android.gms.internal.ads.zzeen.zzb(r3, r4, r11)
            long r3 = r11.zzhzp
            r5 = 0
            int r7 = (r3 > r5 ? 1 : (r3 == r5 ? 0 : -1))
            if (r7 == 0) goto L_0x0137
            r15 = 1
            goto L_0x0138
        L_0x0137:
            r15 = 0
        L_0x0138:
            java.lang.Boolean r3 = java.lang.Boolean.valueOf(r15)
            r12.putObject(r1, r9, r3)
            goto L_0x019d
        L_0x0140:
            if (r5 != r7) goto L_0x01a1
            int r2 = com.google.android.gms.internal.ads.zzeen.zzg(r18, r19)
            java.lang.Integer r2 = java.lang.Integer.valueOf(r2)
            r12.putObject(r1, r9, r2)
            goto L_0x018a
        L_0x014e:
            r2 = 1
            if (r5 != r2) goto L_0x01a1
            long r2 = com.google.android.gms.internal.ads.zzeen.zzh(r18, r19)
            java.lang.Long r2 = java.lang.Long.valueOf(r2)
            r12.putObject(r1, r9, r2)
            goto L_0x019b
        L_0x015d:
            if (r5 != 0) goto L_0x01a1
            int r2 = com.google.android.gms.internal.ads.zzeen.zza(r3, r4, r11)
            int r3 = r11.zzhzo
            java.lang.Integer r3 = java.lang.Integer.valueOf(r3)
            r12.putObject(r1, r9, r3)
            goto L_0x019d
        L_0x016d:
            if (r5 != 0) goto L_0x01a1
            int r2 = com.google.android.gms.internal.ads.zzeen.zzb(r3, r4, r11)
            long r3 = r11.zzhzp
            java.lang.Long r3 = java.lang.Long.valueOf(r3)
            r12.putObject(r1, r9, r3)
            goto L_0x019d
        L_0x017d:
            if (r5 != r7) goto L_0x01a1
            float r2 = com.google.android.gms.internal.ads.zzeen.zzj(r18, r19)
            java.lang.Float r2 = java.lang.Float.valueOf(r2)
            r12.putObject(r1, r9, r2)
        L_0x018a:
            int r2 = r4 + 4
            goto L_0x019d
        L_0x018d:
            r2 = 1
            if (r5 != r2) goto L_0x01a1
            double r2 = com.google.android.gms.internal.ads.zzeen.zzi(r18, r19)
            java.lang.Double r2 = java.lang.Double.valueOf(r2)
            r12.putObject(r1, r9, r2)
        L_0x019b:
            int r2 = r4 + 8
        L_0x019d:
            r12.putInt(r1, r13, r8)
            goto L_0x01a2
        L_0x01a1:
            r2 = r4
        L_0x01a2:
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzehp.zza(java.lang.Object, byte[], int, int, int, int, int, int, int, long, int, com.google.android.gms.internal.ads.zzeem):int");
    }

    private final zzeih zzhe(int i) {
        int i2 = (i / 3) << 1;
        zzeih zzeih = (zzeih) this.zzigt[i2];
        if (zzeih != null) {
            return zzeih;
        }
        zzeih zzh = zzeia.zzbgz().zzh((Class) this.zzigt[i2 + 1]);
        this.zzigt[i2] = zzh;
        return zzh;
    }

    private final Object zzhf(int i) {
        return this.zzigt[(i / 3) << 1];
    }

    private final zzegi zzhg(int i) {
        return (zzegi) this.zzigt[((i / 3) << 1) + 1];
    }

    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r11v0, resolved type: byte} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r3v0, resolved type: byte} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r11v1, resolved type: byte} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r3v1, resolved type: byte} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r7v0, resolved type: byte} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r7v1, resolved type: byte} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r3v2, resolved type: byte} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r4v4, resolved type: byte} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r11v2, resolved type: byte} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r8v1, resolved type: byte} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r7v3, resolved type: byte} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r3v6, resolved type: byte} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r11v3, resolved type: byte} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r0v10, resolved type: byte} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r3v8, resolved type: byte} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r0v19, resolved type: byte} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r3v10, resolved type: byte} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r3v11, resolved type: byte} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r19v3, resolved type: byte} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r3v12, resolved type: byte} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r11v9, resolved type: byte} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r8v3, resolved type: byte} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r19v5, resolved type: byte} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r7v4, resolved type: byte} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r8v4, resolved type: byte} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r19v6, resolved type: byte} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r7v5, resolved type: byte} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r19v7, resolved type: byte} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r7v6, resolved type: byte} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r19v8, resolved type: byte} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r5v12, resolved type: byte} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r8v6, resolved type: byte} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r3v14, resolved type: byte} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r19v9, resolved type: byte} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r11v11, resolved type: byte} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r3v16, resolved type: byte} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r5v17, resolved type: byte} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r19v10, resolved type: byte} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r19v11, resolved type: byte} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r1v28, resolved type: byte} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r11v12, resolved type: byte} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r3v17, resolved type: byte} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r8v11, resolved type: byte} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r7v13, resolved type: byte} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r3v18, resolved type: byte} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r8v12, resolved type: byte} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r3v19, resolved type: byte} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r8v13, resolved type: byte} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r8v14, resolved type: byte} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r8v15, resolved type: byte} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r8v16, resolved type: byte} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r8v17, resolved type: byte} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r8v18, resolved type: byte} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r8v19, resolved type: byte} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r8v20, resolved type: byte} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r3v20, resolved type: byte} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r8v21, resolved type: byte} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r8v22, resolved type: byte} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r8v23, resolved type: byte} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r8v24, resolved type: byte} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r8v25, resolved type: byte} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r8v26, resolved type: byte} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r8v27, resolved type: byte} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r3v24, resolved type: byte} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r8v28, resolved type: byte} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r5v29, resolved type: byte} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r8v29, resolved type: byte} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r8v30, resolved type: byte} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r7v19, resolved type: byte} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r8v31, resolved type: byte} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r7v20, resolved type: byte} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r3v26, resolved type: byte} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r11v34, resolved type: byte} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r8v32, resolved type: byte} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r8v36, resolved type: byte} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r7v21, resolved type: byte} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r4v38, resolved type: byte} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r4v39, resolved type: byte} */
    /* access modifiers changed from: package-private */
    /* JADX WARNING: Code restructure failed: missing block: B:112:0x03bb, code lost:
        if (r0 == r15) goto L_0x0424;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:119:0x03fe, code lost:
        if (r0 == r15) goto L_0x0424;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:74:0x025a, code lost:
        r5 = r6 | r22;
        r6 = r30;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:75:0x025e, code lost:
        r3 = r8;
        r1 = r9;
        r9 = r13;
        r13 = r2;
        r2 = r11;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:85:0x02cc, code lost:
        r5 = r6 | r22;
        r6 = r30;
        r0 = r7;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:92:0x030a, code lost:
        r5 = r6 | r22;
        r6 = r30;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:93:0x030e, code lost:
        r3 = r8;
        r1 = r9;
        r2 = r11;
        r9 = r13;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:94:0x0312, code lost:
        r13 = r31;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:95:0x0316, code lost:
        r7 = r32;
        r2 = r3;
        r22 = r6;
        r26 = r10;
        r17 = r11;
        r6 = r30;
        r30 = r9;
     */
    /* JADX WARNING: Multi-variable type inference failed */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final int zza(T r28, byte[] r29, int r30, int r31, int r32, com.google.android.gms.internal.ads.zzeem r33) throws java.io.IOException {
        /*
            r27 = this;
            r15 = r27
            r14 = r28
            r12 = r29
            r13 = r31
            r11 = r32
            r9 = r33
            sun.misc.Unsafe r10 = zzhni
            r16 = 0
            r0 = r30
            r1 = -1
            r2 = 0
            r3 = 0
            r5 = 0
            r6 = 1048575(0xfffff, float:1.469367E-39)
        L_0x0019:
            if (r0 >= r13) goto L_0x04cb
            int r3 = r0 + 1
            byte r0 = r12[r0]
            if (r0 >= 0) goto L_0x002a
            int r0 = com.google.android.gms.internal.ads.zzeen.zza((int) r0, (byte[]) r12, (int) r3, (com.google.android.gms.internal.ads.zzeem) r9)
            int r3 = r9.zzhzo
            r4 = r3
            r3 = r0
            goto L_0x002b
        L_0x002a:
            r4 = r0
        L_0x002b:
            int r0 = r4 >>> 3
            r7 = r4 & 7
            r8 = 3
            if (r0 <= r1) goto L_0x0038
            int r2 = r2 / r8
            int r1 = r15.zzan(r0, r2)
            goto L_0x003c
        L_0x0038:
            int r1 = r15.zzhk(r0)
        L_0x003c:
            r2 = r1
            r1 = -1
            if (r2 != r1) goto L_0x004f
            r30 = r0
            r2 = r3
            r8 = r4
            r22 = r5
            r26 = r10
            r7 = r11
            r17 = 0
            r18 = -1
            goto L_0x0428
        L_0x004f:
            int[] r1 = r15.zzigs
            int r19 = r2 + 1
            r8 = r1[r19]
            r19 = 267386880(0xff00000, float:2.3665827E-29)
            r19 = r8 & r19
            int r11 = r19 >>> 20
            r19 = r4
            r17 = 1048575(0xfffff, float:1.469367E-39)
            r4 = r8 & r17
            long r12 = (long) r4
            r4 = 17
            r20 = r8
            if (r11 > r4) goto L_0x0325
            int r4 = r2 + 2
            r1 = r1[r4]
            int r4 = r1 >>> 20
            r8 = 1
            int r22 = r8 << r4
            r4 = 1048575(0xfffff, float:1.469367E-39)
            r1 = r1 & r4
            if (r1 == r6) goto L_0x0085
            if (r6 == r4) goto L_0x007e
            long r8 = (long) r6
            r10.putInt(r14, r8, r5)
        L_0x007e:
            long r5 = (long) r1
            int r5 = r10.getInt(r14, r5)
            r8 = r1
            goto L_0x0086
        L_0x0085:
            r8 = r6
        L_0x0086:
            r6 = r5
            r1 = 5
            switch(r11) {
                case 0: goto L_0x02ee;
                case 1: goto L_0x02d2;
                case 2: goto L_0x02a9;
                case 3: goto L_0x02a9;
                case 4: goto L_0x028c;
                case 5: goto L_0x0265;
                case 6: goto L_0x023d;
                case 7: goto L_0x0210;
                case 8: goto L_0x01e6;
                case 9: goto L_0x01ab;
                case 10: goto L_0x018d;
                case 11: goto L_0x028c;
                case 12: goto L_0x014e;
                case 13: goto L_0x023d;
                case 14: goto L_0x0265;
                case 15: goto L_0x012d;
                case 16: goto L_0x00f9;
                case 17: goto L_0x009c;
                default: goto L_0x008b;
            }
        L_0x008b:
            r12 = r29
            r13 = r33
            r9 = r0
            r11 = r2
            r30 = r8
            r8 = r19
            r18 = -1
            r19 = 1048575(0xfffff, float:1.469367E-39)
            goto L_0x0316
        L_0x009c:
            r5 = 3
            if (r7 != r5) goto L_0x00e7
            int r1 = r0 << 3
            r5 = r1 | 4
            com.google.android.gms.internal.ads.zzeih r1 = r15.zzhe(r2)
            r9 = r0
            r0 = r1
            r18 = -1
            r1 = r29
            r11 = r2
            r2 = r3
            r3 = r31
            r7 = r19
            r19 = 1048575(0xfffff, float:1.469367E-39)
            r4 = r5
            r5 = r33
            int r0 = com.google.android.gms.internal.ads.zzeen.zza((com.google.android.gms.internal.ads.zzeih) r0, (byte[]) r1, (int) r2, (int) r3, (int) r4, (com.google.android.gms.internal.ads.zzeem) r5)
            r1 = r6 & r22
            if (r1 != 0) goto L_0x00c9
            r4 = r33
            java.lang.Object r1 = r4.zzhzq
            r10.putObject(r14, r12, r1)
            goto L_0x00d8
        L_0x00c9:
            r4 = r33
            java.lang.Object r1 = r10.getObject(r14, r12)
            java.lang.Object r2 = r4.zzhzq
            java.lang.Object r1 = com.google.android.gms.internal.ads.zzegd.zze(r1, r2)
            r10.putObject(r14, r12, r1)
        L_0x00d8:
            r5 = r6 | r22
            r12 = r29
            r13 = r31
            r3 = r7
            r6 = r8
            r1 = r9
            r2 = r11
            r11 = r32
            r9 = r4
            goto L_0x0019
        L_0x00e7:
            r9 = r0
            r11 = r2
            r7 = r19
            r18 = -1
            r19 = 1048575(0xfffff, float:1.469367E-39)
            r12 = r29
            r13 = r33
            r30 = r8
            r8 = r7
            goto L_0x0316
        L_0x00f9:
            r4 = r33
            r9 = r0
            r11 = r2
            r5 = r19
            r18 = -1
            r19 = 1048575(0xfffff, float:1.469367E-39)
            if (r7 != 0) goto L_0x0125
            r1 = r12
            r12 = r29
            int r7 = com.google.android.gms.internal.ads.zzeen.zzb(r12, r3, r4)
            r20 = r1
            long r0 = r4.zzhzp
            long r23 = com.google.android.gms.internal.ads.zzefc.zzfh(r0)
            r0 = r10
            r2 = r20
            r1 = r28
            r13 = r4
            r30 = r8
            r8 = r5
            r4 = r23
            r0.putLong(r1, r2, r4)
            goto L_0x02cc
        L_0x0125:
            r12 = r29
            r13 = r4
            r30 = r8
            r8 = r5
            goto L_0x0316
        L_0x012d:
            r9 = r0
            r11 = r2
            r30 = r8
            r4 = r12
            r8 = r19
            r18 = -1
            r19 = 1048575(0xfffff, float:1.469367E-39)
            r12 = r29
            r13 = r33
            if (r7 != 0) goto L_0x0316
            int r0 = com.google.android.gms.internal.ads.zzeen.zza(r12, r3, r13)
            int r1 = r13.zzhzo
            int r1 = com.google.android.gms.internal.ads.zzefc.zzgb(r1)
            r10.putInt(r14, r4, r1)
            goto L_0x030a
        L_0x014e:
            r9 = r0
            r11 = r2
            r30 = r8
            r4 = r12
            r8 = r19
            r18 = -1
            r19 = 1048575(0xfffff, float:1.469367E-39)
            r12 = r29
            r13 = r33
            if (r7 != 0) goto L_0x0316
            int r0 = com.google.android.gms.internal.ads.zzeen.zza(r12, r3, r13)
            int r1 = r13.zzhzo
            com.google.android.gms.internal.ads.zzegi r2 = r15.zzhg(r11)
            if (r2 == 0) goto L_0x0188
            boolean r2 = r2.zzi(r1)
            if (r2 == 0) goto L_0x0173
            goto L_0x0188
        L_0x0173:
            com.google.android.gms.internal.ads.zzejc r2 = zzau(r28)
            long r3 = (long) r1
            java.lang.Long r1 = java.lang.Long.valueOf(r3)
            r2.zzd(r8, r1)
            r5 = r6
            r3 = r8
            r1 = r9
            r2 = r11
            r9 = r13
            r6 = r30
            goto L_0x0312
        L_0x0188:
            r10.putInt(r14, r4, r1)
            goto L_0x030a
        L_0x018d:
            r9 = r0
            r11 = r2
            r30 = r8
            r4 = r12
            r8 = r19
            r0 = 2
            r18 = -1
            r19 = 1048575(0xfffff, float:1.469367E-39)
            r12 = r29
            r13 = r33
            if (r7 != r0) goto L_0x0316
            int r0 = com.google.android.gms.internal.ads.zzeen.zze(r12, r3, r13)
            java.lang.Object r1 = r13.zzhzq
            r10.putObject(r14, r4, r1)
            goto L_0x030a
        L_0x01ab:
            r9 = r0
            r11 = r2
            r30 = r8
            r4 = r12
            r8 = r19
            r0 = 2
            r18 = -1
            r19 = 1048575(0xfffff, float:1.469367E-39)
            r12 = r29
            r13 = r33
            if (r7 != r0) goto L_0x01e2
            com.google.android.gms.internal.ads.zzeih r0 = r15.zzhe(r11)
            r2 = r31
            int r0 = com.google.android.gms.internal.ads.zzeen.zza((com.google.android.gms.internal.ads.zzeih) r0, (byte[]) r12, (int) r3, (int) r2, (com.google.android.gms.internal.ads.zzeem) r13)
            r1 = r6 & r22
            if (r1 != 0) goto L_0x01d3
            java.lang.Object r1 = r13.zzhzq
            r10.putObject(r14, r4, r1)
            goto L_0x025a
        L_0x01d3:
            java.lang.Object r1 = r10.getObject(r14, r4)
            java.lang.Object r3 = r13.zzhzq
            java.lang.Object r1 = com.google.android.gms.internal.ads.zzegd.zze(r1, r3)
            r10.putObject(r14, r4, r1)
            goto L_0x025a
        L_0x01e2:
            r2 = r31
            goto L_0x0316
        L_0x01e6:
            r9 = r0
            r11 = r2
            r30 = r8
            r4 = r12
            r8 = r19
            r0 = 2
            r18 = -1
            r19 = 1048575(0xfffff, float:1.469367E-39)
            r12 = r29
            r2 = r31
            r13 = r33
            if (r7 != r0) goto L_0x0316
            r0 = 536870912(0x20000000, float:1.0842022E-19)
            r0 = r20 & r0
            if (r0 != 0) goto L_0x0206
            int r0 = com.google.android.gms.internal.ads.zzeen.zzc(r12, r3, r13)
            goto L_0x020a
        L_0x0206:
            int r0 = com.google.android.gms.internal.ads.zzeen.zzd(r12, r3, r13)
        L_0x020a:
            java.lang.Object r1 = r13.zzhzq
            r10.putObject(r14, r4, r1)
            goto L_0x025a
        L_0x0210:
            r9 = r0
            r11 = r2
            r30 = r8
            r4 = r12
            r8 = r19
            r18 = -1
            r19 = 1048575(0xfffff, float:1.469367E-39)
            r12 = r29
            r2 = r31
            r13 = r33
            if (r7 != 0) goto L_0x0316
            int r0 = com.google.android.gms.internal.ads.zzeen.zzb(r12, r3, r13)
            r3 = r0
            long r0 = r13.zzhzp
            r20 = 0
            int r7 = (r0 > r20 ? 1 : (r0 == r20 ? 0 : -1))
            if (r7 == 0) goto L_0x0233
            r0 = 1
            goto L_0x0234
        L_0x0233:
            r0 = 0
        L_0x0234:
            com.google.android.gms.internal.ads.zzejf.zza((java.lang.Object) r14, (long) r4, (boolean) r0)
            r5 = r6 | r22
            r6 = r30
            r0 = r3
            goto L_0x025e
        L_0x023d:
            r9 = r0
            r11 = r2
            r30 = r8
            r4 = r12
            r8 = r19
            r18 = -1
            r19 = 1048575(0xfffff, float:1.469367E-39)
            r12 = r29
            r2 = r31
            r13 = r33
            if (r7 != r1) goto L_0x0316
            int r0 = com.google.android.gms.internal.ads.zzeen.zzg(r12, r3)
            r10.putInt(r14, r4, r0)
            int r0 = r3 + 4
        L_0x025a:
            r5 = r6 | r22
            r6 = r30
        L_0x025e:
            r3 = r8
            r1 = r9
            r9 = r13
            r13 = r2
            r2 = r11
            goto L_0x04c7
        L_0x0265:
            r9 = r0
            r11 = r2
            r30 = r8
            r4 = r12
            r8 = r19
            r0 = 1
            r18 = -1
            r19 = 1048575(0xfffff, float:1.469367E-39)
            r12 = r29
            r2 = r31
            r13 = r33
            if (r7 != r0) goto L_0x0316
            long r20 = com.google.android.gms.internal.ads.zzeen.zzh(r12, r3)
            r0 = r10
            r1 = r28
            r7 = r3
            r2 = r4
            r4 = r20
            r0.putLong(r1, r2, r4)
            int r0 = r7 + 8
            goto L_0x030a
        L_0x028c:
            r9 = r0
            r11 = r2
            r30 = r8
            r4 = r12
            r8 = r19
            r18 = -1
            r19 = 1048575(0xfffff, float:1.469367E-39)
            r12 = r29
            r13 = r33
            if (r7 != 0) goto L_0x0316
            int r0 = com.google.android.gms.internal.ads.zzeen.zza(r12, r3, r13)
            int r1 = r13.zzhzo
            r10.putInt(r14, r4, r1)
            goto L_0x030a
        L_0x02a9:
            r9 = r0
            r11 = r2
            r30 = r8
            r4 = r12
            r8 = r19
            r18 = -1
            r19 = 1048575(0xfffff, float:1.469367E-39)
            r12 = r29
            r13 = r33
            if (r7 != 0) goto L_0x0316
            int r7 = com.google.android.gms.internal.ads.zzeen.zzb(r12, r3, r13)
            long r2 = r13.zzhzp
            r0 = r10
            r1 = r28
            r20 = r2
            r2 = r4
            r4 = r20
            r0.putLong(r1, r2, r4)
        L_0x02cc:
            r5 = r6 | r22
            r6 = r30
            r0 = r7
            goto L_0x030e
        L_0x02d2:
            r9 = r0
            r11 = r2
            r30 = r8
            r4 = r12
            r8 = r19
            r18 = -1
            r19 = 1048575(0xfffff, float:1.469367E-39)
            r12 = r29
            r13 = r33
            if (r7 != r1) goto L_0x0316
            float r0 = com.google.android.gms.internal.ads.zzeen.zzj(r12, r3)
            com.google.android.gms.internal.ads.zzejf.zza((java.lang.Object) r14, (long) r4, (float) r0)
            int r0 = r3 + 4
            goto L_0x030a
        L_0x02ee:
            r9 = r0
            r11 = r2
            r30 = r8
            r4 = r12
            r8 = r19
            r0 = 1
            r18 = -1
            r19 = 1048575(0xfffff, float:1.469367E-39)
            r12 = r29
            r13 = r33
            if (r7 != r0) goto L_0x0316
            double r0 = com.google.android.gms.internal.ads.zzeen.zzi(r12, r3)
            com.google.android.gms.internal.ads.zzejf.zza((java.lang.Object) r14, (long) r4, (double) r0)
            int r0 = r3 + 8
        L_0x030a:
            r5 = r6 | r22
            r6 = r30
        L_0x030e:
            r3 = r8
            r1 = r9
            r2 = r11
            r9 = r13
        L_0x0312:
            r13 = r31
            goto L_0x04c7
        L_0x0316:
            r7 = r32
            r2 = r3
            r22 = r6
            r26 = r10
            r17 = r11
            r6 = r30
            r30 = r9
            goto L_0x0428
        L_0x0325:
            r4 = r2
            r1 = r12
            r8 = r19
            r18 = -1
            r19 = 1048575(0xfffff, float:1.469367E-39)
            r12 = r29
            r13 = r9
            r9 = r0
            r0 = 27
            if (r11 != r0) goto L_0x038c
            r0 = 2
            if (r7 != r0) goto L_0x037d
            java.lang.Object r0 = r10.getObject(r14, r1)
            com.google.android.gms.internal.ads.zzegm r0 = (com.google.android.gms.internal.ads.zzegm) r0
            boolean r7 = r0.zzbcy()
            if (r7 != 0) goto L_0x0357
            int r7 = r0.size()
            if (r7 != 0) goto L_0x034e
            r7 = 10
            goto L_0x0350
        L_0x034e:
            int r7 = r7 << 1
        L_0x0350:
            com.google.android.gms.internal.ads.zzegm r0 = r0.zzfs(r7)
            r10.putObject(r14, r1, r0)
        L_0x0357:
            r7 = r0
            com.google.android.gms.internal.ads.zzeih r0 = r15.zzhe(r4)
            r1 = r8
            r2 = r29
            r17 = r4
            r4 = r31
            r22 = r5
            r5 = r7
            r23 = r6
            r6 = r33
            int r0 = com.google.android.gms.internal.ads.zzeen.zza(r0, r1, r2, r3, r4, r5, r6)
            r11 = r32
            r3 = r8
            r1 = r9
            r9 = r13
            r2 = r17
            r5 = r22
            r6 = r23
            r13 = r31
            goto L_0x0019
        L_0x037d:
            r17 = r4
            r22 = r5
            r23 = r6
            r15 = r3
            r19 = r8
            r30 = r9
            r26 = r10
            goto L_0x0401
        L_0x038c:
            r17 = r4
            r22 = r5
            r23 = r6
            r0 = 49
            if (r11 > r0) goto L_0x03d9
            r6 = r20
            long r5 = (long) r6
            r0 = r27
            r24 = r1
            r1 = r28
            r2 = r29
            r4 = r3
            r15 = r4
            r4 = r31
            r20 = r5
            r5 = r8
            r6 = r9
            r19 = r8
            r8 = r17
            r30 = r9
            r26 = r10
            r9 = r20
            r12 = r24
            r14 = r33
            int r0 = r0.zza(r1, (byte[]) r2, (int) r3, (int) r4, (int) r5, (int) r6, (int) r7, (int) r8, (long) r9, (int) r11, (long) r12, (com.google.android.gms.internal.ads.zzeem) r14)
            if (r0 != r15) goto L_0x03bf
            goto L_0x0424
        L_0x03bf:
            r15 = r27
            r14 = r28
            r12 = r29
            r1 = r30
            r13 = r31
            r11 = r32
            r9 = r33
            r2 = r17
            r3 = r19
            r5 = r22
            r6 = r23
            r10 = r26
            goto L_0x0019
        L_0x03d9:
            r24 = r1
            r15 = r3
            r19 = r8
            r30 = r9
            r26 = r10
            r6 = r20
            r0 = 50
            if (r11 != r0) goto L_0x0409
            r0 = 2
            if (r7 != r0) goto L_0x0401
            r0 = r27
            r1 = r28
            r2 = r29
            r3 = r15
            r4 = r31
            r5 = r17
            r6 = r24
            r8 = r33
            int r0 = r0.zza(r1, (byte[]) r2, (int) r3, (int) r4, (int) r5, (long) r6, (com.google.android.gms.internal.ads.zzeem) r8)
            if (r0 != r15) goto L_0x03bf
            goto L_0x0424
        L_0x0401:
            r7 = r32
            r2 = r15
        L_0x0404:
            r8 = r19
            r6 = r23
            goto L_0x0428
        L_0x0409:
            r0 = r27
            r1 = r28
            r2 = r29
            r3 = r15
            r4 = r31
            r5 = r19
            r8 = r6
            r6 = r30
            r9 = r11
            r10 = r24
            r12 = r17
            r13 = r33
            int r0 = r0.zza(r1, (byte[]) r2, (int) r3, (int) r4, (int) r5, (int) r6, (int) r7, (int) r8, (int) r9, (long) r10, (int) r12, (com.google.android.gms.internal.ads.zzeem) r13)
            if (r0 != r15) goto L_0x04af
        L_0x0424:
            r7 = r32
            r2 = r0
            goto L_0x0404
        L_0x0428:
            if (r8 != r7) goto L_0x0437
            if (r7 != 0) goto L_0x042d
            goto L_0x0437
        L_0x042d:
            r9 = r27
            r12 = r28
            r0 = r2
            r3 = r8
            r5 = r22
            goto L_0x04d4
        L_0x0437:
            r9 = r27
            boolean r0 = r9.zzigx
            if (r0 == 0) goto L_0x0488
            r10 = r33
            com.google.android.gms.internal.ads.zzefo r0 = r10.zzhzr
            com.google.android.gms.internal.ads.zzefo r1 = com.google.android.gms.internal.ads.zzefo.zzbeq()
            if (r0 == r1) goto L_0x0483
            com.google.android.gms.internal.ads.zzehl r0 = r9.zzigw
            com.google.android.gms.internal.ads.zzefo r1 = r10.zzhzr
            r11 = r30
            com.google.android.gms.internal.ads.zzegb$zzf r0 = r1.zza(r0, r11)
            if (r0 != 0) goto L_0x0473
            com.google.android.gms.internal.ads.zzejc r4 = zzau(r28)
            r0 = r8
            r1 = r29
            r3 = r31
            r5 = r33
            int r0 = com.google.android.gms.internal.ads.zzeen.zza((int) r0, (byte[]) r1, (int) r2, (int) r3, (com.google.android.gms.internal.ads.zzejc) r4, (com.google.android.gms.internal.ads.zzeem) r5)
            r14 = r28
            r12 = r29
            r13 = r31
            r3 = r8
            r15 = r9
            r9 = r10
            r1 = r11
            r2 = r17
            r5 = r22
            r10 = r26
            goto L_0x04ac
        L_0x0473:
            r12 = r28
            r0 = r12
            com.google.android.gms.internal.ads.zzegb$zzd r0 = (com.google.android.gms.internal.ads.zzegb.zzd) r0
            r0.zzbfr()
            com.google.android.gms.internal.ads.zzefu<com.google.android.gms.internal.ads.zzegb$zzc> r0 = r0.zzien
            java.lang.NoSuchMethodError r0 = new java.lang.NoSuchMethodError
            r0.<init>()
            throw r0
        L_0x0483:
            r12 = r28
            r11 = r30
            goto L_0x048e
        L_0x0488:
            r12 = r28
            r11 = r30
            r10 = r33
        L_0x048e:
            com.google.android.gms.internal.ads.zzejc r4 = zzau(r28)
            r0 = r8
            r1 = r29
            r3 = r31
            r5 = r33
            int r0 = com.google.android.gms.internal.ads.zzeen.zza((int) r0, (byte[]) r1, (int) r2, (int) r3, (com.google.android.gms.internal.ads.zzejc) r4, (com.google.android.gms.internal.ads.zzeem) r5)
            r13 = r31
            r3 = r8
            r15 = r9
            r9 = r10
            r1 = r11
            r14 = r12
            r2 = r17
            r5 = r22
            r10 = r26
            r12 = r29
        L_0x04ac:
            r11 = r7
            goto L_0x0019
        L_0x04af:
            r11 = r30
            r8 = r19
            r15 = r27
            r14 = r28
            r12 = r29
            r13 = r31
            r9 = r33
            r3 = r8
            r1 = r11
            r2 = r17
            r5 = r22
            r6 = r23
            r10 = r26
        L_0x04c7:
            r11 = r32
            goto L_0x0019
        L_0x04cb:
            r22 = r5
            r23 = r6
            r26 = r10
            r7 = r11
            r12 = r14
            r9 = r15
        L_0x04d4:
            r1 = 1048575(0xfffff, float:1.469367E-39)
            if (r6 == r1) goto L_0x04df
            long r1 = (long) r6
            r4 = r26
            r4.putInt(r12, r1, r5)
        L_0x04df:
            r1 = 0
            int r2 = r9.zzihc
        L_0x04e2:
            int r4 = r9.zzihd
            if (r2 >= r4) goto L_0x04f5
            int[] r4 = r9.zzihb
            r4 = r4[r2]
            com.google.android.gms.internal.ads.zzeiz<?, ?> r5 = r9.zzihg
            java.lang.Object r1 = r9.zza((java.lang.Object) r12, (int) r4, r1, r5)
            com.google.android.gms.internal.ads.zzejc r1 = (com.google.android.gms.internal.ads.zzejc) r1
            int r2 = r2 + 1
            goto L_0x04e2
        L_0x04f5:
            if (r1 == 0) goto L_0x04fc
            com.google.android.gms.internal.ads.zzeiz<?, ?> r2 = r9.zzihg
            r2.zzj(r12, r1)
        L_0x04fc:
            if (r7 != 0) goto L_0x0508
            r1 = r31
            if (r0 != r1) goto L_0x0503
            goto L_0x050e
        L_0x0503:
            com.google.android.gms.internal.ads.zzegl r0 = com.google.android.gms.internal.ads.zzegl.zzbgb()
            throw r0
        L_0x0508:
            r1 = r31
            if (r0 > r1) goto L_0x050f
            if (r3 != r7) goto L_0x050f
        L_0x050e:
            return r0
        L_0x050f:
            com.google.android.gms.internal.ads.zzegl r0 = com.google.android.gms.internal.ads.zzegl.zzbgb()
            goto L_0x0515
        L_0x0514:
            throw r0
        L_0x0515:
            goto L_0x0514
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzehp.zza(java.lang.Object, byte[], int, int, int, com.google.android.gms.internal.ads.zzeem):int");
    }

    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r17v0, resolved type: byte} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r0v9, resolved type: byte} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r17v4, resolved type: byte} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r17v5, resolved type: byte} */
    /* JADX WARNING: Code restructure failed: missing block: B:100:0x02dc, code lost:
        if (r0 == r15) goto L_0x0348;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:107:0x0323, code lost:
        if (r0 == r15) goto L_0x0348;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:111:0x0346, code lost:
        if (r0 == r15) goto L_0x0348;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:112:0x0348, code lost:
        r2 = r0;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:68:0x01ca, code lost:
        r5 = r4;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:81:0x0234, code lost:
        r6 = r6 | r23;
        r9 = r7;
        r2 = r10;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:82:0x0239, code lost:
        r2 = r5;
        r29 = r7;
        r18 = r10;
        r7 = r20;
     */
    /* JADX WARNING: Multi-variable type inference failed */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final void zza(T r31, byte[] r32, int r33, int r34, com.google.android.gms.internal.ads.zzeem r35) throws java.io.IOException {
        /*
            r30 = this;
            r15 = r30
            r14 = r31
            r12 = r32
            r13 = r34
            r11 = r35
            boolean r0 = r15.zzigz
            if (r0 == 0) goto L_0x038d
            sun.misc.Unsafe r9 = zzhni
            r10 = -1
            r16 = 0
            r8 = 1048575(0xfffff, float:1.469367E-39)
            r0 = r33
            r1 = -1
            r2 = 0
            r6 = 0
            r7 = 1048575(0xfffff, float:1.469367E-39)
        L_0x001e:
            if (r0 >= r13) goto L_0x0370
            int r3 = r0 + 1
            byte r0 = r12[r0]
            if (r0 >= 0) goto L_0x0030
            int r0 = com.google.android.gms.internal.ads.zzeen.zza((int) r0, (byte[]) r12, (int) r3, (com.google.android.gms.internal.ads.zzeem) r11)
            int r3 = r11.zzhzo
            r4 = r0
            r17 = r3
            goto L_0x0033
        L_0x0030:
            r17 = r0
            r4 = r3
        L_0x0033:
            int r5 = r17 >>> 3
            r3 = r17 & 7
            if (r5 <= r1) goto L_0x0040
            int r2 = r2 / 3
            int r0 = r15.zzan(r5, r2)
            goto L_0x0044
        L_0x0040:
            int r0 = r15.zzhk(r5)
        L_0x0044:
            r2 = r0
            if (r2 != r10) goto L_0x0052
            r2 = r4
            r25 = r5
            r29 = r9
            r18 = 0
        L_0x004e:
            r20 = -1
            goto L_0x034a
        L_0x0052:
            int[] r0 = r15.zzigs
            int r1 = r2 + 1
            r1 = r0[r1]
            r18 = 267386880(0xff00000, float:2.3665827E-29)
            r18 = r1 & r18
            int r10 = r18 >>> 20
            r33 = r5
            r5 = r1 & r8
            r18 = r9
            long r8 = (long) r5
            r5 = 17
            r21 = r1
            if (r10 > r5) goto L_0x0242
            int r5 = r2 + 2
            r0 = r0[r5]
            int r5 = r0 >>> 20
            r1 = 1
            int r23 = r1 << r5
            r5 = 1048575(0xfffff, float:1.469367E-39)
            r0 = r0 & r5
            r20 = r2
            if (r0 == r7) goto L_0x0092
            if (r7 == r5) goto L_0x0085
            long r1 = (long) r7
            r7 = r18
            r7.putInt(r14, r1, r6)
            goto L_0x0087
        L_0x0085:
            r7 = r18
        L_0x0087:
            if (r0 == r5) goto L_0x008f
            long r1 = (long) r0
            int r1 = r7.getInt(r14, r1)
            r6 = r1
        L_0x008f:
            r2 = r7
            r7 = r0
            goto L_0x0094
        L_0x0092:
            r2 = r18
        L_0x0094:
            r0 = 5
            switch(r10) {
                case 0: goto L_0x021d;
                case 1: goto L_0x0206;
                case 2: goto L_0x01e4;
                case 3: goto L_0x01e4;
                case 4: goto L_0x01cd;
                case 5: goto L_0x01ab;
                case 6: goto L_0x0194;
                case 7: goto L_0x0174;
                case 8: goto L_0x0151;
                case 9: goto L_0x0124;
                case 10: goto L_0x010c;
                case 11: goto L_0x01cd;
                case 12: goto L_0x00f5;
                case 13: goto L_0x0194;
                case 14: goto L_0x01ab;
                case 15: goto L_0x00da;
                case 16: goto L_0x00a5;
                default: goto L_0x0098;
            }
        L_0x0098:
            r25 = r33
            r5 = r4
            r10 = r20
            r26 = 1048575(0xfffff, float:1.469367E-39)
            r20 = r7
            r7 = r2
            goto L_0x0239
        L_0x00a5:
            if (r3 != 0) goto L_0x00cc
            int r10 = com.google.android.gms.internal.ads.zzeen.zzb(r12, r4, r11)
            long r0 = r11.zzhzp
            long r17 = com.google.android.gms.internal.ads.zzefc.zzfh(r0)
            r0 = r2
            r1 = r31
            r4 = r20
            r20 = r7
            r7 = r2
            r2 = r8
            r25 = r33
            r8 = r4
            r26 = 1048575(0xfffff, float:1.469367E-39)
            r4 = r17
            r0.putLong(r1, r2, r4)
            r6 = r6 | r23
            r9 = r7
            r2 = r8
            r0 = r10
            goto L_0x028c
        L_0x00cc:
            r25 = r33
            r8 = r20
            r26 = 1048575(0xfffff, float:1.469367E-39)
            r20 = r7
            r7 = r2
            r5 = r4
            r10 = r8
            goto L_0x0239
        L_0x00da:
            r25 = r33
            r10 = r20
            r26 = 1048575(0xfffff, float:1.469367E-39)
            r20 = r7
            r7 = r2
            if (r3 != 0) goto L_0x01ca
            int r0 = com.google.android.gms.internal.ads.zzeen.zza(r12, r4, r11)
            int r1 = r11.zzhzo
            int r1 = com.google.android.gms.internal.ads.zzefc.zzgb(r1)
            r7.putInt(r14, r8, r1)
            goto L_0x0234
        L_0x00f5:
            r25 = r33
            r10 = r20
            r26 = 1048575(0xfffff, float:1.469367E-39)
            r20 = r7
            r7 = r2
            if (r3 != 0) goto L_0x01ca
            int r0 = com.google.android.gms.internal.ads.zzeen.zza(r12, r4, r11)
            int r1 = r11.zzhzo
            r7.putInt(r14, r8, r1)
            goto L_0x0234
        L_0x010c:
            r25 = r33
            r10 = r20
            r0 = 2
            r26 = 1048575(0xfffff, float:1.469367E-39)
            r20 = r7
            r7 = r2
            if (r3 != r0) goto L_0x01ca
            int r0 = com.google.android.gms.internal.ads.zzeen.zze(r12, r4, r11)
            java.lang.Object r1 = r11.zzhzq
            r7.putObject(r14, r8, r1)
            goto L_0x0234
        L_0x0124:
            r25 = r33
            r10 = r20
            r0 = 2
            r26 = 1048575(0xfffff, float:1.469367E-39)
            r20 = r7
            r7 = r2
            if (r3 != r0) goto L_0x01ca
            com.google.android.gms.internal.ads.zzeih r0 = r15.zzhe(r10)
            int r0 = com.google.android.gms.internal.ads.zzeen.zza((com.google.android.gms.internal.ads.zzeih) r0, (byte[]) r12, (int) r4, (int) r13, (com.google.android.gms.internal.ads.zzeem) r11)
            java.lang.Object r1 = r7.getObject(r14, r8)
            if (r1 != 0) goto L_0x0146
            java.lang.Object r1 = r11.zzhzq
            r7.putObject(r14, r8, r1)
            goto L_0x0234
        L_0x0146:
            java.lang.Object r2 = r11.zzhzq
            java.lang.Object r1 = com.google.android.gms.internal.ads.zzegd.zze(r1, r2)
            r7.putObject(r14, r8, r1)
            goto L_0x0234
        L_0x0151:
            r25 = r33
            r10 = r20
            r0 = 2
            r26 = 1048575(0xfffff, float:1.469367E-39)
            r20 = r7
            r7 = r2
            if (r3 != r0) goto L_0x01ca
            r0 = 536870912(0x20000000, float:1.0842022E-19)
            r0 = r21 & r0
            if (r0 != 0) goto L_0x0169
            int r0 = com.google.android.gms.internal.ads.zzeen.zzc(r12, r4, r11)
            goto L_0x016d
        L_0x0169:
            int r0 = com.google.android.gms.internal.ads.zzeen.zzd(r12, r4, r11)
        L_0x016d:
            java.lang.Object r1 = r11.zzhzq
            r7.putObject(r14, r8, r1)
            goto L_0x0234
        L_0x0174:
            r25 = r33
            r10 = r20
            r26 = 1048575(0xfffff, float:1.469367E-39)
            r20 = r7
            r7 = r2
            if (r3 != 0) goto L_0x01ca
            int r0 = com.google.android.gms.internal.ads.zzeen.zzb(r12, r4, r11)
            long r1 = r11.zzhzp
            r3 = 0
            int r5 = (r1 > r3 ? 1 : (r1 == r3 ? 0 : -1))
            if (r5 == 0) goto L_0x018e
            r1 = 1
            goto L_0x018f
        L_0x018e:
            r1 = 0
        L_0x018f:
            com.google.android.gms.internal.ads.zzejf.zza((java.lang.Object) r14, (long) r8, (boolean) r1)
            goto L_0x0234
        L_0x0194:
            r25 = r33
            r10 = r20
            r26 = 1048575(0xfffff, float:1.469367E-39)
            r20 = r7
            r7 = r2
            if (r3 != r0) goto L_0x01ca
            int r0 = com.google.android.gms.internal.ads.zzeen.zzg(r12, r4)
            r7.putInt(r14, r8, r0)
            int r0 = r4 + 4
            goto L_0x0234
        L_0x01ab:
            r25 = r33
            r10 = r20
            r0 = 1
            r26 = 1048575(0xfffff, float:1.469367E-39)
            r20 = r7
            r7 = r2
            if (r3 != r0) goto L_0x01ca
            long r17 = com.google.android.gms.internal.ads.zzeen.zzh(r12, r4)
            r0 = r7
            r1 = r31
            r2 = r8
            r8 = r4
            r4 = r17
            r0.putLong(r1, r2, r4)
            int r0 = r8 + 8
            goto L_0x0234
        L_0x01ca:
            r5 = r4
            goto L_0x0239
        L_0x01cd:
            r25 = r33
            r5 = r4
            r10 = r20
            r26 = 1048575(0xfffff, float:1.469367E-39)
            r20 = r7
            r7 = r2
            if (r3 != 0) goto L_0x0239
            int r0 = com.google.android.gms.internal.ads.zzeen.zza(r12, r5, r11)
            int r1 = r11.zzhzo
            r7.putInt(r14, r8, r1)
            goto L_0x0234
        L_0x01e4:
            r25 = r33
            r5 = r4
            r10 = r20
            r26 = 1048575(0xfffff, float:1.469367E-39)
            r20 = r7
            r7 = r2
            if (r3 != 0) goto L_0x0239
            int r17 = com.google.android.gms.internal.ads.zzeen.zzb(r12, r5, r11)
            long r4 = r11.zzhzp
            r0 = r7
            r1 = r31
            r2 = r8
            r0.putLong(r1, r2, r4)
            r6 = r6 | r23
            r9 = r7
            r2 = r10
            r0 = r17
            goto L_0x028c
        L_0x0206:
            r25 = r33
            r5 = r4
            r10 = r20
            r26 = 1048575(0xfffff, float:1.469367E-39)
            r20 = r7
            r7 = r2
            if (r3 != r0) goto L_0x0239
            float r0 = com.google.android.gms.internal.ads.zzeen.zzj(r12, r5)
            com.google.android.gms.internal.ads.zzejf.zza((java.lang.Object) r14, (long) r8, (float) r0)
            int r0 = r5 + 4
            goto L_0x0234
        L_0x021d:
            r25 = r33
            r5 = r4
            r10 = r20
            r0 = 1
            r26 = 1048575(0xfffff, float:1.469367E-39)
            r20 = r7
            r7 = r2
            if (r3 != r0) goto L_0x0239
            double r0 = com.google.android.gms.internal.ads.zzeen.zzi(r12, r5)
            com.google.android.gms.internal.ads.zzejf.zza((java.lang.Object) r14, (long) r8, (double) r0)
            int r0 = r5 + 8
        L_0x0234:
            r6 = r6 | r23
            r9 = r7
            r2 = r10
            goto L_0x028c
        L_0x0239:
            r2 = r5
            r29 = r7
            r18 = r10
            r7 = r20
            goto L_0x004e
        L_0x0242:
            r25 = r33
            r5 = r4
            r20 = r7
            r7 = r18
            r26 = 1048575(0xfffff, float:1.469367E-39)
            r4 = r2
            r0 = 27
            if (r10 != r0) goto L_0x029f
            r0 = 2
            if (r3 != r0) goto L_0x0292
            java.lang.Object r0 = r7.getObject(r14, r8)
            com.google.android.gms.internal.ads.zzegm r0 = (com.google.android.gms.internal.ads.zzegm) r0
            boolean r1 = r0.zzbcy()
            if (r1 != 0) goto L_0x0272
            int r1 = r0.size()
            if (r1 != 0) goto L_0x0269
            r1 = 10
            goto L_0x026b
        L_0x0269:
            int r1 = r1 << 1
        L_0x026b:
            com.google.android.gms.internal.ads.zzegm r0 = r0.zzfs(r1)
            r7.putObject(r14, r8, r0)
        L_0x0272:
            r8 = r0
            com.google.android.gms.internal.ads.zzeih r0 = r15.zzhe(r4)
            r1 = r17
            r2 = r32
            r3 = r5
            r18 = r4
            r4 = r34
            r5 = r8
            r8 = r6
            r6 = r35
            int r0 = com.google.android.gms.internal.ads.zzeen.zza(r0, r1, r2, r3, r4, r5, r6)
            r9 = r7
            r6 = r8
            r2 = r18
        L_0x028c:
            r7 = r20
            r1 = r25
            goto L_0x036a
        L_0x0292:
            r18 = r4
            r15 = r5
            r27 = r6
            r29 = r7
            r28 = r20
            r20 = -1
            goto L_0x0326
        L_0x029f:
            r18 = r4
            r0 = 49
            if (r10 > r0) goto L_0x02f4
            r1 = r21
            long r1 = (long) r1
            r0 = r30
            r21 = r1
            r1 = r31
            r2 = r32
            r4 = r3
            r3 = r5
            r33 = r4
            r4 = r34
            r15 = r5
            r5 = r17
            r27 = r6
            r6 = r25
            r28 = r20
            r20 = r7
            r7 = r33
            r23 = r8
            r9 = 1048575(0xfffff, float:1.469367E-39)
            r8 = r18
            r19 = r10
            r29 = r20
            r20 = -1
            r9 = r21
            r11 = r19
            r12 = r23
            r14 = r35
            int r0 = r0.zza(r1, (byte[]) r2, (int) r3, (int) r4, (int) r5, (int) r6, (int) r7, (int) r8, (long) r9, (int) r11, (long) r12, (com.google.android.gms.internal.ads.zzeem) r14)
            if (r0 != r15) goto L_0x02e0
            goto L_0x0348
        L_0x02e0:
            r15 = r30
            r14 = r31
            r12 = r32
            r13 = r34
            r11 = r35
            r2 = r18
            r1 = r25
            r6 = r27
            r7 = r28
            goto L_0x0368
        L_0x02f4:
            r33 = r3
            r15 = r5
            r27 = r6
            r29 = r7
            r23 = r8
            r19 = r10
            r28 = r20
            r1 = r21
            r20 = -1
            r0 = 50
            r9 = r19
            if (r9 != r0) goto L_0x032c
            r7 = r33
            r0 = 2
            if (r7 != r0) goto L_0x0326
            r0 = r30
            r1 = r31
            r2 = r32
            r3 = r15
            r4 = r34
            r5 = r18
            r6 = r23
            r8 = r35
            int r0 = r0.zza(r1, (byte[]) r2, (int) r3, (int) r4, (int) r5, (long) r6, (com.google.android.gms.internal.ads.zzeem) r8)
            if (r0 != r15) goto L_0x02e0
            goto L_0x0348
        L_0x0326:
            r2 = r15
        L_0x0327:
            r6 = r27
            r7 = r28
            goto L_0x034a
        L_0x032c:
            r7 = r33
            r0 = r30
            r8 = r1
            r1 = r31
            r2 = r32
            r3 = r15
            r4 = r34
            r5 = r17
            r6 = r25
            r10 = r23
            r12 = r18
            r13 = r35
            int r0 = r0.zza(r1, (byte[]) r2, (int) r3, (int) r4, (int) r5, (int) r6, (int) r7, (int) r8, (int) r9, (long) r10, (int) r12, (com.google.android.gms.internal.ads.zzeem) r13)
            if (r0 != r15) goto L_0x02e0
        L_0x0348:
            r2 = r0
            goto L_0x0327
        L_0x034a:
            com.google.android.gms.internal.ads.zzejc r4 = zzau(r31)
            r0 = r17
            r1 = r32
            r3 = r34
            r5 = r35
            int r0 = com.google.android.gms.internal.ads.zzeen.zza((int) r0, (byte[]) r1, (int) r2, (int) r3, (com.google.android.gms.internal.ads.zzejc) r4, (com.google.android.gms.internal.ads.zzeem) r5)
            r15 = r30
            r14 = r31
            r12 = r32
            r13 = r34
            r11 = r35
            r2 = r18
            r1 = r25
        L_0x0368:
            r9 = r29
        L_0x036a:
            r8 = 1048575(0xfffff, float:1.469367E-39)
            r10 = -1
            goto L_0x001e
        L_0x0370:
            r27 = r6
            r29 = r9
            r1 = 1048575(0xfffff, float:1.469367E-39)
            if (r7 == r1) goto L_0x0383
            long r1 = (long) r7
            r3 = r31
            r6 = r27
            r4 = r29
            r4.putInt(r3, r1, r6)
        L_0x0383:
            r4 = r34
            if (r0 != r4) goto L_0x0388
            return
        L_0x0388:
            com.google.android.gms.internal.ads.zzegl r0 = com.google.android.gms.internal.ads.zzegl.zzbgb()
            throw r0
        L_0x038d:
            r4 = r13
            r3 = r14
            r5 = 0
            r0 = r30
            r1 = r31
            r2 = r32
            r3 = r33
            r4 = r34
            r6 = r35
            r0.zza(r1, (byte[]) r2, (int) r3, (int) r4, (int) r5, (com.google.android.gms.internal.ads.zzeem) r6)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzehp.zza(java.lang.Object, byte[], int, int, com.google.android.gms.internal.ads.zzeem):void");
    }

    public final void zzaj(T t) {
        int i;
        int i2 = this.zzihc;
        while (true) {
            i = this.zzihd;
            if (i2 >= i) {
                break;
            }
            long zzhh = (long) (zzhh(this.zzihb[i2]) & 1048575);
            Object zzp = zzejf.zzp(t, zzhh);
            if (zzp != null) {
                zzejf.zza((Object) t, zzhh, this.zzihi.zzar(zzp));
            }
            i2++;
        }
        int length = this.zzihb.length;
        while (i < length) {
            this.zzihf.zzb(t, (long) this.zzihb[i]);
            i++;
        }
        this.zzihg.zzaj(t);
        if (this.zzigx) {
            this.zzihh.zzaj(t);
        }
    }

    private final <UT, UB> UB zza(Object obj, int i, UB ub, zzeiz<UT, UB> zzeiz) {
        zzegi zzhg;
        int i2 = this.zzigs[i];
        Object zzp = zzejf.zzp(obj, (long) (zzhh(i) & 1048575));
        if (zzp == null || (zzhg = zzhg(i)) == null) {
            return ub;
        }
        return zza(i, i2, this.zzihi.zzan(zzp), zzhg, ub, zzeiz);
    }

    private final <K, V, UT, UB> UB zza(int i, int i2, Map<K, V> map, zzegi zzegi, UB ub, zzeiz<UT, UB> zzeiz) {
        zzehg<?, ?> zzao = this.zzihi.zzao(zzhf(i));
        Iterator<Map.Entry<K, V>> it = map.entrySet().iterator();
        while (it.hasNext()) {
            Map.Entry next = it.next();
            if (!zzegi.zzi(((Integer) next.getValue()).intValue())) {
                if (ub == null) {
                    ub = zzeiz.zzbhr();
                }
                zzeez zzfv = zzeer.zzfv(zzehd.zza(zzao, next.getKey(), next.getValue()));
                try {
                    zzehd.zza(zzfv.zzbdl(), zzao, next.getKey(), next.getValue());
                    zzeiz.zza(ub, i2, zzfv.zzbdk());
                    it.remove();
                } catch (IOException e) {
                    throw new RuntimeException(e);
                }
            }
        }
        return ub;
    }

    public final boolean zzav(T t) {
        int i;
        int i2;
        T t2 = t;
        int i3 = 1048575;
        int i4 = 0;
        int i5 = 0;
        while (true) {
            boolean z = true;
            if (i5 >= this.zzihc) {
                return !this.zzigx || this.zzihh.zzah(t2).isInitialized();
            }
            int i6 = this.zzihb[i5];
            int i7 = this.zzigs[i6];
            int zzhh = zzhh(i6);
            int i8 = this.zzigs[i6 + 2];
            int i9 = i8 & 1048575;
            int i10 = 1 << (i8 >>> 20);
            if (i9 != i3) {
                if (i9 != 1048575) {
                    i4 = zzhni.getInt(t2, (long) i9);
                }
                i = i4;
                i2 = i9;
            } else {
                i2 = i3;
                i = i4;
            }
            if (((268435456 & zzhh) != 0) && !zza(t, i6, i2, i, i10)) {
                return false;
            }
            int i11 = (267386880 & zzhh) >>> 20;
            if (i11 != 9 && i11 != 17) {
                if (i11 != 27) {
                    if (i11 == 60 || i11 == 68) {
                        if (zza(t2, i7, i6) && !zza((Object) t2, zzhh, zzhe(i6))) {
                            return false;
                        }
                    } else if (i11 != 49) {
                        if (i11 != 50) {
                            continue;
                        } else {
                            Map<?, ?> zzap = this.zzihi.zzap(zzejf.zzp(t2, (long) (zzhh & 1048575)));
                            if (!zzap.isEmpty()) {
                                if (this.zzihi.zzao(zzhf(i6)).zzigo.zzbib() == zzejt.MESSAGE) {
                                    zzeih<?> zzeih = null;
                                    Iterator<?> it = zzap.values().iterator();
                                    while (true) {
                                        if (!it.hasNext()) {
                                            break;
                                        }
                                        Object next = it.next();
                                        if (zzeih == null) {
                                            zzeih = zzeia.zzbgz().zzh(next.getClass());
                                        }
                                        if (!zzeih.zzav(next)) {
                                            z = false;
                                            break;
                                        }
                                    }
                                }
                            }
                            if (!z) {
                                return false;
                            }
                        }
                    }
                }
                List list = (List) zzejf.zzp(t2, (long) (zzhh & 1048575));
                if (!list.isEmpty()) {
                    zzeih zzhe = zzhe(i6);
                    int i12 = 0;
                    while (true) {
                        if (i12 >= list.size()) {
                            break;
                        } else if (!zzhe.zzav(list.get(i12))) {
                            z = false;
                            break;
                        } else {
                            i12++;
                        }
                    }
                }
                if (!z) {
                    return false;
                }
            } else if (zza(t, i6, i2, i, i10) && !zza((Object) t2, zzhh, zzhe(i6))) {
                return false;
            }
            i5++;
            i3 = i2;
            i4 = i;
        }
    }

    private static boolean zza(Object obj, int i, zzeih zzeih) {
        return zzeih.zzav(zzejf.zzp(obj, (long) (i & 1048575)));
    }

    private static void zza(int i, Object obj, zzejw zzejw) throws IOException {
        if (obj instanceof String) {
            zzejw.zzk(i, (String) obj);
        } else {
            zzejw.zza(i, (zzeer) obj);
        }
    }

    private final void zza(Object obj, int i, zzeib zzeib) throws IOException {
        if (zzhj(i)) {
            zzejf.zza(obj, (long) (i & 1048575), (Object) zzeib.zzbdt());
        } else if (this.zzigy) {
            zzejf.zza(obj, (long) (i & 1048575), (Object) zzeib.readString());
        } else {
            zzejf.zza(obj, (long) (i & 1048575), (Object) zzeib.zzbdu());
        }
    }

    private final int zzhh(int i) {
        return this.zzigs[i + 1];
    }

    private final int zzhi(int i) {
        return this.zzigs[i + 2];
    }

    private static <T> double zzf(T t, long j) {
        return ((Double) zzejf.zzp(t, j)).doubleValue();
    }

    private static <T> float zzg(T t, long j) {
        return ((Float) zzejf.zzp(t, j)).floatValue();
    }

    private static <T> int zzh(T t, long j) {
        return ((Integer) zzejf.zzp(t, j)).intValue();
    }

    private static <T> long zzi(T t, long j) {
        return ((Long) zzejf.zzp(t, j)).longValue();
    }

    private static <T> boolean zzj(T t, long j) {
        return ((Boolean) zzejf.zzp(t, j)).booleanValue();
    }

    private final boolean zzc(T t, T t2, int i) {
        return zze(t, i) == zze(t2, i);
    }

    private final boolean zza(T t, int i, int i2, int i3, int i4) {
        if (i2 == 1048575) {
            return zze(t, i);
        }
        return (i3 & i4) != 0;
    }

    private final boolean zze(T t, int i) {
        int zzhi = zzhi(i);
        long j = (long) (zzhi & 1048575);
        if (j == 1048575) {
            int zzhh = zzhh(i);
            long j2 = (long) (zzhh & 1048575);
            switch ((zzhh & 267386880) >>> 20) {
                case 0:
                    return zzejf.zzo(t, j2) != 0.0d;
                case 1:
                    return zzejf.zzn(t, j2) != 0.0f;
                case 2:
                    return zzejf.zzl(t, j2) != 0;
                case 3:
                    return zzejf.zzl(t, j2) != 0;
                case 4:
                    return zzejf.zzk(t, j2) != 0;
                case 5:
                    return zzejf.zzl(t, j2) != 0;
                case 6:
                    return zzejf.zzk(t, j2) != 0;
                case 7:
                    return zzejf.zzm(t, j2);
                case 8:
                    Object zzp = zzejf.zzp(t, j2);
                    if (zzp instanceof String) {
                        return !((String) zzp).isEmpty();
                    }
                    if (zzp instanceof zzeer) {
                        return !zzeer.zzhzv.equals(zzp);
                    }
                    throw new IllegalArgumentException();
                case 9:
                    return zzejf.zzp(t, j2) != null;
                case 10:
                    return !zzeer.zzhzv.equals(zzejf.zzp(t, j2));
                case 11:
                    return zzejf.zzk(t, j2) != 0;
                case 12:
                    return zzejf.zzk(t, j2) != 0;
                case 13:
                    return zzejf.zzk(t, j2) != 0;
                case 14:
                    return zzejf.zzl(t, j2) != 0;
                case 15:
                    return zzejf.zzk(t, j2) != 0;
                case 16:
                    return zzejf.zzl(t, j2) != 0;
                case 17:
                    return zzejf.zzp(t, j2) != null;
                default:
                    throw new IllegalArgumentException();
            }
        } else {
            return (zzejf.zzk(t, j) & (1 << (zzhi >>> 20))) != 0;
        }
    }

    private final void zzf(T t, int i) {
        int zzhi = zzhi(i);
        long j = (long) (1048575 & zzhi);
        if (j != 1048575) {
            zzejf.zzb((Object) t, j, (1 << (zzhi >>> 20)) | zzejf.zzk(t, j));
        }
    }

    private final boolean zza(T t, int i, int i2) {
        return zzejf.zzk(t, (long) (zzhi(i2) & 1048575)) == i;
    }

    private final void zzb(T t, int i, int i2) {
        zzejf.zzb((Object) t, (long) (zzhi(i2) & 1048575), i);
    }

    private final int zzhk(int i) {
        if (i < this.zzigu || i > this.zzigv) {
            return -1;
        }
        return zzao(i, 0);
    }

    private final int zzan(int i, int i2) {
        if (i < this.zzigu || i > this.zzigv) {
            return -1;
        }
        return zzao(i, i2);
    }

    private final int zzao(int i, int i2) {
        int length = (this.zzigs.length / 3) - 1;
        while (i2 <= length) {
            int i3 = (length + i2) >>> 1;
            int i4 = i3 * 3;
            int i5 = this.zzigs[i4];
            if (i == i5) {
                return i4;
            }
            if (i < i5) {
                length = i3 - 1;
            } else {
                i2 = i3 + 1;
            }
        }
        return -1;
    }
}
