.class public final Lcom/google/android/gms/internal/ads/zzll;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.2.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzjx;
.implements Lcom/google/android/gms/internal/ads/zzkc;


# static fields
.field private static final zzapc:Lcom/google/android/gms/internal/ads/zzjy;

.field private static final zzazr:I


# instance fields
.field private zzaih:J

.field private final zzapj:Lcom/google/android/gms/internal/ads/zzpi;

.field private final zzapk:Lcom/google/android/gms/internal/ads/zzpi;

.field private zzaqy:I

.field private zzaqz:I

.field private zzarc:Lcom/google/android/gms/internal/ads/zzjz;

.field private final zzaxj:Lcom/google/android/gms/internal/ads/zzpi;

.field private final zzaxl:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack<",
            "Lcom/google/android/gms/internal/ads/zzks;",
            ">;"
        }
    .end annotation
.end field

.field private zzaxn:I

.field private zzaxo:I

.field private zzaxp:J

.field private zzaxq:I

.field private zzaxr:Lcom/google/android/gms/internal/ads/zzpi;

.field private zzazs:[Lcom/google/android/gms/internal/ads/zzln;

.field private zzazt:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 220
    new-instance v0, Lcom/google/android/gms/internal/ads/zzlk;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzlk;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzll;->zzapc:Lcom/google/android/gms/internal/ads/zzjy;

    const-string v0, "qt  "

    .line 221
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzpo;->zzbk(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/google/android/gms/internal/ads/zzll;->zzazr:I

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/google/android/gms/internal/ads/zzpi;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzpi;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzll;->zzaxj:Lcom/google/android/gms/internal/ads/zzpi;

    .line 3
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzll;->zzaxl:Ljava/util/Stack;

    .line 4
    new-instance v0, Lcom/google/android/gms/internal/ads/zzpi;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzph;->zzbjk:[B

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzpi;-><init>([B)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzll;->zzapj:Lcom/google/android/gms/internal/ads/zzpi;

    .line 5
    new-instance v0, Lcom/google/android/gms/internal/ads/zzpi;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzpi;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzll;->zzapk:Lcom/google/android/gms/internal/ads/zzpi;

    return-void
.end method

.method private final zzeb(J)V
    .registers 22
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzht;
        }
    .end annotation

    move-object/from16 v0, p0

    .line 169
    :cond_2
    :goto_2
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzll;->zzaxl:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_124

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzll;->zzaxl:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzks;

    iget-wide v3, v1, Lcom/google/android/gms/internal/ads/zzks;->zzasm:J

    cmp-long v1, v3, p1

    if-nez v1, :cond_124

    .line 170
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzll;->zzaxl:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzks;

    .line 171
    iget v3, v1, Lcom/google/android/gms/internal/ads/zzks;->type:I

    sget v4, Lcom/google/android/gms/internal/ads/zzkt;->zzatq:I

    if-ne v3, v4, :cond_10f

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    .line 174
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    const-wide v6, 0x7fffffffffffffffL

    const/4 v8, 0x0

    .line 177
    new-instance v9, Lcom/google/android/gms/internal/ads/zzkb;

    invoke-direct {v9}, Lcom/google/android/gms/internal/ads/zzkb;-><init>()V

    .line 178
    sget v10, Lcom/google/android/gms/internal/ads/zzkt;->zzavp:I

    invoke-virtual {v1, v10}, Lcom/google/android/gms/internal/ads/zzks;->zzaq(I)Lcom/google/android/gms/internal/ads/zzkv;

    move-result-object v10

    if-eqz v10, :cond_4e

    .line 180
    iget-boolean v8, v0, Lcom/google/android/gms/internal/ads/zzll;->zzazt:Z

    invoke-static {v10, v8}, Lcom/google/android/gms/internal/ads/zzku;->zza(Lcom/google/android/gms/internal/ads/zzkv;Z)Lcom/google/android/gms/internal/ads/zzme;

    move-result-object v8

    if-eqz v8, :cond_4e

    .line 182
    invoke-virtual {v9, v8}, Lcom/google/android/gms/internal/ads/zzkb;->zzb(Lcom/google/android/gms/internal/ads/zzme;)Z

    :cond_4e
    const/4 v11, 0x0

    .line 183
    :goto_4f
    iget-object v12, v1, Lcom/google/android/gms/internal/ads/zzks;->zzaso:Ljava/util/List;

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v12

    if-ge v11, v12, :cond_eb

    .line 184
    iget-object v12, v1, Lcom/google/android/gms/internal/ads/zzks;->zzaso:Ljava/util/List;

    invoke-interface {v12, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/google/android/gms/internal/ads/zzks;

    .line 185
    iget v13, v12, Lcom/google/android/gms/internal/ads/zzks;->type:I

    sget v14, Lcom/google/android/gms/internal/ads/zzkt;->zzats:I

    if-ne v13, v14, :cond_e2

    .line 186
    sget v13, Lcom/google/android/gms/internal/ads/zzkt;->zzatr:I

    invoke-virtual {v1, v13}, Lcom/google/android/gms/internal/ads/zzks;->zzaq(I)Lcom/google/android/gms/internal/ads/zzkv;

    move-result-object v14

    const-wide v15, -0x7fffffffffffffffL    # -4.9E-324

    const/16 v17, 0x0

    iget-boolean v13, v0, Lcom/google/android/gms/internal/ads/zzll;->zzazt:Z

    move/from16 v18, v13

    move-object v13, v12

    invoke-static/range {v13 .. v18}, Lcom/google/android/gms/internal/ads/zzku;->zza(Lcom/google/android/gms/internal/ads/zzks;Lcom/google/android/gms/internal/ads/zzkv;JLcom/google/android/gms/internal/ads/zzjl;Z)Lcom/google/android/gms/internal/ads/zzlp;

    move-result-object v13

    if-eqz v13, :cond_e2

    .line 188
    sget v14, Lcom/google/android/gms/internal/ads/zzkt;->zzatt:I

    invoke-virtual {v12, v14}, Lcom/google/android/gms/internal/ads/zzks;->zzar(I)Lcom/google/android/gms/internal/ads/zzks;

    move-result-object v12

    sget v14, Lcom/google/android/gms/internal/ads/zzkt;->zzatu:I

    .line 189
    invoke-virtual {v12, v14}, Lcom/google/android/gms/internal/ads/zzks;->zzar(I)Lcom/google/android/gms/internal/ads/zzks;

    move-result-object v12

    sget v14, Lcom/google/android/gms/internal/ads/zzkt;->zzatv:I

    invoke-virtual {v12, v14}, Lcom/google/android/gms/internal/ads/zzks;->zzar(I)Lcom/google/android/gms/internal/ads/zzks;

    move-result-object v12

    .line 190
    invoke-static {v13, v12, v9}, Lcom/google/android/gms/internal/ads/zzku;->zza(Lcom/google/android/gms/internal/ads/zzlp;Lcom/google/android/gms/internal/ads/zzks;Lcom/google/android/gms/internal/ads/zzkb;)Lcom/google/android/gms/internal/ads/zzlq;

    move-result-object v12

    .line 191
    iget v14, v12, Lcom/google/android/gms/internal/ads/zzlq;->zzawu:I

    if-eqz v14, :cond_e2

    .line 192
    new-instance v14, Lcom/google/android/gms/internal/ads/zzln;

    iget-object v15, v0, Lcom/google/android/gms/internal/ads/zzll;->zzarc:Lcom/google/android/gms/internal/ads/zzjz;

    iget v2, v13, Lcom/google/android/gms/internal/ads/zzlp;->type:I

    .line 193
    invoke-interface {v15, v11, v2}, Lcom/google/android/gms/internal/ads/zzjz;->zzc(II)Lcom/google/android/gms/internal/ads/zzke;

    move-result-object v2

    invoke-direct {v14, v13, v12, v2}, Lcom/google/android/gms/internal/ads/zzln;-><init>(Lcom/google/android/gms/internal/ads/zzlp;Lcom/google/android/gms/internal/ads/zzlq;Lcom/google/android/gms/internal/ads/zzke;)V

    .line 194
    iget v2, v12, Lcom/google/android/gms/internal/ads/zzlq;->zzayb:I

    add-int/lit8 v2, v2, 0x1e

    .line 195
    iget-object v15, v13, Lcom/google/android/gms/internal/ads/zzlp;->zzahr:Lcom/google/android/gms/internal/ads/zzhq;

    invoke-virtual {v15, v2}, Lcom/google/android/gms/internal/ads/zzhq;->zzu(I)Lcom/google/android/gms/internal/ads/zzhq;

    move-result-object v2

    .line 196
    iget v15, v13, Lcom/google/android/gms/internal/ads/zzlp;->type:I

    const/4 v10, 0x1

    if-ne v15, v10, :cond_c7

    .line 197
    invoke-virtual {v9}, Lcom/google/android/gms/internal/ads/zzkb;->zzgs()Z

    move-result v10

    if-eqz v10, :cond_c1

    .line 198
    iget v10, v9, Lcom/google/android/gms/internal/ads/zzkb;->zzahj:I

    iget v15, v9, Lcom/google/android/gms/internal/ads/zzkb;->zzahk:I

    invoke-virtual {v2, v10, v15}, Lcom/google/android/gms/internal/ads/zzhq;->zzb(II)Lcom/google/android/gms/internal/ads/zzhq;

    move-result-object v2

    :cond_c1
    if-eqz v8, :cond_c7

    .line 200
    invoke-virtual {v2, v8}, Lcom/google/android/gms/internal/ads/zzhq;->zza(Lcom/google/android/gms/internal/ads/zzme;)Lcom/google/android/gms/internal/ads/zzhq;

    move-result-object v2

    .line 201
    :cond_c7
    iget-object v10, v14, Lcom/google/android/gms/internal/ads/zzln;->zzazw:Lcom/google/android/gms/internal/ads/zzke;

    invoke-interface {v10, v2}, Lcom/google/android/gms/internal/ads/zzke;->zze(Lcom/google/android/gms/internal/ads/zzhq;)V

    move-object v10, v8

    move-object v2, v9

    .line 202
    iget-wide v8, v13, Lcom/google/android/gms/internal/ads/zzlp;->zzaih:J

    invoke-static {v3, v4, v8, v9}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3

    .line 203
    invoke-interface {v5, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 204
    iget-object v8, v12, Lcom/google/android/gms/internal/ads/zzlq;->zzaon:[J

    const/4 v9, 0x0

    aget-wide v12, v8, v9

    cmp-long v8, v12, v6

    if-gez v8, :cond_e5

    move-wide v6, v12

    goto :goto_e5

    :cond_e2
    move-object v10, v8

    move-object v2, v9

    const/4 v9, 0x0

    :cond_e5
    :goto_e5
    add-int/lit8 v11, v11, 0x1

    move-object v9, v2

    move-object v8, v10

    goto/16 :goto_4f

    .line 208
    :cond_eb
    iput-wide v3, v0, Lcom/google/android/gms/internal/ads/zzll;->zzaih:J

    .line 209
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Lcom/google/android/gms/internal/ads/zzln;

    invoke-interface {v5, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/google/android/gms/internal/ads/zzln;

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzll;->zzazs:[Lcom/google/android/gms/internal/ads/zzln;

    .line 210
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzll;->zzarc:Lcom/google/android/gms/internal/ads/zzjz;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzjz;->zzgr()V

    .line 211
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzll;->zzarc:Lcom/google/android/gms/internal/ads/zzjz;

    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/ads/zzjz;->zza(Lcom/google/android/gms/internal/ads/zzkc;)V

    .line 212
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzll;->zzaxl:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->clear()V

    const/4 v1, 0x2

    .line 213
    iput v1, v0, Lcom/google/android/gms/internal/ads/zzll;->zzaxn:I

    goto/16 :goto_2

    .line 214
    :cond_10f
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzll;->zzaxl:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    .line 215
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzll;->zzaxl:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/ads/zzks;

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzks;->zza(Lcom/google/android/gms/internal/ads/zzks;)V

    goto/16 :goto_2

    .line 217
    :cond_124
    iget v1, v0, Lcom/google/android/gms/internal/ads/zzll;->zzaxn:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_12c

    .line 218
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzll;->zzha()V

    :cond_12c
    return-void
.end method

.method private final zzha()V
    .registers 2

    const/4 v0, 0x0

    .line 166
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzll;->zzaxn:I

    .line 167
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzll;->zzaxq:I

    return-void
.end method


# virtual methods
.method public final getDurationUs()J
    .registers 3

    .line 154
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzll;->zzaih:J

    return-wide v0
.end method

.method public final isSeekable()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public final release()V
    .registers 1

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzjw;Lcom/google/android/gms/internal/ads/zzkd;)I
    .registers 26
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 27
    :cond_6
    iget v3, v0, Lcom/google/android/gms/internal/ads/zzll;->zzaxn:I

    const/4 v4, -0x1

    const/16 v5, 0x8

    const/4 v6, 0x1

    if-eqz v3, :cond_198

    const-wide/32 v8, 0x40000

    const/4 v10, 0x2

    if-eq v3, v6, :cond_115

    if-ne v3, v10, :cond_10f

    const-wide v12, 0x7fffffffffffffffL

    const/4 v3, 0x0

    const/4 v5, -0x1

    .line 94
    :goto_1d
    iget-object v14, v0, Lcom/google/android/gms/internal/ads/zzll;->zzazs:[Lcom/google/android/gms/internal/ads/zzln;

    array-length v15, v14

    if-ge v3, v15, :cond_3b

    .line 95
    aget-object v14, v14, v3

    .line 96
    iget v15, v14, Lcom/google/android/gms/internal/ads/zzln;->zzawy:I

    .line 97
    iget-object v11, v14, Lcom/google/android/gms/internal/ads/zzln;->zzazv:Lcom/google/android/gms/internal/ads/zzlq;

    iget v11, v11, Lcom/google/android/gms/internal/ads/zzlq;->zzawu:I

    if-eq v15, v11, :cond_38

    .line 98
    iget-object v11, v14, Lcom/google/android/gms/internal/ads/zzln;->zzazv:Lcom/google/android/gms/internal/ads/zzlq;

    iget-object v11, v11, Lcom/google/android/gms/internal/ads/zzlq;->zzaon:[J

    aget-wide v14, v11, v15

    cmp-long v11, v14, v12

    if-gez v11, :cond_38

    move v5, v3

    move-wide v12, v14

    :cond_38
    add-int/lit8 v3, v3, 0x1

    goto :goto_1d

    :cond_3b
    if-ne v5, v4, :cond_3e

    return v4

    .line 107
    :cond_3e
    aget-object v3, v14, v5

    .line 108
    iget-object v4, v3, Lcom/google/android/gms/internal/ads/zzln;->zzazw:Lcom/google/android/gms/internal/ads/zzke;

    .line 109
    iget v5, v3, Lcom/google/android/gms/internal/ads/zzln;->zzawy:I

    .line 110
    iget-object v11, v3, Lcom/google/android/gms/internal/ads/zzln;->zzazv:Lcom/google/android/gms/internal/ads/zzlq;

    iget-object v11, v11, Lcom/google/android/gms/internal/ads/zzlq;->zzaon:[J

    aget-wide v12, v11, v5

    .line 111
    iget-object v11, v3, Lcom/google/android/gms/internal/ads/zzln;->zzazv:Lcom/google/android/gms/internal/ads/zzlq;

    iget-object v11, v11, Lcom/google/android/gms/internal/ads/zzlq;->zzaom:[I

    aget v11, v11, v5

    .line 112
    iget-object v14, v3, Lcom/google/android/gms/internal/ads/zzln;->zzazk:Lcom/google/android/gms/internal/ads/zzlp;

    iget v14, v14, Lcom/google/android/gms/internal/ads/zzlp;->zzbab:I

    if-ne v14, v6, :cond_5b

    const-wide/16 v14, 0x8

    add-long/2addr v12, v14

    add-int/lit8 v11, v11, -0x8

    .line 115
    :cond_5b
    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzjw;->getPosition()J

    move-result-wide v14

    sub-long v14, v12, v14

    iget v10, v0, Lcom/google/android/gms/internal/ads/zzll;->zzaqz:I

    int-to-long v6, v10

    add-long/2addr v14, v6

    const-wide/16 v6, 0x0

    cmp-long v10, v14, v6

    if-ltz v10, :cond_10b

    cmp-long v6, v14, v8

    if-ltz v6, :cond_71

    goto/16 :goto_10b

    :cond_71
    long-to-int v2, v14

    .line 119
    invoke-interface {v1, v2}, Lcom/google/android/gms/internal/ads/zzjw;->zzah(I)V

    .line 120
    iget-object v2, v3, Lcom/google/android/gms/internal/ads/zzln;->zzazk:Lcom/google/android/gms/internal/ads/zzlp;

    iget v2, v2, Lcom/google/android/gms/internal/ads/zzlp;->zzasi:I

    if-eqz v2, :cond_d2

    .line 121
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzll;->zzapk:Lcom/google/android/gms/internal/ads/zzpi;

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzpi;->data:[B

    const/4 v6, 0x0

    .line 122
    aput-byte v6, v2, v6

    const/4 v7, 0x1

    .line 123
    aput-byte v6, v2, v7

    const/4 v7, 0x2

    .line 124
    aput-byte v6, v2, v7

    .line 125
    iget-object v2, v3, Lcom/google/android/gms/internal/ads/zzln;->zzazk:Lcom/google/android/gms/internal/ads/zzlp;

    iget v2, v2, Lcom/google/android/gms/internal/ads/zzlp;->zzasi:I

    .line 126
    iget-object v6, v3, Lcom/google/android/gms/internal/ads/zzln;->zzazk:Lcom/google/android/gms/internal/ads/zzlp;

    iget v6, v6, Lcom/google/android/gms/internal/ads/zzlp;->zzasi:I

    const/4 v7, 0x4

    rsub-int/lit8 v6, v6, 0x4

    .line 127
    :goto_93
    iget v7, v0, Lcom/google/android/gms/internal/ads/zzll;->zzaqz:I

    if-ge v7, v11, :cond_e8

    .line 128
    iget v7, v0, Lcom/google/android/gms/internal/ads/zzll;->zzaqy:I

    if-nez v7, :cond_c2

    .line 129
    iget-object v7, v0, Lcom/google/android/gms/internal/ads/zzll;->zzapk:Lcom/google/android/gms/internal/ads/zzpi;

    iget-object v7, v7, Lcom/google/android/gms/internal/ads/zzpi;->data:[B

    invoke-interface {v1, v7, v6, v2}, Lcom/google/android/gms/internal/ads/zzjw;->readFully([BII)V

    .line 130
    iget-object v7, v0, Lcom/google/android/gms/internal/ads/zzll;->zzapk:Lcom/google/android/gms/internal/ads/zzpi;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lcom/google/android/gms/internal/ads/zzpi;->zzbk(I)V

    .line 131
    iget-object v7, v0, Lcom/google/android/gms/internal/ads/zzll;->zzapk:Lcom/google/android/gms/internal/ads/zzpi;

    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/zzpi;->zziz()I

    move-result v7

    iput v7, v0, Lcom/google/android/gms/internal/ads/zzll;->zzaqy:I

    .line 132
    iget-object v7, v0, Lcom/google/android/gms/internal/ads/zzll;->zzapj:Lcom/google/android/gms/internal/ads/zzpi;

    invoke-virtual {v7, v8}, Lcom/google/android/gms/internal/ads/zzpi;->zzbk(I)V

    .line 133
    iget-object v7, v0, Lcom/google/android/gms/internal/ads/zzll;->zzapj:Lcom/google/android/gms/internal/ads/zzpi;

    const/4 v9, 0x4

    invoke-interface {v4, v7, v9}, Lcom/google/android/gms/internal/ads/zzke;->zza(Lcom/google/android/gms/internal/ads/zzpi;I)V

    .line 134
    iget v7, v0, Lcom/google/android/gms/internal/ads/zzll;->zzaqz:I

    add-int/2addr v7, v9

    iput v7, v0, Lcom/google/android/gms/internal/ads/zzll;->zzaqz:I

    add-int/2addr v11, v6

    goto :goto_93

    :cond_c2
    const/4 v8, 0x0

    .line 136
    invoke-interface {v4, v1, v7, v8}, Lcom/google/android/gms/internal/ads/zzke;->zza(Lcom/google/android/gms/internal/ads/zzjw;IZ)I

    move-result v7

    .line 137
    iget v8, v0, Lcom/google/android/gms/internal/ads/zzll;->zzaqz:I

    add-int/2addr v8, v7

    iput v8, v0, Lcom/google/android/gms/internal/ads/zzll;->zzaqz:I

    .line 138
    iget v8, v0, Lcom/google/android/gms/internal/ads/zzll;->zzaqy:I

    sub-int/2addr v8, v7

    iput v8, v0, Lcom/google/android/gms/internal/ads/zzll;->zzaqy:I

    goto :goto_93

    .line 141
    :cond_d2
    :goto_d2
    iget v2, v0, Lcom/google/android/gms/internal/ads/zzll;->zzaqz:I

    if-ge v2, v11, :cond_e8

    sub-int v2, v11, v2

    const/4 v6, 0x0

    .line 142
    invoke-interface {v4, v1, v2, v6}, Lcom/google/android/gms/internal/ads/zzke;->zza(Lcom/google/android/gms/internal/ads/zzjw;IZ)I

    move-result v2

    .line 143
    iget v6, v0, Lcom/google/android/gms/internal/ads/zzll;->zzaqz:I

    add-int/2addr v6, v2

    iput v6, v0, Lcom/google/android/gms/internal/ads/zzll;->zzaqz:I

    .line 144
    iget v6, v0, Lcom/google/android/gms/internal/ads/zzll;->zzaqy:I

    sub-int/2addr v6, v2

    iput v6, v0, Lcom/google/android/gms/internal/ads/zzll;->zzaqy:I

    goto :goto_d2

    :cond_e8
    move/from16 v20, v11

    .line 146
    iget-object v1, v3, Lcom/google/android/gms/internal/ads/zzln;->zzazv:Lcom/google/android/gms/internal/ads/zzlq;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzlq;->zzbaf:[J

    aget-wide v17, v1, v5

    iget-object v1, v3, Lcom/google/android/gms/internal/ads/zzln;->zzazv:Lcom/google/android/gms/internal/ads/zzlq;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzlq;->zzayd:[I

    aget v19, v1, v5

    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object/from16 v16, v4

    invoke-interface/range {v16 .. v22}, Lcom/google/android/gms/internal/ads/zzke;->zza(JIIILcom/google/android/gms/internal/ads/zzkh;)V

    .line 147
    iget v1, v3, Lcom/google/android/gms/internal/ads/zzln;->zzawy:I

    const/4 v4, 0x1

    add-int/2addr v1, v4

    iput v1, v3, Lcom/google/android/gms/internal/ads/zzln;->zzawy:I

    const/4 v1, 0x0

    .line 148
    iput v1, v0, Lcom/google/android/gms/internal/ads/zzll;->zzaqz:I

    .line 149
    iput v1, v0, Lcom/google/android/gms/internal/ads/zzll;->zzaqy:I

    return v1

    :cond_10b
    :goto_10b
    const/4 v4, 0x1

    .line 117
    iput-wide v12, v2, Lcom/google/android/gms/internal/ads/zzkd;->position:J

    return v4

    .line 152
    :cond_10f
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1

    .line 63
    :cond_115
    iget-wide v3, v0, Lcom/google/android/gms/internal/ads/zzll;->zzaxp:J

    iget v6, v0, Lcom/google/android/gms/internal/ads/zzll;->zzaxq:I

    int-to-long v6, v6

    sub-long/2addr v3, v6

    .line 64
    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzjw;->getPosition()J

    move-result-wide v6

    add-long/2addr v6, v3

    .line 66
    iget-object v10, v0, Lcom/google/android/gms/internal/ads/zzll;->zzaxr:Lcom/google/android/gms/internal/ads/zzpi;

    if-eqz v10, :cond_175

    .line 67
    iget-object v8, v10, Lcom/google/android/gms/internal/ads/zzpi;->data:[B

    iget v9, v0, Lcom/google/android/gms/internal/ads/zzll;->zzaxq:I

    long-to-int v4, v3

    invoke-interface {v1, v8, v9, v4}, Lcom/google/android/gms/internal/ads/zzjw;->readFully([BII)V

    .line 68
    iget v3, v0, Lcom/google/android/gms/internal/ads/zzll;->zzaxo:I

    sget v4, Lcom/google/android/gms/internal/ads/zzkt;->zzasp:I

    if-ne v3, v4, :cond_158

    .line 69
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzll;->zzaxr:Lcom/google/android/gms/internal/ads/zzpi;

    .line 70
    invoke-virtual {v3, v5}, Lcom/google/android/gms/internal/ads/zzpi;->zzbk(I)V

    .line 71
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzpi;->readInt()I

    move-result v4

    .line 72
    sget v5, Lcom/google/android/gms/internal/ads/zzll;->zzazr:I

    if-ne v4, v5, :cond_141

    :goto_13f
    const/4 v3, 0x1

    goto :goto_155

    :cond_141
    const/4 v4, 0x4

    .line 74
    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/ads/zzpi;->zzbl(I)V

    .line 75
    :cond_145
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzpi;->zziu()I

    move-result v4

    if-lez v4, :cond_154

    .line 76
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzpi;->readInt()I

    move-result v4

    sget v5, Lcom/google/android/gms/internal/ads/zzll;->zzazr:I

    if-ne v4, v5, :cond_145

    goto :goto_13f

    :cond_154
    const/4 v3, 0x0

    .line 79
    :goto_155
    iput-boolean v3, v0, Lcom/google/android/gms/internal/ads/zzll;->zzazt:Z

    goto :goto_17d

    .line 80
    :cond_158
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzll;->zzaxl:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_17d

    .line 81
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzll;->zzaxl:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/ads/zzks;

    new-instance v4, Lcom/google/android/gms/internal/ads/zzkv;

    iget v5, v0, Lcom/google/android/gms/internal/ads/zzll;->zzaxo:I

    iget-object v8, v0, Lcom/google/android/gms/internal/ads/zzll;->zzaxr:Lcom/google/android/gms/internal/ads/zzpi;

    invoke-direct {v4, v5, v8}, Lcom/google/android/gms/internal/ads/zzkv;-><init>(ILcom/google/android/gms/internal/ads/zzpi;)V

    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/ads/zzks;->zza(Lcom/google/android/gms/internal/ads/zzkv;)V

    goto :goto_17d

    :cond_175
    cmp-long v5, v3, v8

    if-gez v5, :cond_17f

    long-to-int v4, v3

    .line 83
    invoke-interface {v1, v4}, Lcom/google/android/gms/internal/ads/zzjw;->zzah(I)V

    :cond_17d
    :goto_17d
    const/4 v3, 0x0

    goto :goto_187

    .line 84
    :cond_17f
    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzjw;->getPosition()J

    move-result-wide v8

    add-long/2addr v8, v3

    iput-wide v8, v2, Lcom/google/android/gms/internal/ads/zzkd;->position:J

    const/4 v3, 0x1

    .line 86
    :goto_187
    invoke-direct {v0, v6, v7}, Lcom/google/android/gms/internal/ads/zzll;->zzeb(J)V

    if-eqz v3, :cond_193

    .line 87
    iget v3, v0, Lcom/google/android/gms/internal/ads/zzll;->zzaxn:I

    const/4 v4, 0x2

    if-eq v3, v4, :cond_193

    const/4 v7, 0x1

    goto :goto_194

    :cond_193
    const/4 v7, 0x0

    :goto_194
    if-eqz v7, :cond_6

    const/4 v3, 0x1

    return v3

    :cond_198
    const/4 v3, 0x1

    .line 29
    iget v6, v0, Lcom/google/android/gms/internal/ads/zzll;->zzaxq:I

    if-nez v6, :cond_1c2

    .line 30
    iget-object v6, v0, Lcom/google/android/gms/internal/ads/zzll;->zzaxj:Lcom/google/android/gms/internal/ads/zzpi;

    iget-object v6, v6, Lcom/google/android/gms/internal/ads/zzpi;->data:[B

    const/4 v7, 0x0

    invoke-interface {v1, v6, v7, v5, v3}, Lcom/google/android/gms/internal/ads/zzjw;->zza([BIIZ)Z

    move-result v6

    if-nez v6, :cond_1ab

    const/4 v6, 0x0

    goto/16 :goto_2aa

    .line 32
    :cond_1ab
    iput v5, v0, Lcom/google/android/gms/internal/ads/zzll;->zzaxq:I

    .line 33
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzll;->zzaxj:Lcom/google/android/gms/internal/ads/zzpi;

    invoke-virtual {v3, v7}, Lcom/google/android/gms/internal/ads/zzpi;->zzbk(I)V

    .line 34
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzll;->zzaxj:Lcom/google/android/gms/internal/ads/zzpi;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzpi;->zziw()J

    move-result-wide v6

    iput-wide v6, v0, Lcom/google/android/gms/internal/ads/zzll;->zzaxp:J

    .line 35
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzll;->zzaxj:Lcom/google/android/gms/internal/ads/zzpi;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzpi;->readInt()I

    move-result v3

    iput v3, v0, Lcom/google/android/gms/internal/ads/zzll;->zzaxo:I

    .line 36
    :cond_1c2
    iget-wide v6, v0, Lcom/google/android/gms/internal/ads/zzll;->zzaxp:J

    const-wide/16 v8, 0x1

    cmp-long v3, v6, v8

    if-nez v3, :cond_1de

    .line 38
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzll;->zzaxj:Lcom/google/android/gms/internal/ads/zzpi;

    iget-object v3, v3, Lcom/google/android/gms/internal/ads/zzpi;->data:[B

    invoke-interface {v1, v3, v5, v5}, Lcom/google/android/gms/internal/ads/zzjw;->readFully([BII)V

    .line 39
    iget v3, v0, Lcom/google/android/gms/internal/ads/zzll;->zzaxq:I

    add-int/2addr v3, v5

    iput v3, v0, Lcom/google/android/gms/internal/ads/zzll;->zzaxq:I

    .line 40
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzll;->zzaxj:Lcom/google/android/gms/internal/ads/zzpi;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzpi;->zzja()J

    move-result-wide v6

    iput-wide v6, v0, Lcom/google/android/gms/internal/ads/zzll;->zzaxp:J

    .line 41
    :cond_1de
    iget v3, v0, Lcom/google/android/gms/internal/ads/zzll;->zzaxo:I

    .line 42
    sget v6, Lcom/google/android/gms/internal/ads/zzkt;->zzatq:I

    if-eq v3, v6, :cond_1fb

    sget v6, Lcom/google/android/gms/internal/ads/zzkt;->zzats:I

    if-eq v3, v6, :cond_1fb

    sget v6, Lcom/google/android/gms/internal/ads/zzkt;->zzatt:I

    if-eq v3, v6, :cond_1fb

    sget v6, Lcom/google/android/gms/internal/ads/zzkt;->zzatu:I

    if-eq v3, v6, :cond_1fb

    sget v6, Lcom/google/android/gms/internal/ads/zzkt;->zzatv:I

    if-eq v3, v6, :cond_1fb

    sget v6, Lcom/google/android/gms/internal/ads/zzkt;->zzaue:I

    if-ne v3, v6, :cond_1f9

    goto :goto_1fb

    :cond_1f9
    const/4 v6, 0x0

    goto :goto_1fc

    :cond_1fb
    :goto_1fb
    const/4 v6, 0x1

    :goto_1fc
    if-eqz v6, :cond_228

    .line 44
    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzjw;->getPosition()J

    move-result-wide v5

    iget-wide v7, v0, Lcom/google/android/gms/internal/ads/zzll;->zzaxp:J

    add-long/2addr v5, v7

    iget v3, v0, Lcom/google/android/gms/internal/ads/zzll;->zzaxq:I

    int-to-long v7, v3

    sub-long/2addr v5, v7

    .line 45
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzll;->zzaxl:Ljava/util/Stack;

    new-instance v7, Lcom/google/android/gms/internal/ads/zzks;

    iget v8, v0, Lcom/google/android/gms/internal/ads/zzll;->zzaxo:I

    invoke-direct {v7, v8, v5, v6}, Lcom/google/android/gms/internal/ads/zzks;-><init>(IJ)V

    invoke-virtual {v3, v7}, Ljava/util/Stack;->add(Ljava/lang/Object;)Z

    .line 46
    iget-wide v7, v0, Lcom/google/android/gms/internal/ads/zzll;->zzaxp:J

    iget v3, v0, Lcom/google/android/gms/internal/ads/zzll;->zzaxq:I

    int-to-long v9, v3

    cmp-long v3, v7, v9

    if-nez v3, :cond_222

    .line 47
    invoke-direct {v0, v5, v6}, Lcom/google/android/gms/internal/ads/zzll;->zzeb(J)V

    goto :goto_225

    .line 48
    :cond_222
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzll;->zzha()V

    :goto_225
    const/4 v3, 0x1

    goto/16 :goto_2a9

    .line 49
    :cond_228
    iget v3, v0, Lcom/google/android/gms/internal/ads/zzll;->zzaxo:I

    .line 50
    sget v6, Lcom/google/android/gms/internal/ads/zzkt;->zzaug:I

    if-eq v3, v6, :cond_26d

    sget v6, Lcom/google/android/gms/internal/ads/zzkt;->zzatr:I

    if-eq v3, v6, :cond_26d

    sget v6, Lcom/google/android/gms/internal/ads/zzkt;->zzauh:I

    if-eq v3, v6, :cond_26d

    sget v6, Lcom/google/android/gms/internal/ads/zzkt;->zzaui:I

    if-eq v3, v6, :cond_26d

    sget v6, Lcom/google/android/gms/internal/ads/zzkt;->zzavb:I

    if-eq v3, v6, :cond_26d

    sget v6, Lcom/google/android/gms/internal/ads/zzkt;->zzavc:I

    if-eq v3, v6, :cond_26d

    sget v6, Lcom/google/android/gms/internal/ads/zzkt;->zzavd:I

    if-eq v3, v6, :cond_26d

    sget v6, Lcom/google/android/gms/internal/ads/zzkt;->zzauf:I

    if-eq v3, v6, :cond_26d

    sget v6, Lcom/google/android/gms/internal/ads/zzkt;->zzave:I

    if-eq v3, v6, :cond_26d

    sget v6, Lcom/google/android/gms/internal/ads/zzkt;->zzavf:I

    if-eq v3, v6, :cond_26d

    sget v6, Lcom/google/android/gms/internal/ads/zzkt;->zzavg:I

    if-eq v3, v6, :cond_26d

    sget v6, Lcom/google/android/gms/internal/ads/zzkt;->zzavh:I

    if-eq v3, v6, :cond_26d

    sget v6, Lcom/google/android/gms/internal/ads/zzkt;->zzavi:I

    if-eq v3, v6, :cond_26d

    sget v6, Lcom/google/android/gms/internal/ads/zzkt;->zzaud:I

    if-eq v3, v6, :cond_26d

    sget v6, Lcom/google/android/gms/internal/ads/zzkt;->zzasp:I

    if-eq v3, v6, :cond_26d

    sget v6, Lcom/google/android/gms/internal/ads/zzkt;->zzavp:I

    if-ne v3, v6, :cond_26b

    goto :goto_26d

    :cond_26b
    const/4 v6, 0x0

    goto :goto_26e

    :cond_26d
    :goto_26d
    const/4 v6, 0x1

    :goto_26e
    if-eqz v6, :cond_2a3

    .line 52
    iget v3, v0, Lcom/google/android/gms/internal/ads/zzll;->zzaxq:I

    if-ne v3, v5, :cond_276

    const/4 v6, 0x1

    goto :goto_277

    :cond_276
    const/4 v6, 0x0

    :goto_277
    invoke-static {v6}, Lcom/google/android/gms/internal/ads/zzpb;->checkState(Z)V

    .line 53
    iget-wide v6, v0, Lcom/google/android/gms/internal/ads/zzll;->zzaxp:J

    const-wide/32 v8, 0x7fffffff

    cmp-long v3, v6, v8

    if-gtz v3, :cond_285

    const/4 v6, 0x1

    goto :goto_286

    :cond_285
    const/4 v6, 0x0

    :goto_286
    invoke-static {v6}, Lcom/google/android/gms/internal/ads/zzpb;->checkState(Z)V

    .line 54
    new-instance v3, Lcom/google/android/gms/internal/ads/zzpi;

    iget-wide v6, v0, Lcom/google/android/gms/internal/ads/zzll;->zzaxp:J

    long-to-int v7, v6

    invoke-direct {v3, v7}, Lcom/google/android/gms/internal/ads/zzpi;-><init>(I)V

    iput-object v3, v0, Lcom/google/android/gms/internal/ads/zzll;->zzaxr:Lcom/google/android/gms/internal/ads/zzpi;

    .line 55
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzll;->zzaxj:Lcom/google/android/gms/internal/ads/zzpi;

    iget-object v3, v3, Lcom/google/android/gms/internal/ads/zzpi;->data:[B

    iget-object v6, v0, Lcom/google/android/gms/internal/ads/zzll;->zzaxr:Lcom/google/android/gms/internal/ads/zzpi;

    iget-object v6, v6, Lcom/google/android/gms/internal/ads/zzpi;->data:[B

    const/4 v7, 0x0

    invoke-static {v3, v7, v6, v7, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v3, 0x1

    .line 56
    iput v3, v0, Lcom/google/android/gms/internal/ads/zzll;->zzaxn:I

    goto :goto_2a9

    :cond_2a3
    const/4 v3, 0x1

    const/4 v5, 0x0

    .line 57
    iput-object v5, v0, Lcom/google/android/gms/internal/ads/zzll;->zzaxr:Lcom/google/android/gms/internal/ads/zzpi;

    .line 58
    iput v3, v0, Lcom/google/android/gms/internal/ads/zzll;->zzaxn:I

    :goto_2a9
    const/4 v6, 0x1

    :goto_2aa
    if-nez v6, :cond_6

    return v4
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzjz;)V
    .registers 2

    .line 8
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzll;->zzarc:Lcom/google/android/gms/internal/ads/zzjz;

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzjw;)Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 7
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzlm;->zze(Lcom/google/android/gms/internal/ads/zzjw;)Z

    move-result p1

    return p1
.end method

.method public final zzc(JJ)V
    .registers 10

    .line 10
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzll;->zzaxl:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->clear()V

    const/4 v0, 0x0

    .line 11
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzll;->zzaxq:I

    .line 12
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzll;->zzaqz:I

    .line 13
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzll;->zzaqy:I

    const-wide/16 v1, 0x0

    cmp-long v3, p1, v1

    if-nez v3, :cond_16

    .line 15
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzll;->zzha()V

    return-void

    .line 16
    :cond_16
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzll;->zzazs:[Lcom/google/android/gms/internal/ads/zzln;

    if-eqz p1, :cond_31

    .line 18
    array-length p2, p1

    :goto_1b
    if-ge v0, p2, :cond_31

    aget-object v1, p1, v0

    .line 19
    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzln;->zzazv:Lcom/google/android/gms/internal/ads/zzlq;

    .line 20
    invoke-virtual {v2, p3, p4}, Lcom/google/android/gms/internal/ads/zzlq;->zzec(J)I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_2c

    .line 22
    invoke-virtual {v2, p3, p4}, Lcom/google/android/gms/internal/ads/zzlq;->zzed(J)I

    move-result v3

    .line 23
    :cond_2c
    iput v3, v1, Lcom/google/android/gms/internal/ads/zzln;->zzawy:I

    add-int/lit8 v0, v0, 0x1

    goto :goto_1b

    :cond_31
    return-void
.end method

.method public final zzdz(J)J
    .registers 11

    .line 156
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzll;->zzazs:[Lcom/google/android/gms/internal/ads/zzln;

    array-length v1, v0

    const-wide v2, 0x7fffffffffffffffL

    const/4 v4, 0x0

    :goto_9
    if-ge v4, v1, :cond_26

    aget-object v5, v0, v4

    .line 157
    iget-object v5, v5, Lcom/google/android/gms/internal/ads/zzln;->zzazv:Lcom/google/android/gms/internal/ads/zzlq;

    .line 158
    invoke-virtual {v5, p1, p2}, Lcom/google/android/gms/internal/ads/zzlq;->zzec(J)I

    move-result v6

    const/4 v7, -0x1

    if-ne v6, v7, :cond_1a

    .line 160
    invoke-virtual {v5, p1, p2}, Lcom/google/android/gms/internal/ads/zzlq;->zzed(J)I

    move-result v6

    .line 161
    :cond_1a
    iget-object v5, v5, Lcom/google/android/gms/internal/ads/zzlq;->zzaon:[J

    aget-wide v6, v5, v6

    cmp-long v5, v6, v2

    if-gez v5, :cond_23

    move-wide v2, v6

    :cond_23
    add-int/lit8 v4, v4, 0x1

    goto :goto_9

    :cond_26
    return-wide v2
.end method
