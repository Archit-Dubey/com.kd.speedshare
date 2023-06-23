.class Lcom/genonbeta/TrebleShot/app/EditableListFragment$1;
.super Ljava/lang/Object;
.source "EditableListFragment.java"

# interfaces
.implements Lcom/genonbeta/TrebleShot/app/EditableListFragment$FilteringDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/genonbeta/TrebleShot/app/EditableListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/genonbeta/TrebleShot/app/EditableListFragment$FilteringDelegate<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/genonbeta/TrebleShot/app/EditableListFragment;


# direct methods
.method constructor <init>(Lcom/genonbeta/TrebleShot/app/EditableListFragment;)V
    .registers 2

    .line 84
    iput-object p1, p0, Lcom/genonbeta/TrebleShot/app/EditableListFragment$1;->this$0:Lcom/genonbeta/TrebleShot/app/EditableListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public changeFilteringKeyword(Ljava/lang/String;)Z
    .registers 3

    .line 88
    iget-object v0, p0, Lcom/genonbeta/TrebleShot/app/EditableListFragment$1;->this$0:Lcom/genonbeta/TrebleShot/app/EditableListFragment;

    invoke-static {v0, p1}, Lcom/genonbeta/TrebleShot/app/EditableListFragment;->access$002(Lcom/genonbeta/TrebleShot/app/EditableListFragment;Ljava/lang/String;)Ljava/lang/String;

    const/4 p1, 0x1

    return p1
.end method

.method public getFilteringKeyword(Lcom/genonbeta/TrebleShot/app/EditableListFragmentImpl;)[Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/genonbeta/TrebleShot/app/EditableListFragmentImpl<",
            "TT;>;)[",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 96
    iget-object p1, p0, Lcom/genonbeta/TrebleShot/app/EditableListFragment$1;->this$0:Lcom/genonbeta/TrebleShot/app/EditableListFragment;

    invoke-static {p1}, Lcom/genonbeta/TrebleShot/app/EditableListFragment;->access$000(Lcom/genonbeta/TrebleShot/app/EditableListFragment;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_21

    iget-object p1, p0, Lcom/genonbeta/TrebleShot/app/EditableListFragment$1;->this$0:Lcom/genonbeta/TrebleShot/app/EditableListFragment;

    invoke-static {p1}, Lcom/genonbeta/TrebleShot/app/EditableListFragment;->access$000(Lcom/genonbeta/TrebleShot/app/EditableListFragment;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-lez p1, :cond_21

    .line 97
    iget-object p1, p0, Lcom/genonbeta/TrebleShot/app/EditableListFragment$1;->this$0:Lcom/genonbeta/TrebleShot/app/EditableListFragment;

    invoke-static {p1}, Lcom/genonbeta/TrebleShot/app/EditableListFragment;->access$000(Lcom/genonbeta/TrebleShot/app/EditableListFragment;)Ljava/lang/String;

    move-result-object p1

    const-string v0, " "

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_21
    const/4 p1, 0x0

    return-object p1
.end method
