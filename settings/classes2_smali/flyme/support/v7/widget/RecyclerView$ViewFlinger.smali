.class Lflyme/support/v7/widget/RecyclerView$ViewFlinger;
.super Ljava/lang/Object;
.source "RecyclerView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lflyme/support/v7/widget/RecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ViewFlinger"
.end annotation


# instance fields
.field private mEatRunOnAnimationRequest:Z

.field mInterpolator:Landroid/view/animation/Interpolator;

.field private mLastFlingX:I

.field private mLastFlingY:I

.field private mReSchedulePostAnimationCallback:Z

.field private mScroller:Landroidx/core/widget/ScrollerCompat;

.field final synthetic this$0:Lflyme/support/v7/widget/RecyclerView;


# direct methods
.method public constructor <init>(Lflyme/support/v7/widget/RecyclerView;)V
    .registers 3

    .line 4783
    iput-object p1, p0, Lflyme/support/v7/widget/RecyclerView$ViewFlinger;->this$0:Lflyme/support/v7/widget/RecyclerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4774
    sget-object v0, Lflyme/support/v7/widget/RecyclerView;->sQuinticInterpolator:Landroid/view/animation/Interpolator;

    iput-object v0, p0, Lflyme/support/v7/widget/RecyclerView$ViewFlinger;->mInterpolator:Landroid/view/animation/Interpolator;

    const/4 v0, 0x0

    .line 4778
    iput-boolean v0, p0, Lflyme/support/v7/widget/RecyclerView$ViewFlinger;->mEatRunOnAnimationRequest:Z

    .line 4781
    iput-boolean v0, p0, Lflyme/support/v7/widget/RecyclerView$ViewFlinger;->mReSchedulePostAnimationCallback:Z

    .line 4784
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    sget-object v0, Lflyme/support/v7/widget/RecyclerView;->sQuinticInterpolator:Landroid/view/animation/Interpolator;

    invoke-static {p1, v0}, Landroidx/core/widget/ScrollerCompat;->create(Landroid/content/Context;Landroid/view/animation/Interpolator;)Landroidx/core/widget/ScrollerCompat;

    move-result-object p1

    iput-object p1, p0, Lflyme/support/v7/widget/RecyclerView$ViewFlinger;->mScroller:Landroidx/core/widget/ScrollerCompat;

    return-void
.end method

.method private computeScrollDuration(IIII)I
    .registers 9

    .line 4950
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 4951
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result v1

    if-le v0, v1, :cond_c

    const/4 v2, 0x1

    goto :goto_d

    :cond_c
    const/4 v2, 0x0

    :goto_d
    mul-int/2addr p3, p3

    mul-int/2addr p4, p4

    add-int/2addr p3, p4

    int-to-double p3, p3

    .line 4953
    invoke-static {p3, p4}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p3

    double-to-int p3, p3

    mul-int/2addr p1, p1

    mul-int/2addr p2, p2

    add-int/2addr p1, p2

    int-to-double p1, p1

    .line 4954
    invoke-static {p1, p2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p1

    double-to-int p1, p1

    .line 4955
    iget-object p2, p0, Lflyme/support/v7/widget/RecyclerView$ViewFlinger;->this$0:Lflyme/support/v7/widget/RecyclerView;

    if-eqz v2, :cond_28

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getWidth()I

    move-result p2

    goto :goto_2c

    :cond_28
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getHeight()I

    move-result p2

    .line 4956
    :goto_2c
    div-int/lit8 p4, p2, 0x2

    int-to-float p1, p1

    const/high16 v3, 0x3f800000  # 1.0f

    mul-float/2addr p1, v3

    int-to-float p2, p2

    div-float/2addr p1, p2

    .line 4957
    invoke-static {v3, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    int-to-float p4, p4

    .line 4959
    invoke-direct {p0, p1}, Lflyme/support/v7/widget/RecyclerView$ViewFlinger;->distanceInfluenceForSnapDuration(F)F

    move-result p0

    mul-float/2addr p0, p4

    add-float/2addr p4, p0

    if-lez p3, :cond_51

    const/high16 p0, 0x447a0000  # 1000.0f

    int-to-float p1, p3

    div-float/2addr p4, p1

    .line 4963
    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    move-result p1

    mul-float/2addr p1, p0

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p0

    mul-int/lit8 p0, p0, 0x4

    goto :goto_5c

    :cond_51
    if-eqz v2, :cond_54

    goto :goto_55

    :cond_54
    move v0, v1

    :goto_55
    int-to-float p0, v0

    div-float/2addr p0, p2

    add-float/2addr p0, v3

    const/high16 p1, 0x43960000  # 300.0f

    mul-float/2addr p0, p1

    float-to-int p0, p0

    :goto_5c
    const/16 p1, 0x7d0

    .line 4968
    invoke-static {p0, p1}, Ljava/lang/Math;->min(II)I

    move-result p0

    return p0
.end method

.method private disableRunOnAnimationRequests()V
    .registers 2

    const/4 v0, 0x0

    .line 4907
    iput-boolean v0, p0, Lflyme/support/v7/widget/RecyclerView$ViewFlinger;->mReSchedulePostAnimationCallback:Z

    const/4 v0, 0x1

    .line 4908
    iput-boolean v0, p0, Lflyme/support/v7/widget/RecyclerView$ViewFlinger;->mEatRunOnAnimationRequest:Z

    return-void
.end method

.method private distanceInfluenceForSnapDuration(F)F
    .registers 4

    const/high16 p0, 0x3f000000  # 0.5f

    sub-float/2addr p1, p0

    float-to-double p0, p1

    const-wide v0, 0x3fde28c7460698c7L  # 0.4712389167638204

    mul-double/2addr p0, v0

    double-to-float p0, p0

    float-to-double p0, p0

    .line 4946
    invoke-static {p0, p1}, Ljava/lang/Math;->sin(D)D

    move-result-wide p0

    double-to-float p0, p0

    return p0
.end method

.method private enableRunOnAnimationRequests()V
    .registers 2

    const/4 v0, 0x0

    .line 4912
    iput-boolean v0, p0, Lflyme/support/v7/widget/RecyclerView$ViewFlinger;->mEatRunOnAnimationRequest:Z

    .line 4913
    iget-boolean v0, p0, Lflyme/support/v7/widget/RecyclerView$ViewFlinger;->mReSchedulePostAnimationCallback:Z

    if-eqz v0, :cond_a

    .line 4914
    invoke-virtual {p0}, Lflyme/support/v7/widget/RecyclerView$ViewFlinger;->postOnAnimation()V

    :cond_a
    return-void
.end method


# virtual methods
.method public fling(II)V
    .registers 13

    .line 4928
    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView$ViewFlinger;->this$0:Lflyme/support/v7/widget/RecyclerView;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lflyme/support/v7/widget/RecyclerView;->setScrollState(I)V

    const/4 v0, 0x0

    .line 4929
    iput v0, p0, Lflyme/support/v7/widget/RecyclerView$ViewFlinger;->mLastFlingY:I

    iput v0, p0, Lflyme/support/v7/widget/RecyclerView$ViewFlinger;->mLastFlingX:I

    .line 4930
    iget-object v1, p0, Lflyme/support/v7/widget/RecyclerView$ViewFlinger;->mScroller:Landroidx/core/widget/ScrollerCompat;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/high16 v6, -0x80000000

    const v7, 0x7fffffff

    const/high16 v8, -0x80000000

    const v9, 0x7fffffff

    move v4, p1

    move v5, p2

    invoke-virtual/range {v1 .. v9}, Landroidx/core/widget/ScrollerCompat;->fling(IIIIIIII)V

    .line 4932
    invoke-virtual {p0}, Lflyme/support/v7/widget/RecyclerView$ViewFlinger;->postOnAnimation()V

    return-void
.end method

.method postOnAnimation()V
    .registers 2

    .line 4919
    iget-boolean v0, p0, Lflyme/support/v7/widget/RecyclerView$ViewFlinger;->mEatRunOnAnimationRequest:Z

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    .line 4920
    iput-boolean v0, p0, Lflyme/support/v7/widget/RecyclerView$ViewFlinger;->mReSchedulePostAnimationCallback:Z

    goto :goto_12

    .line 4922
    :cond_8
    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView$ViewFlinger;->this$0:Lflyme/support/v7/widget/RecyclerView;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 4923
    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView$ViewFlinger;->this$0:Lflyme/support/v7/widget/RecyclerView;

    invoke-static {v0, p0}, Landroidx/core/view/ViewCompat;->postOnAnimation(Landroid/view/View;Ljava/lang/Runnable;)V

    :goto_12
    return-void
.end method

.method public run()V
    .registers 18

    move-object/from16 v0, p0

    .line 4789
    iget-object v1, v0, Lflyme/support/v7/widget/RecyclerView$ViewFlinger;->this$0:Lflyme/support/v7/widget/RecyclerView;

    iget-object v1, v1, Lflyme/support/v7/widget/RecyclerView;->mLayout:Lflyme/support/v7/widget/RecyclerView$LayoutManager;

    if-nez v1, :cond_c

    .line 4790
    invoke-virtual/range {p0 .. p0}, Lflyme/support/v7/widget/RecyclerView$ViewFlinger;->stop()V

    return-void

    .line 4793
    :cond_c
    invoke-direct/range {p0 .. p0}, Lflyme/support/v7/widget/RecyclerView$ViewFlinger;->disableRunOnAnimationRequests()V

    .line 4794
    iget-object v1, v0, Lflyme/support/v7/widget/RecyclerView$ViewFlinger;->this$0:Lflyme/support/v7/widget/RecyclerView;

    invoke-virtual {v1}, Lflyme/support/v7/widget/RecyclerView;->consumePendingUpdateOperations()V

    .line 4797
    iget-object v1, v0, Lflyme/support/v7/widget/RecyclerView$ViewFlinger;->mScroller:Landroidx/core/widget/ScrollerCompat;

    .line 4798
    iget-object v2, v0, Lflyme/support/v7/widget/RecyclerView$ViewFlinger;->this$0:Lflyme/support/v7/widget/RecyclerView;

    iget-object v2, v2, Lflyme/support/v7/widget/RecyclerView;->mLayout:Lflyme/support/v7/widget/RecyclerView$LayoutManager;

    iget-object v2, v2, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->mSmoothScroller:Lflyme/support/v7/widget/RecyclerView$SmoothScroller;

    .line 4799
    invoke-virtual {v1}, Landroidx/core/widget/ScrollerCompat;->computeScrollOffset()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_18a

    .line 4800
    invoke-virtual {v1}, Landroidx/core/widget/ScrollerCompat;->getCurrX()I

    move-result v3

    .line 4801
    invoke-virtual {v1}, Landroidx/core/widget/ScrollerCompat;->getCurrY()I

    move-result v5

    .line 4802
    iget v6, v0, Lflyme/support/v7/widget/RecyclerView$ViewFlinger;->mLastFlingX:I

    sub-int v6, v3, v6

    .line 4803
    iget v7, v0, Lflyme/support/v7/widget/RecyclerView$ViewFlinger;->mLastFlingY:I

    sub-int v7, v5, v7

    .line 4806
    iput v3, v0, Lflyme/support/v7/widget/RecyclerView$ViewFlinger;->mLastFlingX:I

    .line 4807
    iput v5, v0, Lflyme/support/v7/widget/RecyclerView$ViewFlinger;->mLastFlingY:I

    .line 4809
    iget-object v8, v0, Lflyme/support/v7/widget/RecyclerView$ViewFlinger;->this$0:Lflyme/support/v7/widget/RecyclerView;

    iget-object v9, v8, Lflyme/support/v7/widget/RecyclerView;->mAdapter:Lflyme/support/v7/widget/RecyclerView$Adapter;

    const/4 v10, 0x1

    if-eqz v9, :cond_b9

    .line 4810
    invoke-virtual {v8}, Lflyme/support/v7/widget/RecyclerView;->eatRequestLayout()V

    .line 4811
    iget-object v8, v0, Lflyme/support/v7/widget/RecyclerView$ViewFlinger;->this$0:Lflyme/support/v7/widget/RecyclerView;

    invoke-virtual {v8}, Lflyme/support/v7/widget/RecyclerView;->onEnterLayoutOrScroll()V

    const-string v8, "RV Scroll"

    .line 4812
    invoke-static {v8}, Landroidx/core/os/TraceCompat;->beginSection(Ljava/lang/String;)V

    if-eqz v6, :cond_5c

    .line 4814
    iget-object v8, v0, Lflyme/support/v7/widget/RecyclerView$ViewFlinger;->this$0:Lflyme/support/v7/widget/RecyclerView;

    iget-object v9, v8, Lflyme/support/v7/widget/RecyclerView;->mLayout:Lflyme/support/v7/widget/RecyclerView$LayoutManager;

    iget-object v11, v8, Lflyme/support/v7/widget/RecyclerView;->mRecycler:Lflyme/support/v7/widget/RecyclerView$Recycler;

    iget-object v8, v8, Lflyme/support/v7/widget/RecyclerView;->mState:Lflyme/support/v7/widget/RecyclerView$State;

    invoke-virtual {v9, v6, v11, v8}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->scrollHorizontallyBy(ILflyme/support/v7/widget/RecyclerView$Recycler;Lflyme/support/v7/widget/RecyclerView$State;)I

    move-result v8

    sub-int v9, v6, v8

    goto :goto_5e

    :cond_5c
    move v8, v4

    move v9, v8

    :goto_5e
    if-eqz v7, :cond_6f

    .line 4818
    iget-object v11, v0, Lflyme/support/v7/widget/RecyclerView$ViewFlinger;->this$0:Lflyme/support/v7/widget/RecyclerView;

    iget-object v12, v11, Lflyme/support/v7/widget/RecyclerView;->mLayout:Lflyme/support/v7/widget/RecyclerView$LayoutManager;

    iget-object v13, v11, Lflyme/support/v7/widget/RecyclerView;->mRecycler:Lflyme/support/v7/widget/RecyclerView$Recycler;

    iget-object v11, v11, Lflyme/support/v7/widget/RecyclerView;->mState:Lflyme/support/v7/widget/RecyclerView$State;

    invoke-virtual {v12, v7, v13, v11}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->scrollVerticallyBy(ILflyme/support/v7/widget/RecyclerView$Recycler;Lflyme/support/v7/widget/RecyclerView$State;)I

    move-result v11

    sub-int v12, v7, v11

    goto :goto_71

    :cond_6f
    move v11, v4

    move v12, v11

    .line 4821
    :goto_71
    invoke-static {}, Landroidx/core/os/TraceCompat;->endSection()V

    .line 4822
    iget-object v13, v0, Lflyme/support/v7/widget/RecyclerView$ViewFlinger;->this$0:Lflyme/support/v7/widget/RecyclerView;

    invoke-virtual {v13}, Lflyme/support/v7/widget/RecyclerView;->repositionShadowingViews()V

    .line 4824
    iget-object v13, v0, Lflyme/support/v7/widget/RecyclerView$ViewFlinger;->this$0:Lflyme/support/v7/widget/RecyclerView;

    invoke-virtual {v13}, Lflyme/support/v7/widget/RecyclerView;->onExitLayoutOrScroll()V

    .line 4825
    iget-object v13, v0, Lflyme/support/v7/widget/RecyclerView$ViewFlinger;->this$0:Lflyme/support/v7/widget/RecyclerView;

    invoke-virtual {v13, v4}, Lflyme/support/v7/widget/RecyclerView;->resumeRequestLayout(Z)V

    if-eqz v2, :cond_bd

    .line 4827
    invoke-virtual {v2}, Lflyme/support/v7/widget/RecyclerView$SmoothScroller;->isPendingInitialRun()Z

    move-result v13

    if-nez v13, :cond_bd

    .line 4828
    invoke-virtual {v2}, Lflyme/support/v7/widget/RecyclerView$SmoothScroller;->isRunning()Z

    move-result v13

    if-eqz v13, :cond_bd

    .line 4829
    iget-object v13, v0, Lflyme/support/v7/widget/RecyclerView$ViewFlinger;->this$0:Lflyme/support/v7/widget/RecyclerView;

    iget-object v13, v13, Lflyme/support/v7/widget/RecyclerView;->mState:Lflyme/support/v7/widget/RecyclerView$State;

    invoke-virtual {v13}, Lflyme/support/v7/widget/RecyclerView$State;->getItemCount()I

    move-result v13

    if-nez v13, :cond_9f

    .line 4831
    invoke-virtual {v2}, Lflyme/support/v7/widget/RecyclerView$SmoothScroller;->stop()V

    goto :goto_bd

    .line 4832
    :cond_9f
    invoke-virtual {v2}, Lflyme/support/v7/widget/RecyclerView$SmoothScroller;->getTargetPosition()I

    move-result v14

    if-lt v14, v13, :cond_b1

    sub-int/2addr v13, v10

    .line 4833
    invoke-virtual {v2, v13}, Lflyme/support/v7/widget/RecyclerView$SmoothScroller;->setTargetPosition(I)V

    sub-int v13, v6, v9

    sub-int v14, v7, v12

    .line 4834
    invoke-static {v2, v13, v14}, Lflyme/support/v7/widget/RecyclerView$SmoothScroller;->access$400(Lflyme/support/v7/widget/RecyclerView$SmoothScroller;II)V

    goto :goto_bd

    :cond_b1
    sub-int v13, v6, v9

    sub-int v14, v7, v12

    .line 4836
    invoke-static {v2, v13, v14}, Lflyme/support/v7/widget/RecyclerView$SmoothScroller;->access$400(Lflyme/support/v7/widget/RecyclerView$SmoothScroller;II)V

    goto :goto_bd

    :cond_b9
    move v8, v4

    move v9, v8

    move v11, v9

    move v12, v11

    .line 4840
    :cond_bd
    :goto_bd
    iget-object v13, v0, Lflyme/support/v7/widget/RecyclerView$ViewFlinger;->this$0:Lflyme/support/v7/widget/RecyclerView;

    iget-object v13, v13, Lflyme/support/v7/widget/RecyclerView;->mItemDecorations:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v13

    if-nez v13, :cond_cc

    .line 4841
    iget-object v13, v0, Lflyme/support/v7/widget/RecyclerView$ViewFlinger;->this$0:Lflyme/support/v7/widget/RecyclerView;

    invoke-virtual {v13}, Landroid/view/ViewGroup;->invalidate()V

    .line 4843
    :cond_cc
    iget-object v13, v0, Lflyme/support/v7/widget/RecyclerView$ViewFlinger;->this$0:Lflyme/support/v7/widget/RecyclerView;

    invoke-virtual {v13}, Landroid/view/ViewGroup;->getOverScrollMode()I

    move-result v13

    const/4 v14, 0x2

    if-eq v13, v14, :cond_da

    .line 4844
    iget-object v13, v0, Lflyme/support/v7/widget/RecyclerView$ViewFlinger;->this$0:Lflyme/support/v7/widget/RecyclerView;

    invoke-virtual {v13, v6, v7}, Lflyme/support/v7/widget/RecyclerView;->considerReleasingGlowsOnScroll(II)V

    :cond_da
    if-nez v9, :cond_de

    if-eqz v12, :cond_11c

    .line 4847
    :cond_de
    invoke-virtual {v1}, Landroidx/core/widget/ScrollerCompat;->getCurrVelocity()F

    move-result v13

    float-to-int v13, v13

    if-eq v9, v3, :cond_ed

    if-gez v9, :cond_e9

    neg-int v15, v13

    goto :goto_ee

    :cond_e9
    if-lez v9, :cond_ed

    move v15, v13

    goto :goto_ee

    :cond_ed
    move v15, v4

    :goto_ee
    if-eq v12, v5, :cond_f7

    if-gez v12, :cond_f4

    neg-int v13, v13

    goto :goto_f8

    :cond_f4
    if-lez v12, :cond_f7

    goto :goto_f8

    :cond_f7
    move v13, v4

    .line 4859
    :goto_f8
    iget-object v10, v0, Lflyme/support/v7/widget/RecyclerView$ViewFlinger;->this$0:Lflyme/support/v7/widget/RecyclerView;

    invoke-virtual {v10}, Landroid/view/ViewGroup;->getOverScrollMode()I

    move-result v10

    if-eq v10, v14, :cond_105

    .line 4860
    iget-object v10, v0, Lflyme/support/v7/widget/RecyclerView$ViewFlinger;->this$0:Lflyme/support/v7/widget/RecyclerView;

    invoke-virtual {v10, v15, v13}, Lflyme/support/v7/widget/RecyclerView;->absorbGlows(II)V

    :cond_105
    if-nez v15, :cond_10f

    if-eq v9, v3, :cond_10f

    .line 4862
    invoke-virtual {v1}, Landroidx/core/widget/ScrollerCompat;->getFinalX()I

    move-result v3

    if-nez v3, :cond_11c

    :cond_10f
    if-nez v13, :cond_119

    if-eq v12, v5, :cond_119

    .line 4863
    invoke-virtual {v1}, Landroidx/core/widget/ScrollerCompat;->getFinalY()I

    move-result v3

    if-nez v3, :cond_11c

    .line 4864
    :cond_119
    invoke-virtual {v1}, Landroidx/core/widget/ScrollerCompat;->abortAnimation()V

    :cond_11c
    if-nez v8, :cond_120

    if-eqz v11, :cond_125

    .line 4868
    :cond_120
    iget-object v3, v0, Lflyme/support/v7/widget/RecyclerView$ViewFlinger;->this$0:Lflyme/support/v7/widget/RecyclerView;

    invoke-virtual {v3, v8, v11}, Lflyme/support/v7/widget/RecyclerView;->dispatchOnScrolled(II)V

    .line 4871
    :cond_125
    iget-object v3, v0, Lflyme/support/v7/widget/RecyclerView$ViewFlinger;->this$0:Lflyme/support/v7/widget/RecyclerView;

    invoke-static {v3}, Lflyme/support/v7/widget/RecyclerView;->access$500(Lflyme/support/v7/widget/RecyclerView;)Z

    move-result v3

    if-nez v3, :cond_132

    .line 4872
    iget-object v3, v0, Lflyme/support/v7/widget/RecyclerView$ViewFlinger;->this$0:Lflyme/support/v7/widget/RecyclerView;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->invalidate()V

    :cond_132
    if-eqz v7, :cond_142

    .line 4875
    iget-object v3, v0, Lflyme/support/v7/widget/RecyclerView$ViewFlinger;->this$0:Lflyme/support/v7/widget/RecyclerView;

    iget-object v3, v3, Lflyme/support/v7/widget/RecyclerView;->mLayout:Lflyme/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v3}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->canScrollVertically()Z

    move-result v3

    if-eqz v3, :cond_142

    if-ne v11, v7, :cond_142

    const/4 v3, 0x1

    goto :goto_143

    :cond_142
    move v3, v4

    :goto_143
    if-eqz v6, :cond_153

    .line 4877
    iget-object v5, v0, Lflyme/support/v7/widget/RecyclerView$ViewFlinger;->this$0:Lflyme/support/v7/widget/RecyclerView;

    iget-object v5, v5, Lflyme/support/v7/widget/RecyclerView;->mLayout:Lflyme/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v5}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result v5

    if-eqz v5, :cond_153

    if-ne v8, v6, :cond_153

    const/4 v5, 0x1

    goto :goto_154

    :cond_153
    move v5, v4

    :goto_154
    if-nez v6, :cond_158

    if-eqz v7, :cond_160

    :cond_158
    if-nez v5, :cond_160

    if-eqz v3, :cond_15d

    goto :goto_160

    :cond_15d
    move/from16 v16, v4

    goto :goto_162

    :cond_160
    :goto_160
    const/16 v16, 0x1

    .line 4882
    :goto_162
    invoke-virtual {v1}, Landroidx/core/widget/ScrollerCompat;->isFinished()Z

    move-result v1

    if-nez v1, :cond_178

    if-nez v16, :cond_16b

    goto :goto_178

    .line 4888
    :cond_16b
    invoke-virtual/range {p0 .. p0}, Lflyme/support/v7/widget/RecyclerView$ViewFlinger;->postOnAnimation()V

    .line 4889
    iget-object v1, v0, Lflyme/support/v7/widget/RecyclerView$ViewFlinger;->this$0:Lflyme/support/v7/widget/RecyclerView;

    iget-object v3, v1, Lflyme/support/v7/widget/RecyclerView;->mGapWorker:Lflyme/support/v7/widget/GapWorker;

    if-eqz v3, :cond_18a

    .line 4890
    invoke-virtual {v3, v1, v6, v7}, Lflyme/support/v7/widget/GapWorker;->postFromTraversal(Lflyme/support/v7/widget/RecyclerView;II)V

    goto :goto_18a

    .line 4883
    :cond_178
    :goto_178
    iget-object v1, v0, Lflyme/support/v7/widget/RecyclerView$ViewFlinger;->this$0:Lflyme/support/v7/widget/RecyclerView;

    invoke-virtual {v1, v4}, Lflyme/support/v7/widget/RecyclerView;->setScrollState(I)V

    .line 4884
    invoke-static {}, Lflyme/support/v7/widget/RecyclerView;->access$600()Z

    move-result v1

    if-eqz v1, :cond_18a

    .line 4885
    iget-object v1, v0, Lflyme/support/v7/widget/RecyclerView$ViewFlinger;->this$0:Lflyme/support/v7/widget/RecyclerView;

    iget-object v1, v1, Lflyme/support/v7/widget/RecyclerView;->mPrefetchRegistry:Lflyme/support/v7/widget/GapWorker$LayoutPrefetchRegistryImpl;

    invoke-virtual {v1}, Lflyme/support/v7/widget/GapWorker$LayoutPrefetchRegistryImpl;->clearPrefetchPositions()V

    :cond_18a
    :goto_18a
    if-eqz v2, :cond_19c

    .line 4896
    invoke-virtual {v2}, Lflyme/support/v7/widget/RecyclerView$SmoothScroller;->isPendingInitialRun()Z

    move-result v1

    if-eqz v1, :cond_195

    .line 4897
    invoke-static {v2, v4, v4}, Lflyme/support/v7/widget/RecyclerView$SmoothScroller;->access$400(Lflyme/support/v7/widget/RecyclerView$SmoothScroller;II)V

    .line 4899
    :cond_195
    iget-boolean v1, v0, Lflyme/support/v7/widget/RecyclerView$ViewFlinger;->mReSchedulePostAnimationCallback:Z

    if-nez v1, :cond_19c

    .line 4900
    invoke-virtual {v2}, Lflyme/support/v7/widget/RecyclerView$SmoothScroller;->stop()V

    .line 4903
    :cond_19c
    invoke-direct/range {p0 .. p0}, Lflyme/support/v7/widget/RecyclerView$ViewFlinger;->enableRunOnAnimationRequests()V

    return-void
.end method

.method public smoothScrollBy(II)V
    .registers 4

    const/4 v0, 0x0

    .line 4936
    invoke-virtual {p0, p1, p2, v0, v0}, Lflyme/support/v7/widget/RecyclerView$ViewFlinger;->smoothScrollBy(IIII)V

    return-void
.end method

.method public smoothScrollBy(III)V
    .registers 5

    .line 4972
    sget-object v0, Lflyme/support/v7/widget/RecyclerView;->sQuinticInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {p0, p1, p2, p3, v0}, Lflyme/support/v7/widget/RecyclerView$ViewFlinger;->smoothScrollBy(IIILandroid/view/animation/Interpolator;)V

    return-void
.end method

.method public smoothScrollBy(IIII)V
    .registers 5

    .line 4940
    invoke-direct {p0, p1, p2, p3, p4}, Lflyme/support/v7/widget/RecyclerView$ViewFlinger;->computeScrollDuration(IIII)I

    move-result p3

    invoke-virtual {p0, p1, p2, p3}, Lflyme/support/v7/widget/RecyclerView$ViewFlinger;->smoothScrollBy(III)V

    return-void
.end method

.method public smoothScrollBy(IIILandroid/view/animation/Interpolator;)V
    .registers 11

    .line 4981
    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView$ViewFlinger;->mInterpolator:Landroid/view/animation/Interpolator;

    if-eq v0, p4, :cond_12

    .line 4982
    iput-object p4, p0, Lflyme/support/v7/widget/RecyclerView$ViewFlinger;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 4983
    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView$ViewFlinger;->this$0:Lflyme/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p4}, Landroidx/core/widget/ScrollerCompat;->create(Landroid/content/Context;Landroid/view/animation/Interpolator;)Landroidx/core/widget/ScrollerCompat;

    move-result-object p4

    iput-object p4, p0, Lflyme/support/v7/widget/RecyclerView$ViewFlinger;->mScroller:Landroidx/core/widget/ScrollerCompat;

    .line 4985
    :cond_12
    iget-object p4, p0, Lflyme/support/v7/widget/RecyclerView$ViewFlinger;->this$0:Lflyme/support/v7/widget/RecyclerView;

    const/4 v0, 0x2

    invoke-virtual {p4, v0}, Lflyme/support/v7/widget/RecyclerView;->setScrollState(I)V

    const/4 p4, 0x0

    .line 4986
    iput p4, p0, Lflyme/support/v7/widget/RecyclerView$ViewFlinger;->mLastFlingY:I

    iput p4, p0, Lflyme/support/v7/widget/RecyclerView$ViewFlinger;->mLastFlingX:I

    .line 4987
    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView$ViewFlinger;->mScroller:Landroidx/core/widget/ScrollerCompat;

    const/4 v1, 0x0

    const/4 v2, 0x0

    move v3, p1

    move v4, p2

    move v5, p3

    invoke-virtual/range {v0 .. v5}, Landroidx/core/widget/ScrollerCompat;->startScroll(IIIII)V

    .line 4988
    invoke-virtual {p0}, Lflyme/support/v7/widget/RecyclerView$ViewFlinger;->postOnAnimation()V

    return-void
.end method

.method public smoothScrollBy(IILandroid/view/animation/Interpolator;)V
    .registers 5

    const/4 v0, 0x0

    .line 4976
    invoke-direct {p0, p1, p2, v0, v0}, Lflyme/support/v7/widget/RecyclerView$ViewFlinger;->computeScrollDuration(IIII)I

    move-result v0

    if-nez p3, :cond_9

    sget-object p3, Lflyme/support/v7/widget/RecyclerView;->sQuinticInterpolator:Landroid/view/animation/Interpolator;

    :cond_9
    invoke-virtual {p0, p1, p2, v0, p3}, Lflyme/support/v7/widget/RecyclerView$ViewFlinger;->smoothScrollBy(IIILandroid/view/animation/Interpolator;)V

    return-void
.end method

.method public stop()V
    .registers 2

    .line 4992
    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView$ViewFlinger;->this$0:Lflyme/support/v7/widget/RecyclerView;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 4993
    iget-object p0, p0, Lflyme/support/v7/widget/RecyclerView$ViewFlinger;->mScroller:Landroidx/core/widget/ScrollerCompat;

    invoke-virtual {p0}, Landroidx/core/widget/ScrollerCompat;->abortAnimation()V

    return-void
.end method
