.class Lcom/genonbeta/android/framework/app/ListViewFragment$2;
.super Ljava/lang/Object;
.source "ListViewFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/genonbeta/android/framework/app/ListViewFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/genonbeta/android/framework/app/ListViewFragment;


# direct methods
.method constructor <init>(Lcom/genonbeta/android/framework/app/ListViewFragment;)V
    .registers 2

    .line 38
    iput-object p1, p0, Lcom/genonbeta/android/framework/app/ListViewFragment$2;->this$0:Lcom/genonbeta/android/framework/app/ListViewFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 42
    iget-object v0, p0, Lcom/genonbeta/android/framework/app/ListViewFragment$2;->this$0:Lcom/genonbeta/android/framework/app/ListViewFragment;

    move-object v1, p1

    check-cast v1, Landroid/widget/ListView;

    move-object v2, p2

    move v3, p3

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/genonbeta/android/framework/app/ListViewFragment;->onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V

    return-void
.end method
