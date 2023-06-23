.class public final Lcom/google/android/gms/internal/measurement/zzgd;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-base@@17.4.4"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/measurement/zzgd$zza;
    }
.end annotation


# static fields
.field private static final zza:Lcom/google/android/gms/internal/measurement/zzgc;

.field private static final zzb:I


# direct methods
.method static constructor <clinit>()V
    .registers 7

    const/4 v0, 0x1

    .line 11
    :try_start_1
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzgd;->zza()Ljava/lang/Integer;

    move-result-object v1
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_2c

    if-eqz v1, :cond_15

    .line 12
    :try_start_7
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/16 v3, 0x13

    if-lt v2, v3, :cond_15

    .line 13
    new-instance v2, Lcom/google/android/gms/internal/measurement/zzgh;

    invoke-direct {v2}, Lcom/google/android/gms/internal/measurement/zzgh;-><init>()V

    goto :goto_63

    :cond_15
    const-string v2, "com.google.devtools.build.android.desugar.runtime.twr_disable_mimic"

    .line 14
    invoke-static {v2}, Ljava/lang/Boolean;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    xor-int/2addr v2, v0

    if-eqz v2, :cond_24

    .line 16
    new-instance v2, Lcom/google/android/gms/internal/measurement/zzgg;

    invoke-direct {v2}, Lcom/google/android/gms/internal/measurement/zzgg;-><init>()V

    goto :goto_63

    .line 17
    :cond_24
    new-instance v2, Lcom/google/android/gms/internal/measurement/zzgd$zza;

    invoke-direct {v2}, Lcom/google/android/gms/internal/measurement/zzgd$zza;-><init>()V
    :try_end_29
    .catchall {:try_start_7 .. :try_end_29} :catchall_2a

    goto :goto_63

    :catchall_2a
    move-exception v2

    goto :goto_2e

    :catchall_2c
    move-exception v2

    const/4 v1, 0x0

    .line 20
    :goto_2e
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-class v4, Lcom/google/android/gms/internal/measurement/zzgd$zza;

    .line 21
    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit16 v5, v5, 0x85

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v5, "An error has occurred when initializing the try-with-resources desuguring strategy. The default strategy "

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "will be used. The error is: "

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 22
    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 23
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintStream;)V

    .line 24
    new-instance v2, Lcom/google/android/gms/internal/measurement/zzgd$zza;

    invoke-direct {v2}, Lcom/google/android/gms/internal/measurement/zzgd$zza;-><init>()V

    .line 25
    :goto_63
    sput-object v2, Lcom/google/android/gms/internal/measurement/zzgd;->zza:Lcom/google/android/gms/internal/measurement/zzgc;

    if-nez v1, :cond_68

    goto :goto_6c

    .line 26
    :cond_68
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_6c
    sput v0, Lcom/google/android/gms/internal/measurement/zzgd;->zzb:I

    return-void
.end method

.method private static zza()Ljava/lang/Integer;
    .registers 4

    const/4 v0, 0x0

    :try_start_1
    const-string v1, "android.os.Build$VERSION"

    .line 3
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "SDK_INT"

    .line 4
    invoke-virtual {v1, v2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 5
    invoke-virtual {v1, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_13} :catch_14

    return-object v1

    :catch_14
    move-exception v1

    .line 7
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v3, "Failed to retrieve value from android.os.Build$VERSION.SDK_INT due to the following exception."

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 8
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v1, v2}, Ljava/lang/Exception;->printStackTrace(Ljava/io/PrintStream;)V

    return-object v0
.end method

.method public static zza(Ljava/lang/Throwable;Ljava/lang/Throwable;)V
    .registers 3

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzgd;->zza:Lcom/google/android/gms/internal/measurement/zzgc;

    invoke-virtual {v0, p0, p1}, Lcom/google/android/gms/internal/measurement/zzgc;->zza(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    return-void
.end method
