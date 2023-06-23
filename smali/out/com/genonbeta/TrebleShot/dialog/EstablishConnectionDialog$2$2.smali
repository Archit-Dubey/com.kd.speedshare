.class Lcom/genonbeta/TrebleShot/dialog/EstablishConnectionDialog$2$2;
.super Ljava/lang/Object;
.source "EstablishConnectionDialog.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/genonbeta/TrebleShot/dialog/EstablishConnectionDialog$2;->onRun()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/genonbeta/TrebleShot/dialog/EstablishConnectionDialog$ConnectionResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/genonbeta/TrebleShot/dialog/EstablishConnectionDialog$2;


# direct methods
.method constructor <init>(Lcom/genonbeta/TrebleShot/dialog/EstablishConnectionDialog$2;)V
    .registers 2

    .line 126
    iput-object p1, p0, Lcom/genonbeta/TrebleShot/dialog/EstablishConnectionDialog$2$2;->this$1:Lcom/genonbeta/TrebleShot/dialog/EstablishConnectionDialog$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/genonbeta/TrebleShot/dialog/EstablishConnectionDialog$ConnectionResult;Lcom/genonbeta/TrebleShot/dialog/EstablishConnectionDialog$ConnectionResult;)I
    .registers 5

    .line 130
    iget v0, p1, Lcom/genonbeta/TrebleShot/dialog/EstablishConnectionDialog$ConnectionResult;->pingTime:I

    if-ltz v0, :cond_14

    iget v0, p2, Lcom/genonbeta/TrebleShot/dialog/EstablishConnectionDialog$ConnectionResult;->pingTime:I

    if-gez v0, :cond_9

    goto :goto_14

    .line 133
    :cond_9
    iget p2, p2, Lcom/genonbeta/TrebleShot/dialog/EstablishConnectionDialog$ConnectionResult;->pingTime:I

    int-to-long v0, p2

    iget p1, p1, Lcom/genonbeta/TrebleShot/dialog/EstablishConnectionDialog$ConnectionResult;->pingTime:I

    int-to-long p1, p1

    invoke-static {v0, v1, p1, p2}, Lcom/genonbeta/android/framework/util/MathUtils;->compare(JJ)I

    move-result p1

    return p1

    .line 131
    :cond_14
    :goto_14
    iget p1, p1, Lcom/genonbeta/TrebleShot/dialog/EstablishConnectionDialog$ConnectionResult;->pingTime:I

    int-to-long v0, p1

    iget p1, p2, Lcom/genonbeta/TrebleShot/dialog/EstablishConnectionDialog$ConnectionResult;->pingTime:I

    int-to-long p1, p1

    invoke-static {v0, v1, p1, p2}, Lcom/genonbeta/android/framework/util/MathUtils;->compare(JJ)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3

    .line 126
    check-cast p1, Lcom/genonbeta/TrebleShot/dialog/EstablishConnectionDialog$ConnectionResult;

    check-cast p2, Lcom/genonbeta/TrebleShot/dialog/EstablishConnectionDialog$ConnectionResult;

    invoke-virtual {p0, p1, p2}, Lcom/genonbeta/TrebleShot/dialog/EstablishConnectionDialog$2$2;->compare(Lcom/genonbeta/TrebleShot/dialog/EstablishConnectionDialog$ConnectionResult;Lcom/genonbeta/TrebleShot/dialog/EstablishConnectionDialog$ConnectionResult;)I

    move-result p1

    return p1
.end method
