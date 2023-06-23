.class Lcom/genonbeta/TrebleShot/dialog/ProfileEditorDialog$2;
.super Ljava/lang/Object;
.source "ProfileEditorDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/genonbeta/TrebleShot/dialog/ProfileEditorDialog;-><init>(Lcom/genonbeta/TrebleShot/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/genonbeta/TrebleShot/dialog/ProfileEditorDialog;

.field final synthetic val$activity:Lcom/genonbeta/TrebleShot/app/Activity;


# direct methods
.method constructor <init>(Lcom/genonbeta/TrebleShot/dialog/ProfileEditorDialog;Lcom/genonbeta/TrebleShot/app/Activity;)V
    .registers 3

    .line 49
    iput-object p1, p0, Lcom/genonbeta/TrebleShot/dialog/ProfileEditorDialog$2;->this$0:Lcom/genonbeta/TrebleShot/dialog/ProfileEditorDialog;

    iput-object p2, p0, Lcom/genonbeta/TrebleShot/dialog/ProfileEditorDialog$2;->val$activity:Lcom/genonbeta/TrebleShot/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 3

    .line 53
    iget-object p1, p0, Lcom/genonbeta/TrebleShot/dialog/ProfileEditorDialog$2;->val$activity:Lcom/genonbeta/TrebleShot/app/Activity;

    const-string p2, "profilePicture"

    invoke-virtual {p1, p2}, Lcom/genonbeta/TrebleShot/app/Activity;->deleteFile(Ljava/lang/String;)Z

    .line 54
    iget-object p1, p0, Lcom/genonbeta/TrebleShot/dialog/ProfileEditorDialog$2;->val$activity:Lcom/genonbeta/TrebleShot/app/Activity;

    invoke-virtual {p1}, Lcom/genonbeta/TrebleShot/app/Activity;->notifyUserProfileChanged()V

    return-void
.end method
