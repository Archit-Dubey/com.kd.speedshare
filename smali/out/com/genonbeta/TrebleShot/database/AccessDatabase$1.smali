.class Lcom/genonbeta/TrebleShot/database/AccessDatabase$1;
.super Ljava/lang/Object;
.source "AccessDatabase.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/genonbeta/TrebleShot/database/AccessDatabase;->removeAsynchronous(Landroid/app/Activity;Lcom/genonbeta/android/database/DatabaseObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/genonbeta/TrebleShot/database/AccessDatabase;

.field final synthetic val$object:Lcom/genonbeta/android/database/DatabaseObject;


# direct methods
.method constructor <init>(Lcom/genonbeta/TrebleShot/database/AccessDatabase;Lcom/genonbeta/android/database/DatabaseObject;)V
    .registers 3

    .line 428
    iput-object p1, p0, Lcom/genonbeta/TrebleShot/database/AccessDatabase$1;->this$0:Lcom/genonbeta/TrebleShot/database/AccessDatabase;

    iput-object p2, p0, Lcom/genonbeta/TrebleShot/database/AccessDatabase$1;->val$object:Lcom/genonbeta/android/database/DatabaseObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 432
    iget-object v0, p0, Lcom/genonbeta/TrebleShot/database/AccessDatabase$1;->this$0:Lcom/genonbeta/TrebleShot/database/AccessDatabase;

    iget-object v1, p0, Lcom/genonbeta/TrebleShot/database/AccessDatabase$1;->val$object:Lcom/genonbeta/android/database/DatabaseObject;

    invoke-virtual {v0, v1}, Lcom/genonbeta/TrebleShot/database/AccessDatabase;->remove(Lcom/genonbeta/android/database/DatabaseObject;)V

    return-void
.end method
