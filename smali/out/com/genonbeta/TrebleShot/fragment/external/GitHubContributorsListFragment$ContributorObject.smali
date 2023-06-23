.class public Lcom/genonbeta/TrebleShot/fragment/external/GitHubContributorsListFragment$ContributorObject;
.super Ljava/lang/Object;
.source "GitHubContributorsListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/genonbeta/TrebleShot/fragment/external/GitHubContributorsListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ContributorObject"
.end annotation


# instance fields
.field public name:Ljava/lang/String;

.field public url:Ljava/lang/String;

.field public urlAvatar:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 109
    iput-object p1, p0, Lcom/genonbeta/TrebleShot/fragment/external/GitHubContributorsListFragment$ContributorObject;->name:Ljava/lang/String;

    .line 110
    iput-object p2, p0, Lcom/genonbeta/TrebleShot/fragment/external/GitHubContributorsListFragment$ContributorObject;->url:Ljava/lang/String;

    .line 111
    iput-object p3, p0, Lcom/genonbeta/TrebleShot/fragment/external/GitHubContributorsListFragment$ContributorObject;->urlAvatar:Ljava/lang/String;

    return-void
.end method
