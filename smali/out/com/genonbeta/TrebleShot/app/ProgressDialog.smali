.class public Lcom/genonbeta/TrebleShot/app/ProgressDialog;
.super Landroidx/appcompat/app/AlertDialog;
.source "ProgressDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/genonbeta/TrebleShot/app/ProgressDialog$ViewUpdateHandler;
    }
.end annotation


# static fields
.field public static final STYLE_HORIZONTAL:I = 0x1

.field public static final STYLE_SPINNER:I


# instance fields
.field private mHasStarted:Z

.field private mIncrementBy:I

.field private mIncrementSecondaryBy:I

.field private mIndeterminate:Z

.field private mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

.field private mMax:I

.field private mMessage:Ljava/lang/CharSequence;

.field private mMessageView:Landroid/widget/TextView;

.field private mProgress:Landroid/widget/ProgressBar;

.field private mProgressDrawable:Landroid/graphics/drawable/Drawable;

.field private mProgressNumber:Landroid/widget/TextView;

.field private mProgressNumberFormat:Ljava/lang/String;

.field private mProgressPercent:Landroid/widget/TextView;

.field private mProgressPercentFormat:Ljava/text/NumberFormat;

.field private mProgressStyle:I

.field private mProgressVal:I

.field private mSecondaryProgressVal:I

.field private mViewUpdateHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 64
    invoke-direct {p0, p1}, Landroidx/appcompat/app/AlertDialog;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 38
    iput p1, p0, Lcom/genonbeta/TrebleShot/app/ProgressDialog;->mProgressStyle:I

    .line 65
    invoke-direct {p0}, Lcom/genonbeta/TrebleShot/app/ProgressDialog;->initFormats()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .registers 3

    .line 78
    invoke-direct {p0, p1, p2}, Landroidx/appcompat/app/AlertDialog;-><init>(Landroid/content/Context;I)V

    const/4 p1, 0x0

    .line 38
    iput p1, p0, Lcom/genonbeta/TrebleShot/app/ProgressDialog;->mProgressStyle:I

    .line 79
    invoke-direct {p0}, Lcom/genonbeta/TrebleShot/app/ProgressDialog;->initFormats()V

    return-void
.end method

.method static synthetic access$100(Lcom/genonbeta/TrebleShot/app/ProgressDialog;)Landroid/widget/ProgressBar;
    .registers 1

    .line 22
    iget-object p0, p0, Lcom/genonbeta/TrebleShot/app/ProgressDialog;->mProgress:Landroid/widget/ProgressBar;

    return-object p0
.end method

.method static synthetic access$200(Lcom/genonbeta/TrebleShot/app/ProgressDialog;)Ljava/lang/String;
    .registers 1

    .line 22
    iget-object p0, p0, Lcom/genonbeta/TrebleShot/app/ProgressDialog;->mProgressNumberFormat:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$300(Lcom/genonbeta/TrebleShot/app/ProgressDialog;)Landroid/widget/TextView;
    .registers 1

    .line 22
    iget-object p0, p0, Lcom/genonbeta/TrebleShot/app/ProgressDialog;->mProgressNumber:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$400(Lcom/genonbeta/TrebleShot/app/ProgressDialog;)Ljava/text/NumberFormat;
    .registers 1

    .line 22
    iget-object p0, p0, Lcom/genonbeta/TrebleShot/app/ProgressDialog;->mProgressPercentFormat:Ljava/text/NumberFormat;

    return-object p0
.end method

.method static synthetic access$500(Lcom/genonbeta/TrebleShot/app/ProgressDialog;)Landroid/widget/TextView;
    .registers 1

    .line 22
    iget-object p0, p0, Lcom/genonbeta/TrebleShot/app/ProgressDialog;->mProgressPercent:Landroid/widget/TextView;

    return-object p0
.end method

.method private initFormats()V
    .registers 3

    const-string v0, "%1d/%2d"

    .line 160
    iput-object v0, p0, Lcom/genonbeta/TrebleShot/app/ProgressDialog;->mProgressNumberFormat:Ljava/lang/String;

    .line 161
    invoke-static {}, Ljava/text/NumberFormat;->getPercentInstance()Ljava/text/NumberFormat;

    move-result-object v0

    iput-object v0, p0, Lcom/genonbeta/TrebleShot/app/ProgressDialog;->mProgressPercentFormat:Ljava/text/NumberFormat;

    const/4 v1, 0x0

    .line 162
    invoke-virtual {v0, v1}, Ljava/text/NumberFormat;->setMaximumFractionDigits(I)V

    return-void
.end method

.method private onProgressChanged()V
    .registers 3

    .line 467
    iget v0, p0, Lcom/genonbeta/TrebleShot/app/ProgressDialog;->mProgressStyle:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_15

    .line 468
    iget-object v0, p0, Lcom/genonbeta/TrebleShot/app/ProgressDialog;->mViewUpdateHandler:Landroid/os/Handler;

    if-eqz v0, :cond_15

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_15

    .line 469
    iget-object v0, p0, Lcom/genonbeta/TrebleShot/app/ProgressDialog;->mViewUpdateHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_15
    return-void
.end method

.method public static show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Lcom/genonbeta/TrebleShot/app/ProgressDialog;
    .registers 4

    const/4 v0, 0x0

    .line 93
    invoke-static {p0, p1, p2, v0}, Lcom/genonbeta/TrebleShot/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Lcom/genonbeta/TrebleShot/app/ProgressDialog;

    move-result-object p0

    return-object p0
.end method

.method public static show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Lcom/genonbeta/TrebleShot/app/ProgressDialog;
    .registers 10

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    .line 109
    invoke-static/range {v0 .. v5}, Lcom/genonbeta/TrebleShot/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZLandroid/content/DialogInterface$OnCancelListener;)Lcom/genonbeta/TrebleShot/app/ProgressDialog;

    move-result-object p0

    return-object p0
.end method

.method public static show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Lcom/genonbeta/TrebleShot/app/ProgressDialog;
    .registers 11

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    .line 127
    invoke-static/range {v0 .. v5}, Lcom/genonbeta/TrebleShot/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZLandroid/content/DialogInterface$OnCancelListener;)Lcom/genonbeta/TrebleShot/app/ProgressDialog;

    move-result-object p0

    return-object p0
.end method

.method public static show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZLandroid/content/DialogInterface$OnCancelListener;)Lcom/genonbeta/TrebleShot/app/ProgressDialog;
    .registers 7

    .line 148
    new-instance v0, Lcom/genonbeta/TrebleShot/app/ProgressDialog;

    invoke-direct {v0, p0}, Lcom/genonbeta/TrebleShot/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 149
    invoke-virtual {v0, p1}, Lcom/genonbeta/TrebleShot/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 150
    invoke-virtual {v0, p2}, Lcom/genonbeta/TrebleShot/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 151
    invoke-virtual {v0, p3}, Lcom/genonbeta/TrebleShot/app/ProgressDialog;->setIndeterminate(Z)V

    .line 152
    invoke-virtual {v0, p4}, Lcom/genonbeta/TrebleShot/app/ProgressDialog;->setCancelable(Z)V

    .line 153
    invoke-virtual {v0, p5}, Lcom/genonbeta/TrebleShot/app/ProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 154
    invoke-virtual {v0}, Lcom/genonbeta/TrebleShot/app/ProgressDialog;->show()V

    return-object v0
.end method


# virtual methods
.method public getMax()I
    .registers 2

    .line 290
    iget-object v0, p0, Lcom/genonbeta/TrebleShot/app/ProgressDialog;->mProgress:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_9

    .line 291
    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getMax()I

    move-result v0

    return v0

    .line 293
    :cond_9
    iget v0, p0, Lcom/genonbeta/TrebleShot/app/ProgressDialog;->mMax:I

    return v0
.end method

.method public getProgress()I
    .registers 2

    .line 231
    iget-object v0, p0, Lcom/genonbeta/TrebleShot/app/ProgressDialog;->mProgress:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_9

    .line 232
    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getProgress()I

    move-result v0

    return v0

    .line 234
    :cond_9
    iget v0, p0, Lcom/genonbeta/TrebleShot/app/ProgressDialog;->mProgressVal:I

    return v0
.end method

.method public getSecondaryProgress()I
    .registers 2

    .line 260
    iget-object v0, p0, Lcom/genonbeta/TrebleShot/app/ProgressDialog;->mProgress:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_9

    .line 261
    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getSecondaryProgress()I

    move-result v0

    return v0

    .line 263
    :cond_9
    iget v0, p0, Lcom/genonbeta/TrebleShot/app/ProgressDialog;->mSecondaryProgressVal:I

    return v0
.end method

.method public incrementProgressBy(I)V
    .registers 3

    .line 317
    iget-object v0, p0, Lcom/genonbeta/TrebleShot/app/ProgressDialog;->mProgress:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_b

    .line 318
    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->incrementProgressBy(I)V

    .line 319
    invoke-direct {p0}, Lcom/genonbeta/TrebleShot/app/ProgressDialog;->onProgressChanged()V

    goto :goto_10

    .line 321
    :cond_b
    iget v0, p0, Lcom/genonbeta/TrebleShot/app/ProgressDialog;->mIncrementBy:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/genonbeta/TrebleShot/app/ProgressDialog;->mIncrementBy:I

    :goto_10
    return-void
.end method

.method public incrementSecondaryProgressBy(I)V
    .registers 3

    .line 333
    iget-object v0, p0, Lcom/genonbeta/TrebleShot/app/ProgressDialog;->mProgress:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_b

    .line 334
    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->incrementSecondaryProgressBy(I)V

    .line 335
    invoke-direct {p0}, Lcom/genonbeta/TrebleShot/app/ProgressDialog;->onProgressChanged()V

    goto :goto_10

    .line 337
    :cond_b
    iget v0, p0, Lcom/genonbeta/TrebleShot/app/ProgressDialog;->mIncrementSecondaryBy:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/genonbeta/TrebleShot/app/ProgressDialog;->mIncrementSecondaryBy:I

    :goto_10
    return-void
.end method

.method public isIndeterminate()Z
    .registers 2

    .line 379
    iget-object v0, p0, Lcom/genonbeta/TrebleShot/app/ProgressDialog;->mProgress:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_9

    .line 380
    invoke-virtual {v0}, Landroid/widget/ProgressBar;->isIndeterminate()Z

    move-result v0

    return v0

    .line 382
    :cond_9
    iget-boolean v0, p0, Lcom/genonbeta/TrebleShot/app/ProgressDialog;->mIndeterminate:Z

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 5

    .line 168
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/app/ProgressDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c0056

    const/4 v2, 0x0

    .line 170
    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 175
    new-instance v1, Lcom/genonbeta/TrebleShot/app/ProgressDialog$ViewUpdateHandler;

    invoke-direct {v1, p0, v2}, Lcom/genonbeta/TrebleShot/app/ProgressDialog$ViewUpdateHandler;-><init>(Lcom/genonbeta/TrebleShot/app/ProgressDialog;Lcom/genonbeta/TrebleShot/app/ProgressDialog$1;)V

    iput-object v1, p0, Lcom/genonbeta/TrebleShot/app/ProgressDialog;->mViewUpdateHandler:Landroid/os/Handler;

    const v1, 0x7f090198

    .line 176
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ProgressBar;

    iput-object v1, p0, Lcom/genonbeta/TrebleShot/app/ProgressDialog;->mProgress:Landroid/widget/ProgressBar;

    const v1, 0x7f09019c

    .line 177
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/genonbeta/TrebleShot/app/ProgressDialog;->mProgressNumber:Landroid/widget/TextView;

    const v1, 0x7f09019d

    .line 178
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/genonbeta/TrebleShot/app/ProgressDialog;->mProgressPercent:Landroid/widget/TextView;

    .line 179
    invoke-virtual {p0, v0}, Lcom/genonbeta/TrebleShot/app/ProgressDialog;->setView(Landroid/view/View;)V

    .line 181
    iget v0, p0, Lcom/genonbeta/TrebleShot/app/ProgressDialog;->mMax:I

    if-lez v0, :cond_42

    .line 182
    invoke-virtual {p0, v0}, Lcom/genonbeta/TrebleShot/app/ProgressDialog;->setMax(I)V

    .line 184
    :cond_42
    iget v0, p0, Lcom/genonbeta/TrebleShot/app/ProgressDialog;->mProgressVal:I

    if-lez v0, :cond_49

    .line 185
    invoke-virtual {p0, v0}, Lcom/genonbeta/TrebleShot/app/ProgressDialog;->setProgress(I)V

    .line 187
    :cond_49
    iget v0, p0, Lcom/genonbeta/TrebleShot/app/ProgressDialog;->mSecondaryProgressVal:I

    if-lez v0, :cond_50

    .line 188
    invoke-virtual {p0, v0}, Lcom/genonbeta/TrebleShot/app/ProgressDialog;->setSecondaryProgress(I)V

    .line 190
    :cond_50
    iget v0, p0, Lcom/genonbeta/TrebleShot/app/ProgressDialog;->mIncrementBy:I

    if-lez v0, :cond_57

    .line 191
    invoke-virtual {p0, v0}, Lcom/genonbeta/TrebleShot/app/ProgressDialog;->incrementProgressBy(I)V

    .line 193
    :cond_57
    iget v0, p0, Lcom/genonbeta/TrebleShot/app/ProgressDialog;->mIncrementSecondaryBy:I

    if-lez v0, :cond_5e

    .line 194
    invoke-virtual {p0, v0}, Lcom/genonbeta/TrebleShot/app/ProgressDialog;->incrementSecondaryProgressBy(I)V

    .line 196
    :cond_5e
    iget-object v0, p0, Lcom/genonbeta/TrebleShot/app/ProgressDialog;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_65

    .line 197
    invoke-virtual {p0, v0}, Lcom/genonbeta/TrebleShot/app/ProgressDialog;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 199
    :cond_65
    iget-object v0, p0, Lcom/genonbeta/TrebleShot/app/ProgressDialog;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_6c

    .line 200
    invoke-virtual {p0, v0}, Lcom/genonbeta/TrebleShot/app/ProgressDialog;->setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 202
    :cond_6c
    iget-object v0, p0, Lcom/genonbeta/TrebleShot/app/ProgressDialog;->mMessage:Ljava/lang/CharSequence;

    if-eqz v0, :cond_73

    .line 203
    invoke-virtual {p0, v0}, Lcom/genonbeta/TrebleShot/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 205
    :cond_73
    iget-boolean v0, p0, Lcom/genonbeta/TrebleShot/app/ProgressDialog;->mIndeterminate:Z

    invoke-virtual {p0, v0}, Lcom/genonbeta/TrebleShot/app/ProgressDialog;->setIndeterminate(Z)V

    .line 206
    invoke-direct {p0}, Lcom/genonbeta/TrebleShot/app/ProgressDialog;->onProgressChanged()V

    .line 207
    invoke-super {p0, p1}, Landroidx/appcompat/app/AlertDialog;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public onStart()V
    .registers 2

    .line 213
    invoke-super {p0}, Landroidx/appcompat/app/AlertDialog;->onStart()V

    const/4 v0, 0x1

    .line 214
    iput-boolean v0, p0, Lcom/genonbeta/TrebleShot/app/ProgressDialog;->mHasStarted:Z

    return-void
.end method

.method protected onStop()V
    .registers 2

    .line 220
    invoke-super {p0}, Landroidx/appcompat/app/AlertDialog;->onStop()V

    const/4 v0, 0x0

    .line 221
    iput-boolean v0, p0, Lcom/genonbeta/TrebleShot/app/ProgressDialog;->mHasStarted:Z

    return-void
.end method

.method public setIndeterminate(Z)V
    .registers 3

    .line 398
    iget-object v0, p0, Lcom/genonbeta/TrebleShot/app/ProgressDialog;->mProgress:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_8

    .line 399
    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    goto :goto_a

    .line 401
    :cond_8
    iput-boolean p1, p0, Lcom/genonbeta/TrebleShot/app/ProgressDialog;->mIndeterminate:Z

    :goto_a
    return-void
.end method

.method public setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 3

    .line 365
    iget-object v0, p0, Lcom/genonbeta/TrebleShot/app/ProgressDialog;->mProgress:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_8

    .line 366
    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_a

    .line 368
    :cond_8
    iput-object p1, p0, Lcom/genonbeta/TrebleShot/app/ProgressDialog;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    :goto_a
    return-void
.end method

.method public setMax(I)V
    .registers 3

    .line 301
    iget-object v0, p0, Lcom/genonbeta/TrebleShot/app/ProgressDialog;->mProgress:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_b

    .line 302
    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 303
    invoke-direct {p0}, Lcom/genonbeta/TrebleShot/app/ProgressDialog;->onProgressChanged()V

    goto :goto_d

    .line 305
    :cond_b
    iput p1, p0, Lcom/genonbeta/TrebleShot/app/ProgressDialog;->mMax:I

    :goto_d
    return-void
.end method

.method public setMessage(Ljava/lang/CharSequence;)V
    .registers 4

    .line 408
    iget-object v0, p0, Lcom/genonbeta/TrebleShot/app/ProgressDialog;->mProgress:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_13

    .line 409
    iget v0, p0, Lcom/genonbeta/TrebleShot/app/ProgressDialog;->mProgressStyle:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_d

    .line 410
    invoke-super {p0, p1}, Landroidx/appcompat/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_15

    .line 412
    :cond_d
    iget-object v0, p0, Lcom/genonbeta/TrebleShot/app/ProgressDialog;->mMessageView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_15

    .line 415
    :cond_13
    iput-object p1, p0, Lcom/genonbeta/TrebleShot/app/ProgressDialog;->mMessage:Ljava/lang/CharSequence;

    :goto_15
    return-void
.end method

.method public setProgress(I)V
    .registers 3

    .line 245
    iget-boolean v0, p0, Lcom/genonbeta/TrebleShot/app/ProgressDialog;->mHasStarted:Z

    if-eqz v0, :cond_d

    .line 246
    iget-object v0, p0, Lcom/genonbeta/TrebleShot/app/ProgressDialog;->mProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 247
    invoke-direct {p0}, Lcom/genonbeta/TrebleShot/app/ProgressDialog;->onProgressChanged()V

    goto :goto_f

    .line 249
    :cond_d
    iput p1, p0, Lcom/genonbeta/TrebleShot/app/ProgressDialog;->mProgressVal:I

    :goto_f
    return-void
.end method

.method public setProgressDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 3

    .line 349
    iget-object v0, p0, Lcom/genonbeta/TrebleShot/app/ProgressDialog;->mProgress:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_8

    .line 350
    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_a

    .line 352
    :cond_8
    iput-object p1, p0, Lcom/genonbeta/TrebleShot/app/ProgressDialog;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    :goto_a
    return-void
.end method

.method public setProgressNumberFormat(Ljava/lang/String;)V
    .registers 2

    .line 446
    iput-object p1, p0, Lcom/genonbeta/TrebleShot/app/ProgressDialog;->mProgressNumberFormat:Ljava/lang/String;

    .line 447
    invoke-direct {p0}, Lcom/genonbeta/TrebleShot/app/ProgressDialog;->onProgressChanged()V

    return-void
.end method

.method public setProgressPercentFormat(Ljava/text/NumberFormat;)V
    .registers 2

    .line 461
    iput-object p1, p0, Lcom/genonbeta/TrebleShot/app/ProgressDialog;->mProgressPercentFormat:Ljava/text/NumberFormat;

    .line 462
    invoke-direct {p0}, Lcom/genonbeta/TrebleShot/app/ProgressDialog;->onProgressChanged()V

    return-void
.end method

.method public setProgressStyle(I)V
    .registers 2

    .line 432
    iput p1, p0, Lcom/genonbeta/TrebleShot/app/ProgressDialog;->mProgressStyle:I

    return-void
.end method

.method public setSecondaryProgress(I)V
    .registers 3

    .line 275
    iget-object v0, p0, Lcom/genonbeta/TrebleShot/app/ProgressDialog;->mProgress:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_b

    .line 276
    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setSecondaryProgress(I)V

    .line 277
    invoke-direct {p0}, Lcom/genonbeta/TrebleShot/app/ProgressDialog;->onProgressChanged()V

    goto :goto_d

    .line 279
    :cond_b
    iput p1, p0, Lcom/genonbeta/TrebleShot/app/ProgressDialog;->mSecondaryProgressVal:I

    :goto_d
    return-void
.end method
