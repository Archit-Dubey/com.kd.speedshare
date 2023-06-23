.class Lcom/genonbeta/TrebleShot/fragment/TextStreamListFragment$StatusReceiver;
.super Landroid/content/BroadcastReceiver;
.source "TextStreamListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/genonbeta/TrebleShot/fragment/TextStreamListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StatusReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/genonbeta/TrebleShot/fragment/TextStreamListFragment;


# direct methods
.method private constructor <init>(Lcom/genonbeta/TrebleShot/fragment/TextStreamListFragment;)V
    .registers 2

    .line 233
    iput-object p1, p0, Lcom/genonbeta/TrebleShot/fragment/TextStreamListFragment$StatusReceiver;->this$0:Lcom/genonbeta/TrebleShot/fragment/TextStreamListFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/genonbeta/TrebleShot/fragment/TextStreamListFragment;Lcom/genonbeta/TrebleShot/fragment/TextStreamListFragment$1;)V
    .registers 3

    .line 233
    invoke-direct {p0, p1}, Lcom/genonbeta/TrebleShot/fragment/TextStreamListFragment$StatusReceiver;-><init>(Lcom/genonbeta/TrebleShot/fragment/TextStreamListFragment;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 4

    .line 238
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "com.genonbeta.intent.action.DATABASE_CHANGE"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_25

    const-string p1, "tableName"

    .line 239
    invoke-virtual {p2, p1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_25

    .line 240
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "clipboard"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_25

    .line 241
    iget-object p1, p0, Lcom/genonbeta/TrebleShot/fragment/TextStreamListFragment$StatusReceiver;->this$0:Lcom/genonbeta/TrebleShot/fragment/TextStreamListFragment;

    invoke-virtual {p1}, Lcom/genonbeta/TrebleShot/fragment/TextStreamListFragment;->refreshList()V

    :cond_25
    return-void
.end method
