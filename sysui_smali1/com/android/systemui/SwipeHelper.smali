.class public Lcom/android/systemui/SwipeHelper;
.super Ljava/lang/Object;
.source "SwipeHelper.java"

# interfaces
.implements Lcom/android/systemui/Gefingerpoken;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/SwipeHelper$Callback;
    }
.end annotation


# instance fields
.field private final mCallback:Lcom/android/systemui/SwipeHelper$Callback;

.field private mCanCurrViewBeDimissed:Z

.field private final mContext:Landroid/content/Context;

.field private mCurrView:Landroid/view/View;

.field private mDensityScale:F

.field private mDisableHwLayers:Z

.field private final mDismissPendingMap:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/view/View;",
            "Landroid/animation/Animator;",
            ">;"
        }
    .end annotation
.end field

.field private mDragging:Z

.field private final mFadeDependingOnAmountSwiped:Z

.field private final mFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

.field private final mFalsingThreshold:I

.field private final mFlingAnimationUtils:Lcom/android/systemui/statusbar/FlingAnimationUtils;

.field protected final mHandler:Landroid/os/Handler;

.field private mInitialTouchPos:F

.field private mLongPressSent:Z

.field private final mLongPressTimeout:J

.field private mMaxSwipeProgress:F

.field private mMenuRowIntercepting:Z

.field private mMinSwipeProgress:F

.field private mPagingTouchSlop:F

.field private mPerpendicularInitialTouchPos:F

.field private mSnappingChild:Z

.field private final mSwipeDirection:I

.field private final mTmpPos:[I

.field private mTouchAboveFalsingThreshold:Z

.field private mTranslation:F

.field private final mVelocityTracker:Landroid/view/VelocityTracker;

.field private mWatchLongPress:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(ILcom/android/systemui/SwipeHelper$Callback;Landroid/content/Context;Lcom/android/systemui/plugins/FalsingManager;)V
    .registers 7

    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 68
    iput v0, p0, Lcom/android/systemui/SwipeHelper;->mMinSwipeProgress:F

    const/high16 v1, 0x3f800000  # 1.0f

    .line 69
    iput v1, p0, Lcom/android/systemui/SwipeHelper;->mMaxSwipeProgress:F

    .line 85
    iput v0, p0, Lcom/android/systemui/SwipeHelper;->mTranslation:F

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 92
    iput-object v0, p0, Lcom/android/systemui/SwipeHelper;->mTmpPos:[I

    .line 99
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/SwipeHelper;->mDismissPendingMap:Landroid/util/ArrayMap;

    .line 103
    iput-object p3, p0, Lcom/android/systemui/SwipeHelper;->mContext:Landroid/content/Context;

    .line 104
    iput-object p2, p0, Lcom/android/systemui/SwipeHelper;->mCallback:Lcom/android/systemui/SwipeHelper$Callback;

    .line 105
    new-instance p2, Landroid/os/Handler;

    invoke-direct {p2}, Landroid/os/Handler;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/SwipeHelper;->mHandler:Landroid/os/Handler;

    .line 106
    iput p1, p0, Lcom/android/systemui/SwipeHelper;->mSwipeDirection:I

    .line 107
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/SwipeHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 108
    invoke-static {p3}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledPagingTouchSlop()I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/android/systemui/SwipeHelper;->mPagingTouchSlop:F

    .line 111
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result p1

    int-to-float p1, p1

    const/high16 p2, 0x3fc00000  # 1.5f

    mul-float/2addr p1, p2

    float-to-long p1, p1

    iput-wide p1, p0, Lcom/android/systemui/SwipeHelper;->mLongPressTimeout:J

    .line 113
    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 114
    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p2

    iget p2, p2, Landroid/util/DisplayMetrics;->density:F

    iput p2, p0, Lcom/android/systemui/SwipeHelper;->mDensityScale:F

    .line 115
    sget p2, Lcom/android/systemui/R$dimen;->swipe_helper_falsing_threshold:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/android/systemui/SwipeHelper;->mFalsingThreshold:I

    .line 116
    sget p2, Lcom/android/systemui/R$bool;->config_fadeDependingOnAmountSwiped:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/systemui/SwipeHelper;->mFadeDependingOnAmountSwiped:Z

    .line 117
    iput-object p4, p0, Lcom/android/systemui/SwipeHelper;->mFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

    .line 118
    new-instance p1, Lcom/android/systemui/statusbar/FlingAnimationUtils;

    invoke-virtual {p0}, Lcom/android/systemui/SwipeHelper;->getMaxEscapeAnimDuration()J

    move-result-wide v0

    long-to-float p2, v0

    const/high16 p4, 0x447a0000  # 1000.0f

    div-float/2addr p2, p4

    invoke-direct {p1, p3, p2}, Lcom/android/systemui/statusbar/FlingAnimationUtils;-><init>(Landroid/content/Context;F)V

    iput-object p1, p0, Lcom/android/systemui/SwipeHelper;->mFlingAnimationUtils:Lcom/android/systemui/statusbar/FlingAnimationUtils;

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/SwipeHelper;)Landroid/view/View;
    .registers 1

    .line 43
    iget-object p0, p0, Lcom/android/systemui/SwipeHelper;->mCurrView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/systemui/SwipeHelper;)Z
    .registers 1

    .line 43
    iget-boolean p0, p0, Lcom/android/systemui/SwipeHelper;->mLongPressSent:Z

    return p0
.end method

.method static synthetic access$102(Lcom/android/systemui/SwipeHelper;Z)Z
    .registers 2

    .line 43
    iput-boolean p1, p0, Lcom/android/systemui/SwipeHelper;->mLongPressSent:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/systemui/SwipeHelper;)[I
    .registers 1

    .line 43
    iget-object p0, p0, Lcom/android/systemui/SwipeHelper;->mTmpPos:[I

    return-object p0
.end method

.method static synthetic access$300(Lcom/android/systemui/SwipeHelper;Landroid/view/View;Z)V
    .registers 3

    .line 43
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/SwipeHelper;->updateSwipeProgressFromOffset(Landroid/view/View;Z)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/systemui/SwipeHelper;)Landroid/util/ArrayMap;
    .registers 1

    .line 43
    iget-object p0, p0, Lcom/android/systemui/SwipeHelper;->mDismissPendingMap:Landroid/util/ArrayMap;

    return-object p0
.end method

.method static synthetic access$500(Lcom/android/systemui/SwipeHelper;)Lcom/android/systemui/SwipeHelper$Callback;
    .registers 1

    .line 43
    iget-object p0, p0, Lcom/android/systemui/SwipeHelper;->mCallback:Lcom/android/systemui/SwipeHelper$Callback;

    return-object p0
.end method

.method static synthetic access$600(Lcom/android/systemui/SwipeHelper;)Z
    .registers 1

    .line 43
    iget-boolean p0, p0, Lcom/android/systemui/SwipeHelper;->mDisableHwLayers:Z

    return p0
.end method

.method static synthetic access$702(Lcom/android/systemui/SwipeHelper;Z)Z
    .registers 2

    .line 43
    iput-boolean p1, p0, Lcom/android/systemui/SwipeHelper;->mSnappingChild:Z

    return p1
.end method

.method private getFalsingThreshold()I
    .registers 2

    .line 668
    iget-object v0, p0, Lcom/android/systemui/SwipeHelper;->mCallback:Lcom/android/systemui/SwipeHelper$Callback;

    invoke-interface {v0}, Lcom/android/systemui/SwipeHelper$Callback;->getFalsingThresholdFactor()F

    move-result v0

    .line 669
    iget p0, p0, Lcom/android/systemui/SwipeHelper;->mFalsingThreshold:I

    int-to-float p0, p0

    mul-float/2addr p0, v0

    float-to-int p0, p0

    return p0
.end method

.method private getMaxVelocity()F
    .registers 2

    .line 673
    iget p0, p0, Lcom/android/systemui/SwipeHelper;->mDensityScale:F

    const/high16 v0, 0x457a0000  # 4000.0f

    mul-float/2addr p0, v0

    return p0
.end method

.method private getPerpendicularPos(Landroid/view/MotionEvent;)F
    .registers 2

    .line 138
    iget p0, p0, Lcom/android/systemui/SwipeHelper;->mSwipeDirection:I

    if-nez p0, :cond_9

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p0

    goto :goto_d

    :cond_9
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p0

    :goto_d
    return p0
.end method

.method private getPos(Landroid/view/MotionEvent;)F
    .registers 2

    .line 134
    iget p0, p0, Lcom/android/systemui/SwipeHelper;->mSwipeDirection:I

    if-nez p0, :cond_9

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p0

    goto :goto_d

    :cond_9
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p0

    :goto_d
    return p0
.end method

.method private getSwipeAlpha(F)F
    .registers 4

    .line 205
    iget-boolean p0, p0, Lcom/android/systemui/SwipeHelper;->mFadeDependingOnAmountSwiped:Z

    const/4 v0, 0x0

    const/high16 v1, 0x3f800000  # 1.0f

    if-eqz p0, :cond_d

    sub-float/2addr v1, p1

    .line 207
    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result p0

    return p0

    :cond_d
    const/high16 p0, 0x3f000000  # 0.5f

    div-float/2addr p1, p0

    .line 210
    invoke-static {v1, p1}, Ljava/lang/Math;->min(FF)F

    move-result p0

    invoke-static {v0, p0}, Ljava/lang/Math;->max(FF)F

    move-result p0

    sub-float/2addr v1, p0

    return v1
.end method

.method private getSwipeProgressForOffset(Landroid/view/View;F)F
    .registers 3

    .line 199
    invoke-virtual {p0, p1}, Lcom/android/systemui/SwipeHelper;->getSize(Landroid/view/View;)F

    move-result p1

    div-float/2addr p2, p1

    .line 200
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p1

    .line 201
    iget p2, p0, Lcom/android/systemui/SwipeHelper;->mMinSwipeProgress:F

    invoke-static {p2, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    iget p0, p0, Lcom/android/systemui/SwipeHelper;->mMaxSwipeProgress:F

    invoke-static {p1, p0}, Ljava/lang/Math;->min(FF)F

    move-result p0

    return p0
.end method

.method private getVelocity(Landroid/view/VelocityTracker;)F
    .registers 2

    .line 146
    iget p0, p0, Lcom/android/systemui/SwipeHelper;->mSwipeDirection:I

    if-nez p0, :cond_9

    invoke-virtual {p1}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result p0

    goto :goto_d

    .line 147
    :cond_9
    invoke-virtual {p1}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result p0

    :goto_d
    return p0
.end method

.method public static invalidateGlobalRegion(Landroid/view/View;)V
    .registers 6

    .line 237
    new-instance v0, Landroid/graphics/RectF;

    .line 239
    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p0}, Landroid/view/View;->getRight()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p0}, Landroid/view/View;->getBottom()I

    move-result v4

    int-to-float v4, v4

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 237
    invoke-static {p0, v0}, Lcom/android/systemui/SwipeHelper;->invalidateGlobalRegion(Landroid/view/View;Landroid/graphics/RectF;)V

    return-void
.end method

.method public static invalidateGlobalRegion(Landroid/view/View;Landroid/graphics/RectF;)V
    .registers 7

    .line 248
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_3f

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/View;

    if-eqz v0, :cond_3f

    .line 249
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    check-cast p0, Landroid/view/View;

    .line 250
    invoke-virtual {p0}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 251
    iget v0, p1, Landroid/graphics/RectF;->left:F

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int v0, v0

    iget v1, p1, Landroid/graphics/RectF;->top:F

    float-to-double v1, v1

    .line 252
    invoke-static {v1, v2}, Ljava/lang/Math;->floor(D)D

    move-result-wide v1

    double-to-int v1, v1

    iget v2, p1, Landroid/graphics/RectF;->right:F

    float-to-double v2, v2

    .line 253
    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v2, v2

    iget v3, p1, Landroid/graphics/RectF;->bottom:F

    float-to-double v3, v3

    .line 254
    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-int v3, v3

    .line 251
    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/view/View;->invalidate(IIII)V

    goto :goto_0

    :cond_3f
    return-void
.end method

.method private snapChildInstantly(Landroid/view/View;)V
    .registers 4

    .line 549
    iget-object v0, p0, Lcom/android/systemui/SwipeHelper;->mCallback:Lcom/android/systemui/SwipeHelper$Callback;

    invoke-interface {v0, p1}, Lcom/android/systemui/SwipeHelper$Callback;->canChildBeDismissed(Landroid/view/View;)Z

    move-result v0

    const/4 v1, 0x0

    .line 550
    invoke-virtual {p0, p1, v1}, Lcom/android/systemui/SwipeHelper;->setTranslation(Landroid/view/View;F)V

    .line 551
    invoke-direct {p0, p1, v0}, Lcom/android/systemui/SwipeHelper;->updateSwipeProgressFromOffset(Landroid/view/View;Z)V

    return-void
.end method

.method private updateSwipeProgressFromOffset(Landroid/view/View;Z)V
    .registers 4

    .line 214
    invoke-virtual {p0, p1}, Lcom/android/systemui/SwipeHelper;->getTranslation(Landroid/view/View;)F

    move-result v0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/SwipeHelper;->updateSwipeProgressFromOffset(Landroid/view/View;ZF)V

    return-void
.end method

.method private updateSwipeProgressFromOffset(Landroid/view/View;ZF)V
    .registers 5

    .line 219
    invoke-direct {p0, p1, p3}, Lcom/android/systemui/SwipeHelper;->getSwipeProgressForOffset(Landroid/view/View;F)F

    move-result p3

    .line 220
    iget-object v0, p0, Lcom/android/systemui/SwipeHelper;->mCallback:Lcom/android/systemui/SwipeHelper$Callback;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/systemui/SwipeHelper$Callback;->updateSwipeProgress(Landroid/view/View;ZF)Z

    move-result v0

    if-nez v0, :cond_2e

    if-eqz p2, :cond_2e

    .line 222
    iget-boolean p2, p0, Lcom/android/systemui/SwipeHelper;->mDisableHwLayers:Z

    if-nez p2, :cond_27

    const/4 p2, 0x0

    cmpl-float p2, p3, p2

    const/4 v0, 0x0

    if-eqz p2, :cond_23

    const/high16 p2, 0x3f800000  # 1.0f

    cmpl-float p2, p3, p2

    if-eqz p2, :cond_23

    const/4 p2, 0x2

    .line 224
    invoke-virtual {p1, p2, v0}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    goto :goto_27

    :cond_23
    const/4 p2, 0x0

    .line 226
    invoke-virtual {p1, p2, v0}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 229
    :cond_27
    :goto_27
    invoke-direct {p0, p3}, Lcom/android/systemui/SwipeHelper;->getSwipeAlpha(F)F

    move-result p0

    invoke-virtual {p1, p0}, Landroid/view/View;->setAlpha(F)V

    .line 232
    :cond_2e
    invoke-static {p1}, Lcom/android/systemui/SwipeHelper;->invalidateGlobalRegion(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public cancelLongPress()V
    .registers 3

    .line 265
    iget-object v0, p0, Lcom/android/systemui/SwipeHelper;->mWatchLongPress:Ljava/lang/Runnable;

    if-eqz v0, :cond_c

    .line 266
    iget-object v1, p0, Lcom/android/systemui/SwipeHelper;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    .line 267
    iput-object v0, p0, Lcom/android/systemui/SwipeHelper;->mWatchLongPress:Ljava/lang/Runnable;

    :cond_c
    return-void
.end method

.method protected createTranslationAnimation(Landroid/view/View;F)Landroid/animation/ObjectAnimator;
    .registers 5

    .line 152
    iget p0, p0, Lcom/android/systemui/SwipeHelper;->mSwipeDirection:I

    if-nez p0, :cond_7

    sget-object p0, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    goto :goto_9

    :cond_7
    sget-object p0, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    :goto_9
    const/4 v0, 0x1

    new-array v0, v0, [F

    const/4 v1, 0x0

    aput p2, v0, v1

    .line 151
    invoke-static {p1, p0, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p0

    return-object p0
.end method

.method public dismissChild(Landroid/view/View;FLjava/lang/Runnable;JZJZ)V
    .registers 24

    move-object v0, p0

    move-object v1, p1

    move-wide/from16 v8, p4

    .line 376
    iget-object v2, v0, Lcom/android/systemui/SwipeHelper;->mCallback:Lcom/android/systemui/SwipeHelper$Callback;

    invoke-interface {v2, p1}, Lcom/android/systemui/SwipeHelper$Callback;->canChildBeDismissed(Landroid/view/View;)Z

    move-result v10

    .line 378
    invoke-virtual {p1}, Landroid/view/View;->getLayoutDirection()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v2, v4, :cond_14

    move v2, v4

    goto :goto_15

    :cond_14
    move v2, v3

    :goto_15
    const/4 v5, 0x0

    cmpl-float v6, p2, v5

    if-nez v6, :cond_2a

    .line 381
    invoke-virtual {p0, p1}, Lcom/android/systemui/SwipeHelper;->getTranslation(Landroid/view/View;)F

    move-result v7

    cmpl-float v7, v7, v5

    if-eqz v7, :cond_24

    if-eqz p9, :cond_2a

    :cond_24
    iget v7, v0, Lcom/android/systemui/SwipeHelper;->mSwipeDirection:I

    if-ne v7, v4, :cond_2a

    move v7, v4

    goto :goto_2b

    :cond_2a
    move v7, v3

    :goto_2b
    if-nez v6, :cond_3b

    .line 384
    invoke-virtual {p0, p1}, Lcom/android/systemui/SwipeHelper;->getTranslation(Landroid/view/View;)F

    move-result v11

    cmpl-float v11, v11, v5

    if-eqz v11, :cond_37

    if-eqz p9, :cond_3b

    :cond_37
    if-eqz v2, :cond_3b

    move v2, v4

    goto :goto_3c

    :cond_3b
    move v2, v3

    .line 386
    :goto_3c
    invoke-static/range {p2 .. p2}, Ljava/lang/Math;->abs(F)F

    move-result v11

    invoke-virtual {p0}, Lcom/android/systemui/SwipeHelper;->getEscapeVelocity()F

    move-result v12

    cmpl-float v11, v11, v12

    if-lez v11, :cond_4c

    cmpg-float v11, p2, v5

    if-ltz v11, :cond_56

    .line 387
    :cond_4c
    invoke-virtual {p0, p1}, Lcom/android/systemui/SwipeHelper;->getTranslation(Landroid/view/View;)F

    move-result v11

    cmpg-float v5, v11, v5

    if-gez v5, :cond_57

    if-nez p9, :cond_57

    :cond_56
    move v3, v4

    :cond_57
    if-nez v3, :cond_63

    if-nez v2, :cond_63

    if-eqz v7, :cond_5e

    goto :goto_63

    .line 391
    :cond_5e
    invoke-virtual {p0, p1}, Lcom/android/systemui/SwipeHelper;->getSize(Landroid/view/View;)F

    move-result v2

    goto :goto_68

    .line 389
    :cond_63
    :goto_63
    invoke-virtual {p0, p1}, Lcom/android/systemui/SwipeHelper;->getSize(Landroid/view/View;)F

    move-result v2

    neg-float v2, v2

    :goto_68
    move v5, v2

    const-wide/16 v11, 0x0

    cmp-long v2, p7, v11

    if-nez v2, :cond_8f

    const-wide/16 v2, 0x190

    if-eqz v6, :cond_8c

    .line 398
    invoke-virtual {p0, p1}, Lcom/android/systemui/SwipeHelper;->getTranslation(Landroid/view/View;)F

    move-result v4

    sub-float v4, v5, v4

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    const/high16 v6, 0x447a0000  # 1000.0f

    mul-float/2addr v4, v6

    .line 399
    invoke-static/range {p2 .. p2}, Ljava/lang/Math;->abs(F)F

    move-result v6

    div-float/2addr v4, v6

    float-to-int v4, v4

    int-to-long v6, v4

    .line 397
    invoke-static {v2, v3, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    goto :goto_91

    :cond_8c
    const-wide/16 v2, 0xc8

    goto :goto_91

    :cond_8f
    move-wide/from16 v2, p7

    .line 408
    :goto_91
    iget-boolean v4, v0, Lcom/android/systemui/SwipeHelper;->mDisableHwLayers:Z

    if-nez v4, :cond_9a

    const/4 v4, 0x2

    const/4 v6, 0x0

    .line 409
    invoke-virtual {p1, v4, v6}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 411
    :cond_9a
    new-instance v4, Lcom/android/systemui/SwipeHelper$2;

    invoke-direct {v4, p0, p1, v10}, Lcom/android/systemui/SwipeHelper$2;-><init>(Lcom/android/systemui/SwipeHelper;Landroid/view/View;Z)V

    .line 418
    invoke-virtual {p0, p1, v5, v4}, Lcom/android/systemui/SwipeHelper;->getViewTranslationAnimator(Landroid/view/View;FLandroid/animation/ValueAnimator$AnimatorUpdateListener;)Landroid/animation/Animator;

    move-result-object v13

    if-nez v13, :cond_a6

    return-void

    :cond_a6
    if-eqz p6, :cond_b1

    .line 423
    sget-object v4, Lcom/android/systemui/Interpolators;->FAST_OUT_LINEAR_IN:Landroid/view/animation/Interpolator;

    invoke-virtual {v13, v4}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 424
    invoke-virtual {v13, v2, v3}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    goto :goto_c1

    .line 426
    :cond_b1
    iget-object v2, v0, Lcom/android/systemui/SwipeHelper;->mFlingAnimationUtils:Lcom/android/systemui/statusbar/FlingAnimationUtils;

    invoke-virtual {p0, p1}, Lcom/android/systemui/SwipeHelper;->getTranslation(Landroid/view/View;)F

    move-result v4

    .line 427
    invoke-virtual {p0, p1}, Lcom/android/systemui/SwipeHelper;->getSize(Landroid/view/View;)F

    move-result v7

    move-object v3, v13

    move/from16 v6, p2

    .line 426
    invoke-virtual/range {v2 .. v7}, Lcom/android/systemui/statusbar/FlingAnimationUtils;->applyDismissing(Landroid/animation/Animator;FFFF)V

    :goto_c1
    cmp-long v2, v8, v11

    if-lez v2, :cond_c8

    .line 430
    invoke-virtual {v13, v8, v9}, Landroid/animation/Animator;->setStartDelay(J)V

    .line 432
    :cond_c8
    new-instance v2, Lcom/android/systemui/SwipeHelper$3;

    move-object/from16 v3, p3

    invoke-direct {v2, p0, p1, v10, v3}, Lcom/android/systemui/SwipeHelper$3;-><init>(Lcom/android/systemui/SwipeHelper;Landroid/view/View;ZLjava/lang/Runnable;)V

    invoke-virtual {v13, v2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 461
    invoke-virtual {p0, p1, v13}, Lcom/android/systemui/SwipeHelper;->prepareDismissAnimation(Landroid/view/View;Landroid/animation/Animator;)V

    .line 462
    iget-object v0, v0, Lcom/android/systemui/SwipeHelper;->mDismissPendingMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1, v13}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 463
    invoke-virtual {v13}, Landroid/animation/Animator;->start()V

    return-void
.end method

.method public dismissChild(Landroid/view/View;FZ)V
    .registers 14

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    const-wide/16 v7, 0x0

    const/4 v9, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v6, p3

    .line 361
    invoke-virtual/range {v0 .. v9}, Lcom/android/systemui/SwipeHelper;->dismissChild(Landroid/view/View;FLjava/lang/Runnable;JZJZ)V

    return-void
.end method

.method protected getEscapeVelocity()F
    .registers 2

    .line 677
    invoke-virtual {p0}, Lcom/android/systemui/SwipeHelper;->getUnscaledEscapeVelocity()F

    move-result v0

    iget p0, p0, Lcom/android/systemui/SwipeHelper;->mDensityScale:F

    mul-float/2addr v0, p0

    return v0
.end method

.method protected getMaxEscapeAnimDuration()J
    .registers 3

    const-wide/16 v0, 0x190

    return-wide v0
.end method

.method protected getSize(Landroid/view/View;)F
    .registers 3

    .line 182
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    if-eqz v0, :cond_1d

    .line 183
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    .line 184
    iget p0, p0, Lcom/android/systemui/SwipeHelper;->mSwipeDirection:I

    if-nez p0, :cond_17

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result p0

    goto :goto_1b

    :cond_17
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result p0

    :goto_1b
    int-to-float p0, p0

    return p0

    .line 187
    :cond_1d
    iget p0, p0, Lcom/android/systemui/SwipeHelper;->mSwipeDirection:I

    if-nez p0, :cond_26

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p0

    goto :goto_2a

    :cond_26
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p0

    :goto_2a
    int-to-float p0, p0

    return p0
.end method

.method protected getTranslation(Landroid/view/View;)F
    .registers 2

    .line 142
    iget p0, p0, Lcom/android/systemui/SwipeHelper;->mSwipeDirection:I

    if-nez p0, :cond_9

    invoke-virtual {p1}, Landroid/view/View;->getTranslationX()F

    move-result p0

    goto :goto_d

    :cond_9
    invoke-virtual {p1}, Landroid/view/View;->getTranslationY()F

    move-result p0

    :goto_d
    return p0
.end method

.method protected getUnscaledEscapeVelocity()F
    .registers 1

    const/high16 p0, 0x43fa0000  # 500.0f

    return p0
.end method

.method protected getViewTranslationAnimator(Landroid/view/View;FLandroid/animation/ValueAnimator$AnimatorUpdateListener;)Landroid/animation/Animator;
    .registers 4

    .line 163
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/SwipeHelper;->createTranslationAnimation(Landroid/view/View;F)Landroid/animation/ObjectAnimator;

    move-result-object p0

    if-eqz p3, :cond_9

    .line 165
    invoke-virtual {p0, p3}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    :cond_9
    return-object p0
.end method

.method protected handleUpEvent(Landroid/view/MotionEvent;Landroid/view/View;FF)Z
    .registers 5

    const/4 p0, 0x0

    return p0
.end method

.method public isDismissGesture(Landroid/view/MotionEvent;)Z
    .registers 6

    .line 695
    iget-object v0, p0, Lcom/android/systemui/SwipeHelper;->mCurrView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/android/systemui/SwipeHelper;->getTranslation(Landroid/view/View;)F

    move-result v0

    .line 696
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v1, v3, :cond_3b

    iget-object v1, p0, Lcom/android/systemui/SwipeHelper;->mFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

    .line 697
    invoke-interface {v1}, Lcom/android/systemui/plugins/FalsingManager;->isUnlockingDisabled()Z

    move-result v1

    if-nez v1, :cond_3b

    .line 698
    invoke-virtual {p0, p1}, Lcom/android/systemui/SwipeHelper;->isFalseGesture(Landroid/view/MotionEvent;)Z

    move-result p1

    if-nez p1, :cond_3b

    invoke-virtual {p0}, Lcom/android/systemui/SwipeHelper;->swipedFastEnough()Z

    move-result p1

    if-nez p1, :cond_28

    invoke-virtual {p0}, Lcom/android/systemui/SwipeHelper;->swipedFarEnough()Z

    move-result p1

    if-eqz p1, :cond_3b

    :cond_28
    iget-object p1, p0, Lcom/android/systemui/SwipeHelper;->mCallback:Lcom/android/systemui/SwipeHelper$Callback;

    iget-object p0, p0, Lcom/android/systemui/SwipeHelper;->mCurrView:Landroid/view/View;

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_33

    move v0, v3

    goto :goto_34

    :cond_33
    move v0, v2

    .line 699
    :goto_34
    invoke-interface {p1, p0, v0}, Lcom/android/systemui/SwipeHelper$Callback;->canChildBeDismissedInDirection(Landroid/view/View;Z)Z

    move-result p0

    if-eqz p0, :cond_3b

    move v2, v3

    :cond_3b
    return v2
.end method

.method public isFalseGesture(Landroid/view/MotionEvent;)Z
    .registers 5

    .line 703
    iget-object p1, p0, Lcom/android/systemui/SwipeHelper;->mCallback:Lcom/android/systemui/SwipeHelper$Callback;

    invoke-interface {p1}, Lcom/android/systemui/SwipeHelper$Callback;->isAntiFalsingNeeded()Z

    move-result p1

    .line 704
    iget-object v0, p0, Lcom/android/systemui/SwipeHelper;->mFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

    invoke-interface {v0}, Lcom/android/systemui/plugins/FalsingManager;->isClassiferEnabled()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1d

    if-eqz p1, :cond_1b

    .line 705
    iget-object p0, p0, Lcom/android/systemui/SwipeHelper;->mFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

    invoke-interface {p0}, Lcom/android/systemui/plugins/FalsingManager;->isFalseTouch()Z

    move-result p0

    if-eqz p0, :cond_1b

    goto :goto_23

    :cond_1b
    move v1, v2

    goto :goto_23

    :cond_1d
    if-eqz p1, :cond_1b

    .line 707
    iget-boolean p0, p0, Lcom/android/systemui/SwipeHelper;->mTouchAboveFalsingThreshold:Z

    if-nez p0, :cond_1b

    :goto_23
    return v1
.end method

.method protected onChildSnappedBack(Landroid/view/View;F)V
    .registers 3

    return-void
.end method

.method public onDownUpdate(Landroid/view/View;Landroid/view/MotionEvent;)V
    .registers 3

    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 8

    .line 273
    iget-object v0, p0, Lcom/android/systemui/SwipeHelper;->mCurrView:Landroid/view/View;

    instance-of v1, v0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    if-eqz v1, :cond_16

    .line 274
    check-cast v0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getProvider()Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;

    move-result-object v0

    if-eqz v0, :cond_16

    .line 276
    iget-object v1, p0, Lcom/android/systemui/SwipeHelper;->mCurrView:Landroid/view/View;

    invoke-interface {v0, v1, p1}, Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;->onInterceptTouchEvent(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/SwipeHelper;->mMenuRowIntercepting:Z

    .line 279
    :cond_16
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_9e

    if-eq v0, v1, :cond_7f

    const/4 v3, 0x2

    if-eq v0, v3, :cond_28

    const/4 p1, 0x3

    if-eq v0, p1, :cond_7f

    goto/16 :goto_f1

    .line 322
    :cond_28
    iget-object v0, p0, Lcom/android/systemui/SwipeHelper;->mCurrView:Landroid/view/View;

    if-eqz v0, :cond_f1

    iget-boolean v0, p0, Lcom/android/systemui/SwipeHelper;->mLongPressSent:Z

    if-nez v0, :cond_f1

    .line 323
    iget-object v0, p0, Lcom/android/systemui/SwipeHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 324
    invoke-direct {p0, p1}, Lcom/android/systemui/SwipeHelper;->getPos(Landroid/view/MotionEvent;)F

    move-result v0

    .line 325
    invoke-direct {p0, p1}, Lcom/android/systemui/SwipeHelper;->getPerpendicularPos(Landroid/view/MotionEvent;)F

    move-result v3

    .line 326
    iget v4, p0, Lcom/android/systemui/SwipeHelper;->mInitialTouchPos:F

    sub-float/2addr v0, v4

    .line 327
    iget v4, p0, Lcom/android/systemui/SwipeHelper;->mPerpendicularInitialTouchPos:F

    sub-float/2addr v3, v4

    .line 328
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v4

    iget v5, p0, Lcom/android/systemui/SwipeHelper;->mPagingTouchSlop:F

    cmpl-float v4, v4, v5

    if-lez v4, :cond_f1

    .line 329
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    cmpl-float v0, v0, v3

    if-lez v0, :cond_f1

    .line 330
    iget-object v0, p0, Lcom/android/systemui/SwipeHelper;->mCallback:Lcom/android/systemui/SwipeHelper$Callback;

    iget-object v3, p0, Lcom/android/systemui/SwipeHelper;->mCurrView:Landroid/view/View;

    invoke-interface {v0, v3}, Lcom/android/systemui/SwipeHelper$Callback;->canChildBeDragged(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_7a

    .line 331
    iget-object v0, p0, Lcom/android/systemui/SwipeHelper;->mCallback:Lcom/android/systemui/SwipeHelper$Callback;

    iget-object v3, p0, Lcom/android/systemui/SwipeHelper;->mCurrView:Landroid/view/View;

    invoke-interface {v0, v3}, Lcom/android/systemui/SwipeHelper$Callback;->onBeginDrag(Landroid/view/View;)V

    .line 332
    iput-boolean v1, p0, Lcom/android/systemui/SwipeHelper;->mDragging:Z

    .line 333
    invoke-direct {p0, p1}, Lcom/android/systemui/SwipeHelper;->getPos(Landroid/view/MotionEvent;)F

    move-result p1

    iput p1, p0, Lcom/android/systemui/SwipeHelper;->mInitialTouchPos:F

    .line 334
    iget-object p1, p0, Lcom/android/systemui/SwipeHelper;->mCurrView:Landroid/view/View;

    invoke-virtual {p0, p1}, Lcom/android/systemui/SwipeHelper;->getTranslation(Landroid/view/View;)F

    move-result p1

    iput p1, p0, Lcom/android/systemui/SwipeHelper;->mTranslation:F

    .line 336
    :cond_7a
    invoke-virtual {p0}, Lcom/android/systemui/SwipeHelper;->cancelLongPress()V

    goto/16 :goto_f1

    .line 343
    :cond_7f
    iget-boolean p1, p0, Lcom/android/systemui/SwipeHelper;->mDragging:Z

    if-nez p1, :cond_8e

    iget-boolean p1, p0, Lcom/android/systemui/SwipeHelper;->mLongPressSent:Z

    if-nez p1, :cond_8e

    iget-boolean p1, p0, Lcom/android/systemui/SwipeHelper;->mMenuRowIntercepting:Z

    if-eqz p1, :cond_8c

    goto :goto_8e

    :cond_8c
    move p1, v2

    goto :goto_8f

    :cond_8e
    :goto_8e
    move p1, v1

    .line 344
    :goto_8f
    iput-boolean v2, p0, Lcom/android/systemui/SwipeHelper;->mDragging:Z

    const/4 v0, 0x0

    .line 345
    iput-object v0, p0, Lcom/android/systemui/SwipeHelper;->mCurrView:Landroid/view/View;

    .line 346
    iput-boolean v2, p0, Lcom/android/systemui/SwipeHelper;->mLongPressSent:Z

    .line 347
    iput-boolean v2, p0, Lcom/android/systemui/SwipeHelper;->mMenuRowIntercepting:Z

    .line 348
    invoke-virtual {p0}, Lcom/android/systemui/SwipeHelper;->cancelLongPress()V

    if-eqz p1, :cond_f1

    return v1

    .line 283
    :cond_9e
    iput-boolean v2, p0, Lcom/android/systemui/SwipeHelper;->mTouchAboveFalsingThreshold:Z

    .line 284
    iput-boolean v2, p0, Lcom/android/systemui/SwipeHelper;->mDragging:Z

    .line 285
    iput-boolean v2, p0, Lcom/android/systemui/SwipeHelper;->mSnappingChild:Z

    .line 286
    iput-boolean v2, p0, Lcom/android/systemui/SwipeHelper;->mLongPressSent:Z

    .line 287
    iget-object v0, p0, Lcom/android/systemui/SwipeHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    .line 288
    iget-object v0, p0, Lcom/android/systemui/SwipeHelper;->mCallback:Lcom/android/systemui/SwipeHelper$Callback;

    invoke-interface {v0, p1}, Lcom/android/systemui/SwipeHelper$Callback;->getChildAtPosition(Landroid/view/MotionEvent;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/SwipeHelper;->mCurrView:Landroid/view/View;

    .line 290
    iget-object v0, p0, Lcom/android/systemui/SwipeHelper;->mCurrView:Landroid/view/View;

    if-eqz v0, :cond_f1

    .line 291
    invoke-virtual {p0, v0, p1}, Lcom/android/systemui/SwipeHelper;->onDownUpdate(Landroid/view/View;Landroid/view/MotionEvent;)V

    .line 292
    iget-object v0, p0, Lcom/android/systemui/SwipeHelper;->mCallback:Lcom/android/systemui/SwipeHelper$Callback;

    iget-object v3, p0, Lcom/android/systemui/SwipeHelper;->mCurrView:Landroid/view/View;

    invoke-interface {v0, v3}, Lcom/android/systemui/SwipeHelper$Callback;->canChildBeDismissed(Landroid/view/View;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/SwipeHelper;->mCanCurrViewBeDimissed:Z

    .line 293
    iget-object v0, p0, Lcom/android/systemui/SwipeHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 294
    invoke-direct {p0, p1}, Lcom/android/systemui/SwipeHelper;->getPos(Landroid/view/MotionEvent;)F

    move-result v0

    iput v0, p0, Lcom/android/systemui/SwipeHelper;->mInitialTouchPos:F

    .line 295
    invoke-direct {p0, p1}, Lcom/android/systemui/SwipeHelper;->getPerpendicularPos(Landroid/view/MotionEvent;)F

    move-result v0

    iput v0, p0, Lcom/android/systemui/SwipeHelper;->mPerpendicularInitialTouchPos:F

    .line 296
    iget-object v0, p0, Lcom/android/systemui/SwipeHelper;->mCurrView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/android/systemui/SwipeHelper;->getTranslation(Landroid/view/View;)F

    move-result v0

    iput v0, p0, Lcom/android/systemui/SwipeHelper;->mTranslation:F

    .line 297
    iget-object v0, p0, Lcom/android/systemui/SwipeHelper;->mWatchLongPress:Ljava/lang/Runnable;

    if-nez v0, :cond_e8

    .line 298
    new-instance v0, Lcom/android/systemui/SwipeHelper$1;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/SwipeHelper$1;-><init>(Lcom/android/systemui/SwipeHelper;Landroid/view/MotionEvent;)V

    iput-object v0, p0, Lcom/android/systemui/SwipeHelper;->mWatchLongPress:Ljava/lang/Runnable;

    .line 317
    :cond_e8
    iget-object p1, p0, Lcom/android/systemui/SwipeHelper;->mHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/android/systemui/SwipeHelper;->mWatchLongPress:Ljava/lang/Runnable;

    iget-wide v3, p0, Lcom/android/systemui/SwipeHelper;->mLongPressTimeout:J

    invoke-virtual {p1, v0, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 352
    :cond_f1
    :goto_f1
    iget-boolean p1, p0, Lcom/android/systemui/SwipeHelper;->mDragging:Z

    if-nez p1, :cond_ff

    iget-boolean p1, p0, Lcom/android/systemui/SwipeHelper;->mLongPressSent:Z

    if-nez p1, :cond_ff

    iget-boolean p0, p0, Lcom/android/systemui/SwipeHelper;->mMenuRowIntercepting:Z

    if-eqz p0, :cond_fe

    goto :goto_ff

    :cond_fe
    move v1, v2

    :cond_ff
    :goto_ff
    return v1
.end method

.method protected onMoveUpdate(Landroid/view/View;Landroid/view/MotionEvent;FF)V
    .registers 5

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 12

    .line 585
    iget-boolean v0, p0, Lcom/android/systemui/SwipeHelper;->mLongPressSent:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_a

    iget-boolean v0, p0, Lcom/android/systemui/SwipeHelper;->mMenuRowIntercepting:Z

    if-nez v0, :cond_a

    return v1

    .line 589
    :cond_a
    iget-boolean v0, p0, Lcom/android/systemui/SwipeHelper;->mDragging:Z

    const/4 v2, 0x0

    if-nez v0, :cond_23

    iget-boolean v0, p0, Lcom/android/systemui/SwipeHelper;->mMenuRowIntercepting:Z

    if-nez v0, :cond_23

    .line 590
    iget-object v0, p0, Lcom/android/systemui/SwipeHelper;->mCallback:Lcom/android/systemui/SwipeHelper$Callback;

    invoke-interface {v0, p1}, Lcom/android/systemui/SwipeHelper$Callback;->getChildAtPosition(Landroid/view/MotionEvent;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1f

    .line 594
    invoke-virtual {p0, p1}, Lcom/android/systemui/SwipeHelper;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    return v1

    .line 600
    :cond_1f
    invoke-virtual {p0}, Lcom/android/systemui/SwipeHelper;->cancelLongPress()V

    return v2

    .line 605
    :cond_23
    iget-object v0, p0, Lcom/android/systemui/SwipeHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 606
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v3, 0x0

    if-eq v0, v1, :cond_b2

    const/4 v4, 0x2

    if-eq v0, v4, :cond_3a

    const/4 v4, 0x3

    if-eq v0, v4, :cond_b2

    const/4 v4, 0x4

    if-eq v0, v4, :cond_3a

    goto/16 :goto_f6

    .line 610
    :cond_3a
    iget-object v0, p0, Lcom/android/systemui/SwipeHelper;->mCurrView:Landroid/view/View;

    if-eqz v0, :cond_f6

    .line 611
    invoke-direct {p0, p1}, Lcom/android/systemui/SwipeHelper;->getPos(Landroid/view/MotionEvent;)F

    move-result v0

    iget v4, p0, Lcom/android/systemui/SwipeHelper;->mInitialTouchPos:F

    sub-float/2addr v0, v4

    .line 612
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v4

    .line 613
    invoke-direct {p0}, Lcom/android/systemui/SwipeHelper;->getFalsingThreshold()I

    move-result v5

    int-to-float v5, v5

    cmpl-float v5, v4, v5

    if-ltz v5, :cond_54

    .line 614
    iput-boolean v1, p0, Lcom/android/systemui/SwipeHelper;->mTouchAboveFalsingThreshold:Z

    .line 618
    :cond_54
    iget-object v5, p0, Lcom/android/systemui/SwipeHelper;->mCallback:Lcom/android/systemui/SwipeHelper$Callback;

    iget-object v6, p0, Lcom/android/systemui/SwipeHelper;->mCurrView:Landroid/view/View;

    cmpl-float v3, v0, v3

    if-lez v3, :cond_5d

    move v2, v1

    :cond_5d
    invoke-interface {v5, v6, v2}, Lcom/android/systemui/SwipeHelper$Callback;->canChildBeDismissedInDirection(Landroid/view/View;Z)Z

    move-result v2

    if-nez v2, :cond_9a

    .line 620
    iget-object v2, p0, Lcom/android/systemui/SwipeHelper;->mCurrView:Landroid/view/View;

    invoke-virtual {p0, v2}, Lcom/android/systemui/SwipeHelper;->getSize(Landroid/view/View;)F

    move-result v2

    const v5, 0x3e99999a  # 0.3f

    mul-float/2addr v5, v2

    cmpl-float v6, v4, v2

    if-ltz v6, :cond_77

    if-lez v3, :cond_75

    move v0, v5

    goto :goto_9a

    :cond_75
    neg-float v0, v5

    goto :goto_9a

    .line 625
    :cond_77
    iget-object v3, p0, Lcom/android/systemui/SwipeHelper;->mCallback:Lcom/android/systemui/SwipeHelper$Callback;

    invoke-interface {v3}, Lcom/android/systemui/SwipeHelper$Callback;->getConstrainSwipeStartPosition()I

    move-result v3

    int-to-float v3, v3

    cmpl-float v4, v4, v3

    if-lez v4, :cond_9a

    .line 628
    invoke-static {v0}, Ljava/lang/Math;->signum(F)F

    move-result v4

    mul-float/2addr v3, v4

    float-to-int v3, v3

    int-to-float v3, v3

    sub-float/2addr v0, v3

    div-float/2addr v0, v2

    float-to-double v6, v0

    const-wide v8, 0x3ff921fb54442d18L  # 1.5707963267948966

    mul-double/2addr v6, v8

    .line 630
    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    double-to-float v0, v6

    mul-float/2addr v5, v0

    add-float v0, v3, v5

    .line 636
    :cond_9a
    :goto_9a
    iget-object v2, p0, Lcom/android/systemui/SwipeHelper;->mCurrView:Landroid/view/View;

    iget v3, p0, Lcom/android/systemui/SwipeHelper;->mTranslation:F

    add-float/2addr v3, v0

    invoke-virtual {p0, v2, v3}, Lcom/android/systemui/SwipeHelper;->setTranslation(Landroid/view/View;F)V

    .line 637
    iget-object v2, p0, Lcom/android/systemui/SwipeHelper;->mCurrView:Landroid/view/View;

    iget-boolean v3, p0, Lcom/android/systemui/SwipeHelper;->mCanCurrViewBeDimissed:Z

    invoke-direct {p0, v2, v3}, Lcom/android/systemui/SwipeHelper;->updateSwipeProgressFromOffset(Landroid/view/View;Z)V

    .line 638
    iget-object v2, p0, Lcom/android/systemui/SwipeHelper;->mCurrView:Landroid/view/View;

    iget v3, p0, Lcom/android/systemui/SwipeHelper;->mTranslation:F

    add-float/2addr v3, v0

    invoke-virtual {p0, v2, p1, v3, v0}, Lcom/android/systemui/SwipeHelper;->onMoveUpdate(Landroid/view/View;Landroid/view/MotionEvent;FF)V

    goto :goto_f6

    .line 643
    :cond_b2
    iget-object v0, p0, Lcom/android/systemui/SwipeHelper;->mCurrView:Landroid/view/View;

    if-nez v0, :cond_b7

    goto :goto_f6

    .line 646
    :cond_b7
    iget-object v0, p0, Lcom/android/systemui/SwipeHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v4, 0x3e8

    invoke-direct {p0}, Lcom/android/systemui/SwipeHelper;->getMaxVelocity()F

    move-result v5

    invoke-virtual {v0, v4, v5}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 647
    iget-object v0, p0, Lcom/android/systemui/SwipeHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-direct {p0, v0}, Lcom/android/systemui/SwipeHelper;->getVelocity(Landroid/view/VelocityTracker;)F

    move-result v0

    .line 649
    iget-object v4, p0, Lcom/android/systemui/SwipeHelper;->mCurrView:Landroid/view/View;

    invoke-virtual {p0, v4}, Lcom/android/systemui/SwipeHelper;->getTranslation(Landroid/view/View;)F

    move-result v5

    invoke-virtual {p0, p1, v4, v0, v5}, Lcom/android/systemui/SwipeHelper;->handleUpEvent(Landroid/view/MotionEvent;Landroid/view/View;FF)Z

    move-result v4

    if-nez v4, :cond_f4

    .line 650
    invoke-virtual {p0, p1}, Lcom/android/systemui/SwipeHelper;->isDismissGesture(Landroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_e5

    .line 652
    iget-object p1, p0, Lcom/android/systemui/SwipeHelper;->mCurrView:Landroid/view/View;

    .line 653
    invoke-virtual {p0}, Lcom/android/systemui/SwipeHelper;->swipedFastEnough()Z

    move-result v3

    xor-int/2addr v3, v1

    .line 652
    invoke-virtual {p0, p1, v0, v3}, Lcom/android/systemui/SwipeHelper;->dismissChild(Landroid/view/View;FZ)V

    goto :goto_f1

    .line 656
    :cond_e5
    iget-object p1, p0, Lcom/android/systemui/SwipeHelper;->mCallback:Lcom/android/systemui/SwipeHelper$Callback;

    iget-object v4, p0, Lcom/android/systemui/SwipeHelper;->mCurrView:Landroid/view/View;

    invoke-interface {p1, v4}, Lcom/android/systemui/SwipeHelper$Callback;->onDragCancelled(Landroid/view/View;)V

    .line 657
    iget-object p1, p0, Lcom/android/systemui/SwipeHelper;->mCurrView:Landroid/view/View;

    invoke-virtual {p0, p1, v3, v0}, Lcom/android/systemui/SwipeHelper;->snapChild(Landroid/view/View;FF)V

    :goto_f1
    const/4 p1, 0x0

    .line 659
    iput-object p1, p0, Lcom/android/systemui/SwipeHelper;->mCurrView:Landroid/view/View;

    .line 661
    :cond_f4
    iput-boolean v2, p0, Lcom/android/systemui/SwipeHelper;->mDragging:Z

    :cond_f6
    :goto_f6
    return v1
.end method

.method public onTranslationUpdate(Landroid/view/View;FZ)V
    .registers 4

    .line 545
    invoke-direct {p0, p1, p3, p2}, Lcom/android/systemui/SwipeHelper;->updateSwipeProgressFromOffset(Landroid/view/View;ZF)V

    return-void
.end method

.method protected prepareDismissAnimation(Landroid/view/View;Landroid/animation/Animator;)V
    .registers 3

    return-void
.end method

.method protected prepareSnapBackAnimation(Landroid/view/View;Landroid/animation/Animator;)V
    .registers 3

    return-void
.end method

.method public setDensityScale(F)V
    .registers 2

    .line 122
    iput p1, p0, Lcom/android/systemui/SwipeHelper;->mDensityScale:F

    return-void
.end method

.method public setMaxSwipeProgress(F)V
    .registers 2

    .line 195
    iput p1, p0, Lcom/android/systemui/SwipeHelper;->mMaxSwipeProgress:F

    return-void
.end method

.method public setPagingTouchSlop(F)V
    .registers 2

    .line 126
    iput p1, p0, Lcom/android/systemui/SwipeHelper;->mPagingTouchSlop:F

    return-void
.end method

.method protected setTranslation(Landroid/view/View;F)V
    .registers 3

    if-nez p1, :cond_3

    return-void

    .line 174
    :cond_3
    iget p0, p0, Lcom/android/systemui/SwipeHelper;->mSwipeDirection:I

    if-nez p0, :cond_b

    .line 175
    invoke-virtual {p1, p2}, Landroid/view/View;->setTranslationX(F)V

    goto :goto_e

    .line 177
    :cond_b
    invoke-virtual {p1, p2}, Landroid/view/View;->setTranslationY(F)V

    :goto_e
    return-void
.end method

.method public snapChild(Landroid/view/View;FF)V
    .registers 12

    .line 474
    iget-object v0, p0, Lcom/android/systemui/SwipeHelper;->mCallback:Lcom/android/systemui/SwipeHelper$Callback;

    invoke-interface {v0, p1}, Lcom/android/systemui/SwipeHelper$Callback;->canChildBeDismissed(Landroid/view/View;)Z

    move-result v0

    .line 475
    new-instance v1, Lcom/android/systemui/SwipeHelper$4;

    invoke-direct {v1, p0, p1, v0}, Lcom/android/systemui/SwipeHelper$4;-><init>(Lcom/android/systemui/SwipeHelper;Landroid/view/View;Z)V

    .line 482
    invoke-virtual {p0, p1, p2, v1}, Lcom/android/systemui/SwipeHelper;->getViewTranslationAnimator(Landroid/view/View;FLandroid/animation/ValueAnimator$AnimatorUpdateListener;)Landroid/animation/Animator;

    move-result-object v1

    if-nez v1, :cond_12

    return-void

    .line 486
    :cond_12
    new-instance v2, Lcom/android/systemui/SwipeHelper$5;

    invoke-direct {v2, p0, p1, v0, p2}, Lcom/android/systemui/SwipeHelper$5;-><init>(Lcom/android/systemui/SwipeHelper;Landroid/view/View;ZF)V

    invoke-virtual {v1, v2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 504
    invoke-virtual {p0, p1, v1}, Lcom/android/systemui/SwipeHelper;->prepareSnapBackAnimation(Landroid/view/View;Landroid/animation/Animator;)V

    const/4 v0, 0x1

    .line 505
    iput-boolean v0, p0, Lcom/android/systemui/SwipeHelper;->mSnappingChild:Z

    .line 506
    invoke-virtual {p0, p1}, Lcom/android/systemui/SwipeHelper;->getTranslation(Landroid/view/View;)F

    move-result v0

    sub-float v0, p2, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v7

    .line 507
    iget-object v2, p0, Lcom/android/systemui/SwipeHelper;->mFlingAnimationUtils:Lcom/android/systemui/statusbar/FlingAnimationUtils;

    invoke-virtual {p0, p1}, Lcom/android/systemui/SwipeHelper;->getTranslation(Landroid/view/View;)F

    move-result v4

    move-object v3, v1

    move v5, p2

    move v6, p3

    invoke-virtual/range {v2 .. v7}, Lcom/android/systemui/statusbar/FlingAnimationUtils;->apply(Landroid/animation/Animator;FFFF)V

    .line 509
    invoke-virtual {v1}, Landroid/animation/Animator;->start()V

    return-void
.end method

.method public snapChildIfNeeded(Landroid/view/View;ZF)V
    .registers 8

    .line 563
    iget-boolean v0, p0, Lcom/android/systemui/SwipeHelper;->mDragging:Z

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/systemui/SwipeHelper;->mCurrView:Landroid/view/View;

    if-eq v0, p1, :cond_c

    :cond_8
    iget-boolean v0, p0, Lcom/android/systemui/SwipeHelper;->mSnappingChild:Z

    if-eqz v0, :cond_d

    :cond_c
    return-void

    :cond_d
    const/4 v0, 0x0

    .line 567
    iget-object v1, p0, Lcom/android/systemui/SwipeHelper;->mDismissPendingMap:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/animation/Animator;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_1e

    .line 570
    invoke-virtual {v1}, Landroid/animation/Animator;->cancel()V

    goto :goto_28

    .line 571
    :cond_1e
    invoke-virtual {p0, p1}, Lcom/android/systemui/SwipeHelper;->getTranslation(Landroid/view/View;)F

    move-result v1

    cmpl-float v1, v1, v3

    if-eqz v1, :cond_27

    goto :goto_28

    :cond_27
    move v2, v0

    :goto_28
    if-eqz v2, :cond_33

    if-eqz p2, :cond_30

    .line 576
    invoke-virtual {p0, p1, p3, v3}, Lcom/android/systemui/SwipeHelper;->snapChild(Landroid/view/View;FF)V

    goto :goto_33

    .line 578
    :cond_30
    invoke-direct {p0, p1}, Lcom/android/systemui/SwipeHelper;->snapChildInstantly(Landroid/view/View;)V

    :cond_33
    :goto_33
    return-void
.end method

.method protected swipedFarEnough()Z
    .registers 3

    .line 689
    iget-object v0, p0, Lcom/android/systemui/SwipeHelper;->mCurrView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/android/systemui/SwipeHelper;->getTranslation(Landroid/view/View;)F

    move-result v0

    .line 691
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/SwipeHelper;->mCurrView:Landroid/view/View;

    invoke-virtual {p0, v1}, Lcom/android/systemui/SwipeHelper;->getSize(Landroid/view/View;)F

    move-result p0

    const v1, 0x3f19999a  # 0.6f

    mul-float/2addr p0, v1

    cmpl-float p0, v0, p0

    if-lez p0, :cond_1a

    const/4 p0, 0x1

    goto :goto_1b

    :cond_1a
    const/4 p0, 0x0

    :goto_1b
    return p0
.end method

.method protected swipedFastEnough()Z
    .registers 5

    .line 713
    iget-object v0, p0, Lcom/android/systemui/SwipeHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-direct {p0, v0}, Lcom/android/systemui/SwipeHelper;->getVelocity(Landroid/view/VelocityTracker;)F

    move-result v0

    .line 714
    iget-object v1, p0, Lcom/android/systemui/SwipeHelper;->mCurrView:Landroid/view/View;

    invoke-virtual {p0, v1}, Lcom/android/systemui/SwipeHelper;->getTranslation(Landroid/view/View;)F

    move-result v1

    .line 715
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v2

    invoke-virtual {p0}, Lcom/android/systemui/SwipeHelper;->getEscapeVelocity()F

    move-result p0

    cmpl-float p0, v2, p0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-lez p0, :cond_2c

    const/4 p0, 0x0

    cmpl-float v0, v0, p0

    if-lez v0, :cond_21

    move v0, v2

    goto :goto_22

    :cond_21
    move v0, v3

    :goto_22
    cmpl-float p0, v1, p0

    if-lez p0, :cond_28

    move p0, v2

    goto :goto_29

    :cond_28
    move p0, v3

    :goto_29
    if-ne v0, p0, :cond_2c

    goto :goto_2d

    :cond_2c
    move v2, v3

    :goto_2d
    return v2
.end method
