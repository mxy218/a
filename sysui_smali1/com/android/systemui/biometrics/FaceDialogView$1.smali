.class Lcom/android/systemui/biometrics/FaceDialogView$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "FaceDialogView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/biometrics/FaceDialogView;->updateSize(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/biometrics/FaceDialogView;


# direct methods
.method constructor <init>(Lcom/android/systemui/biometrics/FaceDialogView;)V
    .registers 2

    .line 245
    iput-object p1, p0, Lcom/android/systemui/biometrics/FaceDialogView$1;->this$0:Lcom/android/systemui/biometrics/FaceDialogView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 2

    .line 265
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 266
    iget-object p0, p0, Lcom/android/systemui/biometrics/FaceDialogView$1;->this$0:Lcom/android/systemui/biometrics/FaceDialogView;

    const/4 p1, 0x3

    invoke-static {p0, p1}, Lcom/android/systemui/biometrics/FaceDialogView;->access$502(Lcom/android/systemui/biometrics/FaceDialogView;I)I

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 3

    .line 248
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationStart(Landroid/animation/Animator;)V

    .line 250
    iget-object p1, p0, Lcom/android/systemui/biometrics/FaceDialogView$1;->this$0:Lcom/android/systemui/biometrics/FaceDialogView;

    iget-object p1, p1, Lcom/android/systemui/biometrics/BiometricDialogView;->mTitleText:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 251
    iget-object p1, p0, Lcom/android/systemui/biometrics/FaceDialogView$1;->this$0:Lcom/android/systemui/biometrics/FaceDialogView;

    iget-object p1, p1, Lcom/android/systemui/biometrics/BiometricDialogView;->mErrorText:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 252
    iget-object p1, p0, Lcom/android/systemui/biometrics/FaceDialogView$1;->this$0:Lcom/android/systemui/biometrics/FaceDialogView;

    iget-object p1, p1, Lcom/android/systemui/biometrics/BiometricDialogView;->mNegativeButton:Landroid/widget/Button;

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setVisibility(I)V

    .line 253
    iget-object p1, p0, Lcom/android/systemui/biometrics/FaceDialogView$1;->this$0:Lcom/android/systemui/biometrics/FaceDialogView;

    iget-object p1, p1, Lcom/android/systemui/biometrics/BiometricDialogView;->mTryAgainButton:Landroid/widget/Button;

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setVisibility(I)V

    .line 255
    iget-object p1, p0, Lcom/android/systemui/biometrics/FaceDialogView$1;->this$0:Lcom/android/systemui/biometrics/FaceDialogView;

    iget-object p1, p1, Lcom/android/systemui/biometrics/BiometricDialogView;->mSubtitleText:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_35

    .line 256
    iget-object p1, p0, Lcom/android/systemui/biometrics/FaceDialogView$1;->this$0:Lcom/android/systemui/biometrics/FaceDialogView;

    iget-object p1, p1, Lcom/android/systemui/biometrics/BiometricDialogView;->mSubtitleText:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 258
    :cond_35
    iget-object p1, p0, Lcom/android/systemui/biometrics/FaceDialogView$1;->this$0:Lcom/android/systemui/biometrics/FaceDialogView;

    iget-object p1, p1, Lcom/android/systemui/biometrics/BiometricDialogView;->mDescriptionText:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_4a

    .line 259
    iget-object p0, p0, Lcom/android/systemui/biometrics/FaceDialogView$1;->this$0:Lcom/android/systemui/biometrics/FaceDialogView;

    iget-object p0, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mDescriptionText:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_4a
    return-void
.end method
