.class Lflyme/support/v7/widget/MzRecyclerView$ItemGestureDetector;
.super Lflyme/support/v7/widget/RecyclerViewGestureDetector;
.source "MzRecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lflyme/support/v7/widget/MzRecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ItemGestureDetector"
.end annotation


# instance fields
.field private itemGestureListener:Lflyme/support/v7/widget/MzRecyclerView$ItemGestureListener;

.field private lastTouchX:I

.field private lastTouchY:I

.field private scrollPointerId:I

.field final synthetic this$0:Lflyme/support/v7/widget/MzRecyclerView;

.field private touchSlop:I

.field private velocityTracker:Landroid/view/VelocityTracker;


# direct methods
.method public constructor <init>(Lflyme/support/v7/widget/MzRecyclerView;Landroid/content/Context;Lflyme/support/v7/widget/MzRecyclerView$ItemGestureListener;)V
    .registers 4

    .line 535
    iput-object p1, p0, Lflyme/support/v7/widget/MzRecyclerView$ItemGestureDetector;->this$0:Lflyme/support/v7/widget/MzRecyclerView;

    .line 536
    invoke-direct {p0, p2, p3}, Lflyme/support/v7/widget/RecyclerViewGestureDetector;-><init>(Landroid/content/Context;Lflyme/support/v7/widget/RecyclerViewGestureDetector$OnGestureListener;)V

    const/4 p1, -0x1

    .line 532
    iput p1, p0, Lflyme/support/v7/widget/MzRecyclerView$ItemGestureDetector;->scrollPointerId:I

    .line 537
    iput-object p3, p0, Lflyme/support/v7/widget/MzRecyclerView$ItemGestureDetector;->itemGestureListener:Lflyme/support/v7/widget/MzRecyclerView$ItemGestureListener;

    .line 538
    invoke-static {p2}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    .line 539
    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result p1

    iput p1, p0, Lflyme/support/v7/widget/MzRecyclerView$ItemGestureDetector;->touchSlop:I

    return-void
.end method


# virtual methods
.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 11

    .line 544
    iget-object v0, p0, Lflyme/support/v7/widget/MzRecyclerView$ItemGestureDetector;->velocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_a

    .line 545
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lflyme/support/v7/widget/MzRecyclerView$ItemGestureDetector;->velocityTracker:Landroid/view/VelocityTracker;

    .line 547
    :cond_a
    iget-object v0, p0, Lflyme/support/v7/widget/MzRecyclerView$ItemGestureDetector;->velocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 549
    invoke-super {p0, p1}, Lflyme/support/v7/widget/RecyclerViewGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 553
    iget-object v1, p0, Lflyme/support/v7/widget/MzRecyclerView$ItemGestureDetector;->this$0:Lflyme/support/v7/widget/MzRecyclerView;

    invoke-virtual {v1}, Lflyme/support/v7/widget/RecyclerView;->getLayoutManager()Lflyme/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_1d

    return v2

    .line 557
    :cond_1d
    invoke-virtual {v1}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result v3

    .line 558
    invoke-virtual {v1}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->canScrollVertically()Z

    move-result v1

    .line 559
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    const/high16 v5, 0x3f000000  # 0.5f

    if-eqz v4, :cond_e1

    const/4 v6, 0x3

    const/4 v7, 0x1

    if-eq v4, v7, :cond_83

    const/4 v8, 0x2

    if-eq v4, v8, :cond_46

    if-eq v4, v6, :cond_38

    goto/16 :goto_f7

    .line 608
    :cond_38
    iget-object p1, p0, Lflyme/support/v7/widget/MzRecyclerView$ItemGestureDetector;->itemGestureListener:Lflyme/support/v7/widget/MzRecyclerView$ItemGestureListener;

    invoke-virtual {p1}, Lflyme/support/v7/widget/MzRecyclerView$ItemGestureListener;->onCancel()V

    .line 609
    iget-object p0, p0, Lflyme/support/v7/widget/MzRecyclerView$ItemGestureDetector;->velocityTracker:Landroid/view/VelocityTracker;

    if-eqz p0, :cond_f7

    .line 610
    invoke-virtual {p0}, Landroid/view/VelocityTracker;->clear()V

    goto/16 :goto_f7

    .line 569
    :cond_46
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    add-float/2addr v4, v5

    float-to-int v4, v4

    .line 570
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    add-float/2addr p1, v5

    float-to-int p1, p1

    .line 571
    iget v5, p0, Lflyme/support/v7/widget/MzRecyclerView$ItemGestureDetector;->lastTouchX:I

    sub-int/2addr v5, v4

    .line 572
    iget v6, p0, Lflyme/support/v7/widget/MzRecyclerView$ItemGestureDetector;->lastTouchY:I

    sub-int/2addr v6, p1

    if-eqz v3, :cond_63

    .line 575
    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v3

    iget v5, p0, Lflyme/support/v7/widget/MzRecyclerView$ItemGestureDetector;->touchSlop:I

    if-le v3, v5, :cond_63

    move v2, v7

    :cond_63
    if-eqz v1, :cond_6e

    .line 578
    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iget v3, p0, Lflyme/support/v7/widget/MzRecyclerView$ItemGestureDetector;->touchSlop:I

    if-le v1, v3, :cond_6e

    move v2, v7

    .line 581
    :cond_6e
    iget-object v1, p0, Lflyme/support/v7/widget/MzRecyclerView$ItemGestureDetector;->this$0:Lflyme/support/v7/widget/MzRecyclerView;

    iget v1, v1, Lflyme/support/v7/widget/MzRecyclerView;->mTouchMode:I

    if-ne v1, v8, :cond_7b

    if-eqz v2, :cond_7b

    .line 582
    iget-object v1, p0, Lflyme/support/v7/widget/MzRecyclerView$ItemGestureDetector;->itemGestureListener:Lflyme/support/v7/widget/MzRecyclerView$ItemGestureListener;

    invoke-virtual {v1}, Lflyme/support/v7/widget/MzRecyclerView$ItemGestureListener;->startScrolled()V

    :cond_7b
    if-eqz v2, :cond_f7

    .line 585
    iput v4, p0, Lflyme/support/v7/widget/MzRecyclerView$ItemGestureDetector;->lastTouchX:I

    .line 586
    iput p1, p0, Lflyme/support/v7/widget/MzRecyclerView$ItemGestureDetector;->lastTouchY:I

    goto/16 :goto_f7

    .line 590
    :cond_83
    iget-object p1, p0, Lflyme/support/v7/widget/MzRecyclerView$ItemGestureDetector;->velocityTracker:Landroid/view/VelocityTracker;

    const/16 v4, 0x3e8

    iget-object v5, p0, Lflyme/support/v7/widget/MzRecyclerView$ItemGestureDetector;->this$0:Lflyme/support/v7/widget/MzRecyclerView;

    invoke-virtual {v5}, Lflyme/support/v7/widget/RecyclerView;->getMaxFlingVelocity()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {p1, v4, v5}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    const/4 p1, 0x0

    if-eqz v3, :cond_9e

    .line 591
    iget-object v3, p0, Lflyme/support/v7/widget/MzRecyclerView$ItemGestureDetector;->velocityTracker:Landroid/view/VelocityTracker;

    iget v4, p0, Lflyme/support/v7/widget/MzRecyclerView$ItemGestureDetector;->scrollPointerId:I

    .line 592
    invoke-static {v3, v4}, Landroidx/core/view/VelocityTrackerCompat;->getXVelocity(Landroid/view/VelocityTracker;I)F

    move-result v3

    neg-float v3, v3

    goto :goto_9f

    :cond_9e
    move v3, p1

    :goto_9f
    if-eqz v1, :cond_aa

    .line 593
    iget-object p1, p0, Lflyme/support/v7/widget/MzRecyclerView$ItemGestureDetector;->velocityTracker:Landroid/view/VelocityTracker;

    iget v1, p0, Lflyme/support/v7/widget/MzRecyclerView$ItemGestureDetector;->scrollPointerId:I

    .line 594
    invoke-static {p1, v1}, Landroidx/core/view/VelocityTrackerCompat;->getYVelocity(Landroid/view/VelocityTracker;I)F

    move-result p1

    neg-float p1, p1

    .line 596
    :cond_aa
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iget-object v1, p0, Lflyme/support/v7/widget/MzRecyclerView$ItemGestureDetector;->this$0:Lflyme/support/v7/widget/MzRecyclerView;

    invoke-virtual {v1}, Lflyme/support/v7/widget/RecyclerView;->getMinFlingVelocity()I

    move-result v1

    int-to-float v1, v1

    cmpl-float p1, p1, v1

    if-gez p1, :cond_c8

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iget-object v1, p0, Lflyme/support/v7/widget/MzRecyclerView$ItemGestureDetector;->this$0:Lflyme/support/v7/widget/MzRecyclerView;

    invoke-virtual {v1}, Lflyme/support/v7/widget/RecyclerView;->getMinFlingVelocity()I

    move-result v1

    int-to-float v1, v1

    cmpl-float p1, p1, v1

    if-ltz p1, :cond_c9

    :cond_c8
    move v2, v7

    :cond_c9
    if-eqz v2, :cond_d4

    .line 599
    iget-object p1, p0, Lflyme/support/v7/widget/MzRecyclerView$ItemGestureDetector;->this$0:Lflyme/support/v7/widget/MzRecyclerView;

    iget v1, p1, Lflyme/support/v7/widget/MzRecyclerView;->mTouchMode:I

    if-ne v1, v6, :cond_d4

    const/4 v1, 0x4

    .line 600
    iput v1, p1, Lflyme/support/v7/widget/MzRecyclerView;->mTouchMode:I

    .line 602
    :cond_d4
    iget-object p1, p0, Lflyme/support/v7/widget/MzRecyclerView$ItemGestureDetector;->itemGestureListener:Lflyme/support/v7/widget/MzRecyclerView$ItemGestureListener;

    invoke-virtual {p1}, Lflyme/support/v7/widget/MzRecyclerView$ItemGestureListener;->onUp()Z

    .line 603
    iget-object p0, p0, Lflyme/support/v7/widget/MzRecyclerView$ItemGestureDetector;->velocityTracker:Landroid/view/VelocityTracker;

    if-eqz p0, :cond_f7

    .line 604
    invoke-virtual {p0}, Landroid/view/VelocityTracker;->clear()V

    goto :goto_f7

    .line 564
    :cond_e1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    add-float/2addr v1, v5

    float-to-int v1, v1

    iput v1, p0, Lflyme/support/v7/widget/MzRecyclerView$ItemGestureDetector;->lastTouchX:I

    .line 565
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    add-float/2addr v1, v5

    float-to-int v1, v1

    iput v1, p0, Lflyme/support/v7/widget/MzRecyclerView$ItemGestureDetector;->lastTouchY:I

    .line 566
    invoke-static {p1, v2}, Landroidx/core/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result p1

    iput p1, p0, Lflyme/support/v7/widget/MzRecyclerView$ItemGestureDetector;->scrollPointerId:I

    :cond_f7
    :goto_f7
    return v0
.end method
