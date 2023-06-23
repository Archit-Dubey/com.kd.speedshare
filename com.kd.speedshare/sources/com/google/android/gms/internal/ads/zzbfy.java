package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.ads.internal.zza;
import com.google.android.gms.ads.internal.zzi;
import com.google.android.gms.ads.internal.zzq;

/* compiled from: com.google.android.gms:play-services-ads@@19.2.0 */
final /* synthetic */ class zzbfy implements zzduh {
    private final Context zzclf;
    private final zzeg zzdfy;
    private final zzbbd zzemq;
    private final zza zzemr;
    private final String zzems;

    zzbfy(Context context, zzeg zzeg, zzbbd zzbbd, zza zza, String str) {
        this.zzclf = context;
        this.zzdfy = zzeg;
        this.zzemq = zzbbd;
        this.zzemr = zza;
        this.zzems = str;
    }

    public final zzdvf zzf(Object obj) {
        Context context = this.zzclf;
        zzeg zzeg = this.zzdfy;
        zzbbd zzbbd = this.zzemq;
        zza zza = this.zzemr;
        String str = this.zzems;
        zzq.zzkx();
        zzbfn zza2 = zzbfv.zza(context, zzbhg.zzacp(), "", false, false, zzeg, zzbbd, (zzabi) null, (zzi) null, zza, zztm.zzmz(), (zzso) null, false);
        zzbbo zzl = zzbbo.zzl(zza2);
        zza2.zzaaz().zza((zzbhc) new zzbga(zzl));
        zza2.loadUrl(str);
        return zzl;
    }
}
