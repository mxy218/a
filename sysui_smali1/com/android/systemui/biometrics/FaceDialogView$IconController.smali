.class final Lcom/android/systemui/biometrics/FaceDialogView$IconController;
.super Landroid/graphics/drawable/Animatable2$AnimationCallback;
.source "FaceDialogView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/biometrics/FaceDialogView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "IconController"
.end annotation


# instance fields
.field private mLastPulseDirection:Z

.field mState:I

.field final synthetic this$0:Lcom/android/systemui/biometrics/FaceDialogView;


# direct methods
.method constructor <init>(Lcom/android/systemui/biometrics/FaceDialogView;)V
    .registers 2

    .line 74
    iput-object p1, p0, Lcom/android/systemui/biometrics/FaceDialogView$IconController;->this$0:Lcom/android/systemui/biometrics/FaceDialogView;

    invoke-direct {p0}, Landroid/graphics/drawable/Animatable2$AnimationCallback;-><init>()V

    const/4 p1, 0x0

    .line 75
    iput p1, p0, Lcom/android/systemui/biometrics/FaceDialogView$IconController;->mState:I

    return-void
.end method

.method private animateIcon(IZ)V
    .registers 4

    .line 97
    iget-object v0, p0, Lcom/android/systemui/biometrics/FaceDialogView$IconController;->this$0:Lcom/android/systemui/biometrics/FaceDialogView;

    .line 98
    invoke-static {v0}, Lcom/android/systemui/biometrics/FaceDialogView;->access$300(Lcom/android/systemui/biometrics/FaceDialogView;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    check-cast p1, Landroid/graphics/drawable/AnimatedVectorDrawable;

    .line 99
    iget-object v0, p0, Lcom/android/systemui/biometrics/FaceDialogView$IconController;->this$0:Lcom/android/systemui/biometrics/FaceDialogView;

    iget-object v0, v0, Lcom/android/systemui/biometrics/BiometricDialogView;->mBiometricIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 100
    invoke-virtual {p1}, Landroid/graphics/drawable/AnimatedVectorDrawable;->forceAnimationOnUI()V

    if-eqz p2, :cond_1b

    .line 102
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/AnimatedVectorDrawable;->registerAnimationCallback(Landroid/graphics/drawable/Animatable2$AnimationCallback;)V

    .line 104
    :cond_1b
    invoke-virtual {p1}, Landroid/graphics/drawable/AnimatedVectorDrawable;->start()V

    return-void
.end method

.method private pulseInNextDirection()V
    .registers 3

    .line 108
    iget-boolean v0, p0, Lcom/android/systemui/biometrics/FaceDialogView$IconController;->mLastPulseDirection:Z

    if-eqz v0, :cond_7

    sget v0, Lcom/android/systemui/R$drawable;->face_dialog_pulse_dark_to_light:I

    goto :goto_9

    .line 109
    :cond_7
    sget v0, Lcom/android/systemui/R$drawable;->face_dialog_pulse_light_to_dark:I

    :goto_9
    const/4 v1, 0x1

    .line 110
    invoke-direct {p0, v0, v1}, Lcom/android/systemui/biometrics/FaceDialogView$IconController;->animateIcon(IZ)V

    .line 111
    iget-boolean v0, p0, Lcom/android/systemui/biometrics/FaceDialogView$IconController;->mLastPulseDirection:Z

    xor-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/android/systemui/biometrics/FaceDialogView$IconController;->mLastPulseDirection:Z

    return-void
.end method


# virtual methods
.method public animateOnce(I)V
    .registers 3

    const/4 v0, 0x0

    .line 79
    invoke-direct {p0, p1, v0}, Lcom/android/systemui/biometrics/FaceDialogView$IconController;->animateIcon(IZ)V

    return-void
.end method

.method public onAnimationEnd(Landroid/graphics/drawable/Drawable;)V
    .registers 3

    .line 116
    invoke-super {p0, p1}, Landroid/graphics/drawable/Animatable2$AnimationCallback;->onAnimationEnd(Landroid/graphics/drawable/Drawable;)V

    .line 118
    iget p1, p0, Lcom/android/systemui/biometrics/FaceDialogView$IconController;->mState:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_b

    .line 120
    invoke-direct {p0}, Lcom/android/systemui/biometrics/FaceDialogView$IconController;->pulseInNextDirection()V

    :cond_b
    return-void
.end method

.method public showIcon(I)V
    .registers 3

    .line 92
    iget-object v0, p0, Lcom/android/systemui/biometrics/FaceDialogView$IconController;->this$0:Lcom/android/systemui/biometrics/FaceDialogView;

    invoke-static {v0}, Lcom/android/systemui/biometrics/FaceDialogView;->access$200(Lcom/android/systemui/biometrics/FaceDialogView;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 93
    iget-object p0, p0, Lcom/android/systemui/biometrics/FaceDialogView$IconController;->this$0:Lcom/android/systemui/biometrics/FaceDialogView;

    iget-object p0, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mBiometricIcon:Landroid/widget/ImageView;

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public showStatic(I)V
    .registers 3

    .line 83
    iget-object p0, p0, Lcom/android/systemui/biometrics/FaceDialogView$IconController;->this$0:Lcom/android/systemui/biometrics/FaceDialogView;

    iget-object v0, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mBiometricIcon:Landroid/widget/ImageView;

    invoke-static {p0}, Lcom/android/systemui/biometrics/FaceDialogView;->access$100(Lcom/android/systemui/biometrics/FaceDialogView;)Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public startPulsing()V
    .registers 3

    const/4 v0, 0x0

    .line 87
    iput-boolean v0, p0, Lcom/android/systemui/biometrics/FaceDialogView$IconController;->mLastPulseDirection:Z

    .line 88
    sget v0, Lcom/android/systemui/R$drawable;->face_dialog_pulse_dark_to_light:I

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/biometrics/FaceDialogView$IconController;->animateIcon(IZ)V

    return-void
.end method
