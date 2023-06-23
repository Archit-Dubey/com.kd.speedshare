.class public Lcom/genonbeta/TrebleShot/dialog/DeviceInfoDialog;
.super Landroidx/appcompat/app/AlertDialog$Builder;
.source "DeviceInfoDialog.java"


# static fields
.field public static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 47
    const-class v0, Lcom/genonbeta/TrebleShot/dialog/DeviceInfoDialog;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/genonbeta/TrebleShot/dialog/DeviceInfoDialog;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Lcom/genonbeta/TrebleShot/database/AccessDatabase;Lcom/genonbeta/TrebleShot/object/NetworkDevice;)V
    .registers 20

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    .line 52
    invoke-direct/range {p0 .. p1}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 55
    :try_start_b
    invoke-virtual/range {p2 .. p3}, Lcom/genonbeta/TrebleShot/database/AccessDatabase;->reconstruct(Lcom/genonbeta/android/database/DatabaseObject;)V

    .line 58
    invoke-static/range {p1 .. p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    const v5, 0x7f0c005b

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 60
    invoke-static/range {p1 .. p1}, Lcom/genonbeta/TrebleShot/util/AppUtils;->getLocalDevice(Landroid/content/Context;)Lcom/genonbeta/TrebleShot/object/NetworkDevice;

    move-result-object v5

    const v7, 0x7f09010f

    .line 61
    invoke-virtual {v4, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    const v8, 0x7f0901ea

    .line 62
    invoke-virtual {v4, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    const v9, 0x7f090181

    .line 63
    invoke-virtual {v4, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    const v10, 0x7f090172

    .line 64
    invoke-virtual {v4, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    const v11, 0x7f090218

    .line 65
    invoke-virtual {v4, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    const v12, 0x7f090009

    .line 66
    invoke-virtual {v4, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroidx/appcompat/widget/SwitchCompat;

    const v13, 0x7f090212

    .line 67
    invoke-virtual {v4, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroidx/appcompat/widget/SwitchCompat;

    .line 69
    iget v14, v3, Lcom/genonbeta/TrebleShot/object/NetworkDevice;->versionNumber:I

    const/16 v15, 0x3e

    const/4 v6, 0x0

    if-ge v14, v15, :cond_67

    .line 70
    invoke-virtual {v9, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 72
    :cond_67
    iget v5, v5, Lcom/genonbeta/TrebleShot/object/NetworkDevice;->versionNumber:I

    iget v9, v3, Lcom/genonbeta/TrebleShot/object/NetworkDevice;->versionNumber:I

    if-lt v5, v9, :cond_6e

    goto :goto_79

    :cond_6e
    const v5, 0x7f110092

    .line 73
    new-instance v9, Lcom/genonbeta/TrebleShot/dialog/DeviceInfoDialog$1;

    invoke-direct {v9, v1, v0, v3}, Lcom/genonbeta/TrebleShot/dialog/DeviceInfoDialog$1;-><init>(Lcom/genonbeta/TrebleShot/dialog/DeviceInfoDialog;Landroid/app/Activity;Lcom/genonbeta/TrebleShot/object/NetworkDevice;)V

    invoke-virtual {v1, v5, v9}, Lcom/genonbeta/TrebleShot/dialog/DeviceInfoDialog;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 89
    :goto_79
    invoke-static/range {p1 .. p1}, Lcom/genonbeta/TrebleShot/util/AppUtils;->getDefaultIconBuilder(Landroid/content/Context;)Lcom/genonbeta/TrebleShot/graphics/drawable/TextDrawable$IShapeBuilder;

    move-result-object v5

    invoke-static {v3, v7, v5}, Lcom/genonbeta/TrebleShot/util/NetworkDeviceLoader;->showPictureIntoView(Lcom/genonbeta/TrebleShot/object/NetworkDevice;Landroid/widget/ImageView;Lcom/genonbeta/TrebleShot/graphics/drawable/TextDrawable$IShapeBuilder;)V

    .line 90
    iget-object v5, v3, Lcom/genonbeta/TrebleShot/object/NetworkDevice;->nickname:Ljava/lang/String;

    invoke-virtual {v8, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string v5, "%s %s"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    .line 91
    iget-object v8, v3, Lcom/genonbeta/TrebleShot/object/NetworkDevice;->brand:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v6

    iget-object v8, v3, Lcom/genonbeta/TrebleShot/object/NetworkDevice;->model:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x1

    aput-object v8, v7, v9

    invoke-static {v5, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v10, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 92
    iget-object v5, v3, Lcom/genonbeta/TrebleShot/object/NetworkDevice;->versionName:Ljava/lang/String;

    invoke-virtual {v11, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 93
    iget-boolean v5, v3, Lcom/genonbeta/TrebleShot/object/NetworkDevice;->isRestricted:Z

    if-nez v5, :cond_ad

    const/4 v5, 0x1

    goto :goto_ae

    :cond_ad
    const/4 v5, 0x0

    :goto_ae
    invoke-virtual {v12, v5}, Landroidx/appcompat/widget/SwitchCompat;->setChecked(Z)V

    .line 94
    iget-boolean v5, v3, Lcom/genonbeta/TrebleShot/object/NetworkDevice;->isRestricted:Z

    if-nez v5, :cond_b6

    const/4 v6, 0x1

    :cond_b6
    invoke-virtual {v13, v6}, Landroidx/appcompat/widget/SwitchCompat;->setEnabled(Z)V

    .line 95
    iget-boolean v5, v3, Lcom/genonbeta/TrebleShot/object/NetworkDevice;->isTrusted:Z

    invoke-virtual {v13, v5}, Landroidx/appcompat/widget/SwitchCompat;->setChecked(Z)V

    .line 97
    new-instance v5, Lcom/genonbeta/TrebleShot/dialog/DeviceInfoDialog$2;

    invoke-direct {v5, v1, v3, v2, v13}, Lcom/genonbeta/TrebleShot/dialog/DeviceInfoDialog$2;-><init>(Lcom/genonbeta/TrebleShot/dialog/DeviceInfoDialog;Lcom/genonbeta/TrebleShot/object/NetworkDevice;Lcom/genonbeta/TrebleShot/database/AccessDatabase;Landroidx/appcompat/widget/SwitchCompat;)V

    invoke-virtual {v12, v5}, Landroidx/appcompat/widget/SwitchCompat;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 110
    new-instance v5, Lcom/genonbeta/TrebleShot/dialog/DeviceInfoDialog$3;

    invoke-direct {v5, v1, v3, v2}, Lcom/genonbeta/TrebleShot/dialog/DeviceInfoDialog$3;-><init>(Lcom/genonbeta/TrebleShot/dialog/DeviceInfoDialog;Lcom/genonbeta/TrebleShot/object/NetworkDevice;Lcom/genonbeta/TrebleShot/database/AccessDatabase;)V

    invoke-virtual {v13, v5}, Landroidx/appcompat/widget/SwitchCompat;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 122
    invoke-virtual {v1, v4}, Lcom/genonbeta/TrebleShot/dialog/DeviceInfoDialog;->setView(Landroid/view/View;)Landroidx/appcompat/app/AlertDialog$Builder;

    const v2, 0x7f110033

    const/4 v4, 0x0

    .line 123
    invoke-virtual {v1, v2, v4}, Lcom/genonbeta/TrebleShot/dialog/DeviceInfoDialog;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    const v2, 0x7f110063

    .line 125
    new-instance v4, Lcom/genonbeta/TrebleShot/dialog/DeviceInfoDialog$4;

    invoke-direct {v4, v1, v0, v3}, Lcom/genonbeta/TrebleShot/dialog/DeviceInfoDialog$4;-><init>(Lcom/genonbeta/TrebleShot/dialog/DeviceInfoDialog;Landroid/app/Activity;Lcom/genonbeta/TrebleShot/object/NetworkDevice;)V

    invoke-virtual {v1, v2, v4}, Lcom/genonbeta/TrebleShot/dialog/DeviceInfoDialog;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;
    :try_end_e3
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_e3} :catch_e4

    goto :goto_e8

    :catch_e4
    move-exception v0

    .line 135
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_e8
    return-void
.end method


# virtual methods
.method protected runReceiveTask(Landroid/app/Activity;Lcom/genonbeta/TrebleShot/object/NetworkDevice;Lcom/genonbeta/TrebleShot/object/NetworkDevice$Connection;)V
    .registers 5

    .line 142
    new-instance v0, Lcom/genonbeta/TrebleShot/dialog/DeviceInfoDialog$5;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/genonbeta/TrebleShot/dialog/DeviceInfoDialog$5;-><init>(Lcom/genonbeta/TrebleShot/dialog/DeviceInfoDialog;Landroid/app/Activity;Lcom/genonbeta/TrebleShot/object/NetworkDevice;Lcom/genonbeta/TrebleShot/object/NetworkDevice$Connection;)V

    .line 220
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/dialog/DeviceInfoDialog;->getContext()Landroid/content/Context;

    move-result-object p2

    const p3, 0x7f1100f5

    invoke-virtual {p2, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/genonbeta/TrebleShot/dialog/DeviceInfoDialog$5;->setTitle(Ljava/lang/String;)Lcom/genonbeta/TrebleShot/service/WorkerService$RunningTask;

    move-result-object p2

    .line 221
    invoke-virtual {p2, p1}, Lcom/genonbeta/TrebleShot/service/WorkerService$RunningTask;->run(Landroid/content/Context;)Z

    return-void
.end method
