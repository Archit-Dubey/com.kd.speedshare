.class public Lcom/genonbeta/TrebleShot/fragment/external/ThirdPartyLibraryListFragment$ModuleItem;
.super Ljava/lang/Object;
.source "ThirdPartyLibraryListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/genonbeta/TrebleShot/fragment/external/ThirdPartyLibraryListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ModuleItem"
.end annotation


# instance fields
.field public licence:Ljava/lang/String;

.field public licenceUrl:Ljava/lang/String;

.field public moduleName:Ljava/lang/String;

.field public moduleUrl:Ljava/lang/String;

.field public moduleVersion:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/json/JSONObject;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 197
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "moduleName"

    .line 198
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 199
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/genonbeta/TrebleShot/fragment/external/ThirdPartyLibraryListFragment$ModuleItem;->moduleName:Ljava/lang/String;

    :cond_11
    const-string v0, "moduleUrl"

    .line 201
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 202
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/genonbeta/TrebleShot/fragment/external/ThirdPartyLibraryListFragment$ModuleItem;->moduleUrl:Ljava/lang/String;

    :cond_1f
    const-string v0, "moduleVersion"

    .line 204
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2d

    .line 205
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/genonbeta/TrebleShot/fragment/external/ThirdPartyLibraryListFragment$ModuleItem;->moduleVersion:Ljava/lang/String;

    :cond_2d
    const-string v0, "moduleLicense"

    .line 207
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3b

    .line 208
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/genonbeta/TrebleShot/fragment/external/ThirdPartyLibraryListFragment$ModuleItem;->licence:Ljava/lang/String;

    :cond_3b
    const-string v0, "moduleLicenseUrl"

    .line 210
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_49

    .line 211
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/genonbeta/TrebleShot/fragment/external/ThirdPartyLibraryListFragment$ModuleItem;->licenceUrl:Ljava/lang/String;

    :cond_49
    return-void
.end method
