.class Lcom/genonbeta/TrebleShot/activity/AboutActivity$1;
.super Ljava/lang/Object;
.source "AboutActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/genonbeta/TrebleShot/activity/AboutActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/genonbeta/TrebleShot/activity/AboutActivity;


# direct methods
.method constructor <init>(Lcom/genonbeta/TrebleShot/activity/AboutActivity;)V
    .registers 2

    .line 42
    iput-object p1, p0, Lcom/genonbeta/TrebleShot/activity/AboutActivity$1;->this$0:Lcom/genonbeta/TrebleShot/activity/AboutActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    .line 45
    iget-object p1, p0, Lcom/genonbeta/TrebleShot/activity/AboutActivity$1;->this$0:Lcom/genonbeta/TrebleShot/activity/AboutActivity;

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "https://github.com/TheKDCorporation"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/genonbeta/TrebleShot/activity/AboutActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
