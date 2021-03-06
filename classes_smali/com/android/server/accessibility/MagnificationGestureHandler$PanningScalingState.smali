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
    .registers 7
    .param p1, "this$0"  # Lcom/android/server/accessibility/MagnificationGestureHandler;
    .param p2, "context"  # Landroid/content/Context;

    .line 384
    iput-object p1, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$PanningScalingState;->this$0:Lcom/android/server/accessibility/MagnificationGestureHandler;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    .line 381
    const/high16 v0, -0x40800000  # -1.0f

    iput v0, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$PanningScalingState;->mInitialScaleFactor:F

    .line 385
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 386
    .local v0, "scaleValue":Landroid/util/TypedValue;
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/4 v2, 0x0

    const v3, 0x10500b1

    invoke-virtual {v1, v3, v0, v2}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 389
    invoke-virtual {v0}, Landroid/util/TypedValue;->getFloat()F

    move-result v1

    iput v1, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$PanningScalingState;->mScalingThreshold:F

    .line 390
    new-instance v1, Landroid/view/ScaleGestureDetector;

    invoke-static {}, Landroid/os/Handler;->getMain()Landroid/os/Handler;

    move-result-object v3

    invoke-direct {v1, p2, p0, v3}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$PanningScalingState;->mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

    .line 391
    iget-object v1, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$PanningScalingState;->mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v1, v2}, Landroid/view/ScaleGestureDetector;->setQuickScaleEnabled(Z)V

    .line 392
    new-instance v1, Landroid/view/GestureDetector;

    invoke-static {}, Landroid/os/Handler;->getMain()Landroid/os/Handler;

    move-result-object v2

    invoke-direct {v1, p2, p0, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$PanningScalingState;->mScrollGestureDetector:Landroid/view/GestureDetector;

    .line 393
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/accessibility/MagnificationGestureHandler$PanningScalingState;)Landroid/view/GestureDetector;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/accessibility/MagnificationGestureHandler$PanningScalingState;

    .line 374
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$PanningScalingState;->mScrollGestureDetector:Landroid/view/GestureDetector;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/accessibility/MagnificationGestureHandler$PanningScalingState;)Landroid/view/ScaleGestureDetector;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/accessibility/MagnificationGestureHandler$PanningScalingState;

    .line 374
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$PanningScalingState;->mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

    return-object v0
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
    .registers 7
    .param p1, "event"  # Landroid/view/MotionEvent;
    .param p2, "rawEvent"  # Landroid/view/MotionEvent;
    .param p3, "policyFlags"  # I

    .line 397
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 399
    .local v0, "action":I
    const/4 v1, 0x6

    if-ne v0, v1, :cond_20

    .line 400
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_20

    iget-object v1, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$PanningScalingState;->this$0:Lcom/android/server/accessibility/MagnificationGestureHandler;

    iget-object v1, v1, Lcom/android/server/accessibility/MagnificationGestureHandler;->mPreviousState:Lcom/android/server/accessibility/MagnificationGestureHandler$State;

    iget-object v2, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$PanningScalingState;->this$0:Lcom/android/server/accessibility/MagnificationGestureHandler;

    iget-object v2, v2, Lcom/android/server/accessibility/MagnificationGestureHandler;->mViewportDraggingState:Lcom/android/server/accessibility/MagnificationGestureHandler$ViewportDraggingState;

    if-ne v1, v2, :cond_20

    .line 403
    iget-object v1, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$PanningScalingState;->this$0:Lcom/android/server/accessibility/MagnificationGestureHandler;

    iget-object v1, v1, Lcom/android/server/accessibility/MagnificationGestureHandler;->mViewportDraggingState:Lcom/android/server/accessibility/MagnificationGestureHandler$ViewportDraggingState;

    invoke-virtual {p0, v1}, Lcom/android/server/accessibility/MagnificationGestureHandler$PanningScalingState;->persistScaleAndTransitionTo(Lcom/android/server/accessibility/MagnificationGestureHandler$State;)V

    goto :goto_2d

    .line 405
    :cond_20
    const/4 v1, 0x1

    if-eq v0, v1, :cond_26

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2d

    .line 407
    :cond_26
    iget-object v1, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$PanningScalingState;->this$0:Lcom/android/server/accessibility/MagnificationGestureHandler;

    iget-object v1, v1, Lcom/android/server/accessibility/MagnificationGestureHandler;->mDetectingState:Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingState;

    invoke-virtual {p0, v1}, Lcom/android/server/accessibility/MagnificationGestureHandler$PanningScalingState;->persistScaleAndTransitionTo(Lcom/android/server/accessibility/MagnificationGestureHandler$State;)V

    .line 410
    :cond_2d
    :goto_2d
    return-void
.end method

.method public onScale(Landroid/view/ScaleGestureDetector;)Z
    .registers 15
    .param p1, "detector"  # Landroid/view/ScaleGestureDetector;

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

    move-result v0

    iput v0, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$PanningScalingState;->mInitialScaleFactor:F

    .line 438
    return v2

    .line 440
    :cond_14
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getScaleFactor()F

    move-result v0

    iget v3, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$PanningScalingState;->mInitialScaleFactor:F

    sub-float/2addr v0, v3

    .line 441
    .local v0, "deltaScale":F
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v3

    iget v4, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$PanningScalingState;->mScalingThreshold:F

    cmpl-float v3, v3, v4

    if-lez v3, :cond_26

    goto :goto_27

    :cond_26
    move v1, v2

    :goto_27
    iput-boolean v1, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$PanningScalingState;->mScaling:Z

    .line 442
    iget-boolean v1, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$PanningScalingState;->mScaling:Z

    return v1

    .line 445
    .end local v0  # "deltaScale":F
    :cond_2c
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$PanningScalingState;->this$0:Lcom/android/server/accessibility/MagnificationGestureHandler;

    iget-object v0, v0, Lcom/android/server/accessibility/MagnificationGestureHandler;->mMagnificationController:Lcom/android/server/accessibility/MagnificationController;

    iget-object v2, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$PanningScalingState;->this$0:Lcom/android/server/accessibility/MagnificationGestureHandler;

    invoke-static {v2}, Lcom/android/server/accessibility/MagnificationGestureHandler;->access$300(Lcom/android/server/accessibility/MagnificationGestureHandler;)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/android/server/accessibility/MagnificationController;->getScale(I)F

    move-result v0

    .line 446
    .local v0, "initialScale":F
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getScaleFactor()F

    move-result v2

    mul-float/2addr v2, v0

    .line 451
    .local v2, "targetScale":F
    const/high16 v3, 0x41000000  # 8.0f

    cmpl-float v3, v2, v3

    if-lez v3, :cond_4c

    cmpl-float v3, v2, v0

    if-lez v3, :cond_4c

    .line 453
    const/high16 v3, 0x41000000  # 8.0f

    .local v3, "scale":F
    goto :goto_5a

    .line 454
    .end local v3  # "scale":F
    :cond_4c
    const/high16 v3, 0x40000000  # 2.0f

    cmpg-float v3, v2, v3

    if-gez v3, :cond_59

    cmpg-float v3, v2, v0

    if-gez v3, :cond_59

    .line 456
    const/high16 v3, 0x40000000  # 2.0f

    .restart local v3  # "scale":F
    goto :goto_5a

    .line 461
    .end local v3  # "scale":F
    :cond_59
    move v3, v2

    .line 464
    .restart local v3  # "scale":F
    :goto_5a
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusX()F

    move-result v11

    .line 465
    .local v11, "pivotX":F
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusY()F

    move-result v12

    .line 467
    .local v12, "pivotY":F
    iget-object v4, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$PanningScalingState;->this$0:Lcom/android/server/accessibility/MagnificationGestureHandler;

    iget-object v4, v4, Lcom/android/server/accessibility/MagnificationGestureHandler;->mMagnificationController:Lcom/android/server/accessibility/MagnificationController;

    iget-object v5, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$PanningScalingState;->this$0:Lcom/android/server/accessibility/MagnificationGestureHandler;

    invoke-static {v5}, Lcom/android/server/accessibility/MagnificationGestureHandler;->access$300(Lcom/android/server/accessibility/MagnificationGestureHandler;)I

    move-result v5

    const/4 v9, 0x0

    const/4 v10, 0x0

    move v6, v3

    move v7, v11

    move v8, v12

    invoke-virtual/range {v4 .. v10}, Lcom/android/server/accessibility/MagnificationController;->setScale(IFFFZI)Z

    .line 469
    return v1
.end method

.method public onScaleBegin(Landroid/view/ScaleGestureDetector;)Z
    .registers 4
    .param p1, "detector"  # Landroid/view/ScaleGestureDetector;

    .line 474
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$PanningScalingState;->this$0:Lcom/android/server/accessibility/MagnificationGestureHandler;

    iget-object v0, v0, Lcom/android/server/accessibility/MagnificationGestureHandler;->mCurrentState:Lcom/android/server/accessibility/MagnificationGestureHandler$State;

    iget-object v1, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$PanningScalingState;->this$0:Lcom/android/server/accessibility/MagnificationGestureHandler;

    iget-object v1, v1, Lcom/android/server/accessibility/MagnificationGestureHandler;->mPanningScalingState:Lcom/android/server/accessibility/MagnificationGestureHandler$PanningScalingState;

    if-ne v0, v1, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method public onScaleEnd(Landroid/view/ScaleGestureDetector;)V
    .registers 2
    .param p1, "detector"  # Landroid/view/ScaleGestureDetector;

    .line 479
    invoke-virtual {p0}, Lcom/android/server/accessibility/MagnificationGestureHandler$PanningScalingState;->clear()V

    .line 480
    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .registers 9
    .param p1, "first"  # Landroid/view/MotionEvent;
    .param p2, "second"  # Landroid/view/MotionEvent;
    .param p3, "distanceX"  # F
    .param p4, "distanceY"  # F

    .line 421
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$PanningScalingState;->this$0:Lcom/android/server/accessibility/MagnificationGestureHandler;

    iget-object v0, v0, Lcom/android/server/accessibility/MagnificationGestureHandler;->mCurrentState:Lcom/android/server/accessibility/MagnificationGestureHandler$State;

    iget-object v1, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$PanningScalingState;->this$0:Lcom/android/server/accessibility/MagnificationGestureHandler;

    iget-object v1, v1, Lcom/android/server/accessibility/MagnificationGestureHandler;->mPanningScalingState:Lcom/android/server/accessibility/MagnificationGestureHandler$PanningScalingState;

    const/4 v2, 0x1

    if-eq v0, v1, :cond_c

    .line 422
    return v2

    .line 428
    :cond_c
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$PanningScalingState;->this$0:Lcom/android/server/accessibility/MagnificationGestureHandler;

    iget-object v0, v0, Lcom/android/server/accessibility/MagnificationGestureHandler;->mMagnificationController:Lcom/android/server/accessibility/MagnificationController;

    iget-object v1, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$PanningScalingState;->this$0:Lcom/android/server/accessibility/MagnificationGestureHandler;

    invoke-static {v1}, Lcom/android/server/accessibility/MagnificationGestureHandler;->access$300(Lcom/android/server/accessibility/MagnificationGestureHandler;)I

    move-result v1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, p3, p4, v3}, Lcom/android/server/accessibility/MagnificationController;->offsetMagnifiedRegion(IFFI)V

    .line 430
    return v2
.end method

.method public persistScaleAndTransitionTo(Lcom/android/server/accessibility/MagnificationGestureHandler$State;)V
    .registers 3
    .param p1, "state"  # Lcom/android/server/accessibility/MagnificationGestureHandler$State;

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
