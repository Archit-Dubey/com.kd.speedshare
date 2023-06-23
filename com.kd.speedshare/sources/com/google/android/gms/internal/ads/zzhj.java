package com.google.android.gms.internal.ads;

import android.os.Handler;
import android.os.HandlerThread;
import android.os.SystemClock;
import android.util.Log;
import android.util.Pair;
import java.io.IOException;

/* compiled from: com.google.android.gms:play-services-ads@@19.2.0 */
final class zzhj implements Handler.Callback, zzmy, zzna, zzoh {
    private final Handler handler;
    private int repeatMode = 0;
    private int state;
    private final zzhv[] zzaeh;
    private final zzoe zzaei;
    private final Handler zzaek;
    private final zzib zzaen;
    private final zzic zzaeo;
    private boolean zzaeq;
    private boolean zzaeu;
    private zzia zzaev;
    private zzhw zzaez;
    private zzhl zzafa;
    private final zzhy[] zzafe;
    private final zzhu zzaff;
    private final zzpn zzafg;
    private final HandlerThread zzafh;
    private final zzhe zzafi;
    private zzhv zzafj;
    private zzpf zzafk;
    private zznb zzafl;
    private zzhv[] zzafm;
    private boolean zzafn;
    private boolean zzafo;
    private int zzafp;
    private int zzafq;
    private long zzafr;
    private int zzafs;
    private zzho zzaft;
    private long zzafu;
    private zzhm zzafv;
    private zzhm zzafw;
    private zzhm zzafx;

    public zzhj(zzhv[] zzhvArr, zzoe zzoe, zzhu zzhu, boolean z, int i, Handler handler2, zzhl zzhl, zzhe zzhe) {
        this.zzaeh = zzhvArr;
        this.zzaei = zzoe;
        this.zzaff = zzhu;
        this.zzaeq = z;
        this.zzaek = handler2;
        this.state = 1;
        this.zzafa = zzhl;
        this.zzafi = zzhe;
        this.zzafe = new zzhy[zzhvArr.length];
        for (int i2 = 0; i2 < zzhvArr.length; i2++) {
            zzhvArr[i2].setIndex(i2);
            this.zzafe[i2] = zzhvArr[i2].zzdy();
        }
        this.zzafg = new zzpn();
        this.zzafm = new zzhv[0];
        this.zzaen = new zzib();
        this.zzaeo = new zzic();
        zzoe.zza(this);
        this.zzaez = zzhw.zzahs;
        HandlerThread handlerThread = new HandlerThread("ExoPlayerImplInternal:Handler", -16);
        this.zzafh = handlerThread;
        handlerThread.start();
        this.handler = new Handler(this.zzafh.getLooper(), this);
    }

    public final void zza(zznb zznb, boolean z) {
        this.handler.obtainMessage(0, 1, 0, zznb).sendToTarget();
    }

    public final void zzg(boolean z) {
        this.handler.obtainMessage(1, z ? 1 : 0, 0).sendToTarget();
    }

    public final void zza(zzia zzia, int i, long j) {
        this.handler.obtainMessage(3, new zzho(zzia, i, j)).sendToTarget();
    }

    public final void stop() {
        this.handler.sendEmptyMessage(5);
    }

    public final void zza(zzhf... zzhfArr) {
        if (this.zzafn) {
            Log.w("ExoPlayerImplInternal", "Ignoring messages sent after release.");
            return;
        }
        this.zzafp++;
        this.handler.obtainMessage(11, zzhfArr).sendToTarget();
    }

    /* JADX WARNING: Can't wrap try/catch for region: R(7:11|12|13|14|23|20|9) */
    /* JADX WARNING: Code restructure failed: missing block: B:22:0x001f, code lost:
        continue;
     */
    /* JADX WARNING: Missing exception handler attribute for start block: B:13:0x0027 */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final synchronized void zzb(com.google.android.gms.internal.ads.zzhf... r4) {
        /*
            r3 = this;
            monitor-enter(r3)
            boolean r0 = r3.zzafn     // Catch:{ all -> 0x0031 }
            if (r0 == 0) goto L_0x000e
            java.lang.String r4 = "ExoPlayerImplInternal"
            java.lang.String r0 = "Ignoring messages sent after release."
            android.util.Log.w(r4, r0)     // Catch:{ all -> 0x0031 }
            monitor-exit(r3)
            return
        L_0x000e:
            int r0 = r3.zzafp     // Catch:{ all -> 0x0031 }
            int r1 = r0 + 1
            r3.zzafp = r1     // Catch:{ all -> 0x0031 }
            android.os.Handler r1 = r3.handler     // Catch:{ all -> 0x0031 }
            r2 = 11
            android.os.Message r4 = r1.obtainMessage(r2, r4)     // Catch:{ all -> 0x0031 }
            r4.sendToTarget()     // Catch:{ all -> 0x0031 }
        L_0x001f:
            int r4 = r3.zzafq     // Catch:{ all -> 0x0031 }
            if (r4 > r0) goto L_0x002f
            r3.wait()     // Catch:{ InterruptedException -> 0x0027 }
            goto L_0x001f
        L_0x0027:
            java.lang.Thread r4 = java.lang.Thread.currentThread()     // Catch:{ all -> 0x0031 }
            r4.interrupt()     // Catch:{ all -> 0x0031 }
            goto L_0x001f
        L_0x002f:
            monitor-exit(r3)
            return
        L_0x0031:
            r4 = move-exception
            monitor-exit(r3)
            goto L_0x0035
        L_0x0034:
            throw r4
        L_0x0035:
            goto L_0x0034
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzhj.zzb(com.google.android.gms.internal.ads.zzhf[]):void");
    }

    /* JADX WARNING: Can't wrap try/catch for region: R(7:10|11|12|13|23|20|8) */
    /* JADX WARNING: Code restructure failed: missing block: B:22:0x000d, code lost:
        continue;
     */
    /* JADX WARNING: Missing exception handler attribute for start block: B:12:0x0015 */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final synchronized void release() {
        /*
            r2 = this;
            monitor-enter(r2)
            boolean r0 = r2.zzafn     // Catch:{ all -> 0x0024 }
            if (r0 == 0) goto L_0x0007
            monitor-exit(r2)
            return
        L_0x0007:
            android.os.Handler r0 = r2.handler     // Catch:{ all -> 0x0024 }
            r1 = 6
            r0.sendEmptyMessage(r1)     // Catch:{ all -> 0x0024 }
        L_0x000d:
            boolean r0 = r2.zzafn     // Catch:{ all -> 0x0024 }
            if (r0 != 0) goto L_0x001d
            r2.wait()     // Catch:{ InterruptedException -> 0x0015 }
            goto L_0x000d
        L_0x0015:
            java.lang.Thread r0 = java.lang.Thread.currentThread()     // Catch:{ all -> 0x0024 }
            r0.interrupt()     // Catch:{ all -> 0x0024 }
            goto L_0x000d
        L_0x001d:
            android.os.HandlerThread r0 = r2.zzafh     // Catch:{ all -> 0x0024 }
            r0.quit()     // Catch:{ all -> 0x0024 }
            monitor-exit(r2)
            return
        L_0x0024:
            r0 = move-exception
            monitor-exit(r2)
            goto L_0x0028
        L_0x0027:
            throw r0
        L_0x0028:
            goto L_0x0027
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzhj.release():void");
    }

    public final void zzb(zzia zzia, Object obj) {
        this.handler.obtainMessage(7, Pair.create(zzia, obj)).sendToTarget();
    }

    public final void zza(zzmz zzmz) {
        this.handler.obtainMessage(8, zzmz).sendToTarget();
    }

    public final void zzeo() {
        this.handler.sendEmptyMessage(10);
    }

    /* JADX WARNING: Code restructure failed: missing block: B:503:0x08a8, code lost:
        r0 = move-exception;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:504:0x08a9, code lost:
        r1 = r0;
        android.util.Log.e("ExoPlayerImplInternal", "Internal runtime error.", r1);
        r8.zzaek.obtainMessage(8, com.google.android.gms.internal.ads.zzhb.zza(r1)).sendToTarget();
        zzes();
     */
    /* JADX WARNING: Code restructure failed: missing block: B:505:0x08c3, code lost:
        return true;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:506:0x08c4, code lost:
        r0 = move-exception;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:507:0x08c5, code lost:
        r3 = 8;
        r1 = r0;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:510:0x08e0, code lost:
        r0 = move-exception;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:511:0x08e1, code lost:
        r3 = 8;
        r1 = r0;
     */
    /* JADX WARNING: Failed to process nested try/catch */
    /* JADX WARNING: Removed duplicated region for block: B:170:0x0287 A[Catch:{ all -> 0x0448, all -> 0x0382, all -> 0x00c8, all -> 0x00d5, all -> 0x00c4, zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }] */
    /* JADX WARNING: Removed duplicated region for block: B:171:0x028a A[Catch:{ all -> 0x0448, all -> 0x0382, all -> 0x00c8, all -> 0x00d5, all -> 0x00c4, zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }] */
    /* JADX WARNING: Removed duplicated region for block: B:173:0x028e A[Catch:{ all -> 0x0448, all -> 0x0382, all -> 0x00c8, all -> 0x00d5, all -> 0x00c4, zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }] */
    /* JADX WARNING: Removed duplicated region for block: B:206:0x0350 A[Catch:{ all -> 0x0448, all -> 0x0382, all -> 0x00c8, all -> 0x00d5, all -> 0x00c4, zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }] */
    /* JADX WARNING: Removed duplicated region for block: B:207:0x0364 A[Catch:{ all -> 0x0448, all -> 0x0382, all -> 0x00c8, all -> 0x00d5, all -> 0x00c4, zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }] */
    /* JADX WARNING: Removed duplicated region for block: B:307:0x052c A[Catch:{ all -> 0x0448, all -> 0x0382, all -> 0x00c8, all -> 0x00d5, all -> 0x00c4, zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }] */
    /* JADX WARNING: Removed duplicated region for block: B:309:0x0533 A[Catch:{ all -> 0x0448, all -> 0x0382, all -> 0x00c8, all -> 0x00d5, all -> 0x00c4, zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }] */
    /* JADX WARNING: Removed duplicated region for block: B:312:0x054d A[Catch:{ all -> 0x0448, all -> 0x0382, all -> 0x00c8, all -> 0x00d5, all -> 0x00c4, zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }] */
    /* JADX WARNING: Removed duplicated region for block: B:313:0x0550 A[Catch:{ all -> 0x0448, all -> 0x0382, all -> 0x00c8, all -> 0x00d5, all -> 0x00c4, zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }] */
    /* JADX WARNING: Removed duplicated region for block: B:316:0x058b A[Catch:{ all -> 0x0448, all -> 0x0382, all -> 0x00c8, all -> 0x00d5, all -> 0x00c4, zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }] */
    /* JADX WARNING: Removed duplicated region for block: B:320:0x059d A[Catch:{ all -> 0x0448, all -> 0x0382, all -> 0x00c8, all -> 0x00d5, all -> 0x00c4, zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }] */
    /* JADX WARNING: Removed duplicated region for block: B:331:0x05b9 A[Catch:{ all -> 0x0448, all -> 0x0382, all -> 0x00c8, all -> 0x00d5, all -> 0x00c4, zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }, LOOP:8: B:331:0x05b9->B:335:0x05cb, LOOP_START] */
    /* JADX WARNING: Removed duplicated region for block: B:404:0x0718 A[Catch:{ all -> 0x0448, all -> 0x0382, all -> 0x00c8, all -> 0x00d5, all -> 0x00c4, zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }] */
    /* JADX WARNING: Removed duplicated region for block: B:443:0x07d1 A[Catch:{ all -> 0x0448, all -> 0x0382, all -> 0x00c8, all -> 0x00d5, all -> 0x00c4, zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }] */
    /* JADX WARNING: Removed duplicated region for block: B:503:0x08a8 A[ExcHandler: RuntimeException (r0v2 'e' java.lang.RuntimeException A[CUSTOM_DECLARE]), Splitter:B:1:0x0005] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final boolean handleMessage(android.os.Message r35) {
        /*
            r34 = this;
            r8 = r34
            r1 = r35
            r10 = 1
            int r2 = r1.what     // Catch:{ zzhb -> 0x08e0, IOException -> 0x08c4, RuntimeException -> 0x08a8 }
            r11 = 7
            r3 = 0
            r14 = 3
            r5 = -1
            r6 = 0
            r15 = 4
            r12 = -9223372036854775807(0x8000000000000001, double:-4.9E-324)
            r7 = 2
            r9 = 0
            switch(r2) {
                case 0: goto L_0x0867;
                case 1: goto L_0x083a;
                case 2: goto L_0x0462;
                case 3: goto L_0x03ab;
                case 4: goto L_0x038a;
                case 5: goto L_0x0386;
                case 6: goto L_0x036f;
                case 7: goto L_0x0213;
                case 8: goto L_0x01df;
                case 9: goto L_0x01cc;
                case 10: goto L_0x00d9;
                case 11: goto L_0x009b;
                case 12: goto L_0x0019;
                default: goto L_0x0018;
            }
        L_0x0018:
            return r9
        L_0x0019:
            int r1 = r1.arg1     // Catch:{ zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }
            r8.repeatMode = r1     // Catch:{ zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }
            com.google.android.gms.internal.ads.zzhm r2 = r8.zzafx     // Catch:{ zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }
            if (r2 == 0) goto L_0x0024
            com.google.android.gms.internal.ads.zzhm r2 = r8.zzafx     // Catch:{ zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }
            goto L_0x0026
        L_0x0024:
            com.google.android.gms.internal.ads.zzhm r2 = r8.zzafv     // Catch:{ zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }
        L_0x0026:
            if (r2 == 0) goto L_0x009a
            com.google.android.gms.internal.ads.zzhm r3 = r8.zzafw     // Catch:{ zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }
            if (r2 != r3) goto L_0x002e
            r3 = 1
            goto L_0x002f
        L_0x002e:
            r3 = 0
        L_0x002f:
            com.google.android.gms.internal.ads.zzhm r4 = r8.zzafv     // Catch:{ zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }
            if (r2 != r4) goto L_0x0035
            r4 = 1
            goto L_0x0036
        L_0x0035:
            r4 = 0
        L_0x0036:
            com.google.android.gms.internal.ads.zzia r11 = r8.zzaev     // Catch:{ zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }
            int r12 = r2.zzafz     // Catch:{ zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }
            com.google.android.gms.internal.ads.zzic r13 = r8.zzaeo     // Catch:{ zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }
            com.google.android.gms.internal.ads.zzib r14 = r8.zzaen     // Catch:{ zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }
            int r11 = r11.zza((int) r12, (com.google.android.gms.internal.ads.zzic) r13, (com.google.android.gms.internal.ads.zzib) r14, (int) r1)     // Catch:{ zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }
            com.google.android.gms.internal.ads.zzhm r12 = r2.zzagl     // Catch:{ zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }
            if (r12 == 0) goto L_0x0061
            if (r11 == r5) goto L_0x0061
            com.google.android.gms.internal.ads.zzhm r12 = r2.zzagl     // Catch:{ zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }
            int r12 = r12.zzafz     // Catch:{ zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }
            if (r12 != r11) goto L_0x0061
            com.google.android.gms.internal.ads.zzhm r2 = r2.zzagl     // Catch:{ zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }
            com.google.android.gms.internal.ads.zzhm r11 = r8.zzafw     // Catch:{ zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }
            if (r2 != r11) goto L_0x0056
            r11 = 1
            goto L_0x0057
        L_0x0056:
            r11 = 0
        L_0x0057:
            r3 = r3 | r11
            com.google.android.gms.internal.ads.zzhm r11 = r8.zzafv     // Catch:{ zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }
            if (r2 != r11) goto L_0x005e
            r11 = 1
            goto L_0x005f
        L_0x005e:
            r11 = 0
        L_0x005f:
            r4 = r4 | r11
            goto L_0x0036
        L_0x0061:
            com.google.android.gms.internal.ads.zzhm r5 = r2.zzagl     // Catch:{ zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }
            if (r5 == 0) goto L_0x006c
            com.google.android.gms.internal.ads.zzhm r5 = r2.zzagl     // Catch:{ zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }
            zza((com.google.android.gms.internal.ads.zzhm) r5)     // Catch:{ zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }
            r2.zzagl = r6     // Catch:{ zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }
        L_0x006c:
            int r5 = r2.zzafz     // Catch:{ zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }
            boolean r5 = r8.zzt(r5)     // Catch:{ zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }
            r2.zzagi = r5     // Catch:{ zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }
            if (r4 != 0) goto L_0x0078
            r8.zzafv = r2     // Catch:{ zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }
        L_0x0078:
            if (r3 != 0) goto L_0x0091
            com.google.android.gms.internal.ads.zzhm r2 = r8.zzafx     // Catch:{ zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }
            if (r2 == 0) goto L_0x0091
            com.google.android.gms.internal.ads.zzhm r2 = r8.zzafx     // Catch:{ zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }
            int r2 = r2.zzafz     // Catch:{ zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }
            com.google.android.gms.internal.ads.zzhl r3 = r8.zzafa     // Catch:{ zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }
            long r3 = r3.zzagb     // Catch:{ zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }
            long r3 = r8.zza((int) r2, (long) r3)     // Catch:{ zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }
            com.google.android.gms.internal.ads.zzhl r5 = new com.google.android.gms.internal.ads.zzhl     // Catch:{ zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }
            r5.<init>(r2, r3)     // Catch:{ zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }
            r8.zzafa = r5     // Catch:{ zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }
        L_0x0091:
            int r2 = r8.state     // Catch:{ zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }
            if (r2 != r15) goto L_0x009a
            if (r1 == 0) goto L_0x009a
            r8.setState(r7)     // Catch:{ zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }
        L_0x009a:
            return r10
        L_0x009b:
            java.lang.Object r1 = r1.obj     // Catch:{ zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }
            com.google.android.gms.internal.ads.zzhf[] r1 = (com.google.android.gms.internal.ads.zzhf[]) r1     // Catch:{ zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }
            int r2 = r1.length     // Catch:{ all -> 0x00c8 }
        L_0x00a0:
            if (r9 >= r2) goto L_0x00b0
            r3 = r1[r9]     // Catch:{ all -> 0x00c8 }
            com.google.android.gms.internal.ads.zzhg r4 = r3.zzaee     // Catch:{ all -> 0x00c8 }
            int r5 = r3.zzaef     // Catch:{ all -> 0x00c8 }
            java.lang.Object r3 = r3.zzaeg     // Catch:{ all -> 0x00c8 }
            r4.zza(r5, r3)     // Catch:{ all -> 0x00c8 }
            int r9 = r9 + 1
            goto L_0x00a0
        L_0x00b0:
            com.google.android.gms.internal.ads.zznb r1 = r8.zzafl     // Catch:{ all -> 0x00c8 }
            if (r1 == 0) goto L_0x00b9
            android.os.Handler r1 = r8.handler     // Catch:{ all -> 0x00c8 }
            r1.sendEmptyMessage(r7)     // Catch:{ all -> 0x00c8 }
        L_0x00b9:
            monitor-enter(r34)     // Catch:{ zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }
            int r1 = r8.zzafq     // Catch:{ all -> 0x00c4 }
            int r1 = r1 + r10
            r8.zzafq = r1     // Catch:{ all -> 0x00c4 }
            r34.notifyAll()     // Catch:{ all -> 0x00c4 }
            monitor-exit(r34)     // Catch:{ all -> 0x00c4 }
            return r10
        L_0x00c4:
            r0 = move-exception
            r1 = r0
            monitor-exit(r34)     // Catch:{ all -> 0x00c4 }
            throw r1     // Catch:{ zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }
        L_0x00c8:
            r0 = move-exception
            r1 = r0
            monitor-enter(r34)     // Catch:{ zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }
            int r2 = r8.zzafq     // Catch:{ all -> 0x00d5 }
            int r2 = r2 + r10
            r8.zzafq = r2     // Catch:{ all -> 0x00d5 }
            r34.notifyAll()     // Catch:{ all -> 0x00d5 }
            monitor-exit(r34)     // Catch:{ all -> 0x00d5 }
            throw r1     // Catch:{ zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }
        L_0x00d5:
            r0 = move-exception
            r1 = r0
            monitor-exit(r34)     // Catch:{ all -> 0x00d5 }
            throw r1     // Catch:{ zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }
        L_0x00d9:
            com.google.android.gms.internal.ads.zzhm r1 = r8.zzafx     // Catch:{ zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }
            if (r1 == 0) goto L_0x01cb
            com.google.android.gms.internal.ads.zzhm r1 = r8.zzafx     // Catch:{ zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }
            r2 = 1
        L_0x00e0:
            if (r1 == 0) goto L_0x01cb
            boolean r3 = r1.zzagj     // Catch:{ zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }
            if (r3 != 0) goto L_0x00e8
            goto L_0x01cb
        L_0x00e8:
            boolean r3 = r1.zzex()     // Catch:{ zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }
            if (r3 != 0) goto L_0x00f6
            com.google.android.gms.internal.ads.zzhm r3 = r8.zzafw     // Catch:{ zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }
            if (r1 != r3) goto L_0x00f3
            r2 = 0
        L_0x00f3:
            com.google.android.gms.internal.ads.zzhm r1 = r1.zzagl     // Catch:{ zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }
            goto L_0x00e0
        L_0x00f6:
            if (r2 == 0) goto L_0x0194
            com.google.android.gms.internal.ads.zzhm r2 = r8.zzafw     // Catch:{ zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }
            com.google.android.gms.internal.ads.zzhm r3 = r8.zzafx     // Catch:{ zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }
            if (r2 == r3) goto L_0x0100
            r2 = 1
            goto L_0x0101
        L_0x0100:
            r2 = 0
        L_0x0101:
            com.google.android.gms.internal.ads.zzhm r3 = r8.zzafx     // Catch:{ zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }
            com.google.android.gms.internal.ads.zzhm r3 = r3.zzagl     // Catch:{ zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }
            zza((com.google.android.gms.internal.ads.zzhm) r3)     // Catch:{ zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }
            com.google.android.gms.internal.ads.zzhm r3 = r8.zzafx     // Catch:{ zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }
            r3.zzagl = r6     // Catch:{ zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }
            com.google.android.gms.internal.ads.zzhm r3 = r8.zzafx     // Catch:{ zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }
            r8.zzafv = r3     // Catch:{ zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }
            com.google.android.gms.internal.ads.zzhm r3 = r8.zzafx     // Catch:{ zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }
            r8.zzafw = r3     // Catch:{ zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }
            com.google.android.gms.internal.ads.zzhv[] r3 = r8.zzaeh     // Catch:{ zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }
            int r3 = r3.length     // Catch:{ zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }
            boolean[] r3 = new boolean[r3]     // Catch:{ zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }
            com.google.android.gms.internal.ads.zzhm r4 = r8.zzafx     // Catch:{ zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }
            com.google.android.gms.internal.ads.zzhl r5 = r8.zzafa     // Catch:{ zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }
            long r11 = r5.zzagb     // Catch:{ zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }
            long r4 = r4.zza(r11, r2, r3)     // Catch:{ zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }
            com.google.android.gms.internal.ads.zzhl r2 = r8.zzafa     // Catch:{ zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }
            long r11 = r2.zzagb     // Catch:{ zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }
            int r2 = (r4 > r11 ? 1 : (r4 == r11 ? 0 : -1))
            if (r2 == 0) goto L_0x0132
            com.google.android.gms.internal.ads.zzhl r2 = r8.zzafa     // Catch:{ zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }
            r2.zzagb = r4     // Catch:{ zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }
            r8.zzdq(r4)     // Catch:{ zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }
        L_0x0132:
            com.google.android.gms.internal.ads.zzhv[] r2 = r8.zzaeh     // Catch:{ zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }
            int r2 = r2.length     // Catch:{ zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }
            boolean[] r2 = new boolean[r2]     // Catch:{ zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }
            r4 = 0
            r5 = 0
        L_0x0139:
            com.google.android.gms.internal.ads.zzhv[] r11 = r8.zzaeh     // Catch:{ zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }
            int r11 = r11.length     // Catch:{ zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }
            if (r4 >= r11) goto L_0x0185
            com.google.android.gms.internal.ads.zzhv[] r11 = r8.zzaeh     // Catch:{ zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }
            r11 = r11[r4]     // Catch:{ zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }
            int r12 = r11.getState()     // Catch:{ zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }
            if (r12 == 0) goto L_0x014a
            r12 = 1
            goto L_0x014b
        L_0x014a:
            r12 = 0
        L_0x014b:
            r2[r4] = r12     // Catch:{ zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }
            com.google.android.gms.internal.ads.zzhm r12 = r8.zzafx     // Catch:{ zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }
            com.google.android.gms.internal.ads.zznk[] r12 = r12.zzagf     // Catch:{ zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }
            r12 = r12[r4]     // Catch:{ zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }
            if (r12 == 0) goto L_0x0157
            int r5 = r5 + 1
        L_0x0157:
            boolean r13 = r2[r4]     // Catch:{ zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }
            if (r13 == 0) goto L_0x0182
            com.google.android.gms.internal.ads.zznk r13 = r11.zzea()     // Catch:{ zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }
            if (r12 == r13) goto L_0x0179
            com.google.android.gms.internal.ads.zzhv r13 = r8.zzafj     // Catch:{ zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }
            if (r11 != r13) goto L_0x0172
            if (r12 != 0) goto L_0x016e
            com.google.android.gms.internal.ads.zzpn r12 = r8.zzafg     // Catch:{ zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }
            com.google.android.gms.internal.ads.zzpf r13 = r8.zzafk     // Catch:{ zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }
            r12.zza(r13)     // Catch:{ zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }
        L_0x016e:
            r8.zzafk = r6     // Catch:{ zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }
            r8.zzafj = r6     // Catch:{ zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }
        L_0x0172:
            zza((com.google.android.gms.internal.ads.zzhv) r11)     // Catch:{ zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }
            r11.disable()     // Catch:{ zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }
            goto L_0x0182
        L_0x0179:
            boolean r12 = r3[r4]     // Catch:{ zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }
            if (r12 == 0) goto L_0x0182
            long r12 = r8.zzafu     // Catch:{ zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }
            r11.zzdm(r12)     // Catch:{ zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }
        L_0x0182:
            int r4 = r4 + 1
            goto L_0x0139
        L_0x0185:
            android.os.Handler r3 = r8.zzaek     // Catch:{ zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }
            com.google.android.gms.internal.ads.zzog r1 = r1.zzagm     // Catch:{ zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }
            android.os.Message r1 = r3.obtainMessage(r14, r1)     // Catch:{ zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }
            r1.sendToTarget()     // Catch:{ zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }
            r8.zza((boolean[]) r2, (int) r5)     // Catch:{ zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }
            goto L_0x01c0
        L_0x0194:
            r8.zzafv = r1     // Catch:{ zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }
            com.google.android.gms.internal.ads.zzhm r1 = r1.zzagl     // Catch:{ zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }
        L_0x0198:
            if (r1 == 0) goto L_0x01a0
            r1.release()     // Catch:{ zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }
            com.google.android.gms.internal.ads.zzhm r1 = r1.zzagl     // Catch:{ zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }
            goto L_0x0198
        L_0x01a0:
            com.google.android.gms.internal.ads.zzhm r1 = r8.zzafv     // Catch:{ zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }
            r1.zzagl = r6     // Catch:{ zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }
            com.google.android.gms.internal.ads.zzhm r1 = r8.zzafv     // Catch:{ zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }
            boolean r1 = r1.zzagj     // Catch:{ zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }
            if (r1 == 0) goto L_0x01c0
            com.google.android.gms.internal.ads.zzhm r1 = r8.zzafv     // Catch:{ zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }
            long r1 = r1.zzaga     // Catch:{ zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }
            com.google.android.gms.internal.ads.zzhm r3 = r8.zzafv     // Catch:{ zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }
            long r4 = r8.zzafu     // Catch:{ zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }
            long r11 = r3.zzev()     // Catch:{ zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }
            long r4 = r4 - r11
            long r1 = java.lang.Math.max(r1, r4)     // Catch:{ zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }
            com.google.android.gms.internal.ads.zzhm r3 = r8.zzafv     // Catch:{ zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }
            r3.zzb(r1, r9)     // Catch:{ zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }
        L_0x01c0:
            r34.zzeu()     // Catch:{ zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }
            r34.zzer()     // Catch:{ zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }
            android.os.Handler r1 = r8.handler     // Catch:{ zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }
            r1.sendEmptyMessage(r7)     // Catch:{ zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }
        L_0x01cb:
            return r10
        L_0x01cc:
            java.lang.Object r1 = r1.obj     // Catch:{ zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }
            com.google.android.gms.internal.ads.zzmz r1 = (com.google.android.gms.internal.ads.zzmz) r1     // Catch:{ zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }
            com.google.android.gms.internal.ads.zzhm r2 = r8.zzafv     // Catch:{ zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }
            if (r2 == 0) goto L_0x01de
            com.google.android.gms.internal.ads.zzhm r2 = r8.zzafv     // Catch:{ zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }
            com.google.android.gms.internal.ads.zzmz r2 = r2.zzagd     // Catch:{ zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }
            if (r2 == r1) goto L_0x01db
            goto L_0x01de
        L_0x01db:
            r34.zzeu()     // Catch:{ zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }
        L_0x01de:
            return r10
        L_0x01df:
            java.lang.Object r1 = r1.obj     // Catch:{ zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }
            com.google.android.gms.internal.ads.zzmz r1 = (com.google.android.gms.internal.ads.zzmz) r1     // Catch:{ zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }
            com.google.android.gms.internal.ads.zzhm r2 = r8.zzafv     // Catch:{ zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }
            if (r2 == 0) goto L_0x0212
            com.google.android.gms.internal.ads.zzhm r2 = r8.zzafv     // Catch:{ zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }
            com.google.android.gms.internal.ads.zzmz r2 = r2.zzagd     // Catch:{ zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }
            if (r2 == r1) goto L_0x01ee
            goto L_0x0212
        L_0x01ee:
            com.google.android.gms.internal.ads.zzhm r1 = r8.zzafv     // Catch:{ zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }
            r1.zzagj = r10     // Catch:{ zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }
            r1.zzex()     // Catch:{ zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }
            long r2 = r1.zzaga     // Catch:{ zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }
            long r2 = r1.zzb(r2, r9)     // Catch:{ zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }
            r1.zzaga = r2     // Catch:{ zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }
            com.google.android.gms.internal.ads.zzhm r1 = r8.zzafx     // Catch:{ zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }
            if (r1 != 0) goto L_0x020f
            com.google.android.gms.internal.ads.zzhm r1 = r8.zzafv     // Catch:{ zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }
            r8.zzafw = r1     // Catch:{ zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }
            long r1 = r1.zzaga     // Catch:{ zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }
            r8.zzdq(r1)     // Catch:{ zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }
            com.google.android.gms.internal.ads.zzhm r1 = r8.zzafw     // Catch:{ zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }
            r8.zzb((com.google.android.gms.internal.ads.zzhm) r1)     // Catch:{ zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }
        L_0x020f:
            r34.zzeu()     // Catch:{ zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }
        L_0x0212:
            return r10
        L_0x0213:
            java.lang.Object r1 = r1.obj     // Catch:{ zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }
            android.util.Pair r1 = (android.util.Pair) r1     // Catch:{ zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }
            com.google.android.gms.internal.ads.zzia r2 = r8.zzaev     // Catch:{ zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }
            java.lang.Object r3 = r1.first     // Catch:{ zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }
            com.google.android.gms.internal.ads.zzia r3 = (com.google.android.gms.internal.ads.zzia) r3     // Catch:{ zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }
            r8.zzaev = r3     // Catch:{ zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }
            java.lang.Object r1 = r1.second     // Catch:{ zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }
            if (r2 != 0) goto L_0x0282
            int r3 = r8.zzafs     // Catch:{ zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }
            if (r3 <= 0) goto L_0x0252
            com.google.android.gms.internal.ads.zzho r3 = r8.zzaft     // Catch:{ zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }
            android.util.Pair r3 = r8.zza((com.google.android.gms.internal.ads.zzho) r3)     // Catch:{ zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }
            int r4 = r8.zzafs     // Catch:{ zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }
            r8.zzafs = r9     // Catch:{ zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }
            r8.zzaft = r6     // Catch:{ zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }
            if (r3 != 0) goto L_0x023a
            r8.zza((java.lang.Object) r1, (int) r4)     // Catch:{ zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }
            goto L_0x036e
        L_0x023a:
            com.google.android.gms.internal.ads.zzhl r7 = new com.google.android.gms.internal.ads.zzhl     // Catch:{ zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }
            java.lang.Object r11 = r3.first     // Catch:{ zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }
            java.lang.Integer r11 = (java.lang.Integer) r11     // Catch:{ zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }
            int r11 = r11.intValue()     // Catch:{ zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }
            java.lang.Object r3 = r3.second     // Catch:{ zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }
            java.lang.Long r3 = (java.lang.Long) r3     // Catch:{ zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }
            long r14 = r3.longValue()     // Catch:{ zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }
            r7.<init>(r11, r14)     // Catch:{ zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }
            r8.zzafa = r7     // Catch:{ zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }
            goto L_0x0283
        L_0x0252:
            com.google.android.gms.internal.ads.zzhl r3 = r8.zzafa     // Catch:{ zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }
            long r3 = r3.zzaga     // Catch:{ zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }
            int r7 = (r3 > r12 ? 1 : (r3 == r12 ? 0 : -1))
            if (r7 != 0) goto L_0x0282
            com.google.android.gms.internal.ads.zzia r3 = r8.zzaev     // Catch:{ zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }
            boolean r3 = r3.isEmpty()     // Catch:{ zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }
            if (r3 == 0) goto L_0x0267
            r8.zza((java.lang.Object) r1, (int) r9)     // Catch:{ zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }
            goto L_0x036e
        L_0x0267:
            android.util.Pair r3 = r8.zzb((int) r9, (long) r12)     // Catch:{ zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }
            com.google.android.gms.internal.ads.zzhl r4 = new com.google.android.gms.internal.ads.zzhl     // Catch:{ zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }
            java.lang.Object r7 = r3.first     // Catch:{ zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }
            java.lang.Integer r7 = (java.lang.Integer) r7     // Catch:{ zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }
            int r7 = r7.intValue()     // Catch:{ zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }
            java.lang.Object r3 = r3.second     // Catch:{ zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }
            java.lang.Long r3 = (java.lang.Long) r3     // Catch:{ zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }
            long r14 = r3.longValue()     // Catch:{ zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }
            r4.<init>(r7, r14)     // Catch:{ zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }
            r8.zzafa = r4     // Catch:{ zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }
        L_0x0282:
            r4 = 0
        L_0x0283:
            com.google.android.gms.internal.ads.zzhm r3 = r8.zzafx     // Catch:{ zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }
            if (r3 == 0) goto L_0x028a
            com.google.android.gms.internal.ads.zzhm r3 = r8.zzafx     // Catch:{ zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }
            goto L_0x028c
        L_0x028a:
            com.google.android.gms.internal.ads.zzhm r3 = r8.zzafv     // Catch:{ zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }
        L_0x028c:
            if (r3 == 0) goto L_0x036b
            com.google.android.gms.internal.ads.zzia r7 = r8.zzaev     // Catch:{ zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }
            java.lang.Object r11 = r3.zzage     // Catch:{ zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }
            int r7 = r7.zzc(r11)     // Catch:{ zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }
            if (r7 != r5) goto L_0x02f0
            int r6 = r3.zzafz     // Catch:{ zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }
            com.google.android.gms.internal.ads.zzia r7 = r8.zzaev     // Catch:{ zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }
            int r2 = r8.zza((int) r6, (com.google.android.gms.internal.ads.zzia) r2, (com.google.android.gms.internal.ads.zzia) r7)     // Catch:{ zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }
            if (r2 != r5) goto L_0x02a7
            r8.zza((java.lang.Object) r1, (int) r4)     // Catch:{ zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }
            goto L_0x036e
        L_0x02a7:
            com.google.android.gms.internal.ads.zzia r6 = r8.zzaev     // Catch:{ zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }
            com.google.android.gms.internal.ads.zzic r7 = r8.zzaeo     // Catch:{ zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }
            r6.zza((int) r2, (com.google.android.gms.internal.ads.zzic) r7, (boolean) r9)     // Catch:{ zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }
            android.util.Pair r2 = r8.zzb((int) r9, (long) r12)     // Catch:{ zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }
            java.lang.Object r6 = r2.first     // Catch:{ zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }
            java.lang.Integer r6 = (java.lang.Integer) r6     // Catch:{ zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }
            int r6 = r6.intValue()     // Catch:{ zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }
            java.lang.Object r2 = r2.second     // Catch:{ zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }
            java.lang.Long r2 = (java.lang.Long) r2     // Catch:{ zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }
            long r11 = r2.longValue()     // Catch:{ zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }
            com.google.android.gms.internal.ads.zzia r2 = r8.zzaev     // Catch:{ zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }
            com.google.android.gms.internal.ads.zzic r7 = r8.zzaeo     // Catch:{ zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }
            r2.zza((int) r6, (com.google.android.gms.internal.ads.zzic) r7, (boolean) r10)     // Catch:{ zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }
            com.google.android.gms.internal.ads.zzic r2 = r8.zzaeo     // Catch:{ zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }
            java.lang.Object r2 = r2.zzage     // Catch:{ zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }
            r3.zzafz = r5     // Catch:{ zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }
        L_0x02cf:
            com.google.android.gms.internal.ads.zzhm r7 = r3.zzagl     // Catch:{ zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }
            if (r7 == 0) goto L_0x02e3
            com.google.android.gms.internal.ads.zzhm r3 = r3.zzagl     // Catch:{ zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }
            java.lang.Object r7 = r3.zzage     // Catch:{ zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }
            boolean r7 = r7.equals(r2)     // Catch:{ zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }
            if (r7 == 0) goto L_0x02df
            r7 = r6
            goto L_0x02e0
        L_0x02df:
            r7 = -1
        L_0x02e0:
            r3.zzafz = r7     // Catch:{ zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }
            goto L_0x02cf
        L_0x02e3:
            long r2 = r8.zza((int) r6, (long) r11)     // Catch:{ zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }
            com.google.android.gms.internal.ads.zzhl r5 = new com.google.android.gms.internal.ads.zzhl     // Catch:{ zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }
            r5.<init>(r6, r2)     // Catch:{ zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }
            r8.zzafa = r5     // Catch:{ zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }
            goto L_0x036b
        L_0x02f0:
            boolean r2 = r8.zzt(r7)     // Catch:{ zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }
            r3.zzc(r7, r2)     // Catch:{ zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }
            com.google.android.gms.internal.ads.zzhm r2 = r8.zzafw     // Catch:{ zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }
            if (r3 != r2) goto L_0x02fd
            r2 = 1
            goto L_0x02fe
        L_0x02fd:
            r2 = 0
        L_0x02fe:
            com.google.android.gms.internal.ads.zzhl r11 = r8.zzafa     // Catch:{ zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }
            int r11 = r11.zzafz     // Catch:{ zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }
            if (r7 == r11) goto L_0x0317
            com.google.android.gms.internal.ads.zzhl r11 = r8.zzafa     // Catch:{ zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }
            com.google.android.gms.internal.ads.zzhl r12 = new com.google.android.gms.internal.ads.zzhl     // Catch:{ zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }
            long r13 = r11.zzaga     // Catch:{ zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }
            r12.<init>(r7, r13)     // Catch:{ zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }
            long r13 = r11.zzagb     // Catch:{ zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }
            r12.zzagb = r13     // Catch:{ zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }
            long r13 = r11.zzagc     // Catch:{ zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }
            r12.zzagc = r13     // Catch:{ zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }
            r8.zzafa = r12     // Catch:{ zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }
        L_0x0317:
            com.google.android.gms.internal.ads.zzhm r11 = r3.zzagl     // Catch:{ zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }
            if (r11 == 0) goto L_0x036b
            com.google.android.gms.internal.ads.zzhm r11 = r3.zzagl     // Catch:{ zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }
            com.google.android.gms.internal.ads.zzia r12 = r8.zzaev     // Catch:{ zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }
            com.google.android.gms.internal.ads.zzic r13 = r8.zzaeo     // Catch:{ zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }
            com.google.android.gms.internal.ads.zzib r14 = r8.zzaen     // Catch:{ zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }
            int r15 = r8.repeatMode     // Catch:{ zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }
            int r7 = r12.zza((int) r7, (com.google.android.gms.internal.ads.zzic) r13, (com.google.android.gms.internal.ads.zzib) r14, (int) r15)     // Catch:{ zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }
            if (r7 == r5) goto L_0x034e
            java.lang.Object r12 = r11.zzage     // Catch:{ zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }
            com.google.android.gms.internal.ads.zzia r13 = r8.zzaev     // Catch:{ zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }
            com.google.android.gms.internal.ads.zzic r14 = r8.zzaeo     // Catch:{ zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }
            com.google.android.gms.internal.ads.zzic r13 = r13.zza((int) r7, (com.google.android.gms.internal.ads.zzic) r14, (boolean) r10)     // Catch:{ zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }
            java.lang.Object r13 = r13.zzage     // Catch:{ zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }
            boolean r12 = r12.equals(r13)     // Catch:{ zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }
            if (r12 == 0) goto L_0x034e
            boolean r3 = r8.zzt(r7)     // Catch:{ zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }
            r11.zzc(r7, r3)     // Catch:{ zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }
            com.google.android.gms.internal.ads.zzhm r3 = r8.zzafw     // Catch:{ zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }
            if (r11 != r3) goto L_0x034a
            r3 = 1
            goto L_0x034b
        L_0x034a:
            r3 = 0
        L_0x034b:
            r2 = r2 | r3
            r3 = r11
            goto L_0x0317
        L_0x034e:
            if (r2 != 0) goto L_0x0364
            com.google.android.gms.internal.ads.zzhm r2 = r8.zzafx     // Catch:{ zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }
            int r2 = r2.zzafz     // Catch:{ zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }
            com.google.android.gms.internal.ads.zzhl r3 = r8.zzafa     // Catch:{ zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }
            long r5 = r3.zzagb     // Catch:{ zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }
            long r5 = r8.zza((int) r2, (long) r5)     // Catch:{ zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }
            com.google.android.gms.internal.ads.zzhl r3 = new com.google.android.gms.internal.ads.zzhl     // Catch:{ zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }
            r3.<init>(r2, r5)     // Catch:{ zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }
            r8.zzafa = r3     // Catch:{ zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }
            goto L_0x036b
        L_0x0364:
            r8.zzafv = r3     // Catch:{ zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }
            r3.zzagl = r6     // Catch:{ zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }
            zza((com.google.android.gms.internal.ads.zzhm) r11)     // Catch:{ zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }
        L_0x036b:
            r8.zzb((java.lang.Object) r1, (int) r4)     // Catch:{ zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }
        L_0x036e:
            return r10
        L_0x036f:
            r8.zzi(r10)     // Catch:{ zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }
            com.google.android.gms.internal.ads.zzhu r1 = r8.zzaff     // Catch:{ zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }
            r1.zzfb()     // Catch:{ zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }
            r8.setState(r10)     // Catch:{ zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }
            monitor-enter(r34)     // Catch:{ zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }
            r8.zzafn = r10     // Catch:{ all -> 0x0382 }
            r34.notifyAll()     // Catch:{ all -> 0x0382 }
            monitor-exit(r34)     // Catch:{ all -> 0x0382 }
            return r10
        L_0x0382:
            r0 = move-exception
            r1 = r0
            monitor-exit(r34)     // Catch:{ all -> 0x0382 }
            throw r1     // Catch:{ zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }
        L_0x0386:
            r34.zzes()     // Catch:{ zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }
            return r10
        L_0x038a:
            java.lang.Object r1 = r1.obj     // Catch:{ zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }
            com.google.android.gms.internal.ads.zzhw r1 = (com.google.android.gms.internal.ads.zzhw) r1     // Catch:{ zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }
            com.google.android.gms.internal.ads.zzpf r2 = r8.zzafk     // Catch:{ zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }
            if (r2 == 0) goto L_0x0399
            com.google.android.gms.internal.ads.zzpf r2 = r8.zzafk     // Catch:{ zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }
            com.google.android.gms.internal.ads.zzhw r1 = r2.zzb(r1)     // Catch:{ zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }
            goto L_0x039f
        L_0x0399:
            com.google.android.gms.internal.ads.zzpn r2 = r8.zzafg     // Catch:{ zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }
            com.google.android.gms.internal.ads.zzhw r1 = r2.zzb(r1)     // Catch:{ zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }
        L_0x039f:
            r8.zzaez = r1     // Catch:{ zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }
            android.os.Handler r2 = r8.zzaek     // Catch:{ zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }
            android.os.Message r1 = r2.obtainMessage(r11, r1)     // Catch:{ zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }
            r1.sendToTarget()     // Catch:{ zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }
            return r10
        L_0x03ab:
            java.lang.Object r1 = r1.obj     // Catch:{ zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }
            com.google.android.gms.internal.ads.zzho r1 = (com.google.android.gms.internal.ads.zzho) r1     // Catch:{ zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }
            com.google.android.gms.internal.ads.zzia r2 = r8.zzaev     // Catch:{ zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }
            if (r2 != 0) goto L_0x03bc
            int r2 = r8.zzafs     // Catch:{ zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }
            int r2 = r2 + r10
            r8.zzafs = r2     // Catch:{ zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }
            r8.zzaft = r1     // Catch:{ zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }
            goto L_0x0447
        L_0x03bc:
            android.util.Pair r2 = r8.zza((com.google.android.gms.internal.ads.zzho) r1)     // Catch:{ zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }
            if (r2 != 0) goto L_0x03e0
            com.google.android.gms.internal.ads.zzhl r1 = new com.google.android.gms.internal.ads.zzhl     // Catch:{ zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }
            r1.<init>(r9, r3)     // Catch:{ zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }
            r8.zzafa = r1     // Catch:{ zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }
            android.os.Handler r2 = r8.zzaek     // Catch:{ zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }
            android.os.Message r1 = r2.obtainMessage(r15, r10, r9, r1)     // Catch:{ zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }
            r1.sendToTarget()     // Catch:{ zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }
            com.google.android.gms.internal.ads.zzhl r1 = new com.google.android.gms.internal.ads.zzhl     // Catch:{ zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }
            r1.<init>(r9, r12)     // Catch:{ zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }
            r8.zzafa = r1     // Catch:{ zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }
            r8.setState(r15)     // Catch:{ zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }
            r8.zzi(r9)     // Catch:{ zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }
            goto L_0x0447
        L_0x03e0:
            long r3 = r1.zzagq     // Catch:{ zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }
            int r1 = (r3 > r12 ? 1 : (r3 == r12 ? 0 : -1))
            if (r1 != 0) goto L_0x03e8
            r1 = 1
            goto L_0x03e9
        L_0x03e8:
            r1 = 0
        L_0x03e9:
            java.lang.Object r3 = r2.first     // Catch:{ zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }
            java.lang.Integer r3 = (java.lang.Integer) r3     // Catch:{ zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }
            int r3 = r3.intValue()     // Catch:{ zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }
            java.lang.Object r2 = r2.second     // Catch:{ zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }
            java.lang.Long r2 = (java.lang.Long) r2     // Catch:{ zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }
            long r4 = r2.longValue()     // Catch:{ zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }
            com.google.android.gms.internal.ads.zzhl r2 = r8.zzafa     // Catch:{ all -> 0x0448 }
            int r2 = r2.zzafz     // Catch:{ all -> 0x0448 }
            if (r3 != r2) goto L_0x0424
            r6 = 1000(0x3e8, double:4.94E-321)
            long r11 = r4 / r6
            com.google.android.gms.internal.ads.zzhl r2 = r8.zzafa     // Catch:{ all -> 0x0448 }
            long r13 = r2.zzagb     // Catch:{ all -> 0x0448 }
            long r13 = r13 / r6
            int r2 = (r11 > r13 ? 1 : (r11 == r13 ? 0 : -1))
            if (r2 != 0) goto L_0x0424
            com.google.android.gms.internal.ads.zzhl r2 = new com.google.android.gms.internal.ads.zzhl     // Catch:{ zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }
            r2.<init>(r3, r4)     // Catch:{ zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }
            r8.zzafa = r2     // Catch:{ zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }
            android.os.Handler r2 = r8.zzaek     // Catch:{ zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }
            if (r1 == 0) goto L_0x0419
            r1 = 1
            goto L_0x041a
        L_0x0419:
            r1 = 0
        L_0x041a:
            com.google.android.gms.internal.ads.zzhl r3 = r8.zzafa     // Catch:{ zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }
            android.os.Message r1 = r2.obtainMessage(r15, r1, r9, r3)     // Catch:{ zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }
            r1.sendToTarget()     // Catch:{ zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }
            goto L_0x0447
        L_0x0424:
            long r6 = r8.zza((int) r3, (long) r4)     // Catch:{ all -> 0x0448 }
            int r2 = (r4 > r6 ? 1 : (r4 == r6 ? 0 : -1))
            if (r2 == 0) goto L_0x042e
            r2 = 1
            goto L_0x042f
        L_0x042e:
            r2 = 0
        L_0x042f:
            r1 = r1 | r2
            com.google.android.gms.internal.ads.zzhl r2 = new com.google.android.gms.internal.ads.zzhl     // Catch:{ zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }
            r2.<init>(r3, r6)     // Catch:{ zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }
            r8.zzafa = r2     // Catch:{ zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }
            android.os.Handler r2 = r8.zzaek     // Catch:{ zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }
            if (r1 == 0) goto L_0x043d
            r1 = 1
            goto L_0x043e
        L_0x043d:
            r1 = 0
        L_0x043e:
            com.google.android.gms.internal.ads.zzhl r3 = r8.zzafa     // Catch:{ zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }
            android.os.Message r1 = r2.obtainMessage(r15, r1, r9, r3)     // Catch:{ zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }
            r1.sendToTarget()     // Catch:{ zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }
        L_0x0447:
            return r10
        L_0x0448:
            r0 = move-exception
            r2 = r0
            com.google.android.gms.internal.ads.zzhl r6 = new com.google.android.gms.internal.ads.zzhl     // Catch:{ zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }
            r6.<init>(r3, r4)     // Catch:{ zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }
            r8.zzafa = r6     // Catch:{ zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }
            android.os.Handler r3 = r8.zzaek     // Catch:{ zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }
            if (r1 == 0) goto L_0x0457
            r1 = 1
            goto L_0x0458
        L_0x0457:
            r1 = 0
        L_0x0458:
            com.google.android.gms.internal.ads.zzhl r4 = r8.zzafa     // Catch:{ zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }
            android.os.Message r1 = r3.obtainMessage(r15, r1, r9, r4)     // Catch:{ zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }
            r1.sendToTarget()     // Catch:{ zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }
            throw r2     // Catch:{ zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }
        L_0x0462:
            long r5 = android.os.SystemClock.elapsedRealtime()     // Catch:{ zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }
            com.google.android.gms.internal.ads.zzia r1 = r8.zzaev     // Catch:{ zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }
            if (r1 != 0) goto L_0x0472
            com.google.android.gms.internal.ads.zznb r1 = r8.zzafl     // Catch:{ zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }
            r1.zzhy()     // Catch:{ zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }
            r14 = r5
            goto L_0x06c9
        L_0x0472:
            com.google.android.gms.internal.ads.zzhm r1 = r8.zzafv     // Catch:{ zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }
            if (r1 != 0) goto L_0x047b
            com.google.android.gms.internal.ads.zzhl r1 = r8.zzafa     // Catch:{ zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }
            int r1 = r1.zzafz     // Catch:{ zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }
            goto L_0x04b9
        L_0x047b:
            com.google.android.gms.internal.ads.zzhm r1 = r8.zzafv     // Catch:{ zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }
            int r1 = r1.zzafz     // Catch:{ zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }
            com.google.android.gms.internal.ads.zzhm r2 = r8.zzafv     // Catch:{ zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }
            boolean r2 = r2.zzagi     // Catch:{ zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }
            if (r2 != 0) goto L_0x04c6
            com.google.android.gms.internal.ads.zzhm r2 = r8.zzafv     // Catch:{ zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }
            boolean r2 = r2.zzew()     // Catch:{ zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }
            if (r2 == 0) goto L_0x04c6
            com.google.android.gms.internal.ads.zzia r2 = r8.zzaev     // Catch:{ zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }
            com.google.android.gms.internal.ads.zzic r7 = r8.zzaeo     // Catch:{ zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }
            com.google.android.gms.internal.ads.zzic r2 = r2.zza((int) r1, (com.google.android.gms.internal.ads.zzic) r7, (boolean) r9)     // Catch:{ zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }
            long r14 = r2.zzaih     // Catch:{ zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }
            int r2 = (r14 > r12 ? 1 : (r14 == r12 ? 0 : -1))
            if (r2 != 0) goto L_0x049c
            goto L_0x04c6
        L_0x049c:
            com.google.android.gms.internal.ads.zzhm r2 = r8.zzafx     // Catch:{ zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }
            if (r2 == 0) goto L_0x04ad
            com.google.android.gms.internal.ads.zzhm r2 = r8.zzafv     // Catch:{ zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }
            int r2 = r2.index     // Catch:{ zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }
            com.google.android.gms.internal.ads.zzhm r7 = r8.zzafx     // Catch:{ zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }
            int r7 = r7.index     // Catch:{ zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }
            int r2 = r2 - r7
            r7 = 100
            if (r2 == r7) goto L_0x04c6
        L_0x04ad:
            com.google.android.gms.internal.ads.zzia r2 = r8.zzaev     // Catch:{ zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }
            com.google.android.gms.internal.ads.zzic r7 = r8.zzaeo     // Catch:{ zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }
            com.google.android.gms.internal.ads.zzib r14 = r8.zzaen     // Catch:{ zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }
            int r15 = r8.repeatMode     // Catch:{ zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }
            int r1 = r2.zza((int) r1, (com.google.android.gms.internal.ads.zzic) r7, (com.google.android.gms.internal.ads.zzib) r14, (int) r15)     // Catch:{ zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }
        L_0x04b9:
            com.google.android.gms.internal.ads.zzia r2 = r8.zzaev     // Catch:{ zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }
            int r2 = r2.zzff()     // Catch:{ zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }
            if (r1 < r2) goto L_0x04c9
            com.google.android.gms.internal.ads.zznb r1 = r8.zzafl     // Catch:{ zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }
            r1.zzhy()     // Catch:{ zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }
        L_0x04c6:
            r14 = r5
            goto L_0x0599
        L_0x04c9:
            com.google.android.gms.internal.ads.zzhm r2 = r8.zzafv     // Catch:{ zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }
            if (r2 != 0) goto L_0x04d3
            com.google.android.gms.internal.ads.zzhl r2 = r8.zzafa     // Catch:{ zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }
            long r3 = r2.zzagb     // Catch:{ zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }
        L_0x04d1:
            r14 = r5
            goto L_0x0528
        L_0x04d3:
            com.google.android.gms.internal.ads.zzia r2 = r8.zzaev     // Catch:{ zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }
            com.google.android.gms.internal.ads.zzic r7 = r8.zzaeo     // Catch:{ zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }
            r2.zza((int) r1, (com.google.android.gms.internal.ads.zzic) r7, (boolean) r9)     // Catch:{ zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }
            com.google.android.gms.internal.ads.zzia r2 = r8.zzaev     // Catch:{ zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }
            com.google.android.gms.internal.ads.zzib r7 = r8.zzaen     // Catch:{ zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }
            r2.zza((int) r9, (com.google.android.gms.internal.ads.zzib) r7, (boolean) r9)     // Catch:{ zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }
            if (r1 == 0) goto L_0x04e4
            goto L_0x04d1
        L_0x04e4:
            com.google.android.gms.internal.ads.zzhm r1 = r8.zzafv     // Catch:{ zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }
            long r1 = r1.zzev()     // Catch:{ zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }
            com.google.android.gms.internal.ads.zzia r7 = r8.zzaev     // Catch:{ zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }
            com.google.android.gms.internal.ads.zzhm r14 = r8.zzafv     // Catch:{ zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }
            int r14 = r14.zzafz     // Catch:{ zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }
            com.google.android.gms.internal.ads.zzic r15 = r8.zzaeo     // Catch:{ zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }
            com.google.android.gms.internal.ads.zzic r7 = r7.zza((int) r14, (com.google.android.gms.internal.ads.zzic) r15, (boolean) r9)     // Catch:{ zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }
            long r14 = r7.zzaih     // Catch:{ zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }
            long r1 = r1 + r14
            long r14 = r8.zzafu     // Catch:{ zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }
            long r1 = r1 - r14
            com.google.android.gms.internal.ads.zzia r7 = r8.zzaev     // Catch:{ zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }
            r14 = 0
            r16 = -9223372036854775807(0x8000000000000001, double:-4.9E-324)
            long r18 = java.lang.Math.max(r3, r1)     // Catch:{ zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }
            r1 = r34
            r2 = r7
            r3 = r14
            r14 = r5
            r4 = r16
            r6 = r18
            android.util.Pair r1 = r1.zza(r2, r3, r4, r6)     // Catch:{ zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }
            if (r1 == 0) goto L_0x0599
            java.lang.Object r2 = r1.first     // Catch:{ zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }
            java.lang.Integer r2 = (java.lang.Integer) r2     // Catch:{ zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }
            int r2 = r2.intValue()     // Catch:{ zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }
            java.lang.Object r1 = r1.second     // Catch:{ zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }
            java.lang.Long r1 = (java.lang.Long) r1     // Catch:{ zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }
            long r3 = r1.longValue()     // Catch:{ zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }
            r1 = r2
        L_0x0528:
            com.google.android.gms.internal.ads.zzhm r2 = r8.zzafv     // Catch:{ zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }
            if (r2 != 0) goto L_0x0533
            r5 = 60000000(0x3938700, double:2.96439388E-316)
            long r5 = r5 + r3
        L_0x0530:
            r23 = r5
            goto L_0x0549
        L_0x0533:
            com.google.android.gms.internal.ads.zzhm r2 = r8.zzafv     // Catch:{ zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }
            long r5 = r2.zzev()     // Catch:{ zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }
            com.google.android.gms.internal.ads.zzia r2 = r8.zzaev     // Catch:{ zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }
            com.google.android.gms.internal.ads.zzhm r7 = r8.zzafv     // Catch:{ zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }
            int r7 = r7.zzafz     // Catch:{ zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }
            com.google.android.gms.internal.ads.zzic r11 = r8.zzaeo     // Catch:{ zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }
            com.google.android.gms.internal.ads.zzic r2 = r2.zza((int) r7, (com.google.android.gms.internal.ads.zzic) r11, (boolean) r9)     // Catch:{ zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }
            long r12 = r2.zzaih     // Catch:{ zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }
            long r5 = r5 + r12
            goto L_0x0530
        L_0x0549:
            com.google.android.gms.internal.ads.zzhm r2 = r8.zzafv     // Catch:{ zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }
            if (r2 != 0) goto L_0x0550
            r29 = 0
            goto L_0x0557
        L_0x0550:
            com.google.android.gms.internal.ads.zzhm r2 = r8.zzafv     // Catch:{ zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }
            int r2 = r2.index     // Catch:{ zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }
            int r2 = r2 + r10
            r29 = r2
        L_0x0557:
            boolean r31 = r8.zzt(r1)     // Catch:{ zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }
            com.google.android.gms.internal.ads.zzia r2 = r8.zzaev     // Catch:{ zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }
            com.google.android.gms.internal.ads.zzic r5 = r8.zzaeo     // Catch:{ zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }
            r2.zza((int) r1, (com.google.android.gms.internal.ads.zzic) r5, (boolean) r10)     // Catch:{ zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }
            com.google.android.gms.internal.ads.zzhm r2 = new com.google.android.gms.internal.ads.zzhm     // Catch:{ zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }
            com.google.android.gms.internal.ads.zzhv[] r5 = r8.zzaeh     // Catch:{ zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }
            com.google.android.gms.internal.ads.zzhy[] r6 = r8.zzafe     // Catch:{ zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }
            com.google.android.gms.internal.ads.zzoe r7 = r8.zzaei     // Catch:{ zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }
            com.google.android.gms.internal.ads.zzhu r11 = r8.zzaff     // Catch:{ zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }
            com.google.android.gms.internal.ads.zznb r12 = r8.zzafl     // Catch:{ zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }
            com.google.android.gms.internal.ads.zzic r13 = r8.zzaeo     // Catch:{ zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }
            java.lang.Object r13 = r13.zzage     // Catch:{ zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }
            r20 = r2
            r21 = r5
            r22 = r6
            r25 = r7
            r26 = r11
            r27 = r12
            r28 = r13
            r30 = r1
            r32 = r3
            r20.<init>(r21, r22, r23, r25, r26, r27, r28, r29, r30, r31, r32)     // Catch:{ zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }
            com.google.android.gms.internal.ads.zzhm r1 = r8.zzafv     // Catch:{ zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }
            if (r1 == 0) goto L_0x058f
            com.google.android.gms.internal.ads.zzhm r1 = r8.zzafv     // Catch:{ zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }
            r1.zzagl = r2     // Catch:{ zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }
        L_0x058f:
            r8.zzafv = r2     // Catch:{ zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }
            com.google.android.gms.internal.ads.zzmz r1 = r2.zzagd     // Catch:{ zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }
            r1.zza(r8, r3)     // Catch:{ zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }
            r8.zzh(r10)     // Catch:{ zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }
        L_0x0599:
            com.google.android.gms.internal.ads.zzhm r1 = r8.zzafv     // Catch:{ zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }
            if (r1 == 0) goto L_0x05b2
            com.google.android.gms.internal.ads.zzhm r1 = r8.zzafv     // Catch:{ zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }
            boolean r1 = r1.zzew()     // Catch:{ zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }
            if (r1 == 0) goto L_0x05a6
            goto L_0x05b2
        L_0x05a6:
            com.google.android.gms.internal.ads.zzhm r1 = r8.zzafv     // Catch:{ zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }
            if (r1 == 0) goto L_0x05b5
            boolean r1 = r8.zzaeu     // Catch:{ zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }
            if (r1 != 0) goto L_0x05b5
            r34.zzeu()     // Catch:{ zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }
            goto L_0x05b5
        L_0x05b2:
            r8.zzh(r9)     // Catch:{ zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }
        L_0x05b5:
            com.google.android.gms.internal.ads.zzhm r1 = r8.zzafx     // Catch:{ zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }
            if (r1 == 0) goto L_0x06c9
        L_0x05b9:
            com.google.android.gms.internal.ads.zzhm r1 = r8.zzafx     // Catch:{ zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }
            com.google.android.gms.internal.ads.zzhm r2 = r8.zzafw     // Catch:{ zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }
            if (r1 == r2) goto L_0x05f6
            long r1 = r8.zzafu     // Catch:{ zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }
            com.google.android.gms.internal.ads.zzhm r3 = r8.zzafx     // Catch:{ zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }
            com.google.android.gms.internal.ads.zzhm r3 = r3.zzagl     // Catch:{ zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }
            long r3 = r3.zzagh     // Catch:{ zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }
            int r5 = (r1 > r3 ? 1 : (r1 == r3 ? 0 : -1))
            if (r5 < 0) goto L_0x05f6
            com.google.android.gms.internal.ads.zzhm r1 = r8.zzafx     // Catch:{ zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }
            r1.release()     // Catch:{ zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }
            com.google.android.gms.internal.ads.zzhm r1 = r8.zzafx     // Catch:{ zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }
            com.google.android.gms.internal.ads.zzhm r1 = r1.zzagl     // Catch:{ zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }
            r8.zzb((com.google.android.gms.internal.ads.zzhm) r1)     // Catch:{ zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }
            com.google.android.gms.internal.ads.zzhl r1 = new com.google.android.gms.internal.ads.zzhl     // Catch:{ zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }
            com.google.android.gms.internal.ads.zzhm r2 = r8.zzafx     // Catch:{ zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }
            int r2 = r2.zzafz     // Catch:{ zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }
            com.google.android.gms.internal.ads.zzhm r3 = r8.zzafx     // Catch:{ zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }
            long r3 = r3.zzaga     // Catch:{ zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }
            r1.<init>(r2, r3)     // Catch:{ zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }
            r8.zzafa = r1     // Catch:{ zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }
            r34.zzer()     // Catch:{ zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }
            android.os.Handler r1 = r8.zzaek     // Catch:{ zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }
            r2 = 5
            com.google.android.gms.internal.ads.zzhl r3 = r8.zzafa     // Catch:{ zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }
            android.os.Message r1 = r1.obtainMessage(r2, r3)     // Catch:{ zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }
            r1.sendToTarget()     // Catch:{ zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }
            goto L_0x05b9
        L_0x05f6:
            com.google.android.gms.internal.ads.zzhm r1 = r8.zzafw     // Catch:{ zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }
            boolean r1 = r1.zzagi     // Catch:{ zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }
            if (r1 == 0) goto L_0x0620
            r1 = 0
        L_0x05fd:
            com.google.android.gms.internal.ads.zzhv[] r2 = r8.zzaeh     // Catch:{ zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }
            int r2 = r2.length     // Catch:{ zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }
            if (r1 >= r2) goto L_0x06c9
            com.google.android.gms.internal.ads.zzhv[] r2 = r8.zzaeh     // Catch:{ zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }
            r2 = r2[r1]     // Catch:{ zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }
            com.google.android.gms.internal.ads.zzhm r3 = r8.zzafw     // Catch:{ zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }
            com.google.android.gms.internal.ads.zznk[] r3 = r3.zzagf     // Catch:{ zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }
            r3 = r3[r1]     // Catch:{ zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }
            if (r3 == 0) goto L_0x061d
            com.google.android.gms.internal.ads.zznk r4 = r2.zzea()     // Catch:{ zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }
            if (r4 != r3) goto L_0x061d
            boolean r3 = r2.zzeb()     // Catch:{ zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }
            if (r3 == 0) goto L_0x061d
            r2.zzec()     // Catch:{ zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }
        L_0x061d:
            int r1 = r1 + 1
            goto L_0x05fd
        L_0x0620:
            r1 = 0
        L_0x0621:
            com.google.android.gms.internal.ads.zzhv[] r2 = r8.zzaeh     // Catch:{ zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }
            int r2 = r2.length     // Catch:{ zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }
            if (r1 >= r2) goto L_0x0643
            com.google.android.gms.internal.ads.zzhv[] r2 = r8.zzaeh     // Catch:{ zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }
            r2 = r2[r1]     // Catch:{ zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }
            com.google.android.gms.internal.ads.zzhm r3 = r8.zzafw     // Catch:{ zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }
            com.google.android.gms.internal.ads.zznk[] r3 = r3.zzagf     // Catch:{ zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }
            r3 = r3[r1]     // Catch:{ zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }
            com.google.android.gms.internal.ads.zznk r4 = r2.zzea()     // Catch:{ zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }
            if (r4 != r3) goto L_0x06c9
            if (r3 == 0) goto L_0x0640
            boolean r2 = r2.zzeb()     // Catch:{ zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }
            if (r2 != 0) goto L_0x0640
            goto L_0x06c9
        L_0x0640:
            int r1 = r1 + 1
            goto L_0x0621
        L_0x0643:
            com.google.android.gms.internal.ads.zzhm r1 = r8.zzafw     // Catch:{ zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }
            com.google.android.gms.internal.ads.zzhm r1 = r1.zzagl     // Catch:{ zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }
            if (r1 == 0) goto L_0x06c9
            com.google.android.gms.internal.ads.zzhm r1 = r8.zzafw     // Catch:{ zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }
            com.google.android.gms.internal.ads.zzhm r1 = r1.zzagl     // Catch:{ zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }
            boolean r1 = r1.zzagj     // Catch:{ zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }
            if (r1 == 0) goto L_0x06c9
            com.google.android.gms.internal.ads.zzhm r1 = r8.zzafw     // Catch:{ zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }
            com.google.android.gms.internal.ads.zzog r1 = r1.zzagm     // Catch:{ zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }
            com.google.android.gms.internal.ads.zzhm r2 = r8.zzafw     // Catch:{ zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }
            com.google.android.gms.internal.ads.zzhm r2 = r2.zzagl     // Catch:{ zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }
            r8.zzafw = r2     // Catch:{ zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }
            com.google.android.gms.internal.ads.zzog r2 = r2.zzagm     // Catch:{ zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }
            com.google.android.gms.internal.ads.zzhm r3 = r8.zzafw     // Catch:{ zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }
            com.google.android.gms.internal.ads.zzmz r3 = r3.zzagd     // Catch:{ zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }
            long r3 = r3.zzhp()     // Catch:{ zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }
            r5 = -9223372036854775807(0x8000000000000001, double:-4.9E-324)
            int r7 = (r3 > r5 ? 1 : (r3 == r5 ? 0 : -1))
            if (r7 == 0) goto L_0x0670
            r3 = 1
            goto L_0x0671
        L_0x0670:
            r3 = 0
        L_0x0671:
            r4 = 0
        L_0x0672:
            com.google.android.gms.internal.ads.zzhv[] r5 = r8.zzaeh     // Catch:{ zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }
            int r5 = r5.length     // Catch:{ zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }
            if (r4 >= r5) goto L_0x06c9
            com.google.android.gms.internal.ads.zzhv[] r5 = r8.zzaeh     // Catch:{ zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }
            r5 = r5[r4]     // Catch:{ zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }
            com.google.android.gms.internal.ads.zzof r6 = r1.zzbhq     // Catch:{ zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }
            com.google.android.gms.internal.ads.zzod r6 = r6.zzbf(r4)     // Catch:{ zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }
            if (r6 == 0) goto L_0x06c6
            if (r3 != 0) goto L_0x06c3
            boolean r6 = r5.zzed()     // Catch:{ zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }
            if (r6 != 0) goto L_0x06c6
            com.google.android.gms.internal.ads.zzof r6 = r2.zzbhq     // Catch:{ zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }
            com.google.android.gms.internal.ads.zzod r6 = r6.zzbf(r4)     // Catch:{ zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }
            com.google.android.gms.internal.ads.zzhx[] r7 = r1.zzbhs     // Catch:{ zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }
            r7 = r7[r4]     // Catch:{ zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }
            com.google.android.gms.internal.ads.zzhx[] r11 = r2.zzbhs     // Catch:{ zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }
            r11 = r11[r4]     // Catch:{ zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }
            if (r6 == 0) goto L_0x06c3
            boolean r7 = r11.equals(r7)     // Catch:{ zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }
            if (r7 == 0) goto L_0x06c3
            int r7 = r6.length()     // Catch:{ zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }
            com.google.android.gms.internal.ads.zzhq[] r11 = new com.google.android.gms.internal.ads.zzhq[r7]     // Catch:{ zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }
            r12 = 0
        L_0x06a8:
            if (r12 >= r7) goto L_0x06b3
            com.google.android.gms.internal.ads.zzhq r13 = r6.zzbc(r12)     // Catch:{ zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }
            r11[r12] = r13     // Catch:{ zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }
            int r12 = r12 + 1
            goto L_0x06a8
        L_0x06b3:
            com.google.android.gms.internal.ads.zzhm r6 = r8.zzafw     // Catch:{ zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }
            com.google.android.gms.internal.ads.zznk[] r6 = r6.zzagf     // Catch:{ zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }
            r6 = r6[r4]     // Catch:{ zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }
            com.google.android.gms.internal.ads.zzhm r7 = r8.zzafw     // Catch:{ zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }
            long r12 = r7.zzev()     // Catch:{ zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }
            r5.zza(r11, r6, r12)     // Catch:{ zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }
            goto L_0x06c6
        L_0x06c3:
            r5.zzec()     // Catch:{ zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }
        L_0x06c6:
            int r4 = r4 + 1
            goto L_0x0672
        L_0x06c9:
            com.google.android.gms.internal.ads.zzhm r1 = r8.zzafx     // Catch:{ zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }
            r2 = 10
            if (r1 != 0) goto L_0x06d7
            r34.zzet()     // Catch:{ zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }
            r8.zza((long) r14, (long) r2)     // Catch:{ zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }
            goto L_0x0839
        L_0x06d7:
            java.lang.String r1 = "doSomeWork"
            com.google.android.gms.internal.ads.zzpp.beginSection(r1)     // Catch:{ zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }
            r34.zzer()     // Catch:{ zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }
            com.google.android.gms.internal.ads.zzhm r1 = r8.zzafx     // Catch:{ zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }
            com.google.android.gms.internal.ads.zzmz r1 = r1.zzagd     // Catch:{ zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }
            com.google.android.gms.internal.ads.zzhl r4 = r8.zzafa     // Catch:{ zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }
            long r4 = r4.zzagb     // Catch:{ zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }
            r1.zzef(r4)     // Catch:{ zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }
            com.google.android.gms.internal.ads.zzhv[] r1 = r8.zzafm     // Catch:{ zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }
            int r4 = r1.length     // Catch:{ zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }
            r5 = 0
            r6 = 1
            r7 = 1
        L_0x06f0:
            if (r5 >= r4) goto L_0x0727
            r11 = r1[r5]     // Catch:{ zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }
            long r12 = r8.zzafu     // Catch:{ zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }
            long r2 = r8.zzafr     // Catch:{ zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }
            r11.zzb(r12, r2)     // Catch:{ zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }
            if (r7 == 0) goto L_0x0705
            boolean r2 = r11.zzfd()     // Catch:{ zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }
            if (r2 == 0) goto L_0x0705
            r7 = 1
            goto L_0x0706
        L_0x0705:
            r7 = 0
        L_0x0706:
            boolean r2 = r11.isReady()     // Catch:{ zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }
            if (r2 != 0) goto L_0x0715
            boolean r2 = r11.zzfd()     // Catch:{ zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }
            if (r2 == 0) goto L_0x0713
            goto L_0x0715
        L_0x0713:
            r2 = 0
            goto L_0x0716
        L_0x0715:
            r2 = 1
        L_0x0716:
            if (r2 != 0) goto L_0x071b
            r11.zzee()     // Catch:{ zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }
        L_0x071b:
            if (r6 == 0) goto L_0x0721
            if (r2 == 0) goto L_0x0721
            r6 = 1
            goto L_0x0722
        L_0x0721:
            r6 = 0
        L_0x0722:
            int r5 = r5 + 1
            r2 = 10
            goto L_0x06f0
        L_0x0727:
            if (r6 != 0) goto L_0x072c
            r34.zzet()     // Catch:{ zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }
        L_0x072c:
            com.google.android.gms.internal.ads.zzpf r1 = r8.zzafk     // Catch:{ zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }
            if (r1 == 0) goto L_0x0751
            com.google.android.gms.internal.ads.zzpf r1 = r8.zzafk     // Catch:{ zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }
            com.google.android.gms.internal.ads.zzhw r1 = r1.zzfr()     // Catch:{ zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }
            com.google.android.gms.internal.ads.zzhw r2 = r8.zzaez     // Catch:{ zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }
            boolean r2 = r1.equals(r2)     // Catch:{ zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }
            if (r2 != 0) goto L_0x0751
            r8.zzaez = r1     // Catch:{ zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }
            com.google.android.gms.internal.ads.zzpn r2 = r8.zzafg     // Catch:{ zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }
            com.google.android.gms.internal.ads.zzpf r3 = r8.zzafk     // Catch:{ zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }
            r2.zza(r3)     // Catch:{ zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }
            android.os.Handler r2 = r8.zzaek     // Catch:{ zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }
            r3 = 7
            android.os.Message r1 = r2.obtainMessage(r3, r1)     // Catch:{ zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }
            r1.sendToTarget()     // Catch:{ zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }
        L_0x0751:
            com.google.android.gms.internal.ads.zzia r1 = r8.zzaev     // Catch:{ zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }
            com.google.android.gms.internal.ads.zzhm r2 = r8.zzafx     // Catch:{ zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }
            int r2 = r2.zzafz     // Catch:{ zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }
            com.google.android.gms.internal.ads.zzic r3 = r8.zzaeo     // Catch:{ zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }
            com.google.android.gms.internal.ads.zzic r1 = r1.zza((int) r2, (com.google.android.gms.internal.ads.zzic) r3, (boolean) r9)     // Catch:{ zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }
            long r1 = r1.zzaih     // Catch:{ zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }
            if (r7 == 0) goto L_0x0782
            r3 = -9223372036854775807(0x8000000000000001, double:-4.9E-324)
            int r5 = (r1 > r3 ? 1 : (r1 == r3 ? 0 : -1))
            if (r5 == 0) goto L_0x0772
            com.google.android.gms.internal.ads.zzhl r3 = r8.zzafa     // Catch:{ zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }
            long r3 = r3.zzagb     // Catch:{ zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }
            int r5 = (r1 > r3 ? 1 : (r1 == r3 ? 0 : -1))
            if (r5 > 0) goto L_0x0782
        L_0x0772:
            com.google.android.gms.internal.ads.zzhm r3 = r8.zzafx     // Catch:{ zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }
            boolean r3 = r3.zzagi     // Catch:{ zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }
            if (r3 == 0) goto L_0x0782
            r3 = 4
            r8.setState(r3)     // Catch:{ zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }
            r34.zzeq()     // Catch:{ zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }
            r4 = 2
            goto L_0x0802
        L_0x0782:
            int r3 = r8.state     // Catch:{ zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }
            r4 = 2
            if (r3 != r4) goto L_0x07e7
            com.google.android.gms.internal.ads.zzhv[] r3 = r8.zzafm     // Catch:{ zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }
            int r3 = r3.length     // Catch:{ zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }
            if (r3 <= 0) goto L_0x07d5
            if (r6 == 0) goto L_0x07d3
            boolean r1 = r8.zzafo     // Catch:{ zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }
            com.google.android.gms.internal.ads.zzhm r2 = r8.zzafv     // Catch:{ zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }
            boolean r2 = r2.zzagj     // Catch:{ zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }
            if (r2 != 0) goto L_0x079b
            com.google.android.gms.internal.ads.zzhm r2 = r8.zzafv     // Catch:{ zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }
            long r2 = r2.zzaga     // Catch:{ zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }
            goto L_0x07a3
        L_0x079b:
            com.google.android.gms.internal.ads.zzhm r2 = r8.zzafv     // Catch:{ zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }
            com.google.android.gms.internal.ads.zzmz r2 = r2.zzagd     // Catch:{ zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }
            long r2 = r2.zzhq()     // Catch:{ zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }
        L_0x07a3:
            r5 = -9223372036854775808
            int r7 = (r2 > r5 ? 1 : (r2 == r5 ? 0 : -1))
            if (r7 != 0) goto L_0x07bf
            com.google.android.gms.internal.ads.zzhm r2 = r8.zzafv     // Catch:{ zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }
            boolean r2 = r2.zzagi     // Catch:{ zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }
            if (r2 == 0) goto L_0x07b1
            r1 = 1
            goto L_0x07cf
        L_0x07b1:
            com.google.android.gms.internal.ads.zzia r2 = r8.zzaev     // Catch:{ zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }
            com.google.android.gms.internal.ads.zzhm r3 = r8.zzafv     // Catch:{ zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }
            int r3 = r3.zzafz     // Catch:{ zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }
            com.google.android.gms.internal.ads.zzic r5 = r8.zzaeo     // Catch:{ zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }
            com.google.android.gms.internal.ads.zzic r2 = r2.zza((int) r3, (com.google.android.gms.internal.ads.zzic) r5, (boolean) r9)     // Catch:{ zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }
            long r2 = r2.zzaih     // Catch:{ zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }
        L_0x07bf:
            com.google.android.gms.internal.ads.zzhu r5 = r8.zzaff     // Catch:{ zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }
            com.google.android.gms.internal.ads.zzhm r6 = r8.zzafv     // Catch:{ zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }
            long r11 = r8.zzafu     // Catch:{ zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }
            long r6 = r6.zzev()     // Catch:{ zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }
            long r11 = r11 - r6
            long r2 = r2 - r11
            boolean r1 = r5.zzc(r2, r1)     // Catch:{ zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }
        L_0x07cf:
            if (r1 == 0) goto L_0x07d3
            r1 = 1
            goto L_0x07d9
        L_0x07d3:
            r1 = 0
            goto L_0x07d9
        L_0x07d5:
            boolean r1 = r8.zzdr(r1)     // Catch:{ zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }
        L_0x07d9:
            if (r1 == 0) goto L_0x0802
            r1 = 3
            r8.setState(r1)     // Catch:{ zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }
            boolean r1 = r8.zzaeq     // Catch:{ zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }
            if (r1 == 0) goto L_0x0802
            r34.zzep()     // Catch:{ zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }
            goto L_0x0802
        L_0x07e7:
            int r3 = r8.state     // Catch:{ zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }
            r5 = 3
            if (r3 != r5) goto L_0x0802
            com.google.android.gms.internal.ads.zzhv[] r3 = r8.zzafm     // Catch:{ zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }
            int r3 = r3.length     // Catch:{ zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }
            if (r3 <= 0) goto L_0x07f2
            goto L_0x07f6
        L_0x07f2:
            boolean r6 = r8.zzdr(r1)     // Catch:{ zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }
        L_0x07f6:
            if (r6 != 0) goto L_0x0802
            boolean r1 = r8.zzaeq     // Catch:{ zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }
            r8.zzafo = r1     // Catch:{ zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }
            r8.setState(r4)     // Catch:{ zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }
            r34.zzeq()     // Catch:{ zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }
        L_0x0802:
            int r1 = r8.state     // Catch:{ zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }
            if (r1 != r4) goto L_0x0813
            com.google.android.gms.internal.ads.zzhv[] r1 = r8.zzafm     // Catch:{ zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }
            int r2 = r1.length     // Catch:{ zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }
        L_0x0809:
            if (r9 >= r2) goto L_0x0813
            r3 = r1[r9]     // Catch:{ zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }
            r3.zzee()     // Catch:{ zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }
            int r9 = r9 + 1
            goto L_0x0809
        L_0x0813:
            boolean r1 = r8.zzaeq     // Catch:{ zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }
            if (r1 == 0) goto L_0x081c
            int r1 = r8.state     // Catch:{ zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }
            r2 = 3
            if (r1 == r2) goto L_0x0820
        L_0x081c:
            int r1 = r8.state     // Catch:{ zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }
            if (r1 != r4) goto L_0x0826
        L_0x0820:
            r1 = 10
            r8.zza((long) r14, (long) r1)     // Catch:{ zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }
            goto L_0x0836
        L_0x0826:
            com.google.android.gms.internal.ads.zzhv[] r1 = r8.zzafm     // Catch:{ zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }
            int r1 = r1.length     // Catch:{ zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }
            if (r1 == 0) goto L_0x0831
            r1 = 1000(0x3e8, double:4.94E-321)
            r8.zza((long) r14, (long) r1)     // Catch:{ zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }
            goto L_0x0836
        L_0x0831:
            android.os.Handler r1 = r8.handler     // Catch:{ zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }
            r1.removeMessages(r4)     // Catch:{ zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }
        L_0x0836:
            com.google.android.gms.internal.ads.zzpp.endSection()     // Catch:{ zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }
        L_0x0839:
            return r10
        L_0x083a:
            r4 = 2
            int r1 = r1.arg1     // Catch:{ zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }
            if (r1 == 0) goto L_0x0841
            r1 = 1
            goto L_0x0842
        L_0x0841:
            r1 = 0
        L_0x0842:
            r8.zzafo = r9     // Catch:{ zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }
            r8.zzaeq = r1     // Catch:{ zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }
            if (r1 != 0) goto L_0x084f
            r34.zzeq()     // Catch:{ zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }
            r34.zzer()     // Catch:{ zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }
            goto L_0x0866
        L_0x084f:
            int r1 = r8.state     // Catch:{ zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }
            r2 = 3
            if (r1 != r2) goto L_0x085d
            r34.zzep()     // Catch:{ zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }
            android.os.Handler r1 = r8.handler     // Catch:{ zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }
            r1.sendEmptyMessage(r4)     // Catch:{ zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }
            goto L_0x0866
        L_0x085d:
            int r1 = r8.state     // Catch:{ zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }
            if (r1 != r4) goto L_0x0866
            android.os.Handler r1 = r8.handler     // Catch:{ zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }
            r1.sendEmptyMessage(r4)     // Catch:{ zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }
        L_0x0866:
            return r10
        L_0x0867:
            r4 = 2
            java.lang.Object r2 = r1.obj     // Catch:{ zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }
            com.google.android.gms.internal.ads.zznb r2 = (com.google.android.gms.internal.ads.zznb) r2     // Catch:{ zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }
            int r1 = r1.arg1     // Catch:{ zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }
            if (r1 == 0) goto L_0x0872
            r1 = 1
            goto L_0x0873
        L_0x0872:
            r1 = 0
        L_0x0873:
            android.os.Handler r3 = r8.zzaek     // Catch:{ zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }
            r3.sendEmptyMessage(r9)     // Catch:{ zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }
            r8.zzi(r10)     // Catch:{ zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }
            com.google.android.gms.internal.ads.zzhu r3 = r8.zzaff     // Catch:{ zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }
            r3.zzfa()     // Catch:{ zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }
            if (r1 == 0) goto L_0x088e
            com.google.android.gms.internal.ads.zzhl r1 = new com.google.android.gms.internal.ads.zzhl     // Catch:{ zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }
            r5 = -9223372036854775807(0x8000000000000001, double:-4.9E-324)
            r1.<init>(r9, r5)     // Catch:{ zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }
            r8.zzafa = r1     // Catch:{ zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }
        L_0x088e:
            r8.zzafl = r2     // Catch:{ zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }
            com.google.android.gms.internal.ads.zzhe r1 = r8.zzafi     // Catch:{ zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }
            r2.zza(r1, r10, r8)     // Catch:{ zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }
            r8.setState(r4)     // Catch:{ zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }
            android.os.Handler r1 = r8.handler     // Catch:{ zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }
            r1.sendEmptyMessage(r4)     // Catch:{ zzhb -> 0x08a3, IOException -> 0x089e, RuntimeException -> 0x08a8 }
            return r10
        L_0x089e:
            r0 = move-exception
            r1 = r0
            r3 = 8
            goto L_0x08c8
        L_0x08a3:
            r0 = move-exception
            r1 = r0
            r3 = 8
            goto L_0x08e4
        L_0x08a8:
            r0 = move-exception
            r1 = r0
            java.lang.String r2 = "ExoPlayerImplInternal"
            java.lang.String r3 = "Internal runtime error."
            android.util.Log.e(r2, r3, r1)
            android.os.Handler r2 = r8.zzaek
            com.google.android.gms.internal.ads.zzhb r1 = com.google.android.gms.internal.ads.zzhb.zza((java.lang.RuntimeException) r1)
            r3 = 8
            android.os.Message r1 = r2.obtainMessage(r3, r1)
            r1.sendToTarget()
            r34.zzes()
            return r10
        L_0x08c4:
            r0 = move-exception
            r3 = 8
            r1 = r0
        L_0x08c8:
            java.lang.String r2 = "ExoPlayerImplInternal"
            java.lang.String r4 = "Source error."
            android.util.Log.e(r2, r4, r1)
            android.os.Handler r2 = r8.zzaek
            com.google.android.gms.internal.ads.zzhb r1 = com.google.android.gms.internal.ads.zzhb.zza((java.io.IOException) r1)
            android.os.Message r1 = r2.obtainMessage(r3, r1)
            r1.sendToTarget()
            r34.zzes()
            return r10
        L_0x08e0:
            r0 = move-exception
            r3 = 8
            r1 = r0
        L_0x08e4:
            java.lang.String r2 = "ExoPlayerImplInternal"
            java.lang.String r4 = "Renderer error."
            android.util.Log.e(r2, r4, r1)
            android.os.Handler r2 = r8.zzaek
            android.os.Message r1 = r2.obtainMessage(r3, r1)
            r1.sendToTarget()
            r34.zzes()
            return r10
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzhj.handleMessage(android.os.Message):boolean");
    }

    private final void setState(int i) {
        if (this.state != i) {
            this.state = i;
            this.zzaek.obtainMessage(1, i, 0).sendToTarget();
        }
    }

    private final void zzh(boolean z) {
        if (this.zzaeu != z) {
            this.zzaeu = z;
            this.zzaek.obtainMessage(2, z ? 1 : 0, 0).sendToTarget();
        }
    }

    private final void zzep() throws zzhb {
        this.zzafo = false;
        this.zzafg.start();
        for (zzhv start : this.zzafm) {
            start.start();
        }
    }

    private final void zzeq() throws zzhb {
        this.zzafg.stop();
        for (zzhv zza : this.zzafm) {
            zza(zza);
        }
    }

    private final void zzer() throws zzhb {
        long j;
        zzhm zzhm = this.zzafx;
        if (zzhm != null) {
            long zzhp = zzhm.zzagd.zzhp();
            if (zzhp != -9223372036854775807L) {
                zzdq(zzhp);
            } else {
                zzhv zzhv = this.zzafj;
                if (zzhv == null || zzhv.zzfd()) {
                    this.zzafu = this.zzafg.zzgb();
                } else {
                    long zzgb = this.zzafk.zzgb();
                    this.zzafu = zzgb;
                    this.zzafg.zzel(zzgb);
                }
                zzhp = this.zzafu - this.zzafx.zzev();
            }
            this.zzafa.zzagb = zzhp;
            this.zzafr = SystemClock.elapsedRealtime() * 1000;
            if (this.zzafm.length == 0) {
                j = Long.MIN_VALUE;
            } else {
                j = this.zzafx.zzagd.zzhq();
            }
            zzhl zzhl = this.zzafa;
            if (j == Long.MIN_VALUE) {
                j = this.zzaev.zza(this.zzafx.zzafz, this.zzaeo, false).zzaih;
            }
            zzhl.zzagc = j;
        }
    }

    private final void zza(long j, long j2) {
        this.handler.removeMessages(2);
        long elapsedRealtime = (j + j2) - SystemClock.elapsedRealtime();
        if (elapsedRealtime <= 0) {
            this.handler.sendEmptyMessage(2);
        } else {
            this.handler.sendEmptyMessageDelayed(2, elapsedRealtime);
        }
    }

    private final long zza(int i, long j) throws zzhb {
        zzhm zzhm;
        zzeq();
        this.zzafo = false;
        setState(2);
        zzhm zzhm2 = this.zzafx;
        if (zzhm2 == null) {
            zzhm zzhm3 = this.zzafv;
            if (zzhm3 != null) {
                zzhm3.release();
            }
            zzhm = null;
        } else {
            zzhm = null;
            while (zzhm2 != null) {
                if (zzhm2.zzafz != i || !zzhm2.zzagj) {
                    zzhm2.release();
                } else {
                    zzhm = zzhm2;
                }
                zzhm2 = zzhm2.zzagl;
            }
        }
        zzhm zzhm4 = this.zzafx;
        if (!(zzhm4 == zzhm && zzhm4 == this.zzafw)) {
            for (zzhv disable : this.zzafm) {
                disable.disable();
            }
            this.zzafm = new zzhv[0];
            this.zzafk = null;
            this.zzafj = null;
            this.zzafx = null;
        }
        if (zzhm != null) {
            zzhm.zzagl = null;
            this.zzafv = zzhm;
            this.zzafw = zzhm;
            zzb(zzhm);
            if (this.zzafx.zzagk) {
                j = this.zzafx.zzagd.zzeg(j);
            }
            zzdq(j);
            zzeu();
        } else {
            this.zzafv = null;
            this.zzafw = null;
            this.zzafx = null;
            zzdq(j);
        }
        this.handler.sendEmptyMessage(2);
        return j;
    }

    private final void zzdq(long j) throws zzhb {
        long j2;
        zzhm zzhm = this.zzafx;
        if (zzhm == null) {
            j2 = 60000000;
        } else {
            j2 = zzhm.zzev();
        }
        long j3 = j + j2;
        this.zzafu = j3;
        this.zzafg.zzel(j3);
        for (zzhv zzdm : this.zzafm) {
            zzdm.zzdm(this.zzafu);
        }
    }

    private final void zzes() {
        zzi(true);
        this.zzaff.onStopped();
        setState(1);
    }

    private final void zzi(boolean z) {
        this.handler.removeMessages(2);
        this.zzafo = false;
        this.zzafg.stop();
        this.zzafk = null;
        this.zzafj = null;
        this.zzafu = 60000000;
        for (zzhv zzhv : this.zzafm) {
            try {
                zza(zzhv);
                zzhv.disable();
            } catch (zzhb | RuntimeException e) {
                Log.e("ExoPlayerImplInternal", "Stop failed.", e);
            }
        }
        this.zzafm = new zzhv[0];
        zzhm zzhm = this.zzafx;
        if (zzhm == null) {
            zzhm = this.zzafv;
        }
        zza(zzhm);
        this.zzafv = null;
        this.zzafw = null;
        this.zzafx = null;
        zzh(false);
        if (z) {
            zznb zznb = this.zzafl;
            if (zznb != null) {
                zznb.zzhz();
                this.zzafl = null;
            }
            this.zzaev = null;
        }
    }

    private static void zza(zzhv zzhv) throws zzhb {
        if (zzhv.getState() == 2) {
            zzhv.stop();
        }
    }

    private final boolean zzdr(long j) {
        if (j == -9223372036854775807L || this.zzafa.zzagb < j) {
            return true;
        }
        return this.zzafx.zzagl != null && this.zzafx.zzagl.zzagj;
    }

    private final void zzet() throws IOException {
        zzhm zzhm = this.zzafv;
        if (zzhm != null && !zzhm.zzagj) {
            zzhm zzhm2 = this.zzafw;
            if (zzhm2 == null || zzhm2.zzagl == this.zzafv) {
                zzhv[] zzhvArr = this.zzafm;
                int length = zzhvArr.length;
                int i = 0;
                while (i < length) {
                    if (zzhvArr[i].zzeb()) {
                        i++;
                    } else {
                        return;
                    }
                }
                this.zzafv.zzagd.zzhn();
            }
        }
    }

    private final void zza(Object obj, int i) {
        this.zzafa = new zzhl(0, 0);
        zzb(obj, i);
        this.zzafa = new zzhl(0, -9223372036854775807L);
        setState(4);
        zzi(false);
    }

    private final void zzb(Object obj, int i) {
        this.zzaek.obtainMessage(6, new zzhn(this.zzaev, obj, this.zzafa, i)).sendToTarget();
    }

    private final int zza(int i, zzia zzia, zzia zzia2) {
        int zzff = zzia.zzff();
        int i2 = -1;
        for (int i3 = 0; i3 < zzff && i2 == -1; i3++) {
            i = zzia.zza(i, this.zzaeo, this.zzaen, this.repeatMode);
            i2 = zzia2.zzc(zzia.zza(i, this.zzaeo, true).zzage);
        }
        return i2;
    }

    private final boolean zzt(int i) {
        this.zzaev.zza(i, this.zzaeo, false);
        if (this.zzaev.zza(0, this.zzaen, false).zzaid || this.zzaev.zza(i, this.zzaeo, this.zzaen, this.repeatMode) != -1) {
            return false;
        }
        return true;
    }

    private final Pair<Integer, Long> zza(zzho zzho) {
        zzia zzia = zzho.zzaev;
        if (zzia.isEmpty()) {
            zzia = this.zzaev;
        }
        try {
            Pair<Integer, Long> zzb = zzb(zzia, zzho.zzagp, zzho.zzagq);
            zzia zzia2 = this.zzaev;
            if (zzia2 == zzia) {
                return zzb;
            }
            int zzc = zzia2.zzc(zzia.zza(((Integer) zzb.first).intValue(), this.zzaeo, true).zzage);
            if (zzc != -1) {
                return Pair.create(Integer.valueOf(zzc), (Long) zzb.second);
            }
            int zza = zza(((Integer) zzb.first).intValue(), zzia, this.zzaev);
            if (zza == -1) {
                return null;
            }
            this.zzaev.zza(zza, this.zzaeo, false);
            return zzb(0, -9223372036854775807L);
        } catch (IndexOutOfBoundsException unused) {
            throw new zzhr(this.zzaev, zzho.zzagp, zzho.zzagq);
        }
    }

    private final Pair<Integer, Long> zzb(int i, long j) {
        return zzb(this.zzaev, i, -9223372036854775807L);
    }

    private final Pair<Integer, Long> zzb(zzia zzia, int i, long j) {
        return zza(zzia, i, j, 0);
    }

    private final Pair<Integer, Long> zza(zzia zzia, int i, long j, long j2) {
        zzpb.zzc(i, 0, zzia.zzfe());
        zzia.zza(i, this.zzaen, false, j2);
        if (j == -9223372036854775807L) {
            j = this.zzaen.zzaig;
            if (j == -9223372036854775807L) {
                return null;
            }
        }
        long j3 = this.zzaen.zzaii + j;
        long j4 = zzia.zza(0, this.zzaeo, false).zzaih;
        if (j4 != -9223372036854775807L) {
            int i2 = (j3 > j4 ? 1 : (j3 == j4 ? 0 : -1));
        }
        return Pair.create(0, Long.valueOf(j3));
    }

    private final void zzeu() {
        long j;
        if (!this.zzafv.zzagj) {
            j = 0;
        } else {
            j = this.zzafv.zzagd.zzhm();
        }
        if (j == Long.MIN_VALUE) {
            zzh(false);
            return;
        }
        long zzev = this.zzafu - this.zzafv.zzev();
        boolean zzdt = this.zzaff.zzdt(j - zzev);
        zzh(zzdt);
        if (zzdt) {
            this.zzafv.zzagd.zzee(zzev);
        }
    }

    private static void zza(zzhm zzhm) {
        while (zzhm != null) {
            zzhm.release();
            zzhm = zzhm.zzagl;
        }
    }

    private final void zzb(zzhm zzhm) throws zzhb {
        if (this.zzafx != zzhm) {
            boolean[] zArr = new boolean[this.zzaeh.length];
            int i = 0;
            int i2 = 0;
            while (true) {
                zzhv[] zzhvArr = this.zzaeh;
                if (i < zzhvArr.length) {
                    zzhv zzhv = zzhvArr[i];
                    zArr[i] = zzhv.getState() != 0;
                    zzod zzbf = zzhm.zzagm.zzbhq.zzbf(i);
                    if (zzbf != null) {
                        i2++;
                    }
                    if (zArr[i] && (zzbf == null || (zzhv.zzed() && zzhv.zzea() == this.zzafx.zzagf[i]))) {
                        if (zzhv == this.zzafj) {
                            this.zzafg.zza(this.zzafk);
                            this.zzafk = null;
                            this.zzafj = null;
                        }
                        zza(zzhv);
                        zzhv.disable();
                    }
                    i++;
                } else {
                    this.zzafx = zzhm;
                    this.zzaek.obtainMessage(3, zzhm.zzagm).sendToTarget();
                    zza(zArr, i2);
                    return;
                }
            }
        }
    }

    private final void zza(boolean[] zArr, int i) throws zzhb {
        this.zzafm = new zzhv[i];
        int i2 = 0;
        int i3 = 0;
        while (true) {
            zzhv[] zzhvArr = this.zzaeh;
            if (i2 < zzhvArr.length) {
                zzhv zzhv = zzhvArr[i2];
                zzod zzbf = this.zzafx.zzagm.zzbhq.zzbf(i2);
                if (zzbf != null) {
                    int i4 = i3 + 1;
                    this.zzafm[i3] = zzhv;
                    if (zzhv.getState() == 0) {
                        zzhx zzhx = this.zzafx.zzagm.zzbhs[i2];
                        boolean z = this.zzaeq && this.state == 3;
                        boolean z2 = !zArr[i2] && z;
                        int length = zzbf.length();
                        zzhq[] zzhqArr = new zzhq[length];
                        for (int i5 = 0; i5 < length; i5++) {
                            zzhqArr[i5] = zzbf.zzbc(i5);
                        }
                        zzhv.zza(zzhx, zzhqArr, this.zzafx.zzagf[i2], this.zzafu, z2, this.zzafx.zzev());
                        zzpf zzdz = zzhv.zzdz();
                        if (zzdz != null) {
                            if (this.zzafk == null) {
                                this.zzafk = zzdz;
                                this.zzafj = zzhv;
                                zzdz.zzb(this.zzaez);
                            } else {
                                throw zzhb.zza((RuntimeException) new IllegalStateException("Multiple renderer media clocks enabled."));
                            }
                        }
                        if (z) {
                            zzhv.start();
                        }
                    }
                    i3 = i4;
                }
                i2++;
            } else {
                return;
            }
        }
    }

    public final /* synthetic */ void zza(zznn zznn) {
        this.handler.obtainMessage(9, (zzmz) zznn).sendToTarget();
    }
}
