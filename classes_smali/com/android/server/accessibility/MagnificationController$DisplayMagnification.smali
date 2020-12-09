.class final Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;
.super Ljava/lang/Object;
.source "MagnificationController.java"

# interfaces
.implements Lcom/android/server/wm/WindowManagerInternal$MagnificationCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/accessibility/MagnificationController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "DisplayMagnification"
.end annotation


# static fields
.field private static final INVALID_ID:I = -0x1


# instance fields
.field private final mCurrentMagnificationSpec:Landroid/view/MagnificationSpec;

.field private mDeleteAfterUnregister:Z

.field private final mDisplayId:I

.field private mIdOfLastServiceToMagnify:I

.field private final mMagnificationBounds:Landroid/graphics/Rect;

.field private final mMagnificationRegion:Landroid/graphics/Region;

.field private mRegistered:Z

.field private final mSpecAnimationBridge:Lcom/android/server/accessibility/MagnificationController$SpecAnimationBridge;

.field private final mTempRect:Landroid/graphics/Rect;

.field private final mTempRect1:Landroid/graphics/Rect;

.field private mUnregisterPending:Z

.field final synthetic this$0:Lcom/android/server/accessibility/MagnificationController;


# direct methods
.method constructor <init>(Lcom/android/server/accessibility/MagnificationController;I)V
    .registers 6

    .line 114
    iput-object p1, p0, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;->this$0:Lcom/android/server/accessibility/MagnificationController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    invoke-static {}, Landroid/view/MagnificationSpec;->obtain()Landroid/view/MagnificationSpec;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;->mCurrentMagnificationSpec:Landroid/view/MagnificationSpec;

    .line 96
    invoke-static {}, Landroid/graphics/Region;->obtain()Landroid/graphics/Region;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;->mMagnificationRegion:Landroid/graphics/Region;

    .line 97
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;->mMagnificationBounds:Landroid/graphics/Rect;

    .line 99
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;->mTempRect:Landroid/graphics/Rect;

    .line 100
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;->mTempRect1:Landroid/graphics/Rect;

    .line 112
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;->mIdOfLastServiceToMagnify:I

    .line 115
    iput p2, p0, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;->mDisplayId:I

    .line 116
    new-instance p2, Lcom/android/server/accessibility/MagnificationController$SpecAnimationBridge;

    invoke-static {p1}, Lcom/android/server/accessibility/MagnificationController;->access$000(Lcom/android/server/accessibility/MagnificationController;)Lcom/android/server/accessibility/MagnificationController$ControllerContext;

    move-result-object v0

    invoke-static {p1}, Lcom/android/server/accessibility/MagnificationController;->access$100(Lcom/android/server/accessibility/MagnificationController;)Ljava/lang/Object;

    move-result-object p1

    iget v1, p0, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;->mDisplayId:I

    const/4 v2, 0x0

    invoke-direct {p2, v0, p1, v1, v2}, Lcom/android/server/accessibility/MagnificationController$SpecAnimationBridge;-><init>(Lcom/android/server/accessibility/MagnificationController$ControllerContext;Ljava/lang/Object;ILcom/android/server/accessibility/MagnificationController$1;)V

    iput-object p2, p0, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;->mSpecAnimationBridge:Lcom/android/server/accessibility/MagnificationController$SpecAnimationBridge;

    .line 117
    return-void
.end method


# virtual methods
.method getCenterX()F
    .registers 3
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 198
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;->mMagnificationBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x40000000  # 2.0f

    div-float/2addr v0, v1

    iget-object v1, p0, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;->mMagnificationBounds:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    .line 199
    invoke-virtual {p0}, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;->getOffsetX()F

    move-result v1

    sub-float/2addr v0, v1

    invoke-virtual {p0}, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;->getScale()F

    move-result v1

    div-float/2addr v0, v1

    .line 198
    return v0
.end method

.method getCenterY()F
    .registers 3
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 204
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;->mMagnificationBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x40000000  # 2.0f

    div-float/2addr v0, v1

    iget-object v1, p0, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;->mMagnificationBounds:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    .line 205
    invoke-virtual {p0}, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;->getOffsetY()F

    move-result v1

    sub-float/2addr v0, v1

    invoke-virtual {p0}, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;->getScale()F

    move-result v1

    div-float/2addr v0, v1

    .line 204
    return v0
.end method

.method getIdOfLastServiceToMagnify()I
    .registers 2

    .line 319
    iget v0, p0, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;->mIdOfLastServiceToMagnify:I

    return v0
.end method

.method getMagnificationBounds(Landroid/graphics/Rect;)V
    .registers 3
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 337
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;->mMagnificationBounds:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 338
    return-void
.end method

.method getMagnificationRegion(Landroid/graphics/Region;)V
    .registers 3
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 342
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;->mMagnificationRegion:Landroid/graphics/Region;

    invoke-virtual {p1, v0}, Landroid/graphics/Region;->set(Landroid/graphics/Region;)Z

    .line 343
    return-void
.end method

.method getMagnifiedFrameInContentCoordsLocked(Landroid/graphics/Rect;)V
    .registers 5

    .line 390
    invoke-virtual {p0}, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;->getSentScale()F

    move-result v0

    .line 391
    invoke-virtual {p0}, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;->getSentOffsetX()F

    move-result v1

    .line 392
    invoke-virtual {p0}, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;->getSentOffsetY()F

    move-result v2

    .line 393
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;->getMagnificationBounds(Landroid/graphics/Rect;)V

    .line 394
    neg-float v1, v1

    float-to-int v1, v1

    neg-float v2, v2

    float-to-int v2, v2

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Rect;->offset(II)V

    .line 395
    const/high16 v1, 0x3f800000  # 1.0f

    div-float/2addr v1, v0

    invoke-virtual {p1, v1}, Landroid/graphics/Rect;->scale(F)V

    .line 396
    return-void
.end method

.method getMaxOffsetXLocked()F
    .registers 4

    .line 562
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;->mMagnificationBounds:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    iget-object v1, p0, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;->mMagnificationBounds:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;->mCurrentMagnificationSpec:Landroid/view/MagnificationSpec;

    iget v2, v2, Landroid/view/MagnificationSpec;->scale:F

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    return v0
.end method

.method getMaxOffsetYLocked()F
    .registers 4

    .line 574
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;->mMagnificationBounds:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    iget-object v1, p0, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;->mMagnificationBounds:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;->mCurrentMagnificationSpec:Landroid/view/MagnificationSpec;

    iget v2, v2, Landroid/view/MagnificationSpec;->scale:F

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    return v0
.end method

.method getMinOffsetXLocked()F
    .registers 3

    .line 555
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;->mMagnificationBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    .line 556
    iget-object v1, p0, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;->mMagnificationBounds:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    .line 557
    add-float/2addr v1, v0

    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;->mCurrentMagnificationSpec:Landroid/view/MagnificationSpec;

    iget v0, v0, Landroid/view/MagnificationSpec;->scale:F

    mul-float/2addr v0, v1

    sub-float/2addr v1, v0

    return v1
.end method

.method getMinOffsetYLocked()F
    .registers 3

    .line 567
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;->mMagnificationBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v0, v0

    .line 568
    iget-object v1, p0, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;->mMagnificationBounds:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    .line 569
    add-float/2addr v1, v0

    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;->mCurrentMagnificationSpec:Landroid/view/MagnificationSpec;

    iget v0, v0, Landroid/view/MagnificationSpec;->scale:F

    mul-float/2addr v0, v1

    sub-float/2addr v1, v0

    return v1
.end method

.method getOffsetX()F
    .registers 2

    .line 189
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;->mCurrentMagnificationSpec:Landroid/view/MagnificationSpec;

    iget v0, v0, Landroid/view/MagnificationSpec;->offsetX:F

    return v0
.end method

.method getOffsetY()F
    .registers 2

    .line 193
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;->mCurrentMagnificationSpec:Landroid/view/MagnificationSpec;

    iget v0, v0, Landroid/view/MagnificationSpec;->offsetY:F

    return v0
.end method

.method getScale()F
    .registers 2

    .line 185
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;->mCurrentMagnificationSpec:Landroid/view/MagnificationSpec;

    iget v0, v0, Landroid/view/MagnificationSpec;->scale:F

    return v0
.end method

.method getSentOffsetX()F
    .registers 2

    .line 227
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;->mSpecAnimationBridge:Lcom/android/server/accessibility/MagnificationController$SpecAnimationBridge;

    invoke-static {v0}, Lcom/android/server/accessibility/MagnificationController$SpecAnimationBridge;->access$400(Lcom/android/server/accessibility/MagnificationController$SpecAnimationBridge;)Landroid/view/MagnificationSpec;

    move-result-object v0

    iget v0, v0, Landroid/view/MagnificationSpec;->offsetX:F

    return v0
.end method

.method getSentOffsetY()F
    .registers 2

    .line 238
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;->mSpecAnimationBridge:Lcom/android/server/accessibility/MagnificationController$SpecAnimationBridge;

    invoke-static {v0}, Lcom/android/server/accessibility/MagnificationController$SpecAnimationBridge;->access$400(Lcom/android/server/accessibility/MagnificationController$SpecAnimationBridge;)Landroid/view/MagnificationSpec;

    move-result-object v0

    iget v0, v0, Landroid/view/MagnificationSpec;->offsetY:F

    return v0
.end method

.method getSentScale()F
    .registers 2

    .line 216
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;->mSpecAnimationBridge:Lcom/android/server/accessibility/MagnificationController$SpecAnimationBridge;

    invoke-static {v0}, Lcom/android/server/accessibility/MagnificationController$SpecAnimationBridge;->access$400(Lcom/android/server/accessibility/MagnificationController$SpecAnimationBridge;)Landroid/view/MagnificationSpec;

    move-result-object v0

    iget v0, v0, Landroid/view/MagnificationSpec;->scale:F

    return v0
.end method

.method isMagnifying()Z
    .registers 3

    .line 181
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;->mCurrentMagnificationSpec:Landroid/view/MagnificationSpec;

    iget v0, v0, Landroid/view/MagnificationSpec;->scale:F

    const/high16 v1, 0x3f800000  # 1.0f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method isRegistered()Z
    .registers 2

    .line 177
    iget-boolean v0, p0, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;->mRegistered:Z

    return v0
.end method

.method magnificationRegionContains(FF)Z
    .registers 4
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 332
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;->mMagnificationRegion:Landroid/graphics/Region;

    float-to-int p1, p1

    float-to-int p2, p2

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Region;->contains(II)Z

    move-result p1

    return p1
.end method

.method offsetMagnifiedRegion(FFI)V
    .registers 5
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 517
    iget-boolean v0, p0, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;->mRegistered:Z

    if-nez v0, :cond_5

    .line 518
    return-void

    .line 521
    :cond_5
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;->mCurrentMagnificationSpec:Landroid/view/MagnificationSpec;

    iget v0, v0, Landroid/view/MagnificationSpec;->offsetX:F

    sub-float/2addr v0, p1

    .line 522
    iget-object p1, p0, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;->mCurrentMagnificationSpec:Landroid/view/MagnificationSpec;

    iget p1, p1, Landroid/view/MagnificationSpec;->offsetY:F

    sub-float/2addr p1, p2

    .line 523
    invoke-virtual {p0, v0, p1}, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;->updateCurrentSpecWithOffsetsLocked(FF)Z

    move-result p1

    if-eqz p1, :cond_18

    .line 524
    invoke-virtual {p0}, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;->onMagnificationChangedLocked()V

    .line 526
    :cond_18
    const/4 p1, -0x1

    if-eq p3, p1, :cond_1d

    .line 527
    iput p3, p0, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;->mIdOfLastServiceToMagnify:I

    .line 529
    :cond_1d
    iget-object p1, p0, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;->mCurrentMagnificationSpec:Landroid/view/MagnificationSpec;

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;->sendSpecToAnimation(Landroid/view/MagnificationSpec;Z)V

    .line 530
    return-void
.end method

.method onMagnificationChangedLocked()V
    .registers 8

    .line 323
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;->this$0:Lcom/android/server/accessibility/MagnificationController;

    invoke-static {v0}, Lcom/android/server/accessibility/MagnificationController;->access$000(Lcom/android/server/accessibility/MagnificationController;)Lcom/android/server/accessibility/MagnificationController$ControllerContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/accessibility/MagnificationController$ControllerContext;->getAms()Lcom/android/server/accessibility/AccessibilityManagerService;

    move-result-object v1

    iget v2, p0, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;->mDisplayId:I

    iget-object v3, p0, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;->mMagnificationRegion:Landroid/graphics/Region;

    .line 324
    invoke-virtual {p0}, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;->getScale()F

    move-result v4

    invoke-virtual {p0}, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;->getCenterX()F

    move-result v5

    invoke-virtual {p0}, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;->getCenterY()F

    move-result v6

    .line 323
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/accessibility/AccessibilityManagerService;->notifyMagnificationChanged(ILandroid/graphics/Region;FFF)V

    .line 325
    iget-boolean v0, p0, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;->mUnregisterPending:Z

    if-eqz v0, :cond_2c

    invoke-virtual {p0}, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;->isMagnifying()Z

    move-result v0

    if-nez v0, :cond_2c

    .line 326
    iget-boolean v0, p0, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;->mDeleteAfterUnregister:Z

    invoke-virtual {p0, v0}, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;->unregister(Z)V

    .line 328
    :cond_2c
    return-void
.end method

.method public onMagnificationRegionChanged(Landroid/graphics/Region;)V
    .registers 3

    .line 243
    sget-object v0, Lcom/android/server/accessibility/-$$Lambda$SP6uGJNthzczgi990Xl2SJhDOMs;->INSTANCE:Lcom/android/server/accessibility/-$$Lambda$SP6uGJNthzczgi990Xl2SJhDOMs;

    .line 245
    invoke-static {p1}, Landroid/graphics/Region;->obtain(Landroid/graphics/Region;)Landroid/graphics/Region;

    move-result-object p1

    .line 243
    invoke-static {v0, p0, p1}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 246
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;->this$0:Lcom/android/server/accessibility/MagnificationController;

    invoke-static {v0}, Lcom/android/server/accessibility/MagnificationController;->access$000(Lcom/android/server/accessibility/MagnificationController;)Lcom/android/server/accessibility/MagnificationController$ControllerContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/accessibility/MagnificationController$ControllerContext;->getHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 247
    return-void
.end method

.method public onRectangleOnScreenRequested(IIII)V
    .registers 11

    .line 251
    sget-object v0, Lcom/android/server/accessibility/-$$Lambda$iE9JplYHP8mrOjjadf_Oh8XKSE4;->INSTANCE:Lcom/android/server/accessibility/-$$Lambda$iE9JplYHP8mrOjjadf_Oh8XKSE4;

    .line 253
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 251
    move-object v1, p0

    invoke-static/range {v0 .. v5}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/QuintConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 254
    iget-object p2, p0, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;->this$0:Lcom/android/server/accessibility/MagnificationController;

    invoke-static {p2}, Lcom/android/server/accessibility/MagnificationController;->access$000(Lcom/android/server/accessibility/MagnificationController;)Lcom/android/server/accessibility/MagnificationController$ControllerContext;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/server/accessibility/MagnificationController$ControllerContext;->getHandler()Landroid/os/Handler;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 255
    return-void
.end method

.method public onRotationChanged(I)V
    .registers 5

    .line 260
    sget-object p1, Lcom/android/server/accessibility/-$$Lambda$AbiCM6mjSOPpIPMT9CFGL4UAcKY;->INSTANCE:Lcom/android/server/accessibility/-$$Lambda$AbiCM6mjSOPpIPMT9CFGL4UAcKY;

    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;->this$0:Lcom/android/server/accessibility/MagnificationController;

    iget v1, p0, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;->mDisplayId:I

    .line 261
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 260
    invoke-static {p1, v0, v1, v2}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/TriConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 262
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;->this$0:Lcom/android/server/accessibility/MagnificationController;

    invoke-static {v0}, Lcom/android/server/accessibility/MagnificationController;->access$000(Lcom/android/server/accessibility/MagnificationController;)Lcom/android/server/accessibility/MagnificationController$ControllerContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/accessibility/MagnificationController$ControllerContext;->getHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 263
    return-void
.end method

.method public onUserContextChanged()V
    .registers 5

    .line 267
    sget-object v0, Lcom/android/server/accessibility/-$$Lambda$AbiCM6mjSOPpIPMT9CFGL4UAcKY;->INSTANCE:Lcom/android/server/accessibility/-$$Lambda$AbiCM6mjSOPpIPMT9CFGL4UAcKY;

    iget-object v1, p0, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;->this$0:Lcom/android/server/accessibility/MagnificationController;

    iget v2, p0, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;->mDisplayId:I

    .line 268
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    .line 267
    invoke-static {v0, v1, v2, v3}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/TriConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 269
    iget-object v1, p0, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;->this$0:Lcom/android/server/accessibility/MagnificationController;

    invoke-static {v1}, Lcom/android/server/accessibility/MagnificationController;->access$000(Lcom/android/server/accessibility/MagnificationController;)Lcom/android/server/accessibility/MagnificationController$ControllerContext;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/accessibility/MagnificationController$ControllerContext;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 270
    return-void
.end method

.method register()Z
    .registers 5
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 127
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;->this$0:Lcom/android/server/accessibility/MagnificationController;

    invoke-static {v0}, Lcom/android/server/accessibility/MagnificationController;->access$000(Lcom/android/server/accessibility/MagnificationController;)Lcom/android/server/accessibility/MagnificationController$ControllerContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/accessibility/MagnificationController$ControllerContext;->getWindowManager()Lcom/android/server/wm/WindowManagerInternal;

    move-result-object v0

    iget v1, p0, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;->mDisplayId:I

    invoke-virtual {v0, v1, p0}, Lcom/android/server/wm/WindowManagerInternal;->setMagnificationCallbacks(ILcom/android/server/wm/WindowManagerInternal$MagnificationCallbacks;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;->mRegistered:Z

    .line 129
    iget-boolean v0, p0, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;->mRegistered:Z

    if-nez v0, :cond_31

    .line 130
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "set magnification callbacks fail, displayId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;->mDisplayId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MagnificationController"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    const/4 v0, 0x0

    return v0

    .line 133
    :cond_31
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;->mSpecAnimationBridge:Lcom/android/server/accessibility/MagnificationController$SpecAnimationBridge;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/accessibility/MagnificationController$SpecAnimationBridge;->setEnabled(Z)V

    .line 135
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;->this$0:Lcom/android/server/accessibility/MagnificationController;

    invoke-static {v0}, Lcom/android/server/accessibility/MagnificationController;->access$000(Lcom/android/server/accessibility/MagnificationController;)Lcom/android/server/accessibility/MagnificationController$ControllerContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/accessibility/MagnificationController$ControllerContext;->getWindowManager()Lcom/android/server/wm/WindowManagerInternal;

    move-result-object v0

    iget v2, p0, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;->mDisplayId:I

    iget-object v3, p0, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;->mMagnificationRegion:Landroid/graphics/Region;

    invoke-virtual {v0, v2, v3}, Lcom/android/server/wm/WindowManagerInternal;->getMagnificationRegion(ILandroid/graphics/Region;)V

    .line 137
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;->mMagnificationRegion:Landroid/graphics/Region;

    iget-object v2, p0, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;->mMagnificationBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v2}, Landroid/graphics/Region;->getBounds(Landroid/graphics/Rect;)Z

    .line 138
    return v1
.end method

.method requestRectangleOnScreen(IIII)V
    .registers 10

    .line 346
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;->this$0:Lcom/android/server/accessibility/MagnificationController;

    invoke-static {v0}, Lcom/android/server/accessibility/MagnificationController;->access$100(Lcom/android/server/accessibility/MagnificationController;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 347
    :try_start_7
    iget-object v1, p0, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;->mTempRect:Landroid/graphics/Rect;

    .line 348
    invoke-virtual {p0, v1}, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;->getMagnificationBounds(Landroid/graphics/Rect;)V

    .line 349
    invoke-virtual {v1, p1, p2, p3, p4}, Landroid/graphics/Rect;->intersects(IIII)Z

    move-result v1

    if-nez v1, :cond_14

    .line 350
    monitor-exit v0

    return-void

    .line 353
    :cond_14
    iget-object v1, p0, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;->mTempRect1:Landroid/graphics/Rect;

    .line 354
    invoke-virtual {p0, v1}, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;->getMagnifiedFrameInContentCoordsLocked(Landroid/graphics/Rect;)V

    .line 358
    sub-int v2, p3, p1

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v3

    const/4 v4, 0x0

    if-le v2, v3, :cond_36

    .line 360
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->getLayoutDirectionFromLocale(Ljava/util/Locale;)I

    move-result v2

    .line 361
    if-nez v2, :cond_31

    .line 362
    iget p3, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr p1, p3

    int-to-float p1, p1

    goto :goto_35

    .line 364
    :cond_31
    iget p1, v1, Landroid/graphics/Rect;->right:I

    sub-int/2addr p3, p1

    int-to-float p1, p3

    .line 366
    :goto_35
    goto :goto_49

    :cond_36
    iget v2, v1, Landroid/graphics/Rect;->left:I

    if-ge p1, v2, :cond_3f

    .line 367
    iget p3, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr p1, p3

    int-to-float p1, p1

    goto :goto_49

    .line 368
    :cond_3f
    iget p1, v1, Landroid/graphics/Rect;->right:I

    if-le p3, p1, :cond_48

    .line 369
    iget p1, v1, Landroid/graphics/Rect;->right:I

    sub-int/2addr p3, p1

    int-to-float p1, p3

    goto :goto_49

    .line 371
    :cond_48
    move p1, v4

    .line 374
    :goto_49
    sub-int p3, p4, p2

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v2

    if-le p3, v2, :cond_56

    .line 375
    iget p3, v1, Landroid/graphics/Rect;->top:I

    sub-int/2addr p2, p3

    int-to-float v4, p2

    goto :goto_69

    .line 376
    :cond_56
    iget p3, v1, Landroid/graphics/Rect;->top:I

    if-ge p2, p3, :cond_5f

    .line 377
    iget p3, v1, Landroid/graphics/Rect;->top:I

    sub-int/2addr p2, p3

    int-to-float v4, p2

    goto :goto_69

    .line 378
    :cond_5f
    iget p2, v1, Landroid/graphics/Rect;->bottom:I

    if-le p4, p2, :cond_68

    .line 379
    iget p2, v1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr p4, p2

    int-to-float v4, p4

    goto :goto_69

    .line 381
    :cond_68
    nop

    .line 384
    :goto_69
    invoke-virtual {p0}, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;->getScale()F

    move-result p2

    .line 385
    mul-float/2addr p1, p2

    mul-float/2addr v4, p2

    const/4 p2, -0x1

    invoke-virtual {p0, p1, v4, p2}, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;->offsetMagnifiedRegion(FFI)V

    .line 386
    monitor-exit v0

    .line 387
    return-void

    .line 386
    :catchall_75
    move-exception p1

    monitor-exit v0
    :try_end_77
    .catchall {:try_start_7 .. :try_end_77} :catchall_75

    throw p1
.end method

.method reset(Z)Z
    .registers 5
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 408
    iget-boolean v0, p0, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;->mRegistered:Z

    if-nez v0, :cond_6

    .line 409
    const/4 p1, 0x0

    return p1

    .line 411
    :cond_6
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;->mCurrentMagnificationSpec:Landroid/view/MagnificationSpec;

    .line 412
    invoke-virtual {v0}, Landroid/view/MagnificationSpec;->isNop()Z

    move-result v1

    .line 413
    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_16

    .line 414
    invoke-virtual {v0}, Landroid/view/MagnificationSpec;->clear()V

    .line 415
    invoke-virtual {p0}, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;->onMagnificationChangedLocked()V

    .line 417
    :cond_16
    const/4 v2, -0x1

    iput v2, p0, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;->mIdOfLastServiceToMagnify:I

    .line 418
    invoke-virtual {p0, v0, p1}, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;->sendSpecToAnimation(Landroid/view/MagnificationSpec;Z)V

    .line 419
    return v1
.end method

.method sendSpecToAnimation(Landroid/view/MagnificationSpec;Z)V
    .registers 7

    .line 303
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;->this$0:Lcom/android/server/accessibility/MagnificationController;

    invoke-static {v2}, Lcom/android/server/accessibility/MagnificationController;->access$500(Lcom/android/server/accessibility/MagnificationController;)J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_18

    .line 304
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;->mSpecAnimationBridge:Lcom/android/server/accessibility/MagnificationController$SpecAnimationBridge;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/accessibility/MagnificationController$SpecAnimationBridge;->updateSentSpecMainThread(Landroid/view/MagnificationSpec;Z)V

    goto :goto_31

    .line 306
    :cond_18
    sget-object v0, Lcom/android/server/accessibility/-$$Lambda$CXn5BYHEDMuDgWNKCgknaVOAyJ8;->INSTANCE:Lcom/android/server/accessibility/-$$Lambda$CXn5BYHEDMuDgWNKCgknaVOAyJ8;

    iget-object v1, p0, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;->mSpecAnimationBridge:Lcom/android/server/accessibility/MagnificationController$SpecAnimationBridge;

    .line 308
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    .line 306
    invoke-static {v0, v1, p1, p2}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/TriConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 309
    iget-object p2, p0, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;->this$0:Lcom/android/server/accessibility/MagnificationController;

    invoke-static {p2}, Lcom/android/server/accessibility/MagnificationController;->access$000(Lcom/android/server/accessibility/MagnificationController;)Lcom/android/server/accessibility/MagnificationController$ControllerContext;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/server/accessibility/MagnificationController$ControllerContext;->getHandler()Landroid/os/Handler;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 311
    :goto_31
    return-void
.end method

.method setForceShowMagnifiableBounds(Z)V
    .registers 4
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 400
    iget-boolean v0, p0, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;->mRegistered:Z

    if-eqz v0, :cond_13

    .line 401
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;->this$0:Lcom/android/server/accessibility/MagnificationController;

    invoke-static {v0}, Lcom/android/server/accessibility/MagnificationController;->access$000(Lcom/android/server/accessibility/MagnificationController;)Lcom/android/server/accessibility/MagnificationController$ControllerContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/accessibility/MagnificationController$ControllerContext;->getWindowManager()Lcom/android/server/wm/WindowManagerInternal;

    move-result-object v0

    iget v1, p0, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;->mDisplayId:I

    invoke-virtual {v0, v1, p1}, Lcom/android/server/wm/WindowManagerInternal;->setForceShowMagnifiableBounds(IZ)V

    .line 404
    :cond_13
    return-void
.end method

.method setScale(FFFZI)Z
    .registers 14
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 425
    iget-boolean v0, p0, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;->mRegistered:Z

    if-nez v0, :cond_6

    .line 426
    const/4 p1, 0x0

    return p1

    .line 429
    :cond_6
    const/high16 v0, 0x3f800000  # 1.0f

    const/high16 v1, 0x41000000  # 8.0f

    invoke-static {p1, v0, v1}, Landroid/util/MathUtils;->constrain(FFF)F

    move-result v3

    .line 431
    iget-object p1, p0, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;->mTempRect:Landroid/graphics/Rect;

    .line 432
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;->mMagnificationRegion:Landroid/graphics/Region;

    invoke-virtual {v0, p1}, Landroid/graphics/Region;->getBounds(Landroid/graphics/Rect;)Z

    .line 433
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;->mCurrentMagnificationSpec:Landroid/view/MagnificationSpec;

    .line 434
    iget v1, v0, Landroid/view/MagnificationSpec;->scale:F

    .line 435
    nop

    .line 436
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    const/high16 v4, 0x40000000  # 2.0f

    div-float/2addr v2, v4

    iget v5, v0, Landroid/view/MagnificationSpec;->offsetX:F

    sub-float/2addr v2, v5

    iget v5, p1, Landroid/graphics/Rect;->left:I

    int-to-float v5, v5

    add-float/2addr v2, v5

    div-float/2addr v2, v1

    .line 437
    nop

    .line 438
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v5, v4

    iget v4, v0, Landroid/view/MagnificationSpec;->offsetY:F

    sub-float/2addr v5, v4

    iget p1, p1, Landroid/graphics/Rect;->top:I

    int-to-float p1, p1

    add-float/2addr v5, p1

    div-float/2addr v5, v1

    .line 439
    iget p1, v0, Landroid/view/MagnificationSpec;->offsetX:F

    sub-float/2addr p2, p1

    div-float/2addr p2, v1

    .line 440
    iget p1, v0, Landroid/view/MagnificationSpec;->offsetY:F

    sub-float/2addr p3, p1

    div-float/2addr p3, v1

    .line 441
    sub-float/2addr v2, p2

    div-float/2addr v1, v3

    mul-float/2addr v2, v1

    .line 442
    sub-float/2addr v5, p3

    mul-float/2addr v5, v1

    .line 443
    add-float v4, p2, v2

    .line 444
    add-float/2addr v5, p3

    .line 445
    iput p5, p0, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;->mIdOfLastServiceToMagnify:I

    .line 446
    move-object v2, p0

    move v6, p4

    move v7, p5

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;->setScaleAndCenter(FFFZI)Z

    move-result p1

    return p1
.end method

.method setScaleAndCenter(FFFZI)Z
    .registers 7
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 452
    iget-boolean v0, p0, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;->mRegistered:Z

    if-nez v0, :cond_6

    .line 453
    const/4 p1, 0x0

    return p1

    .line 462
    :cond_6
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;->updateMagnificationSpecLocked(FFF)Z

    move-result p1

    .line 463
    iget-object p2, p0, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;->mCurrentMagnificationSpec:Landroid/view/MagnificationSpec;

    invoke-virtual {p0, p2, p4}, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;->sendSpecToAnimation(Landroid/view/MagnificationSpec;Z)V

    .line 464
    invoke-virtual {p0}, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;->isMagnifying()Z

    move-result p2

    if-eqz p2, :cond_1a

    const/4 p2, -0x1

    if-eq p5, p2, :cond_1a

    .line 465
    iput p5, p0, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;->mIdOfLastServiceToMagnify:I

    .line 467
    :cond_1a
    return p1
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 580
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DisplayMagnification[mCurrentMagnificationSpec="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;->mCurrentMagnificationSpec:Landroid/view/MagnificationSpec;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mMagnificationRegion="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;->mMagnificationRegion:Landroid/graphics/Region;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mMagnificationBounds="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;->mMagnificationBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mDisplayId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;->mDisplayId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mIdOfLastServiceToMagnify="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;->mIdOfLastServiceToMagnify:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mRegistered="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;->mRegistered:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mUnregisterPending="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;->mUnregisterPending:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method unregister(Z)V
    .registers 6
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 151
    iget-boolean v0, p0, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;->mRegistered:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_28

    .line 152
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;->mSpecAnimationBridge:Lcom/android/server/accessibility/MagnificationController$SpecAnimationBridge;

    invoke-virtual {v0, v1}, Lcom/android/server/accessibility/MagnificationController$SpecAnimationBridge;->setEnabled(Z)V

    .line 153
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;->this$0:Lcom/android/server/accessibility/MagnificationController;

    invoke-static {v0}, Lcom/android/server/accessibility/MagnificationController;->access$000(Lcom/android/server/accessibility/MagnificationController;)Lcom/android/server/accessibility/MagnificationController$ControllerContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/accessibility/MagnificationController$ControllerContext;->getWindowManager()Lcom/android/server/wm/WindowManagerInternal;

    move-result-object v0

    iget v2, p0, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;->mDisplayId:I

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/android/server/wm/WindowManagerInternal;->setMagnificationCallbacks(ILcom/android/server/wm/WindowManagerInternal$MagnificationCallbacks;)Z

    .line 155
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;->mMagnificationRegion:Landroid/graphics/Region;

    invoke-virtual {v0}, Landroid/graphics/Region;->setEmpty()V

    .line 156
    iput-boolean v1, p0, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;->mRegistered:Z

    .line 157
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;->this$0:Lcom/android/server/accessibility/MagnificationController;

    iget v2, p0, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;->mDisplayId:I

    invoke-static {v0, v2, p1}, Lcom/android/server/accessibility/MagnificationController;->access$300(Lcom/android/server/accessibility/MagnificationController;IZ)V

    .line 159
    :cond_28
    iput-boolean v1, p0, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;->mUnregisterPending:Z

    .line 160
    return-void
.end method

.method unregisterPending(Z)V
    .registers 2
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 171
    iput-boolean p1, p0, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;->mDeleteAfterUnregister:Z

    .line 172
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;->mUnregisterPending:Z

    .line 173
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;->reset(Z)Z

    .line 174
    return-void
.end method

.method updateCurrentSpecWithOffsetsLocked(FF)Z
    .registers 6

    .line 538
    nop

    .line 539
    nop

    .line 540
    invoke-virtual {p0}, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;->getMinOffsetXLocked()F

    move-result v0

    invoke-virtual {p0}, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;->getMaxOffsetXLocked()F

    move-result v1

    .line 539
    invoke-static {p1, v0, v1}, Landroid/util/MathUtils;->constrain(FFF)F

    move-result p1

    .line 541
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;->mCurrentMagnificationSpec:Landroid/view/MagnificationSpec;

    iget v0, v0, Landroid/view/MagnificationSpec;->offsetX:F

    invoke-static {v0, p1}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1f

    .line 542
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;->mCurrentMagnificationSpec:Landroid/view/MagnificationSpec;

    iput p1, v0, Landroid/view/MagnificationSpec;->offsetX:F

    .line 543
    move p1, v1

    goto :goto_20

    .line 541
    :cond_1f
    const/4 p1, 0x0

    .line 545
    :goto_20
    nop

    .line 546
    invoke-virtual {p0}, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;->getMinOffsetYLocked()F

    move-result v0

    invoke-virtual {p0}, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;->getMaxOffsetYLocked()F

    move-result v2

    .line 545
    invoke-static {p2, v0, v2}, Landroid/util/MathUtils;->constrain(FFF)F

    move-result p2

    .line 547
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;->mCurrentMagnificationSpec:Landroid/view/MagnificationSpec;

    iget v0, v0, Landroid/view/MagnificationSpec;->offsetY:F

    invoke-static {v0, p2}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-eqz v0, :cond_3c

    .line 548
    iget-object p1, p0, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;->mCurrentMagnificationSpec:Landroid/view/MagnificationSpec;

    iput p2, p1, Landroid/view/MagnificationSpec;->offsetY:F

    .line 549
    move p1, v1

    .line 551
    :cond_3c
    return p1
.end method

.method updateMagnificationRegion(Landroid/graphics/Region;)V
    .registers 5

    .line 278
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;->this$0:Lcom/android/server/accessibility/MagnificationController;

    invoke-static {v0}, Lcom/android/server/accessibility/MagnificationController;->access$100(Lcom/android/server/accessibility/MagnificationController;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 279
    :try_start_7
    iget-boolean v1, p0, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;->mRegistered:Z

    if-nez v1, :cond_d

    .line 281
    monitor-exit v0

    return-void

    .line 283
    :cond_d
    iget-object v1, p0, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;->mMagnificationRegion:Landroid/graphics/Region;

    invoke-virtual {v1, p1}, Landroid/graphics/Region;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_38

    .line 284
    iget-object v1, p0, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;->mMagnificationRegion:Landroid/graphics/Region;

    invoke-virtual {v1, p1}, Landroid/graphics/Region;->set(Landroid/graphics/Region;)Z

    .line 285
    iget-object v1, p0, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;->mMagnificationRegion:Landroid/graphics/Region;

    iget-object v2, p0, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;->mMagnificationBounds:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/Region;->getBounds(Landroid/graphics/Rect;)Z

    .line 288
    iget-object v1, p0, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;->mCurrentMagnificationSpec:Landroid/view/MagnificationSpec;

    iget v1, v1, Landroid/view/MagnificationSpec;->offsetX:F

    iget-object v2, p0, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;->mCurrentMagnificationSpec:Landroid/view/MagnificationSpec;

    iget v2, v2, Landroid/view/MagnificationSpec;->offsetY:F

    invoke-virtual {p0, v1, v2}, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;->updateCurrentSpecWithOffsetsLocked(FF)Z

    move-result v1

    if-eqz v1, :cond_35

    .line 290
    iget-object v1, p0, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;->mCurrentMagnificationSpec:Landroid/view/MagnificationSpec;

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;->sendSpecToAnimation(Landroid/view/MagnificationSpec;Z)V

    .line 292
    :cond_35
    invoke-virtual {p0}, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;->onMagnificationChangedLocked()V

    .line 294
    :cond_38
    invoke-virtual {p1}, Landroid/graphics/Region;->recycle()V

    .line 295
    monitor-exit v0

    .line 296
    return-void

    .line 295
    :catchall_3d
    move-exception p1

    monitor-exit v0
    :try_end_3f
    .catchall {:try_start_7 .. :try_end_3f} :catchall_3d

    throw p1
.end method

.method updateMagnificationSpecLocked(FFF)Z
    .registers 8

    .line 483
    invoke-static {p2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 484
    invoke-virtual {p0}, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;->getCenterX()F

    move-result p2

    .line 486
    :cond_a
    invoke-static {p3}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 487
    invoke-virtual {p0}, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;->getCenterY()F

    move-result p3

    .line 489
    :cond_14
    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 490
    invoke-virtual {p0}, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;->getScale()F

    move-result p1

    .line 494
    :cond_1e
    const/4 v0, 0x0

    .line 496
    const/high16 v1, 0x3f800000  # 1.0f

    const/high16 v2, 0x41000000  # 8.0f

    invoke-static {p1, v1, v2}, Landroid/util/MathUtils;->constrain(FFF)F

    move-result p1

    .line 497
    iget-object v1, p0, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;->mCurrentMagnificationSpec:Landroid/view/MagnificationSpec;

    iget v1, v1, Landroid/view/MagnificationSpec;->scale:F

    invoke-static {v1, p1}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-eqz v1, :cond_36

    .line 498
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;->mCurrentMagnificationSpec:Landroid/view/MagnificationSpec;

    iput p1, v0, Landroid/view/MagnificationSpec;->scale:F

    .line 499
    const/4 v0, 0x1

    .line 502
    :cond_36
    iget-object v1, p0, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;->mMagnificationBounds:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x40000000  # 2.0f

    div-float/2addr v1, v2

    iget-object v3, p0, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;->mMagnificationBounds:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    add-float/2addr v1, v3

    mul-float/2addr p2, p1

    sub-float/2addr v1, p2

    .line 504
    iget-object p2, p0, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;->mMagnificationBounds:Landroid/graphics/Rect;

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result p2

    int-to-float p2, p2

    div-float/2addr p2, v2

    iget-object v2, p0, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;->mMagnificationBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    add-float/2addr p2, v2

    mul-float/2addr p3, p1

    sub-float/2addr p2, p3

    .line 506
    invoke-virtual {p0, v1, p2}, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;->updateCurrentSpecWithOffsetsLocked(FF)Z

    move-result p1

    or-int/2addr p1, v0

    .line 508
    if-eqz p1, :cond_62

    .line 509
    invoke-virtual {p0}, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;->onMagnificationChangedLocked()V

    .line 512
    :cond_62
    return p1
.end method
