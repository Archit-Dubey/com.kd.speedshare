.class public Lcom/genonbeta/TrebleShot/adapter/ApplicationListAdapter;
.super Lcom/genonbeta/TrebleShot/widget/EditableListAdapter;
.source "ApplicationListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/genonbeta/TrebleShot/adapter/ApplicationListAdapter$PackageHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/genonbeta/TrebleShot/widget/EditableListAdapter<",
        "Lcom/genonbeta/TrebleShot/adapter/ApplicationListAdapter$PackageHolder;",
        "Lcom/genonbeta/TrebleShot/widget/EditableListAdapter$EditableViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private mManager:Landroid/content/pm/PackageManager;

.field private mPreferences:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/SharedPreferences;)V
    .registers 3

    .line 35
    invoke-direct {p0, p1}, Lcom/genonbeta/TrebleShot/widget/EditableListAdapter;-><init>(Landroid/content/Context;)V

    .line 36
    iput-object p2, p0, Lcom/genonbeta/TrebleShot/adapter/ApplicationListAdapter;->mPreferences:Landroid/content/SharedPreferences;

    .line 37
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    iput-object p1, p0, Lcom/genonbeta/TrebleShot/adapter/ApplicationListAdapter;->mManager:Landroid/content/pm/PackageManager;

    return-void
.end method


# virtual methods
.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .registers 3

    .line 27
    check-cast p1, Lcom/genonbeta/TrebleShot/widget/EditableListAdapter$EditableViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/genonbeta/TrebleShot/adapter/ApplicationListAdapter;->onBindViewHolder(Lcom/genonbeta/TrebleShot/widget/EditableListAdapter$EditableViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/genonbeta/TrebleShot/widget/EditableListAdapter$EditableViewHolder;I)V
    .registers 7

    .line 77
    :try_start_0
    invoke-virtual {p1}, Lcom/genonbeta/TrebleShot/widget/EditableListAdapter$EditableViewHolder;->getView()Landroid/view/View;

    move-result-object p1

    .line 78
    invoke-virtual {p0, p2}, Lcom/genonbeta/TrebleShot/adapter/ApplicationListAdapter;->getItem(I)Lcom/genonbeta/TrebleShot/object/Editable;

    move-result-object p2

    check-cast p2, Lcom/genonbeta/TrebleShot/adapter/ApplicationListAdapter$PackageHolder;

    const v0, 0x7f09010f

    .line 79
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const v1, 0x7f0901e9

    .line 80
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f0901eb

    .line 81
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 83
    iget-object v3, p2, Lcom/genonbeta/TrebleShot/adapter/ApplicationListAdapter$PackageHolder;->friendlyName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 84
    iget-object v1, p2, Lcom/genonbeta/TrebleShot/adapter/ApplicationListAdapter$PackageHolder;->version:Ljava/lang/String;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 86
    invoke-virtual {p2}, Lcom/genonbeta/TrebleShot/adapter/ApplicationListAdapter$PackageHolder;->isSelectableSelected()Z

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/View;->setSelected(Z)V

    .line 88
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/adapter/ApplicationListAdapter;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/genonbeta/TrebleShot/GlideApp;->with(Landroid/content/Context;)Lcom/genonbeta/TrebleShot/GlideRequests;

    move-result-object p1

    iget-object p2, p2, Lcom/genonbeta/TrebleShot/adapter/ApplicationListAdapter$PackageHolder;->appInfo:Landroid/content/pm/ApplicationInfo;

    .line 89
    invoke-virtual {p1, p2}, Lcom/genonbeta/TrebleShot/GlideRequests;->load(Ljava/lang/Object;)Lcom/genonbeta/TrebleShot/GlideRequest;

    move-result-object p1

    const/16 p2, 0xa0

    .line 90
    invoke-virtual {p1, p2}, Lcom/genonbeta/TrebleShot/GlideRequest;->override(I)Lcom/genonbeta/TrebleShot/GlideRequest;

    move-result-object p1

    .line 91
    invoke-virtual {p1}, Lcom/genonbeta/TrebleShot/GlideRequest;->centerCrop()Lcom/genonbeta/TrebleShot/GlideRequest;

    move-result-object p1

    .line 92
    invoke-virtual {p1, v0}, Lcom/genonbeta/TrebleShot/GlideRequest;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;
    :try_end_51
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_51} :catch_51

    :catch_51
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .registers 3

    .line 27
    invoke-virtual {p0, p1, p2}, Lcom/genonbeta/TrebleShot/adapter/ApplicationListAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/genonbeta/TrebleShot/widget/EditableListAdapter$EditableViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/genonbeta/TrebleShot/widget/EditableListAdapter$EditableViewHolder;
    .registers 6

    .line 70
    new-instance p2, Lcom/genonbeta/TrebleShot/widget/EditableListAdapter$EditableViewHolder;

    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/adapter/ApplicationListAdapter;->getInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c0077

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/genonbeta/TrebleShot/widget/EditableListAdapter$EditableViewHolder;-><init>(Landroid/view/View;)V

    return-object p2
.end method

.method public onLoad()Ljava/util/List;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/genonbeta/TrebleShot/adapter/ApplicationListAdapter$PackageHolder;",
            ">;"
        }
    .end annotation

    .line 43
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 44
    iget-object v1, p0, Lcom/genonbeta/TrebleShot/adapter/ApplicationListAdapter;->mPreferences:Landroid/content/SharedPreferences;

    const-string v2, "show_system_apps"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 46
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/adapter/ApplicationListAdapter;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/16 v3, 0x80

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_20
    :goto_20
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/PackageInfo;

    .line 47
    iget-object v6, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 49
    iget v4, v6, Landroid/content/pm/ApplicationInfo;->flags:I

    const/4 v5, 0x1

    and-int/2addr v4, v5

    if-ne v4, v5, :cond_36

    if-eqz v1, :cond_20

    .line 50
    :cond_36
    new-instance v10, Lcom/genonbeta/TrebleShot/adapter/ApplicationListAdapter$PackageHolder;

    iget-object v4, p0, Lcom/genonbeta/TrebleShot/adapter/ApplicationListAdapter;->mManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v6, v4}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    iget-object v7, v3, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    iget-object v8, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    new-instance v9, Ljava/io/File;

    iget-object v3, v6, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-direct {v9, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v4, v10

    invoke-direct/range {v4 .. v9}, Lcom/genonbeta/TrebleShot/adapter/ApplicationListAdapter$PackageHolder;-><init>(Ljava/lang/String;Landroid/content/pm/ApplicationInfo;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)V

    .line 56
    invoke-virtual {p0, v10}, Lcom/genonbeta/TrebleShot/adapter/ApplicationListAdapter;->filterItem(Lcom/genonbeta/TrebleShot/object/Editable;)Z

    move-result v3

    if-eqz v3, :cond_20

    .line 57
    invoke-interface {v0, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_20

    .line 61
    :cond_5b
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/adapter/ApplicationListAdapter;->getDefaultComparator()Ljava/util/Comparator;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-object v0
.end method
