.class Lcom/android/systemui/globalactions/GlobalActionsDialog$2;
.super Ljava/lang/Object;
.source "GlobalActionsDialog.java"

# interfaces
.implements Lcom/android/systemui/plugins/GlobalActionsPanelPlugin$Callbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/globalactions/GlobalActionsDialog;->createDialog()Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/globalactions/GlobalActionsDialog;


# direct methods
.method constructor <init>(Lcom/android/systemui/globalactions/GlobalActionsDialog;)V
    .registers 2

    .line 414
    iput-object p1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$2;->this$0:Lcom/android/systemui/globalactions/GlobalActionsDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dismissGlobalActionsMenu()V
    .registers 2

    .line 417
    iget-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$2;->this$0:Lcom/android/systemui/globalactions/GlobalActionsDialog;

    invoke-static {v0}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->access$900(Lcom/android/systemui/globalactions/GlobalActionsDialog;)Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 418
    iget-object p0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$2;->this$0:Lcom/android/systemui/globalactions/GlobalActionsDialog;

    invoke-static {p0}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->access$900(Lcom/android/systemui/globalactions/GlobalActionsDialog;)Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->dismiss()V

    :cond_11
    return-void
.end method

.method public startPendingIntentDismissingKeyguard(Landroid/app/PendingIntent;)V
    .registers 2

    .line 425
    iget-object p0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$2;->this$0:Lcom/android/systemui/globalactions/GlobalActionsDialog;

    invoke-static {p0}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->access$1000(Lcom/android/systemui/globalactions/GlobalActionsDialog;)Lcom/android/systemui/plugins/ActivityStarter;

    move-result-object p0

    .line 426
    invoke-interface {p0, p1}, Lcom/android/systemui/plugins/ActivityStarter;->startPendingIntentDismissingKeyguard(Landroid/app/PendingIntent;)V

    return-void
.end method
