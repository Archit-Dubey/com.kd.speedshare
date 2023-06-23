.class Lcom/genonbeta/TrebleShot/dialog/ProfileEditorDialog$3;
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

.field final synthetic val$editText:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/genonbeta/TrebleShot/dialog/ProfileEditorDialog;Landroid/widget/EditText;Lcom/genonbeta/TrebleShot/app/Activity;)V
    .registers 4

    .line 59
    iput-object p1, p0, Lcom/genonbeta/TrebleShot/dialog/ProfileEditorDialog$3;->this$0:Lcom/genonbeta/TrebleShot/dialog/ProfileEditorDialog;

    iput-object p2, p0, Lcom/genonbeta/TrebleShot/dialog/ProfileEditorDialog$3;->val$editText:Landroid/widget/EditText;

    iput-object p3, p0, Lcom/genonbeta/TrebleShot/dialog/ProfileEditorDialog$3;->val$activity:Lcom/genonbeta/TrebleShot/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4

    .line 63
    iget-object p1, p0, Lcom/genonbeta/TrebleShot/dialog/ProfileEditorDialog$3;->this$0:Lcom/genonbeta/TrebleShot/dialog/ProfileEditorDialog;

    invoke-virtual {p1}, Lcom/genonbeta/TrebleShot/dialog/ProfileEditorDialog;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/genonbeta/TrebleShot/util/AppUtils;->getDefaultPreferences(Landroid/content/Context;)Lcom/genonbeta/android/framework/preference/SuperPreferences;

    move-result-object p1

    invoke-virtual {p1}, Lcom/genonbeta/android/framework/preference/SuperPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    iget-object p2, p0, Lcom/genonbeta/TrebleShot/dialog/ProfileEditorDialog$3;->val$editText:Landroid/widget/EditText;

    .line 64
    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "device_name"

    invoke-interface {p1, v0, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 65
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 67
    iget-object p1, p0, Lcom/genonbeta/TrebleShot/dialog/ProfileEditorDialog$3;->val$activity:Lcom/genonbeta/TrebleShot/app/Activity;

    invoke-virtual {p1}, Lcom/genonbeta/TrebleShot/app/Activity;->notifyUserProfileChanged()V

    return-void
.end method
