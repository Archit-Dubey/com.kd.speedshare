.class public final Lcom/google/android/gms/internal/ads/zzsy;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;
.source "com.google.android.gms:play-services-ads@@19.2.0"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/internal/ads/zzsy;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final url:Ljava/lang/String;

.field private final zzbuw:J

.field private final zzbux:Ljava/lang/String;

.field private final zzbuy:Ljava/lang/String;

.field private final zzbuz:Ljava/lang/String;

.field private final zzbva:Landroid/os/Bundle;

.field public final zzbvb:Z

.field public zzbvc:J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 50
    new-instance v0, Lcom/google/android/gms/internal/ads/zztb;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zztb;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzsy;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ZJ)V
    .registers 11

    .line 28
    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzsy;->url:Ljava/lang/String;

    .line 30
    iput-wide p2, p0, Lcom/google/android/gms/internal/ads/zzsy;->zzbuw:J

    const-string p1, ""

    if-eqz p4, :cond_c

    goto :goto_d

    :cond_c
    move-object p4, p1

    .line 31
    :goto_d
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzsy;->zzbux:Ljava/lang/String;

    if-eqz p5, :cond_12

    goto :goto_13

    :cond_12
    move-object p5, p1

    .line 32
    :goto_13
    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzsy;->zzbuy:Ljava/lang/String;

    if-eqz p6, :cond_18

    goto :goto_19

    :cond_18
    move-object p6, p1

    .line 33
    :goto_19
    iput-object p6, p0, Lcom/google/android/gms/internal/ads/zzsy;->zzbuz:Ljava/lang/String;

    if-eqz p7, :cond_1e

    goto :goto_23

    .line 34
    :cond_1e
    new-instance p7, Landroid/os/Bundle;

    invoke-direct {p7}, Landroid/os/Bundle;-><init>()V

    :goto_23
    iput-object p7, p0, Lcom/google/android/gms/internal/ads/zzsy;->zzbva:Landroid/os/Bundle;

    .line 35
    iput-boolean p8, p0, Lcom/google/android/gms/internal/ads/zzsy;->zzbvb:Z

    .line 36
    iput-wide p9, p0, Lcom/google/android/gms/internal/ads/zzsy;->zzbvc:J

    return-void
.end method

.method public static zzbv(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzsy;
    .registers 1

    .line 1
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzsy;->zzd(Landroid/net/Uri;)Lcom/google/android/gms/internal/ads/zzsy;

    move-result-object p0

    return-object p0
.end method

.method public static zzd(Landroid/net/Uri;)Lcom/google/android/gms/internal/ads/zzsy;
    .registers 15

    const/4 v0, 0x0

    :try_start_1
    const-string v1, "gcache"

    .line 2
    invoke-virtual {p0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e

    return-object v0

    .line 4
    :cond_e
    invoke-virtual {p0}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v1

    .line 5
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_34

    .line 6
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p0

    const/16 v1, 0x3e

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Expected 2 path parts for namespace and id, found :"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzaxv;->zzfd(Ljava/lang/String;)V

    return-object v0

    :cond_34
    const/4 v2, 0x0

    .line 8
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Ljava/lang/String;

    const/4 v2, 0x1

    .line 9
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Ljava/lang/String;

    .line 10
    invoke-virtual {p0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v7

    const-string v1, "url"

    .line 11
    invoke-virtual {p0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v1, "1"

    const-string v2, "read_only"

    .line 12
    invoke-virtual {p0, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    const-string v1, "expiration"

    .line 13
    invoke-virtual {p0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_65

    const-wide/16 v1, 0x0

    goto :goto_69

    .line 14
    :cond_65
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    :goto_69
    move-wide v5, v1

    .line 15
    new-instance v10, Landroid/os/Bundle;

    invoke-direct {v10}, Landroid/os/Bundle;-><init>()V

    .line 16
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzq;->zzky()Lcom/google/android/gms/internal/ads/zzayj;

    .line 17
    invoke-virtual {p0}, Landroid/net/Uri;->getQueryParameterNames()Ljava/util/Set;

    move-result-object v1

    .line 18
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_7a
    :goto_7a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "tag."

    .line 19
    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7a

    const/4 v3, 0x4

    .line 20
    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 21
    invoke-virtual {p0, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 22
    invoke-virtual {v10, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7a

    .line 24
    :cond_9b
    new-instance p0, Lcom/google/android/gms/internal/ads/zzsy;

    const-wide/16 v12, 0x0

    move-object v3, p0

    invoke-direct/range {v3 .. v13}, Lcom/google/android/gms/internal/ads/zzsy;-><init>(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ZJ)V
    :try_end_a3
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_a3} :catch_a6
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_a3} :catch_a4

    return-object p0

    :catch_a4
    move-exception p0

    goto :goto_a7

    :catch_a6
    move-exception p0

    :goto_a7
    const-string v1, "Unable to parse Uri into cache offering."

    .line 26
    invoke-static {v1, p0}, Lcom/google/android/gms/internal/ads/zzaxv;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v0
.end method


# virtual methods
.method public final writeToParcel(Landroid/os/Parcel;I)V
    .registers 7

    .line 39
    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->beginObjectHeader(Landroid/os/Parcel;)I

    move-result p2

    .line 40
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzsy;->url:Ljava/lang/String;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-static {p1, v1, v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeString(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 41
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzsy;->zzbuw:J

    const/4 v3, 0x3

    invoke-static {p1, v3, v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeLong(Landroid/os/Parcel;IJ)V

    .line 42
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzsy;->zzbux:Ljava/lang/String;

    const/4 v1, 0x4

    invoke-static {p1, v1, v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeString(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 43
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzsy;->zzbuy:Ljava/lang/String;

    const/4 v1, 0x5

    invoke-static {p1, v1, v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeString(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 44
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzsy;->zzbuz:Ljava/lang/String;

    const/4 v1, 0x6

    invoke-static {p1, v1, v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeString(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 45
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzsy;->zzbva:Landroid/os/Bundle;

    const/4 v1, 0x7

    invoke-static {p1, v1, v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeBundle(Landroid/os/Parcel;ILandroid/os/Bundle;Z)V

    .line 46
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzsy;->zzbvb:Z

    const/16 v1, 0x8

    invoke-static {p1, v1, v0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeBoolean(Landroid/os/Parcel;IZ)V

    .line 47
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzsy;->zzbvc:J

    const/16 v2, 0x9

    invoke-static {p1, v2, v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeLong(Landroid/os/Parcel;IJ)V

    .line 48
    invoke-static {p1, p2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->finishObjectHeader(Landroid/os/Parcel;I)V

    return-void
.end method
