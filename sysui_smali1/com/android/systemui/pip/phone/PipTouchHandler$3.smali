.class Lcom/android/systemui/pip/phone/PipTouchHandler$3;
.super Lcom/android/systemui/pip/phone/PipTouchGesture;
.source "PipTouchHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/pip/phone/PipTouchHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final mDelta:Landroid/graphics/PointF;

.field private final mStartPosition:Landroid/graphics/Point;

.field private mStartedOnLeft:Z

.field final synthetic this$0:Lcom/android/systemui/pip/phone/PipTouchHandler;


# direct methods
.method constructor <init>(Lcom/android/systemui/pip/phone/PipTouchHandler;)V
    .registers 2

    .line 584
    iput-object p1, p0, Lcom/android/systemui/pip/phone/PipTouchHandler$3;->this$0:Lcom/android/systemui/pip/phone/PipTouchHandler;

    invoke-direct {p0}, Lcom/android/systemui/pip/phone/PipTouchGesture;-><init>()V

    .line 587
    new-instance p1, Landroid/graphics/Point;

    invoke-direct {p1}, Landroid/graphics/Point;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/pip/phone/PipTouchHandler$3;->mStartPosition:Landroid/graphics/Point;

    .line 588
    new-instance p1, Landroid/graphics/PointF;

    invoke-direct {p1}, Landroid/graphics/PointF;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/pip/phone/PipTouchHandler$3;->mDelta:Landroid/graphics/PointF;

    return-void
.end method


# virtual methods
.method public onDown(Lcom/android/systemui/pip/phone/PipTouchState;)V
    .registers 6

    .line 592
    invoke-virtual {p1}, Lcom/android/systemui/pip/phone/PipTouchState;->isUserInteracting()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 596
    :cond_7
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipTouchHandler$3;->this$0:Lcom/android/systemui/pip/phone/PipTouchHandler;

    invoke-static {v0}, Lcom/android/systemui/pip/phone/PipTouchHandler;->access$600(Lcom/android/systemui/pip/phone/PipTouchHandler;)Lcom/android/systemui/pip/phone/PipMotionHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/pip/phone/PipMotionHelper;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 597
    iget-object v1, p0, Lcom/android/systemui/pip/phone/PipTouchHandler$3;->mDelta:Landroid/graphics/PointF;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v2}, Landroid/graphics/PointF;->set(FF)V

    .line 598
    iget-object v1, p0, Lcom/android/systemui/pip/phone/PipTouchHandler$3;->mStartPosition:Landroid/graphics/Point;

    iget v2, v0, Landroid/graphics/Rect;->left:I

    iget v3, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Point;->set(II)V

    .line 599
    iget v0, v0, Landroid/graphics/Rect;->left:I

    iget-object v1, p0, Lcom/android/systemui/pip/phone/PipTouchHandler$3;->this$0:Lcom/android/systemui/pip/phone/PipTouchHandler;

    invoke-static {v1}, Lcom/android/systemui/pip/phone/PipTouchHandler;->access$800(Lcom/android/systemui/pip/phone/PipTouchHandler;)Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->centerX()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ge v0, v1, :cond_32

    move v0, v3

    goto :goto_33

    :cond_32
    move v0, v2

    :goto_33
    iput-boolean v0, p0, Lcom/android/systemui/pip/phone/PipTouchHandler$3;->mStartedOnLeft:Z

    .line 600
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipTouchHandler$3;->this$0:Lcom/android/systemui/pip/phone/PipTouchHandler;

    invoke-static {v0, v3}, Lcom/android/systemui/pip/phone/PipTouchHandler;->access$1302(Lcom/android/systemui/pip/phone/PipTouchHandler;Z)Z

    .line 601
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipTouchHandler$3;->this$0:Lcom/android/systemui/pip/phone/PipTouchHandler;

    invoke-virtual {p1}, Lcom/android/systemui/pip/phone/PipTouchState;->getDownTouchPosition()Landroid/graphics/PointF;

    move-result-object p1

    iget p1, p1, Landroid/graphics/PointF;->y:F

    iget-object v1, p0, Lcom/android/systemui/pip/phone/PipTouchHandler$3;->this$0:Lcom/android/systemui/pip/phone/PipTouchHandler;

    invoke-static {v1}, Lcom/android/systemui/pip/phone/PipTouchHandler;->access$800(Lcom/android/systemui/pip/phone/PipTouchHandler;)Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    int-to-float v1, v1

    cmpl-float p1, p1, v1

    if-ltz p1, :cond_50

    move v2, v3

    :cond_50
    invoke-static {v0, v2}, Lcom/android/systemui/pip/phone/PipTouchHandler;->access$1402(Lcom/android/systemui/pip/phone/PipTouchHandler;Z)Z

    .line 605
    iget-object p1, p0, Lcom/android/systemui/pip/phone/PipTouchHandler$3;->this$0:Lcom/android/systemui/pip/phone/PipTouchHandler;

    invoke-static {p1}, Lcom/android/systemui/pip/phone/PipTouchHandler;->access$1500(Lcom/android/systemui/pip/phone/PipTouchHandler;)I

    move-result p1

    if-eqz p1, :cond_6c

    iget-object p1, p0, Lcom/android/systemui/pip/phone/PipTouchHandler$3;->this$0:Lcom/android/systemui/pip/phone/PipTouchHandler;

    invoke-static {p1}, Lcom/android/systemui/pip/phone/PipTouchHandler;->access$500(Lcom/android/systemui/pip/phone/PipTouchHandler;)Z

    move-result p1

    if-nez p1, :cond_6c

    .line 606
    iget-object p1, p0, Lcom/android/systemui/pip/phone/PipTouchHandler$3;->this$0:Lcom/android/systemui/pip/phone/PipTouchHandler;

    invoke-static {p1}, Lcom/android/systemui/pip/phone/PipTouchHandler;->access$1200(Lcom/android/systemui/pip/phone/PipTouchHandler;)Lcom/android/systemui/pip/phone/PipMenuActivityController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/systemui/pip/phone/PipMenuActivityController;->pokeMenu()V

    .line 609
    :cond_6c
    iget-object p1, p0, Lcom/android/systemui/pip/phone/PipTouchHandler$3;->this$0:Lcom/android/systemui/pip/phone/PipTouchHandler;

    invoke-static {p1}, Lcom/android/systemui/pip/phone/PipTouchHandler;->access$100(Lcom/android/systemui/pip/phone/PipTouchHandler;)Z

    move-result p1

    if-eqz p1, :cond_8e

    .line 610
    iget-object p1, p0, Lcom/android/systemui/pip/phone/PipTouchHandler$3;->this$0:Lcom/android/systemui/pip/phone/PipTouchHandler;

    invoke-static {p1}, Lcom/android/systemui/pip/phone/PipTouchHandler;->access$200(Lcom/android/systemui/pip/phone/PipTouchHandler;)Lcom/android/systemui/pip/phone/PipDismissViewController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/systemui/pip/phone/PipDismissViewController;->createDismissTarget()V

    .line 611
    iget-object p1, p0, Lcom/android/systemui/pip/phone/PipTouchHandler$3;->this$0:Lcom/android/systemui/pip/phone/PipTouchHandler;

    invoke-static {p1}, Lcom/android/systemui/pip/phone/PipTouchHandler;->access$1700(Lcom/android/systemui/pip/phone/PipTouchHandler;)Landroid/os/Handler;

    move-result-object p1

    iget-object p0, p0, Lcom/android/systemui/pip/phone/PipTouchHandler$3;->this$0:Lcom/android/systemui/pip/phone/PipTouchHandler;

    invoke-static {p0}, Lcom/android/systemui/pip/phone/PipTouchHandler;->access$1600(Lcom/android/systemui/pip/phone/PipTouchHandler;)Ljava/lang/Runnable;

    move-result-object p0

    const-wide/16 v0, 0xe1

    invoke-virtual {p1, p0, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_8e
    return-void
.end method

.method onMove(Lcom/android/systemui/pip/phone/PipTouchState;)Z
    .registers 9

    .line 617
    invoke-virtual {p1}, Lcom/android/systemui/pip/phone/PipTouchState;->isUserInteracting()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    .line 621
    :cond_8
    invoke-virtual {p1}, Lcom/android/systemui/pip/phone/PipTouchState;->startedDragging()Z

    move-result v0

    if-eqz v0, :cond_35

    .line 622
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipTouchHandler$3;->this$0:Lcom/android/systemui/pip/phone/PipTouchHandler;

    const/high16 v2, -0x40800000  # -1.0f

    invoke-static {v0, v2}, Lcom/android/systemui/pip/phone/PipTouchHandler;->access$1802(Lcom/android/systemui/pip/phone/PipTouchHandler;F)F

    .line 624
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipTouchHandler$3;->this$0:Lcom/android/systemui/pip/phone/PipTouchHandler;

    invoke-static {v0}, Lcom/android/systemui/pip/phone/PipTouchHandler;->access$100(Lcom/android/systemui/pip/phone/PipTouchHandler;)Z

    move-result v0

    if-eqz v0, :cond_35

    .line 625
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipTouchHandler$3;->this$0:Lcom/android/systemui/pip/phone/PipTouchHandler;

    invoke-static {v0}, Lcom/android/systemui/pip/phone/PipTouchHandler;->access$1700(Lcom/android/systemui/pip/phone/PipTouchHandler;)Landroid/os/Handler;

    move-result-object v0

    iget-object v2, p0, Lcom/android/systemui/pip/phone/PipTouchHandler$3;->this$0:Lcom/android/systemui/pip/phone/PipTouchHandler;

    invoke-static {v2}, Lcom/android/systemui/pip/phone/PipTouchHandler;->access$1600(Lcom/android/systemui/pip/phone/PipTouchHandler;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 626
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipTouchHandler$3;->this$0:Lcom/android/systemui/pip/phone/PipTouchHandler;

    invoke-static {v0}, Lcom/android/systemui/pip/phone/PipTouchHandler;->access$200(Lcom/android/systemui/pip/phone/PipTouchHandler;)Lcom/android/systemui/pip/phone/PipDismissViewController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/pip/phone/PipDismissViewController;->showDismissTarget()V

    .line 630
    :cond_35
    invoke-virtual {p1}, Lcom/android/systemui/pip/phone/PipTouchState;->isDragging()Z

    move-result v0

    if-eqz v0, :cond_147

    .line 632
    invoke-virtual {p1}, Lcom/android/systemui/pip/phone/PipTouchState;->getLastTouchDelta()Landroid/graphics/PointF;

    move-result-object v0

    .line 633
    iget-object v2, p0, Lcom/android/systemui/pip/phone/PipTouchHandler$3;->mStartPosition:Landroid/graphics/Point;

    iget v3, v2, Landroid/graphics/Point;->x:I

    int-to-float v3, v3

    iget-object v4, p0, Lcom/android/systemui/pip/phone/PipTouchHandler$3;->mDelta:Landroid/graphics/PointF;

    iget v5, v4, Landroid/graphics/PointF;->x:F

    add-float/2addr v3, v5

    .line 634
    iget v2, v2, Landroid/graphics/Point;->y:I

    int-to-float v2, v2

    iget v4, v4, Landroid/graphics/PointF;->y:F

    add-float/2addr v2, v4

    .line 635
    iget v4, v0, Landroid/graphics/PointF;->x:F

    add-float/2addr v4, v3

    .line 636
    iget v0, v0, Landroid/graphics/PointF;->y:F

    add-float/2addr v0, v2

    .line 637
    invoke-virtual {p1}, Lcom/android/systemui/pip/phone/PipTouchState;->allowDraggingOffscreen()Z

    .line 638
    iget-object v5, p0, Lcom/android/systemui/pip/phone/PipTouchHandler$3;->this$0:Lcom/android/systemui/pip/phone/PipTouchHandler;

    invoke-static {v5}, Lcom/android/systemui/pip/phone/PipTouchHandler;->access$800(Lcom/android/systemui/pip/phone/PipTouchHandler;)Landroid/graphics/Rect;

    move-result-object v5

    iget v5, v5, Landroid/graphics/Rect;->left:I

    int-to-float v5, v5

    iget-object v6, p0, Lcom/android/systemui/pip/phone/PipTouchHandler$3;->this$0:Lcom/android/systemui/pip/phone/PipTouchHandler;

    invoke-static {v6}, Lcom/android/systemui/pip/phone/PipTouchHandler;->access$800(Lcom/android/systemui/pip/phone/PipTouchHandler;)Landroid/graphics/Rect;

    move-result-object v6

    iget v6, v6, Landroid/graphics/Rect;->right:I

    int-to-float v6, v6

    invoke-static {v6, v4}, Ljava/lang/Math;->min(FF)F

    move-result v4

    invoke-static {v5, v4}, Ljava/lang/Math;->max(FF)F

    move-result v4

    .line 640
    iget-object v5, p0, Lcom/android/systemui/pip/phone/PipTouchHandler$3;->this$0:Lcom/android/systemui/pip/phone/PipTouchHandler;

    invoke-static {v5}, Lcom/android/systemui/pip/phone/PipTouchHandler;->access$100(Lcom/android/systemui/pip/phone/PipTouchHandler;)Z

    move-result v5

    if-eqz v5, :cond_88

    .line 642
    iget-object v5, p0, Lcom/android/systemui/pip/phone/PipTouchHandler$3;->this$0:Lcom/android/systemui/pip/phone/PipTouchHandler;

    invoke-static {v5}, Lcom/android/systemui/pip/phone/PipTouchHandler;->access$800(Lcom/android/systemui/pip/phone/PipTouchHandler;)Landroid/graphics/Rect;

    move-result-object v5

    iget v5, v5, Landroid/graphics/Rect;->top:I

    int-to-float v5, v5

    invoke-static {v5, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    goto :goto_a2

    .line 644
    :cond_88
    iget-object v5, p0, Lcom/android/systemui/pip/phone/PipTouchHandler$3;->this$0:Lcom/android/systemui/pip/phone/PipTouchHandler;

    invoke-static {v5}, Lcom/android/systemui/pip/phone/PipTouchHandler;->access$800(Lcom/android/systemui/pip/phone/PipTouchHandler;)Landroid/graphics/Rect;

    move-result-object v5

    iget v5, v5, Landroid/graphics/Rect;->top:I

    int-to-float v5, v5

    iget-object v6, p0, Lcom/android/systemui/pip/phone/PipTouchHandler$3;->this$0:Lcom/android/systemui/pip/phone/PipTouchHandler;

    invoke-static {v6}, Lcom/android/systemui/pip/phone/PipTouchHandler;->access$800(Lcom/android/systemui/pip/phone/PipTouchHandler;)Landroid/graphics/Rect;

    move-result-object v6

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    int-to-float v6, v6

    invoke-static {v6, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    invoke-static {v5, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 648
    :goto_a2
    iget-object v5, p0, Lcom/android/systemui/pip/phone/PipTouchHandler$3;->mDelta:Landroid/graphics/PointF;

    iget v6, v5, Landroid/graphics/PointF;->x:F

    sub-float v3, v4, v3

    add-float/2addr v6, v3

    iput v6, v5, Landroid/graphics/PointF;->x:F

    .line 649
    iget v3, v5, Landroid/graphics/PointF;->y:F

    sub-float v2, v0, v2

    add-float/2addr v3, v2

    iput v3, v5, Landroid/graphics/PointF;->y:F

    .line 651
    iget-object v2, p0, Lcom/android/systemui/pip/phone/PipTouchHandler$3;->this$0:Lcom/android/systemui/pip/phone/PipTouchHandler;

    invoke-static {v2}, Lcom/android/systemui/pip/phone/PipTouchHandler;->access$1900(Lcom/android/systemui/pip/phone/PipTouchHandler;)Landroid/graphics/Rect;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/pip/phone/PipTouchHandler$3;->this$0:Lcom/android/systemui/pip/phone/PipTouchHandler;

    invoke-static {v3}, Lcom/android/systemui/pip/phone/PipTouchHandler;->access$600(Lcom/android/systemui/pip/phone/PipTouchHandler;)Lcom/android/systemui/pip/phone/PipMotionHelper;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/systemui/pip/phone/PipMotionHelper;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 652
    iget-object v2, p0, Lcom/android/systemui/pip/phone/PipTouchHandler$3;->this$0:Lcom/android/systemui/pip/phone/PipTouchHandler;

    invoke-static {v2}, Lcom/android/systemui/pip/phone/PipTouchHandler;->access$1900(Lcom/android/systemui/pip/phone/PipTouchHandler;)Landroid/graphics/Rect;

    move-result-object v2

    float-to-int v3, v4

    float-to-int v0, v0

    invoke-virtual {v2, v3, v0}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 653
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipTouchHandler$3;->this$0:Lcom/android/systemui/pip/phone/PipTouchHandler;

    invoke-static {v0}, Lcom/android/systemui/pip/phone/PipTouchHandler;->access$600(Lcom/android/systemui/pip/phone/PipTouchHandler;)Lcom/android/systemui/pip/phone/PipMotionHelper;

    move-result-object v0

    iget-object v2, p0, Lcom/android/systemui/pip/phone/PipTouchHandler$3;->this$0:Lcom/android/systemui/pip/phone/PipTouchHandler;

    invoke-static {v2}, Lcom/android/systemui/pip/phone/PipTouchHandler;->access$1900(Lcom/android/systemui/pip/phone/PipTouchHandler;)Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/systemui/pip/phone/PipMotionHelper;->movePip(Landroid/graphics/Rect;)V

    .line 655
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipTouchHandler$3;->this$0:Lcom/android/systemui/pip/phone/PipTouchHandler;

    invoke-static {v0}, Lcom/android/systemui/pip/phone/PipTouchHandler;->access$100(Lcom/android/systemui/pip/phone/PipTouchHandler;)Z

    move-result v0

    if-eqz v0, :cond_ec

    .line 656
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipTouchHandler$3;->this$0:Lcom/android/systemui/pip/phone/PipTouchHandler;

    invoke-static {v0}, Lcom/android/systemui/pip/phone/PipTouchHandler;->access$300(Lcom/android/systemui/pip/phone/PipTouchHandler;)V

    .line 659
    :cond_ec
    invoke-virtual {p1}, Lcom/android/systemui/pip/phone/PipTouchState;->getLastTouchPosition()Landroid/graphics/PointF;

    move-result-object p1

    .line 660
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipTouchHandler$3;->this$0:Lcom/android/systemui/pip/phone/PipTouchHandler;

    invoke-static {v0}, Lcom/android/systemui/pip/phone/PipTouchHandler;->access$1300(Lcom/android/systemui/pip/phone/PipTouchHandler;)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_12b

    .line 662
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipTouchHandler$3;->this$0:Lcom/android/systemui/pip/phone/PipTouchHandler;

    iget-boolean v3, p0, Lcom/android/systemui/pip/phone/PipTouchHandler$3;->mStartedOnLeft:Z

    if-eqz v3, :cond_118

    .line 663
    iget v3, p1, Landroid/graphics/PointF;->x:F

    invoke-static {v0}, Lcom/android/systemui/pip/phone/PipTouchHandler;->access$800(Lcom/android/systemui/pip/phone/PipTouchHandler;)Landroid/graphics/Rect;

    move-result-object v4

    iget v4, v4, Landroid/graphics/Rect;->left:I

    iget-object v5, p0, Lcom/android/systemui/pip/phone/PipTouchHandler$3;->this$0:Lcom/android/systemui/pip/phone/PipTouchHandler;

    invoke-static {v5}, Lcom/android/systemui/pip/phone/PipTouchHandler;->access$1900(Lcom/android/systemui/pip/phone/PipTouchHandler;)Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v5

    add-int/2addr v4, v5

    int-to-float v4, v4

    cmpg-float v3, v3, v4

    if-gtz v3, :cond_127

    goto :goto_125

    .line 664
    :cond_118
    iget v3, p1, Landroid/graphics/PointF;->x:F

    invoke-static {v0}, Lcom/android/systemui/pip/phone/PipTouchHandler;->access$800(Lcom/android/systemui/pip/phone/PipTouchHandler;)Landroid/graphics/Rect;

    move-result-object v4

    iget v4, v4, Landroid/graphics/Rect;->right:I

    int-to-float v4, v4

    cmpl-float v3, v3, v4

    if-ltz v3, :cond_127

    :goto_125
    move v3, v2

    goto :goto_128

    :cond_127
    move v3, v1

    .line 662
    :goto_128
    invoke-static {v0, v3}, Lcom/android/systemui/pip/phone/PipTouchHandler;->access$1302(Lcom/android/systemui/pip/phone/PipTouchHandler;Z)Z

    .line 666
    :cond_12b
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipTouchHandler$3;->this$0:Lcom/android/systemui/pip/phone/PipTouchHandler;

    invoke-static {v0}, Lcom/android/systemui/pip/phone/PipTouchHandler;->access$1400(Lcom/android/systemui/pip/phone/PipTouchHandler;)Z

    move-result v0

    if-eqz v0, :cond_146

    .line 668
    iget-object p0, p0, Lcom/android/systemui/pip/phone/PipTouchHandler$3;->this$0:Lcom/android/systemui/pip/phone/PipTouchHandler;

    iget p1, p1, Landroid/graphics/PointF;->y:F

    invoke-static {p0}, Lcom/android/systemui/pip/phone/PipTouchHandler;->access$800(Lcom/android/systemui/pip/phone/PipTouchHandler;)Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v0, v0

    cmpl-float p1, p1, v0

    if-ltz p1, :cond_143

    move v1, v2

    :cond_143
    invoke-static {p0, v1}, Lcom/android/systemui/pip/phone/PipTouchHandler;->access$1402(Lcom/android/systemui/pip/phone/PipTouchHandler;Z)Z

    :cond_146
    return v2

    :cond_147
    return v1
.end method

.method public onUp(Lcom/android/systemui/pip/phone/PipTouchState;)Z
    .registers 16

    .line 677
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipTouchHandler$3;->this$0:Lcom/android/systemui/pip/phone/PipTouchHandler;

    invoke-static {v0}, Lcom/android/systemui/pip/phone/PipTouchHandler;->access$100(Lcom/android/systemui/pip/phone/PipTouchHandler;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 680
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipTouchHandler$3;->this$0:Lcom/android/systemui/pip/phone/PipTouchHandler;

    invoke-static {v0}, Lcom/android/systemui/pip/phone/PipTouchHandler;->access$2000(Lcom/android/systemui/pip/phone/PipTouchHandler;)V

    .line 683
    :cond_d
    invoke-virtual {p1}, Lcom/android/systemui/pip/phone/PipTouchState;->isUserInteracting()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_15

    return v1

    .line 687
    :cond_15
    invoke-virtual {p1}, Lcom/android/systemui/pip/phone/PipTouchState;->getVelocity()Landroid/graphics/PointF;

    move-result-object v0

    .line 688
    iget v2, v0, Landroid/graphics/PointF;->x:F

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    iget v3, v0, Landroid/graphics/PointF;->y:F

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    cmpl-float v2, v2, v3

    const/4 v3, 0x1

    if-lez v2, :cond_2c

    move v2, v3

    goto :goto_2d

    :cond_2c
    move v2, v1

    .line 689
    :goto_2d
    iget v4, v0, Landroid/graphics/PointF;->x:F

    iget v5, v0, Landroid/graphics/PointF;->y:F

    invoke-static {v4, v5}, Landroid/graphics/PointF;->length(FF)F

    move-result v7

    .line 690
    iget-object v4, p0, Lcom/android/systemui/pip/phone/PipTouchHandler$3;->this$0:Lcom/android/systemui/pip/phone/PipTouchHandler;

    invoke-static {v4}, Lcom/android/systemui/pip/phone/PipTouchHandler;->access$2100(Lcom/android/systemui/pip/phone/PipTouchHandler;)Lcom/android/systemui/statusbar/FlingAnimationUtils;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/FlingAnimationUtils;->getMinVelocityPxPerSecond()F

    move-result v4

    cmpl-float v4, v7, v4

    if-lez v4, :cond_45

    move v4, v3

    goto :goto_46

    :cond_45
    move v4, v1

    :goto_46
    const/4 v5, 0x0

    if-eqz v4, :cond_5c

    .line 695
    iget v6, v0, Landroid/graphics/PointF;->y:F

    cmpl-float v6, v6, v5

    if-lez v6, :cond_5c

    if-nez v2, :cond_5c

    iget-object v6, p0, Lcom/android/systemui/pip/phone/PipTouchHandler$3;->this$0:Lcom/android/systemui/pip/phone/PipTouchHandler;

    .line 696
    invoke-static {v6}, Lcom/android/systemui/pip/phone/PipTouchHandler;->access$1400(Lcom/android/systemui/pip/phone/PipTouchHandler;)Z

    move-result v6

    if-nez v6, :cond_5a

    goto :goto_5c

    :cond_5a
    move v6, v3

    goto :goto_5d

    :cond_5c
    :goto_5c
    move v6, v1

    .line 697
    :goto_5d
    iget-object v8, p0, Lcom/android/systemui/pip/phone/PipTouchHandler$3;->this$0:Lcom/android/systemui/pip/phone/PipTouchHandler;

    invoke-static {v8}, Lcom/android/systemui/pip/phone/PipTouchHandler;->access$100(Lcom/android/systemui/pip/phone/PipTouchHandler;)Z

    move-result v8

    if-eqz v8, :cond_aa

    .line 699
    iget-object v8, p0, Lcom/android/systemui/pip/phone/PipTouchHandler$3;->this$0:Lcom/android/systemui/pip/phone/PipTouchHandler;

    invoke-static {v8}, Lcom/android/systemui/pip/phone/PipTouchHandler;->access$600(Lcom/android/systemui/pip/phone/PipTouchHandler;)Lcom/android/systemui/pip/phone/PipMotionHelper;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/systemui/pip/phone/PipMotionHelper;->shouldDismissPip()Z

    move-result v8

    if-nez v8, :cond_73

    if-eqz v6, :cond_aa

    .line 700
    :cond_73
    iget-object p1, p0, Lcom/android/systemui/pip/phone/PipTouchHandler$3;->this$0:Lcom/android/systemui/pip/phone/PipTouchHandler;

    invoke-static {p1}, Lcom/android/systemui/pip/phone/PipTouchHandler;->access$900(Lcom/android/systemui/pip/phone/PipTouchHandler;)Landroid/content/Context;

    move-result-object p1

    iget-object v1, p0, Lcom/android/systemui/pip/phone/PipTouchHandler$3;->this$0:Lcom/android/systemui/pip/phone/PipTouchHandler;

    .line 701
    invoke-static {v1}, Lcom/android/systemui/pip/phone/PipTouchHandler;->access$900(Lcom/android/systemui/pip/phone/PipTouchHandler;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/pip/phone/PipTouchHandler$3;->this$0:Lcom/android/systemui/pip/phone/PipTouchHandler;

    invoke-static {v2}, Lcom/android/systemui/pip/phone/PipTouchHandler;->access$1000(Lcom/android/systemui/pip/phone/PipTouchHandler;)Landroid/app/IActivityManager;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/systemui/pip/phone/PipUtils;->getTopPinnedActivity(Landroid/content/Context;Landroid/app/IActivityManager;)Landroid/util/Pair;

    move-result-object v1

    .line 700
    invoke-static {p1, v1}, Lcom/android/internal/os/logging/MetricsLoggerWrapper;->logPictureInPictureDismissByDrag(Landroid/content/Context;Landroid/util/Pair;)V

    .line 702
    iget-object p1, p0, Lcom/android/systemui/pip/phone/PipTouchHandler$3;->this$0:Lcom/android/systemui/pip/phone/PipTouchHandler;

    invoke-static {p1}, Lcom/android/systemui/pip/phone/PipTouchHandler;->access$600(Lcom/android/systemui/pip/phone/PipTouchHandler;)Lcom/android/systemui/pip/phone/PipMotionHelper;

    move-result-object p1

    iget-object v1, p0, Lcom/android/systemui/pip/phone/PipTouchHandler$3;->this$0:Lcom/android/systemui/pip/phone/PipTouchHandler;

    invoke-static {v1}, Lcom/android/systemui/pip/phone/PipTouchHandler;->access$600(Lcom/android/systemui/pip/phone/PipTouchHandler;)Lcom/android/systemui/pip/phone/PipMotionHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/pip/phone/PipMotionHelper;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    iget v2, v0, Landroid/graphics/PointF;->x:F

    iget v0, v0, Landroid/graphics/PointF;->y:F

    iget-object p0, p0, Lcom/android/systemui/pip/phone/PipTouchHandler$3;->this$0:Lcom/android/systemui/pip/phone/PipTouchHandler;

    .line 703
    invoke-static {p0}, Lcom/android/systemui/pip/phone/PipTouchHandler;->access$2200(Lcom/android/systemui/pip/phone/PipTouchHandler;)Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    move-result-object p0

    .line 702
    invoke-virtual {p1, v1, v2, v0, p0}, Lcom/android/systemui/pip/phone/PipMotionHelper;->animateDismiss(Landroid/graphics/Rect;FFLandroid/animation/ValueAnimator$AnimatorUpdateListener;)Landroid/graphics/Rect;

    return v3

    .line 708
    :cond_aa
    invoke-virtual {p1}, Lcom/android/systemui/pip/phone/PipTouchState;->isDragging()Z

    move-result p1

    const/4 v6, 0x0

    if-eqz p1, :cond_143

    if-eqz v4, :cond_ca

    if-eqz v2, :cond_ca

    .line 709
    iget-object p1, p0, Lcom/android/systemui/pip/phone/PipTouchHandler$3;->this$0:Lcom/android/systemui/pip/phone/PipTouchHandler;

    invoke-static {p1}, Lcom/android/systemui/pip/phone/PipTouchHandler;->access$1300(Lcom/android/systemui/pip/phone/PipTouchHandler;)Z

    move-result p1

    if-eqz p1, :cond_ca

    iget-boolean p1, p0, Lcom/android/systemui/pip/phone/PipTouchHandler$3;->mStartedOnLeft:Z

    if-eqz p1, :cond_c6

    iget p1, v0, Landroid/graphics/PointF;->x:F

    cmpg-float p1, p1, v5

    goto :goto_ca

    :cond_c6
    iget p1, v0, Landroid/graphics/PointF;->x:F

    cmpl-float p1, p1, v5

    .line 726
    :cond_ca
    :goto_ca
    iget-object p1, p0, Lcom/android/systemui/pip/phone/PipTouchHandler$3;->this$0:Lcom/android/systemui/pip/phone/PipTouchHandler;

    invoke-static {p1}, Lcom/android/systemui/pip/phone/PipTouchHandler;->access$500(Lcom/android/systemui/pip/phone/PipTouchHandler;)Z

    move-result p1

    if-eqz p1, :cond_d7

    .line 729
    iget-object p1, p0, Lcom/android/systemui/pip/phone/PipTouchHandler$3;->this$0:Lcom/android/systemui/pip/phone/PipTouchHandler;

    invoke-static {p1, v1}, Lcom/android/systemui/pip/phone/PipTouchHandler;->access$700(Lcom/android/systemui/pip/phone/PipTouchHandler;Z)V

    .line 733
    :cond_d7
    iget-object p1, p0, Lcom/android/systemui/pip/phone/PipTouchHandler$3;->this$0:Lcom/android/systemui/pip/phone/PipTouchHandler;

    invoke-static {p1}, Lcom/android/systemui/pip/phone/PipTouchHandler;->access$1500(Lcom/android/systemui/pip/phone/PipTouchHandler;)I

    move-result p1

    if-eqz p1, :cond_107

    .line 736
    iget-object p1, p0, Lcom/android/systemui/pip/phone/PipTouchHandler$3;->this$0:Lcom/android/systemui/pip/phone/PipTouchHandler;

    invoke-static {p1}, Lcom/android/systemui/pip/phone/PipTouchHandler;->access$1200(Lcom/android/systemui/pip/phone/PipTouchHandler;)Lcom/android/systemui/pip/phone/PipMenuActivityController;

    move-result-object v8

    iget-object p1, p0, Lcom/android/systemui/pip/phone/PipTouchHandler$3;->this$0:Lcom/android/systemui/pip/phone/PipTouchHandler;

    invoke-static {p1}, Lcom/android/systemui/pip/phone/PipTouchHandler;->access$1500(Lcom/android/systemui/pip/phone/PipTouchHandler;)I

    move-result v9

    iget-object p1, p0, Lcom/android/systemui/pip/phone/PipTouchHandler$3;->this$0:Lcom/android/systemui/pip/phone/PipTouchHandler;

    invoke-static {p1}, Lcom/android/systemui/pip/phone/PipTouchHandler;->access$600(Lcom/android/systemui/pip/phone/PipTouchHandler;)Lcom/android/systemui/pip/phone/PipMotionHelper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/systemui/pip/phone/PipMotionHelper;->getBounds()Landroid/graphics/Rect;

    move-result-object v10

    iget-object p1, p0, Lcom/android/systemui/pip/phone/PipTouchHandler$3;->this$0:Lcom/android/systemui/pip/phone/PipTouchHandler;

    .line 737
    invoke-static {p1}, Lcom/android/systemui/pip/phone/PipTouchHandler;->access$800(Lcom/android/systemui/pip/phone/PipTouchHandler;)Landroid/graphics/Rect;

    move-result-object v11

    const/4 v12, 0x1

    iget-object p1, p0, Lcom/android/systemui/pip/phone/PipTouchHandler$3;->this$0:Lcom/android/systemui/pip/phone/PipTouchHandler;

    invoke-static {p1}, Lcom/android/systemui/pip/phone/PipTouchHandler;->access$1100(Lcom/android/systemui/pip/phone/PipTouchHandler;)Z

    move-result v13

    .line 736
    invoke-virtual/range {v8 .. v13}, Lcom/android/systemui/pip/phone/PipMenuActivityController;->showMenu(ILandroid/graphics/Rect;Landroid/graphics/Rect;ZZ)V

    move-object v12, v6

    goto :goto_10d

    .line 741
    :cond_107
    new-instance p1, Lcom/android/systemui/pip/phone/PipTouchHandler$3$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/pip/phone/PipTouchHandler$3$1;-><init>(Lcom/android/systemui/pip/phone/PipTouchHandler$3;)V

    move-object v12, p1

    :goto_10d
    if-eqz v4, :cond_12c

    .line 750
    iget-object p1, p0, Lcom/android/systemui/pip/phone/PipTouchHandler$3;->this$0:Lcom/android/systemui/pip/phone/PipTouchHandler;

    invoke-static {p1}, Lcom/android/systemui/pip/phone/PipTouchHandler;->access$600(Lcom/android/systemui/pip/phone/PipTouchHandler;)Lcom/android/systemui/pip/phone/PipMotionHelper;

    move-result-object v6

    iget v8, v0, Landroid/graphics/PointF;->x:F

    iget v9, v0, Landroid/graphics/PointF;->y:F

    iget-object p1, p0, Lcom/android/systemui/pip/phone/PipTouchHandler$3;->this$0:Lcom/android/systemui/pip/phone/PipTouchHandler;

    invoke-static {p1}, Lcom/android/systemui/pip/phone/PipTouchHandler;->access$800(Lcom/android/systemui/pip/phone/PipTouchHandler;)Landroid/graphics/Rect;

    move-result-object v10

    iget-object p1, p0, Lcom/android/systemui/pip/phone/PipTouchHandler$3;->this$0:Lcom/android/systemui/pip/phone/PipTouchHandler;

    .line 751
    invoke-static {p1}, Lcom/android/systemui/pip/phone/PipTouchHandler;->access$2200(Lcom/android/systemui/pip/phone/PipTouchHandler;)Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    move-result-object v11

    iget-object v13, p0, Lcom/android/systemui/pip/phone/PipTouchHandler$3;->mStartPosition:Landroid/graphics/Point;

    .line 750
    invoke-virtual/range {v6 .. v13}, Lcom/android/systemui/pip/phone/PipMotionHelper;->flingToSnapTarget(FFFLandroid/graphics/Rect;Landroid/animation/ValueAnimator$AnimatorUpdateListener;Landroid/animation/Animator$AnimatorListener;Landroid/graphics/Point;)Landroid/graphics/Rect;

    goto/16 :goto_1b6

    .line 754
    :cond_12c
    iget-object p1, p0, Lcom/android/systemui/pip/phone/PipTouchHandler$3;->this$0:Lcom/android/systemui/pip/phone/PipTouchHandler;

    invoke-static {p1}, Lcom/android/systemui/pip/phone/PipTouchHandler;->access$600(Lcom/android/systemui/pip/phone/PipTouchHandler;)Lcom/android/systemui/pip/phone/PipMotionHelper;

    move-result-object p1

    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipTouchHandler$3;->this$0:Lcom/android/systemui/pip/phone/PipTouchHandler;

    invoke-static {v0}, Lcom/android/systemui/pip/phone/PipTouchHandler;->access$800(Lcom/android/systemui/pip/phone/PipTouchHandler;)Landroid/graphics/Rect;

    move-result-object v0

    iget-object p0, p0, Lcom/android/systemui/pip/phone/PipTouchHandler$3;->this$0:Lcom/android/systemui/pip/phone/PipTouchHandler;

    invoke-static {p0}, Lcom/android/systemui/pip/phone/PipTouchHandler;->access$2200(Lcom/android/systemui/pip/phone/PipTouchHandler;)Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    move-result-object p0

    invoke-virtual {p1, v0, p0, v12}, Lcom/android/systemui/pip/phone/PipMotionHelper;->animateToClosestSnapTarget(Landroid/graphics/Rect;Landroid/animation/ValueAnimator$AnimatorUpdateListener;Landroid/animation/Animator$AnimatorListener;)Landroid/graphics/Rect;

    goto/16 :goto_1b6

    .line 757
    :cond_143
    iget-object p1, p0, Lcom/android/systemui/pip/phone/PipTouchHandler$3;->this$0:Lcom/android/systemui/pip/phone/PipTouchHandler;

    invoke-static {p1}, Lcom/android/systemui/pip/phone/PipTouchHandler;->access$500(Lcom/android/systemui/pip/phone/PipTouchHandler;)Z

    move-result p1

    if-eqz p1, :cond_160

    .line 759
    iget-object p1, p0, Lcom/android/systemui/pip/phone/PipTouchHandler$3;->this$0:Lcom/android/systemui/pip/phone/PipTouchHandler;

    invoke-static {p1}, Lcom/android/systemui/pip/phone/PipTouchHandler;->access$600(Lcom/android/systemui/pip/phone/PipTouchHandler;)Lcom/android/systemui/pip/phone/PipMotionHelper;

    move-result-object p1

    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipTouchHandler$3;->this$0:Lcom/android/systemui/pip/phone/PipTouchHandler;

    invoke-static {v0}, Lcom/android/systemui/pip/phone/PipTouchHandler;->access$800(Lcom/android/systemui/pip/phone/PipTouchHandler;)Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p1, v0, v6, v6}, Lcom/android/systemui/pip/phone/PipMotionHelper;->animateToClosestSnapTarget(Landroid/graphics/Rect;Landroid/animation/ValueAnimator$AnimatorUpdateListener;Landroid/animation/Animator$AnimatorListener;)Landroid/graphics/Rect;

    .line 761
    iget-object p0, p0, Lcom/android/systemui/pip/phone/PipTouchHandler$3;->this$0:Lcom/android/systemui/pip/phone/PipTouchHandler;

    invoke-static {p0, v1}, Lcom/android/systemui/pip/phone/PipTouchHandler;->access$700(Lcom/android/systemui/pip/phone/PipTouchHandler;Z)V

    goto :goto_1b6

    .line 762
    :cond_160
    iget-object p1, p0, Lcom/android/systemui/pip/phone/PipTouchHandler$3;->this$0:Lcom/android/systemui/pip/phone/PipTouchHandler;

    invoke-static {p1}, Lcom/android/systemui/pip/phone/PipTouchHandler;->access$2300(Lcom/android/systemui/pip/phone/PipTouchHandler;)Lcom/android/systemui/pip/phone/PipTouchState;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/systemui/pip/phone/PipTouchState;->isDoubleTap()Z

    move-result p1

    if-eqz p1, :cond_176

    .line 764
    iget-object p0, p0, Lcom/android/systemui/pip/phone/PipTouchHandler$3;->this$0:Lcom/android/systemui/pip/phone/PipTouchHandler;

    invoke-static {p0}, Lcom/android/systemui/pip/phone/PipTouchHandler;->access$600(Lcom/android/systemui/pip/phone/PipTouchHandler;)Lcom/android/systemui/pip/phone/PipMotionHelper;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/pip/phone/PipMotionHelper;->expandPip()V

    goto :goto_1b6

    .line 765
    :cond_176
    iget-object p1, p0, Lcom/android/systemui/pip/phone/PipTouchHandler$3;->this$0:Lcom/android/systemui/pip/phone/PipTouchHandler;

    invoke-static {p1}, Lcom/android/systemui/pip/phone/PipTouchHandler;->access$1500(Lcom/android/systemui/pip/phone/PipTouchHandler;)I

    move-result p1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1b6

    .line 766
    iget-object p1, p0, Lcom/android/systemui/pip/phone/PipTouchHandler$3;->this$0:Lcom/android/systemui/pip/phone/PipTouchHandler;

    invoke-static {p1}, Lcom/android/systemui/pip/phone/PipTouchHandler;->access$2300(Lcom/android/systemui/pip/phone/PipTouchHandler;)Lcom/android/systemui/pip/phone/PipTouchState;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/systemui/pip/phone/PipTouchState;->isWaitingForDoubleTap()Z

    move-result p1

    if-nez p1, :cond_1ad

    .line 769
    iget-object p1, p0, Lcom/android/systemui/pip/phone/PipTouchHandler$3;->this$0:Lcom/android/systemui/pip/phone/PipTouchHandler;

    invoke-static {p1}, Lcom/android/systemui/pip/phone/PipTouchHandler;->access$1200(Lcom/android/systemui/pip/phone/PipTouchHandler;)Lcom/android/systemui/pip/phone/PipMenuActivityController;

    move-result-object v4

    const/4 v5, 0x2

    iget-object p1, p0, Lcom/android/systemui/pip/phone/PipTouchHandler$3;->this$0:Lcom/android/systemui/pip/phone/PipTouchHandler;

    invoke-static {p1}, Lcom/android/systemui/pip/phone/PipTouchHandler;->access$600(Lcom/android/systemui/pip/phone/PipTouchHandler;)Lcom/android/systemui/pip/phone/PipMotionHelper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/systemui/pip/phone/PipMotionHelper;->getBounds()Landroid/graphics/Rect;

    move-result-object v6

    iget-object p1, p0, Lcom/android/systemui/pip/phone/PipTouchHandler$3;->this$0:Lcom/android/systemui/pip/phone/PipTouchHandler;

    .line 770
    invoke-static {p1}, Lcom/android/systemui/pip/phone/PipTouchHandler;->access$800(Lcom/android/systemui/pip/phone/PipTouchHandler;)Landroid/graphics/Rect;

    move-result-object v7

    const/4 v8, 0x1

    iget-object p0, p0, Lcom/android/systemui/pip/phone/PipTouchHandler$3;->this$0:Lcom/android/systemui/pip/phone/PipTouchHandler;

    invoke-static {p0}, Lcom/android/systemui/pip/phone/PipTouchHandler;->access$1100(Lcom/android/systemui/pip/phone/PipTouchHandler;)Z

    move-result v9

    .line 769
    invoke-virtual/range {v4 .. v9}, Lcom/android/systemui/pip/phone/PipMenuActivityController;->showMenu(ILandroid/graphics/Rect;Landroid/graphics/Rect;ZZ)V

    goto :goto_1b6

    .line 775
    :cond_1ad
    iget-object p0, p0, Lcom/android/systemui/pip/phone/PipTouchHandler$3;->this$0:Lcom/android/systemui/pip/phone/PipTouchHandler;

    invoke-static {p0}, Lcom/android/systemui/pip/phone/PipTouchHandler;->access$2300(Lcom/android/systemui/pip/phone/PipTouchHandler;)Lcom/android/systemui/pip/phone/PipTouchState;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/pip/phone/PipTouchState;->scheduleDoubleTapTimeoutCallback()V

    :cond_1b6
    :goto_1b6
    return v3
.end method
