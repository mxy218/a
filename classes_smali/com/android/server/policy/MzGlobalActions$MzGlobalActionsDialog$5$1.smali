.class Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog$5$1;
.super Ljava/lang/Object;
.source "MzGlobalActions.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog$5;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog$5;


# direct methods
.method constructor <init>(Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog$5;)V
    .registers 2
    .param p1, "this$2"  # Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog$5;

    .line 463
    iput-object p1, p0, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog$5$1;->this$2:Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 466
    invoke-static {}, Lcom/android/server/policy/MzGlobalActions;->access$600()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog$5$1;->this$2:Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog$5;

    iget-object v1, v1, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog$5;->this$1:Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;

    iget-object v1, v1, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->this$0:Lcom/android/server/policy/MzGlobalActions;

    invoke-static {v1}, Lcom/android/server/policy/MzGlobalActions;->access$1000(Lcom/android/server/policy/MzGlobalActions;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 467
    iget-object v0, p0, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog$5$1;->this$2:Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog$5;

    iget-object v0, v0, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog$5;->this$1:Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;

    iget-object v0, v0, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->this$0:Lcom/android/server/policy/MzGlobalActions;

    iget-object v0, v0, Lcom/android/server/policy/MzGlobalActions;->mWindowManagerFuncs:Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;->shutdown(Z)V

    .line 468
    return-void
.end method
