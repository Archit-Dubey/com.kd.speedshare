.class final Landroidx/fragment/app/BackStackState;
.super Ljava/lang/Object;
.source "BackStackState.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroidx/fragment/app/BackStackState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final mBreadCrumbShortTitleRes:I

.field final mBreadCrumbShortTitleText:Ljava/lang/CharSequence;

.field final mBreadCrumbTitleRes:I

.field final mBreadCrumbTitleText:Ljava/lang/CharSequence;

.field final mFragmentWhos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final mIndex:I

.field final mName:Ljava/lang/String;

.field final mOps:[I

.field final mReorderingAllowed:Z

.field final mSharedElementSourceNames:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final mSharedElementTargetNames:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final mTransition:I

.field final mTransitionStyle:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 155
    new-instance v0, Landroidx/fragment/app/BackStackState$1;

    invoke-direct {v0}, Landroidx/fragment/app/BackStackState$1;-><init>()V

    sput-object v0, Landroidx/fragment/app/BackStackState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 3

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    iput-object v0, p0, Landroidx/fragment/app/BackStackState;->mOps:[I

    .line 76
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Landroidx/fragment/app/BackStackState;->mFragmentWhos:Ljava/util/ArrayList;

    .line 77
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroidx/fragment/app/BackStackState;->mTransition:I

    .line 78
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroidx/fragment/app/BackStackState;->mTransitionStyle:I

    .line 79
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroidx/fragment/app/BackStackState;->mName:Ljava/lang/String;

    .line 80
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroidx/fragment/app/BackStackState;->mIndex:I

    .line 81
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroidx/fragment/app/BackStackState;->mBreadCrumbTitleRes:I

    .line 82
    sget-object v0, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    iput-object v0, p0, Landroidx/fragment/app/BackStackState;->mBreadCrumbTitleText:Ljava/lang/CharSequence;

    .line 83
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroidx/fragment/app/BackStackState;->mBreadCrumbShortTitleRes:I

    .line 84
    sget-object v0, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    iput-object v0, p0, Landroidx/fragment/app/BackStackState;->mBreadCrumbShortTitleText:Ljava/lang/CharSequence;

    .line 85
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Landroidx/fragment/app/BackStackState;->mSharedElementSourceNames:Ljava/util/ArrayList;

    .line 86
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Landroidx/fragment/app/BackStackState;->mSharedElementTargetNames:Ljava/util/ArrayList;

    .line 87
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_5b

    const/4 p1, 0x1

    goto :goto_5c

    :cond_5b
    const/4 p1, 0x0

    :goto_5c
    iput-boolean p1, p0, Landroidx/fragment/app/BackStackState;->mReorderingAllowed:Z

    return-void
.end method

.method public constructor <init>(Landroidx/fragment/app/BackStackRecord;)V
    .registers 9

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iget-object v0, p1, Landroidx/fragment/app/BackStackRecord;->mOps:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    mul-int/lit8 v1, v0, 0x5

    .line 44
    new-array v1, v1, [I

    iput-object v1, p0, Landroidx/fragment/app/BackStackState;->mOps:[I

    .line 46
    iget-boolean v1, p1, Landroidx/fragment/app/BackStackRecord;->mAddToBackStack:Z

    if-eqz v1, :cond_8e

    .line 50
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Landroidx/fragment/app/BackStackState;->mFragmentWhos:Ljava/util/ArrayList;

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_1c
    if-ge v1, v0, :cond_61

    .line 53
    iget-object v3, p1, Landroidx/fragment/app/BackStackRecord;->mOps:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/fragment/app/BackStackRecord$Op;

    .line 54
    iget-object v4, p0, Landroidx/fragment/app/BackStackState;->mOps:[I

    add-int/lit8 v5, v2, 0x1

    iget v6, v3, Landroidx/fragment/app/BackStackRecord$Op;->cmd:I

    aput v6, v4, v2

    .line 55
    iget-object v2, p0, Landroidx/fragment/app/BackStackState;->mFragmentWhos:Ljava/util/ArrayList;

    iget-object v4, v3, Landroidx/fragment/app/BackStackRecord$Op;->fragment:Landroidx/fragment/app/Fragment;

    if-eqz v4, :cond_39

    iget-object v4, v3, Landroidx/fragment/app/BackStackRecord$Op;->fragment:Landroidx/fragment/app/Fragment;

    iget-object v4, v4, Landroidx/fragment/app/Fragment;->mWho:Ljava/lang/String;

    goto :goto_3a

    :cond_39
    const/4 v4, 0x0

    :goto_3a
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 56
    iget-object v2, p0, Landroidx/fragment/app/BackStackState;->mOps:[I

    add-int/lit8 v4, v5, 0x1

    iget v6, v3, Landroidx/fragment/app/BackStackRecord$Op;->enterAnim:I

    aput v6, v2, v5

    .line 57
    iget-object v2, p0, Landroidx/fragment/app/BackStackState;->mOps:[I

    add-int/lit8 v5, v4, 0x1

    iget v6, v3, Landroidx/fragment/app/BackStackRecord$Op;->exitAnim:I

    aput v6, v2, v4

    .line 58
    iget-object v2, p0, Landroidx/fragment/app/BackStackState;->mOps:[I

    add-int/lit8 v4, v5, 0x1

    iget v6, v3, Landroidx/fragment/app/BackStackRecord$Op;->popEnterAnim:I

    aput v6, v2, v5

    .line 59
    iget-object v2, p0, Landroidx/fragment/app/BackStackState;->mOps:[I

    add-int/lit8 v5, v4, 0x1

    iget v3, v3, Landroidx/fragment/app/BackStackRecord$Op;->popExitAnim:I

    aput v3, v2, v4

    add-int/lit8 v1, v1, 0x1

    move v2, v5

    goto :goto_1c

    .line 61
    :cond_61
    iget v0, p1, Landroidx/fragment/app/BackStackRecord;->mTransition:I

    iput v0, p0, Landroidx/fragment/app/BackStackState;->mTransition:I

    .line 62
    iget v0, p1, Landroidx/fragment/app/BackStackRecord;->mTransitionStyle:I

    iput v0, p0, Landroidx/fragment/app/BackStackState;->mTransitionStyle:I

    .line 63
    iget-object v0, p1, Landroidx/fragment/app/BackStackRecord;->mName:Ljava/lang/String;

    iput-object v0, p0, Landroidx/fragment/app/BackStackState;->mName:Ljava/lang/String;

    .line 64
    iget v0, p1, Landroidx/fragment/app/BackStackRecord;->mIndex:I

    iput v0, p0, Landroidx/fragment/app/BackStackState;->mIndex:I

    .line 65
    iget v0, p1, Landroidx/fragment/app/BackStackRecord;->mBreadCrumbTitleRes:I

    iput v0, p0, Landroidx/fragment/app/BackStackState;->mBreadCrumbTitleRes:I

    .line 66
    iget-object v0, p1, Landroidx/fragment/app/BackStackRecord;->mBreadCrumbTitleText:Ljava/lang/CharSequence;

    iput-object v0, p0, Landroidx/fragment/app/BackStackState;->mBreadCrumbTitleText:Ljava/lang/CharSequence;

    .line 67
    iget v0, p1, Landroidx/fragment/app/BackStackRecord;->mBreadCrumbShortTitleRes:I

    iput v0, p0, Landroidx/fragment/app/BackStackState;->mBreadCrumbShortTitleRes:I

    .line 68
    iget-object v0, p1, Landroidx/fragment/app/BackStackRecord;->mBreadCrumbShortTitleText:Ljava/lang/CharSequence;

    iput-object v0, p0, Landroidx/fragment/app/BackStackState;->mBreadCrumbShortTitleText:Ljava/lang/CharSequence;

    .line 69
    iget-object v0, p1, Landroidx/fragment/app/BackStackRecord;->mSharedElementSourceNames:Ljava/util/ArrayList;

    iput-object v0, p0, Landroidx/fragment/app/BackStackState;->mSharedElementSourceNames:Ljava/util/ArrayList;

    .line 70
    iget-object v0, p1, Landroidx/fragment/app/BackStackRecord;->mSharedElementTargetNames:Ljava/util/ArrayList;

    iput-object v0, p0, Landroidx/fragment/app/BackStackState;->mSharedElementTargetNames:Ljava/util/ArrayList;

    .line 71
    iget-boolean p1, p1, Landroidx/fragment/app/BackStackRecord;->mReorderingAllowed:Z

    iput-boolean p1, p0, Landroidx/fragment/app/BackStackState;->mReorderingAllowed:Z

    return-void

    .line 47
    :cond_8e
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Not on back stack"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto :goto_97

    :goto_96
    throw p1

    :goto_97
    goto :goto_96
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public instantiate(Landroidx/fragment/app/FragmentManagerImpl;)Landroidx/fragment/app/BackStackRecord;
    .registers 8

    .line 91
    new-instance v0, Landroidx/fragment/app/BackStackRecord;

    invoke-direct {v0, p1}, Landroidx/fragment/app/BackStackRecord;-><init>(Landroidx/fragment/app/FragmentManagerImpl;)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 94
    :goto_7
    iget-object v3, p0, Landroidx/fragment/app/BackStackState;->mOps:[I

    array-length v3, v3

    if-ge v1, v3, :cond_97

    .line 95
    new-instance v3, Landroidx/fragment/app/BackStackRecord$Op;

    invoke-direct {v3}, Landroidx/fragment/app/BackStackRecord$Op;-><init>()V

    .line 96
    iget-object v4, p0, Landroidx/fragment/app/BackStackState;->mOps:[I

    add-int/lit8 v5, v1, 0x1

    aget v1, v4, v1

    iput v1, v3, Landroidx/fragment/app/BackStackRecord$Op;->cmd:I

    .line 97
    sget-boolean v1, Landroidx/fragment/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v1, :cond_47

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Instantiate "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " op #"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " base fragment #"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Landroidx/fragment/app/BackStackState;->mOps:[I

    aget v4, v4, v5

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v4, "FragmentManager"

    invoke-static {v4, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    :cond_47
    iget-object v1, p0, Landroidx/fragment/app/BackStackState;->mFragmentWhos:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_5c

    .line 101
    iget-object v4, p1, Landroidx/fragment/app/FragmentManagerImpl;->mActive:Ljava/util/HashMap;

    invoke-virtual {v4, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/Fragment;

    .line 102
    iput-object v1, v3, Landroidx/fragment/app/BackStackRecord$Op;->fragment:Landroidx/fragment/app/Fragment;

    goto :goto_5f

    :cond_5c
    const/4 v1, 0x0

    .line 104
    iput-object v1, v3, Landroidx/fragment/app/BackStackRecord$Op;->fragment:Landroidx/fragment/app/Fragment;

    .line 106
    :goto_5f
    iget-object v1, p0, Landroidx/fragment/app/BackStackState;->mOps:[I

    add-int/lit8 v4, v5, 0x1

    aget v1, v1, v5

    iput v1, v3, Landroidx/fragment/app/BackStackRecord$Op;->enterAnim:I

    .line 107
    iget-object v1, p0, Landroidx/fragment/app/BackStackState;->mOps:[I

    add-int/lit8 v5, v4, 0x1

    aget v1, v1, v4

    iput v1, v3, Landroidx/fragment/app/BackStackRecord$Op;->exitAnim:I

    .line 108
    iget-object v1, p0, Landroidx/fragment/app/BackStackState;->mOps:[I

    add-int/lit8 v4, v5, 0x1

    aget v1, v1, v5

    iput v1, v3, Landroidx/fragment/app/BackStackRecord$Op;->popEnterAnim:I

    .line 109
    iget-object v1, p0, Landroidx/fragment/app/BackStackState;->mOps:[I

    add-int/lit8 v5, v4, 0x1

    aget v1, v1, v4

    iput v1, v3, Landroidx/fragment/app/BackStackRecord$Op;->popExitAnim:I

    .line 110
    iget v1, v3, Landroidx/fragment/app/BackStackRecord$Op;->enterAnim:I

    iput v1, v0, Landroidx/fragment/app/BackStackRecord;->mEnterAnim:I

    .line 111
    iget v1, v3, Landroidx/fragment/app/BackStackRecord$Op;->exitAnim:I

    iput v1, v0, Landroidx/fragment/app/BackStackRecord;->mExitAnim:I

    .line 112
    iget v1, v3, Landroidx/fragment/app/BackStackRecord$Op;->popEnterAnim:I

    iput v1, v0, Landroidx/fragment/app/BackStackRecord;->mPopEnterAnim:I

    .line 113
    iget v1, v3, Landroidx/fragment/app/BackStackRecord$Op;->popExitAnim:I

    iput v1, v0, Landroidx/fragment/app/BackStackRecord;->mPopExitAnim:I

    .line 114
    invoke-virtual {v0, v3}, Landroidx/fragment/app/BackStackRecord;->addOp(Landroidx/fragment/app/BackStackRecord$Op;)V

    add-int/lit8 v2, v2, 0x1

    move v1, v5

    goto/16 :goto_7

    .line 117
    :cond_97
    iget p1, p0, Landroidx/fragment/app/BackStackState;->mTransition:I

    iput p1, v0, Landroidx/fragment/app/BackStackRecord;->mTransition:I

    .line 118
    iget p1, p0, Landroidx/fragment/app/BackStackState;->mTransitionStyle:I

    iput p1, v0, Landroidx/fragment/app/BackStackRecord;->mTransitionStyle:I

    .line 119
    iget-object p1, p0, Landroidx/fragment/app/BackStackState;->mName:Ljava/lang/String;

    iput-object p1, v0, Landroidx/fragment/app/BackStackRecord;->mName:Ljava/lang/String;

    .line 120
    iget p1, p0, Landroidx/fragment/app/BackStackState;->mIndex:I

    iput p1, v0, Landroidx/fragment/app/BackStackRecord;->mIndex:I

    const/4 p1, 0x1

    .line 121
    iput-boolean p1, v0, Landroidx/fragment/app/BackStackRecord;->mAddToBackStack:Z

    .line 122
    iget v1, p0, Landroidx/fragment/app/BackStackState;->mBreadCrumbTitleRes:I

    iput v1, v0, Landroidx/fragment/app/BackStackRecord;->mBreadCrumbTitleRes:I

    .line 123
    iget-object v1, p0, Landroidx/fragment/app/BackStackState;->mBreadCrumbTitleText:Ljava/lang/CharSequence;

    iput-object v1, v0, Landroidx/fragment/app/BackStackRecord;->mBreadCrumbTitleText:Ljava/lang/CharSequence;

    .line 124
    iget v1, p0, Landroidx/fragment/app/BackStackState;->mBreadCrumbShortTitleRes:I

    iput v1, v0, Landroidx/fragment/app/BackStackRecord;->mBreadCrumbShortTitleRes:I

    .line 125
    iget-object v1, p0, Landroidx/fragment/app/BackStackState;->mBreadCrumbShortTitleText:Ljava/lang/CharSequence;

    iput-object v1, v0, Landroidx/fragment/app/BackStackRecord;->mBreadCrumbShortTitleText:Ljava/lang/CharSequence;

    .line 126
    iget-object v1, p0, Landroidx/fragment/app/BackStackState;->mSharedElementSourceNames:Ljava/util/ArrayList;

    iput-object v1, v0, Landroidx/fragment/app/BackStackRecord;->mSharedElementSourceNames:Ljava/util/ArrayList;

    .line 127
    iget-object v1, p0, Landroidx/fragment/app/BackStackState;->mSharedElementTargetNames:Ljava/util/ArrayList;

    iput-object v1, v0, Landroidx/fragment/app/BackStackRecord;->mSharedElementTargetNames:Ljava/util/ArrayList;

    .line 128
    iget-boolean v1, p0, Landroidx/fragment/app/BackStackState;->mReorderingAllowed:Z

    iput-boolean v1, v0, Landroidx/fragment/app/BackStackRecord;->mReorderingAllowed:Z

    .line 129
    invoke-virtual {v0, p1}, Landroidx/fragment/app/BackStackRecord;->bumpBackStackNesting(I)V

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    .line 140
    iget-object p2, p0, Landroidx/fragment/app/BackStackState;->mOps:[I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 141
    iget-object p2, p0, Landroidx/fragment/app/BackStackState;->mFragmentWhos:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 142
    iget p2, p0, Landroidx/fragment/app/BackStackState;->mTransition:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 143
    iget p2, p0, Landroidx/fragment/app/BackStackState;->mTransitionStyle:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 144
    iget-object p2, p0, Landroidx/fragment/app/BackStackState;->mName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 145
    iget p2, p0, Landroidx/fragment/app/BackStackState;->mIndex:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 146
    iget p2, p0, Landroidx/fragment/app/BackStackState;->mBreadCrumbTitleRes:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 147
    iget-object p2, p0, Landroidx/fragment/app/BackStackState;->mBreadCrumbTitleText:Ljava/lang/CharSequence;

    const/4 v0, 0x0

    invoke-static {p2, p1, v0}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    .line 148
    iget p2, p0, Landroidx/fragment/app/BackStackState;->mBreadCrumbShortTitleRes:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 149
    iget-object p2, p0, Landroidx/fragment/app/BackStackState;->mBreadCrumbShortTitleText:Ljava/lang/CharSequence;

    invoke-static {p2, p1, v0}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    .line 150
    iget-object p2, p0, Landroidx/fragment/app/BackStackState;->mSharedElementSourceNames:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 151
    iget-object p2, p0, Landroidx/fragment/app/BackStackState;->mSharedElementTargetNames:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 152
    iget-boolean p2, p0, Landroidx/fragment/app/BackStackState;->mReorderingAllowed:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
