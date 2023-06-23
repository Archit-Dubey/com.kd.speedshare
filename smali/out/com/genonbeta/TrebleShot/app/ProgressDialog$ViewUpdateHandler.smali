.class Lcom/genonbeta/TrebleShot/app/ProgressDialog$ViewUpdateHandler;
.super Landroid/os/Handler;
.source "ProgressDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/genonbeta/TrebleShot/app/ProgressDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ViewUpdateHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/genonbeta/TrebleShot/app/ProgressDialog;


# direct methods
.method private constructor <init>(Lcom/genonbeta/TrebleShot/app/ProgressDialog;)V
    .registers 2

    .line 474
    iput-object p1, p0, Lcom/genonbeta/TrebleShot/app/ProgressDialog$ViewUpdateHandler;->this$0:Lcom/genonbeta/TrebleShot/app/ProgressDialog;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/genonbeta/TrebleShot/app/ProgressDialog;Lcom/genonbeta/TrebleShot/app/ProgressDialog$1;)V
    .registers 3

    .line 474
    invoke-direct {p0, p1}, Lcom/genonbeta/TrebleShot/app/ProgressDialog$ViewUpdateHandler;-><init>(Lcom/genonbeta/TrebleShot/app/ProgressDialog;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 10

    .line 479
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 482
    iget-object p1, p0, Lcom/genonbeta/TrebleShot/app/ProgressDialog$ViewUpdateHandler;->this$0:Lcom/genonbeta/TrebleShot/app/ProgressDialog;

    invoke-static {p1}, Lcom/genonbeta/TrebleShot/app/ProgressDialog;->access$100(Lcom/genonbeta/TrebleShot/app/ProgressDialog;)Landroid/widget/ProgressBar;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/ProgressBar;->getProgress()I

    move-result p1

    .line 483
    iget-object v0, p0, Lcom/genonbeta/TrebleShot/app/ProgressDialog$ViewUpdateHandler;->this$0:Lcom/genonbeta/TrebleShot/app/ProgressDialog;

    invoke-static {v0}, Lcom/genonbeta/TrebleShot/app/ProgressDialog;->access$100(Lcom/genonbeta/TrebleShot/app/ProgressDialog;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getMax()I

    move-result v0

    .line 484
    iget-object v1, p0, Lcom/genonbeta/TrebleShot/app/ProgressDialog$ViewUpdateHandler;->this$0:Lcom/genonbeta/TrebleShot/app/ProgressDialog;

    invoke-static {v1}, Lcom/genonbeta/TrebleShot/app/ProgressDialog;->access$200(Lcom/genonbeta/TrebleShot/app/ProgressDialog;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    const-string v4, ""

    if-eqz v1, :cond_46

    .line 485
    iget-object v1, p0, Lcom/genonbeta/TrebleShot/app/ProgressDialog$ViewUpdateHandler;->this$0:Lcom/genonbeta/TrebleShot/app/ProgressDialog;

    invoke-static {v1}, Lcom/genonbeta/TrebleShot/app/ProgressDialog;->access$200(Lcom/genonbeta/TrebleShot/app/ProgressDialog;)Ljava/lang/String;

    move-result-object v1

    .line 486
    iget-object v5, p0, Lcom/genonbeta/TrebleShot/app/ProgressDialog$ViewUpdateHandler;->this$0:Lcom/genonbeta/TrebleShot/app/ProgressDialog;

    invoke-static {v5}, Lcom/genonbeta/TrebleShot/app/ProgressDialog;->access$300(Lcom/genonbeta/TrebleShot/app/ProgressDialog;)Landroid/widget/TextView;

    move-result-object v5

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v2

    invoke-static {v1, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4f

    .line 488
    :cond_46
    iget-object v1, p0, Lcom/genonbeta/TrebleShot/app/ProgressDialog$ViewUpdateHandler;->this$0:Lcom/genonbeta/TrebleShot/app/ProgressDialog;

    invoke-static {v1}, Lcom/genonbeta/TrebleShot/app/ProgressDialog;->access$300(Lcom/genonbeta/TrebleShot/app/ProgressDialog;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 490
    :goto_4f
    iget-object v1, p0, Lcom/genonbeta/TrebleShot/app/ProgressDialog$ViewUpdateHandler;->this$0:Lcom/genonbeta/TrebleShot/app/ProgressDialog;

    invoke-static {v1}, Lcom/genonbeta/TrebleShot/app/ProgressDialog;->access$400(Lcom/genonbeta/TrebleShot/app/ProgressDialog;)Ljava/text/NumberFormat;

    move-result-object v1

    if-eqz v1, :cond_87

    int-to-double v4, p1

    int-to-double v0, v0

    .line 491
    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v4, v0

    .line 492
    new-instance p1, Landroid/text/SpannableString;

    iget-object v0, p0, Lcom/genonbeta/TrebleShot/app/ProgressDialog$ViewUpdateHandler;->this$0:Lcom/genonbeta/TrebleShot/app/ProgressDialog;

    invoke-static {v0}, Lcom/genonbeta/TrebleShot/app/ProgressDialog;->access$400(Lcom/genonbeta/TrebleShot/app/ProgressDialog;)Ljava/text/NumberFormat;

    move-result-object v0

    invoke-virtual {v0, v4, v5}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 493
    new-instance v0, Landroid/text/style/StyleSpan;

    invoke-direct {v0, v2}, Landroid/text/style/StyleSpan;-><init>(I)V

    .line 494
    invoke-virtual {p1}, Landroid/text/SpannableString;->length()I

    move-result v1

    const/16 v2, 0x21

    .line 493
    invoke-virtual {p1, v0, v3, v1, v2}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 495
    iget-object v0, p0, Lcom/genonbeta/TrebleShot/app/ProgressDialog$ViewUpdateHandler;->this$0:Lcom/genonbeta/TrebleShot/app/ProgressDialog;

    invoke-static {v0}, Lcom/genonbeta/TrebleShot/app/ProgressDialog;->access$500(Lcom/genonbeta/TrebleShot/app/ProgressDialog;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_90

    .line 497
    :cond_87
    iget-object p1, p0, Lcom/genonbeta/TrebleShot/app/ProgressDialog$ViewUpdateHandler;->this$0:Lcom/genonbeta/TrebleShot/app/ProgressDialog;

    invoke-static {p1}, Lcom/genonbeta/TrebleShot/app/ProgressDialog;->access$500(Lcom/genonbeta/TrebleShot/app/ProgressDialog;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_90
    return-void
.end method
