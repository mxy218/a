.class public Lcom/flyme/systemui/facerecognition/FaceRecognitionAnimationView;
.super Lcom/airbnb/lottie/LottieAnimationView;
.source "FaceRecognitionAnimationView.java"

# interfaces
.implements Lcom/flyme/systemui/facerecognition/IFaceRecognitionAnimationCallback;


# instance fields
.field private mColor:I

.field private mContext:Landroid/content/Context;

.field private mFailed:Z

.field private mHandler:Landroid/os/Handler;

.field private mIsWhite:Z

.field private mLastAnimation:I

.field private mUpdateCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 5

    .line 40
    invoke-direct {p0, p1}, Lcom/airbnb/lottie/LottieAnimationView;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x1

    .line 35
    iput-boolean p1, p0, Lcom/flyme/systemui/facerecognition/FaceRecognitionAnimationView;->mIsWhite:Z

    .line 117
    new-instance v0, Lcom/flyme/systemui/facerecognition/FaceRecognitionAnimationView$2;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2, p1}, Lcom/flyme/systemui/facerecognition/FaceRecognitionAnimationView$2;-><init>(Lcom/flyme/systemui/facerecognition/FaceRecognitionAnimationView;Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    iput-object v0, p0, Lcom/flyme/systemui/facerecognition/FaceRecognitionAnimationView;->mHandler:Landroid/os/Handler;

    .line 188
    new-instance p1, Lcom/flyme/systemui/facerecognition/FaceRecognitionAnimationView$3;

    invoke-direct {p1, p0}, Lcom/flyme/systemui/facerecognition/FaceRecognitionAnimationView$3;-><init>(Lcom/flyme/systemui/facerecognition/FaceRecognitionAnimationView;)V

    iput-object p1, p0, Lcom/flyme/systemui/facerecognition/FaceRecognitionAnimationView;->mUpdateCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 6

    .line 44
    invoke-direct {p0, p1, p2}, Lcom/airbnb/lottie/LottieAnimationView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x1

    .line 35
    iput-boolean p2, p0, Lcom/flyme/systemui/facerecognition/FaceRecognitionAnimationView;->mIsWhite:Z

    .line 117
    new-instance v0, Lcom/flyme/systemui/facerecognition/FaceRecognitionAnimationView$2;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2, p2}, Lcom/flyme/systemui/facerecognition/FaceRecognitionAnimationView$2;-><init>(Lcom/flyme/systemui/facerecognition/FaceRecognitionAnimationView;Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    iput-object v0, p0, Lcom/flyme/systemui/facerecognition/FaceRecognitionAnimationView;->mHandler:Landroid/os/Handler;

    .line 188
    new-instance p2, Lcom/flyme/systemui/facerecognition/FaceRecognitionAnimationView$3;

    invoke-direct {p2, p0}, Lcom/flyme/systemui/facerecognition/FaceRecognitionAnimationView$3;-><init>(Lcom/flyme/systemui/facerecognition/FaceRecognitionAnimationView;)V

    iput-object p2, p0, Lcom/flyme/systemui/facerecognition/FaceRecognitionAnimationView;->mUpdateCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 45
    invoke-direct {p0, p1}, Lcom/flyme/systemui/facerecognition/FaceRecognitionAnimationView;->initView(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$000(Lcom/flyme/systemui/facerecognition/FaceRecognitionAnimationView;)Z
    .registers 1

    .line 23
    iget-boolean p0, p0, Lcom/flyme/systemui/facerecognition/FaceRecognitionAnimationView;->mFailed:Z

    return p0
.end method

.method static synthetic access$002(Lcom/flyme/systemui/facerecognition/FaceRecognitionAnimationView;Z)Z
    .registers 2

    .line 23
    iput-boolean p1, p0, Lcom/flyme/systemui/facerecognition/FaceRecognitionAnimationView;->mFailed:Z

    return p1
.end method

.method static synthetic access$100(Lcom/flyme/systemui/facerecognition/FaceRecognitionAnimationView;)Z
    .registers 1

    .line 23
    iget-boolean p0, p0, Lcom/flyme/systemui/facerecognition/FaceRecognitionAnimationView;->mIsWhite:Z

    return p0
.end method

.method static synthetic access$200(Lcom/flyme/systemui/facerecognition/FaceRecognitionAnimationView;Z)V
    .registers 2

    .line 23
    invoke-direct {p0, p1}, Lcom/flyme/systemui/facerecognition/FaceRecognitionAnimationView;->playAnimation(Z)V

    return-void
.end method

.method private initView(Landroid/content/Context;)V
    .registers 3

    .line 49
    iput-object p1, p0, Lcom/flyme/systemui/facerecognition/FaceRecognitionAnimationView;->mContext:Landroid/content/Context;

    .line 50
    invoke-static {p1}, Lcom/flyme/systemui/facerecognition/FaceRecognitionController;->getInstance(Landroid/content/Context;)Lcom/flyme/systemui/facerecognition/FaceRecognitionController;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/flyme/systemui/facerecognition/FaceRecognitionController;->registerCallback(Lcom/flyme/systemui/facerecognition/IFaceRecognitionAnimationCallback;)V

    .line 51
    invoke-static {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object p1

    iget-object p0, p0, Lcom/flyme/systemui/facerecognition/FaceRecognitionAnimationView;->mUpdateCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {p1, p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    return-void
.end method

.method private playAnimation(Z)V
    .registers 2

    .line 200
    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieAnimationView;->playAnimation()V

    return-void
.end method

.method private sendAnimationMsg(I)V
    .registers 3

    .line 204
    iget v0, p0, Lcom/flyme/systemui/facerecognition/FaceRecognitionAnimationView;->mLastAnimation:I

    if-ne v0, p1, :cond_5

    return-void

    .line 207
    :cond_5
    iput p1, p0, Lcom/flyme/systemui/facerecognition/FaceRecognitionAnimationView;->mLastAnimation:I

    .line 208
    iget-object p1, p0, Lcom/flyme/systemui/facerecognition/FaceRecognitionAnimationView;->mHandler:Landroid/os/Handler;

    iget v0, p0, Lcom/flyme/systemui/facerecognition/FaceRecognitionAnimationView;->mLastAnimation:I

    invoke-virtual {p1, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    const/4 v0, 0x0

    .line 209
    iput v0, p1, Landroid/os/Message;->arg1:I

    .line 210
    iget-object p0, p0, Lcom/flyme/systemui/facerecognition/FaceRecognitionAnimationView;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method


# virtual methods
.method public onFaceAuthenticationTimeout()V
    .registers 3

    .line 93
    iget-object v0, p0, Lcom/flyme/systemui/facerecognition/FaceRecognitionAnimationView;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/flyme/systemui/facerecognition/FaceRecognitionAnimationView$1;

    invoke-direct {v1, p0}, Lcom/flyme/systemui/facerecognition/FaceRecognitionAnimationView$1;-><init>(Lcom/flyme/systemui/facerecognition/FaceRecognitionAnimationView;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method protected onFinishInflate()V
    .registers 1

    .line 56
    invoke-super {p0}, Landroid/widget/ImageView;->onFinishInflate()V

    .line 57
    invoke-virtual {p0}, Lcom/flyme/systemui/facerecognition/FaceRecognitionAnimationView;->resetFaceImage()V

    return-void
.end method

.method public resetFaceImage()V
    .registers 2

    .line 79
    iget-object v0, p0, Lcom/flyme/systemui/facerecognition/FaceRecognitionAnimationView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintController;->getInstance(Landroid/content/Context;)Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintController;->isFirstBootUnlock()Z

    move-result v0

    if-eqz v0, :cond_11

    const/4 v0, 0x4

    .line 80
    invoke-direct {p0, v0}, Lcom/flyme/systemui/facerecognition/FaceRecognitionAnimationView;->sendAnimationMsg(I)V

    goto :goto_15

    :cond_11
    const/4 v0, 0x3

    .line 82
    invoke-direct {p0, v0}, Lcom/flyme/systemui/facerecognition/FaceRecognitionAnimationView;->sendAnimationMsg(I)V

    :goto_15
    return-void
.end method

.method public setFaceColorFilter(I)V
    .registers 3

    const/4 v0, -0x1

    if-ne p1, v0, :cond_7

    const/4 v0, 0x1

    .line 171
    iput-boolean v0, p0, Lcom/flyme/systemui/facerecognition/FaceRecognitionAnimationView;->mIsWhite:Z

    goto :goto_a

    :cond_7
    const/4 v0, 0x0

    .line 173
    iput-boolean v0, p0, Lcom/flyme/systemui/facerecognition/FaceRecognitionAnimationView;->mIsWhite:Z

    .line 176
    :goto_a
    iget v0, p0, Lcom/flyme/systemui/facerecognition/FaceRecognitionAnimationView;->mColor:I

    if-eq v0, p1, :cond_13

    .line 177
    iput p1, p0, Lcom/flyme/systemui/facerecognition/FaceRecognitionAnimationView;->mColor:I

    .line 178
    invoke-virtual {p0}, Lcom/flyme/systemui/facerecognition/FaceRecognitionAnimationView;->updateColor()V

    :cond_13
    return-void
.end method

.method public setVisible(Z)V
    .registers 4

    .line 102
    iget-object v0, p0, Lcom/flyme/systemui/facerecognition/FaceRecognitionAnimationView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->shouldFaceRecognitionViewVisible()Z

    move-result v0

    const/16 v1, 0x8

    if-nez v0, :cond_12

    .line 103
    invoke-virtual {p0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_29

    :cond_12
    if-eqz p1, :cond_23

    .line 106
    iget-object v0, p0, Lcom/flyme/systemui/facerecognition/FaceRecognitionAnimationView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintController;->getInstance(Landroid/content/Context;)Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintController;->isFirstBootUnlock()Z

    move-result v0

    if-nez v0, :cond_23

    .line 107
    invoke-virtual {p0}, Lcom/flyme/systemui/facerecognition/FaceRecognitionAnimationView;->startFreezeAnimation()V

    :cond_23
    if-eqz p1, :cond_26

    const/4 v1, 0x0

    .line 109
    :cond_26
    invoke-virtual {p0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_29
    return-void
.end method

.method public startFailureAnimation()V
    .registers 2

    const/4 v0, 0x2

    .line 63
    invoke-direct {p0, v0}, Lcom/flyme/systemui/facerecognition/FaceRecognitionAnimationView;->sendAnimationMsg(I)V

    return-void
.end method

.method public startFreezeAnimation()V
    .registers 2

    const/4 v0, 0x3

    .line 68
    invoke-direct {p0, v0}, Lcom/flyme/systemui/facerecognition/FaceRecognitionAnimationView;->sendAnimationMsg(I)V

    return-void
.end method

.method public startLoadingAnimation()V
    .registers 2

    const/4 v0, 0x5

    .line 88
    invoke-direct {p0, v0}, Lcom/flyme/systemui/facerecognition/FaceRecognitionAnimationView;->sendAnimationMsg(I)V

    return-void
.end method

.method public startSuccessAnimation()V
    .registers 2

    const/4 v0, 0x1

    .line 73
    invoke-direct {p0, v0}, Lcom/flyme/systemui/facerecognition/FaceRecognitionAnimationView;->sendAnimationMsg(I)V

    return-void
.end method

.method public updateColor()V
    .registers 3

    .line 183
    iget-object v0, p0, Lcom/flyme/systemui/facerecognition/FaceRecognitionAnimationView;->mHandler:Landroid/os/Handler;

    iget v1, p0, Lcom/flyme/systemui/facerecognition/FaceRecognitionAnimationView;->mLastAnimation:I

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x1

    .line 184
    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 185
    iget-object p0, p0, Lcom/flyme/systemui/facerecognition/FaceRecognitionAnimationView;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
