.class final Lcom/google/android/gms/internal/ads/zzeie;
.super Lcom/google/android/gms/internal/ads/zzeer;
.source "com.google.android.gms:play-services-ads-lite@@19.2.0"


# static fields
.field static final zzihs:[I


# instance fields
.field private final zziht:I

.field private final zzihu:Lcom/google/android/gms/internal/ads/zzeer;

.field private final zzihv:Lcom/google/android/gms/internal/ads/zzeer;

.field private final zzihw:I

.field private final zzihx:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/16 v0, 0x2f

    new-array v0, v0, [I

    .line 142
    fill-array-data v0, :array_a

    sput-object v0, Lcom/google/android/gms/internal/ads/zzeie;->zzihs:[I

    return-void

    :array_a
    .array-data 4
        0x1
        0x1
        0x2
        0x3
        0x5
        0x8
        0xd
        0x15
        0x22
        0x37
        0x59
        0x90
        0xe9
        0x179
        0x262
        0x3db
        0x63d
        0xa18
        0x1055
        0x1a6d
        0x2ac2
        0x452f
        0x6ff1
        0xb520
        0x12511
        0x1da31
        0x2ff42
        0x4d973
        0x7d8b5
        0xcb228
        0x148add
        0x213d05
        0x35c7e2
        0x5704e7
        0x8cccc9
        0xe3d1b0
        0x1709e79
        0x2547029
        0x3c50ea2
        0x6197ecb
        0x9de8d6d
        0xff80c38
        0x19d699a5
        0x29cea5dd
        0x43a53f82
        0x6d73e55f
        0x7fffffff
    .end array-data
.end method

.method private constructor <init>(Lcom/google/android/gms/internal/ads/zzeer;Lcom/google/android/gms/internal/ads/zzeer;)V
    .registers 5

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzeer;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzeie;->zzihu:Lcom/google/android/gms/internal/ads/zzeer;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzeie;->zzihv:Lcom/google/android/gms/internal/ads/zzeer;

    .line 4
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzeer;->size()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzeie;->zzihw:I

    .line 5
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzeer;->size()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzeie;->zziht:I

    .line 6
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzeer;->zzbdg()I

    move-result p1

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzeer;->zzbdg()I

    move-result p2

    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzeie;->zzihx:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzeer;Lcom/google/android/gms/internal/ads/zzeer;Lcom/google/android/gms/internal/ads/zzeid;)V
    .registers 4

    .line 139
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzeie;-><init>(Lcom/google/android/gms/internal/ads/zzeer;Lcom/google/android/gms/internal/ads/zzeer;)V

    return-void
.end method

.method static zza(Lcom/google/android/gms/internal/ads/zzeer;Lcom/google/android/gms/internal/ads/zzeer;)Lcom/google/android/gms/internal/ads/zzeer;
    .registers 7

    .line 8
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzeer;->size()I

    move-result v0

    if-nez v0, :cond_7

    return-object p0

    .line 10
    :cond_7
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzeer;->size()I

    move-result v0

    if-nez v0, :cond_e

    return-object p1

    .line 12
    :cond_e
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzeer;->size()I

    move-result v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzeer;->size()I

    move-result v1

    add-int/2addr v0, v1

    const/16 v1, 0x80

    if-ge v0, v1, :cond_20

    .line 14
    invoke-static {p0, p1}, Lcom/google/android/gms/internal/ads/zzeie;->zzb(Lcom/google/android/gms/internal/ads/zzeer;Lcom/google/android/gms/internal/ads/zzeer;)Lcom/google/android/gms/internal/ads/zzeer;

    move-result-object p0

    return-object p0

    .line 15
    :cond_20
    instance-of v2, p0, Lcom/google/android/gms/internal/ads/zzeie;

    if-eqz v2, :cond_69

    .line 16
    move-object v2, p0

    check-cast v2, Lcom/google/android/gms/internal/ads/zzeie;

    .line 17
    iget-object v3, v2, Lcom/google/android/gms/internal/ads/zzeie;->zzihv:Lcom/google/android/gms/internal/ads/zzeer;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzeer;->size()I

    move-result v3

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzeer;->size()I

    move-result v4

    add-int/2addr v3, v4

    if-ge v3, v1, :cond_42

    .line 18
    iget-object p0, v2, Lcom/google/android/gms/internal/ads/zzeie;->zzihv:Lcom/google/android/gms/internal/ads/zzeer;

    invoke-static {p0, p1}, Lcom/google/android/gms/internal/ads/zzeie;->zzb(Lcom/google/android/gms/internal/ads/zzeer;Lcom/google/android/gms/internal/ads/zzeer;)Lcom/google/android/gms/internal/ads/zzeer;

    move-result-object p0

    .line 19
    new-instance p1, Lcom/google/android/gms/internal/ads/zzeie;

    iget-object v0, v2, Lcom/google/android/gms/internal/ads/zzeie;->zzihu:Lcom/google/android/gms/internal/ads/zzeer;

    invoke-direct {p1, v0, p0}, Lcom/google/android/gms/internal/ads/zzeie;-><init>(Lcom/google/android/gms/internal/ads/zzeer;Lcom/google/android/gms/internal/ads/zzeer;)V

    return-object p1

    .line 20
    :cond_42
    iget-object v1, v2, Lcom/google/android/gms/internal/ads/zzeie;->zzihu:Lcom/google/android/gms/internal/ads/zzeer;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzeer;->zzbdg()I

    move-result v1

    iget-object v3, v2, Lcom/google/android/gms/internal/ads/zzeie;->zzihv:Lcom/google/android/gms/internal/ads/zzeer;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzeer;->zzbdg()I

    move-result v3

    if-le v1, v3, :cond_69

    .line 21
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzeer;->zzbdg()I

    move-result v1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzeer;->zzbdg()I

    move-result v3

    if-le v1, v3, :cond_69

    .line 22
    new-instance p0, Lcom/google/android/gms/internal/ads/zzeie;

    iget-object v0, v2, Lcom/google/android/gms/internal/ads/zzeie;->zzihv:Lcom/google/android/gms/internal/ads/zzeer;

    invoke-direct {p0, v0, p1}, Lcom/google/android/gms/internal/ads/zzeie;-><init>(Lcom/google/android/gms/internal/ads/zzeer;Lcom/google/android/gms/internal/ads/zzeer;)V

    .line 23
    new-instance p1, Lcom/google/android/gms/internal/ads/zzeie;

    iget-object v0, v2, Lcom/google/android/gms/internal/ads/zzeie;->zzihu:Lcom/google/android/gms/internal/ads/zzeer;

    invoke-direct {p1, v0, p0}, Lcom/google/android/gms/internal/ads/zzeie;-><init>(Lcom/google/android/gms/internal/ads/zzeer;Lcom/google/android/gms/internal/ads/zzeer;)V

    return-object p1

    .line 24
    :cond_69
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzeer;->zzbdg()I

    move-result v1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzeer;->zzbdg()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 25
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzeie;->zzhl(I)I

    move-result v1

    if-lt v0, v1, :cond_83

    .line 26
    new-instance v0, Lcom/google/android/gms/internal/ads/zzeie;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/ads/zzeie;-><init>(Lcom/google/android/gms/internal/ads/zzeer;Lcom/google/android/gms/internal/ads/zzeer;)V

    return-object v0

    .line 27
    :cond_83
    new-instance v0, Lcom/google/android/gms/internal/ads/zzeig;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzeig;-><init>(Lcom/google/android/gms/internal/ads/zzeid;)V

    invoke-static {v0, p0, p1}, Lcom/google/android/gms/internal/ads/zzeig;->zza(Lcom/google/android/gms/internal/ads/zzeig;Lcom/google/android/gms/internal/ads/zzeer;Lcom/google/android/gms/internal/ads/zzeer;)Lcom/google/android/gms/internal/ads/zzeer;

    move-result-object p0

    return-object p0
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/ads/zzeie;)Lcom/google/android/gms/internal/ads/zzeer;
    .registers 1

    .line 140
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzeie;->zzihu:Lcom/google/android/gms/internal/ads/zzeer;

    return-object p0
.end method

.method private static zzb(Lcom/google/android/gms/internal/ads/zzeer;Lcom/google/android/gms/internal/ads/zzeer;)Lcom/google/android/gms/internal/ads/zzeer;
    .registers 6

    .line 28
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzeer;->size()I

    move-result v0

    .line 29
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzeer;->size()I

    move-result v1

    add-int v2, v0, v1

    .line 30
    new-array v2, v2, [B

    const/4 v3, 0x0

    .line 31
    invoke-virtual {p0, v2, v3, v3, v0}, Lcom/google/android/gms/internal/ads/zzeer;->zza([BIII)V

    .line 32
    invoke-virtual {p1, v2, v3, v0, v1}, Lcom/google/android/gms/internal/ads/zzeer;->zza([BIII)V

    .line 33
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzeer;->zzv([B)Lcom/google/android/gms/internal/ads/zzeer;

    move-result-object p0

    return-object p0
.end method

.method static synthetic zzb(Lcom/google/android/gms/internal/ads/zzeie;)Lcom/google/android/gms/internal/ads/zzeer;
    .registers 1

    .line 141
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzeie;->zzihv:Lcom/google/android/gms/internal/ads/zzeer;

    return-object p0
.end method

.method static zzhl(I)I
    .registers 3

    .line 34
    sget-object v0, Lcom/google/android/gms/internal/ads/zzeie;->zzihs:[I

    array-length v1, v0

    if-lt p0, v1, :cond_9

    const p0, 0x7fffffff

    return p0

    .line 36
    :cond_9
    aget p0, v0, p0

    return p0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .registers 14

    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    return v0

    .line 85
    :cond_4
    instance-of v1, p1, Lcom/google/android/gms/internal/ads/zzeer;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    .line 87
    :cond_a
    check-cast p1, Lcom/google/android/gms/internal/ads/zzeer;

    .line 88
    iget v1, p0, Lcom/google/android/gms/internal/ads/zzeie;->zziht:I

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzeer;->size()I

    move-result v3

    if-eq v1, v3, :cond_15

    return v2

    .line 90
    :cond_15
    iget v1, p0, Lcom/google/android/gms/internal/ads/zzeie;->zziht:I

    if-nez v1, :cond_1a

    return v0

    .line 92
    :cond_1a
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzeer;->zzbdi()I

    move-result v1

    .line 93
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzeer;->zzbdi()I

    move-result v3

    if-eqz v1, :cond_29

    if-eqz v3, :cond_29

    if-eq v1, v3, :cond_29

    return v2

    .line 98
    :cond_29
    new-instance v1, Lcom/google/android/gms/internal/ads/zzeif;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/android/gms/internal/ads/zzeif;-><init>(Lcom/google/android/gms/internal/ads/zzeer;Lcom/google/android/gms/internal/ads/zzeid;)V

    .line 99
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/ads/zzeey;

    .line 101
    new-instance v5, Lcom/google/android/gms/internal/ads/zzeif;

    invoke-direct {v5, p1, v3}, Lcom/google/android/gms/internal/ads/zzeif;-><init>(Lcom/google/android/gms/internal/ads/zzeer;Lcom/google/android/gms/internal/ads/zzeid;)V

    .line 102
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzeey;

    const/4 v3, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 104
    :goto_43
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzeer;->size()I

    move-result v8

    sub-int/2addr v8, v3

    .line 105
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzeer;->size()I

    move-result v9

    sub-int/2addr v9, v6

    .line 106
    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v10

    if-nez v3, :cond_58

    .line 108
    invoke-virtual {v4, p1, v6, v10}, Lcom/google/android/gms/internal/ads/zzeey;->zza(Lcom/google/android/gms/internal/ads/zzeer;II)Z

    move-result v11

    goto :goto_5c

    .line 109
    :cond_58
    invoke-virtual {p1, v4, v3, v10}, Lcom/google/android/gms/internal/ads/zzeey;->zza(Lcom/google/android/gms/internal/ads/zzeer;II)Z

    move-result v11

    :goto_5c
    if-nez v11, :cond_5f

    return v2

    :cond_5f
    add-int/2addr v7, v10

    .line 113
    iget v11, p0, Lcom/google/android/gms/internal/ads/zzeie;->zziht:I

    if-lt v7, v11, :cond_6d

    if-ne v7, v11, :cond_67

    return v0

    .line 116
    :cond_67
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    :cond_6d
    if-ne v10, v8, :cond_78

    .line 119
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/ads/zzeey;

    move-object v4, v3

    const/4 v3, 0x0

    goto :goto_79

    :cond_78
    add-int/2addr v3, v10

    :goto_79
    if-ne v10, v9, :cond_83

    .line 123
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzeey;

    const/4 v6, 0x0

    goto :goto_43

    :cond_83
    add-int/2addr v6, v10

    goto :goto_43
.end method

.method public final synthetic iterator()Ljava/util/Iterator;
    .registers 2

    .line 138
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzeer;->zzbdb()Lcom/google/android/gms/internal/ads/zzeew;

    move-result-object v0

    return-object v0
.end method

.method public final size()I
    .registers 2

    .line 42
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzeie;->zziht:I

    return v0
.end method

.method protected final zza(Ljava/nio/charset/Charset;)Ljava/lang/String;
    .registers 4

    .line 71
    new-instance v0, Ljava/lang/String;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzeer;->toByteArray()[B

    move-result-object v1

    invoke-direct {v0, v1, p1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object v0
.end method

.method final zza(Lcom/google/android/gms/internal/ads/zzeeo;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 68
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeie;->zzihu:Lcom/google/android/gms/internal/ads/zzeer;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzeer;->zza(Lcom/google/android/gms/internal/ads/zzeeo;)V

    .line 69
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeie;->zzihv:Lcom/google/android/gms/internal/ads/zzeer;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzeer;->zza(Lcom/google/android/gms/internal/ads/zzeeo;)V

    return-void
.end method

.method protected final zzb([BIII)V
    .registers 7

    add-int v0, p2, p4

    .line 60
    iget v1, p0, Lcom/google/android/gms/internal/ads/zzeie;->zzihw:I

    if-gt v0, v1, :cond_c

    .line 61
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeie;->zzihu:Lcom/google/android/gms/internal/ads/zzeer;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/google/android/gms/internal/ads/zzeer;->zzb([BIII)V

    return-void

    :cond_c
    if-lt p2, v1, :cond_15

    .line 63
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeie;->zzihv:Lcom/google/android/gms/internal/ads/zzeer;

    sub-int/2addr p2, v1

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/google/android/gms/internal/ads/zzeer;->zzb([BIII)V

    return-void

    :cond_15
    sub-int/2addr v1, p2

    .line 65
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeie;->zzihu:Lcom/google/android/gms/internal/ads/zzeer;

    invoke-virtual {v0, p1, p2, p3, v1}, Lcom/google/android/gms/internal/ads/zzeer;->zzb([BIII)V

    .line 66
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzeie;->zzihv:Lcom/google/android/gms/internal/ads/zzeer;

    const/4 v0, 0x0

    add-int/2addr p3, v1

    sub-int/2addr p4, v1

    invoke-virtual {p2, p1, v0, p3, p4}, Lcom/google/android/gms/internal/ads/zzeer;->zzb([BIII)V

    return-void
.end method

.method public final zzbdb()Lcom/google/android/gms/internal/ads/zzeew;
    .registers 2

    .line 43
    new-instance v0, Lcom/google/android/gms/internal/ads/zzeid;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzeid;-><init>(Lcom/google/android/gms/internal/ads/zzeie;)V

    return-object v0
.end method

.method public final zzbdd()Z
    .registers 5

    .line 72
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeie;->zzihu:Lcom/google/android/gms/internal/ads/zzeer;

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzeie;->zzihw:I

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v2, v1}, Lcom/google/android/gms/internal/ads/zzeer;->zzg(III)I

    move-result v0

    .line 73
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzeie;->zzihv:Lcom/google/android/gms/internal/ads/zzeer;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzeer;->size()I

    move-result v3

    invoke-virtual {v1, v0, v2, v3}, Lcom/google/android/gms/internal/ads/zzeer;->zzg(III)I

    move-result v0

    if-nez v0, :cond_17

    const/4 v0, 0x1

    return v0

    :cond_17
    return v2
.end method

.method public final zzbde()Lcom/google/android/gms/internal/ads/zzefc;
    .registers 5

    .line 134
    new-instance v0, Lcom/google/android/gms/internal/ads/zzeii;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzeii;-><init>(Lcom/google/android/gms/internal/ads/zzeie;)V

    .line 136
    new-instance v1, Lcom/google/android/gms/internal/ads/zzefh;

    const/16 v2, 0x1000

    const/4 v3, 0x0

    invoke-direct {v1, v0, v2, v3}, Lcom/google/android/gms/internal/ads/zzefh;-><init>(Ljava/io/InputStream;ILcom/google/android/gms/internal/ads/zzeff;)V

    return-object v1
.end method

.method protected final zzbdg()I
    .registers 2

    .line 44
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzeie;->zzihx:I

    return v0
.end method

.method protected final zzbdh()Z
    .registers 3

    .line 45
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzeie;->zziht:I

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzeie;->zzihx:I

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzeie;->zzhl(I)I

    move-result v1

    if-lt v0, v1, :cond_c

    const/4 v0, 0x1

    return v0

    :cond_c
    const/4 v0, 0x0

    return v0
.end method

.method public final zzft(I)B
    .registers 3

    .line 37
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzeie;->zziht:I

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/zzeie;->zzaa(II)V

    .line 38
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzeer;->zzfu(I)B

    move-result p1

    return p1
.end method

.method final zzfu(I)B
    .registers 4

    .line 39
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzeie;->zzihw:I

    if-ge p1, v0, :cond_b

    .line 40
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeie;->zzihu:Lcom/google/android/gms/internal/ads/zzeer;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzeer;->zzfu(I)B

    move-result p1

    return p1

    .line 41
    :cond_b
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzeie;->zzihv:Lcom/google/android/gms/internal/ads/zzeer;

    sub-int/2addr p1, v0

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/ads/zzeer;->zzfu(I)B

    move-result p1

    return p1
.end method

.method protected final zzg(III)I
    .registers 6

    add-int v0, p2, p3

    .line 76
    iget v1, p0, Lcom/google/android/gms/internal/ads/zzeie;->zzihw:I

    if-gt v0, v1, :cond_d

    .line 77
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeie;->zzihu:Lcom/google/android/gms/internal/ads/zzeer;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzeer;->zzg(III)I

    move-result p1

    return p1

    :cond_d
    if-lt p2, v1, :cond_17

    .line 79
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeie;->zzihv:Lcom/google/android/gms/internal/ads/zzeer;

    sub-int/2addr p2, v1

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzeer;->zzg(III)I

    move-result p1

    return p1

    :cond_17
    sub-int/2addr v1, p2

    .line 81
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeie;->zzihu:Lcom/google/android/gms/internal/ads/zzeer;

    invoke-virtual {v0, p1, p2, v1}, Lcom/google/android/gms/internal/ads/zzeer;->zzg(III)I

    move-result p1

    .line 82
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzeie;->zzihv:Lcom/google/android/gms/internal/ads/zzeer;

    const/4 v0, 0x0

    sub-int/2addr p3, v1

    invoke-virtual {p2, p1, v0, p3}, Lcom/google/android/gms/internal/ads/zzeer;->zzg(III)I

    move-result p1

    return p1
.end method

.method protected final zzh(III)I
    .registers 6

    add-int v0, p2, p3

    .line 127
    iget v1, p0, Lcom/google/android/gms/internal/ads/zzeie;->zzihw:I

    if-gt v0, v1, :cond_d

    .line 128
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeie;->zzihu:Lcom/google/android/gms/internal/ads/zzeer;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzeer;->zzh(III)I

    move-result p1

    return p1

    :cond_d
    if-lt p2, v1, :cond_17

    .line 130
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeie;->zzihv:Lcom/google/android/gms/internal/ads/zzeer;

    sub-int/2addr p2, v1

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzeer;->zzh(III)I

    move-result p1

    return p1

    :cond_17
    sub-int/2addr v1, p2

    .line 132
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeie;->zzihu:Lcom/google/android/gms/internal/ads/zzeer;

    invoke-virtual {v0, p1, p2, v1}, Lcom/google/android/gms/internal/ads/zzeer;->zzh(III)I

    move-result p1

    .line 133
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzeie;->zzihv:Lcom/google/android/gms/internal/ads/zzeer;

    const/4 v0, 0x0

    sub-int/2addr p3, v1

    invoke-virtual {p2, p1, v0, p3}, Lcom/google/android/gms/internal/ads/zzeer;->zzh(III)I

    move-result p1

    return p1
.end method

.method public final zzz(II)Lcom/google/android/gms/internal/ads/zzeer;
    .registers 6

    .line 46
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzeie;->zziht:I

    invoke-static {p1, p2, v0}, Lcom/google/android/gms/internal/ads/zzeie;->zzi(III)I

    move-result v0

    if-nez v0, :cond_b

    .line 48
    sget-object p1, Lcom/google/android/gms/internal/ads/zzeer;->zzhzv:Lcom/google/android/gms/internal/ads/zzeer;

    return-object p1

    .line 49
    :cond_b
    iget v1, p0, Lcom/google/android/gms/internal/ads/zzeie;->zziht:I

    if-ne v0, v1, :cond_10

    return-object p0

    .line 51
    :cond_10
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzeie;->zzihw:I

    if-gt p2, v0, :cond_1b

    .line 52
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeie;->zzihu:Lcom/google/android/gms/internal/ads/zzeer;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzeer;->zzz(II)Lcom/google/android/gms/internal/ads/zzeer;

    move-result-object p1

    return-object p1

    :cond_1b
    if-lt p1, v0, :cond_26

    .line 54
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzeie;->zzihv:Lcom/google/android/gms/internal/ads/zzeer;

    sub-int/2addr p1, v0

    sub-int/2addr p2, v0

    invoke-virtual {v1, p1, p2}, Lcom/google/android/gms/internal/ads/zzeer;->zzz(II)Lcom/google/android/gms/internal/ads/zzeer;

    move-result-object p1

    return-object p1

    .line 55
    :cond_26
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeie;->zzihu:Lcom/google/android/gms/internal/ads/zzeer;

    .line 56
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzeer;->size()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/internal/ads/zzeer;->zzz(II)Lcom/google/android/gms/internal/ads/zzeer;

    move-result-object p1

    .line 58
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeie;->zzihv:Lcom/google/android/gms/internal/ads/zzeer;

    const/4 v1, 0x0

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzeie;->zzihw:I

    sub-int/2addr p2, v2

    invoke-virtual {v0, v1, p2}, Lcom/google/android/gms/internal/ads/zzeer;->zzz(II)Lcom/google/android/gms/internal/ads/zzeer;

    move-result-object p2

    .line 59
    new-instance v0, Lcom/google/android/gms/internal/ads/zzeie;

    invoke-direct {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzeie;-><init>(Lcom/google/android/gms/internal/ads/zzeer;Lcom/google/android/gms/internal/ads/zzeer;)V

    return-object v0
.end method
