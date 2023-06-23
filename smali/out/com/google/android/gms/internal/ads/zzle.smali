.class public final Lcom/google/android/gms/internal/ads/zzle;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.2.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzjx;


# static fields
.field private static final zzapc:Lcom/google/android/gms/internal/ads/zzjy;

.field private static final zzaxb:I

.field private static final zzaxc:[B


# instance fields
.field private final flags:I

.field private zzaih:J

.field private final zzapj:Lcom/google/android/gms/internal/ads/zzpi;

.field private zzaqy:I

.field private zzaqz:I

.field private zzarc:Lcom/google/android/gms/internal/ads/zzjz;

.field private final zzaxd:Lcom/google/android/gms/internal/ads/zzlp;

.field private final zzaxe:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/google/android/gms/internal/ads/zzlj;",
            ">;"
        }
    .end annotation
.end field

.field private final zzaxf:Lcom/google/android/gms/internal/ads/zzpi;

.field private final zzaxg:Lcom/google/android/gms/internal/ads/zzpi;

.field private final zzaxh:Lcom/google/android/gms/internal/ads/zzpi;

.field private final zzaxi:Lcom/google/android/gms/internal/ads/zzpm;

.field private final zzaxj:Lcom/google/android/gms/internal/ads/zzpi;

.field private final zzaxk:[B

.field private final zzaxl:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack<",
            "Lcom/google/android/gms/internal/ads/zzks;",
            ">;"
        }
    .end annotation
.end field

.field private final zzaxm:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcom/google/android/gms/internal/ads/zzlg;",
            ">;"
        }
    .end annotation
.end field

.field private zzaxn:I

.field private zzaxo:I

.field private zzaxp:J

.field private zzaxq:I

.field private zzaxr:Lcom/google/android/gms/internal/ads/zzpi;

.field private zzaxs:J

.field private zzaxt:I

.field private zzaxu:J

.field private zzaxv:Lcom/google/android/gms/internal/ads/zzlj;

.field private zzaxw:I

.field private zzaxx:Z

.field private zzaxy:Lcom/google/android/gms/internal/ads/zzke;

.field private zzaxz:[Lcom/google/android/gms/internal/ads/zzke;

.field private zzaya:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 679
    new-instance v0, Lcom/google/android/gms/internal/ads/zzlh;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzlh;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzle;->zzapc:Lcom/google/android/gms/internal/ads/zzjy;

    const-string v0, "seig"

    .line 680
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzpo;->zzbk(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/google/android/gms/internal/ads/zzle;->zzaxb:I

    const/16 v0, 0x10

    new-array v0, v0, [B

    .line 681
    fill-array-data v0, :array_1a

    sput-object v0, Lcom/google/android/gms/internal/ads/zzle;->zzaxc:[B

    return-void

    nop

    :array_1a
    .array-data 1
        -0x5et
        0x39t
        0x4ft
        0x52t
        0x5at
        -0x65t
        0x4ft
        0x14t
        -0x5et
        0x44t
        0x6ct
        0x42t
        0x7ct
        0x64t
        -0x73t
        -0xct
    .end array-data
.end method

.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzle;-><init>(I)V

    return-void
.end method

.method private constructor <init>(I)V
    .registers 3

    const/4 p1, 0x0

    const/4 v0, 0x0

    .line 3
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzle;-><init>(ILcom/google/android/gms/internal/ads/zzpm;)V

    return-void
.end method

.method private constructor <init>(ILcom/google/android/gms/internal/ads/zzpm;)V
    .registers 3

    const/4 p1, 0x0

    const/4 p2, 0x0

    .line 5
    invoke-direct {p0, p1, p2, p2}, Lcom/google/android/gms/internal/ads/zzle;-><init>(ILcom/google/android/gms/internal/ads/zzpm;Lcom/google/android/gms/internal/ads/zzlp;)V

    return-void
.end method

.method private constructor <init>(ILcom/google/android/gms/internal/ads/zzpm;Lcom/google/android/gms/internal/ads/zzlp;)V
    .registers 4

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzle;->flags:I

    const/4 p1, 0x0

    .line 9
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzle;->zzaxi:Lcom/google/android/gms/internal/ads/zzpm;

    .line 10
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzle;->zzaxd:Lcom/google/android/gms/internal/ads/zzlp;

    .line 11
    new-instance p1, Lcom/google/android/gms/internal/ads/zzpi;

    const/16 p2, 0x10

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/zzpi;-><init>(I)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzle;->zzaxj:Lcom/google/android/gms/internal/ads/zzpi;

    .line 12
    new-instance p1, Lcom/google/android/gms/internal/ads/zzpi;

    sget-object p3, Lcom/google/android/gms/internal/ads/zzph;->zzbjk:[B

    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/ads/zzpi;-><init>([B)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzle;->zzapj:Lcom/google/android/gms/internal/ads/zzpi;

    .line 13
    new-instance p1, Lcom/google/android/gms/internal/ads/zzpi;

    const/4 p3, 0x5

    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/ads/zzpi;-><init>(I)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzle;->zzaxf:Lcom/google/android/gms/internal/ads/zzpi;

    .line 14
    new-instance p1, Lcom/google/android/gms/internal/ads/zzpi;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzpi;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzle;->zzaxg:Lcom/google/android/gms/internal/ads/zzpi;

    .line 15
    new-instance p1, Lcom/google/android/gms/internal/ads/zzpi;

    const/4 p3, 0x1

    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/ads/zzpi;-><init>(I)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzle;->zzaxh:Lcom/google/android/gms/internal/ads/zzpi;

    new-array p1, p2, [B

    .line 16
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzle;->zzaxk:[B

    .line 17
    new-instance p1, Ljava/util/Stack;

    invoke-direct {p1}, Ljava/util/Stack;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzle;->zzaxl:Ljava/util/Stack;

    .line 18
    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzle;->zzaxm:Ljava/util/LinkedList;

    .line 19
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzle;->zzaxe:Landroid/util/SparseArray;

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    .line 20
    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzle;->zzaih:J

    .line 21
    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzle;->zzaxu:J

    .line 22
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzle;->zzha()V

    return-void
.end method

.method private static zza(Lcom/google/android/gms/internal/ads/zzpi;ILcom/google/android/gms/internal/ads/zzlr;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzht;
        }
    .end annotation

    add-int/lit8 p1, p1, 0x8

    .line 619
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzpi;->zzbk(I)V

    .line 620
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzpi;->readInt()I

    move-result p1

    .line 621
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzkt;->zzat(I)I

    move-result p1

    and-int/lit8 v0, p1, 0x1

    if-nez v0, :cond_61

    and-int/lit8 p1, p1, 0x2

    const/4 v0, 0x0

    if-eqz p1, :cond_18

    const/4 p1, 0x1

    goto :goto_19

    :cond_18
    const/4 p1, 0x0

    .line 625
    :goto_19
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzpi;->zziz()I

    move-result v1

    .line 626
    iget v2, p2, Lcom/google/android/gms/internal/ads/zzlr;->zzawu:I

    if-ne v1, v2, :cond_3e

    .line 628
    iget-object v2, p2, Lcom/google/android/gms/internal/ads/zzlr;->zzbas:[Z

    invoke-static {v2, v0, v1, p1}, Ljava/util/Arrays;->fill([ZIIZ)V

    .line 629
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzpi;->zziu()I

    move-result p1

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/zzlr;->zzav(I)V

    .line 631
    iget-object p1, p2, Lcom/google/android/gms/internal/ads/zzlr;->zzbav:Lcom/google/android/gms/internal/ads/zzpi;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzpi;->data:[B

    iget v1, p2, Lcom/google/android/gms/internal/ads/zzlr;->zzbau:I

    invoke-virtual {p0, p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzpi;->zze([BII)V

    .line 632
    iget-object p0, p2, Lcom/google/android/gms/internal/ads/zzlr;->zzbav:Lcom/google/android/gms/internal/ads/zzpi;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzpi;->zzbk(I)V

    .line 633
    iput-boolean v0, p2, Lcom/google/android/gms/internal/ads/zzlr;->zzbaw:Z

    return-void

    .line 627
    :cond_3e
    new-instance p0, Lcom/google/android/gms/internal/ads/zzht;

    iget p1, p2, Lcom/google/android/gms/internal/ads/zzlr;->zzawu:I

    const/16 p2, 0x29

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string p2, "Length mismatch: "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzht;-><init>(Ljava/lang/String;)V

    throw p0

    .line 623
    :cond_61
    new-instance p0, Lcom/google/android/gms/internal/ads/zzht;

    const-string p1, "Overriding TrackEncryptionBox parameters is unsupported."

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzht;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static zzb(Ljava/util/List;)Lcom/google/android/gms/internal/ads/zzjl;
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/ads/zzkv;",
            ">;)",
            "Lcom/google/android/gms/internal/ads/zzjl;"
        }
    .end annotation

    .line 636
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v4, v2

    const/4 v3, 0x0

    :goto_8
    if-ge v3, v0, :cond_b9

    .line 638
    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/internal/ads/zzkv;

    .line 639
    iget v6, v5, Lcom/google/android/gms/internal/ads/zzkv;->type:I

    sget v7, Lcom/google/android/gms/internal/ads/zzkt;->zzauj:I

    if-ne v6, v7, :cond_b5

    if-nez v4, :cond_1d

    .line 641
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 642
    :cond_1d
    iget-object v5, v5, Lcom/google/android/gms/internal/ads/zzkv;->zzawl:Lcom/google/android/gms/internal/ads/zzpi;

    iget-object v5, v5, Lcom/google/android/gms/internal/ads/zzpi;->data:[B

    .line 645
    new-instance v6, Lcom/google/android/gms/internal/ads/zzpi;

    invoke-direct {v6, v5}, Lcom/google/android/gms/internal/ads/zzpi;-><init>([B)V

    .line 646
    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzpi;->limit()I

    move-result v7

    const/16 v8, 0x20

    if-ge v7, v8, :cond_30

    :goto_2e
    move-object v6, v2

    goto :goto_99

    .line 648
    :cond_30
    invoke-virtual {v6, v1}, Lcom/google/android/gms/internal/ads/zzpi;->zzbk(I)V

    .line 649
    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzpi;->readInt()I

    move-result v7

    .line 650
    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzpi;->zziu()I

    move-result v8

    add-int/lit8 v8, v8, 0x4

    if-eq v7, v8, :cond_40

    goto :goto_2e

    .line 652
    :cond_40
    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzpi;->readInt()I

    move-result v7

    .line 653
    sget v8, Lcom/google/android/gms/internal/ads/zzkt;->zzauj:I

    if-eq v7, v8, :cond_49

    goto :goto_2e

    .line 655
    :cond_49
    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzpi;->readInt()I

    move-result v7

    invoke-static {v7}, Lcom/google/android/gms/internal/ads/zzkt;->zzas(I)I

    move-result v7

    const/4 v8, 0x1

    if-le v7, v8, :cond_6d

    const/16 v6, 0x25

    .line 657
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v6, "Unsupported pssh version: "

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "PsshAtomUtil"

    invoke-static {v7, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2e

    .line 659
    :cond_6d
    new-instance v9, Ljava/util/UUID;

    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzpi;->readLong()J

    move-result-wide v10

    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzpi;->readLong()J

    move-result-wide v12

    invoke-direct {v9, v10, v11, v12, v13}, Ljava/util/UUID;-><init>(JJ)V

    if-ne v7, v8, :cond_85

    .line 661
    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzpi;->zziz()I

    move-result v7

    shl-int/lit8 v7, v7, 0x4

    .line 662
    invoke-virtual {v6, v7}, Lcom/google/android/gms/internal/ads/zzpi;->zzbl(I)V

    .line 663
    :cond_85
    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzpi;->zziz()I

    move-result v7

    .line 664
    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzpi;->zziu()I

    move-result v8

    if-eq v7, v8, :cond_90

    goto :goto_2e

    .line 666
    :cond_90
    new-array v8, v7, [B

    .line 667
    invoke-virtual {v6, v8, v1, v7}, Lcom/google/android/gms/internal/ads/zzpi;->zze([BII)V

    .line 668
    invoke-static {v9, v8}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v6

    :goto_99
    if-nez v6, :cond_9d

    move-object v6, v2

    goto :goto_a1

    .line 672
    :cond_9d
    iget-object v6, v6, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v6, Ljava/util/UUID;

    :goto_a1
    if-nez v6, :cond_ab

    const-string v5, "FragmentedMp4Extractor"

    const-string v6, "Skipped pssh atom (failed to extract uuid)"

    .line 675
    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b5

    .line 676
    :cond_ab
    new-instance v7, Lcom/google/android/gms/internal/ads/zzjl$zza;

    const-string v8, "video/mp4"

    invoke-direct {v7, v6, v8, v5}, Lcom/google/android/gms/internal/ads/zzjl$zza;-><init>(Ljava/util/UUID;Ljava/lang/String;[B)V

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_b5
    :goto_b5
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_8

    :cond_b9
    if-nez v4, :cond_bc

    return-object v2

    .line 678
    :cond_bc
    new-instance p0, Lcom/google/android/gms/internal/ads/zzjl;

    invoke-direct {p0, v4}, Lcom/google/android/gms/internal/ads/zzjl;-><init>(Ljava/util/List;)V

    return-object p0
.end method

.method private final zzeb(J)V
    .registers 55
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzht;
        }
    .end annotation

    move-object/from16 v0, p0

    .line 325
    :cond_2
    :goto_2
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzle;->zzaxl:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_6f5

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzle;->zzaxl:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzks;

    iget-wide v1, v1, Lcom/google/android/gms/internal/ads/zzks;->zzasm:J

    cmp-long v3, v1, p1

    if-nez v3, :cond_6f5

    .line 326
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzle;->zzaxl:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzks;

    .line 327
    iget v2, v1, Lcom/google/android/gms/internal/ads/zzks;->type:I

    sget v3, Lcom/google/android/gms/internal/ads/zzkt;->zzatq:I

    const/4 v4, 0x0

    const/16 v5, 0xc

    const/4 v6, 0x4

    const/16 v7, 0x8

    const/4 v9, 0x1

    if-ne v2, v3, :cond_1c8

    const-string v2, "Unexpected moov box."

    .line 329
    invoke-static {v9, v2}, Lcom/google/android/gms/internal/ads/zzpb;->checkState(ZLjava/lang/Object;)V

    .line 330
    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzks;->zzasn:Ljava/util/List;

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzle;->zzb(Ljava/util/List;)Lcom/google/android/gms/internal/ads/zzjl;

    move-result-object v2

    .line 331
    sget v3, Lcom/google/android/gms/internal/ads/zzkt;->zzaub:I

    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/ads/zzks;->zzar(I)Lcom/google/android/gms/internal/ads/zzks;

    move-result-object v3

    .line 332
    new-instance v15, Landroid/util/SparseArray;

    invoke-direct {v15}, Landroid/util/SparseArray;-><init>()V

    const-wide v10, -0x7fffffffffffffffL    # -4.9E-324

    .line 334
    iget-object v12, v3, Lcom/google/android/gms/internal/ads/zzks;->zzasn:Ljava/util/List;

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v12

    move-wide/from16 v16, v10

    const/4 v10, 0x0

    :goto_51
    if-ge v10, v12, :cond_be

    .line 336
    iget-object v11, v3, Lcom/google/android/gms/internal/ads/zzks;->zzasn:Ljava/util/List;

    invoke-interface {v11, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/google/android/gms/internal/ads/zzkv;

    .line 337
    iget v13, v11, Lcom/google/android/gms/internal/ads/zzkv;->type:I

    sget v14, Lcom/google/android/gms/internal/ads/zzkt;->zzatn:I

    if-ne v13, v14, :cond_98

    .line 338
    iget-object v11, v11, Lcom/google/android/gms/internal/ads/zzkv;->zzawl:Lcom/google/android/gms/internal/ads/zzpi;

    .line 339
    invoke-virtual {v11, v5}, Lcom/google/android/gms/internal/ads/zzpi;->zzbk(I)V

    .line 340
    invoke-virtual {v11}, Lcom/google/android/gms/internal/ads/zzpi;->readInt()I

    move-result v13

    .line 341
    invoke-virtual {v11}, Lcom/google/android/gms/internal/ads/zzpi;->zziz()I

    move-result v14

    sub-int/2addr v14, v9

    .line 342
    invoke-virtual {v11}, Lcom/google/android/gms/internal/ads/zzpi;->zziz()I

    move-result v5

    .line 343
    invoke-virtual {v11}, Lcom/google/android/gms/internal/ads/zzpi;->zziz()I

    move-result v8

    .line 344
    invoke-virtual {v11}, Lcom/google/android/gms/internal/ads/zzpi;->readInt()I

    move-result v11

    .line 345
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    new-instance v9, Lcom/google/android/gms/internal/ads/zzld;

    invoke-direct {v9, v14, v5, v8, v11}, Lcom/google/android/gms/internal/ads/zzld;-><init>(IIII)V

    invoke-static {v13, v9}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v5

    .line 347
    iget-object v8, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    iget-object v5, v5, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Lcom/google/android/gms/internal/ads/zzld;

    invoke-virtual {v15, v8, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_b8

    .line 348
    :cond_98
    iget v5, v11, Lcom/google/android/gms/internal/ads/zzkv;->type:I

    sget v8, Lcom/google/android/gms/internal/ads/zzkt;->zzauc:I

    if-ne v5, v8, :cond_b8

    .line 349
    iget-object v5, v11, Lcom/google/android/gms/internal/ads/zzkv;->zzawl:Lcom/google/android/gms/internal/ads/zzpi;

    .line 350
    invoke-virtual {v5, v7}, Lcom/google/android/gms/internal/ads/zzpi;->zzbk(I)V

    .line 351
    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzpi;->readInt()I

    move-result v8

    .line 352
    invoke-static {v8}, Lcom/google/android/gms/internal/ads/zzkt;->zzas(I)I

    move-result v8

    if-nez v8, :cond_b2

    .line 353
    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzpi;->zziw()J

    move-result-wide v8

    goto :goto_b6

    :cond_b2
    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzpi;->zzja()J

    move-result-wide v8

    :goto_b6
    move-wide/from16 v16, v8

    :cond_b8
    :goto_b8
    add-int/lit8 v10, v10, 0x1

    const/16 v5, 0xc

    const/4 v9, 0x1

    goto :goto_51

    .line 356
    :cond_be
    new-instance v3, Landroid/util/SparseArray;

    invoke-direct {v3}, Landroid/util/SparseArray;-><init>()V

    .line 357
    iget-object v5, v1, Lcom/google/android/gms/internal/ads/zzks;->zzaso:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    const/4 v8, 0x0

    :goto_ca
    if-ge v8, v5, :cond_fa

    .line 359
    iget-object v9, v1, Lcom/google/android/gms/internal/ads/zzks;->zzaso:Ljava/util/List;

    invoke-interface {v9, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    move-object v10, v9

    check-cast v10, Lcom/google/android/gms/internal/ads/zzks;

    .line 360
    iget v9, v10, Lcom/google/android/gms/internal/ads/zzks;->type:I

    sget v11, Lcom/google/android/gms/internal/ads/zzkt;->zzats:I

    if-ne v9, v11, :cond_f3

    .line 361
    sget v9, Lcom/google/android/gms/internal/ads/zzkt;->zzatr:I

    invoke-virtual {v1, v9}, Lcom/google/android/gms/internal/ads/zzks;->zzaq(I)Lcom/google/android/gms/internal/ads/zzkv;

    move-result-object v11

    const/4 v9, 0x0

    move-wide/from16 v12, v16

    move-object v14, v2

    move-object v7, v15

    move v15, v9

    invoke-static/range {v10 .. v15}, Lcom/google/android/gms/internal/ads/zzku;->zza(Lcom/google/android/gms/internal/ads/zzks;Lcom/google/android/gms/internal/ads/zzkv;JLcom/google/android/gms/internal/ads/zzjl;Z)Lcom/google/android/gms/internal/ads/zzlp;

    move-result-object v9

    if-eqz v9, :cond_f4

    .line 363
    iget v10, v9, Lcom/google/android/gms/internal/ads/zzlp;->id:I

    invoke-virtual {v3, v10, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_f4

    :cond_f3
    move-object v7, v15

    :cond_f4
    :goto_f4
    add-int/lit8 v8, v8, 0x1

    move-object v15, v7

    const/16 v7, 0x8

    goto :goto_ca

    :cond_fa
    move-object v7, v15

    .line 365
    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v1

    .line 366
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzle;->zzaxe:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-nez v2, :cond_199

    const/4 v2, 0x0

    :goto_108
    if-ge v2, v1, :cond_13c

    .line 368
    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/internal/ads/zzlp;

    .line 369
    new-instance v8, Lcom/google/android/gms/internal/ads/zzlj;

    iget-object v9, v0, Lcom/google/android/gms/internal/ads/zzle;->zzarc:Lcom/google/android/gms/internal/ads/zzjz;

    iget v10, v5, Lcom/google/android/gms/internal/ads/zzlp;->type:I

    invoke-interface {v9, v2, v10}, Lcom/google/android/gms/internal/ads/zzjz;->zzc(II)Lcom/google/android/gms/internal/ads/zzke;

    move-result-object v9

    invoke-direct {v8, v9}, Lcom/google/android/gms/internal/ads/zzlj;-><init>(Lcom/google/android/gms/internal/ads/zzke;)V

    .line 370
    iget v9, v5, Lcom/google/android/gms/internal/ads/zzlp;->id:I

    invoke-virtual {v7, v9}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/google/android/gms/internal/ads/zzld;

    invoke-virtual {v8, v5, v9}, Lcom/google/android/gms/internal/ads/zzlj;->zza(Lcom/google/android/gms/internal/ads/zzlp;Lcom/google/android/gms/internal/ads/zzld;)V

    .line 371
    iget-object v9, v0, Lcom/google/android/gms/internal/ads/zzle;->zzaxe:Landroid/util/SparseArray;

    iget v10, v5, Lcom/google/android/gms/internal/ads/zzlp;->id:I

    invoke-virtual {v9, v10, v8}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 372
    iget-wide v8, v0, Lcom/google/android/gms/internal/ads/zzle;->zzaih:J

    iget-wide v10, v5, Lcom/google/android/gms/internal/ads/zzlp;->zzaih:J

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v8

    iput-wide v8, v0, Lcom/google/android/gms/internal/ads/zzle;->zzaih:J

    add-int/lit8 v2, v2, 0x1

    goto :goto_108

    .line 375
    :cond_13c
    iget v1, v0, Lcom/google/android/gms/internal/ads/zzle;->flags:I

    and-int/2addr v1, v6

    if-eqz v1, :cond_161

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzle;->zzaxy:Lcom/google/android/gms/internal/ads/zzke;

    if-nez v1, :cond_161

    .line 376
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzle;->zzarc:Lcom/google/android/gms/internal/ads/zzjz;

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzle;->zzaxe:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    invoke-interface {v1, v2, v6}, Lcom/google/android/gms/internal/ads/zzjz;->zzc(II)Lcom/google/android/gms/internal/ads/zzke;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzle;->zzaxy:Lcom/google/android/gms/internal/ads/zzke;

    const-wide v2, 0x7fffffffffffffffL

    const-string v5, "application/x-emsg"

    .line 377
    invoke-static {v4, v5, v2, v3}, Lcom/google/android/gms/internal/ads/zzhq;->zza(Ljava/lang/String;Ljava/lang/String;J)Lcom/google/android/gms/internal/ads/zzhq;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/google/android/gms/internal/ads/zzke;->zze(Lcom/google/android/gms/internal/ads/zzhq;)V

    .line 378
    :cond_161
    iget v1, v0, Lcom/google/android/gms/internal/ads/zzle;->flags:I

    const/16 v2, 0x8

    and-int/2addr v1, v2

    if-eqz v1, :cond_192

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzle;->zzaxz:[Lcom/google/android/gms/internal/ads/zzke;

    if-nez v1, :cond_192

    .line 379
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzle;->zzarc:Lcom/google/android/gms/internal/ads/zzjz;

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzle;->zzaxe:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    const/4 v3, 0x1

    add-int/2addr v2, v3

    const/4 v3, 0x3

    invoke-interface {v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzjz;->zzc(II)Lcom/google/android/gms/internal/ads/zzke;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, -0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v3, "application/cea-608"

    .line 380
    invoke-static/range {v2 .. v8}, Lcom/google/android/gms/internal/ads/zzhq;->zza(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Lcom/google/android/gms/internal/ads/zzjl;)Lcom/google/android/gms/internal/ads/zzhq;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/google/android/gms/internal/ads/zzke;->zze(Lcom/google/android/gms/internal/ads/zzhq;)V

    const/4 v2, 0x1

    new-array v2, v2, [Lcom/google/android/gms/internal/ads/zzke;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    .line 381
    iput-object v2, v0, Lcom/google/android/gms/internal/ads/zzle;->zzaxz:[Lcom/google/android/gms/internal/ads/zzke;

    .line 382
    :cond_192
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzle;->zzarc:Lcom/google/android/gms/internal/ads/zzjz;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzjz;->zzgr()V

    goto/16 :goto_2

    .line 383
    :cond_199
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzle;->zzaxe:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ne v2, v1, :cond_1a3

    const/4 v9, 0x1

    goto :goto_1a4

    :cond_1a3
    const/4 v9, 0x0

    :goto_1a4
    invoke-static {v9}, Lcom/google/android/gms/internal/ads/zzpb;->checkState(Z)V

    const/4 v8, 0x0

    :goto_1a8
    if-ge v8, v1, :cond_2

    .line 385
    invoke-virtual {v3, v8}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/ads/zzlp;

    .line 386
    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzle;->zzaxe:Landroid/util/SparseArray;

    iget v5, v2, Lcom/google/android/gms/internal/ads/zzlp;->id:I

    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/ads/zzlj;

    iget v5, v2, Lcom/google/android/gms/internal/ads/zzlp;->id:I

    invoke-virtual {v7, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/internal/ads/zzld;

    invoke-virtual {v4, v2, v5}, Lcom/google/android/gms/internal/ads/zzlj;->zza(Lcom/google/android/gms/internal/ads/zzlp;Lcom/google/android/gms/internal/ads/zzld;)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_1a8

    .line 389
    :cond_1c8
    iget v2, v1, Lcom/google/android/gms/internal/ads/zzks;->type:I

    sget v3, Lcom/google/android/gms/internal/ads/zzkt;->zzatz:I

    if-ne v2, v3, :cond_6de

    .line 391
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzle;->zzaxe:Landroid/util/SparseArray;

    iget v3, v0, Lcom/google/android/gms/internal/ads/zzle;->flags:I

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzle;->zzaxk:[B

    .line 392
    iget-object v7, v1, Lcom/google/android/gms/internal/ads/zzks;->zzaso:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    const/4 v8, 0x0

    :goto_1db
    if-ge v8, v7, :cond_6b2

    .line 394
    iget-object v9, v1, Lcom/google/android/gms/internal/ads/zzks;->zzaso:Ljava/util/List;

    invoke-interface {v9, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/google/android/gms/internal/ads/zzks;

    .line 395
    iget v10, v9, Lcom/google/android/gms/internal/ads/zzks;->type:I

    sget v11, Lcom/google/android/gms/internal/ads/zzkt;->zzaua:I

    if-ne v10, v11, :cond_691

    .line 397
    sget v10, Lcom/google/android/gms/internal/ads/zzkt;->zzatm:I

    invoke-virtual {v9, v10}, Lcom/google/android/gms/internal/ads/zzks;->zzaq(I)Lcom/google/android/gms/internal/ads/zzkv;

    move-result-object v10

    .line 398
    iget-object v10, v10, Lcom/google/android/gms/internal/ads/zzkv;->zzawl:Lcom/google/android/gms/internal/ads/zzpi;

    const/16 v11, 0x8

    .line 399
    invoke-virtual {v10, v11}, Lcom/google/android/gms/internal/ads/zzpi;->zzbk(I)V

    .line 400
    invoke-virtual {v10}, Lcom/google/android/gms/internal/ads/zzpi;->readInt()I

    move-result v11

    .line 401
    invoke-static {v11}, Lcom/google/android/gms/internal/ads/zzkt;->zzat(I)I

    move-result v11

    .line 402
    invoke-virtual {v10}, Lcom/google/android/gms/internal/ads/zzpi;->readInt()I

    move-result v12

    and-int/lit8 v13, v3, 0x10

    if-nez v13, :cond_209

    goto :goto_20a

    :cond_209
    const/4 v12, 0x0

    .line 403
    :goto_20a
    invoke-virtual {v2, v12}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/google/android/gms/internal/ads/zzlj;

    if-nez v12, :cond_214

    move-object v12, v4

    goto :goto_25f

    :cond_214
    and-int/lit8 v13, v11, 0x1

    if-eqz v13, :cond_224

    .line 407
    invoke-virtual {v10}, Lcom/google/android/gms/internal/ads/zzpi;->zzja()J

    move-result-wide v13

    .line 408
    iget-object v15, v12, Lcom/google/android/gms/internal/ads/zzlj;->zzazj:Lcom/google/android/gms/internal/ads/zzlr;

    iput-wide v13, v15, Lcom/google/android/gms/internal/ads/zzlr;->zzbai:J

    .line 409
    iget-object v15, v12, Lcom/google/android/gms/internal/ads/zzlj;->zzazj:Lcom/google/android/gms/internal/ads/zzlr;

    iput-wide v13, v15, Lcom/google/android/gms/internal/ads/zzlr;->zzbaj:J

    .line 410
    :cond_224
    iget-object v13, v12, Lcom/google/android/gms/internal/ads/zzlj;->zzazl:Lcom/google/android/gms/internal/ads/zzld;

    and-int/lit8 v14, v11, 0x2

    if-eqz v14, :cond_231

    .line 412
    invoke-virtual {v10}, Lcom/google/android/gms/internal/ads/zzpi;->zziz()I

    move-result v14

    const/4 v15, 0x1

    sub-int/2addr v14, v15

    goto :goto_233

    :cond_231
    iget v14, v13, Lcom/google/android/gms/internal/ads/zzld;->zzaxa:I

    :goto_233
    and-int/lit8 v15, v11, 0x8

    if-eqz v15, :cond_23c

    .line 414
    invoke-virtual {v10}, Lcom/google/android/gms/internal/ads/zzpi;->zziz()I

    move-result v15

    goto :goto_23e

    :cond_23c
    iget v15, v13, Lcom/google/android/gms/internal/ads/zzld;->duration:I

    :goto_23e
    and-int/lit8 v16, v11, 0x10

    if-eqz v16, :cond_249

    .line 416
    invoke-virtual {v10}, Lcom/google/android/gms/internal/ads/zzpi;->zziz()I

    move-result v16

    move/from16 v4, v16

    goto :goto_24b

    :cond_249
    iget v4, v13, Lcom/google/android/gms/internal/ads/zzld;->size:I

    :goto_24b
    and-int/lit8 v11, v11, 0x20

    if-eqz v11, :cond_254

    .line 418
    invoke-virtual {v10}, Lcom/google/android/gms/internal/ads/zzpi;->zziz()I

    move-result v10

    goto :goto_256

    :cond_254
    iget v10, v13, Lcom/google/android/gms/internal/ads/zzld;->flags:I

    .line 419
    :goto_256
    iget-object v11, v12, Lcom/google/android/gms/internal/ads/zzlj;->zzazj:Lcom/google/android/gms/internal/ads/zzlr;

    new-instance v13, Lcom/google/android/gms/internal/ads/zzld;

    invoke-direct {v13, v14, v15, v4, v10}, Lcom/google/android/gms/internal/ads/zzld;-><init>(IIII)V

    iput-object v13, v11, Lcom/google/android/gms/internal/ads/zzlr;->zzbag:Lcom/google/android/gms/internal/ads/zzld;

    :goto_25f
    if-eqz v12, :cond_691

    .line 423
    iget-object v4, v12, Lcom/google/android/gms/internal/ads/zzlj;->zzazj:Lcom/google/android/gms/internal/ads/zzlr;

    .line 424
    iget-wide v10, v4, Lcom/google/android/gms/internal/ads/zzlr;->zzbax:J

    .line 425
    invoke-virtual {v12}, Lcom/google/android/gms/internal/ads/zzlj;->reset()V

    .line 426
    sget v13, Lcom/google/android/gms/internal/ads/zzkt;->zzatl:I

    invoke-virtual {v9, v13}, Lcom/google/android/gms/internal/ads/zzks;->zzaq(I)Lcom/google/android/gms/internal/ads/zzkv;

    move-result-object v13

    if-eqz v13, :cond_295

    and-int/lit8 v13, v3, 0x2

    if-nez v13, :cond_295

    .line 428
    sget v10, Lcom/google/android/gms/internal/ads/zzkt;->zzatl:I

    invoke-virtual {v9, v10}, Lcom/google/android/gms/internal/ads/zzks;->zzaq(I)Lcom/google/android/gms/internal/ads/zzkv;

    move-result-object v10

    iget-object v10, v10, Lcom/google/android/gms/internal/ads/zzkv;->zzawl:Lcom/google/android/gms/internal/ads/zzpi;

    const/16 v11, 0x8

    .line 429
    invoke-virtual {v10, v11}, Lcom/google/android/gms/internal/ads/zzpi;->zzbk(I)V

    .line 430
    invoke-virtual {v10}, Lcom/google/android/gms/internal/ads/zzpi;->readInt()I

    move-result v11

    .line 431
    invoke-static {v11}, Lcom/google/android/gms/internal/ads/zzkt;->zzas(I)I

    move-result v11

    const/4 v13, 0x1

    if-ne v11, v13, :cond_291

    .line 432
    invoke-virtual {v10}, Lcom/google/android/gms/internal/ads/zzpi;->zzja()J

    move-result-wide v10

    goto :goto_295

    :cond_291
    invoke-virtual {v10}, Lcom/google/android/gms/internal/ads/zzpi;->zziw()J

    move-result-wide v10

    .line 437
    :cond_295
    :goto_295
    iget-object v13, v9, Lcom/google/android/gms/internal/ads/zzks;->zzasn:Ljava/util/List;

    .line 438
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v14

    move-object/from16 v19, v2

    const/4 v2, 0x0

    const/4 v6, 0x0

    const/4 v15, 0x0

    :goto_2a0
    if-ge v15, v14, :cond_2ce

    .line 440
    invoke-interface {v13, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v20

    move/from16 v21, v7

    move-object/from16 v7, v20

    check-cast v7, Lcom/google/android/gms/internal/ads/zzkv;

    move-wide/from16 v22, v10

    .line 441
    iget v10, v7, Lcom/google/android/gms/internal/ads/zzkv;->type:I

    sget v11, Lcom/google/android/gms/internal/ads/zzkt;->zzato:I

    if-ne v10, v11, :cond_2c5

    .line 442
    iget-object v7, v7, Lcom/google/android/gms/internal/ads/zzkv;->zzawl:Lcom/google/android/gms/internal/ads/zzpi;

    const/16 v10, 0xc

    .line 443
    invoke-virtual {v7, v10}, Lcom/google/android/gms/internal/ads/zzpi;->zzbk(I)V

    .line 444
    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/zzpi;->zziz()I

    move-result v7

    if-lez v7, :cond_2c7

    add-int/2addr v2, v7

    add-int/lit8 v6, v6, 0x1

    goto :goto_2c7

    :cond_2c5
    const/16 v10, 0xc

    :cond_2c7
    :goto_2c7
    add-int/lit8 v15, v15, 0x1

    move/from16 v7, v21

    move-wide/from16 v10, v22

    goto :goto_2a0

    :cond_2ce
    move/from16 v21, v7

    move-wide/from16 v22, v10

    const/4 v7, 0x0

    const/16 v10, 0xc

    .line 449
    iput v7, v12, Lcom/google/android/gms/internal/ads/zzlj;->zzazo:I

    .line 450
    iput v7, v12, Lcom/google/android/gms/internal/ads/zzlj;->zzazn:I

    .line 451
    iput v7, v12, Lcom/google/android/gms/internal/ads/zzlj;->zzazm:I

    .line 452
    iget-object v7, v12, Lcom/google/android/gms/internal/ads/zzlj;->zzazj:Lcom/google/android/gms/internal/ads/zzlr;

    .line 453
    iput v6, v7, Lcom/google/android/gms/internal/ads/zzlr;->zzbak:I

    .line 454
    iput v2, v7, Lcom/google/android/gms/internal/ads/zzlr;->zzawu:I

    .line 455
    iget-object v11, v7, Lcom/google/android/gms/internal/ads/zzlr;->zzbam:[I

    if-eqz v11, :cond_2ea

    iget-object v11, v7, Lcom/google/android/gms/internal/ads/zzlr;->zzbam:[I

    array-length v11, v11

    if-ge v11, v6, :cond_2f2

    .line 456
    :cond_2ea
    new-array v11, v6, [J

    iput-object v11, v7, Lcom/google/android/gms/internal/ads/zzlr;->zzbal:[J

    .line 457
    new-array v6, v6, [I

    iput-object v6, v7, Lcom/google/android/gms/internal/ads/zzlr;->zzbam:[I

    .line 458
    :cond_2f2
    iget-object v6, v7, Lcom/google/android/gms/internal/ads/zzlr;->zzban:[I

    if-eqz v6, :cond_2fb

    iget-object v6, v7, Lcom/google/android/gms/internal/ads/zzlr;->zzban:[I

    array-length v6, v6

    if-ge v6, v2, :cond_313

    :cond_2fb
    mul-int/lit8 v2, v2, 0x7d

    .line 459
    div-int/lit8 v2, v2, 0x64

    .line 460
    new-array v6, v2, [I

    iput-object v6, v7, Lcom/google/android/gms/internal/ads/zzlr;->zzban:[I

    .line 461
    new-array v6, v2, [I

    iput-object v6, v7, Lcom/google/android/gms/internal/ads/zzlr;->zzbao:[I

    .line 462
    new-array v6, v2, [J

    iput-object v6, v7, Lcom/google/android/gms/internal/ads/zzlr;->zzbap:[J

    .line 463
    new-array v6, v2, [Z

    iput-object v6, v7, Lcom/google/android/gms/internal/ads/zzlr;->zzbaq:[Z

    .line 464
    new-array v2, v2, [Z

    iput-object v2, v7, Lcom/google/android/gms/internal/ads/zzlr;->zzbas:[Z

    :cond_313
    const/4 v2, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_316
    const-wide/16 v24, 0x0

    if-ge v2, v14, :cond_4af

    .line 468
    invoke-interface {v13, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v18

    move-object/from16 v10, v18

    check-cast v10, Lcom/google/android/gms/internal/ads/zzkv;

    .line 469
    iget v15, v10, Lcom/google/android/gms/internal/ads/zzkv;->type:I

    sget v11, Lcom/google/android/gms/internal/ads/zzkt;->zzato:I

    if-ne v15, v11, :cond_47f

    add-int/lit8 v11, v6, 0x1

    .line 470
    iget-object v10, v10, Lcom/google/android/gms/internal/ads/zzkv;->zzawl:Lcom/google/android/gms/internal/ads/zzpi;

    const/16 v15, 0x8

    .line 471
    invoke-virtual {v10, v15}, Lcom/google/android/gms/internal/ads/zzpi;->zzbk(I)V

    .line 472
    invoke-virtual {v10}, Lcom/google/android/gms/internal/ads/zzpi;->readInt()I

    move-result v15

    .line 473
    invoke-static {v15}, Lcom/google/android/gms/internal/ads/zzkt;->zzat(I)I

    move-result v15

    move/from16 v27, v11

    .line 474
    iget-object v11, v12, Lcom/google/android/gms/internal/ads/zzlj;->zzazk:Lcom/google/android/gms/internal/ads/zzlp;

    move-object/from16 v28, v13

    .line 475
    iget-object v13, v12, Lcom/google/android/gms/internal/ads/zzlj;->zzazj:Lcom/google/android/gms/internal/ads/zzlr;

    move/from16 v29, v14

    .line 476
    iget-object v14, v13, Lcom/google/android/gms/internal/ads/zzlr;->zzbag:Lcom/google/android/gms/internal/ads/zzld;

    .line 477
    iget-object v0, v13, Lcom/google/android/gms/internal/ads/zzlr;->zzbam:[I

    invoke-virtual {v10}, Lcom/google/android/gms/internal/ads/zzpi;->zziz()I

    move-result v30

    aput v30, v0, v6

    .line 478
    iget-object v0, v13, Lcom/google/android/gms/internal/ads/zzlr;->zzbal:[J

    move-object/from16 v31, v4

    move-object/from16 v30, v5

    iget-wide v4, v13, Lcom/google/android/gms/internal/ads/zzlr;->zzbai:J

    aput-wide v4, v0, v6

    and-int/lit8 v0, v15, 0x1

    if-eqz v0, :cond_36e

    .line 480
    iget-object v0, v13, Lcom/google/android/gms/internal/ads/zzlr;->zzbal:[J

    aget-wide v4, v0, v6

    move-object/from16 v32, v1

    invoke-virtual {v10}, Lcom/google/android/gms/internal/ads/zzpi;->readInt()I

    move-result v1

    move/from16 v33, v8

    move-object/from16 v34, v9

    int-to-long v8, v1

    add-long/2addr v4, v8

    aput-wide v4, v0, v6

    goto :goto_374

    :cond_36e
    move-object/from16 v32, v1

    move/from16 v33, v8

    move-object/from16 v34, v9

    :goto_374
    and-int/lit8 v0, v15, 0x4

    if-eqz v0, :cond_37a

    const/4 v0, 0x1

    goto :goto_37b

    :cond_37a
    const/4 v0, 0x0

    .line 482
    :goto_37b
    iget v1, v14, Lcom/google/android/gms/internal/ads/zzld;->flags:I

    if-eqz v0, :cond_383

    .line 484
    invoke-virtual {v10}, Lcom/google/android/gms/internal/ads/zzpi;->zziz()I

    move-result v1

    :cond_383
    and-int/lit16 v4, v15, 0x100

    if-eqz v4, :cond_389

    const/4 v4, 0x1

    goto :goto_38a

    :cond_389
    const/4 v4, 0x0

    :goto_38a
    and-int/lit16 v5, v15, 0x200

    if-eqz v5, :cond_390

    const/4 v5, 0x1

    goto :goto_391

    :cond_390
    const/4 v5, 0x0

    :goto_391
    and-int/lit16 v8, v15, 0x400

    if-eqz v8, :cond_397

    const/4 v8, 0x1

    goto :goto_398

    :cond_397
    const/4 v8, 0x0

    :goto_398
    and-int/lit16 v9, v15, 0x800

    if-eqz v9, :cond_39e

    const/4 v9, 0x1

    goto :goto_39f

    :cond_39e
    const/4 v9, 0x0

    .line 490
    :goto_39f
    iget-object v15, v11, Lcom/google/android/gms/internal/ads/zzlp;->zzbad:[J

    if-eqz v15, :cond_3c4

    iget-object v15, v11, Lcom/google/android/gms/internal/ads/zzlp;->zzbad:[J

    array-length v15, v15

    move/from16 v35, v1

    const/4 v1, 0x1

    if-ne v15, v1, :cond_3c6

    iget-object v1, v11, Lcom/google/android/gms/internal/ads/zzlp;->zzbad:[J

    const/4 v15, 0x0

    aget-wide v36, v1, v15

    cmp-long v1, v36, v24

    if-nez v1, :cond_3c6

    .line 491
    iget-object v1, v11, Lcom/google/android/gms/internal/ads/zzlp;->zzbae:[J

    aget-wide v36, v1, v15

    const-wide/16 v38, 0x3e8

    move v15, v2

    iget-wide v1, v11, Lcom/google/android/gms/internal/ads/zzlp;->zzdg:J

    move-wide/from16 v40, v1

    invoke-static/range {v36 .. v41}, Lcom/google/android/gms/internal/ads/zzpo;->zza(JJJ)J

    move-result-wide v24

    goto :goto_3c7

    :cond_3c4
    move/from16 v35, v1

    :cond_3c6
    move v15, v2

    .line 492
    :goto_3c7
    iget-object v1, v13, Lcom/google/android/gms/internal/ads/zzlr;->zzban:[I

    .line 493
    iget-object v2, v13, Lcom/google/android/gms/internal/ads/zzlr;->zzbao:[I

    move-object/from16 v36, v12

    .line 494
    iget-object v12, v13, Lcom/google/android/gms/internal/ads/zzlr;->zzbap:[J

    move/from16 v37, v15

    .line 495
    iget-object v15, v13, Lcom/google/android/gms/internal/ads/zzlr;->zzbaq:[Z

    move-object/from16 v38, v15

    .line 496
    iget v15, v11, Lcom/google/android/gms/internal/ads/zzlp;->type:I

    move-object/from16 v39, v1

    const/4 v1, 0x2

    if-ne v15, v1, :cond_3e2

    and-int/lit8 v1, v3, 0x1

    if-eqz v1, :cond_3e2

    const/4 v1, 0x1

    goto :goto_3e3

    :cond_3e2
    const/4 v1, 0x0

    .line 497
    :goto_3e3
    iget-object v15, v13, Lcom/google/android/gms/internal/ads/zzlr;->zzbam:[I

    aget v15, v15, v6

    add-int/2addr v15, v7

    move-object/from16 v26, v12

    .line 498
    iget-wide v11, v11, Lcom/google/android/gms/internal/ads/zzlp;->zzdg:J

    move/from16 v40, v7

    if-lez v6, :cond_3f3

    .line 499
    iget-wide v6, v13, Lcom/google/android/gms/internal/ads/zzlr;->zzbax:J

    goto :goto_3f5

    :cond_3f3
    move-wide/from16 v6, v22

    :goto_3f5
    move/from16 v46, v3

    move/from16 v3, v40

    :goto_3f9
    if-ge v3, v15, :cond_479

    if-eqz v4, :cond_406

    .line 501
    invoke-virtual {v10}, Lcom/google/android/gms/internal/ads/zzpi;->zziz()I

    move-result v40

    move/from16 v47, v4

    move/from16 v4, v40

    goto :goto_40a

    :cond_406
    move/from16 v47, v4

    .line 502
    iget v4, v14, Lcom/google/android/gms/internal/ads/zzld;->duration:I

    :goto_40a
    if-eqz v5, :cond_415

    .line 503
    invoke-virtual {v10}, Lcom/google/android/gms/internal/ads/zzpi;->zziz()I

    move-result v40

    move/from16 v48, v5

    move/from16 v5, v40

    goto :goto_419

    :cond_415
    move/from16 v48, v5

    iget v5, v14, Lcom/google/android/gms/internal/ads/zzld;->size:I

    :goto_419
    if-nez v3, :cond_422

    if-eqz v0, :cond_422

    move/from16 v49, v0

    move/from16 v0, v35

    goto :goto_431

    :cond_422
    if-eqz v8, :cond_42d

    .line 505
    invoke-virtual {v10}, Lcom/google/android/gms/internal/ads/zzpi;->readInt()I

    move-result v40

    move/from16 v49, v0

    move/from16 v0, v40

    goto :goto_431

    :cond_42d
    move/from16 v49, v0

    iget v0, v14, Lcom/google/android/gms/internal/ads/zzld;->flags:I

    :goto_431
    if-eqz v9, :cond_443

    move/from16 v50, v8

    .line 507
    invoke-virtual {v10}, Lcom/google/android/gms/internal/ads/zzpi;->readInt()I

    move-result v8

    mul-int/lit16 v8, v8, 0x3e8

    move/from16 v51, v9

    int-to-long v8, v8

    .line 508
    div-long/2addr v8, v11

    long-to-int v9, v8

    aput v9, v2, v3

    goto :goto_44a

    :cond_443
    move/from16 v50, v8

    move/from16 v51, v9

    const/4 v8, 0x0

    .line 510
    aput v8, v2, v3

    :goto_44a
    const-wide/16 v42, 0x3e8

    move-wide/from16 v40, v6

    move-wide/from16 v44, v11

    .line 512
    invoke-static/range {v40 .. v45}, Lcom/google/android/gms/internal/ads/zzpo;->zza(JJJ)J

    move-result-wide v8

    sub-long v8, v8, v24

    aput-wide v8, v26, v3

    .line 513
    aput v5, v39, v3

    const/16 v5, 0x10

    shr-int/2addr v0, v5

    const/4 v5, 0x1

    and-int/2addr v0, v5

    if-nez v0, :cond_467

    if-eqz v1, :cond_465

    if-nez v3, :cond_467

    :cond_465
    const/4 v0, 0x1

    goto :goto_468

    :cond_467
    const/4 v0, 0x0

    .line 514
    :goto_468
    aput-boolean v0, v38, v3

    int-to-long v4, v4

    add-long/2addr v6, v4

    add-int/lit8 v3, v3, 0x1

    move/from16 v4, v47

    move/from16 v5, v48

    move/from16 v0, v49

    move/from16 v8, v50

    move/from16 v9, v51

    goto :goto_3f9

    .line 517
    :cond_479
    iput-wide v6, v13, Lcom/google/android/gms/internal/ads/zzlr;->zzbax:J

    move v7, v15

    move/from16 v6, v27

    goto :goto_495

    :cond_47f
    move-object/from16 v32, v1

    move/from16 v37, v2

    move/from16 v46, v3

    move-object/from16 v31, v4

    move-object/from16 v30, v5

    move/from16 v40, v7

    move/from16 v33, v8

    move-object/from16 v34, v9

    move-object/from16 v36, v12

    move-object/from16 v28, v13

    move/from16 v29, v14

    :goto_495
    add-int/lit8 v2, v37, 0x1

    move-object/from16 v0, p0

    move-object/from16 v13, v28

    move/from16 v14, v29

    move-object/from16 v5, v30

    move-object/from16 v4, v31

    move-object/from16 v1, v32

    move/from16 v8, v33

    move-object/from16 v9, v34

    move-object/from16 v12, v36

    move/from16 v3, v46

    const/16 v10, 0xc

    goto/16 :goto_316

    :cond_4af
    move-object/from16 v32, v1

    move/from16 v46, v3

    move-object/from16 v31, v4

    move-object/from16 v30, v5

    move/from16 v33, v8

    move-object/from16 v34, v9

    move-object/from16 v36, v12

    .line 521
    sget v0, Lcom/google/android/gms/internal/ads/zzkt;->zzaur:I

    invoke-virtual {v9, v0}, Lcom/google/android/gms/internal/ads/zzks;->zzaq(I)Lcom/google/android/gms/internal/ads/zzkv;

    move-result-object v0

    if-eqz v0, :cond_544

    move-object/from16 v4, v36

    .line 523
    iget-object v1, v4, Lcom/google/android/gms/internal/ads/zzlj;->zzazk:Lcom/google/android/gms/internal/ads/zzlp;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzlp;->zzbac:[Lcom/google/android/gms/internal/ads/zzlo;

    move-object/from16 v2, v31

    iget-object v3, v2, Lcom/google/android/gms/internal/ads/zzlr;->zzbag:Lcom/google/android/gms/internal/ads/zzld;

    iget v3, v3, Lcom/google/android/gms/internal/ads/zzld;->zzaxa:I

    aget-object v1, v1, v3

    .line 524
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzkv;->zzawl:Lcom/google/android/gms/internal/ads/zzpi;

    .line 525
    iget v1, v1, Lcom/google/android/gms/internal/ads/zzlo;->zzazy:I

    const/16 v3, 0x8

    .line 526
    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ads/zzpi;->zzbk(I)V

    .line 527
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzpi;->readInt()I

    move-result v4

    .line 528
    invoke-static {v4}, Lcom/google/android/gms/internal/ads/zzkt;->zzat(I)I

    move-result v4

    const/4 v5, 0x1

    and-int/2addr v4, v5

    if-ne v4, v5, :cond_4eb

    .line 530
    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ads/zzpi;->zzbl(I)V

    .line 531
    :cond_4eb
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzpi;->readUnsignedByte()I

    move-result v3

    .line 532
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzpi;->zziz()I

    move-result v4

    .line 533
    iget v5, v2, Lcom/google/android/gms/internal/ads/zzlr;->zzawu:I

    if-ne v4, v5, :cond_521

    if-nez v3, :cond_50e

    .line 537
    iget-object v3, v2, Lcom/google/android/gms/internal/ads/zzlr;->zzbas:[Z

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_4fd
    if-ge v5, v4, :cond_51d

    .line 539
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzpi;->readUnsignedByte()I

    move-result v7

    add-int/2addr v6, v7

    if-le v7, v1, :cond_508

    const/4 v7, 0x1

    goto :goto_509

    :cond_508
    const/4 v7, 0x0

    .line 541
    :goto_509
    aput-boolean v7, v3, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_4fd

    :cond_50e
    if-le v3, v1, :cond_512

    const/4 v0, 0x1

    goto :goto_513

    :cond_512
    const/4 v0, 0x0

    :goto_513
    mul-int v3, v3, v4

    const/4 v1, 0x0

    add-int/lit8 v6, v3, 0x0

    .line 546
    iget-object v3, v2, Lcom/google/android/gms/internal/ads/zzlr;->zzbas:[Z

    invoke-static {v3, v1, v4, v0}, Ljava/util/Arrays;->fill([ZIIZ)V

    .line 547
    :cond_51d
    invoke-virtual {v2, v6}, Lcom/google/android/gms/internal/ads/zzlr;->zzav(I)V

    goto :goto_546

    .line 534
    :cond_521
    new-instance v0, Lcom/google/android/gms/internal/ads/zzht;

    iget v1, v2, Lcom/google/android/gms/internal/ads/zzlr;->zzawu:I

    const/16 v2, 0x29

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Length mismatch: "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzht;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_544
    move-object/from16 v2, v31

    .line 548
    :goto_546
    sget v0, Lcom/google/android/gms/internal/ads/zzkt;->zzaus:I

    invoke-virtual {v9, v0}, Lcom/google/android/gms/internal/ads/zzks;->zzaq(I)Lcom/google/android/gms/internal/ads/zzkv;

    move-result-object v0

    if-eqz v0, :cond_598

    .line 550
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzkv;->zzawl:Lcom/google/android/gms/internal/ads/zzpi;

    const/16 v1, 0x8

    .line 551
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzpi;->zzbk(I)V

    .line 552
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzpi;->readInt()I

    move-result v3

    .line 553
    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzkt;->zzat(I)I

    move-result v4

    const/4 v5, 0x1

    and-int/2addr v4, v5

    if-ne v4, v5, :cond_564

    .line 555
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzpi;->zzbl(I)V

    .line 556
    :cond_564
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzpi;->zziz()I

    move-result v1

    if-ne v1, v5, :cond_57f

    .line 559
    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzkt;->zzas(I)I

    move-result v1

    .line 560
    iget-wide v3, v2, Lcom/google/android/gms/internal/ads/zzlr;->zzbaj:J

    if-nez v1, :cond_577

    .line 561
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzpi;->zziw()J

    move-result-wide v0

    goto :goto_57b

    :cond_577
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzpi;->zzja()J

    move-result-wide v0

    :goto_57b
    add-long/2addr v3, v0

    iput-wide v3, v2, Lcom/google/android/gms/internal/ads/zzlr;->zzbaj:J

    goto :goto_598

    .line 558
    :cond_57f
    new-instance v0, Lcom/google/android/gms/internal/ads/zzht;

    const/16 v2, 0x28

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Unexpected saio entry count: "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzht;-><init>(Ljava/lang/String;)V

    throw v0

    .line 562
    :cond_598
    :goto_598
    sget v0, Lcom/google/android/gms/internal/ads/zzkt;->zzauw:I

    invoke-virtual {v9, v0}, Lcom/google/android/gms/internal/ads/zzks;->zzaq(I)Lcom/google/android/gms/internal/ads/zzkv;

    move-result-object v0

    if-eqz v0, :cond_5a6

    .line 564
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzkv;->zzawl:Lcom/google/android/gms/internal/ads/zzpi;

    const/4 v1, 0x0

    .line 565
    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzle;->zza(Lcom/google/android/gms/internal/ads/zzpi;ILcom/google/android/gms/internal/ads/zzlr;)V

    .line 566
    :cond_5a6
    sget v0, Lcom/google/android/gms/internal/ads/zzkt;->zzaut:I

    invoke-virtual {v9, v0}, Lcom/google/android/gms/internal/ads/zzks;->zzaq(I)Lcom/google/android/gms/internal/ads/zzkv;

    move-result-object v0

    .line 567
    sget v1, Lcom/google/android/gms/internal/ads/zzkt;->zzauu:I

    invoke-virtual {v9, v1}, Lcom/google/android/gms/internal/ads/zzks;->zzaq(I)Lcom/google/android/gms/internal/ads/zzkv;

    move-result-object v1

    if-eqz v0, :cond_64b

    if-eqz v1, :cond_64b

    .line 569
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzkv;->zzawl:Lcom/google/android/gms/internal/ads/zzpi;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzkv;->zzawl:Lcom/google/android/gms/internal/ads/zzpi;

    const/16 v3, 0x8

    .line 570
    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ads/zzpi;->zzbk(I)V

    .line 571
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzpi;->readInt()I

    move-result v3

    .line 572
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzpi;->readInt()I

    move-result v4

    sget v5, Lcom/google/android/gms/internal/ads/zzle;->zzaxb:I

    if-ne v4, v5, :cond_64b

    .line 573
    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzkt;->zzas(I)I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_5d6

    const/4 v3, 0x4

    .line 574
    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ads/zzpi;->zzbl(I)V

    .line 575
    :cond_5d6
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzpi;->readInt()I

    move-result v0

    if-ne v0, v4, :cond_643

    const/16 v0, 0x8

    .line 577
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzpi;->zzbk(I)V

    .line 578
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzpi;->readInt()I

    move-result v0

    .line 579
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzpi;->readInt()I

    move-result v3

    sget v5, Lcom/google/android/gms/internal/ads/zzle;->zzaxb:I

    if-ne v3, v5, :cond_641

    .line 580
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzkt;->zzas(I)I

    move-result v0

    if-ne v0, v4, :cond_606

    .line 582
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzpi;->zziw()J

    move-result-wide v3

    cmp-long v0, v3, v24

    if-eqz v0, :cond_5fe

    const/4 v0, 0x4

    const/4 v3, 0x2

    goto :goto_60f

    .line 583
    :cond_5fe
    new-instance v0, Lcom/google/android/gms/internal/ads/zzht;

    const-string v1, "Variable length decription in sgpd found (unsupported)"

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzht;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_606
    const/4 v3, 0x2

    if-lt v0, v3, :cond_60e

    const/4 v0, 0x4

    .line 585
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzpi;->zzbl(I)V

    goto :goto_60f

    :cond_60e
    const/4 v0, 0x4

    .line 586
    :goto_60f
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzpi;->zziw()J

    move-result-wide v4

    const-wide/16 v6, 0x1

    cmp-long v8, v4, v6

    if-nez v8, :cond_639

    .line 588
    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/ads/zzpi;->zzbl(I)V

    .line 589
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzpi;->readUnsignedByte()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_64d

    .line 590
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzpi;->readUnsignedByte()I

    move-result v3

    const/16 v5, 0x10

    new-array v6, v5, [B

    const/4 v7, 0x0

    .line 592
    invoke-virtual {v1, v6, v7, v5}, Lcom/google/android/gms/internal/ads/zzpi;->zze([BII)V

    .line 593
    iput-boolean v4, v2, Lcom/google/android/gms/internal/ads/zzlr;->zzbar:Z

    .line 594
    new-instance v1, Lcom/google/android/gms/internal/ads/zzlo;

    invoke-direct {v1, v4, v3, v6}, Lcom/google/android/gms/internal/ads/zzlo;-><init>(ZI[B)V

    iput-object v1, v2, Lcom/google/android/gms/internal/ads/zzlr;->zzbat:Lcom/google/android/gms/internal/ads/zzlo;

    goto :goto_64d

    .line 587
    :cond_639
    new-instance v0, Lcom/google/android/gms/internal/ads/zzht;

    const-string v1, "Entry count in sgpd != 1 (unsupported)."

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzht;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_641
    const/4 v0, 0x4

    goto :goto_64d

    .line 576
    :cond_643
    new-instance v0, Lcom/google/android/gms/internal/ads/zzht;

    const-string v1, "Entry count in sbgp != 1 (unsupported)."

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzht;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_64b
    const/4 v0, 0x4

    const/4 v4, 0x1

    .line 595
    :cond_64d
    :goto_64d
    iget-object v1, v9, Lcom/google/android/gms/internal/ads/zzks;->zzasn:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v3, 0x0

    :goto_654
    if-ge v3, v1, :cond_68b

    .line 597
    iget-object v5, v9, Lcom/google/android/gms/internal/ads/zzks;->zzasn:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/internal/ads/zzkv;

    .line 598
    iget v6, v5, Lcom/google/android/gms/internal/ads/zzkv;->type:I

    sget v7, Lcom/google/android/gms/internal/ads/zzkt;->zzauv:I

    if-ne v6, v7, :cond_67f

    .line 599
    iget-object v5, v5, Lcom/google/android/gms/internal/ads/zzkv;->zzawl:Lcom/google/android/gms/internal/ads/zzpi;

    const/16 v6, 0x8

    .line 600
    invoke-virtual {v5, v6}, Lcom/google/android/gms/internal/ads/zzpi;->zzbk(I)V

    move-object/from16 v7, v30

    const/16 v8, 0x10

    const/4 v10, 0x0

    .line 601
    invoke-virtual {v5, v7, v10, v8}, Lcom/google/android/gms/internal/ads/zzpi;->zze([BII)V

    .line 602
    sget-object v11, Lcom/google/android/gms/internal/ads/zzle;->zzaxc:[B

    invoke-static {v7, v11}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v11

    if-eqz v11, :cond_686

    .line 603
    invoke-static {v5, v8, v2}, Lcom/google/android/gms/internal/ads/zzle;->zza(Lcom/google/android/gms/internal/ads/zzpi;ILcom/google/android/gms/internal/ads/zzlr;)V

    goto :goto_686

    :cond_67f
    move-object/from16 v7, v30

    const/16 v6, 0x8

    const/16 v8, 0x10

    const/4 v10, 0x0

    :cond_686
    :goto_686
    add-int/lit8 v3, v3, 0x1

    move-object/from16 v30, v7

    goto :goto_654

    :cond_68b
    move-object/from16 v7, v30

    const/16 v6, 0x8

    const/4 v10, 0x0

    goto :goto_6a1

    :cond_691
    move-object/from16 v32, v1

    move-object/from16 v19, v2

    move/from16 v46, v3

    move/from16 v21, v7

    move/from16 v33, v8

    const/4 v0, 0x4

    const/4 v4, 0x1

    const/16 v6, 0x8

    const/4 v10, 0x0

    move-object v7, v5

    :goto_6a1
    add-int/lit8 v8, v33, 0x1

    move-object/from16 v0, p0

    move-object v5, v7

    move-object/from16 v2, v19

    move/from16 v7, v21

    move-object/from16 v1, v32

    move/from16 v3, v46

    const/4 v4, 0x0

    const/4 v6, 0x4

    goto/16 :goto_1db

    :cond_6b2
    const/4 v10, 0x0

    .line 606
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzks;->zzasn:Ljava/util/List;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzle;->zzb(Ljava/util/List;)Lcom/google/android/gms/internal/ads/zzjl;

    move-result-object v0

    move-object/from16 v2, p0

    if-eqz v0, :cond_6f2

    .line 608
    iget-object v1, v2, Lcom/google/android/gms/internal/ads/zzle;->zzaxe:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    const/4 v8, 0x0

    :goto_6c4
    if-ge v8, v1, :cond_6f2

    .line 610
    iget-object v3, v2, Lcom/google/android/gms/internal/ads/zzle;->zzaxe:Landroid/util/SparseArray;

    invoke-virtual {v3, v8}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/ads/zzlj;

    .line 611
    iget-object v4, v3, Lcom/google/android/gms/internal/ads/zzlj;->zzash:Lcom/google/android/gms/internal/ads/zzke;

    iget-object v3, v3, Lcom/google/android/gms/internal/ads/zzlj;->zzazk:Lcom/google/android/gms/internal/ads/zzlp;

    iget-object v3, v3, Lcom/google/android/gms/internal/ads/zzlp;->zzahr:Lcom/google/android/gms/internal/ads/zzhq;

    invoke-virtual {v3, v0}, Lcom/google/android/gms/internal/ads/zzhq;->zza(Lcom/google/android/gms/internal/ads/zzjl;)Lcom/google/android/gms/internal/ads/zzhq;

    move-result-object v3

    invoke-interface {v4, v3}, Lcom/google/android/gms/internal/ads/zzke;->zze(Lcom/google/android/gms/internal/ads/zzhq;)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_6c4

    :cond_6de
    move-object v2, v0

    .line 614
    iget-object v0, v2, Lcom/google/android/gms/internal/ads/zzle;->zzaxl:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6f2

    .line 615
    iget-object v0, v2, Lcom/google/android/gms/internal/ads/zzle;->zzaxl:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzks;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzks;->zza(Lcom/google/android/gms/internal/ads/zzks;)V

    :cond_6f2
    move-object v0, v2

    goto/16 :goto_2

    :cond_6f5
    move-object v2, v0

    .line 617
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzle;->zzha()V

    return-void
.end method

.method private final zzha()V
    .registers 2

    const/4 v0, 0x0

    .line 322
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzle;->zzaxn:I

    .line 323
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzle;->zzaxq:I

    return-void
.end method


# virtual methods
.method public final release()V
    .registers 1

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzjw;Lcom/google/android/gms/internal/ads/zzkd;)I
    .registers 29
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 37
    :cond_4
    :goto_4
    iget v2, v0, Lcom/google/android/gms/internal/ads/zzle;->zzaxn:I

    const/4 v3, 0x2

    const/16 v5, 0x8

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eqz v2, :cond_45b

    const/4 v8, 0x4

    if-eq v2, v6, :cond_2fc

    const-wide v9, 0x7fffffffffffffffL

    const/4 v11, 0x3

    if-eq v2, v3, :cond_2a0

    if-ne v2, v11, :cond_10a

    .line 188
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzle;->zzaxv:Lcom/google/android/gms/internal/ads/zzlj;

    if-nez v2, :cond_84

    .line 189
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzle;->zzaxe:Landroid/util/SparseArray;

    .line 192
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v12

    const/4 v13, 0x0

    const/4 v14, 0x0

    :goto_26
    if-ge v13, v12, :cond_49

    .line 194
    invoke-virtual {v2, v13}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/google/android/gms/internal/ads/zzlj;

    .line 195
    iget v11, v15, Lcom/google/android/gms/internal/ads/zzlj;->zzazo:I

    iget-object v4, v15, Lcom/google/android/gms/internal/ads/zzlj;->zzazj:Lcom/google/android/gms/internal/ads/zzlr;

    iget v4, v4, Lcom/google/android/gms/internal/ads/zzlr;->zzbak:I

    if-eq v11, v4, :cond_45

    .line 196
    iget-object v4, v15, Lcom/google/android/gms/internal/ads/zzlj;->zzazj:Lcom/google/android/gms/internal/ads/zzlr;

    iget-object v4, v4, Lcom/google/android/gms/internal/ads/zzlr;->zzbal:[J

    iget v11, v15, Lcom/google/android/gms/internal/ads/zzlj;->zzazo:I

    aget-wide v17, v4, v11

    cmp-long v4, v17, v9

    if-gez v4, :cond_45

    move-object v14, v15

    move-wide/from16 v9, v17

    :cond_45
    add-int/lit8 v13, v13, 0x1

    const/4 v11, 0x3

    goto :goto_26

    :cond_49
    if-nez v14, :cond_67

    .line 204
    iget-wide v2, v0, Lcom/google/android/gms/internal/ads/zzle;->zzaxs:J

    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzjw;->getPosition()J

    move-result-wide v4

    sub-long/2addr v2, v4

    long-to-int v3, v2

    if-ltz v3, :cond_5f

    .line 207
    invoke-interface {v1, v3}, Lcom/google/android/gms/internal/ads/zzjw;->zzah(I)V

    .line 208
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzle;->zzha()V

    const/4 v3, 0x0

    const/4 v6, 0x0

    goto/16 :goto_297

    .line 206
    :cond_5f
    new-instance v1, Lcom/google/android/gms/internal/ads/zzht;

    const-string v2, "Offset to end of mdat was negative."

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/ads/zzht;-><init>(Ljava/lang/String;)V

    throw v1

    .line 210
    :cond_67
    iget-object v2, v14, Lcom/google/android/gms/internal/ads/zzlj;->zzazj:Lcom/google/android/gms/internal/ads/zzlr;

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzlr;->zzbal:[J

    iget v4, v14, Lcom/google/android/gms/internal/ads/zzlj;->zzazo:I

    aget-wide v9, v2, v4

    .line 211
    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzjw;->getPosition()J

    move-result-wide v11

    sub-long/2addr v9, v11

    long-to-int v2, v9

    if-gez v2, :cond_7f

    const-string v2, "FragmentedMp4Extractor"

    const-string v4, "Ignoring negative offset to sample data."

    .line 213
    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    .line 215
    :cond_7f
    invoke-interface {v1, v2}, Lcom/google/android/gms/internal/ads/zzjw;->zzah(I)V

    .line 216
    iput-object v14, v0, Lcom/google/android/gms/internal/ads/zzle;->zzaxv:Lcom/google/android/gms/internal/ads/zzlj;

    .line 217
    :cond_84
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzle;->zzaxv:Lcom/google/android/gms/internal/ads/zzlj;

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzlj;->zzazj:Lcom/google/android/gms/internal/ads/zzlr;

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzlr;->zzban:[I

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzle;->zzaxv:Lcom/google/android/gms/internal/ads/zzlj;

    iget v4, v4, Lcom/google/android/gms/internal/ads/zzlj;->zzazm:I

    aget v2, v2, v4

    iput v2, v0, Lcom/google/android/gms/internal/ads/zzle;->zzaxw:I

    .line 218
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzle;->zzaxv:Lcom/google/android/gms/internal/ads/zzlj;

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzlj;->zzazj:Lcom/google/android/gms/internal/ads/zzlr;

    iget-boolean v2, v2, Lcom/google/android/gms/internal/ads/zzlr;->zzbar:Z

    if-eqz v2, :cond_f4

    .line 219
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzle;->zzaxv:Lcom/google/android/gms/internal/ads/zzlj;

    .line 220
    iget-object v4, v2, Lcom/google/android/gms/internal/ads/zzlj;->zzazj:Lcom/google/android/gms/internal/ads/zzlr;

    .line 221
    iget-object v9, v4, Lcom/google/android/gms/internal/ads/zzlr;->zzbav:Lcom/google/android/gms/internal/ads/zzpi;

    .line 222
    iget-object v10, v4, Lcom/google/android/gms/internal/ads/zzlr;->zzbag:Lcom/google/android/gms/internal/ads/zzld;

    iget v10, v10, Lcom/google/android/gms/internal/ads/zzld;->zzaxa:I

    .line 223
    iget-object v11, v4, Lcom/google/android/gms/internal/ads/zzlr;->zzbat:Lcom/google/android/gms/internal/ads/zzlo;

    if-eqz v11, :cond_ab

    .line 224
    iget-object v10, v4, Lcom/google/android/gms/internal/ads/zzlr;->zzbat:Lcom/google/android/gms/internal/ads/zzlo;

    goto :goto_b1

    .line 225
    :cond_ab
    iget-object v11, v2, Lcom/google/android/gms/internal/ads/zzlj;->zzazk:Lcom/google/android/gms/internal/ads/zzlp;

    iget-object v11, v11, Lcom/google/android/gms/internal/ads/zzlp;->zzbac:[Lcom/google/android/gms/internal/ads/zzlo;

    aget-object v10, v11, v10

    .line 226
    :goto_b1
    iget v10, v10, Lcom/google/android/gms/internal/ads/zzlo;->zzazy:I

    .line 227
    iget-object v4, v4, Lcom/google/android/gms/internal/ads/zzlr;->zzbas:[Z

    iget v11, v2, Lcom/google/android/gms/internal/ads/zzlj;->zzazm:I

    aget-boolean v4, v4, v11

    .line 228
    iget-object v11, v0, Lcom/google/android/gms/internal/ads/zzle;->zzaxh:Lcom/google/android/gms/internal/ads/zzpi;

    iget-object v11, v11, Lcom/google/android/gms/internal/ads/zzpi;->data:[B

    if-eqz v4, :cond_c2

    const/16 v12, 0x80

    goto :goto_c3

    :cond_c2
    const/4 v12, 0x0

    :goto_c3
    or-int/2addr v12, v10

    int-to-byte v12, v12

    aput-byte v12, v11, v7

    .line 229
    iget-object v11, v0, Lcom/google/android/gms/internal/ads/zzle;->zzaxh:Lcom/google/android/gms/internal/ads/zzpi;

    invoke-virtual {v11, v7}, Lcom/google/android/gms/internal/ads/zzpi;->zzbk(I)V

    .line 230
    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzlj;->zzash:Lcom/google/android/gms/internal/ads/zzke;

    .line 231
    iget-object v11, v0, Lcom/google/android/gms/internal/ads/zzle;->zzaxh:Lcom/google/android/gms/internal/ads/zzpi;

    invoke-interface {v2, v11, v6}, Lcom/google/android/gms/internal/ads/zzke;->zza(Lcom/google/android/gms/internal/ads/zzpi;I)V

    .line 232
    invoke-interface {v2, v9, v10}, Lcom/google/android/gms/internal/ads/zzke;->zza(Lcom/google/android/gms/internal/ads/zzpi;I)V

    if-nez v4, :cond_db

    add-int/lit8 v10, v10, 0x1

    goto :goto_ec

    .line 235
    :cond_db
    invoke-virtual {v9}, Lcom/google/android/gms/internal/ads/zzpi;->readUnsignedShort()I

    move-result v4

    const/4 v11, -0x2

    .line 236
    invoke-virtual {v9, v11}, Lcom/google/android/gms/internal/ads/zzpi;->zzbl(I)V

    mul-int/lit8 v4, v4, 0x6

    add-int/2addr v4, v3

    .line 238
    invoke-interface {v2, v9, v4}, Lcom/google/android/gms/internal/ads/zzke;->zza(Lcom/google/android/gms/internal/ads/zzpi;I)V

    add-int/lit8 v10, v10, 0x1

    add-int/2addr v10, v4

    .line 240
    :goto_ec
    iput v10, v0, Lcom/google/android/gms/internal/ads/zzle;->zzaqz:I

    .line 241
    iget v2, v0, Lcom/google/android/gms/internal/ads/zzle;->zzaxw:I

    add-int/2addr v2, v10

    iput v2, v0, Lcom/google/android/gms/internal/ads/zzle;->zzaxw:I

    goto :goto_f6

    .line 242
    :cond_f4
    iput v7, v0, Lcom/google/android/gms/internal/ads/zzle;->zzaqz:I

    .line 243
    :goto_f6
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzle;->zzaxv:Lcom/google/android/gms/internal/ads/zzlj;

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzlj;->zzazk:Lcom/google/android/gms/internal/ads/zzlp;

    iget v2, v2, Lcom/google/android/gms/internal/ads/zzlp;->zzbab:I

    if-ne v2, v6, :cond_106

    .line 244
    iget v2, v0, Lcom/google/android/gms/internal/ads/zzle;->zzaxw:I

    sub-int/2addr v2, v5

    iput v2, v0, Lcom/google/android/gms/internal/ads/zzle;->zzaxw:I

    .line 245
    invoke-interface {v1, v5}, Lcom/google/android/gms/internal/ads/zzjw;->zzah(I)V

    .line 246
    :cond_106
    iput v8, v0, Lcom/google/android/gms/internal/ads/zzle;->zzaxn:I

    .line 247
    iput v7, v0, Lcom/google/android/gms/internal/ads/zzle;->zzaqy:I

    .line 248
    :cond_10a
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzle;->zzaxv:Lcom/google/android/gms/internal/ads/zzlj;

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzlj;->zzazj:Lcom/google/android/gms/internal/ads/zzlr;

    .line 249
    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzle;->zzaxv:Lcom/google/android/gms/internal/ads/zzlj;

    iget-object v4, v4, Lcom/google/android/gms/internal/ads/zzlj;->zzazk:Lcom/google/android/gms/internal/ads/zzlp;

    .line 250
    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzle;->zzaxv:Lcom/google/android/gms/internal/ads/zzlj;

    iget-object v9, v5, Lcom/google/android/gms/internal/ads/zzlj;->zzash:Lcom/google/android/gms/internal/ads/zzke;

    .line 251
    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzle;->zzaxv:Lcom/google/android/gms/internal/ads/zzlj;

    iget v5, v5, Lcom/google/android/gms/internal/ads/zzlj;->zzazm:I

    .line 252
    iget v10, v4, Lcom/google/android/gms/internal/ads/zzlp;->zzasi:I

    const-wide/16 v11, 0x3e8

    if-eqz v10, :cond_1db

    .line 253
    iget-object v10, v0, Lcom/google/android/gms/internal/ads/zzle;->zzaxf:Lcom/google/android/gms/internal/ads/zzpi;

    iget-object v10, v10, Lcom/google/android/gms/internal/ads/zzpi;->data:[B

    .line 254
    aput-byte v7, v10, v7

    .line 255
    aput-byte v7, v10, v6

    .line 256
    aput-byte v7, v10, v3

    .line 257
    iget v3, v4, Lcom/google/android/gms/internal/ads/zzlp;->zzasi:I

    add-int/2addr v3, v6

    .line 258
    iget v13, v4, Lcom/google/android/gms/internal/ads/zzlp;->zzasi:I

    rsub-int/lit8 v13, v13, 0x4

    .line 259
    :goto_131
    iget v14, v0, Lcom/google/android/gms/internal/ads/zzle;->zzaqz:I

    iget v15, v0, Lcom/google/android/gms/internal/ads/zzle;->zzaxw:I

    if-ge v14, v15, :cond_1ed

    .line 260
    iget v14, v0, Lcom/google/android/gms/internal/ads/zzle;->zzaqy:I

    if-nez v14, :cond_17c

    .line 261
    invoke-interface {v1, v10, v13, v3}, Lcom/google/android/gms/internal/ads/zzjw;->readFully([BII)V

    .line 262
    iget-object v14, v0, Lcom/google/android/gms/internal/ads/zzle;->zzaxf:Lcom/google/android/gms/internal/ads/zzpi;

    invoke-virtual {v14, v7}, Lcom/google/android/gms/internal/ads/zzpi;->zzbk(I)V

    .line 263
    iget-object v14, v0, Lcom/google/android/gms/internal/ads/zzle;->zzaxf:Lcom/google/android/gms/internal/ads/zzpi;

    invoke-virtual {v14}, Lcom/google/android/gms/internal/ads/zzpi;->zziz()I

    move-result v14

    sub-int/2addr v14, v6

    iput v14, v0, Lcom/google/android/gms/internal/ads/zzle;->zzaqy:I

    .line 264
    iget-object v14, v0, Lcom/google/android/gms/internal/ads/zzle;->zzapj:Lcom/google/android/gms/internal/ads/zzpi;

    invoke-virtual {v14, v7}, Lcom/google/android/gms/internal/ads/zzpi;->zzbk(I)V

    .line 265
    iget-object v14, v0, Lcom/google/android/gms/internal/ads/zzle;->zzapj:Lcom/google/android/gms/internal/ads/zzpi;

    invoke-interface {v9, v14, v8}, Lcom/google/android/gms/internal/ads/zzke;->zza(Lcom/google/android/gms/internal/ads/zzpi;I)V

    .line 266
    iget-object v14, v0, Lcom/google/android/gms/internal/ads/zzle;->zzaxf:Lcom/google/android/gms/internal/ads/zzpi;

    invoke-interface {v9, v14, v6}, Lcom/google/android/gms/internal/ads/zzke;->zza(Lcom/google/android/gms/internal/ads/zzpi;I)V

    .line 267
    iget-object v14, v0, Lcom/google/android/gms/internal/ads/zzle;->zzaxz:[Lcom/google/android/gms/internal/ads/zzke;

    if-eqz v14, :cond_16d

    iget-object v14, v4, Lcom/google/android/gms/internal/ads/zzlp;->zzahr:Lcom/google/android/gms/internal/ads/zzhq;

    iget-object v14, v14, Lcom/google/android/gms/internal/ads/zzhq;->zzagw:Ljava/lang/String;

    aget-byte v15, v10, v8

    .line 268
    invoke-static {v14, v15}, Lcom/google/android/gms/internal/ads/zzph;->zza(Ljava/lang/String;B)Z

    move-result v14

    if-eqz v14, :cond_16d

    const/4 v14, 0x1

    goto :goto_16e

    :cond_16d
    const/4 v14, 0x0

    :goto_16e
    iput-boolean v14, v0, Lcom/google/android/gms/internal/ads/zzle;->zzaxx:Z

    .line 269
    iget v14, v0, Lcom/google/android/gms/internal/ads/zzle;->zzaqz:I

    add-int/lit8 v14, v14, 0x5

    iput v14, v0, Lcom/google/android/gms/internal/ads/zzle;->zzaqz:I

    .line 270
    iget v14, v0, Lcom/google/android/gms/internal/ads/zzle;->zzaxw:I

    add-int/2addr v14, v13

    iput v14, v0, Lcom/google/android/gms/internal/ads/zzle;->zzaxw:I

    goto :goto_131

    .line 271
    :cond_17c
    iget-boolean v15, v0, Lcom/google/android/gms/internal/ads/zzle;->zzaxx:Z

    if-eqz v15, :cond_1c7

    .line 272
    iget-object v15, v0, Lcom/google/android/gms/internal/ads/zzle;->zzaxg:Lcom/google/android/gms/internal/ads/zzpi;

    invoke-virtual {v15, v14}, Lcom/google/android/gms/internal/ads/zzpi;->reset(I)V

    .line 273
    iget-object v14, v0, Lcom/google/android/gms/internal/ads/zzle;->zzaxg:Lcom/google/android/gms/internal/ads/zzpi;

    iget-object v14, v14, Lcom/google/android/gms/internal/ads/zzpi;->data:[B

    iget v15, v0, Lcom/google/android/gms/internal/ads/zzle;->zzaqy:I

    invoke-interface {v1, v14, v7, v15}, Lcom/google/android/gms/internal/ads/zzjw;->readFully([BII)V

    .line 274
    iget-object v14, v0, Lcom/google/android/gms/internal/ads/zzle;->zzaxg:Lcom/google/android/gms/internal/ads/zzpi;

    iget v15, v0, Lcom/google/android/gms/internal/ads/zzle;->zzaqy:I

    invoke-interface {v9, v14, v15}, Lcom/google/android/gms/internal/ads/zzke;->zza(Lcom/google/android/gms/internal/ads/zzpi;I)V

    .line 275
    iget v14, v0, Lcom/google/android/gms/internal/ads/zzle;->zzaqy:I

    .line 276
    iget-object v15, v0, Lcom/google/android/gms/internal/ads/zzle;->zzaxg:Lcom/google/android/gms/internal/ads/zzpi;

    iget-object v15, v15, Lcom/google/android/gms/internal/ads/zzpi;->data:[B

    iget-object v8, v0, Lcom/google/android/gms/internal/ads/zzle;->zzaxg:Lcom/google/android/gms/internal/ads/zzpi;

    invoke-virtual {v8}, Lcom/google/android/gms/internal/ads/zzpi;->limit()I

    move-result v8

    invoke-static {v15, v8}, Lcom/google/android/gms/internal/ads/zzph;->zzb([BI)I

    move-result v8

    .line 277
    iget-object v15, v0, Lcom/google/android/gms/internal/ads/zzle;->zzaxg:Lcom/google/android/gms/internal/ads/zzpi;

    iget-object v6, v4, Lcom/google/android/gms/internal/ads/zzlp;->zzahr:Lcom/google/android/gms/internal/ads/zzhq;

    iget-object v6, v6, Lcom/google/android/gms/internal/ads/zzhq;->zzagw:Ljava/lang/String;

    const-string v7, "video/hevc"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    invoke-virtual {v15, v6}, Lcom/google/android/gms/internal/ads/zzpi;->zzbk(I)V

    .line 278
    iget-object v6, v0, Lcom/google/android/gms/internal/ads/zzle;->zzaxg:Lcom/google/android/gms/internal/ads/zzpi;

    invoke-virtual {v6, v8}, Lcom/google/android/gms/internal/ads/zzpi;->zzbj(I)V

    .line 279
    invoke-virtual {v2, v5}, Lcom/google/android/gms/internal/ads/zzlr;->zzaw(I)J

    move-result-wide v6

    mul-long v6, v6, v11

    iget-object v8, v0, Lcom/google/android/gms/internal/ads/zzle;->zzaxg:Lcom/google/android/gms/internal/ads/zzpi;

    iget-object v15, v0, Lcom/google/android/gms/internal/ads/zzle;->zzaxz:[Lcom/google/android/gms/internal/ads/zzke;

    invoke-static {v6, v7, v8, v15}, Lcom/google/android/gms/internal/ads/zznt;->zza(JLcom/google/android/gms/internal/ads/zzpi;[Lcom/google/android/gms/internal/ads/zzke;)V

    goto :goto_1cc

    :cond_1c7
    const/4 v6, 0x0

    .line 281
    invoke-interface {v9, v1, v14, v6}, Lcom/google/android/gms/internal/ads/zzke;->zza(Lcom/google/android/gms/internal/ads/zzjw;IZ)I

    move-result v14

    .line 282
    :goto_1cc
    iget v6, v0, Lcom/google/android/gms/internal/ads/zzle;->zzaqz:I

    add-int/2addr v6, v14

    iput v6, v0, Lcom/google/android/gms/internal/ads/zzle;->zzaqz:I

    .line 283
    iget v6, v0, Lcom/google/android/gms/internal/ads/zzle;->zzaqy:I

    sub-int/2addr v6, v14

    iput v6, v0, Lcom/google/android/gms/internal/ads/zzle;->zzaqy:I

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x4

    goto/16 :goto_131

    .line 286
    :cond_1db
    :goto_1db
    iget v3, v0, Lcom/google/android/gms/internal/ads/zzle;->zzaqz:I

    iget v6, v0, Lcom/google/android/gms/internal/ads/zzle;->zzaxw:I

    if-ge v3, v6, :cond_1ed

    sub-int/2addr v6, v3

    const/4 v3, 0x0

    .line 287
    invoke-interface {v9, v1, v6, v3}, Lcom/google/android/gms/internal/ads/zzke;->zza(Lcom/google/android/gms/internal/ads/zzjw;IZ)I

    move-result v6

    .line 288
    iget v3, v0, Lcom/google/android/gms/internal/ads/zzle;->zzaqz:I

    add-int/2addr v3, v6

    iput v3, v0, Lcom/google/android/gms/internal/ads/zzle;->zzaqz:I

    goto :goto_1db

    .line 290
    :cond_1ed
    invoke-virtual {v2, v5}, Lcom/google/android/gms/internal/ads/zzlr;->zzaw(I)J

    move-result-wide v6

    mul-long v6, v6, v11

    .line 291
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzle;->zzaxi:Lcom/google/android/gms/internal/ads/zzpm;

    if-nez v3, :cond_29a

    .line 293
    iget-boolean v3, v2, Lcom/google/android/gms/internal/ads/zzlr;->zzbar:Z

    if-eqz v3, :cond_1fe

    const/high16 v3, 0x40000000    # 2.0f

    goto :goto_1ff

    :cond_1fe
    const/4 v3, 0x0

    .line 294
    :goto_1ff
    iget-object v8, v2, Lcom/google/android/gms/internal/ads/zzlr;->zzbaq:[Z

    aget-boolean v5, v8, v5

    or-int v12, v3, v5

    .line 297
    iget-boolean v3, v2, Lcom/google/android/gms/internal/ads/zzlr;->zzbar:Z

    if-eqz v3, :cond_22d

    .line 298
    iget-object v3, v2, Lcom/google/android/gms/internal/ads/zzlr;->zzbat:Lcom/google/android/gms/internal/ads/zzlo;

    if-eqz v3, :cond_210

    .line 299
    iget-object v3, v2, Lcom/google/android/gms/internal/ads/zzlr;->zzbat:Lcom/google/android/gms/internal/ads/zzlo;

    goto :goto_218

    .line 300
    :cond_210
    iget-object v3, v4, Lcom/google/android/gms/internal/ads/zzlp;->zzbac:[Lcom/google/android/gms/internal/ads/zzlo;

    iget-object v4, v2, Lcom/google/android/gms/internal/ads/zzlr;->zzbag:Lcom/google/android/gms/internal/ads/zzld;

    iget v4, v4, Lcom/google/android/gms/internal/ads/zzld;->zzaxa:I

    aget-object v3, v3, v4

    .line 301
    :goto_218
    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzle;->zzaxv:Lcom/google/android/gms/internal/ads/zzlj;

    iget-object v4, v4, Lcom/google/android/gms/internal/ads/zzlj;->zzazq:Lcom/google/android/gms/internal/ads/zzlo;

    if-eq v3, v4, :cond_227

    .line 302
    new-instance v4, Lcom/google/android/gms/internal/ads/zzkh;

    iget-object v5, v3, Lcom/google/android/gms/internal/ads/zzlo;->zzazz:[B

    const/4 v8, 0x1

    invoke-direct {v4, v8, v5}, Lcom/google/android/gms/internal/ads/zzkh;-><init>(I[B)V

    goto :goto_22b

    .line 303
    :cond_227
    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzle;->zzaxv:Lcom/google/android/gms/internal/ads/zzlj;

    iget-object v4, v4, Lcom/google/android/gms/internal/ads/zzlj;->zzazp:Lcom/google/android/gms/internal/ads/zzkh;

    :goto_22b
    move-object v15, v4

    goto :goto_22f

    :cond_22d
    const/4 v3, 0x0

    const/4 v15, 0x0

    .line 304
    :goto_22f
    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzle;->zzaxv:Lcom/google/android/gms/internal/ads/zzlj;

    iput-object v15, v4, Lcom/google/android/gms/internal/ads/zzlj;->zzazp:Lcom/google/android/gms/internal/ads/zzkh;

    .line 305
    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzle;->zzaxv:Lcom/google/android/gms/internal/ads/zzlj;

    iput-object v3, v4, Lcom/google/android/gms/internal/ads/zzlj;->zzazq:Lcom/google/android/gms/internal/ads/zzlo;

    .line 306
    iget v13, v0, Lcom/google/android/gms/internal/ads/zzle;->zzaxw:I

    const/4 v14, 0x0

    move-wide v10, v6

    invoke-interface/range {v9 .. v15}, Lcom/google/android/gms/internal/ads/zzke;->zza(JIIILcom/google/android/gms/internal/ads/zzkh;)V

    .line 307
    :goto_23e
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzle;->zzaxm:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_265

    .line 308
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzle;->zzaxm:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/ads/zzlg;

    .line 309
    iget v4, v0, Lcom/google/android/gms/internal/ads/zzle;->zzaxt:I

    iget v5, v3, Lcom/google/android/gms/internal/ads/zzlg;->size:I

    sub-int/2addr v4, v5

    iput v4, v0, Lcom/google/android/gms/internal/ads/zzle;->zzaxt:I

    .line 310
    iget-object v8, v0, Lcom/google/android/gms/internal/ads/zzle;->zzaxy:Lcom/google/android/gms/internal/ads/zzke;

    iget-wide v4, v3, Lcom/google/android/gms/internal/ads/zzlg;->zzaye:J

    add-long v9, v6, v4

    const/4 v11, 0x1

    iget v12, v3, Lcom/google/android/gms/internal/ads/zzlg;->size:I

    iget v13, v0, Lcom/google/android/gms/internal/ads/zzle;->zzaxt:I

    const/4 v14, 0x0

    invoke-interface/range {v8 .. v14}, Lcom/google/android/gms/internal/ads/zzke;->zza(JIIILcom/google/android/gms/internal/ads/zzkh;)V

    goto :goto_23e

    .line 312
    :cond_265
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzle;->zzaxv:Lcom/google/android/gms/internal/ads/zzlj;

    iget v4, v3, Lcom/google/android/gms/internal/ads/zzlj;->zzazm:I

    const/4 v5, 0x1

    add-int/2addr v4, v5

    iput v4, v3, Lcom/google/android/gms/internal/ads/zzlj;->zzazm:I

    .line 313
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzle;->zzaxv:Lcom/google/android/gms/internal/ads/zzlj;

    iget v4, v3, Lcom/google/android/gms/internal/ads/zzlj;->zzazn:I

    add-int/2addr v4, v5

    iput v4, v3, Lcom/google/android/gms/internal/ads/zzlj;->zzazn:I

    .line 314
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzle;->zzaxv:Lcom/google/android/gms/internal/ads/zzlj;

    iget v3, v3, Lcom/google/android/gms/internal/ads/zzlj;->zzazn:I

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzlr;->zzbam:[I

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzle;->zzaxv:Lcom/google/android/gms/internal/ads/zzlj;

    iget v4, v4, Lcom/google/android/gms/internal/ads/zzlj;->zzazo:I

    aget v2, v2, v4

    if-ne v3, v2, :cond_292

    .line 315
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzle;->zzaxv:Lcom/google/android/gms/internal/ads/zzlj;

    iget v3, v2, Lcom/google/android/gms/internal/ads/zzlj;->zzazo:I

    add-int/2addr v3, v5

    iput v3, v2, Lcom/google/android/gms/internal/ads/zzlj;->zzazo:I

    .line 316
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzle;->zzaxv:Lcom/google/android/gms/internal/ads/zzlj;

    const/4 v3, 0x0

    iput v3, v2, Lcom/google/android/gms/internal/ads/zzlj;->zzazn:I

    const/4 v2, 0x0

    .line 317
    iput-object v2, v0, Lcom/google/android/gms/internal/ads/zzle;->zzaxv:Lcom/google/android/gms/internal/ads/zzlj;

    goto :goto_293

    :cond_292
    const/4 v3, 0x0

    :goto_293
    const/4 v2, 0x3

    .line 318
    iput v2, v0, Lcom/google/android/gms/internal/ads/zzle;->zzaxn:I

    const/4 v6, 0x1

    :goto_297
    if-eqz v6, :cond_4

    return v3

    .line 292
    :cond_29a
    new-instance v1, Ljava/lang/NoSuchMethodError;

    invoke-direct {v1}, Ljava/lang/NoSuchMethodError;-><init>()V

    throw v1

    .line 167
    :cond_2a0
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzle;->zzaxe:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_2a8
    if-ge v3, v2, :cond_2cd

    .line 169
    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzle;->zzaxe:Landroid/util/SparseArray;

    invoke-virtual {v5, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/internal/ads/zzlj;

    iget-object v5, v5, Lcom/google/android/gms/internal/ads/zzlj;->zzazj:Lcom/google/android/gms/internal/ads/zzlr;

    .line 170
    iget-boolean v6, v5, Lcom/google/android/gms/internal/ads/zzlr;->zzbaw:Z

    if-eqz v6, :cond_2ca

    iget-wide v6, v5, Lcom/google/android/gms/internal/ads/zzlr;->zzbaj:J

    cmp-long v8, v6, v9

    if-gez v8, :cond_2ca

    .line 171
    iget-wide v4, v5, Lcom/google/android/gms/internal/ads/zzlr;->zzbaj:J

    .line 172
    iget-object v6, v0, Lcom/google/android/gms/internal/ads/zzle;->zzaxe:Landroid/util/SparseArray;

    invoke-virtual {v6, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/gms/internal/ads/zzlj;

    move-wide v9, v4

    move-object v4, v6

    :cond_2ca
    add-int/lit8 v3, v3, 0x1

    goto :goto_2a8

    :cond_2cd
    if-nez v4, :cond_2d4

    const/4 v2, 0x3

    .line 175
    iput v2, v0, Lcom/google/android/gms/internal/ads/zzle;->zzaxn:I

    goto/16 :goto_4

    .line 177
    :cond_2d4
    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzjw;->getPosition()J

    move-result-wide v2

    sub-long/2addr v9, v2

    long-to-int v2, v9

    if-ltz v2, :cond_2f4

    .line 180
    invoke-interface {v1, v2}, Lcom/google/android/gms/internal/ads/zzjw;->zzah(I)V

    .line 181
    iget-object v2, v4, Lcom/google/android/gms/internal/ads/zzlj;->zzazj:Lcom/google/android/gms/internal/ads/zzlr;

    .line 182
    iget-object v3, v2, Lcom/google/android/gms/internal/ads/zzlr;->zzbav:Lcom/google/android/gms/internal/ads/zzpi;

    iget-object v3, v3, Lcom/google/android/gms/internal/ads/zzpi;->data:[B

    iget v4, v2, Lcom/google/android/gms/internal/ads/zzlr;->zzbau:I

    const/4 v5, 0x0

    invoke-interface {v1, v3, v5, v4}, Lcom/google/android/gms/internal/ads/zzjw;->readFully([BII)V

    .line 183
    iget-object v3, v2, Lcom/google/android/gms/internal/ads/zzlr;->zzbav:Lcom/google/android/gms/internal/ads/zzpi;

    invoke-virtual {v3, v5}, Lcom/google/android/gms/internal/ads/zzpi;->zzbk(I)V

    .line 184
    iput-boolean v5, v2, Lcom/google/android/gms/internal/ads/zzlr;->zzbaw:Z

    goto/16 :goto_4

    .line 179
    :cond_2f4
    new-instance v1, Lcom/google/android/gms/internal/ads/zzht;

    const-string v2, "Offset to encryption data was negative."

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/ads/zzht;-><init>(Ljava/lang/String;)V

    throw v1

    .line 96
    :cond_2fc
    iget-wide v6, v0, Lcom/google/android/gms/internal/ads/zzle;->zzaxp:J

    long-to-int v2, v6

    iget v4, v0, Lcom/google/android/gms/internal/ads/zzle;->zzaxq:I

    sub-int/2addr v2, v4

    .line 97
    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzle;->zzaxr:Lcom/google/android/gms/internal/ads/zzpi;

    if-eqz v4, :cond_44f

    .line 98
    iget-object v4, v4, Lcom/google/android/gms/internal/ads/zzpi;->data:[B

    invoke-interface {v1, v4, v5, v2}, Lcom/google/android/gms/internal/ads/zzjw;->readFully([BII)V

    .line 99
    new-instance v2, Lcom/google/android/gms/internal/ads/zzkv;

    iget v4, v0, Lcom/google/android/gms/internal/ads/zzle;->zzaxo:I

    iget-object v6, v0, Lcom/google/android/gms/internal/ads/zzle;->zzaxr:Lcom/google/android/gms/internal/ads/zzpi;

    invoke-direct {v2, v4, v6}, Lcom/google/android/gms/internal/ads/zzkv;-><init>(ILcom/google/android/gms/internal/ads/zzpi;)V

    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzjw;->getPosition()J

    move-result-wide v6

    .line 100
    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzle;->zzaxl:Ljava/util/Stack;

    invoke-virtual {v4}, Ljava/util/Stack;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_32d

    .line 101
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzle;->zzaxl:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/ads/zzks;

    invoke-virtual {v3, v2}, Lcom/google/android/gms/internal/ads/zzks;->zza(Lcom/google/android/gms/internal/ads/zzkv;)V

    goto/16 :goto_452

    .line 102
    :cond_32d
    iget v4, v2, Lcom/google/android/gms/internal/ads/zzkv;->type:I

    sget v8, Lcom/google/android/gms/internal/ads/zzkt;->zzatp:I

    if-ne v4, v8, :cond_3f5

    .line 103
    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzkv;->zzawl:Lcom/google/android/gms/internal/ads/zzpi;

    .line 104
    invoke-virtual {v2, v5}, Lcom/google/android/gms/internal/ads/zzpi;->zzbk(I)V

    .line 105
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzpi;->readInt()I

    move-result v4

    .line 106
    invoke-static {v4}, Lcom/google/android/gms/internal/ads/zzkt;->zzas(I)I

    move-result v4

    const/4 v5, 0x4

    .line 107
    invoke-virtual {v2, v5}, Lcom/google/android/gms/internal/ads/zzpi;->zzbl(I)V

    .line 108
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzpi;->zziw()J

    move-result-wide v14

    if-nez v4, :cond_353

    .line 111
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzpi;->zziw()J

    move-result-wide v4

    .line 112
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzpi;->zziw()J

    move-result-wide v8

    goto :goto_35b

    .line 113
    :cond_353
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzpi;->zzja()J

    move-result-wide v4

    .line 114
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzpi;->zzja()J

    move-result-wide v8

    :goto_35b
    add-long/2addr v6, v8

    const-wide/32 v10, 0xf4240

    move-wide v8, v4

    move-wide v12, v14

    .line 115
    invoke-static/range {v8 .. v13}, Lcom/google/android/gms/internal/ads/zzpo;->zza(JJJ)J

    move-result-wide v20

    .line 116
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzpi;->zzbl(I)V

    .line 117
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzpi;->readUnsignedShort()I

    move-result v3

    .line 118
    new-array v12, v3, [I

    .line 119
    new-array v13, v3, [J

    .line 120
    new-array v10, v3, [J

    .line 121
    new-array v11, v3, [J

    move-wide/from16 v22, v20

    const/4 v8, 0x0

    :goto_377
    if-ge v8, v3, :cond_3cd

    .line 125
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzpi;->readInt()I

    move-result v9

    const/high16 v16, -0x80000000

    and-int v16, v9, v16

    if-nez v16, :cond_3c5

    .line 129
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzpi;->zziw()J

    move-result-wide v24

    const v16, 0x7fffffff

    and-int v9, v9, v16

    .line 130
    aput v9, v12, v8

    .line 131
    aput-wide v6, v13, v8

    .line 132
    aput-wide v22, v11, v8

    add-long v4, v4, v24

    const-wide/32 v22, 0xf4240

    move/from16 v19, v8

    move-wide v8, v4

    move/from16 p2, v3

    move-wide/from16 v24, v4

    move-object v3, v10

    move-object v4, v11

    move-wide/from16 v10, v22

    move-object v5, v12

    move-object v1, v13

    move-wide v12, v14

    .line 134
    invoke-static/range {v8 .. v13}, Lcom/google/android/gms/internal/ads/zzpo;->zza(JJJ)J

    move-result-wide v22

    .line 135
    aget-wide v8, v4, v19

    sub-long v8, v22, v8

    aput-wide v8, v3, v19

    const/4 v8, 0x4

    .line 136
    invoke-virtual {v2, v8}, Lcom/google/android/gms/internal/ads/zzpi;->zzbl(I)V

    .line 137
    aget v9, v5, v19

    int-to-long v9, v9

    add-long/2addr v6, v9

    add-int/lit8 v9, v19, 0x1

    move-object v13, v1

    move-object v10, v3

    move-object v11, v4

    move-object v12, v5

    move v8, v9

    move-wide/from16 v4, v24

    move-object/from16 v1, p1

    move/from16 v3, p2

    goto :goto_377

    .line 128
    :cond_3c5
    new-instance v1, Lcom/google/android/gms/internal/ads/zzht;

    const-string v2, "Unhandled indirect reference"

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/ads/zzht;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_3cd
    move-object v3, v10

    move-object v4, v11

    move-object v5, v12

    move-object v1, v13

    .line 139
    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    new-instance v6, Lcom/google/android/gms/internal/ads/zzjv;

    invoke-direct {v6, v5, v1, v3, v4}, Lcom/google/android/gms/internal/ads/zzjv;-><init>([I[J[J[J)V

    invoke-static {v2, v6}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    .line 141
    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/google/android/gms/internal/ads/zzle;->zzaxu:J

    .line 142
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzle;->zzarc:Lcom/google/android/gms/internal/ads/zzjz;

    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/gms/internal/ads/zzkc;

    invoke-interface {v2, v1}, Lcom/google/android/gms/internal/ads/zzjz;->zza(Lcom/google/android/gms/internal/ads/zzkc;)V

    const/4 v1, 0x1

    .line 143
    iput-boolean v1, v0, Lcom/google/android/gms/internal/ads/zzle;->zzaya:Z

    goto :goto_44c

    .line 144
    :cond_3f5
    iget v1, v2, Lcom/google/android/gms/internal/ads/zzkv;->type:I

    sget v3, Lcom/google/android/gms/internal/ads/zzkt;->zzavv:I

    if-ne v1, v3, :cond_44c

    .line 145
    iget-object v1, v2, Lcom/google/android/gms/internal/ads/zzkv;->zzawl:Lcom/google/android/gms/internal/ads/zzpi;

    .line 146
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzle;->zzaxy:Lcom/google/android/gms/internal/ads/zzke;

    if-eqz v2, :cond_44c

    const/16 v2, 0xc

    .line 147
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzpi;->zzbk(I)V

    .line 148
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzpi;->zzjb()Ljava/lang/String;

    .line 149
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzpi;->zzjb()Ljava/lang/String;

    .line 150
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzpi;->zziw()J

    move-result-wide v7

    .line 152
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzpi;->zziw()J

    move-result-wide v3

    const-wide/32 v5, 0xf4240

    invoke-static/range {v3 .. v8}, Lcom/google/android/gms/internal/ads/zzpo;->zza(JJJ)J

    move-result-wide v3

    .line 153
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzpi;->zzbk(I)V

    .line 154
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzpi;->zziu()I

    move-result v9

    .line 155
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzle;->zzaxy:Lcom/google/android/gms/internal/ads/zzke;

    invoke-interface {v2, v1, v9}, Lcom/google/android/gms/internal/ads/zzke;->zza(Lcom/google/android/gms/internal/ads/zzpi;I)V

    .line 156
    iget-wide v1, v0, Lcom/google/android/gms/internal/ads/zzle;->zzaxu:J

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v7, v1, v5

    if-eqz v7, :cond_43d

    .line 157
    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzle;->zzaxy:Lcom/google/android/gms/internal/ads/zzke;

    add-long v6, v1, v3

    const/4 v8, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-interface/range {v5 .. v11}, Lcom/google/android/gms/internal/ads/zzke;->zza(JIIILcom/google/android/gms/internal/ads/zzkh;)V

    goto :goto_44c

    .line 158
    :cond_43d
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzle;->zzaxm:Ljava/util/LinkedList;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzlg;

    invoke-direct {v2, v3, v4, v9}, Lcom/google/android/gms/internal/ads/zzlg;-><init>(JI)V

    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 159
    iget v1, v0, Lcom/google/android/gms/internal/ads/zzle;->zzaxt:I

    add-int/2addr v1, v9

    iput v1, v0, Lcom/google/android/gms/internal/ads/zzle;->zzaxt:I

    :cond_44c
    :goto_44c
    move-object/from16 v1, p1

    goto :goto_452

    .line 161
    :cond_44f
    invoke-interface {v1, v2}, Lcom/google/android/gms/internal/ads/zzjw;->zzah(I)V

    .line 162
    :goto_452
    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzjw;->getPosition()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lcom/google/android/gms/internal/ads/zzle;->zzeb(J)V

    goto/16 :goto_4

    .line 39
    :cond_45b
    iget v2, v0, Lcom/google/android/gms/internal/ads/zzle;->zzaxq:I

    if-nez v2, :cond_484

    .line 40
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzle;->zzaxj:Lcom/google/android/gms/internal/ads/zzpi;

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzpi;->data:[B

    const/4 v4, 0x1

    const/4 v6, 0x0

    invoke-interface {v1, v2, v6, v5, v4}, Lcom/google/android/gms/internal/ads/zzjw;->zza([BIIZ)Z

    move-result v2

    if-nez v2, :cond_46d

    goto/16 :goto_5e8

    .line 42
    :cond_46d
    iput v5, v0, Lcom/google/android/gms/internal/ads/zzle;->zzaxq:I

    .line 43
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzle;->zzaxj:Lcom/google/android/gms/internal/ads/zzpi;

    invoke-virtual {v2, v6}, Lcom/google/android/gms/internal/ads/zzpi;->zzbk(I)V

    .line 44
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzle;->zzaxj:Lcom/google/android/gms/internal/ads/zzpi;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzpi;->zziw()J

    move-result-wide v6

    iput-wide v6, v0, Lcom/google/android/gms/internal/ads/zzle;->zzaxp:J

    .line 45
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzle;->zzaxj:Lcom/google/android/gms/internal/ads/zzpi;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzpi;->readInt()I

    move-result v2

    iput v2, v0, Lcom/google/android/gms/internal/ads/zzle;->zzaxo:I

    .line 46
    :cond_484
    iget-wide v6, v0, Lcom/google/android/gms/internal/ads/zzle;->zzaxp:J

    const-wide/16 v8, 0x1

    cmp-long v2, v6, v8

    if-nez v2, :cond_4a0

    .line 48
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzle;->zzaxj:Lcom/google/android/gms/internal/ads/zzpi;

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzpi;->data:[B

    invoke-interface {v1, v2, v5, v5}, Lcom/google/android/gms/internal/ads/zzjw;->readFully([BII)V

    .line 49
    iget v2, v0, Lcom/google/android/gms/internal/ads/zzle;->zzaxq:I

    add-int/2addr v2, v5

    iput v2, v0, Lcom/google/android/gms/internal/ads/zzle;->zzaxq:I

    .line 50
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzle;->zzaxj:Lcom/google/android/gms/internal/ads/zzpi;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzpi;->zzja()J

    move-result-wide v6

    iput-wide v6, v0, Lcom/google/android/gms/internal/ads/zzle;->zzaxp:J

    .line 51
    :cond_4a0
    iget-wide v6, v0, Lcom/google/android/gms/internal/ads/zzle;->zzaxp:J

    iget v2, v0, Lcom/google/android/gms/internal/ads/zzle;->zzaxq:I

    int-to-long v8, v2

    cmp-long v2, v6, v8

    if-ltz v2, :cond_5f4

    .line 53
    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzjw;->getPosition()J

    move-result-wide v6

    iget v2, v0, Lcom/google/android/gms/internal/ads/zzle;->zzaxq:I

    int-to-long v8, v2

    sub-long/2addr v6, v8

    .line 54
    iget v2, v0, Lcom/google/android/gms/internal/ads/zzle;->zzaxo:I

    sget v4, Lcom/google/android/gms/internal/ads/zzkt;->zzatz:I

    if-ne v2, v4, :cond_4d3

    .line 55
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzle;->zzaxe:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    const/4 v4, 0x0

    :goto_4be
    if-ge v4, v2, :cond_4d3

    .line 57
    iget-object v8, v0, Lcom/google/android/gms/internal/ads/zzle;->zzaxe:Landroid/util/SparseArray;

    invoke-virtual {v8, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/android/gms/internal/ads/zzlj;

    iget-object v8, v8, Lcom/google/android/gms/internal/ads/zzlj;->zzazj:Lcom/google/android/gms/internal/ads/zzlr;

    .line 58
    iput-wide v6, v8, Lcom/google/android/gms/internal/ads/zzlr;->zzbah:J

    .line 59
    iput-wide v6, v8, Lcom/google/android/gms/internal/ads/zzlr;->zzbaj:J

    .line 60
    iput-wide v6, v8, Lcom/google/android/gms/internal/ads/zzlr;->zzbai:J

    add-int/lit8 v4, v4, 0x1

    goto :goto_4be

    .line 62
    :cond_4d3
    iget v2, v0, Lcom/google/android/gms/internal/ads/zzle;->zzaxo:I

    sget v4, Lcom/google/android/gms/internal/ads/zzkt;->zzasw:I

    if-ne v2, v4, :cond_4f9

    const/4 v2, 0x0

    .line 63
    iput-object v2, v0, Lcom/google/android/gms/internal/ads/zzle;->zzaxv:Lcom/google/android/gms/internal/ads/zzlj;

    .line 64
    iget-wide v4, v0, Lcom/google/android/gms/internal/ads/zzle;->zzaxp:J

    add-long/2addr v6, v4

    iput-wide v6, v0, Lcom/google/android/gms/internal/ads/zzle;->zzaxs:J

    .line 65
    iget-boolean v2, v0, Lcom/google/android/gms/internal/ads/zzle;->zzaya:Z

    if-nez v2, :cond_4f4

    .line 66
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzle;->zzarc:Lcom/google/android/gms/internal/ads/zzjz;

    new-instance v4, Lcom/google/android/gms/internal/ads/zzkf;

    iget-wide v5, v0, Lcom/google/android/gms/internal/ads/zzle;->zzaih:J

    invoke-direct {v4, v5, v6}, Lcom/google/android/gms/internal/ads/zzkf;-><init>(J)V

    invoke-interface {v2, v4}, Lcom/google/android/gms/internal/ads/zzjz;->zza(Lcom/google/android/gms/internal/ads/zzkc;)V

    const/4 v2, 0x1

    .line 67
    iput-boolean v2, v0, Lcom/google/android/gms/internal/ads/zzle;->zzaya:Z

    .line 68
    :cond_4f4
    iput v3, v0, Lcom/google/android/gms/internal/ads/zzle;->zzaxn:I

    :goto_4f6
    const/4 v2, 0x1

    goto/16 :goto_5e7

    .line 70
    :cond_4f9
    iget v2, v0, Lcom/google/android/gms/internal/ads/zzle;->zzaxo:I

    .line 71
    sget v3, Lcom/google/android/gms/internal/ads/zzkt;->zzatq:I

    if-eq v2, v3, :cond_522

    sget v3, Lcom/google/android/gms/internal/ads/zzkt;->zzats:I

    if-eq v2, v3, :cond_522

    sget v3, Lcom/google/android/gms/internal/ads/zzkt;->zzatt:I

    if-eq v2, v3, :cond_522

    sget v3, Lcom/google/android/gms/internal/ads/zzkt;->zzatu:I

    if-eq v2, v3, :cond_522

    sget v3, Lcom/google/android/gms/internal/ads/zzkt;->zzatv:I

    if-eq v2, v3, :cond_522

    sget v3, Lcom/google/android/gms/internal/ads/zzkt;->zzatz:I

    if-eq v2, v3, :cond_522

    sget v3, Lcom/google/android/gms/internal/ads/zzkt;->zzaua:I

    if-eq v2, v3, :cond_522

    sget v3, Lcom/google/android/gms/internal/ads/zzkt;->zzaub:I

    if-eq v2, v3, :cond_522

    sget v3, Lcom/google/android/gms/internal/ads/zzkt;->zzaue:I

    if-ne v2, v3, :cond_520

    goto :goto_522

    :cond_520
    const/4 v2, 0x0

    goto :goto_523

    :cond_522
    :goto_522
    const/4 v2, 0x1

    :goto_523
    if-eqz v2, :cond_54c

    .line 73
    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzjw;->getPosition()J

    move-result-wide v2

    iget-wide v4, v0, Lcom/google/android/gms/internal/ads/zzle;->zzaxp:J

    add-long/2addr v2, v4

    const-wide/16 v4, 0x8

    sub-long/2addr v2, v4

    .line 74
    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzle;->zzaxl:Ljava/util/Stack;

    new-instance v5, Lcom/google/android/gms/internal/ads/zzks;

    iget v6, v0, Lcom/google/android/gms/internal/ads/zzle;->zzaxo:I

    invoke-direct {v5, v6, v2, v3}, Lcom/google/android/gms/internal/ads/zzks;-><init>(IJ)V

    invoke-virtual {v4, v5}, Ljava/util/Stack;->add(Ljava/lang/Object;)Z

    .line 75
    iget-wide v4, v0, Lcom/google/android/gms/internal/ads/zzle;->zzaxp:J

    iget v6, v0, Lcom/google/android/gms/internal/ads/zzle;->zzaxq:I

    int-to-long v6, v6

    cmp-long v8, v4, v6

    if-nez v8, :cond_548

    .line 76
    invoke-direct {v0, v2, v3}, Lcom/google/android/gms/internal/ads/zzle;->zzeb(J)V

    goto :goto_4f6

    .line 77
    :cond_548
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzle;->zzha()V

    goto :goto_4f6

    .line 78
    :cond_54c
    iget v2, v0, Lcom/google/android/gms/internal/ads/zzle;->zzaxo:I

    .line 79
    sget v3, Lcom/google/android/gms/internal/ads/zzkt;->zzauh:I

    if-eq v2, v3, :cond_5a1

    sget v3, Lcom/google/android/gms/internal/ads/zzkt;->zzaug:I

    if-eq v2, v3, :cond_5a1

    sget v3, Lcom/google/android/gms/internal/ads/zzkt;->zzatr:I

    if-eq v2, v3, :cond_5a1

    sget v3, Lcom/google/android/gms/internal/ads/zzkt;->zzatp:I

    if-eq v2, v3, :cond_5a1

    sget v3, Lcom/google/android/gms/internal/ads/zzkt;->zzaui:I

    if-eq v2, v3, :cond_5a1

    sget v3, Lcom/google/android/gms/internal/ads/zzkt;->zzatl:I

    if-eq v2, v3, :cond_5a1

    sget v3, Lcom/google/android/gms/internal/ads/zzkt;->zzatm:I

    if-eq v2, v3, :cond_5a1

    sget v3, Lcom/google/android/gms/internal/ads/zzkt;->zzaud:I

    if-eq v2, v3, :cond_5a1

    sget v3, Lcom/google/android/gms/internal/ads/zzkt;->zzatn:I

    if-eq v2, v3, :cond_5a1

    sget v3, Lcom/google/android/gms/internal/ads/zzkt;->zzato:I

    if-eq v2, v3, :cond_5a1

    sget v3, Lcom/google/android/gms/internal/ads/zzkt;->zzauj:I

    if-eq v2, v3, :cond_5a1

    sget v3, Lcom/google/android/gms/internal/ads/zzkt;->zzaur:I

    if-eq v2, v3, :cond_5a1

    sget v3, Lcom/google/android/gms/internal/ads/zzkt;->zzaus:I

    if-eq v2, v3, :cond_5a1

    sget v3, Lcom/google/android/gms/internal/ads/zzkt;->zzauw:I

    if-eq v2, v3, :cond_5a1

    sget v3, Lcom/google/android/gms/internal/ads/zzkt;->zzauv:I

    if-eq v2, v3, :cond_5a1

    sget v3, Lcom/google/android/gms/internal/ads/zzkt;->zzaut:I

    if-eq v2, v3, :cond_5a1

    sget v3, Lcom/google/android/gms/internal/ads/zzkt;->zzauu:I

    if-eq v2, v3, :cond_5a1

    sget v3, Lcom/google/android/gms/internal/ads/zzkt;->zzauf:I

    if-eq v2, v3, :cond_5a1

    sget v3, Lcom/google/android/gms/internal/ads/zzkt;->zzauc:I

    if-eq v2, v3, :cond_5a1

    sget v3, Lcom/google/android/gms/internal/ads/zzkt;->zzavv:I

    if-ne v2, v3, :cond_59f

    goto :goto_5a1

    :cond_59f
    const/4 v2, 0x0

    goto :goto_5a2

    :cond_5a1
    :goto_5a1
    const/4 v2, 0x1

    :goto_5a2
    const-wide/32 v3, 0x7fffffff

    if-eqz v2, :cond_5db

    .line 81
    iget v2, v0, Lcom/google/android/gms/internal/ads/zzle;->zzaxq:I

    if-ne v2, v5, :cond_5d3

    .line 83
    iget-wide v6, v0, Lcom/google/android/gms/internal/ads/zzle;->zzaxp:J

    cmp-long v2, v6, v3

    if-gtz v2, :cond_5cb

    .line 85
    new-instance v2, Lcom/google/android/gms/internal/ads/zzpi;

    iget-wide v3, v0, Lcom/google/android/gms/internal/ads/zzle;->zzaxp:J

    long-to-int v4, v3

    invoke-direct {v2, v4}, Lcom/google/android/gms/internal/ads/zzpi;-><init>(I)V

    iput-object v2, v0, Lcom/google/android/gms/internal/ads/zzle;->zzaxr:Lcom/google/android/gms/internal/ads/zzpi;

    .line 86
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzle;->zzaxj:Lcom/google/android/gms/internal/ads/zzpi;

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzpi;->data:[B

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzle;->zzaxr:Lcom/google/android/gms/internal/ads/zzpi;

    iget-object v3, v3, Lcom/google/android/gms/internal/ads/zzpi;->data:[B

    const/4 v4, 0x0

    invoke-static {v2, v4, v3, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v2, 0x1

    .line 87
    iput v2, v0, Lcom/google/android/gms/internal/ads/zzle;->zzaxn:I

    goto :goto_5e7

    .line 84
    :cond_5cb
    new-instance v1, Lcom/google/android/gms/internal/ads/zzht;

    const-string v2, "Leaf atom with length > 2147483647 (unsupported)."

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/ads/zzht;-><init>(Ljava/lang/String;)V

    throw v1

    .line 82
    :cond_5d3
    new-instance v1, Lcom/google/android/gms/internal/ads/zzht;

    const-string v2, "Leaf atom defines extended atom size (unsupported)."

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/ads/zzht;-><init>(Ljava/lang/String;)V

    throw v1

    .line 88
    :cond_5db
    iget-wide v5, v0, Lcom/google/android/gms/internal/ads/zzle;->zzaxp:J

    cmp-long v2, v5, v3

    if-gtz v2, :cond_5ec

    const/4 v2, 0x0

    .line 90
    iput-object v2, v0, Lcom/google/android/gms/internal/ads/zzle;->zzaxr:Lcom/google/android/gms/internal/ads/zzpi;

    const/4 v2, 0x1

    .line 91
    iput v2, v0, Lcom/google/android/gms/internal/ads/zzle;->zzaxn:I

    :goto_5e7
    const/4 v6, 0x1

    :goto_5e8
    if-nez v6, :cond_4

    const/4 v1, -0x1

    return v1

    .line 89
    :cond_5ec
    new-instance v1, Lcom/google/android/gms/internal/ads/zzht;

    const-string v2, "Skipping atom with length > 2147483647 (unsupported)."

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/ads/zzht;-><init>(Ljava/lang/String;)V

    throw v1

    .line 52
    :cond_5f4
    new-instance v1, Lcom/google/android/gms/internal/ads/zzht;

    const-string v2, "Atom size less than header length (unsupported)."

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/ads/zzht;-><init>(Ljava/lang/String;)V

    goto :goto_5fd

    :goto_5fc
    throw v1

    :goto_5fd
    goto :goto_5fc
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzjz;)V
    .registers 2

    .line 25
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzle;->zzarc:Lcom/google/android/gms/internal/ads/zzjz;

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

    .line 24
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzlm;->zzd(Lcom/google/android/gms/internal/ads/zzjw;)Z

    move-result p1

    return p1
.end method

.method public final zzc(JJ)V
    .registers 5

    .line 27
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzle;->zzaxe:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result p1

    const/4 p2, 0x0

    const/4 p3, 0x0

    :goto_8
    if-ge p3, p1, :cond_18

    .line 29
    iget-object p4, p0, Lcom/google/android/gms/internal/ads/zzle;->zzaxe:Landroid/util/SparseArray;

    invoke-virtual {p4, p3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/google/android/gms/internal/ads/zzlj;

    invoke-virtual {p4}, Lcom/google/android/gms/internal/ads/zzlj;->reset()V

    add-int/lit8 p3, p3, 0x1

    goto :goto_8

    .line 31
    :cond_18
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzle;->zzaxm:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/LinkedList;->clear()V

    .line 32
    iput p2, p0, Lcom/google/android/gms/internal/ads/zzle;->zzaxt:I

    .line 33
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzle;->zzaxl:Ljava/util/Stack;

    invoke-virtual {p1}, Ljava/util/Stack;->clear()V

    .line 34
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzle;->zzha()V

    return-void
.end method
