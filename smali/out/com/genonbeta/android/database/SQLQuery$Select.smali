.class public Lcom/genonbeta/android/database/SQLQuery$Select;
.super Ljava/lang/Object;
.source "SQLQuery.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/genonbeta/android/database/SQLQuery;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Select"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/genonbeta/android/database/SQLQuery$Select$LoadListener;
    }
.end annotation


# instance fields
.field public columns:[Ljava/lang/String;

.field public groupBy:Ljava/lang/String;

.field public having:Ljava/lang/String;

.field public limit:Ljava/lang/String;

.field public loadListener:Lcom/genonbeta/android/database/SQLQuery$Select$LoadListener;

.field private mItems:Lcom/genonbeta/android/database/CursorItem;

.field public orderBy:Ljava/lang/String;

.field public tableName:Ljava/lang/String;

.field public tag:Ljava/lang/String;

.field public where:Ljava/lang/String;

.field public whereArgs:[Ljava/lang/String;


# direct methods
.method public varargs constructor <init>(Ljava/lang/String;[Ljava/lang/String;)V
    .registers 4

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    new-instance v0, Lcom/genonbeta/android/database/CursorItem;

    invoke-direct {v0}, Lcom/genonbeta/android/database/CursorItem;-><init>()V

    iput-object v0, p0, Lcom/genonbeta/android/database/SQLQuery$Select;->mItems:Lcom/genonbeta/android/database/CursorItem;

    .line 68
    iput-object p1, p0, Lcom/genonbeta/android/database/SQLQuery$Select;->tableName:Ljava/lang/String;

    .line 69
    iput-object p2, p0, Lcom/genonbeta/android/database/SQLQuery$Select;->columns:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getItems()Lcom/genonbeta/android/database/CursorItem;
    .registers 2

    .line 74
    iget-object v0, p0, Lcom/genonbeta/android/database/SQLQuery$Select;->mItems:Lcom/genonbeta/android/database/CursorItem;

    return-object v0
.end method

.method public setGroupBy(Ljava/lang/String;)Lcom/genonbeta/android/database/SQLQuery$Select;
    .registers 2

    .line 91
    iput-object p1, p0, Lcom/genonbeta/android/database/SQLQuery$Select;->groupBy:Ljava/lang/String;

    return-object p0
.end method

.method public setHaving(Ljava/lang/String;)Lcom/genonbeta/android/database/SQLQuery$Select;
    .registers 2

    .line 79
    iput-object p1, p0, Lcom/genonbeta/android/database/SQLQuery$Select;->having:Ljava/lang/String;

    return-object p0
.end method

.method public setLimit(I)Lcom/genonbeta/android/database/SQLQuery$Select;
    .registers 2

    .line 97
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/genonbeta/android/database/SQLQuery$Select;->setLimit(Ljava/lang/String;)Lcom/genonbeta/android/database/SQLQuery$Select;

    move-result-object p1

    return-object p1
.end method

.method public setLimit(Ljava/lang/String;)Lcom/genonbeta/android/database/SQLQuery$Select;
    .registers 2

    .line 102
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/genonbeta/android/database/SQLQuery$Select;->limit:Ljava/lang/String;

    return-object p0
.end method

.method public setLoadListener(Lcom/genonbeta/android/database/SQLQuery$Select$LoadListener;)Lcom/genonbeta/android/database/SQLQuery$Select;
    .registers 2

    .line 108
    iput-object p1, p0, Lcom/genonbeta/android/database/SQLQuery$Select;->loadListener:Lcom/genonbeta/android/database/SQLQuery$Select$LoadListener;

    return-object p0
.end method

.method public setOrderBy(Ljava/lang/String;)Lcom/genonbeta/android/database/SQLQuery$Select;
    .registers 2

    .line 85
    iput-object p1, p0, Lcom/genonbeta/android/database/SQLQuery$Select;->orderBy:Ljava/lang/String;

    return-object p0
.end method

.method public setTag(Ljava/lang/String;)Lcom/genonbeta/android/database/SQLQuery$Select;
    .registers 2

    .line 114
    iput-object p1, p0, Lcom/genonbeta/android/database/SQLQuery$Select;->tag:Ljava/lang/String;

    return-object p0
.end method

.method public varargs setWhere(Ljava/lang/String;[Ljava/lang/String;)Lcom/genonbeta/android/database/SQLQuery$Select;
    .registers 3

    .line 120
    iput-object p1, p0, Lcom/genonbeta/android/database/SQLQuery$Select;->where:Ljava/lang/String;

    .line 121
    iput-object p2, p0, Lcom/genonbeta/android/database/SQLQuery$Select;->whereArgs:[Ljava/lang/String;

    return-object p0
.end method
