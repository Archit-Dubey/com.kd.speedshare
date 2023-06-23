.class public Lcom/genonbeta/TrebleShot/dialog/TransferInfoDialog;
.super Landroidx/appcompat/app/AlertDialog$Builder;
.source "TransferInfoDialog.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/genonbeta/TrebleShot/object/TransferObject;)V
    .registers 19

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    .line 35
    invoke-direct/range {p0 .. p1}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 37
    new-instance v0, Lcom/genonbeta/TrebleShot/object/TransferGroup;

    iget-wide v4, v3, Lcom/genonbeta/TrebleShot/object/TransferObject;->groupId:J

    invoke-direct {v0, v4, v5}, Lcom/genonbeta/TrebleShot/object/TransferGroup;-><init>(J)V

    .line 40
    :try_start_10
    invoke-static/range {p1 .. p1}, Lcom/genonbeta/TrebleShot/util/AppUtils;->getDatabase(Landroid/content/Context;)Lcom/genonbeta/TrebleShot/database/AccessDatabase;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/genonbeta/TrebleShot/database/AccessDatabase;->reconstruct(Lcom/genonbeta/android/database/DatabaseObject;)V

    .line 41
    invoke-static/range {p1 .. p1}, Lcom/genonbeta/TrebleShot/util/AppUtils;->getDatabase(Landroid/content/Context;)Lcom/genonbeta/TrebleShot/database/AccessDatabase;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/genonbeta/TrebleShot/database/AccessDatabase;->reconstruct(Lcom/genonbeta/android/database/DatabaseObject;)V

    .line 44
    sget-object v4, Lcom/genonbeta/TrebleShot/object/TransferObject$Type;->INCOMING:Lcom/genonbeta/TrebleShot/object/TransferObject$Type;

    iget-object v5, v3, Lcom/genonbeta/TrebleShot/object/TransferObject;->type:Lcom/genonbeta/TrebleShot/object/TransferObject$Type;

    invoke-virtual {v4, v5}, Lcom/genonbeta/TrebleShot/object/TransferObject$Type;->equals(Ljava/lang/Object;)Z

    move-result v4
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_26} :catch_177

    const/4 v5, 0x0

    const/4 v6, 0x0

    if-eqz v4, :cond_33

    .line 50
    :try_start_2a
    invoke-virtual/range {p0 .. p0}, Lcom/genonbeta/TrebleShot/dialog/TransferInfoDialog;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7, v3, v0, v6}, Lcom/genonbeta/TrebleShot/util/FileUtils;->getIncomingPseudoFile(Landroid/content/Context;Lcom/genonbeta/TrebleShot/object/TransferObject;Lcom/genonbeta/TrebleShot/object/TransferGroup;Z)Lcom/genonbeta/android/framework/io/DocumentFile;

    move-result-object v0

    goto :goto_47

    .line 51
    :cond_33
    invoke-virtual/range {p0 .. p0}, Lcom/genonbeta/TrebleShot/dialog/TransferInfoDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v7, v3, Lcom/genonbeta/TrebleShot/object/TransferObject;->file:Ljava/lang/String;

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    invoke-static {v0, v7}, Lcom/genonbeta/TrebleShot/util/FileUtils;->fromUri(Landroid/content/Context;Landroid/net/Uri;)Lcom/genonbeta/android/framework/io/DocumentFile;

    move-result-object v0
    :try_end_41
    .catch Ljava/lang/Exception; {:try_start_2a .. :try_end_41} :catch_42

    goto :goto_47

    :catch_42
    move-exception v0

    .line 53
    :try_start_43
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move-object v0, v5

    :goto_47
    if-eqz v0, :cond_51

    .line 57
    invoke-virtual {v0}, Lcom/genonbeta/android/framework/io/DocumentFile;->canRead()Z

    move-result v7

    if-eqz v7, :cond_51

    const/4 v7, 0x1

    goto :goto_52

    :cond_51
    const/4 v7, 0x0

    .line 60
    :goto_52
    invoke-static/range {p1 .. p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v8

    const v9, 0x7f0c006f

    invoke-virtual {v8, v9, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v8

    const v9, 0x7f090207

    .line 62
    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    const v10, 0x7f090208

    .line 63
    invoke-virtual {v8, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    const v11, 0x7f090206

    .line 64
    invoke-virtual {v8, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    const v12, 0x7f090209

    .line 65
    invoke-virtual {v8, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    const v13, 0x7f09020a

    .line 67
    invoke-virtual {v8, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    const v14, 0x7f09020c

    .line 68
    invoke-virtual {v8, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    const v15, 0x7f09020b

    .line 69
    invoke-virtual {v8, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/TextView;

    const v5, 0x7f110236

    .line 71
    invoke-virtual {v1, v5}, Lcom/genonbeta/TrebleShot/dialog/TransferInfoDialog;->setTitle(I)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 72
    invoke-virtual {v1, v8}, Lcom/genonbeta/TrebleShot/dialog/TransferInfoDialog;->setView(Landroid/view/View;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 74
    iget-object v5, v3, Lcom/genonbeta/TrebleShot/object/TransferObject;->friendlyName:Ljava/lang/String;

    invoke-virtual {v9, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 75
    iget-wide v8, v3, Lcom/genonbeta/TrebleShot/object/TransferObject;->fileSize:J

    invoke-static {v8, v9, v6}, Lcom/genonbeta/TrebleShot/util/FileUtils;->sizeExpression(JZ)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v10, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 76
    iget-object v5, v3, Lcom/genonbeta/TrebleShot/object/TransferObject;->fileMimeType:Ljava/lang/String;

    invoke-virtual {v11, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 77
    iget-object v5, v3, Lcom/genonbeta/TrebleShot/object/TransferObject;->flag:Lcom/genonbeta/TrebleShot/object/TransferObject$Flag;

    invoke-static {v5}, Lcom/genonbeta/TrebleShot/util/TextUtils;->getTransactionFlagString(Lcom/genonbeta/TrebleShot/object/TransferObject$Flag;)I

    move-result v5

    invoke-virtual {v12, v5}, Landroid/widget/TextView;->setText(I)V

    const v5, 0x7f110244

    if-eqz v7, :cond_cd

    .line 80
    invoke-virtual {v0}, Lcom/genonbeta/android/framework/io/DocumentFile;->length()J

    move-result-wide v8

    invoke-static {v8, v9, v6}, Lcom/genonbeta/TrebleShot/util/FileUtils;->sizeExpression(JZ)Ljava/lang/String;

    move-result-object v8

    goto :goto_d5

    .line 81
    :cond_cd
    invoke-virtual/range {p0 .. p0}, Lcom/genonbeta/TrebleShot/dialog/TransferInfoDialog;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 79
    :goto_d5
    invoke-virtual {v14, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-eqz v7, :cond_e3

    .line 84
    invoke-virtual {v0}, Lcom/genonbeta/android/framework/io/DocumentFile;->getUri()Landroid/net/Uri;

    move-result-object v5

    invoke-static {v5}, Lcom/genonbeta/TrebleShot/util/FileUtils;->getReadableUri(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v5

    goto :goto_eb

    .line 85
    :cond_e3
    invoke-virtual/range {p0 .. p0}, Lcom/genonbeta/TrebleShot/dialog/TransferInfoDialog;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 83
    :goto_eb
    invoke-virtual {v15, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v5, 0x7f110033

    const/4 v8, 0x0

    .line 87
    invoke-virtual {v1, v5, v8}, Lcom/genonbeta/TrebleShot/dialog/TransferInfoDialog;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    const v5, 0x7f110063

    .line 88
    new-instance v8, Lcom/genonbeta/TrebleShot/dialog/TransferInfoDialog$1;

    invoke-direct {v8, v1, v3, v2}, Lcom/genonbeta/TrebleShot/dialog/TransferInfoDialog$1;-><init>(Lcom/genonbeta/TrebleShot/dialog/TransferInfoDialog;Lcom/genonbeta/TrebleShot/object/TransferObject;Landroid/content/Context;)V

    invoke-virtual {v1, v5, v8}, Lcom/genonbeta/TrebleShot/dialog/TransferInfoDialog;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    const v5, 0x7f110058

    if-eqz v4, :cond_15a

    .line 111
    invoke-virtual {v13, v6}, Landroid/view/View;->setVisibility(I)V

    .line 113
    sget-object v4, Lcom/genonbeta/TrebleShot/object/TransferObject$Flag;->INTERRUPTED:Lcom/genonbeta/TrebleShot/object/TransferObject$Flag;

    iget-object v6, v3, Lcom/genonbeta/TrebleShot/object/TransferObject;->flag:Lcom/genonbeta/TrebleShot/object/TransferObject$Flag;

    invoke-virtual {v4, v6}, Lcom/genonbeta/TrebleShot/object/TransferObject$Flag;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_14e

    sget-object v4, Lcom/genonbeta/TrebleShot/object/TransferObject$Flag;->IN_PROGRESS:Lcom/genonbeta/TrebleShot/object/TransferObject$Flag;

    iget-object v6, v3, Lcom/genonbeta/TrebleShot/object/TransferObject;->flag:Lcom/genonbeta/TrebleShot/object/TransferObject$Flag;

    .line 114
    invoke-virtual {v4, v6}, Lcom/genonbeta/TrebleShot/object/TransferObject$Flag;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_11d

    goto :goto_14e

    :cond_11d
    if-eqz v7, :cond_17b

    .line 125
    sget-object v4, Lcom/genonbeta/TrebleShot/object/TransferObject$Flag;->REMOVED:Lcom/genonbeta/TrebleShot/object/TransferObject$Flag;

    iget-object v6, v3, Lcom/genonbeta/TrebleShot/object/TransferObject;->flag:Lcom/genonbeta/TrebleShot/object/TransferObject$Flag;

    invoke-virtual {v4, v6}, Lcom/genonbeta/TrebleShot/object/TransferObject$Flag;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_13b

    .line 126
    invoke-virtual {v0}, Lcom/genonbeta/android/framework/io/DocumentFile;->getParentFile()Lcom/genonbeta/android/framework/io/DocumentFile;

    move-result-object v4

    if-eqz v4, :cond_13b

    const v4, 0x7f11006d

    .line 127
    new-instance v5, Lcom/genonbeta/TrebleShot/dialog/TransferInfoDialog$3;

    invoke-direct {v5, v1, v0, v3, v2}, Lcom/genonbeta/TrebleShot/dialog/TransferInfoDialog$3;-><init>(Lcom/genonbeta/TrebleShot/dialog/TransferInfoDialog;Lcom/genonbeta/android/framework/io/DocumentFile;Lcom/genonbeta/TrebleShot/object/TransferObject;Landroid/content/Context;)V

    invoke-virtual {v1, v4, v5}, Lcom/genonbeta/TrebleShot/dialog/TransferInfoDialog;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    goto :goto_17b

    .line 160
    :cond_13b
    sget-object v2, Lcom/genonbeta/TrebleShot/object/TransferObject$Flag;->DONE:Lcom/genonbeta/TrebleShot/object/TransferObject$Flag;

    iget-object v3, v3, Lcom/genonbeta/TrebleShot/object/TransferObject;->flag:Lcom/genonbeta/TrebleShot/object/TransferObject$Flag;

    invoke-virtual {v2, v3}, Lcom/genonbeta/TrebleShot/object/TransferObject$Flag;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17b

    .line 161
    new-instance v2, Lcom/genonbeta/TrebleShot/dialog/TransferInfoDialog$4;

    invoke-direct {v2, v1, v0}, Lcom/genonbeta/TrebleShot/dialog/TransferInfoDialog$4;-><init>(Lcom/genonbeta/TrebleShot/dialog/TransferInfoDialog;Lcom/genonbeta/android/framework/io/DocumentFile;)V

    invoke-virtual {v1, v5, v2}, Lcom/genonbeta/TrebleShot/dialog/TransferInfoDialog;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    goto :goto_17b

    :cond_14e
    :goto_14e
    const v0, 0x7f110069

    .line 115
    new-instance v4, Lcom/genonbeta/TrebleShot/dialog/TransferInfoDialog$2;

    invoke-direct {v4, v1, v3, v2}, Lcom/genonbeta/TrebleShot/dialog/TransferInfoDialog$2;-><init>(Lcom/genonbeta/TrebleShot/dialog/TransferInfoDialog;Lcom/genonbeta/TrebleShot/object/TransferObject;Landroid/content/Context;)V

    invoke-virtual {v1, v0, v4}, Lcom/genonbeta/TrebleShot/dialog/TransferInfoDialog;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    goto :goto_17b

    .line 175
    :cond_15a
    sget-object v2, Lcom/genonbeta/TrebleShot/object/TransferObject$Type;->OUTGOING:Lcom/genonbeta/TrebleShot/object/TransferObject$Type;

    iget-object v3, v3, Lcom/genonbeta/TrebleShot/object/TransferObject;->type:Lcom/genonbeta/TrebleShot/object/TransferObject$Type;

    invoke-virtual {v2, v3}, Lcom/genonbeta/TrebleShot/object/TransferObject$Type;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_162
    .catch Ljava/lang/Exception; {:try_start_43 .. :try_end_162} :catch_177

    if-eqz v2, :cond_17b

    if-eqz v7, :cond_17b

    .line 179
    :try_start_166
    invoke-virtual/range {p0 .. p0}, Lcom/genonbeta/TrebleShot/dialog/TransferInfoDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/genonbeta/TrebleShot/util/FileUtils;->getOpenIntent(Landroid/content/Context;Lcom/genonbeta/android/framework/io/DocumentFile;)Landroid/content/Intent;

    move-result-object v0

    .line 181
    new-instance v2, Lcom/genonbeta/TrebleShot/dialog/TransferInfoDialog$5;

    invoke-direct {v2, v1, v0}, Lcom/genonbeta/TrebleShot/dialog/TransferInfoDialog$5;-><init>(Lcom/genonbeta/TrebleShot/dialog/TransferInfoDialog;Landroid/content/Intent;)V

    invoke-virtual {v1, v5, v2}, Lcom/genonbeta/TrebleShot/dialog/TransferInfoDialog;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;
    :try_end_176
    .catch Ljava/lang/Exception; {:try_start_166 .. :try_end_176} :catch_17b

    goto :goto_17b

    :catch_177
    move-exception v0

    .line 199
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :catch_17b
    :cond_17b
    :goto_17b
    return-void
.end method
