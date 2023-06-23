.class public Lcom/genonbeta/TrebleShot/adapter/FileListAdapter;
.super Lcom/genonbeta/TrebleShot/widget/GroupEditableListAdapter;
.source "FileListAdapter.java"

# interfaces
.implements Lcom/genonbeta/TrebleShot/widget/GroupEditableListAdapter$GroupLister$CustomGroupLister;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/genonbeta/TrebleShot/adapter/FileListAdapter$PublicDirectoryHolder;,
        Lcom/genonbeta/TrebleShot/adapter/FileListAdapter$RecentFileHolder;,
        Lcom/genonbeta/TrebleShot/adapter/FileListAdapter$FileHolderMerger;,
        Lcom/genonbeta/TrebleShot/adapter/FileListAdapter$WritablePathHolder;,
        Lcom/genonbeta/TrebleShot/adapter/FileListAdapter$StorageHolder;,
        Lcom/genonbeta/TrebleShot/adapter/FileListAdapter$ShortcutDirectoryHolder;,
        Lcom/genonbeta/TrebleShot/adapter/FileListAdapter$DirectoryHolder;,
        Lcom/genonbeta/TrebleShot/adapter/FileListAdapter$ReceivedFileHolder;,
        Lcom/genonbeta/TrebleShot/adapter/FileListAdapter$FileHolder;,
        Lcom/genonbeta/TrebleShot/adapter/FileListAdapter$GenericFileHolder;,
        Lcom/genonbeta/TrebleShot/adapter/FileListAdapter$StorageHolderImpl;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/genonbeta/TrebleShot/widget/GroupEditableListAdapter<",
        "Lcom/genonbeta/TrebleShot/adapter/FileListAdapter$GenericFileHolder;",
        "Lcom/genonbeta/TrebleShot/widget/GroupEditableListAdapter$GroupViewHolder;",
        ">;",
        "Lcom/genonbeta/TrebleShot/widget/GroupEditableListAdapter$GroupLister$CustomGroupLister<",
        "Lcom/genonbeta/TrebleShot/adapter/FileListAdapter$GenericFileHolder;",
        ">;"
    }
.end annotation


# static fields
.field public static final MODE_GROUP_BY_DEFAULT:I = 0x65

.field public static final REQUEST_CODE_MOUNT_FOLDER:I = 0x1


# instance fields
.field private mFileMatch:Ljava/lang/String;

.field private mPath:Lcom/genonbeta/android/framework/io/DocumentFile;

.field private mShowDirectories:Z

.field private mShowFiles:Z

.field private mShowThumbnails:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/16 v0, 0x65

    .line 58
    invoke-direct {p0, p1, v0}, Lcom/genonbeta/TrebleShot/widget/GroupEditableListAdapter;-><init>(Landroid/content/Context;I)V

    const/4 p1, 0x1

    .line 50
    iput-boolean p1, p0, Lcom/genonbeta/TrebleShot/adapter/FileListAdapter;->mShowDirectories:Z

    .line 51
    iput-boolean p1, p0, Lcom/genonbeta/TrebleShot/adapter/FileListAdapter;->mShowFiles:Z

    .line 52
    iput-boolean p1, p0, Lcom/genonbeta/TrebleShot/adapter/FileListAdapter;->mShowThumbnails:Z

    return-void
.end method


# virtual methods
.method public buildPath([Ljava/lang/String;I)Ljava/lang/String;
    .registers 6

    .line 312
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    :goto_6
    if-ge v1, p2, :cond_18

    .line 314
    array-length v2, p1

    if-ge v1, v2, :cond_18

    .line 315
    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 316
    aget-object v2, p1, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 319
    :cond_18
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public createLister(Ljava/util/List;I)Lcom/genonbeta/TrebleShot/widget/GroupEditableListAdapter$GroupLister;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/genonbeta/TrebleShot/adapter/FileListAdapter$GenericFileHolder;",
            ">;I)",
            "Lcom/genonbeta/TrebleShot/widget/GroupEditableListAdapter$GroupLister<",
            "Lcom/genonbeta/TrebleShot/adapter/FileListAdapter$GenericFileHolder;",
            ">;"
        }
    .end annotation

    .line 324
    invoke-super {p0, p1, p2}, Lcom/genonbeta/TrebleShot/widget/GroupEditableListAdapter;->createLister(Ljava/util/List;I)Lcom/genonbeta/TrebleShot/widget/GroupEditableListAdapter$GroupLister;

    move-result-object p1

    .line 325
    invoke-virtual {p1, p0}, Lcom/genonbeta/TrebleShot/widget/GroupEditableListAdapter$GroupLister;->setCustomLister(Lcom/genonbeta/TrebleShot/widget/GroupEditableListAdapter$GroupLister$CustomGroupLister;)Lcom/genonbeta/TrebleShot/widget/GroupEditableListAdapter$GroupLister;

    move-result-object p1

    return-object p1
.end method

.method public getPath()Lcom/genonbeta/android/framework/io/DocumentFile;
    .registers 2

    .line 353
    iget-object v0, p0, Lcom/genonbeta/TrebleShot/adapter/FileListAdapter;->mPath:Lcom/genonbeta/android/framework/io/DocumentFile;

    return-object v0
.end method

.method public getRepresentativeText(Lcom/genonbeta/android/framework/util/listing/Merger;)Ljava/lang/String;
    .registers 3

    .line 364
    instance-of v0, p1, Lcom/genonbeta/TrebleShot/adapter/FileListAdapter$FileHolderMerger;

    if-eqz v0, :cond_69

    .line 365
    sget-object v0, Lcom/genonbeta/TrebleShot/adapter/FileListAdapter$1;->$SwitchMap$com$genonbeta$TrebleShot$adapter$FileListAdapter$FileHolderMerger$Type:[I

    check-cast p1, Lcom/genonbeta/TrebleShot/adapter/FileListAdapter$FileHolderMerger;

    invoke-virtual {p1}, Lcom/genonbeta/TrebleShot/adapter/FileListAdapter$FileHolderMerger;->getType()Lcom/genonbeta/TrebleShot/adapter/FileListAdapter$FileHolderMerger$Type;

    move-result-object p1

    invoke-virtual {p1}, Lcom/genonbeta/TrebleShot/adapter/FileListAdapter$FileHolderMerger$Type;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_5d

    const/4 v0, 0x2

    if-eq p1, v0, :cond_51

    const/4 v0, 0x3

    if-eq p1, v0, :cond_45

    const/4 v0, 0x4

    if-eq p1, v0, :cond_39

    const/4 v0, 0x5

    if-eq p1, v0, :cond_2d

    .line 377
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/adapter/FileListAdapter;->getContext()Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f110192

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 375
    :cond_2d
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/adapter/FileListAdapter;->getContext()Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f1101eb

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 373
    :cond_39
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/adapter/FileListAdapter;->getContext()Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f1101ff

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 371
    :cond_45
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/adapter/FileListAdapter;->getContext()Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f1101a7

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 369
    :cond_51
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/adapter/FileListAdapter;->getContext()Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f11021e

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 367
    :cond_5d
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/adapter/FileListAdapter;->getContext()Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f110229

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 381
    :cond_69
    invoke-super {p0, p1}, Lcom/genonbeta/TrebleShot/widget/GroupEditableListAdapter;->getRepresentativeText(Lcom/genonbeta/android/framework/util/listing/Merger;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getSortingCriteria(Lcom/genonbeta/TrebleShot/adapter/FileListAdapter$GenericFileHolder;Lcom/genonbeta/TrebleShot/adapter/FileListAdapter$GenericFileHolder;)I
    .registers 4

    .line 332
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/adapter/FileListAdapter;->getPath()Lcom/genonbeta/android/framework/io/DocumentFile;

    move-result-object v0

    if-nez v0, :cond_11

    instance-of v0, p1, Lcom/genonbeta/TrebleShot/adapter/FileListAdapter$RecentFileHolder;

    if-eqz v0, :cond_11

    instance-of v0, p2, Lcom/genonbeta/TrebleShot/adapter/FileListAdapter$RecentFileHolder;

    if-eqz v0, :cond_11

    const/16 p1, 0x6e

    return p1

    .line 336
    :cond_11
    invoke-super {p0, p1, p2}, Lcom/genonbeta/TrebleShot/widget/GroupEditableListAdapter;->getSortingCriteria(Lcom/genonbeta/TrebleShot/object/Editable;Lcom/genonbeta/TrebleShot/object/Editable;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic getSortingCriteria(Lcom/genonbeta/TrebleShot/object/Editable;Lcom/genonbeta/TrebleShot/object/Editable;)I
    .registers 3

    .line 43
    check-cast p1, Lcom/genonbeta/TrebleShot/adapter/FileListAdapter$GenericFileHolder;

    check-cast p2, Lcom/genonbeta/TrebleShot/adapter/FileListAdapter$GenericFileHolder;

    invoke-virtual {p0, p1, p2}, Lcom/genonbeta/TrebleShot/adapter/FileListAdapter;->getSortingCriteria(Lcom/genonbeta/TrebleShot/adapter/FileListAdapter$GenericFileHolder;Lcom/genonbeta/TrebleShot/adapter/FileListAdapter$GenericFileHolder;)I

    move-result p1

    return p1
.end method

.method public getSortingOrder(Lcom/genonbeta/TrebleShot/adapter/FileListAdapter$GenericFileHolder;Lcom/genonbeta/TrebleShot/adapter/FileListAdapter$GenericFileHolder;)I
    .registers 4

    .line 343
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/adapter/FileListAdapter;->getPath()Lcom/genonbeta/android/framework/io/DocumentFile;

    move-result-object v0

    if-nez v0, :cond_11

    instance-of v0, p1, Lcom/genonbeta/TrebleShot/adapter/FileListAdapter$RecentFileHolder;

    if-eqz v0, :cond_11

    instance-of v0, p2, Lcom/genonbeta/TrebleShot/adapter/FileListAdapter$RecentFileHolder;

    if-eqz v0, :cond_11

    const/16 p1, 0x6e

    return p1

    .line 347
    :cond_11
    invoke-super {p0, p1, p2}, Lcom/genonbeta/TrebleShot/widget/GroupEditableListAdapter;->getSortingOrder(Lcom/genonbeta/TrebleShot/object/Editable;Lcom/genonbeta/TrebleShot/object/Editable;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic getSortingOrder(Lcom/genonbeta/TrebleShot/object/Editable;Lcom/genonbeta/TrebleShot/object/Editable;)I
    .registers 3

    .line 43
    check-cast p1, Lcom/genonbeta/TrebleShot/adapter/FileListAdapter$GenericFileHolder;

    check-cast p2, Lcom/genonbeta/TrebleShot/adapter/FileListAdapter$GenericFileHolder;

    invoke-virtual {p0, p1, p2}, Lcom/genonbeta/TrebleShot/adapter/FileListAdapter;->getSortingOrder(Lcom/genonbeta/TrebleShot/adapter/FileListAdapter$GenericFileHolder;Lcom/genonbeta/TrebleShot/adapter/FileListAdapter$GenericFileHolder;)I

    move-result p1

    return p1
.end method

.method public goPath(Lcom/genonbeta/android/framework/io/DocumentFile;)V
    .registers 2

    .line 386
    iput-object p1, p0, Lcom/genonbeta/TrebleShot/adapter/FileListAdapter;->mPath:Lcom/genonbeta/android/framework/io/DocumentFile;

    return-void
.end method

.method public goPath(Ljava/io/File;)V
    .registers 2

    .line 358
    invoke-static {p1}, Lcom/genonbeta/android/framework/io/DocumentFile;->fromFile(Ljava/io/File;)Lcom/genonbeta/android/framework/io/DocumentFile;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/genonbeta/TrebleShot/adapter/FileListAdapter;->goPath(Lcom/genonbeta/android/framework/io/DocumentFile;)V

    return-void
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .registers 3

    .line 43
    check-cast p1, Lcom/genonbeta/TrebleShot/widget/GroupEditableListAdapter$GroupViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/genonbeta/TrebleShot/adapter/FileListAdapter;->onBindViewHolder(Lcom/genonbeta/TrebleShot/widget/GroupEditableListAdapter$GroupViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/genonbeta/TrebleShot/widget/GroupEditableListAdapter$GroupViewHolder;I)V
    .registers 8

    .line 283
    :try_start_0
    invoke-virtual {p0, p2}, Lcom/genonbeta/TrebleShot/adapter/FileListAdapter;->getItem(I)Lcom/genonbeta/TrebleShot/object/Editable;

    move-result-object p2

    check-cast p2, Lcom/genonbeta/TrebleShot/adapter/FileListAdapter$GenericFileHolder;

    .line 285
    invoke-virtual {p1, p2}, Lcom/genonbeta/TrebleShot/widget/GroupEditableListAdapter$GroupViewHolder;->tryBinding(Lcom/genonbeta/TrebleShot/widget/GroupEditableListAdapter$GroupEditable;)Z

    move-result v0

    if-nez v0, :cond_62

    .line 286
    invoke-virtual {p1}, Lcom/genonbeta/TrebleShot/widget/GroupEditableListAdapter$GroupViewHolder;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0901fc

    .line 288
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    const v2, 0x7f09010f

    .line 289
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    const v3, 0x7f0901e9

    .line 290
    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const v4, 0x7f0901eb

    .line 291
    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 293
    invoke-virtual {p1}, Lcom/genonbeta/TrebleShot/widget/GroupEditableListAdapter$GroupViewHolder;->getView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p2}, Lcom/genonbeta/TrebleShot/adapter/FileListAdapter$GenericFileHolder;->isSelectableSelected()Z

    move-result v4

    invoke-virtual {p1, v4}, Landroid/view/View;->setSelected(Z)V

    .line 295
    iget-object p1, p2, Lcom/genonbeta/TrebleShot/adapter/FileListAdapter$GenericFileHolder;->friendlyName:Ljava/lang/String;

    invoke-virtual {v3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 296
    iget-object p1, p2, Lcom/genonbeta/TrebleShot/adapter/FileListAdapter$GenericFileHolder;->info:Ljava/lang/String;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 298
    iget-boolean p1, p0, Lcom/genonbeta/TrebleShot/adapter/FileListAdapter;->mShowThumbnails:Z

    const/4 v0, 0x0

    if-eqz p1, :cond_59

    invoke-virtual {p2, v1}, Lcom/genonbeta/TrebleShot/adapter/FileListAdapter$GenericFileHolder;->loadThumbnail(Landroid/widget/ImageView;)Z

    move-result p1

    if-nez p1, :cond_55

    goto :goto_59

    .line 302
    :cond_55
    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_81

    .line 299
    :cond_59
    :goto_59
    iget p1, p2, Lcom/genonbeta/TrebleShot/adapter/FileListAdapter$GenericFileHolder;->iconRes:I

    invoke-virtual {v2, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 300
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_81

    .line 303
    :cond_62
    invoke-virtual {p1}, Lcom/genonbeta/TrebleShot/widget/GroupEditableListAdapter$GroupViewHolder;->getItemViewType()I

    move-result v0

    const/16 v1, 0x6e

    if-ne v0, v1, :cond_81

    .line 304
    invoke-virtual {p1}, Lcom/genonbeta/TrebleShot/widget/GroupEditableListAdapter$GroupViewHolder;->getView()Landroid/view/View;

    move-result-object p1

    const v0, 0x7f09010b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iget p2, p2, Lcom/genonbeta/TrebleShot/adapter/FileListAdapter$GenericFileHolder;->iconRes:I

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V
    :try_end_7c
    .catch Lcom/genonbeta/TrebleShot/exception/NotReadyException; {:try_start_0 .. :try_end_7c} :catch_7d

    goto :goto_81

    :catch_7d
    move-exception p1

    .line 306
    invoke-virtual {p1}, Lcom/genonbeta/TrebleShot/exception/NotReadyException;->printStackTrace()V

    :cond_81
    :goto_81
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .registers 3

    .line 43
    invoke-virtual {p0, p1, p2}, Lcom/genonbeta/TrebleShot/adapter/FileListAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/genonbeta/TrebleShot/widget/GroupEditableListAdapter$GroupViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/genonbeta/TrebleShot/widget/GroupEditableListAdapter$GroupViewHolder;
    .registers 6

    const/4 v0, 0x0

    const/16 v1, 0x64

    if-ne p2, v1, :cond_19

    .line 272
    new-instance p2, Lcom/genonbeta/TrebleShot/widget/GroupEditableListAdapter$GroupViewHolder;

    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/adapter/FileListAdapter;->getInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0c0062

    invoke-virtual {v1, v2, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const v0, 0x7f090138

    invoke-direct {p2, p1, v0}, Lcom/genonbeta/TrebleShot/widget/GroupEditableListAdapter$GroupViewHolder;-><init>(Landroid/view/View;I)V

    return-object p2

    :cond_19
    const/16 v1, 0x6e

    if-ne p2, v1, :cond_31

    .line 274
    new-instance p2, Lcom/genonbeta/TrebleShot/widget/GroupEditableListAdapter$GroupViewHolder;

    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/adapter/FileListAdapter;->getInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0c0061

    invoke-virtual {v1, v2, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const v0, 0x7f0901e9

    invoke-direct {p2, p1, v0}, Lcom/genonbeta/TrebleShot/widget/GroupEditableListAdapter$GroupViewHolder;-><init>(Landroid/view/View;I)V

    return-object p2

    .line 276
    :cond_31
    new-instance p2, Lcom/genonbeta/TrebleShot/widget/GroupEditableListAdapter$GroupViewHolder;

    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/adapter/FileListAdapter;->getInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0c007f

    invoke-virtual {v1, v2, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/genonbeta/TrebleShot/widget/GroupEditableListAdapter$GroupViewHolder;-><init>(Landroid/view/View;)V

    return-object p2
.end method

.method public onCustomGroupListing(Lcom/genonbeta/TrebleShot/widget/GroupEditableListAdapter$GroupLister;ILcom/genonbeta/TrebleShot/adapter/FileListAdapter$GenericFileHolder;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/genonbeta/TrebleShot/widget/GroupEditableListAdapter$GroupLister<",
            "Lcom/genonbeta/TrebleShot/adapter/FileListAdapter$GenericFileHolder;",
            ">;I",
            "Lcom/genonbeta/TrebleShot/adapter/FileListAdapter$GenericFileHolder;",
            ")Z"
        }
    .end annotation

    const/16 v0, 0x65

    if-ne p2, v0, :cond_e

    .line 260
    new-instance p2, Lcom/genonbeta/TrebleShot/adapter/FileListAdapter$FileHolderMerger;

    invoke-direct {p2, p3}, Lcom/genonbeta/TrebleShot/adapter/FileListAdapter$FileHolderMerger;-><init>(Lcom/genonbeta/TrebleShot/adapter/FileListAdapter$GenericFileHolder;)V

    invoke-virtual {p1, p3, p2}, Lcom/genonbeta/TrebleShot/widget/GroupEditableListAdapter$GroupLister;->offer(Ljava/lang/Object;Lcom/genonbeta/android/framework/util/listing/Merger;)V

    const/4 p1, 0x1

    return p1

    :cond_e
    const/4 p1, 0x0

    return p1
.end method

.method public bridge synthetic onCustomGroupListing(Lcom/genonbeta/TrebleShot/widget/GroupEditableListAdapter$GroupLister;ILcom/genonbeta/TrebleShot/widget/GroupEditableListAdapter$GroupEditable;)Z
    .registers 4

    .line 43
    check-cast p3, Lcom/genonbeta/TrebleShot/adapter/FileListAdapter$GenericFileHolder;

    invoke-virtual {p0, p1, p2, p3}, Lcom/genonbeta/TrebleShot/adapter/FileListAdapter;->onCustomGroupListing(Lcom/genonbeta/TrebleShot/widget/GroupEditableListAdapter$GroupLister;ILcom/genonbeta/TrebleShot/adapter/FileListAdapter$GenericFileHolder;)Z

    move-result p1

    return p1
.end method

.method protected onGenerateRepresentative(Ljava/lang/String;)Lcom/genonbeta/TrebleShot/adapter/FileListAdapter$GenericFileHolder;
    .registers 3

    .line 253
    new-instance v0, Lcom/genonbeta/TrebleShot/adapter/FileListAdapter$GenericFileHolder;

    invoke-direct {v0, p1}, Lcom/genonbeta/TrebleShot/adapter/FileListAdapter$GenericFileHolder;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method protected bridge synthetic onGenerateRepresentative(Ljava/lang/String;)Lcom/genonbeta/TrebleShot/widget/GroupEditableListAdapter$GroupEditable;
    .registers 2

    .line 43
    invoke-virtual {p0, p1}, Lcom/genonbeta/TrebleShot/adapter/FileListAdapter;->onGenerateRepresentative(Ljava/lang/String;)Lcom/genonbeta/TrebleShot/adapter/FileListAdapter$GenericFileHolder;

    move-result-object p1

    return-object p1
.end method

.method protected onLoad(Lcom/genonbeta/TrebleShot/widget/GroupEditableListAdapter$GroupLister;)V
    .registers 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/genonbeta/TrebleShot/widget/GroupEditableListAdapter$GroupLister<",
            "Lcom/genonbeta/TrebleShot/adapter/FileListAdapter$GenericFileHolder;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    .line 64
    invoke-virtual/range {p0 .. p0}, Lcom/genonbeta/TrebleShot/adapter/FileListAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/genonbeta/TrebleShot/util/AppUtils;->getDefaultPreferences(Landroid/content/Context;)Lcom/genonbeta/android/framework/preference/SuperPreferences;

    move-result-object v0

    const-string v3, "load_thumbnails"

    const/4 v4, 0x1

    .line 65
    invoke-virtual {v0, v3, v4}, Lcom/genonbeta/android/framework/preference/SuperPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, v1, Lcom/genonbeta/TrebleShot/adapter/FileListAdapter;->mShowThumbnails:Z

    .line 67
    invoke-virtual/range {p0 .. p0}, Lcom/genonbeta/TrebleShot/adapter/FileListAdapter;->getPath()Lcom/genonbeta/android/framework/io/DocumentFile;

    move-result-object v0

    const-string v3, "transfer"

    const/4 v5, 0x0

    const v6, 0x7f0700cb

    const v7, 0x7f1101a7

    const/4 v8, 0x0

    if-eqz v0, :cond_c2

    .line 70
    invoke-virtual {v0}, Lcom/genonbeta/android/framework/io/DocumentFile;->listFiles()[Lcom/genonbeta/android/framework/io/DocumentFile;

    move-result-object v0

    if-eqz v0, :cond_43a

    .line 72
    array-length v9, v0

    if-lez v9, :cond_43a

    .line 73
    array-length v9, v0

    const/4 v10, 0x0

    :goto_30
    if-ge v10, v9, :cond_43a

    aget-object v11, v0, v10

    .line 74
    iget-object v12, v1, Lcom/genonbeta/TrebleShot/adapter/FileListAdapter;->mFileMatch:Ljava/lang/String;

    if-eqz v12, :cond_46

    invoke-virtual {v11}, Lcom/genonbeta/android/framework/io/DocumentFile;->getName()Ljava/lang/String;

    move-result-object v12

    iget-object v13, v1, Lcom/genonbeta/TrebleShot/adapter/FileListAdapter;->mFileMatch:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_46

    goto/16 :goto_be

    .line 77
    :cond_46
    invoke-virtual {v11}, Lcom/genonbeta/android/framework/io/DocumentFile;->isDirectory()Z

    move-result v12

    if-eqz v12, :cond_61

    iget-boolean v12, v1, Lcom/genonbeta/TrebleShot/adapter/FileListAdapter;->mShowDirectories:Z

    if-eqz v12, :cond_61

    .line 78
    new-instance v12, Lcom/genonbeta/TrebleShot/adapter/FileListAdapter$DirectoryHolder;

    invoke-virtual/range {p0 .. p0}, Lcom/genonbeta/TrebleShot/adapter/FileListAdapter;->getContext()Landroid/content/Context;

    move-result-object v13

    invoke-virtual {v13, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v11, v13, v6}, Lcom/genonbeta/TrebleShot/adapter/FileListAdapter$DirectoryHolder;-><init>(Lcom/genonbeta/android/framework/io/DocumentFile;Ljava/lang/String;I)V

    invoke-virtual {v2, v1, v12}, Lcom/genonbeta/TrebleShot/widget/GroupEditableListAdapter$GroupLister;->offerObliged(Lcom/genonbeta/TrebleShot/widget/EditableListAdapterImpl;Lcom/genonbeta/TrebleShot/widget/GroupEditableListAdapter$GroupEditable;)V

    goto :goto_be

    .line 79
    :cond_61
    invoke-virtual {v11}, Lcom/genonbeta/android/framework/io/DocumentFile;->isFile()Z

    move-result v12

    if-eqz v12, :cond_be

    iget-boolean v12, v1, Lcom/genonbeta/TrebleShot/adapter/FileListAdapter;->mShowFiles:Z

    if-eqz v12, :cond_be

    .line 80
    invoke-virtual {v11}, Lcom/genonbeta/android/framework/io/DocumentFile;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/genonbeta/TrebleShot/util/FileUtils;->getFileFormat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const-string v13, "tshare"

    invoke-virtual {v13, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_b2

    .line 84
    :try_start_7b
    invoke-virtual/range {p0 .. p0}, Lcom/genonbeta/TrebleShot/adapter/FileListAdapter;->getContext()Landroid/content/Context;

    move-result-object v12

    invoke-static {v12}, Lcom/genonbeta/TrebleShot/util/AppUtils;->getDatabase(Landroid/content/Context;)Lcom/genonbeta/TrebleShot/database/AccessDatabase;

    move-result-object v12

    new-instance v13, Lcom/genonbeta/android/database/SQLQuery$Select;

    new-array v14, v8, [Ljava/lang/String;

    invoke-direct {v13, v3, v14}, Lcom/genonbeta/android/database/SQLQuery$Select;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    const-string v14, "file=?"

    new-array v15, v4, [Ljava/lang/String;

    .line 86
    invoke-virtual {v11}, Lcom/genonbeta/android/framework/io/DocumentFile;->getName()Ljava/lang/String;

    move-result-object v16

    aput-object v16, v15, v8

    invoke-virtual {v13, v14, v15}, Lcom/genonbeta/android/database/SQLQuery$Select;->setWhere(Ljava/lang/String;[Ljava/lang/String;)Lcom/genonbeta/android/database/SQLQuery$Select;

    move-result-object v13

    .line 85
    invoke-virtual {v12, v13}, Lcom/genonbeta/TrebleShot/database/AccessDatabase;->getFirstFromTable(Lcom/genonbeta/android/database/SQLQuery$Select;)Lcom/genonbeta/android/database/CursorItem;

    move-result-object v12

    if-eqz v12, :cond_a4

    .line 89
    new-instance v13, Lcom/genonbeta/TrebleShot/object/TransferObject;

    invoke-direct {v13, v12}, Lcom/genonbeta/TrebleShot/object/TransferObject;-><init>(Lcom/genonbeta/android/database/CursorItem;)V
    :try_end_a3
    .catch Ljava/lang/Exception; {:try_start_7b .. :try_end_a3} :catch_a4

    goto :goto_a5

    :catch_a4
    :cond_a4
    move-object v13, v5

    .line 93
    :goto_a5
    new-instance v12, Lcom/genonbeta/TrebleShot/adapter/FileListAdapter$ReceivedFileHolder;

    invoke-virtual/range {p0 .. p0}, Lcom/genonbeta/TrebleShot/adapter/FileListAdapter;->getContext()Landroid/content/Context;

    move-result-object v14

    invoke-direct {v12, v14, v11, v13}, Lcom/genonbeta/TrebleShot/adapter/FileListAdapter$ReceivedFileHolder;-><init>(Landroid/content/Context;Lcom/genonbeta/android/framework/io/DocumentFile;Lcom/genonbeta/TrebleShot/object/TransferObject;)V

    invoke-virtual {v2, v1, v12}, Lcom/genonbeta/TrebleShot/widget/GroupEditableListAdapter$GroupLister;->offerObliged(Lcom/genonbeta/TrebleShot/widget/EditableListAdapterImpl;Lcom/genonbeta/TrebleShot/widget/GroupEditableListAdapter$GroupEditable;)V

    goto :goto_be

    .line 95
    :cond_b2
    new-instance v12, Lcom/genonbeta/TrebleShot/adapter/FileListAdapter$FileHolder;

    invoke-virtual/range {p0 .. p0}, Lcom/genonbeta/TrebleShot/adapter/FileListAdapter;->getContext()Landroid/content/Context;

    move-result-object v13

    invoke-direct {v12, v13, v11}, Lcom/genonbeta/TrebleShot/adapter/FileListAdapter$FileHolder;-><init>(Landroid/content/Context;Lcom/genonbeta/android/framework/io/DocumentFile;)V

    invoke-virtual {v2, v1, v12}, Lcom/genonbeta/TrebleShot/widget/GroupEditableListAdapter$GroupLister;->offerObliged(Lcom/genonbeta/TrebleShot/widget/EditableListAdapterImpl;Lcom/genonbeta/TrebleShot/widget/GroupEditableListAdapter$GroupEditable;)V

    :cond_be
    :goto_be
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_30

    .line 100
    :cond_c2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 101
    invoke-virtual/range {p0 .. p0}, Lcom/genonbeta/TrebleShot/adapter/FileListAdapter;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9}, Lcom/genonbeta/TrebleShot/util/FileUtils;->getApplicationDirectory(Landroid/content/Context;)Lcom/genonbeta/android/framework/io/DocumentFile;

    move-result-object v9

    .line 103
    new-instance v10, Lcom/genonbeta/TrebleShot/adapter/FileListAdapter$DirectoryHolder;

    invoke-virtual/range {p0 .. p0}, Lcom/genonbeta/TrebleShot/adapter/FileListAdapter;->getContext()Landroid/content/Context;

    move-result-object v11

    const v12, 0x7f1101fa

    invoke-virtual {v11, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    const v12, 0x7f070101

    invoke-direct {v10, v9, v11, v12}, Lcom/genonbeta/TrebleShot/adapter/FileListAdapter$DirectoryHolder;-><init>(Lcom/genonbeta/android/framework/io/DocumentFile;Ljava/lang/String;I)V

    invoke-virtual {v2, v1, v10}, Lcom/genonbeta/TrebleShot/widget/GroupEditableListAdapter$GroupLister;->offerObliged(Lcom/genonbeta/TrebleShot/widget/EditableListAdapterImpl;Lcom/genonbeta/TrebleShot/widget/GroupEditableListAdapter$GroupEditable;)V

    .line 105
    new-instance v9, Lcom/genonbeta/TrebleShot/adapter/FileListAdapter$PublicDirectoryHolder;

    sget-object v10, Landroid/os/Environment;->DIRECTORY_DCIM:Ljava/lang/String;

    .line 106
    invoke-static {v10}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v10

    .line 107
    invoke-virtual/range {p0 .. p0}, Lcom/genonbeta/TrebleShot/adapter/FileListAdapter;->getContext()Landroid/content/Context;

    move-result-object v11

    const v12, 0x7f1101ee

    invoke-virtual {v11, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    const v12, 0x7f0700ea

    invoke-direct {v9, v1, v10, v11, v12}, Lcom/genonbeta/TrebleShot/adapter/FileListAdapter$PublicDirectoryHolder;-><init>(Lcom/genonbeta/TrebleShot/adapter/FileListAdapter;Ljava/io/File;Ljava/lang/String;I)V

    .line 105
    invoke-virtual {v2, v1, v9}, Lcom/genonbeta/TrebleShot/widget/GroupEditableListAdapter$GroupLister;->offerObliged(Lcom/genonbeta/TrebleShot/widget/EditableListAdapterImpl;Lcom/genonbeta/TrebleShot/widget/GroupEditableListAdapter$GroupEditable;)V

    .line 109
    sget v9, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v10, 0x13

    if-lt v9, v10, :cond_123

    .line 110
    new-instance v9, Lcom/genonbeta/TrebleShot/adapter/FileListAdapter$PublicDirectoryHolder;

    sget-object v11, Landroid/os/Environment;->DIRECTORY_DOCUMENTS:Ljava/lang/String;

    .line 111
    invoke-static {v11}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v11

    .line 112
    invoke-virtual/range {p0 .. p0}, Lcom/genonbeta/TrebleShot/adapter/FileListAdapter;->getContext()Landroid/content/Context;

    move-result-object v12

    const v13, 0x7f110186

    invoke-virtual {v12, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v12

    const v13, 0x7f0700db

    invoke-direct {v9, v1, v11, v12, v13}, Lcom/genonbeta/TrebleShot/adapter/FileListAdapter$PublicDirectoryHolder;-><init>(Lcom/genonbeta/TrebleShot/adapter/FileListAdapter;Ljava/io/File;Ljava/lang/String;I)V

    .line 110
    invoke-virtual {v2, v1, v9}, Lcom/genonbeta/TrebleShot/widget/GroupEditableListAdapter$GroupLister;->offerObliged(Lcom/genonbeta/TrebleShot/widget/EditableListAdapterImpl;Lcom/genonbeta/TrebleShot/widget/GroupEditableListAdapter$GroupEditable;)V

    .line 114
    :cond_123
    new-instance v9, Lcom/genonbeta/TrebleShot/adapter/FileListAdapter$PublicDirectoryHolder;

    sget-object v11, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    .line 115
    invoke-static {v11}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v11

    .line 116
    invoke-virtual/range {p0 .. p0}, Lcom/genonbeta/TrebleShot/adapter/FileListAdapter;->getContext()Landroid/content/Context;

    move-result-object v12

    const v13, 0x7f110189

    invoke-virtual {v12, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v12

    const v13, 0x7f0700c2

    invoke-direct {v9, v1, v11, v12, v13}, Lcom/genonbeta/TrebleShot/adapter/FileListAdapter$PublicDirectoryHolder;-><init>(Lcom/genonbeta/TrebleShot/adapter/FileListAdapter;Ljava/io/File;Ljava/lang/String;I)V

    .line 114
    invoke-virtual {v2, v1, v9}, Lcom/genonbeta/TrebleShot/widget/GroupEditableListAdapter$GroupLister;->offerObliged(Lcom/genonbeta/TrebleShot/widget/EditableListAdapterImpl;Lcom/genonbeta/TrebleShot/widget/GroupEditableListAdapter$GroupEditable;)V

    .line 118
    new-instance v9, Lcom/genonbeta/TrebleShot/adapter/FileListAdapter$PublicDirectoryHolder;

    sget-object v11, Landroid/os/Environment;->DIRECTORY_MUSIC:Ljava/lang/String;

    .line 119
    invoke-static {v11}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v11

    .line 120
    invoke-virtual/range {p0 .. p0}, Lcom/genonbeta/TrebleShot/adapter/FileListAdapter;->getContext()Landroid/content/Context;

    move-result-object v12

    const v13, 0x7f1101da

    invoke-virtual {v12, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v12

    const v13, 0x7f0700e3

    invoke-direct {v9, v1, v11, v12, v13}, Lcom/genonbeta/TrebleShot/adapter/FileListAdapter$PublicDirectoryHolder;-><init>(Lcom/genonbeta/TrebleShot/adapter/FileListAdapter;Ljava/io/File;Ljava/lang/String;I)V

    .line 118
    invoke-virtual {v2, v1, v9}, Lcom/genonbeta/TrebleShot/widget/GroupEditableListAdapter$GroupLister;->offerObliged(Lcom/genonbeta/TrebleShot/widget/EditableListAdapterImpl;Lcom/genonbeta/TrebleShot/widget/GroupEditableListAdapter$GroupEditable;)V

    .line 122
    new-instance v9, Ljava/io/File;

    const-string v11, "."

    invoke-direct {v9, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 124
    invoke-virtual {v9}, Ljava/io/File;->canRead()Z

    move-result v11

    if-eqz v11, :cond_187

    .line 125
    new-instance v11, Lcom/genonbeta/TrebleShot/adapter/FileListAdapter$DirectoryHolder;

    invoke-static {v9}, Lcom/genonbeta/android/framework/io/DocumentFile;->fromFile(Ljava/io/File;)Lcom/genonbeta/android/framework/io/DocumentFile;

    move-result-object v9

    .line 126
    invoke-virtual/range {p0 .. p0}, Lcom/genonbeta/TrebleShot/adapter/FileListAdapter;->getContext()Landroid/content/Context;

    move-result-object v12

    const v13, 0x7f11019a

    invoke-virtual {v12, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 127
    invoke-virtual/range {p0 .. p0}, Lcom/genonbeta/TrebleShot/adapter/FileListAdapter;->getContext()Landroid/content/Context;

    move-result-object v13

    invoke-virtual {v13, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v11, v9, v12, v7, v6}, Lcom/genonbeta/TrebleShot/adapter/FileListAdapter$DirectoryHolder;-><init>(Lcom/genonbeta/android/framework/io/DocumentFile;Ljava/lang/String;Ljava/lang/String;I)V

    .line 125
    invoke-virtual {v2, v1, v11}, Lcom/genonbeta/TrebleShot/widget/GroupEditableListAdapter$GroupLister;->offerObliged(Lcom/genonbeta/TrebleShot/widget/EditableListAdapterImpl;Lcom/genonbeta/TrebleShot/widget/GroupEditableListAdapter$GroupEditable;)V

    .line 130
    :cond_187
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x15

    if-lt v6, v7, :cond_19d

    .line 131
    invoke-virtual/range {p0 .. p0}, Lcom/genonbeta/TrebleShot/adapter/FileListAdapter;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getExternalMediaDirs()[Ljava/io/File;

    move-result-object v5

    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_1b8

    .line 132
    :cond_19d
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v6, v10, :cond_1b1

    .line 133
    invoke-virtual/range {p0 .. p0}, Lcom/genonbeta/TrebleShot/adapter/FileListAdapter;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/content/Context;->getExternalFilesDirs(Ljava/lang/String;)[Ljava/io/File;

    move-result-object v5

    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_1b8

    .line 135
    :cond_1b1
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 137
    :goto_1b8
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1bc
    :goto_1bc
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const v6, 0x7f110229

    const/4 v9, 0x2

    const/4 v10, 0x3

    if-eqz v5, :cond_271

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/io/File;

    if-eqz v5, :cond_1bc

    .line 138
    invoke-virtual {v5}, Ljava/io/File;->canWrite()Z

    move-result v11

    if-nez v11, :cond_1d6

    goto :goto_1bc

    .line 141
    :cond_1d6
    new-instance v11, Lcom/genonbeta/TrebleShot/adapter/FileListAdapter$StorageHolder;

    invoke-static {v5}, Lcom/genonbeta/android/framework/io/DocumentFile;->fromFile(Ljava/io/File;)Lcom/genonbeta/android/framework/io/DocumentFile;

    move-result-object v12

    invoke-virtual/range {p0 .. p0}, Lcom/genonbeta/TrebleShot/adapter/FileListAdapter;->getContext()Landroid/content/Context;

    move-result-object v13

    invoke-virtual {v13, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    const v13, 0x7f0700f5

    invoke-direct {v11, v12, v6, v13}, Lcom/genonbeta/TrebleShot/adapter/FileListAdapter$StorageHolder;-><init>(Lcom/genonbeta/android/framework/io/DocumentFile;Ljava/lang/String;I)V

    .line 142
    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 144
    array-length v6, v5

    if-lt v6, v9, :cond_26c

    aget-object v6, v5, v4

    const-string v12, "storage"

    invoke-virtual {v6, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_26c

    .line 145
    array-length v6, v5

    const/4 v12, 0x4

    if-lt v6, v12, :cond_24e

    aget-object v6, v5, v9

    const-string v13, "emulated"

    invoke-virtual {v6, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_24e

    .line 146
    new-instance v6, Ljava/io/File;

    invoke-virtual {v1, v5, v12}, Lcom/genonbeta/TrebleShot/adapter/FileListAdapter;->buildPath([Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v6, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 148
    invoke-virtual {v6}, Ljava/io/File;->canWrite()Z

    move-result v9

    if-eqz v9, :cond_26c

    .line 149
    invoke-static {v6}, Lcom/genonbeta/android/framework/io/DocumentFile;->fromFile(Ljava/io/File;)Lcom/genonbeta/android/framework/io/DocumentFile;

    move-result-object v6

    iput-object v6, v11, Lcom/genonbeta/TrebleShot/adapter/FileListAdapter$StorageHolder;->file:Lcom/genonbeta/android/framework/io/DocumentFile;

    .line 150
    aget-object v6, v5, v10

    const-string v9, "0"

    invoke-virtual {v9, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_23a

    .line 151
    invoke-virtual/range {p0 .. p0}, Lcom/genonbeta/TrebleShot/adapter/FileListAdapter;->getContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f1101bb

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_24b

    .line 152
    :cond_23a
    invoke-virtual/range {p0 .. p0}, Lcom/genonbeta/TrebleShot/adapter/FileListAdapter;->getContext()Landroid/content/Context;

    move-result-object v6

    const v9, 0x7f11018e

    new-array v12, v4, [Ljava/lang/Object;

    aget-object v5, v5, v10

    aput-object v5, v12, v8

    invoke-virtual {v6, v9, v12}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    :goto_24b
    iput-object v5, v11, Lcom/genonbeta/TrebleShot/adapter/FileListAdapter$StorageHolder;->friendlyName:Ljava/lang/String;

    goto :goto_26c

    .line 154
    :cond_24e
    array-length v6, v5

    if-lt v6, v10, :cond_26c

    .line 155
    new-instance v6, Ljava/io/File;

    invoke-virtual {v1, v5, v10}, Lcom/genonbeta/TrebleShot/adapter/FileListAdapter;->buildPath([Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v6, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 157
    invoke-virtual {v6}, Ljava/io/File;->canWrite()Z

    move-result v10

    if-nez v10, :cond_262

    goto/16 :goto_1bc

    .line 160
    :cond_262
    aget-object v5, v5, v9

    iput-object v5, v11, Lcom/genonbeta/TrebleShot/adapter/FileListAdapter$StorageHolder;->friendlyName:Ljava/lang/String;

    .line 161
    invoke-static {v6}, Lcom/genonbeta/android/framework/io/DocumentFile;->fromFile(Ljava/io/File;)Lcom/genonbeta/android/framework/io/DocumentFile;

    move-result-object v5

    iput-object v5, v11, Lcom/genonbeta/TrebleShot/adapter/FileListAdapter$StorageHolder;->file:Lcom/genonbeta/android/framework/io/DocumentFile;

    .line 165
    :cond_26c
    :goto_26c
    invoke-virtual {v2, v1, v11}, Lcom/genonbeta/TrebleShot/widget/GroupEditableListAdapter$GroupLister;->offerObliged(Lcom/genonbeta/TrebleShot/widget/EditableListAdapterImpl;Lcom/genonbeta/TrebleShot/widget/GroupEditableListAdapter$GroupEditable;)V

    goto/16 :goto_1bc

    .line 168
    :cond_271
    invoke-virtual/range {p0 .. p0}, Lcom/genonbeta/TrebleShot/adapter/FileListAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/genonbeta/TrebleShot/util/AppUtils;->getDatabase(Landroid/content/Context;)Lcom/genonbeta/TrebleShot/database/AccessDatabase;

    move-result-object v0

    new-instance v5, Lcom/genonbeta/android/database/SQLQuery$Select;

    new-array v11, v8, [Ljava/lang/String;

    const-string v12, "fileBookmark"

    invoke-direct {v5, v12, v11}, Lcom/genonbeta/android/database/SQLQuery$Select;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    const-class v11, Lcom/genonbeta/TrebleShot/object/FileShortcutObject;

    .line 169
    invoke-virtual {v0, v5, v11}, Lcom/genonbeta/TrebleShot/database/AccessDatabase;->castQuery(Lcom/genonbeta/android/database/SQLQuery$Select;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    .line 171
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_28c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2a7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/genonbeta/TrebleShot/object/FileShortcutObject;

    .line 173
    :try_start_298
    new-instance v11, Lcom/genonbeta/TrebleShot/adapter/FileListAdapter$ShortcutDirectoryHolder;

    invoke-virtual/range {p0 .. p0}, Lcom/genonbeta/TrebleShot/adapter/FileListAdapter;->getContext()Landroid/content/Context;

    move-result-object v12

    invoke-direct {v11, v12, v5}, Lcom/genonbeta/TrebleShot/adapter/FileListAdapter$ShortcutDirectoryHolder;-><init>(Landroid/content/Context;Lcom/genonbeta/TrebleShot/object/FileShortcutObject;)V

    invoke-virtual {v2, v1, v11}, Lcom/genonbeta/TrebleShot/widget/GroupEditableListAdapter$GroupLister;->offerObliged(Lcom/genonbeta/TrebleShot/widget/EditableListAdapterImpl;Lcom/genonbeta/TrebleShot/widget/GroupEditableListAdapter$GroupEditable;)V
    :try_end_2a4
    .catch Ljava/lang/Exception; {:try_start_298 .. :try_end_2a4} :catch_2a5

    goto :goto_28c

    :catch_2a5
    nop

    goto :goto_28c

    .line 179
    :cond_2a7
    invoke-virtual/range {p0 .. p0}, Lcom/genonbeta/TrebleShot/adapter/FileListAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/genonbeta/TrebleShot/util/AppUtils;->getDatabase(Landroid/content/Context;)Lcom/genonbeta/TrebleShot/database/AccessDatabase;

    move-result-object v0

    new-instance v5, Lcom/genonbeta/android/database/SQLQuery$Select;

    new-array v11, v8, [Ljava/lang/String;

    const-string v12, "writablePath"

    invoke-direct {v5, v12, v11}, Lcom/genonbeta/android/database/SQLQuery$Select;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    const-class v11, Lcom/genonbeta/TrebleShot/object/WritablePathObject;

    .line 180
    invoke-virtual {v0, v5, v11}, Lcom/genonbeta/TrebleShot/database/AccessDatabase;->castQuery(Lcom/genonbeta/android/database/SQLQuery$Select;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    .line 182
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v5, v7, :cond_30a

    .line 183
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2c6
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2f2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/genonbeta/TrebleShot/object/WritablePathObject;

    .line 185
    :try_start_2d2
    new-instance v7, Lcom/genonbeta/TrebleShot/adapter/FileListAdapter$WritablePathHolder;

    invoke-virtual/range {p0 .. p0}, Lcom/genonbeta/TrebleShot/adapter/FileListAdapter;->getContext()Landroid/content/Context;

    move-result-object v11

    iget-object v12, v0, Lcom/genonbeta/TrebleShot/object/WritablePathObject;->path:Landroid/net/Uri;

    invoke-static {v11, v12, v4}, Lcom/genonbeta/android/framework/io/DocumentFile;->fromUri(Landroid/content/Context;Landroid/net/Uri;Z)Lcom/genonbeta/android/framework/io/DocumentFile;

    move-result-object v11

    .line 187
    invoke-virtual/range {p0 .. p0}, Lcom/genonbeta/TrebleShot/adapter/FileListAdapter;->getContext()Landroid/content/Context;

    move-result-object v12

    invoke-virtual {v12, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v7, v11, v0, v12}, Lcom/genonbeta/TrebleShot/adapter/FileListAdapter$WritablePathHolder;-><init>(Lcom/genonbeta/android/framework/io/DocumentFile;Lcom/genonbeta/TrebleShot/object/WritablePathObject;Ljava/lang/String;)V

    .line 185
    invoke-virtual {v2, v1, v7}, Lcom/genonbeta/TrebleShot/widget/GroupEditableListAdapter$GroupLister;->offerObliged(Lcom/genonbeta/TrebleShot/widget/EditableListAdapterImpl;Lcom/genonbeta/TrebleShot/widget/GroupEditableListAdapter$GroupEditable;)V
    :try_end_2ec
    .catch Ljava/io/FileNotFoundException; {:try_start_2d2 .. :try_end_2ec} :catch_2ed

    goto :goto_2c6

    :catch_2ed
    move-exception v0

    .line 189
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_2c6

    .line 192
    :cond_2f2
    new-instance v0, Lcom/genonbeta/TrebleShot/adapter/FileListAdapter$WritablePathHolder;

    const/16 v5, 0x6e

    const v6, 0x7f0700ca

    .line 193
    invoke-virtual/range {p0 .. p0}, Lcom/genonbeta/TrebleShot/adapter/FileListAdapter;->getContext()Landroid/content/Context;

    move-result-object v7

    const v11, 0x7f110053

    invoke-virtual {v7, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v0, v5, v6, v7, v4}, Lcom/genonbeta/TrebleShot/adapter/FileListAdapter$WritablePathHolder;-><init>(IILjava/lang/String;I)V

    .line 192
    invoke-virtual {v2, v1, v0}, Lcom/genonbeta/TrebleShot/widget/GroupEditableListAdapter$GroupLister;->offerObliged(Lcom/genonbeta/TrebleShot/widget/EditableListAdapterImpl;Lcom/genonbeta/TrebleShot/widget/GroupEditableListAdapter$GroupEditable;)V

    .line 200
    :cond_30a
    invoke-virtual/range {p0 .. p0}, Lcom/genonbeta/TrebleShot/adapter/FileListAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/genonbeta/TrebleShot/util/AppUtils;->getDatabase(Landroid/content/Context;)Lcom/genonbeta/TrebleShot/database/AccessDatabase;

    move-result-object v0

    new-instance v5, Lcom/genonbeta/android/database/SQLQuery$Select;

    new-array v6, v8, [Ljava/lang/String;

    const-string v7, "transferGroup"

    invoke-direct {v5, v7, v6}, Lcom/genonbeta/android/database/SQLQuery$Select;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    new-array v6, v4, [Ljava/lang/Object;

    const-string v7, "dateCreated"

    aput-object v7, v6, v8

    const-string v7, "%s DESC"

    .line 202
    invoke-static {v7, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/genonbeta/android/database/SQLQuery$Select;->setOrderBy(Ljava/lang/String;)Lcom/genonbeta/android/database/SQLQuery$Select;

    move-result-object v5

    const-class v6, Lcom/genonbeta/TrebleShot/object/TransferGroup;

    .line 201
    invoke-virtual {v0, v5, v6}, Lcom/genonbeta/TrebleShot/database/AccessDatabase;->castQuery(Lcom/genonbeta/android/database/SQLQuery$Select;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    .line 203
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 206
    :try_start_336
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_33a
    :goto_33a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3e1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/genonbeta/TrebleShot/object/TransferGroup;

    .line 209
    invoke-virtual/range {p0 .. p0}, Lcom/genonbeta/TrebleShot/adapter/FileListAdapter;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lcom/genonbeta/TrebleShot/util/AppUtils;->getDatabase(Landroid/content/Context;)Lcom/genonbeta/TrebleShot/database/AccessDatabase;

    move-result-object v7

    new-instance v11, Lcom/genonbeta/android/database/SQLQuery$Select;

    new-array v12, v8, [Ljava/lang/String;

    invoke-direct {v11, v3, v12}, Lcom/genonbeta/android/database/SQLQuery$Select;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    const-string v12, "%s = ? AND %s = ? AND %s = ?"

    new-array v13, v10, [Ljava/lang/Object;

    const-string v14, "flag"

    aput-object v14, v13, v8

    const-string v14, "type"

    aput-object v14, v13, v4

    const-string v14, "groupId"

    aput-object v14, v13, v9

    .line 211
    invoke-static {v12, v13}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    new-array v13, v10, [Ljava/lang/String;

    sget-object v14, Lcom/genonbeta/TrebleShot/object/TransferObject$Flag;->DONE:Lcom/genonbeta/TrebleShot/object/TransferObject$Flag;

    .line 213
    invoke-virtual {v14}, Lcom/genonbeta/TrebleShot/object/TransferObject$Flag;->toString()Ljava/lang/String;

    move-result-object v14

    aput-object v14, v13, v8

    sget-object v14, Lcom/genonbeta/TrebleShot/object/TransferObject$Type;->INCOMING:Lcom/genonbeta/TrebleShot/object/TransferObject$Type;

    .line 214
    invoke-virtual {v14}, Lcom/genonbeta/TrebleShot/object/TransferObject$Type;->toString()Ljava/lang/String;

    move-result-object v14

    aput-object v14, v13, v4

    iget-wide v14, v6, Lcom/genonbeta/TrebleShot/object/TransferGroup;->groupId:J

    .line 215
    invoke-static {v14, v15}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v14

    aput-object v14, v13, v9

    .line 211
    invoke-virtual {v11, v12, v13}, Lcom/genonbeta/android/database/SQLQuery$Select;->setWhere(Ljava/lang/String;[Ljava/lang/String;)Lcom/genonbeta/android/database/SQLQuery$Select;

    move-result-object v11

    const-string v12, "`%s` DESC, `%s` DESC"

    new-array v13, v9, [Ljava/lang/Object;

    const-string v14, "directory"

    aput-object v14, v13, v8

    const-string v14, "name"

    aput-object v14, v13, v4

    .line 216
    invoke-static {v12, v13}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/genonbeta/android/database/SQLQuery$Select;->setOrderBy(Ljava/lang/String;)Lcom/genonbeta/android/database/SQLQuery$Select;

    move-result-object v11

    const-class v12, Lcom/genonbeta/TrebleShot/object/TransferObject;

    .line 210
    invoke-virtual {v7, v11, v12}, Lcom/genonbeta/TrebleShot/database/AccessDatabase;->castQuery(Lcom/genonbeta/android/database/SQLQuery$Select;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v7

    .line 220
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    const/4 v11, 0x3

    :goto_3a6
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_33a

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/genonbeta/TrebleShot/object/TransferObject;

    .line 221
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v13
    :try_end_3b6
    .catch Ljava/lang/Exception; {:try_start_336 .. :try_end_3b6} :catch_41d
    .catchall {:try_start_336 .. :try_end_3b6} :catchall_3fe

    const/16 v14, 0x14

    if-ge v13, v14, :cond_3d9

    if-nez v11, :cond_3be

    goto/16 :goto_33a

    .line 228
    :cond_3be
    :try_start_3be
    invoke-virtual/range {p0 .. p0}, Lcom/genonbeta/TrebleShot/adapter/FileListAdapter;->getContext()Landroid/content/Context;

    move-result-object v13

    invoke-static {v13, v12, v6, v8}, Lcom/genonbeta/TrebleShot/util/FileUtils;->getIncomingPseudoFile(Landroid/content/Context;Lcom/genonbeta/TrebleShot/object/TransferObject;Lcom/genonbeta/TrebleShot/object/TransferGroup;Z)Lcom/genonbeta/android/framework/io/DocumentFile;

    move-result-object v12

    .line 231
    invoke-virtual {v12}, Lcom/genonbeta/android/framework/io/DocumentFile;->exists()Z

    move-result v13

    if-eqz v13, :cond_3d6

    invoke-interface {v5, v12}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_3d6

    .line 232
    invoke-interface {v5, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_3d5
    .catch Ljava/io/IOException; {:try_start_3be .. :try_end_3d5} :catch_3d6
    .catch Ljava/lang/Exception; {:try_start_3be .. :try_end_3d5} :catch_41d
    .catchall {:try_start_3be .. :try_end_3d5} :catchall_3fe

    goto :goto_3a6

    :catch_3d6
    :cond_3d6
    add-int/lit8 v11, v11, -0x1

    goto :goto_3a6

    .line 222
    :cond_3d9
    :try_start_3d9
    new-instance v0, Ljava/lang/Exception;

    const-string v3, "Reached the threshold for picking recent files"

    invoke-direct {v0, v3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_3e1
    .catch Ljava/lang/Exception; {:try_start_3d9 .. :try_end_3e1} :catch_41d
    .catchall {:try_start_3d9 .. :try_end_3e1} :catchall_3fe

    .line 243
    :cond_3e1
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3e5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_43a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/genonbeta/android/framework/io/DocumentFile;

    .line 244
    new-instance v4, Lcom/genonbeta/TrebleShot/adapter/FileListAdapter$RecentFileHolder;

    invoke-virtual/range {p0 .. p0}, Lcom/genonbeta/TrebleShot/adapter/FileListAdapter;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v1, v5, v3}, Lcom/genonbeta/TrebleShot/adapter/FileListAdapter$RecentFileHolder;-><init>(Lcom/genonbeta/TrebleShot/adapter/FileListAdapter;Landroid/content/Context;Lcom/genonbeta/android/framework/io/DocumentFile;)V

    invoke-virtual {v2, v1, v4}, Lcom/genonbeta/TrebleShot/widget/GroupEditableListAdapter$GroupLister;->offerObliged(Lcom/genonbeta/TrebleShot/widget/EditableListAdapterImpl;Lcom/genonbeta/TrebleShot/widget/GroupEditableListAdapter$GroupEditable;)V

    goto :goto_3e5

    :catchall_3fe
    move-exception v0

    .line 243
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_403
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_41c

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/genonbeta/android/framework/io/DocumentFile;

    .line 244
    new-instance v5, Lcom/genonbeta/TrebleShot/adapter/FileListAdapter$RecentFileHolder;

    invoke-virtual/range {p0 .. p0}, Lcom/genonbeta/TrebleShot/adapter/FileListAdapter;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v1, v6, v4}, Lcom/genonbeta/TrebleShot/adapter/FileListAdapter$RecentFileHolder;-><init>(Lcom/genonbeta/TrebleShot/adapter/FileListAdapter;Landroid/content/Context;Lcom/genonbeta/android/framework/io/DocumentFile;)V

    invoke-virtual {v2, v1, v5}, Lcom/genonbeta/TrebleShot/widget/GroupEditableListAdapter$GroupLister;->offerObliged(Lcom/genonbeta/TrebleShot/widget/EditableListAdapterImpl;Lcom/genonbeta/TrebleShot/widget/GroupEditableListAdapter$GroupEditable;)V

    goto :goto_403

    .line 245
    :cond_41c
    throw v0

    .line 243
    :catch_41d
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_421
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_43a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/genonbeta/android/framework/io/DocumentFile;

    .line 244
    new-instance v4, Lcom/genonbeta/TrebleShot/adapter/FileListAdapter$RecentFileHolder;

    invoke-virtual/range {p0 .. p0}, Lcom/genonbeta/TrebleShot/adapter/FileListAdapter;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v1, v5, v3}, Lcom/genonbeta/TrebleShot/adapter/FileListAdapter$RecentFileHolder;-><init>(Lcom/genonbeta/TrebleShot/adapter/FileListAdapter;Landroid/content/Context;Lcom/genonbeta/android/framework/io/DocumentFile;)V

    invoke-virtual {v2, v1, v4}, Lcom/genonbeta/TrebleShot/widget/GroupEditableListAdapter$GroupLister;->offerObliged(Lcom/genonbeta/TrebleShot/widget/EditableListAdapterImpl;Lcom/genonbeta/TrebleShot/widget/GroupEditableListAdapter$GroupEditable;)V

    goto :goto_421

    :cond_43a
    return-void
.end method

.method public setConfiguration(ZZLjava/lang/String;)V
    .registers 4

    .line 391
    iput-boolean p1, p0, Lcom/genonbeta/TrebleShot/adapter/FileListAdapter;->mShowDirectories:Z

    .line 392
    iput-boolean p2, p0, Lcom/genonbeta/TrebleShot/adapter/FileListAdapter;->mShowFiles:Z

    .line 393
    iput-object p3, p0, Lcom/genonbeta/TrebleShot/adapter/FileListAdapter;->mFileMatch:Ljava/lang/String;

    return-void
.end method
