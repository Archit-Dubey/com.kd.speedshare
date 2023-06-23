.class Lcom/anjlab/android/iab/v3/BillingProcessor$HistoryInitializationTask;
.super Landroid/os/AsyncTask;
.source "BillingProcessor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/anjlab/android/iab/v3/BillingProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HistoryInitializationTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/anjlab/android/iab/v3/BillingProcessor;


# direct methods
.method private constructor <init>(Lcom/anjlab/android/iab/v3/BillingProcessor;)V
    .registers 2

    .line 95
    iput-object p1, p0, Lcom/anjlab/android/iab/v3/BillingProcessor$HistoryInitializationTask;->this$0:Lcom/anjlab/android/iab/v3/BillingProcessor;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/anjlab/android/iab/v3/BillingProcessor;Lcom/anjlab/android/iab/v3/BillingProcessor$1;)V
    .registers 3

    .line 95
    invoke-direct {p0, p1}, Lcom/anjlab/android/iab/v3/BillingProcessor$HistoryInitializationTask;-><init>(Lcom/anjlab/android/iab/v3/BillingProcessor;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .registers 2

    .line 100
    iget-object p1, p0, Lcom/anjlab/android/iab/v3/BillingProcessor$HistoryInitializationTask;->this$0:Lcom/anjlab/android/iab/v3/BillingProcessor;

    invoke-static {p1}, Lcom/anjlab/android/iab/v3/BillingProcessor;->access$000(Lcom/anjlab/android/iab/v3/BillingProcessor;)Z

    move-result p1

    if-nez p1, :cond_13

    .line 102
    iget-object p1, p0, Lcom/anjlab/android/iab/v3/BillingProcessor$HistoryInitializationTask;->this$0:Lcom/anjlab/android/iab/v3/BillingProcessor;

    invoke-virtual {p1}, Lcom/anjlab/android/iab/v3/BillingProcessor;->loadOwnedPurchasesFromGoogle()Z

    const/4 p1, 0x1

    .line 103
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    :cond_13
    const/4 p1, 0x0

    .line 105
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 95
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/anjlab/android/iab/v3/BillingProcessor$HistoryInitializationTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .registers 2

    .line 111
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_1c

    .line 113
    iget-object p1, p0, Lcom/anjlab/android/iab/v3/BillingProcessor$HistoryInitializationTask;->this$0:Lcom/anjlab/android/iab/v3/BillingProcessor;

    invoke-static {p1}, Lcom/anjlab/android/iab/v3/BillingProcessor;->access$100(Lcom/anjlab/android/iab/v3/BillingProcessor;)V

    .line 114
    iget-object p1, p0, Lcom/anjlab/android/iab/v3/BillingProcessor$HistoryInitializationTask;->this$0:Lcom/anjlab/android/iab/v3/BillingProcessor;

    invoke-static {p1}, Lcom/anjlab/android/iab/v3/BillingProcessor;->access$200(Lcom/anjlab/android/iab/v3/BillingProcessor;)Lcom/anjlab/android/iab/v3/BillingProcessor$IBillingHandler;

    move-result-object p1

    if-eqz p1, :cond_1c

    .line 116
    iget-object p1, p0, Lcom/anjlab/android/iab/v3/BillingProcessor$HistoryInitializationTask;->this$0:Lcom/anjlab/android/iab/v3/BillingProcessor;

    invoke-static {p1}, Lcom/anjlab/android/iab/v3/BillingProcessor;->access$200(Lcom/anjlab/android/iab/v3/BillingProcessor;)Lcom/anjlab/android/iab/v3/BillingProcessor$IBillingHandler;

    move-result-object p1

    invoke-interface {p1}, Lcom/anjlab/android/iab/v3/BillingProcessor$IBillingHandler;->onPurchaseHistoryRestored()V

    .line 119
    :cond_1c
    iget-object p1, p0, Lcom/anjlab/android/iab/v3/BillingProcessor$HistoryInitializationTask;->this$0:Lcom/anjlab/android/iab/v3/BillingProcessor;

    invoke-static {p1}, Lcom/anjlab/android/iab/v3/BillingProcessor;->access$200(Lcom/anjlab/android/iab/v3/BillingProcessor;)Lcom/anjlab/android/iab/v3/BillingProcessor$IBillingHandler;

    move-result-object p1

    if-eqz p1, :cond_2d

    .line 121
    iget-object p1, p0, Lcom/anjlab/android/iab/v3/BillingProcessor$HistoryInitializationTask;->this$0:Lcom/anjlab/android/iab/v3/BillingProcessor;

    invoke-static {p1}, Lcom/anjlab/android/iab/v3/BillingProcessor;->access$200(Lcom/anjlab/android/iab/v3/BillingProcessor;)Lcom/anjlab/android/iab/v3/BillingProcessor$IBillingHandler;

    move-result-object p1

    invoke-interface {p1}, Lcom/anjlab/android/iab/v3/BillingProcessor$IBillingHandler;->onBillingInitialized()V

    :cond_2d
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2

    .line 95
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/anjlab/android/iab/v3/BillingProcessor$HistoryInitializationTask;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method
