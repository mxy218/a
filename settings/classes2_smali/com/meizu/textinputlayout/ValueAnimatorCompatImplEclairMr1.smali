.class Lcom/meizu/textinputlayout/ValueAnimatorCompatImplEclairMr1;
.super Lcom/meizu/textinputlayout/ValueAnimatorCompat$Impl;
.source "ValueAnimatorCompatImplEclairMr1.java"


# static fields
.field private static final sHandler:Landroid/os/Handler;


# instance fields
.field private mAnimatedFraction:F

.field private mDuration:I

.field private final mFloatValues:[F

.field private final mIntValues:[I

.field private mInterpolator:Landroid/view/animation/Interpolator;

.field private mIsRunning:Z

.field private mListener:Lcom/meizu/textinputlayout/ValueAnimatorCompat$Impl$AnimatorListenerProxy;

.field private final mRunnable:Ljava/lang/Runnable;

.field private mStartTime:J

.field private mUpdateListener:Lcom/meizu/textinputlayout/ValueAnimatorCompat$Impl$AnimatorUpdateListenerProxy;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 33
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/meizu/textinputlayout/ValueAnimatorCompatImplEclairMr1;->sHandler:Landroid/os/Handler;

    return-void
.end method

.method constructor <init>()V
    .registers 3

    .line 28
    invoke-direct {p0}, Lcom/meizu/textinputlayout/ValueAnimatorCompat$Impl;-><init>()V

    const/4 v0, 0x2

    new-array v1, v0, [I

    .line 38
    iput-object v1, p0, Lcom/meizu/textinputlayout/ValueAnimatorCompatImplEclairMr1;->mIntValues:[I

    new-array v0, v0, [F

    .line 39
    iput-object v0, p0, Lcom/meizu/textinputlayout/ValueAnimatorCompatImplEclairMr1;->mFloatValues:[F

    const/16 v0, 0xc8

    .line 41
    iput v0, p0, Lcom/meizu/textinputlayout/ValueAnimatorCompatImplEclairMr1;->mDuration:I

    .line 180
    new-instance v0, Lcom/meizu/textinputlayout/ValueAnimatorCompatImplEclairMr1$1;

    invoke-direct {v0, p0}, Lcom/meizu/textinputlayout/ValueAnimatorCompatImplEclairMr1$1;-><init>(Lcom/meizu/textinputlayout/ValueAnimatorCompatImplEclairMr1;)V

    iput-object v0, p0, Lcom/meizu/textinputlayout/ValueAnimatorCompatImplEclairMr1;->mRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lcom/meizu/textinputlayout/ValueAnimatorCompatImplEclairMr1;)V
    .registers 1

    .line 28
    invoke-direct {p0}, Lcom/meizu/textinputlayout/ValueAnimatorCompatImplEclairMr1;->update()V

    return-void
.end method

.method private update()V
    .registers 7

    .line 151
    iget-boolean v0, p0, Lcom/meizu/textinputlayout/ValueAnimatorCompatImplEclairMr1;->mIsRunning:Z

    if-eqz v0, :cond_39

    .line 153
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/meizu/textinputlayout/ValueAnimatorCompatImplEclairMr1;->mStartTime:J

    sub-long/2addr v0, v2

    long-to-float v0, v0

    .line 154
    iget v1, p0, Lcom/meizu/textinputlayout/ValueAnimatorCompatImplEclairMr1;->mDuration:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    .line 155
    iget-object v1, p0, Lcom/meizu/textinputlayout/ValueAnimatorCompatImplEclairMr1;->mInterpolator:Landroid/view/animation/Interpolator;

    if-eqz v1, :cond_18

    .line 156
    invoke-interface {v1, v0}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v0

    :cond_18
    iput v0, p0, Lcom/meizu/textinputlayout/ValueAnimatorCompatImplEclairMr1;->mAnimatedFraction:F

    .line 160
    iget-object v0, p0, Lcom/meizu/textinputlayout/ValueAnimatorCompatImplEclairMr1;->mUpdateListener:Lcom/meizu/textinputlayout/ValueAnimatorCompat$Impl$AnimatorUpdateListenerProxy;

    if-eqz v0, :cond_21

    .line 161
    invoke-interface {v0}, Lcom/meizu/textinputlayout/ValueAnimatorCompat$Impl$AnimatorUpdateListenerProxy;->onAnimationUpdate()V

    .line 165
    :cond_21
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/meizu/textinputlayout/ValueAnimatorCompatImplEclairMr1;->mStartTime:J

    iget v4, p0, Lcom/meizu/textinputlayout/ValueAnimatorCompatImplEclairMr1;->mDuration:I

    int-to-long v4, v4

    add-long/2addr v2, v4

    cmp-long v0, v0, v2

    if-ltz v0, :cond_39

    const/4 v0, 0x0

    .line 166
    iput-boolean v0, p0, Lcom/meizu/textinputlayout/ValueAnimatorCompatImplEclairMr1;->mIsRunning:Z

    .line 168
    iget-object v0, p0, Lcom/meizu/textinputlayout/ValueAnimatorCompatImplEclairMr1;->mListener:Lcom/meizu/textinputlayout/ValueAnimatorCompat$Impl$AnimatorListenerProxy;

    if-eqz v0, :cond_39

    .line 169
    invoke-interface {v0}, Lcom/meizu/textinputlayout/ValueAnimatorCompat$Impl$AnimatorListenerProxy;->onAnimationEnd()V

    .line 174
    :cond_39
    iget-boolean v0, p0, Lcom/meizu/textinputlayout/ValueAnimatorCompatImplEclairMr1;->mIsRunning:Z

    if-eqz v0, :cond_46

    .line 176
    sget-object v0, Lcom/meizu/textinputlayout/ValueAnimatorCompatImplEclairMr1;->sHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/meizu/textinputlayout/ValueAnimatorCompatImplEclairMr1;->mRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0xa

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_46
    return-void
.end method


# virtual methods
.method public cancel()V
    .registers 3

    const/4 v0, 0x0

    .line 118
    iput-boolean v0, p0, Lcom/meizu/textinputlayout/ValueAnimatorCompatImplEclairMr1;->mIsRunning:Z

    .line 119
    sget-object v0, Lcom/meizu/textinputlayout/ValueAnimatorCompatImplEclairMr1;->sHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/meizu/textinputlayout/ValueAnimatorCompatImplEclairMr1;->mRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 121
    iget-object p0, p0, Lcom/meizu/textinputlayout/ValueAnimatorCompatImplEclairMr1;->mListener:Lcom/meizu/textinputlayout/ValueAnimatorCompat$Impl$AnimatorListenerProxy;

    if-eqz p0, :cond_11

    .line 122
    invoke-interface {p0}, Lcom/meizu/textinputlayout/ValueAnimatorCompat$Impl$AnimatorListenerProxy;->onAnimationCancel()V

    :cond_11
    return-void
.end method

.method public getAnimatedFloatValue()F
    .registers 4

    .line 108
    iget-object v0, p0, Lcom/meizu/textinputlayout/ValueAnimatorCompatImplEclairMr1;->mFloatValues:[F

    const/4 v1, 0x0

    aget v1, v0, v1

    const/4 v2, 0x1

    aget v0, v0, v2

    invoke-virtual {p0}, Lcom/meizu/textinputlayout/ValueAnimatorCompatImplEclairMr1;->getAnimatedFraction()F

    move-result p0

    invoke-static {v1, v0, p0}, Lcom/meizu/textinputlayout/AnimationUtils;->lerp(FFF)F

    move-result p0

    return p0
.end method

.method public getAnimatedFraction()F
    .registers 1

    .line 128
    iget p0, p0, Lcom/meizu/textinputlayout/ValueAnimatorCompatImplEclairMr1;->mAnimatedFraction:F

    return p0
.end method

.method public isRunning()Z
    .registers 1

    .line 71
    iget-boolean p0, p0, Lcom/meizu/textinputlayout/ValueAnimatorCompatImplEclairMr1;->mIsRunning:Z

    return p0
.end method

.method public setDuration(I)V
    .registers 2

    .line 113
    iput p1, p0, Lcom/meizu/textinputlayout/ValueAnimatorCompatImplEclairMr1;->mDuration:I

    return-void
.end method

.method public setFloatValues(FF)V
    .registers 4

    .line 102
    iget-object p0, p0, Lcom/meizu/textinputlayout/ValueAnimatorCompatImplEclairMr1;->mFloatValues:[F

    const/4 v0, 0x0

    aput p1, p0, v0

    const/4 p1, 0x1

    .line 103
    aput p2, p0, p1

    return-void
.end method

.method public setInterpolator(Landroid/view/animation/Interpolator;)V
    .registers 2

    .line 76
    iput-object p1, p0, Lcom/meizu/textinputlayout/ValueAnimatorCompatImplEclairMr1;->mInterpolator:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public setUpdateListener(Lcom/meizu/textinputlayout/ValueAnimatorCompat$Impl$AnimatorUpdateListenerProxy;)V
    .registers 2

    .line 86
    iput-object p1, p0, Lcom/meizu/textinputlayout/ValueAnimatorCompatImplEclairMr1;->mUpdateListener:Lcom/meizu/textinputlayout/ValueAnimatorCompat$Impl$AnimatorUpdateListenerProxy;

    return-void
.end method

.method public start()V
    .registers 4

    .line 50
    iget-boolean v0, p0, Lcom/meizu/textinputlayout/ValueAnimatorCompatImplEclairMr1;->mIsRunning:Z

    if-eqz v0, :cond_5

    return-void

    .line 55
    :cond_5
    iget-object v0, p0, Lcom/meizu/textinputlayout/ValueAnimatorCompatImplEclairMr1;->mInterpolator:Landroid/view/animation/Interpolator;

    if-nez v0, :cond_10

    .line 56
    new-instance v0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    iput-object v0, p0, Lcom/meizu/textinputlayout/ValueAnimatorCompatImplEclairMr1;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 59
    :cond_10
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/meizu/textinputlayout/ValueAnimatorCompatImplEclairMr1;->mStartTime:J

    const/4 v0, 0x1

    .line 60
    iput-boolean v0, p0, Lcom/meizu/textinputlayout/ValueAnimatorCompatImplEclairMr1;->mIsRunning:Z

    .line 62
    iget-object v0, p0, Lcom/meizu/textinputlayout/ValueAnimatorCompatImplEclairMr1;->mListener:Lcom/meizu/textinputlayout/ValueAnimatorCompat$Impl$AnimatorListenerProxy;

    if-eqz v0, :cond_20

    .line 63
    invoke-interface {v0}, Lcom/meizu/textinputlayout/ValueAnimatorCompat$Impl$AnimatorListenerProxy;->onAnimationStart()V

    .line 66
    :cond_20
    sget-object v0, Lcom/meizu/textinputlayout/ValueAnimatorCompatImplEclairMr1;->sHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/meizu/textinputlayout/ValueAnimatorCompatImplEclairMr1;->mRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0xa

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
