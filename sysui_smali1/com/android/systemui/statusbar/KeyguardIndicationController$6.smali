.class Lcom/android/systemui/statusbar/KeyguardIndicationController$6;
.super Ljava/lang/Object;
.source "KeyguardIndicationController.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/KeyguardIndicationController;->showRecongnizeFailAnim(Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/KeyguardIndicationController;

.field final synthetic val$hintFinishedRunnable:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/KeyguardIndicationController;Ljava/lang/Runnable;)V
    .registers 3

    .line 932
    iput-object p1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$6;->this$0:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    iput-object p2, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$6;->val$hintFinishedRunnable:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .registers 2

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 2

    .line 939
    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$6;->val$hintFinishedRunnable:Ljava/lang/Runnable;

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .registers 2

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 2

    return-void
.end method
