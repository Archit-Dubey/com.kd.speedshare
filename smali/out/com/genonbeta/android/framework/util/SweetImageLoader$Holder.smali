.class Lcom/genonbeta/android/framework/util/SweetImageLoader$Holder;
.super Ljava/lang/Object;
.source "SweetImageLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/genonbeta/android/framework/util/SweetImageLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Holder"
.end annotation


# instance fields
.field public object:Ljava/lang/Object;

.field public sweetImageLoader:Lcom/genonbeta/android/framework/util/SweetImageLoader;


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/genonbeta/android/framework/util/SweetImageLoader$1;)V
    .registers 2

    .line 115
    invoke-direct {p0}, Lcom/genonbeta/android/framework/util/SweetImageLoader$Holder;-><init>()V

    return-void
.end method


# virtual methods
.method public getObject()Ljava/lang/Object;
    .registers 2

    .line 122
    iget-object v0, p0, Lcom/genonbeta/android/framework/util/SweetImageLoader$Holder;->object:Ljava/lang/Object;

    return-object v0
.end method

.method public getSweetImageLoader()Lcom/genonbeta/android/framework/util/SweetImageLoader;
    .registers 2

    .line 127
    iget-object v0, p0, Lcom/genonbeta/android/framework/util/SweetImageLoader$Holder;->sweetImageLoader:Lcom/genonbeta/android/framework/util/SweetImageLoader;

    return-object v0
.end method
