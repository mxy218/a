.class public Lflyme/support/v7/util/OverScroller;
.super Ljava/lang/Object;
.source "OverScroller.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lflyme/support/v7/util/OverScroller$ViscousFluidInterpolator;,
        Lflyme/support/v7/util/OverScroller$SplineOverScroller;
    }
.end annotation


# instance fields
.field private final mFlywheel:Z

.field private mInterpolator:Landroid/view/animation/Interpolator;

.field private mMode:I

.field private final mScrollerX:Lflyme/support/v7/util/OverScroller$SplineOverScroller;

.field private final mScrollerY:Lflyme/support/v7/util/OverScroller$SplineOverScroller;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    .line 51
    invoke-direct {p0, p1, v0}, Lflyme/support/v7/util/OverScroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V
    .registers 4

    const/4 v0, 0x1

    .line 61
    invoke-direct {p0, p1, p2, v0}, Lflyme/support/v7/util/OverScroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/animation/Interpolator;Z)V
    .registers 4

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p2, :cond_d

    .line 74
    new-instance p2, Lflyme/support/v7/util/OverScroller$ViscousFluidInterpolator;

    invoke-direct {p2}, Lflyme/support/v7/util/OverScroller$ViscousFluidInterpolator;-><init>()V

    iput-object p2, p0, Lflyme/support/v7/util/OverScroller;->mInterpolator:Landroid/view/animation/Interpolator;

    goto :goto_f

    .line 76
    :cond_d
    iput-object p2, p0, Lflyme/support/v7/util/OverScroller;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 78
    :goto_f
    iput-boolean p3, p0, Lflyme/support/v7/util/OverScroller;->mFlywheel:Z

    .line 79
    new-instance p2, Lflyme/support/v7/util/OverScroller$SplineOverScroller;

    invoke-direct {p2, p1}, Lflyme/support/v7/util/OverScroller$SplineOverScroller;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lflyme/support/v7/util/OverScroller;->mScrollerX:Lflyme/support/v7/util/OverScroller$SplineOverScroller;

    .line 80
    new-instance p2, Lflyme/support/v7/util/OverScroller$SplineOverScroller;

    invoke-direct {p2, p1}, Lflyme/support/v7/util/OverScroller$SplineOverScroller;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lflyme/support/v7/util/OverScroller;->mScrollerY:Lflyme/support/v7/util/OverScroller$SplineOverScroller;

    return-void
.end method


# virtual methods
.method public abortAnimation()V
    .registers 2

    .line 508
    iget-object v0, p0, Lflyme/support/v7/util/OverScroller;->mScrollerX:Lflyme/support/v7/util/OverScroller$SplineOverScroller;

    invoke-virtual {v0}, Lflyme/support/v7/util/OverScroller$SplineOverScroller;->finish()V

    .line 509
    iget-object p0, p0, Lflyme/support/v7/util/OverScroller;->mScrollerY:Lflyme/support/v7/util/OverScroller$SplineOverScroller;

    invoke-virtual {p0}, Lflyme/support/v7/util/OverScroller$SplineOverScroller;->finish()V

    return-void
.end method

.method public computeScrollOffset()Z
    .registers 7

    .line 294
    invoke-virtual {p0}, Lflyme/support/v7/util/OverScroller;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 p0, 0x0

    return p0

    .line 298
    :cond_8
    iget v0, p0, Lflyme/support/v7/util/OverScroller;->mMode:I

    const/4 v1, 0x1

    if-eqz v0, :cond_4b

    if-eq v0, v1, :cond_10

    goto :goto_78

    .line 316
    :cond_10
    iget-object v0, p0, Lflyme/support/v7/util/OverScroller;->mScrollerX:Lflyme/support/v7/util/OverScroller$SplineOverScroller;

    invoke-static {v0}, Lflyme/support/v7/util/OverScroller$SplineOverScroller;->access$000(Lflyme/support/v7/util/OverScroller$SplineOverScroller;)Z

    move-result v0

    if-nez v0, :cond_2d

    .line 317
    iget-object v0, p0, Lflyme/support/v7/util/OverScroller;->mScrollerX:Lflyme/support/v7/util/OverScroller$SplineOverScroller;

    invoke-virtual {v0}, Lflyme/support/v7/util/OverScroller$SplineOverScroller;->update()Z

    move-result v0

    if-nez v0, :cond_2d

    .line 318
    iget-object v0, p0, Lflyme/support/v7/util/OverScroller;->mScrollerX:Lflyme/support/v7/util/OverScroller$SplineOverScroller;

    invoke-virtual {v0}, Lflyme/support/v7/util/OverScroller$SplineOverScroller;->continueWhenFinished()Z

    move-result v0

    if-nez v0, :cond_2d

    .line 319
    iget-object v0, p0, Lflyme/support/v7/util/OverScroller;->mScrollerX:Lflyme/support/v7/util/OverScroller$SplineOverScroller;

    invoke-virtual {v0}, Lflyme/support/v7/util/OverScroller$SplineOverScroller;->finish()V

    .line 324
    :cond_2d
    iget-object v0, p0, Lflyme/support/v7/util/OverScroller;->mScrollerY:Lflyme/support/v7/util/OverScroller$SplineOverScroller;

    invoke-static {v0}, Lflyme/support/v7/util/OverScroller$SplineOverScroller;->access$000(Lflyme/support/v7/util/OverScroller$SplineOverScroller;)Z

    move-result v0

    if-nez v0, :cond_78

    .line 325
    iget-object v0, p0, Lflyme/support/v7/util/OverScroller;->mScrollerY:Lflyme/support/v7/util/OverScroller$SplineOverScroller;

    invoke-virtual {v0}, Lflyme/support/v7/util/OverScroller$SplineOverScroller;->update()Z

    move-result v0

    if-nez v0, :cond_78

    .line 326
    iget-object v0, p0, Lflyme/support/v7/util/OverScroller;->mScrollerY:Lflyme/support/v7/util/OverScroller$SplineOverScroller;

    invoke-virtual {v0}, Lflyme/support/v7/util/OverScroller$SplineOverScroller;->continueWhenFinished()Z

    move-result v0

    if-nez v0, :cond_78

    .line 327
    iget-object p0, p0, Lflyme/support/v7/util/OverScroller;->mScrollerY:Lflyme/support/v7/util/OverScroller$SplineOverScroller;

    invoke-virtual {p0}, Lflyme/support/v7/util/OverScroller$SplineOverScroller;->finish()V

    goto :goto_78

    .line 300
    :cond_4b
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v2

    .line 303
    iget-object v0, p0, Lflyme/support/v7/util/OverScroller;->mScrollerX:Lflyme/support/v7/util/OverScroller$SplineOverScroller;

    invoke-static {v0}, Lflyme/support/v7/util/OverScroller$SplineOverScroller;->access$600(Lflyme/support/v7/util/OverScroller$SplineOverScroller;)J

    move-result-wide v4

    sub-long/2addr v2, v4

    .line 305
    iget-object v0, p0, Lflyme/support/v7/util/OverScroller;->mScrollerX:Lflyme/support/v7/util/OverScroller$SplineOverScroller;

    invoke-static {v0}, Lflyme/support/v7/util/OverScroller$SplineOverScroller;->access$500(Lflyme/support/v7/util/OverScroller$SplineOverScroller;)I

    move-result v0

    int-to-long v4, v0

    cmp-long v4, v2, v4

    if-gez v4, :cond_75

    .line 307
    iget-object v4, p0, Lflyme/support/v7/util/OverScroller;->mInterpolator:Landroid/view/animation/Interpolator;

    long-to-float v2, v2

    int-to-float v0, v0

    div-float/2addr v2, v0

    invoke-interface {v4, v2}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v0

    .line 308
    iget-object v2, p0, Lflyme/support/v7/util/OverScroller;->mScrollerX:Lflyme/support/v7/util/OverScroller$SplineOverScroller;

    invoke-virtual {v2, v0}, Lflyme/support/v7/util/OverScroller$SplineOverScroller;->updateScroll(F)V

    .line 309
    iget-object p0, p0, Lflyme/support/v7/util/OverScroller;->mScrollerY:Lflyme/support/v7/util/OverScroller$SplineOverScroller;

    invoke-virtual {p0, v0}, Lflyme/support/v7/util/OverScroller$SplineOverScroller;->updateScroll(F)V

    goto :goto_78

    .line 311
    :cond_75
    invoke-virtual {p0}, Lflyme/support/v7/util/OverScroller;->abortAnimation()V

    :cond_78
    :goto_78
    return v1
.end method

.method public fling(IIIIIIII)V
    .registers 20

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    .line 398
    invoke-virtual/range {v0 .. v10}, Lflyme/support/v7/util/OverScroller;->fling(IIIIIIIIII)V

    return-void
.end method

.method public fling(IIIIIIIIII)V
    .registers 23

    move-object v0, p0

    .line 431
    iget-boolean v1, v0, Lflyme/support/v7/util/OverScroller;->mFlywheel:Z

    if-eqz v1, :cond_3a

    invoke-virtual {p0}, Lflyme/support/v7/util/OverScroller;->isFinished()Z

    move-result v1

    if-nez v1, :cond_3a

    .line 432
    iget-object v1, v0, Lflyme/support/v7/util/OverScroller;->mScrollerX:Lflyme/support/v7/util/OverScroller$SplineOverScroller;

    invoke-static {v1}, Lflyme/support/v7/util/OverScroller$SplineOverScroller;->access$200(Lflyme/support/v7/util/OverScroller$SplineOverScroller;)F

    move-result v1

    .line 433
    iget-object v2, v0, Lflyme/support/v7/util/OverScroller;->mScrollerY:Lflyme/support/v7/util/OverScroller$SplineOverScroller;

    invoke-static {v2}, Lflyme/support/v7/util/OverScroller$SplineOverScroller;->access$200(Lflyme/support/v7/util/OverScroller$SplineOverScroller;)F

    move-result v2

    move v3, p3

    int-to-float v4, v3

    .line 434
    invoke-static {v4}, Ljava/lang/Math;->signum(F)F

    move-result v5

    invoke-static {v1}, Ljava/lang/Math;->signum(F)F

    move-result v6

    cmpl-float v5, v5, v6

    if-nez v5, :cond_3b

    move/from16 v5, p4

    int-to-float v6, v5

    .line 435
    invoke-static {v6}, Ljava/lang/Math;->signum(F)F

    move-result v7

    invoke-static {v2}, Ljava/lang/Math;->signum(F)F

    move-result v8

    cmpl-float v7, v7, v8

    if-nez v7, :cond_3d

    add-float/2addr v4, v1

    float-to-int v1, v4

    add-float/2addr v6, v2

    float-to-int v2, v6

    move v5, v1

    goto :goto_3f

    :cond_3a
    move v3, p3

    :cond_3b
    move/from16 v5, p4

    :cond_3d
    move v2, v5

    move v5, v3

    :goto_3f
    const/4 v1, 0x1

    .line 441
    iput v1, v0, Lflyme/support/v7/util/OverScroller;->mMode:I

    .line 442
    iget-object v3, v0, Lflyme/support/v7/util/OverScroller;->mScrollerX:Lflyme/support/v7/util/OverScroller$SplineOverScroller;

    move v4, p1

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p9

    invoke-virtual/range {v3 .. v8}, Lflyme/support/v7/util/OverScroller$SplineOverScroller;->fling(IIIII)V

    .line 443
    iget-object v6, v0, Lflyme/support/v7/util/OverScroller;->mScrollerY:Lflyme/support/v7/util/OverScroller$SplineOverScroller;

    move v7, p2

    move v8, v2

    move/from16 v9, p7

    move/from16 v10, p8

    move/from16 v11, p10

    invoke-virtual/range {v6 .. v11}, Lflyme/support/v7/util/OverScroller$SplineOverScroller;->fling(IIIII)V

    return-void
.end method

.method public getCurrVelocity()F
    .registers 5

    .line 180
    iget-object v0, p0, Lflyme/support/v7/util/OverScroller;->mScrollerX:Lflyme/support/v7/util/OverScroller$SplineOverScroller;

    invoke-static {v0}, Lflyme/support/v7/util/OverScroller$SplineOverScroller;->access$200(Lflyme/support/v7/util/OverScroller$SplineOverScroller;)F

    move-result v0

    float-to-double v0, v0

    iget-object p0, p0, Lflyme/support/v7/util/OverScroller;->mScrollerY:Lflyme/support/v7/util/OverScroller$SplineOverScroller;

    invoke-static {p0}, Lflyme/support/v7/util/OverScroller$SplineOverScroller;->access$200(Lflyme/support/v7/util/OverScroller$SplineOverScroller;)F

    move-result p0

    float-to-double v2, p0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v0

    double-to-float p0, v0

    return p0
.end method

.method public final getCurrX()I
    .registers 1

    .line 162
    iget-object p0, p0, Lflyme/support/v7/util/OverScroller;->mScrollerX:Lflyme/support/v7/util/OverScroller$SplineOverScroller;

    invoke-static {p0}, Lflyme/support/v7/util/OverScroller$SplineOverScroller;->access$100(Lflyme/support/v7/util/OverScroller$SplineOverScroller;)I

    move-result p0

    return p0
.end method

.method public final getCurrY()I
    .registers 1

    .line 171
    iget-object p0, p0, Lflyme/support/v7/util/OverScroller;->mScrollerY:Lflyme/support/v7/util/OverScroller$SplineOverScroller;

    invoke-static {p0}, Lflyme/support/v7/util/OverScroller$SplineOverScroller;->access$100(Lflyme/support/v7/util/OverScroller$SplineOverScroller;)I

    move-result p0

    return p0
.end method

.method public final isFinished()Z
    .registers 2

    .line 141
    iget-object v0, p0, Lflyme/support/v7/util/OverScroller;->mScrollerX:Lflyme/support/v7/util/OverScroller$SplineOverScroller;

    invoke-static {v0}, Lflyme/support/v7/util/OverScroller$SplineOverScroller;->access$000(Lflyme/support/v7/util/OverScroller$SplineOverScroller;)Z

    move-result v0

    if-eqz v0, :cond_12

    iget-object p0, p0, Lflyme/support/v7/util/OverScroller;->mScrollerY:Lflyme/support/v7/util/OverScroller$SplineOverScroller;

    invoke-static {p0}, Lflyme/support/v7/util/OverScroller$SplineOverScroller;->access$000(Lflyme/support/v7/util/OverScroller$SplineOverScroller;)Z

    move-result p0

    if-eqz p0, :cond_12

    const/4 p0, 0x1

    goto :goto_13

    :cond_12
    const/4 p0, 0x0

    :goto_13
    return p0
.end method

.method public springBack(IIIIII)Z
    .registers 9

    const/4 v0, 0x1

    .line 388
    iput v0, p0, Lflyme/support/v7/util/OverScroller;->mMode:I

    .line 391
    iget-object v1, p0, Lflyme/support/v7/util/OverScroller;->mScrollerX:Lflyme/support/v7/util/OverScroller$SplineOverScroller;

    invoke-virtual {v1, p1, p3, p4}, Lflyme/support/v7/util/OverScroller$SplineOverScroller;->springback(III)Z

    move-result p1

    .line 392
    iget-object p0, p0, Lflyme/support/v7/util/OverScroller;->mScrollerY:Lflyme/support/v7/util/OverScroller$SplineOverScroller;

    invoke-virtual {p0, p2, p5, p6}, Lflyme/support/v7/util/OverScroller$SplineOverScroller;->springback(III)Z

    move-result p0

    if-nez p1, :cond_15

    if-eqz p0, :cond_14

    goto :goto_15

    :cond_14
    const/4 v0, 0x0

    :cond_15
    :goto_15
    return v0
.end method
