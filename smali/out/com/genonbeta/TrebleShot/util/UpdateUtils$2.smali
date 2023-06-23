.class final Lcom/genonbeta/TrebleShot/util/UpdateUtils$2;
.super Ljava/lang/Object;
.source "UpdateUtils.java"

# interfaces
.implements Lcom/genonbeta/android/framework/util/Interrupter$Closer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/genonbeta/TrebleShot/util/UpdateUtils;->receiveUpdate(Landroid/content/Context;Lcom/genonbeta/TrebleShot/object/NetworkDevice;Lcom/genonbeta/android/framework/util/Interrupter;Lcom/genonbeta/TrebleShot/util/UpdateUtils$OnConnectionReadyListener;)Lcom/genonbeta/android/framework/io/DocumentFile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$finalServer:Ljava/net/ServerSocket;


# direct methods
.method constructor <init>(Ljava/net/ServerSocket;)V
    .registers 2

    .line 117
    iput-object p1, p0, Lcom/genonbeta/TrebleShot/util/UpdateUtils$2;->val$finalServer:Ljava/net/ServerSocket;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClose(Z)V
    .registers 2

    .line 122
    :try_start_0
    iget-object p1, p0, Lcom/genonbeta/TrebleShot/util/UpdateUtils$2;->val$finalServer:Ljava/net/ServerSocket;

    invoke-virtual {p1}, Ljava/net/ServerSocket;->isClosed()Z

    move-result p1

    if-nez p1, :cond_12

    .line 123
    iget-object p1, p0, Lcom/genonbeta/TrebleShot/util/UpdateUtils$2;->val$finalServer:Ljava/net/ServerSocket;

    invoke-virtual {p1}, Ljava/net/ServerSocket;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_d} :catch_e

    goto :goto_12

    :catch_e
    move-exception p1

    .line 125
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :cond_12
    :goto_12
    return-void
.end method
