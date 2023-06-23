.class final Lcom/google/android/gms/internal/ads/zznh;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.2.0"


# instance fields
.field private length:I

.field private zzaom:[I

.field private zzaon:[J

.field private zzaop:[J

.field private zzayd:[I

.field private zzbfg:I

.field private zzbfh:[I

.field private zzbfi:[Lcom/google/android/gms/internal/ads/zzkh;

.field private zzbfj:[Lcom/google/android/gms/internal/ads/zzhq;

.field private zzbfk:I

.field private zzbfl:I

.field private zzbfm:I

.field private zzbfn:J

.field private zzbfo:J

.field private zzbfp:Z

.field private zzbfq:Z

.field private zzbfr:Lcom/google/android/gms/internal/ads/zzhq;


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x3e8

    .line 2
    iput v0, p0, Lcom/google/android/gms/internal/ads/zznh;->zzbfg:I

    new-array v1, v0, [I

    .line 3
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zznh;->zzbfh:[I

    new-array v1, v0, [J

    .line 4
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zznh;->zzaon:[J

    new-array v1, v0, [J

    .line 5
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zznh;->zzaop:[J

    new-array v1, v0, [I

    .line 6
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zznh;->zzayd:[I

    new-array v1, v0, [I

    .line 7
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zznh;->zzaom:[I

    new-array v1, v0, [Lcom/google/android/gms/internal/ads/zzkh;

    .line 8
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zznh;->zzbfi:[Lcom/google/android/gms/internal/ads/zzkh;

    new-array v0, v0, [Lcom/google/android/gms/internal/ads/zzhq;

    .line 9
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zznh;->zzbfj:[Lcom/google/android/gms/internal/ads/zzhq;

    const-wide/high16 v0, -0x8000000000000000L

    .line 10
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zznh;->zzbfn:J

    .line 11
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zznh;->zzbfo:J

    const/4 v0, 0x1

    .line 12
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zznh;->zzbfq:Z

    .line 13
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zznh;->zzbfp:Z

    return-void
.end method


# virtual methods
.method public final declared-synchronized zza(Lcom/google/android/gms/internal/ads/zzhs;Lcom/google/android/gms/internal/ads/zzjm;ZZLcom/google/android/gms/internal/ads/zzhq;Lcom/google/android/gms/internal/ads/zzng;)I
    .registers 11

    monitor-enter p0

    .line 28
    :try_start_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zznh;->zzid()Z

    move-result v0

    const/4 v1, -0x5

    const/4 v2, -0x3

    const/4 v3, -0x4

    if-nez v0, :cond_24

    if-eqz p4, :cond_12

    const/4 p1, 0x4

    .line 30
    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/zzjf;->setFlags(I)V
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_a4

    .line 31
    monitor-exit p0

    return v3

    .line 32
    :cond_12
    :try_start_12
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zznh;->zzbfr:Lcom/google/android/gms/internal/ads/zzhq;

    if-eqz p2, :cond_22

    if-nez p3, :cond_1c

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zznh;->zzbfr:Lcom/google/android/gms/internal/ads/zzhq;

    if-eq p2, p5, :cond_22

    .line 33
    :cond_1c
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zznh;->zzbfr:Lcom/google/android/gms/internal/ads/zzhq;

    iput-object p2, p1, Lcom/google/android/gms/internal/ads/zzhs;->zzahr:Lcom/google/android/gms/internal/ads/zzhq;
    :try_end_20
    .catchall {:try_start_12 .. :try_end_20} :catchall_a4

    .line 34
    monitor-exit p0

    return v1

    .line 35
    :cond_22
    monitor-exit p0

    return v2

    :cond_24
    if-nez p3, :cond_9a

    .line 36
    :try_start_26
    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zznh;->zzbfj:[Lcom/google/android/gms/internal/ads/zzhq;

    iget p4, p0, Lcom/google/android/gms/internal/ads/zznh;->zzbfl:I

    aget-object p3, p3, p4

    if-eq p3, p5, :cond_2f

    goto :goto_9a

    .line 40
    :cond_2f
    iget-object p1, p2, Lcom/google/android/gms/internal/ads/zzjm;->zzdd:Ljava/nio/ByteBuffer;
    :try_end_31
    .catchall {:try_start_26 .. :try_end_31} :catchall_a4

    const/4 p3, 0x0

    const/4 p4, 0x1

    if-nez p1, :cond_37

    const/4 p1, 0x1

    goto :goto_38

    :cond_37
    const/4 p1, 0x0

    :goto_38
    if-eqz p1, :cond_3c

    .line 42
    monitor-exit p0

    return v2

    .line 43
    :cond_3c
    :try_start_3c
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zznh;->zzaop:[J

    iget p5, p0, Lcom/google/android/gms/internal/ads/zznh;->zzbfl:I

    aget-wide v0, p1, p5

    iput-wide v0, p2, Lcom/google/android/gms/internal/ads/zzjm;->zzaod:J

    .line 44
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zznh;->zzayd:[I

    iget p5, p0, Lcom/google/android/gms/internal/ads/zznh;->zzbfl:I

    aget p1, p1, p5

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/zzjf;->setFlags(I)V

    .line 45
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zznh;->zzaom:[I

    iget p5, p0, Lcom/google/android/gms/internal/ads/zznh;->zzbfl:I

    aget p1, p1, p5

    iput p1, p6, Lcom/google/android/gms/internal/ads/zzng;->size:I

    .line 46
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zznh;->zzaon:[J

    iget p5, p0, Lcom/google/android/gms/internal/ads/zznh;->zzbfl:I

    aget-wide v0, p1, p5

    iput-wide v0, p6, Lcom/google/android/gms/internal/ads/zzng;->zzawn:J

    .line 47
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zznh;->zzbfi:[Lcom/google/android/gms/internal/ads/zzkh;

    iget p5, p0, Lcom/google/android/gms/internal/ads/zznh;->zzbfl:I

    aget-object p1, p1, p5

    iput-object p1, p6, Lcom/google/android/gms/internal/ads/zzng;->zzarh:Lcom/google/android/gms/internal/ads/zzkh;

    .line 48
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zznh;->zzbfn:J

    iget-wide p1, p2, Lcom/google/android/gms/internal/ads/zzjm;->zzaod:J

    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zznh;->zzbfn:J

    .line 49
    iget p1, p0, Lcom/google/android/gms/internal/ads/zznh;->length:I

    sub-int/2addr p1, p4

    iput p1, p0, Lcom/google/android/gms/internal/ads/zznh;->length:I

    .line 50
    iget p1, p0, Lcom/google/android/gms/internal/ads/zznh;->zzbfl:I

    add-int/2addr p1, p4

    iput p1, p0, Lcom/google/android/gms/internal/ads/zznh;->zzbfl:I

    .line 51
    iget p2, p0, Lcom/google/android/gms/internal/ads/zznh;->zzbfk:I

    add-int/2addr p2, p4

    iput p2, p0, Lcom/google/android/gms/internal/ads/zznh;->zzbfk:I

    .line 52
    iget p2, p0, Lcom/google/android/gms/internal/ads/zznh;->zzbfg:I

    if-ne p1, p2, :cond_84

    .line 53
    iput p3, p0, Lcom/google/android/gms/internal/ads/zznh;->zzbfl:I

    .line 54
    :cond_84
    iget p1, p0, Lcom/google/android/gms/internal/ads/zznh;->length:I

    if-lez p1, :cond_8f

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zznh;->zzaon:[J

    iget p2, p0, Lcom/google/android/gms/internal/ads/zznh;->zzbfl:I

    aget-wide p2, p1, p2

    goto :goto_96

    .line 55
    :cond_8f
    iget-wide p1, p6, Lcom/google/android/gms/internal/ads/zzng;->zzawn:J

    iget p3, p6, Lcom/google/android/gms/internal/ads/zzng;->size:I

    int-to-long p3, p3

    add-long/2addr p1, p3

    move-wide p2, p1

    :goto_96
    iput-wide p2, p6, Lcom/google/android/gms/internal/ads/zzng;->zzbff:J
    :try_end_98
    .catchall {:try_start_3c .. :try_end_98} :catchall_a4

    .line 56
    monitor-exit p0

    return v3

    .line 37
    :cond_9a
    :goto_9a
    :try_start_9a
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zznh;->zzbfj:[Lcom/google/android/gms/internal/ads/zzhq;

    iget p3, p0, Lcom/google/android/gms/internal/ads/zznh;->zzbfl:I

    aget-object p2, p2, p3

    iput-object p2, p1, Lcom/google/android/gms/internal/ads/zzhs;->zzahr:Lcom/google/android/gms/internal/ads/zzhq;
    :try_end_a2
    .catchall {:try_start_9a .. :try_end_a2} :catchall_a4

    .line 38
    monitor-exit p0

    return v1

    :catchall_a4
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized zza(JIJILcom/google/android/gms/internal/ads/zzkh;)V
    .registers 13

    monitor-enter p0

    .line 91
    :try_start_1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zznh;->zzbfp:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_e7

    const/4 v1, 0x0

    if-eqz v0, :cond_e

    and-int/lit8 v0, p3, 0x1

    if-nez v0, :cond_c

    .line 93
    monitor-exit p0

    return-void

    .line 94
    :cond_c
    :try_start_c
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zznh;->zzbfp:Z

    .line 95
    :cond_e
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zznh;->zzbfq:Z

    const/4 v2, 0x1

    if-nez v0, :cond_15

    const/4 v0, 0x1

    goto :goto_16

    :cond_15
    const/4 v0, 0x0

    :goto_16
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzpb;->checkState(Z)V

    .line 96
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zznh;->zzei(J)V

    .line 97
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zznh;->zzaop:[J

    iget v3, p0, Lcom/google/android/gms/internal/ads/zznh;->zzbfm:I

    aput-wide p1, v0, v3

    .line 98
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zznh;->zzaon:[J

    iget p2, p0, Lcom/google/android/gms/internal/ads/zznh;->zzbfm:I

    aput-wide p4, p1, p2

    .line 99
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zznh;->zzaom:[I

    iget p2, p0, Lcom/google/android/gms/internal/ads/zznh;->zzbfm:I

    aput p6, p1, p2

    .line 100
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zznh;->zzayd:[I

    iget p2, p0, Lcom/google/android/gms/internal/ads/zznh;->zzbfm:I

    aput p3, p1, p2

    .line 101
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zznh;->zzbfi:[Lcom/google/android/gms/internal/ads/zzkh;

    iget p2, p0, Lcom/google/android/gms/internal/ads/zznh;->zzbfm:I

    aput-object p7, p1, p2

    .line 102
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zznh;->zzbfj:[Lcom/google/android/gms/internal/ads/zzhq;

    iget p2, p0, Lcom/google/android/gms/internal/ads/zznh;->zzbfm:I

    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zznh;->zzbfr:Lcom/google/android/gms/internal/ads/zzhq;

    aput-object p3, p1, p2

    .line 103
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zznh;->zzbfh:[I

    iget p2, p0, Lcom/google/android/gms/internal/ads/zznh;->zzbfm:I

    aput v1, p1, p2

    .line 104
    iget p1, p0, Lcom/google/android/gms/internal/ads/zznh;->length:I

    add-int/2addr p1, v2

    iput p1, p0, Lcom/google/android/gms/internal/ads/zznh;->length:I

    .line 105
    iget p2, p0, Lcom/google/android/gms/internal/ads/zznh;->zzbfg:I

    if-ne p1, p2, :cond_da

    .line 106
    iget p1, p0, Lcom/google/android/gms/internal/ads/zznh;->zzbfg:I

    add-int/lit16 p1, p1, 0x3e8

    .line 107
    new-array p2, p1, [I

    .line 108
    new-array p3, p1, [J

    .line 109
    new-array p4, p1, [J

    .line 110
    new-array p5, p1, [I

    .line 111
    new-array p6, p1, [I

    .line 112
    new-array p7, p1, [Lcom/google/android/gms/internal/ads/zzkh;

    .line 113
    new-array v0, p1, [Lcom/google/android/gms/internal/ads/zzhq;

    .line 114
    iget v2, p0, Lcom/google/android/gms/internal/ads/zznh;->zzbfg:I

    iget v3, p0, Lcom/google/android/gms/internal/ads/zznh;->zzbfl:I

    sub-int/2addr v2, v3

    .line 115
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zznh;->zzaon:[J

    iget v4, p0, Lcom/google/android/gms/internal/ads/zznh;->zzbfl:I

    invoke-static {v3, v4, p3, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 116
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zznh;->zzaop:[J

    iget v4, p0, Lcom/google/android/gms/internal/ads/zznh;->zzbfl:I

    invoke-static {v3, v4, p4, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 117
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zznh;->zzayd:[I

    iget v4, p0, Lcom/google/android/gms/internal/ads/zznh;->zzbfl:I

    invoke-static {v3, v4, p5, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 118
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zznh;->zzaom:[I

    iget v4, p0, Lcom/google/android/gms/internal/ads/zznh;->zzbfl:I

    invoke-static {v3, v4, p6, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 119
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zznh;->zzbfi:[Lcom/google/android/gms/internal/ads/zzkh;

    iget v4, p0, Lcom/google/android/gms/internal/ads/zznh;->zzbfl:I

    invoke-static {v3, v4, p7, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 120
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zznh;->zzbfj:[Lcom/google/android/gms/internal/ads/zzhq;

    iget v4, p0, Lcom/google/android/gms/internal/ads/zznh;->zzbfl:I

    invoke-static {v3, v4, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 121
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zznh;->zzbfh:[I

    iget v4, p0, Lcom/google/android/gms/internal/ads/zznh;->zzbfl:I

    invoke-static {v3, v4, p2, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 122
    iget v3, p0, Lcom/google/android/gms/internal/ads/zznh;->zzbfl:I

    .line 123
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zznh;->zzaon:[J

    invoke-static {v4, v1, p3, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 124
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zznh;->zzaop:[J

    invoke-static {v4, v1, p4, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 125
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zznh;->zzayd:[I

    invoke-static {v4, v1, p5, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 126
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zznh;->zzaom:[I

    invoke-static {v4, v1, p6, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 127
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zznh;->zzbfi:[Lcom/google/android/gms/internal/ads/zzkh;

    invoke-static {v4, v1, p7, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 128
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zznh;->zzbfj:[Lcom/google/android/gms/internal/ads/zzhq;

    invoke-static {v4, v1, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 129
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zznh;->zzbfh:[I

    invoke-static {v4, v1, p2, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 130
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zznh;->zzaon:[J

    .line 131
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zznh;->zzaop:[J

    .line 132
    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zznh;->zzayd:[I

    .line 133
    iput-object p6, p0, Lcom/google/android/gms/internal/ads/zznh;->zzaom:[I

    .line 134
    iput-object p7, p0, Lcom/google/android/gms/internal/ads/zznh;->zzbfi:[Lcom/google/android/gms/internal/ads/zzkh;

    .line 135
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zznh;->zzbfj:[Lcom/google/android/gms/internal/ads/zzhq;

    .line 136
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zznh;->zzbfh:[I

    .line 137
    iput v1, p0, Lcom/google/android/gms/internal/ads/zznh;->zzbfl:I

    .line 138
    iget p2, p0, Lcom/google/android/gms/internal/ads/zznh;->zzbfg:I

    iput p2, p0, Lcom/google/android/gms/internal/ads/zznh;->zzbfm:I

    .line 139
    iget p2, p0, Lcom/google/android/gms/internal/ads/zznh;->zzbfg:I

    iput p2, p0, Lcom/google/android/gms/internal/ads/zznh;->length:I

    .line 140
    iput p1, p0, Lcom/google/android/gms/internal/ads/zznh;->zzbfg:I
    :try_end_d8
    .catchall {:try_start_c .. :try_end_d8} :catchall_e7

    .line 141
    monitor-exit p0

    return-void

    .line 142
    :cond_da
    :try_start_da
    iget p1, p0, Lcom/google/android/gms/internal/ads/zznh;->zzbfm:I

    add-int/2addr p1, v2

    iput p1, p0, Lcom/google/android/gms/internal/ads/zznh;->zzbfm:I

    .line 143
    iget p2, p0, Lcom/google/android/gms/internal/ads/zznh;->zzbfg:I

    if-ne p1, p2, :cond_e5

    .line 144
    iput v1, p0, Lcom/google/android/gms/internal/ads/zznh;->zzbfm:I
    :try_end_e5
    .catchall {:try_start_da .. :try_end_e5} :catchall_e7

    .line 145
    :cond_e5
    monitor-exit p0

    return-void

    :catchall_e7
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized zzd(JZ)J
    .registers 12

    monitor-enter p0

    .line 64
    :try_start_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zznh;->zzid()Z

    move-result v0

    const-wide/16 v1, -0x1

    if-eqz v0, :cond_5c

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zznh;->zzaop:[J

    iget v3, p0, Lcom/google/android/gms/internal/ads/zznh;->zzbfl:I

    aget-wide v3, v0, v3

    cmp-long v0, p1, v3

    if-gez v0, :cond_14

    goto :goto_5c

    .line 66
    :cond_14
    iget-wide v3, p0, Lcom/google/android/gms/internal/ads/zznh;->zzbfo:J
    :try_end_16
    .catchall {:try_start_1 .. :try_end_16} :catchall_5e

    cmp-long v0, p1, v3

    if-lez v0, :cond_1e

    if-nez p3, :cond_1e

    .line 67
    monitor-exit p0

    return-wide v1

    :cond_1e
    const/4 p3, 0x0

    .line 70
    :try_start_1f
    iget v0, p0, Lcom/google/android/gms/internal/ads/zznh;->zzbfl:I

    const/4 v3, -0x1

    const/4 v4, -0x1

    .line 71
    :goto_23
    iget v5, p0, Lcom/google/android/gms/internal/ads/zznh;->zzbfm:I

    if-eq v0, v5, :cond_40

    .line 72
    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zznh;->zzaop:[J

    aget-wide v6, v5, v0

    cmp-long v5, v6, p1

    if-gtz v5, :cond_40

    .line 73
    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zznh;->zzayd:[I

    aget v5, v5, v0

    and-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_38

    move v4, p3

    :cond_38
    add-int/lit8 v0, v0, 0x1

    .line 75
    iget v5, p0, Lcom/google/android/gms/internal/ads/zznh;->zzbfg:I

    rem-int/2addr v0, v5
    :try_end_3d
    .catchall {:try_start_1f .. :try_end_3d} :catchall_5e

    add-int/lit8 p3, p3, 0x1

    goto :goto_23

    :cond_40
    if-ne v4, v3, :cond_44

    .line 78
    monitor-exit p0

    return-wide v1

    .line 79
    :cond_44
    :try_start_44
    iget p1, p0, Lcom/google/android/gms/internal/ads/zznh;->zzbfl:I

    add-int/2addr p1, v4

    iget p2, p0, Lcom/google/android/gms/internal/ads/zznh;->zzbfg:I

    rem-int/2addr p1, p2

    iput p1, p0, Lcom/google/android/gms/internal/ads/zznh;->zzbfl:I

    .line 80
    iget p2, p0, Lcom/google/android/gms/internal/ads/zznh;->zzbfk:I

    add-int/2addr p2, v4

    iput p2, p0, Lcom/google/android/gms/internal/ads/zznh;->zzbfk:I

    .line 81
    iget p2, p0, Lcom/google/android/gms/internal/ads/zznh;->length:I

    sub-int/2addr p2, v4

    iput p2, p0, Lcom/google/android/gms/internal/ads/zznh;->length:I

    .line 82
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zznh;->zzaon:[J

    aget-wide p1, p2, p1
    :try_end_5a
    .catchall {:try_start_44 .. :try_end_5a} :catchall_5e

    monitor-exit p0

    return-wide p1

    .line 65
    :cond_5c
    :goto_5c
    monitor-exit p0

    return-wide v1

    :catchall_5e
    move-exception p1

    monitor-exit p0

    goto :goto_62

    :goto_61
    throw p1

    :goto_62
    goto :goto_61
.end method

.method public final declared-synchronized zzei(J)V
    .registers 5

    monitor-enter p0

    .line 146
    :try_start_1
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zznh;->zzbfo:J

    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zznh;->zzbfo:J
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    .line 147
    monitor-exit p0

    return-void

    :catchall_b
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized zzg(Lcom/google/android/gms/internal/ads/zzhq;)Z
    .registers 5

    monitor-enter p0

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_9

    .line 84
    :try_start_5
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zznh;->zzbfq:Z
    :try_end_7
    .catchall {:try_start_5 .. :try_end_7} :catchall_19

    .line 85
    monitor-exit p0

    return v1

    .line 86
    :cond_9
    :try_start_9
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zznh;->zzbfq:Z

    .line 87
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zznh;->zzbfr:Lcom/google/android/gms/internal/ads/zzhq;

    invoke-static {p1, v2}, Lcom/google/android/gms/internal/ads/zzpo;->zza(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2
    :try_end_11
    .catchall {:try_start_9 .. :try_end_11} :catchall_19

    if-eqz v2, :cond_15

    .line 88
    monitor-exit p0

    return v1

    .line 89
    :cond_15
    :try_start_15
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zznh;->zzbfr:Lcom/google/android/gms/internal/ads/zzhq;
    :try_end_17
    .catchall {:try_start_15 .. :try_end_17} :catchall_19

    .line 90
    monitor-exit p0

    return v0

    :catchall_19
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized zzhu()J
    .registers 5

    monitor-enter p0

    .line 27
    :try_start_1
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zznh;->zzbfn:J

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zznh;->zzbfo:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    monitor-exit p0

    return-wide v0

    :catchall_b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final zzia()V
    .registers 2

    const/4 v0, 0x0

    .line 15
    iput v0, p0, Lcom/google/android/gms/internal/ads/zznh;->zzbfk:I

    .line 16
    iput v0, p0, Lcom/google/android/gms/internal/ads/zznh;->zzbfl:I

    .line 17
    iput v0, p0, Lcom/google/android/gms/internal/ads/zznh;->zzbfm:I

    .line 18
    iput v0, p0, Lcom/google/android/gms/internal/ads/zznh;->length:I

    const/4 v0, 0x1

    .line 19
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zznh;->zzbfp:Z

    return-void
.end method

.method public final zzib()V
    .registers 3

    const-wide/high16 v0, -0x8000000000000000L

    .line 21
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zznh;->zzbfn:J

    .line 22
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zznh;->zzbfo:J

    return-void
.end method

.method public final zzic()I
    .registers 3

    .line 24
    iget v0, p0, Lcom/google/android/gms/internal/ads/zznh;->zzbfk:I

    iget v1, p0, Lcom/google/android/gms/internal/ads/zznh;->length:I

    add-int/2addr v0, v1

    return v0
.end method

.method public final declared-synchronized zzid()Z
    .registers 2

    monitor-enter p0

    .line 25
    :try_start_1
    iget v0, p0, Lcom/google/android/gms/internal/ads/zznh;->length:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_a

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_6
    monitor-exit p0

    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_6

    :catchall_a
    move-exception v0

    monitor-exit p0

    goto :goto_e

    :goto_d
    throw v0

    :goto_e
    goto :goto_d
.end method

.method public final declared-synchronized zzie()Lcom/google/android/gms/internal/ads/zzhq;
    .registers 2

    monitor-enter p0

    .line 26
    :try_start_1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zznh;->zzbfq:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_c

    if-eqz v0, :cond_8

    const/4 v0, 0x0

    monitor-exit p0

    return-object v0

    :cond_8
    :try_start_8
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zznh;->zzbfr:Lcom/google/android/gms/internal/ads/zzhq;
    :try_end_a
    .catchall {:try_start_8 .. :try_end_a} :catchall_c

    monitor-exit p0

    return-object v0

    :catchall_c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized zzif()J
    .registers 5

    monitor-enter p0

    .line 57
    :try_start_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zznh;->zzid()Z

    move-result v0
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_35

    if-nez v0, :cond_b

    const-wide/16 v0, -0x1

    .line 58
    monitor-exit p0

    return-wide v0

    .line 59
    :cond_b
    :try_start_b
    iget v0, p0, Lcom/google/android/gms/internal/ads/zznh;->zzbfl:I

    iget v1, p0, Lcom/google/android/gms/internal/ads/zznh;->length:I

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    iget v1, p0, Lcom/google/android/gms/internal/ads/zznh;->zzbfg:I

    rem-int/2addr v0, v1

    .line 60
    iget v1, p0, Lcom/google/android/gms/internal/ads/zznh;->zzbfl:I

    iget v2, p0, Lcom/google/android/gms/internal/ads/zznh;->length:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/google/android/gms/internal/ads/zznh;->zzbfg:I

    rem-int/2addr v1, v2

    iput v1, p0, Lcom/google/android/gms/internal/ads/zznh;->zzbfl:I

    .line 61
    iget v1, p0, Lcom/google/android/gms/internal/ads/zznh;->zzbfk:I

    iget v2, p0, Lcom/google/android/gms/internal/ads/zznh;->length:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/google/android/gms/internal/ads/zznh;->zzbfk:I

    const/4 v1, 0x0

    .line 62
    iput v1, p0, Lcom/google/android/gms/internal/ads/zznh;->length:I

    .line 63
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zznh;->zzaon:[J

    aget-wide v2, v1, v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zznh;->zzaom:[I

    aget v0, v1, v0
    :try_end_31
    .catchall {:try_start_b .. :try_end_31} :catchall_35

    int-to-long v0, v0

    add-long/2addr v2, v0

    monitor-exit p0

    return-wide v2

    :catchall_35
    move-exception v0

    monitor-exit p0

    throw v0
.end method
