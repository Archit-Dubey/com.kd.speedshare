.class Lcom/genonbeta/TrebleShot/dialog/RationalePermissionRequest$2;
.super Ljava/lang/Object;
.source "RationalePermissionRequest.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/genonbeta/TrebleShot/dialog/RationalePermissionRequest;-><init>(Lcom/genonbeta/TrebleShot/app/Activity;Lcom/genonbeta/TrebleShot/dialog/RationalePermissionRequest$PermissionRequest;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/genonbeta/TrebleShot/dialog/RationalePermissionRequest;

.field final synthetic val$activity:Lcom/genonbeta/TrebleShot/app/Activity;


# direct methods
.method constructor <init>(Lcom/genonbeta/TrebleShot/dialog/RationalePermissionRequest;Lcom/genonbeta/TrebleShot/app/Activity;)V
    .registers 3

    .line 55
    iput-object p1, p0, Lcom/genonbeta/TrebleShot/dialog/RationalePermissionRequest$2;->this$0:Lcom/genonbeta/TrebleShot/dialog/RationalePermissionRequest;

    iput-object p2, p0, Lcom/genonbeta/TrebleShot/dialog/RationalePermissionRequest$2;->val$activity:Lcom/genonbeta/TrebleShot/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 6

    .line 59
    iget-object p1, p0, Lcom/genonbeta/TrebleShot/dialog/RationalePermissionRequest$2;->val$activity:Lcom/genonbeta/TrebleShot/app/Activity;

    const/4 p2, 0x1

    new-array v0, p2, [Ljava/lang/String;

    iget-object v1, p0, Lcom/genonbeta/TrebleShot/dialog/RationalePermissionRequest$2;->this$0:Lcom/genonbeta/TrebleShot/dialog/RationalePermissionRequest;

    iget-object v1, v1, Lcom/genonbeta/TrebleShot/dialog/RationalePermissionRequest;->mPermissionQueue:Lcom/genonbeta/TrebleShot/dialog/RationalePermissionRequest$PermissionRequest;

    iget-object v1, v1, Lcom/genonbeta/TrebleShot/dialog/RationalePermissionRequest$PermissionRequest;->permission:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {p1, v0, p2}, Landroidx/core/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    return-void
.end method
