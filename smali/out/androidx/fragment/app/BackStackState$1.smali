.class final Landroidx/fragment/app/BackStackState$1;
.super Ljava/lang/Object;
.source "BackStackState.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/fragment/app/BackStackState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroidx/fragment/app/BackStackState;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 156
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroidx/fragment/app/BackStackState;
    .registers 3

    .line 159
    new-instance v0, Landroidx/fragment/app/BackStackState;

    invoke-direct {v0, p1}, Landroidx/fragment/app/BackStackState;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    .line 156
    invoke-virtual {p0, p1}, Landroidx/fragment/app/BackStackState$1;->createFromParcel(Landroid/os/Parcel;)Landroidx/fragment/app/BackStackState;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Landroidx/fragment/app/BackStackState;
    .registers 2

    .line 164
    new-array p1, p1, [Landroidx/fragment/app/BackStackState;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    .line 156
    invoke-virtual {p0, p1}, Landroidx/fragment/app/BackStackState$1;->newArray(I)[Landroidx/fragment/app/BackStackState;

    move-result-object p1

    return-object p1
.end method
