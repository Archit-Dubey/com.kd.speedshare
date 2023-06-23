.class public final Lcom/google/android/gms/internal/ads/zzazi;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;
.source "com.google.android.gms:play-services-ads@@19.2.0"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/internal/ads/zzazi;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final errorCode:I

.field public final zzacl:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 16
    new-instance v0, Lcom/google/android/gms/internal/ads/zzazk;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzazk;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzazi;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;I)V
    .registers 3

    .line 6
    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    if-nez p1, :cond_7

    const-string p1, ""

    .line 7
    :cond_7
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzazi;->zzacl:Ljava/lang/String;

    .line 8
    iput p2, p0, Lcom/google/android/gms/internal/ads/zzazi;->errorCode:I

    return-void
.end method

.method public static zzc(Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzazi;
    .registers 3

    .line 1
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzcmi;->zze(Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzuy;

    move-result-object v0

    .line 2
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzdsi;->zzar(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 3
    iget-object p0, v0, Lcom/google/android/gms/internal/ads/zzuy;->zzcgo:Ljava/lang/String;

    goto :goto_15

    .line 4
    :cond_11
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    .line 5
    :goto_15
    new-instance v1, Lcom/google/android/gms/internal/ads/zzazi;

    iget v0, v0, Lcom/google/android/gms/internal/ads/zzuy;->errorCode:I

    invoke-direct {v1, p0, v0}, Lcom/google/android/gms/internal/ads/zzazi;-><init>(Ljava/lang/String;I)V

    return-object v1
.end method


# virtual methods
.method public final writeToParcel(Landroid/os/Parcel;I)V
    .registers 6

    .line 11
    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->beginObjectHeader(Landroid/os/Parcel;)I

    move-result p2

    .line 12
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzazi;->zzacl:Ljava/lang/String;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {p1, v1, v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeString(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 13
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzazi;->errorCode:I

    const/4 v1, 0x2

    invoke-static {p1, v1, v0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeInt(Landroid/os/Parcel;II)V

    .line 14
    invoke-static {p1, p2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->finishObjectHeader(Landroid/os/Parcel;I)V

    return-void
.end method
