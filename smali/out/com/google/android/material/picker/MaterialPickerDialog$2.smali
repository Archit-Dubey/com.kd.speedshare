.class Lcom/google/android/material/picker/MaterialPickerDialog$2;
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

    .line 100
    iput-object p1, p0, Lcom/google/android/material/picker/MaterialPickerDialog$2;->this$0:Lcom/google/android/material/picker/MaterialPickerDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    .line 103
    iget-object p1, p0, Lcom/google/android/material/picker/MaterialPickerDialog$2;->this$0:Lcom/google/android/material/picker/MaterialPickerDialog;

    invoke-static {p1}, Lcom/google/android/material/picker/MaterialPickerDialog;->access$200(Lcom/google/android/material/picker/MaterialPickerDialog;)Lcom/google/android/material/picker/MaterialCalendarView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/material/picker/MaterialCalendarView;->getSelection()Ljava/lang/Object;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/android/material/picker/MaterialPickerDialog;->access$102(Lcom/google/android/material/picker/MaterialPickerDialog;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    iget-object p1, p0, Lcom/google/android/material/picker/MaterialPickerDialog$2;->this$0:Lcom/google/android/material/picker/MaterialPickerDialog;

    invoke-virtual {p1}, Lcom/google/android/material/picker/MaterialPickerDialog;->dismiss()V

    return-void
.end method
