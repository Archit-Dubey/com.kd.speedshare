package com.google.android.gms.measurement.internal;

/* compiled from: com.google.android.gms:play-services-measurement-impl@@17.4.4 */
public final class zzeo<V> {
    private static final Object zzf = new Object();
    private final String zza;
    private final zzem<V> zzb;
    private final V zzc;
    private final V zzd;
    private final Object zze;
    private volatile V zzg;
    private volatile V zzh;

    private zzeo(String str, V v, V v2, zzem<V> zzem) {
        this.zze = new Object();
        this.zzg = null;
        this.zzh = null;
        this.zza = str;
        this.zzc = v;
        this.zzd = v2;
        this.zzb = zzem;
    }

    public final String zza() {
        return this.zza;
    }

    /*  JADX ERROR: IndexOutOfBoundsException in pass: RegionMakerVisitor
        java.lang.IndexOutOfBoundsException: Index: 0, Size: 0
        	at java.util.ArrayList.rangeCheck(ArrayList.java:659)
        	at java.util.ArrayList.get(ArrayList.java:435)
        	at jadx.core.dex.nodes.InsnNode.getArg(InsnNode.java:101)
        	at jadx.core.dex.visitors.regions.RegionMaker.traverseMonitorExits(RegionMaker.java:611)
        	at jadx.core.dex.visitors.regions.RegionMaker.traverseMonitorExits(RegionMaker.java:619)
        	at jadx.core.dex.visitors.regions.RegionMaker.traverseMonitorExits(RegionMaker.java:619)
        	at jadx.core.dex.visitors.regions.RegionMaker.traverseMonitorExits(RegionMaker.java:619)
        	at jadx.core.dex.visitors.regions.RegionMaker.processMonitorEnter(RegionMaker.java:561)
        	at jadx.core.dex.visitors.regions.RegionMaker.traverse(RegionMaker.java:133)
        	at jadx.core.dex.visitors.regions.RegionMaker.makeRegion(RegionMaker.java:86)
        	at jadx.core.dex.visitors.regions.RegionMaker.processIf(RegionMaker.java:693)
        	at jadx.core.dex.visitors.regions.RegionMaker.traverse(RegionMaker.java:123)
        	at jadx.core.dex.visitors.regions.RegionMaker.makeRegion(RegionMaker.java:86)
        	at jadx.core.dex.visitors.regions.RegionMaker.processLoop(RegionMaker.java:225)
        	at jadx.core.dex.visitors.regions.RegionMaker.traverse(RegionMaker.java:106)
        	at jadx.core.dex.visitors.regions.RegionMaker.makeRegion(RegionMaker.java:86)
        	at jadx.core.dex.visitors.regions.RegionMaker.processHandlersOutBlocks(RegionMaker.java:1008)
        	at jadx.core.dex.visitors.regions.RegionMaker.processTryCatchBlocks(RegionMaker.java:978)
        	at jadx.core.dex.visitors.regions.RegionMakerVisitor.visit(RegionMakerVisitor.java:52)
        */
    /* JADX WARNING: CFG modification limit reached, blocks count: 171 */
    /* JADX WARNING: Missing exception handler attribute for start block: B:33:0x004a */
    public final V zza(V r4) {
        /*
            r3 = this;
            java.lang.Object r0 = r3.zze
            monitor-enter(r0)
            monitor-exit(r0)     // Catch:{ all -> 0x007a }
            if (r4 == 0) goto L_0x0007
            return r4
        L_0x0007:
            com.google.android.gms.measurement.internal.zzx r4 = com.google.android.gms.measurement.internal.zzep.zza
            if (r4 != 0) goto L_0x000e
            V r4 = r3.zzc
            return r4
        L_0x000e:
            com.google.android.gms.measurement.internal.zzx r4 = com.google.android.gms.measurement.internal.zzep.zza
            java.lang.Object r4 = zzf
            monitor-enter(r4)
            boolean r0 = com.google.android.gms.measurement.internal.zzx.zza()     // Catch:{ all -> 0x0075 }
            if (r0 == 0) goto L_0x0024
            V r0 = r3.zzh     // Catch:{ all -> 0x0075 }
            if (r0 != 0) goto L_0x0020
            V r0 = r3.zzc     // Catch:{ all -> 0x0075 }
            goto L_0x0022
        L_0x0020:
            V r0 = r3.zzh     // Catch:{ all -> 0x0075 }
        L_0x0022:
            monitor-exit(r4)     // Catch:{ all -> 0x0075 }
            return r0
        L_0x0024:
            monitor-exit(r4)     // Catch:{ all -> 0x0075 }
            java.util.List r4 = com.google.android.gms.measurement.internal.zzaq.zzct     // Catch:{ SecurityException -> 0x005c }
            java.util.Iterator r4 = r4.iterator()     // Catch:{ SecurityException -> 0x005c }
        L_0x002d:
            boolean r0 = r4.hasNext()     // Catch:{ SecurityException -> 0x005c }
            if (r0 == 0) goto L_0x005d
            java.lang.Object r0 = r4.next()     // Catch:{ SecurityException -> 0x005c }
            com.google.android.gms.measurement.internal.zzeo r0 = (com.google.android.gms.measurement.internal.zzeo) r0     // Catch:{ SecurityException -> 0x005c }
            boolean r1 = com.google.android.gms.measurement.internal.zzx.zza()     // Catch:{ SecurityException -> 0x005c }
            if (r1 != 0) goto L_0x0054
            r1 = 0
            com.google.android.gms.measurement.internal.zzem<V> r2 = r0.zzb     // Catch:{ IllegalStateException -> 0x004a }
            if (r2 == 0) goto L_0x004a
            com.google.android.gms.measurement.internal.zzem<V> r2 = r0.zzb     // Catch:{ IllegalStateException -> 0x004a }
            java.lang.Object r1 = r2.zza()     // Catch:{ IllegalStateException -> 0x004a }
        L_0x004a:
            java.lang.Object r2 = zzf     // Catch:{ SecurityException -> 0x005c }
            monitor-enter(r2)     // Catch:{ SecurityException -> 0x005c }
            r0.zzh = r1     // Catch:{ all -> 0x0051 }
            monitor-exit(r2)     // Catch:{ all -> 0x0051 }
            goto L_0x002d
        L_0x0051:
            r4 = move-exception
            monitor-exit(r2)     // Catch:{ all -> 0x0051 }
            throw r4     // Catch:{ SecurityException -> 0x005c }
        L_0x0054:
            java.lang.IllegalStateException r4 = new java.lang.IllegalStateException     // Catch:{ SecurityException -> 0x005c }
            java.lang.String r0 = "Refreshing flag cache must be done on a worker thread."
            r4.<init>(r0)     // Catch:{ SecurityException -> 0x005c }
            throw r4     // Catch:{ SecurityException -> 0x005c }
        L_0x005c:
        L_0x005d:
            com.google.android.gms.measurement.internal.zzem<V> r4 = r3.zzb
            if (r4 != 0) goto L_0x0066
            com.google.android.gms.measurement.internal.zzx r4 = com.google.android.gms.measurement.internal.zzep.zza
            V r4 = r3.zzc
            return r4
        L_0x0066:
            java.lang.Object r4 = r4.zza()     // Catch:{ SecurityException -> 0x0070, IllegalStateException -> 0x006b }
            return r4
        L_0x006b:
            com.google.android.gms.measurement.internal.zzx r4 = com.google.android.gms.measurement.internal.zzep.zza
            V r4 = r3.zzc
            return r4
        L_0x0070:
            com.google.android.gms.measurement.internal.zzx r4 = com.google.android.gms.measurement.internal.zzep.zza
            V r4 = r3.zzc
            return r4
        L_0x0075:
            r0 = move-exception
            monitor-exit(r4)     // Catch:{ all -> 0x0075 }
            throw r0
        L_0x0078:
            monitor-exit(r0)     // Catch:{ all -> 0x007a }
            throw r4
        L_0x007a:
            r4 = move-exception
            goto L_0x0078
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.zzeo.zza(java.lang.Object):java.lang.Object");
    }
}
