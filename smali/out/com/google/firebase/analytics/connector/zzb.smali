.class final synthetic Lcom/google/firebase/analytics/connector/zzb;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-api@@17.4.4"

# interfaces
.implements Lcom/google/firebase/events/EventHandler;


# static fields
.field static final zza:Lcom/google/firebase/events/EventHandler;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/firebase/analytics/connector/zzb;

    invoke-direct {v0}, Lcom/google/firebase/analytics/connector/zzb;-><init>()V

    sput-object v0, Lcom/google/firebase/analytics/connector/zzb;->zza:Lcom/google/firebase/events/EventHandler;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final handle(Lcom/google/firebase/events/Event;)V
    .registers 2

    invoke-static {p1}, Lcom/google/firebase/analytics/connector/AnalyticsConnectorImpl;->zza(Lcom/google/firebase/events/Event;)V

    return-void
.end method
