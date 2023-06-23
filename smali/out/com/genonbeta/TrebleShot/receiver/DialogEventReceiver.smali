.class public Lcom/genonbeta/TrebleShot/receiver/DialogEventReceiver;
.super Landroid/content/BroadcastReceiver;
.source "DialogEventReceiver.java"


# static fields
.field public static final ACTION_DIALOG:Ljava/lang/String; = "com.genonbeta.TrebleShot.action.makeDialog"

.field public static final EXTRA_MESSAGE:Ljava/lang/String; = "message"

.field public static final EXTRA_NEGATIVE_INTENT:Ljava/lang/String; = "negative"

.field public static final EXTRA_POSITIVE_INTENT:Ljava/lang/String; = "positive"

.field public static final EXTRA_TITLE:Ljava/lang/String; = "title"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 15
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 10

    .line 27
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.genonbeta.TrebleShot.action.makeDialog"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_35

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-gt v0, v1, :cond_35

    const-string v0, "title"

    .line 28
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v0, "message"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v0, "positive"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Landroid/app/PendingIntent;

    const-string v0, "negative"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p2

    move-object v6, p2

    check-cast v6, Landroid/app/PendingIntent;

    move-object v1, p0

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Lcom/genonbeta/TrebleShot/receiver/DialogEventReceiver;->showDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    :cond_35
    return-void
.end method

.method public showDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    .registers 7

    .line 33
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    if-eqz p2, :cond_a

    .line 36
    invoke-virtual {v0, p2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    :cond_a
    if-eqz p3, :cond_f

    .line 39
    invoke-virtual {v0, p3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    :cond_f
    if-eqz p4, :cond_1c

    const p1, 0x104000a

    .line 42
    new-instance p2, Lcom/genonbeta/TrebleShot/receiver/DialogEventReceiver$1;

    invoke-direct {p2, p0, p4}, Lcom/genonbeta/TrebleShot/receiver/DialogEventReceiver$1;-><init>(Lcom/genonbeta/TrebleShot/receiver/DialogEventReceiver;Landroid/app/PendingIntent;)V

    invoke-virtual {v0, p1, p2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    :cond_1c
    if-eqz p5, :cond_29

    const/high16 p1, 0x1040000

    .line 58
    new-instance p2, Lcom/genonbeta/TrebleShot/receiver/DialogEventReceiver$2;

    invoke-direct {p2, p0, p5}, Lcom/genonbeta/TrebleShot/receiver/DialogEventReceiver$2;-><init>(Lcom/genonbeta/TrebleShot/receiver/DialogEventReceiver;Landroid/app/PendingIntent;)V

    invoke-virtual {v0, p1, p2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_30

    :cond_29
    const p1, 0x7f110033

    const/4 p2, 0x0

    .line 73
    invoke-virtual {v0, p1, p2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 75
    :goto_30
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    .line 76
    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p2

    const/16 p3, 0x7d3

    invoke-virtual {p2, p3}, Landroid/view/Window;->setType(I)V

    .line 77
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    return-void
.end method
