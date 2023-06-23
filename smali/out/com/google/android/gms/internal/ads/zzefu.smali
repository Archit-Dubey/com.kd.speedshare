.class final Lcom/google/android/gms/internal/ads/zzefu;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads-lite@@19.2.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/google/android/gms/internal/ads/zzefw<",
        "TT;>;>",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final zzibo:Lcom/google/android/gms/internal/ads/zzefu;


# instance fields
.field final zzibl:Lcom/google/android/gms/internal/ads/zzeim;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzeim<",
            "TT;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private zzibm:Z

.field private zzibn:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 279
    new-instance v0, Lcom/google/android/gms/internal/ads/zzefu;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzefu;-><init>(Z)V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzefu;->zzibo:Lcom/google/android/gms/internal/ads/zzefu;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x10

    .line 2
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzeim;->zzhn(I)Lcom/google/android/gms/internal/ads/zzeim;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzefu;->zzibl:Lcom/google/android/gms/internal/ads/zzeim;

    return-void
.end method

.method private constructor <init>(Lcom/google/android/gms/internal/ads/zzeim;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzeim<",
            "TT;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzefu;->zzibl:Lcom/google/android/gms/internal/ads/zzeim;

    .line 9
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzefu;->zzbcz()V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 2

    const/4 p1, 0x0

    .line 4
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzeim;->zzhn(I)Lcom/google/android/gms/internal/ads/zzeim;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzefu;-><init>(Lcom/google/android/gms/internal/ads/zzeim;)V

    .line 5
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzefu;->zzbcz()V

    return-void
.end method

.method static zza(Lcom/google/android/gms/internal/ads/zzejq;ILjava/lang/Object;)I
    .registers 4

    .line 215
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzefl;->zzgp(I)I

    move-result p1

    .line 216
    sget-object v0, Lcom/google/android/gms/internal/ads/zzejq;->zzikj:Lcom/google/android/gms/internal/ads/zzejq;

    if-ne p0, v0, :cond_10

    .line 217
    move-object v0, p2

    check-cast v0, Lcom/google/android/gms/internal/ads/zzehl;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzegd;->zzk(Lcom/google/android/gms/internal/ads/zzehl;)Z

    shl-int/lit8 p1, p1, 0x1

    .line 219
    :cond_10
    invoke-static {p0, p2}, Lcom/google/android/gms/internal/ads/zzefu;->zzb(Lcom/google/android/gms/internal/ads/zzejq;Ljava/lang/Object;)I

    move-result p0

    add-int/2addr p1, p0

    return p1
.end method

.method private final zza(Lcom/google/android/gms/internal/ads/zzefw;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 31
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzefu;->zzibl:Lcom/google/android/gms/internal/ads/zzeim;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzeim;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 32
    instance-of v0, p1, Lcom/google/android/gms/internal/ads/zzegq;

    if-eqz v0, :cond_10

    .line 33
    check-cast p1, Lcom/google/android/gms/internal/ads/zzegq;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzegq;->zzbge()Lcom/google/android/gms/internal/ads/zzehl;

    move-result-object p1

    :cond_10
    return-object p1
.end method

.method static zza(Lcom/google/android/gms/internal/ads/zzefl;Lcom/google/android/gms/internal/ads/zzejq;ILjava/lang/Object;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 131
    sget-object v0, Lcom/google/android/gms/internal/ads/zzejq;->zzikj:Lcom/google/android/gms/internal/ads/zzejq;

    if-ne p1, v0, :cond_15

    .line 132
    check-cast p3, Lcom/google/android/gms/internal/ads/zzehl;

    invoke-static {p3}, Lcom/google/android/gms/internal/ads/zzegd;->zzk(Lcom/google/android/gms/internal/ads/zzehl;)Z

    const/4 p1, 0x3

    .line 134
    invoke-virtual {p0, p2, p1}, Lcom/google/android/gms/internal/ads/zzefl;->writeTag(II)V

    .line 136
    invoke-interface {p3, p0}, Lcom/google/android/gms/internal/ads/zzehl;->zzb(Lcom/google/android/gms/internal/ads/zzefl;)V

    const/4 p1, 0x4

    .line 137
    invoke-virtual {p0, p2, p1}, Lcom/google/android/gms/internal/ads/zzefl;->writeTag(II)V

    return-void

    .line 140
    :cond_15
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzejq;->zzbic()I

    move-result v0

    .line 141
    invoke-virtual {p0, p2, v0}, Lcom/google/android/gms/internal/ads/zzefl;->writeTag(II)V

    .line 143
    sget-object p2, Lcom/google/android/gms/internal/ads/zzeft;->zziau:[I

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzejq;->ordinal()I

    move-result p1

    aget p1, p2, p1

    packed-switch p1, :pswitch_data_f2

    goto/16 :goto_f1

    .line 187
    :pswitch_29
    instance-of p1, p3, Lcom/google/android/gms/internal/ads/zzegg;

    if-eqz p1, :cond_37

    .line 188
    check-cast p3, Lcom/google/android/gms/internal/ads/zzegg;

    invoke-interface {p3}, Lcom/google/android/gms/internal/ads/zzegg;->zzw()I

    move-result p1

    .line 189
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzefl;->zzgl(I)V

    return-void

    .line 191
    :cond_37
    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 192
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzefl;->zzgl(I)V

    goto/16 :goto_f1

    .line 185
    :pswitch_42
    check-cast p3, Ljava/lang/Long;

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzefl;->zzfj(J)V

    return-void

    .line 183
    :pswitch_4c
    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzefl;->zzgn(I)V

    return-void

    .line 180
    :pswitch_56
    check-cast p3, Ljava/lang/Long;

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    .line 181
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzefl;->zzfk(J)V

    return-void

    .line 177
    :pswitch_60
    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 178
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzefl;->zzgo(I)V

    return-void

    .line 175
    :pswitch_6a
    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzefl;->zzgm(I)V

    return-void

    .line 170
    :pswitch_74
    instance-of p1, p3, Lcom/google/android/gms/internal/ads/zzeer;

    if-eqz p1, :cond_7e

    .line 171
    check-cast p3, Lcom/google/android/gms/internal/ads/zzeer;

    invoke-virtual {p0, p3}, Lcom/google/android/gms/internal/ads/zzefl;->zzah(Lcom/google/android/gms/internal/ads/zzeer;)V

    return-void

    .line 172
    :cond_7e
    check-cast p3, [B

    const/4 p1, 0x0

    .line 173
    array-length p2, p3

    invoke-virtual {p0, p3, p1, p2}, Lcom/google/android/gms/internal/ads/zzefl;->zzk([BII)V

    return-void

    .line 166
    :pswitch_86
    instance-of p1, p3, Lcom/google/android/gms/internal/ads/zzeer;

    if-eqz p1, :cond_90

    .line 167
    check-cast p3, Lcom/google/android/gms/internal/ads/zzeer;

    invoke-virtual {p0, p3}, Lcom/google/android/gms/internal/ads/zzefl;->zzah(Lcom/google/android/gms/internal/ads/zzeer;)V

    return-void

    .line 168
    :cond_90
    check-cast p3, Ljava/lang/String;

    invoke-virtual {p0, p3}, Lcom/google/android/gms/internal/ads/zzefl;->zzht(Ljava/lang/String;)V

    return-void

    .line 164
    :pswitch_96
    check-cast p3, Lcom/google/android/gms/internal/ads/zzehl;

    invoke-virtual {p0, p3}, Lcom/google/android/gms/internal/ads/zzefl;->zzg(Lcom/google/android/gms/internal/ads/zzehl;)V

    return-void

    .line 161
    :pswitch_9c
    check-cast p3, Lcom/google/android/gms/internal/ads/zzehl;

    .line 162
    invoke-interface {p3, p0}, Lcom/google/android/gms/internal/ads/zzehl;->zzb(Lcom/google/android/gms/internal/ads/zzefl;)V

    return-void

    .line 159
    :pswitch_a2
    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzefl;->zzbs(Z)V

    return-void

    .line 157
    :pswitch_ac
    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzefl;->zzgo(I)V

    return-void

    .line 155
    :pswitch_b6
    check-cast p3, Ljava/lang/Long;

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzefl;->zzfk(J)V

    return-void

    .line 153
    :pswitch_c0
    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzefl;->zzgl(I)V

    return-void

    .line 151
    :pswitch_ca
    check-cast p3, Ljava/lang/Long;

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzefl;->zzfi(J)V

    return-void

    .line 148
    :pswitch_d4
    check-cast p3, Ljava/lang/Long;

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    .line 149
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzefl;->zzfi(J)V

    return-void

    .line 146
    :pswitch_de
    check-cast p3, Ljava/lang/Float;

    invoke-virtual {p3}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzefl;->zzf(F)V

    return-void

    .line 144
    :pswitch_e8
    check-cast p3, Ljava/lang/Double;

    invoke-virtual {p3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzefl;->zzb(D)V

    :goto_f1
    return-void

    :pswitch_data_f2
    .packed-switch 0x1
        :pswitch_e8
        :pswitch_de
        :pswitch_d4
        :pswitch_ca
        :pswitch_c0
        :pswitch_b6
        :pswitch_ac
        :pswitch_a2
        :pswitch_9c
        :pswitch_96
        :pswitch_86
        :pswitch_74
        :pswitch_6a
        :pswitch_60
        :pswitch_56
        :pswitch_4c
        :pswitch_42
        :pswitch_29
    .end packed-switch
.end method

.method private final zza(Lcom/google/android/gms/internal/ads/zzefw;Ljava/lang/Object;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 35
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzefw;->zzbez()Z

    move-result v0

    if-eqz v0, :cond_36

    .line 36
    instance-of v0, p2, Ljava/util/List;

    if-eqz v0, :cond_2e

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 39
    check-cast p2, Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 40
    move-object p2, v0

    check-cast p2, Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_1c
    if-ge v2, v1, :cond_2c

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    .line 41
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzefw;->zzbex()Lcom/google/android/gms/internal/ads/zzejq;

    move-result-object v4

    invoke-static {v4, v3}, Lcom/google/android/gms/internal/ads/zzefu;->zza(Lcom/google/android/gms/internal/ads/zzejq;Ljava/lang/Object;)V

    goto :goto_1c

    :cond_2c
    move-object p2, v0

    goto :goto_3d

    .line 37
    :cond_2e
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Wrong object type used with protocol message reflection."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 45
    :cond_36
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzefw;->zzbex()Lcom/google/android/gms/internal/ads/zzejq;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/google/android/gms/internal/ads/zzefu;->zza(Lcom/google/android/gms/internal/ads/zzejq;Ljava/lang/Object;)V

    .line 46
    :goto_3d
    instance-of v0, p2, Lcom/google/android/gms/internal/ads/zzegq;

    if-eqz v0, :cond_44

    const/4 v0, 0x1

    .line 47
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzefu;->zzibn:Z

    .line 48
    :cond_44
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzefu;->zzibl:Lcom/google/android/gms/internal/ads/zzeim;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzeim;->zza(Ljava/lang/Comparable;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static zza(Lcom/google/android/gms/internal/ads/zzejq;Ljava/lang/Object;)V
    .registers 4

    .line 51
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzegd;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    sget-object v0, Lcom/google/android/gms/internal/ads/zzeft;->zzibk:[I

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzejq;->zzbib()Lcom/google/android/gms/internal/ads/zzejt;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzejt;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x1

    const/4 v1, 0x0

    packed-switch p0, :pswitch_data_50

    :cond_14
    const/4 v0, 0x0

    goto :goto_42

    .line 61
    :pswitch_16
    instance-of p0, p1, Lcom/google/android/gms/internal/ads/zzehl;

    if-nez p0, :cond_42

    instance-of p0, p1, Lcom/google/android/gms/internal/ads/zzegq;

    if-eqz p0, :cond_14

    goto :goto_42

    .line 60
    :pswitch_1f
    instance-of p0, p1, Ljava/lang/Integer;

    if-nez p0, :cond_42

    instance-of p0, p1, Lcom/google/android/gms/internal/ads/zzegg;

    if-eqz p0, :cond_14

    goto :goto_42

    .line 59
    :pswitch_28
    instance-of p0, p1, Lcom/google/android/gms/internal/ads/zzeer;

    if-nez p0, :cond_42

    instance-of p0, p1, [B

    if-eqz p0, :cond_14

    goto :goto_42

    .line 58
    :pswitch_31
    instance-of v0, p1, Ljava/lang/String;

    goto :goto_42

    .line 57
    :pswitch_34
    instance-of v0, p1, Ljava/lang/Boolean;

    goto :goto_42

    .line 56
    :pswitch_37
    instance-of v0, p1, Ljava/lang/Double;

    goto :goto_42

    .line 55
    :pswitch_3a
    instance-of v0, p1, Ljava/lang/Float;

    goto :goto_42

    .line 54
    :pswitch_3d
    instance-of v0, p1, Ljava/lang/Long;

    goto :goto_42

    .line 53
    :pswitch_40
    instance-of v0, p1, Ljava/lang/Integer;

    :cond_42
    :goto_42
    if-eqz v0, :cond_45

    return-void

    .line 64
    :cond_45
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Wrong object type used with protocol message reflection."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_4e

    :goto_4d
    throw p0

    :goto_4e
    goto :goto_4d

    nop

    :pswitch_data_50
    .packed-switch 0x1
        :pswitch_40
        :pswitch_3d
        :pswitch_3a
        :pswitch_37
        :pswitch_34
        :pswitch_31
        :pswitch_28
        :pswitch_1f
        :pswitch_16
    .end packed-switch
.end method

.method private static zzak(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 97
    instance-of v0, p0, Lcom/google/android/gms/internal/ads/zzehu;

    if-eqz v0, :cond_b

    .line 98
    check-cast p0, Lcom/google/android/gms/internal/ads/zzehu;

    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzehu;->zzbcv()Lcom/google/android/gms/internal/ads/zzehu;

    move-result-object p0

    return-object p0

    .line 99
    :cond_b
    instance-of v0, p0, [B

    if-eqz v0, :cond_1a

    .line 100
    check-cast p0, [B

    .line 101
    array-length v0, p0

    new-array v0, v0, [B

    .line 102
    array-length v1, p0

    const/4 v2, 0x0

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0

    :cond_1a
    return-object p0
.end method

.method public static zzb(Lcom/google/android/gms/internal/ads/zzefw;Ljava/lang/Object;)I
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzefw<",
            "*>;",
            "Ljava/lang/Object;",
            ")I"
        }
    .end annotation

    .line 248
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzefw;->zzbex()Lcom/google/android/gms/internal/ads/zzejq;

    move-result-object v0

    .line 249
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzefw;->zzw()I

    move-result v1

    .line 250
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzefw;->zzbez()Z

    move-result v2

    if-eqz v2, :cond_4d

    .line 251
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzefw;->zzbfa()Z

    move-result p0

    const/4 v2, 0x0

    if-eqz p0, :cond_36

    .line 253
    check-cast p1, Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1b
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_2b

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    .line 254
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzefu;->zzb(Lcom/google/android/gms/internal/ads/zzejq;Ljava/lang/Object;)I

    move-result p1

    add-int/2addr v2, p1

    goto :goto_1b

    .line 257
    :cond_2b
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzefl;->zzgp(I)I

    move-result p0

    add-int/2addr p0, v2

    .line 258
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzefl;->zzgx(I)I

    move-result p1

    add-int/2addr p0, p1

    return p0

    .line 261
    :cond_36
    check-cast p1, Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_3c
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_4c

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    .line 262
    invoke-static {v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzefu;->zza(Lcom/google/android/gms/internal/ads/zzejq;ILjava/lang/Object;)I

    move-result p1

    add-int/2addr v2, p1

    goto :goto_3c

    :cond_4c
    return v2

    .line 265
    :cond_4d
    invoke-static {v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzefu;->zza(Lcom/google/android/gms/internal/ads/zzejq;ILjava/lang/Object;)I

    move-result p0

    return p0
.end method

.method private static zzb(Lcom/google/android/gms/internal/ads/zzejq;Ljava/lang/Object;)I
    .registers 3

    .line 220
    sget-object v0, Lcom/google/android/gms/internal/ads/zzeft;->zziau:[I

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzejq;->ordinal()I

    move-result p0

    aget p0, v0, p0

    packed-switch p0, :pswitch_data_fa

    .line 247
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "There is no way to get here, but the compiler thinks otherwise."

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 244
    :pswitch_13
    instance-of p0, p1, Lcom/google/android/gms/internal/ads/zzegg;

    if-eqz p0, :cond_22

    .line 245
    check-cast p1, Lcom/google/android/gms/internal/ads/zzegg;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzegg;->zzw()I

    move-result p0

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzefl;->zzgv(I)I

    move-result p0

    return p0

    .line 246
    :cond_22
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzefl;->zzgv(I)I

    move-result p0

    return p0

    .line 240
    :pswitch_2d
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    invoke-static {p0, p1}, Lcom/google/android/gms/internal/ads/zzefl;->zzfn(J)I

    move-result p0

    return p0

    .line 239
    :pswitch_38
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzefl;->zzgs(I)I

    move-result p0

    return p0

    .line 238
    :pswitch_43
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    invoke-static {p0, p1}, Lcom/google/android/gms/internal/ads/zzefl;->zzfp(J)I

    move-result p0

    return p0

    .line 237
    :pswitch_4e
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzefl;->zzgu(I)I

    move-result p0

    return p0

    .line 236
    :pswitch_59
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzefl;->zzgr(I)I

    move-result p0

    return p0

    .line 230
    :pswitch_64
    instance-of p0, p1, Lcom/google/android/gms/internal/ads/zzeer;

    if-eqz p0, :cond_6f

    .line 231
    check-cast p1, Lcom/google/android/gms/internal/ads/zzeer;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzefl;->zzai(Lcom/google/android/gms/internal/ads/zzeer;)I

    move-result p0

    return p0

    .line 232
    :cond_6f
    check-cast p1, [B

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzefl;->zzx([B)I

    move-result p0

    return p0

    .line 233
    :pswitch_76
    instance-of p0, p1, Lcom/google/android/gms/internal/ads/zzeer;

    if-eqz p0, :cond_81

    .line 234
    check-cast p1, Lcom/google/android/gms/internal/ads/zzeer;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzefl;->zzai(Lcom/google/android/gms/internal/ads/zzeer;)I

    move-result p0

    return p0

    .line 235
    :cond_81
    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzefl;->zzhu(Ljava/lang/String;)I

    move-result p0

    return p0

    .line 241
    :pswitch_88
    instance-of p0, p1, Lcom/google/android/gms/internal/ads/zzegq;

    if-eqz p0, :cond_93

    .line 242
    check-cast p1, Lcom/google/android/gms/internal/ads/zzegq;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzefl;->zza(Lcom/google/android/gms/internal/ads/zzegu;)I

    move-result p0

    return p0

    .line 243
    :cond_93
    check-cast p1, Lcom/google/android/gms/internal/ads/zzehl;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzefl;->zzh(Lcom/google/android/gms/internal/ads/zzehl;)I

    move-result p0

    return p0

    .line 229
    :pswitch_9a
    check-cast p1, Lcom/google/android/gms/internal/ads/zzehl;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzefl;->zzi(Lcom/google/android/gms/internal/ads/zzehl;)I

    move-result p0

    return p0

    .line 228
    :pswitch_a1
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzefl;->zzbt(Z)I

    move-result p0

    return p0

    .line 227
    :pswitch_ac
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzefl;->zzgt(I)I

    move-result p0

    return p0

    .line 226
    :pswitch_b7
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    invoke-static {p0, p1}, Lcom/google/android/gms/internal/ads/zzefl;->zzfo(J)I

    move-result p0

    return p0

    .line 225
    :pswitch_c2
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzefl;->zzgq(I)I

    move-result p0

    return p0

    .line 224
    :pswitch_cd
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    invoke-static {p0, p1}, Lcom/google/android/gms/internal/ads/zzefl;->zzfm(J)I

    move-result p0

    return p0

    .line 223
    :pswitch_d8
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    invoke-static {p0, p1}, Lcom/google/android/gms/internal/ads/zzefl;->zzfl(J)I

    move-result p0

    return p0

    .line 222
    :pswitch_e3
    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p0

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzefl;->zzg(F)I

    move-result p0

    return p0

    .line 221
    :pswitch_ee
    check-cast p1, Ljava/lang/Double;

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p0

    invoke-static {p0, p1}, Lcom/google/android/gms/internal/ads/zzefl;->zzc(D)I

    move-result p0

    return p0

    nop

    :pswitch_data_fa
    .packed-switch 0x1
        :pswitch_ee
        :pswitch_e3
        :pswitch_d8
        :pswitch_cd
        :pswitch_c2
        :pswitch_b7
        :pswitch_ac
        :pswitch_a1
        :pswitch_9a
        :pswitch_88
        :pswitch_76
        :pswitch_64
        :pswitch_59
        :pswitch_4e
        :pswitch_43
        :pswitch_38
        :pswitch_2d
        :pswitch_13
    .end packed-switch
.end method

.method private static zzb(Ljava/util/Map$Entry;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/google/android/gms/internal/ads/zzefw<",
            "TT;>;>(",
            "Ljava/util/Map$Entry<",
            "TT;",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    .line 75
    invoke-interface {p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzefw;

    .line 76
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzefw;->zzbey()Lcom/google/android/gms/internal/ads/zzejt;

    move-result-object v1

    sget-object v2, Lcom/google/android/gms/internal/ads/zzejt;->zzild:Lcom/google/android/gms/internal/ads/zzejt;

    const/4 v3, 0x1

    if-ne v1, v2, :cond_51

    .line 77
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzefw;->zzbez()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_33

    .line 78
    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_20
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_51

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzehl;

    .line 79
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzehl;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_20

    return v1

    .line 82
    :cond_33
    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p0

    .line 83
    instance-of v0, p0, Lcom/google/android/gms/internal/ads/zzehl;

    if-eqz v0, :cond_44

    .line 84
    check-cast p0, Lcom/google/android/gms/internal/ads/zzehl;

    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzehl;->isInitialized()Z

    move-result p0

    if-nez p0, :cond_51

    return v1

    .line 86
    :cond_44
    instance-of p0, p0, Lcom/google/android/gms/internal/ads/zzegq;

    if-eqz p0, :cond_49

    return v3

    .line 88
    :cond_49
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Wrong object type used with protocol message reflection."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_51
    return v3
.end method

.method public static zzbev()Lcom/google/android/gms/internal/ads/zzefu;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/google/android/gms/internal/ads/zzefw<",
            "TT;>;>()",
            "Lcom/google/android/gms/internal/ads/zzefu<",
            "TT;>;"
        }
    .end annotation

    .line 11
    sget-object v0, Lcom/google/android/gms/internal/ads/zzefu;->zzibo:Lcom/google/android/gms/internal/ads/zzefu;

    return-object v0
.end method

.method private final zzc(Ljava/util/Map$Entry;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry<",
            "TT;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 105
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzefw;

    .line 106
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    .line 107
    instance-of v1, p1, Lcom/google/android/gms/internal/ads/zzegq;

    if-eqz v1, :cond_14

    .line 108
    check-cast p1, Lcom/google/android/gms/internal/ads/zzegq;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzegq;->zzbge()Lcom/google/android/gms/internal/ads/zzehl;

    move-result-object p1

    .line 109
    :cond_14
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzefw;->zzbez()Z

    move-result v1

    if-eqz v1, :cond_46

    .line 110
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzefu;->zza(Lcom/google/android/gms/internal/ads/zzefw;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_25

    .line 112
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 113
    :cond_25
    check-cast p1, Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2b
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_40

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 114
    move-object v3, v1

    check-cast v3, Ljava/util/List;

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzefu;->zzak(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2b

    .line 116
    :cond_40
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzefu;->zzibl:Lcom/google/android/gms/internal/ads/zzeim;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzeim;->zza(Ljava/lang/Comparable;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 117
    :cond_46
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzefw;->zzbey()Lcom/google/android/gms/internal/ads/zzejt;

    move-result-object v1

    sget-object v2, Lcom/google/android/gms/internal/ads/zzejt;->zzild:Lcom/google/android/gms/internal/ads/zzejt;

    if-ne v1, v2, :cond_81

    .line 118
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzefu;->zza(Lcom/google/android/gms/internal/ads/zzefw;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_5e

    .line 120
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzefu;->zzibl:Lcom/google/android/gms/internal/ads/zzeim;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzefu;->zzak(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v1, v0, p1}, Lcom/google/android/gms/internal/ads/zzeim;->zza(Ljava/lang/Comparable;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 121
    :cond_5e
    instance-of v2, v1, Lcom/google/android/gms/internal/ads/zzehu;

    if-eqz v2, :cond_6b

    .line 122
    check-cast v1, Lcom/google/android/gms/internal/ads/zzehu;

    check-cast p1, Lcom/google/android/gms/internal/ads/zzehu;

    .line 123
    invoke-interface {v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzefw;->zza(Lcom/google/android/gms/internal/ads/zzehu;Lcom/google/android/gms/internal/ads/zzehu;)Lcom/google/android/gms/internal/ads/zzehu;

    move-result-object p1

    goto :goto_7b

    .line 124
    :cond_6b
    check-cast v1, Lcom/google/android/gms/internal/ads/zzehl;

    .line 125
    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzehl;->zzbfi()Lcom/google/android/gms/internal/ads/zzeho;

    move-result-object v1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzehl;

    invoke-interface {v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzefw;->zza(Lcom/google/android/gms/internal/ads/zzeho;Lcom/google/android/gms/internal/ads/zzehl;)Lcom/google/android/gms/internal/ads/zzeho;

    move-result-object p1

    .line 126
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzeho;->zzbfq()Lcom/google/android/gms/internal/ads/zzehl;

    move-result-object p1

    .line 127
    :goto_7b
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzefu;->zzibl:Lcom/google/android/gms/internal/ads/zzeim;

    invoke-virtual {v1, v0, p1}, Lcom/google/android/gms/internal/ads/zzeim;->zza(Ljava/lang/Comparable;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 129
    :cond_81
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzefu;->zzibl:Lcom/google/android/gms/internal/ads/zzeim;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzefu;->zzak(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v1, v0, p1}, Lcom/google/android/gms/internal/ads/zzeim;->zza(Ljava/lang/Comparable;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static zzd(Ljava/util/Map$Entry;)I
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry<",
            "TT;",
            "Ljava/lang/Object;",
            ">;)I"
        }
    .end annotation

    .line 202
    invoke-interface {p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzefw;

    .line 203
    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    .line 204
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzefw;->zzbey()Lcom/google/android/gms/internal/ads/zzejt;

    move-result-object v2

    sget-object v3, Lcom/google/android/gms/internal/ads/zzejt;->zzild:Lcom/google/android/gms/internal/ads/zzejt;

    if-ne v2, v3, :cond_44

    .line 205
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzefw;->zzbez()Z

    move-result v2

    if-nez v2, :cond_44

    .line 206
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzefw;->zzbfa()Z

    move-result v2

    if-nez v2, :cond_44

    .line 207
    instance-of v0, v1, Lcom/google/android/gms/internal/ads/zzegq;

    if-eqz v0, :cond_33

    .line 209
    invoke-interface {p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/ads/zzefw;

    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzefw;->zzw()I

    move-result p0

    check-cast v1, Lcom/google/android/gms/internal/ads/zzegq;

    .line 210
    invoke-static {p0, v1}, Lcom/google/android/gms/internal/ads/zzefl;->zzb(ILcom/google/android/gms/internal/ads/zzegu;)I

    move-result p0

    return p0

    .line 212
    :cond_33
    invoke-interface {p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/ads/zzefw;

    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzefw;->zzw()I

    move-result p0

    check-cast v1, Lcom/google/android/gms/internal/ads/zzehl;

    .line 213
    invoke-static {p0, v1}, Lcom/google/android/gms/internal/ads/zzefl;->zzb(ILcom/google/android/gms/internal/ads/zzehl;)I

    move-result p0

    return p0

    .line 214
    :cond_44
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzefu;->zzb(Lcom/google/android/gms/internal/ads/zzefw;Ljava/lang/Object;)I

    move-result p0

    return p0
.end method


# virtual methods
.method public final synthetic clone()Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 267
    new-instance v0, Lcom/google/android/gms/internal/ads/zzefu;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzefu;-><init>()V

    const/4 v1, 0x0

    .line 269
    :goto_6
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzefu;->zzibl:Lcom/google/android/gms/internal/ads/zzeim;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzeim;->zzbhj()I

    move-result v2

    if-ge v1, v2, :cond_24

    .line 270
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzefu;->zzibl:Lcom/google/android/gms/internal/ads/zzeim;

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzeim;->zzho(I)Ljava/util/Map$Entry;

    move-result-object v2

    .line 271
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/ads/zzefw;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-direct {v0, v3, v2}, Lcom/google/android/gms/internal/ads/zzefu;->zza(Lcom/google/android/gms/internal/ads/zzefw;Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 273
    :cond_24
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzefu;->zzibl:Lcom/google/android/gms/internal/ads/zzeim;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzeim;->zzbhk()Ljava/lang/Iterable;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_48

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 274
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/ads/zzefw;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-direct {v0, v3, v2}, Lcom/google/android/gms/internal/ads/zzefu;->zza(Lcom/google/android/gms/internal/ads/zzefw;Ljava/lang/Object;)V

    goto :goto_2e

    .line 276
    :cond_48
    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzefu;->zzibn:Z

    iput-boolean v1, v0, Lcom/google/android/gms/internal/ads/zzefu;->zzibn:Z

    return-object v0
.end method

.method final descendingIterator()Ljava/util/Iterator;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "TT;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .line 28
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzefu;->zzibn:Z

    if-eqz v0, :cond_14

    .line 29
    new-instance v0, Lcom/google/android/gms/internal/ads/zzegr;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzefu;->zzibl:Lcom/google/android/gms/internal/ads/zzeim;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzeim;->zzbhl()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzegr;-><init>(Ljava/util/Iterator;)V

    return-object v0

    .line 30
    :cond_14
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzefu;->zzibl:Lcom/google/android/gms/internal/ads/zzeim;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzeim;->zzbhl()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 3

    if-ne p0, p1, :cond_4

    const/4 p1, 0x1

    return p1

    .line 20
    :cond_4
    instance-of v0, p1, Lcom/google/android/gms/internal/ads/zzefu;

    if-nez v0, :cond_a

    const/4 p1, 0x0

    return p1

    .line 22
    :cond_a
    check-cast p1, Lcom/google/android/gms/internal/ads/zzefu;

    .line 23
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzefu;->zzibl:Lcom/google/android/gms/internal/ads/zzeim;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzefu;->zzibl:Lcom/google/android/gms/internal/ads/zzeim;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzeim;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final hashCode()I
    .registers 2

    .line 24
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzefu;->zzibl:Lcom/google/android/gms/internal/ads/zzeim;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzeim;->hashCode()I

    move-result v0

    return v0
.end method

.method public final isImmutable()Z
    .registers 2

    .line 17
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzefu;->zzibm:Z

    return v0
.end method

.method public final isInitialized()Z
    .registers 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 66
    :goto_2
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzefu;->zzibl:Lcom/google/android/gms/internal/ads/zzeim;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzeim;->zzbhj()I

    move-result v2

    if-ge v1, v2, :cond_1a

    .line 67
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzefu;->zzibl:Lcom/google/android/gms/internal/ads/zzeim;

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzeim;->zzho(I)Ljava/util/Map$Entry;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzefu;->zzb(Ljava/util/Map$Entry;)Z

    move-result v2

    if-nez v2, :cond_17

    return v0

    :cond_17
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 70
    :cond_1a
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzefu;->zzibl:Lcom/google/android/gms/internal/ads/zzeim;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzeim;->zzbhk()Ljava/lang/Iterable;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_24
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_37

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 71
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzefu;->zzb(Ljava/util/Map$Entry;)Z

    move-result v2

    if-nez v2, :cond_24

    return v0

    :cond_37
    const/4 v0, 0x1

    return v0
.end method

.method public final iterator()Ljava/util/Iterator;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "TT;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .line 25
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzefu;->zzibn:Z

    if-eqz v0, :cond_14

    .line 26
    new-instance v0, Lcom/google/android/gms/internal/ads/zzegr;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzefu;->zzibl:Lcom/google/android/gms/internal/ads/zzeim;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzeim;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzegr;-><init>(Ljava/util/Iterator;)V

    return-object v0

    .line 27
    :cond_14
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzefu;->zzibl:Lcom/google/android/gms/internal/ads/zzeim;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzeim;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzefu;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzefu<",
            "TT;>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 90
    :goto_1
    iget-object v1, p1, Lcom/google/android/gms/internal/ads/zzefu;->zzibl:Lcom/google/android/gms/internal/ads/zzeim;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzeim;->zzbhj()I

    move-result v1

    if-ge v0, v1, :cond_15

    .line 91
    iget-object v1, p1, Lcom/google/android/gms/internal/ads/zzefu;->zzibl:Lcom/google/android/gms/internal/ads/zzeim;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzeim;->zzho(I)Ljava/util/Map$Entry;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/ads/zzefu;->zzc(Ljava/util/Map$Entry;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 93
    :cond_15
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzefu;->zzibl:Lcom/google/android/gms/internal/ads/zzeim;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzeim;->zzbhk()Ljava/lang/Iterable;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1f
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2f

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 94
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzefu;->zzc(Ljava/util/Map$Entry;)V

    goto :goto_1f

    :cond_2f
    return-void
.end method

.method public final zzbcz()V
    .registers 2

    .line 12
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzefu;->zzibm:Z

    if-eqz v0, :cond_5

    return-void

    .line 14
    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzefu;->zzibl:Lcom/google/android/gms/internal/ads/zzeim;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzeim;->zzbcz()V

    const/4 v0, 0x1

    .line 15
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzefu;->zzibm:Z

    return-void
.end method

.method public final zzbew()I
    .registers 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 195
    :goto_2
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzefu;->zzibl:Lcom/google/android/gms/internal/ads/zzeim;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzeim;->zzbhj()I

    move-result v2

    if-ge v0, v2, :cond_18

    .line 196
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzefu;->zzibl:Lcom/google/android/gms/internal/ads/zzeim;

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/zzeim;->zzho(I)Ljava/util/Map$Entry;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzefu;->zzd(Ljava/util/Map$Entry;)I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 198
    :cond_18
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzefu;->zzibl:Lcom/google/android/gms/internal/ads/zzeim;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzeim;->zzbhk()Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_22
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_34

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 199
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzefu;->zzd(Ljava/util/Map$Entry;)I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_22

    :cond_34
    return v1
.end method
