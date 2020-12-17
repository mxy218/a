.class public Lcom/android/server/wm/FlymeWindowChangeAnimationSpec;
.super Ljava/lang/Object;
.source "FlymeWindowChangeAnimationSpec.java"

# interfaces
.implements Lcom/android/server/wm/LocalAnimationAdapter$AnimationSpec;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/FlymeWindowChangeAnimationSpec$TmpValues;
    }
.end annotation


# static fields
.field private static final ANIMATION_DURATION:I = 0x150


# instance fields
.field private mAnimation:Landroid/view/animation/Animation;

.field private final mEndAppBound:Landroid/graphics/Rect;

.field private final mEndBounds:Landroid/graphics/Rect;

.field private final mEndClipBounds:Landroid/graphics/Rect;

.field private final mEndRadius:F

.field private final mIsAppAnimation:Z

.field private final mIsThumbnail:Z

.field private final mScalePart:F

.field private final mStartAppBound:Landroid/graphics/Rect;

.field private final mStartBounds:Landroid/graphics/Rect;

.field private final mStartClipBounds:Landroid/graphics/Rect;

.field private final mStartRadius:F

.field private final mThreadLocalTmps:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Lcom/android/server/wm/FlymeWindowChangeAnimationSpec$TmpValues;",
            ">;"
        }
    .end annotation
.end field

.field private final mTmpRect:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/FlymeDisplayInfo;Lcom/android/server/wm/FlymeDisplayInfo;FLandroid/view/DisplayInfo;FZZ)V
    .registers 10
    .param p1, "startWindowFrame"  # Lcom/android/server/wm/FlymeDisplayInfo;
    .param p2, "endWindowFrame"  # Lcom/android/server/wm/FlymeDisplayInfo;
    .param p3, "scalePart"  # F
    .param p4, "displayInfo"  # Landroid/view/DisplayInfo;
    .param p5, "durationScale"  # F
    .param p6, "isAppAnimation"  # Z
    .param p7, "isThumbnail"  # Z

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    sget-object v0, Lcom/android/server/wm/-$$Lambda$FlymeWindowChangeAnimationSpec$lWG1KHolmFKMBRRXmbFHqE2HV58;->INSTANCE:Lcom/android/server/wm/-$$Lambda$FlymeWindowChangeAnimationSpec$lWG1KHolmFKMBRRXmbFHqE2HV58;

    invoke-static {v0}, Ljava/lang/ThreadLocal;->withInitial(Ljava/util/function/Supplier;)Ljava/lang/ThreadLocal;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/FlymeWindowChangeAnimationSpec;->mThreadLocalTmps:Ljava/lang/ThreadLocal;

    .line 44
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/FlymeWindowChangeAnimationSpec;->mTmpRect:Landroid/graphics/Rect;

    .line 52
    new-instance v0, Landroid/graphics/Rect;

    invoke-interface {p1}, Lcom/android/server/wm/FlymeDisplayInfo;->getVisibleBound()Landroid/graphics/Rect;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v0, p0, Lcom/android/server/wm/FlymeWindowChangeAnimationSpec;->mStartClipBounds:Landroid/graphics/Rect;

    .line 53
    new-instance v0, Landroid/graphics/Rect;

    invoke-interface {p2}, Lcom/android/server/wm/FlymeDisplayInfo;->getVisibleBound()Landroid/graphics/Rect;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v0, p0, Lcom/android/server/wm/FlymeWindowChangeAnimationSpec;->mEndClipBounds:Landroid/graphics/Rect;

    .line 54
    new-instance v0, Landroid/graphics/Rect;

    invoke-interface {p1}, Lcom/android/server/wm/FlymeDisplayInfo;->getDisplayFrame()Landroid/graphics/Rect;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v0, p0, Lcom/android/server/wm/FlymeWindowChangeAnimationSpec;->mStartAppBound:Landroid/graphics/Rect;

    .line 55
    new-instance v0, Landroid/graphics/Rect;

    invoke-interface {p2}, Lcom/android/server/wm/FlymeDisplayInfo;->getDisplayFrame()Landroid/graphics/Rect;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v0, p0, Lcom/android/server/wm/FlymeWindowChangeAnimationSpec;->mEndAppBound:Landroid/graphics/Rect;

    .line 56
    new-instance v0, Landroid/graphics/Rect;

    invoke-interface {p1}, Lcom/android/server/wm/FlymeDisplayInfo;->getDisplayBound()Landroid/graphics/Rect;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v0, p0, Lcom/android/server/wm/FlymeWindowChangeAnimationSpec;->mStartBounds:Landroid/graphics/Rect;

    .line 57
    new-instance v0, Landroid/graphics/Rect;

    invoke-interface {p2}, Lcom/android/server/wm/FlymeDisplayInfo;->getDisplayBound()Landroid/graphics/Rect;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v0, p0, Lcom/android/server/wm/FlymeWindowChangeAnimationSpec;->mEndBounds:Landroid/graphics/Rect;

    .line 58
    invoke-interface {p1}, Lcom/android/server/wm/FlymeDisplayInfo;->getCornerRadius()F

    move-result v0

    iput v0, p0, Lcom/android/server/wm/FlymeWindowChangeAnimationSpec;->mStartRadius:F

    .line 59
    invoke-interface {p2}, Lcom/android/server/wm/FlymeDisplayInfo;->getCornerRadius()F

    move-result v0

    iput v0, p0, Lcom/android/server/wm/FlymeWindowChangeAnimationSpec;->mEndRadius:F

    .line 60
    iput p3, p0, Lcom/android/server/wm/FlymeWindowChangeAnimationSpec;->mScalePart:F

    .line 61
    iput-boolean p6, p0, Lcom/android/server/wm/FlymeWindowChangeAnimationSpec;->mIsAppAnimation:Z

    .line 62
    iput-boolean p7, p0, Lcom/android/server/wm/FlymeWindowChangeAnimationSpec;->mIsThumbnail:Z

    .line 63
    const/high16 v0, 0x43a80000  # 336.0f

    mul-float/2addr v0, p5

    float-to-int v0, v0

    int-to-long v0, v0

    invoke-direct {p0, v0, v1, p4}, Lcom/android/server/wm/FlymeWindowChangeAnimationSpec;->createBoundsInterpolator(JLandroid/view/DisplayInfo;)V

    .line 64
    return-void
.end method

.method private createBoundsInterpolator(JLandroid/view/DisplayInfo;)V
    .registers 23
    .param p1, "duration"  # J
    .param p3, "displayInfo"  # Landroid/view/DisplayInfo;

    .line 94
    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move-object/from16 v3, p3

    iget-object v4, v0, Lcom/android/server/wm/FlymeWindowChangeAnimationSpec;->mEndBounds:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    iget-object v5, v0, Lcom/android/server/wm/FlymeWindowChangeAnimationSpec;->mStartBounds:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v5

    sub-int/2addr v4, v5

    iget-object v5, v0, Lcom/android/server/wm/FlymeWindowChangeAnimationSpec;->mEndBounds:Landroid/graphics/Rect;

    .line 95
    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v5

    add-int/2addr v4, v5

    iget-object v5, v0, Lcom/android/server/wm/FlymeWindowChangeAnimationSpec;->mStartBounds:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v5

    sub-int/2addr v4, v5

    const/4 v5, 0x1

    if-ltz v4, :cond_26

    move v4, v5

    goto :goto_27

    :cond_26
    const/4 v4, 0x0

    .line 96
    .local v4, "growing":Z
    :goto_27
    iget v6, v0, Lcom/android/server/wm/FlymeWindowChangeAnimationSpec;->mScalePart:F

    .line 97
    .local v6, "scalePart":F
    long-to-float v7, v1

    mul-float/2addr v7, v6

    float-to-long v7, v7

    .line 98
    .local v7, "scalePeriod":J
    iget-object v9, v0, Lcom/android/server/wm/FlymeWindowChangeAnimationSpec;->mStartBounds:Landroid/graphics/Rect;

    invoke-virtual {v9}, Landroid/graphics/Rect;->width()I

    move-result v9

    int-to-float v9, v9

    mul-float/2addr v9, v6

    iget-object v10, v0, Lcom/android/server/wm/FlymeWindowChangeAnimationSpec;->mEndBounds:Landroid/graphics/Rect;

    invoke-virtual {v10}, Landroid/graphics/Rect;->width()I

    move-result v10

    int-to-float v10, v10

    div-float/2addr v9, v10

    const/high16 v10, 0x3f800000  # 1.0f

    sub-float v11, v10, v6

    add-float/2addr v9, v11

    .line 100
    .local v9, "startScaleX":F
    iget-object v11, v0, Lcom/android/server/wm/FlymeWindowChangeAnimationSpec;->mStartBounds:Landroid/graphics/Rect;

    invoke-virtual {v11}, Landroid/graphics/Rect;->height()I

    move-result v11

    int-to-float v11, v11

    mul-float/2addr v11, v6

    iget-object v12, v0, Lcom/android/server/wm/FlymeWindowChangeAnimationSpec;->mEndBounds:Landroid/graphics/Rect;

    invoke-virtual {v12}, Landroid/graphics/Rect;->height()I

    move-result v12

    int-to-float v12, v12

    div-float/2addr v11, v12

    sub-float v12, v10, v6

    add-float/2addr v11, v12

    .line 102
    .local v11, "startScaleY":F
    iget-boolean v12, v0, Lcom/android/server/wm/FlymeWindowChangeAnimationSpec;->mIsThumbnail:Z

    if-eqz v12, :cond_c2

    .line 103
    new-instance v12, Landroid/view/animation/AnimationSet;

    invoke-direct {v12, v5}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    move-object v5, v12

    .line 104
    .local v5, "animSet":Landroid/view/animation/AnimationSet;
    new-instance v12, Landroid/view/animation/AlphaAnimation;

    const/4 v13, 0x0

    invoke-direct {v12, v10, v13}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 105
    .local v12, "anim":Landroid/view/animation/Animation;
    invoke-virtual {v12, v7, v8}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 106
    if-nez v4, :cond_6e

    .line 107
    sub-long v13, v1, v7

    invoke-virtual {v12, v13, v14}, Landroid/view/animation/Animation;->setStartOffset(J)V

    .line 109
    :cond_6e
    invoke-virtual {v5, v12}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 110
    iget-object v13, v0, Lcom/android/server/wm/FlymeWindowChangeAnimationSpec;->mEndAppBound:Landroid/graphics/Rect;

    invoke-virtual {v13}, Landroid/graphics/Rect;->width()I

    move-result v13

    int-to-float v13, v13

    mul-float/2addr v13, v10

    iget-object v14, v0, Lcom/android/server/wm/FlymeWindowChangeAnimationSpec;->mStartAppBound:Landroid/graphics/Rect;

    invoke-virtual {v14}, Landroid/graphics/Rect;->width()I

    move-result v14

    int-to-float v14, v14

    div-float/2addr v13, v14

    .line 111
    .local v13, "endScaleX":F
    iget-object v14, v0, Lcom/android/server/wm/FlymeWindowChangeAnimationSpec;->mEndAppBound:Landroid/graphics/Rect;

    invoke-virtual {v14}, Landroid/graphics/Rect;->height()I

    move-result v14

    int-to-float v14, v14

    mul-float/2addr v14, v10

    iget-object v10, v0, Lcom/android/server/wm/FlymeWindowChangeAnimationSpec;->mStartAppBound:Landroid/graphics/Rect;

    invoke-virtual {v10}, Landroid/graphics/Rect;->height()I

    move-result v10

    int-to-float v10, v10

    div-float/2addr v14, v10

    .line 112
    .local v14, "endScaleY":F
    new-instance v10, Landroid/view/animation/ScaleAnimation;

    invoke-direct {v10, v13, v13, v14, v14}, Landroid/view/animation/ScaleAnimation;-><init>(FFFF)V

    .line 113
    .end local v12  # "anim":Landroid/view/animation/Animation;
    .local v10, "anim":Landroid/view/animation/Animation;
    invoke-virtual {v10, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 114
    invoke-virtual {v5, v10}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 115
    iput-object v5, v0, Lcom/android/server/wm/FlymeWindowChangeAnimationSpec;->mAnimation:Landroid/view/animation/Animation;

    .line 116
    iget-object v12, v0, Lcom/android/server/wm/FlymeWindowChangeAnimationSpec;->mAnimation:Landroid/view/animation/Animation;

    iget-object v15, v0, Lcom/android/server/wm/FlymeWindowChangeAnimationSpec;->mStartBounds:Landroid/graphics/Rect;

    invoke-virtual {v15}, Landroid/graphics/Rect;->width()I

    move-result v15

    move-object/from16 v16, v5

    .end local v5  # "animSet":Landroid/view/animation/AnimationSet;
    .local v16, "animSet":Landroid/view/animation/AnimationSet;
    iget-object v5, v0, Lcom/android/server/wm/FlymeWindowChangeAnimationSpec;->mStartBounds:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v5

    move/from16 v17, v6

    .end local v6  # "scalePart":F
    .local v17, "scalePart":F
    iget-object v6, v0, Lcom/android/server/wm/FlymeWindowChangeAnimationSpec;->mEndBounds:Landroid/graphics/Rect;

    .line 117
    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v6

    move-object/from16 v18, v10

    .end local v10  # "anim":Landroid/view/animation/Animation;
    .local v18, "anim":Landroid/view/animation/Animation;
    iget-object v10, v0, Lcom/android/server/wm/FlymeWindowChangeAnimationSpec;->mEndBounds:Landroid/graphics/Rect;

    invoke-virtual {v10}, Landroid/graphics/Rect;->height()I

    move-result v10

    .line 116
    invoke-virtual {v12, v15, v5, v6, v10}, Landroid/view/animation/Animation;->initialize(IIII)V

    .line 118
    .end local v13  # "endScaleX":F
    .end local v14  # "endScaleY":F
    .end local v16  # "animSet":Landroid/view/animation/AnimationSet;
    .end local v18  # "anim":Landroid/view/animation/Animation;
    goto :goto_130

    .line 119
    .end local v17  # "scalePart":F
    .restart local v6  # "scalePart":F
    :cond_c2
    move/from16 v17, v6

    .end local v6  # "scalePart":F
    .restart local v17  # "scalePart":F
    new-instance v6, Landroid/view/animation/AnimationSet;

    invoke-direct {v6, v5}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    move-object v5, v6

    .line 120
    .restart local v5  # "animSet":Landroid/view/animation/AnimationSet;
    new-instance v6, Landroid/view/animation/ScaleAnimation;

    invoke-direct {v6, v9, v10, v11, v10}, Landroid/view/animation/ScaleAnimation;-><init>(FFFF)V

    .line 121
    .local v6, "scaleAnim":Landroid/view/animation/Animation;
    invoke-virtual {v6, v7, v8}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 122
    if-nez v4, :cond_d9

    .line 123
    sub-long v12, v1, v7

    invoke-virtual {v6, v12, v13}, Landroid/view/animation/Animation;->setStartOffset(J)V

    .line 125
    :cond_d9
    invoke-virtual {v5, v6}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 126
    new-instance v10, Landroid/view/animation/TranslateAnimation;

    iget-object v12, v0, Lcom/android/server/wm/FlymeWindowChangeAnimationSpec;->mStartBounds:Landroid/graphics/Rect;

    iget v12, v12, Landroid/graphics/Rect;->left:I

    int-to-float v12, v12

    iget-object v13, v0, Lcom/android/server/wm/FlymeWindowChangeAnimationSpec;->mEndBounds:Landroid/graphics/Rect;

    iget v13, v13, Landroid/graphics/Rect;->left:I

    int-to-float v13, v13

    iget-object v14, v0, Lcom/android/server/wm/FlymeWindowChangeAnimationSpec;->mStartBounds:Landroid/graphics/Rect;

    iget v14, v14, Landroid/graphics/Rect;->top:I

    int-to-float v14, v14

    iget-object v15, v0, Lcom/android/server/wm/FlymeWindowChangeAnimationSpec;->mEndBounds:Landroid/graphics/Rect;

    iget v15, v15, Landroid/graphics/Rect;->top:I

    int-to-float v15, v15

    invoke-direct {v10, v12, v13, v14, v15}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 128
    .local v10, "translateAnim":Landroid/view/animation/Animation;
    invoke-virtual {v10, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 129
    invoke-virtual {v5, v10}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 130
    new-instance v12, Lcom/android/server/wm/animation/RadiusAnimation;

    iget v13, v0, Lcom/android/server/wm/FlymeWindowChangeAnimationSpec;->mStartRadius:F

    iget v14, v0, Lcom/android/server/wm/FlymeWindowChangeAnimationSpec;->mEndRadius:F

    invoke-direct {v12, v13, v14}, Lcom/android/server/wm/animation/RadiusAnimation;-><init>(FF)V

    .line 131
    .local v12, "radiusAnimation":Lcom/android/server/wm/animation/RadiusAnimation;
    invoke-virtual {v12, v1, v2}, Lcom/android/server/wm/animation/RadiusAnimation;->setDuration(J)V

    .line 132
    invoke-virtual {v5, v12}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 133
    new-instance v13, Landroid/view/animation/ClipRectAnimation;

    iget-object v14, v0, Lcom/android/server/wm/FlymeWindowChangeAnimationSpec;->mStartClipBounds:Landroid/graphics/Rect;

    iget-object v15, v0, Lcom/android/server/wm/FlymeWindowChangeAnimationSpec;->mEndClipBounds:Landroid/graphics/Rect;

    invoke-direct {v13, v14, v15}, Landroid/view/animation/ClipRectAnimation;-><init>(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 134
    .local v13, "clipAnim":Landroid/view/animation/Animation;
    invoke-virtual {v13, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 135
    invoke-virtual {v5, v13}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 136
    iput-object v5, v0, Lcom/android/server/wm/FlymeWindowChangeAnimationSpec;->mAnimation:Landroid/view/animation/Animation;

    .line 137
    iget-object v14, v0, Lcom/android/server/wm/FlymeWindowChangeAnimationSpec;->mAnimation:Landroid/view/animation/Animation;

    iget-object v15, v0, Lcom/android/server/wm/FlymeWindowChangeAnimationSpec;->mStartBounds:Landroid/graphics/Rect;

    invoke-virtual {v15}, Landroid/graphics/Rect;->width()I

    move-result v15

    iget-object v1, v0, Lcom/android/server/wm/FlymeWindowChangeAnimationSpec;->mStartBounds:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    iget v2, v3, Landroid/view/DisplayInfo;->appWidth:I

    iget v0, v3, Landroid/view/DisplayInfo;->appHeight:I

    invoke-virtual {v14, v15, v1, v2, v0}, Landroid/view/animation/Animation;->initialize(IIII)V

    .line 140
    .end local v5  # "animSet":Landroid/view/animation/AnimationSet;
    .end local v6  # "scaleAnim":Landroid/view/animation/Animation;
    .end local v10  # "translateAnim":Landroid/view/animation/Animation;
    .end local v12  # "radiusAnimation":Lcom/android/server/wm/animation/RadiusAnimation;
    .end local v13  # "clipAnim":Landroid/view/animation/Animation;
    :goto_130
    return-void
.end method

.method static synthetic lambda$new$0()Lcom/android/server/wm/FlymeWindowChangeAnimationSpec$TmpValues;
    .registers 2

    .line 33
    new-instance v0, Lcom/android/server/wm/FlymeWindowChangeAnimationSpec$TmpValues;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/wm/FlymeWindowChangeAnimationSpec$TmpValues;-><init>(Lcom/android/server/wm/FlymeWindowChangeAnimationSpec$1;)V

    return-object v0
.end method


# virtual methods
.method public apply(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;J)V
    .registers 11
    .param p1, "t"  # Landroid/view/SurfaceControl$Transaction;
    .param p2, "leash"  # Landroid/view/SurfaceControl;
    .param p3, "currentPlayTime"  # J

    .line 144
    iget-object v0, p0, Lcom/android/server/wm/FlymeWindowChangeAnimationSpec;->mThreadLocalTmps:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/FlymeWindowChangeAnimationSpec$TmpValues;

    .line 145
    .local v0, "tmp":Lcom/android/server/wm/FlymeWindowChangeAnimationSpec$TmpValues;
    iget-boolean v1, p0, Lcom/android/server/wm/FlymeWindowChangeAnimationSpec;->mIsThumbnail:Z

    if-eqz v1, :cond_28

    .line 146
    iget-object v1, p0, Lcom/android/server/wm/FlymeWindowChangeAnimationSpec;->mAnimation:Landroid/view/animation/Animation;

    iget-object v2, v0, Lcom/android/server/wm/FlymeWindowChangeAnimationSpec$TmpValues;->mTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v1, p3, p4, v2}, Landroid/view/animation/Animation;->getTransformation(JLandroid/view/animation/Transformation;)Z

    .line 147
    iget-object v1, v0, Lcom/android/server/wm/FlymeWindowChangeAnimationSpec$TmpValues;->mTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v1}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    iget-object v2, v0, Lcom/android/server/wm/FlymeWindowChangeAnimationSpec$TmpValues;->mFloats:[F

    invoke-virtual {p1, p2, v1, v2}, Landroid/view/SurfaceControl$Transaction;->setMatrix(Landroid/view/SurfaceControl;Landroid/graphics/Matrix;[F)Landroid/view/SurfaceControl$Transaction;

    .line 148
    iget-object v1, v0, Lcom/android/server/wm/FlymeWindowChangeAnimationSpec$TmpValues;->mTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v1}, Landroid/view/animation/Transformation;->getAlpha()F

    move-result v1

    invoke-virtual {p1, p2, v1}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    goto :goto_69

    .line 150
    :cond_28
    iget-object v1, p0, Lcom/android/server/wm/FlymeWindowChangeAnimationSpec;->mAnimation:Landroid/view/animation/Animation;

    iget-object v2, v0, Lcom/android/server/wm/FlymeWindowChangeAnimationSpec$TmpValues;->mTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v1, p3, p4, v2}, Landroid/view/animation/Animation;->getTransformation(JLandroid/view/animation/Transformation;)Z

    .line 151
    iget-object v1, v0, Lcom/android/server/wm/FlymeWindowChangeAnimationSpec$TmpValues;->mTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v1}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    .line 152
    .local v1, "matrix":Landroid/graphics/Matrix;
    iget-object v2, v0, Lcom/android/server/wm/FlymeWindowChangeAnimationSpec$TmpValues;->mFloats:[F

    invoke-virtual {p1, p2, v1, v2}, Landroid/view/SurfaceControl$Transaction;->setMatrix(Landroid/view/SurfaceControl;Landroid/graphics/Matrix;[F)Landroid/view/SurfaceControl$Transaction;

    .line 153
    iget-object v2, v0, Lcom/android/server/wm/FlymeWindowChangeAnimationSpec$TmpValues;->mTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v2}, Landroid/view/animation/Transformation;->getCornerRadius()F

    move-result v2

    invoke-virtual {p1, p2, v2}, Landroid/view/SurfaceControl$Transaction;->setCornerRadius(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    .line 154
    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    .line 155
    .local v2, "matrix1":Landroid/graphics/Matrix;
    invoke-virtual {v1, v2}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    move-result v3

    if-eqz v3, :cond_69

    .line 156
    iget-object v3, v0, Lcom/android/server/wm/FlymeWindowChangeAnimationSpec$TmpValues;->mTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v3}, Landroid/view/animation/Transformation;->getClipRect()Landroid/graphics/Rect;

    move-result-object v3

    .line 157
    .local v3, "clipRect":Landroid/graphics/Rect;
    new-instance v4, Landroid/graphics/RectF;

    invoke-direct {v4, v3}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    .line 158
    .local v4, "rectF":Landroid/graphics/RectF;
    invoke-virtual {v2, v4}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    move-result v5

    if-eqz v5, :cond_69

    .line 159
    iget-object v5, p0, Lcom/android/server/wm/FlymeWindowChangeAnimationSpec;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v4, v5}, Landroid/graphics/RectF;->round(Landroid/graphics/Rect;)V

    .line 160
    iget-object v5, p0, Lcom/android/server/wm/FlymeWindowChangeAnimationSpec;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {p1, p2, v5}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;Landroid/graphics/Rect;)Landroid/view/SurfaceControl$Transaction;

    .line 164
    .end local v1  # "matrix":Landroid/graphics/Matrix;
    .end local v2  # "matrix1":Landroid/graphics/Matrix;
    .end local v3  # "clipRect":Landroid/graphics/Rect;
    .end local v4  # "rectF":Landroid/graphics/RectF;
    :cond_69
    :goto_69
    return-void
.end method

.method public calculateStatusBarTransitionStartTime()J
    .registers 7

    .line 168
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 169
    .local v0, "uptime":J
    iget-object v2, p0, Lcom/android/server/wm/FlymeWindowChangeAnimationSpec;->mAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v2}, Landroid/view/animation/Animation;->getDuration()J

    move-result-wide v2

    long-to-float v2, v2

    const v3, 0x3f7d70a4  # 0.99f

    mul-float/2addr v2, v3

    float-to-long v2, v2

    add-long/2addr v2, v0

    const-wide/16 v4, 0x78

    sub-long/2addr v2, v4

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    return-wide v2
.end method

.method public canSkipFirstFrame()Z
    .registers 2

    .line 175
    const/4 v0, 0x0

    return v0
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 5
    .param p1, "pw"  # Ljava/io/PrintWriter;
    .param p2, "prefix"  # Ljava/lang/String;

    .line 185
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 186
    iget-object v0, p0, Lcom/android/server/wm/FlymeWindowChangeAnimationSpec;->mAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->getDuration()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ljava/io/PrintWriter;->println(J)V

    .line 187
    return-void
.end method

.method public getBackgroundColor()I
    .registers 2

    .line 73
    const/4 v0, 0x0

    return v0
.end method

.method public getDuration()J
    .registers 3

    .line 78
    iget-object v0, p0, Lcom/android/server/wm/FlymeWindowChangeAnimationSpec;->mAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->getDuration()J

    move-result-wide v0

    return-wide v0
.end method

.method public getShowWallpaper()Z
    .registers 2

    .line 68
    const/4 v0, 0x0

    return v0
.end method

.method public needsEarlyWakeup()Z
    .registers 2

    .line 180
    iget-boolean v0, p0, Lcom/android/server/wm/FlymeWindowChangeAnimationSpec;->mIsAppAnimation:Z

    return v0
.end method

.method public writeToProtoInner(Landroid/util/proto/ProtoOutputStream;)V
    .registers 7
    .param p1, "proto"  # Landroid/util/proto/ProtoOutputStream;

    .line 191
    const-wide v0, 0x10b00000001L

    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    .line 192
    .local v0, "token":J
    iget-object v2, p0, Lcom/android/server/wm/FlymeWindowChangeAnimationSpec;->mAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    const-wide v3, 0x10900000001L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 193
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 194
    return-void
.end method
