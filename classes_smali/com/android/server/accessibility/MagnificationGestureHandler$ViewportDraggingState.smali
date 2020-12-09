.class final Lcom/android/server/accessibility/MagnificationGestureHandler$ViewportDraggingState;
.super Ljava/lang/Object;
.source "MagnificationGestureHandler.java"

# interfaces
.implements Lcom/android/server/accessibility/MagnificationGestureHandler$State;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/accessibility/MagnificationGestureHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "ViewportDraggingState"
.end annotation


# instance fields
.field private mLastMoveOutsideMagnifiedRegion:Z

.field mZoomedInBeforeDrag:Z

.field final synthetic this$0:Lcom/android/server/accessibility/MagnificationGestureHandler;


# direct methods
.method constructor <init>(Lcom/android/server/accessibility/MagnificationGestureHandler;)V
    .registers 2

    .line 506
    iput-object p1, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$ViewportDraggingState;->this$0:Lcom/android/server/accessibility/MagnificationGestureHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public clear()V
    .registers 2

    .line 557
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$ViewportDraggingState;->mLastMoveOutsideMagnifiedRegion:Z

    .line 558
    return-void
.end method

.method public onMotionEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
    .registers 10

    .line 514
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p2

    .line 515
    if-eqz p2, :cond_73

    const/4 p3, 0x1

    if-eq p2, p3, :cond_5e

    const/4 v0, 0x2

    if-eq p2, v0, :cond_21

    const/4 p1, 0x3

    if-eq p2, p1, :cond_5e

    const/4 p1, 0x5

    if-eq p2, p1, :cond_16

    const/4 p1, 0x6

    if-eq p2, p1, :cond_73

    goto :goto_72

    .line 517
    :cond_16
    invoke-virtual {p0}, Lcom/android/server/accessibility/MagnificationGestureHandler$ViewportDraggingState;->clear()V

    .line 518
    iget-object p1, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$ViewportDraggingState;->this$0:Lcom/android/server/accessibility/MagnificationGestureHandler;

    iget-object p2, p1, Lcom/android/server/accessibility/MagnificationGestureHandler;->mPanningScalingState:Lcom/android/server/accessibility/MagnificationGestureHandler$PanningScalingState;

    invoke-static {p1, p2}, Lcom/android/server/accessibility/MagnificationGestureHandler;->access$200(Lcom/android/server/accessibility/MagnificationGestureHandler;Lcom/android/server/accessibility/MagnificationGestureHandler$State;)V

    .line 520
    goto :goto_72

    .line 522
    :cond_21
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result p2

    if-ne p2, p3, :cond_56

    .line 525
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    .line 526
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    .line 527
    iget-object p1, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$ViewportDraggingState;->this$0:Lcom/android/server/accessibility/MagnificationGestureHandler;

    iget-object p1, p1, Lcom/android/server/accessibility/MagnificationGestureHandler;->mMagnificationController:Lcom/android/server/accessibility/MagnificationController;

    iget-object p2, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$ViewportDraggingState;->this$0:Lcom/android/server/accessibility/MagnificationGestureHandler;

    .line 528
    invoke-static {p2}, Lcom/android/server/accessibility/MagnificationGestureHandler;->access$300(Lcom/android/server/accessibility/MagnificationGestureHandler;)I

    move-result p2

    .line 527
    invoke-virtual {p1, p2, v2, v3}, Lcom/android/server/accessibility/MagnificationController;->magnificationRegionContains(IFF)Z

    move-result p1

    if-eqz p1, :cond_53

    .line 529
    iget-object p1, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$ViewportDraggingState;->this$0:Lcom/android/server/accessibility/MagnificationGestureHandler;

    iget-object v0, p1, Lcom/android/server/accessibility/MagnificationGestureHandler;->mMagnificationController:Lcom/android/server/accessibility/MagnificationController;

    iget-object p1, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$ViewportDraggingState;->this$0:Lcom/android/server/accessibility/MagnificationGestureHandler;

    invoke-static {p1}, Lcom/android/server/accessibility/MagnificationGestureHandler;->access$300(Lcom/android/server/accessibility/MagnificationGestureHandler;)I

    move-result v1

    iget-boolean v4, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$ViewportDraggingState;->mLastMoveOutsideMagnifiedRegion:Z

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/accessibility/MagnificationController;->setCenter(IFFZI)Z

    .line 532
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$ViewportDraggingState;->mLastMoveOutsideMagnifiedRegion:Z

    goto :goto_55

    .line 534
    :cond_53
    iput-boolean p3, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$ViewportDraggingState;->mLastMoveOutsideMagnifiedRegion:Z

    .line 537
    :goto_55
    goto :goto_72

    .line 523
    :cond_56
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Should have one pointer down."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 541
    :cond_5e
    iget-boolean p1, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$ViewportDraggingState;->mZoomedInBeforeDrag:Z

    if-nez p1, :cond_67

    iget-object p1, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$ViewportDraggingState;->this$0:Lcom/android/server/accessibility/MagnificationGestureHandler;

    invoke-static {p1}, Lcom/android/server/accessibility/MagnificationGestureHandler;->access$400(Lcom/android/server/accessibility/MagnificationGestureHandler;)V

    .line 542
    :cond_67
    invoke-virtual {p0}, Lcom/android/server/accessibility/MagnificationGestureHandler$ViewportDraggingState;->clear()V

    .line 543
    iget-object p1, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$ViewportDraggingState;->this$0:Lcom/android/server/accessibility/MagnificationGestureHandler;

    iget-object p2, p1, Lcom/android/server/accessibility/MagnificationGestureHandler;->mDetectingState:Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingState;

    invoke-static {p1, p2}, Lcom/android/server/accessibility/MagnificationGestureHandler;->access$200(Lcom/android/server/accessibility/MagnificationGestureHandler;Lcom/android/server/accessibility/MagnificationGestureHandler$State;)V

    .line 545
    nop

    .line 553
    :goto_72
    return-void

    .line 549
    :cond_73
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unexpected event type: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 550
    invoke-static {p2}, Landroid/view/MotionEvent;->actionToString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 562
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ViewportDraggingState{mZoomedInBeforeDrag="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$ViewportDraggingState;->mZoomedInBeforeDrag:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mLastMoveOutsideMagnifiedRegion="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$ViewportDraggingState;->mLastMoveOutsideMagnifiedRegion:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
