.class Lcom/android/keyguard/KeyguardAbsKeyInputView$9;
.super Ljava/lang/Object;
.source "KeyguardAbsKeyInputView.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/KeyguardAbsKeyInputView;->showRecongnizeFailAnim(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/KeyguardAbsKeyInputView;


# direct methods
.method constructor <init>(Lcom/android/keyguard/KeyguardAbsKeyInputView;)V
    .registers 2

    .line 819
    iput-object p1, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView$9;->this$0:Lcom/android/keyguard/KeyguardAbsKeyInputView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .registers 2

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 3

    .line 833
    iget-object p1, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView$9;->this$0:Lcom/android/keyguard/KeyguardAbsKeyInputView;

    const/4 v0, -0x1

    invoke-static {p1, v0}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->access$1202(Lcom/android/keyguard/KeyguardAbsKeyInputView;I)I

    .line 834
    iget-object p1, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView$9;->this$0:Lcom/android/keyguard/KeyguardAbsKeyInputView;

    invoke-static {p1}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->access$1500(Lcom/android/keyguard/KeyguardAbsKeyInputView;)Landroid/animation/AnimatorSet;

    move-result-object p1

    if-eqz p1, :cond_17

    .line 835
    iget-object p0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView$9;->this$0:Lcom/android/keyguard/KeyguardAbsKeyInputView;

    invoke-static {p0}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->access$1500(Lcom/android/keyguard/KeyguardAbsKeyInputView;)Landroid/animation/AnimatorSet;

    move-result-object p0

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->removeAllListeners()V

    :cond_17
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .registers 2

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 2

    .line 823
    iget-object p0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView$9;->this$0:Lcom/android/keyguard/KeyguardAbsKeyInputView;

    const/4 p1, 0x1

    invoke-static {p0, p1}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->access$1202(Lcom/android/keyguard/KeyguardAbsKeyInputView;I)I

    return-void
.end method
