.class public final Lcom/google/android/gms/internal/ads/zzdcd;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.2.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdec;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzdec<",
        "Lcom/google/android/gms/internal/ads/zzdce;",
        ">;"
    }
.end annotation


# instance fields
.field private final zzdpk:Landroid/content/pm/PackageInfo;

.field private final zzdyn:Lcom/google/android/gms/internal/ads/zzaxx;

.field private final zzfpv:Lcom/google/android/gms/internal/ads/zzdla;

.field private final zzgad:Lcom/google/android/gms/internal/ads/zzdvi;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzdvi;Lcom/google/android/gms/internal/ads/zzdla;Landroid/content/pm/PackageInfo;Lcom/google/android/gms/internal/ads/zzaxx;)V
    .registers 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdcd;->zzgad:Lcom/google/android/gms/internal/ads/zzdvi;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdcd;->zzfpv:Lcom/google/android/gms/internal/ads/zzdla;

    .line 4
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzdcd;->zzdpk:Landroid/content/pm/PackageInfo;

    .line 5
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzdcd;->zzdyn:Lcom/google/android/gms/internal/ads/zzaxx;

    return-void
.end method


# virtual methods
.method final synthetic zza(Ljava/util/ArrayList;Landroid/os/Bundle;)V
    .registers 11

    const-string v0, "native_version"

    const/4 v1, 0x3

    .line 8
    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "native_templates"

    .line 9
    invoke-virtual {p2, v0, p1}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 10
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzdcd;->zzfpv:Lcom/google/android/gms/internal/ads/zzdla;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzdla;->zzhbb:Ljava/util/ArrayList;

    const-string v0, "native_custom_templates"

    invoke-virtual {p2, v0, p1}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 11
    sget-object p1, Lcom/google/android/gms/internal/ads/zzaav;->zzcrj:Lcom/google/android/gms/internal/ads/zzaag;

    .line 12
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwg;->zzpw()Lcom/google/android/gms/internal/ads/zzaar;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzaar;->zzd(Lcom/google/android/gms/internal/ads/zzaag;)Ljava/lang/Object;

    move-result-object p1

    .line 13
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    const-string v0, "landscape"

    const-string v2, "portrait"

    const-string v3, "any"

    const-string v4, "unknown"

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-eqz p1, :cond_61

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzdcd;->zzfpv:Lcom/google/android/gms/internal/ads/zzdla;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzdla;->zzdkn:Lcom/google/android/gms/internal/ads/zzadj;

    iget p1, p1, Lcom/google/android/gms/internal/ads/zzadj;->versionCode:I

    if-le p1, v1, :cond_61

    const-string p1, "enable_native_media_orientation"

    .line 14
    invoke-virtual {p2, p1, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 15
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzdcd;->zzfpv:Lcom/google/android/gms/internal/ads/zzdla;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzdla;->zzdkn:Lcom/google/android/gms/internal/ads/zzadj;

    .line 16
    iget p1, p1, Lcom/google/android/gms/internal/ads/zzadj;->zzbnh:I

    if-eq p1, v6, :cond_55

    if-eq p1, v5, :cond_53

    if-eq p1, v1, :cond_51

    const/4 v7, 0x4

    if-eq p1, v7, :cond_4e

    move-object p1, v4

    goto :goto_56

    :cond_4e
    const-string p1, "square"

    goto :goto_56

    :cond_51
    move-object p1, v2

    goto :goto_56

    :cond_53
    move-object p1, v0

    goto :goto_56

    :cond_55
    move-object p1, v3

    .line 23
    :goto_56
    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_61

    const-string v7, "native_media_orientation"

    .line 24
    invoke-virtual {p2, v7, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    :cond_61
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzdcd;->zzfpv:Lcom/google/android/gms/internal/ads/zzdla;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzdla;->zzdkn:Lcom/google/android/gms/internal/ads/zzadj;

    .line 26
    iget p1, p1, Lcom/google/android/gms/internal/ads/zzadj;->zzbng:I

    if-eqz p1, :cond_71

    if-eq p1, v6, :cond_6f

    if-eq p1, v5, :cond_72

    move-object v0, v4

    goto :goto_72

    :cond_6f
    move-object v0, v2

    goto :goto_72

    :cond_71
    move-object v0, v3

    .line 32
    :cond_72
    :goto_72
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7d

    const-string p1, "native_image_orientation"

    .line 33
    invoke-virtual {p2, p1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    :cond_7d
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzdcd;->zzfpv:Lcom/google/android/gms/internal/ads/zzdla;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzdla;->zzdkn:Lcom/google/android/gms/internal/ads/zzadj;

    iget-boolean p1, p1, Lcom/google/android/gms/internal/ads/zzadj;->zzbni:Z

    const-string v0, "native_multiple_images"

    invoke-virtual {p2, v0, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 35
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzdcd;->zzfpv:Lcom/google/android/gms/internal/ads/zzdla;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzdla;->zzdkn:Lcom/google/android/gms/internal/ads/zzadj;

    iget-boolean p1, p1, Lcom/google/android/gms/internal/ads/zzadj;->zzbnl:Z

    const-string v0, "use_custom_mute"

    invoke-virtual {p2, v0, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 37
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzdcd;->zzdpk:Landroid/content/pm/PackageInfo;

    if-nez p1, :cond_99

    const/4 p1, 0x0

    goto :goto_9b

    .line 38
    :cond_99
    iget p1, p1, Landroid/content/pm/PackageInfo;->versionCode:I

    .line 40
    :goto_9b
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdcd;->zzdyn:Lcom/google/android/gms/internal/ads/zzaxx;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzaxx;->zzwy()I

    move-result v0

    if-le p1, v0, :cond_ad

    .line 41
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdcd;->zzdyn:Lcom/google/android/gms/internal/ads/zzaxx;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzaxx;->zzxe()V

    .line 42
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdcd;->zzdyn:Lcom/google/android/gms/internal/ads/zzaxx;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzaxx;->zzdd(I)V

    .line 43
    :cond_ad
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzdcd;->zzdyn:Lcom/google/android/gms/internal/ads/zzaxx;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzaxx;->zzxd()Lorg/json/JSONObject;

    move-result-object p1

    if-eqz p1, :cond_c4

    .line 45
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdcd;->zzfpv:Lcom/google/android/gms/internal/ads/zzdla;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzdla;->zzhaz:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    if-eqz p1, :cond_c4

    .line 47
    invoke-virtual {p1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_c5

    :cond_c4
    const/4 p1, 0x0

    .line 50
    :goto_c5
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_d0

    const-string v0, "native_advanced_settings"

    .line 51
    invoke-virtual {p2, v0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    :cond_d0
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzdcd;->zzfpv:Lcom/google/android/gms/internal/ads/zzdla;

    iget p1, p1, Lcom/google/android/gms/internal/ads/zzdla;->zzgqe:I

    if-le p1, v6, :cond_df

    .line 53
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzdcd;->zzfpv:Lcom/google/android/gms/internal/ads/zzdla;

    iget p1, p1, Lcom/google/android/gms/internal/ads/zzdla;->zzgqe:I

    const-string v0, "max_num_ads"

    invoke-virtual {p2, v0, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 54
    :cond_df
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzdcd;->zzfpv:Lcom/google/android/gms/internal/ads/zzdla;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzdla;->zzdra:Lcom/google/android/gms/internal/ads/zzaio;

    if-eqz p1, :cond_132

    .line 56
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzaio;->zzdey:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_126

    .line 58
    iget v0, p1, Lcom/google/android/gms/internal/ads/zzaio;->versionCode:I

    const-string v2, "p"

    const-string v3, "l"

    if-lt v0, v5, :cond_fc

    .line 60
    iget p1, p1, Lcom/google/android/gms/internal/ads/zzaio;->zzbnh:I

    if-eq p1, v5, :cond_11f

    if-eq p1, v1, :cond_120

    goto :goto_11f

    .line 66
    :cond_fc
    iget v0, p1, Lcom/google/android/gms/internal/ads/zzaio;->zzdex:I

    if-eq v0, v6, :cond_11f

    if-eq v0, v5, :cond_120

    .line 69
    iget p1, p1, Lcom/google/android/gms/internal/ads/zzaio;->zzdex:I

    const/16 v0, 0x34

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "Instream ad video aspect ratio "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " is wrong."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzbba;->zzfb(Ljava/lang/String;)V

    :cond_11f
    :goto_11f
    move-object v2, v3

    :cond_120
    const-string p1, "ia_var"

    .line 71
    invoke-virtual {p2, p1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_12d

    .line 72
    :cond_126
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzaio;->zzdey:Ljava/lang/String;

    const-string v0, "ad_tag"

    invoke-virtual {p2, v0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :goto_12d
    const-string p1, "instr"

    .line 73
    invoke-virtual {p2, p1, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 74
    :cond_132
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzdcd;->zzfpv:Lcom/google/android/gms/internal/ads/zzdla;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzdla;->zzasj()Lcom/google/android/gms/internal/ads/zzafn;

    move-result-object p1

    if-eqz p1, :cond_13f

    const-string p1, "has_delayed_banner_listener"

    .line 75
    invoke-virtual {p2, p1, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_13f
    return-void
.end method

.method public final zzaqm()Lcom/google/android/gms/internal/ads/zzdvf;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/ads/zzdvf<",
            "Lcom/google/android/gms/internal/ads/zzdce;",
            ">;"
        }
    .end annotation

    .line 7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdcd;->zzgad:Lcom/google/android/gms/internal/ads/zzdvi;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzdcg;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/zzdcg;-><init>(Lcom/google/android/gms/internal/ads/zzdcd;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzdvi;->zze(Ljava/util/concurrent/Callable;)Lcom/google/android/gms/internal/ads/zzdvf;

    move-result-object v0

    return-object v0
.end method

.method final synthetic zzaqu()Lcom/google/android/gms/internal/ads/zzdce;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 78
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdcd;->zzfpv:Lcom/google/android/gms/internal/ads/zzdla;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzdla;->zzhba:Ljava/util/ArrayList;

    if-nez v0, :cond_9

    .line 80
    sget-object v0, Lcom/google/android/gms/internal/ads/zzdcf;->zzgtf:Lcom/google/android/gms/internal/ads/zzdce;

    return-object v0

    .line 81
    :cond_9
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_12

    .line 82
    sget-object v0, Lcom/google/android/gms/internal/ads/zzdci;->zzgtf:Lcom/google/android/gms/internal/ads/zzdce;

    return-object v0

    .line 83
    :cond_12
    new-instance v1, Lcom/google/android/gms/internal/ads/zzdch;

    invoke-direct {v1, p0, v0}, Lcom/google/android/gms/internal/ads/zzdch;-><init>(Lcom/google/android/gms/internal/ads/zzdcd;Ljava/util/ArrayList;)V

    return-object v1
.end method
