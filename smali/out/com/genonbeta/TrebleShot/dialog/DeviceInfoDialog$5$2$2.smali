.class Lcom/genonbeta/TrebleShot/dialog/DeviceInfoDialog$5$2$2;
.super Ljava/lang/Object;
.source "DeviceInfoDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/genonbeta/TrebleShot/dialog/DeviceInfoDialog$5$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/genonbeta/TrebleShot/dialog/DeviceInfoDialog$5$2;


# direct methods
.method constructor <init>(Lcom/genonbeta/TrebleShot/dialog/DeviceInfoDialog$5$2;)V
    .registers 2

    .line 205
    iput-object p1, p0, Lcom/genonbeta/TrebleShot/dialog/DeviceInfoDialog$5$2$2;->this$2:Lcom/genonbeta/TrebleShot/dialog/DeviceInfoDialog$5$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 3

    .line 209
    iget-object p1, p0, Lcom/genonbeta/TrebleShot/dialog/DeviceInfoDialog$5$2$2;->this$2:Lcom/genonbeta/TrebleShot/dialog/DeviceInfoDialog$5$2;

    iget-object p1, p1, Lcom/genonbeta/TrebleShot/dialog/DeviceInfoDialog$5$2;->this$1:Lcom/genonbeta/TrebleShot/dialog/DeviceInfoDialog$5;

    iget-object p1, p1, Lcom/genonbeta/TrebleShot/dialog/DeviceInfoDialog$5;->val$activity:Landroid/app/Activity;

    iget-object p2, p0, Lcom/genonbeta/TrebleShot/dialog/DeviceInfoDialog$5$2$2;->this$2:Lcom/genonbeta/TrebleShot/dialog/DeviceInfoDialog$5$2;

    iget-object p2, p2, Lcom/genonbeta/TrebleShot/dialog/DeviceInfoDialog$5$2;->val$receivedFile:Lcom/genonbeta/android/framework/io/DocumentFile;

    invoke-static {p1, p2}, Lcom/genonbeta/TrebleShot/util/FileUtils;->openUriForeground(Landroid/app/Activity;Lcom/genonbeta/android/framework/io/DocumentFile;)Z

    return-void
.end method
