.class public Lcom/genonbeta/android/framework/util/listing/merger/StringMerger;
.super Lcom/genonbeta/android/framework/util/listing/ComparableMerger;
.source "StringMerger.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/genonbeta/android/framework/util/listing/ComparableMerger<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private mString:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    .line 16
    invoke-direct {p0}, Lcom/genonbeta/android/framework/util/listing/ComparableMerger;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/genonbeta/android/framework/util/listing/merger/StringMerger;->mString:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public compareTo(Lcom/genonbeta/android/framework/util/listing/ComparableMerger;)I
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/genonbeta/android/framework/util/listing/ComparableMerger<",
            "TT;>;)I"
        }
    .end annotation

    .line 34
    instance-of v0, p1, Lcom/genonbeta/android/framework/util/listing/merger/StringMerger;

    if-nez v0, :cond_6

    const/4 p1, -0x1

    return p1

    .line 37
    :cond_6
    check-cast p1, Lcom/genonbeta/android/framework/util/listing/merger/StringMerger;

    invoke-virtual {p1}, Lcom/genonbeta/android/framework/util/listing/merger/StringMerger;->getString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/genonbeta/android/framework/util/listing/merger/StringMerger;->getString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 2

    .line 11
    check-cast p1, Lcom/genonbeta/android/framework/util/listing/ComparableMerger;

    invoke-virtual {p0, p1}, Lcom/genonbeta/android/framework/util/listing/merger/StringMerger;->compareTo(Lcom/genonbeta/android/framework/util/listing/ComparableMerger;)I

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 3

    .line 23
    iget-object v0, p0, Lcom/genonbeta/android/framework/util/listing/merger/StringMerger;->mString:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public getString()Ljava/lang/String;
    .registers 2

    .line 28
    iget-object v0, p0, Lcom/genonbeta/android/framework/util/listing/merger/StringMerger;->mString:Ljava/lang/String;

    return-object v0
.end method
