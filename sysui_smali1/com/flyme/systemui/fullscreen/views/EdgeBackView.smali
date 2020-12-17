.class public Lcom/flyme/systemui/fullscreen/views/EdgeBackView;
.super Landroid/view/View;
.source "EdgeBackView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/flyme/systemui/fullscreen/views/EdgeBackView$AnimatorStatus;
    }
.end annotation


# static fields
.field private static DONE_DUR:J

.field private static final mEdgePath:Landroid/graphics/Path;

.field private static final mPath:Landroid/graphics/Path;

.field private static mPathInterpolator2:Landroid/view/animation/PathInterpolator;

.field private static final mSvgPath:Landroid/graphics/Path;


# instance fields
.field private mAniStatus:Lcom/flyme/systemui/fullscreen/views/EdgeBackView$AnimatorStatus;

.field mBackViewWidth:F

.field private mCenterY:F

.field private mDisplayCut:Landroid/graphics/Rect;

.field private mDoneStart:J

.field private mDoneStop:J

.field private mIWindowManagerExt:Lflyme/view/IWindowManagerExt;

.field private mInitX:F

.field private mInitY:F

.field private mIsDark:Z

.field private mIsLeftPanel:Z

.field private mMaxBackDistance:F

.field mMaxHeight:F

.field private mPaint:Landroid/graphics/Paint;

.field private mPaint1:Landroid/graphics/Paint;

.field private mPathInterpolator1:Landroid/view/animation/PathInterpolator;

.field private mScale:F

.field private mTriggerBack:Z

.field mTriggerBackAnimator:Landroid/animation/ValueAnimator;

.field private mVelocityTracker:Landroid/view/VelocityTracker;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .line 57
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    sput-object v0, Lcom/flyme/systemui/fullscreen/views/EdgeBackView;->mPath:Landroid/graphics/Path;

    const-wide/16 v0, 0x84

    .line 61
    sput-wide v0, Lcom/flyme/systemui/fullscreen/views/EdgeBackView;->DONE_DUR:J

    .line 63
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3f28f5c3  # 0.66f

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000  # 1.0f

    invoke-direct {v0, v2, v1, v1, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/flyme/systemui/fullscreen/views/EdgeBackView;->mPathInterpolator2:Landroid/view/animation/PathInterpolator;

    .line 70
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    sput-object v0, Lcom/flyme/systemui/fullscreen/views/EdgeBackView;->mSvgPath:Landroid/graphics/Path;

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    sput-object v0, Lcom/flyme/systemui/fullscreen/views/EdgeBackView;->mEdgePath:Landroid/graphics/Path;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 5

    .line 117
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 42
    iput-boolean p1, p0, Lcom/flyme/systemui/fullscreen/views/EdgeBackView;->mIsDark:Z

    .line 53
    new-instance p1, Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/flyme/systemui/fullscreen/views/EdgeBackView;->mPaint:Landroid/graphics/Paint;

    .line 54
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/flyme/systemui/fullscreen/views/EdgeBackView;->mPaint1:Landroid/graphics/Paint;

    .line 56
    sget-object p1, Lcom/flyme/systemui/fullscreen/views/EdgeBackView$AnimatorStatus;->REL_DRAG:Lcom/flyme/systemui/fullscreen/views/EdgeBackView$AnimatorStatus;

    iput-object p1, p0, Lcom/flyme/systemui/fullscreen/views/EdgeBackView;->mAniStatus:Lcom/flyme/systemui/fullscreen/views/EdgeBackView$AnimatorStatus;

    .line 62
    new-instance p1, Landroid/view/animation/PathInterpolator;

    const v0, 0x3f547ae1  # 0.83f

    const v1, 0x3e75c28f  # 0.24f

    const/4 v2, 0x0

    invoke-direct {p1, v1, v2, v0, v0}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object p1, p0, Lcom/flyme/systemui/fullscreen/views/EdgeBackView;->mPathInterpolator1:Landroid/view/animation/PathInterpolator;

    .line 68
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/flyme/systemui/fullscreen/views/EdgeBackView;->mDisplayCut:Landroid/graphics/Rect;

    .line 119
    iget-object p1, p0, Lcom/flyme/systemui/fullscreen/views/EdgeBackView;->mPaint:Landroid/graphics/Paint;

    const/16 v0, 0x3c

    const/16 v1, 0x4c

    invoke-virtual {p1, v1, v0, v0, v0}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 120
    iget-object p1, p0, Lcom/flyme/systemui/fullscreen/views/EdgeBackView;->mPaint:Landroid/graphics/Paint;

    const/high16 v0, 0x40000000  # 2.0f

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 121
    iget-object p1, p0, Lcom/flyme/systemui/fullscreen/views/EdgeBackView;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 122
    iget-object p1, p0, Lcom/flyme/systemui/fullscreen/views/EdgeBackView;->mPaint1:Landroid/graphics/Paint;

    const/16 v1, 0xff

    const/16 v2, 0x19

    invoke-virtual {p1, v2, v1, v1, v1}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 123
    iget-object p1, p0, Lcom/flyme/systemui/fullscreen/views/EdgeBackView;->mPaint1:Landroid/graphics/Paint;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 124
    iget-object p1, p0, Lcom/flyme/systemui/fullscreen/views/EdgeBackView;->mPaint1:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 125
    sget-object p1, Lcom/flyme/systemui/fullscreen/views/EdgeBackView;->mPath:Landroid/graphics/Path;

    sget-object v0, Landroid/graphics/Path$FillType;->WINDING:Landroid/graphics/Path$FillType;

    invoke-virtual {p1, v0}, Landroid/graphics/Path;->setFillType(Landroid/graphics/Path$FillType;)V

    const/16 p1, 0x8

    .line 127
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method static synthetic access$000(Lcom/flyme/systemui/fullscreen/views/EdgeBackView;FFF)V
    .registers 4

    .line 41
    invoke-direct {p0, p1, p2, p3}, Lcom/flyme/systemui/fullscreen/views/EdgeBackView;->computePath(FFF)V

    return-void
.end method

.method private computePath(FFF)V
    .registers 21

    move-object/from16 v0, p0

    const/high16 v1, 0x3f800000  # 1.0f

    cmpl-float v2, p1, v1

    if-lez v2, :cond_9

    goto :goto_b

    :cond_9
    move/from16 v1, p1

    .line 344
    :goto_b
    iput v1, v0, Lcom/flyme/systemui/fullscreen/views/EdgeBackView;->mScale:F

    .line 345
    sget-object v2, Lcom/flyme/systemui/fullscreen/views/EdgeBackView;->mPathInterpolator2:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v2, v1}, Landroid/view/animation/PathInterpolator;->getInterpolation(F)F

    move-result v1

    .line 346
    sget-object v2, Lcom/flyme/systemui/fullscreen/views/EdgeBackView;->mSvgPath:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->reset()V

    .line 347
    sget-object v2, Lcom/flyme/systemui/fullscreen/views/EdgeBackView;->mEdgePath:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->reset()V

    .line 348
    iget v2, v0, Lcom/flyme/systemui/fullscreen/views/EdgeBackView;->mCenterY:F

    const/high16 v3, 0x40000000  # 2.0f

    div-float v4, p2, v3

    sub-float/2addr v2, v4

    .line 349
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v5

    int-to-float v5, v5

    .line 351
    iget-boolean v6, v0, Lcom/flyme/systemui/fullscreen/views/EdgeBackView;->mIsLeftPanel:Z

    const/high16 v7, 0x40a00000  # 5.0f

    const/high16 v8, 0x40400000  # 3.0f

    const/high16 v9, 0x40c00000  # 6.0f

    if-eqz v6, :cond_67

    .line 352
    iget-object v5, v0, Lcom/flyme/systemui/fullscreen/views/EdgeBackView;->mDisplayCut:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    int-to-float v5, v5

    .line 353
    sget-object v6, Lcom/flyme/systemui/fullscreen/views/EdgeBackView;->mEdgePath:Landroid/graphics/Path;

    invoke-virtual {v6, v5, v2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 354
    sget-object v10, Lcom/flyme/systemui/fullscreen/views/EdgeBackView;->mEdgePath:Landroid/graphics/Path;

    div-float v6, p2, v9

    add-float v12, v2, v6

    mul-float v1, v1, p3

    add-float/2addr v1, v5

    div-float v6, p2, v8

    add-float v14, v2, v6

    add-float v16, v2, v4

    move v11, v5

    move v13, v1

    move v15, v1

    invoke-virtual/range {v10 .. v16}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 357
    sget-object v10, Lcom/flyme/systemui/fullscreen/views/EdgeBackView;->mEdgePath:Landroid/graphics/Path;

    mul-float v3, v3, p2

    div-float/2addr v3, v8

    add-float v12, v2, v3

    mul-float v3, p2, v7

    div-float/2addr v3, v9

    add-float v14, v2, v3

    add-float v16, v2, p2

    move v11, v1

    move v13, v5

    move v15, v5

    invoke-virtual/range {v10 .. v16}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    goto :goto_a0

    .line 361
    :cond_67
    iget-object v6, v0, Lcom/flyme/systemui/fullscreen/views/EdgeBackView;->mDisplayCut:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->right:I

    int-to-float v6, v6

    sub-float v6, v5, v6

    .line 362
    sget-object v10, Lcom/flyme/systemui/fullscreen/views/EdgeBackView;->mEdgePath:Landroid/graphics/Path;

    invoke-virtual {v10, v6, v2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 363
    sget-object v10, Lcom/flyme/systemui/fullscreen/views/EdgeBackView;->mEdgePath:Landroid/graphics/Path;

    div-float v11, p2, v9

    add-float v12, v2, v11

    sub-float v11, v5, p3

    sub-float/2addr v11, v5

    mul-float/2addr v11, v1

    add-float v1, v6, v11

    div-float v5, p2, v8

    add-float v14, v2, v5

    add-float v16, v2, v4

    move v11, v6

    move v13, v1

    move v15, v1

    invoke-virtual/range {v10 .. v16}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 366
    sget-object v10, Lcom/flyme/systemui/fullscreen/views/EdgeBackView;->mEdgePath:Landroid/graphics/Path;

    mul-float v3, v3, p2

    div-float/2addr v3, v8

    add-float v12, v2, v3

    mul-float v3, p2, v7

    div-float/2addr v3, v9

    add-float v14, v2, v3

    add-float v16, v2, p2

    move v11, v1

    move v13, v6

    move v15, v6

    invoke-virtual/range {v10 .. v16}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    move v5, v6

    .line 370
    :goto_a0
    sget-object v1, Lcom/flyme/systemui/fullscreen/views/EdgeBackView;->mSvgPath:Landroid/graphics/Path;

    sget-object v3, Lcom/flyme/systemui/fullscreen/views/EdgeBackView;->mEdgePath:Landroid/graphics/Path;

    invoke-virtual {v1, v3}, Landroid/graphics/Path;->set(Landroid/graphics/Path;)V

    .line 371
    iget-boolean v0, v0, Lcom/flyme/systemui/fullscreen/views/EdgeBackView;->mIsLeftPanel:Z

    if-eqz v0, :cond_b1

    .line 372
    sget-object v0, Lcom/flyme/systemui/fullscreen/views/EdgeBackView;->mSvgPath:Landroid/graphics/Path;

    invoke-virtual {v0, v5, v2}, Landroid/graphics/Path;->lineTo(FF)V

    goto :goto_b6

    .line 374
    :cond_b1
    sget-object v0, Lcom/flyme/systemui/fullscreen/views/EdgeBackView;->mSvgPath:Landroid/graphics/Path;

    invoke-virtual {v0, v5, v2}, Landroid/graphics/Path;->lineTo(FF)V

    :goto_b6
    return-void
.end method

.method private getDoneRotia()F
    .registers 7

    .line 236
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/flyme/systemui/fullscreen/views/EdgeBackView;->mDoneStop:J

    cmp-long v0, v0, v2

    const/high16 v1, 0x3f800000  # 1.0f

    if-ltz v0, :cond_d

    return v1

    .line 239
    :cond_d
    iget-object v0, p0, Lcom/flyme/systemui/fullscreen/views/EdgeBackView;->mPathInterpolator1:Landroid/view/animation/PathInterpolator;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/flyme/systemui/fullscreen/views/EdgeBackView;->mDoneStart:J

    sub-long/2addr v2, v4

    long-to-float p0, v2

    sget-wide v2, Lcom/flyme/systemui/fullscreen/views/EdgeBackView;->DONE_DUR:J

    long-to-float v2, v2

    div-float/2addr p0, v2

    invoke-virtual {v0, p0}, Landroid/view/animation/PathInterpolator;->getInterpolation(F)F

    move-result p0

    .line 240
    invoke-static {v1, p0}, Ljava/lang/Math;->min(FF)F

    move-result p0

    return p0
.end method

.method private handleMoveEvent(Landroid/view/MotionEvent;)V
    .registers 4

    .line 278
    iget-boolean v0, p0, Lcom/flyme/systemui/fullscreen/views/EdgeBackView;->mIsLeftPanel:Z

    if-eqz v0, :cond_15

    .line 279
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iget v1, p0, Lcom/flyme/systemui/fullscreen/views/EdgeBackView;->mMaxBackDistance:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_31

    .line 280
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iput v0, p0, Lcom/flyme/systemui/fullscreen/views/EdgeBackView;->mMaxBackDistance:F

    goto :goto_31

    .line 283
    :cond_15
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/flyme/systemui/fullscreen/views/EdgeBackView;->mMaxBackDistance:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_31

    .line 284
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/flyme/systemui/fullscreen/views/EdgeBackView;->mMaxBackDistance:F

    .line 289
    :cond_31
    :goto_31
    iget-boolean v0, p0, Lcom/flyme/systemui/fullscreen/views/EdgeBackView;->mIsLeftPanel:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_48

    .line 290
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result p1

    iget v0, p0, Lcom/flyme/systemui/fullscreen/views/EdgeBackView;->mInitX:F

    sub-float/2addr p1, v0

    .line 291
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr p1, v0

    invoke-static {v1, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    goto :goto_55

    .line 293
    :cond_48
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result p1

    .line 294
    iget v0, p0, Lcom/flyme/systemui/fullscreen/views/EdgeBackView;->mInitX:F

    sub-float p1, v0, p1

    div-float/2addr p1, v0

    invoke-static {v1, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    .line 296
    :goto_55
    iget-object v0, p0, Lcom/flyme/systemui/fullscreen/views/EdgeBackView;->mAniStatus:Lcom/flyme/systemui/fullscreen/views/EdgeBackView$AnimatorStatus;

    sget-object v1, Lcom/flyme/systemui/fullscreen/views/EdgeBackView$AnimatorStatus;->REL_DRAG:Lcom/flyme/systemui/fullscreen/views/EdgeBackView$AnimatorStatus;

    if-ne v0, v1, :cond_62

    .line 297
    iget v0, p0, Lcom/flyme/systemui/fullscreen/views/EdgeBackView;->mBackViewWidth:F

    iget v1, p0, Lcom/flyme/systemui/fullscreen/views/EdgeBackView;->mMaxHeight:F

    invoke-direct {p0, p1, v0, v1}, Lcom/flyme/systemui/fullscreen/views/EdgeBackView;->computePath(FFF)V

    .line 299
    :cond_62
    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    return-void
.end method

.method private resetOnDown(Landroid/view/MotionEvent;)V
    .registers 4

    .line 256
    sget-object v0, Lcom/flyme/systemui/fullscreen/views/EdgeBackView$AnimatorStatus;->REL_DRAG:Lcom/flyme/systemui/fullscreen/views/EdgeBackView$AnimatorStatus;

    iput-object v0, p0, Lcom/flyme/systemui/fullscreen/views/EdgeBackView;->mAniStatus:Lcom/flyme/systemui/fullscreen/views/EdgeBackView$AnimatorStatus;

    .line 257
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$dimen;->back_view_width:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/flyme/systemui/fullscreen/views/EdgeBackView;->mBackViewWidth:F

    .line 258
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$dimen;->back_view_max_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/flyme/systemui/fullscreen/views/EdgeBackView;->mMaxHeight:F

    .line 259
    sget-object v0, Lcom/flyme/systemui/fullscreen/views/EdgeBackView;->mSvgPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 260
    sget-object v0, Lcom/flyme/systemui/fullscreen/views/EdgeBackView;->mEdgePath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    const/4 v0, 0x0

    if-eqz p1, :cond_42

    .line 262
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    iput v1, p0, Lcom/flyme/systemui/fullscreen/views/EdgeBackView;->mCenterY:F

    .line 263
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    iput v1, p0, Lcom/flyme/systemui/fullscreen/views/EdgeBackView;->mInitX:F

    .line 264
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    iput p1, p0, Lcom/flyme/systemui/fullscreen/views/EdgeBackView;->mInitY:F

    goto :goto_48

    .line 266
    :cond_42
    iput v0, p0, Lcom/flyme/systemui/fullscreen/views/EdgeBackView;->mInitY:F

    iput v0, p0, Lcom/flyme/systemui/fullscreen/views/EdgeBackView;->mInitX:F

    iput v0, p0, Lcom/flyme/systemui/fullscreen/views/EdgeBackView;->mCenterY:F

    .line 269
    :goto_48
    iput v0, p0, Lcom/flyme/systemui/fullscreen/views/EdgeBackView;->mMaxBackDistance:F

    const/4 p1, 0x0

    .line 270
    iput-boolean p1, p0, Lcom/flyme/systemui/fullscreen/views/EdgeBackView;->mTriggerBack:Z

    .line 272
    iget-object p1, p0, Lcom/flyme/systemui/fullscreen/views/EdgeBackView;->mTriggerBackAnimator:Landroid/animation/ValueAnimator;

    if-eqz p1, :cond_5c

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result p1

    if-eqz p1, :cond_5c

    .line 273
    iget-object p0, p0, Lcom/flyme/systemui/fullscreen/views/EdgeBackView;->mTriggerBackAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_5c
    return-void
.end method

.method private triggerBack()V
    .registers 4

    .line 319
    iget v0, p0, Lcom/flyme/systemui/fullscreen/views/EdgeBackView;->mScale:F

    const/4 v1, 0x2

    new-array v1, v1, [F

    const/4 v2, 0x0

    aput v0, v1, v2

    const/4 v0, 0x1

    const/4 v2, 0x0

    aput v2, v1, v0

    .line 320
    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/flyme/systemui/fullscreen/views/EdgeBackView;->mTriggerBackAnimator:Landroid/animation/ValueAnimator;

    .line 321
    iget-object v0, p0, Lcom/flyme/systemui/fullscreen/views/EdgeBackView;->mTriggerBackAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 322
    iget-object v0, p0, Lcom/flyme/systemui/fullscreen/views/EdgeBackView;->mTriggerBackAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/flyme/systemui/fullscreen/views/EdgeBackView$1;

    invoke-direct {v1, p0}, Lcom/flyme/systemui/fullscreen/views/EdgeBackView$1;-><init>(Lcom/flyme/systemui/fullscreen/views/EdgeBackView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 330
    iget-object v0, p0, Lcom/flyme/systemui/fullscreen/views/EdgeBackView;->mTriggerBackAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/flyme/systemui/fullscreen/views/EdgeBackView$2;

    invoke-direct {v1, p0}, Lcom/flyme/systemui/fullscreen/views/EdgeBackView$2;-><init>(Lcom/flyme/systemui/fullscreen/views/EdgeBackView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 336
    iget-object p0, p0, Lcom/flyme/systemui/fullscreen/views/EdgeBackView;->mTriggerBackAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method private updateDisplayCutout()V
    .registers 2

    .line 384
    :try_start_0
    iget-object v0, p0, Lcom/flyme/systemui/fullscreen/views/EdgeBackView;->mIWindowManagerExt:Lflyme/view/IWindowManagerExt;

    if-nez v0, :cond_11

    const-string/jumbo v0, "window_ext"

    .line 385
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 386
    invoke-static {v0}, Lflyme/view/IWindowManagerExt$Stub;->asInterface(Landroid/os/IBinder;)Lflyme/view/IWindowManagerExt;

    move-result-object v0

    iput-object v0, p0, Lcom/flyme/systemui/fullscreen/views/EdgeBackView;->mIWindowManagerExt:Lflyme/view/IWindowManagerExt;

    .line 389
    :cond_11
    iget-object v0, p0, Lcom/flyme/systemui/fullscreen/views/EdgeBackView;->mIWindowManagerExt:Lflyme/view/IWindowManagerExt;

    invoke-interface {v0}, Lflyme/view/IWindowManagerExt;->getLetterboxCausedByDisplayCutout()Landroid/graphics/Rect;

    move-result-object v0

    iput-object v0, p0, Lcom/flyme/systemui/fullscreen/views/EdgeBackView;->mDisplayCut:Landroid/graphics/Rect;
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_19} :catch_1a

    goto :goto_26

    :catch_1a
    move-exception v0

    .line 391
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 392
    iget-object v0, p0, Lcom/flyme/systemui/fullscreen/views/EdgeBackView;->mDisplayCut:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    const/4 v0, 0x0

    .line 393
    iput-object v0, p0, Lcom/flyme/systemui/fullscreen/views/EdgeBackView;->mIWindowManagerExt:Lflyme/view/IWindowManagerExt;

    :goto_26
    return-void
.end method

.method private updateIsDark(Z)V
    .registers 2

    return-void
.end method

.method private whetherTriggerBack(FLandroid/view/MotionEvent;)V
    .registers 6

    const/4 v0, 0x0

    .line 303
    iput-boolean v0, p0, Lcom/flyme/systemui/fullscreen/views/EdgeBackView;->mTriggerBack:Z

    .line 304
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    iget v2, p0, Lcom/flyme/systemui/fullscreen/views/EdgeBackView;->mInitX:F

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const/high16 v2, 0x42700000  # 60.0f

    cmpg-float v1, v1, v2

    if-gez v1, :cond_16

    .line 305
    iput-boolean v0, p0, Lcom/flyme/systemui/fullscreen/views/EdgeBackView;->mTriggerBack:Z

    .line 307
    :cond_16
    iget-boolean v0, p0, Lcom/flyme/systemui/fullscreen/views/EdgeBackView;->mIsLeftPanel:Z

    const/4 v1, 0x1

    const/high16 v2, 0x41f00000  # 30.0f

    if-eqz v0, :cond_31

    .line 308
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result p2

    iget v0, p0, Lcom/flyme/systemui/fullscreen/views/EdgeBackView;->mMaxBackDistance:F

    sub-float/2addr v0, v2

    cmpl-float p2, p2, v0

    if-gez p2, :cond_2e

    const/high16 p2, 0x43fa0000  # 500.0f

    cmpl-float p1, p1, p2

    if-ltz p1, :cond_4a

    .line 309
    :cond_2e
    iput-boolean v1, p0, Lcom/flyme/systemui/fullscreen/views/EdgeBackView;->mTriggerBack:Z

    goto :goto_4a

    .line 312
    :cond_31
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result p2

    sub-float/2addr v0, p2

    iget p2, p0, Lcom/flyme/systemui/fullscreen/views/EdgeBackView;->mMaxBackDistance:F

    sub-float/2addr p2, v2

    cmpl-float p2, v0, p2

    if-gtz p2, :cond_48

    const/high16 p2, -0x3c060000  # -500.0f

    cmpg-float p1, p1, p2

    if-gtz p1, :cond_4a

    .line 313
    :cond_48
    iput-boolean v1, p0, Lcom/flyme/systemui/fullscreen/views/EdgeBackView;->mTriggerBack:Z

    :cond_4a
    :goto_4a
    return-void
.end method


# virtual methods
.method public adjustRectToBoundingBox(Landroid/graphics/Rect;)V
    .registers 2

    return-void
.end method

.method public dismiss()V
    .registers 3

    .line 398
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_18

    const/4 v0, 0x0

    .line 399
    invoke-direct {p0, v0}, Lcom/flyme/systemui/fullscreen/views/EdgeBackView;->resetOnDown(Landroid/view/MotionEvent;)V

    const/16 v1, 0x8

    .line 400
    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 401
    iget-object v1, p0, Lcom/flyme/systemui/fullscreen/views/EdgeBackView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v1, :cond_18

    .line 402
    invoke-virtual {v1}, Landroid/view/VelocityTracker;->recycle()V

    .line 403
    iput-object v0, p0, Lcom/flyme/systemui/fullscreen/views/EdgeBackView;->mVelocityTracker:Landroid/view/VelocityTracker;

    :cond_18
    return-void
.end method

.method public drawDone()V
    .registers 4

    .line 220
    invoke-direct {p0}, Lcom/flyme/systemui/fullscreen/views/EdgeBackView;->getDoneRotia()F

    move-result v0

    const/high16 v1, 0x3f800000  # 1.0f

    sub-float/2addr v1, v0

    .line 221
    iget v0, p0, Lcom/flyme/systemui/fullscreen/views/EdgeBackView;->mBackViewWidth:F

    iget v2, p0, Lcom/flyme/systemui/fullscreen/views/EdgeBackView;->mMaxHeight:F

    invoke-direct {p0, v1, v0, v2}, Lcom/flyme/systemui/fullscreen/views/EdgeBackView;->computePath(FFF)V

    .line 222
    sget-object p0, Lcom/flyme/systemui/fullscreen/views/EdgeBackView;->mPath:Landroid/graphics/Path;

    invoke-virtual {p0}, Landroid/graphics/Path;->reset()V

    .line 223
    sget-object p0, Lcom/flyme/systemui/fullscreen/views/EdgeBackView;->mPath:Landroid/graphics/Path;

    sget-object v0, Lcom/flyme/systemui/fullscreen/views/EdgeBackView;->mSvgPath:Landroid/graphics/Path;

    invoke-virtual {p0, v0}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;)V

    return-void
.end method

.method public drawDrag()V
    .registers 2

    .line 244
    iget p0, p0, Lcom/flyme/systemui/fullscreen/views/EdgeBackView;->mScale:F

    const/high16 v0, 0x3f800000  # 1.0f

    cmpg-float p0, p0, v0

    if-gez p0, :cond_14

    .line 245
    sget-object p0, Lcom/flyme/systemui/fullscreen/views/EdgeBackView;->mPath:Landroid/graphics/Path;

    invoke-virtual {p0}, Landroid/graphics/Path;->reset()V

    .line 246
    sget-object p0, Lcom/flyme/systemui/fullscreen/views/EdgeBackView;->mPath:Landroid/graphics/Path;

    sget-object v0, Lcom/flyme/systemui/fullscreen/views/EdgeBackView;->mSvgPath:Landroid/graphics/Path;

    invoke-virtual {p0, v0}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;)V

    :cond_14
    return-void
.end method

.method public handleTouch(Landroid/view/MotionEvent;)V
    .registers 4

    .line 161
    iget-object v0, p0, Lcom/flyme/systemui/fullscreen/views/EdgeBackView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_a

    .line 162
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/flyme/systemui/fullscreen/views/EdgeBackView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 164
    :cond_a
    iget-object v0, p0, Lcom/flyme/systemui/fullscreen/views/EdgeBackView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 165
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-eqz v0, :cond_54

    const/4 v1, 0x1

    if-eq v0, v1, :cond_23

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1f

    const/4 v1, 0x3

    if-eq v0, v1, :cond_23

    goto :goto_5b

    .line 173
    :cond_1f
    invoke-direct {p0, p1}, Lcom/flyme/systemui/fullscreen/views/EdgeBackView;->handleMoveEvent(Landroid/view/MotionEvent;)V

    goto :goto_5b

    .line 179
    :cond_23
    iget-object v0, p0, Lcom/flyme/systemui/fullscreen/views/EdgeBackView;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 180
    iget-object v0, p0, Lcom/flyme/systemui/fullscreen/views/EdgeBackView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v0

    invoke-direct {p0, v0, p1}, Lcom/flyme/systemui/fullscreen/views/EdgeBackView;->whetherTriggerBack(FLandroid/view/MotionEvent;)V

    .line 182
    iget-boolean p1, p0, Lcom/flyme/systemui/fullscreen/views/EdgeBackView;->mTriggerBack:Z

    if-eqz p1, :cond_3b

    .line 183
    invoke-direct {p0}, Lcom/flyme/systemui/fullscreen/views/EdgeBackView;->triggerBack()V

    goto :goto_4b

    .line 185
    :cond_3b
    iget-object p1, p0, Lcom/flyme/systemui/fullscreen/views/EdgeBackView;->mTriggerBackAnimator:Landroid/animation/ValueAnimator;

    if-eqz p1, :cond_46

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result p1

    if-eqz p1, :cond_46

    goto :goto_4b

    :cond_46
    const/16 p1, 0x8

    .line 188
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 191
    :goto_4b
    iget-object p1, p0, Lcom/flyme/systemui/fullscreen/views/EdgeBackView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {p1}, Landroid/view/VelocityTracker;->recycle()V

    const/4 p1, 0x0

    .line 192
    iput-object p1, p0, Lcom/flyme/systemui/fullscreen/views/EdgeBackView;->mVelocityTracker:Landroid/view/VelocityTracker;

    goto :goto_5b

    .line 167
    :cond_54
    invoke-direct {p0, p1}, Lcom/flyme/systemui/fullscreen/views/EdgeBackView;->resetOnDown(Landroid/view/MotionEvent;)V

    const/4 p1, 0x0

    .line 169
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    :goto_5b
    return-void
.end method

.method public hasOverlappingRendering()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 4

    .line 200
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 201
    sget-object v0, Lcom/flyme/systemui/fullscreen/views/EdgeBackView$3;->$SwitchMap$com$flyme$systemui$fullscreen$views$EdgeBackView$AnimatorStatus:[I

    iget-object v1, p0, Lcom/flyme/systemui/fullscreen/views/EdgeBackView;->mAniStatus:Lcom/flyme/systemui/fullscreen/views/EdgeBackView$AnimatorStatus;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_21

    const/4 v1, 0x2

    if-eq v0, v1, :cond_24

    const/4 v1, 0x3

    if-eq v0, v1, :cond_24

    const/4 v1, 0x4

    if-eq v0, v1, :cond_24

    const/4 v1, 0x5

    if-eq v0, v1, :cond_1d

    goto :goto_24

    .line 212
    :cond_1d
    invoke-virtual {p0}, Lcom/flyme/systemui/fullscreen/views/EdgeBackView;->drawDone()V

    goto :goto_24

    .line 203
    :cond_21
    invoke-virtual {p0}, Lcom/flyme/systemui/fullscreen/views/EdgeBackView;->drawDrag()V

    .line 215
    :cond_24
    :goto_24
    sget-object v0, Lcom/flyme/systemui/fullscreen/views/EdgeBackView;->mPath:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/flyme/systemui/fullscreen/views/EdgeBackView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 216
    sget-object v0, Lcom/flyme/systemui/fullscreen/views/EdgeBackView;->mEdgePath:Landroid/graphics/Path;

    iget-object p0, p0, Lcom/flyme/systemui/fullscreen/views/EdgeBackView;->mPaint1:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, p0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    return-void
.end method

.method public setIsDark(ZZ)V
    .registers 3

    .line 140
    iput-boolean p1, p0, Lcom/flyme/systemui/fullscreen/views/EdgeBackView;->mIsDark:Z

    .line 141
    invoke-direct {p0, p2}, Lcom/flyme/systemui/fullscreen/views/EdgeBackView;->updateIsDark(Z)V

    return-void
.end method

.method public setIsLeftPanel(Z)V
    .registers 2

    .line 145
    iput-boolean p1, p0, Lcom/flyme/systemui/fullscreen/views/EdgeBackView;->mIsLeftPanel:Z

    .line 146
    invoke-direct {p0}, Lcom/flyme/systemui/fullscreen/views/EdgeBackView;->updateDisplayCutout()V

    return-void
.end method

.method public shouldTriggerBack()Z
    .registers 1

    .line 136
    iget-boolean p0, p0, Lcom/flyme/systemui/fullscreen/views/EdgeBackView;->mTriggerBack:Z

    return p0
.end method
