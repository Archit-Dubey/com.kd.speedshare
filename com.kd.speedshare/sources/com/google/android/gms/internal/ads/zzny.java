package com.google.android.gms.internal.ads;

import android.util.SparseArray;
import android.util.SparseBooleanArray;
import java.util.Map;

/* compiled from: com.google.android.gms:play-services-ads@@19.2.0 */
public abstract class zzny extends zzoe {
    private int zzahx = 0;
    private final SparseArray<Map<zznr, zzoa>> zzbhf = new SparseArray<>();
    private final SparseBooleanArray zzbhg = new SparseBooleanArray();
    private zzob zzbhh;

    /* access modifiers changed from: protected */
    public abstract zzod[] zza(zzhy[] zzhyArr, zznr[] zznrArr, int[][][] iArr) throws zzhb;

    public final void zzf(int i, boolean z) {
        if (this.zzbhg.get(i) != z) {
            this.zzbhg.put(i, z);
            invalidate();
        }
    }

    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r5v7, resolved type: java.lang.Object} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r6v6, resolved type: com.google.android.gms.internal.ads.zzoa} */
    /* JADX WARNING: Multi-variable type inference failed */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final com.google.android.gms.internal.ads.zzog zza(com.google.android.gms.internal.ads.zzhy[] r17, com.google.android.gms.internal.ads.zznr r18) throws com.google.android.gms.internal.ads.zzhb {
        /*
            r16 = this;
            r0 = r16
            r1 = r17
            r2 = r18
            int r3 = r1.length
            int r3 = r3 + 1
            int[] r3 = new int[r3]
            int r4 = r1.length
            int r4 = r4 + 1
            com.google.android.gms.internal.ads.zzno[][] r5 = new com.google.android.gms.internal.ads.zzno[r4][]
            int r6 = r1.length
            int r6 = r6 + 1
            int[][][] r11 = new int[r6][][]
            r7 = 0
        L_0x0016:
            if (r7 >= r4) goto L_0x0027
            int r8 = r2.length
            com.google.android.gms.internal.ads.zzno[] r8 = new com.google.android.gms.internal.ads.zzno[r8]
            r5[r7] = r8
            int r8 = r2.length
            int[][] r8 = new int[r8][]
            r11[r7] = r8
            int r7 = r7 + 1
            goto L_0x0016
        L_0x0027:
            int r4 = r1.length
            int[] r10 = new int[r4]
            r7 = 0
        L_0x002b:
            if (r7 >= r4) goto L_0x0038
            r8 = r1[r7]
            int r8 = r8.zzef()
            r10[r7] = r8
            int r7 = r7 + 1
            goto L_0x002b
        L_0x0038:
            r4 = 0
        L_0x0039:
            int r7 = r2.length
            if (r4 >= r7) goto L_0x0098
            com.google.android.gms.internal.ads.zzno r7 = r2.zzbd(r4)
            int r8 = r1.length
            r9 = 0
            r12 = 0
        L_0x0044:
            int r13 = r1.length
            if (r9 >= r13) goto L_0x0064
            r13 = r1[r9]
            r14 = 0
        L_0x004a:
            int r15 = r7.length
            if (r14 >= r15) goto L_0x0061
            com.google.android.gms.internal.ads.zzhq r15 = r7.zzbc(r14)
            int r15 = r13.zza(r15)
            r6 = 3
            r15 = r15 & r6
            if (r15 <= r12) goto L_0x005e
            r8 = r9
            if (r15 == r6) goto L_0x0064
            r12 = r15
        L_0x005e:
            int r14 = r14 + 1
            goto L_0x004a
        L_0x0061:
            int r9 = r9 + 1
            goto L_0x0044
        L_0x0064:
            int r6 = r1.length
            if (r8 != r6) goto L_0x006c
            int r6 = r7.length
            int[] r6 = new int[r6]
            goto L_0x0085
        L_0x006c:
            r6 = r1[r8]
            int r9 = r7.length
            int[] r9 = new int[r9]
            r12 = 0
        L_0x0073:
            int r13 = r7.length
            if (r12 >= r13) goto L_0x0084
            com.google.android.gms.internal.ads.zzhq r13 = r7.zzbc(r12)
            int r13 = r6.zza(r13)
            r9[r12] = r13
            int r12 = r12 + 1
            goto L_0x0073
        L_0x0084:
            r6 = r9
        L_0x0085:
            r9 = r3[r8]
            r12 = r5[r8]
            r12[r9] = r7
            r7 = r11[r8]
            r7[r9] = r6
            r6 = r3[r8]
            int r6 = r6 + 1
            r3[r8] = r6
            int r4 = r4 + 1
            goto L_0x0039
        L_0x0098:
            int r4 = r1.length
            com.google.android.gms.internal.ads.zznr[] r9 = new com.google.android.gms.internal.ads.zznr[r4]
            int r4 = r1.length
            int[] r8 = new int[r4]
            r4 = 0
        L_0x009f:
            int r6 = r1.length
            if (r4 >= r6) goto L_0x00c8
            r6 = r3[r4]
            com.google.android.gms.internal.ads.zznr r7 = new com.google.android.gms.internal.ads.zznr
            r12 = r5[r4]
            java.lang.Object[] r12 = java.util.Arrays.copyOf(r12, r6)
            com.google.android.gms.internal.ads.zzno[] r12 = (com.google.android.gms.internal.ads.zzno[]) r12
            r7.<init>(r12)
            r9[r4] = r7
            r7 = r11[r4]
            java.lang.Object[] r6 = java.util.Arrays.copyOf(r7, r6)
            int[][] r6 = (int[][]) r6
            r11[r4] = r6
            r6 = r1[r4]
            int r6 = r6.getTrackType()
            r8[r4] = r6
            int r4 = r4 + 1
            goto L_0x009f
        L_0x00c8:
            int r4 = r1.length
            r3 = r3[r4]
            com.google.android.gms.internal.ads.zznr r12 = new com.google.android.gms.internal.ads.zznr
            int r4 = r1.length
            r4 = r5[r4]
            java.lang.Object[] r3 = java.util.Arrays.copyOf(r4, r3)
            com.google.android.gms.internal.ads.zzno[] r3 = (com.google.android.gms.internal.ads.zzno[]) r3
            r12.<init>(r3)
            com.google.android.gms.internal.ads.zzod[] r3 = r0.zza(r1, r9, r11)
            r4 = 0
        L_0x00de:
            int r5 = r1.length
            r6 = 0
            if (r4 >= r5) goto L_0x010c
            android.util.SparseBooleanArray r5 = r0.zzbhg
            boolean r5 = r5.get(r4)
            if (r5 == 0) goto L_0x00ed
            r3[r4] = r6
            goto L_0x0103
        L_0x00ed:
            r5 = r9[r4]
            android.util.SparseArray<java.util.Map<com.google.android.gms.internal.ads.zznr, com.google.android.gms.internal.ads.zzoa>> r7 = r0.zzbhf
            java.lang.Object r7 = r7.get(r4)
            java.util.Map r7 = (java.util.Map) r7
            if (r7 != 0) goto L_0x00fa
            goto L_0x0101
        L_0x00fa:
            java.lang.Object r5 = r7.get(r5)
            r6 = r5
            com.google.android.gms.internal.ads.zzoa r6 = (com.google.android.gms.internal.ads.zzoa) r6
        L_0x0101:
            if (r6 != 0) goto L_0x0106
        L_0x0103:
            int r4 = r4 + 1
            goto L_0x00de
        L_0x0106:
            java.lang.NoSuchMethodError r1 = new java.lang.NoSuchMethodError
            r1.<init>()
            throw r1
        L_0x010c:
            com.google.android.gms.internal.ads.zzob r4 = new com.google.android.gms.internal.ads.zzob
            r7 = r4
            r7.<init>(r8, r9, r10, r11, r12)
            int r5 = r1.length
            com.google.android.gms.internal.ads.zzhx[] r5 = new com.google.android.gms.internal.ads.zzhx[r5]
            r7 = 0
        L_0x0116:
            int r8 = r1.length
            if (r7 >= r8) goto L_0x0126
            r8 = r3[r7]
            if (r8 == 0) goto L_0x0120
            com.google.android.gms.internal.ads.zzhx r8 = com.google.android.gms.internal.ads.zzhx.zzahw
            goto L_0x0121
        L_0x0120:
            r8 = r6
        L_0x0121:
            r5[r7] = r8
            int r7 = r7 + 1
            goto L_0x0116
        L_0x0126:
            com.google.android.gms.internal.ads.zzog r1 = new com.google.android.gms.internal.ads.zzog
            com.google.android.gms.internal.ads.zzof r6 = new com.google.android.gms.internal.ads.zzof
            r6.<init>(r3)
            r1.<init>(r2, r6, r4, r5)
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzny.zza(com.google.android.gms.internal.ads.zzhy[], com.google.android.gms.internal.ads.zznr):com.google.android.gms.internal.ads.zzog");
    }

    public final void zzd(Object obj) {
        this.zzbhh = (zzob) obj;
    }
}
