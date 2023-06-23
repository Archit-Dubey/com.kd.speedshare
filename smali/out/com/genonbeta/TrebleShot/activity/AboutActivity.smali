.class public Lcom/genonbeta/TrebleShot/activity/AboutActivity;
.super Lcom/genonbeta/TrebleShot/app/Activity;
.source "AboutActivity.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 27
    invoke-direct {p0}, Lcom/genonbeta/TrebleShot/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 3

    .line 31
    invoke-super {p0, p1}, Lcom/genonbeta/TrebleShot/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c001f

    .line 32
    invoke-virtual {p0, p1}, Lcom/genonbeta/TrebleShot/activity/AboutActivity;->setContentView(I)V

    const p1, 0x7f090201

    .line 34
    invoke-virtual {p0, p1}, Lcom/genonbeta/TrebleShot/activity/AboutActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/Toolbar;

    .line 35
    invoke-virtual {p0, p1}, Lcom/genonbeta/TrebleShot/activity/AboutActivity;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    .line 37
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/activity/AboutActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object p1

    if-eqz p1, :cond_2d

    .line 38
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/activity/AboutActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object p1

    const v0, 0x7f0700ae

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/ActionBar;->setHomeAsUpIndicator(I)V

    .line 39
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/activity/AboutActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    :cond_2d
    const p1, 0x7f090187

    .line 42
    invoke-virtual {p0, p1}, Lcom/genonbeta/TrebleShot/activity/AboutActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance v0, Lcom/genonbeta/TrebleShot/activity/AboutActivity$1;

    invoke-direct {v0, p0}, Lcom/genonbeta/TrebleShot/activity/AboutActivity$1;-><init>(Lcom/genonbeta/TrebleShot/activity/AboutActivity;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f090076

    .line 49
    invoke-virtual {p0, p1}, Lcom/genonbeta/TrebleShot/activity/AboutActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance v0, Lcom/genonbeta/TrebleShot/activity/AboutActivity$2;

    invoke-direct {v0, p0}, Lcom/genonbeta/TrebleShot/activity/AboutActivity$2;-><init>(Lcom/genonbeta/TrebleShot/activity/AboutActivity;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f090078

    .line 58
    invoke-virtual {p0, p1}, Lcom/genonbeta/TrebleShot/activity/AboutActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance v0, Lcom/genonbeta/TrebleShot/activity/AboutActivity$3;

    invoke-direct {v0, p0}, Lcom/genonbeta/TrebleShot/activity/AboutActivity$3;-><init>(Lcom/genonbeta/TrebleShot/activity/AboutActivity;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f090077

    .line 65
    invoke-virtual {p0, p1}, Lcom/genonbeta/TrebleShot/activity/AboutActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance v0, Lcom/genonbeta/TrebleShot/activity/AboutActivity$4;

    invoke-direct {v0, p0}, Lcom/genonbeta/TrebleShot/activity/AboutActivity$4;-><init>(Lcom/genonbeta/TrebleShot/activity/AboutActivity;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f090074

    .line 72
    invoke-virtual {p0, p1}, Lcom/genonbeta/TrebleShot/activity/AboutActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance v0, Lcom/genonbeta/TrebleShot/activity/AboutActivity$5;

    invoke-direct {v0, p0}, Lcom/genonbeta/TrebleShot/activity/AboutActivity$5;-><init>(Lcom/genonbeta/TrebleShot/activity/AboutActivity;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 4

    .line 90
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/activity/AboutActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0d0007

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 91
    invoke-super {p0, p1}, Lcom/genonbeta/TrebleShot/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result p1

    return p1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 4

    .line 96
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_e

    .line 99
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/activity/AboutActivity;->finish()V

    const/4 p1, 0x1

    return p1

    .line 101
    :cond_e
    invoke-super {p0, p1}, Lcom/genonbeta/TrebleShot/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method
