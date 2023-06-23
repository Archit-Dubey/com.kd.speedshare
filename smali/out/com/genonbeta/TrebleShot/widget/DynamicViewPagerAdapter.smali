.class public Lcom/genonbeta/TrebleShot/widget/DynamicViewPagerAdapter;
.super Landroidx/viewpager/widget/PagerAdapter;
.source "DynamicViewPagerAdapter.java"


# instance fields
.field private views:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 12
    invoke-direct {p0}, Landroidx/viewpager/widget/PagerAdapter;-><init>()V

    .line 15
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/genonbeta/TrebleShot/widget/DynamicViewPagerAdapter;->views:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public addView(Landroid/view/View;)I
    .registers 3

    .line 78
    iget-object v0, p0, Lcom/genonbeta/TrebleShot/widget/DynamicViewPagerAdapter;->views:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/genonbeta/TrebleShot/widget/DynamicViewPagerAdapter;->addView(Landroid/view/View;I)I

    move-result p1

    return p1
.end method

.method public addView(Landroid/view/View;I)I
    .registers 4

    .line 87
    iget-object v0, p0, Lcom/genonbeta/TrebleShot/widget/DynamicViewPagerAdapter;->views:Ljava/util/List;

    invoke-interface {v0, p2, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    return p2
.end method

.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .registers 4

    .line 51
    iget-object p3, p0, Lcom/genonbeta/TrebleShot/widget/DynamicViewPagerAdapter;->views:Ljava/util/List;

    invoke-interface {p3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/View;

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    return-void
.end method

.method public getCount()I
    .registers 2

    .line 61
    iget-object v0, p0, Lcom/genonbeta/TrebleShot/widget/DynamicViewPagerAdapter;->views:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItemPosition(Ljava/lang/Object;)I
    .registers 3

    .line 24
    iget-object v0, p0, Lcom/genonbeta/TrebleShot/widget/DynamicViewPagerAdapter;->views:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_a

    const/4 p1, -0x2

    :cond_a
    return p1
.end method

.method public getView(I)Landroid/view/View;
    .registers 3

    .line 124
    iget-object v0, p0, Lcom/genonbeta/TrebleShot/widget/DynamicViewPagerAdapter;->views:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    return-object p1
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .registers 4

    .line 38
    iget-object v0, p0, Lcom/genonbeta/TrebleShot/widget/DynamicViewPagerAdapter;->views:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/View;

    .line 39
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-object p2
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .registers 3

    if-ne p1, p2, :cond_4

    const/4 p1, 0x1

    goto :goto_5

    :cond_4
    const/4 p1, 0x0

    :goto_5
    return p1
.end method

.method public removeView(Landroidx/viewpager/widget/ViewPager;I)I
    .registers 4

    const/4 v0, 0x0

    .line 112
    invoke-virtual {p1, v0}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    .line 113
    iget-object v0, p0, Lcom/genonbeta/TrebleShot/widget/DynamicViewPagerAdapter;->views:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 114
    invoke-virtual {p1, p0}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    return p2
.end method

.method public removeView(Landroidx/viewpager/widget/ViewPager;Landroid/view/View;)I
    .registers 4

    .line 97
    iget-object v0, p0, Lcom/genonbeta/TrebleShot/widget/DynamicViewPagerAdapter;->views:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/genonbeta/TrebleShot/widget/DynamicViewPagerAdapter;->removeView(Landroidx/viewpager/widget/ViewPager;I)I

    move-result p1

    return p1
.end method
