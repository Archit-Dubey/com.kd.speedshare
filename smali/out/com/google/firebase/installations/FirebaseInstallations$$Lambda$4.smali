.class final synthetic Lcom/google/firebase/installations/FirebaseInstallations$$Lambda$4;
.super Ljava/lang/Object;
.source "FirebaseInstallations.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final arg$1:Lcom/google/firebase/installations/FirebaseInstallations;

.field private final arg$2:Z


# direct methods
.method private constructor <init>(Lcom/google/firebase/installations/FirebaseInstallations;Z)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/installations/FirebaseInstallations$$Lambda$4;->arg$1:Lcom/google/firebase/installations/FirebaseInstallations;

    iput-boolean p2, p0, Lcom/google/firebase/installations/FirebaseInstallations$$Lambda$4;->arg$2:Z

    return-void
.end method

.method public static lambdaFactory$(Lcom/google/firebase/installations/FirebaseInstallations;Z)Ljava/lang/Runnable;
    .registers 3

    new-instance v0, Lcom/google/firebase/installations/FirebaseInstallations$$Lambda$4;

    invoke-direct {v0, p0, p1}, Lcom/google/firebase/installations/FirebaseInstallations$$Lambda$4;-><init>(Lcom/google/firebase/installations/FirebaseInstallations;Z)V

    return-object v0
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Lcom/google/firebase/installations/FirebaseInstallations$$Lambda$4;->arg$1:Lcom/google/firebase/installations/FirebaseInstallations;

    iget-boolean v1, p0, Lcom/google/firebase/installations/FirebaseInstallations$$Lambda$4;->arg$2:Z

    invoke-static {v0, v1}, Lcom/google/firebase/installations/FirebaseInstallations;->lambda$doGetAuthToken$2(Lcom/google/firebase/installations/FirebaseInstallations;Z)V

    return-void
.end method
