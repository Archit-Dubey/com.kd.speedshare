.class public abstract Lcom/google/android/gms/internal/measurement/zzhi;
.super Lcom/google/android/gms/internal/measurement/zzgq;
.source "com.google.android.gms:play-services-measurement-base@@17.4.4"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/measurement/zzhi$zza;,
        Lcom/google/android/gms/internal/measurement/zzhi$zzb;
    }
.end annotation


# static fields
.field private static final zzb:Ljava/util/logging/Logger;

.field private static final zzc:Z


# instance fields
.field zza:Lcom/google/android/gms/internal/measurement/zzhl;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 163
    const-class v0, Lcom/google/android/gms/internal/measurement/zzhi;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzhi;->zzb:Ljava/util/logging/Logger;

    .line 164
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzla;->zza()Z

    move-result v0

    sput-boolean v0, Lcom/google/android/gms/internal/measurement/zzhi;->zzc:Z

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 4
    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzgq;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/measurement/zzhk;)V
    .registers 2

    .line 161
    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzhi;-><init>()V

    return-void
.end method

.method public static zza(ILcom/google/android/gms/internal/measurement/zzis;)I
    .registers 3

    .line 50
    invoke-static {p0}, Lcom/google/android/gms/internal/measurement/zzhi;->zze(I)I

    move-result p0

    .line 51
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzis;->zzb()I

    move-result p1

    .line 52
    invoke-static {p1}, Lcom/google/android/gms/internal/measurement/zzhi;->zzg(I)I

    move-result v0

    add-int/2addr v0, p1

    add-int/2addr p0, v0

    return p0
.end method

.method public static zza(Lcom/google/android/gms/internal/measurement/zzis;)I
    .registers 2

    .line 117
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzis;->zzb()I

    move-result p0

    .line 118
    invoke-static {p0}, Lcom/google/android/gms/internal/measurement/zzhi;->zzg(I)I

    move-result v0

    add-int/2addr v0, p0

    return v0
.end method

.method static zza(Lcom/google/android/gms/internal/measurement/zzjj;Lcom/google/android/gms/internal/measurement/zzkc;)I
    .registers 4

    .line 129
    check-cast p0, Lcom/google/android/gms/internal/measurement/zzgj;

    .line 130
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzgj;->zzbj()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_10

    .line 132
    invoke-interface {p1, p0}, Lcom/google/android/gms/internal/measurement/zzkc;->zzb(Ljava/lang/Object;)I

    move-result v0

    .line 133
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/measurement/zzgj;->zzc(I)V

    .line 136
    :cond_10
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzhi;->zzg(I)I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public static zza([B)Lcom/google/android/gms/internal/measurement/zzhi;
    .registers 4

    .line 1
    array-length v0, p0

    .line 2
    new-instance v1, Lcom/google/android/gms/internal/measurement/zzhi$zza;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2, v0}, Lcom/google/android/gms/internal/measurement/zzhi$zza;-><init>([BII)V

    return-object v1
.end method

.method public static zzb(D)I
    .registers 2

    const/16 p0, 0x8

    return p0
.end method

.method public static zzb(F)I
    .registers 1

    const/4 p0, 0x4

    return p0
.end method

.method public static zzb(ID)I
    .registers 3

    .line 40
    invoke-static {p0}, Lcom/google/android/gms/internal/measurement/zzhi;->zze(I)I

    move-result p0

    add-int/lit8 p0, p0, 0x8

    return p0
.end method

.method public static zzb(IF)I
    .registers 2

    .line 39
    invoke-static {p0}, Lcom/google/android/gms/internal/measurement/zzhi;->zze(I)I

    move-result p0

    add-int/lit8 p0, p0, 0x4

    return p0
.end method

.method public static zzb(ILcom/google/android/gms/internal/measurement/zzis;)I
    .registers 4

    const/4 v0, 0x1

    .line 65
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzhi;->zze(I)I

    move-result v1

    shl-int/lit8 v0, v1, 0x1

    const/4 v1, 0x2

    .line 66
    invoke-static {v1, p0}, Lcom/google/android/gms/internal/measurement/zzhi;->zzg(II)I

    move-result p0

    add-int/2addr v0, p0

    const/4 p0, 0x3

    .line 67
    invoke-static {p0, p1}, Lcom/google/android/gms/internal/measurement/zzhi;->zza(ILcom/google/android/gms/internal/measurement/zzis;)I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public static zzb(ILcom/google/android/gms/internal/measurement/zzjj;)I
    .registers 4

    const/4 v0, 0x1

    .line 55
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzhi;->zze(I)I

    move-result v1

    shl-int/lit8 v0, v1, 0x1

    const/4 v1, 0x2

    .line 56
    invoke-static {v1, p0}, Lcom/google/android/gms/internal/measurement/zzhi;->zzg(II)I

    move-result p0

    add-int/2addr v0, p0

    const/4 p0, 0x3

    .line 58
    invoke-static {p0}, Lcom/google/android/gms/internal/measurement/zzhi;->zze(I)I

    move-result p0

    invoke-static {p1}, Lcom/google/android/gms/internal/measurement/zzhi;->zzb(Lcom/google/android/gms/internal/measurement/zzjj;)I

    move-result p1

    add-int/2addr p0, p1

    add-int/2addr v0, p0

    return v0
.end method

.method static zzb(ILcom/google/android/gms/internal/measurement/zzjj;Lcom/google/android/gms/internal/measurement/zzkc;)I
    .registers 3

    .line 54
    invoke-static {p0}, Lcom/google/android/gms/internal/measurement/zzhi;->zze(I)I

    move-result p0

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/measurement/zzhi;->zza(Lcom/google/android/gms/internal/measurement/zzjj;Lcom/google/android/gms/internal/measurement/zzkc;)I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method

.method public static zzb(ILjava/lang/String;)I
    .registers 2

    .line 45
    invoke-static {p0}, Lcom/google/android/gms/internal/measurement/zzhi;->zze(I)I

    move-result p0

    invoke-static {p1}, Lcom/google/android/gms/internal/measurement/zzhi;->zzb(Ljava/lang/String;)I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method

.method public static zzb(IZ)I
    .registers 2

    .line 41
    invoke-static {p0}, Lcom/google/android/gms/internal/measurement/zzhi;->zze(I)I

    move-result p0

    add-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public static zzb(Lcom/google/android/gms/internal/measurement/zzgt;)I
    .registers 2

    .line 120
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzgt;->zza()I

    move-result p0

    .line 121
    invoke-static {p0}, Lcom/google/android/gms/internal/measurement/zzhi;->zzg(I)I

    move-result v0

    add-int/2addr v0, p0

    return v0
.end method

.method public static zzb(Lcom/google/android/gms/internal/measurement/zzjj;)I
    .registers 2

    .line 126
    invoke-interface {p0}, Lcom/google/android/gms/internal/measurement/zzjj;->zzbm()I

    move-result p0

    .line 127
    invoke-static {p0}, Lcom/google/android/gms/internal/measurement/zzhi;->zzg(I)I

    move-result v0

    add-int/2addr v0, p0

    return v0
.end method

.method public static zzb(Ljava/lang/String;)I
    .registers 2

    .line 109
    :try_start_0
    invoke-static {p0}, Lcom/google/android/gms/internal/measurement/zzlc;->zza(Ljava/lang/CharSequence;)I

    move-result p0
    :try_end_4
    .catch Lcom/google/android/gms/internal/measurement/zzlg; {:try_start_0 .. :try_end_4} :catch_5

    goto :goto_c

    .line 112
    :catch_5
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzie;->zza:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    .line 113
    array-length p0, p0

    .line 115
    :goto_c
    invoke-static {p0}, Lcom/google/android/gms/internal/measurement/zzhi;->zzg(I)I

    move-result v0

    add-int/2addr v0, p0

    return v0
.end method

.method public static zzb(Z)I
    .registers 1

    const/4 p0, 0x1

    return p0
.end method

.method public static zzb([B)I
    .registers 2

    .line 123
    array-length p0, p0

    .line 124
    invoke-static {p0}, Lcom/google/android/gms/internal/measurement/zzhi;->zzg(I)I

    move-result v0

    add-int/2addr v0, p0

    return v0
.end method

.method public static zzc(ILcom/google/android/gms/internal/measurement/zzgt;)I
    .registers 3

    .line 46
    invoke-static {p0}, Lcom/google/android/gms/internal/measurement/zzhi;->zze(I)I

    move-result p0

    .line 47
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzgt;->zza()I

    move-result p1

    .line 48
    invoke-static {p1}, Lcom/google/android/gms/internal/measurement/zzhi;->zzg(I)I

    move-result v0

    add-int/2addr v0, p1

    add-int/2addr p0, v0

    return p0
.end method

.method static zzc(ILcom/google/android/gms/internal/measurement/zzjj;Lcom/google/android/gms/internal/measurement/zzkc;)I
    .registers 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 151
    invoke-static {p0}, Lcom/google/android/gms/internal/measurement/zzhi;->zze(I)I

    move-result p0

    shl-int/lit8 p0, p0, 0x1

    .line 152
    check-cast p1, Lcom/google/android/gms/internal/measurement/zzgj;

    .line 153
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzgj;->zzbj()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_16

    .line 155
    invoke-interface {p2, p1}, Lcom/google/android/gms/internal/measurement/zzkc;->zzb(Ljava/lang/Object;)I

    move-result v0

    .line 156
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/measurement/zzgj;->zzc(I)V

    :cond_16
    add-int/2addr p0, v0

    return p0
.end method

.method public static zzc(Lcom/google/android/gms/internal/measurement/zzjj;)I
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 159
    invoke-interface {p0}, Lcom/google/android/gms/internal/measurement/zzjj;->zzbm()I

    move-result p0

    return p0
.end method

.method static synthetic zzc()Z
    .registers 1

    .line 162
    sget-boolean v0, Lcom/google/android/gms/internal/measurement/zzhi;->zzc:Z

    return v0
.end method

.method public static zzd(IJ)I
    .registers 3

    .line 30
    invoke-static {p0}, Lcom/google/android/gms/internal/measurement/zzhi;->zze(I)I

    move-result p0

    .line 31
    invoke-static {p1, p2}, Lcom/google/android/gms/internal/measurement/zzhi;->zze(J)I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method

.method public static zzd(ILcom/google/android/gms/internal/measurement/zzgt;)I
    .registers 4

    const/4 v0, 0x1

    .line 61
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzhi;->zze(I)I

    move-result v1

    shl-int/lit8 v0, v1, 0x1

    const/4 v1, 0x2

    .line 62
    invoke-static {v1, p0}, Lcom/google/android/gms/internal/measurement/zzhi;->zzg(II)I

    move-result p0

    add-int/2addr v0, p0

    const/4 p0, 0x3

    .line 63
    invoke-static {p0, p1}, Lcom/google/android/gms/internal/measurement/zzhi;->zzc(ILcom/google/android/gms/internal/measurement/zzgt;)I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public static zzd(J)I
    .registers 2

    .line 87
    invoke-static {p0, p1}, Lcom/google/android/gms/internal/measurement/zzhi;->zze(J)I

    move-result p0

    return p0
.end method

.method public static zze(I)I
    .registers 1

    shl-int/lit8 p0, p0, 0x3

    .line 71
    invoke-static {p0}, Lcom/google/android/gms/internal/measurement/zzhi;->zzg(I)I

    move-result p0

    return p0
.end method

.method public static zze(IJ)I
    .registers 3

    .line 33
    invoke-static {p0}, Lcom/google/android/gms/internal/measurement/zzhi;->zze(I)I

    move-result p0

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/measurement/zzhi;->zze(J)I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method

.method public static zze(J)I
    .registers 8

    const-wide/16 v0, -0x80

    and-long/2addr v0, p0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_b

    const/4 p0, 0x1

    return p0

    :cond_b
    cmp-long v0, p0, v2

    if-gez v0, :cond_12

    const/16 p0, 0xa

    return p0

    :cond_12
    const-wide v0, -0x800000000L

    and-long/2addr v0, p0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_21

    const/4 v0, 0x6

    const/16 v1, 0x1c

    ushr-long/2addr p0, v1

    goto :goto_22

    :cond_21
    const/4 v0, 0x2

    :goto_22
    const-wide/32 v4, -0x200000

    and-long/2addr v4, p0

    cmp-long v1, v4, v2

    if-eqz v1, :cond_2f

    add-int/lit8 v0, v0, 0x2

    const/16 v1, 0xe

    ushr-long/2addr p0, v1

    :cond_2f
    const-wide/16 v4, -0x4000

    and-long/2addr p0, v4

    cmp-long v1, p0, v2

    if-eqz v1, :cond_38

    add-int/lit8 v0, v0, 0x1

    :cond_38
    return v0
.end method

.method public static zzf(I)I
    .registers 1

    if-ltz p0, :cond_7

    .line 73
    invoke-static {p0}, Lcom/google/android/gms/internal/measurement/zzhi;->zzg(I)I

    move-result p0

    return p0

    :cond_7
    const/16 p0, 0xa

    return p0
.end method

.method public static zzf(II)I
    .registers 2

    .line 23
    invoke-static {p0}, Lcom/google/android/gms/internal/measurement/zzhi;->zze(I)I

    move-result p0

    invoke-static {p1}, Lcom/google/android/gms/internal/measurement/zzhi;->zzf(I)I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method

.method public static zzf(IJ)I
    .registers 3

    .line 34
    invoke-static {p0}, Lcom/google/android/gms/internal/measurement/zzhi;->zze(I)I

    move-result p0

    .line 35
    invoke-static {p1, p2}, Lcom/google/android/gms/internal/measurement/zzhi;->zzi(J)J

    move-result-wide p1

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/measurement/zzhi;->zze(J)I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method

.method public static zzf(J)I
    .registers 2

    .line 102
    invoke-static {p0, p1}, Lcom/google/android/gms/internal/measurement/zzhi;->zzi(J)J

    move-result-wide p0

    invoke-static {p0, p1}, Lcom/google/android/gms/internal/measurement/zzhi;->zze(J)I

    move-result p0

    return p0
.end method

.method public static zzg(I)I
    .registers 2

    and-int/lit8 v0, p0, -0x80

    if-nez v0, :cond_6

    const/4 p0, 0x1

    return p0

    :cond_6
    and-int/lit16 v0, p0, -0x4000

    if-nez v0, :cond_c

    const/4 p0, 0x2

    return p0

    :cond_c
    const/high16 v0, -0x200000

    and-int/2addr v0, p0

    if-nez v0, :cond_13

    const/4 p0, 0x3

    return p0

    :cond_13
    const/high16 v0, -0x10000000

    and-int/2addr p0, v0

    if-nez p0, :cond_1a

    const/4 p0, 0x4

    return p0

    :cond_1a
    const/4 p0, 0x5

    return p0
.end method

.method public static zzg(II)I
    .registers 2

    .line 24
    invoke-static {p0}, Lcom/google/android/gms/internal/measurement/zzhi;->zze(I)I

    move-result p0

    invoke-static {p1}, Lcom/google/android/gms/internal/measurement/zzhi;->zzg(I)I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method

.method public static zzg(IJ)I
    .registers 3

    .line 37
    invoke-static {p0}, Lcom/google/android/gms/internal/measurement/zzhi;->zze(I)I

    move-result p0

    add-int/lit8 p0, p0, 0x8

    return p0
.end method

.method public static zzg(J)I
    .registers 2

    const/16 p0, 0x8

    return p0
.end method

.method public static zzh(I)I
    .registers 1

    .line 84
    invoke-static {p0}, Lcom/google/android/gms/internal/measurement/zzhi;->zzm(I)I

    move-result p0

    invoke-static {p0}, Lcom/google/android/gms/internal/measurement/zzhi;->zzg(I)I

    move-result p0

    return p0
.end method

.method public static zzh(II)I
    .registers 2

    .line 25
    invoke-static {p0}, Lcom/google/android/gms/internal/measurement/zzhi;->zze(I)I

    move-result p0

    .line 26
    invoke-static {p1}, Lcom/google/android/gms/internal/measurement/zzhi;->zzm(I)I

    move-result p1

    invoke-static {p1}, Lcom/google/android/gms/internal/measurement/zzhi;->zzg(I)I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method

.method public static zzh(IJ)I
    .registers 3

    .line 38
    invoke-static {p0}, Lcom/google/android/gms/internal/measurement/zzhi;->zze(I)I

    move-result p0

    add-int/lit8 p0, p0, 0x8

    return p0
.end method

.method public static zzh(J)I
    .registers 2

    const/16 p0, 0x8

    return p0
.end method

.method public static zzi(I)I
    .registers 1

    const/4 p0, 0x4

    return p0
.end method

.method public static zzi(II)I
    .registers 2

    .line 28
    invoke-static {p0}, Lcom/google/android/gms/internal/measurement/zzhi;->zze(I)I

    move-result p0

    add-int/lit8 p0, p0, 0x4

    return p0
.end method

.method private static zzi(J)J
    .registers 5

    const/4 v0, 0x1

    shl-long v0, p0, v0

    const/16 v2, 0x3f

    shr-long/2addr p0, v2

    xor-long/2addr p0, v0

    return-wide p0
.end method

.method public static zzj(I)I
    .registers 1

    const/4 p0, 0x4

    return p0
.end method

.method public static zzj(II)I
    .registers 2

    .line 29
    invoke-static {p0}, Lcom/google/android/gms/internal/measurement/zzhi;->zze(I)I

    move-result p0

    add-int/lit8 p0, p0, 0x4

    return p0
.end method

.method public static zzk(I)I
    .registers 1

    .line 108
    invoke-static {p0}, Lcom/google/android/gms/internal/measurement/zzhi;->zzf(I)I

    move-result p0

    return p0
.end method

.method public static zzk(II)I
    .registers 2

    .line 42
    invoke-static {p0}, Lcom/google/android/gms/internal/measurement/zzhi;->zze(I)I

    move-result p0

    .line 43
    invoke-static {p1}, Lcom/google/android/gms/internal/measurement/zzhi;->zzf(I)I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method

.method public static zzl(I)I
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 160
    invoke-static {p0}, Lcom/google/android/gms/internal/measurement/zzhi;->zzg(I)I

    move-result p0

    return p0
.end method

.method private static zzm(I)I
    .registers 2

    shl-int/lit8 v0, p0, 0x1

    shr-int/lit8 p0, p0, 0x1f

    xor-int/2addr p0, v0

    return p0
.end method


# virtual methods
.method public abstract zza()I
.end method

.method public abstract zza(B)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public final zza(D)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 19
    invoke-static {p1, p2}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/measurement/zzhi;->zzc(J)V

    return-void
.end method

.method public final zza(F)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 17
    invoke-static {p1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/measurement/zzhi;->zzd(I)V

    return-void
.end method

.method public abstract zza(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public final zza(ID)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 11
    invoke-static {p2, p3}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide p2

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/gms/internal/measurement/zzhi;->zzc(IJ)V

    return-void
.end method

.method public final zza(IF)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 9
    invoke-static {p2}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/measurement/zzhi;->zze(II)V

    return-void
.end method

.method public abstract zza(II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract zza(IJ)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract zza(ILcom/google/android/gms/internal/measurement/zzgt;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract zza(ILcom/google/android/gms/internal/measurement/zzjj;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method abstract zza(ILcom/google/android/gms/internal/measurement/zzjj;Lcom/google/android/gms/internal/measurement/zzkc;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract zza(ILjava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract zza(IZ)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract zza(J)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract zza(Lcom/google/android/gms/internal/measurement/zzgt;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract zza(Lcom/google/android/gms/internal/measurement/zzjj;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract zza(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method final zza(Ljava/lang/String;Lcom/google/android/gms/internal/measurement/zzlg;)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 143
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzhi;->zzb:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v2, "com.google.protobuf.CodedOutputStream"

    const-string v3, "inefficientWriteStringNoTag"

    const-string v4, "Converting ill-formed UTF-16. Your Protocol Buffer will not round trip correctly!"

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 144
    sget-object p2, Lcom/google/android/gms/internal/measurement/zzie;->zza:Ljava/nio/charset/Charset;

    invoke-virtual {p1, p2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    .line 145
    :try_start_14
    array-length p2, p1

    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/measurement/zzhi;->zzb(I)V

    const/4 p2, 0x0

    .line 146
    array-length v0, p1

    invoke-virtual {p0, p1, p2, v0}, Lcom/google/android/gms/internal/measurement/zzgq;->zza([BII)V
    :try_end_1d
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_14 .. :try_end_1d} :catch_20
    .catch Lcom/google/android/gms/internal/measurement/zzhi$zzb; {:try_start_14 .. :try_end_1d} :catch_1e

    return-void

    :catch_1e
    move-exception p1

    .line 150
    throw p1

    :catch_20
    move-exception p1

    .line 149
    new-instance p2, Lcom/google/android/gms/internal/measurement/zzhi$zzb;

    invoke-direct {p2, p1}, Lcom/google/android/gms/internal/measurement/zzhi$zzb;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method public final zza(Z)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    int-to-byte p1, p1

    .line 21
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/measurement/zzhi;->zza(B)V

    return-void
.end method

.method public final zzb()V
    .registers 3

    .line 140
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzhi;->zza()I

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 141
    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Did not write as much data as expected."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public abstract zzb(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract zzb(II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public final zzb(IJ)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7
    invoke-static {p2, p3}, Lcom/google/android/gms/internal/measurement/zzhi;->zzi(J)J

    move-result-wide p2

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/gms/internal/measurement/zzhi;->zza(IJ)V

    return-void
.end method

.method public abstract zzb(ILcom/google/android/gms/internal/measurement/zzgt;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public final zzb(J)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 15
    invoke-static {p1, p2}, Lcom/google/android/gms/internal/measurement/zzhi;->zzi(J)J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/measurement/zzhi;->zza(J)V

    return-void
.end method

.method abstract zzb([BII)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public final zzc(I)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 13
    invoke-static {p1}, Lcom/google/android/gms/internal/measurement/zzhi;->zzm(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/measurement/zzhi;->zzb(I)V

    return-void
.end method

.method public abstract zzc(II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract zzc(IJ)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract zzc(J)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract zzd(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public final zzd(II)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 5
    invoke-static {p2}, Lcom/google/android/gms/internal/measurement/zzhi;->zzm(I)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/measurement/zzhi;->zzc(II)V

    return-void
.end method

.method public abstract zze(II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
