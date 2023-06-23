.class Lcom/genonbeta/TrebleShot/activity/TextEditorActivity$3$1;
.super Ljava/lang/Object;
.source "TextEditorActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/genonbeta/TrebleShot/activity/TextEditorActivity$3;->onRun()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/genonbeta/TrebleShot/activity/TextEditorActivity$3;


# direct methods
.method constructor <init>(Lcom/genonbeta/TrebleShot/activity/TextEditorActivity$3;)V
    .registers 2

    .line 283
    iput-object p1, p0, Lcom/genonbeta/TrebleShot/activity/TextEditorActivity$3$1;->this$1:Lcom/genonbeta/TrebleShot/activity/TextEditorActivity$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4

    .line 287
    iget-object p1, p0, Lcom/genonbeta/TrebleShot/activity/TextEditorActivity$3$1;->this$1:Lcom/genonbeta/TrebleShot/activity/TextEditorActivity$3;

    iget-object p1, p1, Lcom/genonbeta/TrebleShot/activity/TextEditorActivity$3;->this$0:Lcom/genonbeta/TrebleShot/activity/TextEditorActivity;

    iget-object p2, p0, Lcom/genonbeta/TrebleShot/activity/TextEditorActivity$3$1;->this$1:Lcom/genonbeta/TrebleShot/activity/TextEditorActivity$3;

    iget-object p2, p2, Lcom/genonbeta/TrebleShot/activity/TextEditorActivity$3;->val$device:Lcom/genonbeta/TrebleShot/object/NetworkDevice;

    iget-object v0, p0, Lcom/genonbeta/TrebleShot/activity/TextEditorActivity$3$1;->this$1:Lcom/genonbeta/TrebleShot/activity/TextEditorActivity$3;

    iget-object v0, v0, Lcom/genonbeta/TrebleShot/activity/TextEditorActivity$3;->val$connection:Lcom/genonbeta/TrebleShot/object/NetworkDevice$Connection;

    invoke-virtual {p1, p2, v0}, Lcom/genonbeta/TrebleShot/activity/TextEditorActivity;->doCommunicate(Lcom/genonbeta/TrebleShot/object/NetworkDevice;Lcom/genonbeta/TrebleShot/object/NetworkDevice$Connection;)V

    return-void
.end method
