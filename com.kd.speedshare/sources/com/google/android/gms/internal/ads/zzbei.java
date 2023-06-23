package com.google.android.gms.internal.ads;

import android.net.Uri;
import java.io.IOException;

/* compiled from: com.google.android.gms:play-services-ads@@19.2.0 */
final class zzbei implements zzok {
    private Uri uri;
    private final zzok zzejw;
    private final long zzejx;
    private final zzok zzejy;
    private long zzejz;

    zzbei(zzok zzok, int i, zzok zzok2) {
        this.zzejw = zzok;
        this.zzejx = (long) i;
        this.zzejy = zzok2;
    }

    public final long zza(zzop zzop) throws IOException {
        zzop zzop2;
        long j;
        zzop zzop3 = zzop;
        this.uri = zzop3.uri;
        zzop zzop4 = null;
        if (zzop3.position >= this.zzejx) {
            zzop2 = null;
        } else {
            long j2 = zzop3.position;
            if (zzop3.zzcp != -1) {
                j = Math.min(zzop3.zzcp, this.zzejx - j2);
            } else {
                j = this.zzejx - j2;
            }
            zzop2 = new zzop(zzop3.uri, j2, j, (String) null);
        }
        if (zzop3.zzcp == -1 || zzop3.position + zzop3.zzcp > this.zzejx) {
            zzop4 = new zzop(zzop3.uri, Math.max(this.zzejx, zzop3.position), zzop3.zzcp != -1 ? Math.min(zzop3.zzcp, (zzop3.position + zzop3.zzcp) - this.zzejx) : -1, (String) null);
        }
        long j3 = 0;
        long zza = zzop2 != null ? this.zzejw.zza(zzop2) : 0;
        if (zzop4 != null) {
            j3 = this.zzejy.zza(zzop4);
        }
        this.zzejz = zzop3.position;
        if (zza == -1 || j3 == -1) {
            return -1;
        }
        return zza + j3;
    }

    public final int read(byte[] bArr, int i, int i2) throws IOException {
        int i3;
        long j = this.zzejz;
        long j2 = this.zzejx;
        if (j < j2) {
            i3 = this.zzejw.read(bArr, i, (int) Math.min((long) i2, j2 - j));
            this.zzejz += (long) i3;
        } else {
            i3 = 0;
        }
        if (this.zzejz < this.zzejx) {
            return i3;
        }
        int read = this.zzejy.read(bArr, i + i3, i2 - i3);
        int i4 = i3 + read;
        this.zzejz += (long) read;
        return i4;
    }

    public final Uri getUri() {
        return this.uri;
    }

    public final void close() throws IOException {
        this.zzejw.close();
        this.zzejy.close();
    }
}
