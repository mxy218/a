.class public Lcom/android/server/wm/WindowChangeAnimationSpec;
.super Ljava/lang/Object;
.source "WindowChangeAnimationSpec.java"

# interfaces
.implements Lcom/android/server/wm/LocalAnimationAdapter$AnimationSpec;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/WindowChangeAnimationSpec$TmpValues;
    }
.end annotation


# static fields
.field static final ANIMATION_DURATION:I = 0x150


# instance fields
.field private mAnimation:Landroid/view/animation/Animation;

.field private final mEndBounds:Landroid/graphics/Rect;

.field private final mIsAppAnimation:Z

.field private final mIsThumbnail:Z

.field private final mStartBounds:Landroid/graphics/Rect;

.field private final mThreadLocalTmps:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Lcom/android/server/wm/WindowChangeAnimationSpec$TmpValues;",
            ">;"
        }
    .end annotation
.end field

.field private final mTmpRect:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/view/DisplayInfo;FZZ)V
    .registers 8

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    sget-object v0, Lcom/android/server/wm/-$$Lambda$WindowChangeAnimationSpec$J5jIvng4n-ctFR8T6L2f_W3o1KU;->INSTANCE:Lcom/android/server/wm/-$$Lambda$WindowChangeAnimationSpec$J5jIvng4n-ctFR8T6L2f_W3o1KU;

    invoke-static {v0}, Ljava/lang/ThreadLocal;->withInitial(Ljava/util/function/Supplier;)Ljava/lang/ThreadLocal;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/WindowChangeAnimationSpec;->mThreadLocalTmps:Ljava/lang/ThreadLocal;

    .line 51
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/WindowChangeAnimationSpec;->mTmpRect:Landroid/graphics/Rect;

    .line 60
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v0, p0, Lcom/android/server/wm/WindowChangeAnimationSpec;->mStartBounds:Landroid/graphics/Rect;

    .line 61
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1, p2}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object p1, p0, Lcom/android/server/wm/WindowChangeAnimationSpec;->mEndBounds:Landroid/graphics/Rect;

    .line 62
    iput-boolean p5, p0, Lcom/android/server/wm/WindowChangeAnimationSpec;->mIsAppAnimation:Z

    .line 63
    iput-boolean p6, p0, Lcom/android/server/wm/WindowChangeAnimationSpec;->mIsThumbnail:Z

    .line 64
    const/high16 p1, 0x43a80000  # 336.0f

    mul-float/2addr p4, p1

    float-to-int p1, p4

    int-to-long p1, p1

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/wm/WindowChangeAnimationSpec;->createBoundsInterpolator(JLandroid/view/DisplayInfo;)V

    .line 65
    return-void
.end method

.method private createBoundsInterpolator(JLandroid/view/DisplayInfo;)V
    .registers 13

    .line 94
    iget-object v0, p0, Lcom/android/server/wm/WindowChangeAnimationSpec;->mEndBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    iget-object v1, p0, Lcom/android/server/wm/WindowChangeAnimationSpec;->mStartBounds:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/android/server/wm/WindowChangeAnimationSpec;->mEndBounds:Landroid/graphics/Rect;

    .line 95
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/android/server/wm/WindowChangeAnimationSpec;->mStartBounds:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    sub-int/2addr v0, v1

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ltz v0, :cond_21

    move v0, v1

    goto :goto_22

    :cond_21
    move v0, v2

    .line 96
    :goto_22
    const v3, 0x3f333333  # 0.7f

    .line 97
    long-to-float v4, p1

    mul-float/2addr v4, v3

    float-to-long v4, v4

    .line 98
    iget-object v6, p0, Lcom/android/server/wm/WindowChangeAnimationSpec;->mStartBounds:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v6, v3

    iget-object v7, p0, Lcom/android/server/wm/WindowChangeAnimationSpec;->mEndBounds:Landroid/graphics/Rect;

    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v6, v7

    const v7, 0x3e99999a  # 0.3f

    add-float/2addr v6, v7

    .line 100
    iget-object v8, p0, Lcom/android/server/wm/WindowChangeAnimationSpec;->mStartBounds:Landroid/graphics/Rect;

    invoke-virtual {v8}, Landroid/graphics/Rect;->height()I

    move-result v8

    int-to-float v8, v8

    mul-float/2addr v8, v3

    iget-object v3, p0, Lcom/android/server/wm/WindowChangeAnimationSpec;->mEndBounds:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v8, v3

    add-float/2addr v8, v7

    .line 102
    iget-boolean v3, p0, Lcom/android/server/wm/WindowChangeAnimationSpec;->mIsThumbnail:Z

    const/high16 v7, 0x3f800000  # 1.0f

    if-eqz v3, :cond_99

    .line 103
    new-instance p3, Landroid/view/animation/AnimationSet;

    invoke-direct {p3, v1}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 104
    new-instance v1, Landroid/view/animation/AlphaAnimation;

    const/4 v2, 0x0

    invoke-direct {v1, v7, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 105
    invoke-virtual {v1, v4, v5}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 106
    if-nez v0, :cond_68

    .line 107
    sub-long v2, p1, v4

    invoke-virtual {v1, v2, v3}, Landroid/view/animation/Animation;->setStartOffset(J)V

    .line 109
    :cond_68
    invoke-virtual {p3, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 110
    div-float v0, v7, v6

    .line 111
    div-float/2addr v7, v8

    .line 112
    new-instance v1, Landroid/view/animation/ScaleAnimation;

    invoke-direct {v1, v0, v0, v7, v7}, Landroid/view/animation/ScaleAnimation;-><init>(FFFF)V

    .line 113
    invoke-virtual {v1, p1, p2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 114
    invoke-virtual {p3, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 115
    iput-object p3, p0, Lcom/android/server/wm/WindowChangeAnimationSpec;->mAnimation:Landroid/view/animation/Animation;

    .line 116
    iget-object p1, p0, Lcom/android/server/wm/WindowChangeAnimationSpec;->mAnimation:Landroid/view/animation/Animation;

    iget-object p2, p0, Lcom/android/server/wm/WindowChangeAnimationSpec;->mStartBounds:Landroid/graphics/Rect;

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result p2

    iget-object p3, p0, Lcom/android/server/wm/WindowChangeAnimationSpec;->mStartBounds:Landroid/graphics/Rect;

    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    move-result p3

    iget-object v0, p0, Lcom/android/server/wm/WindowChangeAnimationSpec;->mEndBounds:Landroid/graphics/Rect;

    .line 117
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    iget-object v1, p0, Lcom/android/server/wm/WindowChangeAnimationSpec;->mEndBounds:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    .line 116
    invoke-virtual {p1, p2, p3, v0, v1}, Landroid/view/animation/Animation;->initialize(IIII)V

    .line 118
    goto :goto_105

    .line 119
    :cond_99
    new-instance v3, Landroid/view/animation/AnimationSet;

    invoke-direct {v3, v1}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 120
    new-instance v1, Landroid/view/animation/ScaleAnimation;

    invoke-direct {v1, v6, v7, v8, v7}, Landroid/view/animation/ScaleAnimation;-><init>(FFFF)V

    .line 121
    invoke-virtual {v1, v4, v5}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 122
    if-nez v0, :cond_ad

    .line 123
    sub-long v4, p1, v4

    invoke-virtual {v1, v4, v5}, Landroid/view/animation/Animation;->setStartOffset(J)V

    .line 125
    :cond_ad
    invoke-virtual {v3, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 126
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    iget-object v1, p0, Lcom/android/server/wm/WindowChangeAnimationSpec;->mStartBounds:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget-object v4, p0, Lcom/android/server/wm/WindowChangeAnimationSpec;->mEndBounds:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    int-to-float v4, v4

    iget-object v5, p0, Lcom/android/server/wm/WindowChangeAnimationSpec;->mStartBounds:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    int-to-float v5, v5

    iget-object v6, p0, Lcom/android/server/wm/WindowChangeAnimationSpec;->mEndBounds:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    int-to-float v6, v6

    invoke-direct {v0, v1, v4, v5, v6}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 128
    invoke-virtual {v0, p1, p2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 129
    invoke-virtual {v3, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 130
    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/server/wm/WindowChangeAnimationSpec;->mStartBounds:Landroid/graphics/Rect;

    invoke-direct {v0, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 131
    new-instance v1, Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/android/server/wm/WindowChangeAnimationSpec;->mEndBounds:Landroid/graphics/Rect;

    invoke-direct {v1, v4}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 132
    invoke-virtual {v0, v2, v2}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 133
    invoke-virtual {v1, v2, v2}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 134
    new-instance v2, Landroid/view/animation/ClipRectAnimation;

    invoke-direct {v2, v0, v1}, Landroid/view/animation/ClipRectAnimation;-><init>(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 135
    invoke-virtual {v2, p1, p2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 136
    invoke-virtual {v3, v2}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 137
    iput-object v3, p0, Lcom/android/server/wm/WindowChangeAnimationSpec;->mAnimation:Landroid/view/animation/Animation;

    .line 138
    iget-object p1, p0, Lcom/android/server/wm/WindowChangeAnimationSpec;->mAnimation:Landroid/view/animation/Animation;

    iget-object p2, p0, Lcom/android/server/wm/WindowChangeAnimationSpec;->mStartBounds:Landroid/graphics/Rect;

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result p2

    iget-object v0, p0, Lcom/android/server/wm/WindowChangeAnimationSpec;->mStartBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    iget v1, p3, Landroid/view/DisplayInfo;->appWidth:I

    iget p3, p3, Landroid/view/DisplayInfo;->appHeight:I

    invoke-virtual {p1, p2, v0, v1, p3}, Landroid/view/animation/Animation;->initialize(IIII)V

    .line 141
    :goto_105
    return-void
.end method

.method static synthetic lambda$new$0()Lcom/android/server/wm/WindowChangeAnimationSpec$TmpValues;
    .registers 2

    .line 47
    new-instance v0, Lcom/android/server/wm/WindowChangeAnimationSpec$TmpValues;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/wm/WindowChangeAnimationSpec$TmpValues;-><init>(Lcom/android/server/wm/WindowChangeAnimationSpec$1;)V

    return-object v0
.end method


# virtual methods
.method public apply(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;J)V
    .registers 11

    .line 145
    iget-object v0, p0, Lcom/android/server/wm/WindowChangeAnimationSpec;->mThreadLocalTmps:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/WindowChangeAnimationSpec$TmpValues;

    .line 146
    iget-boolean v1, p0, Lcom/android/server/wm/WindowChangeAnimationSpec;->mIsThumbnail:Z

    if-eqz v1, :cond_29

    .line 147
    iget-object v1, p0, Lcom/android/server/wm/WindowChangeAnimationSpec;->mAnimation:Landroid/view/animation/Animation;

    iget-object v2, v0, Lcom/android/server/wm/WindowChangeAnimationSpec$TmpValues;->mTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v1, p3, p4, v2}, Landroid/view/animation/Animation;->getTransformation(JLandroid/view/animation/Transformation;)Z

    .line 148
    iget-object p3, v0, Lcom/android/server/wm/WindowChangeAnimationSpec$TmpValues;->mTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {p3}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object p3

    iget-object p4, v0, Lcom/android/server/wm/WindowChangeAnimationSpec$TmpValues;->mFloats:[F

    invoke-virtual {p1, p2, p3, p4}, Landroid/view/SurfaceControl$Transaction;->setMatrix(Landroid/view/SurfaceControl;Landroid/graphics/Matrix;[F)Landroid/view/SurfaceControl$Transaction;

    .line 149
    iget-object p3, v0, Lcom/android/server/wm/WindowChangeAnimationSpec$TmpValues;->mTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {p3}, Landroid/view/animation/Transformation;->getAlpha()F

    move-result p3

    invoke-virtual {p1, p2, p3}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    goto/16 :goto_af

    .line 151
    :cond_29
    iget-object v1, p0, Lcom/android/server/wm/WindowChangeAnimationSpec;->mAnimation:Landroid/view/animation/Animation;

    iget-object v2, v0, Lcom/android/server/wm/WindowChangeAnimationSpec$TmpValues;->mTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v1, p3, p4, v2}, Landroid/view/animation/Animation;->getTransformation(JLandroid/view/animation/Transformation;)Z

    .line 152
    iget-object p3, v0, Lcom/android/server/wm/WindowChangeAnimationSpec$TmpValues;->mTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {p3}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object p3

    .line 153
    iget-object p4, v0, Lcom/android/server/wm/WindowChangeAnimationSpec$TmpValues;->mFloats:[F

    invoke-virtual {p1, p2, p3, p4}, Landroid/view/SurfaceControl$Transaction;->setMatrix(Landroid/view/SurfaceControl;Landroid/graphics/Matrix;[F)Landroid/view/SurfaceControl$Transaction;

    .line 157
    iget-object p4, v0, Lcom/android/server/wm/WindowChangeAnimationSpec$TmpValues;->mVecs:[F

    const/4 v1, 0x1

    iget-object v2, v0, Lcom/android/server/wm/WindowChangeAnimationSpec$TmpValues;->mVecs:[F

    const/4 v3, 0x2

    const/4 v4, 0x0

    aput v4, v2, v3

    aput v4, p4, v1

    .line 158
    iget-object p4, v0, Lcom/android/server/wm/WindowChangeAnimationSpec$TmpValues;->mVecs:[F

    iget-object v1, v0, Lcom/android/server/wm/WindowChangeAnimationSpec$TmpValues;->mVecs:[F

    const/high16 v2, 0x3f800000  # 1.0f

    const/4 v3, 0x3

    aput v2, v1, v3

    const/4 v1, 0x0

    aput v2, p4, v1

    .line 159
    iget-object p4, v0, Lcom/android/server/wm/WindowChangeAnimationSpec$TmpValues;->mVecs:[F

    invoke-virtual {p3, p4}, Landroid/graphics/Matrix;->mapVectors([F)V

    .line 160
    iget-object p3, v0, Lcom/android/server/wm/WindowChangeAnimationSpec$TmpValues;->mVecs:[F

    iget-object p4, v0, Lcom/android/server/wm/WindowChangeAnimationSpec$TmpValues;->mVecs:[F

    aget p4, p4, v1

    div-float p4, v2, p4

    aput p4, p3, v1

    .line 161
    iget-object p3, v0, Lcom/android/server/wm/WindowChangeAnimationSpec$TmpValues;->mVecs:[F

    iget-object p4, v0, Lcom/android/server/wm/WindowChangeAnimationSpec$TmpValues;->mVecs:[F

    aget p4, p4, v3

    div-float/2addr v2, p4

    aput v2, p3, v3

    .line 162
    iget-object p3, v0, Lcom/android/server/wm/WindowChangeAnimationSpec$TmpValues;->mTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {p3}, Landroid/view/animation/Transformation;->getClipRect()Landroid/graphics/Rect;

    move-result-object p3

    .line 163
    iget-object p4, p0, Lcom/android/server/wm/WindowChangeAnimationSpec;->mTmpRect:Landroid/graphics/Rect;

    iget v2, p3, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    iget-object v4, v0, Lcom/android/server/wm/WindowChangeAnimationSpec$TmpValues;->mVecs:[F

    aget v4, v4, v1

    mul-float/2addr v2, v4

    const/high16 v4, 0x3f000000  # 0.5f

    add-float/2addr v2, v4

    float-to-int v2, v2

    iput v2, p4, Landroid/graphics/Rect;->left:I

    .line 164
    iget-object p4, p0, Lcom/android/server/wm/WindowChangeAnimationSpec;->mTmpRect:Landroid/graphics/Rect;

    iget v2, p3, Landroid/graphics/Rect;->right:I

    int-to-float v2, v2

    iget-object v5, v0, Lcom/android/server/wm/WindowChangeAnimationSpec$TmpValues;->mVecs:[F

    aget v1, v5, v1

    mul-float/2addr v2, v1

    add-float/2addr v2, v4

    float-to-int v1, v2

    iput v1, p4, Landroid/graphics/Rect;->right:I

    .line 165
    iget-object p4, p0, Lcom/android/server/wm/WindowChangeAnimationSpec;->mTmpRect:Landroid/graphics/Rect;

    iget v1, p3, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    iget-object v2, v0, Lcom/android/server/wm/WindowChangeAnimationSpec$TmpValues;->mVecs:[F

    aget v2, v2, v3

    mul-float/2addr v1, v2

    add-float/2addr v1, v4

    float-to-int v1, v1

    iput v1, p4, Landroid/graphics/Rect;->top:I

    .line 166
    iget-object p4, p0, Lcom/android/server/wm/WindowChangeAnimationSpec;->mTmpRect:Landroid/graphics/Rect;

    iget p3, p3, Landroid/graphics/Rect;->bottom:I

    int-to-float p3, p3

    iget-object v0, v0, Lcom/android/server/wm/WindowChangeAnimationSpec$TmpValues;->mVecs:[F

    aget v0, v0, v3

    mul-float/2addr p3, v0

    add-float/2addr p3, v4

    float-to-int p3, p3

    iput p3, p4, Landroid/graphics/Rect;->bottom:I

    .line 167
    iget-object p3, p0, Lcom/android/server/wm/WindowChangeAnimationSpec;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {p1, p2, p3}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;Landroid/graphics/Rect;)Landroid/view/SurfaceControl$Transaction;

    .line 169
    :goto_af
    return-void
.end method

.method public calculateStatusBarTransitionStartTime()J
    .registers 7

    .line 173
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 174
    iget-object v2, p0, Lcom/android/server/wm/WindowChangeAnimationSpec;->mAnimation:Landroid/view/animation/Animation;

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

    move-result-wide v0

    return-wide v0
.end method

.method public canSkipFirstFrame()Z
    .registers 2

    .line 180
    const/4 v0, 0x0

    return v0
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 5

    .line 190
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/android/server/wm/WindowChangeAnimationSpec;->mAnimation:Landroid/view/animation/Animation;

    invoke-virtual {p2}, Landroid/view/animation/Animation;->getDuration()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ljava/io/PrintWriter;->println(J)V

    .line 191
    return-void
.end method

.method public getBackgroundColor()I
    .registers 2

    .line 74
    const/4 v0, 0x0

    return v0
.end method

.method public getDuration()J
    .registers 3

    .line 79
    iget-object v0, p0, Lcom/android/server/wm/WindowChangeAnimationSpec;->mAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->getDuration()J

    move-result-wide v0

    return-wide v0
.end method

.method public getShowWallpaper()Z
    .registers 2

    .line 69
    const/4 v0, 0x0

    return v0
.end method

.method public needsEarlyWakeup()Z
    .registers 2

    .line 185
    iget-boolean v0, p0, Lcom/android/server/wm/WindowChangeAnimationSpec;->mIsAppAnimation:Z

    return v0
.end method

.method public writeToProtoInner(Landroid/util/proto/ProtoOutputStream;)V
    .registers 7

    .line 195
    const-wide v0, 0x10b00000001L

    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    .line 196
    iget-object v2, p0, Lcom/android/server/wm/WindowChangeAnimationSpec;->mAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    const-wide v3, 0x10900000001L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 197
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 198
    return-void
.end method
