.class public Lcom/genonbeta/TrebleShot/adapter/SmartFragmentPagerAdapter$StableItem;
.super Ljava/lang/Object;
.source "SmartFragmentPagerAdapter.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/genonbeta/TrebleShot/adapter/SmartFragmentPagerAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "StableItem"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/genonbeta/TrebleShot/adapter/SmartFragmentPagerAdapter$StableItem;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public arguments:Landroid/os/Bundle;

.field public clazzName:Ljava/lang/String;

.field public iconOnly:Z

.field public itemId:J

.field protected mCurrentPosition:I

.field protected mInitiatedItem:Landroidx/fragment/app/Fragment;

.field public title:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 171
    new-instance v0, Lcom/genonbeta/TrebleShot/adapter/SmartFragmentPagerAdapter$StableItem$1;

    invoke-direct {v0}, Lcom/genonbeta/TrebleShot/adapter/SmartFragmentPagerAdapter$StableItem$1;-><init>()V

    sput-object v0, Lcom/genonbeta/TrebleShot/adapter/SmartFragmentPagerAdapter$StableItem;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(JLjava/lang/Class;Landroid/os/Bundle;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/lang/Class<",
            "+",
            "Landroidx/fragment/app/Fragment;",
            ">;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .line 202
    invoke-virtual {p3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/genonbeta/TrebleShot/adapter/SmartFragmentPagerAdapter$StableItem;-><init>(JLjava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public constructor <init>(JLjava/lang/String;Landroid/os/Bundle;)V
    .registers 6

    .line 194
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 191
    iput v0, p0, Lcom/genonbeta/TrebleShot/adapter/SmartFragmentPagerAdapter$StableItem;->mCurrentPosition:I

    .line 195
    iput-wide p1, p0, Lcom/genonbeta/TrebleShot/adapter/SmartFragmentPagerAdapter$StableItem;->itemId:J

    .line 196
    iput-object p3, p0, Lcom/genonbeta/TrebleShot/adapter/SmartFragmentPagerAdapter$StableItem;->clazzName:Ljava/lang/String;

    .line 197
    iput-object p4, p0, Lcom/genonbeta/TrebleShot/adapter/SmartFragmentPagerAdapter$StableItem;->arguments:Landroid/os/Bundle;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 6

    .line 207
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v3

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/genonbeta/TrebleShot/adapter/SmartFragmentPagerAdapter$StableItem;-><init>(JLjava/lang/String;Landroid/os/Bundle;)V

    .line 209
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/genonbeta/TrebleShot/adapter/SmartFragmentPagerAdapter$StableItem;->setTitle(Ljava/lang/String;)Lcom/genonbeta/TrebleShot/adapter/SmartFragmentPagerAdapter$StableItem;

    .line 210
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1e

    goto :goto_1f

    :cond_1e
    const/4 v0, 0x0

    :goto_1f
    invoke-virtual {p0, v0}, Lcom/genonbeta/TrebleShot/adapter/SmartFragmentPagerAdapter$StableItem;->setIconOnly(Z)Lcom/genonbeta/TrebleShot/adapter/SmartFragmentPagerAdapter$StableItem;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public getCurrentPosition()I
    .registers 2

    .line 215
    iget v0, p0, Lcom/genonbeta/TrebleShot/adapter/SmartFragmentPagerAdapter$StableItem;->mCurrentPosition:I

    return v0
.end method

.method public getInitiatedItem()Landroidx/fragment/app/Fragment;
    .registers 2

    .line 220
    iget-object v0, p0, Lcom/genonbeta/TrebleShot/adapter/SmartFragmentPagerAdapter$StableItem;->mInitiatedItem:Landroidx/fragment/app/Fragment;

    return-object v0
.end method

.method public setIconOnly(Z)Lcom/genonbeta/TrebleShot/adapter/SmartFragmentPagerAdapter$StableItem;
    .registers 2

    .line 225
    iput-boolean p1, p0, Lcom/genonbeta/TrebleShot/adapter/SmartFragmentPagerAdapter$StableItem;->iconOnly:Z

    return-object p0
.end method

.method public setTitle(Ljava/lang/String;)Lcom/genonbeta/TrebleShot/adapter/SmartFragmentPagerAdapter$StableItem;
    .registers 2

    .line 231
    iput-object p1, p0, Lcom/genonbeta/TrebleShot/adapter/SmartFragmentPagerAdapter$StableItem;->title:Ljava/lang/String;

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 5

    .line 244
    iget-wide v0, p0, Lcom/genonbeta/TrebleShot/adapter/SmartFragmentPagerAdapter$StableItem;->itemId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 245
    iget-object p2, p0, Lcom/genonbeta/TrebleShot/adapter/SmartFragmentPagerAdapter$StableItem;->clazzName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 246
    iget-object p2, p0, Lcom/genonbeta/TrebleShot/adapter/SmartFragmentPagerAdapter$StableItem;->arguments:Landroid/os/Bundle;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 247
    iget-object p2, p0, Lcom/genonbeta/TrebleShot/adapter/SmartFragmentPagerAdapter$StableItem;->title:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 248
    iget-boolean p2, p0, Lcom/genonbeta/TrebleShot/adapter/SmartFragmentPagerAdapter$StableItem;->iconOnly:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
