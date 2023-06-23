.class Lcom/genonbeta/TrebleShot/activity/HomeActivity$3;
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

    .line 137
    iput-object p1, p0, Lcom/genonbeta/TrebleShot/activity/HomeActivity$3;->this$0:Lcom/genonbeta/TrebleShot/activity/HomeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4

    .line 141
    iget-object p1, p0, Lcom/genonbeta/TrebleShot/activity/HomeActivity$3;->this$0:Lcom/genonbeta/TrebleShot/activity/HomeActivity;

    invoke-static {p1}, Lcom/genonbeta/TrebleShot/util/AppUtils;->publishLatestChangelogSeen(Landroid/content/Context;)V

    .line 142
    iget-object p1, p0, Lcom/genonbeta/TrebleShot/activity/HomeActivity$3;->this$0:Lcom/genonbeta/TrebleShot/activity/HomeActivity;

    const p2, 0x7f110117

    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method
