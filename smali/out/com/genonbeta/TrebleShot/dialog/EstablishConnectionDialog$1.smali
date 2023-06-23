.class Lcom/genonbeta/TrebleShot/dialog/EstablishConnectionDialog$1;
.super Ljava/lang/Object;
.source "EstablishConnectionDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/genonbeta/TrebleShot/dialog/EstablishConnectionDialog;-><init>(Landroid/app/Activity;Lcom/genonbeta/TrebleShot/object/NetworkDevice;Lcom/genonbeta/TrebleShot/callback/OnDeviceSelectedListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/genonbeta/TrebleShot/dialog/EstablishConnectionDialog;

.field final synthetic val$interrupter:Lcom/genonbeta/android/framework/util/Interrupter;


# direct methods
.method constructor <init>(Lcom/genonbeta/TrebleShot/dialog/EstablishConnectionDialog;Lcom/genonbeta/android/framework/util/Interrupter;)V
    .registers 3

    .line 46
    iput-object p1, p0, Lcom/genonbeta/TrebleShot/dialog/EstablishConnectionDialog$1;->this$0:Lcom/genonbeta/TrebleShot/dialog/EstablishConnectionDialog;

    iput-object p2, p0, Lcom/genonbeta/TrebleShot/dialog/EstablishConnectionDialog$1;->val$interrupter:Lcom/genonbeta/android/framework/util/Interrupter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 3

    .line 50
    iget-object p1, p0, Lcom/genonbeta/TrebleShot/dialog/EstablishConnectionDialog$1;->val$interrupter:Lcom/genonbeta/android/framework/util/Interrupter;

    invoke-virtual {p1}, Lcom/genonbeta/android/framework/util/Interrupter;->interrupt()Z

    return-void
.end method
