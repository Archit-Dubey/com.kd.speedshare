.class final synthetic Lcom/google/firebase/analytics/connector/zza;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-api@@17.4.4"

# interfaces
.implements Ljava/util/concurrent/Executor;


# static fields
.field static final zza:Ljava/util/concurrent/Executor;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/firebase/analytics/connector/zza;

    invoke-direct {v0}, Lcom/google/firebase/analytics/connector/zza;-><init>()V

    sput-object v0, Lcom/google/firebase/analytics/connector/zza;->zza:Ljava/util/concurrent/Executor;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final execute(Ljava/lang/Runnable;)V
    .registers 2

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void
.end method
