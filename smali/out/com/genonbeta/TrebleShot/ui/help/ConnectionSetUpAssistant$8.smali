.class Lcom/genonbeta/TrebleShot/ui/help/ConnectionSetUpAssistant$8;
.super Ljava/lang/Object;
.source "ConnectionSetUpAssistant.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/genonbeta/TrebleShot/ui/help/ConnectionSetUpAssistant;->useHotspot()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/genonbeta/TrebleShot/ui/help/ConnectionSetUpAssistant;


# direct methods
.method constructor <init>(Lcom/genonbeta/TrebleShot/ui/help/ConnectionSetUpAssistant;)V
    .registers 2

    .line 114
    iput-object p1, p0, Lcom/genonbeta/TrebleShot/ui/help/ConnectionSetUpAssistant$8;->this$0:Lcom/genonbeta/TrebleShot/ui/help/ConnectionSetUpAssistant;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 3

    .line 119
    iget-object p1, p0, Lcom/genonbeta/TrebleShot/ui/help/ConnectionSetUpAssistant$8;->this$0:Lcom/genonbeta/TrebleShot/ui/help/ConnectionSetUpAssistant;

    sget-object p2, Lcom/genonbeta/TrebleShot/activity/ConnectionManagerActivity$AvailableFragment;->CreateHotspot:Lcom/genonbeta/TrebleShot/activity/ConnectionManagerActivity$AvailableFragment;

    invoke-virtual {p1, p2}, Lcom/genonbeta/TrebleShot/ui/help/ConnectionSetUpAssistant;->updateFragment(Lcom/genonbeta/TrebleShot/activity/ConnectionManagerActivity$AvailableFragment;)V

    return-void
.end method
