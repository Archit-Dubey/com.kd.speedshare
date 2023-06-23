.class final Lcom/genonbeta/android/framework/util/PreferenceUtils$1;
.super Ljava/lang/Object;
.source "PreferenceUtils.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/genonbeta/android/framework/util/PreferenceUtils;->sync([Landroid/content/SharedPreferences;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Landroid/content/SharedPreferences;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Landroid/content/SharedPreferences;Landroid/content/SharedPreferences;)I
    .registers 8

    .line 58
    invoke-interface {p1}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    int-to-long v0, v0

    const-string v2, "__SYNC_TIME"

    invoke-interface {p1, v2, v0, v1}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 59
    invoke-interface {p2}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result p1

    int-to-long v3, p1

    invoke-interface {p2, v2, v3, v4}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide p1

    .line 62
    invoke-static {p1, p2, v0, v1}, Lcom/genonbeta/android/framework/util/MathUtils;->compare(JJ)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3

    .line 54
    check-cast p1, Landroid/content/SharedPreferences;

    check-cast p2, Landroid/content/SharedPreferences;

    invoke-virtual {p0, p1, p2}, Lcom/genonbeta/android/framework/util/PreferenceUtils$1;->compare(Landroid/content/SharedPreferences;Landroid/content/SharedPreferences;)I

    move-result p1

    return p1
.end method
