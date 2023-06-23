.class Lcom/genonbeta/TrebleShot/fragment/HomeFragment$1;
.super Ljava/lang/Object;
.source "HomeFragment.java"

# interfaces
.implements Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;


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

.field final synthetic val$bottomNavigationView:Lcom/google/android/material/bottomnavigation/BottomNavigationView;


# direct methods
.method constructor <init>(Lcom/genonbeta/TrebleShot/fragment/HomeFragment;Lcom/google/android/material/bottomnavigation/BottomNavigationView;)V
    .registers 3

    .line 49
    iput-object p1, p0, Lcom/genonbeta/TrebleShot/fragment/HomeFragment$1;->this$0:Lcom/genonbeta/TrebleShot/fragment/HomeFragment;

    iput-object p2, p0, Lcom/genonbeta/TrebleShot/fragment/HomeFragment$1;->val$bottomNavigationView:Lcom/google/android/material/bottomnavigation/BottomNavigationView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .registers 2

    return-void
.end method

.method public onPageScrolled(IFI)V
    .registers 4

    return-void
.end method

.method public onPageSelected(I)V
    .registers 3

    .line 59
    iget-object v0, p0, Lcom/genonbeta/TrebleShot/fragment/HomeFragment$1;->val$bottomNavigationView:Lcom/google/android/material/bottomnavigation/BottomNavigationView;

    invoke-virtual {v0, p1}, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->setSelectedItemId(I)V

    return-void
.end method
