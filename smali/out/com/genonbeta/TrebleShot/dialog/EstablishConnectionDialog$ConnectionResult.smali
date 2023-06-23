.class public Lcom/genonbeta/TrebleShot/dialog/EstablishConnectionDialog$ConnectionResult;
.super Ljava/lang/Object;
.source "EstablishConnectionDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/genonbeta/TrebleShot/dialog/EstablishConnectionDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ConnectionResult"
.end annotation


# instance fields
.field public connection:Lcom/genonbeta/TrebleShot/object/NetworkDevice$Connection;

.field public pingTime:I


# direct methods
.method public constructor <init>(Lcom/genonbeta/TrebleShot/object/NetworkDevice$Connection;)V
    .registers 3

    .line 198
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 195
    iput v0, p0, Lcom/genonbeta/TrebleShot/dialog/EstablishConnectionDialog$ConnectionResult;->pingTime:I

    .line 199
    iput-object p1, p0, Lcom/genonbeta/TrebleShot/dialog/EstablishConnectionDialog$ConnectionResult;->connection:Lcom/genonbeta/TrebleShot/object/NetworkDevice$Connection;

    return-void
.end method
