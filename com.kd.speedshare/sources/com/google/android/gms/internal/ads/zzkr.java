package com.google.android.gms.internal.ads;

import java.io.IOException;

/* compiled from: com.google.android.gms:play-services-ads@@19.2.0 */
final class zzkr {
    private final zzpi zzapl = new zzpi(8);
    private int zzasl;

    public final boolean zza(zzjw zzjw) throws IOException, InterruptedException {
        zzjw zzjw2 = zzjw;
        long length = zzjw.getLength();
        long j = 1024;
        if (length != -1 && length <= 1024) {
            j = length;
        }
        int i = (int) j;
        zzjw2.zza(this.zzapl.data, 0, 4);
        this.zzasl = 4;
        for (long zziw = this.zzapl.zziw(); zziw != 440786851; zziw = ((zziw << 8) & -256) | ((long) (this.zzapl.data[0] & 255))) {
            int i2 = this.zzasl + 1;
            this.zzasl = i2;
            if (i2 == i) {
                return false;
            }
            zzjw2.zza(this.zzapl.data, 0, 1);
        }
        long zzc = zzc(zzjw);
        long j2 = (long) this.zzasl;
        if (zzc != Long.MIN_VALUE && (length == -1 || j2 + zzc < length)) {
            while (true) {
                int i3 = this.zzasl;
                long j3 = j2 + zzc;
                if (((long) i3) < j3) {
                    if (zzc(zzjw) == Long.MIN_VALUE) {
                        return false;
                    }
                    long zzc2 = zzc(zzjw);
                    if (zzc2 < 0 || zzc2 > 2147483647L) {
                        return false;
                    }
                    if (zzc2 != 0) {
                        zzjw2.zzai((int) zzc2);
                        this.zzasl = (int) (((long) this.zzasl) + zzc2);
                    }
                } else if (((long) i3) == j3) {
                    return true;
                }
            }
        }
        return false;
    }

    private final long zzc(zzjw zzjw) throws IOException, InterruptedException {
        int i = 0;
        zzjw.zza(this.zzapl.data, 0, 1);
        byte b = this.zzapl.data[0] & 255;
        if (b == 0) {
            return Long.MIN_VALUE;
        }
        int i2 = 128;
        int i3 = 0;
        while ((b & i2) == 0) {
            i2 >>= 1;
            i3++;
        }
        int i4 = b & (i2 ^ -1);
        zzjw.zza(this.zzapl.data, 1, i3);
        while (i < i3) {
            i++;
            i4 = (this.zzapl.data[i] & 255) + (i4 << 8);
        }
        this.zzasl += i3 + 1;
        return (long) i4;
    }
}
