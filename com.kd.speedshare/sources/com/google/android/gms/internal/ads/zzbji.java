package com.google.android.gms.internal.ads;

/* compiled from: com.google.android.gms:play-services-ads@@19.2.0 */
final class zzbji implements zzbmt {
    private zzbxa zzeti;
    private zzbrx zzetj;
    private zzdkw zzetl;
    private zzdir zzetm;
    private zzdhv zzetn;
    private final /* synthetic */ zzbiz zzeto;

    private zzbji(zzbiz zzbiz) {
        this.zzeto = zzbiz;
    }

    /* renamed from: zzafg */
    public final zzbmq zzaeg() {
        zzelg.zza(this.zzeti, zzbxa.class);
        zzelg.zza(this.zzetj, zzbrx.class);
        return new zzbjh(this.zzeto, new zzbqf(), new zzdlt(), new zzbrl(), new zzcll(), this.zzeti, this.zzetj, new zzdmb(), this.zzetl, this.zzetm, this.zzetn);
    }

    @Deprecated
    public final /* synthetic */ zzbmt zza(zzbnb zzbnb) {
        zzelg.checkNotNull(zzbnb);
        return this;
    }

    public final /* synthetic */ zzbmt zzb(zzbrx zzbrx) {
        this.zzetj = (zzbrx) zzelg.checkNotNull(zzbrx);
        return this;
    }

    public final /* synthetic */ zzbmt zzb(zzbxa zzbxa) {
        this.zzeti = (zzbxa) zzelg.checkNotNull(zzbxa);
        return this;
    }

    public final /* synthetic */ zzbru zza(zzdhv zzdhv) {
        this.zzetn = zzdhv;
        return this;
    }

    public final /* synthetic */ zzbru zza(zzdir zzdir) {
        this.zzetm = zzdir;
        return this;
    }

    public final /* synthetic */ zzbru zza(zzdkw zzdkw) {
        this.zzetl = zzdkw;
        return this;
    }
}
