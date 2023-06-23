.class public final Lcom/google/android/gms/internal/ads/zzbhg;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.2.0"


# instance fields
.field public final heightPixels:I

.field private final type:I

.field public final widthPixels:I


# direct methods
.method private constructor <init>(III)V
    .registers 4

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzbhg;->type:I

    .line 16
    iput p2, p0, Lcom/google/android/gms/internal/ads/zzbhg;->widthPixels:I

    .line 17
    iput p3, p0, Lcom/google/android/gms/internal/ads/zzbhg;->heightPixels:I

    return-void
.end method

.method public static zzacp()Lcom/google/android/gms/internal/ads/zzbhg;
    .registers 2

    .line 10
    new-instance v0, Lcom/google/android/gms/internal/ads/zzbhg;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, v1}, Lcom/google/android/gms/internal/ads/zzbhg;-><init>(III)V

    return-object v0
.end method

.method public static zzacq()Lcom/google/android/gms/internal/ads/zzbhg;
    .registers 3

    .line 12
    new-instance v0, Lcom/google/android/gms/internal/ads/zzbhg;

    const/4 v1, 0x4

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/google/android/gms/internal/ads/zzbhg;-><init>(III)V

    return-object v0
.end method

.method public static zzacr()Lcom/google/android/gms/internal/ads/zzbhg;
    .registers 3

    .line 13
    new-instance v0, Lcom/google/android/gms/internal/ads/zzbhg;

    const/4 v1, 0x5

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/google/android/gms/internal/ads/zzbhg;-><init>(III)V

    return-object v0
.end method

.method public static zzb(Lcom/google/android/gms/internal/ads/zzvh;)Lcom/google/android/gms/internal/ads/zzbhg;
    .registers 3

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzvh;->zzchi:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_c

    .line 2
    new-instance p0, Lcom/google/android/gms/internal/ads/zzbhg;

    const/4 v0, 0x3

    invoke-direct {p0, v0, v1, v1}, Lcom/google/android/gms/internal/ads/zzbhg;-><init>(III)V

    return-object p0

    .line 4
    :cond_c
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzvh;->zzchk:Z

    if-eqz v0, :cond_17

    .line 5
    new-instance p0, Lcom/google/android/gms/internal/ads/zzbhg;

    const/4 v0, 0x2

    invoke-direct {p0, v0, v1, v1}, Lcom/google/android/gms/internal/ads/zzbhg;-><init>(III)V

    return-object p0

    .line 7
    :cond_17
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzvh;->zzbpp:Z

    if-eqz v0, :cond_20

    .line 8
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbhg;->zzacp()Lcom/google/android/gms/internal/ads/zzbhg;

    move-result-object p0

    return-object p0

    .line 9
    :cond_20
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzvh;->widthPixels:I

    iget p0, p0, Lcom/google/android/gms/internal/ads/zzvh;->heightPixels:I

    invoke-static {v0, p0}, Lcom/google/android/gms/internal/ads/zzbhg;->zzq(II)Lcom/google/android/gms/internal/ads/zzbhg;

    move-result-object p0

    return-object p0
.end method

.method public static zzq(II)Lcom/google/android/gms/internal/ads/zzbhg;
    .registers 4

    .line 11
    new-instance v0, Lcom/google/android/gms/internal/ads/zzbhg;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p0, p1}, Lcom/google/android/gms/internal/ads/zzbhg;-><init>(III)V

    return-object v0
.end method


# virtual methods
.method public final isFluid()Z
    .registers 3

    .line 19
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzbhg;->type:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    return v0

    :cond_7
    const/4 v0, 0x0

    return v0
.end method

.method public final zzacs()Z
    .registers 3

    .line 20
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzbhg;->type:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    return v0

    :cond_7
    const/4 v0, 0x0

    return v0
.end method

.method public final zzact()Z
    .registers 2

    .line 21
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzbhg;->type:I

    if-nez v0, :cond_6

    const/4 v0, 0x1

    return v0

    :cond_6
    const/4 v0, 0x0

    return v0
.end method

.method public final zzacu()Z
    .registers 3

    .line 22
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzbhg;->type:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    return v0

    :cond_7
    const/4 v0, 0x0

    return v0
.end method

.method public final zzacv()Z
    .registers 3

    .line 23
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzbhg;->type:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    return v0

    :cond_7
    const/4 v0, 0x0

    return v0
.end method
