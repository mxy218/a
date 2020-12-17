.class Lcom/android/systemui/globalactions/GlobalActionsDialog$BugReportAction;
.super Lcom/android/systemui/globalactions/GlobalActionsDialog$SinglePressAction;
.source "GlobalActionsDialog.java"

# interfaces
.implements Lcom/android/systemui/globalactions/GlobalActionsDialog$LongPressAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/globalactions/GlobalActionsDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BugReportAction"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/globalactions/GlobalActionsDialog;


# direct methods
.method public constructor <init>(Lcom/android/systemui/globalactions/GlobalActionsDialog;)V
    .registers 3

    .line 647
    iput-object p1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$BugReportAction;->this$0:Lcom/android/systemui/globalactions/GlobalActionsDialog;

    const p1, 0x10803b3

    const v0, 0x1040108

    .line 648
    invoke-direct {p0, p1, v0}, Lcom/android/systemui/globalactions/GlobalActionsDialog$SinglePressAction;-><init>(II)V

    return-void
.end method


# virtual methods
.method public onLongPress()Z
    .registers 3

    .line 680
    invoke-static {}, Landroid/app/ActivityManager;->isUserAMonkey()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    return v1

    .line 685
    :cond_8
    :try_start_8
    iget-object p0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$BugReportAction;->this$0:Lcom/android/systemui/globalactions/GlobalActionsDialog;

    invoke-static {p0}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->access$200(Lcom/android/systemui/globalactions/GlobalActionsDialog;)Landroid/content/Context;

    move-result-object p0

    const/16 v0, 0x125

    invoke-static {p0, v0}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;I)V

    .line 686
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object p0

    invoke-interface {p0, v1}, Landroid/app/IActivityManager;->requestBugReport(I)V
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_1a} :catch_1a

    :catch_1a
    return v1
.end method

.method public onPress()V
    .registers 5

    .line 655
    invoke-static {}, Landroid/app/ActivityManager;->isUserAMonkey()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 661
    :cond_7
    iget-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$BugReportAction;->this$0:Lcom/android/systemui/globalactions/GlobalActionsDialog;

    invoke-static {v0}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->access$1400(Lcom/android/systemui/globalactions/GlobalActionsDialog;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/globalactions/GlobalActionsDialog$BugReportAction$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/globalactions/GlobalActionsDialog$BugReportAction$1;-><init>(Lcom/android/systemui/globalactions/GlobalActionsDialog$BugReportAction;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public showBeforeProvisioning()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public showDuringKeyguard()Z
    .registers 1

    const/4 p0, 0x1

    return p0
.end method
