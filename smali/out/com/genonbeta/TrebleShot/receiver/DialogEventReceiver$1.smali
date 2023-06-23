.class Lcom/genonbeta/TrebleShot/receiver/DialogEventReceiver$1;
.super Ljava/lang/Object;
.source "DialogEventReceiver.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/genonbeta/TrebleShot/receiver/DialogEventReceiver;->showDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/genonbeta/TrebleShot/receiver/DialogEventReceiver;

.field final synthetic val$accept:Landroid/app/PendingIntent;


# direct methods
.method constructor <init>(Lcom/genonbeta/TrebleShot/receiver/DialogEventReceiver;Landroid/app/PendingIntent;)V
    .registers 3

    .line 44
    iput-object p1, p0, Lcom/genonbeta/TrebleShot/receiver/DialogEventReceiver$1;->this$0:Lcom/genonbeta/TrebleShot/receiver/DialogEventReceiver;

    iput-object p2, p0, Lcom/genonbeta/TrebleShot/receiver/DialogEventReceiver$1;->val$accept:Landroid/app/PendingIntent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 3

    .line 49
    :try_start_0
    iget-object p1, p0, Lcom/genonbeta/TrebleShot/receiver/DialogEventReceiver$1;->val$accept:Landroid/app/PendingIntent;

    invoke-virtual {p1}, Landroid/app/PendingIntent;->send()V
    :try_end_5
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_5} :catch_6

    goto :goto_a

    :catch_6
    move-exception p1

    .line 51
    invoke-virtual {p1}, Landroid/app/PendingIntent$CanceledException;->printStackTrace()V

    :goto_a
    return-void
.end method
