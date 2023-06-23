.class Lcom/anjlab/android/iab/v3/BillingProcessor$1;
.super Ljava/lang/Object;
.source "BillingProcessor.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/anjlab/android/iab/v3/BillingProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/anjlab/android/iab/v3/BillingProcessor;


# direct methods
.method constructor <init>(Lcom/anjlab/android/iab/v3/BillingProcessor;)V
    .registers 2

    .line 127
    iput-object p1, p0, Lcom/anjlab/android/iab/v3/BillingProcessor$1;->this$0:Lcom/anjlab/android/iab/v3/BillingProcessor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 4

    .line 137
    iget-object p1, p0, Lcom/anjlab/android/iab/v3/BillingProcessor$1;->this$0:Lcom/anjlab/android/iab/v3/BillingProcessor;

    invoke-static {p2}, Lcom/android/vending/billing/IInAppBillingService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/vending/billing/IInAppBillingService;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/anjlab/android/iab/v3/BillingProcessor;->access$302(Lcom/anjlab/android/iab/v3/BillingProcessor;Lcom/android/vending/billing/IInAppBillingService;)Lcom/android/vending/billing/IInAppBillingService;

    .line 138
    new-instance p1, Lcom/anjlab/android/iab/v3/BillingProcessor$HistoryInitializationTask;

    iget-object p2, p0, Lcom/anjlab/android/iab/v3/BillingProcessor$1;->this$0:Lcom/anjlab/android/iab/v3/BillingProcessor;

    const/4 v0, 0x0

    invoke-direct {p1, p2, v0}, Lcom/anjlab/android/iab/v3/BillingProcessor$HistoryInitializationTask;-><init>(Lcom/anjlab/android/iab/v3/BillingProcessor;Lcom/anjlab/android/iab/v3/BillingProcessor$1;)V

    const/4 p2, 0x0

    new-array p2, p2, [Ljava/lang/Void;

    invoke-virtual {p1, p2}, Lcom/anjlab/android/iab/v3/BillingProcessor$HistoryInitializationTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 3

    .line 131
    iget-object p1, p0, Lcom/anjlab/android/iab/v3/BillingProcessor$1;->this$0:Lcom/anjlab/android/iab/v3/BillingProcessor;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/anjlab/android/iab/v3/BillingProcessor;->access$302(Lcom/anjlab/android/iab/v3/BillingProcessor;Lcom/android/vending/billing/IInAppBillingService;)Lcom/android/vending/billing/IInAppBillingService;

    return-void
.end method
