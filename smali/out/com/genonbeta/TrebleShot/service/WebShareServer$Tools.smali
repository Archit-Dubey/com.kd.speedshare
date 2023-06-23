.class public Lcom/genonbeta/TrebleShot/service/WebShareServer$Tools;
.super Ljava/lang/Object;
.source "WebShareServer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/genonbeta/TrebleShot/service/WebShareServer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Tools"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 839
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static escapeHtml(Ljava/lang/CharSequence;)Ljava/lang/String;
    .registers 4

    .line 843
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 844
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    const/4 v2, 0x0

    invoke-static {v0, p0, v2, v1}, Lcom/genonbeta/TrebleShot/service/WebShareServer$Tools;->withinStyle(Ljava/lang/StringBuilder;Ljava/lang/CharSequence;II)V

    .line 845
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static withinStyle(Ljava/lang/StringBuilder;Ljava/lang/CharSequence;II)V
    .registers 12

    :goto_0
    if-ge p2, p3, :cond_89

    .line 852
    invoke-interface {p1, p2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    const/16 v1, 0x3c

    if-ne v0, v1, :cond_11

    const-string v0, "&lt;"

    .line 855
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_85

    :cond_11
    const/16 v1, 0x3e

    if-ne v0, v1, :cond_1c

    const-string v0, "&gt;"

    .line 857
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_85

    :cond_1c
    const/16 v1, 0x26

    if-ne v0, v1, :cond_26

    const-string v0, "&amp;"

    .line 859
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_85

    :cond_26
    const-string v1, ";"

    const-string v2, "&#"

    const v3, 0xd800

    if-lt v0, v3, :cond_58

    const v4, 0xdfff

    if-gt v0, v4, :cond_58

    const v5, 0xdc00

    if-ge v0, v5, :cond_85

    add-int/lit8 v6, p2, 0x1

    if-ge v6, p3, :cond_85

    .line 862
    invoke-interface {p1, v6}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v7

    if-lt v7, v5, :cond_85

    if-gt v7, v4, :cond_85

    const/high16 p2, 0x10000

    sub-int/2addr v0, v3

    shl-int/lit8 v0, v0, 0xa

    or-int/2addr p2, v0

    sub-int/2addr v7, v5

    or-int/2addr p2, v7

    .line 866
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move p2, v6

    goto :goto_85

    :cond_58
    const/16 v3, 0x7e

    if-gt v0, v3, :cond_7c

    const/16 v3, 0x20

    if-ge v0, v3, :cond_61

    goto :goto_7c

    :cond_61
    if-ne v0, v3, :cond_78

    :goto_63
    add-int/lit8 v0, p2, 0x1

    if-ge v0, p3, :cond_74

    .line 872
    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    if-ne v1, v3, :cond_74

    const-string p2, "&nbsp;"

    .line 873
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move p2, v0

    goto :goto_63

    .line 877
    :cond_74
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_85

    .line 879
    :cond_78
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_85

    .line 870
    :cond_7c
    :goto_7c
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_85
    :goto_85
    add-int/lit8 p2, p2, 0x1

    goto/16 :goto_0

    :cond_89
    return-void
.end method
