.class public Lcom/genonbeta/TrebleShot/activity/ChangelogActivity;
.super Lcom/genonbeta/TrebleShot/app/Activity;
.source "ChangelogActivity.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 15
    invoke-direct {p0}, Lcom/genonbeta/TrebleShot/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 3

    .line 20
    invoke-super {p0, p1}, Lcom/genonbeta/TrebleShot/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c0022

    .line 21
    invoke-virtual {p0, p1}, Lcom/genonbeta/TrebleShot/activity/ChangelogActivity;->setContentView(I)V

    .line 23
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/activity/ChangelogActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object p1

    if-eqz p1, :cond_17

    .line 24
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/activity/ChangelogActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    :cond_17
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 4

    .line 30
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_e

    .line 33
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/activity/ChangelogActivity;->finish()V

    const/4 p1, 0x1

    return p1

    .line 35
    :cond_e
    invoke-super {p0, p1}, Lcom/genonbeta/TrebleShot/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method
