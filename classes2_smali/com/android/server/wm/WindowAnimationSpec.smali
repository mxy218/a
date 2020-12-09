.class public Lcom/android/server/wm/WindowAnimationSpec;
.super Ljava/lang/Object;
.source "WindowAnimationSpec.java"

# interfaces
.implements Lcom/android/server/wm/LocalAnimationAdapter$AnimationSpec;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/WindowAnimationSpec$TmpValues;
    }
.end annotation


# instance fields
.field private mAnimation:Landroid/view/animation/Animation;

.field private final mCanSkipFirstFrame:Z

.field private final mIsAppAnimation:Z

.field private final mPosition:Landroid/graphics/Point;

.field private final mStackBounds:Landroid/graphics/Rect;

.field private mStackClipMode:I

.field private final mThreadLocalTmps:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Lcom/android/server/wm/WindowAnimationSpec$TmpValues;",
            ">;"
        }
    .end annotation
.end field

.field private final mTmpRect:Landroid/graphics/Rect;

.field private final mWindowCornerRadius:F


# direct methods
.method public constructor <init>(Landroid/view/animation/Animation;Landroid/graphics/Point;Landroid/graphics/Rect;ZIZF)V
    .registers 9

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/WindowAnimationSpec;->mPosition:Landroid/graphics/Point;

    .line 48
    sget-object v0, Lcom/android/server/wm/-$$Lambda$WindowAnimationSpec$jKE7Phq2DESkeBondpaNPBLn6Cs;->INSTANCE:Lcom/android/server/wm/-$$Lambda$WindowAnimationSpec$jKE7Phq2DESkeBondpaNPBLn6Cs;

    invoke-static {v0}, Ljava/lang/ThreadLocal;->withInitial(Ljava/util/function/Supplier;)Ljava/lang/ThreadLocal;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/WindowAnimationSpec;->mThreadLocalTmps:Ljava/lang/ThreadLocal;

    .line 51
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/WindowAnimationSpec;->mStackBounds:Landroid/graphics/Rect;

    .line 53
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/WindowAnimationSpec;->mTmpRect:Landroid/graphics/Rect;

    .line 65
    iput-object p1, p0, Lcom/android/server/wm/WindowAnimationSpec;->mAnimation:Landroid/view/animation/Animation;

    .line 66
    if-eqz p2, :cond_2d

    .line 67
    iget-object p1, p0, Lcom/android/server/wm/WindowAnimationSpec;->mPosition:Landroid/graphics/Point;

    iget v0, p2, Landroid/graphics/Point;->x:I

    iget p2, p2, Landroid/graphics/Point;->y:I

    invoke-virtual {p1, v0, p2}, Landroid/graphics/Point;->set(II)V

    .line 69
    :cond_2d
    iput p7, p0, Lcom/android/server/wm/WindowAnimationSpec;->mWindowCornerRadius:F

    .line 70
    iput-boolean p4, p0, Lcom/android/server/wm/WindowAnimationSpec;->mCanSkipFirstFrame:Z

    .line 71
    iput-boolean p6, p0, Lcom/android/server/wm/WindowAnimationSpec;->mIsAppAnimation:Z

    .line 72
    iput p5, p0, Lcom/android/server/wm/WindowAnimationSpec;->mStackClipMode:I

    .line 73
    if-eqz p3, :cond_3c

    .line 74
    iget-object p1, p0, Lcom/android/server/wm/WindowAnimationSpec;->mStackBounds:Landroid/graphics/Rect;

    invoke-virtual {p1, p3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 76
    :cond_3c
    return-void
.end method

.method public constructor <init>(Landroid/view/animation/Animation;Landroid/graphics/Point;ZF)V
    .registers 13

    .line 58
    const/4 v3, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, p3

    move v7, p4

    invoke-direct/range {v0 .. v7}, Lcom/android/server/wm/WindowAnimationSpec;-><init>(Landroid/view/animation/Animation;Landroid/graphics/Point;Landroid/graphics/Rect;ZIZF)V

    .line 60
    return-void
.end method

.method private static findAlmostThereFraction(Landroid/view/animation/Interpolator;)F
    .registers 5

    .line 189
    nop

    .line 190
    const/high16 v0, 0x3f000000  # 0.5f

    const/high16 v1, 0x3e800000  # 0.25f

    .line 191
    :goto_5
    const v2, 0x3c23d70a  # 0.01f

    cmpl-float v2, v1, v2

    if-ltz v2, :cond_1e

    .line 192
    invoke-interface {p0, v0}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v2

    const v3, 0x3f7d70a4  # 0.99f

    cmpg-float v2, v2, v3

    if-gez v2, :cond_19

    .line 193
    add-float/2addr v0, v1

    goto :goto_1a

    .line 195
    :cond_19
    sub-float/2addr v0, v1

    .line 197
    :goto_1a
    const/high16 v2, 0x40000000  # 2.0f

    div-float/2addr v1, v2

    goto :goto_5

    .line 199
    :cond_1e
    return v0
.end method

.method private static findTranslateAnimation(Landroid/view/animation/Animation;)Landroid/view/animation/TranslateAnimation;
    .registers 4

    .line 170
    instance-of v0, p0, Landroid/view/animation/TranslateAnimation;

    if-eqz v0, :cond_7

    .line 171
    check-cast p0, Landroid/view/animation/TranslateAnimation;

    return-object p0

    .line 172
    :cond_7
    instance-of v0, p0, Landroid/view/animation/AnimationSet;

    if-eqz v0, :cond_2c

    .line 173
    check-cast p0, Landroid/view/animation/AnimationSet;

    .line 174
    const/4 v0, 0x0

    :goto_e
    invoke-virtual {p0}, Landroid/view/animation/AnimationSet;->getAnimations()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2c

    .line 175
    invoke-virtual {p0}, Landroid/view/animation/AnimationSet;->getAnimations()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/animation/Animation;

    .line 176
    instance-of v2, v1, Landroid/view/animation/TranslateAnimation;

    if-eqz v2, :cond_29

    .line 177
    check-cast v1, Landroid/view/animation/TranslateAnimation;

    return-object v1

    .line 174
    :cond_29
    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    .line 181
    :cond_2c
    const/4 p0, 0x0

    return-object p0
.end method

.method static synthetic lambda$new$0()Lcom/android/server/wm/WindowAnimationSpec$TmpValues;
    .registers 2

    .line 48
    new-instance v0, Lcom/android/server/wm/WindowAnimationSpec$TmpValues;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/wm/WindowAnimationSpec$TmpValues;-><init>(Lcom/android/server/wm/WindowAnimationSpec$1;)V

    return-object v0
.end method


# virtual methods
.method public apply(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;J)V
    .registers 8

    .line 95
    iget-object v0, p0, Lcom/android/server/wm/WindowAnimationSpec;->mThreadLocalTmps:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/WindowAnimationSpec$TmpValues;

    .line 96
    iget-object v1, v0, Lcom/android/server/wm/WindowAnimationSpec$TmpValues;->transformation:Landroid/view/animation/Transformation;

    invoke-virtual {v1}, Landroid/view/animation/Transformation;->clear()V

    .line 97
    iget-object v1, p0, Lcom/android/server/wm/WindowAnimationSpec;->mAnimation:Landroid/view/animation/Animation;

    iget-object v2, v0, Lcom/android/server/wm/WindowAnimationSpec$TmpValues;->transformation:Landroid/view/animation/Transformation;

    invoke-virtual {v1, p3, p4, v2}, Landroid/view/animation/Animation;->getTransformation(JLandroid/view/animation/Transformation;)Z

    .line 98
    iget-object p3, v0, Lcom/android/server/wm/WindowAnimationSpec$TmpValues;->transformation:Landroid/view/animation/Transformation;

    invoke-virtual {p3}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object p3

    iget-object p4, p0, Lcom/android/server/wm/WindowAnimationSpec;->mPosition:Landroid/graphics/Point;

    iget p4, p4, Landroid/graphics/Point;->x:I

    int-to-float p4, p4

    iget-object v1, p0, Lcom/android/server/wm/WindowAnimationSpec;->mPosition:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    int-to-float v1, v1

    invoke-virtual {p3, p4, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 99
    iget-object p3, v0, Lcom/android/server/wm/WindowAnimationSpec$TmpValues;->transformation:Landroid/view/animation/Transformation;

    invoke-virtual {p3}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object p3

    iget-object p4, v0, Lcom/android/server/wm/WindowAnimationSpec$TmpValues;->floats:[F

    invoke-virtual {p1, p2, p3, p4}, Landroid/view/SurfaceControl$Transaction;->setMatrix(Landroid/view/SurfaceControl;Landroid/graphics/Matrix;[F)Landroid/view/SurfaceControl$Transaction;

    .line 100
    iget-object p3, v0, Lcom/android/server/wm/WindowAnimationSpec$TmpValues;->transformation:Landroid/view/animation/Transformation;

    invoke-virtual {p3}, Landroid/view/animation/Transformation;->getAlpha()F

    move-result p3

    invoke-virtual {p1, p2, p3}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    .line 102
    nop

    .line 103
    iget p3, p0, Lcom/android/server/wm/WindowAnimationSpec;->mStackClipMode:I

    const/4 p4, 0x1

    const/4 v1, 0x2

    if-ne p3, v1, :cond_56

    .line 104
    iget-object p3, v0, Lcom/android/server/wm/WindowAnimationSpec$TmpValues;->transformation:Landroid/view/animation/Transformation;

    invoke-virtual {p3}, Landroid/view/animation/Transformation;->hasClipRect()Z

    move-result p3

    if-eqz p3, :cond_54

    .line 105
    iget-object p3, v0, Lcom/android/server/wm/WindowAnimationSpec$TmpValues;->transformation:Landroid/view/animation/Transformation;

    invoke-virtual {p3}, Landroid/view/animation/Transformation;->getClipRect()Landroid/graphics/Rect;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;Landroid/graphics/Rect;)Landroid/view/SurfaceControl$Transaction;

    .line 106
    goto :goto_76

    .line 104
    :cond_54
    const/4 p4, 0x0

    goto :goto_76

    .line 109
    :cond_56
    iget-object p3, p0, Lcom/android/server/wm/WindowAnimationSpec;->mTmpRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/server/wm/WindowAnimationSpec;->mStackBounds:Landroid/graphics/Rect;

    invoke-virtual {p3, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 110
    iget-object p3, v0, Lcom/android/server/wm/WindowAnimationSpec$TmpValues;->transformation:Landroid/view/animation/Transformation;

    invoke-virtual {p3}, Landroid/view/animation/Transformation;->hasClipRect()Z

    move-result p3

    if-eqz p3, :cond_70

    .line 111
    iget-object p3, p0, Lcom/android/server/wm/WindowAnimationSpec;->mTmpRect:Landroid/graphics/Rect;

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimationSpec$TmpValues;->transformation:Landroid/view/animation/Transformation;

    invoke-virtual {v0}, Landroid/view/animation/Transformation;->getClipRect()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    .line 113
    :cond_70
    iget-object p3, p0, Lcom/android/server/wm/WindowAnimationSpec;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {p1, p2, p3}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;Landroid/graphics/Rect;)Landroid/view/SurfaceControl$Transaction;

    .line 114
    nop

    .line 119
    :goto_76
    if-eqz p4, :cond_8a

    iget-object p3, p0, Lcom/android/server/wm/WindowAnimationSpec;->mAnimation:Landroid/view/animation/Animation;

    invoke-virtual {p3}, Landroid/view/animation/Animation;->hasRoundedCorners()Z

    move-result p3

    if-eqz p3, :cond_8a

    iget p3, p0, Lcom/android/server/wm/WindowAnimationSpec;->mWindowCornerRadius:F

    const/4 p4, 0x0

    cmpl-float p4, p3, p4

    if-lez p4, :cond_8a

    .line 120
    invoke-virtual {p1, p2, p3}, Landroid/view/SurfaceControl$Transaction;->setCornerRadius(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    .line 122
    :cond_8a
    return-void
.end method

.method public calculateStatusBarTransitionStartTime()J
    .registers 7

    .line 126
    iget-object v0, p0, Lcom/android/server/wm/WindowAnimationSpec;->mAnimation:Landroid/view/animation/Animation;

    invoke-static {v0}, Lcom/android/server/wm/WindowAnimationSpec;->findTranslateAnimation(Landroid/view/animation/Animation;)Landroid/view/animation/TranslateAnimation;

    move-result-object v0

    .line 127
    if-eqz v0, :cond_25

    .line 132
    invoke-virtual {v0}, Landroid/view/animation/TranslateAnimation;->getInterpolator()Landroid/view/animation/Interpolator;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/wm/WindowAnimationSpec;->findAlmostThereFraction(Landroid/view/animation/Interpolator;)F

    move-result v1

    .line 133
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 134
    invoke-virtual {v0}, Landroid/view/animation/TranslateAnimation;->getStartOffset()J

    move-result-wide v4

    add-long/2addr v2, v4

    .line 135
    invoke-virtual {v0}, Landroid/view/animation/TranslateAnimation;->getDuration()J

    move-result-wide v4

    long-to-float v0, v4

    mul-float/2addr v0, v1

    float-to-long v0, v0

    add-long/2addr v2, v0

    const-wide/16 v0, 0x78

    sub-long/2addr v2, v0

    .line 133
    return-wide v2

    .line 138
    :cond_25
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public canSkipFirstFrame()Z
    .registers 2

    .line 144
    iget-boolean v0, p0, Lcom/android/server/wm/WindowAnimationSpec;->mCanSkipFirstFrame:Z

    return v0
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 3

    .line 154
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/android/server/wm/WindowAnimationSpec;->mAnimation:Landroid/view/animation/Animation;

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 155
    return-void
.end method

.method public getBackgroundColor()I
    .registers 2

    .line 85
    iget-object v0, p0, Lcom/android/server/wm/WindowAnimationSpec;->mAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->getBackgroundColor()I

    move-result v0

    return v0
.end method

.method public getDuration()J
    .registers 3

    .line 90
    iget-object v0, p0, Lcom/android/server/wm/WindowAnimationSpec;->mAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->computeDurationHint()J

    move-result-wide v0

    return-wide v0
.end method

.method public getShowWallpaper()Z
    .registers 2

    .line 80
    iget-object v0, p0, Lcom/android/server/wm/WindowAnimationSpec;->mAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->getShowWallpaper()Z

    move-result v0

    return v0
.end method

.method public needsEarlyWakeup()Z
    .registers 2

    .line 149
    iget-boolean v0, p0, Lcom/android/server/wm/WindowAnimationSpec;->mIsAppAnimation:Z

    return v0
.end method

.method public writeToProtoInner(Landroid/util/proto/ProtoOutputStream;)V
    .registers 7

    .line 159
    const-wide v0, 0x10b00000001L

    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    .line 160
    iget-object v2, p0, Lcom/android/server/wm/WindowAnimationSpec;->mAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    const-wide v3, 0x10900000001L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 161
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 162
    return-void
.end method
