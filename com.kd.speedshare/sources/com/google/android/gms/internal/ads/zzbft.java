package com.google.android.gms.internal.ads;

import java.util.List;
import java.util.Map;

/* compiled from: com.google.android.gms:play-services-ads@@19.2.0 */
final class zzbft implements zzduu<Map<String, String>> {
    private final /* synthetic */ zzbfq zzemb;
    private final /* synthetic */ List zzemc;
    private final /* synthetic */ String zzemd;

    zzbft(zzbfq zzbfq, List list, String str) {
        this.zzemb = zzbfq;
        this.zzemc = list;
        this.zzemd = str;
    }

    public final void zzb(Throwable th) {
    }

    public final /* synthetic */ void onSuccess(Object obj) {
        this.zzemb.zza((Map<String, String>) (Map) obj, (List<zzahc<? super zzbfn>>) this.zzemc, this.zzemd);
    }
}
