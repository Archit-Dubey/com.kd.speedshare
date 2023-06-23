.class public Lcom/genonbeta/android/framework/preference/SuperPreferences;
.super Ljava/lang/Object;
.source "SuperPreferences.java"

# interfaces
.implements Landroid/content/SharedPreferences;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/genonbeta/android/framework/preference/SuperPreferences$OnPreferenceUpdateListener;,
        Lcom/genonbeta/android/framework/preference/SuperPreferences$SuperEditor;
    }
.end annotation


# static fields
.field public static final KEY_SYNC_TIME:Ljava/lang/String; = "__SYNC_TIME"


# instance fields
.field private mUpdateListener:Lcom/genonbeta/android/framework/preference/SuperPreferences$OnPreferenceUpdateListener;

.field private mWeakManager:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>(Landroid/content/SharedPreferences;)V
    .registers 2

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/genonbeta/android/framework/preference/SuperPreferences;->mWeakManager:Landroid/content/SharedPreferences;

    return-void
.end method

.method static synthetic access$000(Lcom/genonbeta/android/framework/preference/SuperPreferences;)Lcom/genonbeta/android/framework/preference/SuperPreferences$OnPreferenceUpdateListener;
    .registers 1

    .line 13
    iget-object p0, p0, Lcom/genonbeta/android/framework/preference/SuperPreferences;->mUpdateListener:Lcom/genonbeta/android/framework/preference/SuperPreferences$OnPreferenceUpdateListener;

    return-object p0
.end method


# virtual methods
.method public contains(Ljava/lang/String;)Z
    .registers 3

    .line 78
    iget-object v0, p0, Lcom/genonbeta/android/framework/preference/SuperPreferences;->mWeakManager:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public edit()Landroid/content/SharedPreferences$Editor;
    .registers 3

    .line 84
    new-instance v0, Lcom/genonbeta/android/framework/preference/SuperPreferences$SuperEditor;

    iget-object v1, p0, Lcom/genonbeta/android/framework/preference/SuperPreferences;->mWeakManager:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/genonbeta/android/framework/preference/SuperPreferences$SuperEditor;-><init>(Lcom/genonbeta/android/framework/preference/SuperPreferences;Landroid/content/SharedPreferences$Editor;)V

    return-object v0
.end method

.method public getAll()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;"
        }
    .end annotation

    .line 34
    iget-object v0, p0, Lcom/genonbeta/android/framework/preference/SuperPreferences;->mWeakManager:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getBoolean(Ljava/lang/String;Z)Z
    .registers 4

    .line 72
    iget-object v0, p0, Lcom/genonbeta/android/framework/preference/SuperPreferences;->mWeakManager:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    return p1
.end method

.method public getFloat(Ljava/lang/String;F)F
    .registers 4

    .line 66
    iget-object v0, p0, Lcom/genonbeta/android/framework/preference/SuperPreferences;->mWeakManager:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result p1

    return p1
.end method

.method public getInt(Ljava/lang/String;I)I
    .registers 4

    .line 54
    iget-object v0, p0, Lcom/genonbeta/android/framework/preference/SuperPreferences;->mWeakManager:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p1

    return p1
.end method

.method public getLong(Ljava/lang/String;J)J
    .registers 5

    .line 60
    iget-object v0, p0, Lcom/genonbeta/android/framework/preference/SuperPreferences;->mWeakManager:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, p2, p3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide p1

    return-wide p1
.end method

.method public getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 41
    iget-object v0, p0, Lcom/genonbeta/android/framework/preference/SuperPreferences;->mWeakManager:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 48
    iget-object v0, p0, Lcom/genonbeta/android/framework/preference/SuperPreferences;->mWeakManager:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method

.method public getWeakManager()Landroid/content/SharedPreferences;
    .registers 2

    .line 28
    iget-object v0, p0, Lcom/genonbeta/android/framework/preference/SuperPreferences;->mWeakManager:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method public registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V
    .registers 3

    .line 90
    iget-object v0, p0, Lcom/genonbeta/android/framework/preference/SuperPreferences;->mWeakManager:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    return-void
.end method

.method public setOnPreferenceUpdateListener(Lcom/genonbeta/android/framework/preference/SuperPreferences$OnPreferenceUpdateListener;)V
    .registers 2

    .line 101
    iput-object p1, p0, Lcom/genonbeta/android/framework/preference/SuperPreferences;->mUpdateListener:Lcom/genonbeta/android/framework/preference/SuperPreferences$OnPreferenceUpdateListener;

    return-void
.end method

.method public unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V
    .registers 3

    .line 96
    iget-object v0, p0, Lcom/genonbeta/android/framework/preference/SuperPreferences;->mWeakManager:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    return-void
.end method
