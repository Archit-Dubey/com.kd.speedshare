package com.google.android.gms.internal.ads;

import android.content.Context;
import android.graphics.Point;
import android.media.MediaCodec;
import android.media.MediaCrypto;
import android.media.MediaFormat;
import android.os.Handler;
import android.os.SystemClock;
import android.util.Log;
import android.view.Surface;
import java.nio.ByteBuffer;

/* compiled from: com.google.android.gms:play-services-ads@@19.2.0 */
public final class zzpz extends zzls {
    private static final int[] zzbku = {1920, 1600, 1440, 1280, 960, 854, 640, 540, 480};
    private int zzahx;
    private boolean zzali;
    private final zzqd zzbkv;
    private final zzqe zzbkw;
    private final long zzbkx;
    private final int zzbky;
    private final boolean zzbkz;
    private final long[] zzbla;
    private zzhq[] zzblb;
    private zzqb zzblc;
    private Surface zzbld;
    private Surface zzble;
    private int zzblf;
    private boolean zzblg;
    private long zzblh;
    private long zzbli;
    private int zzblj;
    private int zzblk;
    private int zzbll;
    private float zzblm;
    private int zzbln;
    private int zzblo;
    private int zzblp;
    private float zzblq;
    private int zzblr;
    private int zzbls;
    private int zzblt;
    private float zzblu;
    zzqa zzblv;
    private long zzblw;
    private int zzblx;
    private final Context zzvr;

    public zzpz(Context context, zzlu zzlu, long j, Handler handler, zzqf zzqf, int i) {
        this(context, zzlu, 0, (zzjq<zzjs>) null, false, handler, zzqf, -1);
    }

    private static boolean zzem(long j) {
        return j < -30000;
    }

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    private zzpz(Context context, zzlu zzlu, long j, zzjq<zzjs> zzjq, boolean z, Handler handler, zzqf zzqf, int i) {
        super(2, zzlu, (zzjq<zzjs>) null, false);
        boolean z2 = false;
        this.zzbkx = 0;
        this.zzbky = -1;
        this.zzvr = context.getApplicationContext();
        this.zzbkv = new zzqd(context);
        this.zzbkw = new zzqe(handler, zzqf);
        if (zzpo.SDK_INT <= 22 && "foster".equals(zzpo.DEVICE) && "NVIDIA".equals(zzpo.MANUFACTURER)) {
            z2 = true;
        }
        this.zzbkz = z2;
        this.zzbla = new long[10];
        this.zzblw = -9223372036854775807L;
        this.zzblh = -9223372036854775807L;
        this.zzbln = -1;
        this.zzblo = -1;
        this.zzblq = -1.0f;
        this.zzblm = -1.0f;
        this.zzblf = 1;
        zzjk();
    }

    /* access modifiers changed from: protected */
    public final int zza(zzlu zzlu, zzhq zzhq) throws zzma {
        boolean z;
        String str = zzhq.zzagw;
        int i = 0;
        if (!zzpe.zzbf(str)) {
            return 0;
        }
        zzjl zzjl = zzhq.zzagz;
        if (zzjl != null) {
            z = false;
            for (int i2 = 0; i2 < zzjl.zzaob; i2++) {
                z |= zzjl.zzad(i2).zzaof;
            }
        } else {
            z = false;
        }
        zzlt zzb = zzlu.zzb(str, z);
        boolean z2 = true;
        if (zzb == null) {
            return 1;
        }
        boolean zzbb = zzb.zzbb(zzhq.zzagt);
        if (zzbb && zzhq.width > 0 && zzhq.height > 0) {
            if (zzpo.SDK_INT >= 21) {
                zzbb = zzb.zza(zzhq.width, zzhq.height, (double) zzhq.zzaha);
            } else {
                if (zzhq.width * zzhq.height > zzlw.zzhj()) {
                    z2 = false;
                }
                if (!z2) {
                    int i3 = zzhq.width;
                    int i4 = zzhq.height;
                    String str2 = zzpo.zzbke;
                    StringBuilder sb = new StringBuilder(String.valueOf(str2).length() + 56);
                    sb.append("FalseCheck [legacyFrameSize, ");
                    sb.append(i3);
                    sb.append("x");
                    sb.append(i4);
                    sb.append("] [");
                    sb.append(str2);
                    sb.append("]");
                    Log.d("MediaCodecVideoRenderer", sb.toString());
                }
                zzbb = z2;
            }
        }
        int i5 = zzb.zzbcj ? 8 : 4;
        if (zzb.zzali) {
            i = 16;
        }
        return (zzbb ? 3 : 2) | i5 | i;
    }

    /* access modifiers changed from: protected */
    public final void zze(boolean z) throws zzhb {
        super.zze(z);
        int i = zzeh().zzahx;
        this.zzahx = i;
        this.zzali = i != 0;
        this.zzbkw.zza(this.zzbci);
        this.zzbkv.enable();
    }

    /* access modifiers changed from: protected */
    public final void zza(zzhq[] zzhqArr, long j) throws zzhb {
        this.zzblb = zzhqArr;
        if (this.zzblw == -9223372036854775807L) {
            this.zzblw = j;
        } else {
            int i = this.zzblx;
            long[] jArr = this.zzbla;
            if (i == jArr.length) {
                long j2 = jArr[i - 1];
                StringBuilder sb = new StringBuilder(65);
                sb.append("Too many stream changes, so dropping offset: ");
                sb.append(j2);
                Log.w("MediaCodecVideoRenderer", sb.toString());
            } else {
                this.zzblx = i + 1;
            }
            this.zzbla[this.zzblx - 1] = j;
        }
        super.zza(zzhqArr, j);
    }

    /* access modifiers changed from: protected */
    public final void zza(long j, boolean z) throws zzhb {
        super.zza(j, z);
        zzji();
        this.zzblk = 0;
        int i = this.zzblx;
        if (i != 0) {
            this.zzblw = this.zzbla[i - 1];
            this.zzblx = 0;
        }
        if (z) {
            zzjh();
        } else {
            this.zzblh = -9223372036854775807L;
        }
    }

    public final boolean isReady() {
        Surface surface;
        if (super.isReady() && (this.zzblg || (((surface = this.zzble) != null && this.zzbld == surface) || zzhc() == null))) {
            this.zzblh = -9223372036854775807L;
            return true;
        } else if (this.zzblh == -9223372036854775807L) {
            return false;
        } else {
            if (SystemClock.elapsedRealtime() < this.zzblh) {
                return true;
            }
            this.zzblh = -9223372036854775807L;
            return false;
        }
    }

    /* access modifiers changed from: protected */
    public final void onStarted() {
        super.onStarted();
        this.zzblj = 0;
        this.zzbli = SystemClock.elapsedRealtime();
        this.zzblh = -9223372036854775807L;
    }

    /* access modifiers changed from: protected */
    public final void onStopped() {
        zzjn();
        super.onStopped();
    }

    /* access modifiers changed from: protected */
    public final void zzeg() {
        this.zzbln = -1;
        this.zzblo = -1;
        this.zzblq = -1.0f;
        this.zzblm = -1.0f;
        this.zzblw = -9223372036854775807L;
        this.zzblx = 0;
        zzjk();
        zzji();
        this.zzbkv.disable();
        this.zzblv = null;
        this.zzali = false;
        try {
            super.zzeg();
        } finally {
            this.zzbci.zzgm();
            this.zzbkw.zzb(this.zzbci);
        }
    }

    public final void zza(int i, Object obj) throws zzhb {
        if (i == 1) {
            Surface surface = (Surface) obj;
            if (surface == null) {
                Surface surface2 = this.zzble;
                if (surface2 != null) {
                    surface = surface2;
                } else {
                    zzlt zzhd = zzhd();
                    if (zzhd != null && zzn(zzhd.zzbck)) {
                        surface = zzpv.zzc(this.zzvr, zzhd.zzbck);
                        this.zzble = surface;
                    }
                }
            }
            if (this.zzbld != surface) {
                this.zzbld = surface;
                int state = getState();
                if (state == 1 || state == 2) {
                    MediaCodec zzhc = zzhc();
                    if (zzpo.SDK_INT < 23 || zzhc == null || surface == null) {
                        zzhe();
                        zzhb();
                    } else {
                        zzhc.setOutputSurface(surface);
                    }
                }
                if (surface == null || surface == this.zzble) {
                    zzjk();
                    zzji();
                    return;
                }
                zzjm();
                zzji();
                if (state == 2) {
                    zzjh();
                }
            } else if (surface != null && surface != this.zzble) {
                zzjm();
                if (this.zzblg) {
                    this.zzbkw.zza(this.zzbld);
                }
            }
        } else if (i == 4) {
            this.zzblf = ((Integer) obj).intValue();
            MediaCodec zzhc2 = zzhc();
            if (zzhc2 != null) {
                zzhc2.setVideoScalingMode(this.zzblf);
            }
        } else {
            super.zza(i, obj);
        }
    }

    /* access modifiers changed from: protected */
    public final boolean zza(zzlt zzlt) {
        return this.zzbld != null || zzn(zzlt.zzbck);
    }

    /* access modifiers changed from: protected */
    public final void zza(zzlt zzlt, MediaCodec mediaCodec, zzhq zzhq, MediaCrypto mediaCrypto) throws zzma {
        zzqb zzqb;
        Point point;
        zzlt zzlt2 = zzlt;
        MediaCodec mediaCodec2 = mediaCodec;
        zzhq zzhq2 = zzhq;
        zzhq[] zzhqArr = this.zzblb;
        int i = zzhq2.width;
        int i2 = zzhq2.height;
        int zzi = zzi(zzhq);
        if (zzhqArr.length == 1) {
            zzqb = new zzqb(i, i2, zzi);
        } else {
            boolean z = false;
            for (zzhq zzhq3 : zzhqArr) {
                if (zza(zzlt2.zzbcj, zzhq2, zzhq3)) {
                    z |= zzhq3.width == -1 || zzhq3.height == -1;
                    i = Math.max(i, zzhq3.width);
                    i2 = Math.max(i2, zzhq3.height);
                    zzi = Math.max(zzi, zzi(zzhq3));
                }
            }
            if (z) {
                StringBuilder sb = new StringBuilder(66);
                sb.append("Resolutions unknown. Codec max resolution: ");
                sb.append(i);
                sb.append("x");
                sb.append(i2);
                Log.w("MediaCodecVideoRenderer", sb.toString());
                boolean z2 = zzhq2.height > zzhq2.width;
                int i3 = z2 ? zzhq2.height : zzhq2.width;
                int i4 = z2 ? zzhq2.width : zzhq2.height;
                float f = ((float) i4) / ((float) i3);
                int[] iArr = zzbku;
                int length = iArr.length;
                int i5 = 0;
                while (true) {
                    if (i5 >= length) {
                        break;
                    }
                    int i6 = length;
                    int i7 = iArr[i5];
                    int[] iArr2 = iArr;
                    int i8 = (int) (((float) i7) * f);
                    if (i7 <= i3 || i8 <= i4) {
                        break;
                    }
                    int i9 = i3;
                    int i10 = i4;
                    if (zzpo.SDK_INT >= 21) {
                        int i11 = z2 ? i8 : i7;
                        if (!z2) {
                            i7 = i8;
                        }
                        Point zzd = zzlt2.zzd(i11, i7);
                        Point point2 = zzd;
                        if (zzlt2.zza(zzd.x, zzd.y, (double) zzhq2.zzaha)) {
                            point = point2;
                            break;
                        }
                    } else {
                        int zzf = zzpo.zzf(i7, 16) << 4;
                        int zzf2 = zzpo.zzf(i8, 16) << 4;
                        if (zzf * zzf2 <= zzlw.zzhj()) {
                            int i12 = z2 ? zzf2 : zzf;
                            if (!z2) {
                                zzf = zzf2;
                            }
                            point = new Point(i12, zzf);
                        }
                    }
                    i5++;
                    length = i6;
                    iArr = iArr2;
                    i3 = i9;
                    i4 = i10;
                }
                point = null;
                if (point != null) {
                    i = Math.max(i, point.x);
                    i2 = Math.max(i2, point.y);
                    zzi = Math.max(zzi, zza(zzhq2.zzagw, i, i2));
                    StringBuilder sb2 = new StringBuilder(57);
                    sb2.append("Codec max resolution adjusted to: ");
                    sb2.append(i);
                    sb2.append("x");
                    sb2.append(i2);
                    Log.w("MediaCodecVideoRenderer", sb2.toString());
                }
            }
            zzqb = new zzqb(i, i2, zzi);
        }
        this.zzblc = zzqb;
        boolean z3 = this.zzbkz;
        int i13 = this.zzahx;
        MediaFormat zzez = zzhq.zzez();
        zzez.setInteger("max-width", zzqb.width);
        zzez.setInteger("max-height", zzqb.height);
        if (zzqb.zzblz != -1) {
            zzez.setInteger("max-input-size", zzqb.zzblz);
        }
        if (z3) {
            zzez.setInteger("auto-frc", 0);
        }
        if (i13 != 0) {
            zzez.setFeatureEnabled("tunneled-playback", true);
            zzez.setInteger("audio-session-id", i13);
        }
        if (this.zzbld == null) {
            zzpb.checkState(zzn(zzlt2.zzbck));
            if (this.zzble == null) {
                this.zzble = zzpv.zzc(this.zzvr, zzlt2.zzbck);
            }
            this.zzbld = this.zzble;
        }
        mediaCodec2.configure(zzez, this.zzbld, (MediaCrypto) null, 0);
        if (zzpo.SDK_INT >= 23 && this.zzali) {
            this.zzblv = new zzqa(this, mediaCodec2);
        }
    }

    /* access modifiers changed from: protected */
    public final void zzhe() {
        try {
            super.zzhe();
        } finally {
            Surface surface = this.zzble;
            if (surface != null) {
                if (this.zzbld == surface) {
                    this.zzbld = null;
                }
                this.zzble.release();
                this.zzble = null;
            }
        }
    }

    /* access modifiers changed from: protected */
    public final void zzc(String str, long j, long j2) {
        this.zzbkw.zza(str, j, j2);
    }

    /* access modifiers changed from: protected */
    public final void zzd(zzhq zzhq) throws zzhb {
        super.zzd(zzhq);
        this.zzbkw.zzb(zzhq);
        this.zzblm = zzhq.zzahc == -1.0f ? 1.0f : zzhq.zzahc;
        this.zzbll = zzj(zzhq);
    }

    /* access modifiers changed from: protected */
    public final void zza(zzjm zzjm) {
        if (zzpo.SDK_INT < 23 && this.zzali) {
            zzjj();
        }
    }

    /* access modifiers changed from: protected */
    public final void onOutputFormatChanged(MediaCodec mediaCodec, MediaFormat mediaFormat) {
        int i;
        int i2;
        boolean z = mediaFormat.containsKey("crop-right") && mediaFormat.containsKey("crop-left") && mediaFormat.containsKey("crop-bottom") && mediaFormat.containsKey("crop-top");
        if (z) {
            i = (mediaFormat.getInteger("crop-right") - mediaFormat.getInteger("crop-left")) + 1;
        } else {
            i = mediaFormat.getInteger("width");
        }
        this.zzbln = i;
        if (z) {
            i2 = (mediaFormat.getInteger("crop-bottom") - mediaFormat.getInteger("crop-top")) + 1;
        } else {
            i2 = mediaFormat.getInteger("height");
        }
        this.zzblo = i2;
        this.zzblq = this.zzblm;
        if (zzpo.SDK_INT >= 21) {
            int i3 = this.zzbll;
            if (i3 == 90 || i3 == 270) {
                int i4 = this.zzbln;
                this.zzbln = this.zzblo;
                this.zzblo = i4;
                this.zzblq = 1.0f / this.zzblq;
            }
        } else {
            this.zzblp = this.zzbll;
        }
        mediaCodec.setVideoScalingMode(this.zzblf);
    }

    /* access modifiers changed from: protected */
    public final boolean zza(MediaCodec mediaCodec, boolean z, zzhq zzhq, zzhq zzhq2) {
        return zza(z, zzhq, zzhq2) && zzhq2.width <= this.zzblc.width && zzhq2.height <= this.zzblc.height && zzhq2.zzagx <= this.zzblc.zzblz;
    }

    /* access modifiers changed from: protected */
    public final boolean zza(long j, long j2, MediaCodec mediaCodec, ByteBuffer byteBuffer, int i, int i2, long j3, boolean z) {
        MediaCodec mediaCodec2 = mediaCodec;
        int i3 = i;
        long j4 = j3;
        while (true) {
            int i4 = this.zzblx;
            if (i4 == 0) {
                break;
            }
            long[] jArr = this.zzbla;
            if (j4 < jArr[0]) {
                break;
            }
            this.zzblw = jArr[0];
            int i5 = i4 - 1;
            this.zzblx = i5;
            System.arraycopy(jArr, 1, jArr, 0, i5);
        }
        long j5 = j4 - this.zzblw;
        if (z) {
            zza(mediaCodec2, i3, j5);
            return true;
        }
        long j6 = j4 - j;
        if (this.zzbld == this.zzble) {
            if (!zzem(j6)) {
                return false;
            }
            zza(mediaCodec2, i3, j5);
            return true;
        } else if (!this.zzblg) {
            if (zzpo.SDK_INT >= 21) {
                zza(mediaCodec, i, j5, System.nanoTime());
            } else {
                zzb(mediaCodec2, i3, j5);
            }
            return true;
        } else if (getState() != 2) {
            return false;
        } else {
            long elapsedRealtime = j6 - ((SystemClock.elapsedRealtime() * 1000) - j2);
            long nanoTime = System.nanoTime();
            long zzf = this.zzbkv.zzf(j4, (elapsedRealtime * 1000) + nanoTime);
            long j7 = (zzf - nanoTime) / 1000;
            if (zzem(j7)) {
                zzpp.beginSection("dropVideoBuffer");
                mediaCodec2.releaseOutputBuffer(i3, false);
                zzpp.endSection();
                this.zzbci.zzanx++;
                this.zzblj++;
                this.zzblk++;
                this.zzbci.zzany = Math.max(this.zzblk, this.zzbci.zzany);
                if (this.zzblj == this.zzbky) {
                    zzjn();
                }
                return true;
            }
            if (zzpo.SDK_INT >= 21) {
                if (j7 < 50000) {
                    zza(mediaCodec, i, j5, zzf);
                    return true;
                }
            } else if (j7 < 30000) {
                if (j7 > 11000) {
                    try {
                        Thread.sleep((j7 - 10000) / 1000);
                    } catch (InterruptedException unused) {
                        Thread.currentThread().interrupt();
                    }
                }
                zzb(mediaCodec2, i3, j5);
                return true;
            }
            return false;
        }
    }

    private final void zza(MediaCodec mediaCodec, int i, long j) {
        zzpp.beginSection("skipVideoBuffer");
        mediaCodec.releaseOutputBuffer(i, false);
        zzpp.endSection();
        this.zzbci.zzanw++;
    }

    private final void zzb(MediaCodec mediaCodec, int i, long j) {
        zzjl();
        zzpp.beginSection("releaseOutputBuffer");
        mediaCodec.releaseOutputBuffer(i, true);
        zzpp.endSection();
        this.zzbci.zzanv++;
        this.zzblk = 0;
        zzjj();
    }

    private final void zza(MediaCodec mediaCodec, int i, long j, long j2) {
        zzjl();
        zzpp.beginSection("releaseOutputBuffer");
        mediaCodec.releaseOutputBuffer(i, j2);
        zzpp.endSection();
        this.zzbci.zzanv++;
        this.zzblk = 0;
        zzjj();
    }

    private final boolean zzn(boolean z) {
        if (zzpo.SDK_INT < 23 || this.zzali) {
            return false;
        }
        return !z || zzpv.zzc(this.zzvr);
    }

    private final void zzjh() {
        this.zzblh = this.zzbkx > 0 ? SystemClock.elapsedRealtime() + this.zzbkx : -9223372036854775807L;
    }

    private final void zzji() {
        MediaCodec zzhc;
        this.zzblg = false;
        if (zzpo.SDK_INT >= 23 && this.zzali && (zzhc = zzhc()) != null) {
            this.zzblv = new zzqa(this, zzhc);
        }
    }

    /* access modifiers changed from: package-private */
    public final void zzjj() {
        if (!this.zzblg) {
            this.zzblg = true;
            this.zzbkw.zza(this.zzbld);
        }
    }

    private final void zzjk() {
        this.zzblr = -1;
        this.zzbls = -1;
        this.zzblu = -1.0f;
        this.zzblt = -1;
    }

    private final void zzjl() {
        if (this.zzblr != this.zzbln || this.zzbls != this.zzblo || this.zzblt != this.zzblp || this.zzblu != this.zzblq) {
            this.zzbkw.zza(this.zzbln, this.zzblo, this.zzblp, this.zzblq);
            this.zzblr = this.zzbln;
            this.zzbls = this.zzblo;
            this.zzblt = this.zzblp;
            this.zzblu = this.zzblq;
        }
    }

    private final void zzjm() {
        if (this.zzblr != -1 || this.zzbls != -1) {
            this.zzbkw.zza(this.zzbln, this.zzblo, this.zzblp, this.zzblq);
        }
    }

    private final void zzjn() {
        if (this.zzblj > 0) {
            long elapsedRealtime = SystemClock.elapsedRealtime();
            this.zzbkw.zze(this.zzblj, elapsedRealtime - this.zzbli);
            this.zzblj = 0;
            this.zzbli = elapsedRealtime;
        }
    }

    private static int zzi(zzhq zzhq) {
        if (zzhq.zzagx != -1) {
            return zzhq.zzagx;
        }
        return zza(zzhq.zzagw, zzhq.width, zzhq.height);
    }

    /* JADX WARNING: Can't fix incorrect switch cases order */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private static int zza(java.lang.String r7, int r8, int r9) {
        /*
            r0 = -1
            if (r8 == r0) goto L_0x0086
            if (r9 != r0) goto L_0x0007
            goto L_0x0086
        L_0x0007:
            int r1 = r7.hashCode()
            r2 = 5
            r3 = 1
            r4 = 3
            r5 = 4
            r6 = 2
            switch(r1) {
                case -1664118616: goto L_0x0046;
                case -1662541442: goto L_0x003c;
                case 1187890754: goto L_0x0032;
                case 1331836730: goto L_0x0028;
                case 1599127256: goto L_0x001e;
                case 1599127257: goto L_0x0014;
                default: goto L_0x0013;
            }
        L_0x0013:
            goto L_0x0050
        L_0x0014:
            java.lang.String r1 = "video/x-vnd.on2.vp9"
            boolean r7 = r7.equals(r1)
            if (r7 == 0) goto L_0x0050
            r7 = 5
            goto L_0x0051
        L_0x001e:
            java.lang.String r1 = "video/x-vnd.on2.vp8"
            boolean r7 = r7.equals(r1)
            if (r7 == 0) goto L_0x0050
            r7 = 3
            goto L_0x0051
        L_0x0028:
            java.lang.String r1 = "video/avc"
            boolean r7 = r7.equals(r1)
            if (r7 == 0) goto L_0x0050
            r7 = 2
            goto L_0x0051
        L_0x0032:
            java.lang.String r1 = "video/mp4v-es"
            boolean r7 = r7.equals(r1)
            if (r7 == 0) goto L_0x0050
            r7 = 1
            goto L_0x0051
        L_0x003c:
            java.lang.String r1 = "video/hevc"
            boolean r7 = r7.equals(r1)
            if (r7 == 0) goto L_0x0050
            r7 = 4
            goto L_0x0051
        L_0x0046:
            java.lang.String r1 = "video/3gpp"
            boolean r7 = r7.equals(r1)
            if (r7 == 0) goto L_0x0050
            r7 = 0
            goto L_0x0051
        L_0x0050:
            r7 = -1
        L_0x0051:
            if (r7 == 0) goto L_0x007d
            if (r7 == r3) goto L_0x007d
            if (r7 == r6) goto L_0x0061
            if (r7 == r4) goto L_0x007d
            if (r7 == r5) goto L_0x005e
            if (r7 == r2) goto L_0x005e
            return r0
        L_0x005e:
            int r8 = r8 * r9
            goto L_0x0080
        L_0x0061:
            java.lang.String r7 = com.google.android.gms.internal.ads.zzpo.MODEL
            java.lang.String r1 = "BRAVIA 4K 2015"
            boolean r7 = r1.equals(r7)
            if (r7 == 0) goto L_0x006c
            return r0
        L_0x006c:
            r7 = 16
            int r8 = com.google.android.gms.internal.ads.zzpo.zzf(r8, r7)
            int r7 = com.google.android.gms.internal.ads.zzpo.zzf(r9, r7)
            int r8 = r8 * r7
            int r7 = r8 << 4
            int r8 = r7 << 4
            goto L_0x007f
        L_0x007d:
            int r8 = r8 * r9
        L_0x007f:
            r5 = 2
        L_0x0080:
            int r8 = r8 * 3
            int r5 = r5 * 2
            int r8 = r8 / r5
            return r8
        L_0x0086:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzpz.zza(java.lang.String, int, int):int");
    }

    private static boolean zza(boolean z, zzhq zzhq, zzhq zzhq2) {
        if (!zzhq.zzagw.equals(zzhq2.zzagw) || zzj(zzhq) != zzj(zzhq2)) {
            return false;
        }
        if (!z) {
            return zzhq.width == zzhq2.width && zzhq.height == zzhq2.height;
        }
        return true;
    }

    private static int zzj(zzhq zzhq) {
        if (zzhq.zzahb == -1) {
            return 0;
        }
        return zzhq.zzahb;
    }
}
