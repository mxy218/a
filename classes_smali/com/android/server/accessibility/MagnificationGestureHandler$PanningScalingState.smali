.class final Lcom/android/server/accessibility/MagnificationGestureHandler$PanningScalingState;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "MagnificationGestureHandler.java"

# interfaces
.implements Landroid/view/ScaleGestureDetector$OnScaleGestureListener;
.implements Lcom/android/server/accessibility/MagnificationGestureHandler$State;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/accessibility/MagnificationGestureHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "PanningScalingState"
.end annotation


# instance fields
.field mInitialScaleFactor:F

.field private final mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

.field mScaling:Z

.field final mScalingThreshold:F

.field private final mScrollGestureDetector:Landroid/view/GestureDetector;

.field final synthetic this$0:Lcom/android/server/accessibility/MagnificationGestureHandler;


# direct methods
.method public constructor <init>(Lcom/android/server/accessibility/MagnificationGestureHandler;Landroid/content/Context;)V
    .registers 6

    .line 384
    iput-object p1, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$PanningScalingState;->this$0:Lcom/android/server/accessibility/MagnificationGestureHandler;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    .line 381
    const/high16 p1, -0x40800000  # -1.0f

    iput p1, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$PanningScalingState;->mInitialScaleFactor:F

    .line 385
    new-instance p1, Landroid/util/TypedValue;

    invoke-direct {p1}, Landroid/util/TypedValue;-><init>()V

    .line 386
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/4 v1, 0x0

    const v2, 0x10500b2

    invoke-virtual {v0, v2, p1, v1}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 389
    invoke-virtual {p1}, Landroid/util/TypedValue;->getFloat()F

    move-result p1

    iput p1, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$PanningScalingState;->mScalingThreshold:F

    .line 390
    new-instance p1, Landroid/view/ScaleGestureDetector;

    invoke-static {}, Landroid/os/Handler;->getMain()Landroid/os/Handler;

    move-result-object v0

    invoke-direct {p1, p2, p0, v0}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;Landroid/os/Handler;)V

    iput-object p1, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$PanningScalingState;->mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

    .line 391
    iget-object p1, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$PanningScalingState;->mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

    invoke-virtual {p1, v1}, Landroid/view/ScaleGestureDetector;->setQuickScaleEnabled(Z)V

    .line 392
    new-instance p1, Landroid/view/GestureDetector;

    invoke-static {}, Landroid/os/Handler;->getMain()Landroid/os/Handler;

    move-result-object v0

    invoke-direct {p1, p2, p0, v0}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;Landroid/os/Handler;)V

    iput-object p1, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$PanningScalingState;->mScrollGestureDetector:Landroid/view/GestureDetector;

    .line 393
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/accessibility/MagnificationGestureHandler$PanningScalingState;)Landroid/view/GestureDetector;
    .registers 1

    .line 374
    iget-object p0, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$PanningScalingState;->mScrollGestureDetector:Landroid/view/GestureDetector;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/server/accessibility/MagnificationGestureHandler$PanningScalingState;)Landroid/view/ScaleGestureDetector;
    .registers 1

    .line 374
    iget-object p0, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$PanningScalingState;->mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

    return-object p0
.end method


# virtual methods
.method public clear()V
    .registers 2

    .line 484
    const/high16 v0, -0x40800000  # -1.0f

    iput v0, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$PanningScalingState;->mInitialScaleFactor:F

    .line 485
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$PanningScalingState;->mScaling:Z

    .line 486
    return-void
.end method

.method public onMotionEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
    .registers 4

    .line 397
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p2

    .line 399
    const/4 p3, 0x6

    if-ne p2, p3, :cond_20

    .line 400
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result p1

    const/4 p3, 0x2

    if-ne p1, p3, :cond_20

    iget-object p1, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$PanningScalingState;->this$0:Lcom/android/server/accessibility/MagnificationGestureHandler;

    iget-object p1, p1, Lcom/android/server/accessibility/MagnificationGestureHandler;->mPreviousState:Lcom/android/server/accessibility/MagnificationGestureHandler$State;

    iget-object p3, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$PanningScalingState;->this$0:Lcom/android/server/accessibility/MagnificationGestureHandler;

    iget-object p3, p3, Lcom/android/server/accessibility/MagnificationGestureHandler;->mViewportDraggingState:Lcom/android/server/accessibility/MagnificationGestureHandler$ViewportDraggingState;

    if-ne p1, p3, :cond_20

    .line 403
    iget-object p1, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$PanningScalingState;->this$0:Lcom/android/server/accessibility/MagnificationGestureHandler;

    iget-object p1, p1, Lcom/android/server/accessibility/MagnificationGestureHandler;->mViewportDraggingState:Lcom/android/server/accessibility/MagnificationGestureHandler$ViewportDraggingState;

    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/MagnificationGestureHandler$PanningScalingState;->persistScaleAndTransitionTo(Lcom/android/server/accessibility/MagnificationGestureHandler$State;)V

    goto :goto_2d

    .line 405
    :cond_20
    const/4 p1, 0x1

    if-eq p2, p1, :cond_26

    const/4 p1, 0x3

    if-ne p2, p1, :cond_2d

    .line 407
    :cond_26
    iget-object p1, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$PanningScalingState;->this$0:Lcom/android/server/accessibility/MagnificationGestureHandler;

    iget-object p1, p1, Lcom/android/server/accessibility/MagnificationGestureHandler;->mDetectingState:Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingState;

    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/MagnificationGestureHandler$PanningScalingState;->persistScaleAndTransitionTo(Lcom/android/server/accessibility/MagnificationGestureHandler$State;)V

    .line 410
    :cond_2d
    :goto_2d
    return-void
.end method

.method public onScale(Landroid/view/ScaleGestureDetector;)Z
    .registers 15

    .line 435
    iget-boolean v0, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$PanningScalingState;->mScaling:Z

    const/4 v1, 0x1

    if-nez v0, :cond_2c

    .line 436
    iget v0, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$PanningScalingState;->mInitialScaleFactor:F

    const/4 v2, 0x0

    cmpg-float v0, v0, v2

    const/4 v2, 0x0

    if-gez v0, :cond_14

    .line 437
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getScaleFactor()F

    move-result p1

    iput p1, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$PanningScalingState;->mInitialScaleFactor:F

    .line 438
    return v2

    .line 440
    :cond_14
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getScaleFactor()F

    move-result p1

    iget v0, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$PanningScalingState;->mInitialScaleFactor:F

    sub-float/2addr p1, v0

    .line 441
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iget v0, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$PanningScalingState;->mScalingThreshold:F

    cmpl-float p1, p1, v0

    if-lez p1, :cond_26

    goto :goto_27

    :cond_26
    move v1, v2

    :goto_27
    iput-boolean v1, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$PanningScalingState;->mScaling:Z

    .line 442
    iget-boolean p1, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$PanningScalingState;->mScaling:Z

    return p1

    .line 445
    :cond_2c
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$PanningScalingState;->this$0:Lcom/android/server/accessibility/MagnificationGestureHandler;

    iget-object v0, v0, Lcom/android/server/accessibility/MagnificationGestureHandler;->mMagnificationController:Lcom/android/server/accessibility/MagnificationController;

    iget-object v2, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$PanningScalingState;->this$0:Lcom/android/server/accessibility/MagnificationGestureHandler;

    invoke-static {v2}, Lcom/android/server/accessibility/MagnificationGestureHandler;->access$300(Lcom/android/server/accessibility/MagnificationGestureHandler;)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/android/server/accessibility/MagnificationController;->getScale(I)F

    move-result v0

    .line 446
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getScaleFactor()F

    move-result v2

    mul-float/2addr v2, v0

    .line 451
    const/high16 v3, 0x41000000  # 8.0f

    cmpl-float v4, v2, v3

    const/high16 v5, 0x40000000  # 2.0f

    if-lez v4, :cond_4d

    cmpl-float v4, v2, v0

    if-lez v4, :cond_4d

    .line 453
    move v8, v3

    goto :goto_58

    .line 454
    :cond_4d
    cmpg-float v3, v2, v5

    if-gez v3, :cond_57

    cmpg-float v0, v2, v0

    if-gez v0, :cond_57

    .line 456
    move v8, v5

    goto :goto_58

    .line 461
    :cond_57
    move v8, v2

    .line 464
    :goto_58
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusX()F

    move-result v9

    .line 465
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusY()F

    move-result v10

    .line 467
    iget-object p1, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$PanningScalingState;->this$0:Lcom/android/server/accessibility/MagnificationGestureHandler;

    iget-object v6, p1, Lcom/android/server/accessibility/MagnificationGestureHandler;->mMagnificationController:Lcom/android/server/accessibility/MagnificationController;

    iget-object p1, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$PanningScalingState;->this$0:Lcom/android/server/accessibility/MagnificationGestureHandler;

    invoke-static {p1}, Lcom/android/server/accessibility/MagnificationGestureHandler;->access$300(Lcom/android/server/accessibility/MagnificationGestureHandler;)I

    move-result v7

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual/range {v6 .. v12}, Lcom/android/server/accessibility/MagnificationController;->setScale(IFFFZI)Z

    .line 469
    return v1
.end method

.method public onScaleBegin(Landroid/view/ScaleGestureDetector;)Z
    .registers 3

    .line 474
    iget-object p1, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$PanningScalingState;->this$0:Lcom/android/server/accessibility/MagnificationGestureHandler;

    iget-object p1, p1, Lcom/android/server/accessibility/MagnificationGestureHandler;->mCurrentState:Lcom/android/server/accessibility/MagnificationGestureHandler$State;

    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$PanningScalingState;->this$0:Lcom/android/server/accessibility/MagnificationGestureHandler;

    iget-object v0, v0, Lcom/android/server/accessibility/MagnificationGestureHandler;->mPanningScalingState:Lcom/android/server/accessibility/MagnificationGestureHandler$PanningScalingState;

    if-ne p1, v0, :cond_c

    const/4 p1, 0x1

    goto :goto_d

    :cond_c
    const/4 p1, 0x0

    :goto_d
    return p1
.end method

.method public onScaleEnd(Landroid/view/ScaleGestureDetector;)V
    .registers 2

    .line 479
    invoke-virtual {p0}, Lcom/android/server/accessibility/MagnificationGestureHandler$PanningScalingState;->clear()V

    .line 480
    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .registers 7

    .line 421
    iget-object p1, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$PanningScalingState;->this$0:Lcom/android/server/accessibility/MagnificationGestureHandler;

    iget-object p1, p1, Lcom/android/server/accessibility/MagnificationGestureHandler;->mCurrentState:Lcom/android/server/accessibility/MagnificationGestureHandler$State;

    iget-object p2, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$PanningScalingState;->this$0:Lcom/android/server/accessibility/MagnificationGestureHandler;

    iget-object p2, p2, Lcom/android/server/accessibility/MagnificationGestureHandler;->mPanningScalingState:Lcom/android/server/accessibility/MagnificationGestureHandler$PanningScalingState;

    const/4 v0, 0x1

    if-eq p1, p2, :cond_c

    .line 422
    return v0

    .line 428
    :cond_c
    iget-object p1, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$PanningScalingState;->this$0:Lcom/android/server/accessibility/MagnificationGestureHandler;

    iget-object p1, p1, Lcom/android/server/accessibility/MagnificationGestureHandler;->mMagnificationController:Lcom/android/server/accessibility/MagnificationController;

    iget-object p2, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$PanningScalingState;->this$0:Lcom/android/server/accessibility/MagnificationGestureHandler;

    invoke-static {p2}, Lcom/android/server/accessibility/MagnificationGestureHandler;->access$300(Lcom/android/server/accessibility/MagnificationGestureHandler;)I

    move-result p2

    const/4 v1, 0x0

    invoke-virtual {p1, p2, p3, p4, v1}, Lcom/android/server/accessibility/MagnificationController;->offsetMagnifiedRegion(IFFI)V

    .line 430
    return v0
.end method

.method public persistScaleAndTransitionTo(Lcom/android/server/accessibility/MagnificationGestureHandler$State;)V
    .registers 3

    .line 413
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$PanningScalingState;->this$0:Lcom/android/server/accessibility/MagnificationGestureHandler;

    iget-object v0, v0, Lcom/android/server/accessibility/MagnificationGestureHandler;->mMagnificationController:Lcom/android/server/accessibility/MagnificationController;

    invoke-virtual {v0}, Lcom/android/server/accessibility/MagnificationController;->persistScale()V

    .line 414
    invoke-virtual {p0}, Lcom/android/server/accessibility/MagnificationGestureHandler$PanningScalingState;->clear()V

    .line 415
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$PanningScalingState;->this$0:Lcom/android/server/accessibility/MagnificationGestureHandler;

    invoke-static {v0, p1}, Lcom/android/server/accessibility/MagnificationGestureHandler;->access$200(Lcom/android/server/accessibility/MagnificationGestureHandler;Lcom/android/server/accessibility/MagnificationGestureHandler$State;)V

    .line 416
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 490
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PanningScalingState{mInitialScaleFactor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$PanningScalingState;->mInitialScaleFactor:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", mScaling="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$PanningScalingState;->mScaling:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
