.class Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog$13;
.super Ljava/lang/Object;
.source "MzGlobalActions.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->onStart()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;


# direct methods
.method constructor <init>(Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;)V
    .registers 2
    .param p1, "this$1"  # Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;

    .line 694
    iput-object p1, p0, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog$13;->this$1:Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 697
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mAction mWindowManagerFuncs = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog$13;->this$1:Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;

    iget-object v1, v1, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->this$0:Lcom/android/server/policy/MzGlobalActions;

    invoke-static {v1}, Lcom/android/server/policy/MzGlobalActions;->access$1800(Lcom/android/server/policy/MzGlobalActions;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MzGlobalActions"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 699
    iget-object v0, p0, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog$13;->this$1:Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;

    iget-object v0, v0, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->this$0:Lcom/android/server/policy/MzGlobalActions;

    invoke-static {v0}, Lcom/android/server/policy/MzGlobalActions;->access$1800(Lcom/android/server/policy/MzGlobalActions;)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_35

    .line 700
    iget-object v0, p0, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog$13;->this$1:Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;

    iget-object v0, v0, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->this$0:Lcom/android/server/policy/MzGlobalActions;

    iget-object v0, v0, Lcom/android/server/policy/MzGlobalActions;->mWindowManagerFuncs:Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;

    invoke-interface {v0, v1}, Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;->reboot(Z)V

    goto :goto_3e

    .line 704
    :cond_35
    iget-object v0, p0, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog$13;->this$1:Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;

    iget-object v0, v0, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->this$0:Lcom/android/server/policy/MzGlobalActions;

    iget-object v0, v0, Lcom/android/server/policy/MzGlobalActions;->mWindowManagerFuncs:Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;

    invoke-interface {v0, v1}, Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;->shutdown(Z)V

    .line 706
    :goto_3e
    return-void
.end method
