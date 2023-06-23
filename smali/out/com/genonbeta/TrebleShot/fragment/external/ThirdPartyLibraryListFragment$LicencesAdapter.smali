.class public Lcom/genonbeta/TrebleShot/fragment/external/ThirdPartyLibraryListFragment$LicencesAdapter;
.super Lcom/genonbeta/android/framework/widget/RecyclerViewAdapter;
.source "ThirdPartyLibraryListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/genonbeta/TrebleShot/fragment/external/ThirdPartyLibraryListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LicencesAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/genonbeta/android/framework/widget/RecyclerViewAdapter<",
        "Lcom/genonbeta/TrebleShot/fragment/external/ThirdPartyLibraryListFragment$ModuleItem;",
        "Lcom/genonbeta/android/framework/widget/RecyclerViewAdapter$ViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private mList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/genonbeta/TrebleShot/fragment/external/ThirdPartyLibraryListFragment$ModuleItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 104
    invoke-direct {p0, p1}, Lcom/genonbeta/android/framework/widget/RecyclerViewAdapter;-><init>(Landroid/content/Context;)V

    .line 100
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/genonbeta/TrebleShot/fragment/external/ThirdPartyLibraryListFragment$LicencesAdapter;->mList:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .registers 2

    .line 141
    iget-object v0, p0, Lcom/genonbeta/TrebleShot/fragment/external/ThirdPartyLibraryListFragment$LicencesAdapter;->mList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/genonbeta/TrebleShot/fragment/external/ThirdPartyLibraryListFragment$ModuleItem;",
            ">;"
        }
    .end annotation

    .line 184
    iget-object v0, p0, Lcom/genonbeta/TrebleShot/fragment/external/ThirdPartyLibraryListFragment$LicencesAdapter;->mList:Ljava/util/List;

    return-object v0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .registers 3

    .line 98
    check-cast p1, Lcom/genonbeta/android/framework/widget/RecyclerViewAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/genonbeta/TrebleShot/fragment/external/ThirdPartyLibraryListFragment$LicencesAdapter;->onBindViewHolder(Lcom/genonbeta/android/framework/widget/RecyclerViewAdapter$ViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/genonbeta/android/framework/widget/RecyclerViewAdapter$ViewHolder;I)V
    .registers 5

    .line 117
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/fragment/external/ThirdPartyLibraryListFragment$LicencesAdapter;->getList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/genonbeta/TrebleShot/fragment/external/ThirdPartyLibraryListFragment$ModuleItem;

    .line 118
    invoke-virtual {p1}, Lcom/genonbeta/android/framework/widget/RecyclerViewAdapter$ViewHolder;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0901e9

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 119
    invoke-virtual {p1}, Lcom/genonbeta/android/framework/widget/RecyclerViewAdapter$ViewHolder;->getView()Landroid/view/View;

    move-result-object p1

    const v1, 0x7f0901eb

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 121
    iget-object v1, p2, Lcom/genonbeta/TrebleShot/fragment/external/ThirdPartyLibraryListFragment$ModuleItem;->moduleName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 123
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 125
    iget-object v1, p2, Lcom/genonbeta/TrebleShot/fragment/external/ThirdPartyLibraryListFragment$ModuleItem;->moduleVersion:Ljava/lang/String;

    if-eqz v1, :cond_37

    .line 126
    iget-object v1, p2, Lcom/genonbeta/TrebleShot/fragment/external/ThirdPartyLibraryListFragment$ModuleItem;->moduleVersion:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    :cond_37
    iget-object v1, p2, Lcom/genonbeta/TrebleShot/fragment/external/ThirdPartyLibraryListFragment$ModuleItem;->licence:Ljava/lang/String;

    if-eqz v1, :cond_4b

    .line 129
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_46

    const-string v1, ", "

    .line 130
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    :cond_46
    iget-object p2, p2, Lcom/genonbeta/TrebleShot/fragment/external/ThirdPartyLibraryListFragment$ModuleItem;->licence:Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    :cond_4b
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .registers 3

    .line 98
    invoke-virtual {p0, p1, p2}, Lcom/genonbeta/TrebleShot/fragment/external/ThirdPartyLibraryListFragment$LicencesAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/genonbeta/android/framework/widget/RecyclerViewAdapter$ViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/genonbeta/android/framework/widget/RecyclerViewAdapter$ViewHolder;
    .registers 6

    .line 111
    new-instance p2, Lcom/genonbeta/android/framework/widget/RecyclerViewAdapter$ViewHolder;

    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/fragment/external/ThirdPartyLibraryListFragment$LicencesAdapter;->getInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c0088

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/genonbeta/android/framework/widget/RecyclerViewAdapter$ViewHolder;-><init>(Landroid/view/View;)V

    return-object p2
.end method

.method public onLoad()Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/genonbeta/TrebleShot/fragment/external/ThirdPartyLibraryListFragment$ModuleItem;",
            ">;"
        }
    .end annotation

    .line 147
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/fragment/external/ThirdPartyLibraryListFragment$LicencesAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x7f100000

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v0

    .line 148
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 153
    :goto_13
    :try_start_13
    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_1e

    .line 154
    invoke-virtual {v1, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_13

    .line 157
    :cond_1e
    new-instance v0, Lorg/json/JSONObject;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "dependencies"

    .line 158
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 160
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    .line 162
    :goto_33
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_48

    .line 163
    new-instance v3, Lcom/genonbeta/TrebleShot/fragment/external/ThirdPartyLibraryListFragment$ModuleItem;

    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/genonbeta/TrebleShot/fragment/external/ThirdPartyLibraryListFragment$ModuleItem;-><init>(Lorg/json/JSONObject;)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_45
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_45} :catch_49

    add-int/lit8 v2, v2, 0x1

    goto :goto_33

    :cond_48
    return-object v1

    .line 169
    :catch_49
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method public onUpdate(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/genonbeta/TrebleShot/fragment/external/ThirdPartyLibraryListFragment$ModuleItem;",
            ">;)V"
        }
    .end annotation

    .line 175
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/fragment/external/ThirdPartyLibraryListFragment$LicencesAdapter;->getList()Ljava/util/List;

    move-result-object v0

    monitor-enter v0

    .line 176
    :try_start_5
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/fragment/external/ThirdPartyLibraryListFragment$LicencesAdapter;->getList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 177
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/fragment/external/ThirdPartyLibraryListFragment$LicencesAdapter;->getList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 178
    monitor-exit v0

    return-void

    :catchall_15
    move-exception p1

    monitor-exit v0
    :try_end_17
    .catchall {:try_start_5 .. :try_end_17} :catchall_15

    throw p1
.end method
