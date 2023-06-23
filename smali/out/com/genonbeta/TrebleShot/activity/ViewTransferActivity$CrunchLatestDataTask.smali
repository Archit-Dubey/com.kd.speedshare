.class public Lcom/genonbeta/TrebleShot/activity/ViewTransferActivity$CrunchLatestDataTask;
.super Landroid/os/AsyncTask;
.source "ViewTransferActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/genonbeta/TrebleShot/activity/ViewTransferActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CrunchLatestDataTask"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/genonbeta/TrebleShot/activity/ViewTransferActivity$CrunchLatestDataTask$PostExecuteListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Lcom/genonbeta/TrebleShot/activity/ViewTransferActivity;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private mListener:Lcom/genonbeta/TrebleShot/activity/ViewTransferActivity$CrunchLatestDataTask$PostExecuteListener;

.field private mRestartRequested:Z


# direct methods
.method public constructor <init>(Lcom/genonbeta/TrebleShot/activity/ViewTransferActivity$CrunchLatestDataTask$PostExecuteListener;)V
    .registers 3

    .line 645
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    const/4 v0, 0x0

    .line 642
    iput-boolean v0, p0, Lcom/genonbeta/TrebleShot/activity/ViewTransferActivity$CrunchLatestDataTask;->mRestartRequested:Z

    .line 646
    iput-object p1, p0, Lcom/genonbeta/TrebleShot/activity/ViewTransferActivity$CrunchLatestDataTask;->mListener:Lcom/genonbeta/TrebleShot/activity/ViewTransferActivity$CrunchLatestDataTask$PostExecuteListener;

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 639
    check-cast p1, [Lcom/genonbeta/TrebleShot/activity/ViewTransferActivity;

    invoke-virtual {p0, p1}, Lcom/genonbeta/TrebleShot/activity/ViewTransferActivity$CrunchLatestDataTask;->doInBackground([Lcom/genonbeta/TrebleShot/activity/ViewTransferActivity;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Lcom/genonbeta/TrebleShot/activity/ViewTransferActivity;)Ljava/lang/Void;
    .registers 8

    :cond_0
    const/4 v0, 0x0

    .line 654
    iput-boolean v0, p0, Lcom/genonbeta/TrebleShot/activity/ViewTransferActivity$CrunchLatestDataTask;->mRestartRequested:Z

    .line 656
    array-length v1, p1

    :goto_4
    if-ge v0, v1, :cond_22

    aget-object v2, p1, v0

    .line 657
    invoke-virtual {v2}, Lcom/genonbeta/TrebleShot/activity/ViewTransferActivity;->getGroup()Lcom/genonbeta/TrebleShot/object/TransferGroup;

    move-result-object v3

    if-eqz v3, :cond_1f

    .line 658
    invoke-virtual {v2}, Lcom/genonbeta/TrebleShot/activity/ViewTransferActivity;->getDatabase()Lcom/genonbeta/TrebleShot/database/AccessDatabase;

    move-result-object v3

    .line 659
    invoke-virtual {v2}, Lcom/genonbeta/TrebleShot/activity/ViewTransferActivity;->getGroup()Lcom/genonbeta/TrebleShot/object/TransferGroup;

    move-result-object v4

    iget-wide v4, v4, Lcom/genonbeta/TrebleShot/object/TransferGroup;->groupId:J

    invoke-virtual {v2}, Lcom/genonbeta/TrebleShot/activity/ViewTransferActivity;->getIndex()Lcom/genonbeta/TrebleShot/object/TransferGroup$Index;

    move-result-object v2

    invoke-virtual {v3, v4, v5, v2}, Lcom/genonbeta/TrebleShot/database/AccessDatabase;->calculateTransactionSize(JLcom/genonbeta/TrebleShot/object/TransferGroup$Index;)V

    :cond_1f
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 661
    :cond_22
    iget-boolean v0, p0, Lcom/genonbeta/TrebleShot/activity/ViewTransferActivity$CrunchLatestDataTask;->mRestartRequested:Z

    if-eqz v0, :cond_2c

    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/activity/ViewTransferActivity$CrunchLatestDataTask;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_2c
    const/4 p1, 0x0

    return-object p1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2

    .line 639
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/genonbeta/TrebleShot/activity/ViewTransferActivity$CrunchLatestDataTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .registers 2

    .line 677
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 678
    iget-object p1, p0, Lcom/genonbeta/TrebleShot/activity/ViewTransferActivity$CrunchLatestDataTask;->mListener:Lcom/genonbeta/TrebleShot/activity/ViewTransferActivity$CrunchLatestDataTask$PostExecuteListener;

    invoke-interface {p1}, Lcom/genonbeta/TrebleShot/activity/ViewTransferActivity$CrunchLatestDataTask$PostExecuteListener;->onPostExecute()V

    return-void
.end method

.method public requestRestart()Z
    .registers 3

    .line 668
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/activity/ViewTransferActivity$CrunchLatestDataTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->RUNNING:Landroid/os/AsyncTask$Status;

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask$Status;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    const/4 v0, 0x1

    .line 669
    iput-boolean v0, p0, Lcom/genonbeta/TrebleShot/activity/ViewTransferActivity$CrunchLatestDataTask;->mRestartRequested:Z

    .line 671
    :cond_f
    iget-boolean v0, p0, Lcom/genonbeta/TrebleShot/activity/ViewTransferActivity$CrunchLatestDataTask;->mRestartRequested:Z

    return v0
.end method
