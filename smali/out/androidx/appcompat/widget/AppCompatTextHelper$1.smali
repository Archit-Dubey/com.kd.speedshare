.class Landroidx/appcompat/widget/AppCompatTextHelper$1;
.super Landroidx/core/content/res/ResourcesCompat$FontCallback;
.source "AppCompatTextHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/appcompat/widget/AppCompatTextHelper;->updateTypefaceAndStyle(Landroid/content/Context;Landroidx/appcompat/widget/TintTypedArray;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/appcompat/widget/AppCompatTextHelper;

.field final synthetic val$textViewWeak:Ljava/lang/ref/WeakReference;


# direct methods
.method constructor <init>(Landroidx/appcompat/widget/AppCompatTextHelper;Ljava/lang/ref/WeakReference;)V
    .registers 3

    .line 322
    iput-object p1, p0, Landroidx/appcompat/widget/AppCompatTextHelper$1;->this$0:Landroidx/appcompat/widget/AppCompatTextHelper;

    iput-object p2, p0, Landroidx/appcompat/widget/AppCompatTextHelper$1;->val$textViewWeak:Ljava/lang/ref/WeakReference;

    invoke-direct {p0}, Landroidx/core/content/res/ResourcesCompat$FontCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onFontRetrievalFailed(I)V
    .registers 2

    return-void
.end method

.method public onFontRetrieved(Landroid/graphics/Typeface;)V
    .registers 4

    .line 325
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatTextHelper$1;->this$0:Landroidx/appcompat/widget/AppCompatTextHelper;

    iget-object v1, p0, Landroidx/appcompat/widget/AppCompatTextHelper$1;->val$textViewWeak:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0, v1, p1}, Landroidx/appcompat/widget/AppCompatTextHelper;->onAsyncTypefaceReceived(Ljava/lang/ref/WeakReference;Landroid/graphics/Typeface;)V

    return-void
.end method
