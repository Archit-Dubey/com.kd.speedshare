.class Lcom/genonbeta/TrebleShot/dialog/EstablishConnectionDialog$2$3$1;
.super Ljava/lang/Object;
.source "EstablishConnectionDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/genonbeta/TrebleShot/dialog/EstablishConnectionDialog$2$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/genonbeta/TrebleShot/dialog/EstablishConnectionDialog$2$3;


# direct methods
.method constructor <init>(Lcom/genonbeta/TrebleShot/dialog/EstablishConnectionDialog$2$3;)V
    .registers 2

    .line 165
    iput-object p1, p0, Lcom/genonbeta/TrebleShot/dialog/EstablishConnectionDialog$2$3$1;->this$2:Lcom/genonbeta/TrebleShot/dialog/EstablishConnectionDialog$2$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 3

    .line 169
    iget-object p1, p0, Lcom/genonbeta/TrebleShot/dialog/EstablishConnectionDialog$2$3$1;->this$2:Lcom/genonbeta/TrebleShot/dialog/EstablishConnectionDialog$2$3;

    iget-object p1, p1, Lcom/genonbeta/TrebleShot/dialog/EstablishConnectionDialog$2$3;->this$1:Lcom/genonbeta/TrebleShot/dialog/EstablishConnectionDialog$2;

    iget-object p1, p1, Lcom/genonbeta/TrebleShot/dialog/EstablishConnectionDialog$2;->this$0:Lcom/genonbeta/TrebleShot/dialog/EstablishConnectionDialog;

    invoke-virtual {p1}, Lcom/genonbeta/TrebleShot/dialog/EstablishConnectionDialog;->show()V

    return-void
.end method
