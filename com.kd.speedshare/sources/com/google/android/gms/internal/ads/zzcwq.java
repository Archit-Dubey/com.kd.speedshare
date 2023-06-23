package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.ads.formats.PublisherAdViewOptions;

/* compiled from: com.google.android.gms:play-services-ads@@19.2.0 */
public final class zzcwq extends zzws {
    private zzwj zzbpd;
    private final zzbif zzgmd;
    private final Context zzgov;
    private final zzdlc zzgow = new zzdlc();
    private final zzccx zzgox = new zzccx();

    public zzcwq(zzbif zzbif, Context context, String str) {
        this.zzgmd = zzbif;
        this.zzgow.zzgs(str);
        this.zzgov = context;
    }

    public final zzwo zzqb() {
        zzccv zzamd = this.zzgox.zzamd();
        this.zzgow.zzc(zzamd.zzama());
        this.zzgow.zzd(zzamd.zzamb());
        zzdlc zzdlc = this.zzgow;
        if (zzdlc.zzkh() == null) {
            zzdlc.zzd(zzvh.zzph());
        }
        return new zzcwt(this.zzgov, this.zzgmd, this.zzgow, zzamd, this.zzbpd);
    }

    public final void zzb(zzwj zzwj) {
        this.zzbpd = zzwj;
    }

    public final void zza(zzaet zzaet) {
        this.zzgox.zzb(zzaet);
    }

    public final void zza(zzafi zzafi) {
        this.zzgox.zzb(zzafi);
    }

    public final void zza(zzaeu zzaeu) {
        this.zzgox.zzb(zzaeu);
    }

    public final void zza(String str, zzafa zzafa, zzaez zzaez) {
        this.zzgox.zzb(str, zzafa, zzaez);
    }

    public final void zza(zzadj zzadj) {
        this.zzgow.zzb(zzadj);
    }

    public final void zza(zzaio zzaio) {
        this.zzgow.zzb(zzaio);
    }

    public final void zza(zzaiw zzaiw) {
        this.zzgox.zzb(zzaiw);
    }

    public final void zzb(zzxk zzxk) {
        this.zzgow.zzc(zzxk);
    }

    public final void zza(zzafh zzafh, zzvh zzvh) {
        this.zzgox.zza(zzafh);
        this.zzgow.zzd(zzvh);
    }

    public final void zza(PublisherAdViewOptions publisherAdViewOptions) {
        this.zzgow.zzb(publisherAdViewOptions);
    }
}
