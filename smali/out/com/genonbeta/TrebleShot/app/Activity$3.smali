.class Lcom/genonbeta/TrebleShot/app/Activity$3;
.super Ljava/lang/Object;
.source "Activity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/genonbeta/TrebleShot/app/Activity;->notifyUserProfileChanged()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/genonbeta/TrebleShot/app/Activity;


# direct methods
.method constructor <init>(Lcom/genonbeta/TrebleShot/app/Activity;)V
    .registers 2

    .line 401
    iput-object p1, p0, Lcom/genonbeta/TrebleShot/app/Activity$3;->this$0:Lcom/genonbeta/TrebleShot/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 405
    iget-object v0, p0, Lcom/genonbeta/TrebleShot/app/Activity$3;->this$0:Lcom/genonbeta/TrebleShot/app/Activity;

    invoke-virtual {v0}, Lcom/genonbeta/TrebleShot/app/Activity;->onUserProfileUpdated()V

    return-void
.end method
