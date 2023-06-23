.class public Lcom/genonbeta/android/updatewithgithub/GitHubUpdater;
.super Ljava/lang/Object;
.source "GitHubUpdater.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/genonbeta/android/updatewithgithub/GitHubUpdater$OnInfoAvailableListener;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mPreReleaseIncluded:Z

.field private mRepo:Ljava/lang/String;

.field private mThemeRes:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 32
    const-class v0, Lcom/genonbeta/android/updatewithgithub/GitHubUpdater;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/genonbeta/android/updatewithgithub/GitHubUpdater;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;IZ)V
    .registers 5

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/genonbeta/android/updatewithgithub/GitHubUpdater;->mContext:Landroid/content/Context;

    .line 42
    iput-object p2, p0, Lcom/genonbeta/android/updatewithgithub/GitHubUpdater;->mRepo:Ljava/lang/String;

    .line 43
    iput p3, p0, Lcom/genonbeta/android/updatewithgithub/GitHubUpdater;->mThemeRes:I

    .line 44
    iput-boolean p4, p0, Lcom/genonbeta/android/updatewithgithub/GitHubUpdater;->mPreReleaseIncluded:Z

    return-void
.end method

.method static synthetic access$000(Lcom/genonbeta/android/updatewithgithub/GitHubUpdater;)I
    .registers 1

    .line 30
    iget p0, p0, Lcom/genonbeta/android/updatewithgithub/GitHubUpdater;->mThemeRes:I

    return p0
.end method

.method static synthetic access$100(Lcom/genonbeta/android/updatewithgithub/GitHubUpdater;)Landroid/content/Context;
    .registers 1

    .line 30
    iget-object p0, p0, Lcom/genonbeta/android/updatewithgithub/GitHubUpdater;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$200(Lcom/genonbeta/android/updatewithgithub/GitHubUpdater;)Ljava/lang/String;
    .registers 1

    .line 30
    iget-object p0, p0, Lcom/genonbeta/android/updatewithgithub/GitHubUpdater;->mRepo:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$300(Lcom/genonbeta/android/updatewithgithub/GitHubUpdater;)Z
    .registers 1

    .line 30
    iget-boolean p0, p0, Lcom/genonbeta/android/updatewithgithub/GitHubUpdater;->mPreReleaseIncluded:Z

    return p0
.end method

.method public static isNewVersion(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 4

    const/4 v0, 0x0

    .line 204
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, p0, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    .line 206
    new-instance v1, Lcom/genonbeta/android/updatewithgithub/ComparableVersion;

    invoke-direct {v1, p1}, Lcom/genonbeta/android/updatewithgithub/ComparableVersion;-><init>(Ljava/lang/String;)V

    .line 207
    new-instance p1, Lcom/genonbeta/android/updatewithgithub/ComparableVersion;

    iget-object p0, p0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-direct {p1, p0}, Lcom/genonbeta/android/updatewithgithub/ComparableVersion;-><init>(Ljava/lang/String;)V

    .line 209
    invoke-virtual {v1, p1}, Lcom/genonbeta/android/updatewithgithub/ComparableVersion;->compareTo(Lcom/genonbeta/android/updatewithgithub/ComparableVersion;)I

    move-result p0
    :try_end_1f
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1f} :catch_23

    if-lez p0, :cond_22

    const/4 v0, 0x1

    :cond_22
    return v0

    :catch_23
    move-exception p0

    .line 211
    invoke-virtual {p0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    return v0
.end method


# virtual methods
.method public checkForUpdates(ZLcom/genonbeta/android/updatewithgithub/GitHubUpdater$OnInfoAvailableListener;)V
    .registers 6

    if-eqz p1, :cond_e

    .line 50
    iget-object v0, p0, Lcom/genonbeta/android/updatewithgithub/GitHubUpdater;->mContext:Landroid/content/Context;

    sget v1, Lcom/genonbeta/android/framework/R$string;->genfw_uwg_check_for_updates_ongoing:I

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 52
    :cond_e
    new-instance v0, Lcom/genonbeta/android/updatewithgithub/GitHubUpdater$1;

    invoke-direct {v0, p0, p2, p1}, Lcom/genonbeta/android/updatewithgithub/GitHubUpdater$1;-><init>(Lcom/genonbeta/android/updatewithgithub/GitHubUpdater;Lcom/genonbeta/android/updatewithgithub/GitHubUpdater$OnInfoAvailableListener;Z)V

    .line 185
    invoke-virtual {v0}, Lcom/genonbeta/android/updatewithgithub/GitHubUpdater$1;->start()V

    return-void
.end method

.method public getAppLabel(Landroid/content/Context;)Ljava/lang/String;
    .registers 4

    .line 190
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 194
    :try_start_4
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    iget-object p1, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p1
    :try_end_f
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_4 .. :try_end_f} :catch_10

    goto :goto_11

    :catch_10
    const/4 p1, 0x0

    :goto_11
    if-eqz p1, :cond_18

    .line 198
    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object p1

    goto :goto_1a

    :cond_18
    const-string p1, "Unknown"

    :goto_1a
    check-cast p1, Ljava/lang/String;

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public isNewVersion(Ljava/lang/String;)Z
    .registers 3

    .line 219
    iget-object v0, p0, Lcom/genonbeta/android/updatewithgithub/GitHubUpdater;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/genonbeta/android/updatewithgithub/GitHubUpdater;->isNewVersion(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method
