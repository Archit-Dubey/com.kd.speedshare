.class public Lcom/genonbeta/android/framework/preference/DbSharablePreferences$DbEditor;
.super Ljava/lang/Object;
.source "DbSharablePreferences.java"

# interfaces
.implements Landroid/content/SharedPreferences$Editor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/genonbeta/android/framework/preference/DbSharablePreferences;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DbEditor"
.end annotation


# instance fields
.field private mPendingPublish:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/genonbeta/android/framework/preference/DbSharablePreferences$StoredData;",
            ">;"
        }
    .end annotation
.end field

.field private mPendingRemoval:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/genonbeta/android/framework/preference/DbSharablePreferences$StoredData;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/genonbeta/android/framework/preference/DbSharablePreferences;


# direct methods
.method public constructor <init>(Lcom/genonbeta/android/framework/preference/DbSharablePreferences;)V
    .registers 2

    .line 355
    iput-object p1, p0, Lcom/genonbeta/android/framework/preference/DbSharablePreferences$DbEditor;->this$0:Lcom/genonbeta/android/framework/preference/DbSharablePreferences;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 357
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/genonbeta/android/framework/preference/DbSharablePreferences$DbEditor;->mPendingPublish:Ljava/util/List;

    .line 358
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/genonbeta/android/framework/preference/DbSharablePreferences$DbEditor;->mPendingRemoval:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public apply()V
    .registers 2

    .line 466
    iget-object v0, p0, Lcom/genonbeta/android/framework/preference/DbSharablePreferences$DbEditor;->this$0:Lcom/genonbeta/android/framework/preference/DbSharablePreferences;

    invoke-virtual {v0}, Lcom/genonbeta/android/framework/preference/DbSharablePreferences;->isSyncReliant()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 467
    new-instance v0, Lcom/genonbeta/android/framework/preference/DbSharablePreferences$DbEditor$1;

    invoke-direct {v0, p0}, Lcom/genonbeta/android/framework/preference/DbSharablePreferences$DbEditor$1;-><init>(Lcom/genonbeta/android/framework/preference/DbSharablePreferences$DbEditor;)V

    .line 474
    invoke-virtual {v0}, Lcom/genonbeta/android/framework/preference/DbSharablePreferences$DbEditor$1;->run()V

    goto :goto_14

    .line 476
    :cond_11
    invoke-virtual {p0}, Lcom/genonbeta/android/framework/preference/DbSharablePreferences$DbEditor;->execute()V

    :goto_14
    return-void
.end method

.method public clear()Landroid/content/SharedPreferences$Editor;
    .registers 5

    .line 452
    iget-object v0, p0, Lcom/genonbeta/android/framework/preference/DbSharablePreferences$DbEditor;->this$0:Lcom/genonbeta/android/framework/preference/DbSharablePreferences;

    new-instance v1, Lcom/genonbeta/android/database/SQLQuery$Select;

    iget-object v2, p0, Lcom/genonbeta/android/framework/preference/DbSharablePreferences$DbEditor;->this$0:Lcom/genonbeta/android/framework/preference/DbSharablePreferences;

    invoke-static {v2}, Lcom/genonbeta/android/framework/preference/DbSharablePreferences;->access$300(Lcom/genonbeta/android/framework/preference/DbSharablePreferences;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lcom/genonbeta/android/database/SQLQuery$Select;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/genonbeta/android/framework/preference/DbSharablePreferences;->remove(Lcom/genonbeta/android/database/SQLQuery$Select;)I

    return-object p0
.end method

.method public commit()Z
    .registers 2

    .line 459
    invoke-virtual {p0}, Lcom/genonbeta/android/framework/preference/DbSharablePreferences$DbEditor;->apply()V

    const/4 v0, 0x1

    return v0
.end method

.method protected execute()V
    .registers 9

    .line 362
    new-instance v0, Landroidx/collection/ArrayMap;

    invoke-direct {v0}, Landroidx/collection/ArrayMap;-><init>()V

    .line 364
    iget-object v1, p0, Lcom/genonbeta/android/framework/preference/DbSharablePreferences$DbEditor;->this$0:Lcom/genonbeta/android/framework/preference/DbSharablePreferences;

    invoke-virtual {v1}, Lcom/genonbeta/android/framework/preference/DbSharablePreferences;->isSyncReliant()Z

    move-result v1

    if-eqz v1, :cond_16

    .line 365
    iget-object v1, p0, Lcom/genonbeta/android/framework/preference/DbSharablePreferences$DbEditor;->this$0:Lcom/genonbeta/android/framework/preference/DbSharablePreferences;

    invoke-static {v1}, Lcom/genonbeta/android/framework/preference/DbSharablePreferences;->access$000(Lcom/genonbeta/android/framework/preference/DbSharablePreferences;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 367
    :cond_16
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/genonbeta/android/framework/preference/DbSharablePreferences$DbEditor;->mPendingRemoval:Ljava/util/List;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 368
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/genonbeta/android/framework/preference/DbSharablePreferences$DbEditor;->mPendingPublish:Ljava/util/List;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 370
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_28
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_68

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/genonbeta/android/framework/preference/DbSharablePreferences$StoredData;

    .line 371
    iget-object v4, p0, Lcom/genonbeta/android/framework/preference/DbSharablePreferences$DbEditor;->this$0:Lcom/genonbeta/android/framework/preference/DbSharablePreferences;

    invoke-virtual {v4, v3}, Lcom/genonbeta/android/framework/preference/DbSharablePreferences;->remove(Lcom/genonbeta/android/database/DatabaseObject;)V

    .line 373
    iget-object v4, p0, Lcom/genonbeta/android/framework/preference/DbSharablePreferences$DbEditor;->this$0:Lcom/genonbeta/android/framework/preference/DbSharablePreferences;

    invoke-virtual {v4}, Lcom/genonbeta/android/framework/preference/DbSharablePreferences;->isSyncReliant()Z

    move-result v4

    if-eqz v4, :cond_48

    .line 374
    invoke-virtual {v3}, Lcom/genonbeta/android/framework/preference/DbSharablePreferences$StoredData;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 376
    :cond_48
    iget-object v4, p0, Lcom/genonbeta/android/framework/preference/DbSharablePreferences$DbEditor;->this$0:Lcom/genonbeta/android/framework/preference/DbSharablePreferences;

    invoke-static {v4}, Lcom/genonbeta/android/framework/preference/DbSharablePreferences;->access$100(Lcom/genonbeta/android/framework/preference/DbSharablePreferences;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_52
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_28

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    .line 377
    iget-object v6, p0, Lcom/genonbeta/android/framework/preference/DbSharablePreferences$DbEditor;->this$0:Lcom/genonbeta/android/framework/preference/DbSharablePreferences;

    invoke-virtual {v3}, Lcom/genonbeta/android/framework/preference/DbSharablePreferences$StoredData;->getKey()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;->onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V

    goto :goto_52

    .line 380
    :cond_68
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_6c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_b0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/genonbeta/android/framework/preference/DbSharablePreferences$StoredData;

    .line 381
    iget-object v3, p0, Lcom/genonbeta/android/framework/preference/DbSharablePreferences$DbEditor;->this$0:Lcom/genonbeta/android/framework/preference/DbSharablePreferences;

    invoke-virtual {v3, v2}, Lcom/genonbeta/android/framework/preference/DbSharablePreferences;->publish(Lcom/genonbeta/android/database/DatabaseObject;)V

    .line 383
    iget-object v3, p0, Lcom/genonbeta/android/framework/preference/DbSharablePreferences$DbEditor;->this$0:Lcom/genonbeta/android/framework/preference/DbSharablePreferences;

    invoke-virtual {v3}, Lcom/genonbeta/android/framework/preference/DbSharablePreferences;->isSyncReliant()Z

    move-result v3

    if-eqz v3, :cond_90

    .line 384
    invoke-virtual {v2}, Lcom/genonbeta/android/framework/preference/DbSharablePreferences$StoredData;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Lcom/genonbeta/android/framework/preference/DbSharablePreferences$StoredData;->getTypedValue()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 386
    :cond_90
    iget-object v3, p0, Lcom/genonbeta/android/framework/preference/DbSharablePreferences$DbEditor;->this$0:Lcom/genonbeta/android/framework/preference/DbSharablePreferences;

    invoke-static {v3}, Lcom/genonbeta/android/framework/preference/DbSharablePreferences;->access$100(Lcom/genonbeta/android/framework/preference/DbSharablePreferences;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_9a
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6c

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    .line 387
    iget-object v5, p0, Lcom/genonbeta/android/framework/preference/DbSharablePreferences$DbEditor;->this$0:Lcom/genonbeta/android/framework/preference/DbSharablePreferences;

    invoke-virtual {v2}, Lcom/genonbeta/android/framework/preference/DbSharablePreferences$StoredData;->getKey()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;->onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V

    goto :goto_9a

    .line 390
    :cond_b0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/genonbeta/android/framework/preference/DbSharablePreferences$DbEditor;->mPendingRemoval:Ljava/util/List;

    .line 391
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/genonbeta/android/framework/preference/DbSharablePreferences$DbEditor;->mPendingPublish:Ljava/util/List;

    .line 393
    iget-object v1, p0, Lcom/genonbeta/android/framework/preference/DbSharablePreferences$DbEditor;->this$0:Lcom/genonbeta/android/framework/preference/DbSharablePreferences;

    invoke-virtual {v1}, Lcom/genonbeta/android/framework/preference/DbSharablePreferences;->isSyncReliant()Z

    move-result v1

    if-eqz v1, :cond_dc

    .line 394
    iget-object v1, p0, Lcom/genonbeta/android/framework/preference/DbSharablePreferences$DbEditor;->this$0:Lcom/genonbeta/android/framework/preference/DbSharablePreferences;

    invoke-static {v1, v0}, Lcom/genonbeta/android/framework/preference/DbSharablePreferences;->access$002(Lcom/genonbeta/android/framework/preference/DbSharablePreferences;Ljava/util/Map;)Ljava/util/Map;

    .line 396
    iget-object v0, p0, Lcom/genonbeta/android/framework/preference/DbSharablePreferences$DbEditor;->this$0:Lcom/genonbeta/android/framework/preference/DbSharablePreferences;

    invoke-static {v0}, Lcom/genonbeta/android/framework/preference/DbSharablePreferences;->access$200(Lcom/genonbeta/android/framework/preference/DbSharablePreferences;)Lcom/genonbeta/android/framework/preference/DbSharablePreferences$AsynchronousUpdateListener;

    move-result-object v0

    if-eqz v0, :cond_dc

    .line 397
    iget-object v0, p0, Lcom/genonbeta/android/framework/preference/DbSharablePreferences$DbEditor;->this$0:Lcom/genonbeta/android/framework/preference/DbSharablePreferences;

    invoke-static {v0}, Lcom/genonbeta/android/framework/preference/DbSharablePreferences;->access$200(Lcom/genonbeta/android/framework/preference/DbSharablePreferences;)Lcom/genonbeta/android/framework/preference/DbSharablePreferences$AsynchronousUpdateListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/genonbeta/android/framework/preference/DbSharablePreferences$AsynchronousUpdateListener;->onCommitComplete()V

    :cond_dc
    return-void
.end method

.method public putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;
    .registers 6

    .line 438
    iget-object v0, p0, Lcom/genonbeta/android/framework/preference/DbSharablePreferences$DbEditor;->mPendingPublish:Ljava/util/List;

    new-instance v1, Lcom/genonbeta/android/framework/preference/DbSharablePreferences$StoredData;

    iget-object v2, p0, Lcom/genonbeta/android/framework/preference/DbSharablePreferences$DbEditor;->this$0:Lcom/genonbeta/android/framework/preference/DbSharablePreferences;

    invoke-static {v2}, Lcom/genonbeta/android/framework/preference/DbSharablePreferences;->access$300(Lcom/genonbeta/android/framework/preference/DbSharablePreferences;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, p1, p2}, Lcom/genonbeta/android/framework/preference/DbSharablePreferences$StoredData;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;
    .registers 6

    .line 431
    iget-object v0, p0, Lcom/genonbeta/android/framework/preference/DbSharablePreferences$DbEditor;->mPendingPublish:Ljava/util/List;

    new-instance v1, Lcom/genonbeta/android/framework/preference/DbSharablePreferences$StoredData;

    iget-object v2, p0, Lcom/genonbeta/android/framework/preference/DbSharablePreferences$DbEditor;->this$0:Lcom/genonbeta/android/framework/preference/DbSharablePreferences;

    invoke-static {v2}, Lcom/genonbeta/android/framework/preference/DbSharablePreferences;->access$300(Lcom/genonbeta/android/framework/preference/DbSharablePreferences;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, p1, p2}, Lcom/genonbeta/android/framework/preference/DbSharablePreferences$StoredData;-><init>(Ljava/lang/String;Ljava/lang/String;F)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;
    .registers 6

    .line 417
    iget-object v0, p0, Lcom/genonbeta/android/framework/preference/DbSharablePreferences$DbEditor;->mPendingPublish:Ljava/util/List;

    new-instance v1, Lcom/genonbeta/android/framework/preference/DbSharablePreferences$StoredData;

    iget-object v2, p0, Lcom/genonbeta/android/framework/preference/DbSharablePreferences$DbEditor;->this$0:Lcom/genonbeta/android/framework/preference/DbSharablePreferences;

    invoke-static {v2}, Lcom/genonbeta/android/framework/preference/DbSharablePreferences;->access$300(Lcom/genonbeta/android/framework/preference/DbSharablePreferences;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, p1, p2}, Lcom/genonbeta/android/framework/preference/DbSharablePreferences$StoredData;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;
    .registers 7

    .line 424
    iget-object v0, p0, Lcom/genonbeta/android/framework/preference/DbSharablePreferences$DbEditor;->mPendingPublish:Ljava/util/List;

    new-instance v1, Lcom/genonbeta/android/framework/preference/DbSharablePreferences$StoredData;

    iget-object v2, p0, Lcom/genonbeta/android/framework/preference/DbSharablePreferences$DbEditor;->this$0:Lcom/genonbeta/android/framework/preference/DbSharablePreferences;

    invoke-static {v2}, Lcom/genonbeta/android/framework/preference/DbSharablePreferences;->access$300(Lcom/genonbeta/android/framework/preference/DbSharablePreferences;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, p1, p2, p3}, Lcom/genonbeta/android/framework/preference/DbSharablePreferences$StoredData;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
    .registers 6

    .line 404
    iget-object v0, p0, Lcom/genonbeta/android/framework/preference/DbSharablePreferences$DbEditor;->mPendingPublish:Ljava/util/List;

    new-instance v1, Lcom/genonbeta/android/framework/preference/DbSharablePreferences$StoredData;

    iget-object v2, p0, Lcom/genonbeta/android/framework/preference/DbSharablePreferences$DbEditor;->this$0:Lcom/genonbeta/android/framework/preference/DbSharablePreferences;

    invoke-static {v2}, Lcom/genonbeta/android/framework/preference/DbSharablePreferences;->access$300(Lcom/genonbeta/android/framework/preference/DbSharablePreferences;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, p1, p2}, Lcom/genonbeta/android/framework/preference/DbSharablePreferences$StoredData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/content/SharedPreferences$Editor;"
        }
    .end annotation

    return-object p0
.end method

.method public remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
    .registers 5

    .line 445
    iget-object v0, p0, Lcom/genonbeta/android/framework/preference/DbSharablePreferences$DbEditor;->mPendingRemoval:Ljava/util/List;

    new-instance v1, Lcom/genonbeta/android/framework/preference/DbSharablePreferences$StoredData;

    iget-object v2, p0, Lcom/genonbeta/android/framework/preference/DbSharablePreferences$DbEditor;->this$0:Lcom/genonbeta/android/framework/preference/DbSharablePreferences;

    invoke-static {v2}, Lcom/genonbeta/android/framework/preference/DbSharablePreferences;->access$300(Lcom/genonbeta/android/framework/preference/DbSharablePreferences;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, p1}, Lcom/genonbeta/android/framework/preference/DbSharablePreferences$StoredData;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method
