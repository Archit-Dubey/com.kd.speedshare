.class Lcom/genonbeta/android/framework/preference/DbSharablePreferences$DbEditor$1;
.super Ljava/lang/Thread;
.source "DbSharablePreferences.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/genonbeta/android/framework/preference/DbSharablePreferences$DbEditor;->apply()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/genonbeta/android/framework/preference/DbSharablePreferences$DbEditor;


# direct methods
.method constructor <init>(Lcom/genonbeta/android/framework/preference/DbSharablePreferences$DbEditor;)V
    .registers 2

    .line 468
    iput-object p1, p0, Lcom/genonbeta/android/framework/preference/DbSharablePreferences$DbEditor$1;->this$1:Lcom/genonbeta/android/framework/preference/DbSharablePreferences$DbEditor;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 472
    iget-object v0, p0, Lcom/genonbeta/android/framework/preference/DbSharablePreferences$DbEditor$1;->this$1:Lcom/genonbeta/android/framework/preference/DbSharablePreferences$DbEditor;

    invoke-virtual {v0}, Lcom/genonbeta/android/framework/preference/DbSharablePreferences$DbEditor;->execute()V

    return-void
.end method
