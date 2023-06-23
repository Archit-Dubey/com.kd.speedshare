package com.google.android.gms.internal.ads;

import java.util.Map;

/* compiled from: com.google.android.gms:play-services-ads@@19.2.0 */
final class zzakp implements zzahc<zzalf> {
    private final /* synthetic */ zzaju zzdgi;
    private final /* synthetic */ zzakh zzdgj;
    private final /* synthetic */ zzeg zzdgl;
    private final /* synthetic */ zzbaf zzdgm;

    zzakp(zzakh zzakh, zzeg zzeg, zzaju zzaju, zzbaf zzbaf) {
        this.zzdgj = zzakh;
        this.zzdgl = zzeg;
        this.zzdgi = zzaju;
        this.zzdgm = zzbaf;
    }

    public final /* synthetic */ void zza(Object obj, Map map) {
        zzalf zzalf = (zzalf) obj;
        synchronized (this.zzdgj.lock) {
            zzaxv.zzfc("JS Engine is requesting an update");
            if (this.zzdgj.status == 0) {
                zzaxv.zzfc("Starting reload.");
                int unused = this.zzdgj.status = 2;
                this.zzdgj.zza(this.zzdgl);
            }
            this.zzdgi.zzb("/requestReload", (zzahc) this.zzdgm.get());
        }
    }
}
