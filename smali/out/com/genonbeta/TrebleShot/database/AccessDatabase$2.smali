.class Lcom/genonbeta/TrebleShot/database/AccessDatabase$2;
.super Ljava/lang/Object;
.source "AccessDatabase.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/genonbeta/TrebleShot/database/AccessDatabase;->removeAsynchronous(Landroid/app/Activity;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/genonbeta/TrebleShot/database/AccessDatabase;

.field final synthetic val$objects:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/genonbeta/TrebleShot/database/AccessDatabase;Ljava/util/List;)V
    .registers 3

    .line 440
    iput-object p1, p0, Lcom/genonbeta/TrebleShot/database/AccessDatabase$2;->this$0:Lcom/genonbeta/TrebleShot/database/AccessDatabase;

    iput-object p2, p0, Lcom/genonbeta/TrebleShot/database/AccessDatabase$2;->val$objects:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 444
    iget-object v0, p0, Lcom/genonbeta/TrebleShot/database/AccessDatabase$2;->this$0:Lcom/genonbeta/TrebleShot/database/AccessDatabase;

    iget-object v1, p0, Lcom/genonbeta/TrebleShot/database/AccessDatabase$2;->val$objects:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/genonbeta/TrebleShot/database/AccessDatabase;->remove(Ljava/util/List;)V

    return-void
.end method
