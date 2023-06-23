.class Lcom/genonbeta/TrebleShot/dialog/SelectionEditorDialog$SelfAdapter$1;
.super Ljava/lang/Object;
.source "SelectionEditorDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/genonbeta/TrebleShot/dialog/SelectionEditorDialog$SelfAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/genonbeta/TrebleShot/dialog/SelectionEditorDialog$SelfAdapter;

.field final synthetic val$removalSignView:Landroid/view/View;

.field final synthetic val$selectable:Lcom/genonbeta/android/framework/object/Selectable;


# direct methods
.method constructor <init>(Lcom/genonbeta/TrebleShot/dialog/SelectionEditorDialog$SelfAdapter;Landroid/view/View;Lcom/genonbeta/android/framework/object/Selectable;)V
    .registers 4

    .line 132
    iput-object p1, p0, Lcom/genonbeta/TrebleShot/dialog/SelectionEditorDialog$SelfAdapter$1;->this$1:Lcom/genonbeta/TrebleShot/dialog/SelectionEditorDialog$SelfAdapter;

    iput-object p2, p0, Lcom/genonbeta/TrebleShot/dialog/SelectionEditorDialog$SelfAdapter$1;->val$removalSignView:Landroid/view/View;

    iput-object p3, p0, Lcom/genonbeta/TrebleShot/dialog/SelectionEditorDialog$SelfAdapter$1;->val$selectable:Lcom/genonbeta/android/framework/object/Selectable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    .line 136
    iget-object p1, p0, Lcom/genonbeta/TrebleShot/dialog/SelectionEditorDialog$SelfAdapter$1;->this$1:Lcom/genonbeta/TrebleShot/dialog/SelectionEditorDialog$SelfAdapter;

    iget-object p1, p1, Lcom/genonbeta/TrebleShot/dialog/SelectionEditorDialog$SelfAdapter;->this$0:Lcom/genonbeta/TrebleShot/dialog/SelectionEditorDialog;

    iget-object v0, p0, Lcom/genonbeta/TrebleShot/dialog/SelectionEditorDialog$SelfAdapter$1;->val$removalSignView:Landroid/view/View;

    iget-object v1, p0, Lcom/genonbeta/TrebleShot/dialog/SelectionEditorDialog$SelfAdapter$1;->val$selectable:Lcom/genonbeta/android/framework/object/Selectable;

    invoke-virtual {p1, v0, v1}, Lcom/genonbeta/TrebleShot/dialog/SelectionEditorDialog;->checkReversed(Landroid/view/View;Lcom/genonbeta/android/framework/object/Selectable;)V

    return-void
.end method
