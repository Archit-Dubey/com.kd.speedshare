.class Lcom/genonbeta/TrebleShot/activity/HomeActivity$6;
.super Ljava/lang/Object;
.source "HomeActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/genonbeta/TrebleShot/activity/HomeActivity;->applyAwaitingDrawerAction()V
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

    .line 245
    iput-object p1, p0, Lcom/genonbeta/TrebleShot/activity/HomeActivity$6;->this$0:Lcom/genonbeta/TrebleShot/activity/HomeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4

    .line 250
    :try_start_0
    iget-object p1, p0, Lcom/genonbeta/TrebleShot/activity/HomeActivity$6;->this$0:Lcom/genonbeta/TrebleShot/activity/HomeActivity;

    new-instance p2, Landroid/content/Intent;

    const-string v0, "android.intent.action.VIEW"

    invoke-direct {p2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v0, "https://docs.google.com/forms/d/e/1FAIpQLSd_JkPpiJZ4tjP7TDgtsE9hG66N1X8xDRYkm-_L6jR66CICEg/viewform?usp=sf_link"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/genonbeta/TrebleShot/activity/HomeActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_16
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_16} :catch_17

    goto :goto_24

    .line 254
    :catch_17
    iget-object p1, p0, Lcom/genonbeta/TrebleShot/activity/HomeActivity$6;->this$0:Lcom/genonbeta/TrebleShot/activity/HomeActivity;

    const p2, 0x7f11010d

    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    .line 255
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :goto_24
    return-void
.end method
