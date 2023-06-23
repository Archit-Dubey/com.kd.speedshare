.class Lcom/google/zxing/client/android/BeepManager$1;
.super Ljava/lang/Object;
.source "BeepManager.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/zxing/client/android/BeepManager;->playBeepSound()Landroid/media/MediaPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/zxing/client/android/BeepManager;


# direct methods
.method constructor <init>(Lcom/google/zxing/client/android/BeepManager;)V
    .registers 2

    .line 108
    iput-object p1, p0, Lcom/google/zxing/client/android/BeepManager$1;->this$0:Lcom/google/zxing/client/android/BeepManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .registers 2

    .line 112
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->stop()V

    .line 113
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->release()V

    return-void
.end method
