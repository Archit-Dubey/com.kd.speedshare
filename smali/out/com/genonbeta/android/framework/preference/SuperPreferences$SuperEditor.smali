.class public Lcom/genonbeta/android/framework/preference/SuperPreferences$SuperEditor;
.super Ljava/lang/Object;
.source "SuperPreferences.java"

# interfaces
.implements Landroid/content/SharedPreferences$Editor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/genonbeta/android/framework/preference/SuperPreferences;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SuperEditor"
.end annotation


# instance fields
.field private mEditor:Landroid/content/SharedPreferences$Editor;

.field final synthetic this$0:Lcom/genonbeta/android/framework/preference/SuperPreferences;


# direct methods
.method public constructor <init>(Lcom/genonbeta/android/framework/preference/SuperPreferences;Landroid/content/SharedPreferences$Editor;)V
    .registers 3

    .line 109
    iput-object p1, p0, Lcom/genonbeta/android/framework/preference/SuperPreferences$SuperEditor;->this$0:Lcom/genonbeta/android/framework/preference/SuperPreferences;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 110
    iput-object p2, p0, Lcom/genonbeta/android/framework/preference/SuperPreferences$SuperEditor;->mEditor:Landroid/content/SharedPreferences$Editor;

    return-void
.end method


# virtual methods
.method public apply()V
    .registers 5

    .line 185
    iget-object v0, p0, Lcom/genonbeta/android/framework/preference/SuperPreferences$SuperEditor;->mEditor:Landroid/content/SharedPreferences$Editor;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-string v3, "__SYNC_TIME"

    invoke-interface {v0, v3, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 186
    iget-object v0, p0, Lcom/genonbeta/android/framework/preference/SuperPreferences$SuperEditor;->mEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 188
    iget-object v0, p0, Lcom/genonbeta/android/framework/preference/SuperPreferences$SuperEditor;->this$0:Lcom/genonbeta/android/framework/preference/SuperPreferences;

    invoke-static {v0}, Lcom/genonbeta/android/framework/preference/SuperPreferences;->access$000(Lcom/genonbeta/android/framework/preference/SuperPreferences;)Lcom/genonbeta/android/framework/preference/SuperPreferences$OnPreferenceUpdateListener;

    move-result-object v0

    if-eqz v0, :cond_24

    .line 189
    iget-object v0, p0, Lcom/genonbeta/android/framework/preference/SuperPreferences$SuperEditor;->this$0:Lcom/genonbeta/android/framework/preference/SuperPreferences;

    invoke-static {v0}, Lcom/genonbeta/android/framework/preference/SuperPreferences;->access$000(Lcom/genonbeta/android/framework/preference/SuperPreferences;)Lcom/genonbeta/android/framework/preference/SuperPreferences$OnPreferenceUpdateListener;

    move-result-object v0

    iget-object v1, p0, Lcom/genonbeta/android/framework/preference/SuperPreferences$SuperEditor;->this$0:Lcom/genonbeta/android/framework/preference/SuperPreferences;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/genonbeta/android/framework/preference/SuperPreferences$OnPreferenceUpdateListener;->onPreferenceUpdate(Lcom/genonbeta/android/framework/preference/SuperPreferences;Z)V

    :cond_24
    return-void
.end method

.method public clear()Landroid/content/SharedPreferences$Editor;
    .registers 2

    .line 165
    iget-object v0, p0, Lcom/genonbeta/android/framework/preference/SuperPreferences$SuperEditor;->mEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    return-object p0
.end method

.method public commit()Z
    .registers 5

    .line 172
    iget-object v0, p0, Lcom/genonbeta/android/framework/preference/SuperPreferences$SuperEditor;->mEditor:Landroid/content/SharedPreferences$Editor;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-string v3, "__SYNC_TIME"

    invoke-interface {v0, v3, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 174
    iget-object v0, p0, Lcom/genonbeta/android/framework/preference/SuperPreferences$SuperEditor;->mEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v0

    .line 176
    iget-object v1, p0, Lcom/genonbeta/android/framework/preference/SuperPreferences$SuperEditor;->this$0:Lcom/genonbeta/android/framework/preference/SuperPreferences;

    invoke-static {v1}, Lcom/genonbeta/android/framework/preference/SuperPreferences;->access$000(Lcom/genonbeta/android/framework/preference/SuperPreferences;)Lcom/genonbeta/android/framework/preference/SuperPreferences$OnPreferenceUpdateListener;

    move-result-object v1

    if-eqz v1, :cond_25

    .line 177
    iget-object v1, p0, Lcom/genonbeta/android/framework/preference/SuperPreferences$SuperEditor;->this$0:Lcom/genonbeta/android/framework/preference/SuperPreferences;

    invoke-static {v1}, Lcom/genonbeta/android/framework/preference/SuperPreferences;->access$000(Lcom/genonbeta/android/framework/preference/SuperPreferences;)Lcom/genonbeta/android/framework/preference/SuperPreferences$OnPreferenceUpdateListener;

    move-result-object v1

    iget-object v2, p0, Lcom/genonbeta/android/framework/preference/SuperPreferences$SuperEditor;->this$0:Lcom/genonbeta/android/framework/preference/SuperPreferences;

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Lcom/genonbeta/android/framework/preference/SuperPreferences$OnPreferenceUpdateListener;->onPreferenceUpdate(Lcom/genonbeta/android/framework/preference/SuperPreferences;Z)V

    :cond_25
    return v0
.end method

.method public putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;
    .registers 4

    .line 151
    iget-object v0, p0, Lcom/genonbeta/android/framework/preference/SuperPreferences$SuperEditor;->mEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    return-object p0
.end method

.method public putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;
    .registers 4

    .line 144
    iget-object v0, p0, Lcom/genonbeta/android/framework/preference/SuperPreferences$SuperEditor;->mEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    return-object p0
.end method

.method public putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;
    .registers 4

    .line 130
    iget-object v0, p0, Lcom/genonbeta/android/framework/preference/SuperPreferences$SuperEditor;->mEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    return-object p0
.end method

.method public putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;
    .registers 5

    .line 137
    iget-object v0, p0, Lcom/genonbeta/android/framework/preference/SuperPreferences$SuperEditor;->mEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p1, p2, p3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    return-object p0
.end method

.method public putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
    .registers 4

    .line 116
    iget-object v0, p0, Lcom/genonbeta/android/framework/preference/SuperPreferences$SuperEditor;->mEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    return-object p0
.end method

.method public putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;
    .registers 4
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

    .line 123
    iget-object v0, p0, Lcom/genonbeta/android/framework/preference/SuperPreferences$SuperEditor;->mEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    return-object p0
.end method

.method public remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
    .registers 3

    .line 158
    iget-object v0, p0, Lcom/genonbeta/android/framework/preference/SuperPreferences$SuperEditor;->mEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    return-object p0
.end method
