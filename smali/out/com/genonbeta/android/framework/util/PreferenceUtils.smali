.class public Lcom/genonbeta/android/framework/util/PreferenceUtils;
.super Ljava/lang/Object;
.source "PreferenceUtils.java"


# static fields
.field public static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 22
    const-class v0, Lcom/genonbeta/android/framework/util/PreferenceUtils;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/genonbeta/android/framework/util/PreferenceUtils;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static applyGeneric(Ljava/lang/String;Ljava/lang/Object;Landroid/content/SharedPreferences$Editor;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "TT;",
            "Landroid/content/SharedPreferences$Editor;",
            ")Z"
        }
    .end annotation

    .line 26
    sget-object v0, Lcom/genonbeta/android/framework/util/PreferenceUtils;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Put setting: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " => "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    instance-of v0, p1, Ljava/lang/Boolean;

    if-eqz v0, :cond_30

    .line 29
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-interface {p2, p0, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    goto :goto_6d

    .line 30
    :cond_30
    instance-of v0, p1, Ljava/lang/Float;

    if-eqz v0, :cond_3e

    .line 31
    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-interface {p2, p0, p1}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    goto :goto_6d

    .line 32
    :cond_3e
    instance-of v0, p1, Ljava/lang/Integer;

    if-eqz v0, :cond_4c

    .line 33
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-interface {p2, p0, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    goto :goto_6d

    .line 34
    :cond_4c
    instance-of v0, p1, Ljava/lang/Long;

    if-eqz v0, :cond_5a

    .line 35
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-interface {p2, p0, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    goto :goto_6d

    .line 36
    :cond_5a
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_64

    .line 37
    check-cast p1, Ljava/lang/String;

    invoke-interface {p2, p0, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_6d

    .line 38
    :cond_64
    instance-of v0, p1, Ljava/util/Set;

    if-eqz v0, :cond_6f

    .line 39
    check-cast p1, Ljava/util/Set;

    invoke-interface {p2, p0, p1}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    :goto_6d
    const/4 p0, 0x1

    return p0

    :cond_6f
    const/4 p0, 0x0

    return p0
.end method

.method public static varargs sync([Landroid/content/SharedPreferences;)I
    .registers 6

    .line 48
    array-length v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-ge v0, v2, :cond_6

    return v1

    .line 51
    :cond_6
    new-instance v0, Ljava/util/ArrayList;

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 53
    new-instance p0, Lcom/genonbeta/android/framework/util/PreferenceUtils$1;

    invoke-direct {p0}, Lcom/genonbeta/android/framework/util/PreferenceUtils$1;-><init>()V

    invoke-static {v0, p0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 66
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 67
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/SharedPreferences;

    .line 69
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    .line 70
    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 72
    invoke-interface {p0}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object p0

    .line 73
    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 77
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_33
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_45

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/SharedPreferences;

    .line 78
    invoke-static {p0, v4, v2, v3}, Lcom/genonbeta/android/framework/util/PreferenceUtils;->syncPreferences(Ljava/util/Map;Landroid/content/SharedPreferences;J)I

    move-result v4

    add-int/2addr v1, v4

    goto :goto_33

    :cond_45
    return v1
.end method

.method public static syncPreferences(Landroid/content/SharedPreferences;Landroid/content/SharedPreferences;)I
    .registers 2

    .line 85
    invoke-interface {p0}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/genonbeta/android/framework/util/PreferenceUtils;->syncPreferences(Ljava/util/Map;Landroid/content/SharedPreferences;)I

    move-result p0

    return p0
.end method

.method public static syncPreferences(Ljava/util/Map;Landroid/content/SharedPreferences;)I
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;",
            "Landroid/content/SharedPreferences;",
            ")I"
        }
    .end annotation

    .line 90
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {p0, p1, v0, v1}, Lcom/genonbeta/android/framework/util/PreferenceUtils;->syncPreferences(Ljava/util/Map;Landroid/content/SharedPreferences;J)I

    move-result p0

    return p0
.end method

.method public static syncPreferences(Ljava/util/Map;Landroid/content/SharedPreferences;J)I
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;",
            "Landroid/content/SharedPreferences;",
            "J)I"
        }
    .end annotation

    .line 96
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 98
    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    const/4 p3, 0x0

    :cond_d
    :goto_d
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_26

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 99
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lcom/genonbeta/android/framework/util/PreferenceUtils;->applyGeneric(Ljava/lang/String;Ljava/lang/Object;Landroid/content/SharedPreferences$Editor;)Z

    move-result v0

    if-eqz v0, :cond_d

    add-int/lit8 p3, p3, 0x1

    goto :goto_d

    .line 102
    :cond_26
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return p3
.end method
