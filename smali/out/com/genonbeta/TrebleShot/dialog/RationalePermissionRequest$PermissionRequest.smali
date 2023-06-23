.class public Lcom/genonbeta/TrebleShot/dialog/RationalePermissionRequest$PermissionRequest;
.super Ljava/lang/Object;
.source "RationalePermissionRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/genonbeta/TrebleShot/dialog/RationalePermissionRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PermissionRequest"
.end annotation


# instance fields
.field public message:Ljava/lang/String;

.field public permission:Ljava/lang/String;

.field public required:Z

.field public title:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;II)V
    .registers 5

    .line 107
    invoke-virtual {p1, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p2, p3, p1}, Lcom/genonbeta/TrebleShot/dialog/RationalePermissionRequest$PermissionRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    const/4 v0, 0x1

    .line 94
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/genonbeta/TrebleShot/dialog/RationalePermissionRequest$PermissionRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 5

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    iput-object p1, p0, Lcom/genonbeta/TrebleShot/dialog/RationalePermissionRequest$PermissionRequest;->permission:Ljava/lang/String;

    .line 100
    iput-object p2, p0, Lcom/genonbeta/TrebleShot/dialog/RationalePermissionRequest$PermissionRequest;->title:Ljava/lang/String;

    .line 101
    iput-object p3, p0, Lcom/genonbeta/TrebleShot/dialog/RationalePermissionRequest$PermissionRequest;->message:Ljava/lang/String;

    .line 102
    iput-boolean p4, p0, Lcom/genonbeta/TrebleShot/dialog/RationalePermissionRequest$PermissionRequest;->required:Z

    return-void
.end method
