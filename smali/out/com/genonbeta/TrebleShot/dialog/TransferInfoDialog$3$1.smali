.class Lcom/genonbeta/TrebleShot/dialog/TransferInfoDialog$3$1;
.super Ljava/lang/Object;
.source "TransferInfoDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/genonbeta/TrebleShot/dialog/TransferInfoDialog$3;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/genonbeta/TrebleShot/dialog/TransferInfoDialog$3;


# direct methods
.method constructor <init>(Lcom/genonbeta/TrebleShot/dialog/TransferInfoDialog$3;)V
    .registers 2

    .line 138
    iput-object p1, p0, Lcom/genonbeta/TrebleShot/dialog/TransferInfoDialog$3$1;->this$1:Lcom/genonbeta/TrebleShot/dialog/TransferInfoDialog$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5

    const/4 p1, 0x0

    .line 143
    :try_start_1
    iget-object p2, p0, Lcom/genonbeta/TrebleShot/dialog/TransferInfoDialog$3$1;->this$1:Lcom/genonbeta/TrebleShot/dialog/TransferInfoDialog$3;

    iget-object p2, p2, Lcom/genonbeta/TrebleShot/dialog/TransferInfoDialog$3;->val$pseudoFile:Lcom/genonbeta/android/framework/io/DocumentFile;

    invoke-virtual {p2}, Lcom/genonbeta/android/framework/io/DocumentFile;->getParentFile()Lcom/genonbeta/android/framework/io/DocumentFile;

    move-result-object p2

    iget-object v0, p0, Lcom/genonbeta/TrebleShot/dialog/TransferInfoDialog$3$1;->this$1:Lcom/genonbeta/TrebleShot/dialog/TransferInfoDialog$3;

    iget-object v0, v0, Lcom/genonbeta/TrebleShot/dialog/TransferInfoDialog$3;->val$pseudoFile:Lcom/genonbeta/android/framework/io/DocumentFile;

    iget-object v1, p0, Lcom/genonbeta/TrebleShot/dialog/TransferInfoDialog$3$1;->this$1:Lcom/genonbeta/TrebleShot/dialog/TransferInfoDialog$3;

    iget-object v1, v1, Lcom/genonbeta/TrebleShot/dialog/TransferInfoDialog$3;->val$transferObject:Lcom/genonbeta/TrebleShot/object/TransferObject;

    invoke-static {p2, v0, v1}, Lcom/genonbeta/TrebleShot/util/FileUtils;->saveReceivedFile(Lcom/genonbeta/android/framework/io/DocumentFile;Lcom/genonbeta/android/framework/io/DocumentFile;Lcom/genonbeta/TrebleShot/object/TransferObject;)Lcom/genonbeta/android/framework/io/DocumentFile;

    move-result-object p2

    .line 145
    iget-object v0, p0, Lcom/genonbeta/TrebleShot/dialog/TransferInfoDialog$3$1;->this$1:Lcom/genonbeta/TrebleShot/dialog/TransferInfoDialog$3;

    iget-object v0, v0, Lcom/genonbeta/TrebleShot/dialog/TransferInfoDialog$3;->val$transferObject:Lcom/genonbeta/TrebleShot/object/TransferObject;

    invoke-virtual {p2}, Lcom/genonbeta/android/framework/io/DocumentFile;->getName()Ljava/lang/String;

    move-result-object p2

    iput-object p2, v0, Lcom/genonbeta/TrebleShot/object/TransferObject;->file:Ljava/lang/String;

    .line 146
    iget-object p2, p0, Lcom/genonbeta/TrebleShot/dialog/TransferInfoDialog$3$1;->this$1:Lcom/genonbeta/TrebleShot/dialog/TransferInfoDialog$3;

    iget-object p2, p2, Lcom/genonbeta/TrebleShot/dialog/TransferInfoDialog$3;->val$transferObject:Lcom/genonbeta/TrebleShot/object/TransferObject;

    sget-object v0, Lcom/genonbeta/TrebleShot/object/TransferObject$Flag;->DONE:Lcom/genonbeta/TrebleShot/object/TransferObject$Flag;

    iput-object v0, p2, Lcom/genonbeta/TrebleShot/object/TransferObject;->flag:Lcom/genonbeta/TrebleShot/object/TransferObject$Flag;

    .line 147
    iget-object p2, p0, Lcom/genonbeta/TrebleShot/dialog/TransferInfoDialog$3$1;->this$1:Lcom/genonbeta/TrebleShot/dialog/TransferInfoDialog$3;

    iget-object p2, p2, Lcom/genonbeta/TrebleShot/dialog/TransferInfoDialog$3;->val$context:Landroid/content/Context;

    invoke-static {p2}, Lcom/genonbeta/TrebleShot/util/AppUtils;->getDatabase(Landroid/content/Context;)Lcom/genonbeta/TrebleShot/database/AccessDatabase;

    move-result-object p2

    iget-object v0, p0, Lcom/genonbeta/TrebleShot/dialog/TransferInfoDialog$3$1;->this$1:Lcom/genonbeta/TrebleShot/dialog/TransferInfoDialog$3;

    iget-object v0, v0, Lcom/genonbeta/TrebleShot/dialog/TransferInfoDialog$3;->val$transferObject:Lcom/genonbeta/TrebleShot/object/TransferObject;

    invoke-virtual {p2, v0}, Lcom/genonbeta/TrebleShot/database/AccessDatabase;->update(Lcom/genonbeta/android/database/DatabaseObject;)I

    .line 149
    iget-object p2, p0, Lcom/genonbeta/TrebleShot/dialog/TransferInfoDialog$3$1;->this$1:Lcom/genonbeta/TrebleShot/dialog/TransferInfoDialog$3;

    iget-object p2, p2, Lcom/genonbeta/TrebleShot/dialog/TransferInfoDialog$3;->this$0:Lcom/genonbeta/TrebleShot/dialog/TransferInfoDialog;

    invoke-virtual {p2}, Lcom/genonbeta/TrebleShot/dialog/TransferInfoDialog;->getContext()Landroid/content/Context;

    move-result-object p2

    const v0, 0x7f1100dc

    invoke-static {p2, v0, p1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p2

    invoke-virtual {p2}, Landroid/widget/Toast;->show()V
    :try_end_48
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_48} :catch_49

    goto :goto_5f

    :catch_49
    move-exception p2

    .line 151
    invoke-virtual {p2}, Ljava/io/IOException;->printStackTrace()V

    .line 152
    iget-object p2, p0, Lcom/genonbeta/TrebleShot/dialog/TransferInfoDialog$3$1;->this$1:Lcom/genonbeta/TrebleShot/dialog/TransferInfoDialog$3;

    iget-object p2, p2, Lcom/genonbeta/TrebleShot/dialog/TransferInfoDialog$3;->this$0:Lcom/genonbeta/TrebleShot/dialog/TransferInfoDialog;

    invoke-virtual {p2}, Lcom/genonbeta/TrebleShot/dialog/TransferInfoDialog;->getContext()Landroid/content/Context;

    move-result-object p2

    const v0, 0x7f110107

    invoke-static {p2, v0, p1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :goto_5f
    return-void
.end method
