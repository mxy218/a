.class Lcom/android/systemui/globalactions/GlobalActionsDialog$6;
.super Lcom/android/systemui/globalactions/GlobalActionsDialog$SinglePressAction;
.source "GlobalActionsDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/globalactions/GlobalActionsDialog;->getLockdownAction()Lcom/android/systemui/globalactions/GlobalActionsDialog$Action;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/globalactions/GlobalActionsDialog;


# direct methods
.method constructor <init>(Lcom/android/systemui/globalactions/GlobalActionsDialog;II)V
    .registers 4

    .line 803
    iput-object p1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$6;->this$0:Lcom/android/systemui/globalactions/GlobalActionsDialog;

    invoke-direct {p0, p2, p3}, Lcom/android/systemui/globalactions/GlobalActionsDialog$SinglePressAction;-><init>(II)V

    return-void
.end method


# virtual methods
.method public synthetic lambda$onPress$0$GlobalActionsDialog$6()V
    .registers 1

    .line 814
    iget-object p0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$6;->this$0:Lcom/android/systemui/globalactions/GlobalActionsDialog;

    invoke-static {p0}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->access$1800(Lcom/android/systemui/globalactions/GlobalActionsDialog;)V

    return-void
.end method

.method public onPress()V
    .registers 4

    .line 807
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$6;->this$0:Lcom/android/systemui/globalactions/GlobalActionsDialog;

    invoke-static {v1}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->access$200(Lcom/android/systemui/globalactions/GlobalActionsDialog;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    const/16 v1, 0x20

    const/4 v2, -0x1

    .line 808
    invoke-virtual {v0, v1, v2}, Lcom/android/internal/widget/LockPatternUtils;->requireStrongAuth(II)V

    .line 811
    :try_start_11
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/IWindowManager;->lockNow(Landroid/os/Bundle;)V

    .line 813
    new-instance v0, Landroid/os/Handler;

    sget-object v1, Lcom/android/systemui/Dependency;->BG_LOOPER:Lcom/android/systemui/Dependency$DependencyKey;

    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Lcom/android/systemui/Dependency$DependencyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Looper;

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 814
    new-instance v1, Lcom/android/systemui/globalactions/-$$Lambda$GlobalActionsDialog$6$WgIPOZvSRFzb_yD8-G_WZbXNLMU;

    invoke-direct {v1, p0}, Lcom/android/systemui/globalactions/-$$Lambda$GlobalActionsDialog$6$WgIPOZvSRFzb_yD8-G_WZbXNLMU;-><init>(Lcom/android/systemui/globalactions/GlobalActionsDialog$6;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_2e
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_2e} :catch_2f

    goto :goto_37

    :catch_2f
    move-exception p0

    const-string v0, "GlobalActionsDialog"

    const-string v1, "Error while trying to lock device."

    .line 816
    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_37
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
