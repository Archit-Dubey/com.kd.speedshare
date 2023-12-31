.class public final Lcom/google/android/gms/internal/ads/zzvh;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;
.source "com.google.android.gms:play-services-ads-lite@@19.2.0"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/internal/ads/zzvh;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final height:I

.field public final heightPixels:I

.field public final width:I

.field public final widthPixels:I

.field public final zzacv:Ljava/lang/String;

.field public final zzbpp:Z

.field public final zzchi:Z

.field public final zzchj:[Lcom/google/android/gms/internal/ads/zzvh;

.field public final zzchk:Z

.field public zzchl:Z

.field public zzchm:Z

.field private zzchn:Z

.field public zzcho:Z

.field public zzchp:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 105
    new-instance v0, Lcom/google/android/gms/internal/ads/zzvk;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzvk;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzvh;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 16

    const-string v1, "interstitial_mb"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object v0, p0

    .line 12
    invoke-direct/range {v0 .. v14}, Lcom/google/android/gms/internal/ads/zzvh;-><init>(Ljava/lang/String;IIZII[Lcom/google/android/gms/internal/ads/zzvh;ZZZZZZZ)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/ads/AdSize;)V
    .registers 5

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/google/android/gms/ads/AdSize;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    .line 15
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzvh;-><init>(Landroid/content/Context;[Lcom/google/android/gms/ads/AdSize;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;[Lcom/google/android/gms/ads/AdSize;)V
    .registers 15

    .line 17
    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    const/4 v0, 0x0

    .line 18
    aget-object v1, p2, v0

    .line 19
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzvh;->zzchi:Z

    .line 20
    invoke-virtual {v1}, Lcom/google/android/gms/ads/AdSize;->isFluid()Z

    move-result v2

    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzvh;->zzchk:Z

    .line 21
    invoke-static {v1}, Lcom/google/android/gms/ads/zzb;->zza(Lcom/google/android/gms/ads/AdSize;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzvh;->zzcho:Z

    .line 22
    invoke-static {v1}, Lcom/google/android/gms/ads/zzb;->zzb(Lcom/google/android/gms/ads/AdSize;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzvh;->zzchp:Z

    .line 23
    iget-boolean v3, p0, Lcom/google/android/gms/internal/ads/zzvh;->zzchk:Z

    if-eqz v3, :cond_2f

    .line 24
    sget-object v2, Lcom/google/android/gms/ads/AdSize;->BANNER:Lcom/google/android/gms/ads/AdSize;

    invoke-virtual {v2}, Lcom/google/android/gms/ads/AdSize;->getWidth()I

    move-result v2

    iput v2, p0, Lcom/google/android/gms/internal/ads/zzvh;->width:I

    .line 25
    sget-object v2, Lcom/google/android/gms/ads/AdSize;->BANNER:Lcom/google/android/gms/ads/AdSize;

    invoke-virtual {v2}, Lcom/google/android/gms/ads/AdSize;->getHeight()I

    move-result v2

    iput v2, p0, Lcom/google/android/gms/internal/ads/zzvh;->height:I

    goto :goto_4a

    :cond_2f
    if-eqz v2, :cond_3e

    .line 27
    invoke-virtual {v1}, Lcom/google/android/gms/ads/AdSize;->getWidth()I

    move-result v2

    iput v2, p0, Lcom/google/android/gms/internal/ads/zzvh;->width:I

    .line 28
    invoke-static {v1}, Lcom/google/android/gms/ads/zzb;->zzc(Lcom/google/android/gms/ads/AdSize;)I

    move-result v2

    iput v2, p0, Lcom/google/android/gms/internal/ads/zzvh;->height:I

    goto :goto_4a

    .line 29
    :cond_3e
    invoke-virtual {v1}, Lcom/google/android/gms/ads/AdSize;->getWidth()I

    move-result v2

    iput v2, p0, Lcom/google/android/gms/internal/ads/zzvh;->width:I

    .line 30
    invoke-virtual {v1}, Lcom/google/android/gms/ads/AdSize;->getHeight()I

    move-result v2

    iput v2, p0, Lcom/google/android/gms/internal/ads/zzvh;->height:I

    .line 31
    :goto_4a
    iget v2, p0, Lcom/google/android/gms/internal/ads/zzvh;->width:I

    const/4 v3, -0x1

    const/4 v4, 0x1

    if-ne v2, v3, :cond_52

    const/4 v2, 0x1

    goto :goto_53

    :cond_52
    const/4 v2, 0x0

    .line 32
    :goto_53
    iget v3, p0, Lcom/google/android/gms/internal/ads/zzvh;->height:I

    const/4 v5, -0x2

    if-ne v3, v5, :cond_5a

    const/4 v3, 0x1

    goto :goto_5b

    :cond_5a
    const/4 v3, 0x0

    .line 33
    :goto_5b
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    if-eqz v2, :cond_a4

    .line 35
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwg;->zzps()Lcom/google/android/gms/internal/ads/zzbaq;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzbaq;->zzbq(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_84

    .line 36
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwg;->zzps()Lcom/google/android/gms/internal/ads/zzbaq;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzbaq;->zzbr(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_84

    .line 38
    iget v6, v5, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 39
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwg;->zzps()Lcom/google/android/gms/internal/ads/zzbaq;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzbaq;->zzbs(Landroid/content/Context;)I

    move-result v7

    sub-int/2addr v6, v7

    iput v6, p0, Lcom/google/android/gms/internal/ads/zzvh;->widthPixels:I

    goto :goto_88

    .line 41
    :cond_84
    iget v6, v5, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 42
    iput v6, p0, Lcom/google/android/gms/internal/ads/zzvh;->widthPixels:I

    .line 43
    :goto_88
    iget v6, p0, Lcom/google/android/gms/internal/ads/zzvh;->widthPixels:I

    int-to-float v6, v6

    iget v7, v5, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v6, v7

    float-to-double v6, v6

    double-to-int v8, v6

    int-to-double v9, v8

    .line 45
    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v9, v10}, Ljava/lang/Double;->isNaN(D)Z

    sub-double/2addr v6, v9

    const-wide v9, 0x3f847ae147ae147bL    # 0.01

    cmpl-double v11, v6, v9

    if-ltz v11, :cond_b1

    add-int/lit8 v8, v8, 0x1

    goto :goto_b1

    .line 48
    :cond_a4
    iget v8, p0, Lcom/google/android/gms/internal/ads/zzvh;->width:I

    .line 49
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwg;->zzps()Lcom/google/android/gms/internal/ads/zzbaq;

    iget v6, p0, Lcom/google/android/gms/internal/ads/zzvh;->width:I

    invoke-static {v5, v6}, Lcom/google/android/gms/internal/ads/zzbaq;->zza(Landroid/util/DisplayMetrics;I)I

    move-result v6

    iput v6, p0, Lcom/google/android/gms/internal/ads/zzvh;->widthPixels:I

    :cond_b1
    :goto_b1
    if-eqz v3, :cond_b8

    .line 51
    invoke-static {v5}, Lcom/google/android/gms/internal/ads/zzvh;->zzd(Landroid/util/DisplayMetrics;)I

    move-result v6

    goto :goto_ba

    .line 52
    :cond_b8
    iget v6, p0, Lcom/google/android/gms/internal/ads/zzvh;->height:I

    .line 53
    :goto_ba
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwg;->zzps()Lcom/google/android/gms/internal/ads/zzbaq;

    invoke-static {v5, v6}, Lcom/google/android/gms/internal/ads/zzbaq;->zza(Landroid/util/DisplayMetrics;I)I

    move-result v5

    iput v5, p0, Lcom/google/android/gms/internal/ads/zzvh;->heightPixels:I

    const-string v5, "_as"

    const-string v7, "x"

    const/16 v9, 0x1a

    if-nez v2, :cond_fe

    if-eqz v3, :cond_ce

    goto :goto_fe

    .line 56
    :cond_ce
    iget-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzvh;->zzchp:Z

    if-eqz v2, :cond_ee

    .line 57
    iget v1, p0, Lcom/google/android/gms/internal/ads/zzvh;->width:I

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzvh;->height:I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v9}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzvh;->zzacv:Ljava/lang/String;

    goto :goto_115

    .line 58
    :cond_ee
    iget-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzvh;->zzchk:Z

    if-eqz v2, :cond_f7

    const-string v1, "320x50_mb"

    .line 59
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzvh;->zzacv:Ljava/lang/String;

    goto :goto_115

    .line 60
    :cond_f7
    invoke-virtual {v1}, Lcom/google/android/gms/ads/AdSize;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzvh;->zzacv:Ljava/lang/String;

    goto :goto_115

    .line 55
    :cond_fe
    :goto_fe
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v9}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzvh;->zzacv:Ljava/lang/String;

    .line 61
    :goto_115
    array-length v1, p2

    if-le v1, v4, :cond_12f

    .line 62
    array-length v1, p2

    new-array v1, v1, [Lcom/google/android/gms/internal/ads/zzvh;

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzvh;->zzchj:[Lcom/google/android/gms/internal/ads/zzvh;

    const/4 v1, 0x0

    .line 63
    :goto_11e
    array-length v2, p2

    if-ge v1, v2, :cond_132

    .line 64
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzvh;->zzchj:[Lcom/google/android/gms/internal/ads/zzvh;

    new-instance v3, Lcom/google/android/gms/internal/ads/zzvh;

    aget-object v4, p2, v1

    invoke-direct {v3, p1, v4}, Lcom/google/android/gms/internal/ads/zzvh;-><init>(Landroid/content/Context;Lcom/google/android/gms/ads/AdSize;)V

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_11e

    :cond_12f
    const/4 p1, 0x0

    .line 66
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzvh;->zzchj:[Lcom/google/android/gms/internal/ads/zzvh;

    .line 67
    :cond_132
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzvh;->zzbpp:Z

    .line 68
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzvh;->zzchl:Z

    return-void
.end method

.method constructor <init>(Ljava/lang/String;IIZII[Lcom/google/android/gms/internal/ads/zzvh;ZZZZZZZ)V
    .registers 15

    .line 70
    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    .line 71
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzvh;->zzacv:Ljava/lang/String;

    .line 72
    iput p2, p0, Lcom/google/android/gms/internal/ads/zzvh;->height:I

    .line 73
    iput p3, p0, Lcom/google/android/gms/internal/ads/zzvh;->heightPixels:I

    .line 74
    iput-boolean p4, p0, Lcom/google/android/gms/internal/ads/zzvh;->zzchi:Z

    .line 75
    iput p5, p0, Lcom/google/android/gms/internal/ads/zzvh;->width:I

    .line 76
    iput p6, p0, Lcom/google/android/gms/internal/ads/zzvh;->widthPixels:I

    .line 77
    iput-object p7, p0, Lcom/google/android/gms/internal/ads/zzvh;->zzchj:[Lcom/google/android/gms/internal/ads/zzvh;

    .line 78
    iput-boolean p8, p0, Lcom/google/android/gms/internal/ads/zzvh;->zzbpp:Z

    .line 79
    iput-boolean p9, p0, Lcom/google/android/gms/internal/ads/zzvh;->zzchk:Z

    .line 80
    iput-boolean p10, p0, Lcom/google/android/gms/internal/ads/zzvh;->zzchl:Z

    .line 81
    iput-boolean p11, p0, Lcom/google/android/gms/internal/ads/zzvh;->zzchm:Z

    .line 82
    iput-boolean p12, p0, Lcom/google/android/gms/internal/ads/zzvh;->zzchn:Z

    .line 83
    iput-boolean p13, p0, Lcom/google/android/gms/internal/ads/zzvh;->zzcho:Z

    .line 84
    iput-boolean p14, p0, Lcom/google/android/gms/internal/ads/zzvh;->zzchp:Z

    return-void
.end method

.method public static zzb(Landroid/util/DisplayMetrics;)I
    .registers 1

    .line 1
    iget p0, p0, Landroid/util/DisplayMetrics;->widthPixels:I

    return p0
.end method

.method public static zzc(Landroid/util/DisplayMetrics;)I
    .registers 2

    .line 2
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzvh;->zzd(Landroid/util/DisplayMetrics;)I

    move-result v0

    int-to-float v0, v0

    iget p0, p0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, p0

    float-to-int p0, v0

    return p0
.end method

.method private static zzd(Landroid/util/DisplayMetrics;)I
    .registers 2

    .line 3
    iget v0, p0, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v0, v0

    iget p0, p0, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v0, p0

    float-to-int p0, v0

    const/16 v0, 0x190

    if-gt p0, v0, :cond_e

    const/16 p0, 0x20

    return p0

    :cond_e
    const/16 v0, 0x2d0

    if-gt p0, v0, :cond_15

    const/16 p0, 0x32

    return p0

    :cond_15
    const/16 p0, 0x5a

    return p0
.end method

.method public static zzph()Lcom/google/android/gms/internal/ads/zzvh;
    .registers 16

    .line 9
    new-instance v15, Lcom/google/android/gms/internal/ads/zzvh;

    const-string v1, "320x50_mb"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object v0, v15

    invoke-direct/range {v0 .. v14}, Lcom/google/android/gms/internal/ads/zzvh;-><init>(Ljava/lang/String;IIZII[Lcom/google/android/gms/internal/ads/zzvh;ZZZZZZZ)V

    return-object v15
.end method

.method public static zzpi()Lcom/google/android/gms/internal/ads/zzvh;
    .registers 16

    .line 10
    new-instance v15, Lcom/google/android/gms/internal/ads/zzvh;

    const-string v1, "reward_mb"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object v0, v15

    invoke-direct/range {v0 .. v14}, Lcom/google/android/gms/internal/ads/zzvh;-><init>(Ljava/lang/String;IIZII[Lcom/google/android/gms/internal/ads/zzvh;ZZZZZZZ)V

    return-object v15
.end method

.method public static zzpj()Lcom/google/android/gms/internal/ads/zzvh;
    .registers 16

    .line 11
    new-instance v15, Lcom/google/android/gms/internal/ads/zzvh;

    const-string v1, "interstitial_mb"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x1

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object v0, v15

    invoke-direct/range {v0 .. v14}, Lcom/google/android/gms/internal/ads/zzvh;-><init>(Ljava/lang/String;IIZII[Lcom/google/android/gms/internal/ads/zzvh;ZZZZZZZ)V

    return-object v15
.end method

.method public static zzpk()Lcom/google/android/gms/internal/ads/zzvh;
    .registers 16

    .line 14
    new-instance v15, Lcom/google/android/gms/internal/ads/zzvh;

    const-string v1, "invalid"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x1

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object v0, v15

    invoke-direct/range {v0 .. v14}, Lcom/google/android/gms/internal/ads/zzvh;-><init>(Ljava/lang/String;IIZII[Lcom/google/android/gms/internal/ads/zzvh;ZZZZZZZ)V

    return-object v15
.end method


# virtual methods
.method public final writeToParcel(Landroid/os/Parcel;I)V
    .registers 7

    .line 88
    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->beginObjectHeader(Landroid/os/Parcel;)I

    move-result v0

    .line 89
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzvh;->zzacv:Ljava/lang/String;

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {p1, v2, v1, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeString(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 90
    iget v1, p0, Lcom/google/android/gms/internal/ads/zzvh;->height:I

    const/4 v2, 0x3

    invoke-static {p1, v2, v1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeInt(Landroid/os/Parcel;II)V

    .line 91
    iget v1, p0, Lcom/google/android/gms/internal/ads/zzvh;->heightPixels:I

    const/4 v2, 0x4

    invoke-static {p1, v2, v1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeInt(Landroid/os/Parcel;II)V

    .line 92
    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzvh;->zzchi:Z

    const/4 v2, 0x5

    invoke-static {p1, v2, v1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeBoolean(Landroid/os/Parcel;IZ)V

    .line 93
    iget v1, p0, Lcom/google/android/gms/internal/ads/zzvh;->width:I

    const/4 v2, 0x6

    invoke-static {p1, v2, v1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeInt(Landroid/os/Parcel;II)V

    .line 94
    iget v1, p0, Lcom/google/android/gms/internal/ads/zzvh;->widthPixels:I

    const/4 v2, 0x7

    invoke-static {p1, v2, v1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeInt(Landroid/os/Parcel;II)V

    .line 95
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzvh;->zzchj:[Lcom/google/android/gms/internal/ads/zzvh;

    const/16 v2, 0x8

    invoke-static {p1, v2, v1, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeTypedArray(Landroid/os/Parcel;I[Landroid/os/Parcelable;IZ)V

    .line 96
    iget-boolean p2, p0, Lcom/google/android/gms/internal/ads/zzvh;->zzbpp:Z

    const/16 v1, 0x9

    invoke-static {p1, v1, p2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeBoolean(Landroid/os/Parcel;IZ)V

    .line 97
    iget-boolean p2, p0, Lcom/google/android/gms/internal/ads/zzvh;->zzchk:Z

    const/16 v1, 0xa

    invoke-static {p1, v1, p2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeBoolean(Landroid/os/Parcel;IZ)V

    .line 98
    iget-boolean p2, p0, Lcom/google/android/gms/internal/ads/zzvh;->zzchl:Z

    const/16 v1, 0xb

    invoke-static {p1, v1, p2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeBoolean(Landroid/os/Parcel;IZ)V

    .line 99
    iget-boolean p2, p0, Lcom/google/android/gms/internal/ads/zzvh;->zzchm:Z

    const/16 v1, 0xc

    invoke-static {p1, v1, p2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeBoolean(Landroid/os/Parcel;IZ)V

    .line 100
    iget-boolean p2, p0, Lcom/google/android/gms/internal/ads/zzvh;->zzchn:Z

    const/16 v1, 0xd

    invoke-static {p1, v1, p2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeBoolean(Landroid/os/Parcel;IZ)V

    .line 101
    iget-boolean p2, p0, Lcom/google/android/gms/internal/ads/zzvh;->zzcho:Z

    const/16 v1, 0xe

    invoke-static {p1, v1, p2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeBoolean(Landroid/os/Parcel;IZ)V

    .line 102
    iget-boolean p2, p0, Lcom/google/android/gms/internal/ads/zzvh;->zzchp:Z

    const/16 v1, 0xf

    invoke-static {p1, v1, p2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeBoolean(Landroid/os/Parcel;IZ)V

    .line 103
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->finishObjectHeader(Landroid/os/Parcel;I)V

    return-void
.end method

.method public final zzpl()Lcom/google/android/gms/ads/AdSize;
    .registers 4

    .line 86
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzvh;->width:I

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzvh;->height:I

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzvh;->zzacv:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/ads/zzb;->zza(IILjava/lang/String;)Lcom/google/android/gms/ads/AdSize;

    move-result-object v0

    return-object v0
.end method
