.class public Lcom/genonbeta/TrebleShot/fragment/external/GitHubChangelogListFragment$VersionListAdapter;
.super Lcom/genonbeta/android/framework/widget/RecyclerViewAdapter;
.source "GitHubChangelogListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/genonbeta/TrebleShot/fragment/external/GitHubChangelogListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "VersionListAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/genonbeta/android/framework/widget/RecyclerViewAdapter<",
        "Lcom/genonbeta/TrebleShot/fragment/external/GitHubChangelogListFragment$VersionObject;",
        "Lcom/genonbeta/android/framework/widget/RecyclerViewAdapter$ViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private mCurrentVersion:Ljava/lang/String;

.field private mList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/genonbeta/TrebleShot/fragment/external/GitHubChangelogListFragment$VersionObject;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 89
    invoke-direct {p0, p1}, Lcom/genonbeta/android/framework/widget/RecyclerViewAdapter;-><init>(Landroid/content/Context;)V

    .line 84
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/genonbeta/TrebleShot/fragment/external/GitHubChangelogListFragment$VersionListAdapter;->mList:Ljava/util/List;

    .line 90
    invoke-static {p1}, Lcom/genonbeta/TrebleShot/util/AppUtils;->getLocalDevice(Landroid/content/Context;)Lcom/genonbeta/TrebleShot/object/NetworkDevice;

    move-result-object p1

    iget-object p1, p1, Lcom/genonbeta/TrebleShot/object/NetworkDevice;->versionName:Ljava/lang/String;

    iput-object p1, p0, Lcom/genonbeta/TrebleShot/fragment/external/GitHubChangelogListFragment$VersionListAdapter;->mCurrentVersion:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .registers 2

    .line 163
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/fragment/external/GitHubChangelogListFragment$VersionListAdapter;->getList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItemId(I)J
    .registers 4

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/genonbeta/TrebleShot/fragment/external/GitHubChangelogListFragment$VersionObject;",
            ">;"
        }
    .end annotation

    .line 169
    iget-object v0, p0, Lcom/genonbeta/TrebleShot/fragment/external/GitHubChangelogListFragment$VersionListAdapter;->mList:Ljava/util/List;

    return-object v0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .registers 3

    .line 82
    check-cast p1, Lcom/genonbeta/android/framework/widget/RecyclerViewAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/genonbeta/TrebleShot/fragment/external/GitHubChangelogListFragment$VersionListAdapter;->onBindViewHolder(Lcom/genonbeta/android/framework/widget/RecyclerViewAdapter$ViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/genonbeta/android/framework/widget/RecyclerViewAdapter$ViewHolder;I)V
    .registers 6

    .line 103
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/fragment/external/GitHubChangelogListFragment$VersionListAdapter;->getList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/genonbeta/TrebleShot/fragment/external/GitHubChangelogListFragment$VersionObject;

    .line 104
    invoke-virtual {p1}, Lcom/genonbeta/android/framework/widget/RecyclerViewAdapter$ViewHolder;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f090114

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 105
    invoke-virtual {p1}, Lcom/genonbeta/android/framework/widget/RecyclerViewAdapter$ViewHolder;->getView()Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0901ea

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 106
    invoke-virtual {p1}, Lcom/genonbeta/android/framework/widget/RecyclerViewAdapter$ViewHolder;->getView()Landroid/view/View;

    move-result-object p1

    const v2, 0x7f0901eb

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 108
    iget-object v2, p2, Lcom/genonbeta/TrebleShot/fragment/external/GitHubChangelogListFragment$VersionObject;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 109
    iget-object v1, p2, Lcom/genonbeta/TrebleShot/fragment/external/GitHubChangelogListFragment$VersionObject;->changes:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 111
    iget-object p1, p0, Lcom/genonbeta/TrebleShot/fragment/external/GitHubChangelogListFragment$VersionListAdapter;->mCurrentVersion:Ljava/lang/String;

    iget-object p2, p2, Lcom/genonbeta/TrebleShot/fragment/external/GitHubChangelogListFragment$VersionObject;->tag:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_47

    const/4 p1, 0x0

    goto :goto_49

    :cond_47
    const/16 p1, 0x8

    :goto_49
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .registers 3

    .line 82
    invoke-virtual {p0, p1, p2}, Lcom/genonbeta/TrebleShot/fragment/external/GitHubChangelogListFragment$VersionListAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/genonbeta/android/framework/widget/RecyclerViewAdapter$ViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/genonbeta/android/framework/widget/RecyclerViewAdapter$ViewHolder;
    .registers 6

    .line 97
    new-instance p2, Lcom/genonbeta/android/framework/widget/RecyclerViewAdapter$ViewHolder;

    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/fragment/external/GitHubChangelogListFragment$VersionListAdapter;->getInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c007c

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/genonbeta/android/framework/widget/RecyclerViewAdapter$ViewHolder;-><init>(Landroid/view/View;)V

    return-object p2
.end method

.method public onLoad()Ljava/util/List;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/genonbeta/TrebleShot/fragment/external/GitHubChangelogListFragment$VersionObject;",
            ">;"
        }
    .end annotation

    .line 119
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 120
    new-instance v1, Lcom/genonbeta/android/updatewithgithub/RemoteServer;

    const-string v2, ""

    invoke-direct {v1, v2}, Lcom/genonbeta/android/updatewithgithub/RemoteServer;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    .line 123
    :try_start_d
    invoke-virtual {v1, v2, v2}, Lcom/genonbeta/android/updatewithgithub/RemoteServer;->connect(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 125
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2, v1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 127
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-lez v1, :cond_48

    const/4 v1, 0x0

    .line 128
    :goto_1d
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v1, v3, :cond_48

    .line 129
    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 131
    new-instance v4, Lcom/genonbeta/TrebleShot/fragment/external/GitHubChangelogListFragment$VersionObject;

    const-string v5, "tag_name"

    .line 132
    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "name"

    .line 133
    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "body"

    .line 134
    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v5, v6, v3}, Lcom/genonbeta/TrebleShot/fragment/external/GitHubChangelogListFragment$VersionObject;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_41
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_41} :catch_44

    add-int/lit8 v1, v1, 0x1

    goto :goto_1d

    :catch_44
    move-exception v1

    .line 139
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_48
    return-object v0
.end method

.method public onUpdate(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/genonbeta/TrebleShot/fragment/external/GitHubChangelogListFragment$VersionObject;",
            ">;)V"
        }
    .end annotation

    .line 148
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/fragment/external/GitHubChangelogListFragment$VersionListAdapter;->getList()Ljava/util/List;

    move-result-object v0

    monitor-enter v0

    .line 149
    :try_start_5
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/fragment/external/GitHubChangelogListFragment$VersionListAdapter;->getList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 150
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/fragment/external/GitHubChangelogListFragment$VersionListAdapter;->getList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 151
    monitor-exit v0

    return-void

    :catchall_15
    move-exception p1

    monitor-exit v0
    :try_end_17
    .catchall {:try_start_5 .. :try_end_17} :catchall_15

    throw p1
.end method
