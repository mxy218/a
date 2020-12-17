.class Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog$3;
.super Ljava/lang/Object;
.source "MzGlobalActions.java"

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;


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

    .line 384
    iput-object p1, p0, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog$3;->this$1:Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onViewAttachedToWindow(Landroid/view/View;)V
    .registers 4
    .param p1, "v"  # Landroid/view/View;

    .line 409
    iget-object v0, p0, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog$3;->this$1:Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;

    iget-object v0, v0, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->mContainer:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_15

    .line 416
    iget-object v0, p0, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog$3;->this$1:Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->access$002(Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;Z)Z

    .line 417
    iget-object v0, p0, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog$3;->this$1:Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;

    invoke-static {v0}, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->access$100(Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;)Landroid/animation/AnimatorSet;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 419
    :cond_15
    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/view/View;)V
    .registers 4
    .param p1, "v"  # Landroid/view/View;

    .line 389
    iget-object v0, p0, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog$3;->this$1:Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->access$002(Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;Z)Z

    .line 390
    iget-object v0, p0, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog$3;->this$1:Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;

    invoke-static {v0}, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->access$800(Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    if-eqz v0, :cond_23

    iget-object v0, p0, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog$3;->this$1:Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;

    invoke-static {v0}, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->access$800(Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_23

    .line 391
    iget-object v0, p0, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog$3;->this$1:Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;

    invoke-static {v0}, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->access$800(Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 393
    :cond_23
    iget-object v0, p0, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog$3;->this$1:Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;

    invoke-static {v0}, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->access$900(Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    if-eqz v0, :cond_40

    iget-object v0, p0, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog$3;->this$1:Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;

    invoke-static {v0}, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->access$900(Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_40

    .line 394
    iget-object v0, p0, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog$3;->this$1:Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;

    invoke-static {v0}, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->access$900(Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 396
    :cond_40
    iget-object v0, p0, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog$3;->this$1:Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;

    iget-object v0, v0, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->mContainer:Landroid/widget/LinearLayout;

    .line 398
    iget-object v0, p0, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog$3;->this$1:Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;

    invoke-static {v0}, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->access$100(Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;)Landroid/animation/AnimatorSet;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_59

    .line 399
    iget-object v0, p0, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog$3;->this$1:Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;

    invoke-static {v0}, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->access$100(Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;)Landroid/animation/AnimatorSet;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 401
    :cond_59
    iget-object v0, p0, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog$3;->this$1:Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;

    invoke-static {v0}, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->access$500(Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;)Landroid/animation/AnimatorSet;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_6e

    .line 402
    iget-object v0, p0, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog$3;->this$1:Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;

    invoke-static {v0}, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->access$500(Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;)Landroid/animation/AnimatorSet;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 404
    :cond_6e
    return-void
.end method
