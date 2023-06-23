.class public Lcom/genonbeta/android/framework/util/SweetImageLoader;
.super Landroid/os/AsyncTask;
.source "SweetImageLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/genonbeta/android/framework/util/SweetImageLoader$Holder;,
        Lcom/genonbeta/android/framework/util/SweetImageLoader$Handler;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Object:",
        "Ljava/lang/Object;",
        "ImageType:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/os/AsyncTask<",
        "TObject;",
        "Ljava/lang/Void;",
        "TImageType;>;"
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mHandler:Lcom/genonbeta/android/framework/util/SweetImageLoader$Handler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/genonbeta/android/framework/util/SweetImageLoader$Handler<",
            "TObject;TImageType;>;"
        }
    .end annotation
.end field

.field private mImageViewReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field

.field private mObject:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TObject;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/genonbeta/android/framework/util/SweetImageLoader$Handler;Landroid/content/Context;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/genonbeta/android/framework/util/SweetImageLoader$Handler<",
            "TObject;TImageType;>;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .line 27
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/genonbeta/android/framework/util/SweetImageLoader;->mHandler:Lcom/genonbeta/android/framework/util/SweetImageLoader$Handler;

    .line 29
    iput-object p2, p0, Lcom/genonbeta/android/framework/util/SweetImageLoader;->mContext:Landroid/content/Context;

    return-void
.end method

.method public static load(Lcom/genonbeta/android/framework/util/SweetImageLoader$Handler;Landroid/content/Context;Landroid/widget/ImageView;Ljava/lang/Object;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<J:",
            "Ljava/lang/Object;",
            "Y:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/genonbeta/android/framework/util/SweetImageLoader$Handler<",
            "TJ;TY;>;",
            "Landroid/content/Context;",
            "Landroid/widget/ImageView;",
            "TJ;)V"
        }
    .end annotation

    .line 91
    invoke-virtual {p2}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_f

    .line 92
    new-instance v0, Lcom/genonbeta/android/framework/util/SweetImageLoader$Holder;

    invoke-direct {v0, v1}, Lcom/genonbeta/android/framework/util/SweetImageLoader$Holder;-><init>(Lcom/genonbeta/android/framework/util/SweetImageLoader$1;)V

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 94
    :cond_f
    invoke-virtual {p2}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/genonbeta/android/framework/util/SweetImageLoader$Holder;

    .line 96
    invoke-virtual {v0}, Lcom/genonbeta/android/framework/util/SweetImageLoader$Holder;->getObject()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p3, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4c

    .line 97
    invoke-virtual {v0}, Lcom/genonbeta/android/framework/util/SweetImageLoader$Holder;->getSweetImageLoader()Lcom/genonbeta/android/framework/util/SweetImageLoader;

    move-result-object v2

    const/4 v3, 0x1

    if-eqz v2, :cond_2d

    .line 98
    invoke-virtual {v0}, Lcom/genonbeta/android/framework/util/SweetImageLoader$Holder;->getSweetImageLoader()Lcom/genonbeta/android/framework/util/SweetImageLoader;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/genonbeta/android/framework/util/SweetImageLoader;->cancel(Z)Z

    .line 100
    :cond_2d
    invoke-virtual {p2, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 102
    iput-object p3, v0, Lcom/genonbeta/android/framework/util/SweetImageLoader$Holder;->object:Ljava/lang/Object;

    .line 103
    new-instance v1, Lcom/genonbeta/android/framework/util/SweetImageLoader;

    invoke-direct {v1, p0, p1}, Lcom/genonbeta/android/framework/util/SweetImageLoader;-><init>(Lcom/genonbeta/android/framework/util/SweetImageLoader$Handler;Landroid/content/Context;)V

    iput-object v1, v0, Lcom/genonbeta/android/framework/util/SweetImageLoader$Holder;->sweetImageLoader:Lcom/genonbeta/android/framework/util/SweetImageLoader;

    .line 105
    invoke-virtual {v0}, Lcom/genonbeta/android/framework/util/SweetImageLoader$Holder;->getSweetImageLoader()Lcom/genonbeta/android/framework/util/SweetImageLoader;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/genonbeta/android/framework/util/SweetImageLoader;->setImageView(Landroid/widget/ImageView;)V

    .line 106
    invoke-virtual {v0}, Lcom/genonbeta/android/framework/util/SweetImageLoader$Holder;->getSweetImageLoader()Lcom/genonbeta/android/framework/util/SweetImageLoader;

    move-result-object p0

    new-array p1, v3, [Ljava/lang/Object;

    const/4 p2, 0x0

    aput-object p3, p1, p2

    invoke-virtual {p0, p1}, Lcom/genonbeta/android/framework/util/SweetImageLoader;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_4c
    return-void
.end method


# virtual methods
.method protected final varargs doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TObject;)TImageType;"
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    const/4 v0, 0x0

    .line 60
    aget-object p1, p1, v0

    iput-object p1, p0, Lcom/genonbeta/android/framework/util/SweetImageLoader;->mObject:Ljava/lang/Object;

    .line 61
    iget-object p1, p0, Lcom/genonbeta/android/framework/util/SweetImageLoader;->mHandler:Lcom/genonbeta/android/framework/util/SweetImageLoader$Handler;

    invoke-virtual {p0}, Lcom/genonbeta/android/framework/util/SweetImageLoader;->getObject()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/genonbeta/android/framework/util/SweetImageLoader$Handler;->onLoadBitmap(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getContext()Landroid/content/Context;
    .registers 2

    .line 66
    iget-object v0, p0, Lcom/genonbeta/android/framework/util/SweetImageLoader;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getImageViewReference()Ljava/lang/ref/WeakReference;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation

    .line 71
    iget-object v0, p0, Lcom/genonbeta/android/framework/util/SweetImageLoader;->mImageViewReference:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method public getObject()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TObject;"
        }
    .end annotation

    .line 76
    iget-object v0, p0, Lcom/genonbeta/android/framework/util/SweetImageLoader;->mObject:Ljava/lang/Object;

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Object;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TImageType;)V"
        }
    .end annotation

    .line 35
    invoke-virtual {p0}, Lcom/genonbeta/android/framework/util/SweetImageLoader;->getImageViewReference()Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 37
    invoke-virtual {p0}, Lcom/genonbeta/android/framework/util/SweetImageLoader;->isCancelled()Z

    move-result v1

    if-nez v1, :cond_6f

    if-nez v0, :cond_13

    goto :goto_6f

    .line 40
    :cond_13
    invoke-virtual {v0}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/genonbeta/android/framework/util/SweetImageLoader$Holder;

    .line 42
    invoke-virtual {p0}, Lcom/genonbeta/android/framework/util/SweetImageLoader;->getObject()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1}, Lcom/genonbeta/android/framework/util/SweetImageLoader$Holder;->getObject()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6f

    .line 43
    invoke-virtual {p0}, Lcom/genonbeta/android/framework/util/SweetImageLoader;->getContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v2, 0x10a0000

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAnimation(Landroid/view/animation/Animation;)V

    .line 45
    invoke-virtual {p0}, Lcom/genonbeta/android/framework/util/SweetImageLoader;->isCancelled()Z

    move-result v1

    if-nez v1, :cond_6f

    if-eqz p1, :cond_6f

    .line 46
    instance-of v1, p1, Landroid/graphics/Bitmap;

    if-eqz v1, :cond_46

    .line 47
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_6f

    .line 48
    :cond_46
    instance-of v1, p1, Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_50

    .line 49
    check-cast p1, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_6f

    .line 51
    :cond_50
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Class for loading is not supported: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6f
    :goto_6f
    return-void
.end method

.method public setImageView(Landroid/widget/ImageView;)V
    .registers 3

    .line 81
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/genonbeta/android/framework/util/SweetImageLoader;->mImageViewReference:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public setObject(Ljava/lang/Object;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TObject;)V"
        }
    .end annotation

    .line 86
    iput-object p1, p0, Lcom/genonbeta/android/framework/util/SweetImageLoader;->mObject:Ljava/lang/Object;

    return-void
.end method
