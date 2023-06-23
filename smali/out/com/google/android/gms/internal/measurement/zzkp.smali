.class final Lcom/google/android/gms/internal/measurement/zzkp;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-base@@17.4.4"

# interfaces
.implements Lcom/google/android/gms/internal/measurement/zzks;


# instance fields
.field private final synthetic zza:Lcom/google/android/gms/internal/measurement/zzgt;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/measurement/zzgt;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzkp;->zza:Lcom/google/android/gms/internal/measurement/zzgt;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(I)B
    .registers 3

    .line 3
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzkp;->zza:Lcom/google/android/gms/internal/measurement/zzgt;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/zzgt;->zza(I)B

    move-result p1

    return p1
.end method

.method public final zza()I
    .registers 2

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzkp;->zza:Lcom/google/android/gms/internal/measurement/zzgt;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzgt;->zza()I

    move-result v0

    return v0
.end method
