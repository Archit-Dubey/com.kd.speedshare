package com.google.android.gms.internal.ads;

/* compiled from: com.google.android.gms:play-services-ads@@19.2.0 */
public abstract class zzcng implements zzduh<zzasm, zzdkw> {
    /* access modifiers changed from: private */
    public final zzbuv zzggv;

    public zzcng(zzbuv zzbuv) {
        this.zzggv = zzbuv;
    }

    /* access modifiers changed from: protected */
    public abstract zzdvf<zzdkw> zzb(zzasm zzasm) throws zzcmi;

    public final /* synthetic */ zzdvf zzf(Object obj) throws Exception {
        zzasm zzasm = (zzasm) obj;
        this.zzggv.zzd(zzasm);
        zzdvf<zzdkw> zzb = zzb(zzasm);
        zzdux.zza(zzb, new zzcnj(this), zzbbf.zzedm);
        return zzb;
    }
}
