.class Lcom/android/systemui/bubbles/BubbleTouchHandler;
.super Ljava/lang/Object;
.source "BubbleTouchHandler.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field private final mBubbleData:Lcom/android/systemui/bubbles/BubbleData;

.field private mController:Lcom/android/systemui/bubbles/BubbleController;

.field private mInDismissTarget:Z

.field private mMovedEnough:Z

.field private final mStack:Lcom/android/systemui/bubbles/BubbleStackView;

.field private final mTouchDown:Landroid/graphics/PointF;

.field private mTouchSlopSquared:I

.field private mTouchedView:Landroid/view/View;

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field private final mViewPositionOnTouchDown:Landroid/graphics/PointF;


# direct methods
.method constructor <init>(Lcom/android/systemui/bubbles/BubbleStackView;Lcom/android/systemui/bubbles/BubbleData;Landroid/content/Context;)V
    .registers 5

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/bubbles/BubbleTouchHandler;->mTouchDown:Landroid/graphics/PointF;

    .line 57
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/bubbles/BubbleTouchHandler;->mViewPositionOnTouchDown:Landroid/graphics/PointF;

    .line 61
    const-class v0, Lcom/android/systemui/bubbles/BubbleController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/bubbles/BubbleController;

    iput-object v0, p0, Lcom/android/systemui/bubbles/BubbleTouchHandler;->mController:Lcom/android/systemui/bubbles/BubbleController;

    .line 74
    invoke-static {p3}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p3

    invoke-virtual {p3}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result p3

    mul-int/2addr p3, p3

    .line 75
    iput p3, p0, Lcom/android/systemui/bubbles/BubbleTouchHandler;->mTouchSlopSquared:I

    .line 76
    iput-object p2, p0, Lcom/android/systemui/bubbles/BubbleTouchHandler;->mBubbleData:Lcom/android/systemui/bubbles/BubbleData;

    .line 77
    iput-object p1, p0, Lcom/android/systemui/bubbles/BubbleTouchHandler;->mStack:Lcom/android/systemui/bubbles/BubbleStackView;

    return-void
.end method

.method private isFastFlingTowardsDismissTarget(FFFF)Z
    .registers 8

    const/4 v0, 0x0

    cmpg-float v1, p4, v0

    const/4 v2, 0x0

    if-gtz v1, :cond_7

    return v2

    :cond_7
    cmpl-float v0, p3, v0

    if-eqz v0, :cond_18

    div-float p3, p4, p3

    mul-float/2addr p1, p3

    sub-float/2addr p2, p1

    .line 248
    iget-object p1, p0, Lcom/android/systemui/bubbles/BubbleTouchHandler;->mStack:Lcom/android/systemui/bubbles/BubbleStackView;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getHeight()I

    move-result p1

    int-to-float p1, p1

    sub-float/2addr p1, p2

    div-float/2addr p1, p3

    .line 251
    :cond_18
    iget-object p2, p0, Lcom/android/systemui/bubbles/BubbleTouchHandler;->mStack:Lcom/android/systemui/bubbles/BubbleStackView;

    .line 252
    invoke-virtual {p2}, Landroid/widget/FrameLayout;->getWidth()I

    move-result p2

    int-to-float p2, p2

    const/high16 p3, 0x3f000000  # 0.5f

    mul-float/2addr p2, p3

    const/high16 p3, 0x457a0000  # 4000.0f

    cmpl-float p3, p4, p3

    if-lez p3, :cond_3c

    const/high16 p3, 0x40000000  # 2.0f

    div-float/2addr p2, p3

    cmpl-float p3, p1, p2

    if-lez p3, :cond_3c

    .line 253
    iget-object p0, p0, Lcom/android/systemui/bubbles/BubbleTouchHandler;->mStack:Lcom/android/systemui/bubbles/BubbleStackView;

    .line 255
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result p0

    int-to-float p0, p0

    sub-float/2addr p0, p2

    cmpg-float p0, p1, p0

    if-gez p0, :cond_3c

    const/4 v2, 0x1

    :cond_3c
    return v2
.end method

.method private resetForNextGesture()V
    .registers 3

    .line 260
    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleTouchHandler;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    .line 261
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 262
    iput-object v1, p0, Lcom/android/systemui/bubbles/BubbleTouchHandler;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 265
    :cond_a
    iput-object v1, p0, Lcom/android/systemui/bubbles/BubbleTouchHandler;->mTouchedView:Landroid/view/View;

    const/4 v0, 0x0

    .line 266
    iput-boolean v0, p0, Lcom/android/systemui/bubbles/BubbleTouchHandler;->mMovedEnough:Z

    .line 267
    iput-boolean v0, p0, Lcom/android/systemui/bubbles/BubbleTouchHandler;->mInDismissTarget:Z

    .line 269
    iget-object p0, p0, Lcom/android/systemui/bubbles/BubbleTouchHandler;->mStack:Lcom/android/systemui/bubbles/BubbleStackView;

    invoke-virtual {p0}, Lcom/android/systemui/bubbles/BubbleStackView;->onGestureFinished()V

    return-void
.end method

.method private trackMovement(Landroid/view/MotionEvent;)V
    .registers 3

    .line 273
    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleTouchHandler;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_a

    .line 274
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/bubbles/BubbleTouchHandler;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 276
    :cond_a
    iget-object p0, p0, Lcom/android/systemui/bubbles/BubbleTouchHandler;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {p0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    return-void
.end method


# virtual methods
.method public synthetic lambda$onTouch$0$BubbleTouchHandler(ZLjava/lang/String;)V
    .registers 4

    const/4 v0, 0x1

    if-eqz p1, :cond_9

    .line 194
    iget-object p0, p0, Lcom/android/systemui/bubbles/BubbleTouchHandler;->mController:Lcom/android/systemui/bubbles/BubbleController;

    invoke-virtual {p0, v0}, Lcom/android/systemui/bubbles/BubbleController;->dismissStack(I)V

    goto :goto_e

    .line 196
    :cond_9
    iget-object p0, p0, Lcom/android/systemui/bubbles/BubbleTouchHandler;->mController:Lcom/android/systemui/bubbles/BubbleController;

    invoke-virtual {p0, p2, v0}, Lcom/android/systemui/bubbles/BubbleController;->removeBubble(Ljava/lang/String;I)V

    :goto_e
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 22

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    .line 82
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    .line 86
    iget-object v3, v0, Lcom/android/systemui/bubbles/BubbleTouchHandler;->mTouchedView:Landroid/view/View;

    if-nez v3, :cond_14

    .line 87
    iget-object v3, v0, Lcom/android/systemui/bubbles/BubbleTouchHandler;->mStack:Lcom/android/systemui/bubbles/BubbleStackView;

    invoke-virtual {v3, v1}, Lcom/android/systemui/bubbles/BubbleStackView;->getTargetView(Landroid/view/MotionEvent;)Landroid/view/View;

    move-result-object v3

    iput-object v3, v0, Lcom/android/systemui/bubbles/BubbleTouchHandler;->mTouchedView:Landroid/view/View;

    :cond_14
    const/4 v3, 0x4

    const/4 v4, 0x0

    if-eq v2, v3, :cond_1d3

    .line 92
    iget-object v3, v0, Lcom/android/systemui/bubbles/BubbleTouchHandler;->mTouchedView:Landroid/view/View;

    if-nez v3, :cond_1e

    goto/16 :goto_1d3

    .line 98
    :cond_1e
    instance-of v5, v3, Lcom/android/systemui/bubbles/BubbleView;

    if-nez v5, :cond_2e

    instance-of v5, v3, Lcom/android/systemui/bubbles/BubbleStackView;

    if-nez v5, :cond_2e

    instance-of v3, v3, Lcom/android/systemui/bubbles/BubbleFlyoutView;

    if-nez v3, :cond_2e

    .line 103
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/bubbles/BubbleTouchHandler;->resetForNextGesture()V

    return v4

    .line 107
    :cond_2e
    iget-object v3, v0, Lcom/android/systemui/bubbles/BubbleTouchHandler;->mStack:Lcom/android/systemui/bubbles/BubbleStackView;

    iget-object v5, v0, Lcom/android/systemui/bubbles/BubbleTouchHandler;->mTouchedView:Landroid/view/View;

    invoke-virtual {v3, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 108
    iget-object v5, v0, Lcom/android/systemui/bubbles/BubbleTouchHandler;->mStack:Lcom/android/systemui/bubbles/BubbleStackView;

    invoke-virtual {v5}, Lcom/android/systemui/bubbles/BubbleStackView;->getFlyoutView()Landroid/view/View;

    move-result-object v5

    iget-object v6, v0, Lcom/android/systemui/bubbles/BubbleTouchHandler;->mTouchedView:Landroid/view/View;

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    .line 109
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v6

    .line 110
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v7

    .line 113
    iget-object v8, v0, Lcom/android/systemui/bubbles/BubbleTouchHandler;->mViewPositionOnTouchDown:Landroid/graphics/PointF;

    iget v9, v8, Landroid/graphics/PointF;->x:F

    add-float/2addr v9, v6

    iget-object v10, v0, Lcom/android/systemui/bubbles/BubbleTouchHandler;->mTouchDown:Landroid/graphics/PointF;

    iget v11, v10, Landroid/graphics/PointF;->x:F

    sub-float/2addr v9, v11

    .line 114
    iget v8, v8, Landroid/graphics/PointF;->y:F

    add-float/2addr v8, v7

    iget v10, v10, Landroid/graphics/PointF;->y:F

    sub-float/2addr v8, v10

    const/4 v10, 0x1

    if-eqz v2, :cond_192

    const/16 v11, 0x3e8

    if-eq v2, v10, :cond_d2

    const/4 v4, 0x2

    if-eq v2, v4, :cond_6e

    const/4 v1, 0x3

    if-eq v2, v1, :cond_69

    goto/16 :goto_1d2

    .line 170
    :cond_69
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/bubbles/BubbleTouchHandler;->resetForNextGesture()V

    goto/16 :goto_1d2

    .line 135
    :cond_6e
    invoke-direct {v0, v1}, Lcom/android/systemui/bubbles/BubbleTouchHandler;->trackMovement(Landroid/view/MotionEvent;)V

    .line 136
    iget-object v2, v0, Lcom/android/systemui/bubbles/BubbleTouchHandler;->mTouchDown:Landroid/graphics/PointF;

    iget v4, v2, Landroid/graphics/PointF;->x:F

    sub-float/2addr v6, v4

    .line 137
    iget v2, v2, Landroid/graphics/PointF;->y:F

    sub-float/2addr v7, v2

    mul-float v2, v6, v6

    mul-float/2addr v7, v7

    add-float/2addr v2, v7

    .line 139
    iget v4, v0, Lcom/android/systemui/bubbles/BubbleTouchHandler;->mTouchSlopSquared:I

    int-to-float v4, v4

    cmpl-float v2, v2, v4

    if-lez v2, :cond_8a

    iget-boolean v2, v0, Lcom/android/systemui/bubbles/BubbleTouchHandler;->mMovedEnough:Z

    if-nez v2, :cond_8a

    .line 140
    iput-boolean v10, v0, Lcom/android/systemui/bubbles/BubbleTouchHandler;->mMovedEnough:Z

    .line 143
    :cond_8a
    iget-boolean v2, v0, Lcom/android/systemui/bubbles/BubbleTouchHandler;->mMovedEnough:Z

    if-eqz v2, :cond_a5

    if-eqz v3, :cond_96

    .line 145
    iget-object v2, v0, Lcom/android/systemui/bubbles/BubbleTouchHandler;->mStack:Lcom/android/systemui/bubbles/BubbleStackView;

    invoke-virtual {v2, v9, v8}, Lcom/android/systemui/bubbles/BubbleStackView;->onDragged(FF)V

    goto :goto_a5

    :cond_96
    if-eqz v5, :cond_9e

    .line 147
    iget-object v2, v0, Lcom/android/systemui/bubbles/BubbleTouchHandler;->mStack:Lcom/android/systemui/bubbles/BubbleStackView;

    invoke-virtual {v2, v6}, Lcom/android/systemui/bubbles/BubbleStackView;->onFlyoutDragged(F)V

    goto :goto_a5

    .line 149
    :cond_9e
    iget-object v2, v0, Lcom/android/systemui/bubbles/BubbleTouchHandler;->mStack:Lcom/android/systemui/bubbles/BubbleStackView;

    iget-object v3, v0, Lcom/android/systemui/bubbles/BubbleTouchHandler;->mTouchedView:Landroid/view/View;

    invoke-virtual {v2, v3, v9, v8}, Lcom/android/systemui/bubbles/BubbleStackView;->onBubbleDragged(Landroid/view/View;FF)V

    .line 153
    :cond_a5
    :goto_a5
    iget-object v2, v0, Lcom/android/systemui/bubbles/BubbleTouchHandler;->mStack:Lcom/android/systemui/bubbles/BubbleStackView;

    invoke-virtual {v2, v1}, Lcom/android/systemui/bubbles/BubbleStackView;->isInDismissTarget(Landroid/view/MotionEvent;)Z

    move-result v1

    .line 154
    iget-boolean v2, v0, Lcom/android/systemui/bubbles/BubbleTouchHandler;->mInDismissTarget:Z

    if-eq v1, v2, :cond_1d2

    .line 155
    iput-boolean v1, v0, Lcom/android/systemui/bubbles/BubbleTouchHandler;->mInDismissTarget:Z

    .line 157
    iget-object v1, v0, Lcom/android/systemui/bubbles/BubbleTouchHandler;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v1, v11}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 158
    iget-object v1, v0, Lcom/android/systemui/bubbles/BubbleTouchHandler;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v1}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v17

    .line 159
    iget-object v1, v0, Lcom/android/systemui/bubbles/BubbleTouchHandler;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v1}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v18

    if-nez v5, :cond_1d2

    .line 163
    iget-object v12, v0, Lcom/android/systemui/bubbles/BubbleTouchHandler;->mStack:Lcom/android/systemui/bubbles/BubbleStackView;

    iget-object v13, v0, Lcom/android/systemui/bubbles/BubbleTouchHandler;->mTouchedView:Landroid/view/View;

    iget-boolean v14, v0, Lcom/android/systemui/bubbles/BubbleTouchHandler;->mInDismissTarget:Z

    move v15, v9

    move/from16 v16, v8

    invoke-virtual/range {v12 .. v18}, Lcom/android/systemui/bubbles/BubbleStackView;->animateMagnetToDismissTarget(Landroid/view/View;ZFFFF)V

    goto/16 :goto_1d2

    .line 174
    :cond_d2
    invoke-direct {v0, v1}, Lcom/android/systemui/bubbles/BubbleTouchHandler;->trackMovement(Landroid/view/MotionEvent;)V

    .line 175
    iget-object v1, v0, Lcom/android/systemui/bubbles/BubbleTouchHandler;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v1, v11}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 176
    iget-object v1, v0, Lcom/android/systemui/bubbles/BubbleTouchHandler;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v1}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v1

    .line 177
    iget-object v2, v0, Lcom/android/systemui/bubbles/BubbleTouchHandler;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v2}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v2

    if-eqz v3, :cond_f3

    .line 182
    iget-boolean v11, v0, Lcom/android/systemui/bubbles/BubbleTouchHandler;->mInDismissTarget:Z

    if-nez v11, :cond_101

    invoke-direct {v0, v6, v7, v1, v2}, Lcom/android/systemui/bubbles/BubbleTouchHandler;->isFastFlingTowardsDismissTarget(FFFF)Z

    move-result v7

    if-eqz v7, :cond_ff

    goto :goto_101

    .line 184
    :cond_f3
    iget-boolean v7, v0, Lcom/android/systemui/bubbles/BubbleTouchHandler;->mInDismissTarget:Z

    if-nez v7, :cond_101

    const v7, 0x45bb8000  # 6000.0f

    cmpl-float v7, v2, v7

    if-lez v7, :cond_ff

    goto :goto_101

    :cond_ff
    move v7, v4

    goto :goto_102

    :cond_101
    :goto_101
    move v7, v10

    :goto_102
    if-eqz v5, :cond_114

    .line 186
    iget-boolean v11, v0, Lcom/android/systemui/bubbles/BubbleTouchHandler;->mMovedEnough:Z

    if-eqz v11, :cond_114

    .line 187
    iget-object v2, v0, Lcom/android/systemui/bubbles/BubbleTouchHandler;->mStack:Lcom/android/systemui/bubbles/BubbleStackView;

    iget-object v3, v0, Lcom/android/systemui/bubbles/BubbleTouchHandler;->mTouchDown:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->x:F

    sub-float/2addr v6, v3

    invoke-virtual {v2, v6, v1}, Lcom/android/systemui/bubbles/BubbleStackView;->onFlyoutDragFinished(FF)V

    goto/16 :goto_18e

    :cond_114
    if-eqz v7, :cond_12f

    if-eqz v3, :cond_11a

    const/4 v4, 0x0

    goto :goto_122

    .line 190
    :cond_11a
    iget-object v4, v0, Lcom/android/systemui/bubbles/BubbleTouchHandler;->mTouchedView:Landroid/view/View;

    check-cast v4, Lcom/android/systemui/bubbles/BubbleView;

    invoke-virtual {v4}, Lcom/android/systemui/bubbles/BubbleView;->getKey()Ljava/lang/String;

    move-result-object v4

    .line 191
    :goto_122
    iget-object v5, v0, Lcom/android/systemui/bubbles/BubbleTouchHandler;->mStack:Lcom/android/systemui/bubbles/BubbleStackView;

    iget-object v6, v0, Lcom/android/systemui/bubbles/BubbleTouchHandler;->mTouchedView:Landroid/view/View;

    new-instance v7, Lcom/android/systemui/bubbles/-$$Lambda$BubbleTouchHandler$CRI1SYVVWTk0CE6JELaYKVCSdCI;

    invoke-direct {v7, v0, v3, v4}, Lcom/android/systemui/bubbles/-$$Lambda$BubbleTouchHandler$CRI1SYVVWTk0CE6JELaYKVCSdCI;-><init>(Lcom/android/systemui/bubbles/BubbleTouchHandler;ZLjava/lang/String;)V

    invoke-virtual {v5, v6, v1, v2, v7}, Lcom/android/systemui/bubbles/BubbleStackView;->magnetToStackIfNeededThenAnimateDismissal(Landroid/view/View;FFLjava/lang/Runnable;)V

    goto :goto_18e

    :cond_12f
    if-eqz v5, :cond_143

    .line 202
    iget-object v1, v0, Lcom/android/systemui/bubbles/BubbleTouchHandler;->mBubbleData:Lcom/android/systemui/bubbles/BubbleData;

    invoke-virtual {v1}, Lcom/android/systemui/bubbles/BubbleData;->isExpanded()Z

    move-result v1

    if-nez v1, :cond_18e

    iget-boolean v1, v0, Lcom/android/systemui/bubbles/BubbleTouchHandler;->mMovedEnough:Z

    if-nez v1, :cond_18e

    .line 203
    iget-object v1, v0, Lcom/android/systemui/bubbles/BubbleTouchHandler;->mStack:Lcom/android/systemui/bubbles/BubbleStackView;

    invoke-virtual {v1}, Lcom/android/systemui/bubbles/BubbleStackView;->onFlyoutTapped()V

    goto :goto_18e

    .line 205
    :cond_143
    iget-boolean v6, v0, Lcom/android/systemui/bubbles/BubbleTouchHandler;->mMovedEnough:Z

    if-eqz v6, :cond_15d

    if-eqz v3, :cond_14f

    .line 207
    iget-object v3, v0, Lcom/android/systemui/bubbles/BubbleTouchHandler;->mStack:Lcom/android/systemui/bubbles/BubbleStackView;

    invoke-virtual {v3, v9, v8, v1, v2}, Lcom/android/systemui/bubbles/BubbleStackView;->onDragFinish(FFFF)V

    goto :goto_18e

    .line 209
    :cond_14f
    iget-object v12, v0, Lcom/android/systemui/bubbles/BubbleTouchHandler;->mStack:Lcom/android/systemui/bubbles/BubbleStackView;

    iget-object v13, v0, Lcom/android/systemui/bubbles/BubbleTouchHandler;->mTouchedView:Landroid/view/View;

    move v14, v9

    move v15, v8

    move/from16 v16, v1

    move/from16 v17, v2

    invoke-virtual/range {v12 .. v17}, Lcom/android/systemui/bubbles/BubbleStackView;->onBubbleDragFinish(Landroid/view/View;FFFF)V

    goto :goto_18e

    .line 211
    :cond_15d
    iget-object v1, v0, Lcom/android/systemui/bubbles/BubbleTouchHandler;->mTouchedView:Landroid/view/View;

    iget-object v2, v0, Lcom/android/systemui/bubbles/BubbleTouchHandler;->mStack:Lcom/android/systemui/bubbles/BubbleStackView;

    invoke-virtual {v2}, Lcom/android/systemui/bubbles/BubbleStackView;->getExpandedBubbleView()Lcom/android/systemui/bubbles/BubbleView;

    move-result-object v2

    if-ne v1, v2, :cond_16d

    .line 212
    iget-object v1, v0, Lcom/android/systemui/bubbles/BubbleTouchHandler;->mBubbleData:Lcom/android/systemui/bubbles/BubbleData;

    invoke-virtual {v1, v4}, Lcom/android/systemui/bubbles/BubbleData;->setExpanded(Z)V

    goto :goto_18e

    :cond_16d
    if-nez v3, :cond_184

    if-eqz v5, :cond_172

    goto :goto_184

    .line 217
    :cond_172
    iget-object v1, v0, Lcom/android/systemui/bubbles/BubbleTouchHandler;->mTouchedView:Landroid/view/View;

    check-cast v1, Lcom/android/systemui/bubbles/BubbleView;

    invoke-virtual {v1}, Lcom/android/systemui/bubbles/BubbleView;->getKey()Ljava/lang/String;

    move-result-object v1

    .line 218
    iget-object v2, v0, Lcom/android/systemui/bubbles/BubbleTouchHandler;->mBubbleData:Lcom/android/systemui/bubbles/BubbleData;

    invoke-virtual {v2, v1}, Lcom/android/systemui/bubbles/BubbleData;->getBubbleWithKey(Ljava/lang/String;)Lcom/android/systemui/bubbles/Bubble;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/android/systemui/bubbles/BubbleData;->setSelectedBubble(Lcom/android/systemui/bubbles/Bubble;)V

    goto :goto_18e

    .line 215
    :cond_184
    :goto_184
    iget-object v1, v0, Lcom/android/systemui/bubbles/BubbleTouchHandler;->mBubbleData:Lcom/android/systemui/bubbles/BubbleData;

    invoke-virtual {v1}, Lcom/android/systemui/bubbles/BubbleData;->isExpanded()Z

    move-result v2

    xor-int/2addr v2, v10

    invoke-virtual {v1, v2}, Lcom/android/systemui/bubbles/BubbleData;->setExpanded(Z)V

    .line 221
    :cond_18e
    :goto_18e
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/bubbles/BubbleTouchHandler;->resetForNextGesture()V

    goto :goto_1d2

    .line 117
    :cond_192
    invoke-direct {v0, v1}, Lcom/android/systemui/bubbles/BubbleTouchHandler;->trackMovement(Landroid/view/MotionEvent;)V

    .line 119
    iget-object v1, v0, Lcom/android/systemui/bubbles/BubbleTouchHandler;->mTouchDown:Landroid/graphics/PointF;

    invoke-virtual {v1, v6, v7}, Landroid/graphics/PointF;->set(FF)V

    .line 120
    iget-object v1, v0, Lcom/android/systemui/bubbles/BubbleTouchHandler;->mStack:Lcom/android/systemui/bubbles/BubbleStackView;

    invoke-virtual {v1}, Lcom/android/systemui/bubbles/BubbleStackView;->onGestureStart()V

    if-eqz v3, :cond_1b2

    .line 123
    iget-object v1, v0, Lcom/android/systemui/bubbles/BubbleTouchHandler;->mViewPositionOnTouchDown:Landroid/graphics/PointF;

    iget-object v2, v0, Lcom/android/systemui/bubbles/BubbleTouchHandler;->mStack:Lcom/android/systemui/bubbles/BubbleStackView;

    invoke-virtual {v2}, Lcom/android/systemui/bubbles/BubbleStackView;->getStackPosition()Landroid/graphics/PointF;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    .line 124
    iget-object v0, v0, Lcom/android/systemui/bubbles/BubbleTouchHandler;->mStack:Lcom/android/systemui/bubbles/BubbleStackView;

    invoke-virtual {v0}, Lcom/android/systemui/bubbles/BubbleStackView;->onDragStart()V

    goto :goto_1d2

    :cond_1b2
    if-eqz v5, :cond_1ba

    .line 126
    iget-object v0, v0, Lcom/android/systemui/bubbles/BubbleTouchHandler;->mStack:Lcom/android/systemui/bubbles/BubbleStackView;

    invoke-virtual {v0}, Lcom/android/systemui/bubbles/BubbleStackView;->onFlyoutDragStart()V

    goto :goto_1d2

    .line 128
    :cond_1ba
    iget-object v1, v0, Lcom/android/systemui/bubbles/BubbleTouchHandler;->mViewPositionOnTouchDown:Landroid/graphics/PointF;

    iget-object v2, v0, Lcom/android/systemui/bubbles/BubbleTouchHandler;->mTouchedView:Landroid/view/View;

    .line 129
    invoke-virtual {v2}, Landroid/view/View;->getTranslationX()F

    move-result v2

    iget-object v3, v0, Lcom/android/systemui/bubbles/BubbleTouchHandler;->mTouchedView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getTranslationY()F

    move-result v3

    .line 128
    invoke-virtual {v1, v2, v3}, Landroid/graphics/PointF;->set(FF)V

    .line 130
    iget-object v1, v0, Lcom/android/systemui/bubbles/BubbleTouchHandler;->mStack:Lcom/android/systemui/bubbles/BubbleStackView;

    iget-object v0, v0, Lcom/android/systemui/bubbles/BubbleTouchHandler;->mTouchedView:Landroid/view/View;

    invoke-virtual {v1, v0}, Lcom/android/systemui/bubbles/BubbleStackView;->onBubbleDragStart(Landroid/view/View;)V

    :cond_1d2
    :goto_1d2
    return v10

    .line 93
    :cond_1d3
    :goto_1d3
    iget-object v1, v0, Lcom/android/systemui/bubbles/BubbleTouchHandler;->mBubbleData:Lcom/android/systemui/bubbles/BubbleData;

    invoke-virtual {v1, v4}, Lcom/android/systemui/bubbles/BubbleData;->setExpanded(Z)V

    .line 94
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/bubbles/BubbleTouchHandler;->resetForNextGesture()V

    return v4
.end method
