.class public Lcom/android/server/policy/gesture/RecentGestureListener;
.super Lcom/android/server/policy/gesture/GestureListenerBase;
.source "RecentGestureListener.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/policy/gesture/RecentGestureListener$RecentsDir;
    }
.end annotation


# instance fields
.field private DEBUG:Ljava/lang/Boolean;

.field private GESTURE_VALID_BOTTOM_OFFSET:I

.field private GESTURE_VALID_LEFT_OFFSET:I

.field private GESTURE_VALID_RIGHT_OFFSET:I

.field private GESTURE_VALID_RIGHT_STATUS_OFFSET:I

.field private RECENT_GESTURE_TOUCH_SLOP:I

.field private RECENT_HORIZONTAL_LEFT_RIGHT_VALID_BOTTOM_OFFSET:I

.field private RECENT_INVALID_OFFSET_TO_EDGE:I

.field private RECENT_LANDSCAPE_LEFT_RIGHT_VALID_BOTTOM_OFFSET:I

.field private RECENT_LEFT_POS_MAX:I

.field private RECENT_LEFT_POS_MIN:I

.field private RECENT_RIGHT_POS_MIN:I

.field private RECENT_TOP_POS_MIN:I

.field private mActionNotpassToUser:Z

.field private mDeviceBottomTouchSlop:I

.field private mDir:Lcom/android/server/policy/gesture/RecentGestureListener$RecentsDir;

.field private mRecentPanelDownPosX:F

.field private mRecentPanelDownPosY:F


# direct methods
.method public constructor <init>(Lcom/android/server/policy/gesture/SystemGesture;Landroid/content/Context;)V
    .registers 5
    .param p1, "SystemGesture"  # Lcom/android/server/policy/gesture/SystemGesture;
    .param p2, "context"  # Landroid/content/Context;

    .line 57
    invoke-direct {p0, p1, p2}, Lcom/android/server/policy/gesture/GestureListenerBase;-><init>(Lcom/android/server/policy/gesture/SystemGesture;Landroid/content/Context;)V

    .line 24
    const/16 v0, 0x46

    iput v0, p0, Lcom/android/server/policy/gesture/RecentGestureListener;->GESTURE_VALID_BOTTOM_OFFSET:I

    .line 25
    const/16 v0, 0x1e

    iput v0, p0, Lcom/android/server/policy/gesture/RecentGestureListener;->GESTURE_VALID_LEFT_OFFSET:I

    .line 26
    const/16 v1, 0x3fc

    iput v1, p0, Lcom/android/server/policy/gesture/RecentGestureListener;->GESTURE_VALID_RIGHT_OFFSET:I

    .line 27
    const/16 v1, 0x42

    iput v1, p0, Lcom/android/server/policy/gesture/RecentGestureListener;->GESTURE_VALID_RIGHT_STATUS_OFFSET:I

    .line 28
    iput v0, p0, Lcom/android/server/policy/gesture/RecentGestureListener;->RECENT_GESTURE_TOUCH_SLOP:I

    .line 29
    const/16 v0, 0x3c

    iput v0, p0, Lcom/android/server/policy/gesture/RecentGestureListener;->RECENT_INVALID_OFFSET_TO_EDGE:I

    .line 34
    const/16 v0, 0x10e

    iput v0, p0, Lcom/android/server/policy/gesture/RecentGestureListener;->RECENT_LANDSCAPE_LEFT_RIGHT_VALID_BOTTOM_OFFSET:I

    .line 35
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/policy/gesture/RecentGestureListener;->mActionNotpassToUser:Z

    .line 36
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/policy/gesture/RecentGestureListener;->mRecentPanelDownPosX:F

    .line 37
    iput v0, p0, Lcom/android/server/policy/gesture/RecentGestureListener;->mRecentPanelDownPosY:F

    .line 38
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/policy/gesture/RecentGestureListener;->DEBUG:Ljava/lang/Boolean;

    .line 39
    const/16 v0, 0x90

    iput v0, p0, Lcom/android/server/policy/gesture/RecentGestureListener;->RECENT_HORIZONTAL_LEFT_RIGHT_VALID_BOTTOM_OFFSET:I

    .line 58
    return-void
.end method

.method private checkRecentsGesture(Landroid/view/MotionEvent;)V
    .registers 6
    .param p1, "event"  # Landroid/view/MotionEvent;

    .line 188
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/server/policy/gesture/RecentGestureListener;->mMotionDownTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x12c

    cmp-long v0, v0, v2

    if-lez v0, :cond_19

    .line 189
    iget-object v0, p0, Lcom/android/server/policy/gesture/RecentGestureListener;->TAG:Ljava/lang/String;

    const-string v1, "Recent gesture time out"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    sget-object v0, Lcom/android/server/policy/gesture/GestureListenerBase$GestureState;->CANCELED:Lcom/android/server/policy/gesture/GestureListenerBase$GestureState;

    iput-object v0, p0, Lcom/android/server/policy/gesture/RecentGestureListener;->mGestureState:Lcom/android/server/policy/gesture/GestureListenerBase$GestureState;

    .line 191
    return-void

    .line 194
    :cond_19
    iget v0, p0, Lcom/android/server/policy/gesture/RecentGestureListener;->RECENT_GESTURE_TOUCH_SLOP:I

    .line 195
    .local v0, "touchSlop":I
    iget-object v1, p0, Lcom/android/server/policy/gesture/RecentGestureListener;->mDir:Lcom/android/server/policy/gesture/RecentGestureListener$RecentsDir;

    sget-object v2, Lcom/android/server/policy/gesture/RecentGestureListener$RecentsDir;->HORIZONTAL_RIGHT:Lcom/android/server/policy/gesture/RecentGestureListener$RecentsDir;

    if-eq v1, v2, :cond_db

    iget-object v1, p0, Lcom/android/server/policy/gesture/RecentGestureListener;->mDir:Lcom/android/server/policy/gesture/RecentGestureListener$RecentsDir;

    sget-object v2, Lcom/android/server/policy/gesture/RecentGestureListener$RecentsDir;->LANDSCAPE_RIGHT:Lcom/android/server/policy/gesture/RecentGestureListener$RecentsDir;

    if-eq v1, v2, :cond_db

    iget-object v1, p0, Lcom/android/server/policy/gesture/RecentGestureListener;->mDir:Lcom/android/server/policy/gesture/RecentGestureListener$RecentsDir;

    sget-object v2, Lcom/android/server/policy/gesture/RecentGestureListener$RecentsDir;->REVERSE_LANDSCAPE_RIGHT:Lcom/android/server/policy/gesture/RecentGestureListener$RecentsDir;

    if-ne v1, v2, :cond_2f

    goto/16 :goto_db

    .line 206
    :cond_2f
    iget-object v1, p0, Lcom/android/server/policy/gesture/RecentGestureListener;->mDir:Lcom/android/server/policy/gesture/RecentGestureListener$RecentsDir;

    sget-object v2, Lcom/android/server/policy/gesture/RecentGestureListener$RecentsDir;->HORIZONTAL_BOTTOM:Lcom/android/server/policy/gesture/RecentGestureListener$RecentsDir;

    if-eq v1, v2, :cond_a0

    iget-object v1, p0, Lcom/android/server/policy/gesture/RecentGestureListener;->mDir:Lcom/android/server/policy/gesture/RecentGestureListener$RecentsDir;

    sget-object v2, Lcom/android/server/policy/gesture/RecentGestureListener$RecentsDir;->LANDSCAPE_BOTTOM:Lcom/android/server/policy/gesture/RecentGestureListener$RecentsDir;

    if-eq v1, v2, :cond_a0

    iget-object v1, p0, Lcom/android/server/policy/gesture/RecentGestureListener;->mDir:Lcom/android/server/policy/gesture/RecentGestureListener$RecentsDir;

    sget-object v2, Lcom/android/server/policy/gesture/RecentGestureListener$RecentsDir;->REVERSE_LANDSCAPE_BOTTOM:Lcom/android/server/policy/gesture/RecentGestureListener$RecentsDir;

    if-ne v1, v2, :cond_42

    goto :goto_a0

    .line 216
    :cond_42
    iget-object v1, p0, Lcom/android/server/policy/gesture/RecentGestureListener;->mDir:Lcom/android/server/policy/gesture/RecentGestureListener$RecentsDir;

    sget-object v2, Lcom/android/server/policy/gesture/RecentGestureListener$RecentsDir;->HORIZONTAL_LEFT:Lcom/android/server/policy/gesture/RecentGestureListener$RecentsDir;

    if-eq v1, v2, :cond_54

    iget-object v1, p0, Lcom/android/server/policy/gesture/RecentGestureListener;->mDir:Lcom/android/server/policy/gesture/RecentGestureListener$RecentsDir;

    sget-object v2, Lcom/android/server/policy/gesture/RecentGestureListener$RecentsDir;->LANDSCAPE_LEFT:Lcom/android/server/policy/gesture/RecentGestureListener$RecentsDir;

    if-eq v1, v2, :cond_54

    iget-object v1, p0, Lcom/android/server/policy/gesture/RecentGestureListener;->mDir:Lcom/android/server/policy/gesture/RecentGestureListener$RecentsDir;

    sget-object v2, Lcom/android/server/policy/gesture/RecentGestureListener$RecentsDir;->REVERSE_LANDSCAPE_LEFT:Lcom/android/server/policy/gesture/RecentGestureListener$RecentsDir;

    if-ne v1, v2, :cond_124

    .line 217
    :cond_54
    iget-object v1, p0, Lcom/android/server/policy/gesture/RecentGestureListener;->mDir:Lcom/android/server/policy/gesture/RecentGestureListener$RecentsDir;

    sget-object v2, Lcom/android/server/policy/gesture/RecentGestureListener$RecentsDir;->LANDSCAPE_LEFT:Lcom/android/server/policy/gesture/RecentGestureListener$RecentsDir;

    if-eq v1, v2, :cond_60

    iget-object v1, p0, Lcom/android/server/policy/gesture/RecentGestureListener;->mDir:Lcom/android/server/policy/gesture/RecentGestureListener$RecentsDir;

    sget-object v2, Lcom/android/server/policy/gesture/RecentGestureListener$RecentsDir;->REVERSE_LANDSCAPE_LEFT:Lcom/android/server/policy/gesture/RecentGestureListener$RecentsDir;

    if-ne v1, v2, :cond_62

    .line 218
    :cond_60
    iget v0, p0, Lcom/android/server/policy/gesture/RecentGestureListener;->mDeviceBottomTouchSlop:I

    .line 220
    :cond_62
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    iget v2, p0, Lcom/android/server/policy/gesture/RecentGestureListener;->mRecentPanelDownPosX:F

    sub-float/2addr v1, v2

    int-to-float v3, v0

    cmpl-float v1, v1, v3

    if-lez v1, :cond_74

    .line 221
    sget-object v1, Lcom/android/server/policy/gesture/GestureListenerBase$GestureState;->TRIGGERED:Lcom/android/server/policy/gesture/GestureListenerBase$GestureState;

    iput-object v1, p0, Lcom/android/server/policy/gesture/RecentGestureListener;->mGestureState:Lcom/android/server/policy/gesture/GestureListenerBase$GestureState;

    goto/16 :goto_124

    .line 222
    :cond_74
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    sub-float/2addr v2, v1

    int-to-float v1, v0

    cmpl-float v1, v2, v1

    if-gtz v1, :cond_9a

    iget v1, p0, Lcom/android/server/policy/gesture/RecentGestureListener;->mRecentPanelDownPosX:F

    .line 223
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    iget v2, p0, Lcom/android/server/policy/gesture/RecentGestureListener;->mRecentPanelDownPosY:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v3

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    invoke-direct {p0, v1, v2}, Lcom/android/server/policy/gesture/RecentGestureListener;->isValidSideGestureAngle(FF)Z

    move-result v1

    if-nez v1, :cond_124

    .line 224
    :cond_9a
    sget-object v1, Lcom/android/server/policy/gesture/GestureListenerBase$GestureState;->CANCELED:Lcom/android/server/policy/gesture/GestureListenerBase$GestureState;

    iput-object v1, p0, Lcom/android/server/policy/gesture/RecentGestureListener;->mGestureState:Lcom/android/server/policy/gesture/GestureListenerBase$GestureState;

    goto/16 :goto_124

    .line 207
    :cond_a0
    :goto_a0
    iget-object v1, p0, Lcom/android/server/policy/gesture/RecentGestureListener;->mDir:Lcom/android/server/policy/gesture/RecentGestureListener$RecentsDir;

    sget-object v2, Lcom/android/server/policy/gesture/RecentGestureListener$RecentsDir;->HORIZONTAL_BOTTOM:Lcom/android/server/policy/gesture/RecentGestureListener$RecentsDir;

    if-ne v1, v2, :cond_a8

    .line 208
    iget v0, p0, Lcom/android/server/policy/gesture/RecentGestureListener;->mDeviceBottomTouchSlop:I

    .line 210
    :cond_a8
    iget v1, p0, Lcom/android/server/policy/gesture/RecentGestureListener;->mRecentPanelDownPosY:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    sub-float/2addr v1, v2

    int-to-float v2, v0

    cmpl-float v1, v1, v2

    if-gtz v1, :cond_d6

    iget v1, p0, Lcom/android/server/policy/gesture/RecentGestureListener;->mRecentPanelDownPosX:F

    .line 211
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    int-to-float v2, v0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_c5

    goto :goto_d6

    .line 213
    :cond_c5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    iget v2, p0, Lcom/android/server/policy/gesture/RecentGestureListener;->mRecentPanelDownPosY:F

    sub-float/2addr v1, v2

    int-to-float v2, v0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_124

    .line 214
    sget-object v1, Lcom/android/server/policy/gesture/GestureListenerBase$GestureState;->CANCELED:Lcom/android/server/policy/gesture/GestureListenerBase$GestureState;

    iput-object v1, p0, Lcom/android/server/policy/gesture/RecentGestureListener;->mGestureState:Lcom/android/server/policy/gesture/GestureListenerBase$GestureState;

    goto :goto_124

    .line 212
    :cond_d6
    :goto_d6
    sget-object v1, Lcom/android/server/policy/gesture/GestureListenerBase$GestureState;->TRIGGERED:Lcom/android/server/policy/gesture/GestureListenerBase$GestureState;

    iput-object v1, p0, Lcom/android/server/policy/gesture/RecentGestureListener;->mGestureState:Lcom/android/server/policy/gesture/GestureListenerBase$GestureState;

    goto :goto_124

    .line 196
    :cond_db
    :goto_db
    iget-object v1, p0, Lcom/android/server/policy/gesture/RecentGestureListener;->mDir:Lcom/android/server/policy/gesture/RecentGestureListener$RecentsDir;

    sget-object v2, Lcom/android/server/policy/gesture/RecentGestureListener$RecentsDir;->LANDSCAPE_RIGHT:Lcom/android/server/policy/gesture/RecentGestureListener$RecentsDir;

    if-eq v1, v2, :cond_e7

    iget-object v1, p0, Lcom/android/server/policy/gesture/RecentGestureListener;->mDir:Lcom/android/server/policy/gesture/RecentGestureListener$RecentsDir;

    sget-object v2, Lcom/android/server/policy/gesture/RecentGestureListener$RecentsDir;->REVERSE_LANDSCAPE_RIGHT:Lcom/android/server/policy/gesture/RecentGestureListener$RecentsDir;

    if-ne v1, v2, :cond_e9

    .line 197
    :cond_e7
    iget v0, p0, Lcom/android/server/policy/gesture/RecentGestureListener;->mDeviceBottomTouchSlop:I

    .line 199
    :cond_e9
    iget v1, p0, Lcom/android/server/policy/gesture/RecentGestureListener;->mRecentPanelDownPosX:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    sub-float/2addr v1, v2

    int-to-float v2, v0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_fa

    .line 200
    sget-object v1, Lcom/android/server/policy/gesture/GestureListenerBase$GestureState;->TRIGGERED:Lcom/android/server/policy/gesture/GestureListenerBase$GestureState;

    iput-object v1, p0, Lcom/android/server/policy/gesture/RecentGestureListener;->mGestureState:Lcom/android/server/policy/gesture/GestureListenerBase$GestureState;

    goto :goto_124

    .line 201
    :cond_fa
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    iget v2, p0, Lcom/android/server/policy/gesture/RecentGestureListener;->mRecentPanelDownPosX:F

    sub-float/2addr v1, v2

    int-to-float v3, v0

    cmpl-float v1, v1, v3

    if-gtz v1, :cond_120

    .line 202
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    sub-float/2addr v2, v1

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v1

    iget v2, p0, Lcom/android/server/policy/gesture/RecentGestureListener;->mRecentPanelDownPosY:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v3

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    invoke-direct {p0, v1, v2}, Lcom/android/server/policy/gesture/RecentGestureListener;->isValidSideGestureAngle(FF)Z

    move-result v1

    if-nez v1, :cond_124

    .line 203
    :cond_120
    sget-object v1, Lcom/android/server/policy/gesture/GestureListenerBase$GestureState;->CANCELED:Lcom/android/server/policy/gesture/GestureListenerBase$GestureState;

    iput-object v1, p0, Lcom/android/server/policy/gesture/RecentGestureListener;->mGestureState:Lcom/android/server/policy/gesture/GestureListenerBase$GestureState;

    .line 227
    :cond_124
    :goto_124
    return-void
.end method

.method private handleActionPassTouser(ILandroid/view/MotionEvent;)I
    .registers 6
    .param p1, "result"  # I
    .param p2, "event"  # Landroid/view/MotionEvent;

    .line 139
    move v0, p1

    .line 140
    .local v0, "tempResult":I
    iget-object v1, p0, Lcom/android/server/policy/gesture/RecentGestureListener;->mGestureState:Lcom/android/server/policy/gesture/GestureListenerBase$GestureState;

    sget-object v2, Lcom/android/server/policy/gesture/GestureListenerBase$GestureState;->TRIGGERED:Lcom/android/server/policy/gesture/GestureListenerBase$GestureState;

    if-ne v1, v2, :cond_9

    const/4 v1, 0x1

    goto :goto_a

    :cond_9
    const/4 v1, 0x0

    :goto_a
    iput-boolean v1, p0, Lcom/android/server/policy/gesture/RecentGestureListener;->mActionNotpassToUser:Z

    .line 141
    iget-boolean v1, p0, Lcom/android/server/policy/gesture/RecentGestureListener;->mActionNotpassToUser:Z

    if-eqz v1, :cond_13

    .line 142
    and-int/lit8 v0, v0, -0x2

    goto :goto_14

    .line 144
    :cond_13
    const/4 v0, 0x1

    .line 146
    :goto_14
    return v0
.end method

.method private isInRecentPanelModeArea(Landroid/view/MotionEvent;)Z
    .registers 7
    .param p1, "event"  # Landroid/view/MotionEvent;

    .line 150
    iget-object v0, p0, Lcom/android/server/policy/gesture/RecentGestureListener;->mDisplay:Landroid/view/Display;

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    .line 151
    .local v0, "rot":I
    sget-object v1, Lcom/android/server/policy/gesture/RecentGestureListener$RecentsDir;->HORIZONTAL_BOTTOM:Lcom/android/server/policy/gesture/RecentGestureListener$RecentsDir;

    iput-object v1, p0, Lcom/android/server/policy/gesture/RecentGestureListener;->mDir:Lcom/android/server/policy/gesture/RecentGestureListener$RecentsDir;

    .line 152
    const/4 v1, 0x1

    if-eqz v0, :cond_78

    if-eq v0, v1, :cond_17

    const/4 v2, 0x2

    if-eq v0, v2, :cond_78

    const/4 v2, 0x3

    if-eq v0, v2, :cond_17

    goto/16 :goto_e4

    .line 168
    :cond_17
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    iget v3, p0, Lcom/android/server/policy/gesture/RecentGestureListener;->GESTURE_VALID_LEFT_OFFSET:I

    int-to-float v3, v3

    cmpg-float v2, v2, v3

    if-gez v2, :cond_3a

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    iget v3, p0, Lcom/android/server/policy/gesture/RecentGestureListener;->DEVICE_WIDTH:I

    iget v4, p0, Lcom/android/server/policy/gesture/RecentGestureListener;->RECENT_LANDSCAPE_LEFT_RIGHT_VALID_BOTTOM_OFFSET:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    cmpg-float v2, v2, v3

    if-gtz v2, :cond_3a

    .line 169
    if-ne v0, v1, :cond_35

    sget-object v2, Lcom/android/server/policy/gesture/RecentGestureListener$RecentsDir;->LANDSCAPE_LEFT:Lcom/android/server/policy/gesture/RecentGestureListener$RecentsDir;

    goto :goto_37

    :cond_35
    sget-object v2, Lcom/android/server/policy/gesture/RecentGestureListener$RecentsDir;->REVERSE_LANDSCAPE_LEFT:Lcom/android/server/policy/gesture/RecentGestureListener$RecentsDir;

    :goto_37
    iput-object v2, p0, Lcom/android/server/policy/gesture/RecentGestureListener;->mDir:Lcom/android/server/policy/gesture/RecentGestureListener$RecentsDir;

    .line 170
    return v1

    .line 171
    :cond_3a
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    iget v3, p0, Lcom/android/server/policy/gesture/RecentGestureListener;->DEVICE_HEIGHT:I

    iget v4, p0, Lcom/android/server/policy/gesture/RecentGestureListener;->GESTURE_VALID_LEFT_OFFSET:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_60

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    iget v3, p0, Lcom/android/server/policy/gesture/RecentGestureListener;->DEVICE_WIDTH:I

    iget v4, p0, Lcom/android/server/policy/gesture/RecentGestureListener;->RECENT_LANDSCAPE_LEFT_RIGHT_VALID_BOTTOM_OFFSET:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    cmpg-float v2, v2, v3

    if-gtz v2, :cond_60

    .line 172
    if-ne v0, v1, :cond_5b

    sget-object v2, Lcom/android/server/policy/gesture/RecentGestureListener$RecentsDir;->LANDSCAPE_RIGHT:Lcom/android/server/policy/gesture/RecentGestureListener$RecentsDir;

    goto :goto_5d

    :cond_5b
    sget-object v2, Lcom/android/server/policy/gesture/RecentGestureListener$RecentsDir;->REVERSE_LANDSCAPE_RIGHT:Lcom/android/server/policy/gesture/RecentGestureListener$RecentsDir;

    :goto_5d
    iput-object v2, p0, Lcom/android/server/policy/gesture/RecentGestureListener;->mDir:Lcom/android/server/policy/gesture/RecentGestureListener$RecentsDir;

    .line 173
    return v1

    .line 174
    :cond_60
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    iget v3, p0, Lcom/android/server/policy/gesture/RecentGestureListener;->DEVICE_WIDTH:I

    iget v4, p0, Lcom/android/server/policy/gesture/RecentGestureListener;->GESTURE_VALID_BOTTOM_OFFSET:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_e4

    .line 175
    if-ne v0, v1, :cond_73

    sget-object v2, Lcom/android/server/policy/gesture/RecentGestureListener$RecentsDir;->LANDSCAPE_BOTTOM:Lcom/android/server/policy/gesture/RecentGestureListener$RecentsDir;

    goto :goto_75

    :cond_73
    sget-object v2, Lcom/android/server/policy/gesture/RecentGestureListener$RecentsDir;->REVERSE_LANDSCAPE_BOTTOM:Lcom/android/server/policy/gesture/RecentGestureListener$RecentsDir;

    :goto_75
    iput-object v2, p0, Lcom/android/server/policy/gesture/RecentGestureListener;->mDir:Lcom/android/server/policy/gesture/RecentGestureListener$RecentsDir;

    .line 176
    return v1

    .line 155
    :cond_78
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    iget v3, p0, Lcom/android/server/policy/gesture/RecentGestureListener;->GESTURE_VALID_LEFT_OFFSET:I

    int-to-float v3, v3

    cmpg-float v2, v2, v3

    if-gez v2, :cond_a3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    iget v3, p0, Lcom/android/server/policy/gesture/RecentGestureListener;->DEVICE_HEIGHT:I

    div-int/lit8 v3, v3, 0x4

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_a3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    iget v3, p0, Lcom/android/server/policy/gesture/RecentGestureListener;->DEVICE_HEIGHT:I

    iget v4, p0, Lcom/android/server/policy/gesture/RecentGestureListener;->RECENT_HORIZONTAL_LEFT_RIGHT_VALID_BOTTOM_OFFSET:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    cmpg-float v2, v2, v3

    if-gtz v2, :cond_a3

    .line 156
    sget-object v2, Lcom/android/server/policy/gesture/RecentGestureListener$RecentsDir;->HORIZONTAL_LEFT:Lcom/android/server/policy/gesture/RecentGestureListener$RecentsDir;

    iput-object v2, p0, Lcom/android/server/policy/gesture/RecentGestureListener;->mDir:Lcom/android/server/policy/gesture/RecentGestureListener$RecentsDir;

    .line 157
    return v1

    .line 158
    :cond_a3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    iget v3, p0, Lcom/android/server/policy/gesture/RecentGestureListener;->DEVICE_WIDTH:I

    iget v4, p0, Lcom/android/server/policy/gesture/RecentGestureListener;->GESTURE_VALID_LEFT_OFFSET:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_d1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    iget v3, p0, Lcom/android/server/policy/gesture/RecentGestureListener;->DEVICE_HEIGHT:I

    div-int/lit8 v3, v3, 0x4

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_d1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    iget v3, p0, Lcom/android/server/policy/gesture/RecentGestureListener;->DEVICE_HEIGHT:I

    iget v4, p0, Lcom/android/server/policy/gesture/RecentGestureListener;->RECENT_HORIZONTAL_LEFT_RIGHT_VALID_BOTTOM_OFFSET:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    cmpg-float v2, v2, v3

    if-gtz v2, :cond_d1

    .line 159
    sget-object v2, Lcom/android/server/policy/gesture/RecentGestureListener$RecentsDir;->HORIZONTAL_RIGHT:Lcom/android/server/policy/gesture/RecentGestureListener$RecentsDir;

    iput-object v2, p0, Lcom/android/server/policy/gesture/RecentGestureListener;->mDir:Lcom/android/server/policy/gesture/RecentGestureListener$RecentsDir;

    .line 160
    return v1

    .line 161
    :cond_d1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    iget v3, p0, Lcom/android/server/policy/gesture/RecentGestureListener;->DEVICE_HEIGHT:I

    iget v4, p0, Lcom/android/server/policy/gesture/RecentGestureListener;->GESTURE_VALID_BOTTOM_OFFSET:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_e4

    .line 162
    sget-object v2, Lcom/android/server/policy/gesture/RecentGestureListener$RecentsDir;->HORIZONTAL_BOTTOM:Lcom/android/server/policy/gesture/RecentGestureListener$RecentsDir;

    iput-object v2, p0, Lcom/android/server/policy/gesture/RecentGestureListener;->mDir:Lcom/android/server/policy/gesture/RecentGestureListener$RecentsDir;

    .line 163
    return v1

    .line 183
    :cond_e4
    :goto_e4
    const/4 v1, 0x0

    return v1
.end method

.method private isValidSideGestureAngle(FF)Z
    .registers 7
    .param p1, "absDeltaX"  # F
    .param p2, "absDeltaY"  # F

    .line 278
    float-to-double v0, p2

    float-to-double v2, p1

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v0

    double-to-float v0, v0

    .line 282
    .local v0, "angle":F
    const/high16 v1, 0x42800000  # 64.0f

    cmpg-float v1, v0, v1

    if-gez v1, :cond_13

    const/4 v1, 0x1

    goto :goto_14

    :cond_13
    const/4 v1, 0x0

    :goto_14
    return v1
.end method


# virtual methods
.method public dispatcherWaitToCheckSystemGesture(Landroid/view/MotionEvent;I)Z
    .registers 4
    .param p1, "event"  # Landroid/view/MotionEvent;
    .param p2, "displayId"  # I

    .line 268
    iget v0, p0, Lcom/android/server/policy/gesture/RecentGestureListener;->mGesturePreTriggerBehavior:I

    if-nez v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method protected getSupportGestureType()I
    .registers 3

    .line 237
    sget-object v0, Lcom/android/server/policy/gesture/RecentGestureListener$1;->$SwitchMap$com$android$server$policy$gesture$RecentGestureListener$RecentsDir:[I

    iget-object v1, p0, Lcom/android/server/policy/gesture/RecentGestureListener;->mDir:Lcom/android/server/policy/gesture/RecentGestureListener$RecentsDir;

    invoke-virtual {v1}, Lcom/android/server/policy/gesture/RecentGestureListener$RecentsDir;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_16

    .line 254
    const/4 v0, 0x1

    .local v0, "gestureType":I
    goto :goto_15

    .line 251
    .end local v0  # "gestureType":I
    :pswitch_f  #0x7, 0x8, 0x9
    const/4 v0, 0x1

    .line 252
    .restart local v0  # "gestureType":I
    goto :goto_15

    .line 246
    .end local v0  # "gestureType":I
    :pswitch_11  #0x4, 0x5, 0x6
    const/4 v0, 0x4

    .line 247
    .restart local v0  # "gestureType":I
    goto :goto_15

    .line 241
    .end local v0  # "gestureType":I
    :pswitch_13  #0x1, 0x2, 0x3
    const/4 v0, 0x3

    .line 242
    .restart local v0  # "gestureType":I
    nop

    .line 258
    :goto_15
    return v0

    :pswitch_data_16
    .packed-switch 0x1
        :pswitch_13  #00000001
        :pswitch_13  #00000002
        :pswitch_13  #00000003
        :pswitch_11  #00000004
        :pswitch_11  #00000005
        :pswitch_11  #00000006
        :pswitch_f  #00000007
        :pswitch_f  #00000008
        :pswitch_f  #00000009
    .end packed-switch
.end method

.method public interceptMotionBeforeDispatching(Landroid/view/MotionEvent;II)J
    .registers 7
    .param p1, "event"  # Landroid/view/MotionEvent;
    .param p2, "policyFlags"  # I
    .param p3, "displayId"  # I

    .line 273
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lcom/android/server/policy/gesture/RecentGestureListener;->handleActionPassTouser(ILandroid/view/MotionEvent;)I

    move-result v0

    .line 274
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
    .registers 9
    .param p1, "event"  # Landroid/view/MotionEvent;
    .param p2, "policyFlags"  # I

    .line 83
    invoke-super {p0, p1, p2}, Lcom/android/server/policy/gesture/GestureListenerBase;->interceptMotionBeforeQueueing(Landroid/view/MotionEvent;I)I

    .line 84
    const/4 v0, 0x1

    .line 85
    .local v0, "result":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    const/4 v2, -0x1

    if-eqz v1, :cond_85

    const/4 v3, 0x1

    if-eq v1, v3, :cond_48

    const/4 v4, 0x2

    if-eq v1, v4, :cond_2c

    const/4 v4, 0x3

    if-eq v1, v4, :cond_48

    const/4 v2, 0x5

    if-eq v1, v2, :cond_19

    goto/16 :goto_107

    .line 129
    :cond_19
    iget-object v1, p0, Lcom/android/server/policy/gesture/RecentGestureListener;->mGestureState:Lcom/android/server/policy/gesture/GestureListenerBase$GestureState;

    sget-object v2, Lcom/android/server/policy/gesture/GestureListenerBase$GestureState;->TRIGGERED:Lcom/android/server/policy/gesture/GestureListenerBase$GestureState;

    if-eq v1, v2, :cond_107

    .line 130
    iget-object v1, p0, Lcom/android/server/policy/gesture/RecentGestureListener;->TAG:Ljava/lang/String;

    const-string v2, "Only support one finger gesture to avoid misoperation"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    sget-object v1, Lcom/android/server/policy/gesture/GestureListenerBase$GestureState;->CANCELED:Lcom/android/server/policy/gesture/GestureListenerBase$GestureState;

    iput-object v1, p0, Lcom/android/server/policy/gesture/RecentGestureListener;->mGestureState:Lcom/android/server/policy/gesture/GestureListenerBase$GestureState;

    goto/16 :goto_107

    .line 106
    :cond_2c
    iget-object v1, p0, Lcom/android/server/policy/gesture/RecentGestureListener;->mGestureState:Lcom/android/server/policy/gesture/GestureListenerBase$GestureState;

    sget-object v2, Lcom/android/server/policy/gesture/GestureListenerBase$GestureState;->PENDING_CHECK:Lcom/android/server/policy/gesture/GestureListenerBase$GestureState;

    if-ne v1, v2, :cond_39

    .line 107
    invoke-direct {p0, p1}, Lcom/android/server/policy/gesture/RecentGestureListener;->checkRecentsGesture(Landroid/view/MotionEvent;)V

    .line 108
    invoke-direct {p0, v0, p1}, Lcom/android/server/policy/gesture/RecentGestureListener;->handleActionPassTouser(ILandroid/view/MotionEvent;)I

    move-result v0

    .line 110
    :cond_39
    iget-object v1, p0, Lcom/android/server/policy/gesture/RecentGestureListener;->mGestureState:Lcom/android/server/policy/gesture/GestureListenerBase$GestureState;

    sget-object v2, Lcom/android/server/policy/gesture/GestureListenerBase$GestureState;->TRIGGERED:Lcom/android/server/policy/gesture/GestureListenerBase$GestureState;

    if-ne v1, v2, :cond_107

    .line 111
    invoke-virtual {p0, p1}, Lcom/android/server/policy/gesture/RecentGestureListener;->notifyGestureTriggered(Landroid/view/MotionEvent;)V

    .line 112
    invoke-direct {p0, v0, p1}, Lcom/android/server/policy/gesture/RecentGestureListener;->handleActionPassTouser(ILandroid/view/MotionEvent;)I

    move-result v0

    goto/16 :goto_107

    .line 117
    :cond_48
    iget-object v1, p0, Lcom/android/server/policy/gesture/RecentGestureListener;->mGestureState:Lcom/android/server/policy/gesture/GestureListenerBase$GestureState;

    sget-object v4, Lcom/android/server/policy/gesture/GestureListenerBase$GestureState;->PENDING_CHECK:Lcom/android/server/policy/gesture/GestureListenerBase$GestureState;

    if-eq v1, v4, :cond_5a

    iget-object v1, p0, Lcom/android/server/policy/gesture/RecentGestureListener;->mGestureState:Lcom/android/server/policy/gesture/GestureListenerBase$GestureState;

    sget-object v4, Lcom/android/server/policy/gesture/GestureListenerBase$GestureState;->TRIGGERED:Lcom/android/server/policy/gesture/GestureListenerBase$GestureState;

    if-eq v1, v4, :cond_5a

    iget-object v1, p0, Lcom/android/server/policy/gesture/RecentGestureListener;->mGestureState:Lcom/android/server/policy/gesture/GestureListenerBase$GestureState;

    sget-object v4, Lcom/android/server/policy/gesture/GestureListenerBase$GestureState;->CANCELED:Lcom/android/server/policy/gesture/GestureListenerBase$GestureState;

    if-ne v1, v4, :cond_7d

    .line 118
    :cond_5a
    iget-object v1, p0, Lcom/android/server/policy/gesture/RecentGestureListener;->mGestureState:Lcom/android/server/policy/gesture/GestureListenerBase$GestureState;

    sget-object v4, Lcom/android/server/policy/gesture/GestureListenerBase$GestureState;->TRIGGERED:Lcom/android/server/policy/gesture/GestureListenerBase$GestureState;

    if-ne v1, v4, :cond_6e

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-ne v1, v3, :cond_6e

    .line 119
    invoke-virtual {p0, p1}, Lcom/android/server/policy/gesture/RecentGestureListener;->notifyGestureTriggered(Landroid/view/MotionEvent;)V

    .line 120
    invoke-direct {p0, v0, p1}, Lcom/android/server/policy/gesture/RecentGestureListener;->handleActionPassTouser(ILandroid/view/MotionEvent;)I

    move-result v0

    goto :goto_7d

    .line 121
    :cond_6e
    iget-object v1, p0, Lcom/android/server/policy/gesture/RecentGestureListener;->mGestureState:Lcom/android/server/policy/gesture/GestureListenerBase$GestureState;

    sget-object v3, Lcom/android/server/policy/gesture/GestureListenerBase$GestureState;->CANCELED:Lcom/android/server/policy/gesture/GestureListenerBase$GestureState;

    if-eq v1, v3, :cond_7a

    iget-object v1, p0, Lcom/android/server/policy/gesture/RecentGestureListener;->mGestureState:Lcom/android/server/policy/gesture/GestureListenerBase$GestureState;

    sget-object v3, Lcom/android/server/policy/gesture/GestureListenerBase$GestureState;->PENDING_CHECK:Lcom/android/server/policy/gesture/GestureListenerBase$GestureState;

    if-ne v1, v3, :cond_7d

    .line 122
    :cond_7a
    invoke-virtual {p0}, Lcom/android/server/policy/gesture/RecentGestureListener;->notifyGestureCanceled()V

    .line 125
    :cond_7d
    :goto_7d
    sget-object v1, Lcom/android/server/policy/gesture/GestureListenerBase$GestureState;->IDLE:Lcom/android/server/policy/gesture/GestureListenerBase$GestureState;

    iput-object v1, p0, Lcom/android/server/policy/gesture/RecentGestureListener;->mGestureState:Lcom/android/server/policy/gesture/GestureListenerBase$GestureState;

    .line 126
    iput v2, p0, Lcom/android/server/policy/gesture/RecentGestureListener;->mGesturePreTriggerBehavior:I

    .line 127
    goto/16 :goto_107

    .line 87
    :cond_85
    invoke-virtual {p0}, Lcom/android/server/policy/gesture/RecentGestureListener;->hasRegisterClient()Z

    move-result v1

    if-eqz v1, :cond_107

    .line 88
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    iput v1, p0, Lcom/android/server/policy/gesture/RecentGestureListener;->mRecentPanelDownPosX:F

    .line 89
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    iput v1, p0, Lcom/android/server/policy/gesture/RecentGestureListener;->mRecentPanelDownPosY:F

    .line 90
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/server/policy/gesture/RecentGestureListener;->mMotionDownTime:J

    .line 91
    invoke-direct {p0, p1}, Lcom/android/server/policy/gesture/RecentGestureListener;->isInRecentPanelModeArea(Landroid/view/MotionEvent;)Z

    move-result v1

    .line 92
    .local v1, "inRecentArea":Z
    invoke-virtual {p0, p1}, Lcom/android/server/policy/gesture/RecentGestureListener;->isInNavigationBarGestureArea(Landroid/view/MotionEvent;)Z

    move-result v3

    .line 93
    .local v3, "isInNavigationBarGestureArea":Z
    if-nez v1, :cond_a9

    if-eqz v3, :cond_ad

    :cond_a9
    invoke-virtual {p0, p1}, Lcom/android/server/policy/gesture/RecentGestureListener;->notifyGesturePreTriggerBefore(Landroid/view/MotionEvent;)I

    move-result v2

    :cond_ad
    iput v2, p0, Lcom/android/server/policy/gesture/RecentGestureListener;->mGesturePreTriggerBehavior:I

    .line 95
    iget v2, p0, Lcom/android/server/policy/gesture/RecentGestureListener;->mGesturePreTriggerBehavior:I

    if-nez v2, :cond_b7

    .line 96
    sget-object v2, Lcom/android/server/policy/gesture/GestureListenerBase$GestureState;->PENDING_CHECK:Lcom/android/server/policy/gesture/GestureListenerBase$GestureState;

    iput-object v2, p0, Lcom/android/server/policy/gesture/RecentGestureListener;->mGestureState:Lcom/android/server/policy/gesture/GestureListenerBase$GestureState;

    .line 98
    :cond_b7
    iget-object v2, p0, Lcom/android/server/policy/gesture/RecentGestureListener;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "interceptMotionBeforeQueueing  mGesturePreTriggerBehavior "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/android/server/policy/gesture/RecentGestureListener;->mGesturePreTriggerBehavior:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", inRecentArea "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", isInNavigationBarGestureArea "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", mActionNotpassToUser "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, p0, Lcom/android/server/policy/gesture/RecentGestureListener;->mActionNotpassToUser:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", mGestureState "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/policy/gesture/RecentGestureListener;->mGestureState:Lcom/android/server/policy/gesture/GestureListenerBase$GestureState;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    iget-object v2, p0, Lcom/android/server/policy/gesture/RecentGestureListener;->mGestureState:Lcom/android/server/policy/gesture/GestureListenerBase$GestureState;

    sget-object v4, Lcom/android/server/policy/gesture/GestureListenerBase$GestureState;->TRIGGERED:Lcom/android/server/policy/gesture/GestureListenerBase$GestureState;

    if-eq v2, v4, :cond_100

    iget-object v2, p0, Lcom/android/server/policy/gesture/RecentGestureListener;->mGestureState:Lcom/android/server/policy/gesture/GestureListenerBase$GestureState;

    sget-object v4, Lcom/android/server/policy/gesture/GestureListenerBase$GestureState;->PENDING_CHECK:Lcom/android/server/policy/gesture/GestureListenerBase$GestureState;

    if-ne v2, v4, :cond_107

    .line 100
    :cond_100
    invoke-virtual {p0, p1}, Lcom/android/server/policy/gesture/RecentGestureListener;->notifyGesturePreTrigger(Landroid/view/MotionEvent;)V

    .line 101
    invoke-direct {p0, v0, p1}, Lcom/android/server/policy/gesture/RecentGestureListener;->handleActionPassTouser(ILandroid/view/MotionEvent;)I

    move-result v0

    .line 135
    .end local v1  # "inRecentArea":Z
    .end local v3  # "isInNavigationBarGestureArea":Z
    :cond_107
    :goto_107
    return v0
.end method

.method protected isInNavigationBarGestureArea(Landroid/view/MotionEvent;)Z
    .registers 7
    .param p1, "event"  # Landroid/view/MotionEvent;

    .line 286
    iget-object v0, p0, Lcom/android/server/policy/gesture/RecentGestureListener;->mSystemGesture:Lcom/android/server/policy/gesture/SystemGesture;

    invoke-virtual {v0}, Lcom/android/server/policy/gesture/SystemGesture;->getGestureSwitchController()Lcom/android/server/policy/gesture/GestureSwitchController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/policy/gesture/GestureSwitchController;->isMBack()Z

    move-result v0

    if-nez v0, :cond_18

    iget-object v0, p0, Lcom/android/server/policy/gesture/RecentGestureListener;->mSystemGesture:Lcom/android/server/policy/gesture/SystemGesture;

    .line 287
    invoke-virtual {v0}, Lcom/android/server/policy/gesture/SystemGesture;->getGestureSwitchController()Lcom/android/server/policy/gesture/GestureSwitchController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/policy/gesture/GestureSwitchController;->isSystemGestureMode()Z

    move-result v0

    if-eqz v0, :cond_81

    .line 288
    :cond_18
    iget-object v0, p0, Lcom/android/server/policy/gesture/RecentGestureListener;->mDisplay:Landroid/view/Display;

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    .line 289
    .local v0, "rot":I
    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eqz v0, :cond_61

    if-eq v0, v2, :cond_44

    if-eq v0, v1, :cond_61

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2a

    goto :goto_81

    .line 304
    :cond_2a
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    iget v3, p0, Lcom/android/server/policy/gesture/RecentGestureListener;->NAVIGATION_BAR_HEIGHT:I

    int-to-float v3, v3

    cmpg-float v1, v1, v3

    if-gez v1, :cond_81

    .line 305
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    iget v3, p0, Lcom/android/server/policy/gesture/RecentGestureListener;->DEVICE_WIDTH:I

    iget v4, p0, Lcom/android/server/policy/gesture/RecentGestureListener;->RECENT_LANDSCAPE_LEFT_RIGHT_VALID_BOTTOM_OFFSET:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    cmpg-float v1, v1, v3

    if-gtz v1, :cond_81

    .line 306
    return v2

    .line 298
    :cond_44
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    iget v3, p0, Lcom/android/server/policy/gesture/RecentGestureListener;->DEVICE_HEIGHT:I

    iget v4, p0, Lcom/android/server/policy/gesture/RecentGestureListener;->NAVIGATION_BAR_HEIGHT:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    cmpl-float v1, v1, v3

    if-lez v1, :cond_81

    .line 299
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    iget v3, p0, Lcom/android/server/policy/gesture/RecentGestureListener;->DEVICE_WIDTH:I

    iget v4, p0, Lcom/android/server/policy/gesture/RecentGestureListener;->RECENT_LANDSCAPE_LEFT_RIGHT_VALID_BOTTOM_OFFSET:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    cmpg-float v1, v1, v3

    if-gtz v1, :cond_81

    .line 300
    return v2

    .line 292
    :cond_61
    iget-object v3, p0, Lcom/android/server/policy/gesture/RecentGestureListener;->mSystemGesture:Lcom/android/server/policy/gesture/SystemGesture;

    invoke-virtual {v3}, Lcom/android/server/policy/gesture/SystemGesture;->getGestureSwitchController()Lcom/android/server/policy/gesture/GestureSwitchController;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/policy/gesture/GestureSwitchController;->isSystemGestureMode()Z

    move-result v3

    if-eqz v3, :cond_71

    iget v3, p0, Lcom/android/server/policy/gesture/RecentGestureListener;->NAVIGATION_BAR_HEIGHT:I

    div-int/2addr v3, v1

    goto :goto_73

    :cond_71
    iget v3, p0, Lcom/android/server/policy/gesture/RecentGestureListener;->NAVIGATION_BAR_HEIGHT:I

    :goto_73
    move v1, v3

    .line 293
    .local v1, "gestureHeight":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v3

    iget v4, p0, Lcom/android/server/policy/gesture/RecentGestureListener;->DEVICE_HEIGHT:I

    sub-int/2addr v4, v1

    int-to-float v4, v4

    cmpl-float v3, v3, v4

    if-lez v3, :cond_81

    .line 294
    return v2

    .line 313
    .end local v0  # "rot":I
    .end local v1  # "gestureHeight":I
    :cond_81
    :goto_81
    const/4 v0, 0x0

    return v0
.end method

.method protected isSupportGestureType(I)Z
    .registers 3
    .param p1, "gesture"  # I

    .line 231
    const/4 v0, 0x1

    if-ne p1, v0, :cond_4

    goto :goto_5

    :cond_4
    const/4 v0, 0x0

    :goto_5
    return v0
.end method

.method protected shouldInterceptGesture()Z
    .registers 2

    .line 263
    const/4 v0, 0x1

    return v0
.end method

.method public systemReady()V
    .registers 5

    .line 62
    invoke-super {p0}, Lcom/android/server/policy/gesture/GestureListenerBase;->systemReady()V

    .line 63
    iget-object v0, p0, Lcom/android/server/policy/gesture/RecentGestureListener;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 64
    .local v0, "res":Landroid/content/res/Resources;
    const v1, 0xa070387

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/server/policy/gesture/RecentGestureListener;->GESTURE_VALID_BOTTOM_OFFSET:I

    .line 66
    const v1, 0xa07003f  # 6.50006E-33f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/server/policy/gesture/RecentGestureListener;->GESTURE_VALID_LEFT_OFFSET:I

    .line 68
    const v1, 0xa070037  # 6.500054E-33f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/server/policy/gesture/RecentGestureListener;->mDeviceBottomTouchSlop:I

    .line 70
    invoke-virtual {p0}, Lcom/android/server/policy/gesture/RecentGestureListener;->getGestureTouchSlop()I

    move-result v1

    iput v1, p0, Lcom/android/server/policy/gesture/RecentGestureListener;->RECENT_GESTURE_TOUCH_SLOP:I

    .line 71
    iget v1, p0, Lcom/android/server/policy/gesture/RecentGestureListener;->DEVICE_WIDTH:I

    div-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/android/server/policy/gesture/RecentGestureListener;->RECENT_LANDSCAPE_LEFT_RIGHT_VALID_BOTTOM_OFFSET:I

    .line 72
    const-string/jumbo v1, "navigation_bar_gesture_height"

    invoke-static {v1, v0}, Lcom/android/server/policy/gesture/ResourceUtils;->getNavbarSize(Ljava/lang/String;Landroid/content/res/Resources;)I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    mul-int/lit8 v1, v1, 0x3

    iput v1, p0, Lcom/android/server/policy/gesture/RecentGestureListener;->RECENT_HORIZONTAL_LEFT_RIGHT_VALID_BOTTOM_OFFSET:I

    .line 73
    iget-object v1, p0, Lcom/android/server/policy/gesture/RecentGestureListener;->DEBUG:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_7c

    .line 74
    iget-object v1, p0, Lcom/android/server/policy/gesture/RecentGestureListener;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "systemReady GESTURE_VALID_BOTTOM_OFFSET = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/policy/gesture/RecentGestureListener;->GESTURE_VALID_BOTTOM_OFFSET:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", RECENT_GESTURE_TOUCH_SLOP = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/policy/gesture/RecentGestureListener;->RECENT_GESTURE_TOUCH_SLOP:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", GESTURE_VALID_LEFT_OFFSET = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/policy/gesture/RecentGestureListener;->GESTURE_VALID_LEFT_OFFSET:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", RECENT_LANDSCAPE_LEFT_RIGHT_VALID_BOTTOM_OFFSET = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/policy/gesture/RecentGestureListener;->RECENT_LANDSCAPE_LEFT_RIGHT_VALID_BOTTOM_OFFSET:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    :cond_7c
    return-void
.end method
