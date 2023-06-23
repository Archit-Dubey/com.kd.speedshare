.class public Lcom/genonbeta/android/database/SQLValues$Table;
.super Ljava/lang/Object;
.source "SQLValues.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/genonbeta/android/database/SQLValues;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Table"
.end annotation


# instance fields
.field private mColumns:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/genonbeta/android/database/SQLValues$Column;",
            ">;"
        }
    .end annotation
.end field

.field private mMayExist:Z

.field private mName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    .line 130
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 126
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/genonbeta/android/database/SQLValues$Table;->mColumns:Ljava/util/HashMap;

    .line 131
    invoke-virtual {p0, p1}, Lcom/genonbeta/android/database/SQLValues$Table;->setName(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .registers 3

    .line 135
    invoke-direct {p0, p1}, Lcom/genonbeta/android/database/SQLValues$Table;-><init>(Ljava/lang/String;)V

    .line 136
    iput-boolean p2, p0, Lcom/genonbeta/android/database/SQLValues$Table;->mMayExist:Z

    return-void
.end method


# virtual methods
.method public columnExist(Ljava/lang/String;)Z
    .registers 3

    .line 141
    iget-object v0, p0, Lcom/genonbeta/android/database/SQLValues$Table;->mColumns:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public define(Lcom/genonbeta/android/database/SQLValues$Column;)Lcom/genonbeta/android/database/SQLValues$Table;
    .registers 4

    .line 146
    invoke-virtual {p0}, Lcom/genonbeta/android/database/SQLValues$Table;->getColumns()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {p1}, Lcom/genonbeta/android/database/SQLValues$Column;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public getColumn(Ljava/lang/String;)Lcom/genonbeta/android/database/SQLValues$Column;
    .registers 3

    .line 152
    invoke-virtual {p0}, Lcom/genonbeta/android/database/SQLValues$Table;->getColumns()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/genonbeta/android/database/SQLValues$Column;

    return-object p1
.end method

.method public getColumns()Ljava/util/HashMap;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/genonbeta/android/database/SQLValues$Column;",
            ">;"
        }
    .end annotation

    .line 157
    iget-object v0, p0, Lcom/genonbeta/android/database/SQLValues$Table;->mColumns:Ljava/util/HashMap;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .line 162
    iget-object v0, p0, Lcom/genonbeta/android/database/SQLValues$Table;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public mayExist()Z
    .registers 2

    .line 167
    iget-boolean v0, p0, Lcom/genonbeta/android/database/SQLValues$Table;->mMayExist:Z

    return v0
.end method

.method public setName(Ljava/lang/String;)V
    .registers 2

    .line 172
    iput-object p1, p0, Lcom/genonbeta/android/database/SQLValues$Table;->mName:Ljava/lang/String;

    return-void
.end method
