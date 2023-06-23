package com.google.android.gms.internal.ads;

/* compiled from: com.google.android.gms:play-services-ads@@19.2.0 */
final class zzavl implements zzduu<Void> {
    private final /* synthetic */ zzdvf zzdvs;

    zzavl(zzavi zzavi, zzdvf zzdvf) {
        this.zzdvs = zzdvf;
    }

    public final void zzb(Throwable th) {
        zzavi.zzdvf.remove(this.zzdvs);
    }

    public final /* synthetic */ void onSuccess(Object obj) {
        Void voidR = (Void) obj;
        zzavi.zzdvf.remove(this.zzdvs);
    }
}
