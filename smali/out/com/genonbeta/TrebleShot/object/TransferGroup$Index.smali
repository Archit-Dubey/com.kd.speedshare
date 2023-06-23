.class public Lcom/genonbeta/TrebleShot/object/TransferGroup$Index;
.super Ljava/lang/Object;
.source "TransferGroup.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/genonbeta/TrebleShot/object/TransferGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Index"
.end annotation


# instance fields
.field public assignees:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/genonbeta/TrebleShot/object/ShowingAssignee;",
            ">;"
        }
    .end annotation
.end field

.field public calculated:Z

.field public hasIssues:Z

.field public incoming:J

.field public incomingCompleted:J

.field public incomingCount:I

.field public incomingCountCompleted:I

.field public outgoing:J

.field public outgoingCompleted:J

.field public outgoingCount:I

.field public outgoingCountCompleted:I


# direct methods
.method public constructor <init>()V
    .registers 4

    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 126
    iput-boolean v0, p0, Lcom/genonbeta/TrebleShot/object/TransferGroup$Index;->calculated:Z

    .line 127
    iput-boolean v0, p0, Lcom/genonbeta/TrebleShot/object/TransferGroup$Index;->hasIssues:Z

    const-wide/16 v1, 0x0

    .line 128
    iput-wide v1, p0, Lcom/genonbeta/TrebleShot/object/TransferGroup$Index;->incoming:J

    .line 129
    iput-wide v1, p0, Lcom/genonbeta/TrebleShot/object/TransferGroup$Index;->incomingCompleted:J

    .line 130
    iput-wide v1, p0, Lcom/genonbeta/TrebleShot/object/TransferGroup$Index;->outgoing:J

    .line 131
    iput-wide v1, p0, Lcom/genonbeta/TrebleShot/object/TransferGroup$Index;->outgoingCompleted:J

    .line 132
    iput v0, p0, Lcom/genonbeta/TrebleShot/object/TransferGroup$Index;->incomingCount:I

    .line 133
    iput v0, p0, Lcom/genonbeta/TrebleShot/object/TransferGroup$Index;->outgoingCount:I

    .line 136
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/genonbeta/TrebleShot/object/TransferGroup$Index;->assignees:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public reset()V
    .registers 4

    const/4 v0, 0x0

    .line 140
    iput-boolean v0, p0, Lcom/genonbeta/TrebleShot/object/TransferGroup$Index;->calculated:Z

    .line 141
    iput-boolean v0, p0, Lcom/genonbeta/TrebleShot/object/TransferGroup$Index;->hasIssues:Z

    const-wide/16 v1, 0x0

    .line 143
    iput-wide v1, p0, Lcom/genonbeta/TrebleShot/object/TransferGroup$Index;->incoming:J

    .line 144
    iput-wide v1, p0, Lcom/genonbeta/TrebleShot/object/TransferGroup$Index;->outgoing:J

    .line 145
    iput v0, p0, Lcom/genonbeta/TrebleShot/object/TransferGroup$Index;->incomingCount:I

    .line 146
    iput v0, p0, Lcom/genonbeta/TrebleShot/object/TransferGroup$Index;->outgoingCount:I

    .line 147
    iget-object v0, p0, Lcom/genonbeta/TrebleShot/object/TransferGroup$Index;->assignees:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method
