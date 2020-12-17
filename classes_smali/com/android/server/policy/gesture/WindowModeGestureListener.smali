.class public Lcom/android/server/policy/gesture/WindowModeGestureListener;
.super Lcom/android/server/policy/gesture/GestureListenerBase;
.source "WindowModeGestureListener.java"


# instance fields
.field private DEBUG:Ljava/lang/Boolean;

.field private GESTURE_WINDOW_MODE_HEIGHT:I

.field private GESTURE_WINDOW_MODE_WIDTH:I

.field private mActionNotpassToUser:Z

.field private mAngleThreshold:I

.field private mDownPosX:F

.field private mDownPosY:F

.field private mSquaredSlop:F


# direct methods
.method public constructor <init>(Lcom/android/server/policy/gesture/SystemGesture;Landroid/content/Context;)V
    .registers 5
    .param p1, "SystemGesture"  # Lcom/android/server/policy/gesture/SystemGesture;
    .param p2, "context"  # Landroid/content/Context;

    .line 34
    invoke-direct {p0, p1, p2}, Lcom/android/server/policy/gesture/GestureListenerBase;-><init>(Lcom/android/server/policy/gesture/SystemGesture;Landroid/content/Context;)V

    .line 23
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/policy/gesture/WindowModeGestureListener;->DEBUG:Ljava/lang/Boolean;

    .line 24
    iput-boolean v0, p0, Lcom/android/server/policy/gesture/WindowModeGestureListener;->mActionNotpassToUser:Z

    .line 25
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/policy/gesture/WindowModeGestureListener;->mDownPosX:F

    .line 26
    iput v0, p0, Lcom/android/server/policy/gesture/WindowModeGestureListener;->mDownPosY:F

    .line 28
    const/16 v0, 0x14

    iput v0, p0, Lcom/android/server/policy/gesture/WindowModeGestureListener;->mAngleThreshold:I

    .line 30
    const/16 v0, 0x90

    iput v0, p0, Lcom/android/server/policy/gesture/WindowModeGestureListener;->GESTURE_WINDOW_MODE_WIDTH:I

    .line 31
    const/16 v0, 0x30

    iput v0, p0, Lcom/android/server/policy/gesture/WindowModeGestureListener;->GESTURE_WINDOW_MODE_HEIGHT:I

    .line 35
    return-void
.end method

.method private canTriggerWindowModeAction(Landroid/view/MotionEvent;)Z
    .registers 10
    .param p1, "event"  # Landroid/view/MotionEvent;

    .line 166
    iget-object v0, p0, Lcom/android/server/policy/gesture/WindowModeGestureListener;->mDisplay:Landroid/view/Display;

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    .line 167
    .local v0, "rot":I
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_42

    const/4 v3, 0x3

    const/4 v4, 0x2

    if-eq v0, v2, :cond_13

    if-eq v0, v4, :cond_42

    if-eq v0, v3, :cond_13

    .line 180
    return v1

    .line 174
    :cond_13
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v5

    iget v6, p0, Lcom/android/server/policy/gesture/WindowModeGestureListener;->GESTURE_WINDOW_MODE_WIDTH:I

    div-int/2addr v6, v4

    mul-int/2addr v6, v3

    int-to-float v6, v6

    cmpg-float v5, v5, v6

    if-ltz v5, :cond_30

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v5

    iget v6, p0, Lcom/android/server/policy/gesture/WindowModeGestureListener;->DEVICE_HEIGHT:I

    iget v7, p0, Lcom/android/server/policy/gesture/WindowModeGestureListener;->GESTURE_WINDOW_MODE_WIDTH:I

    div-int/2addr v7, v4

    mul-int/2addr v7, v3

    sub-int/2addr v6, v7

    int-to-float v3, v6

    cmpl-float v3, v5, v3

    if-lez v3, :cond_40

    .line 175
    :cond_30
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v3

    iget v4, p0, Lcom/android/server/policy/gesture/WindowModeGestureListener;->DEVICE_WIDTH:I

    iget v5, p0, Lcom/android/server/policy/gesture/WindowModeGestureListener;->GESTURE_WINDOW_MODE_HEIGHT:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    cmpl-float v3, v3, v4

    if-lez v3, :cond_40

    move v1, v2

    goto :goto_41

    :cond_40
    nop

    .line 174
    :goto_41
    return v1

    .line 170
    :cond_42
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v3

    iget v4, p0, Lcom/android/server/policy/gesture/WindowModeGestureListener;->GESTURE_WINDOW_MODE_WIDTH:I

    int-to-float v4, v4

    cmpg-float v3, v3, v4

    if-ltz v3, :cond_5b

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v3

    iget v4, p0, Lcom/android/server/policy/gesture/WindowModeGestureListener;->DEVICE_WIDTH:I

    iget v5, p0, Lcom/android/server/policy/gesture/WindowModeGestureListener;->GESTURE_WINDOW_MODE_WIDTH:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    cmpl-float v3, v3, v4

    if-lez v3, :cond_6b

    .line 171
    :cond_5b
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v3

    iget v4, p0, Lcom/android/server/policy/gesture/WindowModeGestureListener;->DEVICE_HEIGHT:I

    iget v5, p0, Lcom/android/server/policy/gesture/WindowModeGestureListener;->GESTURE_WINDOW_MODE_HEIGHT:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    cmpl-float v3, v3, v4

    if-lez v3, :cond_6b

    move v1, v2

    goto :goto_6c

    :cond_6b
    nop

    .line 170
    :goto_6c
    return v1
.end method

.method private checkWindowModeGesture(Landroid/view/MotionEvent;)V
    .registers 6
    .param p1, "event"  # Landroid/view/MotionEvent;

    .line 113
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/server/policy/gesture/WindowModeGestureListener;->mMotionDownTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x12c

    cmp-long v0, v0, v2

    if-lez v0, :cond_19

    .line 114
    iget-object v0, p0, Lcom/android/server/policy/gesture/WindowModeGestureListener;->TAG:Ljava/lang/String;

    const-string v1, "Window mode gesture time out"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    sget-object v0, Lcom/android/server/policy/gesture/GestureListenerBase$GestureState;->CANCELED:Lcom/android/server/policy/gesture/GestureListenerBase$GestureState;

    iput-object v0, p0, Lcom/android/server/policy/gesture/WindowModeGestureListener;->mGestureState:Lcom/android/server/policy/gesture/GestureListenerBase$GestureState;

    .line 116
    return-void

    .line 118
    :cond_19
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iget v1, p0, Lcom/android/server/policy/gesture/WindowModeGestureListener;->mDownPosX:F

    sub-float/2addr v0, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    iget v2, p0, Lcom/android/server/policy/gesture/WindowModeGestureListener;->mDownPosY:F

    sub-float/2addr v1, v2

    invoke-static {v0, v1}, Lcom/android/server/policy/gesture/WindowModeGestureListener;->squaredHypot(FF)F

    move-result v0

    iget v1, p0, Lcom/android/server/policy/gesture/WindowModeGestureListener;->mSquaredSlop:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_55

    .line 121
    invoke-direct {p0}, Lcom/android/server/policy/gesture/WindowModeGestureListener;->isLandscape()Z

    move-result v0

    if-nez v0, :cond_51

    iget v0, p0, Lcom/android/server/policy/gesture/WindowModeGestureListener;->mDownPosX:F

    .line 122
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/android/server/policy/gesture/WindowModeGestureListener;->mDownPosY:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    sub-float/2addr v1, v2

    .line 121
    invoke-direct {p0, v0, v1}, Lcom/android/server/policy/gesture/WindowModeGestureListener;->isValidAssistantGestureAngle(FF)Z

    move-result v0

    if-eqz v0, :cond_4c

    goto :goto_51

    .line 125
    :cond_4c
    sget-object v0, Lcom/android/server/policy/gesture/GestureListenerBase$GestureState;->CANCELED:Lcom/android/server/policy/gesture/GestureListenerBase$GestureState;

    iput-object v0, p0, Lcom/android/server/policy/gesture/WindowModeGestureListener;->mGestureState:Lcom/android/server/policy/gesture/GestureListenerBase$GestureState;

    goto :goto_55

    .line 123
    :cond_51
    :goto_51
    sget-object v0, Lcom/android/server/policy/gesture/GestureListenerBase$GestureState;->TRIGGERED:Lcom/android/server/policy/gesture/GestureListenerBase$GestureState;

    iput-object v0, p0, Lcom/android/server/policy/gesture/WindowModeGestureListener;->mGestureState:Lcom/android/server/policy/gesture/GestureListenerBase$GestureState;

    .line 128
    :cond_55
    :goto_55
    return-void
.end method

.method private handleActionPassTouser(ILandroid/view/MotionEvent;)I
    .registers 6
    .param p1, "result"  # I
    .param p2, "event"  # Landroid/view/MotionEvent;

    .line 101
    move v0, p1

    .line 102
    .local v0, "tempResult":I
    iget-object v1, p0, Lcom/android/server/policy/gesture/WindowModeGestureListener;->mGestureState:Lcom/android/server/policy/gesture/GestureListenerBase$GestureState;

    sget-object v2, Lcom/android/server/policy/gesture/GestureListenerBase$GestureState;->TRIGGERED:Lcom/android/server/policy/gesture/GestureListenerBase$GestureState;

    if-ne v1, v2, :cond_9

    const/4 v1, 0x1

    goto :goto_a

    :cond_9
    const/4 v1, 0x0

    :goto_a
    iput-boolean v1, p0, Lcom/android/server/policy/gesture/WindowModeGestureListener;->mActionNotpassToUser:Z

    .line 103
    iget-boolean v1, p0, Lcom/android/server/policy/gesture/WindowModeGestureListener;->mActionNotpassToUser:Z

    if-eqz v1, :cond_13

    .line 104
    and-int/lit8 v0, v0, -0x2

    goto :goto_14

    .line 106
    :cond_13
    const/4 v0, 0x1

    .line 108
    :goto_14
    return v0
.end method

.method private isLandscape()Z
    .registers 4

    .line 189
    iget-object v0, p0, Lcom/android/server/policy/gesture/WindowModeGestureListener;->mDisplay:Landroid/view/Display;

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    .line 190
    .local v0, "rot":I
    const/4 v1, 0x1

    if-eq v0, v1, :cond_e

    const/4 v2, 0x3

    if-ne v0, v2, :cond_d

    goto :goto_e

    :cond_d
    const/4 v1, 0x0

    :cond_e
    :goto_e
    return v1
.end method

.method private isValidAssistantGestureAngle(FF)Z
    .registers 7
    .param p1, "deltaX"  # F
    .param p2, "deltaY"  # F

    .line 157
    float-to-double v0, p2

    float-to-double v2, p1

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v0

    double-to-float v0, v0

    .line 161
    .local v0, "angle":F
    const/high16 v1, 0x42b40000  # 90.0f

    cmpl-float v2, v0, v1

    if-lez v2, :cond_15

    const/high16 v2, 0x43340000  # 180.0f

    sub-float/2addr v2, v0

    goto :goto_16

    :cond_15
    move v2, v0

    :goto_16
    move v0, v2

    .line 162
    iget v2, p0, Lcom/android/server/policy/gesture/WindowModeGestureListener;->mAngleThreshold:I

    int-to-float v2, v2

    cmpl-float v2, v0, v2

    if-lez v2, :cond_24

    cmpg-float v1, v0, v1

    if-gez v1, :cond_24

    const/4 v1, 0x1

    goto :goto_25

    :cond_24
    const/4 v1, 0x0

    :goto_25
    return v1
.end method

.method public static squaredHypot(FF)F
    .registers 4
    .param p0, "x"  # F
    .param p1, "y"  # F

    .line 185
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

    .line 147
    iget v0, p0, Lcom/android/server/policy/gesture/WindowModeGestureListener;->mGesturePreTriggerBehavior:I

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

    .line 137
    const/4 v0, 0x6

    return v0
.end method

.method public interceptMotionBeforeDispatching(Landroid/view/MotionEvent;II)J
    .registers 7
    .param p1, "event"  # Landroid/view/MotionEvent;
    .param p2, "policyFlags"  # I
    .param p3, "displayId"  # I

    .line 152
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lcom/android/server/policy/gesture/WindowModeGestureListener;->handleActionPassTouser(ILandroid/view/MotionEvent;)I

    move-result v0

    .line 153
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

    .line 52
    invoke-super {p0, p1, p2}, Lcom/android/server/policy/gesture/GestureListenerBase;->interceptMotionBeforeQueueing(Landroid/view/MotionEvent;I)I

    .line 53
    const/4 v0, 0x1

    .line 54
    .local v0, "result":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const/4 v2, -0x1

    if-eqz v1, :cond_6e

    const/4 v3, 0x1

    if-eq v1, v3, :cond_32

    const/4 v4, 0x2

    if-eq v1, v4, :cond_16

    const/4 v4, 0x3

    if-eq v1, v4, :cond_32

    goto/16 :goto_da

    .line 74
    :cond_16
    iget-object v1, p0, Lcom/android/server/policy/gesture/WindowModeGestureListener;->mGestureState:Lcom/android/server/policy/gesture/GestureListenerBase$GestureState;

    sget-object v2, Lcom/android/server/policy/gesture/GestureListenerBase$GestureState;->PENDING_CHECK:Lcom/android/server/policy/gesture/GestureListenerBase$GestureState;

    if-ne v1, v2, :cond_23

    .line 75
    invoke-direct {p0, p1}, Lcom/android/server/policy/gesture/WindowModeGestureListener;->checkWindowModeGesture(Landroid/view/MotionEvent;)V

    .line 76
    invoke-direct {p0, v0, p1}, Lcom/android/server/policy/gesture/WindowModeGestureListener;->handleActionPassTouser(ILandroid/view/MotionEvent;)I

    move-result v0

    .line 78
    :cond_23
    iget-object v1, p0, Lcom/android/server/policy/gesture/WindowModeGestureListener;->mGestureState:Lcom/android/server/policy/gesture/GestureListenerBase$GestureState;

    sget-object v2, Lcom/android/server/policy/gesture/GestureListenerBase$GestureState;->TRIGGERED:Lcom/android/server/policy/gesture/GestureListenerBase$GestureState;

    if-ne v1, v2, :cond_da

    .line 79
    invoke-virtual {p0, p1}, Lcom/android/server/policy/gesture/WindowModeGestureListener;->notifyGestureTriggered(Landroid/view/MotionEvent;)V

    .line 80
    invoke-direct {p0, v0, p1}, Lcom/android/server/policy/gesture/WindowModeGestureListener;->handleActionPassTouser(ILandroid/view/MotionEvent;)I

    move-result v0

    goto/16 :goto_da

    .line 85
    :cond_32
    iget-object v1, p0, Lcom/android/server/policy/gesture/WindowModeGestureListener;->mGestureState:Lcom/android/server/policy/gesture/GestureListenerBase$GestureState;

    sget-object v4, Lcom/android/server/policy/gesture/GestureListenerBase$GestureState;->PENDING_CHECK:Lcom/android/server/policy/gesture/GestureListenerBase$GestureState;

    if-eq v1, v4, :cond_44

    iget-object v1, p0, Lcom/android/server/policy/gesture/WindowModeGestureListener;->mGestureState:Lcom/android/server/policy/gesture/GestureListenerBase$GestureState;

    sget-object v4, Lcom/android/server/policy/gesture/GestureListenerBase$GestureState;->TRIGGERED:Lcom/android/server/policy/gesture/GestureListenerBase$GestureState;

    if-eq v1, v4, :cond_44

    iget-object v1, p0, Lcom/android/server/policy/gesture/WindowModeGestureListener;->mGestureState:Lcom/android/server/policy/gesture/GestureListenerBase$GestureState;

    sget-object v4, Lcom/android/server/policy/gesture/GestureListenerBase$GestureState;->CANCELED:Lcom/android/server/policy/gesture/GestureListenerBase$GestureState;

    if-ne v1, v4, :cond_67

    .line 86
    :cond_44
    iget-object v1, p0, Lcom/android/server/policy/gesture/WindowModeGestureListener;->mGestureState:Lcom/android/server/policy/gesture/GestureListenerBase$GestureState;

    sget-object v4, Lcom/android/server/policy/gesture/GestureListenerBase$GestureState;->TRIGGERED:Lcom/android/server/policy/gesture/GestureListenerBase$GestureState;

    if-ne v1, v4, :cond_58

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-ne v1, v3, :cond_58

    .line 87
    invoke-virtual {p0, p1}, Lcom/android/server/policy/gesture/WindowModeGestureListener;->notifyGestureTriggered(Landroid/view/MotionEvent;)V

    .line 88
    invoke-direct {p0, v0, p1}, Lcom/android/server/policy/gesture/WindowModeGestureListener;->handleActionPassTouser(ILandroid/view/MotionEvent;)I

    move-result v0

    goto :goto_67

    .line 89
    :cond_58
    iget-object v1, p0, Lcom/android/server/policy/gesture/WindowModeGestureListener;->mGestureState:Lcom/android/server/policy/gesture/GestureListenerBase$GestureState;

    sget-object v3, Lcom/android/server/policy/gesture/GestureListenerBase$GestureState;->CANCELED:Lcom/android/server/policy/gesture/GestureListenerBase$GestureState;

    if-eq v1, v3, :cond_64

    iget-object v1, p0, Lcom/android/server/policy/gesture/WindowModeGestureListener;->mGestureState:Lcom/android/server/policy/gesture/GestureListenerBase$GestureState;

    sget-object v3, Lcom/android/server/policy/gesture/GestureListenerBase$GestureState;->PENDING_CHECK:Lcom/android/server/policy/gesture/GestureListenerBase$GestureState;

    if-ne v1, v3, :cond_67

    .line 90
    :cond_64
    invoke-virtual {p0}, Lcom/android/server/policy/gesture/WindowModeGestureListener;->notifyGestureCanceled()V

    .line 93
    :cond_67
    :goto_67
    sget-object v1, Lcom/android/server/policy/gesture/GestureListenerBase$GestureState;->IDLE:Lcom/android/server/policy/gesture/GestureListenerBase$GestureState;

    iput-object v1, p0, Lcom/android/server/policy/gesture/WindowModeGestureListener;->mGestureState:Lcom/android/server/policy/gesture/GestureListenerBase$GestureState;

    .line 94
    iput v2, p0, Lcom/android/server/policy/gesture/WindowModeGestureListener;->mGesturePreTriggerBehavior:I

    goto :goto_da

    .line 56
    :cond_6e
    invoke-virtual {p0}, Lcom/android/server/policy/gesture/WindowModeGestureListener;->hasRegisterClient()Z

    move-result v1

    if-eqz v1, :cond_da

    .line 57
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    iput v1, p0, Lcom/android/server/policy/gesture/WindowModeGestureListener;->mDownPosX:F

    .line 58
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    iput v1, p0, Lcom/android/server/policy/gesture/WindowModeGestureListener;->mDownPosY:F

    .line 59
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/server/policy/gesture/WindowModeGestureListener;->mMotionDownTime:J

    .line 60
    invoke-direct {p0, p1}, Lcom/android/server/policy/gesture/WindowModeGestureListener;->canTriggerWindowModeAction(Landroid/view/MotionEvent;)Z

    move-result v1

    .line 61
    .local v1, "canTrigger":Z
    if-eqz v1, :cond_90

    invoke-virtual {p0, p1}, Lcom/android/server/policy/gesture/WindowModeGestureListener;->notifyGesturePreTriggerBefore(Landroid/view/MotionEvent;)I

    move-result v2

    :cond_90
    iput v2, p0, Lcom/android/server/policy/gesture/WindowModeGestureListener;->mGesturePreTriggerBehavior:I

    .line 63
    iget v2, p0, Lcom/android/server/policy/gesture/WindowModeGestureListener;->mGesturePreTriggerBehavior:I

    if-nez v2, :cond_9a

    .line 64
    sget-object v2, Lcom/android/server/policy/gesture/GestureListenerBase$GestureState;->PENDING_CHECK:Lcom/android/server/policy/gesture/GestureListenerBase$GestureState;

    iput-object v2, p0, Lcom/android/server/policy/gesture/WindowModeGestureListener;->mGestureState:Lcom/android/server/policy/gesture/GestureListenerBase$GestureState;

    .line 66
    :cond_9a
    iget-object v2, p0, Lcom/android/server/policy/gesture/WindowModeGestureListener;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "interceptMotionBeforeQueueing  mGesturePreTriggerBehavior="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/server/policy/gesture/WindowModeGestureListener;->mGesturePreTriggerBehavior:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " mActionNotpassToUser "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/android/server/policy/gesture/WindowModeGestureListener;->mActionNotpassToUser:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " mGestureState "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/policy/gesture/WindowModeGestureListener;->mGestureState:Lcom/android/server/policy/gesture/GestureListenerBase$GestureState;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    iget-object v2, p0, Lcom/android/server/policy/gesture/WindowModeGestureListener;->mGestureState:Lcom/android/server/policy/gesture/GestureListenerBase$GestureState;

    sget-object v3, Lcom/android/server/policy/gesture/GestureListenerBase$GestureState;->TRIGGERED:Lcom/android/server/policy/gesture/GestureListenerBase$GestureState;

    if-eq v2, v3, :cond_d3

    iget-object v2, p0, Lcom/android/server/policy/gesture/WindowModeGestureListener;->mGestureState:Lcom/android/server/policy/gesture/GestureListenerBase$GestureState;

    sget-object v3, Lcom/android/server/policy/gesture/GestureListenerBase$GestureState;->PENDING_CHECK:Lcom/android/server/policy/gesture/GestureListenerBase$GestureState;

    if-ne v2, v3, :cond_da

    .line 68
    :cond_d3
    invoke-virtual {p0, p1}, Lcom/android/server/policy/gesture/WindowModeGestureListener;->notifyGesturePreTrigger(Landroid/view/MotionEvent;)V

    .line 69
    invoke-direct {p0, v0, p1}, Lcom/android/server/policy/gesture/WindowModeGestureListener;->handleActionPassTouser(ILandroid/view/MotionEvent;)I

    move-result v0

    .line 97
    .end local v1  # "canTrigger":Z
    :cond_da
    :goto_da
    return v0
.end method

.method protected isSupportGestureType(I)Z
    .registers 3
    .param p1, "gesture"  # I

    .line 132
    const/4 v0, 0x6

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

    .line 142
    const/4 v0, 0x1

    return v0
.end method

.method public systemReady()V
    .registers 6

    .line 39
    invoke-super {p0}, Lcom/android/server/policy/gesture/GestureListenerBase;->systemReady()V

    .line 40
    invoke-virtual {p0}, Lcom/android/server/policy/gesture/WindowModeGestureListener;->getGestureTouchSlop()I

    move-result v0

    int-to-float v0, v0

    .line 41
    .local v0, "slop":F
    mul-float v1, v0, v0

    iput v1, p0, Lcom/android/server/policy/gesture/WindowModeGestureListener;->mSquaredSlop:F

    .line 42
    iget-object v1, p0, Lcom/android/server/policy/gesture/WindowModeGestureListener;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 43
    .local v1, "res":Landroid/content/res/Resources;
    const-string/jumbo v2, "navigation_bar_gesture_height"

    invoke-static {v2, v1}, Lcom/android/server/policy/gesture/ResourceUtils;->getNavbarSize(Ljava/lang/String;Landroid/content/res/Resources;)I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    mul-int/lit8 v2, v2, 0x3

    iput v2, p0, Lcom/android/server/policy/gesture/WindowModeGestureListener;->GESTURE_WINDOW_MODE_WIDTH:I

    iput v2, p0, Lcom/android/server/policy/gesture/WindowModeGestureListener;->GESTURE_WINDOW_MODE_HEIGHT:I

    .line 44
    iget-object v2, p0, Lcom/android/server/policy/gesture/WindowModeGestureListener;->DEBUG:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_4c

    .line 45
    iget-object v2, p0, Lcom/android/server/policy/gesture/WindowModeGestureListener;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "systemReady GESTURE_WINDOW_MODE_WIDTH = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/server/policy/gesture/WindowModeGestureListener;->GESTURE_WINDOW_MODE_WIDTH:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", GESTURE_WINDOW_MODE_HEIGHT = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/server/policy/gesture/WindowModeGestureListener;->GESTURE_WINDOW_MODE_HEIGHT:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    :cond_4c
    return-void
.end method
