.class Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog$6;
.super Ljava/lang/Object;
.source "MzGlobalActions.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->onCreate(Landroid/os/Bundle;)V
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

    .line 472
    iput-object p1, p0, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog$6;->this$1:Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4
    .param p1, "v"  # Landroid/view/View;

    .line 477
    sget-object v0, Landroid/os/BuildExt;->IS_SHOPDEMO:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const-string v1, "MzGlobalActions"

    if-eqz v0, :cond_1a

    .line 478
    const-string v0, "IS_SHOPDEMO = "

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 480
    new-instance v0, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog$6$1;

    const-string v1, "Reboot"

    invoke-direct {v0, p0, v1}, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog$6$1;-><init>(Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog$6;Ljava/lang/String;)V

    .line 492
    .local v0, "thr":Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 493
    .end local v0  # "thr":Ljava/lang/Thread;
    goto :goto_29

    .line 494
    :cond_1a
    const-string v0, "confirmPassword = "

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 496
    iget-object v0, p0, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog$6;->this$1:Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;

    new-instance v1, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog$6$2;

    invoke-direct {v1, p0}, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog$6$2;-><init>(Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog$6;)V

    invoke-static {v0, v1}, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->access$1100(Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;Ljava/lang/Runnable;)V

    .line 504
    :goto_29
    return-void
.end method
