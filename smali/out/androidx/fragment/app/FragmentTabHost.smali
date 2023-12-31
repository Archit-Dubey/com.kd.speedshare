.class public Landroidx/fragment/app/FragmentTabHost;
.super Landroid/widget/TabHost;
.source "FragmentTabHost.java"

# interfaces
.implements Landroid/widget/TabHost$OnTabChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/fragment/app/FragmentTabHost$SavedState;,
        Landroidx/fragment/app/FragmentTabHost$DummyTabFactory;,
        Landroidx/fragment/app/FragmentTabHost$TabInfo;
    }
.end annotation


# instance fields
.field private mAttached:Z

.field private mContainerId:I

.field private mContext:Landroid/content/Context;

.field private mFragmentManager:Landroidx/fragment/app/FragmentManager;

.field private mLastTab:Landroidx/fragment/app/FragmentTabHost$TabInfo;

.field private mOnTabChangeListener:Landroid/widget/TabHost$OnTabChangeListener;

.field private mRealTabContent:Landroid/widget/FrameLayout;

.field private final mTabs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/fragment/app/FragmentTabHost$TabInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    const/4 v0, 0x0

    .line 137
    invoke-direct {p0, p1, v0}, Landroid/widget/TabHost;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 56
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroidx/fragment/app/FragmentTabHost;->mTabs:Ljava/util/ArrayList;

    .line 138
    invoke-direct {p0, p1, v0}, Landroidx/fragment/app/FragmentTabHost;->initFragmentTabHost(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    .line 142
    invoke-direct {p0, p1, p2}, Landroid/widget/TabHost;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 56
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/fragment/app/FragmentTabHost;->mTabs:Ljava/util/ArrayList;

    .line 143
    invoke-direct {p0, p1, p2}, Landroidx/fragment/app/FragmentTabHost;->initFragmentTabHost(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private doTabChanged(Ljava/lang/String;Landroidx/fragment/app/FragmentTransaction;)Landroidx/fragment/app/FragmentTransaction;
    .registers 7

    .line 344
    invoke-direct {p0, p1}, Landroidx/fragment/app/FragmentTabHost;->getTabInfoForTag(Ljava/lang/String;)Landroidx/fragment/app/FragmentTabHost$TabInfo;

    move-result-object p1

    .line 345
    iget-object v0, p0, Landroidx/fragment/app/FragmentTabHost;->mLastTab:Landroidx/fragment/app/FragmentTabHost$TabInfo;

    if-eq v0, p1, :cond_57

    if-nez p2, :cond_10

    .line 347
    iget-object p2, p0, Landroidx/fragment/app/FragmentTabHost;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {p2}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object p2

    .line 350
    :cond_10
    iget-object v0, p0, Landroidx/fragment/app/FragmentTabHost;->mLastTab:Landroidx/fragment/app/FragmentTabHost$TabInfo;

    if-eqz v0, :cond_1f

    .line 351
    iget-object v0, v0, Landroidx/fragment/app/FragmentTabHost$TabInfo;->fragment:Landroidx/fragment/app/Fragment;

    if-eqz v0, :cond_1f

    .line 352
    iget-object v0, p0, Landroidx/fragment/app/FragmentTabHost;->mLastTab:Landroidx/fragment/app/FragmentTabHost$TabInfo;

    iget-object v0, v0, Landroidx/fragment/app/FragmentTabHost$TabInfo;->fragment:Landroidx/fragment/app/Fragment;

    invoke-virtual {p2, v0}, Landroidx/fragment/app/FragmentTransaction;->detach(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    :cond_1f
    if-eqz p1, :cond_55

    .line 357
    iget-object v0, p1, Landroidx/fragment/app/FragmentTabHost$TabInfo;->fragment:Landroidx/fragment/app/Fragment;

    if-nez v0, :cond_50

    .line 358
    iget-object v0, p0, Landroidx/fragment/app/FragmentTabHost;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->getFragmentFactory()Landroidx/fragment/app/FragmentFactory;

    move-result-object v0

    iget-object v1, p0, Landroidx/fragment/app/FragmentTabHost;->mContext:Landroid/content/Context;

    .line 359
    invoke-virtual {v1}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    iget-object v2, p1, Landroidx/fragment/app/FragmentTabHost$TabInfo;->clss:Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p1, Landroidx/fragment/app/FragmentTabHost$TabInfo;->args:Landroid/os/Bundle;

    .line 358
    invoke-virtual {v0, v1, v2, v3}, Landroidx/fragment/app/FragmentFactory;->instantiate(Ljava/lang/ClassLoader;Ljava/lang/String;Landroid/os/Bundle;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    iput-object v0, p1, Landroidx/fragment/app/FragmentTabHost$TabInfo;->fragment:Landroidx/fragment/app/Fragment;

    .line 360
    iget-object v0, p1, Landroidx/fragment/app/FragmentTabHost$TabInfo;->fragment:Landroidx/fragment/app/Fragment;

    iget-object v1, p1, Landroidx/fragment/app/FragmentTabHost$TabInfo;->args:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 361
    iget v0, p0, Landroidx/fragment/app/FragmentTabHost;->mContainerId:I

    iget-object v1, p1, Landroidx/fragment/app/FragmentTabHost$TabInfo;->fragment:Landroidx/fragment/app/Fragment;

    iget-object v2, p1, Landroidx/fragment/app/FragmentTabHost$TabInfo;->tag:Ljava/lang/String;

    invoke-virtual {p2, v0, v1, v2}, Landroidx/fragment/app/FragmentTransaction;->add(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    goto :goto_55

    .line 363
    :cond_50
    iget-object v0, p1, Landroidx/fragment/app/FragmentTabHost$TabInfo;->fragment:Landroidx/fragment/app/Fragment;

    invoke-virtual {p2, v0}, Landroidx/fragment/app/FragmentTransaction;->attach(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    .line 367
    :cond_55
    :goto_55
    iput-object p1, p0, Landroidx/fragment/app/FragmentTabHost;->mLastTab:Landroidx/fragment/app/FragmentTabHost$TabInfo;

    :cond_57
    return-object p2
.end method

.method private ensureContent()V
    .registers 4

    .line 226
    iget-object v0, p0, Landroidx/fragment/app/FragmentTabHost;->mRealTabContent:Landroid/widget/FrameLayout;

    if-nez v0, :cond_2a

    .line 227
    iget v0, p0, Landroidx/fragment/app/FragmentTabHost;->mContainerId:I

    invoke-virtual {p0, v0}, Landroidx/fragment/app/FragmentTabHost;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Landroidx/fragment/app/FragmentTabHost;->mRealTabContent:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_11

    goto :goto_2a

    .line 229
    :cond_11
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No tab content FrameLayout found for id "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroidx/fragment/app/FragmentTabHost;->mContainerId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2a
    :goto_2a
    return-void
.end method

.method private ensureHierarchy(Landroid/content/Context;)V
    .registers 9

    const v0, 0x1020013

    .line 158
    invoke-virtual {p0, v0}, Landroidx/fragment/app/FragmentTabHost;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_5a

    .line 159
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x1

    .line 160
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 161
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {v2, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v1, v2}, Landroidx/fragment/app/FragmentTabHost;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 165
    new-instance v2, Landroid/widget/TabWidget;

    invoke-direct {v2, p1}, Landroid/widget/TabWidget;-><init>(Landroid/content/Context;)V

    .line 166
    invoke-virtual {v2, v0}, Landroid/widget/TabWidget;->setId(I)V

    const/4 v0, 0x0

    .line 167
    invoke-virtual {v2, v0}, Landroid/widget/TabWidget;->setOrientation(I)V

    .line 168
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v5, -0x2

    const/4 v6, 0x0

    invoke-direct {v4, v3, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v1, v2, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 172
    new-instance v2, Landroid/widget/FrameLayout;

    invoke-direct {v2, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const v4, 0x1020011

    .line 173
    invoke-virtual {v2, v4}, Landroid/widget/FrameLayout;->setId(I)V

    .line 174
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v4, v0, v0, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v1, v2, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 176
    new-instance v2, Landroid/widget/FrameLayout;

    invoke-direct {v2, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Landroidx/fragment/app/FragmentTabHost;->mRealTabContent:Landroid/widget/FrameLayout;

    .line 177
    iget p1, p0, Landroidx/fragment/app/FragmentTabHost;->mContainerId:I

    invoke-virtual {v2, p1}, Landroid/widget/FrameLayout;->setId(I)V

    .line 178
    new-instance p1, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {p1, v3, v0, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v1, v2, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_5a
    return-void
.end method

.method private getTabInfoForTag(Ljava/lang/String;)Landroidx/fragment/app/FragmentTabHost$TabInfo;
    .registers 6

    .line 375
    iget-object v0, p0, Landroidx/fragment/app/FragmentTabHost;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_7
    if-ge v1, v0, :cond_1d

    .line 376
    iget-object v2, p0, Landroidx/fragment/app/FragmentTabHost;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/fragment/app/FragmentTabHost$TabInfo;

    .line 377
    iget-object v3, v2, Landroidx/fragment/app/FragmentTabHost$TabInfo;->tag:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1a

    return-object v2

    :cond_1a
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_1d
    const/4 p1, 0x0

    return-object p1
.end method

.method private initFragmentTabHost(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 6

    const/4 v0, 0x1

    new-array v0, v0, [I

    const v1, 0x10100f3

    const/4 v2, 0x0

    aput v1, v0, v2

    .line 147
    invoke-virtual {p1, p2, v0, v2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 149
    invoke-virtual {p1, v2, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    iput p2, p0, Landroidx/fragment/app/FragmentTabHost;->mContainerId:I

    .line 150
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 152
    invoke-super {p0, p0}, Landroid/widget/TabHost;->setOnTabChangedListener(Landroid/widget/TabHost$OnTabChangeListener;)V

    return-void
.end method


# virtual methods
.method public addTab(Landroid/widget/TabHost$TabSpec;Ljava/lang/Class;Landroid/os/Bundle;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/TabHost$TabSpec;",
            "Ljava/lang/Class<",
            "*>;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .line 242
    new-instance v0, Landroidx/fragment/app/FragmentTabHost$DummyTabFactory;

    iget-object v1, p0, Landroidx/fragment/app/FragmentTabHost;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroidx/fragment/app/FragmentTabHost$DummyTabFactory;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, v0}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/widget/TabHost$TabContentFactory;)Landroid/widget/TabHost$TabSpec;

    .line 244
    invoke-virtual {p1}, Landroid/widget/TabHost$TabSpec;->getTag()Ljava/lang/String;

    move-result-object v0

    .line 245
    new-instance v1, Landroidx/fragment/app/FragmentTabHost$TabInfo;

    invoke-direct {v1, v0, p2, p3}, Landroidx/fragment/app/FragmentTabHost$TabInfo;-><init>(Ljava/lang/String;Ljava/lang/Class;Landroid/os/Bundle;)V

    .line 247
    iget-boolean p2, p0, Landroidx/fragment/app/FragmentTabHost;->mAttached:Z

    if-eqz p2, :cond_39

    .line 251
    iget-object p2, p0, Landroidx/fragment/app/FragmentTabHost;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {p2, v0}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object p2

    iput-object p2, v1, Landroidx/fragment/app/FragmentTabHost$TabInfo;->fragment:Landroidx/fragment/app/Fragment;

    .line 252
    iget-object p2, v1, Landroidx/fragment/app/FragmentTabHost$TabInfo;->fragment:Landroidx/fragment/app/Fragment;

    if-eqz p2, :cond_39

    iget-object p2, v1, Landroidx/fragment/app/FragmentTabHost$TabInfo;->fragment:Landroidx/fragment/app/Fragment;

    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->isDetached()Z

    move-result p2

    if-nez p2, :cond_39

    .line 253
    iget-object p2, p0, Landroidx/fragment/app/FragmentTabHost;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {p2}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object p2

    .line 254
    iget-object p3, v1, Landroidx/fragment/app/FragmentTabHost$TabInfo;->fragment:Landroidx/fragment/app/Fragment;

    invoke-virtual {p2, p3}, Landroidx/fragment/app/FragmentTransaction;->detach(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    .line 255
    invoke-virtual {p2}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    .line 259
    :cond_39
    iget-object p2, p0, Landroidx/fragment/app/FragmentTabHost;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 260
    invoke-virtual {p0, p1}, Landroidx/fragment/app/FragmentTabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    return-void
.end method

.method protected onAttachedToWindow()V
    .registers 8

    .line 265
    invoke-super {p0}, Landroid/widget/TabHost;->onAttachedToWindow()V

    .line 267
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentTabHost;->getCurrentTabTag()Ljava/lang/String;

    move-result-object v0

    .line 272
    iget-object v1, p0, Landroidx/fragment/app/FragmentTabHost;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_f
    if-ge v3, v1, :cond_4a

    .line 273
    iget-object v4, p0, Landroidx/fragment/app/FragmentTabHost;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/fragment/app/FragmentTabHost$TabInfo;

    .line 274
    iget-object v5, p0, Landroidx/fragment/app/FragmentTabHost;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    iget-object v6, v4, Landroidx/fragment/app/FragmentTabHost$TabInfo;->tag:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v5

    iput-object v5, v4, Landroidx/fragment/app/FragmentTabHost$TabInfo;->fragment:Landroidx/fragment/app/Fragment;

    .line 275
    iget-object v5, v4, Landroidx/fragment/app/FragmentTabHost$TabInfo;->fragment:Landroidx/fragment/app/Fragment;

    if-eqz v5, :cond_47

    iget-object v5, v4, Landroidx/fragment/app/FragmentTabHost$TabInfo;->fragment:Landroidx/fragment/app/Fragment;

    invoke-virtual {v5}, Landroidx/fragment/app/Fragment;->isDetached()Z

    move-result v5

    if-nez v5, :cond_47

    .line 276
    iget-object v5, v4, Landroidx/fragment/app/FragmentTabHost$TabInfo;->tag:Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3a

    .line 280
    iput-object v4, p0, Landroidx/fragment/app/FragmentTabHost;->mLastTab:Landroidx/fragment/app/FragmentTabHost$TabInfo;

    goto :goto_47

    :cond_3a
    if-nez v2, :cond_42

    .line 285
    iget-object v2, p0, Landroidx/fragment/app/FragmentTabHost;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {v2}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v2

    .line 287
    :cond_42
    iget-object v4, v4, Landroidx/fragment/app/FragmentTabHost$TabInfo;->fragment:Landroidx/fragment/app/Fragment;

    invoke-virtual {v2, v4}, Landroidx/fragment/app/FragmentTransaction;->detach(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    :cond_47
    :goto_47
    add-int/lit8 v3, v3, 0x1

    goto :goto_f

    :cond_4a
    const/4 v1, 0x1

    .line 294
    iput-boolean v1, p0, Landroidx/fragment/app/FragmentTabHost;->mAttached:Z

    .line 295
    invoke-direct {p0, v0, v2}, Landroidx/fragment/app/FragmentTabHost;->doTabChanged(Ljava/lang/String;Landroidx/fragment/app/FragmentTransaction;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    if-eqz v0, :cond_5b

    .line 297
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    .line 298
    iget-object v0, p0, Landroidx/fragment/app/FragmentTabHost;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->executePendingTransactions()Z

    :cond_5b
    return-void
.end method

.method protected onDetachedFromWindow()V
    .registers 2

    .line 304
    invoke-super {p0}, Landroid/widget/TabHost;->onDetachedFromWindow()V

    const/4 v0, 0x0

    .line 305
    iput-boolean v0, p0, Landroidx/fragment/app/FragmentTabHost;->mAttached:Z

    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .registers 3

    .line 319
    instance-of v0, p1, Landroidx/fragment/app/FragmentTabHost$SavedState;

    if-nez v0, :cond_8

    .line 320
    invoke-super {p0, p1}, Landroid/widget/TabHost;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void

    .line 323
    :cond_8
    check-cast p1, Landroidx/fragment/app/FragmentTabHost$SavedState;

    .line 324
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentTabHost$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/widget/TabHost;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 325
    iget-object p1, p1, Landroidx/fragment/app/FragmentTabHost$SavedState;->curTab:Ljava/lang/String;

    invoke-virtual {p0, p1}, Landroidx/fragment/app/FragmentTabHost;->setCurrentTabByTag(Ljava/lang/String;)V

    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .registers 3

    .line 311
    invoke-super {p0}, Landroid/widget/TabHost;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 312
    new-instance v1, Landroidx/fragment/app/FragmentTabHost$SavedState;

    invoke-direct {v1, v0}, Landroidx/fragment/app/FragmentTabHost$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 313
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentTabHost;->getCurrentTabTag()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Landroidx/fragment/app/FragmentTabHost$SavedState;->curTab:Ljava/lang/String;

    return-object v1
.end method

.method public onTabChanged(Ljava/lang/String;)V
    .registers 3

    .line 330
    iget-boolean v0, p0, Landroidx/fragment/app/FragmentTabHost;->mAttached:Z

    if-eqz v0, :cond_e

    const/4 v0, 0x0

    .line 331
    invoke-direct {p0, p1, v0}, Landroidx/fragment/app/FragmentTabHost;->doTabChanged(Ljava/lang/String;Landroidx/fragment/app/FragmentTransaction;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    if-eqz v0, :cond_e

    .line 333
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    .line 336
    :cond_e
    iget-object v0, p0, Landroidx/fragment/app/FragmentTabHost;->mOnTabChangeListener:Landroid/widget/TabHost$OnTabChangeListener;

    if-eqz v0, :cond_15

    .line 337
    invoke-interface {v0, p1}, Landroid/widget/TabHost$OnTabChangeListener;->onTabChanged(Ljava/lang/String;)V

    :cond_15
    return-void
.end method

.method public setOnTabChangedListener(Landroid/widget/TabHost$OnTabChangeListener;)V
    .registers 2

    .line 237
    iput-object p1, p0, Landroidx/fragment/app/FragmentTabHost;->mOnTabChangeListener:Landroid/widget/TabHost$OnTabChangeListener;

    return-void
.end method

.method public setup()V
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 190
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Must call setup() that takes a Context and FragmentManager"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setup(Landroid/content/Context;Landroidx/fragment/app/FragmentManager;)V
    .registers 3

    .line 198
    invoke-direct {p0, p1}, Landroidx/fragment/app/FragmentTabHost;->ensureHierarchy(Landroid/content/Context;)V

    .line 199
    invoke-super {p0}, Landroid/widget/TabHost;->setup()V

    .line 200
    iput-object p1, p0, Landroidx/fragment/app/FragmentTabHost;->mContext:Landroid/content/Context;

    .line 201
    iput-object p2, p0, Landroidx/fragment/app/FragmentTabHost;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    .line 202
    invoke-direct {p0}, Landroidx/fragment/app/FragmentTabHost;->ensureContent()V

    return-void
.end method

.method public setup(Landroid/content/Context;Landroidx/fragment/app/FragmentManager;I)V
    .registers 4

    .line 210
    invoke-direct {p0, p1}, Landroidx/fragment/app/FragmentTabHost;->ensureHierarchy(Landroid/content/Context;)V

    .line 211
    invoke-super {p0}, Landroid/widget/TabHost;->setup()V

    .line 212
    iput-object p1, p0, Landroidx/fragment/app/FragmentTabHost;->mContext:Landroid/content/Context;

    .line 213
    iput-object p2, p0, Landroidx/fragment/app/FragmentTabHost;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    .line 214
    iput p3, p0, Landroidx/fragment/app/FragmentTabHost;->mContainerId:I

    .line 215
    invoke-direct {p0}, Landroidx/fragment/app/FragmentTabHost;->ensureContent()V

    .line 216
    iget-object p1, p0, Landroidx/fragment/app/FragmentTabHost;->mRealTabContent:Landroid/widget/FrameLayout;

    invoke-virtual {p1, p3}, Landroid/widget/FrameLayout;->setId(I)V

    .line 220
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentTabHost;->getId()I

    move-result p1

    const/4 p2, -0x1

    if-ne p1, p2, :cond_21

    const p1, 0x1020012

    .line 221
    invoke-virtual {p0, p1}, Landroidx/fragment/app/FragmentTabHost;->setId(I)V

    :cond_21
    return-void
.end method
