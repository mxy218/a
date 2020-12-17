.class Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog$12;
.super Landroid/content/BroadcastReceiver;
.source "MzGlobalActions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;
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

    .line 636
    iput-object p1, p0, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog$12;->this$1:Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 8
    .param p1, "context"  # Landroid/content/Context;
    .param p2, "intent"  # Landroid/content/Intent;

    .line 639
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 648
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_42

    .line 649
    iget-object v1, p0, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog$12;->this$1:Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;

    iget-object v1, v1, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->mShutdownView:Lcom/android/server/policy/MzCustomCircleButton;

    const v2, 0xa0701e2

    const/4 v3, 0x0

    if-eqz v1, :cond_29

    .line 650
    iget-object v1, p0, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog$12;->this$1:Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;

    iget-object v1, v1, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->mShutdownView:Lcom/android/server/policy/MzCustomCircleButton;

    invoke-static {}, Lcom/android/server/policy/MzGlobalActions;->access$600()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    invoke-virtual {v1, v3, v4}, Lcom/android/server/policy/MzCustomCircleButton;->setTextSize(IF)V

    .line 652
    :cond_29
    iget-object v1, p0, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog$12;->this$1:Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;

    iget-object v1, v1, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->mRestartView:Lcom/android/server/policy/MzCustomCircleButton;

    if-eqz v1, :cond_42

    .line 653
    iget-object v1, p0, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog$12;->this$1:Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;

    iget-object v1, v1, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->mRestartView:Lcom/android/server/policy/MzCustomCircleButton;

    invoke-static {}, Lcom/android/server/policy/MzGlobalActions;->access$600()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    invoke-virtual {v1, v3, v2}, Lcom/android/server/policy/MzCustomCircleButton;->setTextSize(IF)V

    .line 656
    :cond_42
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7a

    .line 657
    iget-object v1, p0, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog$12;->this$1:Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;

    iget-object v1, v1, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->mRestartView:Lcom/android/server/policy/MzCustomCircleButton;

    invoke-static {}, Lcom/android/server/policy/MzGlobalActions;->access$600()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0xa10006e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/policy/MzCustomCircleButton;->setText(Ljava/lang/CharSequence;)V

    .line 659
    iget-object v1, p0, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog$12;->this$1:Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;

    iget-object v1, v1, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->mShutdownView:Lcom/android/server/policy/MzCustomCircleButton;

    .line 660
    invoke-static {}, Lcom/android/server/policy/MzGlobalActions;->access$600()Landroid/content/Context;

    move-result-object v2

    .line 661
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0xa10006f

    .line 662
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 660
    invoke-virtual {v1, v2}, Lcom/android/server/policy/MzCustomCircleButton;->setText(Ljava/lang/CharSequence;)V

    .line 665
    :cond_7a
    const-string v1, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8a

    .line 666
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b1

    .line 667
    :cond_8a
    nop

    .line 668
    const-string/jumbo v1, "reason"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 669
    .local v1, "reason":Ljava/lang/String;
    nop

    .line 670
    const-string v2, "globalactions"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b1

    iget-object v2, p0, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog$12;->this$1:Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;

    invoke-static {v2}, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->access$500(Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;)Landroid/animation/AnimatorSet;

    move-result-object v2

    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v2

    if-nez v2, :cond_b1

    .line 671
    iget-object v2, p0, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog$12;->this$1:Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;

    invoke-static {v2}, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->access$700(Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;)Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 679
    .end local v1  # "reason":Ljava/lang/String;
    :cond_b1
    return-void
.end method
