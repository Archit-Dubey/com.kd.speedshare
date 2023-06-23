.class public final Lcom/google/android/gms/ads/formats/PublisherAdViewOptions;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;
.source "com.google.android.gms:play-services-ads-lite@@19.2.0"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/ads/formats/PublisherAdViewOptions$Builder;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/ads/formats/PublisherAdViewOptions;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final zzbnr:Z

.field private final zzbns:Lcom/google/android/gms/internal/ads/zzxe;

.field private zzbnt:Lcom/google/android/gms/ads/doubleclick/AppEventListener;

.field private final zzbnu:Landroid/os/IBinder;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 39
    new-instance v0, Lcom/google/android/gms/ads/formats/zzc;

    invoke-direct {v0}, Lcom/google/android/gms/ads/formats/zzc;-><init>()V

    sput-object v0, Lcom/google/android/gms/ads/formats/PublisherAdViewOptions;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Lcom/google/android/gms/ads/formats/PublisherAdViewOptions$Builder;)V
    .registers 5

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    .line 2
    invoke-static {p1}, Lcom/google/android/gms/ads/formats/PublisherAdViewOptions$Builder;->zza(Lcom/google/android/gms/ads/formats/PublisherAdViewOptions$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/ads/formats/PublisherAdViewOptions;->zzbnr:Z

    .line 3
    invoke-static {p1}, Lcom/google/android/gms/ads/formats/PublisherAdViewOptions$Builder;->zzb(Lcom/google/android/gms/ads/formats/PublisherAdViewOptions$Builder;)Lcom/google/android/gms/ads/doubleclick/AppEventListener;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/ads/formats/PublisherAdViewOptions;->zzbnt:Lcom/google/android/gms/ads/doubleclick/AppEventListener;

    const/4 v1, 0x0

    if-eqz v0, :cond_1a

    .line 5
    new-instance v0, Lcom/google/android/gms/internal/ads/zzvl;

    iget-object v2, p0, Lcom/google/android/gms/ads/formats/PublisherAdViewOptions;->zzbnt:Lcom/google/android/gms/ads/doubleclick/AppEventListener;

    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/ads/zzvl;-><init>(Lcom/google/android/gms/ads/doubleclick/AppEventListener;)V

    goto :goto_1b

    :cond_1a
    move-object v0, v1

    :goto_1b
    iput-object v0, p0, Lcom/google/android/gms/ads/formats/PublisherAdViewOptions;->zzbns:Lcom/google/android/gms/internal/ads/zzxe;

    .line 7
    invoke-static {p1}, Lcom/google/android/gms/ads/formats/PublisherAdViewOptions$Builder;->zzc(Lcom/google/android/gms/ads/formats/PublisherAdViewOptions$Builder;)Lcom/google/android/gms/ads/formats/ShouldDelayBannerRenderingListener;

    move-result-object v0

    if-eqz v0, :cond_2c

    .line 8
    new-instance v1, Lcom/google/android/gms/internal/ads/zzzy;

    .line 9
    invoke-static {p1}, Lcom/google/android/gms/ads/formats/PublisherAdViewOptions$Builder;->zzc(Lcom/google/android/gms/ads/formats/PublisherAdViewOptions$Builder;)Lcom/google/android/gms/ads/formats/ShouldDelayBannerRenderingListener;

    move-result-object p1

    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/ads/zzzy;-><init>(Lcom/google/android/gms/ads/formats/ShouldDelayBannerRenderingListener;)V

    .line 10
    :cond_2c
    iput-object v1, p0, Lcom/google/android/gms/ads/formats/PublisherAdViewOptions;->zzbnu:Landroid/os/IBinder;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/ads/formats/PublisherAdViewOptions$Builder;Lcom/google/android/gms/ads/formats/zzb;)V
    .registers 3

    .line 38
    invoke-direct {p0, p1}, Lcom/google/android/gms/ads/formats/PublisherAdViewOptions;-><init>(Lcom/google/android/gms/ads/formats/PublisherAdViewOptions$Builder;)V

    return-void
.end method

.method constructor <init>(ZLandroid/os/IBinder;Landroid/os/IBinder;)V
    .registers 4

    .line 12
    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    .line 13
    iput-boolean p1, p0, Lcom/google/android/gms/ads/formats/PublisherAdViewOptions;->zzbnr:Z

    if-eqz p2, :cond_c

    .line 15
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzxd;->zze(Landroid/os/IBinder;)Lcom/google/android/gms/internal/ads/zzxe;

    move-result-object p1

    goto :goto_d

    :cond_c
    const/4 p1, 0x0

    :goto_d
    iput-object p1, p0, Lcom/google/android/gms/ads/formats/PublisherAdViewOptions;->zzbns:Lcom/google/android/gms/internal/ads/zzxe;

    .line 16
    iput-object p3, p0, Lcom/google/android/gms/ads/formats/PublisherAdViewOptions;->zzbnu:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public final getAppEventListener()Lcom/google/android/gms/ads/doubleclick/AppEventListener;
    .registers 2

    .line 18
    iget-object v0, p0, Lcom/google/android/gms/ads/formats/PublisherAdViewOptions;->zzbnt:Lcom/google/android/gms/ads/doubleclick/AppEventListener;

    return-object v0
.end method

.method public final getManualImpressionsEnabled()Z
    .registers 2

    .line 19
    iget-boolean v0, p0, Lcom/google/android/gms/ads/formats/PublisherAdViewOptions;->zzbnr:Z

    return v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .registers 6

    .line 23
    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->beginObjectHeader(Landroid/os/Parcel;)I

    move-result p2

    .line 25
    invoke-virtual {p0}, Lcom/google/android/gms/ads/formats/PublisherAdViewOptions;->getManualImpressionsEnabled()Z

    move-result v0

    const/4 v1, 0x1

    .line 26
    invoke-static {p1, v1, v0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeBoolean(Landroid/os/Parcel;IZ)V

    .line 29
    iget-object v0, p0, Lcom/google/android/gms/ads/formats/PublisherAdViewOptions;->zzbns:Lcom/google/android/gms/internal/ads/zzxe;

    if-nez v0, :cond_12

    const/4 v0, 0x0

    goto :goto_16

    :cond_12
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzxe;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    :goto_16
    const/4 v1, 0x2

    const/4 v2, 0x0

    .line 31
    invoke-static {p1, v1, v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeIBinder(Landroid/os/Parcel;ILandroid/os/IBinder;Z)V

    const/4 v0, 0x3

    .line 33
    iget-object v1, p0, Lcom/google/android/gms/ads/formats/PublisherAdViewOptions;->zzbnu:Landroid/os/IBinder;

    .line 35
    invoke-static {p1, v0, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeIBinder(Landroid/os/Parcel;ILandroid/os/IBinder;Z)V

    .line 36
    invoke-static {p1, p2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->finishObjectHeader(Landroid/os/Parcel;I)V

    return-void
.end method

.method public final zzju()Lcom/google/android/gms/internal/ads/zzxe;
    .registers 2

    .line 20
    iget-object v0, p0, Lcom/google/android/gms/ads/formats/PublisherAdViewOptions;->zzbns:Lcom/google/android/gms/internal/ads/zzxe;

    return-object v0
.end method

.method public final zzjv()Lcom/google/android/gms/internal/ads/zzafn;
    .registers 2

    .line 21
    iget-object v0, p0, Lcom/google/android/gms/ads/formats/PublisherAdViewOptions;->zzbnu:Landroid/os/IBinder;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzafm;->zzy(Landroid/os/IBinder;)Lcom/google/android/gms/internal/ads/zzafn;

    move-result-object v0

    return-object v0
.end method
