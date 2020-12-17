.class Lcom/android/systemui/biometrics/BiometricDialogView$1;
.super Ljava/lang/Object;
.source "BiometricDialogView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/biometrics/BiometricDialogView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/biometrics/BiometricDialogView;


# direct methods
.method constructor <init>(Lcom/android/systemui/biometrics/BiometricDialogView;)V
    .registers 2

    .line 125
    iput-object p1, p0, Lcom/android/systemui/biometrics/BiometricDialogView$1;->this$0:Lcom/android/systemui/biometrics/BiometricDialogView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic lambda$run$0$BiometricDialogView$1()V
    .registers 1

    .line 139
    iget-object p0, p0, Lcom/android/systemui/biometrics/BiometricDialogView$1;->this$0:Lcom/android/systemui/biometrics/BiometricDialogView;

    invoke-virtual {p0}, Lcom/android/systemui/biometrics/BiometricDialogView;->onDialogAnimatedIn()V

    return-void
.end method

.method public run()V
    .registers 5

    .line 128
    iget-object v0, p0, Lcom/android/systemui/biometrics/BiometricDialogView$1;->this$0:Lcom/android/systemui/biometrics/BiometricDialogView;

    iget-object v0, v0, Lcom/android/systemui/biometrics/BiometricDialogView;->mLayout:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f800000  # 1.0f

    .line 129
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0xfa

    .line 130
    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v3, p0, Lcom/android/systemui/biometrics/BiometricDialogView$1;->this$0:Lcom/android/systemui/biometrics/BiometricDialogView;

    .line 131
    invoke-static {v3}, Lcom/android/systemui/biometrics/BiometricDialogView;->access$000(Lcom/android/systemui/biometrics/BiometricDialogView;)Landroid/view/animation/Interpolator;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 132
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->withLayer()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 133
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 134
    iget-object v0, p0, Lcom/android/systemui/biometrics/BiometricDialogView$1;->this$0:Lcom/android/systemui/biometrics/BiometricDialogView;

    iget-object v0, v0, Lcom/android/systemui/biometrics/BiometricDialogView;->mDialog:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v3, 0x0

    .line 135
    invoke-virtual {v0, v3}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 136
    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/biometrics/BiometricDialogView$1;->this$0:Lcom/android/systemui/biometrics/BiometricDialogView;

    .line 137
    invoke-static {v1}, Lcom/android/systemui/biometrics/BiometricDialogView;->access$000(Lcom/android/systemui/biometrics/BiometricDialogView;)Landroid/view/animation/Interpolator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 138
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->withLayer()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/biometrics/-$$Lambda$BiometricDialogView$1$-qm-KE8gu8fBxrvu_aT4hBUtdMU;

    invoke-direct {v1, p0}, Lcom/android/systemui/biometrics/-$$Lambda$BiometricDialogView$1$-qm-KE8gu8fBxrvu_aT4hBUtdMU;-><init>(Lcom/android/systemui/biometrics/BiometricDialogView$1;)V

    .line 139
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 140
    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method
