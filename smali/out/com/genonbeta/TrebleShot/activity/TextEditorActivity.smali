.class public Lcom/genonbeta/TrebleShot/activity/TextEditorActivity;
.super Lcom/genonbeta/TrebleShot/app/Activity;
.source "TextEditorActivity.java"

# interfaces
.implements Lcom/genonbeta/android/framework/ui/callback/SnackbarSupport;


# static fields
.field public static final ACTION_EDIT_TEXT:Ljava/lang/String; = "genonbeta.intent.action.EDIT_TEXT"

.field public static final EXTRA_CLIPBOARD_ID:Ljava/lang/String; = "clipboardId"

.field public static final EXTRA_SUPPORT_APPLY:Ljava/lang/String; = "extraSupportApply"

.field public static final EXTRA_TEXT_INDEX:Ljava/lang/String; = "extraText"

.field public static final REQUEST_CODE_CHOOSE_DEVICE:I

.field public static final TAG:Ljava/lang/String;


# instance fields
.field private mBackPressTime:J

.field private mEditTextEditor:Landroid/widget/EditText;

.field private mTextStreamObject:Lcom/genonbeta/TrebleShot/object/TextStreamObject;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 54
    const-class v0, Lcom/genonbeta/TrebleShot/activity/TextEditorActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/genonbeta/TrebleShot/activity/TextEditorActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .line 52
    invoke-direct {p0}, Lcom/genonbeta/TrebleShot/app/Activity;-><init>()V

    const-wide/16 v0, 0x0

    .line 64
    iput-wide v0, p0, Lcom/genonbeta/TrebleShot/activity/TextEditorActivity;->mBackPressTime:J

    return-void
.end method

.method static synthetic access$000(Lcom/genonbeta/TrebleShot/activity/TextEditorActivity;)Landroid/widget/EditText;
    .registers 1

    .line 52
    iget-object p0, p0, Lcom/genonbeta/TrebleShot/activity/TextEditorActivity;->mEditTextEditor:Landroid/widget/EditText;

    return-object p0
.end method


# virtual methods
.method public varargs createSnackbar(I[Ljava/lang/Object;)Lcom/google/android/material/snackbar/Snackbar;
    .registers 4

    const v0, 0x1020002

    .line 270
    invoke-virtual {p0, v0}, Lcom/genonbeta/TrebleShot/activity/TextEditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, p1, p2}, Lcom/genonbeta/TrebleShot/activity/TextEditorActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    invoke-static {v0, p1, p2}, Lcom/google/android/material/snackbar/Snackbar;->make(Landroid/view/View;Ljava/lang/CharSequence;I)Lcom/google/android/material/snackbar/Snackbar;

    move-result-object p1

    return-object p1
.end method

.method protected doCommunicate(Lcom/genonbeta/TrebleShot/object/NetworkDevice;Lcom/genonbeta/TrebleShot/object/NetworkDevice$Connection;)V
    .registers 5

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const v1, 0x7f1100c3

    .line 275
    invoke-virtual {p0, v1, v0}, Lcom/genonbeta/TrebleShot/activity/TextEditorActivity;->createSnackbar(I[Ljava/lang/Object;)Lcom/google/android/material/snackbar/Snackbar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/material/snackbar/Snackbar;->show()V

    .line 277
    new-instance v0, Lcom/genonbeta/TrebleShot/activity/TextEditorActivity$3;

    invoke-direct {v0, p0, p1, p2}, Lcom/genonbeta/TrebleShot/activity/TextEditorActivity$3;-><init>(Lcom/genonbeta/TrebleShot/activity/TextEditorActivity;Lcom/genonbeta/TrebleShot/object/NetworkDevice;Lcom/genonbeta/TrebleShot/object/NetworkDevice$Connection;)V

    .line 325
    invoke-virtual {p0, v1}, Lcom/genonbeta/TrebleShot/activity/TextEditorActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/genonbeta/TrebleShot/activity/TextEditorActivity$3;->setTitle(Ljava/lang/String;)Lcom/genonbeta/TrebleShot/service/WorkerService$RunningTask;

    move-result-object p1

    const p2, 0x7f0700b2

    .line 326
    invoke-virtual {p1, p2}, Lcom/genonbeta/TrebleShot/service/WorkerService$RunningTask;->setIconRes(I)Lcom/genonbeta/TrebleShot/service/WorkerService$RunningTask;

    move-result-object p1

    .line 327
    invoke-virtual {p1, p0}, Lcom/genonbeta/TrebleShot/service/WorkerService$RunningTask;->run(Landroid/content/Context;)Z

    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 5

    .line 109
    invoke-super {p0, p1, p2, p3}, Lcom/genonbeta/TrebleShot/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    const/4 v0, -0x1

    if-ne p2, v0, :cond_49

    if-nez p1, :cond_49

    if-eqz p3, :cond_49

    const-string p1, "extraDeviceId"

    .line 114
    invoke-virtual {p3, p1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_49

    const-string p2, "extraConnectionAdapter"

    .line 115
    invoke-virtual {p3, p2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_49

    .line 116
    invoke-virtual {p3, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 117
    invoke-virtual {p3, p2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 120
    :try_start_22
    new-instance p3, Lcom/genonbeta/TrebleShot/object/NetworkDevice;

    invoke-direct {p3, p1}, Lcom/genonbeta/TrebleShot/object/NetworkDevice;-><init>(Ljava/lang/String;)V

    .line 121
    new-instance v0, Lcom/genonbeta/TrebleShot/object/NetworkDevice$Connection;

    invoke-direct {v0, p1, p2}, Lcom/genonbeta/TrebleShot/object/NetworkDevice$Connection;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/activity/TextEditorActivity;->getDatabase()Lcom/genonbeta/TrebleShot/database/AccessDatabase;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/genonbeta/TrebleShot/database/AccessDatabase;->reconstruct(Lcom/genonbeta/android/database/DatabaseObject;)V

    .line 124
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/activity/TextEditorActivity;->getDatabase()Lcom/genonbeta/TrebleShot/database/AccessDatabase;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/genonbeta/TrebleShot/database/AccessDatabase;->reconstruct(Lcom/genonbeta/android/database/DatabaseObject;)V

    .line 126
    invoke-virtual {p0, p3, v0}, Lcom/genonbeta/TrebleShot/activity/TextEditorActivity;->doCommunicate(Lcom/genonbeta/TrebleShot/object/NetworkDevice;Lcom/genonbeta/TrebleShot/object/NetworkDevice$Connection;)V
    :try_end_3d
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_3d} :catch_3e

    goto :goto_49

    :catch_3e
    const p1, 0x7f110107

    const/4 p2, 0x0

    .line 128
    invoke-static {p0, p1, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :cond_49
    :goto_49
    return-void
.end method

.method public onBackPressed()V
    .registers 8

    .line 146
    iget-object v0, p0, Lcom/genonbeta/TrebleShot/activity/TextEditorActivity;->mTextStreamObject:Lcom/genonbeta/TrebleShot/object/TextStreamObject;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    .line 147
    :goto_9
    iget-object v3, p0, Lcom/genonbeta/TrebleShot/activity/TextEditorActivity;->mEditTextEditor:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->length()I

    move-result v3

    if-lez v3, :cond_17

    const/4 v3, 0x1

    goto :goto_18

    :cond_17
    const/4 v3, 0x0

    :goto_18
    if-eqz v0, :cond_2b

    .line 148
    iget-object v4, p0, Lcom/genonbeta/TrebleShot/activity/TextEditorActivity;->mTextStreamObject:Lcom/genonbeta/TrebleShot/object/TextStreamObject;

    iget-object v4, v4, Lcom/genonbeta/TrebleShot/object/TextStreamObject;->text:Ljava/lang/String;

    if-eqz v4, :cond_2b

    iget-object v4, p0, Lcom/genonbeta/TrebleShot/activity/TextEditorActivity;->mTextStreamObject:Lcom/genonbeta/TrebleShot/object/TextStreamObject;

    iget-object v4, v4, Lcom/genonbeta/TrebleShot/object/TextStreamObject;->text:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_2b

    goto :goto_2c

    :cond_2b
    const/4 v1, 0x0

    :goto_2c
    if-eqz v3, :cond_77

    if-eqz v1, :cond_44

    .line 150
    iget-object v1, p0, Lcom/genonbeta/TrebleShot/activity/TextEditorActivity;->mTextStreamObject:Lcom/genonbeta/TrebleShot/object/TextStreamObject;

    iget-object v1, v1, Lcom/genonbeta/TrebleShot/object/TextStreamObject;->text:Ljava/lang/String;

    iget-object v3, p0, Lcom/genonbeta/TrebleShot/activity/TextEditorActivity;->mEditTextEditor:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_77

    .line 151
    :cond_44
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/genonbeta/TrebleShot/activity/TextEditorActivity;->mBackPressTime:J

    sub-long/2addr v3, v5

    const-wide/16 v5, 0xbb8

    cmp-long v1, v3, v5

    if-gez v1, :cond_52

    goto :goto_77

    :cond_52
    if-eqz v0, :cond_58

    const v1, 0x7f1100c2

    goto :goto_5b

    :cond_58
    const v1, 0x7f11010f

    :goto_5b
    new-array v2, v2, [Ljava/lang/Object;

    .line 154
    invoke-virtual {p0, v1, v2}, Lcom/genonbeta/TrebleShot/activity/TextEditorActivity;->createSnackbar(I[Ljava/lang/Object;)Lcom/google/android/material/snackbar/Snackbar;

    move-result-object v1

    if-eqz v0, :cond_67

    const v0, 0x7f110092

    goto :goto_6a

    :cond_67
    const v0, 0x7f11006c

    :goto_6a
    new-instance v2, Lcom/genonbeta/TrebleShot/activity/TextEditorActivity$2;

    invoke-direct {v2, p0}, Lcom/genonbeta/TrebleShot/activity/TextEditorActivity$2;-><init>(Lcom/genonbeta/TrebleShot/activity/TextEditorActivity;)V

    .line 155
    invoke-virtual {v1, v0, v2}, Lcom/google/android/material/snackbar/Snackbar;->setAction(ILandroid/view/View$OnClickListener;)Lcom/google/android/material/snackbar/Snackbar;

    move-result-object v0

    .line 164
    invoke-virtual {v0}, Lcom/google/android/material/snackbar/Snackbar;->show()V

    goto :goto_7a

    .line 152
    :cond_77
    :goto_77
    invoke-super {p0}, Lcom/genonbeta/TrebleShot/app/Activity;->onBackPressed()V

    .line 166
    :goto_7a
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/genonbeta/TrebleShot/activity/TextEditorActivity;->mBackPressTime:J

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 6

    .line 68
    invoke-super {p0, p1}, Lcom/genonbeta/TrebleShot/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 70
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/activity/TextEditorActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_9c

    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/activity/TextEditorActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "genonbeta.intent.action.EDIT_TEXT"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1b

    goto/16 :goto_9c

    :cond_1b
    const p1, 0x7f0c006a

    .line 73
    invoke-virtual {p0, p1}, Lcom/genonbeta/TrebleShot/activity/TextEditorActivity;->setContentView(I)V

    .line 75
    new-instance p1, Lcom/genonbeta/TrebleShot/activity/TextEditorActivity$1;

    invoke-direct {p1, p0}, Lcom/genonbeta/TrebleShot/activity/TextEditorActivity$1;-><init>(Lcom/genonbeta/TrebleShot/activity/TextEditorActivity;)V

    invoke-static {p0, p1}, Lcom/google/android/gms/ads/MobileAds;->initialize(Landroid/content/Context;Lcom/google/android/gms/ads/initialization/OnInitializationCompleteListener;)V

    .line 81
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/activity/TextEditorActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object p1

    if-eqz p1, :cond_37

    .line 82
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/activity/TextEditorActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    :cond_37
    const p1, 0x7f090146

    .line 84
    invoke-virtual {p0, p1}, Lcom/genonbeta/TrebleShot/activity/TextEditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lcom/genonbeta/TrebleShot/activity/TextEditorActivity;->mEditTextEditor:Landroid/widget/EditText;

    .line 86
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/activity/TextEditorActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "clipboardId"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_7e

    .line 87
    new-instance p1, Lcom/genonbeta/TrebleShot/object/TextStreamObject;

    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/activity/TextEditorActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-wide/16 v2, -0x1

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    invoke-direct {p1, v0, v1}, Lcom/genonbeta/TrebleShot/object/TextStreamObject;-><init>(J)V

    iput-object p1, p0, Lcom/genonbeta/TrebleShot/activity/TextEditorActivity;->mTextStreamObject:Lcom/genonbeta/TrebleShot/object/TextStreamObject;

    .line 90
    :try_start_5f
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/activity/TextEditorActivity;->getDatabase()Lcom/genonbeta/TrebleShot/database/AccessDatabase;

    move-result-object p1

    iget-object v0, p0, Lcom/genonbeta/TrebleShot/activity/TextEditorActivity;->mTextStreamObject:Lcom/genonbeta/TrebleShot/object/TextStreamObject;

    invoke-virtual {p1, v0}, Lcom/genonbeta/TrebleShot/database/AccessDatabase;->reconstruct(Lcom/genonbeta/android/database/DatabaseObject;)V

    .line 92
    iget-object p1, p0, Lcom/genonbeta/TrebleShot/activity/TextEditorActivity;->mEditTextEditor:Landroid/widget/EditText;

    .line 93
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    iget-object v0, p0, Lcom/genonbeta/TrebleShot/activity/TextEditorActivity;->mTextStreamObject:Lcom/genonbeta/TrebleShot/object/TextStreamObject;

    iget-object v0, v0, Lcom/genonbeta/TrebleShot/object/TextStreamObject;->text:Ljava/lang/String;

    .line 94
    invoke-interface {p1, v0}, Landroid/text/Editable;->append(Ljava/lang/CharSequence;)Landroid/text/Editable;
    :try_end_75
    .catch Ljava/lang/Exception; {:try_start_5f .. :try_end_75} :catch_76

    goto :goto_9f

    :catch_76
    move-exception p1

    .line 96
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p1, 0x0

    .line 97
    iput-object p1, p0, Lcom/genonbeta/TrebleShot/activity/TextEditorActivity;->mTextStreamObject:Lcom/genonbeta/TrebleShot/object/TextStreamObject;

    goto :goto_9f

    .line 99
    :cond_7e
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/activity/TextEditorActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "extraText"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_9f

    .line 100
    iget-object p1, p0, Lcom/genonbeta/TrebleShot/activity/TextEditorActivity;->mEditTextEditor:Landroid/widget/EditText;

    .line 101
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    .line 102
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/activity/TextEditorActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/text/Editable;->append(Ljava/lang/CharSequence;)Landroid/text/Editable;

    goto :goto_9f

    .line 71
    :cond_9c
    :goto_9c
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/activity/TextEditorActivity;->finish()V

    :cond_9f
    :goto_9f
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 4

    .line 137
    invoke-super {p0, p1}, Lcom/genonbeta/TrebleShot/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 138
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/activity/TextEditorActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0d0014

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    const/4 p1, 0x1

    return p1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 8

    .line 196
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const/4 v1, 0x0

    const v2, 0x7f090160

    if-ne v0, v2, :cond_20

    .line 199
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/activity/TextEditorActivity;->saveText()V

    const p1, 0x1020002

    .line 200
    invoke-virtual {p0, p1}, Lcom/genonbeta/TrebleShot/activity/TextEditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const v0, 0x7f110111

    invoke-static {p1, v0, v1}, Lcom/google/android/material/snackbar/Snackbar;->make(Landroid/view/View;II)Lcom/google/android/material/snackbar/Snackbar;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/material/snackbar/Snackbar;->show()V

    goto/16 :goto_164

    :cond_20
    const v2, 0x7f09015e

    const/4 v3, -0x1

    if-ne v0, v2, :cond_43

    .line 202
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    iget-object v0, p0, Lcom/genonbeta/TrebleShot/activity/TextEditorActivity;->mEditTextEditor:Landroid/widget/EditText;

    .line 203
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "extraText"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    .line 205
    invoke-virtual {p0, v3, p1}, Lcom/genonbeta/TrebleShot/activity/TextEditorActivity;->setResult(ILandroid/content/Intent;)V

    .line 206
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/activity/TextEditorActivity;->finish()V

    goto/16 :goto_164

    :cond_43
    const v2, 0x7f09015d

    if-ne v0, v2, :cond_71

    const-string p1, "clipboard"

    .line 208
    invoke-virtual {p0, p1}, Lcom/genonbeta/TrebleShot/activity/TextEditorActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/ClipboardManager;

    iget-object v0, p0, Lcom/genonbeta/TrebleShot/activity/TextEditorActivity;->mEditTextEditor:Landroid/widget/EditText;

    .line 209
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "copiedText"

    invoke-static {v2, v0}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    const p1, 0x7f11010e

    new-array v0, v1, [Ljava/lang/Object;

    .line 211
    invoke-virtual {p0, p1, v0}, Lcom/genonbeta/TrebleShot/activity/TextEditorActivity;->createSnackbar(I[Ljava/lang/Object;)Lcom/google/android/material/snackbar/Snackbar;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/material/snackbar/Snackbar;->show()V

    goto/16 :goto_164

    :cond_71
    const v2, 0x7f090161

    if-ne v0, v2, :cond_a3

    .line 213
    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.intent.action.SEND"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/genonbeta/TrebleShot/activity/TextEditorActivity;->mEditTextEditor:Landroid/widget/EditText;

    .line 214
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.extra.TEXT"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    const-string v0, "text/*"

    .line 215
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    const v0, 0x7f11019b

    .line 217
    invoke-virtual {p0, v0}, Lcom/genonbeta/TrebleShot/activity/TextEditorActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/genonbeta/TrebleShot/activity/TextEditorActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_164

    :cond_a3
    const v2, 0x7f090162

    if-ne v0, v2, :cond_cd

    .line 219
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/genonbeta/TrebleShot/activity/ConnectionManagerActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    sget-object v0, Lcom/genonbeta/TrebleShot/activity/ConnectionManagerActivity$RequestType;->RETURN_RESULT:Lcom/genonbeta/TrebleShot/activity/ConnectionManagerActivity$RequestType;

    .line 221
    invoke-virtual {v0}, Lcom/genonbeta/TrebleShot/activity/ConnectionManagerActivity$RequestType;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "extraRequestType"

    invoke-virtual {p1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    const v0, 0x7f110217

    .line 222
    invoke-virtual {p0, v0}, Lcom/genonbeta/TrebleShot/activity/TextEditorActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "extraActivitySubtitle"

    invoke-virtual {p1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    .line 219
    invoke-virtual {p0, p1, v1}, Lcom/genonbeta/TrebleShot/activity/TextEditorActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_164

    :cond_cd
    const v2, 0x7f090163

    const/4 v4, 0x0

    if-ne v0, v2, :cond_147

    .line 225
    iget-object p1, p0, Lcom/genonbeta/TrebleShot/activity/TextEditorActivity;->mEditTextEditor:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->length()I

    move-result p1

    if-lez p1, :cond_164

    iget-object p1, p0, Lcom/genonbeta/TrebleShot/activity/TextEditorActivity;->mEditTextEditor:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->length()I

    move-result p1

    const/16 v0, 0x4b0

    if-gt p1, v0, :cond_164

    .line 226
    new-instance p1, Lcom/google/zxing/MultiFormatWriter;

    invoke-direct {p1}, Lcom/google/zxing/MultiFormatWriter;-><init>()V

    .line 228
    :try_start_ea
    iget-object v0, p0, Lcom/genonbeta/TrebleShot/activity/TextEditorActivity;->mEditTextEditor:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/google/zxing/BarcodeFormat;->QR_CODE:Lcom/google/zxing/BarcodeFormat;

    const/16 v5, 0x320

    invoke-virtual {p1, v0, v2, v5, v5}, Lcom/google/zxing/MultiFormatWriter;->encode(Ljava/lang/String;Lcom/google/zxing/BarcodeFormat;II)Lcom/google/zxing/common/BitMatrix;

    move-result-object p1

    .line 231
    new-instance v0, Lcom/journeyapps/barcodescanner/BarcodeEncoder;

    invoke-direct {v0}, Lcom/journeyapps/barcodescanner/BarcodeEncoder;-><init>()V

    .line 232
    invoke-virtual {v0, p1}, Lcom/journeyapps/barcodescanner/BarcodeEncoder;->createBitmap(Lcom/google/zxing/common/BitMatrix;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 234
    new-instance v0, Lcom/google/android/material/bottomsheet/BottomSheetDialog;

    invoke-direct {v0, p0}, Lcom/google/android/material/bottomsheet/BottomSheetDialog;-><init>(Landroid/content/Context;)V

    .line 236
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v5, 0x7f0c0069

    invoke-virtual {v2, v5, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    const v4, 0x7f090145

    .line 237
    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 239
    invoke-static {p0}, Lcom/genonbeta/TrebleShot/GlideApp;->with(Landroidx/fragment/app/FragmentActivity;)Lcom/genonbeta/TrebleShot/GlideRequests;

    move-result-object v5

    .line 240
    invoke-virtual {v5, p1}, Lcom/genonbeta/TrebleShot/GlideRequests;->load(Landroid/graphics/Bitmap;)Lcom/genonbeta/TrebleShot/GlideRequest;

    move-result-object p1

    .line 241
    invoke-virtual {p1, v4}, Lcom/genonbeta/TrebleShot/GlideRequest;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    .line 243
    new-instance p1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v4, -0x2

    invoke-direct {p1, v3, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    const v3, 0x7f11007f

    .line 247
    invoke-virtual {v0, v3}, Lcom/google/android/material/bottomsheet/BottomSheetDialog;->setTitle(I)V

    .line 248
    invoke-virtual {v0, v2, p1}, Lcom/google/android/material/bottomsheet/BottomSheetDialog;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 249
    invoke-virtual {v0}, Lcom/google/android/material/bottomsheet/BottomSheetDialog;->show()V
    :try_end_13b
    .catch Lcom/google/zxing/WriterException; {:try_start_ea .. :try_end_13b} :catch_13c

    goto :goto_164

    :catch_13c
    const p1, 0x7f110107

    .line 251
    invoke-static {p0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_164

    :cond_147
    const v1, 0x102002c

    if-ne v0, v1, :cond_150

    .line 255
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/activity/TextEditorActivity;->onBackPressed()V

    goto :goto_164

    :cond_150
    const v1, 0x7f09015f

    if-ne v0, v1, :cond_166

    .line 257
    iget-object p1, p0, Lcom/genonbeta/TrebleShot/activity/TextEditorActivity;->mTextStreamObject:Lcom/genonbeta/TrebleShot/object/TextStreamObject;

    if-eqz p1, :cond_162

    .line 258
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/activity/TextEditorActivity;->getDatabase()Lcom/genonbeta/TrebleShot/database/AccessDatabase;

    move-result-object p1

    iget-object v0, p0, Lcom/genonbeta/TrebleShot/activity/TextEditorActivity;->mTextStreamObject:Lcom/genonbeta/TrebleShot/object/TextStreamObject;

    invoke-virtual {p1, v0}, Lcom/genonbeta/TrebleShot/database/AccessDatabase;->remove(Lcom/genonbeta/android/database/DatabaseObject;)V

    .line 260
    :cond_162
    iput-object v4, p0, Lcom/genonbeta/TrebleShot/activity/TextEditorActivity;->mTextStreamObject:Lcom/genonbeta/TrebleShot/object/TextStreamObject;

    :cond_164
    :goto_164
    const/4 p1, 0x1

    return p1

    .line 262
    :cond_166
    invoke-super {p0, p1}, Lcom/genonbeta/TrebleShot/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .registers 7

    .line 172
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/activity/TextEditorActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_20

    .line 173
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/activity/TextEditorActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v3, "extraSupportApply"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 174
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/activity/TextEditorActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_20

    const/4 v0, 0x1

    goto :goto_21

    :cond_20
    const/4 v0, 0x0

    :goto_21
    const v3, 0x7f09015e

    .line 176
    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    .line 177
    invoke-interface {v3, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const v3, 0x7f090161

    .line 179
    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    xor-int/lit8 v4, v0, 0x1

    .line 180
    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const v3, 0x7f090162

    .line 182
    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    xor-int/2addr v0, v2

    .line 183
    invoke-interface {v3, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const v0, 0x7f09015f

    .line 185
    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iget-object v3, p0, Lcom/genonbeta/TrebleShot/activity/TextEditorActivity;->mTextStreamObject:Lcom/genonbeta/TrebleShot/object/TextStreamObject;

    if-eqz v3, :cond_4f

    const/4 v3, 0x1

    goto :goto_50

    :cond_4f
    const/4 v3, 0x0

    :goto_50
    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const v0, 0x7f090163

    .line 187
    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iget-object v3, p0, Lcom/genonbeta/TrebleShot/activity/TextEditorActivity;->mEditTextEditor:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->length()I

    move-result v3

    if-lez v3, :cond_6d

    iget-object v3, p0, Lcom/genonbeta/TrebleShot/activity/TextEditorActivity;->mEditTextEditor:Landroid/widget/EditText;

    .line 188
    invoke-virtual {v3}, Landroid/widget/EditText;->length()I

    move-result v3

    const/16 v4, 0x4b0

    if-gt v3, v4, :cond_6d

    const/4 v1, 0x1

    .line 187
    :cond_6d
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 190
    invoke-super {p0, p1}, Lcom/genonbeta/TrebleShot/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result p1

    return p1
.end method

.method public saveText()V
    .registers 6

    .line 332
    iget-object v0, p0, Lcom/genonbeta/TrebleShot/activity/TextEditorActivity;->mTextStreamObject:Lcom/genonbeta/TrebleShot/object/TextStreamObject;

    if-nez v0, :cond_10

    .line 333
    new-instance v0, Lcom/genonbeta/TrebleShot/object/TextStreamObject;

    invoke-static {}, Lcom/genonbeta/TrebleShot/util/AppUtils;->getUniqueNumber()I

    move-result v1

    int-to-long v1, v1

    invoke-direct {v0, v1, v2}, Lcom/genonbeta/TrebleShot/object/TextStreamObject;-><init>(J)V

    iput-object v0, p0, Lcom/genonbeta/TrebleShot/activity/TextEditorActivity;->mTextStreamObject:Lcom/genonbeta/TrebleShot/object/TextStreamObject;

    .line 335
    :cond_10
    iget-object v0, p0, Lcom/genonbeta/TrebleShot/activity/TextEditorActivity;->mTextStreamObject:Lcom/genonbeta/TrebleShot/object/TextStreamObject;

    iget-wide v0, v0, Lcom/genonbeta/TrebleShot/object/TextStreamObject;->date:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_22

    .line 336
    iget-object v0, p0, Lcom/genonbeta/TrebleShot/activity/TextEditorActivity;->mTextStreamObject:Lcom/genonbeta/TrebleShot/object/TextStreamObject;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/genonbeta/TrebleShot/object/TextStreamObject;->date:J

    .line 338
    :cond_22
    iget-object v0, p0, Lcom/genonbeta/TrebleShot/activity/TextEditorActivity;->mTextStreamObject:Lcom/genonbeta/TrebleShot/object/TextStreamObject;

    iget-object v1, p0, Lcom/genonbeta/TrebleShot/activity/TextEditorActivity;->mEditTextEditor:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/genonbeta/TrebleShot/object/TextStreamObject;->text:Ljava/lang/String;

    .line 339
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/activity/TextEditorActivity;->getDatabase()Lcom/genonbeta/TrebleShot/database/AccessDatabase;

    move-result-object v0

    iget-object v1, p0, Lcom/genonbeta/TrebleShot/activity/TextEditorActivity;->mTextStreamObject:Lcom/genonbeta/TrebleShot/object/TextStreamObject;

    invoke-virtual {v0, v1}, Lcom/genonbeta/TrebleShot/database/AccessDatabase;->publish(Lcom/genonbeta/android/database/DatabaseObject;)V

    return-void
.end method
