.class public abstract Lcom/google/android/gms/internal/ads/zzasc;
.super Lcom/google/android/gms/internal/ads/zzgt;
.source "com.google.android.gms:play-services-ads@@19.2.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzarz;


# direct methods
.method public constructor <init>()V
    .registers 2

    const-string v0, "com.google.android.gms.ads.internal.request.IAdRequestService"

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzgt;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected final zza(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 p4, 0x1

    if-eq p1, p4, :cond_da

    const/4 v0, 0x2

    const/4 v1, 0x0

    if-eq p1, v0, :cond_b1

    const/4 v0, 0x4

    const-string v2, "com.google.android.gms.ads.internal.request.INonagonStreamingResponseListener"

    if-eq p1, v0, :cond_8a

    const/4 v0, 0x5

    if-eq p1, v0, :cond_63

    const/4 v0, 0x6

    if-eq p1, v0, :cond_3b

    const/4 v0, 0x7

    if-eq p1, v0, :cond_17

    const/4 p1, 0x0

    return p1

    .line 57
    :cond_17
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 58
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    if-nez p2, :cond_22

    goto :goto_33

    .line 61
    :cond_22
    invoke-interface {p2, v2}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 62
    instance-of v1, v0, Lcom/google/android/gms/internal/ads/zzasg;

    if-eqz v1, :cond_2e

    .line 63
    move-object v1, v0

    check-cast v1, Lcom/google/android/gms/internal/ads/zzasg;

    goto :goto_33

    .line 64
    :cond_2e
    new-instance v1, Lcom/google/android/gms/internal/ads/zzasi;

    invoke-direct {v1, p2}, Lcom/google/android/gms/internal/ads/zzasi;-><init>(Landroid/os/IBinder;)V

    .line 66
    :goto_33
    invoke-virtual {p0, p1, v1}, Lcom/google/android/gms/internal/ads/zzasc;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzasg;)V

    .line 67
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_ec

    .line 45
    :cond_3b
    sget-object p1, Lcom/google/android/gms/internal/ads/zzasm;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/zzgw;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzasm;

    .line 46
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    if-nez p2, :cond_4a

    goto :goto_5b

    .line 49
    :cond_4a
    invoke-interface {p2, v2}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 50
    instance-of v1, v0, Lcom/google/android/gms/internal/ads/zzasg;

    if-eqz v1, :cond_56

    .line 51
    move-object v1, v0

    check-cast v1, Lcom/google/android/gms/internal/ads/zzasg;

    goto :goto_5b

    .line 52
    :cond_56
    new-instance v1, Lcom/google/android/gms/internal/ads/zzasi;

    invoke-direct {v1, p2}, Lcom/google/android/gms/internal/ads/zzasi;-><init>(Landroid/os/IBinder;)V

    .line 54
    :goto_5b
    invoke-virtual {p0, p1, v1}, Lcom/google/android/gms/internal/ads/zzasc;->zzc(Lcom/google/android/gms/internal/ads/zzasm;Lcom/google/android/gms/internal/ads/zzasg;)V

    .line 55
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_ec

    .line 33
    :cond_63
    sget-object p1, Lcom/google/android/gms/internal/ads/zzasm;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/zzgw;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzasm;

    .line 34
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    if-nez p2, :cond_72

    goto :goto_83

    .line 37
    :cond_72
    invoke-interface {p2, v2}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 38
    instance-of v1, v0, Lcom/google/android/gms/internal/ads/zzasg;

    if-eqz v1, :cond_7e

    .line 39
    move-object v1, v0

    check-cast v1, Lcom/google/android/gms/internal/ads/zzasg;

    goto :goto_83

    .line 40
    :cond_7e
    new-instance v1, Lcom/google/android/gms/internal/ads/zzasi;

    invoke-direct {v1, p2}, Lcom/google/android/gms/internal/ads/zzasi;-><init>(Landroid/os/IBinder;)V

    .line 42
    :goto_83
    invoke-virtual {p0, p1, v1}, Lcom/google/android/gms/internal/ads/zzasc;->zzb(Lcom/google/android/gms/internal/ads/zzasm;Lcom/google/android/gms/internal/ads/zzasg;)V

    .line 43
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_ec

    .line 21
    :cond_8a
    sget-object p1, Lcom/google/android/gms/internal/ads/zzasm;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/zzgw;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzasm;

    .line 22
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    if-nez p2, :cond_99

    goto :goto_aa

    .line 25
    :cond_99
    invoke-interface {p2, v2}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 26
    instance-of v1, v0, Lcom/google/android/gms/internal/ads/zzasg;

    if-eqz v1, :cond_a5

    .line 27
    move-object v1, v0

    check-cast v1, Lcom/google/android/gms/internal/ads/zzasg;

    goto :goto_aa

    .line 28
    :cond_a5
    new-instance v1, Lcom/google/android/gms/internal/ads/zzasi;

    invoke-direct {v1, p2}, Lcom/google/android/gms/internal/ads/zzasi;-><init>(Landroid/os/IBinder;)V

    .line 30
    :goto_aa
    invoke-virtual {p0, p1, v1}, Lcom/google/android/gms/internal/ads/zzasc;->zza(Lcom/google/android/gms/internal/ads/zzasm;Lcom/google/android/gms/internal/ads/zzasg;)V

    .line 31
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_ec

    .line 9
    :cond_b1
    sget-object p1, Lcom/google/android/gms/internal/ads/zzart;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/zzgw;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzart;

    .line 10
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    if-nez p2, :cond_c0

    goto :goto_d3

    :cond_c0
    const-string v0, "com.google.android.gms.ads.internal.request.IAdResponseListener"

    .line 13
    invoke-interface {p2, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 14
    instance-of v1, v0, Lcom/google/android/gms/internal/ads/zzase;

    if-eqz v1, :cond_ce

    .line 15
    move-object v1, v0

    check-cast v1, Lcom/google/android/gms/internal/ads/zzase;

    goto :goto_d3

    .line 16
    :cond_ce
    new-instance v1, Lcom/google/android/gms/internal/ads/zzasd;

    invoke-direct {v1, p2}, Lcom/google/android/gms/internal/ads/zzasd;-><init>(Landroid/os/IBinder;)V

    .line 18
    :goto_d3
    invoke-virtual {p0, p1, v1}, Lcom/google/android/gms/internal/ads/zzasc;->zza(Lcom/google/android/gms/internal/ads/zzart;Lcom/google/android/gms/internal/ads/zzase;)V

    .line 19
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_ec

    .line 4
    :cond_da
    sget-object p1, Lcom/google/android/gms/internal/ads/zzart;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/zzgw;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzart;

    .line 5
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzasc;->zza(Lcom/google/android/gms/internal/ads/zzart;)Lcom/google/android/gms/internal/ads/zzarv;

    move-result-object p1

    .line 6
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 7
    invoke-static {p3, p1}, Lcom/google/android/gms/internal/ads/zzgw;->zzb(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    :goto_ec
    return p4
.end method
