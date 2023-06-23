.class public abstract Lcom/google/android/gms/internal/measurement/zzu;
.super Lcom/google/android/gms/internal/measurement/zzc;
.source "com.google.android.gms:play-services-measurement-base@@17.4.4"

# interfaces
.implements Lcom/google/android/gms/internal/measurement/zzv;


# direct methods
.method public constructor <init>()V
    .registers 2

    const-string v0, "com.google.android.gms.measurement.api.internal.IAppMeasurementDynamiteService"

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/measurement/zzc;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/google/android/gms/internal/measurement/zzv;
    .registers 3

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    const-string v0, "com.google.android.gms.measurement.api.internal.IAppMeasurementDynamiteService"

    .line 5
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 6
    instance-of v1, v0, Lcom/google/android/gms/internal/measurement/zzv;

    if-eqz v1, :cond_11

    .line 7
    check-cast v0, Lcom/google/android/gms/internal/measurement/zzv;

    return-object v0

    .line 8
    :cond_11
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzx;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/measurement/zzx;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method


# virtual methods
.method protected final zza(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v1, "com.google.android.gms.measurement.api.internal.IEventHandlerProxy"

    const-string v2, "com.google.android.gms.measurement.api.internal.IBundleReceiver"

    const/4 v3, 0x0

    packed-switch p1, :pswitch_data_400

    :pswitch_8
    const/4 v0, 0x0

    return v0

    .line 303
    :pswitch_a
    sget-object v1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, v1}, Lcom/google/android/gms/internal/measurement/zzb;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 304
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/measurement/zzu;->setDefaultEventParameters(Landroid/os/Bundle;)V

    goto/16 :goto_3fb

    .line 293
    :pswitch_17
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    if-nez v0, :cond_1e

    goto :goto_2f

    .line 296
    :cond_1e
    invoke-interface {v0, v2}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v1

    .line 297
    instance-of v2, v1, Lcom/google/android/gms/internal/measurement/zzw;

    if-eqz v2, :cond_2a

    .line 298
    move-object v3, v1

    check-cast v3, Lcom/google/android/gms/internal/measurement/zzw;

    goto :goto_2f

    .line 299
    :cond_2a
    new-instance v3, Lcom/google/android/gms/internal/measurement/zzy;

    invoke-direct {v3, v0}, Lcom/google/android/gms/internal/measurement/zzy;-><init>(Landroid/os/IBinder;)V

    .line 301
    :goto_2f
    invoke-virtual {p0, v3}, Lcom/google/android/gms/internal/measurement/zzu;->isDataCollectionEnabled(Lcom/google/android/gms/internal/measurement/zzw;)V

    goto/16 :goto_3fb

    .line 290
    :pswitch_34
    invoke-static {p2}, Lcom/google/android/gms/internal/measurement/zzb;->zza(Landroid/os/Parcel;)Z

    move-result v0

    .line 291
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/measurement/zzu;->setDataCollectionEnabled(Z)V

    goto/16 :goto_3fb

    .line 279
    :pswitch_3d
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    if-nez v1, :cond_44

    goto :goto_55

    .line 282
    :cond_44
    invoke-interface {v1, v2}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v2

    .line 283
    instance-of v3, v2, Lcom/google/android/gms/internal/measurement/zzw;

    if-eqz v3, :cond_50

    .line 284
    move-object v3, v2

    check-cast v3, Lcom/google/android/gms/internal/measurement/zzw;

    goto :goto_55

    .line 285
    :cond_50
    new-instance v3, Lcom/google/android/gms/internal/measurement/zzy;

    invoke-direct {v3, v1}, Lcom/google/android/gms/internal/measurement/zzy;-><init>(Landroid/os/IBinder;)V

    .line 287
    :goto_55
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 288
    invoke-virtual {p0, v3, v0}, Lcom/google/android/gms/internal/measurement/zzu;->getTestFlag(Lcom/google/android/gms/internal/measurement/zzw;I)V

    goto/16 :goto_3fb

    .line 276
    :pswitch_5e
    invoke-static {p2}, Lcom/google/android/gms/internal/measurement/zzb;->zzb(Landroid/os/Parcel;)Ljava/util/HashMap;

    move-result-object v0

    .line 277
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/measurement/zzu;->initForTests(Ljava/util/Map;)V

    goto/16 :goto_3fb

    .line 266
    :pswitch_67
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    if-nez v0, :cond_6e

    goto :goto_7f

    .line 269
    :cond_6e
    invoke-interface {v0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v1

    .line 270
    instance-of v2, v1, Lcom/google/android/gms/internal/measurement/zzab;

    if-eqz v2, :cond_7a

    .line 271
    move-object v3, v1

    check-cast v3, Lcom/google/android/gms/internal/measurement/zzab;

    goto :goto_7f

    .line 272
    :cond_7a
    new-instance v3, Lcom/google/android/gms/internal/measurement/zzad;

    invoke-direct {v3, v0}, Lcom/google/android/gms/internal/measurement/zzad;-><init>(Landroid/os/IBinder;)V

    .line 274
    :goto_7f
    invoke-virtual {p0, v3}, Lcom/google/android/gms/internal/measurement/zzu;->unregisterOnMeasurementEventListener(Lcom/google/android/gms/internal/measurement/zzab;)V

    goto/16 :goto_3fb

    .line 256
    :pswitch_84
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    if-nez v0, :cond_8b

    goto :goto_9c

    .line 259
    :cond_8b
    invoke-interface {v0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v1

    .line 260
    instance-of v2, v1, Lcom/google/android/gms/internal/measurement/zzab;

    if-eqz v2, :cond_97

    .line 261
    move-object v3, v1

    check-cast v3, Lcom/google/android/gms/internal/measurement/zzab;

    goto :goto_9c

    .line 262
    :cond_97
    new-instance v3, Lcom/google/android/gms/internal/measurement/zzad;

    invoke-direct {v3, v0}, Lcom/google/android/gms/internal/measurement/zzad;-><init>(Landroid/os/IBinder;)V

    .line 264
    :goto_9c
    invoke-virtual {p0, v3}, Lcom/google/android/gms/internal/measurement/zzu;->registerOnMeasurementEventListener(Lcom/google/android/gms/internal/measurement/zzab;)V

    goto/16 :goto_3fb

    .line 246
    :pswitch_a1
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    if-nez v0, :cond_a8

    goto :goto_b9

    .line 249
    :cond_a8
    invoke-interface {v0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v1

    .line 250
    instance-of v2, v1, Lcom/google/android/gms/internal/measurement/zzab;

    if-eqz v2, :cond_b4

    .line 251
    move-object v3, v1

    check-cast v3, Lcom/google/android/gms/internal/measurement/zzab;

    goto :goto_b9

    .line 252
    :cond_b4
    new-instance v3, Lcom/google/android/gms/internal/measurement/zzad;

    invoke-direct {v3, v0}, Lcom/google/android/gms/internal/measurement/zzad;-><init>(Landroid/os/IBinder;)V

    .line 254
    :goto_b9
    invoke-virtual {p0, v3}, Lcom/google/android/gms/internal/measurement/zzu;->setEventInterceptor(Lcom/google/android/gms/internal/measurement/zzab;)V

    goto/16 :goto_3fb

    .line 239
    :pswitch_be
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 240
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 241
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/gms/dynamic/IObjectWrapper$Stub;->asInterface(Landroid/os/IBinder;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v3

    .line 242
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/gms/dynamic/IObjectWrapper$Stub;->asInterface(Landroid/os/IBinder;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v4

    .line 243
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/dynamic/IObjectWrapper$Stub;->asInterface(Landroid/os/IBinder;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v5

    move-object v0, p0

    .line 244
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/measurement/zzu;->logHealthData(ILjava/lang/String;Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/dynamic/IObjectWrapper;)V

    goto/16 :goto_3fb

    .line 227
    :pswitch_e4
    sget-object v1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, v1}, Lcom/google/android/gms/internal/measurement/zzb;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    .line 228
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    if-nez v4, :cond_f3

    goto :goto_104

    .line 231
    :cond_f3
    invoke-interface {v4, v2}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v2

    .line 232
    instance-of v3, v2, Lcom/google/android/gms/internal/measurement/zzw;

    if-eqz v3, :cond_ff

    .line 233
    move-object v3, v2

    check-cast v3, Lcom/google/android/gms/internal/measurement/zzw;

    goto :goto_104

    .line 234
    :cond_ff
    new-instance v3, Lcom/google/android/gms/internal/measurement/zzy;

    invoke-direct {v3, v4}, Lcom/google/android/gms/internal/measurement/zzy;-><init>(Landroid/os/IBinder;)V

    .line 236
    :goto_104
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    .line 237
    invoke-virtual {p0, v1, v3, v4, v5}, Lcom/google/android/gms/internal/measurement/zzu;->performAction(Landroid/os/Bundle;Lcom/google/android/gms/internal/measurement/zzw;J)V

    goto/16 :goto_3fb

    .line 215
    :pswitch_10d
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/dynamic/IObjectWrapper$Stub;->asInterface(Landroid/os/IBinder;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v1

    .line 216
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    if-nez v4, :cond_11c

    goto :goto_12d

    .line 219
    :cond_11c
    invoke-interface {v4, v2}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v2

    .line 220
    instance-of v3, v2, Lcom/google/android/gms/internal/measurement/zzw;

    if-eqz v3, :cond_128

    .line 221
    move-object v3, v2

    check-cast v3, Lcom/google/android/gms/internal/measurement/zzw;

    goto :goto_12d

    .line 222
    :cond_128
    new-instance v3, Lcom/google/android/gms/internal/measurement/zzy;

    invoke-direct {v3, v4}, Lcom/google/android/gms/internal/measurement/zzy;-><init>(Landroid/os/IBinder;)V

    .line 224
    :goto_12d
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    .line 225
    invoke-virtual {p0, v1, v3, v4, v5}, Lcom/google/android/gms/internal/measurement/zzu;->onActivitySaveInstanceState(Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/internal/measurement/zzw;J)V

    goto/16 :goto_3fb

    .line 211
    :pswitch_136
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/dynamic/IObjectWrapper$Stub;->asInterface(Landroid/os/IBinder;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v1

    .line 212
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 213
    invoke-virtual {p0, v1, v2, v3}, Lcom/google/android/gms/internal/measurement/zzu;->onActivityResumed(Lcom/google/android/gms/dynamic/IObjectWrapper;J)V

    goto/16 :goto_3fb

    .line 207
    :pswitch_147
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/dynamic/IObjectWrapper$Stub;->asInterface(Landroid/os/IBinder;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v1

    .line 208
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 209
    invoke-virtual {p0, v1, v2, v3}, Lcom/google/android/gms/internal/measurement/zzu;->onActivityPaused(Lcom/google/android/gms/dynamic/IObjectWrapper;J)V

    goto/16 :goto_3fb

    .line 203
    :pswitch_158
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/dynamic/IObjectWrapper$Stub;->asInterface(Landroid/os/IBinder;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v1

    .line 204
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 205
    invoke-virtual {p0, v1, v2, v3}, Lcom/google/android/gms/internal/measurement/zzu;->onActivityDestroyed(Lcom/google/android/gms/dynamic/IObjectWrapper;J)V

    goto/16 :goto_3fb

    .line 198
    :pswitch_169
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/dynamic/IObjectWrapper$Stub;->asInterface(Landroid/os/IBinder;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v1

    .line 199
    sget-object v2, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, v2}, Lcom/google/android/gms/internal/measurement/zzb;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    .line 200
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    .line 201
    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/google/android/gms/internal/measurement/zzu;->onActivityCreated(Lcom/google/android/gms/dynamic/IObjectWrapper;Landroid/os/Bundle;J)V

    goto/16 :goto_3fb

    .line 194
    :pswitch_182
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/dynamic/IObjectWrapper$Stub;->asInterface(Landroid/os/IBinder;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v1

    .line 195
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 196
    invoke-virtual {p0, v1, v2, v3}, Lcom/google/android/gms/internal/measurement/zzu;->onActivityStopped(Lcom/google/android/gms/dynamic/IObjectWrapper;J)V

    goto/16 :goto_3fb

    .line 190
    :pswitch_193
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/dynamic/IObjectWrapper$Stub;->asInterface(Landroid/os/IBinder;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v1

    .line 191
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 192
    invoke-virtual {p0, v1, v2, v3}, Lcom/google/android/gms/internal/measurement/zzu;->onActivityStarted(Lcom/google/android/gms/dynamic/IObjectWrapper;J)V

    goto/16 :goto_3fb

    .line 186
    :pswitch_1a4
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 187
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 188
    invoke-virtual {p0, v1, v2, v3}, Lcom/google/android/gms/internal/measurement/zzu;->endAdUnitExposure(Ljava/lang/String;J)V

    goto/16 :goto_3fb

    .line 182
    :pswitch_1b1
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 183
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 184
    invoke-virtual {p0, v1, v2, v3}, Lcom/google/android/gms/internal/measurement/zzu;->beginAdUnitExposure(Ljava/lang/String;J)V

    goto/16 :goto_3fb

    .line 172
    :pswitch_1be
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    if-nez v0, :cond_1c5

    goto :goto_1d6

    .line 175
    :cond_1c5
    invoke-interface {v0, v2}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v1

    .line 176
    instance-of v2, v1, Lcom/google/android/gms/internal/measurement/zzw;

    if-eqz v2, :cond_1d1

    .line 177
    move-object v3, v1

    check-cast v3, Lcom/google/android/gms/internal/measurement/zzw;

    goto :goto_1d6

    .line 178
    :cond_1d1
    new-instance v3, Lcom/google/android/gms/internal/measurement/zzy;

    invoke-direct {v3, v0}, Lcom/google/android/gms/internal/measurement/zzy;-><init>(Landroid/os/IBinder;)V

    .line 180
    :goto_1d6
    invoke-virtual {p0, v3}, Lcom/google/android/gms/internal/measurement/zzu;->generateEventId(Lcom/google/android/gms/internal/measurement/zzw;)V

    goto/16 :goto_3fb

    .line 162
    :pswitch_1db
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    if-nez v0, :cond_1e2

    goto :goto_1f3

    .line 165
    :cond_1e2
    invoke-interface {v0, v2}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v1

    .line 166
    instance-of v2, v1, Lcom/google/android/gms/internal/measurement/zzw;

    if-eqz v2, :cond_1ee

    .line 167
    move-object v3, v1

    check-cast v3, Lcom/google/android/gms/internal/measurement/zzw;

    goto :goto_1f3

    .line 168
    :cond_1ee
    new-instance v3, Lcom/google/android/gms/internal/measurement/zzy;

    invoke-direct {v3, v0}, Lcom/google/android/gms/internal/measurement/zzy;-><init>(Landroid/os/IBinder;)V

    .line 170
    :goto_1f3
    invoke-virtual {p0, v3}, Lcom/google/android/gms/internal/measurement/zzu;->getGmpAppId(Lcom/google/android/gms/internal/measurement/zzw;)V

    goto/16 :goto_3fb

    .line 152
    :pswitch_1f8
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    if-nez v0, :cond_1ff

    goto :goto_210

    .line 155
    :cond_1ff
    invoke-interface {v0, v2}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v1

    .line 156
    instance-of v2, v1, Lcom/google/android/gms/internal/measurement/zzw;

    if-eqz v2, :cond_20b

    .line 157
    move-object v3, v1

    check-cast v3, Lcom/google/android/gms/internal/measurement/zzw;

    goto :goto_210

    .line 158
    :cond_20b
    new-instance v3, Lcom/google/android/gms/internal/measurement/zzy;

    invoke-direct {v3, v0}, Lcom/google/android/gms/internal/measurement/zzy;-><init>(Landroid/os/IBinder;)V

    .line 160
    :goto_210
    invoke-virtual {p0, v3}, Lcom/google/android/gms/internal/measurement/zzu;->getAppInstanceId(Lcom/google/android/gms/internal/measurement/zzw;)V

    goto/16 :goto_3fb

    .line 142
    :pswitch_215
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    if-nez v0, :cond_21c

    goto :goto_22d

    .line 145
    :cond_21c
    invoke-interface {v0, v2}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v1

    .line 146
    instance-of v2, v1, Lcom/google/android/gms/internal/measurement/zzw;

    if-eqz v2, :cond_228

    .line 147
    move-object v3, v1

    check-cast v3, Lcom/google/android/gms/internal/measurement/zzw;

    goto :goto_22d

    .line 148
    :cond_228
    new-instance v3, Lcom/google/android/gms/internal/measurement/zzy;

    invoke-direct {v3, v0}, Lcom/google/android/gms/internal/measurement/zzy;-><init>(Landroid/os/IBinder;)V

    .line 150
    :goto_22d
    invoke-virtual {p0, v3}, Lcom/google/android/gms/internal/measurement/zzu;->getCachedAppInstanceId(Lcom/google/android/gms/internal/measurement/zzw;)V

    goto/16 :goto_3fb

    .line 132
    :pswitch_232
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    if-nez v0, :cond_239

    goto :goto_24c

    :cond_239
    const-string v1, "com.google.android.gms.measurement.api.internal.IStringProvider"

    .line 135
    invoke-interface {v0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v1

    .line 136
    instance-of v2, v1, Lcom/google/android/gms/internal/measurement/zzac;

    if-eqz v2, :cond_247

    .line 137
    move-object v3, v1

    check-cast v3, Lcom/google/android/gms/internal/measurement/zzac;

    goto :goto_24c

    .line 138
    :cond_247
    new-instance v3, Lcom/google/android/gms/internal/measurement/zzaf;

    invoke-direct {v3, v0}, Lcom/google/android/gms/internal/measurement/zzaf;-><init>(Landroid/os/IBinder;)V

    .line 140
    :goto_24c
    invoke-virtual {p0, v3}, Lcom/google/android/gms/internal/measurement/zzu;->setInstanceIdProvider(Lcom/google/android/gms/internal/measurement/zzac;)V

    goto/16 :goto_3fb

    .line 122
    :pswitch_251
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    if-nez v0, :cond_258

    goto :goto_269

    .line 125
    :cond_258
    invoke-interface {v0, v2}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v1

    .line 126
    instance-of v2, v1, Lcom/google/android/gms/internal/measurement/zzw;

    if-eqz v2, :cond_264

    .line 127
    move-object v3, v1

    check-cast v3, Lcom/google/android/gms/internal/measurement/zzw;

    goto :goto_269

    .line 128
    :cond_264
    new-instance v3, Lcom/google/android/gms/internal/measurement/zzy;

    invoke-direct {v3, v0}, Lcom/google/android/gms/internal/measurement/zzy;-><init>(Landroid/os/IBinder;)V

    .line 130
    :goto_269
    invoke-virtual {p0, v3}, Lcom/google/android/gms/internal/measurement/zzu;->getCurrentScreenClass(Lcom/google/android/gms/internal/measurement/zzw;)V

    goto/16 :goto_3fb

    .line 112
    :pswitch_26e
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    if-nez v0, :cond_275

    goto :goto_286

    .line 115
    :cond_275
    invoke-interface {v0, v2}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v1

    .line 116
    instance-of v2, v1, Lcom/google/android/gms/internal/measurement/zzw;

    if-eqz v2, :cond_281

    .line 117
    move-object v3, v1

    check-cast v3, Lcom/google/android/gms/internal/measurement/zzw;

    goto :goto_286

    .line 118
    :cond_281
    new-instance v3, Lcom/google/android/gms/internal/measurement/zzy;

    invoke-direct {v3, v0}, Lcom/google/android/gms/internal/measurement/zzy;-><init>(Landroid/os/IBinder;)V

    .line 120
    :goto_286
    invoke-virtual {p0, v3}, Lcom/google/android/gms/internal/measurement/zzu;->getCurrentScreenName(Lcom/google/android/gms/internal/measurement/zzw;)V

    goto/16 :goto_3fb

    .line 106
    :pswitch_28b
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/dynamic/IObjectWrapper$Stub;->asInterface(Landroid/os/IBinder;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v1

    .line 107
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 108
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 109
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    move-object v0, p0

    .line 110
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/measurement/zzu;->setCurrentScreen(Lcom/google/android/gms/dynamic/IObjectWrapper;Ljava/lang/String;Ljava/lang/String;J)V

    goto/16 :goto_3fb

    .line 103
    :pswitch_2a5
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 104
    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/measurement/zzu;->setSessionTimeoutDuration(J)V

    goto/16 :goto_3fb

    .line 100
    :pswitch_2ae
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 101
    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/measurement/zzu;->setMinimumSessionDuration(J)V

    goto/16 :goto_3fb

    .line 97
    :pswitch_2b7
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 98
    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/measurement/zzu;->resetAnalyticsData(J)V

    goto/16 :goto_3fb

    .line 93
    :pswitch_2c0
    invoke-static {p2}, Lcom/google/android/gms/internal/measurement/zzb;->zza(Landroid/os/Parcel;)Z

    move-result v1

    .line 94
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 95
    invoke-virtual {p0, v1, v2, v3}, Lcom/google/android/gms/internal/measurement/zzu;->setMeasurementEnabled(ZJ)V

    goto/16 :goto_3fb

    .line 81
    :pswitch_2cd
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 82
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 83
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    if-nez v0, :cond_2dc

    goto :goto_2ed

    .line 86
    :cond_2dc
    invoke-interface {v0, v2}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v2

    .line 87
    instance-of v3, v2, Lcom/google/android/gms/internal/measurement/zzw;

    if-eqz v3, :cond_2e8

    .line 88
    move-object v3, v2

    check-cast v3, Lcom/google/android/gms/internal/measurement/zzw;

    goto :goto_2ed

    .line 89
    :cond_2e8
    new-instance v3, Lcom/google/android/gms/internal/measurement/zzy;

    invoke-direct {v3, v0}, Lcom/google/android/gms/internal/measurement/zzy;-><init>(Landroid/os/IBinder;)V

    .line 91
    :goto_2ed
    invoke-virtual {p0, v1, v4, v3}, Lcom/google/android/gms/internal/measurement/zzu;->getConditionalUserProperties(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/measurement/zzw;)V

    goto/16 :goto_3fb

    .line 76
    :pswitch_2f2
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 77
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 78
    sget-object v3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, v3}, Lcom/google/android/gms/internal/measurement/zzb;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 79
    invoke-virtual {p0, v1, v2, v0}, Lcom/google/android/gms/internal/measurement/zzu;->clearConditionalUserProperty(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    goto/16 :goto_3fb

    .line 72
    :pswitch_307
    sget-object v1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, v1}, Lcom/google/android/gms/internal/measurement/zzb;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    .line 73
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 74
    invoke-virtual {p0, v1, v2, v3}, Lcom/google/android/gms/internal/measurement/zzu;->setConditionalUserProperty(Landroid/os/Bundle;J)V

    goto/16 :goto_3fb

    .line 68
    :pswitch_318
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 69
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 70
    invoke-virtual {p0, v1, v2, v3}, Lcom/google/android/gms/internal/measurement/zzu;->setUserId(Ljava/lang/String;J)V

    goto/16 :goto_3fb

    .line 57
    :pswitch_325
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 58
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    if-nez v0, :cond_330

    goto :goto_341

    .line 61
    :cond_330
    invoke-interface {v0, v2}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v2

    .line 62
    instance-of v3, v2, Lcom/google/android/gms/internal/measurement/zzw;

    if-eqz v3, :cond_33c

    .line 63
    move-object v3, v2

    check-cast v3, Lcom/google/android/gms/internal/measurement/zzw;

    goto :goto_341

    .line 64
    :cond_33c
    new-instance v3, Lcom/google/android/gms/internal/measurement/zzy;

    invoke-direct {v3, v0}, Lcom/google/android/gms/internal/measurement/zzy;-><init>(Landroid/os/IBinder;)V

    .line 66
    :goto_341
    invoke-virtual {p0, v1, v3}, Lcom/google/android/gms/internal/measurement/zzu;->getMaxUserProperties(Ljava/lang/String;Lcom/google/android/gms/internal/measurement/zzw;)V

    goto/16 :goto_3fb

    .line 44
    :pswitch_346
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 45
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 46
    invoke-static {p2}, Lcom/google/android/gms/internal/measurement/zzb;->zza(Landroid/os/Parcel;)Z

    move-result v5

    .line 47
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    if-nez v0, :cond_359

    goto :goto_36a

    .line 50
    :cond_359
    invoke-interface {v0, v2}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v2

    .line 51
    instance-of v3, v2, Lcom/google/android/gms/internal/measurement/zzw;

    if-eqz v3, :cond_365

    .line 52
    move-object v3, v2

    check-cast v3, Lcom/google/android/gms/internal/measurement/zzw;

    goto :goto_36a

    .line 53
    :cond_365
    new-instance v3, Lcom/google/android/gms/internal/measurement/zzy;

    invoke-direct {v3, v0}, Lcom/google/android/gms/internal/measurement/zzy;-><init>(Landroid/os/IBinder;)V

    .line 55
    :goto_36a
    invoke-virtual {p0, v1, v4, v5, v3}, Lcom/google/android/gms/internal/measurement/zzu;->getUserProperties(Ljava/lang/String;Ljava/lang/String;ZLcom/google/android/gms/internal/measurement/zzw;)V

    goto/16 :goto_3fb

    .line 37
    :pswitch_36f
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 38
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 39
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/gms/dynamic/IObjectWrapper$Stub;->asInterface(Landroid/os/IBinder;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v3

    .line 40
    invoke-static {p2}, Lcom/google/android/gms/internal/measurement/zzb;->zza(Landroid/os/Parcel;)Z

    move-result v4

    .line 41
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v5

    move-object v0, p0

    .line 42
    invoke-virtual/range {v0 .. v6}, Lcom/google/android/gms/internal/measurement/zzu;->setUserProperty(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/dynamic/IObjectWrapper;ZJ)V

    goto/16 :goto_3fb

    .line 23
    :pswitch_38d
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 24
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 25
    sget-object v5, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, v5}, Lcom/google/android/gms/internal/measurement/zzb;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v5

    check-cast v5, Landroid/os/Bundle;

    .line 26
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    if-nez v6, :cond_3a5

    move-object v6, v3

    goto :goto_3b6

    .line 29
    :cond_3a5
    invoke-interface {v6, v2}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v2

    .line 30
    instance-of v3, v2, Lcom/google/android/gms/internal/measurement/zzw;

    if-eqz v3, :cond_3b0

    .line 31
    check-cast v2, Lcom/google/android/gms/internal/measurement/zzw;

    goto :goto_3b5

    .line 32
    :cond_3b0
    new-instance v2, Lcom/google/android/gms/internal/measurement/zzy;

    invoke-direct {v2, v6}, Lcom/google/android/gms/internal/measurement/zzy;-><init>(Landroid/os/IBinder;)V

    :goto_3b5
    move-object v6, v2

    .line 34
    :goto_3b6
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v8

    move-object v0, p0

    move-object v2, v4

    move-object v3, v5

    move-object v4, v6

    move-wide v5, v8

    .line 35
    invoke-virtual/range {v0 .. v6}, Lcom/google/android/gms/internal/measurement/zzu;->logEventAndBundle(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Lcom/google/android/gms/internal/measurement/zzw;J)V

    goto :goto_3fb

    .line 15
    :pswitch_3c3
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 16
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 17
    sget-object v3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, v3}, Lcom/google/android/gms/internal/measurement/zzb;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/os/Bundle;

    .line 18
    invoke-static {p2}, Lcom/google/android/gms/internal/measurement/zzb;->zza(Landroid/os/Parcel;)Z

    move-result v4

    .line 19
    invoke-static {p2}, Lcom/google/android/gms/internal/measurement/zzb;->zza(Landroid/os/Parcel;)Z

    move-result v5

    .line 20
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v6

    move-object v0, p0

    .line 21
    invoke-virtual/range {v0 .. v7}, Lcom/google/android/gms/internal/measurement/zzu;->logEvent(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ZZJ)V

    goto :goto_3fb

    .line 10
    :pswitch_3e4
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/dynamic/IObjectWrapper$Stub;->asInterface(Landroid/os/IBinder;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v1

    .line 11
    sget-object v2, Lcom/google/android/gms/internal/measurement/zzae;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, v2}, Lcom/google/android/gms/internal/measurement/zzb;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/measurement/zzae;

    .line 12
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    .line 13
    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/google/android/gms/internal/measurement/zzu;->initialize(Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/internal/measurement/zzae;J)V

    .line 307
    :goto_3fb
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v0, 0x1

    return v0

    :pswitch_data_400
    .packed-switch 0x1
        :pswitch_3e4
        :pswitch_3c3
        :pswitch_38d
        :pswitch_36f
        :pswitch_346
        :pswitch_325
        :pswitch_318
        :pswitch_307
        :pswitch_2f2
        :pswitch_2cd
        :pswitch_2c0
        :pswitch_2b7
        :pswitch_2ae
        :pswitch_2a5
        :pswitch_28b
        :pswitch_26e
        :pswitch_251
        :pswitch_232
        :pswitch_215
        :pswitch_1f8
        :pswitch_1db
        :pswitch_1be
        :pswitch_1b1
        :pswitch_1a4
        :pswitch_193
        :pswitch_182
        :pswitch_169
        :pswitch_158
        :pswitch_147
        :pswitch_136
        :pswitch_10d
        :pswitch_e4
        :pswitch_be
        :pswitch_a1
        :pswitch_84
        :pswitch_67
        :pswitch_5e
        :pswitch_3d
        :pswitch_34
        :pswitch_17
        :pswitch_8
        :pswitch_a
    .end packed-switch
.end method
