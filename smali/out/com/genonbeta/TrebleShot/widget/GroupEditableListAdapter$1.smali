.class Lcom/genonbeta/TrebleShot/widget/GroupEditableListAdapter$1;
.super Ljava/lang/Object;
.source "GroupEditableListAdapter.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/genonbeta/TrebleShot/widget/GroupEditableListAdapter;->onLoad()Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/genonbeta/android/framework/util/listing/ComparableMerger<",
        "TT;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/genonbeta/TrebleShot/widget/GroupEditableListAdapter;


# direct methods
.method constructor <init>(Lcom/genonbeta/TrebleShot/widget/GroupEditableListAdapter;)V
    .registers 2

    .line 60
    iput-object p1, p0, Lcom/genonbeta/TrebleShot/widget/GroupEditableListAdapter$1;->this$0:Lcom/genonbeta/TrebleShot/widget/GroupEditableListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/genonbeta/android/framework/util/listing/ComparableMerger;Lcom/genonbeta/android/framework/util/listing/ComparableMerger;)I
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/genonbeta/android/framework/util/listing/ComparableMerger<",
            "TT;>;",
            "Lcom/genonbeta/android/framework/util/listing/ComparableMerger<",
            "TT;>;)I"
        }
    .end annotation

    .line 64
    invoke-virtual {p2, p1}, Lcom/genonbeta/android/framework/util/listing/ComparableMerger;->compareTo(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3

    .line 60
    check-cast p1, Lcom/genonbeta/android/framework/util/listing/ComparableMerger;

    check-cast p2, Lcom/genonbeta/android/framework/util/listing/ComparableMerger;

    invoke-virtual {p0, p1, p2}, Lcom/genonbeta/TrebleShot/widget/GroupEditableListAdapter$1;->compare(Lcom/genonbeta/android/framework/util/listing/ComparableMerger;Lcom/genonbeta/android/framework/util/listing/ComparableMerger;)I

    move-result p1

    return p1
.end method
