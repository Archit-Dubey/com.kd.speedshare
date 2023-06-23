.class Lcom/anjlab/android/iab/v3/BillingBase;
.super Ljava/lang/Object;
.source "BillingBase.java"


# instance fields
.field private context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/anjlab/android/iab/v3/BillingBase;->context:Landroid/content/Context;

    return-void
.end method

.method private getPreferences()Landroid/content/SharedPreferences;
    .registers 2

    .line 43
    invoke-virtual {p0}, Lcom/anjlab/android/iab/v3/BillingBase;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method getContext()Landroid/content/Context;
    .registers 2

    .line 33
    iget-object v0, p0, Lcom/anjlab/android/iab/v3/BillingBase;->context:Landroid/content/Context;

    return-object v0
.end method

.method getPreferencesBaseKey()Ljava/lang/String;
    .registers 3

    .line 38
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/anjlab/android/iab/v3/BillingBase;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_preferences"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method loadBoolean(Ljava/lang/String;Z)Z
    .registers 4

    .line 84
    invoke-direct {p0}, Lcom/anjlab/android/iab/v3/BillingBase;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 87
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    return p1

    :cond_b
    return p2
.end method

.method loadString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 61
    invoke-direct {p0}, Lcom/anjlab/android/iab/v3/BillingBase;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 64
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_b
    return-object p2
.end method

.method saveBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Z
    .registers 4

    .line 71
    invoke-direct {p0}, Lcom/anjlab/android/iab/v3/BillingBase;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    if-eqz v0, :cond_16

    .line 74
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 75
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 76
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    const/4 p1, 0x1

    return p1

    :cond_16
    const/4 p1, 0x0

    return p1
.end method

.method saveString(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4

    .line 48
    invoke-direct {p0}, Lcom/anjlab/android/iab/v3/BillingBase;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    if-eqz v0, :cond_12

    .line 51
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 52
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 53
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    const/4 p1, 0x1

    return p1

    :cond_12
    const/4 p1, 0x0

    return p1
.end method
