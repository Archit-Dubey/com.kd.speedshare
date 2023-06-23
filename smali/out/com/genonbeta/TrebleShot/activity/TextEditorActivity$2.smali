.class Lcom/genonbeta/TrebleShot/activity/TextEditorActivity$2;
.super Ljava/lang/Object;
.source "TextEditorActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/genonbeta/TrebleShot/activity/TextEditorActivity;->onBackPressed()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/genonbeta/TrebleShot/activity/TextEditorActivity;


# direct methods
.method constructor <init>(Lcom/genonbeta/TrebleShot/activity/TextEditorActivity;)V
    .registers 2

    .line 156
    iput-object p1, p0, Lcom/genonbeta/TrebleShot/activity/TextEditorActivity$2;->this$0:Lcom/genonbeta/TrebleShot/activity/TextEditorActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 2

    .line 160
    iget-object p1, p0, Lcom/genonbeta/TrebleShot/activity/TextEditorActivity$2;->this$0:Lcom/genonbeta/TrebleShot/activity/TextEditorActivity;

    invoke-virtual {p1}, Lcom/genonbeta/TrebleShot/activity/TextEditorActivity;->saveText()V

    .line 161
    iget-object p1, p0, Lcom/genonbeta/TrebleShot/activity/TextEditorActivity$2;->this$0:Lcom/genonbeta/TrebleShot/activity/TextEditorActivity;

    invoke-virtual {p1}, Lcom/genonbeta/TrebleShot/activity/TextEditorActivity;->finish()V

    return-void
.end method
