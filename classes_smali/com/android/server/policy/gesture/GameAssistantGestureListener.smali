.class public Lcom/android/server/policy/gesture/GameAssistantGestureListener;
.super Lcom/android/server/policy/gesture/GestureListenerBase;
.source "GameAssistantGestureListener.java"


# instance fields
.field private DEBUG:Ljava/lang/Boolean;

.field private GESTURE_HORIZONTAL_AREA_BOTTOM:I

.field private GESTURE_HORIZONTAL_AREA_TOP:I

.field private GESTURE_LANDSCAPE_AREA_BOTTOM:I

.field private GESTURE_TOUCH_SLOP:I

.field private GESTURE_VALID_LEFT_OFFSET:I

.field private mActionNotpassToUser:Z

.field private mDownPosX:F

.field private mDownPosY:F

.field private mLandscapeSquaredSlop:F

.field private mRotation:I

.field private mSquaredSlop:F


# direct methods
.method public constructor <init>(Lcom/android/server/policy/gesture/SystemGesture;Landroid/content/Context;)V
    .registers 5
    .param p1, "SystemGesture"  # Lcom/android/server/policy/gesture/SystemGesture;
    .param p2, "context"  # Landroid/content/Context;

    .line 36
    invoke-direct {p0, p1, p2}, Lcom/android/server/policy/gesture/GestureListenerBase;-><init>(Lcom/android/server/policy/gesture/SystemGesture;Landroid/content/Context;)V

    .line 22
    const/16 v0, 0x1e

    iput v0, p0, Lcom/android/server/policy/gesture/GameAssistantGestureListener;->GESTURE_VALID_LEFT_OFFSET:I

    .line 23
    iput v0, p0, Lcom/android/server/policy/gesture/GameAssistantGestureListener;->GESTURE_TOUCH_SLOP:I

    .line 24
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/policy/gesture/GameAssistantGestureListener;->mActionNotpassToUser:Z

    .line 25
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/policy/gesture/GameAssistantGestureListener;->mDownPosX:F

    .line 26
    iput v0, p0, Lcom/android/server/policy/gesture/GameAssistantGestureListener;->mDownPosY:F

    .line 27
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/policy/gesture/GameAssistantGestureListener;->DEBUG:Ljava/lang/Boolean;

    .line 33
    iput v0, p0, Lcom/android/server/policy/gesture/GameAssistantGestureListener;->mRotation:I

    .line 37
    return-void
.end method

.method private checkGameAssistantGesture(Landroid/view/MotionEvent;)V
    .registers 7
    .param p1, "event"  # Landroid/view/MotionEvent;

    .line 151
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/server/policy/gesture/GameAssistantGestureListener;->mMotionDownTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x12c

    cmp-long v0, v0, v2

    if-lez v0, :cond_19

    .line 152
    iget-object v0, p0, Lcom/android/server/policy/gesture/GameAssistantGestureListener;->TAG:Ljava/lang/String;

    const-string v1, "Game assistant gesture time out"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    sget-object v0, Lcom/android/server/policy/gesture/GestureListenerBase$GestureState;->CANCELED:Lcom/android/server/policy/gesture/GestureListenerBase$GestureState;

    iput-object v0, p0, Lcom/android/server/policy/gesture/GameAssistantGestureListener;->mGestureState:Lcom/android/server/policy/gesture/GestureListenerBase$GestureState;

    .line 154
    return-void

    .line 157
    :cond_19
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iget v1, p0, Lcom/android/server/policy/gesture/GameAssistantGestureListener;->mDownPosX:F

    sub-float/2addr v0, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    iget v2, p0, Lcom/android/server/policy/gesture/GameAssistantGestureListener;->mDownPosY:F

    sub-float/2addr v1, v2

    invoke-static {v0, v1}, Lcom/android/server/policy/gesture/GameAssistantGestureListener;->squaredHypot(FF)F

    move-result v0

    .line 158
    .local v0, "squaredDistance":F
    iget v1, p0, Lcom/android/server/policy/gesture/GameAssistantGestureListener;->mRotation:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_37

    const/4 v2, 0x3

    if-ne v1, v2, :cond_34

    goto :goto_37

    :cond_34
    iget v1, p0, Lcom/android/server/policy/gesture/GameAssistantGestureListener;->mSquaredSlop:F

    goto :goto_39

    :cond_37
    :goto_37
    iget v1, p0, Lcom/android/server/policy/gesture/GameAssistantGestureListener;->mLandscapeSquaredSlop:F

    .line 159
    .local v1, "squareSlop":F
    :goto_39
    cmpl-float v2, v0, v1

    if-lez v2, :cond_69

    .line 160
    iget v2, p0, Lcom/android/server/policy/gesture/GameAssistantGestureListener;->mDownPosX:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v3

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    iget v3, p0, Lcom/android/server/policy/gesture/GameAssistantGestureListener;->mDownPosY:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v4

    sub-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    invoke-direct {p0, v2, v3}, Lcom/android/server/policy/gesture/GameAssistantGestureListener;->isValidSideGestureAngle(FF)Z

    move-result v2

    if-eqz v2, :cond_5e

    .line 161
    sget-object v2, Lcom/android/server/policy/gesture/GestureListenerBase$GestureState;->TRIGGERED:Lcom/android/server/policy/gesture/GestureListenerBase$GestureState;

    iput-object v2, p0, Lcom/android/server/policy/gesture/GameAssistantGestureListener;->mGestureState:Lcom/android/server/policy/gesture/GestureListenerBase$GestureState;

    goto :goto_69

    .line 163
    :cond_5e
    iget-object v2, p0, Lcom/android/server/policy/gesture/GameAssistantGestureListener;->TAG:Ljava/lang/String;

    const-string v3, "Game assistant gesture canceled"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    sget-object v2, Lcom/android/server/policy/gesture/GestureListenerBase$GestureState;->CANCELED:Lcom/android/server/policy/gesture/GestureListenerBase$GestureState;

    iput-object v2, p0, Lcom/android/server/policy/gesture/GameAssistantGestureListener;->mGestureState:Lcom/android/server/policy/gesture/GestureListenerBase$GestureState;

    .line 167
    :cond_69
    :goto_69
    return-void
.end method

.method private handleActionPassTouser(ILandroid/view/MotionEvent;)I
    .registers 6
    .param p1, "result"  # I
    .param p2, "event"  # Landroid/view/MotionEvent;

    .line 122
    move v0, p1

    .line 123
    .local v0, "tempResult":I
    iget-object v1, p0, Lcom/android/server/policy/gesture/GameAssistantGestureListener;->mGestureState:Lcom/android/server/policy/gesture/GestureListenerBase$GestureState;

    sget-object v2, Lcom/android/server/policy/gesture/GestureListenerBase$GestureState;->TRIGGERED:Lcom/android/server/policy/gesture/GestureListenerBase$GestureState;

    if-ne v1, v2, :cond_9

    const/4 v1, 0x1

    goto :goto_a

    :cond_9
    const/4 v1, 0x0

    :goto_a
    iput-boolean v1, p0, Lcom/android/server/policy/gesture/GameAssistantGestureListener;->mActionNotpassToUser:Z

    .line 124
    iget-boolean v1, p0, Lcom/android/server/policy/gesture/GameAssistantGestureListener;->mActionNotpassToUser:Z

    if-eqz v1, :cond_13

    .line 125
    and-int/lit8 v0, v0, -0x2

    goto :goto_14

    .line 127
    :cond_13
    const/4 v0, 0x1

    .line 129
    :goto_14
    return v0
.end method

.method private isInGameAssistantGestureArea(Landroid/view/MotionEvent;)Z
    .registers 7
    .param p1, "event"  # Landroid/view/MotionEvent;

    .line 133
    iget-object v0, p0, Lcom/android/server/policy/gesture/GameAssistantGestureListener;->mDisplay:Landroid/view/Display;

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    .line 134
    .local v0, "rot":I
    iput v0, p0, Lcom/android/server/policy/gesture/GameAssistantGestureListener;->mRotation:I

    .line 135
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_2d

    if-eq v0, v2, :cond_15

    const/4 v3, 0x2

    if-eq v0, v3, :cond_2d

    const/4 v3, 0x3

    if-eq v0, v3, :cond_15

    .line 146
    return v1

    .line 141
    :cond_15
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v3

    iget v4, p0, Lcom/android/server/policy/gesture/GameAssistantGestureListener;->GESTURE_VALID_LEFT_OFFSET:I

    int-to-float v4, v4

    cmpg-float v3, v3, v4

    if-gez v3, :cond_2c

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v3

    iget v4, p0, Lcom/android/server/policy/gesture/GameAssistantGestureListener;->GESTURE_LANDSCAPE_AREA_BOTTOM:I

    int-to-float v4, v4

    cmpg-float v3, v3, v4

    if-gez v3, :cond_2c

    move v1, v2

    :cond_2c
    return v1

    .line 138
    :cond_2d
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v3

    iget v4, p0, Lcom/android/server/policy/gesture/GameAssistantGestureListener;->GESTURE_VALID_LEFT_OFFSET:I

    int-to-float v4, v4

    cmpg-float v3, v3, v4

    if-gez v3, :cond_44

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v3

    iget v4, p0, Lcom/android/server/policy/gesture/GameAssistantGestureListener;->GESTURE_HORIZONTAL_AREA_BOTTOM:I

    int-to-float v4, v4

    cmpg-float v3, v3, v4

    if-gez v3, :cond_44

    move v1, v2

    :cond_44
    return v1
.end method

.method private isValidSideGestureAngle(FF)Z
    .registers 7
    .param p1, "absDeltaX"  # F
    .param p2, "absDeltaY"  # F

    .line 196
    float-to-double v0, p2

    float-to-double v2, p1

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v0

    double-to-float v0, v0

    .line 200
    .local v0, "angle":F
    const/high16 v1, 0x42340000  # 45.0f

    cmpg-float v1, v0, v1

    if-gez v1, :cond_13

    const/4 v1, 0x1

    goto :goto_14

    :cond_13
    const/4 v1, 0x0

    :goto_14
    return v1
.end method

.method public static squaredHypot(FF)F
    .registers 4
    .param p0, "x"  # F
    .param p1, "y"  # F

    .line 204
    mul-float v0, p0, p0

    mul-float v1, p1, p1

    add-float/2addr v0, v1

    return v0
.end method


# virtual methods
.method public dispatcherWaitToCheckSystemGesture(Landroid/view/MotionEvent;I)Z
    .registers 4
    .param p1, "event"  # Landroid/view/MotionEvent;
    .param p2, "displayId"  # I

    .line 186
    iget v0, p0, Lcom/android/server/policy/gesture/GameAssistantGestureListener;->mGesturePreTriggerBehavior:I

    if-nez v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method protected getSupportGestureType()I
    .registers 2

    .line 176
    const/4 v0, 0x7

    return v0
.end method

.method public interceptMotionBeforeDispatching(Landroid/view/MotionEvent;II)J
    .registers 7
    .param p1, "event"  # Landroid/view/MotionEvent;
    .param p2, "policyFlags"  # I
    .param p3, "displayId"  # I

    .line 191
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lcom/android/server/policy/gesture/GameAssistantGestureListener;->handleActionPassTouser(ILandroid/view/MotionEvent;)I

    move-result v0

    .line 192
    .local v0, "result":I
    and-int/lit8 v1, v0, 0x1

    if-eqz v1, :cond_c

    const-wide/16 v1, 0x0

    goto :goto_e

    :cond_c
    const-wide/16 v1, -0x1

    :goto_e
    return-wide v1
.end method

.method public interceptMotionBeforeQueueing(Landroid/view/MotionEvent;I)I
    .registers 8
    .param p1, "event"  # Landroid/view/MotionEvent;
    .param p2, "policyFlags"  # I

    .line 68
    invoke-super {p0, p1, p2}, Lcom/android/server/policy/gesture/GestureListenerBase;->interceptMotionBeforeQueueing(Landroid/view/MotionEvent;I)I

    .line 69
    const/4 v0, 0x1

    .line 70
    .local v0, "result":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    const/4 v2, -0x1

    if-eqz v1, :cond_84

    const/4 v3, 0x1

    if-eq v1, v3, :cond_48

    const/4 v4, 0x2

    if-eq v1, v4, :cond_2c

    const/4 v4, 0x3

    if-eq v1, v4, :cond_48

    const/4 v2, 0x5

    if-eq v1, v2, :cond_19

    goto/16 :goto_f8

    .line 112
    :cond_19
    iget-object v1, p0, Lcom/android/server/policy/gesture/GameAssistantGestureListener;->mGestureState:Lcom/android/server/policy/gesture/GestureListenerBase$GestureState;

    sget-object v2, Lcom/android/server/policy/gesture/GestureListenerBase$GestureState;->TRIGGERED:Lcom/android/server/policy/gesture/GestureListenerBase$GestureState;

    if-eq v1, v2, :cond_f8

    .line 113
    iget-object v1, p0, Lcom/android/server/policy/gesture/GameAssistantGestureListener;->TAG:Ljava/lang/String;

    const-string v2, "Only support one finger gesture to avoid misoperation"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    sget-object v1, Lcom/android/server/policy/gesture/GestureListenerBase$GestureState;->CANCELED:Lcom/android/server/policy/gesture/GestureListenerBase$GestureState;

    iput-object v1, p0, Lcom/android/server/policy/gesture/GameAssistantGestureListener;->mGestureState:Lcom/android/server/policy/gesture/GestureListenerBase$GestureState;

    goto/16 :goto_f8

    .line 89
    :cond_2c
    iget-object v1, p0, Lcom/android/server/policy/gesture/GameAssistantGestureListener;->mGestureState:Lcom/android/server/policy/gesture/GestureListenerBase$GestureState;

    sget-object v2, Lcom/android/server/policy/gesture/GestureListenerBase$GestureState;->PENDING_CHECK:Lcom/android/server/policy/gesture/GestureListenerBase$GestureState;

    if-ne v1, v2, :cond_39

    .line 90
    invoke-direct {p0, p1}, Lcom/android/server/policy/gesture/GameAssistantGestureListener;->checkGameAssistantGesture(Landroid/view/MotionEvent;)V

    .line 91
    invoke-direct {p0, v0, p1}, Lcom/android/server/policy/gesture/GameAssistantGestureListener;->handleActionPassTouser(ILandroid/view/MotionEvent;)I

    move-result v0

    .line 93
    :cond_39
    iget-object v1, p0, Lcom/android/server/policy/gesture/GameAssistantGestureListener;->mGestureState:Lcom/android/server/policy/gesture/GestureListenerBase$GestureState;

    sget-object v2, Lcom/android/server/policy/gesture/GestureListenerBase$GestureState;->TRIGGERED:Lcom/android/server/policy/gesture/GestureListenerBase$GestureState;

    if-ne v1, v2, :cond_f8

    .line 94
    invoke-virtual {p0, p1}, Lcom/android/server/policy/gesture/GameAssistantGestureListener;->notifyGestureTriggered(Landroid/view/MotionEvent;)V

    .line 95
    invoke-direct {p0, v0, p1}, Lcom/android/server/policy/gesture/GameAssistantGestureListener;->handleActionPassTouser(ILandroid/view/MotionEvent;)I

    move-result v0

    goto/16 :goto_f8

    .line 100
    :cond_48
    iget-object v1, p0, Lcom/android/server/policy/gesture/GameAssistantGestureListener;->mGestureState:Lcom/android/server/policy/gesture/GestureListenerBase$GestureState;

    sget-object v4, Lcom/android/server/policy/gesture/GestureListenerBase$GestureState;->PENDING_CHECK:Lcom/android/server/policy/gesture/GestureListenerBase$GestureState;

    if-eq v1, v4, :cond_5a

    iget-object v1, p0, Lcom/android/server/policy/gesture/GameAssistantGestureListener;->mGestureState:Lcom/android/server/policy/gesture/GestureListenerBase$GestureState;

    sget-object v4, Lcom/android/server/policy/gesture/GestureListenerBase$GestureState;->TRIGGERED:Lcom/android/server/policy/gesture/GestureListenerBase$GestureState;

    if-eq v1, v4, :cond_5a

    iget-object v1, p0, Lcom/android/server/policy/gesture/GameAssistantGestureListener;->mGestureState:Lcom/android/server/policy/gesture/GestureListenerBase$GestureState;

    sget-object v4, Lcom/android/server/policy/gesture/GestureListenerBase$GestureState;->CANCELED:Lcom/android/server/policy/gesture/GestureListenerBase$GestureState;

    if-ne v1, v4, :cond_7d

    .line 101
    :cond_5a
    iget-object v1, p0, Lcom/android/server/policy/gesture/GameAssistantGestureListener;->mGestureState:Lcom/android/server/policy/gesture/GestureListenerBase$GestureState;

    sget-object v4, Lcom/android/server/policy/gesture/GestureListenerBase$GestureState;->TRIGGERED:Lcom/android/server/policy/gesture/GestureListenerBase$GestureState;

    if-ne v1, v4, :cond_6e

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-ne v1, v3, :cond_6e

    .line 102
    invoke-virtual {p0, p1}, Lcom/android/server/policy/gesture/GameAssistantGestureListener;->notifyGestureTriggered(Landroid/view/MotionEvent;)V

    .line 103
    invoke-direct {p0, v0, p1}, Lcom/android/server/policy/gesture/GameAssistantGestureListener;->handleActionPassTouser(ILandroid/view/MotionEvent;)I

    move-result v0

    goto :goto_7d

    .line 104
    :cond_6e
    iget-object v1, p0, Lcom/android/server/policy/gesture/GameAssistantGestureListener;->mGestureState:Lcom/android/server/policy/gesture/GestureListenerBase$GestureState;

    sget-object v3, Lcom/android/server/policy/gesture/GestureListenerBase$GestureState;->CANCELED:Lcom/android/server/policy/gesture/GestureListenerBase$GestureState;

    if-eq v1, v3, :cond_7a

    iget-object v1, p0, Lcom/android/server/policy/gesture/GameAssistantGestureListener;->mGestureState:Lcom/android/server/policy/gesture/GestureListenerBase$GestureState;

    sget-object v3, Lcom/android/server/policy/gesture/GestureListenerBase$GestureState;->PENDING_CHECK:Lcom/android/server/policy/gesture/GestureListenerBase$GestureState;

    if-ne v1, v3, :cond_7d

    .line 105
    :cond_7a
    invoke-virtual {p0}, Lcom/android/server/policy/gesture/GameAssistantGestureListener;->notifyGestureCanceled()V

    .line 108
    :cond_7d
    :goto_7d
    sget-object v1, Lcom/android/server/policy/gesture/GestureListenerBase$GestureState;->IDLE:Lcom/android/server/policy/gesture/GestureListenerBase$GestureState;

    iput-object v1, p0, Lcom/android/server/policy/gesture/GameAssistantGestureListener;->mGestureState:Lcom/android/server/policy/gesture/GestureListenerBase$GestureState;

    .line 109
    iput v2, p0, Lcom/android/server/policy/gesture/GameAssistantGestureListener;->mGesturePreTriggerBehavior:I

    .line 110
    goto :goto_f8

    .line 72
    :cond_84
    invoke-virtual {p0}, Lcom/android/server/policy/gesture/GameAssistantGestureListener;->hasRegisterClient()Z

    move-result v1

    if-eqz v1, :cond_f8

    .line 73
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    iput v1, p0, Lcom/android/server/policy/gesture/GameAssistantGestureListener;->mDownPosX:F

    .line 74
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    iput v1, p0, Lcom/android/server/policy/gesture/GameAssistantGestureListener;->mDownPosY:F

    .line 75
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/server/policy/gesture/GameAssistantGestureListener;->mMotionDownTime:J

    .line 76
    invoke-direct {p0, p1}, Lcom/android/server/policy/gesture/GameAssistantGestureListener;->isInGameAssistantGestureArea(Landroid/view/MotionEvent;)Z

    move-result v1

    .line 77
    .local v1, "inGameAssistantGestureArea":Z
    if-eqz v1, :cond_a6

    invoke-virtual {p0, p1}, Lcom/android/server/policy/gesture/GameAssistantGestureListener;->notifyGesturePreTriggerBefore(Landroid/view/MotionEvent;)I

    move-result v2

    :cond_a6
    iput v2, p0, Lcom/android/server/policy/gesture/GameAssistantGestureListener;->mGesturePreTriggerBehavior:I

    .line 78
    iget v2, p0, Lcom/android/server/policy/gesture/GameAssistantGestureListener;->mGesturePreTriggerBehavior:I

    if-nez v2, :cond_b0

    .line 79
    sget-object v2, Lcom/android/server/policy/gesture/GestureListenerBase$GestureState;->PENDING_CHECK:Lcom/android/server/policy/gesture/GestureListenerBase$GestureState;

    iput-object v2, p0, Lcom/android/server/policy/gesture/GameAssistantGestureListener;->mGestureState:Lcom/android/server/policy/gesture/GestureListenerBase$GestureState;

    .line 81
    :cond_b0
    iget-object v2, p0, Lcom/android/server/policy/gesture/GameAssistantGestureListener;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "interceptMotionBeforeQueueing  mGesturePreTriggerBehavior "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/server/policy/gesture/GameAssistantGestureListener;->mGesturePreTriggerBehavior:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", inGameAssistantGestureArea "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", mActionNotpassToUser "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/android/server/policy/gesture/GameAssistantGestureListener;->mActionNotpassToUser:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", mGestureState "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/policy/gesture/GameAssistantGestureListener;->mGestureState:Lcom/android/server/policy/gesture/GestureListenerBase$GestureState;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    iget-object v2, p0, Lcom/android/server/policy/gesture/GameAssistantGestureListener;->mGestureState:Lcom/android/server/policy/gesture/GestureListenerBase$GestureState;

    sget-object v3, Lcom/android/server/policy/gesture/GestureListenerBase$GestureState;->TRIGGERED:Lcom/android/server/policy/gesture/GestureListenerBase$GestureState;

    if-eq v2, v3, :cond_f1

    iget-object v2, p0, Lcom/android/server/policy/gesture/GameAssistantGestureListener;->mGestureState:Lcom/android/server/policy/gesture/GestureListenerBase$GestureState;

    sget-object v3, Lcom/android/server/policy/gesture/GestureListenerBase$GestureState;->PENDING_CHECK:Lcom/android/server/policy/gesture/GestureListenerBase$GestureState;

    if-ne v2, v3, :cond_f8

    .line 83
    :cond_f1
    invoke-virtual {p0, p1}, Lcom/android/server/policy/gesture/GameAssistantGestureListener;->notifyGesturePreTrigger(Landroid/view/MotionEvent;)V

    .line 84
    invoke-direct {p0, v0, p1}, Lcom/android/server/policy/gesture/GameAssistantGestureListener;->handleActionPassTouser(ILandroid/view/MotionEvent;)I

    move-result v0

    .line 118
    .end local v1  # "inGameAssistantGestureArea":Z
    :cond_f8
    :goto_f8
    return v0
.end method

.method protected isSupportGestureType(I)Z
    .registers 3
    .param p1, "gesture"  # I

    .line 171
    const/4 v0, 0x7

    if-ne p1, v0, :cond_5

    const/4 v0, 0x1

    goto :goto_6

    :cond_5
    const/4 v0, 0x0

    :goto_6
    return v0
.end method

.method protected shouldInterceptGesture()Z
    .registers 2

    .line 181
    const/4 v0, 0x1

    return v0
.end method

.method public systemReady()V
    .registers 6

    .line 41
    invoke-super {p0}, Lcom/android/server/policy/gesture/GestureListenerBase;->systemReady()V

    .line 42
    iget-object v0, p0, Lcom/android/server/policy/gesture/GameAssistantGestureListener;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 43
    .local v0, "res":Landroid/content/res/Resources;
    const v1, 0xa07003f  # 6.50006E-33f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/server/policy/gesture/GameAssistantGestureListener;->GESTURE_VALID_LEFT_OFFSET:I

    .line 45
    invoke-virtual {p0}, Lcom/android/server/policy/gesture/GameAssistantGestureListener;->getGestureTouchSlop()I

    move-result v1

    iput v1, p0, Lcom/android/server/policy/gesture/GameAssistantGestureListener;->GESTURE_TOUCH_SLOP:I

    .line 46
    iget v1, p0, Lcom/android/server/policy/gesture/GameAssistantGestureListener;->GESTURE_TOUCH_SLOP:I

    mul-int/2addr v1, v1

    int-to-float v1, v1

    iput v1, p0, Lcom/android/server/policy/gesture/GameAssistantGestureListener;->mSquaredSlop:F

    .line 47
    const v1, 0xa070036  # 6.500053E-33f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/server/policy/gesture/GameAssistantGestureListener;->GESTURE_HORIZONTAL_AREA_TOP:I

    .line 49
    const v1, 0xa070035  # 6.5000525E-33f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/server/policy/gesture/GameAssistantGestureListener;->GESTURE_HORIZONTAL_AREA_BOTTOM:I

    .line 51
    const v1, 0xa07003e  # 6.500059E-33f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/server/policy/gesture/GameAssistantGestureListener;->GESTURE_LANDSCAPE_AREA_BOTTOM:I

    .line 53
    const v1, 0xa070037  # 6.500054E-33f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 55
    .local v1, "landscapeSlop":I
    mul-int v2, v1, v1

    int-to-float v2, v2

    iput v2, p0, Lcom/android/server/policy/gesture/GameAssistantGestureListener;->mLandscapeSquaredSlop:F

    .line 56
    iget-object v2, p0, Lcom/android/server/policy/gesture/GameAssistantGestureListener;->DEBUG:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_97

    .line 57
    iget-object v2, p0, Lcom/android/server/policy/gesture/GameAssistantGestureListener;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ", GESTURE_TOUCH_SLOP = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/server/policy/gesture/GameAssistantGestureListener;->GESTURE_TOUCH_SLOP:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", GESTURE_VALID_LEFT_OFFSET = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/server/policy/gesture/GameAssistantGestureListener;->GESTURE_VALID_LEFT_OFFSET:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", GESTURE_HORIZONTAL_AREA_TOP = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/server/policy/gesture/GameAssistantGestureListener;->GESTURE_HORIZONTAL_AREA_TOP:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", GESTURE_HORIZONTAL_AREA_BOTTOM = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/server/policy/gesture/GameAssistantGestureListener;->GESTURE_HORIZONTAL_AREA_BOTTOM:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", GESTURE_LANDSCAPE_AREA_TOP = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/server/policy/gesture/GameAssistantGestureListener;->GESTURE_LANDSCAPE_AREA_BOTTOM:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", mLandscapeSquaredSlop = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/server/policy/gesture/GameAssistantGestureListener;->mLandscapeSquaredSlop:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    :cond_97
    return-void
.end method
