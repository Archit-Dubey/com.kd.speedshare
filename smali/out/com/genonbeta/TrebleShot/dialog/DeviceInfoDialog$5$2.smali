.class Lcom/genonbeta/TrebleShot/dialog/DeviceInfoDialog$5$2;
.super Ljava/lang/Object;
.source "DeviceInfoDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/genonbeta/TrebleShot/dialog/DeviceInfoDialog$5;->onRun()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/genonbeta/TrebleShot/dialog/DeviceInfoDialog$5;

.field final synthetic val$receivedFile:Lcom/genonbeta/android/framework/io/DocumentFile;


# direct methods
.method constructor <init>(Lcom/genonbeta/TrebleShot/dialog/DeviceInfoDialog$5;Lcom/genonbeta/android/framework/io/DocumentFile;)V
    .registers 3

    .line 180
    iput-object p1, p0, Lcom/genonbeta/TrebleShot/dialog/DeviceInfoDialog$5$2;->this$1:Lcom/genonbeta/TrebleShot/dialog/DeviceInfoDialog$5;

    iput-object p2, p0, Lcom/genonbeta/TrebleShot/dialog/DeviceInfoDialog$5$2;->val$receivedFile:Lcom/genonbeta/android/framework/io/DocumentFile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 184
    iget-object v0, p0, Lcom/genonbeta/TrebleShot/dialog/DeviceInfoDialog$5$2;->this$1:Lcom/genonbeta/TrebleShot/dialog/DeviceInfoDialog$5;

    iget-object v0, v0, Lcom/genonbeta/TrebleShot/dialog/DeviceInfoDialog$5;->val$activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_67

    .line 185
    iget-object v0, p0, Lcom/genonbeta/TrebleShot/dialog/DeviceInfoDialog$5$2;->val$receivedFile:Lcom/genonbeta/android/framework/io/DocumentFile;

    const/4 v1, 0x0

    const v2, 0x7f110033

    if-nez v0, :cond_3d

    .line 186
    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/genonbeta/TrebleShot/dialog/DeviceInfoDialog$5$2;->this$1:Lcom/genonbeta/TrebleShot/dialog/DeviceInfoDialog$5;

    iget-object v3, v3, Lcom/genonbeta/TrebleShot/dialog/DeviceInfoDialog$5;->val$activity:Landroid/app/Activity;

    invoke-direct {v0, v3}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f110191

    .line 187
    invoke-virtual {v0, v3}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    const v3, 0x7f110107

    .line 188
    invoke-virtual {v0, v3}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    .line 189
    invoke-virtual {v0, v2, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f110069

    new-instance v2, Lcom/genonbeta/TrebleShot/dialog/DeviceInfoDialog$5$2$1;

    invoke-direct {v2, p0}, Lcom/genonbeta/TrebleShot/dialog/DeviceInfoDialog$5$2$1;-><init>(Lcom/genonbeta/TrebleShot/dialog/DeviceInfoDialog$5$2;)V

    .line 190
    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    .line 198
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->show()Landroidx/appcompat/app/AlertDialog;

    goto :goto_67

    .line 200
    :cond_3d
    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/genonbeta/TrebleShot/dialog/DeviceInfoDialog$5$2;->this$1:Lcom/genonbeta/TrebleShot/dialog/DeviceInfoDialog$5;

    iget-object v3, v3, Lcom/genonbeta/TrebleShot/dialog/DeviceInfoDialog$5;->val$activity:Landroid/app/Activity;

    invoke-direct {v0, v3}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f11022c

    .line 201
    invoke-virtual {v0, v3}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    const v3, 0x7f110114

    .line 202
    invoke-virtual {v0, v3}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    .line 203
    invoke-virtual {v0, v2, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f110058

    new-instance v2, Lcom/genonbeta/TrebleShot/dialog/DeviceInfoDialog$5$2$2;

    invoke-direct {v2, p0}, Lcom/genonbeta/TrebleShot/dialog/DeviceInfoDialog$5$2$2;-><init>(Lcom/genonbeta/TrebleShot/dialog/DeviceInfoDialog$5$2;)V

    .line 204
    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    .line 212
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->show()Landroidx/appcompat/app/AlertDialog;

    :cond_67
    :goto_67
    return-void
.end method
