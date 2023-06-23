.class public Lcom/genonbeta/TrebleShot/widget/GroupEditableListAdapter$GroupShareable;
.super Lcom/genonbeta/TrebleShot/object/Shareable;
.source "GroupEditableListAdapter.java"

# interfaces
.implements Lcom/genonbeta/TrebleShot/widget/GroupEditableListAdapter$GroupEditable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/genonbeta/TrebleShot/widget/GroupEditableListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GroupShareable"
.end annotation


# instance fields
.field public representativeText:Ljava/lang/String;

.field public viewType:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 165
    invoke-direct {p0}, Lcom/genonbeta/TrebleShot/object/Shareable;-><init>()V

    const/4 v0, 0x0

    .line 160
    iput v0, p0, Lcom/genonbeta/TrebleShot/widget/GroupEditableListAdapter$GroupShareable;->viewType:I

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .registers 4

    .line 169
    invoke-direct {p0}, Lcom/genonbeta/TrebleShot/object/Shareable;-><init>()V

    const/4 v0, 0x0

    .line 160
    iput v0, p0, Lcom/genonbeta/TrebleShot/widget/GroupEditableListAdapter$GroupShareable;->viewType:I

    .line 170
    iput p1, p0, Lcom/genonbeta/TrebleShot/widget/GroupEditableListAdapter$GroupShareable;->viewType:I

    .line 171
    iput-object p2, p0, Lcom/genonbeta/TrebleShot/widget/GroupEditableListAdapter$GroupShareable;->representativeText:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;JJLandroid/net/Uri;)V
    .registers 11

    .line 176
    invoke-direct/range {p0 .. p10}, Lcom/genonbeta/TrebleShot/object/Shareable;-><init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;JJLandroid/net/Uri;)V

    const/4 p1, 0x0

    .line 160
    iput p1, p0, Lcom/genonbeta/TrebleShot/widget/GroupEditableListAdapter$GroupShareable;->viewType:I

    return-void
.end method


# virtual methods
.method public getRepresentativeText()Ljava/lang/String;
    .registers 2

    .line 194
    iget-object v0, p0, Lcom/genonbeta/TrebleShot/widget/GroupEditableListAdapter$GroupShareable;->representativeText:Ljava/lang/String;

    return-object v0
.end method

.method public getRequestCode()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public getViewType()I
    .registers 2

    .line 188
    iget v0, p0, Lcom/genonbeta/TrebleShot/widget/GroupEditableListAdapter$GroupShareable;->viewType:I

    return v0
.end method

.method public isGroupRepresentative()Z
    .registers 2

    .line 205
    iget-object v0, p0, Lcom/genonbeta/TrebleShot/widget/GroupEditableListAdapter$GroupShareable;->representativeText:Ljava/lang/String;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public searchMatches(Ljava/lang/String;)Z
    .registers 3

    .line 229
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/widget/GroupEditableListAdapter$GroupShareable;->isGroupRepresentative()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 230
    iget-object v0, p0, Lcom/genonbeta/TrebleShot/widget/GroupEditableListAdapter$GroupShareable;->representativeText:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/genonbeta/TrebleShot/util/TextUtils;->searchWord(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    return p1

    .line 232
    :cond_d
    invoke-super {p0, p1}, Lcom/genonbeta/TrebleShot/object/Shareable;->searchMatches(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public setDate(J)V
    .registers 3

    .line 211
    iput-wide p1, p0, Lcom/genonbeta/TrebleShot/widget/GroupEditableListAdapter$GroupShareable;->date:J

    return-void
.end method

.method public setRepresentativeText(Ljava/lang/CharSequence;)V
    .registers 2

    .line 200
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/genonbeta/TrebleShot/widget/GroupEditableListAdapter$GroupShareable;->representativeText:Ljava/lang/String;

    return-void
.end method

.method public setSelectableSelected(Z)Z
    .registers 3

    .line 223
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/widget/GroupEditableListAdapter$GroupShareable;->isGroupRepresentative()Z

    move-result v0

    if-nez v0, :cond_e

    invoke-super {p0, p1}, Lcom/genonbeta/TrebleShot/object/Shareable;->setSelectableSelected(Z)Z

    move-result p1

    if-eqz p1, :cond_e

    const/4 p1, 0x1

    goto :goto_f

    :cond_e
    const/4 p1, 0x0

    :goto_f
    return p1
.end method

.method public setSize(J)V
    .registers 3

    .line 217
    iput-wide p1, p0, Lcom/genonbeta/TrebleShot/widget/GroupEditableListAdapter$GroupShareable;->size:J

    return-void
.end method
