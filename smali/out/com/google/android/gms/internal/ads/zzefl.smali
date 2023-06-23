.class public abstract Lcom/google/android/gms/internal/ads/zzefl;
.super Lcom/google/android/gms/internal/ads/zzeeo;
.source "com.google.android.gms:play-services-ads-lite@@19.2.0"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/ads/zzefl$zzb;,
        Lcom/google/android/gms/internal/ads/zzefl$zza;
    }
.end annotation


# static fields
.field private static final logger:Ljava/util/logging/Logger;

.field private static final zziay:Z


# instance fields
.field zziaz:Lcom/google/android/gms/internal/ads/zzefn;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 163
    const-class v0, Lcom/google/android/gms/internal/ads/zzefl;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzefl;->logger:Ljava/util/logging/Logger;

    .line 164
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzejf;->zzbhv()Z

    move-result v0

    sput-boolean v0, Lcom/google/android/gms/internal/ads/zzefl;->zziay:Z

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 4
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzeeo;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzefk;)V
    .registers 2

    .line 161
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzefl;-><init>()V

    return-void
.end method

.method public static zza(ILcom/google/android/gms/internal/ads/zzegu;)I
    .registers 3

    .line 50
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzefl;->zzgp(I)I

    move-result p0

    .line 51
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzegu;->zzbfe()I

    move-result p1

    .line 52
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzefl;->zzgr(I)I

    move-result v0

    add-int/2addr v0, p1

    add-int/2addr p0, v0

    return p0
.end method

.method public static zza(Lcom/google/android/gms/internal/ads/zzegu;)I
    .registers 2

    .line 117
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzegu;->zzbfe()I

    move-result p0

    .line 118
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzefl;->zzgr(I)I

    move-result v0

    add-int/2addr v0, p0

    return v0
.end method

.method static zza(Lcom/google/android/gms/internal/ads/zzehl;Lcom/google/android/gms/internal/ads/zzeih;)I
    .registers 4

    .line 129
    check-cast p0, Lcom/google/android/gms/internal/ads/zzeeh;

    .line 130
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzeeh;->zzbcu()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_10

    .line 132
    invoke-interface {p1, p0}, Lcom/google/android/gms/internal/ads/zzeih;->zzat(Ljava/lang/Object;)I

    move-result v0

    .line 133
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzeeh;->zzfp(I)V

    .line 136
    :cond_10
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzefl;->zzgr(I)I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public static zzaf(II)I
    .registers 2

    .line 23
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzefl;->zzgp(I)I

    move-result p0

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzefl;->zzgq(I)I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method

.method public static zzag(II)I
    .registers 2

    .line 24
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzefl;->zzgp(I)I

    move-result p0

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzefl;->zzgr(I)I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method

.method public static zzah(II)I
    .registers 2

    .line 25
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzefl;->zzgp(I)I

    move-result p0

    .line 26
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzefl;->zzgw(I)I

    move-result p1

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzefl;->zzgr(I)I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method

.method public static zzai(II)I
    .registers 2

    .line 28
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzefl;->zzgp(I)I

    move-result p0

    add-int/lit8 p0, p0, 0x4

    return p0
.end method

.method public static zzai(Lcom/google/android/gms/internal/ads/zzeer;)I
    .registers 2

    .line 120
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzeer;->size()I

    move-result p0

    .line 121
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzefl;->zzgr(I)I

    move-result v0

    add-int/2addr v0, p0

    return v0
.end method

.method public static zzaj(II)I
    .registers 2

    .line 29
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzefl;->zzgp(I)I

    move-result p0

    add-int/lit8 p0, p0, 0x4

    return p0
.end method

.method public static zzak(II)I
    .registers 2

    .line 42
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzefl;->zzgp(I)I

    move-result p0

    .line 43
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzefl;->zzgq(I)I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method

.method public static zzb(IF)I
    .registers 2

    .line 39
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzefl;->zzgp(I)I

    move-result p0

    add-int/lit8 p0, p0, 0x4

    return p0
.end method

.method public static zzb(ILcom/google/android/gms/internal/ads/zzegu;)I
    .registers 4

    const/4 v0, 0x1

    .line 65
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzefl;->zzgp(I)I

    move-result v1

    shl-int/lit8 v0, v1, 0x1

    const/4 v1, 0x2

    .line 66
    invoke-static {v1, p0}, Lcom/google/android/gms/internal/ads/zzefl;->zzag(II)I

    move-result p0

    add-int/2addr v0, p0

    const/4 p0, 0x3

    .line 67
    invoke-static {p0, p1}, Lcom/google/android/gms/internal/ads/zzefl;->zza(ILcom/google/android/gms/internal/ads/zzegu;)I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public static zzb(ILcom/google/android/gms/internal/ads/zzehl;)I
    .registers 4

    const/4 v0, 0x1

    .line 55
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzefl;->zzgp(I)I

    move-result v1

    shl-int/lit8 v0, v1, 0x1

    const/4 v1, 0x2

    .line 56
    invoke-static {v1, p0}, Lcom/google/android/gms/internal/ads/zzefl;->zzag(II)I

    move-result p0

    add-int/2addr v0, p0

    const/4 p0, 0x3

    .line 58
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzefl;->zzgp(I)I

    move-result p0

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzefl;->zzh(Lcom/google/android/gms/internal/ads/zzehl;)I

    move-result p1

    add-int/2addr p0, p1

    add-int/2addr v0, p0

    return v0
.end method

.method static zzb(ILcom/google/android/gms/internal/ads/zzehl;Lcom/google/android/gms/internal/ads/zzeih;)I
    .registers 3

    .line 54
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzefl;->zzgp(I)I

    move-result p0

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/ads/zzefl;->zza(Lcom/google/android/gms/internal/ads/zzehl;Lcom/google/android/gms/internal/ads/zzeih;)I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method

.method static synthetic zzbeo()Z
    .registers 1

    .line 162
    sget-boolean v0, Lcom/google/android/gms/internal/ads/zzefl;->zziay:Z

    return v0
.end method

.method public static zzbt(Z)I
    .registers 1

    const/4 p0, 0x1

    return p0
.end method

.method public static zzc(D)I
    .registers 2

    const/16 p0, 0x8

    return p0
.end method

.method public static zzc(ID)I
    .registers 3

    .line 40
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzefl;->zzgp(I)I

    move-result p0

    add-int/lit8 p0, p0, 0x8

    return p0
.end method

.method public static zzc(ILcom/google/android/gms/internal/ads/zzeer;)I
    .registers 3

    .line 46
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzefl;->zzgp(I)I

    move-result p0

    .line 47
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzeer;->size()I

    move-result p1

    .line 48
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzefl;->zzgr(I)I

    move-result v0

    add-int/2addr v0, p1

    add-int/2addr p0, v0

    return p0
.end method

.method static zzc(ILcom/google/android/gms/internal/ads/zzehl;Lcom/google/android/gms/internal/ads/zzeih;)I
    .registers 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 151
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzefl;->zzgp(I)I

    move-result p0

    shl-int/lit8 p0, p0, 0x1

    .line 152
    check-cast p1, Lcom/google/android/gms/internal/ads/zzeeh;

    .line 153
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzeeh;->zzbcu()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_16

    .line 155
    invoke-interface {p2, p1}, Lcom/google/android/gms/internal/ads/zzeih;->zzat(Ljava/lang/Object;)I

    move-result v0

    .line 156
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzeeh;->zzfp(I)V

    :cond_16
    add-int/2addr p0, v0

    return p0
.end method

.method public static zzd(ILcom/google/android/gms/internal/ads/zzeer;)I
    .registers 4

    const/4 v0, 0x1

    .line 61
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzefl;->zzgp(I)I

    move-result v1

    shl-int/lit8 v0, v1, 0x1

    const/4 v1, 0x2

    .line 62
    invoke-static {v1, p0}, Lcom/google/android/gms/internal/ads/zzefl;->zzag(II)I

    move-result p0

    add-int/2addr v0, p0

    const/4 p0, 0x3

    .line 63
    invoke-static {p0, p1}, Lcom/google/android/gms/internal/ads/zzefl;->zzc(ILcom/google/android/gms/internal/ads/zzeer;)I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public static zzfl(J)I
    .registers 2

    .line 87
    invoke-static {p0, p1}, Lcom/google/android/gms/internal/ads/zzefl;->zzfm(J)I

    move-result p0

    return p0
.end method

.method public static zzfm(J)I
    .registers 8

    const-wide/16 v0, -0x80

    and-long/2addr v0, p0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_b

    const/4 p0, 0x1

    return p0

    :cond_b
    cmp-long v0, p0, v2

    if-gez v0, :cond_12

    const/16 p0, 0xa

    return p0

    :cond_12
    const-wide v0, -0x800000000L

    and-long/2addr v0, p0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_21

    const/4 v0, 0x6

    const/16 v1, 0x1c

    ushr-long/2addr p0, v1

    goto :goto_22

    :cond_21
    const/4 v0, 0x2

    :goto_22
    const-wide/32 v4, -0x200000

    and-long/2addr v4, p0

    cmp-long v1, v4, v2

    if-eqz v1, :cond_2f

    add-int/lit8 v0, v0, 0x2

    const/16 v1, 0xe

    ushr-long/2addr p0, v1

    :cond_2f
    const-wide/16 v4, -0x4000

    and-long/2addr p0, v4

    cmp-long v1, p0, v2

    if-eqz v1, :cond_38

    add-int/lit8 v0, v0, 0x1

    :cond_38
    return v0
.end method

.method public static zzfn(J)I
    .registers 2

    .line 102
    invoke-static {p0, p1}, Lcom/google/android/gms/internal/ads/zzefl;->zzfq(J)J

    move-result-wide p0

    invoke-static {p0, p1}, Lcom/google/android/gms/internal/ads/zzefl;->zzfm(J)I

    move-result p0

    return p0
.end method

.method public static zzfo(J)I
    .registers 2

    const/16 p0, 0x8

    return p0
.end method

.method public static zzfp(J)I
    .registers 2

    const/16 p0, 0x8

    return p0
.end method

.method private static zzfq(J)J
    .registers 5

    const/4 v0, 0x1

    shl-long v0, p0, v0

    const/16 v2, 0x3f

    shr-long/2addr p0, v2

    xor-long/2addr p0, v0

    return-wide p0
.end method

.method public static zzg(F)I
    .registers 1

    const/4 p0, 0x4

    return p0
.end method

.method public static zzgp(I)I
    .registers 1

    shl-int/lit8 p0, p0, 0x3

    .line 71
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzefl;->zzgr(I)I

    move-result p0

    return p0
.end method

.method public static zzgq(I)I
    .registers 1

    if-ltz p0, :cond_7

    .line 73
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzefl;->zzgr(I)I

    move-result p0

    return p0

    :cond_7
    const/16 p0, 0xa

    return p0
.end method

.method public static zzgr(I)I
    .registers 2

    and-int/lit8 v0, p0, -0x80

    if-nez v0, :cond_6

    const/4 p0, 0x1

    return p0

    :cond_6
    and-int/lit16 v0, p0, -0x4000

    if-nez v0, :cond_c

    const/4 p0, 0x2

    return p0

    :cond_c
    const/high16 v0, -0x200000

    and-int/2addr v0, p0

    if-nez v0, :cond_13

    const/4 p0, 0x3

    return p0

    :cond_13
    const/high16 v0, -0x10000000

    and-int/2addr p0, v0

    if-nez p0, :cond_1a

    const/4 p0, 0x4

    return p0

    :cond_1a
    const/4 p0, 0x5

    return p0
.end method

.method public static zzgs(I)I
    .registers 1

    .line 84
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzefl;->zzgw(I)I

    move-result p0

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzefl;->zzgr(I)I

    move-result p0

    return p0
.end method

.method public static zzgt(I)I
    .registers 1

    const/4 p0, 0x4

    return p0
.end method

.method public static zzgu(I)I
    .registers 1

    const/4 p0, 0x4

    return p0
.end method

.method public static zzgv(I)I
    .registers 1

    .line 108
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzefl;->zzgq(I)I

    move-result p0

    return p0
.end method

.method private static zzgw(I)I
    .registers 2

    shl-int/lit8 v0, p0, 0x1

    shr-int/lit8 p0, p0, 0x1f

    xor-int/2addr p0, v0

    return p0
.end method

.method public static zzgx(I)I
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 160
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzefl;->zzgr(I)I

    move-result p0

    return p0
.end method

.method public static zzh(Lcom/google/android/gms/internal/ads/zzehl;)I
    .registers 2

    .line 126
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzehl;->zzbfe()I

    move-result p0

    .line 127
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzefl;->zzgr(I)I

    move-result v0

    add-int/2addr v0, p0

    return v0
.end method

.method public static zzhu(Ljava/lang/String;)I
    .registers 2

    .line 109
    :try_start_0
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzeji;->zza(Ljava/lang/CharSequence;)I

    move-result p0
    :try_end_4
    .catch Lcom/google/android/gms/internal/ads/zzejl; {:try_start_0 .. :try_end_4} :catch_5

    goto :goto_c

    .line 112
    :catch_5
    sget-object v0, Lcom/google/android/gms/internal/ads/zzegd;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    .line 113
    array-length p0, p0

    .line 115
    :goto_c
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzefl;->zzgr(I)I

    move-result v0

    add-int/2addr v0, p0

    return v0
.end method

.method public static zzi(IZ)I
    .registers 2

    .line 41
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzefl;->zzgp(I)I

    move-result p0

    add-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public static zzi(Lcom/google/android/gms/internal/ads/zzehl;)I
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 159
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzehl;->zzbfe()I

    move-result p0

    return p0
.end method

.method public static zzk(IJ)I
    .registers 3

    .line 30
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzefl;->zzgp(I)I

    move-result p0

    .line 31
    invoke-static {p1, p2}, Lcom/google/android/gms/internal/ads/zzefl;->zzfm(J)I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method

.method public static zzl(IJ)I
    .registers 3

    .line 33
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzefl;->zzgp(I)I

    move-result p0

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/ads/zzefl;->zzfm(J)I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method

.method public static zzl(ILjava/lang/String;)I
    .registers 2

    .line 45
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzefl;->zzgp(I)I

    move-result p0

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzefl;->zzhu(Ljava/lang/String;)I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method

.method public static zzm(IJ)I
    .registers 3

    .line 34
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzefl;->zzgp(I)I

    move-result p0

    .line 35
    invoke-static {p1, p2}, Lcom/google/android/gms/internal/ads/zzefl;->zzfq(J)J

    move-result-wide p1

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/ads/zzefl;->zzfm(J)I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method

.method public static zzn(IJ)I
    .registers 3

    .line 37
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzefl;->zzgp(I)I

    move-result p0

    add-int/lit8 p0, p0, 0x8

    return p0
.end method

.method public static zzo(IJ)I
    .registers 3

    .line 38
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzefl;->zzgp(I)I

    move-result p0

    add-int/lit8 p0, p0, 0x8

    return p0
.end method

.method public static zzw([B)Lcom/google/android/gms/internal/ads/zzefl;
    .registers 4

    .line 1
    array-length v0, p0

    .line 2
    new-instance v1, Lcom/google/android/gms/internal/ads/zzefl$zzb;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2, v0}, Lcom/google/android/gms/internal/ads/zzefl$zzb;-><init>([BII)V

    return-object v1
.end method

.method public static zzx([B)I
    .registers 2

    .line 123
    array-length p0, p0

    .line 124
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzefl;->zzgr(I)I

    move-result v0

    add-int/2addr v0, p0

    return v0
.end method


# virtual methods
.method public abstract writeTag(II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public final zza(IF)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 9
    invoke-static {p2}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzefl;->zzae(II)V

    return-void
.end method

.method public abstract zza(ILcom/google/android/gms/internal/ads/zzeer;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract zza(ILcom/google/android/gms/internal/ads/zzehl;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method abstract zza(ILcom/google/android/gms/internal/ads/zzehl;Lcom/google/android/gms/internal/ads/zzeih;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method final zza(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzejl;)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 143
    sget-object v0, Lcom/google/android/gms/internal/ads/zzefl;->logger:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v2, "com.google.protobuf.CodedOutputStream"

    const-string v3, "inefficientWriteStringNoTag"

    const-string v4, "Converting ill-formed UTF-16. Your Protocol Buffer will not round trip correctly!"

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 144
    sget-object p2, Lcom/google/android/gms/internal/ads/zzegd;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p1, p2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    .line 145
    :try_start_14
    array-length p2, p1

    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/ads/zzefl;->zzgm(I)V

    const/4 p2, 0x0

    .line 146
    array-length v0, p1

    invoke-virtual {p0, p1, p2, v0}, Lcom/google/android/gms/internal/ads/zzeeo;->zzh([BII)V
    :try_end_1d
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_14 .. :try_end_1d} :catch_20
    .catch Lcom/google/android/gms/internal/ads/zzefl$zza; {:try_start_14 .. :try_end_1d} :catch_1e

    return-void

    :catch_1e
    move-exception p1

    .line 150
    throw p1

    :catch_20
    move-exception p1

    .line 149
    new-instance p2, Lcom/google/android/gms/internal/ads/zzefl$zza;

    invoke-direct {p2, p1}, Lcom/google/android/gms/internal/ads/zzefl$zza;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method public abstract zzab(II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract zzac(II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public final zzad(II)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 5
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzefl;->zzgw(I)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzefl;->zzac(II)V

    return-void
.end method

.method public abstract zzae(II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract zzah(Lcom/google/android/gms/internal/ads/zzeer;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public final zzb(D)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 19
    invoke-static {p1, p2}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzefl;->zzfk(J)V

    return-void
.end method

.method public final zzb(ID)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 11
    invoke-static {p2, p3}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide p2

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzefl;->zzj(IJ)V

    return-void
.end method

.method public abstract zzb(ILcom/google/android/gms/internal/ads/zzeer;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract zzbem()I
.end method

.method public final zzben()V
    .registers 3

    .line 140
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzefl;->zzbem()I

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 141
    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Did not write as much data as expected."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final zzbs(Z)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    int-to-byte p1, p1

    .line 21
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzefl;->zzd(B)V

    return-void
.end method

.method public abstract zzd(B)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public final zzf(F)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 17
    invoke-static {p1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzefl;->zzgo(I)V

    return-void
.end method

.method public abstract zzfi(J)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public final zzfj(J)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 15
    invoke-static {p1, p2}, Lcom/google/android/gms/internal/ads/zzefl;->zzfq(J)J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzefl;->zzfi(J)V

    return-void
.end method

.method public abstract zzfk(J)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract zzg(Lcom/google/android/gms/internal/ads/zzehl;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract zzgl(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract zzgm(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public final zzgn(I)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 13
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzefl;->zzgw(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzefl;->zzgm(I)V

    return-void
.end method

.method public abstract zzgo(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract zzh(IJ)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract zzh(IZ)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract zzht(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public final zzi(IJ)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7
    invoke-static {p2, p3}, Lcom/google/android/gms/internal/ads/zzefl;->zzfq(J)J

    move-result-wide p2

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzefl;->zzh(IJ)V

    return-void
.end method

.method public abstract zzj(IJ)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract zzk(ILjava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method abstract zzk([BII)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
