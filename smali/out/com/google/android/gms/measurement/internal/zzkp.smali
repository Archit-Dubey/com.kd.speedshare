.class final Lcom/google/android/gms/measurement/internal/zzkp;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement@@17.4.4"

# interfaces
.implements Lcom/google/android/gms/measurement/internal/zzfe;


# instance fields
.field private final synthetic zza:Lcom/google/android/gms/measurement/internal/zzkk;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/zzkk;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzkp;->zza:Lcom/google/android/gms/measurement/internal/zzkk;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/String;ILjava/lang/Throwable;[BLjava/util/Map;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/Throwable;",
            "[B",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzkp;->zza:Lcom/google/android/gms/measurement/internal/zzkk;

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/measurement/internal/zzkk;->zza(Ljava/lang/String;ILjava/lang/Throwable;[BLjava/util/Map;)V

    return-void
.end method
