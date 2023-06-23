.class Lcom/genonbeta/TrebleShot/activity/WelcomeActivity$5;
.super Ljava/lang/Object;
.source "WelcomeActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/genonbeta/TrebleShot/activity/WelcomeActivity;->setUserProfile()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/genonbeta/TrebleShot/activity/WelcomeActivity;


# direct methods
.method constructor <init>(Lcom/genonbeta/TrebleShot/activity/WelcomeActivity;)V
    .registers 2

    .line 230
    iput-object p1, p0, Lcom/genonbeta/TrebleShot/activity/WelcomeActivity$5;->this$0:Lcom/genonbeta/TrebleShot/activity/WelcomeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 2

    .line 234
    iget-object p1, p0, Lcom/genonbeta/TrebleShot/activity/WelcomeActivity$5;->this$0:Lcom/genonbeta/TrebleShot/activity/WelcomeActivity;

    invoke-virtual {p1}, Lcom/genonbeta/TrebleShot/activity/WelcomeActivity;->startProfileEditor()V

    return-void
.end method
