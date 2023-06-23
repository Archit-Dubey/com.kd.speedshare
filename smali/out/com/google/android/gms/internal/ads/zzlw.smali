.class public final Lcom/google/android/gms/internal/ads/zzlw;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.2.0"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/ads/zzlw$zza;
    }
.end annotation


# static fields
.field private static final zzbcq:Lcom/google/android/gms/internal/ads/zzlt;

.field private static final zzbcr:Ljava/util/regex/Pattern;

.field private static final zzbcs:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/google/android/gms/internal/ads/zzlw$zza;",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/ads/zzlt;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final zzbct:Landroid/util/SparseIntArray;

.field private static final zzbcu:Landroid/util/SparseIntArray;

.field private static final zzbcv:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static zzbcw:I


# direct methods
.method static constructor <clinit>()V
    .registers 16

    const-string v0, "OMX.google.raw.decoder"

    .line 182
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzlt;->zzba(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzlt;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzlw;->zzbcq:Lcom/google/android/gms/internal/ads/zzlt;

    const-string v0, "^\\D?(\\d+)$"

    .line 183
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzlw;->zzbcr:Ljava/util/regex/Pattern;

    .line 184
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzlw;->zzbcs:Ljava/util/HashMap;

    const/4 v0, -0x1

    .line 185
    sput v0, Lcom/google/android/gms/internal/ads/zzlw;->zzbcw:I

    .line 186
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    .line 187
    sput-object v0, Lcom/google/android/gms/internal/ads/zzlw;->zzbct:Landroid/util/SparseIntArray;

    const/16 v1, 0x42

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 188
    sget-object v0, Lcom/google/android/gms/internal/ads/zzlw;->zzbct:Landroid/util/SparseIntArray;

    const/16 v1, 0x4d

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 189
    sget-object v0, Lcom/google/android/gms/internal/ads/zzlw;->zzbct:Landroid/util/SparseIntArray;

    const/16 v1, 0x58

    const/4 v4, 0x4

    invoke-virtual {v0, v1, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 190
    sget-object v0, Lcom/google/android/gms/internal/ads/zzlw;->zzbct:Landroid/util/SparseIntArray;

    const/16 v1, 0x64

    const/16 v5, 0x8

    invoke-virtual {v0, v1, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 191
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    .line 192
    sput-object v0, Lcom/google/android/gms/internal/ads/zzlw;->zzbcu:Landroid/util/SparseIntArray;

    const/16 v1, 0xa

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 193
    sget-object v0, Lcom/google/android/gms/internal/ads/zzlw;->zzbcu:Landroid/util/SparseIntArray;

    const/16 v1, 0xb

    invoke-virtual {v0, v1, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 194
    sget-object v0, Lcom/google/android/gms/internal/ads/zzlw;->zzbcu:Landroid/util/SparseIntArray;

    const/16 v1, 0xc

    invoke-virtual {v0, v1, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 195
    sget-object v0, Lcom/google/android/gms/internal/ads/zzlw;->zzbcu:Landroid/util/SparseIntArray;

    const/16 v1, 0xd

    const/16 v6, 0x10

    invoke-virtual {v0, v1, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 196
    sget-object v0, Lcom/google/android/gms/internal/ads/zzlw;->zzbcu:Landroid/util/SparseIntArray;

    const/16 v1, 0x14

    const/16 v7, 0x20

    invoke-virtual {v0, v1, v7}, Landroid/util/SparseIntArray;->put(II)V

    .line 197
    sget-object v0, Lcom/google/android/gms/internal/ads/zzlw;->zzbcu:Landroid/util/SparseIntArray;

    const/16 v1, 0x15

    const/16 v8, 0x40

    invoke-virtual {v0, v1, v8}, Landroid/util/SparseIntArray;->put(II)V

    .line 198
    sget-object v0, Lcom/google/android/gms/internal/ads/zzlw;->zzbcu:Landroid/util/SparseIntArray;

    const/16 v1, 0x16

    const/16 v9, 0x80

    invoke-virtual {v0, v1, v9}, Landroid/util/SparseIntArray;->put(II)V

    .line 199
    sget-object v0, Lcom/google/android/gms/internal/ads/zzlw;->zzbcu:Landroid/util/SparseIntArray;

    const/16 v1, 0x1e

    const/16 v10, 0x100

    invoke-virtual {v0, v1, v10}, Landroid/util/SparseIntArray;->put(II)V

    .line 200
    sget-object v0, Lcom/google/android/gms/internal/ads/zzlw;->zzbcu:Landroid/util/SparseIntArray;

    const/16 v1, 0x1f

    const/16 v11, 0x200

    invoke-virtual {v0, v1, v11}, Landroid/util/SparseIntArray;->put(II)V

    .line 201
    sget-object v0, Lcom/google/android/gms/internal/ads/zzlw;->zzbcu:Landroid/util/SparseIntArray;

    const/16 v1, 0x400

    invoke-virtual {v0, v7, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 202
    sget-object v0, Lcom/google/android/gms/internal/ads/zzlw;->zzbcu:Landroid/util/SparseIntArray;

    const/16 v12, 0x28

    const/16 v13, 0x800

    invoke-virtual {v0, v12, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 203
    sget-object v0, Lcom/google/android/gms/internal/ads/zzlw;->zzbcu:Landroid/util/SparseIntArray;

    const/16 v12, 0x29

    const/16 v14, 0x1000

    invoke-virtual {v0, v12, v14}, Landroid/util/SparseIntArray;->put(II)V

    .line 204
    sget-object v0, Lcom/google/android/gms/internal/ads/zzlw;->zzbcu:Landroid/util/SparseIntArray;

    const/16 v12, 0x2a

    const/16 v15, 0x2000

    invoke-virtual {v0, v12, v15}, Landroid/util/SparseIntArray;->put(II)V

    .line 205
    sget-object v0, Lcom/google/android/gms/internal/ads/zzlw;->zzbcu:Landroid/util/SparseIntArray;

    const/16 v12, 0x32

    const/16 v15, 0x4000

    invoke-virtual {v0, v12, v15}, Landroid/util/SparseIntArray;->put(II)V

    .line 206
    sget-object v0, Lcom/google/android/gms/internal/ads/zzlw;->zzbcu:Landroid/util/SparseIntArray;

    const/16 v12, 0x33

    const v13, 0x8000

    invoke-virtual {v0, v12, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 207
    sget-object v0, Lcom/google/android/gms/internal/ads/zzlw;->zzbcu:Landroid/util/SparseIntArray;

    const/16 v12, 0x34

    const/high16 v13, 0x10000

    invoke-virtual {v0, v12, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 208
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 209
    sput-object v0, Lcom/google/android/gms/internal/ads/zzlw;->zzbcv:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v12, "L30"

    invoke-interface {v0, v12, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 210
    sget-object v0, Lcom/google/android/gms/internal/ads/zzlw;->zzbcv:Ljava/util/Map;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v4, "L60"

    invoke-interface {v0, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 211
    sget-object v0, Lcom/google/android/gms/internal/ads/zzlw;->zzbcv:Ljava/util/Map;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v4, "L63"

    invoke-interface {v0, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 212
    sget-object v0, Lcom/google/android/gms/internal/ads/zzlw;->zzbcv:Ljava/util/Map;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v4, "L90"

    invoke-interface {v0, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 213
    sget-object v0, Lcom/google/android/gms/internal/ads/zzlw;->zzbcv:Ljava/util/Map;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v4, "L93"

    invoke-interface {v0, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 214
    sget-object v0, Lcom/google/android/gms/internal/ads/zzlw;->zzbcv:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "L120"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 215
    sget-object v0, Lcom/google/android/gms/internal/ads/zzlw;->zzbcv:Ljava/util/Map;

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "L123"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 216
    sget-object v0, Lcom/google/android/gms/internal/ads/zzlw;->zzbcv:Ljava/util/Map;

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "L150"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 217
    sget-object v0, Lcom/google/android/gms/internal/ads/zzlw;->zzbcv:Ljava/util/Map;

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "L153"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 218
    sget-object v0, Lcom/google/android/gms/internal/ads/zzlw;->zzbcv:Ljava/util/Map;

    const/high16 v1, 0x40000

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "L156"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 219
    sget-object v0, Lcom/google/android/gms/internal/ads/zzlw;->zzbcv:Ljava/util/Map;

    const/high16 v1, 0x100000

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "L180"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 220
    sget-object v0, Lcom/google/android/gms/internal/ads/zzlw;->zzbcv:Ljava/util/Map;

    const/high16 v1, 0x400000

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "L183"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 221
    sget-object v0, Lcom/google/android/gms/internal/ads/zzlw;->zzbcv:Ljava/util/Map;

    const/high16 v1, 0x1000000

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "L186"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 222
    sget-object v0, Lcom/google/android/gms/internal/ads/zzlw;->zzbcv:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "H30"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 223
    sget-object v0, Lcom/google/android/gms/internal/ads/zzlw;->zzbcv:Ljava/util/Map;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "H60"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 224
    sget-object v0, Lcom/google/android/gms/internal/ads/zzlw;->zzbcv:Ljava/util/Map;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "H63"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 225
    sget-object v0, Lcom/google/android/gms/internal/ads/zzlw;->zzbcv:Ljava/util/Map;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "H90"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 226
    sget-object v0, Lcom/google/android/gms/internal/ads/zzlw;->zzbcv:Ljava/util/Map;

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "H93"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 227
    sget-object v0, Lcom/google/android/gms/internal/ads/zzlw;->zzbcv:Ljava/util/Map;

    const/16 v1, 0x800

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "H120"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 228
    sget-object v0, Lcom/google/android/gms/internal/ads/zzlw;->zzbcv:Ljava/util/Map;

    const/16 v1, 0x2000

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "H123"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 229
    sget-object v0, Lcom/google/android/gms/internal/ads/zzlw;->zzbcv:Ljava/util/Map;

    const v1, 0x8000

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "H150"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 230
    sget-object v0, Lcom/google/android/gms/internal/ads/zzlw;->zzbcv:Ljava/util/Map;

    const/high16 v1, 0x20000

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "H153"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 231
    sget-object v0, Lcom/google/android/gms/internal/ads/zzlw;->zzbcv:Ljava/util/Map;

    const/high16 v1, 0x80000

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "H156"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 232
    sget-object v0, Lcom/google/android/gms/internal/ads/zzlw;->zzbcv:Ljava/util/Map;

    const/high16 v1, 0x200000

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "H180"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 233
    sget-object v0, Lcom/google/android/gms/internal/ads/zzlw;->zzbcv:Ljava/util/Map;

    const/high16 v1, 0x800000

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "H183"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 234
    sget-object v0, Lcom/google/android/gms/internal/ads/zzlw;->zzbcv:Ljava/util/Map;

    const/high16 v1, 0x2000000

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "H186"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static zza(Ljava/lang/String;[Ljava/lang/String;)Landroid/util/Pair;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 158
    array-length v0, p1

    const-string v1, "Ignoring malformed AVC codec string: "

    const/4 v2, 0x2

    const/4 v3, 0x0

    const-string v4, "MediaCodecUtil"

    if-ge v0, v2, :cond_21

    .line 159
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p1

    if-eqz p1, :cond_18

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_1d

    :cond_18
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_1d
    invoke-static {v4, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v3

    :cond_21
    const/4 v0, 0x1

    .line 161
    :try_start_22
    aget-object v5, p1, v0

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x6

    if-ne v5, v6, :cond_4c

    .line 162
    aget-object v5, p1, v0

    const/4 v6, 0x0

    invoke-virtual {v5, v6, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const/16 v5, 0x10

    invoke-static {v2, v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 163
    aget-object p1, p1, v0

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    goto :goto_65

    .line 164
    :cond_4c
    array-length v5, p1

    const/4 v6, 0x3

    if-lt v5, v6, :cond_d1

    .line 165
    aget-object v0, p1, v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 166
    aget-object p1, p1, v2

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0
    :try_end_64
    .catch Ljava/lang/NumberFormatException; {:try_start_22 .. :try_end_64} :catch_e9

    move-object v2, v0

    .line 172
    :goto_65
    sget-object p1, Lcom/google/android/gms/internal/ads/zzlw;->zzbct:Landroid/util/SparseIntArray;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/util/SparseIntArray;->get(I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    if-nez p1, :cond_98

    .line 174
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    add-int/lit8 p1, p1, 0x15

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string p1, "Unknown AVC profile: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v3

    .line 176
    :cond_98
    sget-object v0, Lcom/google/android/gms/internal/ads/zzlw;->zzbcu:Landroid/util/SparseIntArray;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    if-nez v0, :cond_cb

    .line 178
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    add-int/lit8 p1, p1, 0x13

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string p1, "Unknown AVC level: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v3

    .line 180
    :cond_cb
    new-instance p0, Landroid/util/Pair;

    invoke-direct {p0, p1, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0

    .line 167
    :cond_d1
    :try_start_d1
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_e0

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_e5

    :cond_e0
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_e5
    invoke-static {v4, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_e8
    .catch Ljava/lang/NumberFormatException; {:try_start_d1 .. :try_end_e8} :catch_e9

    return-object v3

    :catch_e9
    nop

    .line 170
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p1

    if-eqz p1, :cond_f9

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_fe

    :cond_f9
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_fe
    invoke-static {v4, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v3
.end method

.method private static zza(Lcom/google/android/gms/internal/ads/zzlw$zza;Lcom/google/android/gms/internal/ads/zzlz;)Ljava/util/List;
    .registers 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzlw$zza;",
            "Lcom/google/android/gms/internal/ads/zzlz;",
            ")",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/ads/zzlt;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzma;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    .line 77
    :try_start_4
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 78
    iget-object v4, v1, Lcom/google/android/gms/internal/ads/zzlw$zza;->mimeType:Ljava/lang/String;

    .line 79
    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzlz;->getCodecCount()I

    move-result v5

    .line 80
    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzlz;->zzhk()Z

    move-result v6

    const/4 v8, 0x0

    :goto_14
    if-ge v8, v5, :cond_2ad

    .line 82
    invoke-interface {v2, v8}, Lcom/google/android/gms/internal/ads/zzlz;->getCodecInfoAt(I)Landroid/media/MediaCodecInfo;

    move-result-object v9

    .line 83
    invoke-virtual {v9}, Landroid/media/MediaCodecInfo;->getName()Ljava/lang/String;

    move-result-object v10

    .line 85
    invoke-virtual {v9}, Landroid/media/MediaCodecInfo;->isEncoder()Z

    move-result v0
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_22} :catch_2ae

    const-string v11, ".secure"

    if-nez v0, :cond_1af

    if-nez v6, :cond_30

    :try_start_28
    invoke-virtual {v10, v11}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_30

    goto/16 :goto_1af

    .line 87
    :cond_30
    sget v0, Lcom/google/android/gms/internal/ads/zzpo;->SDK_INT:I

    const/16 v13, 0x15

    if-ge v0, v13, :cond_68

    const-string v0, "CIPAACDecoder"

    .line 88
    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1af

    const-string v0, "CIPMP3Decoder"

    .line 89
    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1af

    const-string v0, "CIPVorbisDecoder"

    .line 90
    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1af

    const-string v0, "CIPAMRNBDecoder"

    .line 91
    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1af

    const-string v0, "AACDecoder"

    .line 92
    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1af

    const-string v0, "MP3Decoder"

    .line 93
    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_68

    goto/16 :goto_1af

    .line 95
    :cond_68
    sget v0, Lcom/google/android/gms/internal/ads/zzpo;->SDK_INT:I

    const/16 v13, 0x12

    if-ge v0, v13, :cond_78

    const-string v0, "OMX.SEC.MP3.Decoder"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_78

    goto/16 :goto_1af

    .line 97
    :cond_78
    sget v0, Lcom/google/android/gms/internal/ads/zzpo;->SDK_INT:I

    if-ge v0, v13, :cond_90

    const-string v0, "OMX.MTK.AUDIO.DECODER.AAC"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_90

    const-string v0, "a70"

    sget-object v13, Lcom/google/android/gms/internal/ads/zzpo;->DEVICE:Ljava/lang/String;

    .line 98
    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_90

    goto/16 :goto_1af

    .line 100
    :cond_90
    sget v0, Lcom/google/android/gms/internal/ads/zzpo;->SDK_INT:I

    const/16 v13, 0x10

    if-ne v0, v13, :cond_118

    const-string v0, "OMX.qcom.audio.decoder.mp3"

    .line 101
    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_118

    const-string v0, "dlxu"

    sget-object v14, Lcom/google/android/gms/internal/ads/zzpo;->DEVICE:Ljava/lang/String;

    .line 102
    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1af

    const-string v0, "protou"

    sget-object v14, Lcom/google/android/gms/internal/ads/zzpo;->DEVICE:Ljava/lang/String;

    .line 103
    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1af

    const-string v0, "ville"

    sget-object v14, Lcom/google/android/gms/internal/ads/zzpo;->DEVICE:Ljava/lang/String;

    .line 104
    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1af

    const-string v0, "villeplus"

    sget-object v14, Lcom/google/android/gms/internal/ads/zzpo;->DEVICE:Ljava/lang/String;

    .line 105
    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1af

    const-string v0, "villec2"

    sget-object v14, Lcom/google/android/gms/internal/ads/zzpo;->DEVICE:Ljava/lang/String;

    .line 106
    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1af

    sget-object v0, Lcom/google/android/gms/internal/ads/zzpo;->DEVICE:Ljava/lang/String;

    const-string v14, "gee"

    .line 107
    invoke-virtual {v0, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1af

    const-string v0, "C6602"

    sget-object v14, Lcom/google/android/gms/internal/ads/zzpo;->DEVICE:Ljava/lang/String;

    .line 108
    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1af

    const-string v0, "C6603"

    sget-object v14, Lcom/google/android/gms/internal/ads/zzpo;->DEVICE:Ljava/lang/String;

    .line 109
    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1af

    const-string v0, "C6606"

    sget-object v14, Lcom/google/android/gms/internal/ads/zzpo;->DEVICE:Ljava/lang/String;

    .line 110
    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1af

    const-string v0, "C6616"

    sget-object v14, Lcom/google/android/gms/internal/ads/zzpo;->DEVICE:Ljava/lang/String;

    .line 111
    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1af

    const-string v0, "L36h"

    sget-object v14, Lcom/google/android/gms/internal/ads/zzpo;->DEVICE:Ljava/lang/String;

    .line 112
    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1af

    const-string v0, "SO-02E"

    sget-object v14, Lcom/google/android/gms/internal/ads/zzpo;->DEVICE:Ljava/lang/String;

    .line 113
    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_118

    goto/16 :goto_1af

    .line 115
    :cond_118
    sget v0, Lcom/google/android/gms/internal/ads/zzpo;->SDK_INT:I

    if-ne v0, v13, :cond_14d

    const-string v0, "OMX.qcom.audio.decoder.aac"

    .line 116
    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14d

    const-string v0, "C1504"

    sget-object v13, Lcom/google/android/gms/internal/ads/zzpo;->DEVICE:Ljava/lang/String;

    .line 117
    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1af

    const-string v0, "C1505"

    sget-object v13, Lcom/google/android/gms/internal/ads/zzpo;->DEVICE:Ljava/lang/String;

    .line 118
    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1af

    const-string v0, "C1604"

    sget-object v13, Lcom/google/android/gms/internal/ads/zzpo;->DEVICE:Ljava/lang/String;

    .line 119
    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1af

    const-string v0, "C1605"

    sget-object v13, Lcom/google/android/gms/internal/ads/zzpo;->DEVICE:Ljava/lang/String;

    .line 120
    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14d

    goto :goto_1af

    .line 122
    :cond_14d
    sget v0, Lcom/google/android/gms/internal/ads/zzpo;->SDK_INT:I
    :try_end_14f
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_14f} :catch_2ae

    const-string v13, "jflte"

    const/16 v14, 0x13

    if-gt v0, v14, :cond_198

    :try_start_155
    const-string v0, "OMX.SEC.vp8.dec"

    .line 123
    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_198

    const-string v0, "samsung"

    sget-object v15, Lcom/google/android/gms/internal/ads/zzpo;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_198

    sget-object v0, Lcom/google/android/gms/internal/ads/zzpo;->DEVICE:Ljava/lang/String;

    const-string v15, "d2"

    .line 124
    invoke-virtual {v0, v15}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1af

    sget-object v0, Lcom/google/android/gms/internal/ads/zzpo;->DEVICE:Ljava/lang/String;

    const-string v15, "serrano"

    invoke-virtual {v0, v15}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1af

    sget-object v0, Lcom/google/android/gms/internal/ads/zzpo;->DEVICE:Ljava/lang/String;

    .line 125
    invoke-virtual {v0, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1af

    sget-object v0, Lcom/google/android/gms/internal/ads/zzpo;->DEVICE:Ljava/lang/String;

    const-string v15, "santos"

    invoke-virtual {v0, v15}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1af

    sget-object v0, Lcom/google/android/gms/internal/ads/zzpo;->DEVICE:Ljava/lang/String;

    const-string v15, "t0"

    .line 126
    invoke-virtual {v0, v15}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_198

    goto :goto_1af

    .line 128
    :cond_198
    sget v0, Lcom/google/android/gms/internal/ads/zzpo;->SDK_INT:I

    if-gt v0, v14, :cond_1ad

    sget-object v0, Lcom/google/android/gms/internal/ads/zzpo;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1ad

    const-string v0, "OMX.qcom.video.decoder.vp8"

    .line 129
    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1ad

    goto :goto_1af

    :cond_1ad
    const/4 v0, 0x1

    goto :goto_1b0

    :cond_1af
    :goto_1af
    const/4 v0, 0x0

    :goto_1b0
    if-eqz v0, :cond_2a3

    .line 133
    invoke-virtual {v9}, Landroid/media/MediaCodecInfo;->getSupportedTypes()[Ljava/lang/String;

    move-result-object v13

    array-length v14, v13

    const/4 v15, 0x0

    :goto_1b8
    if-ge v15, v14, :cond_2a3

    aget-object v12, v13, v15

    .line 134
    invoke-virtual {v12, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0
    :try_end_1c0
    .catch Ljava/lang/Exception; {:try_start_155 .. :try_end_1c0} :catch_2ae

    if-eqz v0, :cond_299

    .line 135
    :try_start_1c2
    invoke-virtual {v9, v12}, Landroid/media/MediaCodecInfo;->getCapabilitiesForType(Ljava/lang/String;)Landroid/media/MediaCodecInfo$CodecCapabilities;

    move-result-object v0

    .line 136
    invoke-interface {v2, v4, v0}, Lcom/google/android/gms/internal/ads/zzlz;->zza(Ljava/lang/String;Landroid/media/MediaCodecInfo$CodecCapabilities;)Z

    move-result v7

    .line 138
    sget v2, Lcom/google/android/gms/internal/ads/zzpo;->SDK_INT:I
    :try_end_1cc
    .catch Ljava/lang/Exception; {:try_start_1c2 .. :try_end_1cc} :catch_22e

    move/from16 v16, v5

    const/16 v5, 0x16

    if-gt v2, v5, :cond_1fa

    :try_start_1d2
    sget-object v2, Lcom/google/android/gms/internal/ads/zzpo;->MODEL:Ljava/lang/String;

    const-string v5, "ODROID-XU3"

    .line 139
    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1e6

    sget-object v2, Lcom/google/android/gms/internal/ads/zzpo;->MODEL:Ljava/lang/String;

    const-string v5, "Nexus 10"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1fa

    :cond_1e6
    const-string v2, "OMX.Exynos.AVC.Decoder"

    .line 140
    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1f6

    const-string v2, "OMX.Exynos.AVC.Decoder.secure"

    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1fa

    :cond_1f6
    const/4 v2, 0x1

    goto :goto_1fb

    :catch_1f8
    move-exception v0

    goto :goto_231

    :cond_1fa
    const/4 v2, 0x0

    :goto_1fb
    if-eqz v6, :cond_204

    .line 142
    iget-boolean v5, v1, Lcom/google/android/gms/internal/ads/zzlw$zza;->zzbck:Z

    if-eq v5, v7, :cond_202

    goto :goto_204

    :cond_202
    :goto_202
    const/4 v5, 0x0

    goto :goto_20b

    :cond_204
    :goto_204
    if-nez v6, :cond_214

    iget-boolean v5, v1, Lcom/google/android/gms/internal/ads/zzlw$zza;->zzbck:Z

    if-nez v5, :cond_214

    goto :goto_202

    .line 143
    :goto_20b
    invoke-static {v10, v4, v0, v2, v5}, Lcom/google/android/gms/internal/ads/zzlt;->zza(Ljava/lang/String;Ljava/lang/String;Landroid/media/MediaCodecInfo$CodecCapabilities;ZZ)Lcom/google/android/gms/internal/ads/zzlt;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_29b

    :cond_214
    const/4 v5, 0x0

    if-nez v6, :cond_22c

    if-eqz v7, :cond_22c

    .line 145
    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v11}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7
    :try_end_221
    .catch Ljava/lang/Exception; {:try_start_1d2 .. :try_end_221} :catch_1f8

    const/4 v5, 0x1

    :try_start_222
    invoke-static {v7, v4, v0, v2, v5}, Lcom/google/android/gms/internal/ads/zzlt;->zza(Ljava/lang/String;Ljava/lang/String;Landroid/media/MediaCodecInfo$CodecCapabilities;ZZ)Lcom/google/android/gms/internal/ads/zzlt;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_229
    .catch Ljava/lang/Exception; {:try_start_222 .. :try_end_229} :catch_22a

    return-object v3

    :catch_22a
    move-exception v0

    goto :goto_232

    :cond_22c
    const/4 v5, 0x1

    goto :goto_29b

    :catch_22e
    move-exception v0

    move/from16 v16, v5

    :goto_231
    const/4 v5, 0x1

    .line 149
    :goto_232
    :try_start_232
    sget v2, Lcom/google/android/gms/internal/ads/zzpo;->SDK_INT:I
    :try_end_234
    .catch Ljava/lang/Exception; {:try_start_232 .. :try_end_234} :catch_2ae

    const/16 v7, 0x17

    const-string v5, "MediaCodecUtil"

    if-gt v2, v7, :cond_264

    :try_start_23a
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_264

    .line 150
    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x2e

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "Skipping codec "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " (failed to query capabilities)"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_29b

    .line 151
    :cond_264
    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x19

    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v1, v2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Failed to query codec "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ("

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    throw v0
    :try_end_299
    .catch Ljava/lang/Exception; {:try_start_23a .. :try_end_299} :catch_2ae

    :cond_299
    move/from16 v16, v5

    :goto_29b
    add-int/lit8 v15, v15, 0x1

    move-object/from16 v2, p1

    move/from16 v5, v16

    goto/16 :goto_1b8

    :cond_2a3
    move/from16 v16, v5

    add-int/lit8 v8, v8, 0x1

    move-object/from16 v2, p1

    move/from16 v5, v16

    goto/16 :goto_14

    :cond_2ad
    return-object v3

    :catch_2ae
    move-exception v0

    .line 157
    new-instance v1, Lcom/google/android/gms/internal/ads/zzma;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lcom/google/android/gms/internal/ads/zzma;-><init>(Ljava/lang/Throwable;Lcom/google/android/gms/internal/ads/zzly;)V

    goto :goto_2b7

    :goto_2b6
    throw v1

    :goto_2b7
    goto :goto_2b6
.end method

.method public static zzb(Ljava/lang/String;Z)Lcom/google/android/gms/internal/ads/zzlt;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzma;
        }
    .end annotation

    .line 2
    invoke-static {p0, p1}, Lcom/google/android/gms/internal/ads/zzlw;->zzc(Ljava/lang/String;Z)Ljava/util/List;

    move-result-object p0

    .line 3
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_c

    const/4 p0, 0x0

    return-object p0

    :cond_c
    const/4 p1, 0x0

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/ads/zzlt;

    return-object p0
.end method

.method public static zzbd(Ljava/lang/String;)Landroid/util/Pair;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    :cond_4
    const-string v1, "\\."

    .line 52
    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    .line 53
    aget-object v3, v1, v2

    const/4 v4, -0x1

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v5

    const/4 v6, 0x3

    const/4 v7, 0x2

    const/4 v8, 0x1

    sparse-switch v5, :sswitch_data_fa

    goto :goto_40

    :sswitch_19
    const-string v2, "hvc1"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_40

    const/4 v2, 0x1

    goto :goto_41

    :sswitch_23
    const-string v5, "hev1"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_40

    goto :goto_41

    :sswitch_2c
    const-string v2, "avc2"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_40

    const/4 v2, 0x3

    goto :goto_41

    :sswitch_36
    const-string v2, "avc1"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_40

    const/4 v2, 0x2

    goto :goto_41

    :cond_40
    :goto_40
    const/4 v2, -0x1

    :goto_41
    if-eqz v2, :cond_4f

    if-eq v2, v8, :cond_4f

    if-eq v2, v7, :cond_4a

    if-eq v2, v6, :cond_4a

    return-object v0

    .line 75
    :cond_4a
    invoke-static {p0, v1}, Lcom/google/android/gms/internal/ads/zzlw;->zza(Ljava/lang/String;[Ljava/lang/String;)Landroid/util/Pair;

    move-result-object p0

    return-object p0

    .line 55
    :cond_4f
    array-length v2, v1

    const/4 v3, 0x4

    const-string v4, "Ignoring malformed HEVC codec string: "

    const-string v5, "MediaCodecUtil"

    if-ge v2, v3, :cond_6f

    .line 56
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_66

    invoke-virtual {v4, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_6b

    :cond_66
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_6b
    invoke-static {v5, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    .line 58
    :cond_6f
    sget-object v2, Lcom/google/android/gms/internal/ads/zzlw;->zzbcr:Ljava/util/regex/Pattern;

    aget-object v3, v1, v8

    invoke-virtual {v2, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 59
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v3

    if-nez v3, :cond_95

    .line 60
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_8c

    invoke-virtual {v4, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_91

    :cond_8c
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_91
    invoke-static {v5, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    .line 62
    :cond_95
    invoke-virtual {v2, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    const-string v3, "1"

    .line 63
    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a3

    const/4 v7, 0x1

    goto :goto_ab

    :cond_a3
    const-string v3, "2"

    .line 65
    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e0

    .line 69
    :goto_ab
    sget-object p0, Lcom/google/android/gms/internal/ads/zzlw;->zzbcv:Ljava/util/Map;

    aget-object v1, v1, v6

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    if-nez p0, :cond_d6

    const-string p0, "Unknown HEVC level string: "

    .line 71
    invoke-virtual {v2, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_cc

    invoke-virtual {p0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_d2

    :cond_cc
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object p0, v1

    :goto_d2
    invoke-static {v5, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    .line 73
    :cond_d6
    new-instance v0, Landroid/util/Pair;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0

    :cond_e0
    const-string v1, "Unknown HEVC profile string: "

    .line 67
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_f1

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_f6

    :cond_f1
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_f6
    invoke-static {v5, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :sswitch_data_fa
    .sparse-switch
        0x2ddf23 -> :sswitch_36
        0x2ddf24 -> :sswitch_2c
        0x30d038 -> :sswitch_23
        0x310dbc -> :sswitch_19
    .end sparse-switch
.end method

.method private static declared-synchronized zzc(Ljava/lang/String;Z)Ljava/util/List;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/ads/zzlt;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzma;
        }
    .end annotation

    const-class v0, Lcom/google/android/gms/internal/ads/zzlw;

    monitor-enter v0

    .line 4
    :try_start_3
    new-instance v1, Lcom/google/android/gms/internal/ads/zzlw$zza;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/ads/zzlw$zza;-><init>(Ljava/lang/String;Z)V

    .line 5
    sget-object v2, Lcom/google/android/gms/internal/ads/zzlw;->zzbcs:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_90

    if-eqz v2, :cond_14

    .line 7
    monitor-exit v0

    return-object v2

    .line 8
    :cond_14
    :try_start_14
    sget v2, Lcom/google/android/gms/internal/ads/zzpo;->SDK_INT:I

    const/4 v3, 0x0

    const/16 v4, 0x15

    if-lt v2, v4, :cond_21

    .line 9
    new-instance v2, Lcom/google/android/gms/internal/ads/zzmb;

    invoke-direct {v2, p1}, Lcom/google/android/gms/internal/ads/zzmb;-><init>(Z)V

    goto :goto_26

    :cond_21
    new-instance v2, Lcom/google/android/gms/internal/ads/zzmc;

    invoke-direct {v2, v3}, Lcom/google/android/gms/internal/ads/zzmc;-><init>(Lcom/google/android/gms/internal/ads/zzly;)V

    .line 10
    :goto_26
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/zzlw;->zza(Lcom/google/android/gms/internal/ads/zzlw$zza;Lcom/google/android/gms/internal/ads/zzlz;)Ljava/util/List;

    move-result-object v2

    if-eqz p1, :cond_85

    .line 11
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_85

    sget p1, Lcom/google/android/gms/internal/ads/zzpo;->SDK_INT:I

    if-gt v4, p1, :cond_85

    sget p1, Lcom/google/android/gms/internal/ads/zzpo;->SDK_INT:I

    const/16 v4, 0x17

    if-gt p1, v4, :cond_85

    .line 12
    new-instance p1, Lcom/google/android/gms/internal/ads/zzmc;

    invoke-direct {p1, v3}, Lcom/google/android/gms/internal/ads/zzmc;-><init>(Lcom/google/android/gms/internal/ads/zzly;)V

    .line 13
    invoke-static {v1, p1}, Lcom/google/android/gms/internal/ads/zzlw;->zza(Lcom/google/android/gms/internal/ads/zzlw$zza;Lcom/google/android/gms/internal/ads/zzlz;)Ljava/util/List;

    move-result-object v2

    .line 14
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_85

    const-string p1, "MediaCodecUtil"

    const/4 v3, 0x0

    .line 16
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/ads/zzlt;

    iget-object v3, v3, Lcom/google/android/gms/internal/ads/zzlt;->name:Ljava/lang/String;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x3f

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v4, v5

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "MediaCodecList API didn\'t list secure decoder for: "

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ". Assuming: "

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 17
    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    :cond_85
    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    .line 19
    sget-object p1, Lcom/google/android/gms/internal/ads/zzlw;->zzbcs:Ljava/util/HashMap;

    invoke-virtual {p1, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_8e
    .catchall {:try_start_14 .. :try_end_8e} :catchall_90

    .line 20
    monitor-exit v0

    return-object p0

    :catchall_90
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static zzhi()Lcom/google/android/gms/internal/ads/zzlt;
    .registers 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzlw;->zzbcq:Lcom/google/android/gms/internal/ads/zzlt;

    return-object v0
.end method

.method public static zzhj()I
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzma;
        }
    .end annotation

    .line 21
    sget v0, Lcom/google/android/gms/internal/ads/zzlw;->zzbcw:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_6a

    const-string v0, "video/avc"

    const/4 v2, 0x0

    .line 23
    invoke-static {v0, v2}, Lcom/google/android/gms/internal/ads/zzlw;->zzb(Ljava/lang/String;Z)Lcom/google/android/gms/internal/ads/zzlt;

    move-result-object v0

    if-eqz v0, :cond_68

    .line 25
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzlt;->zzhh()[Landroid/media/MediaCodecInfo$CodecProfileLevel;

    move-result-object v0

    array-length v3, v0

    const/4 v4, 0x0

    :goto_14
    if-ge v2, v3, :cond_57

    aget-object v5, v0, v2

    .line 26
    iget v5, v5, Landroid/media/MediaCodecInfo$CodecProfileLevel;->level:I

    const/high16 v6, 0x900000

    const/high16 v7, 0x200000

    const v8, 0x65400

    const/16 v9, 0x6300

    const/4 v10, 0x1

    const v11, 0x18c00

    if-eq v5, v10, :cond_4e

    const/4 v10, 0x2

    if-eq v5, v10, :cond_4e

    sparse-switch v5, :sswitch_data_6e

    const/4 v6, -0x1

    goto :goto_50

    :sswitch_31
    const v6, 0x564000

    goto :goto_50

    :sswitch_35
    const/high16 v6, 0x220000

    goto :goto_50

    :sswitch_38
    const/high16 v6, 0x200000

    goto :goto_50

    :sswitch_3b
    const/high16 v6, 0x140000

    goto :goto_50

    :sswitch_3e
    const v6, 0xe1000

    goto :goto_50

    :sswitch_42
    const v6, 0x65400

    goto :goto_50

    :sswitch_46
    const v6, 0x31800

    goto :goto_50

    :sswitch_4a
    const v6, 0x18c00

    goto :goto_50

    :cond_4e
    const/16 v6, 0x6300

    .line 45
    :goto_50
    :sswitch_50
    invoke-static {v6, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_14

    .line 47
    :cond_57
    sget v0, Lcom/google/android/gms/internal/ads/zzpo;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_61

    const v0, 0x54600

    goto :goto_64

    :cond_61
    const v0, 0x2a300

    :goto_64
    invoke-static {v4, v0}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 48
    :cond_68
    sput v2, Lcom/google/android/gms/internal/ads/zzlw;->zzbcw:I

    .line 49
    :cond_6a
    sget v0, Lcom/google/android/gms/internal/ads/zzlw;->zzbcw:I

    return v0

    nop

    :sswitch_data_6e
    .sparse-switch
        0x8 -> :sswitch_4a
        0x10 -> :sswitch_4a
        0x20 -> :sswitch_4a
        0x40 -> :sswitch_46
        0x80 -> :sswitch_42
        0x100 -> :sswitch_42
        0x200 -> :sswitch_3e
        0x400 -> :sswitch_3b
        0x800 -> :sswitch_38
        0x1000 -> :sswitch_38
        0x2000 -> :sswitch_35
        0x4000 -> :sswitch_31
        0x8000 -> :sswitch_50
        0x10000 -> :sswitch_50
    .end sparse-switch
.end method
