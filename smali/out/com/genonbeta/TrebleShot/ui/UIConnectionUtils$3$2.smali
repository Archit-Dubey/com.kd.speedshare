.class Lcom/genonbeta/TrebleShot/ui/UIConnectionUtils$3$2;
.super Ljava/lang/Object;
.source "UIConnectionUtils.java"

# interfaces
.implements Lcom/genonbeta/TrebleShot/util/ConnectionUtils$ConnectionCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/genonbeta/TrebleShot/ui/UIConnectionUtils$3;->onRun()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/genonbeta/TrebleShot/ui/UIConnectionUtils$3;


# direct methods
.method constructor <init>(Lcom/genonbeta/TrebleShot/ui/UIConnectionUtils$3;)V
    .registers 2

    .line 136
    iput-object p1, p0, Lcom/genonbeta/TrebleShot/ui/UIConnectionUtils$3$2;->this$1:Lcom/genonbeta/TrebleShot/ui/UIConnectionUtils$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTimePassed(IJ)Z
    .registers 6

    const-wide/16 v0, 0x7530

    cmp-long p1, p2, v0

    if-ltz p1, :cond_8

    const/4 p1, 0x1

    goto :goto_9

    :cond_8
    const/4 p1, 0x0

    :goto_9
    return p1
.end method
