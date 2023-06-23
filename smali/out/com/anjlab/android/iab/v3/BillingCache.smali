.class Lcom/anjlab/android/iab/v3/BillingCache;
.super Lcom/anjlab/android/iab/v3/BillingBase;
.source "BillingCache.java"


# static fields
.field private static final ENTRY_DELIMITER:Ljava/lang/String; = "#####"

.field private static final LINE_DELIMITER:Ljava/lang/String; = ">>>>>"

.field private static final VERSION_KEY:Ljava/lang/String; = ".version"


# instance fields
.field private cacheKey:Ljava/lang/String;

.field private data:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/anjlab/android/iab/v3/PurchaseInfo;",
            ">;"
        }
    .end annotation
.end field

.field private version:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 3

    .line 39
    invoke-direct {p0, p1}, Lcom/anjlab/android/iab/v3/BillingBase;-><init>(Landroid/content/Context;)V

    .line 40
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/anjlab/android/iab/v3/BillingCache;->data:Ljava/util/HashMap;

    .line 41
    iput-object p2, p0, Lcom/anjlab/android/iab/v3/BillingCache;->cacheKey:Ljava/lang/String;

    .line 42
    invoke-direct {p0}, Lcom/anjlab/android/iab/v3/BillingCache;->load()V

    return-void
.end method

.method private flush()V
    .registers 7

    .line 78
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 79
    iget-object v1, p0, Lcom/anjlab/android/iab/v3/BillingCache;->data:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_45

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 81
    iget-object v3, p0, Lcom/anjlab/android/iab/v3/BillingCache;->data:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/anjlab/android/iab/v3/PurchaseInfo;

    .line 82
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ">>>>>"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v3, Lcom/anjlab/android/iab/v3/PurchaseInfo;->responseData:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v3, Lcom/anjlab/android/iab/v3/PurchaseInfo;->signature:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_f

    .line 85
    :cond_45
    invoke-direct {p0}, Lcom/anjlab/android/iab/v3/BillingCache;->getPreferencesCacheKey()Ljava/lang/String;

    move-result-object v1

    const-string v2, "#####"

    invoke-static {v2, v0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/anjlab/android/iab/v3/BillingCache;->saveString(Ljava/lang/String;Ljava/lang/String;)Z

    .line 86
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/anjlab/android/iab/v3/BillingCache;->version:Ljava/lang/String;

    .line 87
    invoke-direct {p0}, Lcom/anjlab/android/iab/v3/BillingCache;->getPreferencesVersionKey()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/anjlab/android/iab/v3/BillingCache;->version:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/anjlab/android/iab/v3/BillingCache;->saveString(Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method

.method private getCurrentVersion()Ljava/lang/String;
    .registers 3

    .line 131
    invoke-direct {p0}, Lcom/anjlab/android/iab/v3/BillingCache;->getPreferencesVersionKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "0"

    invoke-virtual {p0, v0, v1}, Lcom/anjlab/android/iab/v3/BillingCache;->loadString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getPreferencesCacheKey()Ljava/lang/String;
    .registers 3

    .line 47
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/anjlab/android/iab/v3/BillingCache;->getPreferencesBaseKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/anjlab/android/iab/v3/BillingCache;->cacheKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getPreferencesVersionKey()Ljava/lang/String;
    .registers 3

    .line 52
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/anjlab/android/iab/v3/BillingCache;->getPreferencesCacheKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".version"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private load()V
    .registers 11

    .line 57
    invoke-direct {p0}, Lcom/anjlab/android/iab/v3/BillingCache;->getPreferencesCacheKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Lcom/anjlab/android/iab/v3/BillingCache;->loadString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "#####"

    invoke-static {v1}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 58
    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_17
    if-ge v3, v1, :cond_56

    aget-object v4, v0, v3

    .line 60
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_53

    const-string v5, ">>>>>"

    .line 62
    invoke-static {v5}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 63
    array-length v5, v4

    const/4 v6, 0x2

    const/4 v7, 0x1

    if-le v5, v6, :cond_41

    .line 65
    iget-object v5, p0, Lcom/anjlab/android/iab/v3/BillingCache;->data:Ljava/util/HashMap;

    aget-object v8, v4, v2

    new-instance v9, Lcom/anjlab/android/iab/v3/PurchaseInfo;

    aget-object v7, v4, v7

    aget-object v4, v4, v6

    invoke-direct {v9, v7, v4}, Lcom/anjlab/android/iab/v3/PurchaseInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_53

    .line 67
    :cond_41
    array-length v5, v4

    if-le v5, v7, :cond_53

    .line 69
    iget-object v5, p0, Lcom/anjlab/android/iab/v3/BillingCache;->data:Ljava/util/HashMap;

    aget-object v6, v4, v2

    new-instance v8, Lcom/anjlab/android/iab/v3/PurchaseInfo;

    aget-object v4, v4, v7

    const/4 v7, 0x0

    invoke-direct {v8, v4, v7}, Lcom/anjlab/android/iab/v3/PurchaseInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5, v6, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_53
    :goto_53
    add-int/lit8 v3, v3, 0x1

    goto :goto_17

    .line 73
    :cond_56
    invoke-direct {p0}, Lcom/anjlab/android/iab/v3/BillingCache;->getCurrentVersion()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/anjlab/android/iab/v3/BillingCache;->version:Ljava/lang/String;

    return-void
.end method

.method private reloadDataIfNeeded()V
    .registers 3

    .line 136
    iget-object v0, p0, Lcom/anjlab/android/iab/v3/BillingCache;->version:Ljava/lang/String;

    invoke-direct {p0}, Lcom/anjlab/android/iab/v3/BillingCache;->getCurrentVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_14

    .line 138
    iget-object v0, p0, Lcom/anjlab/android/iab/v3/BillingCache;->data:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 139
    invoke-direct {p0}, Lcom/anjlab/android/iab/v3/BillingCache;->load()V

    :cond_14
    return-void
.end method


# virtual methods
.method clear()V
    .registers 2

    .line 124
    invoke-direct {p0}, Lcom/anjlab/android/iab/v3/BillingCache;->reloadDataIfNeeded()V

    .line 125
    iget-object v0, p0, Lcom/anjlab/android/iab/v3/BillingCache;->data:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 126
    invoke-direct {p0}, Lcom/anjlab/android/iab/v3/BillingCache;->flush()V

    return-void
.end method

.method getContents()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 145
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/anjlab/android/iab/v3/BillingCache;->data:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method getDetails(Ljava/lang/String;)Lcom/anjlab/android/iab/v3/PurchaseInfo;
    .registers 3

    .line 98
    invoke-direct {p0}, Lcom/anjlab/android/iab/v3/BillingCache;->reloadDataIfNeeded()V

    .line 99
    iget-object v0, p0, Lcom/anjlab/android/iab/v3/BillingCache;->data:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/anjlab/android/iab/v3/BillingCache;->data:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/anjlab/android/iab/v3/PurchaseInfo;

    goto :goto_15

    :cond_14
    const/4 p1, 0x0

    :goto_15
    return-object p1
.end method

.method includesProduct(Ljava/lang/String;)Z
    .registers 3

    .line 92
    invoke-direct {p0}, Lcom/anjlab/android/iab/v3/BillingCache;->reloadDataIfNeeded()V

    .line 93
    iget-object v0, p0, Lcom/anjlab/android/iab/v3/BillingCache;->data:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method put(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    .line 104
    invoke-direct {p0}, Lcom/anjlab/android/iab/v3/BillingCache;->reloadDataIfNeeded()V

    .line 105
    iget-object v0, p0, Lcom/anjlab/android/iab/v3/BillingCache;->data:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_18

    .line 107
    iget-object v0, p0, Lcom/anjlab/android/iab/v3/BillingCache;->data:Ljava/util/HashMap;

    new-instance v1, Lcom/anjlab/android/iab/v3/PurchaseInfo;

    invoke-direct {v1, p2, p3}, Lcom/anjlab/android/iab/v3/PurchaseInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    invoke-direct {p0}, Lcom/anjlab/android/iab/v3/BillingCache;->flush()V

    :cond_18
    return-void
.end method

.method remove(Ljava/lang/String;)V
    .registers 3

    .line 114
    invoke-direct {p0}, Lcom/anjlab/android/iab/v3/BillingCache;->reloadDataIfNeeded()V

    .line 115
    iget-object v0, p0, Lcom/anjlab/android/iab/v3/BillingCache;->data:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 117
    iget-object v0, p0, Lcom/anjlab/android/iab/v3/BillingCache;->data:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    invoke-direct {p0}, Lcom/anjlab/android/iab/v3/BillingCache;->flush()V

    :cond_13
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 151
    iget-object v0, p0, Lcom/anjlab/android/iab/v3/BillingCache;->data:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    const-string v1, ", "

    invoke-static {v1, v0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
