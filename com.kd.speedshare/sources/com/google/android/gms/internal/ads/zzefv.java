package com.google.android.gms.internal.ads;

import java.lang.reflect.Type;

/* compiled from: com.google.android.gms:play-services-ads-lite@@19.2.0 */
public enum zzefv {
    DOUBLE(0, zzefx.SCALAR, zzegn.DOUBLE),
    FLOAT(1, zzefx.SCALAR, zzegn.FLOAT),
    INT64(2, zzefx.SCALAR, zzegn.LONG),
    UINT64(3, zzefx.SCALAR, zzegn.LONG),
    INT32(4, zzefx.SCALAR, zzegn.INT),
    FIXED64(5, zzefx.SCALAR, zzegn.LONG),
    FIXED32(6, zzefx.SCALAR, zzegn.INT),
    BOOL(7, zzefx.SCALAR, zzegn.BOOLEAN),
    STRING(8, zzefx.SCALAR, zzegn.STRING),
    MESSAGE(9, zzefx.SCALAR, zzegn.MESSAGE),
    BYTES(10, zzefx.SCALAR, zzegn.BYTE_STRING),
    UINT32(11, zzefx.SCALAR, zzegn.INT),
    ENUM(12, zzefx.SCALAR, zzegn.ENUM),
    SFIXED32(13, zzefx.SCALAR, zzegn.INT),
    SFIXED64(14, zzefx.SCALAR, zzegn.LONG),
    SINT32(15, zzefx.SCALAR, zzegn.INT),
    SINT64(16, zzefx.SCALAR, zzegn.LONG),
    GROUP(17, zzefx.SCALAR, zzegn.MESSAGE),
    DOUBLE_LIST(18, zzefx.VECTOR, zzegn.DOUBLE),
    FLOAT_LIST(19, zzefx.VECTOR, zzegn.FLOAT),
    INT64_LIST(20, zzefx.VECTOR, zzegn.LONG),
    UINT64_LIST(21, zzefx.VECTOR, zzegn.LONG),
    INT32_LIST(22, zzefx.VECTOR, zzegn.INT),
    FIXED64_LIST(23, zzefx.VECTOR, zzegn.LONG),
    FIXED32_LIST(24, zzefx.VECTOR, zzegn.INT),
    BOOL_LIST(25, zzefx.VECTOR, zzegn.BOOLEAN),
    STRING_LIST(26, zzefx.VECTOR, zzegn.STRING),
    MESSAGE_LIST(27, zzefx.VECTOR, zzegn.MESSAGE),
    BYTES_LIST(28, zzefx.VECTOR, zzegn.BYTE_STRING),
    UINT32_LIST(29, zzefx.VECTOR, zzegn.INT),
    ENUM_LIST(30, zzefx.VECTOR, zzegn.ENUM),
    SFIXED32_LIST(31, zzefx.VECTOR, zzegn.INT),
    SFIXED64_LIST(32, zzefx.VECTOR, zzegn.LONG),
    SINT32_LIST(33, zzefx.VECTOR, zzegn.INT),
    SINT64_LIST(34, zzefx.VECTOR, zzegn.LONG),
    DOUBLE_LIST_PACKED(35, zzefx.PACKED_VECTOR, zzegn.DOUBLE),
    FLOAT_LIST_PACKED(36, zzefx.PACKED_VECTOR, zzegn.FLOAT),
    INT64_LIST_PACKED(37, zzefx.PACKED_VECTOR, zzegn.LONG),
    UINT64_LIST_PACKED(38, zzefx.PACKED_VECTOR, zzegn.LONG),
    INT32_LIST_PACKED(39, zzefx.PACKED_VECTOR, zzegn.INT),
    FIXED64_LIST_PACKED(40, zzefx.PACKED_VECTOR, zzegn.LONG),
    FIXED32_LIST_PACKED(41, zzefx.PACKED_VECTOR, zzegn.INT),
    BOOL_LIST_PACKED(42, zzefx.PACKED_VECTOR, zzegn.BOOLEAN),
    UINT32_LIST_PACKED(43, zzefx.PACKED_VECTOR, zzegn.INT),
    ENUM_LIST_PACKED(44, zzefx.PACKED_VECTOR, zzegn.ENUM),
    SFIXED32_LIST_PACKED(45, zzefx.PACKED_VECTOR, zzegn.INT),
    SFIXED64_LIST_PACKED(46, zzefx.PACKED_VECTOR, zzegn.LONG),
    SINT32_LIST_PACKED(47, zzefx.PACKED_VECTOR, zzegn.INT),
    SINT64_LIST_PACKED(48, zzefx.PACKED_VECTOR, zzegn.LONG),
    GROUP_LIST(49, zzefx.VECTOR, zzegn.MESSAGE),
    MAP(50, zzefx.MAP, zzegn.VOID);
    
    private static final zzefv[] zzids = null;
    private static final Type[] zzidt = null;
    private final int id;
    private final zzegn zzido;
    private final zzefx zzidp;
    private final Class<?> zzidq;
    private final boolean zzidr;

    /* JADX WARNING: Code restructure failed: missing block: B:8:0x002d, code lost:
        r5 = com.google.android.gms.internal.ads.zzefy.zziec[r6.ordinal()];
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private zzefv(int r4, com.google.android.gms.internal.ads.zzefx r5, com.google.android.gms.internal.ads.zzegn r6) {
        /*
            r1 = this;
            r1.<init>(r2, r3)
            r1.id = r4
            r1.zzidp = r5
            r1.zzido = r6
            int[] r2 = com.google.android.gms.internal.ads.zzefy.zzieb
            int r3 = r5.ordinal()
            r2 = r2[r3]
            r3 = 2
            r4 = 1
            if (r2 == r4) goto L_0x0022
            if (r2 == r3) goto L_0x001b
            r2 = 0
            r1.zzidq = r2
            goto L_0x0028
        L_0x001b:
            java.lang.Class r2 = r6.zzbgd()
            r1.zzidq = r2
            goto L_0x0028
        L_0x0022:
            java.lang.Class r2 = r6.zzbgd()
            r1.zzidq = r2
        L_0x0028:
            r2 = 0
            com.google.android.gms.internal.ads.zzefx r0 = com.google.android.gms.internal.ads.zzefx.SCALAR
            if (r5 != r0) goto L_0x003d
            int[] r5 = com.google.android.gms.internal.ads.zzefy.zziec
            int r6 = r6.ordinal()
            r5 = r5[r6]
            if (r5 == r4) goto L_0x003d
            if (r5 == r3) goto L_0x003d
            r3 = 3
            if (r5 == r3) goto L_0x003d
            goto L_0x003e
        L_0x003d:
            r4 = 0
        L_0x003e:
            r1.zzidr = r4
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzefv.<init>(java.lang.String, int, int, com.google.android.gms.internal.ads.zzefx, com.google.android.gms.internal.ads.zzegn):void");
    }

    public final int id() {
        return this.id;
    }

    static {
        int i;
        zzidt = new Type[0];
        zzefv[] values = values();
        zzids = new zzefv[values.length];
        for (zzefv zzefv : values) {
            zzids[zzefv.id] = zzefv;
        }
    }
}
