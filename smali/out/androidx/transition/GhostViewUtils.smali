.class Landroidx/transition/GhostViewUtils;
.super Ljava/lang/Object;
.source "GhostViewUtils.java"


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static addGhost(Landroid/view/View;Landroid/view/ViewGroup;Landroid/graphics/Matrix;)Landroidx/transition/GhostViewImpl;
    .registers 5

    .line 27
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_b

    .line 28
    invoke-static {p0, p1, p2}, Landroidx/transition/GhostViewApi21;->addGhost(Landroid/view/View;Landroid/view/ViewGroup;Landroid/graphics/Matrix;)Landroidx/transition/GhostViewImpl;

    move-result-object p0

    return-object p0

    .line 30
    :cond_b
    invoke-static {p0, p1}, Landroidx/transition/GhostViewApi14;->addGhost(Landroid/view/View;Landroid/view/ViewGroup;)Landroidx/transition/GhostViewImpl;

    move-result-object p0

    return-object p0
.end method

.method static removeGhost(Landroid/view/View;)V
    .registers 3

    .line 34
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_a

    .line 35
    invoke-static {p0}, Landroidx/transition/GhostViewApi21;->removeGhost(Landroid/view/View;)V

    goto :goto_d

    .line 37
    :cond_a
    invoke-static {p0}, Landroidx/transition/GhostViewApi14;->removeGhost(Landroid/view/View;)V

    :goto_d
    return-void
.end method
