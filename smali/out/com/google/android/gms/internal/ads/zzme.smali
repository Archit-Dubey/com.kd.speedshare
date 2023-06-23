.class public final Lcom/google/android/gms/internal/ads/zzme;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.2.0"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/ads/zzme$zza;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/internal/ads/zzme;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final zzbcz:[Lcom/google/android/gms/internal/ads/zzme$zza;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 26
    new-instance v0, Lcom/google/android/gms/internal/ads/zzmd;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzmd;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzme;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .registers 5

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    new-array v0, v0, [Lcom/google/android/gms/internal/ads/zzme$zza;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzme;->zzbcz:[Lcom/google/android/gms/internal/ads/zzme$zza;

    const/4 v0, 0x0

    .line 7
    :goto_c
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzme;->zzbcz:[Lcom/google/android/gms/internal/ads/zzme$zza;

    array-length v2, v1

    if-ge v0, v2, :cond_22

    .line 8
    const-class v2, Lcom/google/android/gms/internal/ads/zzme$zza;

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/ads/zzme$zza;

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    :cond_22
    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/google/android/gms/internal/ads/zzme$zza;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lcom/google/android/gms/internal/ads/zzme$zza;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzme;->zzbcz:[Lcom/google/android/gms/internal/ads/zzme$zza;

    .line 3
    invoke-interface {p1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 4

    if-ne p0, p1, :cond_4

    const/4 p1, 0x1

    return p1

    :cond_4
    if-eqz p1, :cond_1c

    .line 15
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_11

    goto :goto_1c

    .line 17
    :cond_11
    check-cast p1, Lcom/google/android/gms/internal/ads/zzme;

    .line 18
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzme;->zzbcz:[Lcom/google/android/gms/internal/ads/zzme$zza;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzme;->zzbcz:[Lcom/google/android/gms/internal/ads/zzme$zza;

    invoke-static {v0, p1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_1c
    :goto_1c
    const/4 p1, 0x0

    return p1
.end method

.method public final hashCode()I
    .registers 2

    .line 19
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzme;->zzbcz:[Lcom/google/android/gms/internal/ads/zzme$zza;

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final length()I
    .registers 2

    .line 11
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzme;->zzbcz:[Lcom/google/android/gms/internal/ads/zzme$zza;

    array-length v0, v0

    return v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .registers 7

    .line 21
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzme;->zzbcz:[Lcom/google/android/gms/internal/ads/zzme$zza;

    array-length p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 22
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzme;->zzbcz:[Lcom/google/android/gms/internal/ads/zzme$zza;

    array-length v0, p2

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_b
    if-ge v2, v0, :cond_15

    aget-object v3, p2, v2

    .line 23
    invoke-virtual {p1, v3, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    :cond_15
    return-void
.end method

.method public final zzaz(I)Lcom/google/android/gms/internal/ads/zzme$zza;
    .registers 3

    .line 12
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzme;->zzbcz:[Lcom/google/android/gms/internal/ads/zzme$zza;

    aget-object p1, v0, p1

    return-object p1
.end method
