.class public Lcom/genonbeta/TrebleShot/fragment/external/GitHubChangelogListFragment$VersionObject;
.super Ljava/lang/Object;
.source "GitHubChangelogListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/genonbeta/TrebleShot/fragment/external/GitHubChangelogListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "VersionObject"
.end annotation


# instance fields
.field public changes:Ljava/lang/String;

.field public name:Ljava/lang/String;

.field public tag:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    iput-object p1, p0, Lcom/genonbeta/TrebleShot/fragment/external/GitHubChangelogListFragment$VersionObject;->tag:Ljava/lang/String;

    .line 77
    iput-object p2, p0, Lcom/genonbeta/TrebleShot/fragment/external/GitHubChangelogListFragment$VersionObject;->name:Ljava/lang/String;

    .line 78
    iput-object p3, p0, Lcom/genonbeta/TrebleShot/fragment/external/GitHubChangelogListFragment$VersionObject;->changes:Ljava/lang/String;

    return-void
.end method
