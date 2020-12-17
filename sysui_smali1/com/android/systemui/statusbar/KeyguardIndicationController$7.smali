.class Lcom/android/systemui/statusbar/KeyguardIndicationController$7;
.super Ljava/lang/Object;
.source "KeyguardIndicationController.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/KeyguardIndicationController;->startFadeOutAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/KeyguardIndicationController;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/KeyguardIndicationController;)V
    .registers 2

    .line 1044
    iput-object p1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$7;->this$0:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .registers 3

    .line 1058
    iget-object p1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$7;->this$0:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->setVisible(Z)V

    .line 1059
    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$7;->this$0:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    invoke-static {p0}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->access$2300(Lcom/android/systemui/statusbar/KeyguardIndicationController;)Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;

    move-result-object p0

    const/high16 p1, 0x3f800000  # 1.0f

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setAlpha(F)V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 3

    .line 1052
    iget-object p1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$7;->this$0:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->setVisible(Z)V

    .line 1053
    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$7;->this$0:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    invoke-static {p0}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->access$2300(Lcom/android/systemui/statusbar/KeyguardIndicationController;)Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;

    move-result-object p0

    const/high16 p1, 0x3f800000  # 1.0f

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setAlpha(F)V

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
