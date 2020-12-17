.class Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog$7;
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

    .line 510
    iput-object p1, p0, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog$7;->this$1:Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 7
    .param p1, "v"  # Landroid/view/View;

    .line 513
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "tel:112"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "android.intent.action.CALL_EMERGENCY"

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 514
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 515
    invoke-static {}, Lcom/android/server/policy/MzGlobalActions;->access$600()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 516
    iget-object v1, p0, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog$7;->this$1:Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;

    invoke-static {v1}, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->access$500(Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;)Landroid/animation/AnimatorSet;

    move-result-object v1

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v1

    if-nez v1, :cond_32

    .line 517
    iget-object v1, p0, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog$7;->this$1:Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;

    invoke-static {v1}, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->access$700(Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x1

    const-wide/16 v3, 0x320

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 520
    :cond_32
    return-void
.end method
