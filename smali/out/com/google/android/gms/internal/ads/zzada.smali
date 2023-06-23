.class public final Lcom/google/android/gms/internal/ads/zzada;
.super Lcom/google/android/gms/internal/ads/zzadk;
.source "com.google.android.gms:play-services-ads-lite@@19.2.0"


# static fields
.field private static final zzdbr:I

.field private static final zzdbs:I

.field private static final zzdbt:I

.field private static final zzdbu:I


# instance fields
.field private final backgroundColor:I

.field private final textColor:I

.field private final textSize:I

.field private final zzdbv:Ljava/lang/String;

.field private final zzdbw:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/ads/zzadf;",
            ">;"
        }
    .end annotation
.end field

.field private final zzdbx:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/ads/zzadt;",
            ">;"
        }
    .end annotation
.end field

.field private final zzdby:I

.field private final zzdbz:I

.field private final zzdca:Z


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/16 v0, 0xc

    const/16 v1, 0xae

    const/16 v2, 0xce

    .line 26
    invoke-static {v0, v1, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    sput v0, Lcom/google/android/gms/internal/ads/zzada;->zzdbr:I

    const/16 v0, 0xcc

    .line 27
    invoke-static {v0, v0, v0}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    .line 28
    sput v0, Lcom/google/android/gms/internal/ads/zzada;->zzdbs:I

    sput v0, Lcom/google/android/gms/internal/ads/zzada;->zzdbt:I

    .line 29
    sget v0, Lcom/google/android/gms/internal/ads/zzada;->zzdbr:I

    sput v0, Lcom/google/android/gms/internal/ads/zzada;->zzdbu:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/List;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;IIZ)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/ads/zzadf;",
            ">;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "IIZ)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzadk;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzada;->zzdbw:Ljava/util/List;

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzada;->zzdbx:Ljava/util/List;

    .line 4
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzada;->zzdbv:Ljava/lang/String;

    if-eqz p2, :cond_2f

    const/4 p1, 0x0

    .line 6
    :goto_16
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_2f

    .line 7
    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzadf;

    .line 8
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzada;->zzdbw:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 9
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzada;->zzdbx:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 p1, p1, 0x1

    goto :goto_16

    :cond_2f
    if-eqz p3, :cond_36

    .line 11
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p1

    goto :goto_38

    :cond_36
    sget p1, Lcom/google/android/gms/internal/ads/zzada;->zzdbt:I

    :goto_38
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzada;->backgroundColor:I

    if-eqz p4, :cond_41

    .line 12
    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result p1

    goto :goto_43

    :cond_41
    sget p1, Lcom/google/android/gms/internal/ads/zzada;->zzdbu:I

    :goto_43
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzada;->textColor:I

    if-eqz p5, :cond_4c

    .line 13
    invoke-virtual {p5}, Ljava/lang/Integer;->intValue()I

    move-result p1

    goto :goto_4e

    :cond_4c
    const/16 p1, 0xc

    :goto_4e
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzada;->textSize:I

    .line 14
    iput p6, p0, Lcom/google/android/gms/internal/ads/zzada;->zzdby:I

    .line 15
    iput p7, p0, Lcom/google/android/gms/internal/ads/zzada;->zzdbz:I

    .line 16
    iput-boolean p8, p0, Lcom/google/android/gms/internal/ads/zzada;->zzdca:Z

    return-void
.end method


# virtual methods
.method public final getBackgroundColor()I
    .registers 2

    .line 21
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzada;->backgroundColor:I

    return v0
.end method

.method public final getText()Ljava/lang/String;
    .registers 2

    .line 18
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzada;->zzdbv:Ljava/lang/String;

    return-object v0
.end method

.method public final getTextColor()I
    .registers 2

    .line 22
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzada;->textColor:I

    return v0
.end method

.method public final getTextSize()I
    .registers 2

    .line 23
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzada;->textSize:I

    return v0
.end method

.method public final zzrt()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/ads/zzadt;",
            ">;"
        }
    .end annotation

    .line 19
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzada;->zzdbx:Ljava/util/List;

    return-object v0
.end method

.method public final zzru()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/ads/zzadf;",
            ">;"
        }
    .end annotation

    .line 20
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzada;->zzdbw:Ljava/util/List;

    return-object v0
.end method

.method public final zzrv()I
    .registers 2

    .line 24
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzada;->zzdby:I

    return v0
.end method

.method public final zzrw()I
    .registers 2

    .line 25
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzada;->zzdbz:I

    return v0
.end method
