package com.google.android.gms.internal.ads;

import java.nio.ShortBuffer;
import java.util.Arrays;

/* compiled from: com.google.android.gms:play-services-ads@@19.2.0 */
final class zzjd {
    private final int zzahh;
    private float zzaht = 1.0f;
    private float zzahu = 1.0f;
    private final int zzamp;
    private final int zzamq;
    private final int zzamr;
    private final int zzams;
    private final short[] zzamt;
    private int zzamu;
    private short[] zzamv;
    private int zzamw;
    private short[] zzamx;
    private int zzamy;
    private short[] zzamz;
    private int zzana = 0;
    private int zzanb = 0;
    private int zzanc;
    private int zzand;
    private int zzane;
    private int zzanf;
    private int zzang = 0;
    private int zzanh;
    private int zzani;
    private int zzanj;

    public zzjd(int i, int i2) {
        this.zzahh = i;
        this.zzamp = i2;
        this.zzamq = i / 400;
        int i3 = i / 65;
        this.zzamr = i3;
        int i4 = i3 * 2;
        this.zzams = i4;
        this.zzamt = new short[i4];
        this.zzamu = i4;
        this.zzamv = new short[(i4 * i2)];
        this.zzamw = i4;
        this.zzamx = new short[(i4 * i2)];
        this.zzamy = i4;
        this.zzamz = new short[(i4 * i2)];
    }

    public final void setSpeed(float f) {
        this.zzaht = f;
    }

    public final void zza(float f) {
        this.zzahu = f;
    }

    public final void zza(ShortBuffer shortBuffer) {
        int remaining = shortBuffer.remaining();
        int i = this.zzamp;
        int i2 = remaining / i;
        zzaa(i2);
        shortBuffer.get(this.zzamv, this.zzanc * this.zzamp, ((i * i2) << 1) / 2);
        this.zzanc += i2;
        zzgf();
    }

    public final void zzb(ShortBuffer shortBuffer) {
        int min = Math.min(shortBuffer.remaining() / this.zzamp, this.zzand);
        shortBuffer.put(this.zzamx, 0, this.zzamp * min);
        int i = this.zzand - min;
        this.zzand = i;
        short[] sArr = this.zzamx;
        int i2 = this.zzamp;
        System.arraycopy(sArr, min * i2, sArr, 0, i * i2);
    }

    public final void zzfk() {
        int i;
        int i2 = this.zzanc;
        float f = this.zzaht;
        float f2 = this.zzahu;
        int i3 = this.zzand + ((int) ((((((float) i2) / (f / f2)) + ((float) this.zzane)) / f2) + 0.5f));
        zzaa((this.zzams * 2) + i2);
        int i4 = 0;
        while (true) {
            i = this.zzams;
            int i5 = this.zzamp;
            if (i4 >= i * 2 * i5) {
                break;
            }
            this.zzamv[(i5 * i2) + i4] = 0;
            i4++;
        }
        this.zzanc += i * 2;
        zzgf();
        if (this.zzand > i3) {
            this.zzand = i3;
        }
        this.zzanc = 0;
        this.zzanf = 0;
        this.zzane = 0;
    }

    public final int zzge() {
        return this.zzand;
    }

    private final void zzz(int i) {
        int i2 = this.zzand + i;
        int i3 = this.zzamw;
        if (i2 > i3) {
            int i4 = i3 + (i3 / 2) + i;
            this.zzamw = i4;
            this.zzamx = Arrays.copyOf(this.zzamx, i4 * this.zzamp);
        }
    }

    private final void zzaa(int i) {
        int i2 = this.zzanc + i;
        int i3 = this.zzamu;
        if (i2 > i3) {
            int i4 = i3 + (i3 / 2) + i;
            this.zzamu = i4;
            this.zzamv = Arrays.copyOf(this.zzamv, i4 * this.zzamp);
        }
    }

    private final void zza(short[] sArr, int i, int i2) {
        zzz(i2);
        int i3 = this.zzamp;
        System.arraycopy(sArr, i * i3, this.zzamx, this.zzand * i3, i3 * i2);
        this.zzand += i2;
    }

    private final void zzb(short[] sArr, int i, int i2) {
        int i3 = this.zzams / i2;
        int i4 = this.zzamp;
        int i5 = i2 * i4;
        int i6 = i * i4;
        for (int i7 = 0; i7 < i3; i7++) {
            int i8 = 0;
            for (int i9 = 0; i9 < i5; i9++) {
                i8 += sArr[(i7 * i5) + i6 + i9];
            }
            this.zzamt[i7] = (short) (i8 / i5);
        }
    }

    private final int zza(short[] sArr, int i, int i2, int i3) {
        int i4 = i * this.zzamp;
        int i5 = 1;
        int i6 = 255;
        int i7 = 0;
        int i8 = 0;
        while (i2 <= i3) {
            int i9 = 0;
            for (int i10 = 0; i10 < i2; i10++) {
                short s = sArr[i4 + i10];
                short s2 = sArr[i4 + i2 + i10];
                i9 += s >= s2 ? s - s2 : s2 - s;
            }
            if (i9 * i7 < i5 * i2) {
                i7 = i2;
                i5 = i9;
            }
            if (i9 * i6 > i8 * i2) {
                i6 = i2;
                i8 = i9;
            }
            i2++;
        }
        this.zzani = i5 / i7;
        this.zzanj = i8 / i6;
        return i7;
    }

    private final void zzgf() {
        int i;
        int i2;
        int i3;
        int i4;
        int i5;
        int i6;
        int i7 = this.zzand;
        float f = this.zzaht / this.zzahu;
        double d = (double) f;
        int i8 = 1;
        if (d > 1.00001d || d < 0.99999d) {
            int i9 = this.zzanc;
            if (i9 >= this.zzams) {
                int i10 = 0;
                while (true) {
                    int i11 = this.zzanf;
                    if (i11 > 0) {
                        int min = Math.min(this.zzams, i11);
                        zza(this.zzamv, i10, min);
                        this.zzanf -= min;
                        i10 += min;
                    } else {
                        short[] sArr = this.zzamv;
                        int i12 = this.zzahh;
                        int i13 = i12 > 4000 ? i12 / 4000 : 1;
                        if (this.zzamp == i8 && i13 == i8) {
                            i4 = zza(sArr, i10, this.zzamq, this.zzamr);
                        } else {
                            zzb(sArr, i10, i13);
                            int zza = zza(this.zzamt, 0, this.zzamq / i13, this.zzamr / i13);
                            if (i13 != i8) {
                                int i14 = zza * i13;
                                int i15 = i13 << 2;
                                int i16 = i14 - i15;
                                int i17 = i14 + i15;
                                int i18 = this.zzamq;
                                if (i16 < i18) {
                                    i16 = i18;
                                }
                                int i19 = this.zzamr;
                                if (i17 > i19) {
                                    i17 = i19;
                                }
                                if (this.zzamp == i8) {
                                    i4 = zza(sArr, i10, i16, i17);
                                } else {
                                    zzb(sArr, i10, i8);
                                    i4 = zza(this.zzamt, 0, i16, i17);
                                }
                            } else {
                                i4 = zza;
                            }
                        }
                        int i20 = this.zzani;
                        int i21 = i20 != 0 && this.zzang != 0 && this.zzanj <= i20 * 3 && (i20 << 1) > this.zzanh * 3 ? this.zzang : i4;
                        this.zzanh = this.zzani;
                        this.zzang = i4;
                        if (d > 1.0d) {
                            short[] sArr2 = this.zzamv;
                            if (f >= 2.0f) {
                                i6 = (int) (((float) i21) / (f - 1.0f));
                            } else {
                                this.zzanf = (int) ((((float) i21) * (2.0f - f)) / (f - 1.0f));
                                i6 = i21;
                            }
                            zzz(i6);
                            int i22 = i6;
                            zza(i6, this.zzamp, this.zzamx, this.zzand, sArr2, i10, sArr2, i10 + i21);
                            this.zzand += i22;
                            i10 += i21 + i22;
                        } else {
                            int i23 = i21;
                            short[] sArr3 = this.zzamv;
                            if (f < 0.5f) {
                                i5 = (int) ((((float) i23) * f) / (1.0f - f));
                            } else {
                                this.zzanf = (int) ((((float) i23) * ((2.0f * f) - 1.0f)) / (1.0f - f));
                                i5 = i23;
                            }
                            int i24 = i23 + i5;
                            zzz(i24);
                            int i25 = this.zzamp;
                            System.arraycopy(sArr3, i10 * i25, this.zzamx, this.zzand * i25, i25 * i23);
                            zza(i5, this.zzamp, this.zzamx, this.zzand + i23, sArr3, i23 + i10, sArr3, i10);
                            this.zzand += i24;
                            i10 += i5;
                        }
                    }
                    if (this.zzams + i10 > i9) {
                        break;
                    }
                    i8 = 1;
                }
                int i26 = this.zzanc - i10;
                short[] sArr4 = this.zzamv;
                int i27 = this.zzamp;
                System.arraycopy(sArr4, i10 * i27, sArr4, 0, i27 * i26);
                this.zzanc = i26;
            }
        } else {
            zza(this.zzamv, 0, this.zzanc);
            this.zzanc = 0;
        }
        float f2 = this.zzahu;
        if (f2 != 1.0f && this.zzand != i7) {
            int i28 = this.zzahh;
            int i29 = (int) (((float) i28) / f2);
            while (true) {
                if (i29 <= 16384 && i28 <= 16384) {
                    break;
                }
                i29 /= 2;
                i28 /= 2;
            }
            int i30 = this.zzand - i7;
            int i31 = this.zzane + i30;
            int i32 = this.zzamy;
            if (i31 > i32) {
                int i33 = i32 + (i32 / 2) + i30;
                this.zzamy = i33;
                this.zzamz = Arrays.copyOf(this.zzamz, i33 * this.zzamp);
            }
            short[] sArr5 = this.zzamx;
            int i34 = this.zzamp;
            System.arraycopy(sArr5, i7 * i34, this.zzamz, this.zzane * i34, i34 * i30);
            this.zzand = i7;
            this.zzane += i30;
            int i35 = 0;
            while (true) {
                i = this.zzane;
                if (i35 >= i - 1) {
                    break;
                }
                while (true) {
                    i2 = this.zzana;
                    int i36 = (i2 + 1) * i29;
                    i3 = this.zzanb;
                    if (i36 <= i3 * i28) {
                        break;
                    }
                    zzz(1);
                    int i37 = 0;
                    while (true) {
                        int i38 = this.zzamp;
                        if (i37 >= i38) {
                            break;
                        }
                        short[] sArr6 = this.zzamz;
                        int i39 = (i35 * i38) + i37;
                        short s = sArr6[i39];
                        short s2 = sArr6[i39 + i38];
                        int i40 = this.zzana;
                        int i41 = i40 * i29;
                        int i42 = (i40 + 1) * i29;
                        int i43 = i42 - (this.zzanb * i28);
                        int i44 = i42 - i41;
                        this.zzamx[(this.zzand * i38) + i37] = (short) (((s * i43) + ((i44 - i43) * s2)) / i44);
                        i37++;
                    }
                    this.zzanb++;
                    this.zzand++;
                }
                int i45 = i2 + 1;
                this.zzana = i45;
                if (i45 == i28) {
                    this.zzana = 0;
                    zzpb.checkState(i3 == i29);
                    this.zzanb = 0;
                }
                i35++;
            }
            int i46 = i - 1;
            if (i46 != 0) {
                short[] sArr7 = this.zzamz;
                int i47 = this.zzamp;
                System.arraycopy(sArr7, i46 * i47, sArr7, 0, (i - i46) * i47);
                this.zzane -= i46;
            }
        }
    }

    private static void zza(int i, int i2, short[] sArr, int i3, short[] sArr2, int i4, short[] sArr3, int i5) {
        for (int i6 = 0; i6 < i2; i6++) {
            int i7 = (i3 * i2) + i6;
            int i8 = (i5 * i2) + i6;
            int i9 = (i4 * i2) + i6;
            for (int i10 = 0; i10 < i; i10++) {
                sArr[i7] = (short) (((sArr2[i9] * (i - i10)) + (sArr3[i8] * i10)) / i);
                i7 += i2;
                i9 += i2;
                i8 += i2;
            }
        }
    }
}
