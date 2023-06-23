.class public Lcom/genonbeta/TrebleShot/activity/DonationActivity;
.super Lcom/genonbeta/TrebleShot/app/Activity;
.source "DonationActivity.java"


# instance fields
.field private mAnimation:Landroid/view/animation/Animation;

.field private mDeveloperText:Landroid/widget/TextView;

.field private mTexts:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 20
    invoke-direct {p0}, Lcom/genonbeta/TrebleShot/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 2

    .line 27
    invoke-super {p0, p1}, Lcom/genonbeta/TrebleShot/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c0025

    .line 28
    invoke-virtual {p0, p1}, Lcom/genonbeta/TrebleShot/activity/DonationActivity;->setContentView(I)V

    return-void
.end method
