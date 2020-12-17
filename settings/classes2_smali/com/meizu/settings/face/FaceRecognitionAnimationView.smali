.class public Lcom/meizu/settings/face/FaceRecognitionAnimationView;
.super Lcom/airbnb/lottie/LottieAnimationView;
.source "FaceRecognitionAnimationView.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mFailed:Z

.field private mHandler:Landroid/os/Handler;

.field private mIsWhite:Z

.field private mLastAnimation:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 5

    .line 29
    invoke-direct {p0, p1}, Lcom/airbnb/lottie/LottieAnimationView;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x1

    .line 25
    iput-boolean p1, p0, Lcom/meizu/settings/face/FaceRecognitionAnimationView;->mIsWhite:Z

    const/4 v0, 0x4

    .line 26
    iput v0, p0, Lcom/meizu/settings/face/FaceRecognitionAnimationView;->mLastAnimation:I

    .line 91
    new-instance v0, Lcom/meizu/settings/face/FaceRecognitionAnimationView$1;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2, p1}, Lcom/meizu/settings/face/FaceRecognitionAnimationView$1;-><init>(Lcom/meizu/settings/face/FaceRecognitionAnimationView;Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    iput-object v0, p0, Lcom/meizu/settings/face/FaceRecognitionAnimationView;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 6

    .line 33
    invoke-direct {p0, p1, p2}, Lcom/airbnb/lottie/LottieAnimationView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x1

    .line 25
    iput-boolean p2, p0, Lcom/meizu/settings/face/FaceRecognitionAnimationView;->mIsWhite:Z

    const/4 v0, 0x4

    .line 26
    iput v0, p0, Lcom/meizu/settings/face/FaceRecognitionAnimationView;->mLastAnimation:I

    .line 91
    new-instance v0, Lcom/meizu/settings/face/FaceRecognitionAnimationView$1;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2, p2}, Lcom/meizu/settings/face/FaceRecognitionAnimationView$1;-><init>(Lcom/meizu/settings/face/FaceRecognitionAnimationView;Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    iput-object v0, p0, Lcom/meizu/settings/face/FaceRecognitionAnimationView;->mHandler:Landroid/os/Handler;

    .line 34
    invoke-direct {p0, p1}, Lcom/meizu/settings/face/FaceRecognitionAnimationView;->initView(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$000(Lcom/meizu/settings/face/FaceRecognitionAnimationView;)Z
    .registers 1

    .line 14
    iget-boolean p0, p0, Lcom/meizu/settings/face/FaceRecognitionAnimationView;->mFailed:Z

    return p0
.end method

.method static synthetic access$002(Lcom/meizu/settings/face/FaceRecognitionAnimationView;Z)Z
    .registers 2

    .line 14
    iput-boolean p1, p0, Lcom/meizu/settings/face/FaceRecognitionAnimationView;->mFailed:Z

    return p1
.end method

.method static synthetic access$100(Lcom/meizu/settings/face/FaceRecognitionAnimationView;)Z
    .registers 1

    .line 14
    iget-boolean p0, p0, Lcom/meizu/settings/face/FaceRecognitionAnimationView;->mIsWhite:Z

    return p0
.end method

.method private initView(Landroid/content/Context;)V
    .registers 2

    .line 38
    iput-object p1, p0, Lcom/meizu/settings/face/FaceRecognitionAnimationView;->mContext:Landroid/content/Context;

    .line 39
    invoke-virtual {p0}, Lcom/meizu/settings/face/FaceRecognitionAnimationView;->resetFaceImage()V

    return-void
.end method

.method private isVisibility()Z
    .registers 1

    .line 88
    invoke-virtual {p0}, Landroid/widget/ImageView;->getVisibility()I

    move-result p0

    if-nez p0, :cond_8

    const/4 p0, 0x1

    goto :goto_9

    :cond_8
    const/4 p0, 0x0

    :goto_9
    return p0
.end method


# virtual methods
.method public resetFaceImage()V
    .registers 4

    .line 68
    invoke-direct {p0}, Lcom/meizu/settings/face/FaceRecognitionAnimationView;->isVisibility()Z

    move-result v0

    if-eqz v0, :cond_19

    const/4 v0, 0x4

    .line 69
    iput v0, p0, Lcom/meizu/settings/face/FaceRecognitionAnimationView;->mLastAnimation:I

    .line 70
    iget-object v1, p0, Lcom/meizu/settings/face/FaceRecognitionAnimationView;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 71
    iget-object p0, p0, Lcom/meizu/settings/face/FaceRecognitionAnimationView;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_19
    return-void
.end method

.method public setFaceColorFilter(I)V
    .registers 3

    const/4 v0, -0x1

    if-ne p1, v0, :cond_7

    const/4 p1, 0x1

    .line 146
    iput-boolean p1, p0, Lcom/meizu/settings/face/FaceRecognitionAnimationView;->mIsWhite:Z

    goto :goto_a

    :cond_7
    const/4 p1, 0x0

    .line 148
    iput-boolean p1, p0, Lcom/meizu/settings/face/FaceRecognitionAnimationView;->mIsWhite:Z

    .line 151
    :goto_a
    invoke-virtual {p0}, Lcom/meizu/settings/face/FaceRecognitionAnimationView;->updateColor()V

    return-void
.end method

.method public setVisible(Z)V
    .registers 2

    if-eqz p1, :cond_4

    const/4 p1, 0x0

    goto :goto_6

    :cond_4
    const/16 p1, 0x8

    .line 84
    :goto_6
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method public startFailureAnimation()V
    .registers 4

    .line 44
    invoke-direct {p0}, Lcom/meizu/settings/face/FaceRecognitionAnimationView;->isVisibility()Z

    move-result v0

    if-eqz v0, :cond_19

    const/4 v0, 0x2

    .line 45
    iput v0, p0, Lcom/meizu/settings/face/FaceRecognitionAnimationView;->mLastAnimation:I

    .line 46
    iget-object v1, p0, Lcom/meizu/settings/face/FaceRecognitionAnimationView;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 47
    iget-object p0, p0, Lcom/meizu/settings/face/FaceRecognitionAnimationView;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_19
    return-void
.end method

.method public startFreezeAnimation()V
    .registers 4

    .line 52
    invoke-direct {p0}, Lcom/meizu/settings/face/FaceRecognitionAnimationView;->isVisibility()Z

    move-result v0

    if-eqz v0, :cond_19

    const/4 v0, 0x3

    .line 53
    iput v0, p0, Lcom/meizu/settings/face/FaceRecognitionAnimationView;->mLastAnimation:I

    .line 54
    iget-object v1, p0, Lcom/meizu/settings/face/FaceRecognitionAnimationView;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 55
    iget-object p0, p0, Lcom/meizu/settings/face/FaceRecognitionAnimationView;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_19
    return-void
.end method

.method public startLoadingAnimation()V
    .registers 4

    .line 76
    invoke-direct {p0}, Lcom/meizu/settings/face/FaceRecognitionAnimationView;->isVisibility()Z

    move-result v0

    if-eqz v0, :cond_19

    const/4 v0, 0x5

    .line 77
    iput v0, p0, Lcom/meizu/settings/face/FaceRecognitionAnimationView;->mLastAnimation:I

    .line 78
    iget-object v1, p0, Lcom/meizu/settings/face/FaceRecognitionAnimationView;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 79
    iget-object p0, p0, Lcom/meizu/settings/face/FaceRecognitionAnimationView;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_19
    return-void
.end method

.method public startSuccessAnimation()V
    .registers 4

    .line 60
    invoke-direct {p0}, Lcom/meizu/settings/face/FaceRecognitionAnimationView;->isVisibility()Z

    move-result v0

    if-eqz v0, :cond_19

    const/4 v0, 0x1

    .line 61
    iput v0, p0, Lcom/meizu/settings/face/FaceRecognitionAnimationView;->mLastAnimation:I

    .line 62
    iget-object v1, p0, Lcom/meizu/settings/face/FaceRecognitionAnimationView;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 63
    iget-object p0, p0, Lcom/meizu/settings/face/FaceRecognitionAnimationView;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_19
    return-void
.end method

.method public updateColor()V
    .registers 4

    .line 155
    iget-object v0, p0, Lcom/meizu/settings/face/FaceRecognitionAnimationView;->mHandler:Landroid/os/Handler;

    iget v1, p0, Lcom/meizu/settings/face/FaceRecognitionAnimationView;->mLastAnimation:I

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 156
    iget-object p0, p0, Lcom/meizu/settings/face/FaceRecognitionAnimationView;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
