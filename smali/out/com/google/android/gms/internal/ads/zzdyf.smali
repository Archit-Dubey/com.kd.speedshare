.class final Lcom/google/android/gms/internal/ads/zzdyf;
.super Lcom/google/android/gms/internal/ads/zzdwm;
.source "com.google.android.gms:play-services-ads@@19.2.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/zzdwm<",
        "Lcom/google/android/gms/internal/ads/zzecf;",
        "Lcom/google/android/gms/internal/ads/zzece;",
        ">;"
    }
.end annotation


# instance fields
.field private final synthetic zzhrh:Lcom/google/android/gms/internal/ads/zzdyd;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzdyd;Ljava/lang/Class;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdyf;->zzhrh:Lcom/google/android/gms/internal/ads/zzdyd;

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/ads/zzdwm;-><init>(Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public final bridge synthetic zzd(Lcom/google/android/gms/internal/ads/zzehl;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 12
    check-cast p1, Lcom/google/android/gms/internal/ads/zzecf;

    return-void
.end method

.method public final synthetic zze(Lcom/google/android/gms/internal/ads/zzehl;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 2
    check-cast p1, Lcom/google/android/gms/internal/ads/zzecf;

    .line 3
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzece;->zzbcg()Lcom/google/android/gms/internal/ads/zzece$zza;

    move-result-object p1

    const/4 v0, 0x0

    .line 4
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzece$zza;->zzfm(I)Lcom/google/android/gms/internal/ads/zzece$zza;

    move-result-object p1

    const/16 v0, 0x20

    .line 5
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzedu;->zzfn(I)[B

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzeer;->zzu([B)Lcom/google/android/gms/internal/ads/zzeer;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzece$zza;->zzag(Lcom/google/android/gms/internal/ads/zzeer;)Lcom/google/android/gms/internal/ads/zzece$zza;

    move-result-object p1

    .line 6
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzegb$zzb;->zzbfq()Lcom/google/android/gms/internal/ads/zzehl;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzegb;

    check-cast p1, Lcom/google/android/gms/internal/ads/zzece;

    return-object p1
.end method

.method public final synthetic zzr(Lcom/google/android/gms/internal/ads/zzeer;)Lcom/google/android/gms/internal/ads/zzehl;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzegl;
        }
    .end annotation

    .line 9
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzefo;->zzbeq()Lcom/google/android/gms/internal/ads/zzefo;

    move-result-object v0

    .line 10
    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/zzecf;->zzx(Lcom/google/android/gms/internal/ads/zzeer;Lcom/google/android/gms/internal/ads/zzefo;)Lcom/google/android/gms/internal/ads/zzecf;

    move-result-object p1

    return-object p1
.end method
