.class public Lcom/genonbeta/android/database/SQLValues;
.super Ljava/lang/Object;
.source "SQLValues.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/genonbeta/android/database/SQLValues$Table;,
        Lcom/genonbeta/android/database/SQLValues$Column;
    }
.end annotation


# instance fields
.field private mIndex:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/genonbeta/android/database/SQLValues$Table;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/genonbeta/android/database/SQLValues;->mIndex:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public defineTable(Ljava/lang/String;)Lcom/genonbeta/android/database/SQLValues$Table;
    .registers 4

    .line 16
    new-instance v0, Lcom/genonbeta/android/database/SQLValues$Table;

    invoke-direct {v0, p1}, Lcom/genonbeta/android/database/SQLValues$Table;-><init>(Ljava/lang/String;)V

    .line 17
    invoke-virtual {p0}, Lcom/genonbeta/android/database/SQLValues;->getTables()Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public defineTable(Ljava/lang/String;Z)Lcom/genonbeta/android/database/SQLValues$Table;
    .registers 4

    .line 24
    new-instance v0, Lcom/genonbeta/android/database/SQLValues$Table;

    invoke-direct {v0, p1, p2}, Lcom/genonbeta/android/database/SQLValues$Table;-><init>(Ljava/lang/String;Z)V

    .line 25
    invoke-virtual {p0}, Lcom/genonbeta/android/database/SQLValues;->getTables()Ljava/util/HashMap;

    move-result-object p2

    invoke-virtual {p2, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public getTables()Ljava/util/HashMap;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/genonbeta/android/database/SQLValues$Table;",
            ">;"
        }
    .end annotation

    .line 32
    iget-object v0, p0, Lcom/genonbeta/android/database/SQLValues;->mIndex:Ljava/util/HashMap;

    return-object v0
.end method
