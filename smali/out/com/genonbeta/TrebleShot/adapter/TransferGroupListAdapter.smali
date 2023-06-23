.class public Lcom/genonbeta/TrebleShot/adapter/TransferGroupListAdapter;
.super Lcom/genonbeta/TrebleShot/widget/GroupEditableListAdapter;
.source "TransferGroupListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/genonbeta/TrebleShot/adapter/TransferGroupListAdapter$PreloadedGroup;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/genonbeta/TrebleShot/widget/GroupEditableListAdapter<",
        "Lcom/genonbeta/TrebleShot/adapter/TransferGroupListAdapter$PreloadedGroup;",
        "Lcom/genonbeta/TrebleShot/widget/GroupEditableListAdapter$GroupViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private mColorDone:I

.field private mColorError:I

.field private mColorPending:I

.field private mDatabase:Lcom/genonbeta/TrebleShot/database/AccessDatabase;

.field private mPercentFormat:Ljava/text/NumberFormat;

.field private final mRunningTasks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mSelect:Lcom/genonbeta/android/database/SQLQuery$Select;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/genonbeta/TrebleShot/database/AccessDatabase;)V
    .registers 4

    const/16 v0, 0x6e

    .line 54
    invoke-direct {p0, p1, v0}, Lcom/genonbeta/TrebleShot/widget/GroupEditableListAdapter;-><init>(Landroid/content/Context;I)V

    .line 41
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/genonbeta/TrebleShot/adapter/TransferGroupListAdapter;->mRunningTasks:Ljava/util/List;

    .line 56
    iput-object p2, p0, Lcom/genonbeta/TrebleShot/adapter/TransferGroupListAdapter;->mDatabase:Lcom/genonbeta/TrebleShot/database/AccessDatabase;

    .line 57
    invoke-static {}, Ljava/text/NumberFormat;->getPercentInstance()Ljava/text/NumberFormat;

    move-result-object p2

    iput-object p2, p0, Lcom/genonbeta/TrebleShot/adapter/TransferGroupListAdapter;->mPercentFormat:Ljava/text/NumberFormat;

    const p2, 0x7f0300aa

    .line 58
    invoke-static {p1, p2}, Lcom/genonbeta/TrebleShot/util/AppUtils;->getReference(Landroid/content/Context;I)I

    move-result p2

    invoke-static {p1, p2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p2

    iput p2, p0, Lcom/genonbeta/TrebleShot/adapter/TransferGroupListAdapter;->mColorPending:I

    const p2, 0x7f0300a5

    .line 59
    invoke-static {p1, p2}, Lcom/genonbeta/TrebleShot/util/AppUtils;->getReference(Landroid/content/Context;I)I

    move-result p2

    invoke-static {p1, p2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p2

    iput p2, p0, Lcom/genonbeta/TrebleShot/adapter/TransferGroupListAdapter;->mColorDone:I

    const p2, 0x7f0300ad

    .line 60
    invoke-static {p1, p2}, Lcom/genonbeta/TrebleShot/util/AppUtils;->getReference(Landroid/content/Context;I)I

    move-result p2

    invoke-static {p1, p2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p1

    iput p1, p0, Lcom/genonbeta/TrebleShot/adapter/TransferGroupListAdapter;->mColorError:I

    .line 62
    new-instance p1, Lcom/genonbeta/android/database/SQLQuery$Select;

    const/4 p2, 0x0

    new-array p2, p2, [Ljava/lang/String;

    const-string v0, "transferGroup"

    invoke-direct {p1, v0, p2}, Lcom/genonbeta/android/database/SQLQuery$Select;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/genonbeta/TrebleShot/adapter/TransferGroupListAdapter;->setSelect(Lcom/genonbeta/android/database/SQLQuery$Select;)Lcom/genonbeta/TrebleShot/adapter/TransferGroupListAdapter;

    return-void
.end method


# virtual methods
.method public getSelect()Lcom/genonbeta/android/database/SQLQuery$Select;
    .registers 2

    .line 112
    iget-object v0, p0, Lcom/genonbeta/TrebleShot/adapter/TransferGroupListAdapter;->mSelect:Lcom/genonbeta/android/database/SQLQuery$Select;

    return-object v0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .registers 3

    .line 38
    check-cast p1, Lcom/genonbeta/TrebleShot/widget/GroupEditableListAdapter$GroupViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/genonbeta/TrebleShot/adapter/TransferGroupListAdapter;->onBindViewHolder(Lcom/genonbeta/TrebleShot/widget/GroupEditableListAdapter$GroupViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/genonbeta/TrebleShot/widget/GroupEditableListAdapter$GroupViewHolder;I)V
    .registers 13

    .line 137
    :try_start_0
    invoke-virtual {p0, p2}, Lcom/genonbeta/TrebleShot/adapter/TransferGroupListAdapter;->getItem(I)Lcom/genonbeta/TrebleShot/object/Editable;

    move-result-object p2

    check-cast p2, Lcom/genonbeta/TrebleShot/adapter/TransferGroupListAdapter$PreloadedGroup;

    .line 139
    invoke-virtual {p1, p2}, Lcom/genonbeta/TrebleShot/widget/GroupEditableListAdapter$GroupViewHolder;->tryBinding(Lcom/genonbeta/TrebleShot/widget/GroupEditableListAdapter$GroupEditable;)Z

    move-result v0

    if-nez v0, :cond_132

    .line 140
    invoke-virtual {p1}, Lcom/genonbeta/TrebleShot/widget/GroupEditableListAdapter$GroupViewHolder;->getView()Landroid/view/View;

    move-result-object p1

    .line 143
    iget-wide v0, p2, Lcom/genonbeta/TrebleShot/adapter/TransferGroupListAdapter$PreloadedGroup;->totalPercent:D

    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    mul-double v0, v0, v2

    double-to-int v0, v0

    const v1, 0x7f090199

    .line 144
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ProgressBar;

    const v2, 0x7f09010f

    .line 145
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    const v3, 0x7f0901d8

    .line 146
    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const v4, 0x7f0901e9

    .line 147
    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    const v5, 0x7f0901eb

    .line 148
    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    const v6, 0x7f0901ec

    .line 149
    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    const v7, 0x7f0901ed

    .line 150
    invoke-virtual {p1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 152
    invoke-virtual {p2}, Lcom/genonbeta/TrebleShot/adapter/TransferGroupListAdapter$PreloadedGroup;->isSelectableSelected()Z

    move-result v8

    invoke-virtual {p1, v8}, Landroid/view/View;->setSelected(Z)V

    .line 154
    iget-object p1, p2, Lcom/genonbeta/TrebleShot/adapter/TransferGroupListAdapter$PreloadedGroup;->index:Lcom/genonbeta/TrebleShot/object/TransferGroup$Index;

    iget-boolean p1, p1, Lcom/genonbeta/TrebleShot/object/TransferGroup$Index;->hasIssues:Z

    if-eqz p1, :cond_64

    .line 155
    iget p1, p0, Lcom/genonbeta/TrebleShot/adapter/TransferGroupListAdapter;->mColorError:I

    goto :goto_6f

    .line 157
    :cond_64
    iget p1, p2, Lcom/genonbeta/TrebleShot/adapter/TransferGroupListAdapter$PreloadedGroup;->totalCount:I

    iget v8, p2, Lcom/genonbeta/TrebleShot/adapter/TransferGroupListAdapter$PreloadedGroup;->totalCountCompleted:I

    if-ne p1, v8, :cond_6d

    iget p1, p0, Lcom/genonbeta/TrebleShot/adapter/TransferGroupListAdapter;->mColorDone:I

    goto :goto_6f

    :cond_6d
    iget p1, p0, Lcom/genonbeta/TrebleShot/adapter/TransferGroupListAdapter;->mColorPending:I

    .line 161
    :goto_6f
    iget-boolean v8, p2, Lcom/genonbeta/TrebleShot/adapter/TransferGroupListAdapter$PreloadedGroup;->isRunning:Z

    if-eqz v8, :cond_7a

    const v8, 0x7f0700e8

    .line 162
    invoke-virtual {v2, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_b3

    .line 164
    :cond_7a
    iget-object v8, p2, Lcom/genonbeta/TrebleShot/adapter/TransferGroupListAdapter$PreloadedGroup;->index:Lcom/genonbeta/TrebleShot/object/TransferGroup$Index;

    iget v8, v8, Lcom/genonbeta/TrebleShot/object/TransferGroup$Index;->outgoingCount:I

    if-nez v8, :cond_86

    iget-object v8, p2, Lcom/genonbeta/TrebleShot/adapter/TransferGroupListAdapter$PreloadedGroup;->index:Lcom/genonbeta/TrebleShot/object/TransferGroup$Index;

    iget v8, v8, Lcom/genonbeta/TrebleShot/object/TransferGroup$Index;->incomingCount:I

    if-eqz v8, :cond_92

    :cond_86
    iget-object v8, p2, Lcom/genonbeta/TrebleShot/adapter/TransferGroupListAdapter$PreloadedGroup;->index:Lcom/genonbeta/TrebleShot/object/TransferGroup$Index;

    iget v8, v8, Lcom/genonbeta/TrebleShot/object/TransferGroup$Index;->outgoingCount:I

    if-lez v8, :cond_a3

    iget-object v8, p2, Lcom/genonbeta/TrebleShot/adapter/TransferGroupListAdapter$PreloadedGroup;->index:Lcom/genonbeta/TrebleShot/object/TransferGroup$Index;

    iget v8, v8, Lcom/genonbeta/TrebleShot/object/TransferGroup$Index;->incomingCount:I

    if-lez v8, :cond_a3

    .line 166
    :cond_92
    iget-object v8, p2, Lcom/genonbeta/TrebleShot/adapter/TransferGroupListAdapter$PreloadedGroup;->index:Lcom/genonbeta/TrebleShot/object/TransferGroup$Index;

    iget v8, v8, Lcom/genonbeta/TrebleShot/object/TransferGroup$Index;->outgoingCount:I

    if-lez v8, :cond_9c

    const v8, 0x7f0700b1

    goto :goto_9f

    :cond_9c
    const v8, 0x7f0700bd

    :goto_9f
    invoke-virtual {v2, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_b3

    .line 170
    :cond_a3
    iget-object v8, p2, Lcom/genonbeta/TrebleShot/adapter/TransferGroupListAdapter$PreloadedGroup;->index:Lcom/genonbeta/TrebleShot/object/TransferGroup$Index;

    iget v8, v8, Lcom/genonbeta/TrebleShot/object/TransferGroup$Index;->outgoingCount:I

    if-lez v8, :cond_ad

    const v8, 0x7f0700a1

    goto :goto_b0

    :cond_ad
    const v8, 0x7f0700a0

    :goto_b0
    invoke-virtual {v2, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 175
    :goto_b3
    iget-object v8, p2, Lcom/genonbeta/TrebleShot/adapter/TransferGroupListAdapter$PreloadedGroup;->index:Lcom/genonbeta/TrebleShot/object/TransferGroup$Index;

    iget v8, v8, Lcom/genonbeta/TrebleShot/object/TransferGroup$Index;->outgoingCount:I

    const/4 v9, 0x0

    if-lez v8, :cond_c0

    iget-boolean v8, p2, Lcom/genonbeta/TrebleShot/adapter/TransferGroupListAdapter$PreloadedGroup;->isServedOnWeb:Z

    if-eqz v8, :cond_c0

    const/4 v8, 0x0

    goto :goto_c2

    :cond_c0
    const/16 v8, 0x8

    :goto_c2
    invoke-virtual {v3, v8}, Landroid/view/View;->setVisibility(I)V

    .line 177
    iget-object v3, p2, Lcom/genonbeta/TrebleShot/adapter/TransferGroupListAdapter$PreloadedGroup;->assignees:Ljava/lang/String;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 178
    iget-wide v3, p2, Lcom/genonbeta/TrebleShot/adapter/TransferGroupListAdapter$PreloadedGroup;->totalBytes:J

    invoke-static {v3, v4, v9}, Lcom/genonbeta/TrebleShot/util/FileUtils;->sizeExpression(JZ)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 179
    iget-object v3, p0, Lcom/genonbeta/TrebleShot/adapter/TransferGroupListAdapter;->mPercentFormat:Ljava/text/NumberFormat;

    iget-wide v4, p2, Lcom/genonbeta/TrebleShot/adapter/TransferGroupListAdapter$PreloadedGroup;->totalPercent:D

    invoke-virtual {v3, v4, v5}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 180
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/adapter/TransferGroupListAdapter;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f11023a

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    iget v6, p2, Lcom/genonbeta/TrebleShot/adapter/TransferGroupListAdapter$PreloadedGroup;->totalCountCompleted:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v9

    iget p2, p2, Lcom/genonbeta/TrebleShot/adapter/TransferGroupListAdapter$PreloadedGroup;->totalCount:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/4 v6, 0x1

    aput-object p2, v5, v6

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v7, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 p2, 0x64

    .line 181
    invoke-virtual {v1, p2}, Landroid/widget/ProgressBar;->setMax(I)V

    if-gtz v0, :cond_108

    const/4 v0, 0x1

    .line 182
    :cond_108
    invoke-virtual {v1, v0}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 183
    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p2

    invoke-static {v2, p2}, Landroidx/core/widget/ImageViewCompat;->setImageTintList(Landroid/widget/ImageView;Landroid/content/res/ColorStateList;)V

    .line 185
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x15

    if-ge p2, v0, :cond_12b

    .line 186
    invoke-virtual {v1}, Landroid/widget/ProgressBar;->getProgressDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-static {p2}, Landroidx/core/graphics/drawable/DrawableCompat;->wrap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    .line 188
    invoke-static {p2, p1}, Landroidx/core/graphics/drawable/DrawableCompat;->setTint(Landroid/graphics/drawable/Drawable;I)V

    .line 189
    invoke-static {p2}, Landroidx/core/graphics/drawable/DrawableCompat;->unwrap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/widget/ProgressBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_132

    .line 191
    :cond_12b
    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/widget/ProgressBar;->setProgressTintList(Landroid/content/res/ColorStateList;)V
    :try_end_132
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_132} :catch_132

    :catch_132
    :cond_132
    :goto_132
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .registers 3

    .line 38
    invoke-virtual {p0, p1, p2}, Lcom/genonbeta/TrebleShot/adapter/TransferGroupListAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/genonbeta/TrebleShot/widget/GroupEditableListAdapter$GroupViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/genonbeta/TrebleShot/widget/GroupEditableListAdapter$GroupViewHolder;
    .registers 6

    const/4 v0, 0x0

    const/16 v1, 0x64

    if-ne p2, v1, :cond_19

    .line 128
    new-instance p2, Lcom/genonbeta/TrebleShot/widget/GroupEditableListAdapter$GroupViewHolder;

    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/adapter/TransferGroupListAdapter;->getInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0c0063

    invoke-virtual {v1, v2, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const v0, 0x7f090138

    invoke-direct {p2, p1, v0}, Lcom/genonbeta/TrebleShot/widget/GroupEditableListAdapter$GroupViewHolder;-><init>(Landroid/view/View;I)V

    return-object p2

    .line 130
    :cond_19
    new-instance p2, Lcom/genonbeta/TrebleShot/widget/GroupEditableListAdapter$GroupViewHolder;

    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/adapter/TransferGroupListAdapter;->getInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0c008b

    invoke-virtual {v1, v2, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/genonbeta/TrebleShot/widget/GroupEditableListAdapter$GroupViewHolder;-><init>(Landroid/view/View;)V

    return-object p2
.end method

.method protected onGenerateRepresentative(Ljava/lang/String;)Lcom/genonbeta/TrebleShot/adapter/TransferGroupListAdapter$PreloadedGroup;
    .registers 3

    .line 107
    new-instance v0, Lcom/genonbeta/TrebleShot/adapter/TransferGroupListAdapter$PreloadedGroup;

    invoke-direct {v0, p1}, Lcom/genonbeta/TrebleShot/adapter/TransferGroupListAdapter$PreloadedGroup;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method protected bridge synthetic onGenerateRepresentative(Ljava/lang/String;)Lcom/genonbeta/TrebleShot/widget/GroupEditableListAdapter$GroupEditable;
    .registers 2

    .line 38
    invoke-virtual {p0, p1}, Lcom/genonbeta/TrebleShot/adapter/TransferGroupListAdapter;->onGenerateRepresentative(Ljava/lang/String;)Lcom/genonbeta/TrebleShot/adapter/TransferGroupListAdapter$PreloadedGroup;

    move-result-object p1

    return-object p1
.end method

.method protected onLoad(Lcom/genonbeta/TrebleShot/widget/GroupEditableListAdapter$GroupLister;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/genonbeta/TrebleShot/widget/GroupEditableListAdapter$GroupLister<",
            "Lcom/genonbeta/TrebleShot/adapter/TransferGroupListAdapter$PreloadedGroup;",
            ">;)V"
        }
    .end annotation

    .line 69
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/genonbeta/TrebleShot/adapter/TransferGroupListAdapter;->mRunningTasks:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 71
    iget-object v1, p0, Lcom/genonbeta/TrebleShot/adapter/TransferGroupListAdapter;->mDatabase:Lcom/genonbeta/TrebleShot/database/AccessDatabase;

    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/adapter/TransferGroupListAdapter;->getSelect()Lcom/genonbeta/android/database/SQLQuery$Select;

    move-result-object v2

    const-class v3, Lcom/genonbeta/TrebleShot/adapter/TransferGroupListAdapter$PreloadedGroup;

    invoke-virtual {v1, v2, v3}, Lcom/genonbeta/TrebleShot/database/AccessDatabase;->castQuery(Lcom/genonbeta/android/database/SQLQuery$Select;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_17
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_fc

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/genonbeta/TrebleShot/adapter/TransferGroupListAdapter$PreloadedGroup;

    .line 72
    iget-object v3, p0, Lcom/genonbeta/TrebleShot/adapter/TransferGroupListAdapter;->mDatabase:Lcom/genonbeta/TrebleShot/database/AccessDatabase;

    iget-wide v4, v2, Lcom/genonbeta/TrebleShot/adapter/TransferGroupListAdapter$PreloadedGroup;->groupId:J

    iget-object v6, v2, Lcom/genonbeta/TrebleShot/adapter/TransferGroupListAdapter$PreloadedGroup;->index:Lcom/genonbeta/TrebleShot/object/TransferGroup$Index;

    invoke-virtual {v3, v4, v5, v6}, Lcom/genonbeta/TrebleShot/database/AccessDatabase;->calculateTransactionSize(JLcom/genonbeta/TrebleShot/object/TransferGroup$Index;)V

    .line 74
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 76
    iget-object v4, v2, Lcom/genonbeta/TrebleShot/adapter/TransferGroupListAdapter$PreloadedGroup;->index:Lcom/genonbeta/TrebleShot/object/TransferGroup$Index;

    iget-object v4, v4, Lcom/genonbeta/TrebleShot/object/TransferGroup$Index;->assignees:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_39
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_58

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/genonbeta/TrebleShot/object/ShowingAssignee;

    .line 77
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    if-lez v6, :cond_50

    const-string v6, ", "

    .line 78
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    :cond_50
    iget-object v5, v5, Lcom/genonbeta/TrebleShot/object/ShowingAssignee;->device:Lcom/genonbeta/TrebleShot/object/NetworkDevice;

    iget-object v5, v5, Lcom/genonbeta/TrebleShot/object/NetworkDevice;->nickname:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_39

    .line 83
    :cond_58
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-nez v4, :cond_70

    iget-boolean v4, v2, Lcom/genonbeta/TrebleShot/adapter/TransferGroupListAdapter$PreloadedGroup;->isServedOnWeb:Z

    if-eqz v4, :cond_70

    .line 84
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/adapter/TransferGroupListAdapter;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f110239

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    :cond_70
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/adapter/TransferGroupListAdapter;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f05001e

    invoke-virtual {v4, v5}, Landroid/content/Context;->getColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 87
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-lez v4, :cond_89

    .line 88
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_94

    .line 89
    :cond_89
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/adapter/TransferGroupListAdapter;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f11018d

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    :goto_94
    iput-object v3, v2, Lcom/genonbeta/TrebleShot/adapter/TransferGroupListAdapter$PreloadedGroup;->assignees:Ljava/lang/String;

    .line 91
    iget-wide v3, v2, Lcom/genonbeta/TrebleShot/adapter/TransferGroupListAdapter$PreloadedGroup;->groupId:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    iput-boolean v3, v2, Lcom/genonbeta/TrebleShot/adapter/TransferGroupListAdapter$PreloadedGroup;->isRunning:Z

    .line 92
    iget-object v3, v2, Lcom/genonbeta/TrebleShot/adapter/TransferGroupListAdapter$PreloadedGroup;->index:Lcom/genonbeta/TrebleShot/object/TransferGroup$Index;

    iget v3, v3, Lcom/genonbeta/TrebleShot/object/TransferGroup$Index;->incomingCount:I

    iget-object v4, v2, Lcom/genonbeta/TrebleShot/adapter/TransferGroupListAdapter$PreloadedGroup;->index:Lcom/genonbeta/TrebleShot/object/TransferGroup$Index;

    iget v4, v4, Lcom/genonbeta/TrebleShot/object/TransferGroup$Index;->outgoingCount:I

    add-int/2addr v3, v4

    iput v3, v2, Lcom/genonbeta/TrebleShot/adapter/TransferGroupListAdapter$PreloadedGroup;->totalCount:I

    .line 93
    iget-object v3, v2, Lcom/genonbeta/TrebleShot/adapter/TransferGroupListAdapter$PreloadedGroup;->index:Lcom/genonbeta/TrebleShot/object/TransferGroup$Index;

    iget-wide v3, v3, Lcom/genonbeta/TrebleShot/object/TransferGroup$Index;->incoming:J

    iget-object v5, v2, Lcom/genonbeta/TrebleShot/adapter/TransferGroupListAdapter$PreloadedGroup;->index:Lcom/genonbeta/TrebleShot/object/TransferGroup$Index;

    iget-wide v5, v5, Lcom/genonbeta/TrebleShot/object/TransferGroup$Index;->outgoing:J

    add-long/2addr v3, v5

    iput-wide v3, v2, Lcom/genonbeta/TrebleShot/adapter/TransferGroupListAdapter$PreloadedGroup;->totalBytes:J

    .line 94
    iget-object v3, v2, Lcom/genonbeta/TrebleShot/adapter/TransferGroupListAdapter$PreloadedGroup;->index:Lcom/genonbeta/TrebleShot/object/TransferGroup$Index;

    iget-wide v3, v3, Lcom/genonbeta/TrebleShot/object/TransferGroup$Index;->incomingCompleted:J

    iget-object v5, v2, Lcom/genonbeta/TrebleShot/adapter/TransferGroupListAdapter$PreloadedGroup;->index:Lcom/genonbeta/TrebleShot/object/TransferGroup$Index;

    iget-wide v5, v5, Lcom/genonbeta/TrebleShot/object/TransferGroup$Index;->outgoingCompleted:J

    add-long/2addr v3, v5

    iput-wide v3, v2, Lcom/genonbeta/TrebleShot/adapter/TransferGroupListAdapter$PreloadedGroup;->totalBytesCompleted:J

    .line 95
    iget-object v3, v2, Lcom/genonbeta/TrebleShot/adapter/TransferGroupListAdapter$PreloadedGroup;->index:Lcom/genonbeta/TrebleShot/object/TransferGroup$Index;

    iget v3, v3, Lcom/genonbeta/TrebleShot/object/TransferGroup$Index;->incomingCountCompleted:I

    iget-object v4, v2, Lcom/genonbeta/TrebleShot/adapter/TransferGroupListAdapter$PreloadedGroup;->index:Lcom/genonbeta/TrebleShot/object/TransferGroup$Index;

    iget v4, v4, Lcom/genonbeta/TrebleShot/object/TransferGroup$Index;->outgoingCountCompleted:I

    add-int/2addr v3, v4

    iput v3, v2, Lcom/genonbeta/TrebleShot/adapter/TransferGroupListAdapter$PreloadedGroup;->totalCountCompleted:I

    .line 97
    iget-wide v3, v2, Lcom/genonbeta/TrebleShot/adapter/TransferGroupListAdapter$PreloadedGroup;->totalBytesCompleted:J

    const-wide/16 v5, 0x0

    cmp-long v7, v3, v5

    if-eqz v7, :cond_f3

    iget-wide v3, v2, Lcom/genonbeta/TrebleShot/adapter/TransferGroupListAdapter$PreloadedGroup;->totalBytes:J

    cmp-long v7, v3, v5

    if-nez v7, :cond_dd

    goto :goto_f3

    :cond_dd
    iget-wide v3, v2, Lcom/genonbeta/TrebleShot/adapter/TransferGroupListAdapter$PreloadedGroup;->totalBytesCompleted:J

    .line 98
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->doubleValue()D

    move-result-wide v3

    iget-wide v5, v2, Lcom/genonbeta/TrebleShot/adapter/TransferGroupListAdapter$PreloadedGroup;->totalBytes:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Long;->doubleValue()D

    move-result-wide v5

    div-double/2addr v3, v5

    goto :goto_f5

    :cond_f3
    :goto_f3
    const-wide/16 v3, 0x0

    :goto_f5
    iput-wide v3, v2, Lcom/genonbeta/TrebleShot/adapter/TransferGroupListAdapter$PreloadedGroup;->totalPercent:D

    .line 100
    invoke-virtual {p1, p0, v2}, Lcom/genonbeta/TrebleShot/widget/GroupEditableListAdapter$GroupLister;->offerObliged(Lcom/genonbeta/TrebleShot/widget/EditableListAdapterImpl;Lcom/genonbeta/TrebleShot/widget/GroupEditableListAdapter$GroupEditable;)V

    goto/16 :goto_17

    :cond_fc
    return-void
.end method

.method public setSelect(Lcom/genonbeta/android/database/SQLQuery$Select;)Lcom/genonbeta/TrebleShot/adapter/TransferGroupListAdapter;
    .registers 2

    if-eqz p1, :cond_4

    .line 118
    iput-object p1, p0, Lcom/genonbeta/TrebleShot/adapter/TransferGroupListAdapter;->mSelect:Lcom/genonbeta/android/database/SQLQuery$Select;

    :cond_4
    return-object p0
.end method

.method public updateActiveList([J)V
    .registers 8

    .line 199
    iget-object v0, p0, Lcom/genonbeta/TrebleShot/adapter/TransferGroupListAdapter;->mRunningTasks:Ljava/util/List;

    monitor-enter v0

    .line 200
    :try_start_3
    iget-object v1, p0, Lcom/genonbeta/TrebleShot/adapter/TransferGroupListAdapter;->mRunningTasks:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 202
    array-length v1, p1

    const/4 v2, 0x0

    :goto_a
    if-ge v2, v1, :cond_1a

    aget-wide v3, p1, v2

    .line 203
    iget-object v5, p0, Lcom/genonbeta/TrebleShot/adapter/TransferGroupListAdapter;->mRunningTasks:Ljava/util/List;

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v5, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 204
    :cond_1a
    monitor-exit v0

    return-void

    :catchall_1c
    move-exception p1

    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_3 .. :try_end_1e} :catchall_1c

    goto :goto_20

    :goto_1f
    throw p1

    :goto_20
    goto :goto_1f
.end method
