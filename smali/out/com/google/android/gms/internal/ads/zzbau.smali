.class public final Lcom/google/android/gms/internal/ads/zzbau;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads-lite@@19.2.0"


# static fields
.field private static enabled:Z

.field private static lock:Ljava/lang/Object;

.field private static zzbqd:Lcom/google/android/gms/common/util/Clock;

.field private static zzecx:Z

.field private static final zzecy:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final zzecz:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 162
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzbau;->lock:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 163
    sput-boolean v0, Lcom/google/android/gms/internal/ads/zzbau;->zzecx:Z

    .line 164
    sput-boolean v0, Lcom/google/android/gms/internal/ads/zzbau;->enabled:Z

    .line 165
    invoke-static {}, Lcom/google/android/gms/common/util/DefaultClock;->getInstance()Lcom/google/android/gms/common/util/Clock;

    move-result-object v1

    sput-object v1, Lcom/google/android/gms/internal/ads/zzbau;->zzbqd:Lcom/google/android/gms/common/util/Clock;

    .line 166
    new-instance v1, Ljava/util/HashSet;

    new-array v0, v0, [Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v1, Lcom/google/android/gms/internal/ads/zzbau;->zzecy:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzbau;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 6

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbau;->isEnabled()Z

    move-result p1

    if-nez p1, :cond_f

    .line 6
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    goto :goto_37

    .line 7
    :cond_f
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "network_request_"

    .line 8
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_2c

    invoke-virtual {v2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_31

    :cond_2c
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_31
    aput-object p1, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    .line 9
    :goto_37
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbau;->zzecz:Ljava/util/List;

    return-void
.end method

.method public static isEnabled()Z
    .registers 2

    .line 116
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbau;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 117
    :try_start_3
    sget-boolean v1, Lcom/google/android/gms/internal/ads/zzbau;->zzecx:Z

    if-eqz v1, :cond_d

    sget-boolean v1, Lcom/google/android/gms/internal/ads/zzbau;->enabled:Z

    if-eqz v1, :cond_d

    const/4 v1, 0x1

    goto :goto_e

    :cond_d
    const/4 v1, 0x0

    :goto_e
    monitor-exit v0

    return v1

    :catchall_10
    move-exception v1

    .line 118
    monitor-exit v0
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_10

    throw v1
.end method

.method static final synthetic zza(ILjava/util/Map;Landroid/util/JsonWriter;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "params"

    .line 145
    invoke-virtual {p2, v0}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/JsonWriter;->beginObject()Landroid/util/JsonWriter;

    const-string v0, "firstline"

    .line 146
    invoke-virtual {p2, v0}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/JsonWriter;->beginObject()Landroid/util/JsonWriter;

    const-string v0, "code"

    .line 147
    invoke-virtual {p2, v0}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v0

    int-to-long v1, p0

    invoke-virtual {v0, v1, v2}, Landroid/util/JsonWriter;->value(J)Landroid/util/JsonWriter;

    .line 148
    invoke-virtual {p2}, Landroid/util/JsonWriter;->endObject()Landroid/util/JsonWriter;

    .line 149
    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/zzbau;->zza(Landroid/util/JsonWriter;Ljava/util/Map;)V

    .line 150
    invoke-virtual {p2}, Landroid/util/JsonWriter;->endObject()Landroid/util/JsonWriter;

    return-void
.end method

.method private static zza(Landroid/util/JsonWriter;Ljava/util/Map;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/JsonWriter;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p1, :cond_3

    return-void

    :cond_3
    const-string v0, "headers"

    .line 59
    invoke-virtual {p0, v0}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/JsonWriter;->beginArray()Landroid/util/JsonWriter;

    .line 60
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_14
    :goto_14
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8d

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 61
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 62
    sget-object v2, Lcom/google/android/gms/internal/ads/zzbau;->zzecy:Ljava/util/Set;

    invoke-interface {v2, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_14

    .line 63
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Ljava/util/List;

    const-string v3, "value"

    const-string v4, "name"

    if-eqz v2, :cond_65

    .line 64
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_44
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_14

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 65
    invoke-virtual {p0}, Landroid/util/JsonWriter;->beginObject()Landroid/util/JsonWriter;

    .line 66
    invoke-virtual {p0, v4}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/util/JsonWriter;->value(Ljava/lang/String;)Landroid/util/JsonWriter;

    .line 67
    invoke-virtual {p0, v3}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/util/JsonWriter;->value(Ljava/lang/String;)Landroid/util/JsonWriter;

    .line 68
    invoke-virtual {p0}, Landroid/util/JsonWriter;->endObject()Landroid/util/JsonWriter;

    goto :goto_44

    .line 70
    :cond_65
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Ljava/lang/String;

    if-eqz v2, :cond_88

    .line 71
    invoke-virtual {p0}, Landroid/util/JsonWriter;->beginObject()Landroid/util/JsonWriter;

    .line 72
    invoke-virtual {p0, v4}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/util/JsonWriter;->value(Ljava/lang/String;)Landroid/util/JsonWriter;

    .line 73
    invoke-virtual {p0, v3}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/util/JsonWriter;->value(Ljava/lang/String;)Landroid/util/JsonWriter;

    .line 74
    invoke-virtual {p0}, Landroid/util/JsonWriter;->endObject()Landroid/util/JsonWriter;

    goto :goto_14

    :cond_88
    const-string p1, "Connection headers should be either Map<String, String> or Map<String, List<String>>"

    .line 75
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzbba;->zzfb(Ljava/lang/String;)V

    .line 76
    :cond_8d
    invoke-virtual {p0}, Landroid/util/JsonWriter;->endArray()Landroid/util/JsonWriter;

    return-void
.end method

.method static final synthetic zza(Ljava/lang/String;Landroid/util/JsonWriter;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "params"

    .line 129
    invoke-virtual {p1, v0}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/JsonWriter;->beginObject()Landroid/util/JsonWriter;

    if-eqz p0, :cond_14

    const-string v0, "error_description"

    .line 131
    invoke-virtual {p1, v0}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/util/JsonWriter;->value(Ljava/lang/String;)Landroid/util/JsonWriter;

    .line 132
    :cond_14
    invoke-virtual {p1}, Landroid/util/JsonWriter;->endObject()Landroid/util/JsonWriter;

    return-void
.end method

.method private final zza(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbax;)V
    .registers 8

    .line 78
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 79
    new-instance v1, Landroid/util/JsonWriter;

    invoke-direct {v1, v0}, Landroid/util/JsonWriter;-><init>(Ljava/io/Writer;)V

    .line 80
    :try_start_a
    invoke-virtual {v1}, Landroid/util/JsonWriter;->beginObject()Landroid/util/JsonWriter;

    const-string v2, "timestamp"

    .line 81
    invoke-virtual {v1, v2}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v2

    sget-object v3, Lcom/google/android/gms/internal/ads/zzbau;->zzbqd:Lcom/google/android/gms/common/util/Clock;

    invoke-interface {v3}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Landroid/util/JsonWriter;->value(J)Landroid/util/JsonWriter;

    const-string v2, "event"

    .line 82
    invoke-virtual {v1, v2}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/util/JsonWriter;->value(Ljava/lang/String;)Landroid/util/JsonWriter;

    const-string p1, "components"

    .line 83
    invoke-virtual {v1, p1}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object p1

    invoke-virtual {p1}, Landroid/util/JsonWriter;->beginArray()Landroid/util/JsonWriter;

    .line 84
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbau;->zzecz:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_34
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_44

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 85
    invoke-virtual {v1, v2}, Landroid/util/JsonWriter;->value(Ljava/lang/String;)Landroid/util/JsonWriter;

    goto :goto_34

    .line 87
    :cond_44
    invoke-virtual {v1}, Landroid/util/JsonWriter;->endArray()Landroid/util/JsonWriter;

    .line 88
    invoke-interface {p2, v1}, Lcom/google/android/gms/internal/ads/zzbax;->zzb(Landroid/util/JsonWriter;)V

    .line 89
    invoke-virtual {v1}, Landroid/util/JsonWriter;->endObject()Landroid/util/JsonWriter;

    .line 90
    invoke-virtual {v1}, Landroid/util/JsonWriter;->flush()V

    .line 91
    invoke-virtual {v1}, Landroid/util/JsonWriter;->close()V
    :try_end_53
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_53} :catch_54

    goto :goto_5a

    :catch_54
    move-exception p1

    const-string p2, "unable to log"

    .line 94
    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/zzbba;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 95
    :goto_5a
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzbau;->zzfa(Ljava/lang/String;)V

    return-void
.end method

.method static final synthetic zza(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;[BLandroid/util/JsonWriter;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "params"

    .line 152
    invoke-virtual {p4, v0}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/JsonWriter;->beginObject()Landroid/util/JsonWriter;

    const-string v0, "firstline"

    .line 153
    invoke-virtual {p4, v0}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/JsonWriter;->beginObject()Landroid/util/JsonWriter;

    const-string v0, "uri"

    .line 154
    invoke-virtual {p4, v0}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/util/JsonWriter;->value(Ljava/lang/String;)Landroid/util/JsonWriter;

    const-string p0, "verb"

    .line 155
    invoke-virtual {p4, p0}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/util/JsonWriter;->value(Ljava/lang/String;)Landroid/util/JsonWriter;

    .line 156
    invoke-virtual {p4}, Landroid/util/JsonWriter;->endObject()Landroid/util/JsonWriter;

    .line 157
    invoke-static {p4, p2}, Lcom/google/android/gms/internal/ads/zzbau;->zza(Landroid/util/JsonWriter;Ljava/util/Map;)V

    if-eqz p3, :cond_39

    const-string p0, "body"

    .line 159
    invoke-virtual {p4, p0}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object p0

    invoke-static {p3}, Lcom/google/android/gms/common/util/Base64Utils;->encode([B)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/util/JsonWriter;->value(Ljava/lang/String;)Landroid/util/JsonWriter;

    .line 160
    :cond_39
    invoke-virtual {p4}, Landroid/util/JsonWriter;->endObject()Landroid/util/JsonWriter;

    return-void
.end method

.method static final synthetic zza([BLandroid/util/JsonWriter;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "params"

    .line 134
    invoke-virtual {p1, v0}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/JsonWriter;->beginObject()Landroid/util/JsonWriter;

    .line 135
    array-length v0, p0

    .line 136
    invoke-static {p0}, Lcom/google/android/gms/common/util/Base64Utils;->encode([B)Ljava/lang/String;

    move-result-object p0

    const/16 v1, 0x2710

    if-ge v0, v1, :cond_1c

    const-string v1, "body"

    .line 138
    invoke-virtual {p1, v1}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/util/JsonWriter;->value(Ljava/lang/String;)Landroid/util/JsonWriter;

    goto :goto_2b

    .line 139
    :cond_1c
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzbaq;->zzew(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_2b

    const-string v1, "bodydigest"

    .line 141
    invoke-virtual {p1, v1}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/util/JsonWriter;->value(Ljava/lang/String;)Landroid/util/JsonWriter;

    :cond_2b
    :goto_2b
    const-string p0, "bodylength"

    .line 142
    invoke-virtual {p1, p0}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object p0

    int-to-long v0, v0

    invoke-virtual {p0, v0, v1}, Landroid/util/JsonWriter;->value(J)Landroid/util/JsonWriter;

    .line 143
    invoke-virtual {p1}, Landroid/util/JsonWriter;->endObject()Landroid/util/JsonWriter;

    return-void
.end method

.method public static zzar(Z)V
    .registers 3

    .line 109
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbau;->lock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    .line 110
    :try_start_4
    sput-boolean v1, Lcom/google/android/gms/internal/ads/zzbau;->zzecx:Z

    .line 111
    sput-boolean p0, Lcom/google/android/gms/internal/ads/zzbau;->enabled:Z

    .line 112
    monitor-exit v0

    return-void

    :catchall_a
    move-exception p0

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_4 .. :try_end_c} :catchall_a

    throw p0
.end method

.method private final zzb(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;[B)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;[B)V"
        }
    .end annotation

    .line 24
    new-instance v0, Lcom/google/android/gms/internal/ads/zzbat;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/google/android/gms/internal/ads/zzbat;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;[B)V

    const-string p1, "onNetworkRequest"

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzbau;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbax;)V

    return-void
.end method

.method private final zzb(Ljava/util/Map;I)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;I)V"
        }
    .end annotation

    .line 44
    new-instance v0, Lcom/google/android/gms/internal/ads/zzbaw;

    invoke-direct {v0, p2, p1}, Lcom/google/android/gms/internal/ads/zzbaw;-><init>(ILjava/util/Map;)V

    const-string p1, "onNetworkResponse"

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzbau;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbax;)V

    return-void
.end method

.method public static zzbt(Landroid/content/Context;)Z
    .registers 4

    .line 119
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x11

    if-ge v0, v2, :cond_8

    return v1

    .line 121
    :cond_8
    sget-object v0, Lcom/google/android/gms/internal/ads/zzacg;->zzczq:Lcom/google/android/gms/internal/ads/zzabx;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzabx;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_17

    return v1

    .line 124
    :cond_17
    :try_start_17
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "development_settings_enabled"

    .line 125
    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_21} :catch_26

    if-eqz p0, :cond_25

    const/4 p0, 0x1

    return p0

    :cond_25
    return v1

    :catch_26
    move-exception p0

    const-string v0, "Fail to determine debug setting."

    .line 127
    invoke-static {v0, p0}, Lcom/google/android/gms/internal/ads/zzbba;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    return v1
.end method

.method private final zzez(Ljava/lang/String;)V
    .registers 3

    .line 55
    new-instance v0, Lcom/google/android/gms/internal/ads/zzbay;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/ads/zzbay;-><init>(Ljava/lang/String;)V

    const-string p1, "onNetworkRequestError"

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzbau;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbax;)V

    return-void
.end method

.method private static declared-synchronized zzfa(Ljava/lang/String;)V
    .registers 6

    const-class v0, Lcom/google/android/gms/internal/ads/zzbau;

    monitor-enter v0

    :try_start_3
    const-string v1, "GMA Debug BEGIN"

    .line 97
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzbba;->zzfc(Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 98
    :goto_9
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_38

    add-int/lit16 v2, v1, 0xfa0

    .line 99
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    const-string v4, "GMA Debug CONTENT "

    .line 100
    invoke-virtual {p0, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_2e

    invoke-virtual {v4, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_33

    :cond_2e
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_33
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzbba;->zzfc(Ljava/lang/String;)V

    move v1, v2

    goto :goto_9

    :cond_38
    const-string p0, "GMA Debug FINISH"

    .line 102
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzbba;->zzfc(Ljava/lang/String;)V
    :try_end_3d
    .catchall {:try_start_3 .. :try_end_3d} :catchall_3f

    .line 103
    monitor-exit v0

    return-void

    :catchall_3f
    move-exception p0

    monitor-exit v0

    goto :goto_43

    :goto_42
    throw p0

    :goto_43
    goto :goto_42
.end method

.method public static zzyk()V
    .registers 2

    .line 104
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbau;->lock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 105
    :try_start_4
    sput-boolean v1, Lcom/google/android/gms/internal/ads/zzbau;->zzecx:Z

    .line 106
    sput-boolean v1, Lcom/google/android/gms/internal/ads/zzbau;->enabled:Z

    const-string v1, "Ad debug logging enablement is out of date."

    .line 107
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzbba;->zzfd(Ljava/lang/String;)V

    .line 108
    monitor-exit v0

    return-void

    :catchall_f
    move-exception v1

    monitor-exit v0
    :try_end_11
    .catchall {:try_start_4 .. :try_end_11} :catchall_f

    throw v1
.end method

.method public static zzyl()Z
    .registers 2

    .line 113
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbau;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 114
    :try_start_3
    sget-boolean v1, Lcom/google/android/gms/internal/ads/zzbau;->zzecx:Z

    monitor-exit v0

    return v1

    :catchall_7
    move-exception v1

    .line 115
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method


# virtual methods
.method public final zza(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;[B)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;[B)V"
        }
    .end annotation

    .line 20
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbau;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 22
    :cond_7
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/gms/internal/ads/zzbau;->zzb(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;[B)V

    return-void
.end method

.method public final zza(Ljava/net/HttpURLConnection;I)V
    .registers 6

    .line 26
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbau;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 28
    :cond_7
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_10

    move-object v0, v1

    goto :goto_19

    :cond_10
    new-instance v0, Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 29
    :goto_19
    invoke-direct {p0, v0, p2}, Lcom/google/android/gms/internal/ads/zzbau;->zzb(Ljava/util/Map;I)V

    const/16 v0, 0xc8

    if-lt p2, v0, :cond_24

    const/16 v0, 0x12c

    if-lt p2, v0, :cond_4a

    .line 32
    :cond_24
    :try_start_24
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    move-result-object v1
    :try_end_28
    .catch Ljava/io/IOException; {:try_start_24 .. :try_end_28} :catch_29

    goto :goto_47

    :catch_29
    move-exception p1

    const-string p2, "Can not get error message from error HttpURLConnection\n"

    .line 35
    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_3f

    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_44

    :cond_3f
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, p2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_44
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzbba;->zzfd(Ljava/lang/String;)V

    .line 36
    :goto_47
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/ads/zzbau;->zzez(Ljava/lang/String;)V

    :cond_4a
    return-void
.end method

.method public final zza(Ljava/net/HttpURLConnection;[B)V
    .registers 6

    .line 11
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbau;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 13
    :cond_7
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getRequestProperties()Ljava/util/Map;

    move-result-object v0

    if-nez v0, :cond_f

    const/4 v0, 0x0

    goto :goto_18

    .line 15
    :cond_f
    new-instance v0, Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getRequestProperties()Ljava/util/Map;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 16
    :goto_18
    new-instance v1, Ljava/lang/String;

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getURL()Ljava/net/URL;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 17
    new-instance v2, Ljava/lang/String;

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getRequestMethod()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, p1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 18
    invoke-direct {p0, v1, v2, v0, p2}, Lcom/google/android/gms/internal/ads/zzbau;->zzb(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;[B)V

    return-void
.end method

.method public final zza(Ljava/util/Map;I)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;I)V"
        }
    .end annotation

    .line 38
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbau;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 40
    :cond_7
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzbau;->zzb(Ljava/util/Map;I)V

    const/16 p1, 0xc8

    if-lt p2, p1, :cond_12

    const/16 p1, 0x12c

    if-lt p2, p1, :cond_16

    :cond_12
    const/4 p1, 0x0

    .line 42
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzbau;->zzez(Ljava/lang/String;)V

    :cond_16
    return-void
.end method

.method public final zzey(Ljava/lang/String;)V
    .registers 3

    .line 46
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbau;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    if-nez p1, :cond_a

    return-void

    .line 50
    :cond_a
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    .line 51
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzbau;->zzi([B)V

    return-void
.end method

.method public final zzi([B)V
    .registers 3

    .line 53
    new-instance v0, Lcom/google/android/gms/internal/ads/zzbav;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/ads/zzbav;-><init>([B)V

    const-string p1, "onNetworkResponseBody"

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzbau;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbax;)V

    return-void
.end method
