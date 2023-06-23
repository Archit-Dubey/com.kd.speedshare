.class public final Lcom/google/android/gms/internal/ads/zzdqv;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;
.source "com.google.android.gms:play-services-gass@@19.2.0"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/internal/ads/zzdqv;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final versionCode:I

.field private zzhjd:Lcom/google/android/gms/internal/ads/zzcf$zza;

.field private zzhje:[B


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 41
    new-instance v0, Lcom/google/android/gms/internal/ads/zzdqy;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzdqy;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzdqv;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(I[B)V
    .registers 3

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    .line 2
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzdqv;->versionCode:I

    const/4 p1, 0x0

    .line 3
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdqv;->zzhjd:Lcom/google/android/gms/internal/ads/zzcf$zza;

    .line 4
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdqv;->zzhje:[B

    .line 5
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzdqv;->zzavo()V

    return-void
.end method

.method private final zzavo()V
    .registers 3

    .line 32
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdqv;->zzhjd:Lcom/google/android/gms/internal/ads/zzcf$zza;

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdqv;->zzhje:[B

    if-eqz v0, :cond_9

    return-void

    .line 34
    :cond_9
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdqv;->zzhjd:Lcom/google/android/gms/internal/ads/zzcf$zza;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdqv;->zzhje:[B

    if-nez v0, :cond_12

    return-void

    .line 36
    :cond_12
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdqv;->zzhjd:Lcom/google/android/gms/internal/ads/zzcf$zza;

    if-eqz v0, :cond_23

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdqv;->zzhje:[B

    if-nez v0, :cond_1b

    goto :goto_23

    .line 37
    :cond_1b
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Invalid internal representation - full"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 38
    :cond_23
    :goto_23
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdqv;->zzhjd:Lcom/google/android/gms/internal/ads/zzcf$zza;

    if-nez v0, :cond_33

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdqv;->zzhje:[B

    if-nez v0, :cond_33

    .line 39
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Invalid internal representation - empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 40
    :cond_33
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Impossible"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final writeToParcel(Landroid/os/Parcel;I)V
    .registers 6

    .line 21
    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->beginObjectHeader(Landroid/os/Parcel;)I

    move-result p2

    .line 22
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzdqv;->versionCode:I

    const/4 v1, 0x1

    invoke-static {p1, v1, v0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeInt(Landroid/os/Parcel;II)V

    .line 25
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdqv;->zzhje:[B

    if-eqz v0, :cond_f

    goto :goto_15

    .line 27
    :cond_f
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdqv;->zzhjd:Lcom/google/android/gms/internal/ads/zzcf$zza;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzeeh;->toByteArray()[B

    move-result-object v0

    :goto_15
    const/4 v1, 0x0

    const/4 v2, 0x2

    .line 29
    invoke-static {p1, v2, v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeByteArray(Landroid/os/Parcel;I[BZ)V

    .line 30
    invoke-static {p1, p2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->finishObjectHeader(Landroid/os/Parcel;I)V

    return-void
.end method

.method public final zzavn()Lcom/google/android/gms/internal/ads/zzcf$zza;
    .registers 3

    .line 9
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdqv;->zzhjd:Lcom/google/android/gms/internal/ads/zzcf$zza;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    if-nez v0, :cond_20

    .line 11
    :try_start_9
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdqv;->zzhje:[B

    .line 12
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzefo;->zzber()Lcom/google/android/gms/internal/ads/zzefo;

    move-result-object v1

    .line 13
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzcf$zza;->zza([BLcom/google/android/gms/internal/ads/zzefo;)Lcom/google/android/gms/internal/ads/zzcf$zza;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzdqv;->zzhjd:Lcom/google/android/gms/internal/ads/zzcf$zza;

    const/4 v0, 0x0

    .line 14
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzdqv;->zzhje:[B
    :try_end_18
    .catch Lcom/google/android/gms/internal/ads/zzegl; {:try_start_9 .. :try_end_18} :catch_19

    goto :goto_20

    :catch_19
    move-exception v0

    .line 17
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 18
    :cond_20
    :goto_20
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzdqv;->zzavo()V

    .line 19
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdqv;->zzhjd:Lcom/google/android/gms/internal/ads/zzcf$zza;

    return-object v0
.end method
