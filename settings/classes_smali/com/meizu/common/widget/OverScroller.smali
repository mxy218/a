.class public Lcom/meizu/common/widget/OverScroller;
.super Ljava/lang/Object;
.source "OverScroller.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/common/widget/OverScroller$SplineOverScroller;
    }
.end annotation


# instance fields
.field private final mFlywheel:Z

.field private mInterpolator:Landroid/view/animation/Interpolator;

.field private mMode:I

.field private final mScrollerX:Lcom/meizu/common/widget/OverScroller$SplineOverScroller;

.field private final mScrollerY:Lcom/meizu/common/widget/OverScroller$SplineOverScroller;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    .line 53
    invoke-direct {p0, p1, v0}, Lcom/meizu/common/widget/OverScroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V
    .registers 4

    const/4 v0, 0x1

    .line 63
    invoke-direct {p0, p1, p2, v0}, Lcom/meizu/common/widget/OverScroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/animation/Interpolator;Z)V
    .registers 4

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    iput-object p2, p0, Lcom/meizu/common/widget/OverScroller;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 76
    iput-boolean p3, p0, Lcom/meizu/common/widget/OverScroller;->mFlywheel:Z

    .line 77
    new-instance p2, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;

    invoke-direct {p2, p1}, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/meizu/common/widget/OverScroller;->mScrollerX:Lcom/meizu/common/widget/OverScroller$SplineOverScroller;

    .line 78
    new-instance p2, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;

    invoke-direct {p2, p1}, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/meizu/common/widget/OverScroller;->mScrollerY:Lcom/meizu/common/widget/OverScroller$SplineOverScroller;

    return-void
.end method


# virtual methods
.method public abortAnimation()V
    .registers 2

    .line 515
    iget-object v0, p0, Lcom/meizu/common/widget/OverScroller;->mScrollerX:Lcom/meizu/common/widget/OverScroller$SplineOverScroller;

    invoke-virtual {v0}, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->finish()V

    .line 516
    iget-object p0, p0, Lcom/meizu/common/widget/OverScroller;->mScrollerY:Lcom/meizu/common/widget/OverScroller$SplineOverScroller;

    invoke-virtual {p0}, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->finish()V

    return-void
.end method

.method public computeScrollOffset()Z
    .registers 7

    .line 294
    invoke-virtual {p0}, Lcom/meizu/common/widget/OverScroller;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 p0, 0x0

    return p0

    .line 298
    :cond_8
    iget v0, p0, Lcom/meizu/common/widget/OverScroller;->mMode:I

    const/4 v1, 0x1

    if-eqz v0, :cond_4c

    if-eq v0, v1, :cond_11

    goto/16 :goto_80

    .line 323
    :cond_11
    iget-object v0, p0, Lcom/meizu/common/widget/OverScroller;->mScrollerX:Lcom/meizu/common/widget/OverScroller$SplineOverScroller;

    invoke-static {v0}, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->access$000(Lcom/meizu/common/widget/OverScroller$SplineOverScroller;)Z

    move-result v0

    if-nez v0, :cond_2e

    .line 324
    iget-object v0, p0, Lcom/meizu/common/widget/OverScroller;->mScrollerX:Lcom/meizu/common/widget/OverScroller$SplineOverScroller;

    invoke-virtual {v0}, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->update()Z

    move-result v0

    if-nez v0, :cond_2e

    .line 325
    iget-object v0, p0, Lcom/meizu/common/widget/OverScroller;->mScrollerX:Lcom/meizu/common/widget/OverScroller$SplineOverScroller;

    invoke-virtual {v0}, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->continueWhenFinished()Z

    move-result v0

    if-nez v0, :cond_2e

    .line 326
    iget-object v0, p0, Lcom/meizu/common/widget/OverScroller;->mScrollerX:Lcom/meizu/common/widget/OverScroller$SplineOverScroller;

    invoke-virtual {v0}, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->finish()V

    .line 331
    :cond_2e
    iget-object v0, p0, Lcom/meizu/common/widget/OverScroller;->mScrollerY:Lcom/meizu/common/widget/OverScroller$SplineOverScroller;

    invoke-static {v0}, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->access$000(Lcom/meizu/common/widget/OverScroller$SplineOverScroller;)Z

    move-result v0

    if-nez v0, :cond_80

    .line 332
    iget-object v0, p0, Lcom/meizu/common/widget/OverScroller;->mScrollerY:Lcom/meizu/common/widget/OverScroller$SplineOverScroller;

    invoke-virtual {v0}, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->update()Z

    move-result v0

    if-nez v0, :cond_80

    .line 333
    iget-object v0, p0, Lcom/meizu/common/widget/OverScroller;->mScrollerY:Lcom/meizu/common/widget/OverScroller$SplineOverScroller;

    invoke-virtual {v0}, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->continueWhenFinished()Z

    move-result v0

    if-nez v0, :cond_80

    .line 334
    iget-object p0, p0, Lcom/meizu/common/widget/OverScroller;->mScrollerY:Lcom/meizu/common/widget/OverScroller$SplineOverScroller;

    invoke-virtual {p0}, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->finish()V

    goto :goto_80

    .line 300
    :cond_4c
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v2

    .line 303
    iget-object v0, p0, Lcom/meizu/common/widget/OverScroller;->mScrollerX:Lcom/meizu/common/widget/OverScroller$SplineOverScroller;

    invoke-static {v0}, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->access$600(Lcom/meizu/common/widget/OverScroller$SplineOverScroller;)J

    move-result-wide v4

    sub-long/2addr v2, v4

    .line 305
    iget-object v0, p0, Lcom/meizu/common/widget/OverScroller;->mScrollerX:Lcom/meizu/common/widget/OverScroller$SplineOverScroller;

    invoke-static {v0}, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->access$500(Lcom/meizu/common/widget/OverScroller$SplineOverScroller;)I

    move-result v0

    int-to-long v4, v0

    cmp-long v4, v2, v4

    if-gez v4, :cond_7d

    long-to-float v2, v2

    int-to-float v0, v0

    div-float/2addr v2, v0

    .line 309
    iget-object v0, p0, Lcom/meizu/common/widget/OverScroller;->mInterpolator:Landroid/view/animation/Interpolator;

    if-nez v0, :cond_6e

    .line 310
    invoke-static {v2}, Lcom/meizu/common/widget/Scroller;->viscousFluid(F)F

    move-result v0

    goto :goto_72

    .line 312
    :cond_6e
    invoke-interface {v0, v2}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v0

    .line 315
    :goto_72
    iget-object v2, p0, Lcom/meizu/common/widget/OverScroller;->mScrollerX:Lcom/meizu/common/widget/OverScroller$SplineOverScroller;

    invoke-virtual {v2, v0}, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->updateScroll(F)V

    .line 316
    iget-object p0, p0, Lcom/meizu/common/widget/OverScroller;->mScrollerY:Lcom/meizu/common/widget/OverScroller$SplineOverScroller;

    invoke-virtual {p0, v0}, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->updateScroll(F)V

    goto :goto_80

    .line 318
    :cond_7d
    invoke-virtual {p0}, Lcom/meizu/common/widget/OverScroller;->abortAnimation()V

    :cond_80
    :goto_80
    return v1
.end method

.method public final forceFinished(Z)V
    .registers 3

    .line 151
    iget-object v0, p0, Lcom/meizu/common/widget/OverScroller;->mScrollerX:Lcom/meizu/common/widget/OverScroller$SplineOverScroller;

    iget-object p0, p0, Lcom/meizu/common/widget/OverScroller;->mScrollerY:Lcom/meizu/common/widget/OverScroller$SplineOverScroller;

    invoke-static {p0, p1}, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->access$002(Lcom/meizu/common/widget/OverScroller$SplineOverScroller;Z)Z

    invoke-static {v0, p1}, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->access$002(Lcom/meizu/common/widget/OverScroller$SplineOverScroller;Z)Z

    return-void
.end method

.method public final getCurrX()I
    .registers 1

    .line 160
    iget-object p0, p0, Lcom/meizu/common/widget/OverScroller;->mScrollerX:Lcom/meizu/common/widget/OverScroller$SplineOverScroller;

    invoke-static {p0}, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->access$100(Lcom/meizu/common/widget/OverScroller$SplineOverScroller;)I

    move-result p0

    return p0
.end method

.method public final isFinished()Z
    .registers 2

    .line 139
    iget-object v0, p0, Lcom/meizu/common/widget/OverScroller;->mScrollerX:Lcom/meizu/common/widget/OverScroller$SplineOverScroller;

    invoke-static {v0}, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->access$000(Lcom/meizu/common/widget/OverScroller$SplineOverScroller;)Z

    move-result v0

    if-eqz v0, :cond_12

    iget-object p0, p0, Lcom/meizu/common/widget/OverScroller;->mScrollerY:Lcom/meizu/common/widget/OverScroller$SplineOverScroller;

    invoke-static {p0}, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->access$000(Lcom/meizu/common/widget/OverScroller$SplineOverScroller;)Z

    move-result p0

    if-eqz p0, :cond_12

    const/4 p0, 0x1

    goto :goto_13

    :cond_12
    const/4 p0, 0x0

    :goto_13
    return p0
.end method

.method public setEnableMZOverScroll(ZZ)V
    .registers 4

    .line 548
    iget-object v0, p0, Lcom/meizu/common/widget/OverScroller;->mScrollerX:Lcom/meizu/common/widget/OverScroller$SplineOverScroller;

    invoke-virtual {v0, p1, p2}, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->setEnableMZOverScroll(ZZ)V

    .line 549
    iget-object p0, p0, Lcom/meizu/common/widget/OverScroller;->mScrollerY:Lcom/meizu/common/widget/OverScroller$SplineOverScroller;

    invoke-virtual {p0, p1, p2}, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->setEnableMZOverScroll(ZZ)V

    return-void
.end method

.method setInterpolator(Landroid/view/animation/Interpolator;)V
    .registers 2

    .line 117
    iput-object p1, p0, Lcom/meizu/common/widget/OverScroller;->mInterpolator:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public springBack(IIIIII)Z
    .registers 9

    const/4 v0, 0x1

    .line 395
    iput v0, p0, Lcom/meizu/common/widget/OverScroller;->mMode:I

    .line 398
    iget-object v1, p0, Lcom/meizu/common/widget/OverScroller;->mScrollerX:Lcom/meizu/common/widget/OverScroller$SplineOverScroller;

    invoke-virtual {v1, p1, p3, p4}, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->springback(III)Z

    move-result p1

    .line 399
    iget-object p0, p0, Lcom/meizu/common/widget/OverScroller;->mScrollerY:Lcom/meizu/common/widget/OverScroller$SplineOverScroller;

    invoke-virtual {p0, p2, p5, p6}, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->springback(III)Z

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

.method public startScroll(IIIII)V
    .registers 7

    const/4 v0, 0x0

    .line 377
    iput v0, p0, Lcom/meizu/common/widget/OverScroller;->mMode:I

    .line 378
    iget-object v0, p0, Lcom/meizu/common/widget/OverScroller;->mScrollerX:Lcom/meizu/common/widget/OverScroller$SplineOverScroller;

    invoke-virtual {v0, p1, p3, p5}, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->startScroll(III)V

    .line 379
    iget-object p0, p0, Lcom/meizu/common/widget/OverScroller;->mScrollerY:Lcom/meizu/common/widget/OverScroller$SplineOverScroller;

    invoke-virtual {p0, p2, p4, p5}, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->startScroll(III)V

    return-void
.end method
