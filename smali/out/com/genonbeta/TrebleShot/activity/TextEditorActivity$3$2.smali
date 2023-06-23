.class Lcom/genonbeta/TrebleShot/activity/TextEditorActivity$3$2;
.super Ljava/lang/Object;
.source "TextEditorActivity.java"

# interfaces
.implements Lcom/genonbeta/TrebleShot/util/CommunicationBridge$Client$ConnectionHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/genonbeta/TrebleShot/activity/TextEditorActivity$3;->onRun()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/genonbeta/TrebleShot/activity/TextEditorActivity$3;

.field final synthetic val$retryButtonListener:Landroid/content/DialogInterface$OnClickListener;


# direct methods
.method constructor <init>(Lcom/genonbeta/TrebleShot/activity/TextEditorActivity$3;Landroid/content/DialogInterface$OnClickListener;)V
    .registers 3

    .line 292
    iput-object p1, p0, Lcom/genonbeta/TrebleShot/activity/TextEditorActivity$3$2;->this$1:Lcom/genonbeta/TrebleShot/activity/TextEditorActivity$3;

    iput-object p2, p0, Lcom/genonbeta/TrebleShot/activity/TextEditorActivity$3$2;->val$retryButtonListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConnect(Lcom/genonbeta/TrebleShot/util/CommunicationBridge$Client;)V
    .registers 6

    const-string v0, "result"

    .line 296
    iget-object v1, p0, Lcom/genonbeta/TrebleShot/activity/TextEditorActivity$3$2;->this$1:Lcom/genonbeta/TrebleShot/activity/TextEditorActivity$3;

    iget-object v1, v1, Lcom/genonbeta/TrebleShot/activity/TextEditorActivity$3;->val$device:Lcom/genonbeta/TrebleShot/object/NetworkDevice;

    invoke-virtual {p1, v1}, Lcom/genonbeta/TrebleShot/util/CommunicationBridge$Client;->setDevice(Lcom/genonbeta/TrebleShot/object/NetworkDevice;)V

    .line 299
    :try_start_9
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 300
    iget-object v2, p0, Lcom/genonbeta/TrebleShot/activity/TextEditorActivity$3$2;->this$1:Lcom/genonbeta/TrebleShot/activity/TextEditorActivity$3;

    iget-object v2, v2, Lcom/genonbeta/TrebleShot/activity/TextEditorActivity$3;->val$device:Lcom/genonbeta/TrebleShot/object/NetworkDevice;

    iget-object v3, p0, Lcom/genonbeta/TrebleShot/activity/TextEditorActivity$3$2;->this$1:Lcom/genonbeta/TrebleShot/activity/TextEditorActivity$3;

    iget-object v3, v3, Lcom/genonbeta/TrebleShot/activity/TextEditorActivity$3;->val$connection:Lcom/genonbeta/TrebleShot/object/NetworkDevice$Connection;

    invoke-virtual {p1, v2, v3}, Lcom/genonbeta/TrebleShot/util/CommunicationBridge$Client;->communicate(Lcom/genonbeta/TrebleShot/object/NetworkDevice;Lcom/genonbeta/TrebleShot/object/NetworkDevice$Connection;)Lcom/genonbeta/CoolSocket/CoolSocket$ActiveConnection;

    move-result-object p1

    const-string v2, "request"

    const-string v3, "requestClipboard"

    .line 302
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "clipboardText"

    .line 303
    iget-object v3, p0, Lcom/genonbeta/TrebleShot/activity/TextEditorActivity$3$2;->this$1:Lcom/genonbeta/TrebleShot/activity/TextEditorActivity$3;

    iget-object v3, v3, Lcom/genonbeta/TrebleShot/activity/TextEditorActivity$3;->this$0:Lcom/genonbeta/TrebleShot/activity/TextEditorActivity;

    invoke-static {v3}, Lcom/genonbeta/TrebleShot/activity/TextEditorActivity;->access$000(Lcom/genonbeta/TrebleShot/activity/TextEditorActivity;)Landroid/widget/EditText;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 305
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/genonbeta/CoolSocket/CoolSocket$ActiveConnection;->reply(Ljava/lang/String;)V

    .line 307
    invoke-virtual {p1}, Lcom/genonbeta/CoolSocket/CoolSocket$ActiveConnection;->receive()Lcom/genonbeta/CoolSocket/CoolSocket$ActiveConnection$Response;

    move-result-object v1

    .line 308
    invoke-virtual {p1}, Lcom/genonbeta/CoolSocket/CoolSocket$ActiveConnection;->getSocket()Ljava/net/Socket;

    move-result-object p1

    invoke-virtual {p1}, Ljava/net/Socket;->close()V

    .line 310
    new-instance p1, Lorg/json/JSONObject;

    iget-object v1, v1, Lcom/genonbeta/CoolSocket/CoolSocket$ActiveConnection$Response;->response:Ljava/lang/String;

    invoke-direct {p1, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 312
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6d

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6d

    .line 313
    iget-object p1, p0, Lcom/genonbeta/TrebleShot/activity/TextEditorActivity$3$2;->this$1:Lcom/genonbeta/TrebleShot/activity/TextEditorActivity$3;

    iget-object p1, p1, Lcom/genonbeta/TrebleShot/activity/TextEditorActivity$3;->this$0:Lcom/genonbeta/TrebleShot/activity/TextEditorActivity;

    const v0, 0x7f110106

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p1, v0, v1}, Lcom/genonbeta/TrebleShot/activity/TextEditorActivity;->createSnackbar(I[Ljava/lang/Object;)Lcom/google/android/material/snackbar/Snackbar;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/material/snackbar/Snackbar;->show()V

    goto :goto_88

    .line 315
    :cond_6d
    iget-object v0, p0, Lcom/genonbeta/TrebleShot/activity/TextEditorActivity$3$2;->this$1:Lcom/genonbeta/TrebleShot/activity/TextEditorActivity$3;

    iget-object v0, v0, Lcom/genonbeta/TrebleShot/activity/TextEditorActivity$3;->this$0:Lcom/genonbeta/TrebleShot/activity/TextEditorActivity;

    iget-object v1, p0, Lcom/genonbeta/TrebleShot/activity/TextEditorActivity$3$2;->this$1:Lcom/genonbeta/TrebleShot/activity/TextEditorActivity$3;

    iget-object v1, v1, Lcom/genonbeta/TrebleShot/activity/TextEditorActivity$3;->val$device:Lcom/genonbeta/TrebleShot/object/NetworkDevice;

    iget-object v2, p0, Lcom/genonbeta/TrebleShot/activity/TextEditorActivity$3$2;->val$retryButtonListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-static {v0, v1, p1, v2}, Lcom/genonbeta/TrebleShot/ui/UIConnectionUtils;->showConnectionRejectionInformation(Landroid/app/Activity;Lcom/genonbeta/TrebleShot/object/NetworkDevice;Lorg/json/JSONObject;Landroid/content/DialogInterface$OnClickListener;)V
    :try_end_7a
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_7a} :catch_7b

    goto :goto_88

    :catch_7b
    move-exception p1

    .line 319
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 320
    iget-object p1, p0, Lcom/genonbeta/TrebleShot/activity/TextEditorActivity$3$2;->this$1:Lcom/genonbeta/TrebleShot/activity/TextEditorActivity$3;

    iget-object p1, p1, Lcom/genonbeta/TrebleShot/activity/TextEditorActivity$3;->this$0:Lcom/genonbeta/TrebleShot/activity/TextEditorActivity;

    iget-object v0, p0, Lcom/genonbeta/TrebleShot/activity/TextEditorActivity$3$2;->val$retryButtonListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-static {p1, v0}, Lcom/genonbeta/TrebleShot/ui/UIConnectionUtils;->showUnknownError(Landroid/app/Activity;Landroid/content/DialogInterface$OnClickListener;)V

    :goto_88
    return-void
.end method
