package com.google.android.gms.internal.ads;

import java.io.IOException;
import java.util.ArrayList;
import java.util.IdentityHashMap;

/* compiled from: com.google.android.gms:play-services-ads@@19.2.0 */
final class zznd implements zzmy, zzmz {
    private zznr zzaex;
    private zzmy zzbdq;
    public final zzmz[] zzbex;
    private final IdentityHashMap<zznk, Integer> zzbey = new IdentityHashMap<>();
    private int zzbez;
    private zzmz[] zzbfa;
    private zznn zzbfb;

    public zznd(zzmz... zzmzArr) {
        this.zzbex = zzmzArr;
    }

    public final void zza(zzmy zzmy, long j) {
        this.zzbdq = zzmy;
        zzmz[] zzmzArr = this.zzbex;
        this.zzbez = zzmzArr.length;
        for (zzmz zza : zzmzArr) {
            zza.zza(this, j);
        }
    }

    public final void zzhn() throws IOException {
        for (zzmz zzhn : this.zzbex) {
            zzhn.zzhn();
        }
    }

    public final zznr zzho() {
        return this.zzaex;
    }

    public final long zza(zzod[] zzodArr, boolean[] zArr, zznk[] zznkArr, boolean[] zArr2, long j) {
        int i;
        zzod[] zzodArr2 = zzodArr;
        zznk[] zznkArr2 = zznkArr;
        int[] iArr = new int[zzodArr2.length];
        int[] iArr2 = new int[zzodArr2.length];
        for (int i2 = 0; i2 < zzodArr2.length; i2++) {
            if (zznkArr2[i2] == null) {
                i = -1;
            } else {
                i = this.zzbey.get(zznkArr2[i2]).intValue();
            }
            iArr[i2] = i;
            iArr2[i2] = -1;
            if (zzodArr2[i2] != null) {
                zzno zzik = zzodArr2[i2].zzik();
                int i3 = 0;
                while (true) {
                    zzmz[] zzmzArr = this.zzbex;
                    if (i3 >= zzmzArr.length) {
                        break;
                    } else if (zzmzArr[i3].zzho().zza(zzik) != -1) {
                        iArr2[i2] = i3;
                        break;
                    } else {
                        i3++;
                    }
                }
            }
        }
        this.zzbey.clear();
        int length = zzodArr2.length;
        zznk[] zznkArr3 = new zznk[length];
        zznk[] zznkArr4 = new zznk[zzodArr2.length];
        zzod[] zzodArr3 = new zzod[zzodArr2.length];
        ArrayList arrayList = new ArrayList(this.zzbex.length);
        long j2 = j;
        int i4 = 0;
        while (i4 < this.zzbex.length) {
            for (int i5 = 0; i5 < zzodArr2.length; i5++) {
                zzod zzod = null;
                zznkArr4[i5] = iArr[i5] == i4 ? zznkArr2[i5] : null;
                if (iArr2[i5] == i4) {
                    zzod = zzodArr2[i5];
                }
                zzodArr3[i5] = zzod;
            }
            int i6 = i4;
            zzod[] zzodArr4 = zzodArr3;
            ArrayList arrayList2 = arrayList;
            long zza = this.zzbex[i4].zza(zzodArr3, zArr, zznkArr4, zArr2, j2);
            if (i6 == 0) {
                j2 = zza;
            } else if (zza != j2) {
                throw new IllegalStateException("Children enabled at different positions");
            }
            boolean z = false;
            for (int i7 = 0; i7 < zzodArr2.length; i7++) {
                boolean z2 = true;
                if (iArr2[i7] == i6) {
                    zzpb.checkState(zznkArr4[i7] != null);
                    zznkArr3[i7] = zznkArr4[i7];
                    this.zzbey.put(zznkArr4[i7], Integer.valueOf(i6));
                    z = true;
                } else if (iArr[i7] == i6) {
                    if (zznkArr4[i7] != null) {
                        z2 = false;
                    }
                    zzpb.checkState(z2);
                }
            }
            if (z) {
                arrayList2.add(this.zzbex[i6]);
            }
            i4 = i6 + 1;
            arrayList = arrayList2;
            zzodArr3 = zzodArr4;
            zznkArr2 = zznkArr;
        }
        zznk[] zznkArr5 = zznkArr2;
        ArrayList arrayList3 = arrayList;
        System.arraycopy(zznkArr3, 0, zznkArr5, 0, length);
        zzmz[] zzmzArr2 = new zzmz[arrayList3.size()];
        this.zzbfa = zzmzArr2;
        arrayList3.toArray(zzmzArr2);
        this.zzbfb = new zzmm(this.zzbfa);
        return j2;
    }

    public final void zzef(long j) {
        for (zzmz zzef : this.zzbfa) {
            zzef.zzef(j);
        }
    }

    public final boolean zzee(long j) {
        return this.zzbfb.zzee(j);
    }

    public final long zzhm() {
        return this.zzbfb.zzhm();
    }

    public final long zzhp() {
        long zzhp = this.zzbex[0].zzhp();
        int i = 1;
        while (true) {
            zzmz[] zzmzArr = this.zzbex;
            if (i >= zzmzArr.length) {
                if (zzhp != -9223372036854775807L) {
                    zzmz[] zzmzArr2 = this.zzbfa;
                    int length = zzmzArr2.length;
                    int i2 = 0;
                    while (i2 < length) {
                        zzmz zzmz = zzmzArr2[i2];
                        if (zzmz == this.zzbex[0] || zzmz.zzeg(zzhp) == zzhp) {
                            i2++;
                        } else {
                            throw new IllegalStateException("Children seeked to different positions");
                        }
                    }
                }
                return zzhp;
            } else if (zzmzArr[i].zzhp() == -9223372036854775807L) {
                i++;
            } else {
                throw new IllegalStateException("Child reported discontinuity");
            }
        }
    }

    public final long zzhq() {
        long j = Long.MAX_VALUE;
        for (zzmz zzhq : this.zzbfa) {
            long zzhq2 = zzhq.zzhq();
            if (zzhq2 != Long.MIN_VALUE) {
                j = Math.min(j, zzhq2);
            }
        }
        if (j == Long.MAX_VALUE) {
            return Long.MIN_VALUE;
        }
        return j;
    }

    public final long zzeg(long j) {
        long zzeg = this.zzbfa[0].zzeg(j);
        int i = 1;
        while (true) {
            zzmz[] zzmzArr = this.zzbfa;
            if (i >= zzmzArr.length) {
                return zzeg;
            }
            if (zzmzArr[i].zzeg(zzeg) == zzeg) {
                i++;
            } else {
                throw new IllegalStateException("Children seeked to different positions");
            }
        }
    }

    public final void zza(zzmz zzmz) {
        int i = this.zzbez - 1;
        this.zzbez = i;
        if (i <= 0) {
            int i2 = 0;
            for (zzmz zzho : this.zzbex) {
                i2 += zzho.zzho().length;
            }
            zzno[] zznoArr = new zzno[i2];
            int i3 = 0;
            for (zzmz zzho2 : this.zzbex) {
                zznr zzho3 = zzho2.zzho();
                int i4 = zzho3.length;
                int i5 = 0;
                while (i5 < i4) {
                    zznoArr[i3] = zzho3.zzbd(i5);
                    i5++;
                    i3++;
                }
            }
            this.zzaex = new zznr(zznoArr);
            this.zzbdq.zza(this);
        }
    }

    public final /* synthetic */ void zza(zznn zznn) {
        if (this.zzaex != null) {
            this.zzbdq.zza(this);
        }
    }
}
