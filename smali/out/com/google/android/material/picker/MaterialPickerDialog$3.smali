.class Lcom/google/android/material/picker/MaterialPickerDialog$3;
.super Ljava/lang/Object;
.source "MaterialPickerDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/material/picker/MaterialPickerDialog;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/material/picker/MaterialPickerDialog;


# direct methods
.method constructor <init>(Lcom/google/android/material/picker/MaterialPickerDialog;)V
    .registers 2

    .line 108
    iput-object p1, p0, Lcom/google/android/material/picker/MaterialPickerDialog$3;->this$0:Lcom/google/android/material/picker/MaterialPickerDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    .line 111
    iget-object p1, p0, Lcom/google/android/material/picker/MaterialPickerDialog$3;->this$0:Lcom/google/android/material/picker/MaterialPickerDialog;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/google/android/material/picker/MaterialPickerDialog;->access$102(Lcom/google/android/material/picker/MaterialPickerDialog;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    iget-object p1, p0, Lcom/google/android/material/picker/MaterialPickerDialog$3;->this$0:Lcom/google/android/material/picker/MaterialPickerDialog;

    invoke-virtual {p1}, Lcom/google/android/material/picker/MaterialPickerDialog;->cancel()V

    return-void
.end method
