.class public Lcom/genonbeta/TrebleShot/activity/ManageDevicesActivity;
.super Lcom/genonbeta/TrebleShot/app/Activity;
.source "ManageDevicesActivity.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 18
    invoke-direct {p0}, Lcom/genonbeta/TrebleShot/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 3

    .line 24
    invoke-super {p0, p1}, Lcom/genonbeta/TrebleShot/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c0029

    .line 25
    invoke-virtual {p0, p1}, Lcom/genonbeta/TrebleShot/activity/ManageDevicesActivity;->setContentView(I)V

    const p1, 0x7f0900f0

    .line 27
    invoke-virtual {p0, p1}, Lcom/genonbeta/TrebleShot/activity/ManageDevicesActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance v0, Lcom/genonbeta/TrebleShot/activity/ManageDevicesActivity$1;

    invoke-direct {v0, p0}, Lcom/genonbeta/TrebleShot/activity/ManageDevicesActivity$1;-><init>(Lcom/genonbeta/TrebleShot/activity/ManageDevicesActivity;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 38
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/activity/ManageDevicesActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object p1

    if-eqz p1, :cond_30

    .line 39
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/activity/ManageDevicesActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 40
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/activity/ManageDevicesActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object p1

    const v0, 0x7f0700ae

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/ActionBar;->setHomeAsUpIndicator(I)V

    :cond_30
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 4

    .line 47
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_e

    .line 50
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/activity/ManageDevicesActivity;->finish()V

    const/4 p1, 0x1

    return p1

    .line 52
    :cond_e
    invoke-super {p0, p1}, Lcom/genonbeta/TrebleShot/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method
