.class Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog$1;
.super Landroid/os/Handler;
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

    .line 199
    iput-object p1, p0, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog$1;->this$1:Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 10
    .param p1, "msg"  # Landroid/os/Message;

    .line 201
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x8

    if-eqz v0, :cond_88

    const/4 v2, 0x1

    if-eq v0, v2, :cond_b

    goto/16 :goto_97

    .line 208
    :cond_b
    iget-object v0, p0, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog$1;->this$1:Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;

    invoke-static {v0}, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->access$000(Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;)Z

    move-result v0

    if-eqz v0, :cond_97

    .line 209
    iget-object v0, p0, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog$1;->this$1:Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;

    const/4 v3, 0x0

    invoke-static {v0, v3}, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->access$002(Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;Z)Z

    .line 210
    iget-object v0, p0, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog$1;->this$1:Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;

    invoke-static {v0}, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->access$100(Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;)Landroid/animation/AnimatorSet;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 211
    iget-object v0, p0, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog$1;->this$1:Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;

    invoke-static {v0}, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->access$100(Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;)Landroid/animation/AnimatorSet;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 218
    :cond_2e
    iget-object v0, p0, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog$1;->this$1:Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;

    invoke-static {v0}, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->access$200(Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const/4 v4, 0x2

    new-array v5, v4, [F

    iget-object v6, p0, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog$1;->this$1:Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;

    iget-object v6, v6, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->mShutdownView:Lcom/android/server/policy/MzCustomCircleButton;

    .line 219
    invoke-virtual {v6}, Lcom/android/server/policy/MzCustomCircleButton;->getAlpha()F

    move-result v6

    aput v6, v5, v3

    const/4 v6, 0x0

    aput v6, v5, v2

    .line 218
    invoke-virtual {v0, v5}, Landroid/animation/ObjectAnimator;->setFloatValues([F)V

    .line 220
    iget-object v0, p0, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog$1;->this$1:Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;

    invoke-static {v0}, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->access$300(Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    new-array v5, v4, [F

    iget-object v7, p0, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog$1;->this$1:Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;

    iget-object v7, v7, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->mRestartView:Lcom/android/server/policy/MzCustomCircleButton;

    .line 221
    invoke-virtual {v7}, Lcom/android/server/policy/MzCustomCircleButton;->getAlpha()F

    move-result v7

    aput v7, v5, v3

    aput v6, v5, v2

    .line 220
    invoke-virtual {v0, v5}, Landroid/animation/ObjectAnimator;->setFloatValues([F)V

    .line 222
    iget-object v0, p0, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog$1;->this$1:Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;

    invoke-static {v0}, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->access$400(Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    new-array v4, v4, [F

    iget-object v5, p0, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog$1;->this$1:Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;

    iget-object v5, v5, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->mSwitchUserView:Lcom/android/server/policy/MzCustomCircleButton;

    .line 223
    invoke-virtual {v5}, Lcom/android/server/policy/MzCustomCircleButton;->getAlpha()F

    move-result v5

    aput v5, v4, v3

    aput v6, v4, v2

    .line 222
    invoke-virtual {v0, v4}, Landroid/animation/ObjectAnimator;->setFloatValues([F)V

    .line 224
    iget-object v0, p0, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog$1;->this$1:Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;

    invoke-static {v0}, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->access$500(Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;)Landroid/animation/AnimatorSet;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 225
    iget-object v0, p0, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog$1;->this$1:Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;

    iget-object v0, v0, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->this$0:Lcom/android/server/policy/MzGlobalActions;

    iget-object v0, v0, Lcom/android/server/policy/MzGlobalActions;->mConfirmView:Lcom/android/server/policy/FlymeConfirmPasswordView;

    invoke-virtual {v0, v1}, Lcom/android/server/policy/FlymeConfirmPasswordView;->setVisibility(I)V

    goto :goto_97

    .line 204
    :cond_88
    iget-object v0, p0, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog$1;->this$1:Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;

    iget-object v0, v0, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->this$0:Lcom/android/server/policy/MzGlobalActions;

    iget-object v0, v0, Lcom/android/server/policy/MzGlobalActions;->mConfirmView:Lcom/android/server/policy/FlymeConfirmPasswordView;

    invoke-virtual {v0, v1}, Lcom/android/server/policy/FlymeConfirmPasswordView;->setVisibility(I)V

    .line 205
    sget-object v0, Lcom/android/server/policy/MzGlobalActions;->mMzDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 206
    nop

    .line 229
    :cond_97
    :goto_97
    return-void
.end method
