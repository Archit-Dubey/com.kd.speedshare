.class public final Lcom/google/android/gms/internal/ads/zzahq;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;
.source "com.google.android.gms:play-services-ads@@19.2.0"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/internal/ads/zzahq;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final data:[B

.field public final statusCode:I

.field public final zzan:Z

.field public final zzao:J

.field public final zzcgo:Ljava/lang/String;

.field public final zzdel:[Ljava/lang/String;

.field public final zzdem:[Ljava/lang/String;

.field public final zzden:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 23
    new-instance v0, Lcom/google/android/gms/internal/ads/zzaht;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzaht;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzahq;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(ZLjava/lang/String;I[B[Ljava/lang/String;[Ljava/lang/String;ZJ)V
    .registers 10

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    .line 2
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzahq;->zzden:Z

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzahq;->zzcgo:Ljava/lang/String;

    .line 4
    iput p3, p0, Lcom/google/android/gms/internal/ads/zzahq;->statusCode:I

    .line 5
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzahq;->data:[B

    .line 6
    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzahq;->zzdel:[Ljava/lang/String;

    .line 7
    iput-object p6, p0, Lcom/google/android/gms/internal/ads/zzahq;->zzdem:[Ljava/lang/String;

    .line 8
    iput-boolean p7, p0, Lcom/google/android/gms/internal/ads/zzahq;->zzan:Z

    .line 9
    iput-wide p8, p0, Lcom/google/android/gms/internal/ads/zzahq;->zzao:J

    return-void
.end method


# virtual methods
.method public final writeToParcel(Landroid/os/Parcel;I)V
    .registers 6

    .line 12
    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->beginObjectHeader(Landroid/os/Parcel;)I

    move-result p2

    .line 13
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzahq;->zzden:Z

    const/4 v1, 0x1

    invoke-static {p1, v1, v0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeBoolean(Landroid/os/Parcel;IZ)V

    .line 14
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzahq;->zzcgo:Ljava/lang/String;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-static {p1, v1, v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeString(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 15
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzahq;->statusCode:I

    const/4 v1, 0x3

    invoke-static {p1, v1, v0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeInt(Landroid/os/Parcel;II)V

    .line 16
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzahq;->data:[B

    const/4 v1, 0x4

    invoke-static {p1, v1, v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeByteArray(Landroid/os/Parcel;I[BZ)V

    .line 17
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzahq;->zzdel:[Ljava/lang/String;

    const/4 v1, 0x5

    invoke-static {p1, v1, v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeStringArray(Landroid/os/Parcel;I[Ljava/lang/String;Z)V

    .line 18
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzahq;->zzdem:[Ljava/lang/String;

    const/4 v1, 0x6

    invoke-static {p1, v1, v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeStringArray(Landroid/os/Parcel;I[Ljava/lang/String;Z)V

    .line 19
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzahq;->zzan:Z

    const/4 v1, 0x7

    invoke-static {p1, v1, v0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeBoolean(Landroid/os/Parcel;IZ)V

    .line 20
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzahq;->zzao:J

    const/16 v2, 0x8

    invoke-static {p1, v2, v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeLong(Landroid/os/Parcel;IJ)V

    .line 21
    invoke-static {p1, p2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->finishObjectHeader(Landroid/os/Parcel;I)V

    return-void
.end method
