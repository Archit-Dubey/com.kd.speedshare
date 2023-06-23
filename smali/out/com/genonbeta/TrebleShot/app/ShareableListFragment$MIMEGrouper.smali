.class public Lcom/genonbeta/TrebleShot/app/ShareableListFragment$MIMEGrouper;
.super Ljava/lang/Object;
.source "ShareableListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/genonbeta/TrebleShot/app/ShareableListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MIMEGrouper"
.end annotation


# static fields
.field public static final TYPE_GENERIC:Ljava/lang/String; = "*"


# instance fields
.field private mLocked:Z

.field private mMajor:Ljava/lang/String;

.field private mMinor:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 144
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getMajor()Ljava/lang/String;
    .registers 2

    .line 155
    iget-object v0, p0, Lcom/genonbeta/TrebleShot/app/ShareableListFragment$MIMEGrouper;->mMajor:Ljava/lang/String;

    if-nez v0, :cond_6

    const-string v0, "*"

    :cond_6
    return-object v0
.end method

.method public getMinor()Ljava/lang/String;
    .registers 2

    .line 160
    iget-object v0, p0, Lcom/genonbeta/TrebleShot/app/ShareableListFragment$MIMEGrouper;->mMinor:Ljava/lang/String;

    if-nez v0, :cond_6

    const-string v0, "*"

    :cond_6
    return-object v0
.end method

.method public isLocked()Z
    .registers 2

    .line 150
    iget-boolean v0, p0, Lcom/genonbeta/TrebleShot/app/ShareableListFragment$MIMEGrouper;->mLocked:Z

    return v0
.end method

.method public process(Ljava/lang/String;)V
    .registers 4

    if-eqz p1, :cond_21

    .line 165
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x3

    if-lt v0, v1, :cond_21

    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_12

    goto :goto_21

    .line 168
    :cond_12
    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    .line 170
    aget-object v0, p1, v0

    const/4 v1, 0x1

    aget-object p1, p1, v1

    invoke-virtual {p0, v0, p1}, Lcom/genonbeta/TrebleShot/app/ShareableListFragment$MIMEGrouper;->process(Ljava/lang/String;Ljava/lang/String;)V

    :cond_21
    :goto_21
    return-void
.end method

.method public process(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    .line 175
    iget-object v0, p0, Lcom/genonbeta/TrebleShot/app/ShareableListFragment$MIMEGrouper;->mMajor:Ljava/lang/String;

    if-eqz v0, :cond_37

    iget-object v0, p0, Lcom/genonbeta/TrebleShot/app/ShareableListFragment$MIMEGrouper;->mMinor:Ljava/lang/String;

    if-nez v0, :cond_9

    goto :goto_37

    .line 178
    :cond_9
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/app/ShareableListFragment$MIMEGrouper;->getMajor()Ljava/lang/String;

    move-result-object v0

    const-string v1, "*"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_19

    .line 179
    iput-boolean v2, p0, Lcom/genonbeta/TrebleShot/app/ShareableListFragment$MIMEGrouper;->mLocked:Z

    goto :goto_3b

    .line 180
    :cond_19
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/app/ShareableListFragment$MIMEGrouper;->getMajor()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2a

    .line 181
    iput-object v1, p0, Lcom/genonbeta/TrebleShot/app/ShareableListFragment$MIMEGrouper;->mMajor:Ljava/lang/String;

    .line 182
    iput-object v1, p0, Lcom/genonbeta/TrebleShot/app/ShareableListFragment$MIMEGrouper;->mMinor:Ljava/lang/String;

    .line 184
    iput-boolean v2, p0, Lcom/genonbeta/TrebleShot/app/ShareableListFragment$MIMEGrouper;->mLocked:Z

    goto :goto_3b

    .line 185
    :cond_2a
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/app/ShareableListFragment$MIMEGrouper;->getMinor()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3b

    .line 186
    iput-object v1, p0, Lcom/genonbeta/TrebleShot/app/ShareableListFragment$MIMEGrouper;->mMinor:Ljava/lang/String;

    goto :goto_3b

    .line 176
    :cond_37
    :goto_37
    iput-object p1, p0, Lcom/genonbeta/TrebleShot/app/ShareableListFragment$MIMEGrouper;->mMajor:Ljava/lang/String;

    .line 177
    iput-object p2, p0, Lcom/genonbeta/TrebleShot/app/ShareableListFragment$MIMEGrouper;->mMinor:Ljava/lang/String;

    :cond_3b
    :goto_3b
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 193
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/app/ShareableListFragment$MIMEGrouper;->getMajor()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/app/ShareableListFragment$MIMEGrouper;->getMinor()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
