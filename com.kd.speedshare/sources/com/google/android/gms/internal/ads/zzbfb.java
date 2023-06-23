package com.google.android.gms.internal.ads;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* compiled from: com.google.android.gms:play-services-ads@@19.2.0 */
final class zzbfb {
    private final ArrayList<zzor> zzekt = new ArrayList<>();
    private long zzeku;

    zzbfb() {
    }

    /* access modifiers changed from: package-private */
    public final long zzaap() {
        Iterator<zzor> it = this.zzekt.iterator();
        while (it.hasNext()) {
            Map<String, List<String>> responseHeaders = it.next().getResponseHeaders();
            if (responseHeaders != null) {
                for (Map.Entry next : responseHeaders.entrySet()) {
                    try {
                        if ("content-length".equalsIgnoreCase((String) next.getKey())) {
                            this.zzeku = Math.max(this.zzeku, Long.parseLong((String) ((List) next.getValue()).get(0)));
                        }
                    } catch (RuntimeException unused) {
                    }
                }
                it.remove();
            }
        }
        return this.zzeku;
    }

    /* access modifiers changed from: package-private */
    public final void zza(zzor zzor) {
        this.zzekt.add(zzor);
    }
}
