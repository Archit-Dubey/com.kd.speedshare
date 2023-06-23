package com.google.android.gms.internal.ads;

/* compiled from: com.google.android.gms:play-services-ads-lite@@19.2.0 */
public class zzegu {
    private static final zzefo zzhzj = zzefo.zzbeq();
    private zzeer zziga;
    private volatile zzehl zzigb;
    private volatile zzeer zzigc;

    public int hashCode() {
        return 1;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof zzegu)) {
            return false;
        }
        zzegu zzegu = (zzegu) obj;
        zzehl zzehl = this.zzigb;
        zzehl zzehl2 = zzegu.zzigb;
        if (zzehl == null && zzehl2 == null) {
            return zzbct().equals(zzegu.zzbct());
        }
        if (zzehl != null && zzehl2 != null) {
            return zzehl.equals(zzehl2);
        }
        if (zzehl != null) {
            return zzehl.equals(zzegu.zzm(zzehl.zzbfk()));
        }
        return zzm(zzehl2.zzbfk()).equals(zzehl2);
    }

    /* JADX WARNING: Can't wrap try/catch for region: R(6:7|8|9|10|11|12) */
    /* JADX WARNING: Missing exception handler attribute for start block: B:9:0x0012 */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private final com.google.android.gms.internal.ads.zzehl zzm(com.google.android.gms.internal.ads.zzehl r2) {
        /*
            r1 = this;
            com.google.android.gms.internal.ads.zzehl r0 = r1.zzigb
            if (r0 != 0) goto L_0x001d
            monitor-enter(r1)
            com.google.android.gms.internal.ads.zzehl r0 = r1.zzigb     // Catch:{ all -> 0x001a }
            if (r0 == 0) goto L_0x000b
            monitor-exit(r1)     // Catch:{ all -> 0x001a }
            goto L_0x001d
        L_0x000b:
            r1.zzigb = r2     // Catch:{ zzegl -> 0x0012 }
            com.google.android.gms.internal.ads.zzeer r0 = com.google.android.gms.internal.ads.zzeer.zzhzv     // Catch:{ zzegl -> 0x0012 }
            r1.zzigc = r0     // Catch:{ zzegl -> 0x0012 }
            goto L_0x0018
        L_0x0012:
            r1.zzigb = r2     // Catch:{ all -> 0x001a }
            com.google.android.gms.internal.ads.zzeer r2 = com.google.android.gms.internal.ads.zzeer.zzhzv     // Catch:{ all -> 0x001a }
            r1.zzigc = r2     // Catch:{ all -> 0x001a }
        L_0x0018:
            monitor-exit(r1)     // Catch:{ all -> 0x001a }
            goto L_0x001d
        L_0x001a:
            r2 = move-exception
            monitor-exit(r1)     // Catch:{ all -> 0x001a }
            throw r2
        L_0x001d:
            com.google.android.gms.internal.ads.zzehl r2 = r1.zzigb
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzegu.zzm(com.google.android.gms.internal.ads.zzehl):com.google.android.gms.internal.ads.zzehl");
    }

    public final zzehl zzn(zzehl zzehl) {
        zzehl zzehl2 = this.zzigb;
        this.zziga = null;
        this.zzigc = null;
        this.zzigb = zzehl;
        return zzehl2;
    }

    public final int zzbfe() {
        if (this.zzigc != null) {
            return this.zzigc.size();
        }
        if (this.zzigb != null) {
            return this.zzigb.zzbfe();
        }
        return 0;
    }

    public final zzeer zzbct() {
        if (this.zzigc != null) {
            return this.zzigc;
        }
        synchronized (this) {
            if (this.zzigc != null) {
                zzeer zzeer = this.zzigc;
                return zzeer;
            }
            if (this.zzigb == null) {
                this.zzigc = zzeer.zzhzv;
            } else {
                this.zzigc = this.zzigb.zzbct();
            }
            zzeer zzeer2 = this.zzigc;
            return zzeer2;
        }
    }
}
