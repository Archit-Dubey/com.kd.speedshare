.class public Lcom/genonbeta/TrebleShot/ui/callback/SharingActionModeCallback$SelectionDuo;
.super Ljava/lang/Object;
.source "SharingActionModeCallback.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/genonbeta/TrebleShot/ui/callback/SharingActionModeCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SelectionDuo"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/genonbeta/TrebleShot/object/Shareable;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private mAdapter:Lcom/genonbeta/TrebleShot/widget/EditableListAdapterImpl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/genonbeta/TrebleShot/widget/EditableListAdapterImpl<",
            "TT;>;"
        }
    .end annotation
.end field

.field private mFragment:Lcom/genonbeta/TrebleShot/app/EditableListFragmentImpl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/genonbeta/TrebleShot/app/EditableListFragmentImpl<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/genonbeta/TrebleShot/app/EditableListFragmentImpl;Lcom/genonbeta/TrebleShot/widget/EditableListAdapterImpl;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/genonbeta/TrebleShot/app/EditableListFragmentImpl<",
            "TT;>;",
            "Lcom/genonbeta/TrebleShot/widget/EditableListAdapterImpl<",
            "TT;>;)V"
        }
    .end annotation

    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 110
    iput-object p1, p0, Lcom/genonbeta/TrebleShot/ui/callback/SharingActionModeCallback$SelectionDuo;->mFragment:Lcom/genonbeta/TrebleShot/app/EditableListFragmentImpl;

    .line 111
    iput-object p2, p0, Lcom/genonbeta/TrebleShot/ui/callback/SharingActionModeCallback$SelectionDuo;->mAdapter:Lcom/genonbeta/TrebleShot/widget/EditableListAdapterImpl;

    return-void
.end method


# virtual methods
.method public getAdapter()Lcom/genonbeta/TrebleShot/widget/EditableListAdapterImpl;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/genonbeta/TrebleShot/widget/EditableListAdapterImpl<",
            "TT;>;"
        }
    .end annotation

    .line 116
    iget-object v0, p0, Lcom/genonbeta/TrebleShot/ui/callback/SharingActionModeCallback$SelectionDuo;->mAdapter:Lcom/genonbeta/TrebleShot/widget/EditableListAdapterImpl;

    return-object v0
.end method

.method public getFragment()Lcom/genonbeta/TrebleShot/app/EditableListFragmentImpl;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/genonbeta/TrebleShot/app/EditableListFragmentImpl<",
            "TT;>;"
        }
    .end annotation

    .line 121
    iget-object v0, p0, Lcom/genonbeta/TrebleShot/ui/callback/SharingActionModeCallback$SelectionDuo;->mFragment:Lcom/genonbeta/TrebleShot/app/EditableListFragmentImpl;

    return-object v0
.end method
