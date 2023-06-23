.class public Lcom/genonbeta/TrebleShot/dialog/WebShareDetailsDialog;
.super Landroidx/appcompat/app/AlertDialog$Builder;
.source "WebShareDetailsDialog.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 6

    .line 30
    invoke-direct {p0, p1}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 32
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const v0, 0x7f0c0070

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    const v0, 0x7f09010f

    .line 33
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const v2, 0x7f0901e9

    .line 34
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 37
    invoke-virtual {p0, p1}, Lcom/genonbeta/TrebleShot/dialog/WebShareDetailsDialog;->setView(Landroid/view/View;)Landroidx/appcompat/app/AlertDialog$Builder;

    const p1, 0x7f110033

    .line 38
    invoke-virtual {p0, p1, v1}, Lcom/genonbeta/TrebleShot/dialog/WebShareDetailsDialog;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 40
    invoke-virtual {v2, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 43
    :try_start_2d
    new-instance p1, Lcom/google/zxing/MultiFormatWriter;

    invoke-direct {p1}, Lcom/google/zxing/MultiFormatWriter;-><init>()V

    .line 44
    sget-object v1, Lcom/google/zxing/BarcodeFormat;->QR_CODE:Lcom/google/zxing/BarcodeFormat;

    const/16 v2, 0x190

    invoke-virtual {p1, p2, v1, v2, v2}, Lcom/google/zxing/MultiFormatWriter;->encode(Ljava/lang/String;Lcom/google/zxing/BarcodeFormat;II)Lcom/google/zxing/common/BitMatrix;

    move-result-object p1

    .line 45
    new-instance p2, Lcom/journeyapps/barcodescanner/BarcodeEncoder;

    invoke-direct {p2}, Lcom/journeyapps/barcodescanner/BarcodeEncoder;-><init>()V

    .line 46
    invoke-virtual {p2, p1}, Lcom/journeyapps/barcodescanner/BarcodeEncoder;->createBitmap(Lcom/google/zxing/common/BitMatrix;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 48
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/dialog/WebShareDetailsDialog;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/genonbeta/TrebleShot/GlideApp;->with(Landroid/content/Context;)Lcom/genonbeta/TrebleShot/GlideRequests;

    move-result-object p2

    .line 49
    invoke-virtual {p2, p1}, Lcom/genonbeta/TrebleShot/GlideRequests;->load(Landroid/graphics/Bitmap;)Lcom/genonbeta/TrebleShot/GlideRequest;

    move-result-object p1

    .line 50
    invoke-virtual {p1, v0}, Lcom/genonbeta/TrebleShot/GlideRequest;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;
    :try_end_52
    .catch Lcom/google/zxing/WriterException; {:try_start_2d .. :try_end_52} :catch_53

    goto :goto_57

    :catch_53
    move-exception p1

    .line 52
    invoke-virtual {p1}, Lcom/google/zxing/WriterException;->printStackTrace()V

    :goto_57
    return-void
.end method
