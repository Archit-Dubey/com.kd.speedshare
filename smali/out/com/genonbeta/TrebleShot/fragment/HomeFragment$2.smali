.class Lcom/genonbeta/TrebleShot/fragment/HomeFragment$2;
.super Ljava/lang/Object;
.source "HomeFragment.java"

# interfaces
.implements Lcom/google/android/material/bottomnavigation/BottomNavigationView$OnNavigationItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/genonbeta/TrebleShot/fragment/HomeFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/genonbeta/TrebleShot/fragment/HomeFragment;


# direct methods
.method constructor <init>(Lcom/genonbeta/TrebleShot/fragment/HomeFragment;)V
    .registers 2

    .line 70
    iput-object p1, p0, Lcom/genonbeta/TrebleShot/fragment/HomeFragment$2;->this$0:Lcom/genonbeta/TrebleShot/fragment/HomeFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onNavigationItemSelected(Landroid/view/MenuItem;)Z
    .registers 3

    .line 74
    iget-object v0, p0, Lcom/genonbeta/TrebleShot/fragment/HomeFragment$2;->this$0:Lcom/genonbeta/TrebleShot/fragment/HomeFragment;

    invoke-static {v0}, Lcom/genonbeta/TrebleShot/fragment/HomeFragment;->access$000(Lcom/genonbeta/TrebleShot/fragment/HomeFragment;)Landroidx/viewpager/widget/ViewPager;

    move-result-object v0

    invoke-interface {p1}, Landroid/view/MenuItem;->getOrder()I

    move-result p1

    invoke-virtual {v0, p1}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    const/4 p1, 0x1

    return p1
.end method
