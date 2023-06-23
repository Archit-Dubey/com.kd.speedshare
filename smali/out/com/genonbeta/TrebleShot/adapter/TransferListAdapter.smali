.class public Lcom/genonbeta/TrebleShot/adapter/TransferListAdapter;
.super Lcom/genonbeta/TrebleShot/widget/GroupEditableListAdapter;
.source "TransferListAdapter.java"

# interfaces
.implements Lcom/genonbeta/TrebleShot/widget/GroupEditableListAdapter$GroupLister$CustomGroupLister;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/genonbeta/TrebleShot/adapter/TransferListAdapter$GroupEditableTransferObjectMerger;,
        Lcom/genonbeta/TrebleShot/adapter/TransferListAdapter$StorageStatusItem;,
        Lcom/genonbeta/TrebleShot/adapter/TransferListAdapter$DetailsTransferFolder;,
        Lcom/genonbeta/TrebleShot/adapter/TransferListAdapter$TransferFolder;,
        Lcom/genonbeta/TrebleShot/adapter/TransferListAdapter$GenericTransferItem;,
        Lcom/genonbeta/TrebleShot/adapter/TransferListAdapter$AbstractGenericItem;,
        Lcom/genonbeta/TrebleShot/adapter/TransferListAdapter$StatusItem;,
        Lcom/genonbeta/TrebleShot/adapter/TransferListAdapter$PathChangedListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/genonbeta/TrebleShot/widget/GroupEditableListAdapter<",
        "Lcom/genonbeta/TrebleShot/adapter/TransferListAdapter$AbstractGenericItem;",
        "Lcom/genonbeta/TrebleShot/widget/GroupEditableListAdapter$GroupViewHolder;",
        ">;",
        "Lcom/genonbeta/TrebleShot/widget/GroupEditableListAdapter$GroupLister$CustomGroupLister<",
        "Lcom/genonbeta/TrebleShot/adapter/TransferListAdapter$AbstractGenericItem;",
        ">;"
    }
.end annotation


# static fields
.field public static final MODE_GROUP_BY_DEFAULT:I = 0x65


# instance fields
.field private mColorDone:I

.field private mColorError:I

.field private mColorPending:I

.field private mDevice:Lcom/genonbeta/TrebleShot/object/NetworkDevice;

.field private mGroup:Lcom/genonbeta/TrebleShot/object/TransferGroup;

.field private mListener:Lcom/genonbeta/TrebleShot/adapter/TransferListAdapter$PathChangedListener;

.field private mPath:Ljava/lang/String;

.field private mPercentFormat:Ljava/text/NumberFormat;

.field private mSelect:Lcom/genonbeta/android/database/SQLQuery$Select;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    const/16 v0, 0x65

    .line 74
    invoke-direct {p0, p1, v0}, Lcom/genonbeta/TrebleShot/widget/GroupEditableListAdapter;-><init>(Landroid/content/Context;I)V

    .line 63
    new-instance v0, Lcom/genonbeta/TrebleShot/object/TransferGroup;

    invoke-direct {v0}, Lcom/genonbeta/TrebleShot/object/TransferGroup;-><init>()V

    iput-object v0, p0, Lcom/genonbeta/TrebleShot/adapter/TransferListAdapter;->mGroup:Lcom/genonbeta/TrebleShot/object/TransferGroup;

    .line 76
    invoke-static {}, Ljava/text/NumberFormat;->getPercentInstance()Ljava/text/NumberFormat;

    move-result-object v0

    iput-object v0, p0, Lcom/genonbeta/TrebleShot/adapter/TransferListAdapter;->mPercentFormat:Ljava/text/NumberFormat;

    const v0, 0x7f0300aa

    .line 77
    invoke-static {p1, v0}, Lcom/genonbeta/TrebleShot/util/AppUtils;->getReference(Landroid/content/Context;I)I

    move-result v0

    invoke-static {p1, v0}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/genonbeta/TrebleShot/adapter/TransferListAdapter;->mColorPending:I

    const v0, 0x7f0300a5

    .line 78
    invoke-static {p1, v0}, Lcom/genonbeta/TrebleShot/util/AppUtils;->getReference(Landroid/content/Context;I)I

    move-result v0

    invoke-static {p1, v0}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/genonbeta/TrebleShot/adapter/TransferListAdapter;->mColorDone:I

    const v0, 0x7f0300ad

    .line 79
    invoke-static {p1, v0}, Lcom/genonbeta/TrebleShot/util/AppUtils;->getReference(Landroid/content/Context;I)I

    move-result v0

    invoke-static {p1, v0}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p1

    iput p1, p0, Lcom/genonbeta/TrebleShot/adapter/TransferListAdapter;->mColorError:I

    .line 81
    new-instance p1, Lcom/genonbeta/android/database/SQLQuery$Select;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "transfer"

    invoke-direct {p1, v1, v0}, Lcom/genonbeta/android/database/SQLQuery$Select;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/genonbeta/TrebleShot/adapter/TransferListAdapter;->setSelect(Lcom/genonbeta/android/database/SQLQuery$Select;)Lcom/genonbeta/TrebleShot/adapter/TransferListAdapter;

    return-void
.end method


# virtual methods
.method public compareItems(IILcom/genonbeta/TrebleShot/adapter/TransferListAdapter$AbstractGenericItem;Lcom/genonbeta/TrebleShot/adapter/TransferListAdapter$AbstractGenericItem;)I
    .registers 5

    const/4 p1, 0x1

    return p1
.end method

.method public bridge synthetic compareItems(IILcom/genonbeta/TrebleShot/object/Editable;Lcom/genonbeta/TrebleShot/object/Editable;)I
    .registers 5

    .line 53
    check-cast p3, Lcom/genonbeta/TrebleShot/adapter/TransferListAdapter$AbstractGenericItem;

    check-cast p4, Lcom/genonbeta/TrebleShot/adapter/TransferListAdapter$AbstractGenericItem;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/genonbeta/TrebleShot/adapter/TransferListAdapter;->compareItems(IILcom/genonbeta/TrebleShot/adapter/TransferListAdapter$AbstractGenericItem;Lcom/genonbeta/TrebleShot/adapter/TransferListAdapter$AbstractGenericItem;)I

    move-result p1

    return p1
.end method

.method public createLister(Ljava/util/List;I)Lcom/genonbeta/TrebleShot/widget/GroupEditableListAdapter$GroupLister;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/genonbeta/TrebleShot/adapter/TransferListAdapter$AbstractGenericItem;",
            ">;I)",
            "Lcom/genonbeta/TrebleShot/widget/GroupEditableListAdapter$GroupLister<",
            "Lcom/genonbeta/TrebleShot/adapter/TransferListAdapter$AbstractGenericItem;",
            ">;"
        }
    .end annotation

    .line 322
    invoke-super {p0, p1, p2}, Lcom/genonbeta/TrebleShot/widget/GroupEditableListAdapter;->createLister(Ljava/util/List;I)Lcom/genonbeta/TrebleShot/widget/GroupEditableListAdapter$GroupLister;

    move-result-object p1

    .line 323
    invoke-virtual {p1, p0}, Lcom/genonbeta/TrebleShot/widget/GroupEditableListAdapter$GroupLister;->setCustomLister(Lcom/genonbeta/TrebleShot/widget/GroupEditableListAdapter$GroupLister$CustomGroupLister;)Lcom/genonbeta/TrebleShot/widget/GroupEditableListAdapter$GroupLister;

    move-result-object p1

    return-object p1
.end method

.method public getDevice()Lcom/genonbeta/TrebleShot/object/NetworkDevice;
    .registers 2

    .line 328
    iget-object v0, p0, Lcom/genonbeta/TrebleShot/adapter/TransferListAdapter;->mDevice:Lcom/genonbeta/TrebleShot/object/NetworkDevice;

    return-object v0
.end method

.method public getGroupId()J
    .registers 3

    .line 354
    iget-object v0, p0, Lcom/genonbeta/TrebleShot/adapter/TransferListAdapter;->mGroup:Lcom/genonbeta/TrebleShot/object/TransferGroup;

    iget-wide v0, v0, Lcom/genonbeta/TrebleShot/object/TransferGroup;->groupId:J

    return-wide v0
.end method

.method public getPath()Ljava/lang/String;
    .registers 2

    .line 364
    iget-object v0, p0, Lcom/genonbeta/TrebleShot/adapter/TransferListAdapter;->mPath:Ljava/lang/String;

    return-object v0
.end method

.method public getPercentFormat()Ljava/text/NumberFormat;
    .registers 2

    .line 377
    iget-object v0, p0, Lcom/genonbeta/TrebleShot/adapter/TransferListAdapter;->mPercentFormat:Ljava/text/NumberFormat;

    return-object v0
.end method

.method public getRepresentativeText(Lcom/genonbeta/android/framework/util/listing/Merger;)Ljava/lang/String;
    .registers 3

    .line 383
    instance-of v0, p1, Lcom/genonbeta/TrebleShot/adapter/TransferListAdapter$GroupEditableTransferObjectMerger;

    if-eqz v0, :cond_5a

    .line 384
    sget-object v0, Lcom/genonbeta/TrebleShot/adapter/TransferListAdapter$1;->$SwitchMap$com$genonbeta$TrebleShot$adapter$TransferListAdapter$GroupEditableTransferObjectMerger$Type:[I

    check-cast p1, Lcom/genonbeta/TrebleShot/adapter/TransferListAdapter$GroupEditableTransferObjectMerger;

    invoke-virtual {p1}, Lcom/genonbeta/TrebleShot/adapter/TransferListAdapter$GroupEditableTransferObjectMerger;->getType()Lcom/genonbeta/TrebleShot/adapter/TransferListAdapter$GroupEditableTransferObjectMerger$Type;

    move-result-object p1

    invoke-virtual {p1}, Lcom/genonbeta/TrebleShot/adapter/TransferListAdapter$GroupEditableTransferObjectMerger$Type;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_4e

    const/4 v0, 0x2

    if-eq p1, v0, :cond_42

    const/4 v0, 0x3

    if-eq p1, v0, :cond_36

    const/4 v0, 0x4

    if-eq p1, v0, :cond_2a

    .line 394
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/adapter/TransferListAdapter;->getContext()Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f110192

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 392
    :cond_2a
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/adapter/TransferListAdapter;->getContext()Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f11022d

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 390
    :cond_36
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/adapter/TransferListAdapter;->getContext()Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f1101a2

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 388
    :cond_42
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/adapter/TransferListAdapter;->getContext()Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f1101a7

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 386
    :cond_4e
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/adapter/TransferListAdapter;->getContext()Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f110236

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 398
    :cond_5a
    invoke-super {p0, p1}, Lcom/genonbeta/TrebleShot/widget/GroupEditableListAdapter;->getRepresentativeText(Lcom/genonbeta/android/framework/util/listing/Merger;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getSelect()Lcom/genonbeta/android/database/SQLQuery$Select;
    .registers 2

    .line 403
    iget-object v0, p0, Lcom/genonbeta/TrebleShot/adapter/TransferListAdapter;->mSelect:Lcom/genonbeta/android/database/SQLQuery$Select;

    return-object v0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .registers 3

    .line 53
    check-cast p1, Lcom/genonbeta/TrebleShot/widget/GroupEditableListAdapter$GroupViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/genonbeta/TrebleShot/adapter/TransferListAdapter;->onBindViewHolder(Lcom/genonbeta/TrebleShot/widget/GroupEditableListAdapter$GroupViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/genonbeta/TrebleShot/widget/GroupEditableListAdapter$GroupViewHolder;I)V
    .registers 13

    .line 433
    :try_start_0
    invoke-virtual {p0, p2}, Lcom/genonbeta/TrebleShot/adapter/TransferListAdapter;->getItem(I)Lcom/genonbeta/TrebleShot/object/Editable;

    move-result-object p2

    check-cast p2, Lcom/genonbeta/TrebleShot/adapter/TransferListAdapter$AbstractGenericItem;

    .line 435
    invoke-virtual {p1, p2}, Lcom/genonbeta/TrebleShot/widget/GroupEditableListAdapter$GroupViewHolder;->tryBinding(Lcom/genonbeta/TrebleShot/widget/GroupEditableListAdapter$GroupEditable;)Z

    move-result v0

    if-nez v0, :cond_fc

    .line 436
    invoke-virtual {p1}, Lcom/genonbeta/TrebleShot/widget/GroupEditableListAdapter$GroupViewHolder;->getView()Landroid/view/View;

    move-result-object p1

    .line 440
    invoke-virtual {p2}, Lcom/genonbeta/TrebleShot/adapter/TransferListAdapter$AbstractGenericItem;->getPercent()D

    move-result-wide v0

    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    mul-double v0, v0, v2

    double-to-int v0, v0

    const v1, 0x7f090199

    .line 441
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ProgressBar;

    const v2, 0x7f0901fc

    .line 442
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    const v3, 0x7f09010f

    .line 443
    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    const v4, 0x7f0901d7

    .line 444
    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    const v5, 0x7f0901e9

    .line 445
    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    const v6, 0x7f0901eb

    .line 446
    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    const v7, 0x7f0901ec

    .line 447
    invoke-virtual {p1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    const v8, 0x7f0901ed

    .line 448
    invoke-virtual {p1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 450
    invoke-virtual {p2}, Lcom/genonbeta/TrebleShot/adapter/TransferListAdapter$AbstractGenericItem;->isSelectableSelected()Z

    move-result v9

    invoke-virtual {p1, v9}, Landroid/view/View;->setSelected(Z)V

    .line 452
    invoke-virtual {p2}, Lcom/genonbeta/TrebleShot/adapter/TransferListAdapter$AbstractGenericItem;->isComplete()Z

    move-result p1

    if-eqz p1, :cond_71

    .line 453
    iget p1, p0, Lcom/genonbeta/TrebleShot/adapter/TransferListAdapter;->mColorDone:I

    goto :goto_7c

    .line 454
    :cond_71
    invoke-virtual {p2}, Lcom/genonbeta/TrebleShot/adapter/TransferListAdapter$AbstractGenericItem;->hasIssues()Z

    move-result p1

    if-eqz p1, :cond_7a

    .line 455
    iget p1, p0, Lcom/genonbeta/TrebleShot/adapter/TransferListAdapter;->mColorError:I

    goto :goto_7c

    .line 457
    :cond_7a
    iget p1, p0, Lcom/genonbeta/TrebleShot/adapter/TransferListAdapter;->mColorPending:I

    .line 459
    :goto_7c
    iget-object v9, p2, Lcom/genonbeta/TrebleShot/adapter/TransferListAdapter$AbstractGenericItem;->friendlyName:Ljava/lang/String;

    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 460
    invoke-virtual {p2, p0}, Lcom/genonbeta/TrebleShot/adapter/TransferListAdapter$AbstractGenericItem;->getFirstText(Lcom/genonbeta/TrebleShot/adapter/TransferListAdapter;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 461
    invoke-virtual {p2, p0}, Lcom/genonbeta/TrebleShot/adapter/TransferListAdapter$AbstractGenericItem;->getSecondText(Lcom/genonbeta/TrebleShot/adapter/TransferListAdapter;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 462
    invoke-virtual {p2, p0}, Lcom/genonbeta/TrebleShot/adapter/TransferListAdapter$AbstractGenericItem;->getThirdText(Lcom/genonbeta/TrebleShot/adapter/TransferListAdapter;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 464
    iget-object v5, p0, Lcom/genonbeta/TrebleShot/adapter/TransferListAdapter;->mGroup:Lcom/genonbeta/TrebleShot/object/TransferGroup;

    invoke-virtual {p2, v4, v5}, Lcom/genonbeta/TrebleShot/adapter/TransferListAdapter$AbstractGenericItem;->handleStatusIcon(Landroid/widget/ImageView;Lcom/genonbeta/TrebleShot/object/TransferGroup;)V

    .line 465
    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v5

    invoke-static {v4, v5}, Landroidx/core/widget/ImageViewCompat;->setImageTintList(Landroid/widget/ImageView;Landroid/content/res/ColorStateList;)V

    const/16 v4, 0x64

    .line 466
    invoke-virtual {v1, v4}, Landroid/widget/ProgressBar;->setMax(I)V

    if-gtz v0, :cond_aa

    const/4 v0, 0x1

    .line 467
    :cond_aa
    invoke-virtual {v1, v0}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 469
    invoke-virtual {v8, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 470
    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-static {v3, v0}, Landroidx/core/widget/ImageViewCompat;->setImageTintList(Landroid/widget/ImageView;Landroid/content/res/ColorStateList;)V

    .line 472
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x15

    if-ge v0, v4, :cond_d0

    .line 473
    invoke-virtual {v1}, Landroid/widget/ProgressBar;->getProgressDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {v0}, Landroidx/core/graphics/drawable/DrawableCompat;->wrap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 475
    invoke-static {v0, p1}, Landroidx/core/graphics/drawable/DrawableCompat;->setTint(Landroid/graphics/drawable/Drawable;I)V

    .line 476
    invoke-static {v0}, Landroidx/core/graphics/drawable/DrawableCompat;->unwrap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/widget/ProgressBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_d7

    .line 478
    :cond_d0
    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/widget/ProgressBar;->setProgressTintList(Landroid/content/res/ColorStateList;)V

    .line 480
    :goto_d7
    invoke-virtual {p2, v2}, Lcom/genonbeta/TrebleShot/adapter/TransferListAdapter$AbstractGenericItem;->loadThumbnail(Landroid/widget/ImageView;)Z

    move-result p1

    if-eqz p1, :cond_e7

    .line 482
    invoke-virtual {p2}, Lcom/genonbeta/TrebleShot/adapter/TransferListAdapter$AbstractGenericItem;->isComplete()Z

    move-result v0

    if-nez v0, :cond_e4

    goto :goto_e7

    :cond_e4
    const/16 v0, 0x8

    goto :goto_e8

    :cond_e7
    :goto_e7
    const/4 v0, 0x0

    :goto_e8
    invoke-virtual {v1, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    const/4 v0, 0x0

    if-eqz p1, :cond_f2

    .line 487
    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_fc

    .line 489
    :cond_f2
    invoke-virtual {p2}, Lcom/genonbeta/TrebleShot/adapter/TransferListAdapter$AbstractGenericItem;->getIconRes()I

    move-result p1

    invoke-virtual {v3, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 490
    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_fc
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_fc} :catch_fc

    :catch_fc
    :cond_fc
    :goto_fc
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .registers 3

    .line 53
    invoke-virtual {p0, p1, p2}, Lcom/genonbeta/TrebleShot/adapter/TransferListAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/genonbeta/TrebleShot/widget/GroupEditableListAdapter$GroupViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/genonbeta/TrebleShot/widget/GroupEditableListAdapter$GroupViewHolder;
    .registers 6

    const/4 v0, 0x0

    const/16 v1, 0x64

    if-ne p2, v1, :cond_19

    .line 424
    new-instance p2, Lcom/genonbeta/TrebleShot/widget/GroupEditableListAdapter$GroupViewHolder;

    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/adapter/TransferListAdapter;->getInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0c0062

    invoke-virtual {v1, v2, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const v0, 0x7f090138

    invoke-direct {p2, p1, v0}, Lcom/genonbeta/TrebleShot/widget/GroupEditableListAdapter$GroupViewHolder;-><init>(Landroid/view/View;I)V

    return-object p2

    .line 426
    :cond_19
    new-instance p2, Lcom/genonbeta/TrebleShot/widget/GroupEditableListAdapter$GroupViewHolder;

    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/adapter/TransferListAdapter;->getInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0c008a

    invoke-virtual {v1, v2, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/genonbeta/TrebleShot/widget/GroupEditableListAdapter$GroupViewHolder;-><init>(Landroid/view/View;)V

    return-object p2
.end method

.method public onCustomGroupListing(Lcom/genonbeta/TrebleShot/widget/GroupEditableListAdapter$GroupLister;ILcom/genonbeta/TrebleShot/adapter/TransferListAdapter$AbstractGenericItem;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/genonbeta/TrebleShot/widget/GroupEditableListAdapter$GroupLister<",
            "Lcom/genonbeta/TrebleShot/adapter/TransferListAdapter$AbstractGenericItem;",
            ">;I",
            "Lcom/genonbeta/TrebleShot/adapter/TransferListAdapter$AbstractGenericItem;",
            ")Z"
        }
    .end annotation

    const/16 v0, 0x65

    if-ne p2, v0, :cond_e

    .line 303
    new-instance p2, Lcom/genonbeta/TrebleShot/adapter/TransferListAdapter$GroupEditableTransferObjectMerger;

    invoke-direct {p2, p3}, Lcom/genonbeta/TrebleShot/adapter/TransferListAdapter$GroupEditableTransferObjectMerger;-><init>(Lcom/genonbeta/TrebleShot/adapter/TransferListAdapter$AbstractGenericItem;)V

    invoke-virtual {p1, p3, p2}, Lcom/genonbeta/TrebleShot/widget/GroupEditableListAdapter$GroupLister;->offer(Ljava/lang/Object;Lcom/genonbeta/android/framework/util/listing/Merger;)V

    const/4 p1, 0x1

    return p1

    :cond_e
    const/4 p1, 0x0

    return p1
.end method

.method public bridge synthetic onCustomGroupListing(Lcom/genonbeta/TrebleShot/widget/GroupEditableListAdapter$GroupLister;ILcom/genonbeta/TrebleShot/widget/GroupEditableListAdapter$GroupEditable;)Z
    .registers 4

    .line 53
    check-cast p3, Lcom/genonbeta/TrebleShot/adapter/TransferListAdapter$AbstractGenericItem;

    invoke-virtual {p0, p1, p2, p3}, Lcom/genonbeta/TrebleShot/adapter/TransferListAdapter;->onCustomGroupListing(Lcom/genonbeta/TrebleShot/widget/GroupEditableListAdapter$GroupLister;ILcom/genonbeta/TrebleShot/adapter/TransferListAdapter$AbstractGenericItem;)Z

    move-result p1

    return p1
.end method

.method protected onGenerateRepresentative(Ljava/lang/String;)Lcom/genonbeta/TrebleShot/adapter/TransferListAdapter$GenericTransferItem;
    .registers 3

    .line 296
    new-instance v0, Lcom/genonbeta/TrebleShot/adapter/TransferListAdapter$GenericTransferItem;

    invoke-direct {v0, p1}, Lcom/genonbeta/TrebleShot/adapter/TransferListAdapter$GenericTransferItem;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method protected bridge synthetic onGenerateRepresentative(Ljava/lang/String;)Lcom/genonbeta/TrebleShot/widget/GroupEditableListAdapter$GroupEditable;
    .registers 2

    .line 53
    invoke-virtual {p0, p1}, Lcom/genonbeta/TrebleShot/adapter/TransferListAdapter;->onGenerateRepresentative(Ljava/lang/String;)Lcom/genonbeta/TrebleShot/adapter/TransferListAdapter$GenericTransferItem;

    move-result-object p1

    return-object p1
.end method

.method protected onLoad(Lcom/genonbeta/TrebleShot/widget/GroupEditableListAdapter$GroupLister;)V
    .registers 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/genonbeta/TrebleShot/widget/GroupEditableListAdapter$GroupLister<",
            "Lcom/genonbeta/TrebleShot/adapter/TransferListAdapter$AbstractGenericItem;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    .line 87
    invoke-virtual/range {p0 .. p0}, Lcom/genonbeta/TrebleShot/adapter/TransferListAdapter;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/genonbeta/TrebleShot/util/AppUtils;->getDefaultPreferences(Landroid/content/Context;)Lcom/genonbeta/android/framework/preference/SuperPreferences;

    move-result-object v2

    const-string v3, "load_thumbnails"

    const/4 v4, 0x1

    .line 88
    invoke-virtual {v2, v3, v4}, Lcom/genonbeta/android/framework/preference/SuperPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 91
    :try_start_13
    invoke-virtual/range {p0 .. p0}, Lcom/genonbeta/TrebleShot/adapter/TransferListAdapter;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/genonbeta/TrebleShot/util/AppUtils;->getDatabase(Landroid/content/Context;)Lcom/genonbeta/TrebleShot/database/AccessDatabase;

    move-result-object v3

    iget-object v5, v1, Lcom/genonbeta/TrebleShot/adapter/TransferListAdapter;->mGroup:Lcom/genonbeta/TrebleShot/object/TransferGroup;

    invoke-virtual {v3, v5}, Lcom/genonbeta/TrebleShot/database/AccessDatabase;->reconstruct(Lcom/genonbeta/android/database/DatabaseObject;)V
    :try_end_20
    .catch Lcom/genonbeta/android/database/exception/ReconstructionFailedException; {:try_start_13 .. :try_end_20} :catch_3bb

    .line 98
    new-instance v3, Landroidx/collection/ArrayMap;

    invoke-direct {v3}, Landroidx/collection/ArrayMap;-><init>()V

    .line 99
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 100
    invoke-virtual/range {p0 .. p0}, Lcom/genonbeta/TrebleShot/adapter/TransferListAdapter;->getPath()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_36

    .line 101
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v8

    if-nez v8, :cond_37

    :cond_36
    const/4 v6, 0x0

    .line 103
    :cond_37
    new-instance v8, Landroidx/collection/ArrayMap;

    invoke-direct {v8}, Landroidx/collection/ArrayMap;-><init>()V

    .line 106
    invoke-virtual/range {p0 .. p0}, Lcom/genonbeta/TrebleShot/adapter/TransferListAdapter;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9}, Lcom/genonbeta/TrebleShot/util/AppUtils;->getDatabase(Landroid/content/Context;)Lcom/genonbeta/TrebleShot/database/AccessDatabase;

    move-result-object v9

    new-instance v10, Lcom/genonbeta/android/database/SQLQuery$Select;

    const/4 v11, 0x0

    new-array v12, v11, [Ljava/lang/String;

    const-string v13, "transferAssignee"

    invoke-direct {v10, v13, v12}, Lcom/genonbeta/android/database/SQLQuery$Select;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    new-array v12, v4, [Ljava/lang/String;

    iget-object v13, v1, Lcom/genonbeta/TrebleShot/adapter/TransferListAdapter;->mGroup:Lcom/genonbeta/TrebleShot/object/TransferGroup;

    iget-wide v13, v13, Lcom/genonbeta/TrebleShot/object/TransferGroup;->groupId:J

    .line 109
    invoke-static {v13, v14}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v12, v11

    const-string v13, "groupId=?"

    .line 108
    invoke-virtual {v10, v13, v12}, Lcom/genonbeta/android/database/SQLQuery$Select;->setWhere(Ljava/lang/String;[Ljava/lang/String;)Lcom/genonbeta/android/database/SQLQuery$Select;

    move-result-object v10

    const-class v12, Lcom/genonbeta/TrebleShot/object/TransferGroup$Assignee;

    .line 107
    invoke-virtual {v9, v10, v12}, Lcom/genonbeta/TrebleShot/database/AccessDatabase;->castQuery(Lcom/genonbeta/android/database/SQLQuery$Select;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v9

    .line 111
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_6a
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_90

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/genonbeta/TrebleShot/object/TransferGroup$Assignee;

    .line 113
    :try_start_76
    new-instance v12, Lcom/genonbeta/TrebleShot/object/NetworkDevice;

    iget-object v10, v10, Lcom/genonbeta/TrebleShot/object/TransferGroup$Assignee;->deviceId:Ljava/lang/String;

    invoke-direct {v12, v10}, Lcom/genonbeta/TrebleShot/object/NetworkDevice;-><init>(Ljava/lang/String;)V

    .line 115
    invoke-virtual/range {p0 .. p0}, Lcom/genonbeta/TrebleShot/adapter/TransferListAdapter;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-static {v10}, Lcom/genonbeta/TrebleShot/util/AppUtils;->getDatabase(Landroid/content/Context;)Lcom/genonbeta/TrebleShot/database/AccessDatabase;

    move-result-object v10

    invoke-virtual {v10, v12}, Lcom/genonbeta/TrebleShot/database/AccessDatabase;->reconstruct(Lcom/genonbeta/android/database/DatabaseObject;)V

    .line 116
    iget-object v10, v12, Lcom/genonbeta/TrebleShot/object/NetworkDevice;->deviceId:Ljava/lang/String;

    invoke-interface {v8, v10, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_8d
    .catch Ljava/lang/Exception; {:try_start_76 .. :try_end_8d} :catch_8e

    goto :goto_6a

    :catch_8e
    nop

    goto :goto_6a

    .line 122
    :cond_90
    new-instance v9, Lcom/genonbeta/android/database/SQLQuery$Select;

    invoke-interface {v8}, Ljava/util/Map;->size()I

    move-result v10

    if-ge v10, v4, :cond_9b

    const-string v10, "divisionTransfer"

    goto :goto_9d

    :cond_9b
    const-string v10, "transfer"

    :goto_9d
    new-array v12, v11, [Ljava/lang/String;

    invoke-direct {v9, v10, v12}, Lcom/genonbeta/android/database/SQLQuery$Select;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    .line 126
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 127
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 128
    iget-object v14, v1, Lcom/genonbeta/TrebleShot/adapter/TransferListAdapter;->mDevice:Lcom/genonbeta/TrebleShot/object/NetworkDevice;

    .line 130
    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    iget-object v13, v1, Lcom/genonbeta/TrebleShot/adapter/TransferListAdapter;->mGroup:Lcom/genonbeta/TrebleShot/object/TransferGroup;

    move-object/from16 v16, v5

    iget-wide v4, v13, Lcom/genonbeta/TrebleShot/object/TransferGroup;->groupId:J

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v12, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 133
    invoke-interface {v8}, Ljava/util/Map;->size()I

    move-result v4

    if-lez v4, :cond_d0

    if-eqz v14, :cond_d0

    const-string v4, " AND deviceId=?"

    .line 134
    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    iget-object v4, v14, Lcom/genonbeta/TrebleShot/object/NetworkDevice;->deviceId:Ljava/lang/String;

    invoke-interface {v12, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_d0
    if-eqz v6, :cond_f3

    const-string v4, " AND (directory=? OR directory LIKE ?)"

    .line 139
    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    invoke-interface {v12, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 143
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "%"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v12, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 146
    :cond_f3
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v9, Lcom/genonbeta/android/database/SQLQuery$Select;->where:Ljava/lang/String;

    .line 147
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v4

    new-array v4, v4, [Ljava/lang/String;

    iput-object v4, v9, Lcom/genonbeta/android/database/SQLQuery$Select;->whereArgs:[Ljava/lang/String;

    .line 148
    iget-object v4, v9, Lcom/genonbeta/android/database/SQLQuery$Select;->whereArgs:[Ljava/lang/String;

    invoke-interface {v12, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 150
    invoke-virtual/range {p0 .. p0}, Lcom/genonbeta/TrebleShot/adapter/TransferListAdapter;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/genonbeta/TrebleShot/util/AppUtils;->getDatabase(Landroid/content/Context;)Lcom/genonbeta/TrebleShot/database/AccessDatabase;

    move-result-object v4

    const-class v5, Lcom/genonbeta/TrebleShot/adapter/TransferListAdapter$GenericTransferItem;

    invoke-virtual {v4, v9, v5}, Lcom/genonbeta/TrebleShot/database/AccessDatabase;->castQuery(Lcom/genonbeta/android/database/SQLQuery$Select;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v4

    .line 153
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    const/4 v5, 0x0

    :goto_119
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_28d

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/genonbeta/TrebleShot/adapter/TransferListAdapter$GenericTransferItem;

    .line 154
    iget-object v10, v9, Lcom/genonbeta/TrebleShot/adapter/TransferListAdapter$GenericTransferItem;->deviceId:Ljava/lang/String;

    invoke-interface {v8, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/genonbeta/TrebleShot/object/NetworkDevice;

    .line 156
    iget-object v12, v9, Lcom/genonbeta/TrebleShot/adapter/TransferListAdapter$GenericTransferItem;->directory:Ljava/lang/String;

    if-eqz v12, :cond_13d

    iget-object v12, v9, Lcom/genonbeta/TrebleShot/adapter/TransferListAdapter$GenericTransferItem;->directory:Ljava/lang/String;

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    if-nez v12, :cond_13a

    goto :goto_13d

    :cond_13a
    iget-object v12, v9, Lcom/genonbeta/TrebleShot/adapter/TransferListAdapter$GenericTransferItem;->directory:Ljava/lang/String;

    goto :goto_13e

    :cond_13d
    :goto_13d
    const/4 v12, 0x0

    :goto_13e
    iput-object v12, v9, Lcom/genonbeta/TrebleShot/adapter/TransferListAdapter$GenericTransferItem;->directory:Ljava/lang/String;

    if-eqz v6, :cond_147

    .line 158
    iget-object v12, v9, Lcom/genonbeta/TrebleShot/adapter/TransferListAdapter$GenericTransferItem;->directory:Ljava/lang/String;

    if-nez v12, :cond_147

    goto :goto_119

    :cond_147
    if-nez v10, :cond_14b

    const/4 v10, 0x0

    goto :goto_14d

    .line 161
    :cond_14b
    iget-object v10, v10, Lcom/genonbeta/TrebleShot/object/NetworkDevice;->nickname:Ljava/lang/String;

    :goto_14d
    invoke-virtual {v9, v10}, Lcom/genonbeta/TrebleShot/adapter/TransferListAdapter$GenericTransferItem;->setDeviceName(Ljava/lang/String;)V

    if-nez v6, :cond_156

    .line 163
    iget-object v10, v9, Lcom/genonbeta/TrebleShot/adapter/TransferListAdapter$GenericTransferItem;->directory:Ljava/lang/String;

    if-eqz v10, :cond_15e

    :cond_156
    iget-object v10, v9, Lcom/genonbeta/TrebleShot/adapter/TransferListAdapter$GenericTransferItem;->directory:Ljava/lang/String;

    .line 164
    invoke-virtual {v10, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1cb

    :cond_15e
    if-nez v2, :cond_164

    .line 167
    :try_start_160
    invoke-virtual {v9, v11}, Lcom/genonbeta/TrebleShot/adapter/TransferListAdapter$GenericTransferItem;->setSupportThumbnail(Z)V

    goto :goto_1c5

    .line 169
    :cond_164
    iget-object v10, v9, Lcom/genonbeta/TrebleShot/adapter/TransferListAdapter$GenericTransferItem;->fileMimeType:Ljava/lang/String;

    sget-object v12, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v10, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    .line 171
    array-length v12, v10

    if-lez v12, :cond_1c2

    const-string v12, "image"

    aget-object v13, v10, v11

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_183

    const-string v12, "video"

    aget-object v10, v10, v11

    invoke-virtual {v12, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1c2

    .line 174
    :cond_183
    sget-object v10, Lcom/genonbeta/TrebleShot/object/TransferObject$Type;->OUTGOING:Lcom/genonbeta/TrebleShot/object/TransferObject$Type;

    iget-object v12, v9, Lcom/genonbeta/TrebleShot/adapter/TransferListAdapter$GenericTransferItem;->type:Lcom/genonbeta/TrebleShot/object/TransferObject$Type;

    invoke-virtual {v10, v12}, Lcom/genonbeta/TrebleShot/object/TransferObject$Type;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_19c

    .line 175
    invoke-virtual/range {p0 .. p0}, Lcom/genonbeta/TrebleShot/adapter/TransferListAdapter;->getContext()Landroid/content/Context;

    move-result-object v10

    iget-object v12, v9, Lcom/genonbeta/TrebleShot/adapter/TransferListAdapter$GenericTransferItem;->file:Ljava/lang/String;

    invoke-static {v12}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v12

    invoke-static {v10, v12}, Lcom/genonbeta/TrebleShot/util/FileUtils;->fromUri(Landroid/content/Context;Landroid/net/Uri;)Lcom/genonbeta/android/framework/io/DocumentFile;

    move-result-object v10

    goto :goto_1b2

    .line 176
    :cond_19c
    sget-object v10, Lcom/genonbeta/TrebleShot/object/TransferObject$Flag;->DONE:Lcom/genonbeta/TrebleShot/object/TransferObject$Flag;

    iget-object v12, v9, Lcom/genonbeta/TrebleShot/adapter/TransferListAdapter$GenericTransferItem;->flag:Lcom/genonbeta/TrebleShot/object/TransferObject$Flag;

    invoke-virtual {v10, v12}, Lcom/genonbeta/TrebleShot/object/TransferObject$Flag;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1b1

    .line 177
    invoke-virtual/range {p0 .. p0}, Lcom/genonbeta/TrebleShot/adapter/TransferListAdapter;->getContext()Landroid/content/Context;

    move-result-object v10

    iget-object v12, v1, Lcom/genonbeta/TrebleShot/adapter/TransferListAdapter;->mGroup:Lcom/genonbeta/TrebleShot/object/TransferGroup;

    invoke-static {v10, v9, v12, v11}, Lcom/genonbeta/TrebleShot/util/FileUtils;->getIncomingPseudoFile(Landroid/content/Context;Lcom/genonbeta/TrebleShot/object/TransferObject;Lcom/genonbeta/TrebleShot/object/TransferGroup;Z)Lcom/genonbeta/android/framework/io/DocumentFile;

    move-result-object v10

    goto :goto_1b2

    :cond_1b1
    const/4 v10, 0x0

    :goto_1b2
    if-eqz v10, :cond_1c5

    .line 179
    invoke-virtual {v10}, Lcom/genonbeta/android/framework/io/DocumentFile;->exists()Z

    move-result v12

    if-eqz v12, :cond_1c5

    .line 180
    invoke-virtual {v9, v10}, Lcom/genonbeta/TrebleShot/adapter/TransferListAdapter$GenericTransferItem;->setFile(Lcom/genonbeta/android/framework/io/DocumentFile;)V

    const/4 v10, 0x1

    .line 181
    invoke-virtual {v9, v10}, Lcom/genonbeta/TrebleShot/adapter/TransferListAdapter$GenericTransferItem;->setSupportThumbnail(Z)V

    goto :goto_1c5

    .line 184
    :cond_1c2
    invoke-virtual {v9, v11}, Lcom/genonbeta/TrebleShot/adapter/TransferListAdapter$GenericTransferItem;->setSupportThumbnail(Z)V
    :try_end_1c5
    .catch Ljava/lang/Exception; {:try_start_160 .. :try_end_1c5} :catch_1c5

    :catch_1c5
    :cond_1c5
    :goto_1c5
    move-object/from16 v10, v16

    .line 189
    invoke-interface {v10, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1d8

    :cond_1cb
    move-object/from16 v10, v16

    if-eqz v6, :cond_1dd

    .line 190
    iget-object v12, v9, Lcom/genonbeta/TrebleShot/adapter/TransferListAdapter$GenericTransferItem;->directory:Ljava/lang/String;

    .line 191
    invoke-virtual {v12, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_1d8

    goto :goto_1dd

    :cond_1d8
    :goto_1d8
    move v13, v2

    move-object/from16 v17, v3

    goto/16 :goto_278

    :cond_1dd
    :goto_1dd
    if-nez v6, :cond_1e1

    const/4 v12, 0x0

    goto :goto_1ec

    .line 192
    :cond_1e1
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v12

    sget-object v13, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v13

    add-int/2addr v12, v13

    .line 193
    :goto_1ec
    iget-object v13, v9, Lcom/genonbeta/TrebleShot/adapter/TransferListAdapter$GenericTransferItem;->directory:Ljava/lang/String;

    invoke-virtual {v13, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v12

    .line 194
    sget-object v13, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v13

    const/4 v7, -0x1

    if-eq v13, v7, :cond_1ff

    .line 197
    invoke-virtual {v12, v11, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    .line 199
    :cond_1ff
    invoke-interface {v3, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/genonbeta/TrebleShot/adapter/TransferListAdapter$TransferFolder;

    if-nez v7, :cond_231

    .line 202
    new-instance v7, Lcom/genonbeta/TrebleShot/adapter/TransferListAdapter$TransferFolder;

    iget-object v13, v1, Lcom/genonbeta/TrebleShot/adapter/TransferListAdapter;->mGroup:Lcom/genonbeta/TrebleShot/object/TransferGroup;

    move-object/from16 v17, v12

    iget-wide v11, v13, Lcom/genonbeta/TrebleShot/object/TransferGroup;->groupId:J

    if-eqz v6, :cond_228

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v15, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v15, v17

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    goto :goto_22b

    :cond_228
    move-object/from16 v15, v17

    move-object v13, v15

    :goto_22b
    invoke-direct {v7, v11, v12, v15, v13}, Lcom/genonbeta/TrebleShot/adapter/TransferListAdapter$TransferFolder;-><init>(JLjava/lang/String;Ljava/lang/String;)V

    .line 206
    invoke-interface {v3, v15, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 209
    :cond_231
    invoke-virtual {v9}, Lcom/genonbeta/TrebleShot/adapter/TransferListAdapter$GenericTransferItem;->isComplete()Z

    move-result v11

    if-eqz v11, :cond_249

    .line 210
    iget v11, v7, Lcom/genonbeta/TrebleShot/adapter/TransferListAdapter$TransferFolder;->filesReceived:I

    const/4 v12, 0x1

    add-int/2addr v11, v12

    iput v11, v7, Lcom/genonbeta/TrebleShot/adapter/TransferListAdapter$TransferFolder;->filesReceived:I

    .line 211
    iget-wide v11, v7, Lcom/genonbeta/TrebleShot/adapter/TransferListAdapter$TransferFolder;->bytesReceived:J

    move v13, v2

    move-object/from16 v17, v3

    iget-wide v2, v9, Lcom/genonbeta/TrebleShot/adapter/TransferListAdapter$GenericTransferItem;->fileSize:J

    add-long/2addr v11, v2

    iput-wide v11, v7, Lcom/genonbeta/TrebleShot/adapter/TransferListAdapter$TransferFolder;->bytesReceived:J

    :cond_247
    :goto_247
    const/4 v2, 0x1

    goto :goto_26c

    :cond_249
    move v13, v2

    move-object/from16 v17, v3

    .line 212
    sget-object v2, Lcom/genonbeta/TrebleShot/object/TransferObject$Flag;->IN_PROGRESS:Lcom/genonbeta/TrebleShot/object/TransferObject$Flag;

    iget-object v3, v9, Lcom/genonbeta/TrebleShot/adapter/TransferListAdapter$GenericTransferItem;->flag:Lcom/genonbeta/TrebleShot/object/TransferObject$Flag;

    invoke-virtual {v2, v3}, Lcom/genonbeta/TrebleShot/object/TransferObject$Flag;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_262

    .line 213
    iget-wide v2, v7, Lcom/genonbeta/TrebleShot/adapter/TransferListAdapter$TransferFolder;->bytesReceived:J

    iget-object v11, v9, Lcom/genonbeta/TrebleShot/adapter/TransferListAdapter$GenericTransferItem;->flag:Lcom/genonbeta/TrebleShot/object/TransferObject$Flag;

    invoke-virtual {v11}, Lcom/genonbeta/TrebleShot/object/TransferObject$Flag;->getBytesValue()J

    move-result-wide v11

    add-long/2addr v2, v11

    iput-wide v2, v7, Lcom/genonbeta/TrebleShot/adapter/TransferListAdapter$TransferFolder;->bytesReceived:J

    goto :goto_247

    .line 214
    :cond_262
    invoke-virtual {v9}, Lcom/genonbeta/TrebleShot/adapter/TransferListAdapter$GenericTransferItem;->hasIssues()Z

    move-result v2

    if-eqz v2, :cond_247

    const/4 v2, 0x1

    .line 215
    invoke-virtual {v7, v2}, Lcom/genonbeta/TrebleShot/adapter/TransferListAdapter$TransferFolder;->setHasIssues(Z)V

    .line 218
    :goto_26c
    iget v3, v7, Lcom/genonbeta/TrebleShot/adapter/TransferListAdapter$TransferFolder;->filesTotal:I

    add-int/2addr v3, v2

    iput v3, v7, Lcom/genonbeta/TrebleShot/adapter/TransferListAdapter$TransferFolder;->filesTotal:I

    .line 219
    iget-wide v2, v7, Lcom/genonbeta/TrebleShot/adapter/TransferListAdapter$TransferFolder;->bytesTotal:J

    iget-wide v11, v9, Lcom/genonbeta/TrebleShot/adapter/TransferListAdapter$GenericTransferItem;->fileSize:J

    add-long/2addr v2, v11

    iput-wide v2, v7, Lcom/genonbeta/TrebleShot/adapter/TransferListAdapter$TransferFolder;->bytesTotal:J

    :goto_278
    if-nez v5, :cond_285

    .line 222
    sget-object v2, Lcom/genonbeta/TrebleShot/object/TransferObject$Type;->INCOMING:Lcom/genonbeta/TrebleShot/object/TransferObject$Type;

    iget-object v3, v9, Lcom/genonbeta/TrebleShot/adapter/TransferListAdapter$GenericTransferItem;->type:Lcom/genonbeta/TrebleShot/object/TransferObject$Type;

    .line 223
    invoke-virtual {v2, v3}, Lcom/genonbeta/TrebleShot/object/TransferObject$Type;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_285

    const/4 v5, 0x1

    :cond_285
    move-object/from16 v16, v10

    move v2, v13

    move-object/from16 v3, v17

    const/4 v11, 0x0

    goto/16 :goto_119

    :cond_28d
    move-object/from16 v17, v3

    move-object/from16 v10, v16

    if-nez v6, :cond_2e8

    if-eqz v5, :cond_2e8

    .line 232
    :try_start_295
    new-instance v2, Lcom/genonbeta/TrebleShot/object/TransferGroup;

    iget-object v3, v1, Lcom/genonbeta/TrebleShot/adapter/TransferListAdapter;->mGroup:Lcom/genonbeta/TrebleShot/object/TransferGroup;

    iget-wide v3, v3, Lcom/genonbeta/TrebleShot/object/TransferGroup;->groupId:J

    invoke-direct {v2, v3, v4}, Lcom/genonbeta/TrebleShot/object/TransferGroup;-><init>(J)V

    .line 233
    invoke-virtual/range {p0 .. p0}, Lcom/genonbeta/TrebleShot/adapter/TransferListAdapter;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/genonbeta/TrebleShot/util/AppUtils;->getDatabase(Landroid/content/Context;)Lcom/genonbeta/TrebleShot/database/AccessDatabase;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/genonbeta/TrebleShot/database/AccessDatabase;->reconstruct(Lcom/genonbeta/android/database/DatabaseObject;)V

    .line 234
    invoke-virtual/range {p0 .. p0}, Lcom/genonbeta/TrebleShot/adapter/TransferListAdapter;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v2}, Lcom/genonbeta/TrebleShot/util/FileUtils;->getSavePath(Landroid/content/Context;Lcom/genonbeta/TrebleShot/object/TransferGroup;)Lcom/genonbeta/android/framework/io/DocumentFile;

    move-result-object v2

    .line 236
    new-instance v3, Lcom/genonbeta/TrebleShot/adapter/TransferListAdapter$StorageStatusItem;

    invoke-direct {v3}, Lcom/genonbeta/TrebleShot/adapter/TransferListAdapter$StorageStatusItem;-><init>()V
    :try_end_2b6
    .catch Ljava/lang/Exception; {:try_start_295 .. :try_end_2b6} :catch_2e8

    .line 237
    :try_start_2b6
    invoke-virtual {v2}, Lcom/genonbeta/android/framework/io/DocumentFile;->getUri()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/genonbeta/TrebleShot/adapter/TransferListAdapter$StorageStatusItem;->directory:Ljava/lang/String;

    .line 238
    invoke-virtual {v2}, Lcom/genonbeta/android/framework/io/DocumentFile;->getName()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/genonbeta/TrebleShot/adapter/TransferListAdapter$StorageStatusItem;->friendlyName:Ljava/lang/String;

    .line 240
    instance-of v4, v2, Lcom/genonbeta/android/framework/io/LocalDocumentFile;

    if-eqz v4, :cond_2dd

    .line 241
    check-cast v2, Lcom/genonbeta/android/framework/io/LocalDocumentFile;

    invoke-virtual {v2}, Lcom/genonbeta/android/framework/io/LocalDocumentFile;->getFile()Ljava/io/File;

    move-result-object v2

    .line 242
    invoke-virtual {v2}, Ljava/io/File;->getTotalSpace()J

    move-result-wide v4

    iput-wide v4, v3, Lcom/genonbeta/TrebleShot/adapter/TransferListAdapter$StorageStatusItem;->bytesTotal:J

    .line 243
    invoke-virtual {v2}, Ljava/io/File;->getFreeSpace()J

    move-result-wide v4

    iput-wide v4, v3, Lcom/genonbeta/TrebleShot/adapter/TransferListAdapter$StorageStatusItem;->bytesFree:J

    goto :goto_2e3

    :cond_2dd
    const-wide/16 v4, -0x1

    .line 245
    iput-wide v4, v3, Lcom/genonbeta/TrebleShot/adapter/TransferListAdapter$StorageStatusItem;->bytesTotal:J

    .line 246
    iput-wide v4, v3, Lcom/genonbeta/TrebleShot/adapter/TransferListAdapter$StorageStatusItem;->bytesFree:J

    .line 249
    :goto_2e3
    invoke-virtual {v0, v1, v3}, Lcom/genonbeta/TrebleShot/widget/GroupEditableListAdapter$GroupLister;->offerObliged(Lcom/genonbeta/TrebleShot/widget/EditableListAdapterImpl;Lcom/genonbeta/TrebleShot/widget/GroupEditableListAdapter$GroupEditable;)V
    :try_end_2e6
    .catch Ljava/lang/Exception; {:try_start_2b6 .. :try_end_2e6} :catch_2e6

    :catch_2e6
    move-object v7, v3

    goto :goto_2e9

    :catch_2e8
    :cond_2e8
    const/4 v7, 0x0

    .line 255
    :goto_2e9
    new-instance v2, Lcom/genonbeta/TrebleShot/adapter/TransferListAdapter$DetailsTransferFolder;

    iget-object v3, v1, Lcom/genonbeta/TrebleShot/adapter/TransferListAdapter;->mGroup:Lcom/genonbeta/TrebleShot/object/TransferGroup;

    iget-wide v3, v3, Lcom/genonbeta/TrebleShot/object/TransferGroup;->groupId:J

    if-nez v6, :cond_302

    if-nez v14, :cond_2ff

    .line 256
    invoke-virtual/range {p0 .. p0}, Lcom/genonbeta/TrebleShot/adapter/TransferListAdapter;->getContext()Landroid/content/Context;

    move-result-object v5

    const v8, 0x7f1101ae

    invoke-virtual {v5, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_318

    :cond_2ff
    iget-object v5, v14, Lcom/genonbeta/TrebleShot/object/NetworkDevice;->nickname:Ljava/lang/String;

    goto :goto_318

    :cond_302
    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    .line 257
    invoke-virtual {v6, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_317

    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v6, v5}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v5

    const/4 v8, 0x1

    add-int/2addr v5, v8

    invoke-virtual {v6, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_318

    :cond_317
    move-object v5, v6

    :goto_318
    invoke-direct {v2, v3, v4, v5, v6}, Lcom/genonbeta/TrebleShot/adapter/TransferListAdapter$DetailsTransferFolder;-><init>(JLjava/lang/String;Ljava/lang/String;)V

    .line 259
    invoke-virtual {v0, v1, v2}, Lcom/genonbeta/TrebleShot/widget/GroupEditableListAdapter$GroupLister;->offerObliged(Lcom/genonbeta/TrebleShot/widget/EditableListAdapterImpl;Lcom/genonbeta/TrebleShot/widget/GroupEditableListAdapter$GroupEditable;)V

    .line 261
    invoke-interface/range {v17 .. v17}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_326
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_35c

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/genonbeta/TrebleShot/adapter/TransferListAdapter$TransferFolder;

    .line 262
    iget v5, v2, Lcom/genonbeta/TrebleShot/adapter/TransferListAdapter$DetailsTransferFolder;->filesTotal:I

    iget v6, v4, Lcom/genonbeta/TrebleShot/adapter/TransferListAdapter$TransferFolder;->filesTotal:I

    add-int/2addr v5, v6

    iput v5, v2, Lcom/genonbeta/TrebleShot/adapter/TransferListAdapter$DetailsTransferFolder;->filesTotal:I

    .line 263
    iget v5, v2, Lcom/genonbeta/TrebleShot/adapter/TransferListAdapter$DetailsTransferFolder;->filesReceived:I

    iget v6, v4, Lcom/genonbeta/TrebleShot/adapter/TransferListAdapter$TransferFolder;->filesReceived:I

    add-int/2addr v5, v6

    iput v5, v2, Lcom/genonbeta/TrebleShot/adapter/TransferListAdapter$DetailsTransferFolder;->filesReceived:I

    .line 264
    iget-wide v5, v2, Lcom/genonbeta/TrebleShot/adapter/TransferListAdapter$DetailsTransferFolder;->bytesTotal:J

    iget-wide v8, v4, Lcom/genonbeta/TrebleShot/adapter/TransferListAdapter$TransferFolder;->bytesTotal:J

    add-long/2addr v5, v8

    iput-wide v5, v2, Lcom/genonbeta/TrebleShot/adapter/TransferListAdapter$DetailsTransferFolder;->bytesTotal:J

    .line 265
    iget-wide v5, v2, Lcom/genonbeta/TrebleShot/adapter/TransferListAdapter$DetailsTransferFolder;->bytesReceived:J

    iget-wide v8, v4, Lcom/genonbeta/TrebleShot/adapter/TransferListAdapter$TransferFolder;->bytesReceived:J

    add-long/2addr v5, v8

    iput-wide v5, v2, Lcom/genonbeta/TrebleShot/adapter/TransferListAdapter$DetailsTransferFolder;->bytesReceived:J

    .line 267
    invoke-virtual {v4}, Lcom/genonbeta/TrebleShot/adapter/TransferListAdapter$TransferFolder;->hasIssues()Z

    move-result v5

    if-eqz v5, :cond_358

    const/4 v5, 0x1

    .line 268
    invoke-virtual {v2, v5}, Lcom/genonbeta/TrebleShot/adapter/TransferListAdapter$DetailsTransferFolder;->setHasIssues(Z)V

    .line 270
    :cond_358
    invoke-virtual {v0, v1, v4}, Lcom/genonbeta/TrebleShot/widget/GroupEditableListAdapter$GroupLister;->offerObliged(Lcom/genonbeta/TrebleShot/widget/EditableListAdapterImpl;Lcom/genonbeta/TrebleShot/widget/GroupEditableListAdapter$GroupEditable;)V

    goto :goto_326

    .line 273
    :cond_35c
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_360
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3b1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/genonbeta/TrebleShot/adapter/TransferListAdapter$GenericTransferItem;

    .line 274
    invoke-virtual {v4}, Lcom/genonbeta/TrebleShot/adapter/TransferListAdapter$GenericTransferItem;->isComplete()Z

    move-result v5

    if-eqz v5, :cond_381

    .line 275
    iget v5, v2, Lcom/genonbeta/TrebleShot/adapter/TransferListAdapter$DetailsTransferFolder;->filesReceived:I

    const/4 v6, 0x1

    add-int/2addr v5, v6

    iput v5, v2, Lcom/genonbeta/TrebleShot/adapter/TransferListAdapter$DetailsTransferFolder;->filesReceived:I

    .line 276
    iget-wide v5, v2, Lcom/genonbeta/TrebleShot/adapter/TransferListAdapter$DetailsTransferFolder;->bytesReceived:J

    iget-wide v8, v4, Lcom/genonbeta/TrebleShot/adapter/TransferListAdapter$GenericTransferItem;->fileSize:J

    add-long/2addr v5, v8

    iput-wide v5, v2, Lcom/genonbeta/TrebleShot/adapter/TransferListAdapter$DetailsTransferFolder;->bytesReceived:J

    :cond_37f
    :goto_37f
    const/4 v5, 0x1

    goto :goto_3a1

    .line 277
    :cond_381
    sget-object v5, Lcom/genonbeta/TrebleShot/object/TransferObject$Flag;->IN_PROGRESS:Lcom/genonbeta/TrebleShot/object/TransferObject$Flag;

    iget-object v6, v4, Lcom/genonbeta/TrebleShot/adapter/TransferListAdapter$GenericTransferItem;->flag:Lcom/genonbeta/TrebleShot/object/TransferObject$Flag;

    invoke-virtual {v5, v6}, Lcom/genonbeta/TrebleShot/object/TransferObject$Flag;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_397

    .line 278
    iget-wide v5, v2, Lcom/genonbeta/TrebleShot/adapter/TransferListAdapter$DetailsTransferFolder;->bytesReceived:J

    iget-object v8, v4, Lcom/genonbeta/TrebleShot/adapter/TransferListAdapter$GenericTransferItem;->flag:Lcom/genonbeta/TrebleShot/object/TransferObject$Flag;

    invoke-virtual {v8}, Lcom/genonbeta/TrebleShot/object/TransferObject$Flag;->getBytesValue()J

    move-result-wide v8

    add-long/2addr v5, v8

    iput-wide v5, v2, Lcom/genonbeta/TrebleShot/adapter/TransferListAdapter$DetailsTransferFolder;->bytesReceived:J

    goto :goto_37f

    .line 279
    :cond_397
    invoke-virtual {v4}, Lcom/genonbeta/TrebleShot/adapter/TransferListAdapter$GenericTransferItem;->hasIssues()Z

    move-result v5

    if-eqz v5, :cond_37f

    const/4 v5, 0x1

    .line 280
    invoke-virtual {v2, v5}, Lcom/genonbeta/TrebleShot/adapter/TransferListAdapter$DetailsTransferFolder;->setHasIssues(Z)V

    .line 283
    :goto_3a1
    iget v6, v2, Lcom/genonbeta/TrebleShot/adapter/TransferListAdapter$DetailsTransferFolder;->filesTotal:I

    add-int/2addr v6, v5

    iput v6, v2, Lcom/genonbeta/TrebleShot/adapter/TransferListAdapter$DetailsTransferFolder;->filesTotal:I

    .line 284
    iget-wide v8, v2, Lcom/genonbeta/TrebleShot/adapter/TransferListAdapter$DetailsTransferFolder;->bytesTotal:J

    iget-wide v10, v4, Lcom/genonbeta/TrebleShot/adapter/TransferListAdapter$GenericTransferItem;->fileSize:J

    add-long/2addr v8, v10

    iput-wide v8, v2, Lcom/genonbeta/TrebleShot/adapter/TransferListAdapter$DetailsTransferFolder;->bytesTotal:J

    .line 286
    invoke-virtual {v0, v1, v4}, Lcom/genonbeta/TrebleShot/widget/GroupEditableListAdapter$GroupLister;->offerObliged(Lcom/genonbeta/TrebleShot/widget/EditableListAdapterImpl;Lcom/genonbeta/TrebleShot/widget/GroupEditableListAdapter$GroupEditable;)V

    goto :goto_360

    :cond_3b1
    if-eqz v7, :cond_3ba

    .line 290
    iget-wide v3, v2, Lcom/genonbeta/TrebleShot/adapter/TransferListAdapter$DetailsTransferFolder;->bytesTotal:J

    iget-wide v5, v2, Lcom/genonbeta/TrebleShot/adapter/TransferListAdapter$DetailsTransferFolder;->bytesReceived:J

    sub-long/2addr v3, v5

    iput-wide v3, v7, Lcom/genonbeta/TrebleShot/adapter/TransferListAdapter$StorageStatusItem;->bytesRequired:J

    :cond_3ba
    return-void

    :catch_3bb
    move-exception v0

    .line 93
    invoke-virtual {v0}, Lcom/genonbeta/android/database/exception/ReconstructionFailedException;->printStackTrace()V

    return-void
.end method

.method public setDeviceId(Ljava/lang/String;)Z
    .registers 4

    const/4 v0, 0x1

    if-nez p1, :cond_7

    const/4 p1, 0x0

    .line 334
    iput-object p1, p0, Lcom/genonbeta/TrebleShot/adapter/TransferListAdapter;->mDevice:Lcom/genonbeta/TrebleShot/object/NetworkDevice;

    return v0

    .line 338
    :cond_7
    new-instance v1, Lcom/genonbeta/TrebleShot/object/NetworkDevice;

    invoke-direct {v1, p1}, Lcom/genonbeta/TrebleShot/object/NetworkDevice;-><init>(Ljava/lang/String;)V

    .line 341
    :try_start_c
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/adapter/TransferListAdapter;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/genonbeta/TrebleShot/util/AppUtils;->getDatabase(Landroid/content/Context;)Lcom/genonbeta/TrebleShot/database/AccessDatabase;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/genonbeta/TrebleShot/database/AccessDatabase;->reconstruct(Lcom/genonbeta/android/database/DatabaseObject;)V

    .line 342
    iput-object v1, p0, Lcom/genonbeta/TrebleShot/adapter/TransferListAdapter;->mDevice:Lcom/genonbeta/TrebleShot/object/NetworkDevice;
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_19} :catch_1a

    return v0

    :catch_1a
    const/4 p1, 0x0

    return p1
.end method

.method public setGroupId(J)V
    .registers 4

    .line 359
    iget-object v0, p0, Lcom/genonbeta/TrebleShot/adapter/TransferListAdapter;->mGroup:Lcom/genonbeta/TrebleShot/object/TransferGroup;

    iput-wide p1, v0, Lcom/genonbeta/TrebleShot/object/TransferGroup;->groupId:J

    return-void
.end method

.method public setPath(Ljava/lang/String;)V
    .registers 3

    .line 369
    iput-object p1, p0, Lcom/genonbeta/TrebleShot/adapter/TransferListAdapter;->mPath:Ljava/lang/String;

    .line 371
    iget-object v0, p0, Lcom/genonbeta/TrebleShot/adapter/TransferListAdapter;->mListener:Lcom/genonbeta/TrebleShot/adapter/TransferListAdapter$PathChangedListener;

    if-eqz v0, :cond_9

    .line 372
    invoke-interface {v0, p1}, Lcom/genonbeta/TrebleShot/adapter/TransferListAdapter$PathChangedListener;->onPathChange(Ljava/lang/String;)V

    :cond_9
    return-void
.end method

.method public setPathChangedListener(Lcom/genonbeta/TrebleShot/adapter/TransferListAdapter$PathChangedListener;)V
    .registers 2

    .line 416
    iput-object p1, p0, Lcom/genonbeta/TrebleShot/adapter/TransferListAdapter;->mListener:Lcom/genonbeta/TrebleShot/adapter/TransferListAdapter$PathChangedListener;

    return-void
.end method

.method public setSelect(Lcom/genonbeta/android/database/SQLQuery$Select;)Lcom/genonbeta/TrebleShot/adapter/TransferListAdapter;
    .registers 2

    if-eqz p1, :cond_4

    .line 409
    iput-object p1, p0, Lcom/genonbeta/TrebleShot/adapter/TransferListAdapter;->mSelect:Lcom/genonbeta/android/database/SQLQuery$Select;

    :cond_4
    return-object p0
.end method
