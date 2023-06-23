.class Lcom/genonbeta/TrebleShot/activity/HomeActivity$5;
.super Ljava/lang/Object;
.source "HomeActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/genonbeta/TrebleShot/activity/HomeActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/genonbeta/TrebleShot/activity/HomeActivity;


# direct methods
.method constructor <init>(Lcom/genonbeta/TrebleShot/activity/HomeActivity;)V
    .registers 2

    .line 118
    iput-object p1, p0, Lcom/genonbeta/TrebleShot/activity/HomeActivity$5;->this$0:Lcom/genonbeta/TrebleShot/activity/HomeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5

    .line 122
    iget-object p1, p0, Lcom/genonbeta/TrebleShot/activity/HomeActivity$5;->this$0:Lcom/genonbeta/TrebleShot/activity/HomeActivity;

    invoke-static {p1}, Lcom/genonbeta/TrebleShot/util/AppUtils;->publishLatestChangelogSeen(Landroid/content/Context;)V

    .line 123
    iget-object p1, p0, Lcom/genonbeta/TrebleShot/activity/HomeActivity$5;->this$0:Lcom/genonbeta/TrebleShot/activity/HomeActivity;

    new-instance p2, Landroid/content/Intent;

    iget-object v0, p0, Lcom/genonbeta/TrebleShot/activity/HomeActivity$5;->this$0:Lcom/genonbeta/TrebleShot/activity/HomeActivity;

    const-class v1, Lcom/genonbeta/TrebleShot/activity/ChangelogActivity;

    invoke-direct {p2, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, p2}, Lcom/genonbeta/TrebleShot/activity/HomeActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
