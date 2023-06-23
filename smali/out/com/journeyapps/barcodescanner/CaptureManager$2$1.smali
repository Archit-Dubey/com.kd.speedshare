.class Lcom/journeyapps/barcodescanner/CaptureManager$2$1;
.super Ljava/lang/Object;
.source "CaptureManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/journeyapps/barcodescanner/CaptureManager$2;->barcodeResult(Lcom/journeyapps/barcodescanner/BarcodeResult;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/journeyapps/barcodescanner/CaptureManager$2;

.field final synthetic val$result:Lcom/journeyapps/barcodescanner/BarcodeResult;


# direct methods
.method constructor <init>(Lcom/journeyapps/barcodescanner/CaptureManager$2;Lcom/journeyapps/barcodescanner/BarcodeResult;)V
    .registers 3

    .line 115
    iput-object p1, p0, Lcom/journeyapps/barcodescanner/CaptureManager$2$1;->this$1:Lcom/journeyapps/barcodescanner/CaptureManager$2;

    iput-object p2, p0, Lcom/journeyapps/barcodescanner/CaptureManager$2$1;->val$result:Lcom/journeyapps/barcodescanner/BarcodeResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 119
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/CaptureManager$2$1;->this$1:Lcom/journeyapps/barcodescanner/CaptureManager$2;

    iget-object v0, v0, Lcom/journeyapps/barcodescanner/CaptureManager$2;->this$0:Lcom/journeyapps/barcodescanner/CaptureManager;

    iget-object v1, p0, Lcom/journeyapps/barcodescanner/CaptureManager$2$1;->val$result:Lcom/journeyapps/barcodescanner/BarcodeResult;

    invoke-virtual {v0, v1}, Lcom/journeyapps/barcodescanner/CaptureManager;->returnResult(Lcom/journeyapps/barcodescanner/BarcodeResult;)V

    return-void
.end method
