.class public abstract Lcom/google/android/gms/internal/ads/zzamv;
.super Lcom/google/android/gms/internal/ads/zzgt;
.source "com.google.android.gms:play-services-ads-lite@@19.2.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzams;


# direct methods
.method public constructor <init>()V
    .registers 2

    const-string v0, "com.google.android.gms.ads.internal.mediation.client.IMediationAdapter"

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzgt;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected final zza(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 p4, 0x0

    const-string v0, "com.google.android.gms.ads.internal.mediation.client.IMediationAdapterListener"

    packed-switch p1, :pswitch_data_32a

    :pswitch_6
    const/4 p1, 0x0

    return p1

    .line 215
    :pswitch_8
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzamv;->zzts()Lcom/google/android/gms/internal/ads/zzapl;

    move-result-object p1

    .line 216
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 217
    invoke-static {p3, p1}, Lcom/google/android/gms/internal/ads/zzgw;->zzb(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    goto/16 :goto_327

    .line 211
    :pswitch_14
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzamv;->zztr()Lcom/google/android/gms/internal/ads/zzapl;

    move-result-object p1

    .line 212
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 213
    invoke-static {p3, p1}, Lcom/google/android/gms/internal/ads/zzgw;->zzb(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    goto/16 :goto_327

    .line 197
    :pswitch_20
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/dynamic/IObjectWrapper$Stub;->asInterface(Landroid/os/IBinder;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object p1

    .line 198
    sget-object v1, Lcom/google/android/gms/internal/ads/zzve;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, v1}, Lcom/google/android/gms/internal/ads/zzgw;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzve;

    .line 199
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 200
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    if-nez p2, :cond_3b

    goto :goto_4b

    .line 203
    :cond_3b
    invoke-interface {p2, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p4

    .line 204
    instance-of v0, p4, Lcom/google/android/gms/internal/ads/zzamx;

    if-eqz v0, :cond_46

    .line 205
    check-cast p4, Lcom/google/android/gms/internal/ads/zzamx;

    goto :goto_4b

    .line 206
    :cond_46
    new-instance p4, Lcom/google/android/gms/internal/ads/zzamz;

    invoke-direct {p4, p2}, Lcom/google/android/gms/internal/ads/zzamz;-><init>(Landroid/os/IBinder;)V

    .line 208
    :goto_4b
    invoke-virtual {p0, p1, v1, v2, p4}, Lcom/google/android/gms/internal/ads/zzamv;->zzc(Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/internal/ads/zzve;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzamx;)V

    .line 209
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_327

    .line 191
    :pswitch_53
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/dynamic/IObjectWrapper$Stub;->asInterface(Landroid/os/IBinder;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object p1

    .line 192
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p4

    invoke-static {p4}, Lcom/google/android/gms/internal/ads/zzaih;->zzz(Landroid/os/IBinder;)Lcom/google/android/gms/internal/ads/zzaie;

    move-result-object p4

    .line 193
    sget-object v0, Lcom/google/android/gms/internal/ads/zzaim;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object p2

    .line 194
    invoke-virtual {p0, p1, p4, p2}, Lcom/google/android/gms/internal/ads/zzamv;->zza(Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/internal/ads/zzaie;Ljava/util/List;)V

    .line 195
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_327

    .line 187
    :pswitch_71
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/dynamic/IObjectWrapper$Stub;->asInterface(Landroid/os/IBinder;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object p1

    .line 188
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzamv;->zzt(Lcom/google/android/gms/dynamic/IObjectWrapper;)V

    .line 189
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_327

    .line 173
    :pswitch_81
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/dynamic/IObjectWrapper$Stub;->asInterface(Landroid/os/IBinder;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object p1

    .line 174
    sget-object v1, Lcom/google/android/gms/internal/ads/zzve;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, v1}, Lcom/google/android/gms/internal/ads/zzgw;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzve;

    .line 175
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 176
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    if-nez p2, :cond_9c

    goto :goto_ac

    .line 179
    :cond_9c
    invoke-interface {p2, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p4

    .line 180
    instance-of v0, p4, Lcom/google/android/gms/internal/ads/zzamx;

    if-eqz v0, :cond_a7

    .line 181
    check-cast p4, Lcom/google/android/gms/internal/ads/zzamx;

    goto :goto_ac

    .line 182
    :cond_a7
    new-instance p4, Lcom/google/android/gms/internal/ads/zzamz;

    invoke-direct {p4, p2}, Lcom/google/android/gms/internal/ads/zzamz;-><init>(Landroid/os/IBinder;)V

    .line 184
    :goto_ac
    invoke-virtual {p0, p1, v1, v2, p4}, Lcom/google/android/gms/internal/ads/zzamv;->zzb(Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/internal/ads/zzve;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzamx;)V

    .line 185
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_327

    .line 169
    :pswitch_b4
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzamv;->zztq()Lcom/google/android/gms/internal/ads/zzang;

    move-result-object p1

    .line 170
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 171
    invoke-static {p3, p1}, Lcom/google/android/gms/internal/ads/zzgw;->zza(Landroid/os/Parcel;Landroid/os/IInterface;)V

    goto/16 :goto_327

    .line 165
    :pswitch_c0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzamv;->getVideoController()Lcom/google/android/gms/internal/ads/zzyi;

    move-result-object p1

    .line 166
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 167
    invoke-static {p3, p1}, Lcom/google/android/gms/internal/ads/zzgw;->zza(Landroid/os/Parcel;Landroid/os/IInterface;)V

    goto/16 :goto_327

    .line 161
    :pswitch_cc
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzgw;->zza(Landroid/os/Parcel;)Z

    move-result p1

    .line 162
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzamv;->setImmersiveMode(Z)V

    .line 163
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_327

    .line 157
    :pswitch_d8
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzamv;->zztp()Lcom/google/android/gms/internal/ads/zzaep;

    move-result-object p1

    .line 158
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 159
    invoke-static {p3, p1}, Lcom/google/android/gms/internal/ads/zzgw;->zza(Landroid/os/Parcel;Landroid/os/IInterface;)V

    goto/16 :goto_327

    .line 151
    :pswitch_e4
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/dynamic/IObjectWrapper$Stub;->asInterface(Landroid/os/IBinder;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object p1

    .line 152
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p4

    invoke-static {p4}, Lcom/google/android/gms/internal/ads/zzaua;->zzan(Landroid/os/IBinder;)Lcom/google/android/gms/internal/ads/zzatx;

    move-result-object p4

    .line 153
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object p2

    .line 154
    invoke-virtual {p0, p1, p4, p2}, Lcom/google/android/gms/internal/ads/zzamv;->zza(Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/internal/ads/zzatx;Ljava/util/List;)V

    .line 155
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_327

    .line 147
    :pswitch_100
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzamv;->zzto()Z

    move-result p1

    .line 148
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 149
    invoke-static {p3, p1}, Lcom/google/android/gms/internal/ads/zzgw;->writeBoolean(Landroid/os/Parcel;Z)V

    goto/16 :goto_327

    .line 143
    :pswitch_10c
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/dynamic/IObjectWrapper$Stub;->asInterface(Landroid/os/IBinder;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object p1

    .line 144
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzamv;->zzs(Lcom/google/android/gms/dynamic/IObjectWrapper;)V

    .line 145
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_327

    .line 137
    :pswitch_11c
    sget-object p1, Lcom/google/android/gms/internal/ads/zzve;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/zzgw;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzve;

    .line 138
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 139
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 140
    invoke-virtual {p0, p1, p4, p2}, Lcom/google/android/gms/internal/ads/zzamv;->zza(Lcom/google/android/gms/internal/ads/zzve;Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_327

    .line 133
    :pswitch_134
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzamv;->zztn()Landroid/os/Bundle;

    move-result-object p1

    .line 134
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 135
    invoke-static {p3, p1}, Lcom/google/android/gms/internal/ads/zzgw;->zzb(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    goto/16 :goto_327

    .line 129
    :pswitch_140
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzamv;->getInterstitialAdapterInfo()Landroid/os/Bundle;

    move-result-object p1

    .line 130
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 131
    invoke-static {p3, p1}, Lcom/google/android/gms/internal/ads/zzgw;->zzb(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    goto/16 :goto_327

    .line 125
    :pswitch_14c
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzamv;->zztm()Landroid/os/Bundle;

    move-result-object p1

    .line 126
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 127
    invoke-static {p3, p1}, Lcom/google/android/gms/internal/ads/zzgw;->zzb(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    goto/16 :goto_327

    .line 121
    :pswitch_158
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzamv;->zztl()Lcom/google/android/gms/internal/ads/zzanf;

    move-result-object p1

    .line 122
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 123
    invoke-static {p3, p1}, Lcom/google/android/gms/internal/ads/zzgw;->zza(Landroid/os/Parcel;Landroid/os/IInterface;)V

    goto/16 :goto_327

    .line 117
    :pswitch_164
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzamv;->zztk()Lcom/google/android/gms/internal/ads/zzana;

    move-result-object p1

    .line 118
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 119
    invoke-static {p3, p1}, Lcom/google/android/gms/internal/ads/zzgw;->zza(Landroid/os/Parcel;Landroid/os/IInterface;)V

    goto/16 :goto_327

    .line 100
    :pswitch_170
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/dynamic/IObjectWrapper$Stub;->asInterface(Landroid/os/IBinder;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v2

    .line 101
    sget-object p1, Lcom/google/android/gms/internal/ads/zzve;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/zzgw;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Lcom/google/android/gms/internal/ads/zzve;

    .line 102
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 103
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 104
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    if-nez p1, :cond_191

    :goto_18f
    move-object v6, p4

    goto :goto_1a2

    .line 107
    :cond_191
    invoke-interface {p1, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p4

    .line 108
    instance-of v0, p4, Lcom/google/android/gms/internal/ads/zzamx;

    if-eqz v0, :cond_19c

    .line 109
    check-cast p4, Lcom/google/android/gms/internal/ads/zzamx;

    goto :goto_18f

    .line 110
    :cond_19c
    new-instance p4, Lcom/google/android/gms/internal/ads/zzamz;

    invoke-direct {p4, p1}, Lcom/google/android/gms/internal/ads/zzamz;-><init>(Landroid/os/IBinder;)V

    goto :goto_18f

    .line 112
    :goto_1a2
    sget-object p1, Lcom/google/android/gms/internal/ads/zzadj;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/zzgw;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    move-object v7, p1

    check-cast v7, Lcom/google/android/gms/internal/ads/zzadj;

    .line 113
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v8

    move-object v1, p0

    .line 114
    invoke-virtual/range {v1 .. v8}, Lcom/google/android/gms/internal/ads/zzamv;->zza(Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/internal/ads/zzve;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzamx;Lcom/google/android/gms/internal/ads/zzadj;Ljava/util/List;)V

    .line 115
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_327

    .line 96
    :pswitch_1b8
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzamv;->isInitialized()Z

    move-result p1

    .line 97
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 98
    invoke-static {p3, p1}, Lcom/google/android/gms/internal/ads/zzgw;->writeBoolean(Landroid/os/Parcel;Z)V

    goto/16 :goto_327

    .line 93
    :pswitch_1c4
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzamv;->showVideo()V

    .line 94
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_327

    .line 88
    :pswitch_1cc
    sget-object p1, Lcom/google/android/gms/internal/ads/zzve;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/zzgw;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzve;

    .line 89
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 90
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzamv;->zza(Lcom/google/android/gms/internal/ads/zzve;Ljava/lang/String;)V

    .line 91
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_327

    .line 80
    :pswitch_1e0
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/dynamic/IObjectWrapper$Stub;->asInterface(Landroid/os/IBinder;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v1

    .line 81
    sget-object p1, Lcom/google/android/gms/internal/ads/zzve;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/zzgw;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    move-object v2, p1

    check-cast v2, Lcom/google/android/gms/internal/ads/zzve;

    .line 82
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 83
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzaua;->zzan(Landroid/os/IBinder;)Lcom/google/android/gms/internal/ads/zzatx;

    move-result-object v4

    .line 84
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    move-object v0, p0

    .line 85
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzamv;->zza(Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/internal/ads/zzve;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzatx;Ljava/lang/String;)V

    .line 86
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_327

    .line 77
    :pswitch_20a
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzamv;->resume()V

    .line 78
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_327

    .line 74
    :pswitch_212
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzamv;->pause()V

    .line 75
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_327

    .line 59
    :pswitch_21a
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/dynamic/IObjectWrapper$Stub;->asInterface(Landroid/os/IBinder;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v2

    .line 60
    sget-object p1, Lcom/google/android/gms/internal/ads/zzve;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/zzgw;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Lcom/google/android/gms/internal/ads/zzve;

    .line 61
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 62
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 63
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    if-nez p1, :cond_23b

    :goto_239
    move-object v6, p4

    goto :goto_24d

    .line 66
    :cond_23b
    invoke-interface {p1, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p2

    .line 67
    instance-of p4, p2, Lcom/google/android/gms/internal/ads/zzamx;

    if-eqz p4, :cond_247

    .line 68
    move-object p4, p2

    check-cast p4, Lcom/google/android/gms/internal/ads/zzamx;

    goto :goto_239

    .line 69
    :cond_247
    new-instance p4, Lcom/google/android/gms/internal/ads/zzamz;

    invoke-direct {p4, p1}, Lcom/google/android/gms/internal/ads/zzamz;-><init>(Landroid/os/IBinder;)V

    goto :goto_239

    :goto_24d
    move-object v1, p0

    .line 71
    invoke-virtual/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/zzamv;->zza(Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/internal/ads/zzve;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzamx;)V

    .line 72
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_327

    .line 43
    :pswitch_256
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/dynamic/IObjectWrapper$Stub;->asInterface(Landroid/os/IBinder;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v2

    .line 44
    sget-object p1, Lcom/google/android/gms/internal/ads/zzvh;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/zzgw;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Lcom/google/android/gms/internal/ads/zzvh;

    .line 45
    sget-object p1, Lcom/google/android/gms/internal/ads/zzve;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/zzgw;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    move-object v4, p1

    check-cast v4, Lcom/google/android/gms/internal/ads/zzve;

    .line 46
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 47
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 48
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    if-nez p1, :cond_280

    :goto_27e
    move-object v7, p4

    goto :goto_292

    .line 51
    :cond_280
    invoke-interface {p1, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p2

    .line 52
    instance-of p4, p2, Lcom/google/android/gms/internal/ads/zzamx;

    if-eqz p4, :cond_28c

    .line 53
    move-object p4, p2

    check-cast p4, Lcom/google/android/gms/internal/ads/zzamx;

    goto :goto_27e

    .line 54
    :cond_28c
    new-instance p4, Lcom/google/android/gms/internal/ads/zzamz;

    invoke-direct {p4, p1}, Lcom/google/android/gms/internal/ads/zzamz;-><init>(Landroid/os/IBinder;)V

    goto :goto_27e

    :goto_292
    move-object v1, p0

    .line 56
    invoke-virtual/range {v1 .. v7}, Lcom/google/android/gms/internal/ads/zzamv;->zza(Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/internal/ads/zzvh;Lcom/google/android/gms/internal/ads/zzve;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzamx;)V

    .line 57
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_327

    .line 40
    :pswitch_29b
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzamv;->destroy()V

    .line 41
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_327

    .line 37
    :pswitch_2a3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzamv;->showInterstitial()V

    .line 38
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_327

    .line 23
    :pswitch_2ab
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/dynamic/IObjectWrapper$Stub;->asInterface(Landroid/os/IBinder;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object p1

    .line 24
    sget-object v1, Lcom/google/android/gms/internal/ads/zzve;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, v1}, Lcom/google/android/gms/internal/ads/zzgw;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzve;

    .line 25
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 26
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    if-nez p2, :cond_2c6

    goto :goto_2d6

    .line 29
    :cond_2c6
    invoke-interface {p2, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p4

    .line 30
    instance-of v0, p4, Lcom/google/android/gms/internal/ads/zzamx;

    if-eqz v0, :cond_2d1

    .line 31
    check-cast p4, Lcom/google/android/gms/internal/ads/zzamx;

    goto :goto_2d6

    .line 32
    :cond_2d1
    new-instance p4, Lcom/google/android/gms/internal/ads/zzamz;

    invoke-direct {p4, p2}, Lcom/google/android/gms/internal/ads/zzamz;-><init>(Landroid/os/IBinder;)V

    .line 34
    :goto_2d6
    invoke-virtual {p0, p1, v1, v2, p4}, Lcom/google/android/gms/internal/ads/zzamv;->zza(Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/internal/ads/zzve;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzamx;)V

    .line 35
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_327

    .line 19
    :pswitch_2dd
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzamv;->zztj()Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object p1

    .line 20
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 21
    invoke-static {p3, p1}, Lcom/google/android/gms/internal/ads/zzgw;->zza(Landroid/os/Parcel;Landroid/os/IInterface;)V

    goto :goto_327

    .line 4
    :pswitch_2e8
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/dynamic/IObjectWrapper$Stub;->asInterface(Landroid/os/IBinder;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v2

    .line 5
    sget-object p1, Lcom/google/android/gms/internal/ads/zzvh;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/zzgw;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Lcom/google/android/gms/internal/ads/zzvh;

    .line 6
    sget-object p1, Lcom/google/android/gms/internal/ads/zzve;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/zzgw;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    move-object v4, p1

    check-cast v4, Lcom/google/android/gms/internal/ads/zzve;

    .line 7
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 8
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    if-nez p1, :cond_30e

    :goto_30c
    move-object v6, p4

    goto :goto_320

    .line 11
    :cond_30e
    invoke-interface {p1, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p2

    .line 12
    instance-of p4, p2, Lcom/google/android/gms/internal/ads/zzamx;

    if-eqz p4, :cond_31a

    .line 13
    move-object p4, p2

    check-cast p4, Lcom/google/android/gms/internal/ads/zzamx;

    goto :goto_30c

    .line 14
    :cond_31a
    new-instance p4, Lcom/google/android/gms/internal/ads/zzamz;

    invoke-direct {p4, p1}, Lcom/google/android/gms/internal/ads/zzamz;-><init>(Landroid/os/IBinder;)V

    goto :goto_30c

    :goto_320
    move-object v1, p0

    .line 16
    invoke-virtual/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/zzamv;->zza(Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/internal/ads/zzvh;Lcom/google/android/gms/internal/ads/zzve;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzamx;)V

    .line 17
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    :goto_327
    const/4 p1, 0x1

    return p1

    nop

    :pswitch_data_32a
    .packed-switch 0x1
        :pswitch_2e8
        :pswitch_2dd
        :pswitch_2ab
        :pswitch_2a3
        :pswitch_29b
        :pswitch_256
        :pswitch_21a
        :pswitch_212
        :pswitch_20a
        :pswitch_1e0
        :pswitch_1cc
        :pswitch_1c4
        :pswitch_1b8
        :pswitch_170
        :pswitch_164
        :pswitch_158
        :pswitch_14c
        :pswitch_140
        :pswitch_134
        :pswitch_11c
        :pswitch_10c
        :pswitch_100
        :pswitch_e4
        :pswitch_d8
        :pswitch_cc
        :pswitch_c0
        :pswitch_b4
        :pswitch_81
        :pswitch_6
        :pswitch_71
        :pswitch_53
        :pswitch_20
        :pswitch_14
        :pswitch_8
    .end packed-switch
.end method
