.class final Landroidx/leanback/widget/GridLayoutManager$PendingMoveSmoothScroller;
.super Landroidx/leanback/widget/GridLayoutManager$GridLinearSmoothScroller;
.source "GridLayoutManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/leanback/widget/GridLayoutManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "PendingMoveSmoothScroller"
.end annotation


# instance fields
.field private mPendingMoves:I

.field private final mStaggeredGrid:Z

.field final synthetic this$0:Landroidx/leanback/widget/GridLayoutManager;


# direct methods
.method constructor <init>(Landroidx/leanback/widget/GridLayoutManager;IZ)V
    .registers 4

    .line 290
    iput-object p1, p0, Landroidx/leanback/widget/GridLayoutManager$PendingMoveSmoothScroller;->this$0:Landroidx/leanback/widget/GridLayoutManager;

    invoke-direct {p0, p1}, Landroidx/leanback/widget/GridLayoutManager$GridLinearSmoothScroller;-><init>(Landroidx/leanback/widget/GridLayoutManager;)V

    .line 291
    iput p2, p0, Landroidx/leanback/widget/GridLayoutManager$PendingMoveSmoothScroller;->mPendingMoves:I

    .line 292
    iput-boolean p3, p0, Landroidx/leanback/widget/GridLayoutManager$PendingMoveSmoothScroller;->mStaggeredGrid:Z

    const/4 p1, -0x2

    .line 293
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;->setTargetPosition(I)V

    return-void
.end method


# virtual methods
.method public computeScrollVectorForPosition(I)Landroid/graphics/PointF;
    .registers 4

    .line 371
    iget p1, p0, Landroidx/leanback/widget/GridLayoutManager$PendingMoveSmoothScroller;->mPendingMoves:I

    if-nez p1, :cond_6

    const/4 p0, 0x0

    return-object p0

    .line 374
    :cond_6
    iget-object v0, p0, Landroidx/leanback/widget/GridLayoutManager$PendingMoveSmoothScroller;->this$0:Landroidx/leanback/widget/GridLayoutManager;

    iget v0, v0, Landroidx/leanback/widget/GridLayoutManager;->mFlag:I

    const/high16 v1, 0x40000

    and-int/2addr v0, v1

    if-eqz v0, :cond_12

    if-lez p1, :cond_16

    goto :goto_14

    :cond_12
    if-gez p1, :cond_16

    :goto_14
    const/4 p1, -0x1

    goto :goto_17

    :cond_16
    const/4 p1, 0x1

    .line 377
    :goto_17
    iget-object p0, p0, Landroidx/leanback/widget/GridLayoutManager$PendingMoveSmoothScroller;->this$0:Landroidx/leanback/widget/GridLayoutManager;

    iget p0, p0, Landroidx/leanback/widget/GridLayoutManager;->mOrientation:I

    const/4 v0, 0x0

    if-nez p0, :cond_25

    .line 378
    new-instance p0, Landroid/graphics/PointF;

    int-to-float p1, p1

    invoke-direct {p0, p1, v0}, Landroid/graphics/PointF;-><init>(FF)V

    return-object p0

    .line 380
    :cond_25
    new-instance p0, Landroid/graphics/PointF;

    int-to-float p1, p1

    invoke-direct {p0, v0, p1}, Landroid/graphics/PointF;-><init>(FF)V

    return-object p0
.end method

.method consumePendingMovesAfterLayout()V
    .registers 4

    .line 350
    iget-boolean v0, p0, Landroidx/leanback/widget/GridLayoutManager$PendingMoveSmoothScroller;->mStaggeredGrid:Z

    if-eqz v0, :cond_11

    iget v0, p0, Landroidx/leanback/widget/GridLayoutManager$PendingMoveSmoothScroller;->mPendingMoves:I

    if-eqz v0, :cond_11

    .line 352
    iget-object v1, p0, Landroidx/leanback/widget/GridLayoutManager$PendingMoveSmoothScroller;->this$0:Landroidx/leanback/widget/GridLayoutManager;

    const/4 v2, 0x1

    invoke-virtual {v1, v2, v0}, Landroidx/leanback/widget/GridLayoutManager;->processSelectionMoves(ZI)I

    move-result v0

    iput v0, p0, Landroidx/leanback/widget/GridLayoutManager$PendingMoveSmoothScroller;->mPendingMoves:I

    .line 354
    :cond_11
    iget v0, p0, Landroidx/leanback/widget/GridLayoutManager$PendingMoveSmoothScroller;->mPendingMoves:I

    if-eqz v0, :cond_2b

    if-lez v0, :cond_1f

    iget-object v0, p0, Landroidx/leanback/widget/GridLayoutManager$PendingMoveSmoothScroller;->this$0:Landroidx/leanback/widget/GridLayoutManager;

    invoke-virtual {v0}, Landroidx/leanback/widget/GridLayoutManager;->hasCreatedLastItem()Z

    move-result v0

    if-nez v0, :cond_2b

    :cond_1f
    iget v0, p0, Landroidx/leanback/widget/GridLayoutManager$PendingMoveSmoothScroller;->mPendingMoves:I

    if-gez v0, :cond_35

    iget-object v0, p0, Landroidx/leanback/widget/GridLayoutManager$PendingMoveSmoothScroller;->this$0:Landroidx/leanback/widget/GridLayoutManager;

    .line 355
    invoke-virtual {v0}, Landroidx/leanback/widget/GridLayoutManager;->hasCreatedFirstItem()Z

    move-result v0

    if-eqz v0, :cond_35

    .line 356
    :cond_2b
    iget-object v0, p0, Landroidx/leanback/widget/GridLayoutManager$PendingMoveSmoothScroller;->this$0:Landroidx/leanback/widget/GridLayoutManager;

    iget v0, v0, Landroidx/leanback/widget/GridLayoutManager;->mFocusPosition:I

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;->setTargetPosition(I)V

    .line 357
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;->stop()V

    :cond_35
    return-void
.end method

.method consumePendingMovesBeforeLayout()V
    .registers 5

    .line 314
    iget-boolean v0, p0, Landroidx/leanback/widget/GridLayoutManager$PendingMoveSmoothScroller;->mStaggeredGrid:Z

    if-nez v0, :cond_6f

    iget v0, p0, Landroidx/leanback/widget/GridLayoutManager$PendingMoveSmoothScroller;->mPendingMoves:I

    if-nez v0, :cond_9

    goto :goto_6f

    :cond_9
    const/4 v1, 0x0

    if-lez v0, :cond_14

    .line 318
    iget-object v0, p0, Landroidx/leanback/widget/GridLayoutManager$PendingMoveSmoothScroller;->this$0:Landroidx/leanback/widget/GridLayoutManager;

    iget v2, v0, Landroidx/leanback/widget/GridLayoutManager;->mFocusPosition:I

    iget v0, v0, Landroidx/leanback/widget/GridLayoutManager;->mNumRows:I

    :goto_12
    add-int/2addr v2, v0

    goto :goto_1b

    :cond_14
    iget-object v0, p0, Landroidx/leanback/widget/GridLayoutManager$PendingMoveSmoothScroller;->this$0:Landroidx/leanback/widget/GridLayoutManager;

    iget v2, v0, Landroidx/leanback/widget/GridLayoutManager;->mFocusPosition:I

    iget v0, v0, Landroidx/leanback/widget/GridLayoutManager;->mNumRows:I

    :goto_1a
    sub-int/2addr v2, v0

    .line 320
    :goto_1b
    iget v0, p0, Landroidx/leanback/widget/GridLayoutManager$PendingMoveSmoothScroller;->mPendingMoves:I

    if-eqz v0, :cond_52

    .line 322
    invoke-virtual {p0, v2}, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;->findViewByPosition(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_26

    goto :goto_52

    .line 326
    :cond_26
    iget-object v3, p0, Landroidx/leanback/widget/GridLayoutManager$PendingMoveSmoothScroller;->this$0:Landroidx/leanback/widget/GridLayoutManager;

    invoke-virtual {v3, v0}, Landroidx/leanback/widget/GridLayoutManager;->canScrollTo(Landroid/view/View;)Z

    move-result v3

    if-nez v3, :cond_2f

    goto :goto_44

    .line 330
    :cond_2f
    iget-object v1, p0, Landroidx/leanback/widget/GridLayoutManager$PendingMoveSmoothScroller;->this$0:Landroidx/leanback/widget/GridLayoutManager;

    iput v2, v1, Landroidx/leanback/widget/GridLayoutManager;->mFocusPosition:I

    const/4 v3, 0x0

    .line 331
    iput v3, v1, Landroidx/leanback/widget/GridLayoutManager;->mSubFocusPosition:I

    .line 332
    iget v1, p0, Landroidx/leanback/widget/GridLayoutManager$PendingMoveSmoothScroller;->mPendingMoves:I

    if-lez v1, :cond_3f

    add-int/lit8 v1, v1, -0x1

    .line 333
    iput v1, p0, Landroidx/leanback/widget/GridLayoutManager$PendingMoveSmoothScroller;->mPendingMoves:I

    goto :goto_43

    :cond_3f
    add-int/lit8 v1, v1, 0x1

    .line 335
    iput v1, p0, Landroidx/leanback/widget/GridLayoutManager$PendingMoveSmoothScroller;->mPendingMoves:I

    :goto_43
    move-object v1, v0

    .line 321
    :goto_44
    iget v0, p0, Landroidx/leanback/widget/GridLayoutManager$PendingMoveSmoothScroller;->mPendingMoves:I

    if-lez v0, :cond_4d

    iget-object v0, p0, Landroidx/leanback/widget/GridLayoutManager$PendingMoveSmoothScroller;->this$0:Landroidx/leanback/widget/GridLayoutManager;

    iget v0, v0, Landroidx/leanback/widget/GridLayoutManager;->mNumRows:I

    goto :goto_12

    :cond_4d
    iget-object v0, p0, Landroidx/leanback/widget/GridLayoutManager$PendingMoveSmoothScroller;->this$0:Landroidx/leanback/widget/GridLayoutManager;

    iget v0, v0, Landroidx/leanback/widget/GridLayoutManager;->mNumRows:I

    goto :goto_1a

    :cond_52
    :goto_52
    if-eqz v1, :cond_6f

    .line 338
    iget-object v0, p0, Landroidx/leanback/widget/GridLayoutManager$PendingMoveSmoothScroller;->this$0:Landroidx/leanback/widget/GridLayoutManager;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_6f

    .line 339
    iget-object v0, p0, Landroidx/leanback/widget/GridLayoutManager$PendingMoveSmoothScroller;->this$0:Landroidx/leanback/widget/GridLayoutManager;

    iget v2, v0, Landroidx/leanback/widget/GridLayoutManager;->mFlag:I

    or-int/lit8 v2, v2, 0x20

    iput v2, v0, Landroidx/leanback/widget/GridLayoutManager;->mFlag:I

    .line 340
    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    .line 341
    iget-object p0, p0, Landroidx/leanback/widget/GridLayoutManager$PendingMoveSmoothScroller;->this$0:Landroidx/leanback/widget/GridLayoutManager;

    iget v0, p0, Landroidx/leanback/widget/GridLayoutManager;->mFlag:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Landroidx/leanback/widget/GridLayoutManager;->mFlag:I

    :cond_6f
    :goto_6f
    return-void
.end method

.method decreasePendingMoves()V
    .registers 3

    .line 303
    iget v0, p0, Landroidx/leanback/widget/GridLayoutManager$PendingMoveSmoothScroller;->mPendingMoves:I

    iget-object v1, p0, Landroidx/leanback/widget/GridLayoutManager$PendingMoveSmoothScroller;->this$0:Landroidx/leanback/widget/GridLayoutManager;

    iget v1, v1, Landroidx/leanback/widget/GridLayoutManager;->mMaxPendingMoves:I

    neg-int v1, v1

    if-le v0, v1, :cond_d

    add-int/lit8 v0, v0, -0x1

    .line 304
    iput v0, p0, Landroidx/leanback/widget/GridLayoutManager$PendingMoveSmoothScroller;->mPendingMoves:I

    :cond_d
    return-void
.end method

.method increasePendingMoves()V
    .registers 3

    .line 297
    iget v0, p0, Landroidx/leanback/widget/GridLayoutManager$PendingMoveSmoothScroller;->mPendingMoves:I

    iget-object v1, p0, Landroidx/leanback/widget/GridLayoutManager$PendingMoveSmoothScroller;->this$0:Landroidx/leanback/widget/GridLayoutManager;

    iget v1, v1, Landroidx/leanback/widget/GridLayoutManager;->mMaxPendingMoves:I

    if-ge v0, v1, :cond_c

    add-int/lit8 v0, v0, 0x1

    .line 298
    iput v0, p0, Landroidx/leanback/widget/GridLayoutManager$PendingMoveSmoothScroller;->mPendingMoves:I

    :cond_c
    return-void
.end method

.method protected onStopInternal()V
    .registers 3

    .line 386
    invoke-super {p0}, Landroidx/leanback/widget/GridLayoutManager$GridLinearSmoothScroller;->onStopInternal()V

    const/4 v0, 0x0

    .line 388
    iput v0, p0, Landroidx/leanback/widget/GridLayoutManager$PendingMoveSmoothScroller;->mPendingMoves:I

    .line 389
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;->getTargetPosition()I

    move-result v0

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;->findViewByPosition(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_16

    .line 390
    iget-object p0, p0, Landroidx/leanback/widget/GridLayoutManager$PendingMoveSmoothScroller;->this$0:Landroidx/leanback/widget/GridLayoutManager;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Landroidx/leanback/widget/GridLayoutManager;->scrollToView(Landroid/view/View;Z)V

    :cond_16
    return-void
.end method

.method protected updateActionForInterimTarget(Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$Action;)V
    .registers 3

    .line 363
    iget v0, p0, Landroidx/leanback/widget/GridLayoutManager$PendingMoveSmoothScroller;->mPendingMoves:I

    if-nez v0, :cond_5

    return-void

    .line 366
    :cond_5
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/LinearSmoothScroller;->updateActionForInterimTarget(Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$Action;)V

    return-void
.end method
