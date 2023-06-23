.class Lcom/genonbeta/TrebleShot/activity/HomeActivity$7;
.super Ljava/lang/Object;
.source "HomeActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/genonbeta/TrebleShot/activity/HomeActivity;->createHeaderView()V
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

    .line 299
    iput-object p1, p0, Lcom/genonbeta/TrebleShot/activity/HomeActivity$7;->this$0:Lcom/genonbeta/TrebleShot/activity/HomeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 2

    .line 303
    iget-object p1, p0, Lcom/genonbeta/TrebleShot/activity/HomeActivity$7;->this$0:Lcom/genonbeta/TrebleShot/activity/HomeActivity;

    invoke-virtual {p1}, Lcom/genonbeta/TrebleShot/activity/HomeActivity;->startProfileEditor()V

    return-void
.end method
