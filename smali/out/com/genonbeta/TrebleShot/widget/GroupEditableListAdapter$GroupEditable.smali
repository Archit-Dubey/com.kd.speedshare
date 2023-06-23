.class public interface abstract Lcom/genonbeta/TrebleShot/widget/GroupEditableListAdapter$GroupEditable;
.super Ljava/lang/Object;
.source "GroupEditableListAdapter.java"

# interfaces
.implements Lcom/genonbeta/TrebleShot/object/Editable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/genonbeta/TrebleShot/widget/GroupEditableListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "GroupEditable"
.end annotation


# virtual methods
.method public abstract getRepresentativeText()Ljava/lang/String;
.end method

.method public abstract getRequestCode()I
.end method

.method public abstract getViewType()I
.end method

.method public abstract isGroupRepresentative()Z
.end method

.method public abstract setDate(J)V
.end method

.method public abstract setRepresentativeText(Ljava/lang/CharSequence;)V
.end method

.method public abstract setSize(J)V
.end method
