package com.google.android.gms.internal.ads;

import java.util.Arrays;
import java.util.List;

/* compiled from: com.google.android.gms:play-services-ads@@19.2.0 */
public final class zzbfd extends zzbes implements zzbef {
    private String zzefl;
    private boolean zzeks;
    private zzbdy zzekv;
    private Exception zzekw;
    private boolean zzekx;

    public zzbfd(zzbdb zzbdb, zzbdc zzbdc) {
        super(zzbdb);
        zzbdy zzbdy = new zzbdy(zzbdb.getContext(), zzbdc);
        this.zzekv = zzbdy;
        zzbdy.zza((zzbef) this);
    }

    public final void zzdo(int i) {
    }

    public final void zzn(int i, int i2) {
    }

    public final void zzb(boolean z, long j) {
        zzbdb zzbdb = (zzbdb) this.zzekk.get();
        if (zzbdb != null) {
            zzbbf.zzedl.execute(new zzbfg(zzbdb, z, j));
        }
    }

    public final void zza(String str, Exception exc) {
        String str2 = (String) zzwg.zzpw().zzd(zzaav.zzclr);
        if (str2 != null) {
            List asList = Arrays.asList(str2.split(","));
            if (asList.contains("all") || asList.contains(exc.getClass().getCanonicalName())) {
                return;
            }
        }
        this.zzekw = exc;
        zzaxv.zzd("Precache error", exc);
        zzfp(str);
    }

    public final void zzdk(int i) {
        this.zzekv.zzaao().zzdr(i);
    }

    public final void zzdj(int i) {
        this.zzekv.zzaao().zzdq(i);
    }

    public final void zzdl(int i) {
        this.zzekv.zzaao().zzdl(i);
    }

    public final void zzdm(int i) {
        this.zzekv.zzaao().zzdm(i);
    }

    public final void release() {
        zzbdy zzbdy = this.zzekv;
        if (zzbdy != null) {
            zzbdy.zza((zzbef) null);
            this.zzekv.release();
        }
        super.release();
    }

    /* access modifiers changed from: protected */
    public final String zzfn(String str) {
        String valueOf = String.valueOf(super.zzfn(str));
        return valueOf.length() != 0 ? "cache:".concat(valueOf) : new String("cache:");
    }

    public final boolean zzfm(String str) {
        return zze(str, new String[]{str});
    }

    /* JADX WARNING: Code restructure failed: missing block: B:24:0x0087, code lost:
        if (r11.zzekw == null) goto L_0x008e;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:28:0x008d, code lost:
        throw r11.zzekw;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:29:0x008e, code lost:
        r1 = "externalAbort";
     */
    /* JADX WARNING: Code restructure failed: missing block: B:32:0x0097, code lost:
        throw new java.io.IOException("Abort requested before buffering finished. ");
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final boolean zze(java.lang.String r34, java.lang.String[] r35) {
        /*
            r33 = this;
            r11 = r33
            r12 = r34
            r0 = r35
            r11.zzefl = r12
            java.lang.String r13 = r33.zzfn(r34)
            java.lang.String r14 = "error"
            int r1 = r0.length     // Catch:{ Exception -> 0x0162 }
            android.net.Uri[] r1 = new android.net.Uri[r1]     // Catch:{ Exception -> 0x0162 }
            r2 = 0
        L_0x0012:
            int r3 = r0.length     // Catch:{ Exception -> 0x0162 }
            if (r2 >= r3) goto L_0x0023
            r3 = r0[r2]     // Catch:{ Exception -> 0x0020 }
            android.net.Uri r3 = android.net.Uri.parse(r3)     // Catch:{ Exception -> 0x0020 }
            r1[r2] = r3     // Catch:{ Exception -> 0x0020 }
            int r2 = r2 + 1
            goto L_0x0012
        L_0x0020:
            r0 = move-exception
            goto L_0x0165
        L_0x0023:
            com.google.android.gms.internal.ads.zzbdy r0 = r11.zzekv     // Catch:{ Exception -> 0x0162 }
            java.lang.String r2 = r11.zzecc     // Catch:{ Exception -> 0x0162 }
            r0.zza((android.net.Uri[]) r1, (java.lang.String) r2)     // Catch:{ Exception -> 0x0162 }
            java.lang.ref.WeakReference r0 = r11.zzekk     // Catch:{ Exception -> 0x0162 }
            java.lang.Object r0 = r0.get()     // Catch:{ Exception -> 0x0162 }
            com.google.android.gms.internal.ads.zzbdb r0 = (com.google.android.gms.internal.ads.zzbdb) r0     // Catch:{ Exception -> 0x0162 }
            if (r0 == 0) goto L_0x0037
            r0.zza((java.lang.String) r13, (com.google.android.gms.internal.ads.zzbes) r11)     // Catch:{ Exception -> 0x0020 }
        L_0x0037:
            com.google.android.gms.common.util.Clock r0 = com.google.android.gms.ads.internal.zzq.zzld()     // Catch:{ Exception -> 0x0162 }
            long r16 = r0.currentTimeMillis()     // Catch:{ Exception -> 0x0162 }
            com.google.android.gms.internal.ads.zzaag<java.lang.Long> r1 = com.google.android.gms.internal.ads.zzaav.zzcly     // Catch:{ Exception -> 0x0162 }
            com.google.android.gms.internal.ads.zzaar r2 = com.google.android.gms.internal.ads.zzwg.zzpw()     // Catch:{ Exception -> 0x0162 }
            java.lang.Object r1 = r2.zzd(r1)     // Catch:{ Exception -> 0x0162 }
            java.lang.Long r1 = (java.lang.Long) r1     // Catch:{ Exception -> 0x0162 }
            long r9 = r1.longValue()     // Catch:{ Exception -> 0x0162 }
            com.google.android.gms.internal.ads.zzaag<java.lang.Long> r1 = com.google.android.gms.internal.ads.zzaav.zzclx     // Catch:{ Exception -> 0x0162 }
            com.google.android.gms.internal.ads.zzaar r2 = com.google.android.gms.internal.ads.zzwg.zzpw()     // Catch:{ Exception -> 0x0162 }
            java.lang.Object r1 = r2.zzd(r1)     // Catch:{ Exception -> 0x0162 }
            java.lang.Long r1 = (java.lang.Long) r1     // Catch:{ Exception -> 0x0162 }
            long r1 = r1.longValue()     // Catch:{ Exception -> 0x0162 }
            r3 = 1000(0x3e8, double:4.94E-321)
            long r6 = r1 * r3
            com.google.android.gms.internal.ads.zzaag<java.lang.Integer> r1 = com.google.android.gms.internal.ads.zzaav.zzclw     // Catch:{ Exception -> 0x0162 }
            com.google.android.gms.internal.ads.zzaar r2 = com.google.android.gms.internal.ads.zzwg.zzpw()     // Catch:{ Exception -> 0x0162 }
            java.lang.Object r1 = r2.zzd(r1)     // Catch:{ Exception -> 0x0162 }
            java.lang.Integer r1 = (java.lang.Integer) r1     // Catch:{ Exception -> 0x0162 }
            int r1 = r1.intValue()     // Catch:{ Exception -> 0x0162 }
            long r4 = (long) r1     // Catch:{ Exception -> 0x0162 }
            r1 = -1
        L_0x0076:
            monitor-enter(r33)     // Catch:{ Exception -> 0x0162 }
            long r18 = r0.currentTimeMillis()     // Catch:{ all -> 0x015b }
            long r18 = r18 - r16
            int r3 = (r18 > r6 ? 1 : (r18 == r6 ? 0 : -1))
            if (r3 > 0) goto L_0x012e
            boolean r3 = r11.zzeks     // Catch:{ all -> 0x015b }
            if (r3 == 0) goto L_0x0098
            java.lang.Exception r0 = r11.zzekw     // Catch:{ all -> 0x0160 }
            if (r0 == 0) goto L_0x008e
            java.lang.String r1 = "badUrl"
            java.lang.Exception r0 = r11.zzekw     // Catch:{ all -> 0x0154 }
            throw r0     // Catch:{ all -> 0x0154 }
        L_0x008e:
            java.lang.String r1 = "externalAbort"
            java.io.IOException r0 = new java.io.IOException     // Catch:{ all -> 0x0154 }
            java.lang.String r2 = "Abort requested before buffering finished. "
            r0.<init>(r2)     // Catch:{ all -> 0x0154 }
            throw r0     // Catch:{ all -> 0x0154 }
        L_0x0098:
            boolean r3 = r11.zzekx     // Catch:{ all -> 0x015b }
            r18 = 1
            if (r3 == 0) goto L_0x00a1
            monitor-exit(r33)     // Catch:{ all -> 0x0160 }
            goto L_0x0102
        L_0x00a1:
            com.google.android.gms.internal.ads.zzbdy r3 = r11.zzekv     // Catch:{ all -> 0x015b }
            com.google.android.gms.internal.ads.zzhe r3 = r3.zzaal()     // Catch:{ all -> 0x015b }
            if (r3 == 0) goto L_0x0122
            r20 = r14
            long r14 = r3.getDuration()     // Catch:{ all -> 0x0157 }
            r21 = 0
            int r8 = (r14 > r21 ? 1 : (r14 == r21 ? 0 : -1))
            if (r8 <= 0) goto L_0x0106
            long r23 = r3.getBufferedPosition()     // Catch:{ all -> 0x0157 }
            int r3 = (r23 > r1 ? 1 : (r23 == r1 ? 0 : -1))
            if (r3 == 0) goto L_0x00e4
            int r1 = (r23 > r21 ? 1 : (r23 == r21 ? 0 : -1))
            if (r1 <= 0) goto L_0x00c3
            r8 = 1
            goto L_0x00c4
        L_0x00c3:
            r8 = 0
        L_0x00c4:
            int r25 = com.google.android.gms.internal.ads.zzbdy.zzaam()     // Catch:{ all -> 0x0157 }
            int r26 = com.google.android.gms.internal.ads.zzbdy.zzaan()     // Catch:{ all -> 0x0157 }
            r1 = r33
            r2 = r34
            r3 = r13
            r27 = r4
            r4 = r23
            r29 = r6
            r6 = r14
            r31 = r9
            r9 = r25
            r10 = r26
            r1.zza(r2, r3, r4, r6, r8, r9, r10)     // Catch:{ all -> 0x0157 }
            r1 = r23
            goto L_0x00ea
        L_0x00e4:
            r27 = r4
            r29 = r6
            r31 = r9
        L_0x00ea:
            int r3 = (r23 > r14 ? 1 : (r23 == r14 ? 0 : -1))
            if (r3 < 0) goto L_0x00f3
            r11.zzc(r12, r13, r14)     // Catch:{ all -> 0x0157 }
            monitor-exit(r33)     // Catch:{ all -> 0x0157 }
            goto L_0x0102
        L_0x00f3:
            com.google.android.gms.internal.ads.zzbdy r3 = r11.zzekv     // Catch:{ all -> 0x0157 }
            long r3 = r3.getBytesTransferred()     // Catch:{ all -> 0x0157 }
            int r5 = (r3 > r27 ? 1 : (r3 == r27 ? 0 : -1))
            if (r5 < 0) goto L_0x0103
            int r3 = (r23 > r21 ? 1 : (r23 == r21 ? 0 : -1))
            if (r3 <= 0) goto L_0x0103
            monitor-exit(r33)     // Catch:{ all -> 0x0157 }
        L_0x0102:
            return r18
        L_0x0103:
            r3 = r31
            goto L_0x010b
        L_0x0106:
            r27 = r4
            r29 = r6
            r3 = r9
        L_0x010b:
            r11.wait(r3)     // Catch:{ InterruptedException -> 0x0118 }
            monitor-exit(r33)     // Catch:{ all -> 0x0157 }
            r9 = r3
            r14 = r20
            r4 = r27
            r6 = r29
            goto L_0x0076
        L_0x0118:
            java.lang.String r1 = "interrupted"
            java.io.IOException r0 = new java.io.IOException     // Catch:{ all -> 0x0154 }
            java.lang.String r2 = "Wait interrupted."
            r0.<init>(r2)     // Catch:{ all -> 0x0154 }
            throw r0     // Catch:{ all -> 0x0154 }
        L_0x0122:
            r20 = r14
            java.lang.String r1 = "exoPlayerReleased"
            java.io.IOException r0 = new java.io.IOException     // Catch:{ all -> 0x0154 }
            java.lang.String r2 = "ExoPlayer was released during preloading."
            r0.<init>(r2)     // Catch:{ all -> 0x0154 }
            throw r0     // Catch:{ all -> 0x0154 }
        L_0x012e:
            r29 = r6
            r20 = r14
            java.lang.String r1 = "downloadTimeout"
            java.io.IOException r0 = new java.io.IOException     // Catch:{ all -> 0x0154 }
            r2 = 47
            java.lang.StringBuilder r3 = new java.lang.StringBuilder     // Catch:{ all -> 0x0154 }
            r3.<init>(r2)     // Catch:{ all -> 0x0154 }
            java.lang.String r2 = "Timeout reached. Limit: "
            r3.append(r2)     // Catch:{ all -> 0x0154 }
            r4 = r29
            r3.append(r4)     // Catch:{ all -> 0x0154 }
            java.lang.String r2 = " ms"
            r3.append(r2)     // Catch:{ all -> 0x0154 }
            java.lang.String r2 = r3.toString()     // Catch:{ all -> 0x0154 }
            r0.<init>(r2)     // Catch:{ all -> 0x0154 }
            throw r0     // Catch:{ all -> 0x0154 }
        L_0x0154:
            r0 = move-exception
            r14 = r1
            goto L_0x015e
        L_0x0157:
            r0 = move-exception
            r14 = r20
            goto L_0x015e
        L_0x015b:
            r0 = move-exception
            r20 = r14
        L_0x015e:
            monitor-exit(r33)     // Catch:{ all -> 0x0160 }
            throw r0     // Catch:{ Exception -> 0x0020 }
        L_0x0160:
            r0 = move-exception
            goto L_0x015e
        L_0x0162:
            r0 = move-exception
            r20 = r14
        L_0x0165:
            java.lang.String r1 = r0.getMessage()
            java.lang.String r2 = java.lang.String.valueOf(r34)
            int r2 = r2.length()
            int r2 = r2 + 34
            java.lang.String r3 = java.lang.String.valueOf(r1)
            int r3 = r3.length()
            int r2 = r2 + r3
            java.lang.StringBuilder r3 = new java.lang.StringBuilder
            r3.<init>(r2)
            java.lang.String r2 = "Failed to preload url "
            r3.append(r2)
            r3.append(r12)
            java.lang.String r2 = " Exception: "
            r3.append(r2)
            r3.append(r1)
            java.lang.String r1 = r3.toString()
            com.google.android.gms.internal.ads.zzaxv.zzfd(r1)
            r33.release()
            java.lang.String r0 = zzb((java.lang.String) r14, (java.lang.Exception) r0)
            r11.zza(r12, r13, r14, r0)
            r1 = 0
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzbfd.zze(java.lang.String, java.lang.String[]):boolean");
    }

    public final void abort() {
        zzfp((String) null);
    }

    private final void zzfp(String str) {
        synchronized (this) {
            this.zzeks = true;
            notify();
            release();
        }
        String str2 = this.zzefl;
        if (str2 != null) {
            String zzfn = zzfn(str2);
            Exception exc = this.zzekw;
            if (exc != null) {
                zza(this.zzefl, zzfn, "badUrl", zzb(str, exc));
            } else {
                zza(this.zzefl, zzfn, "externalAbort", "Programmatic precache abort.");
            }
        }
    }

    public final zzbdy zzaaq() {
        synchronized (this) {
            this.zzekx = true;
            notify();
        }
        this.zzekv.zza((zzbef) null);
        zzbdy zzbdy = this.zzekv;
        this.zzekv = null;
        return zzbdy;
    }

    private static String zzb(String str, Exception exc) {
        String canonicalName = exc.getClass().getCanonicalName();
        String message = exc.getMessage();
        StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 2 + String.valueOf(canonicalName).length() + String.valueOf(message).length());
        sb.append(str);
        sb.append("/");
        sb.append(canonicalName);
        sb.append(":");
        sb.append(message);
        return sb.toString();
    }
}
