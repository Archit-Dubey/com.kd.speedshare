.class final Lcom/google/android/gms/internal/ads/zzmp;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.2.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzjz;
.implements Lcom/google/android/gms/internal/ads/zzmz;
.implements Lcom/google/android/gms/internal/ads/zznl;
.implements Lcom/google/android/gms/internal/ads/zzou;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzjz;",
        "Lcom/google/android/gms/internal/ads/zzmz;",
        "Lcom/google/android/gms/internal/ads/zznl;",
        "Lcom/google/android/gms/internal/ads/zzou<",
        "Lcom/google/android/gms/internal/ads/zzms;",
        ">;"
    }
.end annotation


# instance fields
.field private final handler:Landroid/os/Handler;

.field private final uri:Landroid/net/Uri;

.field private final zzaek:Landroid/os/Handler;

.field private zzafn:Z

.field private zzagj:Z

.field private zzaih:J

.field private final zzaoh:Lcom/google/android/gms/internal/ads/zzok;

.field private final zzbde:I

.field private final zzbdf:Lcom/google/android/gms/internal/ads/zzmw;

.field private final zzbdg:Lcom/google/android/gms/internal/ads/zzna;

.field private final zzbdh:Lcom/google/android/gms/internal/ads/zzoi;

.field private final zzbdi:Ljava/lang/String;

.field private final zzbdj:J

.field private final zzbdk:Lcom/google/android/gms/internal/ads/zzov;

.field private final zzbdl:Lcom/google/android/gms/internal/ads/zzmv;

.field private final zzbdm:Lcom/google/android/gms/internal/ads/zzpd;

.field private final zzbdn:Ljava/lang/Runnable;

.field private final zzbdo:Ljava/lang/Runnable;

.field private final zzbdp:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/google/android/gms/internal/ads/zznj;",
            ">;"
        }
    .end annotation
.end field

.field private zzbdq:Lcom/google/android/gms/internal/ads/zzmy;

.field private zzbdr:Lcom/google/android/gms/internal/ads/zzkc;

.field private zzbds:Z

.field private zzbdt:Z

.field private zzbdu:Z

.field private zzbdv:I

.field private zzbdw:Lcom/google/android/gms/internal/ads/zznr;

.field private zzbdx:[Z

.field private zzbdy:[Z

.field private zzbdz:Z

.field private zzbea:J

.field private zzbeb:J

.field private zzbec:I

.field private zzbed:Z

.field private zzcp:J


# direct methods
.method public constructor <init>(Landroid/net/Uri;Lcom/google/android/gms/internal/ads/zzok;[Lcom/google/android/gms/internal/ads/zzjx;ILandroid/os/Handler;Lcom/google/android/gms/internal/ads/zzmw;Lcom/google/android/gms/internal/ads/zzna;Lcom/google/android/gms/internal/ads/zzoi;Ljava/lang/String;I)V
    .registers 11

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzmp;->uri:Landroid/net/Uri;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzmp;->zzaoh:Lcom/google/android/gms/internal/ads/zzok;

    .line 4
    iput p4, p0, Lcom/google/android/gms/internal/ads/zzmp;->zzbde:I

    .line 5
    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzmp;->zzaek:Landroid/os/Handler;

    .line 6
    iput-object p6, p0, Lcom/google/android/gms/internal/ads/zzmp;->zzbdf:Lcom/google/android/gms/internal/ads/zzmw;

    .line 7
    iput-object p7, p0, Lcom/google/android/gms/internal/ads/zzmp;->zzbdg:Lcom/google/android/gms/internal/ads/zzna;

    .line 8
    iput-object p8, p0, Lcom/google/android/gms/internal/ads/zzmp;->zzbdh:Lcom/google/android/gms/internal/ads/zzoi;

    .line 9
    iput-object p9, p0, Lcom/google/android/gms/internal/ads/zzmp;->zzbdi:Ljava/lang/String;

    int-to-long p1, p10

    .line 10
    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzmp;->zzbdj:J

    .line 11
    new-instance p1, Lcom/google/android/gms/internal/ads/zzov;

    const-string p2, "Loader:ExtractorMediaPeriod"

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/zzov;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzmp;->zzbdk:Lcom/google/android/gms/internal/ads/zzov;

    .line 12
    new-instance p1, Lcom/google/android/gms/internal/ads/zzmv;

    invoke-direct {p1, p3, p0}, Lcom/google/android/gms/internal/ads/zzmv;-><init>([Lcom/google/android/gms/internal/ads/zzjx;Lcom/google/android/gms/internal/ads/zzjz;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzmp;->zzbdl:Lcom/google/android/gms/internal/ads/zzmv;

    .line 13
    new-instance p1, Lcom/google/android/gms/internal/ads/zzpd;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzpd;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzmp;->zzbdm:Lcom/google/android/gms/internal/ads/zzpd;

    .line 14
    new-instance p1, Lcom/google/android/gms/internal/ads/zzmo;

    invoke-direct {p1, p0}, Lcom/google/android/gms/internal/ads/zzmo;-><init>(Lcom/google/android/gms/internal/ads/zzmp;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzmp;->zzbdn:Ljava/lang/Runnable;

    .line 15
    new-instance p1, Lcom/google/android/gms/internal/ads/zzmr;

    invoke-direct {p1, p0}, Lcom/google/android/gms/internal/ads/zzmr;-><init>(Lcom/google/android/gms/internal/ads/zzmp;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzmp;->zzbdo:Ljava/lang/Runnable;

    .line 16
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzmp;->handler:Landroid/os/Handler;

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    .line 17
    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzmp;->zzbeb:J

    .line 18
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzmp;->zzbdp:Landroid/util/SparseArray;

    const-wide/16 p1, -0x1

    .line 19
    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzmp;->zzcp:J

    return-void
.end method

.method private final startLoading()V
    .registers 10

    .line 182
    new-instance v6, Lcom/google/android/gms/internal/ads/zzms;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzmp;->uri:Landroid/net/Uri;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzmp;->zzaoh:Lcom/google/android/gms/internal/ads/zzok;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzmp;->zzbdl:Lcom/google/android/gms/internal/ads/zzmv;

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzmp;->zzbdm:Lcom/google/android/gms/internal/ads/zzpd;

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzms;-><init>(Lcom/google/android/gms/internal/ads/zzmp;Landroid/net/Uri;Lcom/google/android/gms/internal/ads/zzok;Lcom/google/android/gms/internal/ads/zzmv;Lcom/google/android/gms/internal/ads/zzpd;)V

    .line 183
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzmp;->zzagj:Z

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    if-eqz v0, :cond_40

    .line 184
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzmp;->zzhv()Z

    move-result v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzpb;->checkState(Z)V

    .line 185
    iget-wide v3, p0, Lcom/google/android/gms/internal/ads/zzmp;->zzaih:J

    cmp-long v0, v3, v1

    if-eqz v0, :cond_31

    iget-wide v7, p0, Lcom/google/android/gms/internal/ads/zzmp;->zzbeb:J

    cmp-long v0, v7, v3

    if-ltz v0, :cond_31

    const/4 v0, 0x1

    .line 186
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzmp;->zzbed:Z

    .line 187
    iput-wide v1, p0, Lcom/google/android/gms/internal/ads/zzmp;->zzbeb:J

    return-void

    .line 189
    :cond_31
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzmp;->zzbdr:Lcom/google/android/gms/internal/ads/zzkc;

    iget-wide v3, p0, Lcom/google/android/gms/internal/ads/zzmp;->zzbeb:J

    invoke-interface {v0, v3, v4}, Lcom/google/android/gms/internal/ads/zzkc;->zzdz(J)J

    move-result-wide v3

    iget-wide v7, p0, Lcom/google/android/gms/internal/ads/zzmp;->zzbeb:J

    invoke-virtual {v6, v3, v4, v7, v8}, Lcom/google/android/gms/internal/ads/zzms;->zze(JJ)V

    .line 190
    iput-wide v1, p0, Lcom/google/android/gms/internal/ads/zzmp;->zzbeb:J

    .line 191
    :cond_40
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzmp;->zzht()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzmp;->zzbec:I

    .line 192
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzmp;->zzbde:I

    const/4 v3, -0x1

    if-ne v0, v3, :cond_67

    .line 194
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzmp;->zzagj:Z

    if-eqz v0, :cond_66

    iget-wide v3, p0, Lcom/google/android/gms/internal/ads/zzmp;->zzcp:J

    const-wide/16 v7, -0x1

    cmp-long v0, v3, v7

    if-nez v0, :cond_66

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzmp;->zzbdr:Lcom/google/android/gms/internal/ads/zzkc;

    if-eqz v0, :cond_64

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzkc;->getDurationUs()J

    move-result-wide v3

    cmp-long v0, v3, v1

    if-eqz v0, :cond_64

    goto :goto_66

    :cond_64
    const/4 v0, 0x6

    goto :goto_67

    :cond_66
    :goto_66
    const/4 v0, 0x3

    .line 197
    :cond_67
    :goto_67
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzmp;->zzbdk:Lcom/google/android/gms/internal/ads/zzov;

    invoke-virtual {v1, v6, p0, v0}, Lcom/google/android/gms/internal/ads/zzov;->zza(Lcom/google/android/gms/internal/ads/zzow;Lcom/google/android/gms/internal/ads/zzou;I)J

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/ads/zzmp;)V
    .registers 1

    .line 259
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzmp;->zzhs()V

    return-void
.end method

.method private final zza(Lcom/google/android/gms/internal/ads/zzms;)V
    .registers 7

    .line 179
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzmp;->zzcp:J

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-nez v4, :cond_e

    .line 180
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzms;->zzb(Lcom/google/android/gms/internal/ads/zzms;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzmp;->zzcp:J

    :cond_e
    return-void
.end method

.method static synthetic zzb(Lcom/google/android/gms/internal/ads/zzmp;)Z
    .registers 1

    .line 260
    iget-boolean p0, p0, Lcom/google/android/gms/internal/ads/zzmp;->zzafn:Z

    return p0
.end method

.method static synthetic zzc(Lcom/google/android/gms/internal/ads/zzmp;)Lcom/google/android/gms/internal/ads/zzmy;
    .registers 1

    .line 261
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzmp;->zzbdq:Lcom/google/android/gms/internal/ads/zzmy;

    return-object p0
.end method

.method static synthetic zzd(Lcom/google/android/gms/internal/ads/zzmp;)Landroid/util/SparseArray;
    .registers 1

    .line 262
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzmp;->zzbdp:Landroid/util/SparseArray;

    return-object p0
.end method

.method static synthetic zze(Lcom/google/android/gms/internal/ads/zzmp;)Lcom/google/android/gms/internal/ads/zzmw;
    .registers 1

    .line 263
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzmp;->zzbdf:Lcom/google/android/gms/internal/ads/zzmw;

    return-object p0
.end method

.method static synthetic zzf(Lcom/google/android/gms/internal/ads/zzmp;)Ljava/lang/String;
    .registers 1

    .line 264
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzmp;->zzbdi:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic zzg(Lcom/google/android/gms/internal/ads/zzmp;)J
    .registers 3

    .line 265
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzmp;->zzbdj:J

    return-wide v0
.end method

.method static synthetic zzh(Lcom/google/android/gms/internal/ads/zzmp;)Ljava/lang/Runnable;
    .registers 1

    .line 266
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzmp;->zzbdo:Ljava/lang/Runnable;

    return-object p0
.end method

.method private final zzhs()V
    .registers 9

    .line 152
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzmp;->zzafn:Z

    if-nez v0, :cond_9d

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzmp;->zzagj:Z

    if-nez v0, :cond_9d

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzmp;->zzbdr:Lcom/google/android/gms/internal/ads/zzkc;

    if-eqz v0, :cond_9d

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzmp;->zzbds:Z

    if-nez v0, :cond_12

    goto/16 :goto_9d

    .line 154
    :cond_12
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzmp;->zzbdp:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_1a
    if-ge v2, v0, :cond_2e

    .line 156
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzmp;->zzbdp:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/ads/zznj;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zznj;->zzie()Lcom/google/android/gms/internal/ads/zzhq;

    move-result-object v3

    if-nez v3, :cond_2b

    return-void

    :cond_2b
    add-int/lit8 v2, v2, 0x1

    goto :goto_1a

    .line 159
    :cond_2e
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzmp;->zzbdm:Lcom/google/android/gms/internal/ads/zzpd;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzpd;->zzit()Z

    .line 160
    new-array v2, v0, [Lcom/google/android/gms/internal/ads/zzno;

    .line 161
    new-array v3, v0, [Z

    iput-object v3, p0, Lcom/google/android/gms/internal/ads/zzmp;->zzbdy:[Z

    .line 162
    new-array v3, v0, [Z

    iput-object v3, p0, Lcom/google/android/gms/internal/ads/zzmp;->zzbdx:[Z

    .line 163
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzmp;->zzbdr:Lcom/google/android/gms/internal/ads/zzkc;

    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/zzkc;->getDurationUs()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/google/android/gms/internal/ads/zzmp;->zzaih:J

    const/4 v3, 0x0

    :goto_46
    const/4 v4, 0x1

    if-ge v3, v0, :cond_7c

    .line 165
    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzmp;->zzbdp:Landroid/util/SparseArray;

    invoke-virtual {v5, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/internal/ads/zznj;

    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zznj;->zzie()Lcom/google/android/gms/internal/ads/zzhq;

    move-result-object v5

    .line 166
    new-instance v6, Lcom/google/android/gms/internal/ads/zzno;

    new-array v7, v4, [Lcom/google/android/gms/internal/ads/zzhq;

    aput-object v5, v7, v1

    invoke-direct {v6, v7}, Lcom/google/android/gms/internal/ads/zzno;-><init>([Lcom/google/android/gms/internal/ads/zzhq;)V

    aput-object v6, v2, v3

    .line 167
    iget-object v5, v5, Lcom/google/android/gms/internal/ads/zzhq;->zzagw:Ljava/lang/String;

    .line 168
    invoke-static {v5}, Lcom/google/android/gms/internal/ads/zzpe;->zzbf(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_70

    invoke-static {v5}, Lcom/google/android/gms/internal/ads/zzpe;->zzbe(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6f

    goto :goto_70

    :cond_6f
    const/4 v4, 0x0

    .line 169
    :cond_70
    :goto_70
    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzmp;->zzbdy:[Z

    aput-boolean v4, v5, v3

    .line 170
    iget-boolean v5, p0, Lcom/google/android/gms/internal/ads/zzmp;->zzbdz:Z

    or-int/2addr v4, v5

    iput-boolean v4, p0, Lcom/google/android/gms/internal/ads/zzmp;->zzbdz:Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_46

    .line 172
    :cond_7c
    new-instance v0, Lcom/google/android/gms/internal/ads/zznr;

    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/ads/zznr;-><init>([Lcom/google/android/gms/internal/ads/zzno;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzmp;->zzbdw:Lcom/google/android/gms/internal/ads/zznr;

    .line 173
    iput-boolean v4, p0, Lcom/google/android/gms/internal/ads/zzmp;->zzagj:Z

    .line 174
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzmp;->zzbdg:Lcom/google/android/gms/internal/ads/zzna;

    new-instance v1, Lcom/google/android/gms/internal/ads/zznp;

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzmp;->zzaih:J

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzmp;->zzbdr:Lcom/google/android/gms/internal/ads/zzkc;

    .line 175
    invoke-interface {v4}, Lcom/google/android/gms/internal/ads/zzkc;->isSeekable()Z

    move-result v4

    invoke-direct {v1, v2, v3, v4}, Lcom/google/android/gms/internal/ads/zznp;-><init>(JZ)V

    const/4 v2, 0x0

    .line 176
    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzna;->zzb(Lcom/google/android/gms/internal/ads/zzia;Ljava/lang/Object;)V

    .line 177
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzmp;->zzbdq:Lcom/google/android/gms/internal/ads/zzmy;

    invoke-interface {v0, p0}, Lcom/google/android/gms/internal/ads/zzmy;->zza(Lcom/google/android/gms/internal/ads/zzmz;)V

    :cond_9d
    :goto_9d
    return-void
.end method

.method private final zzht()I
    .registers 5

    .line 200
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzmp;->zzbdp:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_8
    if-ge v1, v0, :cond_1a

    .line 202
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzmp;->zzbdp:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/ads/zznj;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zznj;->zzic()I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    :cond_1a
    return v2
.end method

.method private final zzhu()J
    .registers 7

    .line 206
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzmp;->zzbdp:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    const-wide/high16 v1, -0x8000000000000000L

    const/4 v3, 0x0

    :goto_9
    if-ge v3, v0, :cond_1e

    .line 208
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzmp;->zzbdp:Landroid/util/SparseArray;

    .line 209
    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/ads/zznj;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zznj;->zzhu()J

    move-result-wide v4

    .line 210
    invoke-static {v1, v2, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    :cond_1e
    return-wide v1
.end method

.method private final zzhv()Z
    .registers 6

    .line 213
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzmp;->zzbeb:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v0, v2

    if-eqz v4, :cond_d

    const/4 v0, 0x1

    return v0

    :cond_d
    const/4 v0, 0x0

    return v0
.end method

.method static synthetic zzi(Lcom/google/android/gms/internal/ads/zzmp;)Landroid/os/Handler;
    .registers 1

    .line 267
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzmp;->handler:Landroid/os/Handler;

    return-object p0
.end method


# virtual methods
.method public final release()V
    .registers 4

    .line 21
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzmp;->zzbdl:Lcom/google/android/gms/internal/ads/zzmv;

    .line 22
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzmp;->zzbdk:Lcom/google/android/gms/internal/ads/zzov;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzmq;

    invoke-direct {v2, p0, v0}, Lcom/google/android/gms/internal/ads/zzmq;-><init>(Lcom/google/android/gms/internal/ads/zzmp;Lcom/google/android/gms/internal/ads/zzmv;)V

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzov;->zza(Ljava/lang/Runnable;)V

    .line 23
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzmp;->handler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    const/4 v0, 0x1

    .line 24
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzmp;->zzafn:Z

    return-void
.end method

.method final zza(ILcom/google/android/gms/internal/ads/zzhs;Lcom/google/android/gms/internal/ads/zzjm;Z)I
    .registers 12

    .line 130
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzmp;->zzbdu:Z

    if-nez v0, :cond_20

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzmp;->zzhv()Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_20

    .line 132
    :cond_b
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzmp;->zzbdp:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/ads/zznj;

    iget-boolean v4, p0, Lcom/google/android/gms/internal/ads/zzmp;->zzbed:Z

    iget-wide v5, p0, Lcom/google/android/gms/internal/ads/zzmp;->zzbea:J

    move-object v1, p2

    move-object v2, p3

    move v3, p4

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/gms/internal/ads/zznj;->zza(Lcom/google/android/gms/internal/ads/zzhs;Lcom/google/android/gms/internal/ads/zzjm;ZZJ)I

    move-result p1

    return p1

    :cond_20
    :goto_20
    const/4 p1, -0x3

    return p1
.end method

.method public final synthetic zza(Lcom/google/android/gms/internal/ads/zzow;JJLjava/io/IOException;)I
    .registers 11

    .line 214
    check-cast p1, Lcom/google/android/gms/internal/ads/zzms;

    .line 215
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzmp;->zza(Lcom/google/android/gms/internal/ads/zzms;)V

    .line 217
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzmp;->zzaek:Landroid/os/Handler;

    if-eqz p2, :cond_15

    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzmp;->zzbdf:Lcom/google/android/gms/internal/ads/zzmw;

    if-eqz p3, :cond_15

    .line 218
    new-instance p3, Lcom/google/android/gms/internal/ads/zzmt;

    invoke-direct {p3, p0, p6}, Lcom/google/android/gms/internal/ads/zzmt;-><init>(Lcom/google/android/gms/internal/ads/zzmp;Ljava/io/IOException;)V

    invoke-virtual {p2, p3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 220
    :cond_15
    instance-of p2, p6, Lcom/google/android/gms/internal/ads/zznq;

    if-eqz p2, :cond_1b

    const/4 p1, 0x3

    return p1

    .line 223
    :cond_1b
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzmp;->zzht()I

    move-result p2

    .line 224
    iget p3, p0, Lcom/google/android/gms/internal/ads/zzmp;->zzbec:I

    const/4 p4, 0x1

    const/4 p5, 0x0

    if-le p2, p3, :cond_27

    const/4 p2, 0x1

    goto :goto_28

    :cond_27
    const/4 p2, 0x0

    .line 226
    :goto_28
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzmp;->zzcp:J

    const-wide/16 v2, -0x1

    cmp-long p3, v0, v2

    if-nez p3, :cond_71

    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzmp;->zzbdr:Lcom/google/android/gms/internal/ads/zzkc;

    if-eqz p3, :cond_41

    .line 227
    invoke-interface {p3}, Lcom/google/android/gms/internal/ads/zzkc;->getDurationUs()J

    move-result-wide v0

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p3, v0, v2

    if-nez p3, :cond_71

    :cond_41
    const-wide/16 v0, 0x0

    .line 228
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzmp;->zzbea:J

    .line 229
    iget-boolean p3, p0, Lcom/google/android/gms/internal/ads/zzmp;->zzagj:Z

    iput-boolean p3, p0, Lcom/google/android/gms/internal/ads/zzmp;->zzbdu:Z

    .line 230
    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzmp;->zzbdp:Landroid/util/SparseArray;

    invoke-virtual {p3}, Landroid/util/SparseArray;->size()I

    move-result p3

    const/4 p6, 0x0

    :goto_50
    if-ge p6, p3, :cond_6e

    .line 232
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzmp;->zzbdp:Landroid/util/SparseArray;

    invoke-virtual {v2, p6}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/ads/zznj;

    iget-boolean v3, p0, Lcom/google/android/gms/internal/ads/zzmp;->zzagj:Z

    if-eqz v3, :cond_67

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzmp;->zzbdx:[Z

    aget-boolean v3, v3, p6

    if-eqz v3, :cond_65

    goto :goto_67

    :cond_65
    const/4 v3, 0x0

    goto :goto_68

    :cond_67
    :goto_67
    const/4 v3, 0x1

    :goto_68
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zznj;->zzk(Z)V

    add-int/lit8 p6, p6, 0x1

    goto :goto_50

    .line 234
    :cond_6e
    invoke-virtual {p1, v0, v1, v0, v1}, Lcom/google/android/gms/internal/ads/zzms;->zze(JJ)V

    .line 235
    :cond_71
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzmp;->zzht()I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzmp;->zzbec:I

    if-eqz p2, :cond_7a

    return p4

    :cond_7a
    return p5
.end method

.method public final zza([Lcom/google/android/gms/internal/ads/zzod;[Z[Lcom/google/android/gms/internal/ads/zznk;[ZJ)J
    .registers 12

    .line 35
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzmp;->zzagj:Z

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzpb;->checkState(Z)V

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 36
    :goto_7
    array-length v2, p1

    const/4 v3, 0x1

    if-ge v1, v2, :cond_40

    .line 37
    aget-object v2, p3, v1

    if-eqz v2, :cond_3d

    aget-object v2, p1, v1

    if-eqz v2, :cond_17

    aget-boolean v2, p2, v1

    if-nez v2, :cond_3d

    .line 38
    :cond_17
    aget-object v2, p3, v1

    check-cast v2, Lcom/google/android/gms/internal/ads/zzmu;

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzmu;->zza(Lcom/google/android/gms/internal/ads/zzmu;)I

    move-result v2

    .line 39
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzmp;->zzbdx:[Z

    aget-boolean v4, v4, v2

    invoke-static {v4}, Lcom/google/android/gms/internal/ads/zzpb;->checkState(Z)V

    .line 40
    iget v4, p0, Lcom/google/android/gms/internal/ads/zzmp;->zzbdv:I

    sub-int/2addr v4, v3

    iput v4, p0, Lcom/google/android/gms/internal/ads/zzmp;->zzbdv:I

    .line 41
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzmp;->zzbdx:[Z

    aput-boolean v0, v3, v2

    .line 42
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzmp;->zzbdp:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/ads/zznj;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zznj;->disable()V

    const/4 v2, 0x0

    .line 43
    aput-object v2, p3, v1

    :cond_3d
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_40
    const/4 p2, 0x0

    const/4 v1, 0x0

    .line 46
    :goto_42
    array-length v2, p1

    if-ge p2, v2, :cond_8f

    .line 47
    aget-object v2, p3, p2

    if-nez v2, :cond_8c

    aget-object v2, p1, p2

    if-eqz v2, :cond_8c

    .line 48
    aget-object v1, p1, p2

    .line 49
    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzod;->length()I

    move-result v2

    if-ne v2, v3, :cond_57

    const/4 v2, 0x1

    goto :goto_58

    :cond_57
    const/4 v2, 0x0

    :goto_58
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzpb;->checkState(Z)V

    .line 50
    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/ads/zzod;->zzbe(I)I

    move-result v2

    if-nez v2, :cond_63

    const/4 v2, 0x1

    goto :goto_64

    :cond_63
    const/4 v2, 0x0

    :goto_64
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzpb;->checkState(Z)V

    .line 51
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzmp;->zzbdw:Lcom/google/android/gms/internal/ads/zznr;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzod;->zzik()Lcom/google/android/gms/internal/ads/zzno;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zznr;->zza(Lcom/google/android/gms/internal/ads/zzno;)I

    move-result v1

    .line 52
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzmp;->zzbdx:[Z

    aget-boolean v2, v2, v1

    xor-int/2addr v2, v3

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzpb;->checkState(Z)V

    .line 53
    iget v2, p0, Lcom/google/android/gms/internal/ads/zzmp;->zzbdv:I

    add-int/2addr v2, v3

    iput v2, p0, Lcom/google/android/gms/internal/ads/zzmp;->zzbdv:I

    .line 54
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzmp;->zzbdx:[Z

    aput-boolean v3, v2, v1

    .line 55
    new-instance v2, Lcom/google/android/gms/internal/ads/zzmu;

    invoke-direct {v2, p0, v1}, Lcom/google/android/gms/internal/ads/zzmu;-><init>(Lcom/google/android/gms/internal/ads/zzmp;I)V

    aput-object v2, p3, p2

    .line 56
    aput-boolean v3, p4, p2

    const/4 v1, 0x1

    :cond_8c
    add-int/lit8 p2, p2, 0x1

    goto :goto_42

    .line 59
    :cond_8f
    iget-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzmp;->zzbdt:Z

    if-nez p1, :cond_b0

    .line 60
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzmp;->zzbdp:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result p1

    const/4 p2, 0x0

    :goto_9a
    if-ge p2, p1, :cond_b0

    .line 62
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzmp;->zzbdx:[Z

    aget-boolean v2, v2, p2

    if-nez v2, :cond_ad

    .line 63
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzmp;->zzbdp:Landroid/util/SparseArray;

    invoke-virtual {v2, p2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/ads/zznj;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zznj;->disable()V

    :cond_ad
    add-int/lit8 p2, p2, 0x1

    goto :goto_9a

    .line 65
    :cond_b0
    iget p1, p0, Lcom/google/android/gms/internal/ads/zzmp;->zzbdv:I

    if-nez p1, :cond_c4

    .line 66
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzmp;->zzbdu:Z

    .line 67
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzmp;->zzbdk:Lcom/google/android/gms/internal/ads/zzov;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzov;->isLoading()Z

    move-result p1

    if-eqz p1, :cond_e1

    .line 68
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzmp;->zzbdk:Lcom/google/android/gms/internal/ads/zzov;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzov;->zzis()V

    goto :goto_e1

    .line 69
    :cond_c4
    iget-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzmp;->zzbdt:Z

    if-eqz p1, :cond_cb

    if-eqz v1, :cond_e1

    goto :goto_d1

    :cond_cb
    const-wide/16 p1, 0x0

    cmp-long v1, p5, p1

    if-eqz v1, :cond_e1

    .line 70
    :goto_d1
    invoke-virtual {p0, p5, p6}, Lcom/google/android/gms/internal/ads/zzmp;->zzeg(J)J

    move-result-wide p5

    .line 71
    :goto_d5
    array-length p1, p3

    if-ge v0, p1, :cond_e1

    .line 72
    aget-object p1, p3, v0

    if-eqz p1, :cond_de

    .line 73
    aput-boolean v3, p4, v0

    :cond_de
    add-int/lit8 v0, v0, 0x1

    goto :goto_d5

    .line 75
    :cond_e1
    :goto_e1
    iput-boolean v3, p0, Lcom/google/android/gms/internal/ads/zzmp;->zzbdt:Z

    return-wide p5
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzkc;)V
    .registers 3

    .line 147
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzmp;->zzbdr:Lcom/google/android/gms/internal/ads/zzkc;

    .line 148
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzmp;->handler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzmp;->zzbdn:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzmy;J)V
    .registers 4

    .line 26
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzmp;->zzbdq:Lcom/google/android/gms/internal/ads/zzmy;

    .line 27
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzmp;->zzbdm:Lcom/google/android/gms/internal/ads/zzpd;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzpd;->open()Z

    .line 28
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzmp;->startLoading()V

    return-void
.end method

.method public final synthetic zza(Lcom/google/android/gms/internal/ads/zzow;JJ)V
    .registers 6

    .line 247
    check-cast p1, Lcom/google/android/gms/internal/ads/zzms;

    .line 248
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzmp;->zza(Lcom/google/android/gms/internal/ads/zzms;)V

    const/4 p1, 0x1

    .line 249
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzmp;->zzbed:Z

    .line 250
    iget-wide p1, p0, Lcom/google/android/gms/internal/ads/zzmp;->zzaih:J

    const-wide p3, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p5, p1, p3

    if-nez p5, :cond_38

    .line 251
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzmp;->zzhu()J

    move-result-wide p1

    const-wide/high16 p3, -0x8000000000000000L

    cmp-long p5, p1, p3

    if-nez p5, :cond_20

    const-wide/16 p1, 0x0

    goto :goto_23

    :cond_20
    const-wide/16 p3, 0x2710

    add-long/2addr p1, p3

    .line 253
    :goto_23
    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzmp;->zzaih:J

    .line 254
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzmp;->zzbdg:Lcom/google/android/gms/internal/ads/zzna;

    new-instance p2, Lcom/google/android/gms/internal/ads/zznp;

    iget-wide p3, p0, Lcom/google/android/gms/internal/ads/zzmp;->zzaih:J

    iget-object p5, p0, Lcom/google/android/gms/internal/ads/zzmp;->zzbdr:Lcom/google/android/gms/internal/ads/zzkc;

    .line 255
    invoke-interface {p5}, Lcom/google/android/gms/internal/ads/zzkc;->isSeekable()Z

    move-result p5

    invoke-direct {p2, p3, p4, p5}, Lcom/google/android/gms/internal/ads/zznp;-><init>(JZ)V

    const/4 p3, 0x0

    .line 256
    invoke-interface {p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzna;->zzb(Lcom/google/android/gms/internal/ads/zzia;Ljava/lang/Object;)V

    .line 257
    :cond_38
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzmp;->zzbdq:Lcom/google/android/gms/internal/ads/zzmy;

    invoke-interface {p1, p0}, Lcom/google/android/gms/internal/ads/zzmy;->zza(Lcom/google/android/gms/internal/ads/zznn;)V

    return-void
.end method

.method public final synthetic zza(Lcom/google/android/gms/internal/ads/zzow;JJZ)V
    .registers 7

    .line 238
    check-cast p1, Lcom/google/android/gms/internal/ads/zzms;

    .line 239
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzmp;->zza(Lcom/google/android/gms/internal/ads/zzms;)V

    if-nez p6, :cond_2b

    .line 240
    iget p1, p0, Lcom/google/android/gms/internal/ads/zzmp;->zzbdv:I

    if-lez p1, :cond_2b

    .line 241
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzmp;->zzbdp:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result p1

    const/4 p2, 0x0

    :goto_12
    if-ge p2, p1, :cond_26

    .line 243
    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzmp;->zzbdp:Landroid/util/SparseArray;

    invoke-virtual {p3, p2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/google/android/gms/internal/ads/zznj;

    iget-object p4, p0, Lcom/google/android/gms/internal/ads/zzmp;->zzbdx:[Z

    aget-boolean p4, p4, p2

    invoke-virtual {p3, p4}, Lcom/google/android/gms/internal/ads/zznj;->zzk(Z)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_12

    .line 245
    :cond_26
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzmp;->zzbdq:Lcom/google/android/gms/internal/ads/zzmy;

    invoke-interface {p1, p0}, Lcom/google/android/gms/internal/ads/zzmy;->zza(Lcom/google/android/gms/internal/ads/zznn;)V

    :cond_2b
    return-void
.end method

.method final zzba(I)Z
    .registers 3

    .line 126
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzmp;->zzbed:Z

    if-nez v0, :cond_1b

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzmp;->zzhv()Z

    move-result v0

    if-nez v0, :cond_19

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzmp;->zzbdp:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zznj;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zznj;->zzid()Z

    move-result p1

    if-eqz p1, :cond_19

    goto :goto_1b

    :cond_19
    const/4 p1, 0x0

    return p1

    :cond_1b
    :goto_1b
    const/4 p1, 0x1

    return p1
.end method

.method public final zzc(II)Lcom/google/android/gms/internal/ads/zzke;
    .registers 4

    .line 138
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzmp;->zzbdp:Landroid/util/SparseArray;

    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/internal/ads/zznj;

    if-nez p2, :cond_19

    .line 140
    new-instance p2, Lcom/google/android/gms/internal/ads/zznj;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzmp;->zzbdh:Lcom/google/android/gms/internal/ads/zzoi;

    invoke-direct {p2, v0}, Lcom/google/android/gms/internal/ads/zznj;-><init>(Lcom/google/android/gms/internal/ads/zzoi;)V

    .line 141
    invoke-virtual {p2, p0}, Lcom/google/android/gms/internal/ads/zznj;->zza(Lcom/google/android/gms/internal/ads/zznl;)V

    .line 142
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzmp;->zzbdp:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_19
    return-object p2
.end method

.method final zzd(IJ)V
    .registers 7

    .line 133
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzmp;->zzbdp:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zznj;

    .line 134
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzmp;->zzbed:Z

    if-eqz v0, :cond_18

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zznj;->zzhu()J

    move-result-wide v0

    cmp-long v2, p2, v0

    if-lez v2, :cond_18

    .line 135
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zznj;->zzih()V

    return-void

    :cond_18
    const/4 v0, 0x1

    .line 136
    invoke-virtual {p1, p2, p3, v0}, Lcom/google/android/gms/internal/ads/zznj;->zze(JZ)Z

    return-void
.end method

.method public final zzee(J)Z
    .registers 3

    .line 78
    iget-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzmp;->zzbed:Z

    if-nez p1, :cond_20

    iget-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzmp;->zzagj:Z

    if-eqz p1, :cond_d

    iget p1, p0, Lcom/google/android/gms/internal/ads/zzmp;->zzbdv:I

    if-nez p1, :cond_d

    goto :goto_20

    .line 80
    :cond_d
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzmp;->zzbdm:Lcom/google/android/gms/internal/ads/zzpd;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzpd;->open()Z

    move-result p1

    .line 81
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzmp;->zzbdk:Lcom/google/android/gms/internal/ads/zzov;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzov;->isLoading()Z

    move-result p2

    if-nez p2, :cond_1f

    .line 82
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzmp;->startLoading()V

    const/4 p1, 0x1

    :cond_1f
    return p1

    :cond_20
    :goto_20
    const/4 p1, 0x0

    return p1
.end method

.method public final zzef(J)V
    .registers 3

    return-void
.end method

.method public final zzeg(J)J
    .registers 8

    .line 108
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzmp;->zzbdr:Lcom/google/android/gms/internal/ads/zzkc;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzkc;->isSeekable()Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_b

    :cond_9
    const-wide/16 p1, 0x0

    .line 109
    :goto_b
    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzmp;->zzbea:J

    .line 110
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzmp;->zzbdp:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 111
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzmp;->zzhv()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_1b
    if-eqz v1, :cond_34

    if-ge v3, v0, :cond_34

    .line 113
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzmp;->zzbdx:[Z

    aget-boolean v4, v4, v3

    if-eqz v4, :cond_31

    .line 114
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzmp;->zzbdp:Landroid/util/SparseArray;

    invoke-virtual {v1, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zznj;

    invoke-virtual {v1, p1, p2, v2}, Lcom/google/android/gms/internal/ads/zznj;->zze(JZ)Z

    move-result v1

    :cond_31
    add-int/lit8 v3, v3, 0x1

    goto :goto_1b

    :cond_34
    if-nez v1, :cond_5d

    .line 117
    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzmp;->zzbeb:J

    .line 118
    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzmp;->zzbed:Z

    .line 119
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzmp;->zzbdk:Lcom/google/android/gms/internal/ads/zzov;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzov;->isLoading()Z

    move-result v1

    if-eqz v1, :cond_48

    .line 120
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzmp;->zzbdk:Lcom/google/android/gms/internal/ads/zzov;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzov;->zzis()V

    goto :goto_5d

    :cond_48
    const/4 v1, 0x0

    :goto_49
    if-ge v1, v0, :cond_5d

    .line 122
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzmp;->zzbdp:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/ads/zznj;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzmp;->zzbdx:[Z

    aget-boolean v4, v4, v1

    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/ads/zznj;->zzk(Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_49

    .line 124
    :cond_5d
    :goto_5d
    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzmp;->zzbdu:Z

    return-wide p1
.end method

.method public final zzf(Lcom/google/android/gms/internal/ads/zzhq;)V
    .registers 3

    .line 150
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzmp;->handler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzmp;->zzbdn:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final zzgr()V
    .registers 3

    const/4 v0, 0x1

    .line 144
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzmp;->zzbds:Z

    .line 145
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzmp;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzmp;->zzbdn:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final zzhm()J
    .registers 3

    .line 85
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzmp;->zzbdv:I

    if-nez v0, :cond_7

    const-wide/high16 v0, -0x8000000000000000L

    return-wide v0

    :cond_7
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzmp;->zzhq()J

    move-result-wide v0

    return-wide v0
.end method

.method public final zzhn()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 31
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzmp;->zzbdk:Lcom/google/android/gms/internal/ads/zzov;

    const/high16 v1, -0x80000000

    .line 32
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzov;->zzbi(I)V

    return-void
.end method

.method public final zzho()Lcom/google/android/gms/internal/ads/zznr;
    .registers 2

    .line 34
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzmp;->zzbdw:Lcom/google/android/gms/internal/ads/zznr;

    return-object v0
.end method

.method public final zzhp()J
    .registers 3

    .line 86
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzmp;->zzbdu:Z

    if-eqz v0, :cond_a

    const/4 v0, 0x0

    .line 87
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzmp;->zzbdu:Z

    .line 88
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzmp;->zzbea:J

    return-wide v0

    :cond_a
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    return-wide v0
.end method

.method public final zzhq()J
    .registers 9

    .line 90
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzmp;->zzbed:Z

    const-wide/high16 v1, -0x8000000000000000L

    if-eqz v0, :cond_7

    return-wide v1

    .line 92
    :cond_7
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzmp;->zzhv()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 93
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzmp;->zzbeb:J

    return-wide v0

    .line 94
    :cond_10
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzmp;->zzbdz:Z

    if-eqz v0, :cond_3b

    const-wide v3, 0x7fffffffffffffffL

    .line 96
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzmp;->zzbdp:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v5, 0x0

    :goto_20
    if-ge v5, v0, :cond_3f

    .line 98
    iget-object v6, p0, Lcom/google/android/gms/internal/ads/zzmp;->zzbdy:[Z

    aget-boolean v6, v6, v5

    if-eqz v6, :cond_38

    .line 99
    iget-object v6, p0, Lcom/google/android/gms/internal/ads/zzmp;->zzbdp:Landroid/util/SparseArray;

    .line 100
    invoke-virtual {v6, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/gms/internal/ads/zznj;

    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zznj;->zzhu()J

    move-result-wide v6

    .line 101
    invoke-static {v3, v4, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v3

    :cond_38
    add-int/lit8 v5, v5, 0x1

    goto :goto_20

    .line 104
    :cond_3b
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzmp;->zzhu()J

    move-result-wide v3

    :cond_3f
    cmp-long v0, v3, v1

    if-nez v0, :cond_46

    .line 105
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzmp;->zzbea:J

    return-wide v0

    :cond_46
    return-wide v3
.end method

.method final zzhr()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 127
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzmp;->zzbdk:Lcom/google/android/gms/internal/ads/zzov;

    const/high16 v1, -0x80000000

    .line 128
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzov;->zzbi(I)V

    return-void
.end method
