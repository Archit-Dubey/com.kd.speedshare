.class Lcom/genonbeta/TrebleShot/dialog/ManualIpAddressConnectionDialog$2;
.super Ljava/lang/Object;
.source "ManualIpAddressConnectionDialog.java"

# interfaces
.implements Lcom/genonbeta/TrebleShot/dialog/AbstractFailureAwareDialog$OnProceedClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/genonbeta/TrebleShot/dialog/ManualIpAddressConnectionDialog;-><init>(Landroid/app/Activity;Lcom/genonbeta/TrebleShot/ui/UIConnectionUtils;Lcom/genonbeta/TrebleShot/ui/callback/NetworkDeviceSelectedListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/genonbeta/TrebleShot/dialog/ManualIpAddressConnectionDialog;

.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$utils:Lcom/genonbeta/TrebleShot/ui/UIConnectionUtils;


# direct methods
.method constructor <init>(Lcom/genonbeta/TrebleShot/dialog/ManualIpAddressConnectionDialog;Landroid/app/Activity;Lcom/genonbeta/TrebleShot/ui/UIConnectionUtils;)V
    .registers 4

    .line 47
    iput-object p1, p0, Lcom/genonbeta/TrebleShot/dialog/ManualIpAddressConnectionDialog$2;->this$0:Lcom/genonbeta/TrebleShot/dialog/ManualIpAddressConnectionDialog;

    iput-object p2, p0, Lcom/genonbeta/TrebleShot/dialog/ManualIpAddressConnectionDialog$2;->val$activity:Landroid/app/Activity;

    iput-object p3, p0, Lcom/genonbeta/TrebleShot/dialog/ManualIpAddressConnectionDialog$2;->val$utils:Lcom/genonbeta/TrebleShot/ui/UIConnectionUtils;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProceedClick(Landroidx/appcompat/app/AlertDialog;)Z
    .registers 4

    .line 51
    iget-object p1, p0, Lcom/genonbeta/TrebleShot/dialog/ManualIpAddressConnectionDialog$2;->this$0:Lcom/genonbeta/TrebleShot/dialog/ManualIpAddressConnectionDialog;

    iget-object v0, p0, Lcom/genonbeta/TrebleShot/dialog/ManualIpAddressConnectionDialog$2;->val$activity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/genonbeta/TrebleShot/dialog/ManualIpAddressConnectionDialog$2;->val$utils:Lcom/genonbeta/TrebleShot/ui/UIConnectionUtils;

    invoke-static {p1, v0, v1}, Lcom/genonbeta/TrebleShot/dialog/ManualIpAddressConnectionDialog;->access$200(Lcom/genonbeta/TrebleShot/dialog/ManualIpAddressConnectionDialog;Landroid/app/Activity;Lcom/genonbeta/TrebleShot/ui/UIConnectionUtils;)V

    const/4 p1, 0x0

    return p1
.end method
