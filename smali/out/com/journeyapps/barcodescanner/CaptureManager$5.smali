.class Lcom/journeyapps/barcodescanner/CaptureManager$5;
.super Ljava/lang/Object;
.source "CaptureManager.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/journeyapps/barcodescanner/CaptureManager;->displayFrameworkBugMessageAndExit()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/journeyapps/barcodescanner/CaptureManager;


# direct methods
.method constructor <init>(Lcom/journeyapps/barcodescanner/CaptureManager;)V
    .registers 2

    .line 449
    iput-object p1, p0, Lcom/journeyapps/barcodescanner/CaptureManager$5;->this$0:Lcom/journeyapps/barcodescanner/CaptureManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 3

    .line 453
    iget-object p1, p0, Lcom/journeyapps/barcodescanner/CaptureManager$5;->this$0:Lcom/journeyapps/barcodescanner/CaptureManager;

    invoke-static {p1}, Lcom/journeyapps/barcodescanner/CaptureManager;->access$200(Lcom/journeyapps/barcodescanner/CaptureManager;)V

    return-void
.end method
