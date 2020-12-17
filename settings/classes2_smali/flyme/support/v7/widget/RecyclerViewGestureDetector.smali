.class public Lflyme/support/v7/widget/RecyclerViewGestureDetector;
.super Ljava/lang/Object;
.source "RecyclerViewGestureDetector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lflyme/support/v7/widget/RecyclerViewGestureDetector$GestureHandler;,
        Lflyme/support/v7/widget/RecyclerViewGestureDetector$OnGestureListener;
    }
.end annotation


# static fields
.field private static final LONGPRESS_TIMEOUT:I

.field private static final TAP_TIMEOUT:I


# instance fields
.field private mAlwaysInTapRegion:Z

.field private mCurrentDownEvent:Landroid/view/MotionEvent;

.field private mDownFocusX:F

.field private mDownFocusY:F

.field private final mHandler:Landroid/os/Handler;

.field private mInLongPress:Z

.field private mIsLongpressEnabled:Z

.field private mLastFocusX:F

.field private mLastFocusY:F

.field private final mListener:Lflyme/support/v7/widget/RecyclerViewGestureDetector$OnGestureListener;

.field private mMaximumFlingVelocity:I

.field private mMinimumFlingVelocity:I

.field private mPreviousUpEvent:Landroid/view/MotionEvent;

.field private mTouchSlopSquare:I

.field private mVelocityTracker:Landroid/view/VelocityTracker;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 93
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v0

    sput v0, Lflyme/support/v7/widget/RecyclerViewGestureDetector;->LONGPRESS_TIMEOUT:I

    .line 94
    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v0

    sput v0, Lflyme/support/v7/widget/RecyclerViewGestureDetector;->TAP_TIMEOUT:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lflyme/support/v7/widget/RecyclerViewGestureDetector$OnGestureListener;)V
    .registers 4

    const/4 v0, 0x0

    .line 161
    invoke-direct {p0, p1, p2, v0}, Lflyme/support/v7/widget/RecyclerViewGestureDetector;-><init>(Landroid/content/Context;Lflyme/support/v7/widget/RecyclerViewGestureDetector$OnGestureListener;Landroid/os/Handler;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lflyme/support/v7/widget/RecyclerViewGestureDetector$OnGestureListener;Landroid/os/Handler;)V
    .registers 5

    .line 175
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p3, :cond_d

    .line 177
    new-instance v0, Lflyme/support/v7/widget/RecyclerViewGestureDetector$GestureHandler;

    invoke-direct {v0, p0, p3}, Lflyme/support/v7/widget/RecyclerViewGestureDetector$GestureHandler;-><init>(Lflyme/support/v7/widget/RecyclerViewGestureDetector;Landroid/os/Handler;)V

    iput-object v0, p0, Lflyme/support/v7/widget/RecyclerViewGestureDetector;->mHandler:Landroid/os/Handler;

    goto :goto_14

    .line 179
    :cond_d
    new-instance p3, Lflyme/support/v7/widget/RecyclerViewGestureDetector$GestureHandler;

    invoke-direct {p3, p0}, Lflyme/support/v7/widget/RecyclerViewGestureDetector$GestureHandler;-><init>(Lflyme/support/v7/widget/RecyclerViewGestureDetector;)V

    iput-object p3, p0, Lflyme/support/v7/widget/RecyclerViewGestureDetector;->mHandler:Landroid/os/Handler;

    .line 181
    :goto_14
    iput-object p2, p0, Lflyme/support/v7/widget/RecyclerViewGestureDetector;->mListener:Lflyme/support/v7/widget/RecyclerViewGestureDetector$OnGestureListener;

    .line 182
    invoke-direct {p0, p1}, Lflyme/support/v7/widget/RecyclerViewGestureDetector;->init(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$000(Lflyme/support/v7/widget/RecyclerViewGestureDetector;)Landroid/view/MotionEvent;
    .registers 1

    .line 15
    iget-object p0, p0, Lflyme/support/v7/widget/RecyclerViewGestureDetector;->mCurrentDownEvent:Landroid/view/MotionEvent;

    return-object p0
.end method

.method static synthetic access$100(Lflyme/support/v7/widget/RecyclerViewGestureDetector;)Lflyme/support/v7/widget/RecyclerViewGestureDetector$OnGestureListener;
    .registers 1

    .line 15
    iget-object p0, p0, Lflyme/support/v7/widget/RecyclerViewGestureDetector;->mListener:Lflyme/support/v7/widget/RecyclerViewGestureDetector$OnGestureListener;

    return-object p0
.end method

.method static synthetic access$200(Lflyme/support/v7/widget/RecyclerViewGestureDetector;)V
    .registers 1

    .line 15
    invoke-direct {p0}, Lflyme/support/v7/widget/RecyclerViewGestureDetector;->dispatchLongPress()V

    return-void
.end method

.method private cancel()V
    .registers 3

    .line 379
    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerViewGestureDetector;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 380
    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerViewGestureDetector;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 381
    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerViewGestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    const/4 v0, 0x0

    .line 382
    iput-object v0, p0, Lflyme/support/v7/widget/RecyclerViewGestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/4 v0, 0x0

    .line 383
    iput-boolean v0, p0, Lflyme/support/v7/widget/RecyclerViewGestureDetector;->mAlwaysInTapRegion:Z

    .line 384
    iput-boolean v0, p0, Lflyme/support/v7/widget/RecyclerViewGestureDetector;->mInLongPress:Z

    return-void
.end method

.method private cancelTaps()V
    .registers 3

    .line 388
    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerViewGestureDetector;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 389
    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerViewGestureDetector;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    const/4 v0, 0x0

    .line 390
    iput-boolean v0, p0, Lflyme/support/v7/widget/RecyclerViewGestureDetector;->mAlwaysInTapRegion:Z

    .line 391
    iput-boolean v0, p0, Lflyme/support/v7/widget/RecyclerViewGestureDetector;->mInLongPress:Z

    return-void
.end method

.method private dispatchLongPress()V
    .registers 2

    const/4 v0, 0x1

    .line 395
    iput-boolean v0, p0, Lflyme/support/v7/widget/RecyclerViewGestureDetector;->mInLongPress:Z

    .line 396
    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerViewGestureDetector;->mListener:Lflyme/support/v7/widget/RecyclerViewGestureDetector$OnGestureListener;

    iget-object p0, p0, Lflyme/support/v7/widget/RecyclerViewGestureDetector;->mCurrentDownEvent:Landroid/view/MotionEvent;

    invoke-interface {v0, p0}, Lflyme/support/v7/widget/RecyclerViewGestureDetector$OnGestureListener;->onLongPress(Landroid/view/MotionEvent;)V

    return-void
.end method

.method private init(Landroid/content/Context;)V
    .registers 4

    .line 187
    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerViewGestureDetector;->mListener:Lflyme/support/v7/widget/RecyclerViewGestureDetector$OnGestureListener;

    if-eqz v0, :cond_33

    const/4 v0, 0x1

    .line 190
    iput-boolean v0, p0, Lflyme/support/v7/widget/RecyclerViewGestureDetector;->mIsLongpressEnabled:Z

    if-nez p1, :cond_1a

    .line 196
    invoke-static {}, Landroid/view/ViewConfiguration;->getTouchSlop()I

    move-result p1

    .line 198
    invoke-static {}, Landroid/view/ViewConfiguration;->getMinimumFlingVelocity()I

    move-result v0

    iput v0, p0, Lflyme/support/v7/widget/RecyclerViewGestureDetector;->mMinimumFlingVelocity:I

    .line 199
    invoke-static {}, Landroid/view/ViewConfiguration;->getMaximumFlingVelocity()I

    move-result v0

    iput v0, p0, Lflyme/support/v7/widget/RecyclerViewGestureDetector;->mMaximumFlingVelocity:I

    goto :goto_2f

    .line 201
    :cond_1a
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    .line 202
    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    .line 203
    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v1

    iput v1, p0, Lflyme/support/v7/widget/RecyclerViewGestureDetector;->mMinimumFlingVelocity:I

    .line 204
    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result p1

    iput p1, p0, Lflyme/support/v7/widget/RecyclerViewGestureDetector;->mMaximumFlingVelocity:I

    move p1, v0

    :goto_2f
    mul-int/2addr p1, p1

    .line 206
    iput p1, p0, Lflyme/support/v7/widget/RecyclerViewGestureDetector;->mTouchSlopSquare:I

    return-void

    .line 188
    :cond_33
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "OnGestureListener must not be null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 14

    .line 231
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 233
    iget-object v1, p0, Lflyme/support/v7/widget/RecyclerViewGestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v1, :cond_e

    .line 234
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v1

    iput-object v1, p0, Lflyme/support/v7/widget/RecyclerViewGestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 236
    :cond_e
    iget-object v1, p0, Lflyme/support/v7/widget/RecyclerViewGestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v1, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    and-int/lit16 v0, v0, 0xff

    const/4 v1, 0x6

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v1, :cond_1c

    move v4, v3

    goto :goto_1d

    :cond_1c
    move v4, v2

    :goto_1d
    if-eqz v4, :cond_24

    .line 240
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v5

    goto :goto_25

    :cond_24
    const/4 v5, -0x1

    .line 244
    :goto_25
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v6

    const/4 v7, 0x0

    move v8, v2

    move v9, v7

    move v10, v9

    :goto_2d
    if-ge v8, v6, :cond_3f

    if-ne v5, v8, :cond_32

    goto :goto_3c

    .line 247
    :cond_32
    invoke-virtual {p1, v8}, Landroid/view/MotionEvent;->getX(I)F

    move-result v11

    add-float/2addr v9, v11

    .line 248
    invoke-virtual {p1, v8}, Landroid/view/MotionEvent;->getY(I)F

    move-result v11

    add-float/2addr v10, v11

    :goto_3c
    add-int/lit8 v8, v8, 0x1

    goto :goto_2d

    :cond_3f
    if-eqz v4, :cond_44

    add-int/lit8 v4, v6, -0x1

    goto :goto_45

    :cond_44
    move v4, v6

    :goto_45
    int-to-float v4, v4

    div-float/2addr v9, v4

    div-float/2addr v10, v4

    const/4 v4, 0x2

    if-eqz v0, :cond_17a

    const/16 v5, 0x3e8

    if-eq v0, v3, :cond_114

    if-eq v0, v4, :cond_b8

    const/4 v3, 0x3

    if-eq v0, v3, :cond_b3

    const/4 v3, 0x5

    if-eq v0, v3, :cond_a6

    if-eq v0, v1, :cond_5b

    goto/16 :goto_1c5

    .line 265
    :cond_5b
    iput v9, p0, Lflyme/support/v7/widget/RecyclerViewGestureDetector;->mLastFocusX:F

    iput v9, p0, Lflyme/support/v7/widget/RecyclerViewGestureDetector;->mDownFocusX:F

    .line 266
    iput v10, p0, Lflyme/support/v7/widget/RecyclerViewGestureDetector;->mLastFocusY:F

    iput v10, p0, Lflyme/support/v7/widget/RecyclerViewGestureDetector;->mDownFocusY:F

    .line 270
    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerViewGestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    iget v1, p0, Lflyme/support/v7/widget/RecyclerViewGestureDetector;->mMaximumFlingVelocity:I

    int-to-float v1, v1

    invoke-virtual {v0, v5, v1}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 271
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    .line 272
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    .line 273
    iget-object v3, p0, Lflyme/support/v7/widget/RecyclerViewGestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v3, v1}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v3

    .line 274
    iget-object v4, p0, Lflyme/support/v7/widget/RecyclerViewGestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v4, v1}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v1

    move v4, v2

    :goto_80
    if-ge v4, v6, :cond_1c5

    if-ne v4, v0, :cond_85

    goto :goto_a3

    .line 278
    :cond_85
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v5

    .line 279
    iget-object v8, p0, Lflyme/support/v7/widget/RecyclerViewGestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v8, v5}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v8

    mul-float/2addr v8, v3

    .line 280
    iget-object v9, p0, Lflyme/support/v7/widget/RecyclerViewGestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v9, v5}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v5

    mul-float/2addr v5, v1

    add-float/2addr v8, v5

    cmpg-float v5, v8, v7

    if-gez v5, :cond_a3

    .line 284
    iget-object p0, p0, Lflyme/support/v7/widget/RecyclerViewGestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {p0}, Landroid/view/VelocityTracker;->clear()V

    goto/16 :goto_1c5

    :cond_a3
    :goto_a3
    add-int/lit8 v4, v4, 0x1

    goto :goto_80

    .line 258
    :cond_a6
    iput v9, p0, Lflyme/support/v7/widget/RecyclerViewGestureDetector;->mLastFocusX:F

    iput v9, p0, Lflyme/support/v7/widget/RecyclerViewGestureDetector;->mDownFocusX:F

    .line 259
    iput v10, p0, Lflyme/support/v7/widget/RecyclerViewGestureDetector;->mLastFocusY:F

    iput v10, p0, Lflyme/support/v7/widget/RecyclerViewGestureDetector;->mDownFocusY:F

    .line 261
    invoke-direct {p0}, Lflyme/support/v7/widget/RecyclerViewGestureDetector;->cancelTaps()V

    goto/16 :goto_1c5

    .line 370
    :cond_b3
    invoke-direct {p0}, Lflyme/support/v7/widget/RecyclerViewGestureDetector;->cancel()V

    goto/16 :goto_1c5

    .line 310
    :cond_b8
    iget-boolean v0, p0, Lflyme/support/v7/widget/RecyclerViewGestureDetector;->mInLongPress:Z

    if-eqz v0, :cond_be

    goto/16 :goto_1c5

    .line 313
    :cond_be
    iget v0, p0, Lflyme/support/v7/widget/RecyclerViewGestureDetector;->mLastFocusX:F

    sub-float/2addr v0, v9

    .line 314
    iget v1, p0, Lflyme/support/v7/widget/RecyclerViewGestureDetector;->mLastFocusY:F

    sub-float/2addr v1, v10

    .line 315
    iget-boolean v5, p0, Lflyme/support/v7/widget/RecyclerViewGestureDetector;->mAlwaysInTapRegion:Z

    if-eqz v5, :cond_f4

    .line 316
    iget v5, p0, Lflyme/support/v7/widget/RecyclerViewGestureDetector;->mDownFocusX:F

    sub-float v5, v9, v5

    float-to-int v5, v5

    .line 317
    iget v6, p0, Lflyme/support/v7/widget/RecyclerViewGestureDetector;->mDownFocusY:F

    sub-float v6, v10, v6

    float-to-int v6, v6

    mul-int/2addr v5, v5

    mul-int/2addr v6, v6

    add-int/2addr v5, v6

    .line 319
    iget v6, p0, Lflyme/support/v7/widget/RecyclerViewGestureDetector;->mTouchSlopSquare:I

    if-le v5, v6, :cond_1c5

    .line 320
    iget-object v5, p0, Lflyme/support/v7/widget/RecyclerViewGestureDetector;->mListener:Lflyme/support/v7/widget/RecyclerViewGestureDetector$OnGestureListener;

    iget-object v6, p0, Lflyme/support/v7/widget/RecyclerViewGestureDetector;->mCurrentDownEvent:Landroid/view/MotionEvent;

    invoke-interface {v5, v6, p1, v0, v1}, Lflyme/support/v7/widget/RecyclerViewGestureDetector$OnGestureListener;->onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result p1

    .line 321
    iput v9, p0, Lflyme/support/v7/widget/RecyclerViewGestureDetector;->mLastFocusX:F

    .line 322
    iput v10, p0, Lflyme/support/v7/widget/RecyclerViewGestureDetector;->mLastFocusY:F

    .line 323
    iput-boolean v2, p0, Lflyme/support/v7/widget/RecyclerViewGestureDetector;->mAlwaysInTapRegion:Z

    .line 324
    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerViewGestureDetector;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 325
    iget-object p0, p0, Lflyme/support/v7/widget/RecyclerViewGestureDetector;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v4}, Landroid/os/Handler;->removeMessages(I)V

    move v2, p1

    goto/16 :goto_1c5

    .line 327
    :cond_f4
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v3

    const/high16 v4, 0x3f800000  # 1.0f

    cmpl-float v3, v3, v4

    if-gez v3, :cond_106

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v3

    cmpl-float v3, v3, v4

    if-ltz v3, :cond_1c5

    .line 328
    :cond_106
    iget-object v2, p0, Lflyme/support/v7/widget/RecyclerViewGestureDetector;->mListener:Lflyme/support/v7/widget/RecyclerViewGestureDetector$OnGestureListener;

    iget-object v3, p0, Lflyme/support/v7/widget/RecyclerViewGestureDetector;->mCurrentDownEvent:Landroid/view/MotionEvent;

    invoke-interface {v2, v3, p1, v0, v1}, Lflyme/support/v7/widget/RecyclerViewGestureDetector$OnGestureListener;->onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result v2

    .line 329
    iput v9, p0, Lflyme/support/v7/widget/RecyclerViewGestureDetector;->mLastFocusX:F

    .line 330
    iput v10, p0, Lflyme/support/v7/widget/RecyclerViewGestureDetector;->mLastFocusY:F

    goto/16 :goto_1c5

    .line 335
    :cond_114
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    .line 336
    iget-boolean v1, p0, Lflyme/support/v7/widget/RecyclerViewGestureDetector;->mInLongPress:Z

    if-eqz v1, :cond_11f

    .line 337
    iput-boolean v2, p0, Lflyme/support/v7/widget/RecyclerViewGestureDetector;->mInLongPress:Z

    goto :goto_15c

    .line 338
    :cond_11f
    iget-boolean v1, p0, Lflyme/support/v7/widget/RecyclerViewGestureDetector;->mAlwaysInTapRegion:Z

    if-eqz v1, :cond_12a

    .line 339
    iget-object v1, p0, Lflyme/support/v7/widget/RecyclerViewGestureDetector;->mListener:Lflyme/support/v7/widget/RecyclerViewGestureDetector$OnGestureListener;

    invoke-interface {v1, p1}, Lflyme/support/v7/widget/RecyclerViewGestureDetector$OnGestureListener;->onSingleTapUp(Landroid/view/MotionEvent;)Z

    move-result v2

    goto :goto_15c

    .line 343
    :cond_12a
    iget-object v1, p0, Lflyme/support/v7/widget/RecyclerViewGestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 344
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v6

    .line 345
    iget v7, p0, Lflyme/support/v7/widget/RecyclerViewGestureDetector;->mMaximumFlingVelocity:I

    int-to-float v7, v7

    invoke-virtual {v1, v5, v7}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 346
    invoke-virtual {v1, v6}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v5

    .line 347
    invoke-virtual {v1, v6}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v1

    .line 349
    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v6

    iget v7, p0, Lflyme/support/v7/widget/RecyclerViewGestureDetector;->mMinimumFlingVelocity:I

    int-to-float v7, v7

    cmpl-float v6, v6, v7

    if-gtz v6, :cond_154

    .line 350
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v6

    iget v7, p0, Lflyme/support/v7/widget/RecyclerViewGestureDetector;->mMinimumFlingVelocity:I

    int-to-float v7, v7

    cmpl-float v6, v6, v7

    if-lez v6, :cond_15c

    .line 351
    :cond_154
    iget-object v2, p0, Lflyme/support/v7/widget/RecyclerViewGestureDetector;->mListener:Lflyme/support/v7/widget/RecyclerViewGestureDetector$OnGestureListener;

    iget-object v6, p0, Lflyme/support/v7/widget/RecyclerViewGestureDetector;->mCurrentDownEvent:Landroid/view/MotionEvent;

    invoke-interface {v2, v6, p1, v1, v5}, Lflyme/support/v7/widget/RecyclerViewGestureDetector$OnGestureListener;->onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result v2

    .line 354
    :cond_15c
    :goto_15c
    iget-object p1, p0, Lflyme/support/v7/widget/RecyclerViewGestureDetector;->mPreviousUpEvent:Landroid/view/MotionEvent;

    if-eqz p1, :cond_163

    .line 355
    invoke-virtual {p1}, Landroid/view/MotionEvent;->recycle()V

    .line 358
    :cond_163
    iput-object v0, p0, Lflyme/support/v7/widget/RecyclerViewGestureDetector;->mPreviousUpEvent:Landroid/view/MotionEvent;

    .line 359
    iget-object p1, p0, Lflyme/support/v7/widget/RecyclerViewGestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz p1, :cond_16f

    .line 362
    invoke-virtual {p1}, Landroid/view/VelocityTracker;->recycle()V

    const/4 p1, 0x0

    .line 363
    iput-object p1, p0, Lflyme/support/v7/widget/RecyclerViewGestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 365
    :cond_16f
    iget-object p1, p0, Lflyme/support/v7/widget/RecyclerViewGestureDetector;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 366
    iget-object p0, p0, Lflyme/support/v7/widget/RecyclerViewGestureDetector;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v4}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_1c5

    .line 291
    :cond_17a
    iput v9, p0, Lflyme/support/v7/widget/RecyclerViewGestureDetector;->mLastFocusX:F

    iput v9, p0, Lflyme/support/v7/widget/RecyclerViewGestureDetector;->mDownFocusX:F

    .line 292
    iput v10, p0, Lflyme/support/v7/widget/RecyclerViewGestureDetector;->mLastFocusY:F

    iput v10, p0, Lflyme/support/v7/widget/RecyclerViewGestureDetector;->mDownFocusY:F

    .line 293
    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerViewGestureDetector;->mCurrentDownEvent:Landroid/view/MotionEvent;

    if-eqz v0, :cond_189

    .line 294
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 296
    :cond_189
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    iput-object v0, p0, Lflyme/support/v7/widget/RecyclerViewGestureDetector;->mCurrentDownEvent:Landroid/view/MotionEvent;

    .line 297
    iput-boolean v3, p0, Lflyme/support/v7/widget/RecyclerViewGestureDetector;->mAlwaysInTapRegion:Z

    .line 298
    iput-boolean v2, p0, Lflyme/support/v7/widget/RecyclerViewGestureDetector;->mInLongPress:Z

    .line 300
    iget-boolean v0, p0, Lflyme/support/v7/widget/RecyclerViewGestureDetector;->mIsLongpressEnabled:Z

    if-eqz v0, :cond_1af

    .line 301
    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerViewGestureDetector;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 302
    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerViewGestureDetector;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lflyme/support/v7/widget/RecyclerViewGestureDetector;->mCurrentDownEvent:Landroid/view/MotionEvent;

    invoke-virtual {v1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v5

    sget v1, Lflyme/support/v7/widget/RecyclerViewGestureDetector;->TAP_TIMEOUT:I

    int-to-long v7, v1

    add-long/2addr v5, v7

    sget v1, Lflyme/support/v7/widget/RecyclerViewGestureDetector;->LONGPRESS_TIMEOUT:I

    int-to-long v7, v1

    add-long/2addr v5, v7

    invoke-virtual {v0, v4, v5, v6}, Landroid/os/Handler;->sendEmptyMessageAtTime(IJ)Z

    .line 305
    :cond_1af
    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerViewGestureDetector;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lflyme/support/v7/widget/RecyclerViewGestureDetector;->mCurrentDownEvent:Landroid/view/MotionEvent;

    invoke-virtual {v1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v4

    sget v1, Lflyme/support/v7/widget/RecyclerViewGestureDetector;->TAP_TIMEOUT:I

    int-to-long v6, v1

    add-long/2addr v4, v6

    invoke-virtual {v0, v3, v4, v5}, Landroid/os/Handler;->sendEmptyMessageAtTime(IJ)Z

    .line 306
    iget-object p0, p0, Lflyme/support/v7/widget/RecyclerViewGestureDetector;->mListener:Lflyme/support/v7/widget/RecyclerViewGestureDetector$OnGestureListener;

    invoke-interface {p0, p1}, Lflyme/support/v7/widget/RecyclerViewGestureDetector$OnGestureListener;->onDown(Landroid/view/MotionEvent;)Z

    move-result p0

    or-int/2addr v2, p0

    :cond_1c5
    :goto_1c5
    return v2
.end method
