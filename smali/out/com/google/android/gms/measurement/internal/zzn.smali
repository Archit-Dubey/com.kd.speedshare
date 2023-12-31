.class public final Lcom/google/android/gms/measurement/internal/zzn;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;
.source "com.google.android.gms:play-services-measurement-impl@@17.4.4"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/measurement/internal/zzn;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final zza:Ljava/lang/String;

.field public final zzb:Ljava/lang/String;

.field public final zzc:Ljava/lang/String;

.field public final zzd:Ljava/lang/String;

.field public final zze:J

.field public final zzf:J

.field public final zzg:Ljava/lang/String;

.field public final zzh:Z

.field public final zzi:Z

.field public final zzj:J

.field public final zzk:Ljava/lang/String;

.field public final zzl:J

.field public final zzm:J

.field public final zzn:I

.field public final zzo:Z

.field public final zzp:Z

.field public final zzq:Z

.field public final zzr:Ljava/lang/String;

.field public final zzs:Ljava/lang/Boolean;

.field public final zzt:J

.field public final zzu:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final zzv:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 76
    new-instance v0, Lcom/google/android/gms/measurement/internal/zzm;

    invoke-direct {v0}, Lcom/google/android/gms/measurement/internal/zzm;-><init>()V

    sput-object v0, Lcom/google/android/gms/measurement/internal/zzn;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;JJLjava/lang/String;ZZLjava/lang/String;JJIZZZLjava/lang/String;Ljava/lang/Boolean;JLjava/util/List;Ljava/lang/String;)V
    .registers 32
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "J",
            "Ljava/lang/String;",
            "JJ",
            "Ljava/lang/String;",
            "ZZ",
            "Ljava/lang/String;",
            "JJIZZZ",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            "J",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    move-object v0, p0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    .line 2
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-object v1, p1

    .line 3
    iput-object v1, v0, Lcom/google/android/gms/measurement/internal/zzn;->zza:Ljava/lang/String;

    .line 4
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_12

    const/4 v1, 0x0

    goto :goto_13

    :cond_12
    move-object v1, p2

    :goto_13
    iput-object v1, v0, Lcom/google/android/gms/measurement/internal/zzn;->zzb:Ljava/lang/String;

    move-object v1, p3

    .line 5
    iput-object v1, v0, Lcom/google/android/gms/measurement/internal/zzn;->zzc:Ljava/lang/String;

    move-wide v1, p4

    .line 6
    iput-wide v1, v0, Lcom/google/android/gms/measurement/internal/zzn;->zzj:J

    move-object v1, p6

    .line 7
    iput-object v1, v0, Lcom/google/android/gms/measurement/internal/zzn;->zzd:Ljava/lang/String;

    move-wide v1, p7

    .line 8
    iput-wide v1, v0, Lcom/google/android/gms/measurement/internal/zzn;->zze:J

    move-wide v1, p9

    .line 9
    iput-wide v1, v0, Lcom/google/android/gms/measurement/internal/zzn;->zzf:J

    move-object v1, p11

    .line 10
    iput-object v1, v0, Lcom/google/android/gms/measurement/internal/zzn;->zzg:Ljava/lang/String;

    move v1, p12

    .line 11
    iput-boolean v1, v0, Lcom/google/android/gms/measurement/internal/zzn;->zzh:Z

    move/from16 v1, p13

    .line 12
    iput-boolean v1, v0, Lcom/google/android/gms/measurement/internal/zzn;->zzi:Z

    move-object/from16 v1, p14

    .line 13
    iput-object v1, v0, Lcom/google/android/gms/measurement/internal/zzn;->zzk:Ljava/lang/String;

    move-wide/from16 v1, p15

    .line 14
    iput-wide v1, v0, Lcom/google/android/gms/measurement/internal/zzn;->zzl:J

    move-wide/from16 v1, p17

    .line 15
    iput-wide v1, v0, Lcom/google/android/gms/measurement/internal/zzn;->zzm:J

    move/from16 v1, p19

    .line 16
    iput v1, v0, Lcom/google/android/gms/measurement/internal/zzn;->zzn:I

    move/from16 v1, p20

    .line 17
    iput-boolean v1, v0, Lcom/google/android/gms/measurement/internal/zzn;->zzo:Z

    move/from16 v1, p21

    .line 18
    iput-boolean v1, v0, Lcom/google/android/gms/measurement/internal/zzn;->zzp:Z

    move/from16 v1, p22

    .line 19
    iput-boolean v1, v0, Lcom/google/android/gms/measurement/internal/zzn;->zzq:Z

    move-object/from16 v1, p23

    .line 20
    iput-object v1, v0, Lcom/google/android/gms/measurement/internal/zzn;->zzr:Ljava/lang/String;

    move-object/from16 v1, p24

    .line 21
    iput-object v1, v0, Lcom/google/android/gms/measurement/internal/zzn;->zzs:Ljava/lang/Boolean;

    move-wide/from16 v1, p25

    .line 22
    iput-wide v1, v0, Lcom/google/android/gms/measurement/internal/zzn;->zzt:J

    move-object/from16 v1, p27

    .line 23
    iput-object v1, v0, Lcom/google/android/gms/measurement/internal/zzn;->zzu:Ljava/util/List;

    move-object/from16 v1, p28

    .line 24
    iput-object v1, v0, Lcom/google/android/gms/measurement/internal/zzn;->zzv:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJLjava/lang/String;ZZJLjava/lang/String;JJIZZZLjava/lang/String;Ljava/lang/Boolean;JLjava/util/List;Ljava/lang/String;)V
    .registers 32
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "JJ",
            "Ljava/lang/String;",
            "ZZJ",
            "Ljava/lang/String;",
            "JJIZZZ",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            "J",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    move-object v0, p0

    .line 26
    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    move-object v1, p1

    .line 27
    iput-object v1, v0, Lcom/google/android/gms/measurement/internal/zzn;->zza:Ljava/lang/String;

    move-object v1, p2

    .line 28
    iput-object v1, v0, Lcom/google/android/gms/measurement/internal/zzn;->zzb:Ljava/lang/String;

    move-object v1, p3

    .line 29
    iput-object v1, v0, Lcom/google/android/gms/measurement/internal/zzn;->zzc:Ljava/lang/String;

    move-wide v1, p12

    .line 30
    iput-wide v1, v0, Lcom/google/android/gms/measurement/internal/zzn;->zzj:J

    move-object v1, p4

    .line 31
    iput-object v1, v0, Lcom/google/android/gms/measurement/internal/zzn;->zzd:Ljava/lang/String;

    move-wide v1, p5

    .line 32
    iput-wide v1, v0, Lcom/google/android/gms/measurement/internal/zzn;->zze:J

    move-wide v1, p7

    .line 33
    iput-wide v1, v0, Lcom/google/android/gms/measurement/internal/zzn;->zzf:J

    move-object v1, p9

    .line 34
    iput-object v1, v0, Lcom/google/android/gms/measurement/internal/zzn;->zzg:Ljava/lang/String;

    move v1, p10

    .line 35
    iput-boolean v1, v0, Lcom/google/android/gms/measurement/internal/zzn;->zzh:Z

    move v1, p11

    .line 36
    iput-boolean v1, v0, Lcom/google/android/gms/measurement/internal/zzn;->zzi:Z

    move-object/from16 v1, p14

    .line 37
    iput-object v1, v0, Lcom/google/android/gms/measurement/internal/zzn;->zzk:Ljava/lang/String;

    move-wide/from16 v1, p15

    .line 38
    iput-wide v1, v0, Lcom/google/android/gms/measurement/internal/zzn;->zzl:J

    move-wide/from16 v1, p17

    .line 39
    iput-wide v1, v0, Lcom/google/android/gms/measurement/internal/zzn;->zzm:J

    move/from16 v1, p19

    .line 40
    iput v1, v0, Lcom/google/android/gms/measurement/internal/zzn;->zzn:I

    move/from16 v1, p20

    .line 41
    iput-boolean v1, v0, Lcom/google/android/gms/measurement/internal/zzn;->zzo:Z

    move/from16 v1, p21

    .line 42
    iput-boolean v1, v0, Lcom/google/android/gms/measurement/internal/zzn;->zzp:Z

    move/from16 v1, p22

    .line 43
    iput-boolean v1, v0, Lcom/google/android/gms/measurement/internal/zzn;->zzq:Z

    move-object/from16 v1, p23

    .line 44
    iput-object v1, v0, Lcom/google/android/gms/measurement/internal/zzn;->zzr:Ljava/lang/String;

    move-object/from16 v1, p24

    .line 45
    iput-object v1, v0, Lcom/google/android/gms/measurement/internal/zzn;->zzs:Ljava/lang/Boolean;

    move-wide/from16 v1, p25

    .line 46
    iput-wide v1, v0, Lcom/google/android/gms/measurement/internal/zzn;->zzt:J

    move-object/from16 v1, p27

    .line 47
    iput-object v1, v0, Lcom/google/android/gms/measurement/internal/zzn;->zzu:Ljava/util/List;

    move-object/from16 v1, p28

    .line 48
    iput-object v1, v0, Lcom/google/android/gms/measurement/internal/zzn;->zzv:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final writeToParcel(Landroid/os/Parcel;I)V
    .registers 7

    .line 51
    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->beginObjectHeader(Landroid/os/Parcel;)I

    move-result p2

    .line 52
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzn;->zza:Ljava/lang/String;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-static {p1, v1, v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeString(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 53
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzn;->zzb:Ljava/lang/String;

    const/4 v1, 0x3

    invoke-static {p1, v1, v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeString(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 54
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzn;->zzc:Ljava/lang/String;

    const/4 v1, 0x4

    invoke-static {p1, v1, v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeString(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 55
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzn;->zzd:Ljava/lang/String;

    const/4 v1, 0x5

    invoke-static {p1, v1, v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeString(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 56
    iget-wide v0, p0, Lcom/google/android/gms/measurement/internal/zzn;->zze:J

    const/4 v3, 0x6

    invoke-static {p1, v3, v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeLong(Landroid/os/Parcel;IJ)V

    .line 57
    iget-wide v0, p0, Lcom/google/android/gms/measurement/internal/zzn;->zzf:J

    const/4 v3, 0x7

    invoke-static {p1, v3, v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeLong(Landroid/os/Parcel;IJ)V

    .line 58
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzn;->zzg:Ljava/lang/String;

    const/16 v1, 0x8

    invoke-static {p1, v1, v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeString(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 59
    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzn;->zzh:Z

    const/16 v1, 0x9

    invoke-static {p1, v1, v0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeBoolean(Landroid/os/Parcel;IZ)V

    .line 60
    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzn;->zzi:Z

    const/16 v1, 0xa

    invoke-static {p1, v1, v0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeBoolean(Landroid/os/Parcel;IZ)V

    .line 61
    iget-wide v0, p0, Lcom/google/android/gms/measurement/internal/zzn;->zzj:J

    const/16 v3, 0xb

    invoke-static {p1, v3, v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeLong(Landroid/os/Parcel;IJ)V

    .line 62
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzn;->zzk:Ljava/lang/String;

    const/16 v1, 0xc

    invoke-static {p1, v1, v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeString(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 63
    iget-wide v0, p0, Lcom/google/android/gms/measurement/internal/zzn;->zzl:J

    const/16 v3, 0xd

    invoke-static {p1, v3, v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeLong(Landroid/os/Parcel;IJ)V

    .line 64
    iget-wide v0, p0, Lcom/google/android/gms/measurement/internal/zzn;->zzm:J

    const/16 v3, 0xe

    invoke-static {p1, v3, v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeLong(Landroid/os/Parcel;IJ)V

    .line 65
    iget v0, p0, Lcom/google/android/gms/measurement/internal/zzn;->zzn:I

    const/16 v1, 0xf

    invoke-static {p1, v1, v0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeInt(Landroid/os/Parcel;II)V

    .line 66
    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzn;->zzo:Z

    const/16 v1, 0x10

    invoke-static {p1, v1, v0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeBoolean(Landroid/os/Parcel;IZ)V

    .line 67
    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzn;->zzp:Z

    const/16 v1, 0x11

    invoke-static {p1, v1, v0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeBoolean(Landroid/os/Parcel;IZ)V

    .line 68
    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzn;->zzq:Z

    const/16 v1, 0x12

    invoke-static {p1, v1, v0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeBoolean(Landroid/os/Parcel;IZ)V

    .line 69
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzn;->zzr:Ljava/lang/String;

    const/16 v1, 0x13

    invoke-static {p1, v1, v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeString(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 70
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzn;->zzs:Ljava/lang/Boolean;

    const/16 v1, 0x15

    invoke-static {p1, v1, v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeBooleanObject(Landroid/os/Parcel;ILjava/lang/Boolean;Z)V

    .line 71
    iget-wide v0, p0, Lcom/google/android/gms/measurement/internal/zzn;->zzt:J

    const/16 v3, 0x16

    invoke-static {p1, v3, v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeLong(Landroid/os/Parcel;IJ)V

    .line 72
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzn;->zzu:Ljava/util/List;

    const/16 v1, 0x17

    invoke-static {p1, v1, v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeStringList(Landroid/os/Parcel;ILjava/util/List;Z)V

    .line 73
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzn;->zzv:Ljava/lang/String;

    const/16 v1, 0x18

    invoke-static {p1, v1, v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeString(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 74
    invoke-static {p1, p2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->finishObjectHeader(Landroid/os/Parcel;I)V

    return-void
.end method
