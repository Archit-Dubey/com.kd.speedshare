.class public final Lcom/google/android/gms/internal/ads/zzyz;
.super Landroid/content/ContentProvider;
.source "com.google.android.gms:play-services-ads-lite@@19.2.0"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    return-void
.end method

.method private static zzh(Landroid/content/Context;)Landroid/os/Bundle;
    .registers 3

    .line 37
    :try_start_0
    invoke-static {p0}, Lcom/google/android/gms/common/wrappers/Wrappers;->packageManager(Landroid/content/Context;)Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;

    move-result-object v0

    .line 38
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const/16 v1, 0x80

    invoke-virtual {v0, p0, v1}, Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    .line 39
    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;
    :try_end_10
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_10} :catch_18
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_10} :catch_11

    return-object p0

    :catch_11
    move-exception p0

    const-string v0, "Failed to load metadata: Package name not found."

    .line 44
    invoke-static {v0, p0}, Lcom/google/android/gms/internal/ads/zzbba;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1e

    :catch_18
    move-exception p0

    const-string v0, "Failed to load metadata: Null pointer exception."

    .line 41
    invoke-static {v0, p0}, Lcom/google/android/gms/internal/ads/zzbba;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1e
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public final attachInfo(Landroid/content/Context;Landroid/content/pm/ProviderInfo;)V
    .registers 9

    .line 2
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzyz;->zzh(Landroid/content/Context;)Landroid/os/Bundle;

    move-result-object v0

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzamj;->zzti()Lcom/google/android/gms/internal/ads/zzamj;

    move-result-object v1

    if-nez v0, :cond_11

    const-string v0, "Metadata was null."

    .line 4
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzbba;->zzfb(Ljava/lang/String;)V

    goto/16 :goto_a4

    :cond_11
    :try_start_11
    const-string v2, "com.google.android.gms.ads.APPLICATION_ID"

    .line 6
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;
    :try_end_19
    .catch Ljava/lang/ClassCastException; {:try_start_11 .. :try_end_19} :catch_cb

    :try_start_19
    const-string v3, "com.google.android.gms.ads.AD_MANAGER_APP"

    .line 10
    invoke-virtual {v0, v3}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;
    :try_end_21
    .catch Ljava/lang/ClassCastException; {:try_start_19 .. :try_end_21} :catch_c2

    :try_start_21
    const-string v4, "com.google.android.gms.ads.DELAY_APP_MEASUREMENT_INIT"

    .line 14
    invoke-virtual {v0, v4}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;
    :try_end_29
    .catch Ljava/lang/ClassCastException; {:try_start_21 .. :try_end_29} :catch_b9

    :try_start_29
    const-string v5, "com.google.android.gms.ads.INTEGRATION_MANAGER"

    .line 18
    invoke-virtual {v0, v5}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_31
    .catch Ljava/lang/ClassCastException; {:try_start_29 .. :try_end_31} :catch_b0

    if-eqz v2, :cond_71

    const-string v5, "^/\\d+~.+$"

    .line 22
    invoke-virtual {v2, v5}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_71

    const-string v0, "^ca-app-pub-[0-9]{16}~[0-9]{10}$"

    .line 23
    invoke-virtual {v2, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_69

    const-string v0, "Publisher provided Google AdMob App ID in manifest: "

    .line 25
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_54

    invoke-virtual {v0, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_5a

    :cond_54
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v0, v3

    :goto_5a
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzbba;->zzee(Ljava/lang/String;)V

    if-eqz v4, :cond_65

    .line 26
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_a4

    .line 27
    :cond_65
    invoke-virtual {v1, p1, v2}, Lcom/google/android/gms/internal/ads/zzamj;->zzd(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Thread;

    goto :goto_a4

    .line 24
    :cond_69
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "\n\n******************************************************************************\n* Invalid application ID. Follow instructions here:                          *\n* https://googlemobileadssdk.page.link/admob-android-update-manifest         *\n* to find your app ID.                                                       *\n******************************************************************************\n\n"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_71
    if-eqz v3, :cond_85

    .line 28
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_85

    if-eqz v4, :cond_81

    .line 29
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_a4

    .line 30
    :cond_81
    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/ads/zzamj;->zzm(Landroid/content/Context;)Ljava/lang/Thread;

    goto :goto_a4

    .line 31
    :cond_85
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_a8

    const-string v1, "The Google Mobile Ads SDK is integrated by "

    .line 32
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_9c

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_a1

    :cond_9c
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_a1
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzbba;->zzee(Ljava/lang/String;)V

    .line 34
    :cond_a4
    :goto_a4
    invoke-super {p0, p1, p2}, Landroid/content/ContentProvider;->attachInfo(Landroid/content/Context;Landroid/content/pm/ProviderInfo;)V

    return-void

    .line 33
    :cond_a8
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "\n\n******************************************************************************\n* The Google Mobile Ads SDK was initialized incorrectly. AdMob publishers    *\n* should follow the instructions here:                                       *\n* https://googlemobileadssdk.page.link/admob-android-update-manifest         *\n* to add a valid App ID inside the AndroidManifest.                          *\n* Google Ad Manager publishers should follow instructions here:              *\n* https://googlemobileadssdk.page.link/ad-manager-android-update-manifest.   *\n******************************************************************************\n\n"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :catch_b0
    move-exception p1

    .line 21
    new-instance p2, Ljava/lang/IllegalStateException;

    const-string v0, "The com.google.android.gms.ads.INTEGRATION_MANAGER metadata must have a String value."

    invoke-direct {p2, v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :catch_b9
    move-exception p1

    .line 17
    new-instance p2, Ljava/lang/IllegalStateException;

    const-string v0, "The com.google.android.gms.ads.DELAY_APP_MEASUREMENT_INIT metadata must have a boolean value."

    invoke-direct {p2, v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :catch_c2
    move-exception p1

    .line 13
    new-instance p2, Ljava/lang/IllegalStateException;

    const-string v0, "The com.google.android.gms.ads.AD_MANAGER_APP metadata must have a boolean value."

    invoke-direct {p2, v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :catch_cb
    move-exception p1

    .line 9
    new-instance p2, Ljava/lang/IllegalStateException;

    const-string v0, "The com.google.android.gms.ads.APPLICATION_ID metadata must have a String value."

    invoke-direct {p2, v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method public final delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 4

    const/4 p1, 0x0

    return p1
.end method

.method public final getType(Landroid/net/Uri;)Ljava/lang/String;
    .registers 2

    const/4 p1, 0x0

    return-object p1
.end method

.method public final insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .registers 3

    const/4 p1, 0x0

    return-object p1
.end method

.method public final onCreate()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public final query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .registers 6

    const/4 p1, 0x0

    return-object p1
.end method

.method public final update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 5

    const/4 p1, 0x0

    return p1
.end method
