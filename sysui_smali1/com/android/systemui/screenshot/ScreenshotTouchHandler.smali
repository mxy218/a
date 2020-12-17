.class public Lcom/android/systemui/screenshot/ScreenshotTouchHandler;
.super Ljava/lang/Object;
.source "ScreenshotTouchHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/screenshot/ScreenshotTouchHandler$ScreenshotCallback;
    }
.end annotation


# static fields
.field private static threshold:I = 0x1e


# instance fields
.field private mCallback:Lcom/android/systemui/screenshot/ScreenshotTouchHandler$ScreenshotCallback;

.field private mContext:Landroid/content/Context;

.field private mFirstPoint:Landroid/graphics/PointF;

.field private mPoint:Landroid/graphics/PointF;

.field private mStopPoint:Landroid/graphics/PointF;

.field mVelocityTracker:Landroid/view/VelocityTracker;

.field refresh:Z


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/screenshot/ScreenshotTouchHandler;->mFirstPoint:Landroid/graphics/PointF;

    .line 20
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/screenshot/ScreenshotTouchHandler;->mStopPoint:Landroid/graphics/PointF;

    .line 23
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/screenshot/ScreenshotTouchHandler;->mPoint:Landroid/graphics/PointF;

    const/4 v0, 0x0

    .line 25
    iput-boolean v0, p0, Lcom/android/systemui/screenshot/ScreenshotTouchHandler;->refresh:Z

    .line 28
    iput-object p1, p0, Lcom/android/systemui/screenshot/ScreenshotTouchHandler;->mContext:Landroid/content/Context;

    return-void
.end method

.method public static distance(Landroid/graphics/PointF;Landroid/graphics/PointF;)F
    .registers 4

    .line 101
    iget v0, p0, Landroid/graphics/PointF;->x:F

    iget v1, p1, Landroid/graphics/PointF;->x:F

    sub-float/2addr v0, v1

    .line 102
    iget p0, p0, Landroid/graphics/PointF;->y:F

    iget p1, p1, Landroid/graphics/PointF;->y:F

    sub-float/2addr p0, p1

    .line 103
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result p1

    .line 104
    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result p0

    mul-float/2addr p1, p1

    mul-float/2addr p0, p0

    add-float/2addr p1, p0

    float-to-double p0, p1

    .line 105
    invoke-static {p0, p1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p0

    double-to-float p0, p0

    return p0
.end method


# virtual methods
.method initVelocityTrackerIfNotExists()V
    .registers 2

    .line 86
    iget-object v0, p0, Lcom/android/systemui/screenshot/ScreenshotTouchHandler;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_a

    .line 87
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/screenshot/ScreenshotTouchHandler;->mVelocityTracker:Landroid/view/VelocityTracker;

    :cond_a
    return-void
.end method

.method public onTouch(Landroid/view/MotionEvent;)Z
    .registers 10

    .line 37
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_23

    .line 38
    invoke-virtual {p0}, Lcom/android/systemui/screenshot/ScreenshotTouchHandler;->initVelocityTrackerIfNotExists()V

    .line 39
    iget-object v0, p0, Lcom/android/systemui/screenshot/ScreenshotTouchHandler;->mCallback:Lcom/android/systemui/screenshot/ScreenshotTouchHandler$ScreenshotCallback;

    if-eqz v0, :cond_11

    .line 40
    invoke-interface {v0}, Lcom/android/systemui/screenshot/ScreenshotTouchHandler$ScreenshotCallback;->onTouchDown()V

    .line 42
    :cond_11
    iput-boolean v1, p0, Lcom/android/systemui/screenshot/ScreenshotTouchHandler;->refresh:Z

    .line 43
    iget-object v0, p0, Lcom/android/systemui/screenshot/ScreenshotTouchHandler;->mFirstPoint:Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    iput v2, v0, Landroid/graphics/PointF;->x:F

    .line 44
    iget-object v0, p0, Lcom/android/systemui/screenshot/ScreenshotTouchHandler;->mFirstPoint:Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    iput v2, v0, Landroid/graphics/PointF;->y:F

    .line 47
    :cond_23
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-ne v0, v2, :cond_65

    .line 48
    iget-object v0, p0, Lcom/android/systemui/screenshot/ScreenshotTouchHandler;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 50
    iget-object v0, p0, Lcom/android/systemui/screenshot/ScreenshotTouchHandler;->mStopPoint:Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v4

    iput v4, v0, Landroid/graphics/PointF;->x:F

    .line 51
    iget-object v0, p0, Lcom/android/systemui/screenshot/ScreenshotTouchHandler;->mStopPoint:Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v4

    iput v4, v0, Landroid/graphics/PointF;->y:F

    .line 52
    iget-object v0, p0, Lcom/android/systemui/screenshot/ScreenshotTouchHandler;->mFirstPoint:Landroid/graphics/PointF;

    iget-object v4, p0, Lcom/android/systemui/screenshot/ScreenshotTouchHandler;->mStopPoint:Landroid/graphics/PointF;

    invoke-static {v0, v4}, Lcom/android/systemui/screenshot/ScreenshotTouchHandler;->distance(Landroid/graphics/PointF;Landroid/graphics/PointF;)F

    move-result v0

    sget v4, Lcom/android/systemui/screenshot/ScreenshotTouchHandler;->threshold:I

    int-to-float v4, v4

    cmpl-float v0, v0, v4

    if-lez v0, :cond_65

    .line 53
    iput-boolean v3, p0, Lcom/android/systemui/screenshot/ScreenshotTouchHandler;->refresh:Z

    .line 54
    iget-object v0, p0, Lcom/android/systemui/screenshot/ScreenshotTouchHandler;->mPoint:Landroid/graphics/PointF;

    iget-object v4, p0, Lcom/android/systemui/screenshot/ScreenshotTouchHandler;->mStopPoint:Landroid/graphics/PointF;

    iget v5, v4, Landroid/graphics/PointF;->x:F

    iget-object v6, p0, Lcom/android/systemui/screenshot/ScreenshotTouchHandler;->mFirstPoint:Landroid/graphics/PointF;

    iget v7, v6, Landroid/graphics/PointF;->x:F

    sub-float/2addr v5, v7

    iput v5, v0, Landroid/graphics/PointF;->x:F

    .line 55
    iget v4, v4, Landroid/graphics/PointF;->y:F

    iget v5, v6, Landroid/graphics/PointF;->y:F

    sub-float/2addr v4, v5

    iput v4, v0, Landroid/graphics/PointF;->y:F

    .line 58
    :cond_65
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eq v0, v3, :cond_72

    .line 59
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v4, 0x3

    if-ne v0, v4, :cond_9a

    .line 60
    :cond_72
    iget-object v0, p0, Lcom/android/systemui/screenshot/ScreenshotTouchHandler;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_97

    const/16 v4, 0x3e8

    .line 61
    iget-object v5, p0, Lcom/android/systemui/screenshot/ScreenshotTouchHandler;->mContext:Landroid/content/Context;

    invoke-static {v5}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v0, v4, v5}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 62
    iget-object v0, p0, Lcom/android/systemui/screenshot/ScreenshotTouchHandler;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v0

    .line 63
    iget-object v4, p0, Lcom/android/systemui/screenshot/ScreenshotTouchHandler;->mCallback:Lcom/android/systemui/screenshot/ScreenshotTouchHandler$ScreenshotCallback;

    if-eqz v4, :cond_97

    .line 64
    iget-boolean v5, p0, Lcom/android/systemui/screenshot/ScreenshotTouchHandler;->refresh:Z

    if-eqz v5, :cond_97

    .line 65
    invoke-interface {v4, v0}, Lcom/android/systemui/screenshot/ScreenshotTouchHandler$ScreenshotCallback;->onTouchUp(F)V

    .line 69
    :cond_97
    invoke-virtual {p0}, Lcom/android/systemui/screenshot/ScreenshotTouchHandler;->recycleVelocityTracker()V

    .line 71
    :cond_9a
    iget-boolean v0, p0, Lcom/android/systemui/screenshot/ScreenshotTouchHandler;->refresh:Z

    if-eqz v0, :cond_b6

    .line 72
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-ne p1, v2, :cond_b5

    .line 73
    iget-object p1, p0, Lcom/android/systemui/screenshot/ScreenshotTouchHandler;->mCallback:Lcom/android/systemui/screenshot/ScreenshotTouchHandler$ScreenshotCallback;

    if-eqz p1, :cond_b5

    .line 74
    iget-object v0, p0, Lcom/android/systemui/screenshot/ScreenshotTouchHandler;->mPoint:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->y:F

    invoke-interface {p1, v0}, Lcom/android/systemui/screenshot/ScreenshotTouchHandler$ScreenshotCallback;->onMove(F)V

    .line 75
    iget-object p0, p0, Lcom/android/systemui/screenshot/ScreenshotTouchHandler;->mPoint:Landroid/graphics/PointF;

    const/4 p1, 0x0

    invoke-virtual {p0, p1, p1}, Landroid/graphics/PointF;->set(FF)V

    :cond_b5
    return v3

    :cond_b6
    return v1
.end method

.method recycleVelocityTracker()V
    .registers 2

    .line 92
    iget-object v0, p0, Lcom/android/systemui/screenshot/ScreenshotTouchHandler;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_a

    .line 93
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    const/4 v0, 0x0

    .line 94
    iput-object v0, p0, Lcom/android/systemui/screenshot/ScreenshotTouchHandler;->mVelocityTracker:Landroid/view/VelocityTracker;

    :cond_a
    return-void
.end method

.method public setCallback(Lcom/android/systemui/screenshot/ScreenshotTouchHandler$ScreenshotCallback;)V
    .registers 2

    .line 32
    iput-object p1, p0, Lcom/android/systemui/screenshot/ScreenshotTouchHandler;->mCallback:Lcom/android/systemui/screenshot/ScreenshotTouchHandler$ScreenshotCallback;

    return-void
.end method
