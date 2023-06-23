package com.google.android.gms.internal.ads;

import java.io.EOFException;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.util.concurrent.atomic.AtomicInteger;

/* compiled from: com.google.android.gms:play-services-ads@@19.2.0 */
public final class zznj implements zzke {
    private final zzpi zzapl = new zzpi(32);
    private final zzoi zzbdh;
    private final int zzbfw;
    private final zznh zzbfx = new zznh();
    private final zzng zzbfy = new zzng();
    private final AtomicInteger zzbfz = new AtomicInteger();
    private zzni zzbga;
    private zzni zzbgb;
    private zzhq zzbgc;
    private boolean zzbgd;
    private zzhq zzbge;
    private long zzbgf;
    private int zzbgg = this.zzbfw;
    private zznl zzbgh;

    public zznj(zzoi zzoi) {
        this.zzbdh = zzoi;
        this.zzbfw = zzoi.zzin();
        zzni zzni = new zzni(0, this.zzbfw);
        this.zzbga = zzni;
        this.zzbgb = zzni;
    }

    public final void zzk(boolean z) {
        int andSet = this.zzbfz.getAndSet(z ? 0 : 2);
        zzia();
        this.zzbfx.zzib();
        if (andSet == 2) {
            this.zzbgc = null;
        }
    }

    public final int zzic() {
        return this.zzbfx.zzic();
    }

    public final void disable() {
        if (this.zzbfz.getAndSet(2) == 0) {
            zzia();
        }
    }

    public final boolean zzid() {
        return this.zzbfx.zzid();
    }

    public final zzhq zzie() {
        return this.zzbfx.zzie();
    }

    public final long zzhu() {
        return this.zzbfx.zzhu();
    }

    public final void zzih() {
        long zzif = this.zzbfx.zzif();
        if (zzif != -1) {
            zzej(zzif);
        }
    }

    public final boolean zze(long j, boolean z) {
        long zzd = this.zzbfx.zzd(j, z);
        if (zzd == -1) {
            return false;
        }
        zzej(zzd);
        return true;
    }

    public final int zza(zzhs zzhs, zzjm zzjm, boolean z, boolean z2, long j) {
        int i;
        zzjm zzjm2 = zzjm;
        int zza = this.zzbfx.zza(zzhs, zzjm, z, z2, this.zzbgc, this.zzbfy);
        if (zza == -5) {
            this.zzbgc = zzhs.zzahr;
            return -5;
        } else if (zza == -4) {
            if (!zzjm.zzgh()) {
                if (zzjm2.zzaod < j) {
                    zzjm2.zzab(Integer.MIN_VALUE);
                }
                if (zzjm.isEncrypted()) {
                    zzng zzng = this.zzbfy;
                    long j2 = zzng.zzawn;
                    this.zzapl.reset(1);
                    zza(j2, this.zzapl.data, 1);
                    long j3 = j2 + 1;
                    byte b = this.zzapl.data[0];
                    boolean z3 = (b & 128) != 0;
                    byte b2 = b & Byte.MAX_VALUE;
                    if (zzjm2.zzaoc.iv == null) {
                        zzjm2.zzaoc.iv = new byte[16];
                    }
                    zza(j3, zzjm2.zzaoc.iv, (int) b2);
                    long j4 = j3 + ((long) b2);
                    if (z3) {
                        this.zzapl.reset(2);
                        zza(j4, this.zzapl.data, 2);
                        j4 += 2;
                        i = this.zzapl.readUnsignedShort();
                    } else {
                        i = 1;
                    }
                    int[] iArr = zzjm2.zzaoc.numBytesOfClearData;
                    if (iArr == null || iArr.length < i) {
                        iArr = new int[i];
                    }
                    int[] iArr2 = iArr;
                    int[] iArr3 = zzjm2.zzaoc.numBytesOfEncryptedData;
                    if (iArr3 == null || iArr3.length < i) {
                        iArr3 = new int[i];
                    }
                    int[] iArr4 = iArr3;
                    if (z3) {
                        int i2 = i * 6;
                        this.zzapl.reset(i2);
                        zza(j4, this.zzapl.data, i2);
                        j4 += (long) i2;
                        this.zzapl.zzbk(0);
                        for (int i3 = 0; i3 < i; i3++) {
                            iArr2[i3] = this.zzapl.readUnsignedShort();
                            iArr4[i3] = this.zzapl.zziz();
                        }
                    } else {
                        iArr2[0] = 0;
                        iArr4[0] = zzng.size - ((int) (j4 - zzng.zzawn));
                    }
                    zzkh zzkh = zzng.zzarh;
                    zzjm2.zzaoc.set(i, iArr2, iArr4, zzkh.zzapa, zzjm2.zzaoc.iv, zzkh.zzaoz);
                    int i4 = (int) (j4 - zzng.zzawn);
                    zzng.zzawn += (long) i4;
                    zzng.size -= i4;
                }
                zzjm2.zzae(this.zzbfy.size);
                long j5 = this.zzbfy.zzawn;
                ByteBuffer byteBuffer = zzjm2.zzdd;
                int i5 = this.zzbfy.size;
                zzej(j5);
                while (i5 > 0) {
                    int i6 = (int) (j5 - this.zzbga.zzbfs);
                    int min = Math.min(i5, this.zzbfw - i6);
                    zzoj zzoj = this.zzbga.zzbfu;
                    byteBuffer.put(zzoj.data, zzoj.zzbg(i6), min);
                    j5 += (long) min;
                    i5 -= min;
                    if (j5 == this.zzbga.zzasm) {
                        this.zzbdh.zza(zzoj);
                        this.zzbga = this.zzbga.zzig();
                    }
                }
                zzej(this.zzbfy.zzbff);
            }
            return -4;
        } else if (zza == -3) {
            return -3;
        } else {
            throw new IllegalStateException();
        }
    }

    private final void zza(long j, byte[] bArr, int i) {
        zzej(j);
        int i2 = 0;
        while (i2 < i) {
            int i3 = (int) (j - this.zzbga.zzbfs);
            int min = Math.min(i - i2, this.zzbfw - i3);
            zzoj zzoj = this.zzbga.zzbfu;
            System.arraycopy(zzoj.data, zzoj.zzbg(i3), bArr, i2, min);
            j += (long) min;
            i2 += min;
            if (j == this.zzbga.zzasm) {
                this.zzbdh.zza(zzoj);
                this.zzbga = this.zzbga.zzig();
            }
        }
    }

    private final void zzej(long j) {
        while (j >= this.zzbga.zzasm) {
            this.zzbdh.zza(this.zzbga.zzbfu);
            this.zzbga = this.zzbga.zzig();
        }
    }

    public final void zza(zznl zznl) {
        this.zzbgh = zznl;
    }

    public final void zze(zzhq zzhq) {
        zzhq zzhq2 = zzhq == null ? null : zzhq;
        boolean zzg = this.zzbfx.zzg(zzhq2);
        this.zzbge = zzhq;
        this.zzbgd = false;
        zznl zznl = this.zzbgh;
        if (zznl != null && zzg) {
            zznl.zzf(zzhq2);
        }
    }

    public final int zza(zzjw zzjw, int i, boolean z) throws IOException, InterruptedException {
        if (!zzii()) {
            int zzag = zzjw.zzag(i);
            if (zzag != -1) {
                return zzag;
            }
            throw new EOFException();
        }
        try {
            int zzbb = zzbb(i);
            zzoj zzoj = this.zzbgb.zzbfu;
            int read = zzjw.read(zzoj.data, zzoj.zzbg(this.zzbgg), zzbb);
            if (read != -1) {
                this.zzbgg += read;
                this.zzbgf += (long) read;
                return read;
            }
            throw new EOFException();
        } finally {
            zzij();
        }
    }

    public final void zza(zzpi zzpi, int i) {
        if (!zzii()) {
            zzpi.zzbl(i);
            return;
        }
        while (i > 0) {
            int zzbb = zzbb(i);
            zzoj zzoj = this.zzbgb.zzbfu;
            zzpi.zze(zzoj.data, zzoj.zzbg(this.zzbgg), zzbb);
            this.zzbgg += zzbb;
            this.zzbgf += (long) zzbb;
            i -= zzbb;
        }
        zzij();
    }

    public final void zza(long j, int i, int i2, int i3, zzkh zzkh) {
        if (!zzii()) {
            long j2 = j;
            this.zzbfx.zzei(j);
            return;
        }
        long j3 = j;
        try {
            this.zzbfx.zza(j, i, (this.zzbgf - ((long) i2)) - ((long) i3), i2, zzkh);
        } finally {
            zzij();
        }
    }

    private final boolean zzii() {
        return this.zzbfz.compareAndSet(0, 1);
    }

    private final void zzij() {
        if (!this.zzbfz.compareAndSet(1, 0)) {
            zzia();
        }
    }

    private final void zzia() {
        this.zzbfx.zzia();
        zzni zzni = this.zzbga;
        if (zzni.zzbft) {
            int i = (this.zzbgb.zzbft ? 1 : 0) + (((int) (this.zzbgb.zzbfs - zzni.zzbfs)) / this.zzbfw);
            zzoj[] zzojArr = new zzoj[i];
            for (int i2 = 0; i2 < i; i2++) {
                zzojArr[i2] = zzni.zzbfu;
                zzni = zzni.zzig();
            }
            this.zzbdh.zza(zzojArr);
        }
        zzni zzni2 = new zzni(0, this.zzbfw);
        this.zzbga = zzni2;
        this.zzbgb = zzni2;
        this.zzbgf = 0;
        this.zzbgg = this.zzbfw;
        this.zzbdh.zzn();
    }

    private final int zzbb(int i) {
        if (this.zzbgg == this.zzbfw) {
            this.zzbgg = 0;
            if (this.zzbgb.zzbft) {
                this.zzbgb = this.zzbgb.zzbfv;
            }
            zzni zzni = this.zzbgb;
            zzoj zzim = this.zzbdh.zzim();
            zzni zzni2 = new zzni(this.zzbgb.zzasm, this.zzbfw);
            zzni.zzbfu = zzim;
            zzni.zzbfv = zzni2;
            zzni.zzbft = true;
        }
        return Math.min(i, this.zzbfw - this.zzbgg);
    }
}
