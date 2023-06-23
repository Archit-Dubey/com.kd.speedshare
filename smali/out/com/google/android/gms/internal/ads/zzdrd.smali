.class public final Lcom/google/android/gms/internal/ads/zzdrd;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;
.source "com.google.android.gms:play-services-gass@@19.2.0"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/internal/ads/zzdrd;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final versionCode:I

.field private final zzhhz:Ljava/lang/String;

.field private final zzhia:Ljava/lang/String;

.field private final zzhib:I

.field private final zzhjp:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 19
    new-instance v0, Lcom/google/android/gms/internal/ads/zzdrg;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzdrg;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzdrd;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(IIILjava/lang/String;Ljava/lang/String;)V
    .registers 6

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    .line 2
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzdrd;->versionCode:I

    .line 3
    iput p2, p0, Lcom/google/android/gms/internal/ads/zzdrd;->zzhib:I

    .line 4
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzdrd;->zzhhz:Ljava/lang/String;

    .line 5
    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzdrd;->zzhia:Ljava/lang/String;

    .line 6
    iput p3, p0, Lcom/google/android/gms/internal/ads/zzdrd;->zzhjp:I

    return-void
.end method

.method public constructor <init>(ILcom/google/android/gms/internal/ads/zzgo;Ljava/lang/String;Ljava/lang/String;)V
    .registers 11

    .line 8
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzgo;->zzw()I

    move-result v3

    const/4 v1, 0x1

    move-object v0, p0

    move v2, p1

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzdrd;-><init>(IIILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final writeToParcel(Landroid/os/Parcel;I)V
    .registers 6

    .line 11
    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->beginObjectHeader(Landroid/os/Parcel;)I

    move-result p2

    .line 12
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzdrd;->versionCode:I

    const/4 v1, 0x1

    invoke-static {p1, v1, v0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeInt(Landroid/os/Parcel;II)V

    .line 13
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzdrd;->zzhib:I

    const/4 v1, 0x2

    invoke-static {p1, v1, v0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeInt(Landroid/os/Parcel;II)V

    .line 14
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdrd;->zzhhz:Ljava/lang/String;

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-static {p1, v1, v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeString(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 15
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdrd;->zzhia:Ljava/lang/String;

    const/4 v1, 0x4

    invoke-static {p1, v1, v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeString(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 16
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzdrd;->zzhjp:I

    const/4 v1, 0x5

    invoke-static {p1, v1, v0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeInt(Landroid/os/Parcel;II)V

    .line 17
    invoke-static {p1, p2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->finishObjectHeader(Landroid/os/Parcel;I)V

    return-void
.end method
