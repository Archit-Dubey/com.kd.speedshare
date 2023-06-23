.class Lcom/genonbeta/TrebleShot/dialog/RationalePermissionRequest$3;
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

    .line 65
    iput-object p1, p0, Lcom/genonbeta/TrebleShot/dialog/RationalePermissionRequest$3;->this$0:Lcom/genonbeta/TrebleShot/dialog/RationalePermissionRequest;

    iput-object p2, p0, Lcom/genonbeta/TrebleShot/dialog/RationalePermissionRequest$3;->val$activity:Lcom/genonbeta/TrebleShot/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 3

    .line 69
    iget-object p1, p0, Lcom/genonbeta/TrebleShot/dialog/RationalePermissionRequest$3;->val$activity:Lcom/genonbeta/TrebleShot/app/Activity;

    invoke-virtual {p1}, Lcom/genonbeta/TrebleShot/app/Activity;->finish()V

    return-void
.end method
