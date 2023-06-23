.class Lcom/journeyapps/barcodescanner/camera/LegacyPreviewScalingStrategy$1;
.super Ljava/lang/Object;
.source "LegacyPreviewScalingStrategy.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/journeyapps/barcodescanner/camera/LegacyPreviewScalingStrategy;->getBestPreviewSize(Ljava/util/List;Lcom/journeyapps/barcodescanner/Size;)Lcom/journeyapps/barcodescanner/Size;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/journeyapps/barcodescanner/Size;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/journeyapps/barcodescanner/camera/LegacyPreviewScalingStrategy;

.field final synthetic val$desired:Lcom/journeyapps/barcodescanner/Size;


# direct methods
.method constructor <init>(Lcom/journeyapps/barcodescanner/camera/LegacyPreviewScalingStrategy;Lcom/journeyapps/barcodescanner/Size;)V
    .registers 3

    .line 101
    iput-object p1, p0, Lcom/journeyapps/barcodescanner/camera/LegacyPreviewScalingStrategy$1;->this$0:Lcom/journeyapps/barcodescanner/camera/LegacyPreviewScalingStrategy;

    iput-object p2, p0, Lcom/journeyapps/barcodescanner/camera/LegacyPreviewScalingStrategy$1;->val$desired:Lcom/journeyapps/barcodescanner/Size;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/journeyapps/barcodescanner/Size;Lcom/journeyapps/barcodescanner/Size;)I
    .registers 7

    .line 105
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/camera/LegacyPreviewScalingStrategy$1;->val$desired:Lcom/journeyapps/barcodescanner/Size;

    invoke-static {p1, v0}, Lcom/journeyapps/barcodescanner/camera/LegacyPreviewScalingStrategy;->scale(Lcom/journeyapps/barcodescanner/Size;Lcom/journeyapps/barcodescanner/Size;)Lcom/journeyapps/barcodescanner/Size;

    move-result-object v0

    .line 106
    iget v0, v0, Lcom/journeyapps/barcodescanner/Size;->width:I

    iget v1, p1, Lcom/journeyapps/barcodescanner/Size;->width:I

    sub-int/2addr v0, v1

    .line 107
    iget-object v1, p0, Lcom/journeyapps/barcodescanner/camera/LegacyPreviewScalingStrategy$1;->val$desired:Lcom/journeyapps/barcodescanner/Size;

    invoke-static {p2, v1}, Lcom/journeyapps/barcodescanner/camera/LegacyPreviewScalingStrategy;->scale(Lcom/journeyapps/barcodescanner/Size;Lcom/journeyapps/barcodescanner/Size;)Lcom/journeyapps/barcodescanner/Size;

    move-result-object v1

    .line 108
    iget v1, v1, Lcom/journeyapps/barcodescanner/Size;->width:I

    iget v2, p2, Lcom/journeyapps/barcodescanner/Size;->width:I

    sub-int/2addr v1, v2

    if-nez v0, :cond_1f

    if-nez v1, :cond_1f

    .line 112
    invoke-virtual {p1, p2}, Lcom/journeyapps/barcodescanner/Size;->compareTo(Lcom/journeyapps/barcodescanner/Size;)I

    move-result p1

    return p1

    :cond_1f
    const/4 v2, -0x1

    if-nez v0, :cond_23

    return v2

    :cond_23
    const/4 v3, 0x1

    if-nez v1, :cond_27

    return v3

    :cond_27
    if-gez v0, :cond_30

    if-gez v1, :cond_30

    .line 121
    invoke-virtual {p1, p2}, Lcom/journeyapps/barcodescanner/Size;->compareTo(Lcom/journeyapps/barcodescanner/Size;)I

    move-result p1

    return p1

    :cond_30
    if-lez v0, :cond_3a

    if-lez v1, :cond_3a

    .line 124
    invoke-virtual {p1, p2}, Lcom/journeyapps/barcodescanner/Size;->compareTo(Lcom/journeyapps/barcodescanner/Size;)I

    move-result p1

    neg-int p1, p1

    return p1

    :cond_3a
    if-gez v0, :cond_3d

    return v2

    :cond_3d
    return v3
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3

    .line 101
    check-cast p1, Lcom/journeyapps/barcodescanner/Size;

    check-cast p2, Lcom/journeyapps/barcodescanner/Size;

    invoke-virtual {p0, p1, p2}, Lcom/journeyapps/barcodescanner/camera/LegacyPreviewScalingStrategy$1;->compare(Lcom/journeyapps/barcodescanner/Size;Lcom/journeyapps/barcodescanner/Size;)I

    move-result p1

    return p1
.end method
