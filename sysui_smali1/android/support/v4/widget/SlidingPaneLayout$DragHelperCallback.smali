.class Landroid/support/v4/widget/SlidingPaneLayout$DragHelperCallback;
.super Landroid/support/v4/widget/ViewDragHelper$Callback;
.source "SlidingPaneLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/widget/SlidingPaneLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DragHelperCallback"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v4/widget/SlidingPaneLayout;


# direct methods
.method constructor <init>(Landroid/support/v4/widget/SlidingPaneLayout;)V
    .registers 2

    .line 1326
    iput-object p1, p0, Landroid/support/v4/widget/SlidingPaneLayout$DragHelperCallback;->this$0:Landroid/support/v4/widget/SlidingPaneLayout;

    invoke-direct {p0}, Landroid/support/v4/widget/ViewDragHelper$Callback;-><init>()V

    return-void
.end method


# virtual methods
.method public clampViewPositionHorizontal(Landroid/view/View;II)I
    .registers 5

    .line 1393
    iget-object p1, p0, Landroid/support/v4/widget/SlidingPaneLayout$DragHelperCallback;->this$0:Landroid/support/v4/widget/SlidingPaneLayout;

    iget-object p1, p1, Landroid/support/v4/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;

    .line 1396
    iget-object p3, p0, Landroid/support/v4/widget/SlidingPaneLayout$DragHelperCallback;->this$0:Landroid/support/v4/widget/SlidingPaneLayout;

    invoke-virtual {p3}, Landroid/support/v4/widget/SlidingPaneLayout;->isLayoutRtlSupport()Z

    move-result p3

    if-eqz p3, :cond_3a

    .line 1397
    iget-object p3, p0, Landroid/support/v4/widget/SlidingPaneLayout$DragHelperCallback;->this$0:Landroid/support/v4/widget/SlidingPaneLayout;

    invoke-virtual {p3}, Landroid/view/ViewGroup;->getWidth()I

    move-result p3

    iget-object v0, p0, Landroid/support/v4/widget/SlidingPaneLayout$DragHelperCallback;->this$0:Landroid/support/v4/widget/SlidingPaneLayout;

    .line 1398
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v0

    iget p1, p1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v0, p1

    iget-object p1, p0, Landroid/support/v4/widget/SlidingPaneLayout$DragHelperCallback;->this$0:Landroid/support/v4/widget/SlidingPaneLayout;

    iget-object p1, p1, Landroid/support/v4/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p1

    add-int/2addr v0, p1

    sub-int/2addr p3, v0

    .line 1399
    iget-object p0, p0, Landroid/support/v4/widget/SlidingPaneLayout$DragHelperCallback;->this$0:Landroid/support/v4/widget/SlidingPaneLayout;

    iget p0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mSlideRange:I

    sub-int p0, p3, p0

    .line 1400
    invoke-static {p2, p3}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-static {p1, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    goto :goto_50

    .line 1402
    :cond_3a
    iget-object p3, p0, Landroid/support/v4/widget/SlidingPaneLayout$DragHelperCallback;->this$0:Landroid/support/v4/widget/SlidingPaneLayout;

    invoke-virtual {p3}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result p3

    iget p1, p1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr p3, p1

    .line 1403
    iget-object p0, p0, Landroid/support/v4/widget/SlidingPaneLayout$DragHelperCallback;->this$0:Landroid/support/v4/widget/SlidingPaneLayout;

    iget p0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mSlideRange:I

    add-int/2addr p0, p3

    .line 1404
    invoke-static {p2, p3}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-static {p1, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    :goto_50
    return p0
.end method

.method public clampViewPositionVertical(Landroid/view/View;II)I
    .registers 4

    .line 1413
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p0

    return p0
.end method

.method public getViewHorizontalDragRange(Landroid/view/View;)I
    .registers 2

    .line 1388
    iget-object p0, p0, Landroid/support/v4/widget/SlidingPaneLayout$DragHelperCallback;->this$0:Landroid/support/v4/widget/SlidingPaneLayout;

    iget p0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mSlideRange:I

    return p0
.end method

.method public onEdgeDragStarted(II)V
    .registers 3

    .line 1418
    iget-object p0, p0, Landroid/support/v4/widget/SlidingPaneLayout$DragHelperCallback;->this$0:Landroid/support/v4/widget/SlidingPaneLayout;

    iget-object p1, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mDragHelper:Landroid/support/v4/widget/ViewDragHelper;

    iget-object p0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    invoke-virtual {p1, p0, p2}, Landroid/support/v4/widget/ViewDragHelper;->captureChildView(Landroid/view/View;I)V

    return-void
.end method

.method public onViewCaptured(Landroid/view/View;I)V
    .registers 3

    .line 1355
    iget-object p0, p0, Landroid/support/v4/widget/SlidingPaneLayout$DragHelperCallback;->this$0:Landroid/support/v4/widget/SlidingPaneLayout;

    invoke-virtual {p0}, Landroid/support/v4/widget/SlidingPaneLayout;->setAllChildrenVisible()V

    return-void
.end method

.method public onViewDragStateChanged(I)V
    .registers 4

    .line 1340
    iget-object p1, p0, Landroid/support/v4/widget/SlidingPaneLayout$DragHelperCallback;->this$0:Landroid/support/v4/widget/SlidingPaneLayout;

    iget-object p1, p1, Landroid/support/v4/widget/SlidingPaneLayout;->mDragHelper:Landroid/support/v4/widget/ViewDragHelper;

    invoke-virtual {p1}, Landroid/support/v4/widget/ViewDragHelper;->getViewDragState()I

    move-result p1

    if-nez p1, :cond_2f

    .line 1341
    iget-object p1, p0, Landroid/support/v4/widget/SlidingPaneLayout$DragHelperCallback;->this$0:Landroid/support/v4/widget/SlidingPaneLayout;

    iget v0, p1, Landroid/support/v4/widget/SlidingPaneLayout;->mSlideOffset:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_25

    .line 1342
    iget-object v0, p1, Landroid/support/v4/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/support/v4/widget/SlidingPaneLayout;->updateObscuredViewsVisibility(Landroid/view/View;)V

    .line 1343
    iget-object p1, p0, Landroid/support/v4/widget/SlidingPaneLayout$DragHelperCallback;->this$0:Landroid/support/v4/widget/SlidingPaneLayout;

    iget-object v0, p1, Landroid/support/v4/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/support/v4/widget/SlidingPaneLayout;->dispatchOnPanelClosed(Landroid/view/View;)V

    .line 1344
    iget-object p0, p0, Landroid/support/v4/widget/SlidingPaneLayout$DragHelperCallback;->this$0:Landroid/support/v4/widget/SlidingPaneLayout;

    const/4 p1, 0x0

    iput-boolean p1, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mPreservedOpenState:Z

    goto :goto_2f

    .line 1346
    :cond_25
    iget-object v0, p1, Landroid/support/v4/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/support/v4/widget/SlidingPaneLayout;->dispatchOnPanelOpened(Landroid/view/View;)V

    .line 1347
    iget-object p0, p0, Landroid/support/v4/widget/SlidingPaneLayout$DragHelperCallback;->this$0:Landroid/support/v4/widget/SlidingPaneLayout;

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mPreservedOpenState:Z

    :cond_2f
    :goto_2f
    return-void
.end method

.method public onViewPositionChanged(Landroid/view/View;IIII)V
    .registers 6

    .line 1360
    iget-object p1, p0, Landroid/support/v4/widget/SlidingPaneLayout$DragHelperCallback;->this$0:Landroid/support/v4/widget/SlidingPaneLayout;

    invoke-virtual {p1, p2}, Landroid/support/v4/widget/SlidingPaneLayout;->onPanelDragged(I)V

    .line 1361
    iget-object p0, p0, Landroid/support/v4/widget/SlidingPaneLayout$DragHelperCallback;->this$0:Landroid/support/v4/widget/SlidingPaneLayout;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->invalidate()V

    return-void
.end method

.method public onViewReleased(Landroid/view/View;FF)V
    .registers 7

    .line 1366
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p3

    check-cast p3, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;

    .line 1369
    iget-object v0, p0, Landroid/support/v4/widget/SlidingPaneLayout$DragHelperCallback;->this$0:Landroid/support/v4/widget/SlidingPaneLayout;

    invoke-virtual {v0}, Landroid/support/v4/widget/SlidingPaneLayout;->isLayoutRtlSupport()Z

    move-result v0

    const/high16 v1, 0x3f000000  # 0.5f

    const/4 v2, 0x0

    if-eqz v0, :cond_40

    .line 1370
    iget-object v0, p0, Landroid/support/v4/widget/SlidingPaneLayout$DragHelperCallback;->this$0:Landroid/support/v4/widget/SlidingPaneLayout;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v0

    iget p3, p3, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v0, p3

    cmpg-float p3, p2, v2

    if-ltz p3, :cond_2a

    cmpl-float p2, p2, v2

    if-nez p2, :cond_2f

    .line 1371
    iget-object p2, p0, Landroid/support/v4/widget/SlidingPaneLayout$DragHelperCallback;->this$0:Landroid/support/v4/widget/SlidingPaneLayout;

    iget p2, p2, Landroid/support/v4/widget/SlidingPaneLayout;->mSlideOffset:F

    cmpl-float p2, p2, v1

    if-lez p2, :cond_2f

    .line 1372
    :cond_2a
    iget-object p2, p0, Landroid/support/v4/widget/SlidingPaneLayout$DragHelperCallback;->this$0:Landroid/support/v4/widget/SlidingPaneLayout;

    iget p2, p2, Landroid/support/v4/widget/SlidingPaneLayout;->mSlideRange:I

    add-int/2addr v0, p2

    .line 1374
    :cond_2f
    iget-object p2, p0, Landroid/support/v4/widget/SlidingPaneLayout$DragHelperCallback;->this$0:Landroid/support/v4/widget/SlidingPaneLayout;

    iget-object p2, p2, Landroid/support/v4/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result p2

    .line 1375
    iget-object p3, p0, Landroid/support/v4/widget/SlidingPaneLayout$DragHelperCallback;->this$0:Landroid/support/v4/widget/SlidingPaneLayout;

    invoke-virtual {p3}, Landroid/view/ViewGroup;->getWidth()I

    move-result p3

    sub-int/2addr p3, v0

    sub-int/2addr p3, p2

    goto :goto_5c

    .line 1377
    :cond_40
    iget-object v0, p0, Landroid/support/v4/widget/SlidingPaneLayout$DragHelperCallback;->this$0:Landroid/support/v4/widget/SlidingPaneLayout;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v0

    iget p3, p3, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr p3, v0

    cmpl-float p2, p2, v2

    if-gtz p2, :cond_57

    if-nez p2, :cond_5c

    .line 1378
    iget-object p2, p0, Landroid/support/v4/widget/SlidingPaneLayout$DragHelperCallback;->this$0:Landroid/support/v4/widget/SlidingPaneLayout;

    iget p2, p2, Landroid/support/v4/widget/SlidingPaneLayout;->mSlideOffset:F

    cmpl-float p2, p2, v1

    if-lez p2, :cond_5c

    .line 1379
    :cond_57
    iget-object p2, p0, Landroid/support/v4/widget/SlidingPaneLayout$DragHelperCallback;->this$0:Landroid/support/v4/widget/SlidingPaneLayout;

    iget p2, p2, Landroid/support/v4/widget/SlidingPaneLayout;->mSlideRange:I

    add-int/2addr p3, p2

    .line 1382
    :cond_5c
    :goto_5c
    iget-object p2, p0, Landroid/support/v4/widget/SlidingPaneLayout$DragHelperCallback;->this$0:Landroid/support/v4/widget/SlidingPaneLayout;

    iget-object p2, p2, Landroid/support/v4/widget/SlidingPaneLayout;->mDragHelper:Landroid/support/v4/widget/ViewDragHelper;

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p1

    invoke-virtual {p2, p3, p1}, Landroid/support/v4/widget/ViewDragHelper;->settleCapturedViewAt(II)Z

    .line 1383
    iget-object p0, p0, Landroid/support/v4/widget/SlidingPaneLayout$DragHelperCallback;->this$0:Landroid/support/v4/widget/SlidingPaneLayout;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->invalidate()V

    return-void
.end method

.method public tryCaptureView(Landroid/view/View;I)Z
    .registers 3

    .line 1331
    iget-object p0, p0, Landroid/support/v4/widget/SlidingPaneLayout$DragHelperCallback;->this$0:Landroid/support/v4/widget/SlidingPaneLayout;

    iget-boolean p0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mIsUnableToDrag:Z

    if-eqz p0, :cond_8

    const/4 p0, 0x0

    return p0

    .line 1335
    :cond_8
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    check-cast p0, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;

    iget-boolean p0, p0, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->slideable:Z

    return p0
.end method
