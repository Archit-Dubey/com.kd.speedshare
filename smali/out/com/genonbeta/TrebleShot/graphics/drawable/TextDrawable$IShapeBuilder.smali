.class public interface abstract Lcom/genonbeta/TrebleShot/graphics/drawable/TextDrawable$IShapeBuilder;
.super Ljava/lang/Object;
.source "TextDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/genonbeta/TrebleShot/graphics/drawable/TextDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "IShapeBuilder"
.end annotation


# virtual methods
.method public abstract beginConfig()Lcom/genonbeta/TrebleShot/graphics/drawable/TextDrawable$IConfigBuilder;
.end method

.method public abstract buildRect(Ljava/lang/String;)Lcom/genonbeta/TrebleShot/graphics/drawable/TextDrawable;
.end method

.method public abstract buildRound(Ljava/lang/String;)Lcom/genonbeta/TrebleShot/graphics/drawable/TextDrawable;
.end method

.method public abstract buildRoundRect(Ljava/lang/String;I)Lcom/genonbeta/TrebleShot/graphics/drawable/TextDrawable;
.end method

.method public abstract rect()Lcom/genonbeta/TrebleShot/graphics/drawable/TextDrawable$IBuilder;
.end method

.method public abstract round()Lcom/genonbeta/TrebleShot/graphics/drawable/TextDrawable$IBuilder;
.end method

.method public abstract roundRect(I)Lcom/genonbeta/TrebleShot/graphics/drawable/TextDrawable$IBuilder;
.end method
