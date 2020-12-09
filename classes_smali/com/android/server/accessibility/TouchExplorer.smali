.class Lcom/android/server/accessibility/TouchExplorer;
.super Lcom/android/server/accessibility/BaseEventStreamTransformation;
.source "TouchExplorer.java"

# interfaces
.implements Lcom/android/server/accessibility/AccessibilityGestureDetector$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;,
        Lcom/android/server/accessibility/TouchExplorer$InjectedPointerTracker;,
        Lcom/android/server/accessibility/TouchExplorer$SendAccessibilityEventDelayed;,
        Lcom/android/server/accessibility/TouchExplorer$SendHoverExitDelayed;,
        Lcom/android/server/accessibility/TouchExplorer$SendHoverEnterAndMoveDelayed;,
        Lcom/android/server/accessibility/TouchExplorer$ExitGestureDetectionModeDelayed;
    }
.end annotation


# static fields
.field private static final ALL_POINTER_ID_BITS:I = -0x1

.field private static final CLICK_LOCATION_ACCESSIBILITY_FOCUS:I = 0x1

.field private static final CLICK_LOCATION_LAST_TOUCH_EXPLORED:I = 0x2

.field private static final CLICK_LOCATION_NONE:I = 0x0

.field private static final DEBUG:Z = false

.field private static final EXIT_GESTURE_DETECTION_TIMEOUT:I = 0x7d0

.field private static final INVALID_POINTER_ID:I = -0x1

.field private static final LOG_TAG:Ljava/lang/String; = "TouchExplorer"

.field private static final MAX_DRAGGING_ANGLE_COS:F = 0.52532196f

.field private static final MAX_POINTER_COUNT:I = 0x20

.field private static final MIN_POINTER_DISTANCE_TO_USE_MIDDLE_LOCATION_DIP:I = 0xc8

.field private static final STATE_DELEGATING:I = 0x4

.field private static final STATE_DRAGGING:I = 0x2

.field private static final STATE_GESTURE_DETECTING:I = 0x5

.field private static final STATE_TOUCH_EXPLORING:I = 0x1


# instance fields
.field private final mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

.field private final mContext:Landroid/content/Context;

.field private mCurrentState:I

.field private final mDetermineUserIntentTimeout:I

.field private final mDoubleTapSlop:I

.field private mDraggingPointerId:I

.field private final mExitGestureDetectionModeDelayed:Lcom/android/server/accessibility/TouchExplorer$ExitGestureDetectionModeDelayed;

.field private final mGestureDetector:Lcom/android/server/accessibility/AccessibilityGestureDetector;

.field private final mHandler:Landroid/os/Handler;

.field private final mInjectedPointerTracker:Lcom/android/server/accessibility/TouchExplorer$InjectedPointerTracker;

.field private mLastTouchedWindowId:I

.field private mLongPressingPointerDeltaX:I

.field private mLongPressingPointerDeltaY:I

.field private mLongPressingPointerId:I

.field private final mReceivedPointerTracker:Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;

.field private final mScaledMinPointerDistanceToUseMiddleLocation:I

.field private final mSendHoverEnterAndMoveDelayed:Lcom/android/server/accessibility/TouchExplorer$SendHoverEnterAndMoveDelayed;

.field private final mSendHoverExitDelayed:Lcom/android/server/accessibility/TouchExplorer$SendHoverExitDelayed;

.field private final mSendTouchExplorationEndDelayed:Lcom/android/server/accessibility/TouchExplorer$SendAccessibilityEventDelayed;

.field private final mSendTouchInteractionEndDelayed:Lcom/android/server/accessibility/TouchExplorer$SendAccessibilityEventDelayed;

.field private final mTempPoint:Landroid/graphics/Point;

.field private mTouchExplorationInProgress:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/accessibility/AccessibilityManagerService;)V
    .registers 4

    .line 173
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/accessibility/TouchExplorer;-><init>(Landroid/content/Context;Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityGestureDetector;)V

    .line 174
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityGestureDetector;)V
    .registers 6

    .line 186
    invoke-direct {p0}, Lcom/android/server/accessibility/BaseEventStreamTransformation;-><init>()V

    .line 105
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/accessibility/TouchExplorer;->mCurrentState:I

    .line 145
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/android/server/accessibility/TouchExplorer;->mTempPoint:Landroid/graphics/Point;

    .line 151
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/accessibility/TouchExplorer;->mLongPressingPointerId:I

    .line 187
    iput-object p1, p0, Lcom/android/server/accessibility/TouchExplorer;->mContext:Landroid/content/Context;

    .line 188
    iput-object p2, p0, Lcom/android/server/accessibility/TouchExplorer;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 189
    new-instance p2, Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;

    invoke-direct {p2, p0}, Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;-><init>(Lcom/android/server/accessibility/TouchExplorer;)V

    iput-object p2, p0, Lcom/android/server/accessibility/TouchExplorer;->mReceivedPointerTracker:Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;

    .line 190
    new-instance p2, Lcom/android/server/accessibility/TouchExplorer$InjectedPointerTracker;

    invoke-direct {p2, p0}, Lcom/android/server/accessibility/TouchExplorer$InjectedPointerTracker;-><init>(Lcom/android/server/accessibility/TouchExplorer;)V

    iput-object p2, p0, Lcom/android/server/accessibility/TouchExplorer;->mInjectedPointerTracker:Lcom/android/server/accessibility/TouchExplorer$InjectedPointerTracker;

    .line 191
    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    move-result p2

    iput p2, p0, Lcom/android/server/accessibility/TouchExplorer;->mDetermineUserIntentTimeout:I

    .line 192
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/ViewConfiguration;->getScaledDoubleTapSlop()I

    move-result p2

    iput p2, p0, Lcom/android/server/accessibility/TouchExplorer;->mDoubleTapSlop:I

    .line 193
    new-instance p2, Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p2, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p2, p0, Lcom/android/server/accessibility/TouchExplorer;->mHandler:Landroid/os/Handler;

    .line 194
    new-instance p2, Lcom/android/server/accessibility/TouchExplorer$ExitGestureDetectionModeDelayed;

    const/4 v0, 0x0

    invoke-direct {p2, p0, v0}, Lcom/android/server/accessibility/TouchExplorer$ExitGestureDetectionModeDelayed;-><init>(Lcom/android/server/accessibility/TouchExplorer;Lcom/android/server/accessibility/TouchExplorer$1;)V

    iput-object p2, p0, Lcom/android/server/accessibility/TouchExplorer;->mExitGestureDetectionModeDelayed:Lcom/android/server/accessibility/TouchExplorer$ExitGestureDetectionModeDelayed;

    .line 195
    new-instance p2, Lcom/android/server/accessibility/TouchExplorer$SendHoverEnterAndMoveDelayed;

    invoke-direct {p2, p0}, Lcom/android/server/accessibility/TouchExplorer$SendHoverEnterAndMoveDelayed;-><init>(Lcom/android/server/accessibility/TouchExplorer;)V

    iput-object p2, p0, Lcom/android/server/accessibility/TouchExplorer;->mSendHoverEnterAndMoveDelayed:Lcom/android/server/accessibility/TouchExplorer$SendHoverEnterAndMoveDelayed;

    .line 196
    new-instance p2, Lcom/android/server/accessibility/TouchExplorer$SendHoverExitDelayed;

    invoke-direct {p2, p0}, Lcom/android/server/accessibility/TouchExplorer$SendHoverExitDelayed;-><init>(Lcom/android/server/accessibility/TouchExplorer;)V

    iput-object p2, p0, Lcom/android/server/accessibility/TouchExplorer;->mSendHoverExitDelayed:Lcom/android/server/accessibility/TouchExplorer$SendHoverExitDelayed;

    .line 197
    new-instance p2, Lcom/android/server/accessibility/TouchExplorer$SendAccessibilityEventDelayed;

    iget v0, p0, Lcom/android/server/accessibility/TouchExplorer;->mDetermineUserIntentTimeout:I

    const/16 v1, 0x400

    invoke-direct {p2, p0, v1, v0}, Lcom/android/server/accessibility/TouchExplorer$SendAccessibilityEventDelayed;-><init>(Lcom/android/server/accessibility/TouchExplorer;II)V

    iput-object p2, p0, Lcom/android/server/accessibility/TouchExplorer;->mSendTouchExplorationEndDelayed:Lcom/android/server/accessibility/TouchExplorer$SendAccessibilityEventDelayed;

    .line 200
    new-instance p2, Lcom/android/server/accessibility/TouchExplorer$SendAccessibilityEventDelayed;

    iget v0, p0, Lcom/android/server/accessibility/TouchExplorer;->mDetermineUserIntentTimeout:I

    const/high16 v1, 0x200000

    invoke-direct {p2, p0, v1, v0}, Lcom/android/server/accessibility/TouchExplorer$SendAccessibilityEventDelayed;-><init>(Lcom/android/server/accessibility/TouchExplorer;II)V

    iput-object p2, p0, Lcom/android/server/accessibility/TouchExplorer;->mSendTouchInteractionEndDelayed:Lcom/android/server/accessibility/TouchExplorer$SendAccessibilityEventDelayed;

    .line 203
    if-nez p3, :cond_73

    .line 204
    new-instance p2, Lcom/android/server/accessibility/AccessibilityGestureDetector;

    invoke-direct {p2, p1, p0}, Lcom/android/server/accessibility/AccessibilityGestureDetector;-><init>(Landroid/content/Context;Lcom/android/server/accessibility/AccessibilityGestureDetector$Listener;)V

    iput-object p2, p0, Lcom/android/server/accessibility/TouchExplorer;->mGestureDetector:Lcom/android/server/accessibility/AccessibilityGestureDetector;

    goto :goto_75

    .line 206
    :cond_73
    iput-object p3, p0, Lcom/android/server/accessibility/TouchExplorer;->mGestureDetector:Lcom/android/server/accessibility/AccessibilityGestureDetector;

    .line 208
    :goto_75
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    .line 209
    const/high16 p2, 0x43480000  # 200.0f

    mul-float/2addr p1, p2

    float-to-int p1, p1

    iput p1, p0, Lcom/android/server/accessibility/TouchExplorer;->mScaledMinPointerDistanceToUseMiddleLocation:I

    .line 211
    return-void
.end method

.method static synthetic access$300(Lcom/android/server/accessibility/TouchExplorer;)Landroid/os/Handler;
    .registers 1

    .line 58
    iget-object p0, p0, Lcom/android/server/accessibility/TouchExplorer;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$400(Lcom/android/server/accessibility/TouchExplorer;I)V
    .registers 2

    .line 58
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/TouchExplorer;->sendAccessibilityEvent(I)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/accessibility/TouchExplorer;)V
    .registers 1

    .line 58
    invoke-direct {p0}, Lcom/android/server/accessibility/TouchExplorer;->clear()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/accessibility/TouchExplorer;)I
    .registers 1

    .line 58
    iget p0, p0, Lcom/android/server/accessibility/TouchExplorer;->mDetermineUserIntentTimeout:I

    return p0
.end method

.method static synthetic access$700(Lcom/android/server/accessibility/TouchExplorer;Landroid/view/MotionEvent;III)V
    .registers 5

    .line 58
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/accessibility/TouchExplorer;->sendMotionEvent(Landroid/view/MotionEvent;III)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/server/accessibility/TouchExplorer;)Lcom/android/server/accessibility/TouchExplorer$SendAccessibilityEventDelayed;
    .registers 1

    .line 58
    iget-object p0, p0, Lcom/android/server/accessibility/TouchExplorer;->mSendTouchExplorationEndDelayed:Lcom/android/server/accessibility/TouchExplorer$SendAccessibilityEventDelayed;

    return-object p0
.end method

.method static synthetic access$900(Lcom/android/server/accessibility/TouchExplorer;)Lcom/android/server/accessibility/TouchExplorer$SendAccessibilityEventDelayed;
    .registers 1

    .line 58
    iget-object p0, p0, Lcom/android/server/accessibility/TouchExplorer;->mSendTouchInteractionEndDelayed:Lcom/android/server/accessibility/TouchExplorer$SendAccessibilityEventDelayed;

    return-object p0
.end method

.method private clear()V
    .registers 3

    .line 229
    iget-object v0, p0, Lcom/android/server/accessibility/TouchExplorer;->mReceivedPointerTracker:Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;

    invoke-virtual {v0}, Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;->getLastReceivedEvent()Landroid/view/MotionEvent;

    move-result-object v0

    .line 230
    if-eqz v0, :cond_13

    .line 231
    iget-object v0, p0, Lcom/android/server/accessibility/TouchExplorer;->mReceivedPointerTracker:Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;

    invoke-virtual {v0}, Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;->getLastReceivedEvent()Landroid/view/MotionEvent;

    move-result-object v0

    const/high16 v1, 0x2000000

    invoke-direct {p0, v0, v1}, Lcom/android/server/accessibility/TouchExplorer;->clear(Landroid/view/MotionEvent;I)V

    .line 233
    :cond_13
    return-void
.end method

.method private clear(Landroid/view/MotionEvent;I)V
    .registers 7

    .line 236
    iget v0, p0, Lcom/android/server/accessibility/TouchExplorer;->mCurrentState:I

    const/4 v1, -0x1

    const/4 v2, 0x1

    if-eq v0, v2, :cond_17

    const/4 v3, 0x2

    if-eq v0, v3, :cond_11

    const/4 v3, 0x4

    if-eq v0, v3, :cond_d

    goto :goto_1b

    .line 248
    :cond_d
    invoke-direct {p0, p1, p2}, Lcom/android/server/accessibility/TouchExplorer;->sendUpForInjectedDownPointers(Landroid/view/MotionEvent;I)V

    .line 249
    goto :goto_1b

    .line 242
    :cond_11
    iput v1, p0, Lcom/android/server/accessibility/TouchExplorer;->mDraggingPointerId:I

    .line 244
    invoke-direct {p0, p1, p2}, Lcom/android/server/accessibility/TouchExplorer;->sendUpForInjectedDownPointers(Landroid/view/MotionEvent;I)V

    .line 245
    goto :goto_1b

    .line 239
    :cond_17
    invoke-direct {p0, p2}, Lcom/android/server/accessibility/TouchExplorer;->sendHoverExitAndTouchExplorationGestureEndIfNeeded(I)V

    .line 240
    nop

    .line 255
    :goto_1b
    iget-object p1, p0, Lcom/android/server/accessibility/TouchExplorer;->mSendHoverEnterAndMoveDelayed:Lcom/android/server/accessibility/TouchExplorer$SendHoverEnterAndMoveDelayed;

    invoke-virtual {p1}, Lcom/android/server/accessibility/TouchExplorer$SendHoverEnterAndMoveDelayed;->cancel()V

    .line 256
    iget-object p1, p0, Lcom/android/server/accessibility/TouchExplorer;->mSendHoverExitDelayed:Lcom/android/server/accessibility/TouchExplorer$SendHoverExitDelayed;

    invoke-virtual {p1}, Lcom/android/server/accessibility/TouchExplorer$SendHoverExitDelayed;->cancel()V

    .line 257
    iget-object p1, p0, Lcom/android/server/accessibility/TouchExplorer;->mExitGestureDetectionModeDelayed:Lcom/android/server/accessibility/TouchExplorer$ExitGestureDetectionModeDelayed;

    invoke-virtual {p1}, Lcom/android/server/accessibility/TouchExplorer$ExitGestureDetectionModeDelayed;->cancel()V

    .line 258
    iget-object p1, p0, Lcom/android/server/accessibility/TouchExplorer;->mSendTouchExplorationEndDelayed:Lcom/android/server/accessibility/TouchExplorer$SendAccessibilityEventDelayed;

    invoke-virtual {p1}, Lcom/android/server/accessibility/TouchExplorer$SendAccessibilityEventDelayed;->cancel()V

    .line 259
    iget-object p1, p0, Lcom/android/server/accessibility/TouchExplorer;->mSendTouchInteractionEndDelayed:Lcom/android/server/accessibility/TouchExplorer$SendAccessibilityEventDelayed;

    invoke-virtual {p1}, Lcom/android/server/accessibility/TouchExplorer$SendAccessibilityEventDelayed;->cancel()V

    .line 261
    iget-object p1, p0, Lcom/android/server/accessibility/TouchExplorer;->mReceivedPointerTracker:Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;

    invoke-virtual {p1}, Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;->clear()V

    .line 262
    iget-object p1, p0, Lcom/android/server/accessibility/TouchExplorer;->mInjectedPointerTracker:Lcom/android/server/accessibility/TouchExplorer$InjectedPointerTracker;

    invoke-virtual {p1}, Lcom/android/server/accessibility/TouchExplorer$InjectedPointerTracker;->clear()V

    .line 264
    iget-object p1, p0, Lcom/android/server/accessibility/TouchExplorer;->mGestureDetector:Lcom/android/server/accessibility/AccessibilityGestureDetector;

    invoke-virtual {p1}, Lcom/android/server/accessibility/AccessibilityGestureDetector;->clear()V

    .line 267
    iput v1, p0, Lcom/android/server/accessibility/TouchExplorer;->mLongPressingPointerId:I

    .line 268
    const/4 p1, 0x0

    iput p1, p0, Lcom/android/server/accessibility/TouchExplorer;->mLongPressingPointerDeltaX:I

    .line 269
    iput p1, p0, Lcom/android/server/accessibility/TouchExplorer;->mLongPressingPointerDeltaY:I

    .line 270
    iput v2, p0, Lcom/android/server/accessibility/TouchExplorer;->mCurrentState:I

    .line 271
    iput-boolean p1, p0, Lcom/android/server/accessibility/TouchExplorer;->mTouchExplorationInProgress:Z

    .line 272
    iget-object p1, p0, Lcom/android/server/accessibility/TouchExplorer;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-virtual {p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->onTouchInteractionEnd()V

    .line 273
    return-void
.end method

.method private computeClickLocation(Landroid/graphics/Point;)I
    .registers 6

    .line 1097
    iget-object v0, p0, Lcom/android/server/accessibility/TouchExplorer;->mInjectedPointerTracker:Lcom/android/server/accessibility/TouchExplorer$InjectedPointerTracker;

    invoke-virtual {v0}, Lcom/android/server/accessibility/TouchExplorer$InjectedPointerTracker;->getLastInjectedHoverEventForClick()Landroid/view/MotionEvent;

    move-result-object v0

    .line 1098
    const/4 v1, 0x1

    if-eqz v0, :cond_38

    .line 1099
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v2

    .line 1100
    invoke-virtual {v0, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    float-to-int v3, v3

    iput v3, p1, Landroid/graphics/Point;->x:I

    .line 1101
    invoke-virtual {v0, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p1, Landroid/graphics/Point;->y:I

    .line 1102
    iget-object v0, p0, Lcom/android/server/accessibility/TouchExplorer;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-virtual {v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->accessibilityFocusOnlyInActiveWindow()Z

    move-result v0

    if-eqz v0, :cond_2d

    iget v0, p0, Lcom/android/server/accessibility/TouchExplorer;->mLastTouchedWindowId:I

    iget-object v2, p0, Lcom/android/server/accessibility/TouchExplorer;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 1103
    invoke-virtual {v2}, Lcom/android/server/accessibility/AccessibilityManagerService;->getActiveWindowId()I

    move-result v2

    if-ne v0, v2, :cond_38

    .line 1104
    :cond_2d
    iget-object v0, p0, Lcom/android/server/accessibility/TouchExplorer;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->getAccessibilityFocusClickPointInScreen(Landroid/graphics/Point;)Z

    move-result p1

    if-eqz p1, :cond_36

    .line 1105
    return v1

    .line 1107
    :cond_36
    const/4 p1, 0x2

    return p1

    .line 1111
    :cond_38
    iget-object v0, p0, Lcom/android/server/accessibility/TouchExplorer;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->getAccessibilityFocusClickPointInScreen(Landroid/graphics/Point;)Z

    move-result p1

    if-eqz p1, :cond_41

    .line 1112
    return v1

    .line 1114
    :cond_41
    const/4 p1, 0x0

    return p1
.end method

.method private computeInjectionAction(II)I
    .registers 5

    .line 1045
    const/4 v0, 0x5

    if-eqz p1, :cond_17

    if-eq p1, v0, :cond_17

    const/4 v0, 0x6

    if-eq p1, v0, :cond_9

    .line 1068
    return p1

    .line 1058
    :cond_9
    iget-object p1, p0, Lcom/android/server/accessibility/TouchExplorer;->mInjectedPointerTracker:Lcom/android/server/accessibility/TouchExplorer$InjectedPointerTracker;

    .line 1060
    invoke-virtual {p1}, Lcom/android/server/accessibility/TouchExplorer$InjectedPointerTracker;->getInjectedPointerDownCount()I

    move-result p1

    const/4 v1, 0x1

    if-ne p1, v1, :cond_13

    .line 1061
    return v1

    .line 1063
    :cond_13
    shl-int/lit8 p1, p2, 0x8

    or-int/2addr p1, v0

    return p1

    .line 1048
    :cond_17
    iget-object p1, p0, Lcom/android/server/accessibility/TouchExplorer;->mInjectedPointerTracker:Lcom/android/server/accessibility/TouchExplorer$InjectedPointerTracker;

    .line 1050
    invoke-virtual {p1}, Lcom/android/server/accessibility/TouchExplorer$InjectedPointerTracker;->getInjectedPointerDownCount()I

    move-result p1

    if-nez p1, :cond_21

    .line 1051
    const/4 p1, 0x0

    return p1

    .line 1053
    :cond_21
    shl-int/lit8 p1, p2, 0x8

    or-int/2addr p1, v0

    return p1
.end method

.method private endGestureDetection(Z)V
    .registers 3

    .line 813
    iget-object v0, p0, Lcom/android/server/accessibility/TouchExplorer;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-virtual {v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->onTouchInteractionEnd()V

    .line 816
    const/high16 v0, 0x80000

    invoke-direct {p0, v0}, Lcom/android/server/accessibility/TouchExplorer;->sendAccessibilityEvent(I)V

    .line 818
    if-eqz p1, :cond_11

    .line 819
    const/high16 p1, 0x200000

    invoke-direct {p0, p1}, Lcom/android/server/accessibility/TouchExplorer;->sendAccessibilityEvent(I)V

    .line 822
    :cond_11
    iget-object p1, p0, Lcom/android/server/accessibility/TouchExplorer;->mExitGestureDetectionModeDelayed:Lcom/android/server/accessibility/TouchExplorer$ExitGestureDetectionModeDelayed;

    invoke-virtual {p1}, Lcom/android/server/accessibility/TouchExplorer$ExitGestureDetectionModeDelayed;->cancel()V

    .line 823
    const/4 p1, 0x1

    iput p1, p0, Lcom/android/server/accessibility/TouchExplorer;->mCurrentState:I

    .line 824
    return-void
.end method

.method private static getStateSymbolicName(I)Ljava/lang/String;
    .registers 3

    .line 1124
    const/4 v0, 0x1

    if-eq p0, v0, :cond_27

    const/4 v0, 0x2

    if-eq p0, v0, :cond_24

    const/4 v0, 0x4

    if-eq p0, v0, :cond_21

    const/4 v0, 0x5

    if-eq p0, v0, :cond_1e

    .line 1134
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown state: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1132
    :cond_1e
    const-string p0, "STATE_GESTURE_DETECTING"

    return-object p0

    .line 1130
    :cond_21
    const-string p0, "STATE_DELEGATING"

    return-object p0

    .line 1128
    :cond_24
    const-string p0, "STATE_DRAGGING"

    return-object p0

    .line 1126
    :cond_27
    const-string p0, "STATE_TOUCH_EXPLORING"

    return-object p0
.end method

.method private handleMotionEventStateDelegating(Landroid/view/MotionEvent;I)V
    .registers 7

    .line 777
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-eqz v0, :cond_3c

    const/4 v1, 0x1

    const/4 v2, -0x1

    if-eq v0, v1, :cond_12

    .line 807
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    invoke-direct {p0, p1, v0, v2, p2}, Lcom/android/server/accessibility/TouchExplorer;->sendMotionEvent(Landroid/view/MotionEvent;III)V

    goto :goto_3b

    .line 787
    :cond_12
    iget v0, p0, Lcom/android/server/accessibility/TouchExplorer;->mLongPressingPointerId:I

    if-ltz v0, :cond_27

    .line 788
    iget v0, p0, Lcom/android/server/accessibility/TouchExplorer;->mLongPressingPointerDeltaX:I

    neg-int v0, v0

    iget v3, p0, Lcom/android/server/accessibility/TouchExplorer;->mLongPressingPointerDeltaY:I

    neg-int v3, v3

    invoke-direct {p0, p1, v0, v3}, Lcom/android/server/accessibility/TouchExplorer;->offsetEvent(Landroid/view/MotionEvent;II)Landroid/view/MotionEvent;

    move-result-object p1

    .line 791
    iput v2, p0, Lcom/android/server/accessibility/TouchExplorer;->mLongPressingPointerId:I

    .line 792
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/accessibility/TouchExplorer;->mLongPressingPointerDeltaX:I

    .line 793
    iput v0, p0, Lcom/android/server/accessibility/TouchExplorer;->mLongPressingPointerDeltaY:I

    .line 797
    :cond_27
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    invoke-direct {p0, p1, v0, v2, p2}, Lcom/android/server/accessibility/TouchExplorer;->sendMotionEvent(Landroid/view/MotionEvent;III)V

    .line 800
    iget-object p1, p0, Lcom/android/server/accessibility/TouchExplorer;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-virtual {p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->onTouchInteractionEnd()V

    .line 801
    const/high16 p1, 0x200000

    invoke-direct {p0, p1}, Lcom/android/server/accessibility/TouchExplorer;->sendAccessibilityEvent(I)V

    .line 803
    iput v1, p0, Lcom/android/server/accessibility/TouchExplorer;->mCurrentState:I

    .line 804
    nop

    .line 810
    :goto_3b
    return-void

    .line 779
    :cond_3c
    const-string v0, "TouchExplorer"

    const-string v1, "Delegating state can only be reached if there is at least one pointer down!"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 781
    invoke-direct {p0, p1, p2}, Lcom/android/server/accessibility/TouchExplorer;->clear(Landroid/view/MotionEvent;I)V

    .line 782
    return-void
.end method

.method private handleMotionEventStateDragging(Landroid/view/MotionEvent;I)V
    .registers 12

    .line 665
    nop

    .line 667
    iget v0, p0, Lcom/android/server/accessibility/TouchExplorer;->mDraggingPointerId:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    const-string v1, "TouchExplorer"

    const/4 v2, 0x0

    const/4 v3, -0x1

    const/4 v4, 0x1

    if-ne v0, v3, :cond_34

    .line 668
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mDraggingPointerId doesn\'t match any pointers on current event. mDraggingPointerId: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/android/server/accessibility/TouchExplorer;->mDraggingPointerId:I

    .line 669
    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", Event: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 668
    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 671
    iput v3, p0, Lcom/android/server/accessibility/TouchExplorer;->mDraggingPointerId:I

    move v0, v2

    goto :goto_38

    .line 673
    :cond_34
    iget v0, p0, Lcom/android/server/accessibility/TouchExplorer;->mDraggingPointerId:I

    shl-int v0, v4, v0

    .line 675
    :goto_38
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v5

    if-eqz v5, :cond_f4

    if-eq v5, v4, :cond_d6

    const/4 v1, 0x4

    const/4 v6, 0x2

    if-eq v5, v6, :cond_6d

    const/4 v2, 0x5

    if-eq v5, v2, :cond_5f

    const/4 v1, 0x6

    if-eq v5, v1, :cond_4c

    goto/16 :goto_f3

    .line 747
    :cond_4c
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    .line 748
    iget v2, p0, Lcom/android/server/accessibility/TouchExplorer;->mDraggingPointerId:I

    if-ne v1, v2, :cond_5d

    .line 749
    iput v3, p0, Lcom/android/server/accessibility/TouchExplorer;->mDraggingPointerId:I

    .line 751
    invoke-direct {p0, p1, v4, v0, p2}, Lcom/android/server/accessibility/TouchExplorer;->sendMotionEvent(Landroid/view/MotionEvent;III)V

    .line 753
    :cond_5d
    goto/16 :goto_f3

    .line 685
    :cond_5f
    iput v1, p0, Lcom/android/server/accessibility/TouchExplorer;->mCurrentState:I

    .line 686
    iget v1, p0, Lcom/android/server/accessibility/TouchExplorer;->mDraggingPointerId:I

    if-eq v1, v3, :cond_68

    .line 687
    invoke-direct {p0, p1, v4, v0, p2}, Lcom/android/server/accessibility/TouchExplorer;->sendMotionEvent(Landroid/view/MotionEvent;III)V

    .line 689
    :cond_68
    invoke-direct {p0, p1, p2}, Lcom/android/server/accessibility/TouchExplorer;->sendDownForAllNotInjectedPointers(Landroid/view/MotionEvent;I)V

    .line 690
    goto/16 :goto_f3

    .line 692
    :cond_6d
    iget v5, p0, Lcom/android/server/accessibility/TouchExplorer;->mDraggingPointerId:I

    if-ne v5, v3, :cond_73

    .line 693
    goto/16 :goto_f3

    .line 695
    :cond_73
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v3

    if-eq v3, v4, :cond_d5

    if-eq v3, v6, :cond_88

    .line 736
    iput v1, p0, Lcom/android/server/accessibility/TouchExplorer;->mCurrentState:I

    .line 737
    invoke-static {p1}, Landroid/view/MotionEvent;->obtainNoHistory(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object p1

    .line 739
    invoke-direct {p0, p1, v4, v0, p2}, Lcom/android/server/accessibility/TouchExplorer;->sendMotionEvent(Landroid/view/MotionEvent;III)V

    .line 742
    invoke-direct {p0, p1, p2}, Lcom/android/server/accessibility/TouchExplorer;->sendDownForAllNotInjectedPointers(Landroid/view/MotionEvent;I)V

    .line 745
    goto :goto_f3

    .line 700
    :cond_88
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/TouchExplorer;->isDraggingGesture(Landroid/view/MotionEvent;)Z

    move-result v3

    if-eqz v3, :cond_c8

    .line 701
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    .line 702
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    .line 703
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    .line 704
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getY(I)F

    move-result v4

    .line 706
    iget v5, p0, Lcom/android/server/accessibility/TouchExplorer;->mDraggingPointerId:I

    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v5

    .line 708
    if-nez v5, :cond_a8

    sub-float/2addr v3, v1

    goto :goto_aa

    .line 709
    :cond_a8
    sub-float v3, v1, v3

    .line 711
    :goto_aa
    if-nez v5, :cond_ae

    sub-float/2addr v4, v2

    goto :goto_b0

    .line 712
    :cond_ae
    sub-float v4, v2, v4

    .line 713
    :goto_b0
    float-to-double v1, v3

    float-to-double v7, v4

    invoke-static {v1, v2, v7, v8}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v1

    .line 715
    iget v5, p0, Lcom/android/server/accessibility/TouchExplorer;->mScaledMinPointerDistanceToUseMiddleLocation:I

    int-to-double v7, v5

    cmpl-double v1, v1, v7

    if-lez v1, :cond_c4

    .line 716
    const/high16 v1, 0x40000000  # 2.0f

    div-float/2addr v3, v1

    div-float/2addr v4, v1

    invoke-virtual {p1, v3, v4}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 720
    :cond_c4
    invoke-direct {p0, p1, v6, v0, p2}, Lcom/android/server/accessibility/TouchExplorer;->sendMotionEvent(Landroid/view/MotionEvent;III)V

    .line 722
    goto :goto_f3

    .line 725
    :cond_c8
    iput v1, p0, Lcom/android/server/accessibility/TouchExplorer;->mCurrentState:I

    .line 727
    invoke-static {p1}, Landroid/view/MotionEvent;->obtainNoHistory(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object p1

    .line 729
    invoke-direct {p0, p1, v4, v0, p2}, Lcom/android/server/accessibility/TouchExplorer;->sendMotionEvent(Landroid/view/MotionEvent;III)V

    .line 732
    invoke-direct {p0, p1, p2}, Lcom/android/server/accessibility/TouchExplorer;->sendDownForAllNotInjectedPointers(Landroid/view/MotionEvent;I)V

    .line 734
    goto :goto_f3

    .line 698
    :cond_d5
    goto :goto_f3

    .line 755
    :cond_d6
    iget-object v1, p0, Lcom/android/server/accessibility/TouchExplorer;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-virtual {v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->onTouchInteractionEnd()V

    .line 757
    const/high16 v1, 0x200000

    invoke-direct {p0, v1}, Lcom/android/server/accessibility/TouchExplorer;->sendAccessibilityEvent(I)V

    .line 759
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    .line 760
    iget v2, p0, Lcom/android/server/accessibility/TouchExplorer;->mDraggingPointerId:I

    if-ne v1, v2, :cond_f1

    .line 761
    iput v3, p0, Lcom/android/server/accessibility/TouchExplorer;->mDraggingPointerId:I

    .line 763
    invoke-direct {p0, p1, v4, v0, p2}, Lcom/android/server/accessibility/TouchExplorer;->sendMotionEvent(Landroid/view/MotionEvent;III)V

    .line 765
    :cond_f1
    iput v4, p0, Lcom/android/server/accessibility/TouchExplorer;->mCurrentState:I

    .line 768
    :goto_f3
    return-void

    .line 677
    :cond_f4
    const-string v0, "Dragging state can be reached only if two pointers are already down"

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 679
    invoke-direct {p0, p1, p2}, Lcom/android/server/accessibility/TouchExplorer;->clear(Landroid/view/MotionEvent;I)V

    .line 680
    return-void
.end method

.method private handleMotionEventStateTouchExploring(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
    .registers 14

    .line 504
    iget-object v0, p0, Lcom/android/server/accessibility/TouchExplorer;->mReceivedPointerTracker:Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;

    .line 506
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_f6

    if-eq v1, v2, :cond_c8

    const/4 v3, 0x2

    if-eq v1, v3, :cond_1f

    const/4 p1, 0x5

    if-eq v1, p1, :cond_13

    goto/16 :goto_14e

    .line 549
    :cond_13
    iget-object p1, p0, Lcom/android/server/accessibility/TouchExplorer;->mSendHoverEnterAndMoveDelayed:Lcom/android/server/accessibility/TouchExplorer$SendHoverEnterAndMoveDelayed;

    invoke-virtual {p1}, Lcom/android/server/accessibility/TouchExplorer$SendHoverEnterAndMoveDelayed;->cancel()V

    .line 550
    iget-object p1, p0, Lcom/android/server/accessibility/TouchExplorer;->mSendHoverExitDelayed:Lcom/android/server/accessibility/TouchExplorer$SendHoverExitDelayed;

    invoke-virtual {p1}, Lcom/android/server/accessibility/TouchExplorer$SendHoverExitDelayed;->cancel()V

    .line 551
    goto/16 :goto_14e

    .line 553
    :cond_1f
    invoke-virtual {v0}, Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;->getPrimaryPointerId()I

    move-result v1

    .line 554
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v4

    .line 555
    shl-int v5, v2, v1

    .line 556
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v6

    if-eq v6, v2, :cond_ad

    const/4 v2, 0x4

    if-eq v6, v3, :cond_53

    .line 619
    iget-object p2, p0, Lcom/android/server/accessibility/TouchExplorer;->mSendHoverEnterAndMoveDelayed:Lcom/android/server/accessibility/TouchExplorer$SendHoverEnterAndMoveDelayed;

    invoke-static {p2}, Lcom/android/server/accessibility/TouchExplorer$SendHoverEnterAndMoveDelayed;->access$200(Lcom/android/server/accessibility/TouchExplorer$SendHoverEnterAndMoveDelayed;)Z

    move-result p2

    if-eqz p2, :cond_45

    .line 622
    iget-object p2, p0, Lcom/android/server/accessibility/TouchExplorer;->mSendHoverEnterAndMoveDelayed:Lcom/android/server/accessibility/TouchExplorer$SendHoverEnterAndMoveDelayed;

    invoke-virtual {p2}, Lcom/android/server/accessibility/TouchExplorer$SendHoverEnterAndMoveDelayed;->cancel()V

    .line 623
    iget-object p2, p0, Lcom/android/server/accessibility/TouchExplorer;->mSendHoverExitDelayed:Lcom/android/server/accessibility/TouchExplorer$SendHoverExitDelayed;

    invoke-virtual {p2}, Lcom/android/server/accessibility/TouchExplorer$SendHoverExitDelayed;->cancel()V

    goto :goto_48

    .line 627
    :cond_45
    invoke-direct {p0, p3}, Lcom/android/server/accessibility/TouchExplorer;->sendHoverExitAndTouchExplorationGestureEndIfNeeded(I)V

    .line 631
    :goto_48
    iput v2, p0, Lcom/android/server/accessibility/TouchExplorer;->mCurrentState:I

    .line 632
    invoke-static {p1}, Landroid/view/MotionEvent;->obtainNoHistory(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object p1

    .line 633
    invoke-direct {p0, p1, p3}, Lcom/android/server/accessibility/TouchExplorer;->sendDownForAllNotInjectedPointers(Landroid/view/MotionEvent;I)V

    goto/16 :goto_c6

    .line 574
    :cond_53
    iget-object v6, p0, Lcom/android/server/accessibility/TouchExplorer;->mSendHoverEnterAndMoveDelayed:Lcom/android/server/accessibility/TouchExplorer$SendHoverEnterAndMoveDelayed;

    invoke-static {v6}, Lcom/android/server/accessibility/TouchExplorer$SendHoverEnterAndMoveDelayed;->access$200(Lcom/android/server/accessibility/TouchExplorer$SendHoverEnterAndMoveDelayed;)Z

    move-result v6

    if-eqz v6, :cond_66

    .line 577
    iget-object p2, p0, Lcom/android/server/accessibility/TouchExplorer;->mSendHoverEnterAndMoveDelayed:Lcom/android/server/accessibility/TouchExplorer$SendHoverEnterAndMoveDelayed;

    invoke-virtual {p2}, Lcom/android/server/accessibility/TouchExplorer$SendHoverEnterAndMoveDelayed;->cancel()V

    .line 578
    iget-object p2, p0, Lcom/android/server/accessibility/TouchExplorer;->mSendHoverExitDelayed:Lcom/android/server/accessibility/TouchExplorer$SendHoverExitDelayed;

    invoke-virtual {p2}, Lcom/android/server/accessibility/TouchExplorer$SendHoverExitDelayed;->cancel()V

    goto :goto_8d

    .line 580
    :cond_66
    iget-boolean v6, p0, Lcom/android/server/accessibility/TouchExplorer;->mTouchExplorationInProgress:Z

    if-eqz v6, :cond_8d

    .line 586
    invoke-virtual {v0, v1}, Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;->getReceivedPointerDownX(I)F

    move-result v6

    .line 587
    invoke-virtual {p2, v4}, Landroid/view/MotionEvent;->getX(I)F

    move-result v7

    sub-float/2addr v6, v7

    .line 588
    invoke-virtual {v0, v1}, Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;->getReceivedPointerDownY(I)F

    move-result v7

    .line 589
    invoke-virtual {p2, v4}, Landroid/view/MotionEvent;->getY(I)F

    move-result p2

    sub-float/2addr v7, p2

    .line 590
    float-to-double v8, v6

    float-to-double v6, v7

    invoke-static {v8, v9, v6, v7}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v6

    .line 591
    iget p2, p0, Lcom/android/server/accessibility/TouchExplorer;->mDoubleTapSlop:I

    int-to-double v8, p2

    cmpg-double p2, v6, v8

    if-gez p2, :cond_8a

    .line 592
    goto :goto_c6

    .line 596
    :cond_8a
    invoke-direct {p0, p3}, Lcom/android/server/accessibility/TouchExplorer;->sendHoverExitAndTouchExplorationGestureEndIfNeeded(I)V

    .line 601
    :cond_8d
    :goto_8d
    invoke-static {p1}, Landroid/view/MotionEvent;->obtainNoHistory(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object p1

    .line 602
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/TouchExplorer;->isDraggingGesture(Landroid/view/MotionEvent;)Z

    move-result p2

    if-eqz p2, :cond_a7

    .line 605
    iput v3, p0, Lcom/android/server/accessibility/TouchExplorer;->mCurrentState:I

    .line 606
    iput v1, p0, Lcom/android/server/accessibility/TouchExplorer;->mDraggingPointerId:I

    .line 607
    invoke-virtual {v0}, Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;->getLastReceivedDownEdgeFlags()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/MotionEvent;->setEdgeFlags(I)V

    .line 608
    const/4 p2, 0x0

    invoke-direct {p0, p1, p2, v5, p3}, Lcom/android/server/accessibility/TouchExplorer;->sendMotionEvent(Landroid/view/MotionEvent;III)V

    goto :goto_c6

    .line 612
    :cond_a7
    iput v2, p0, Lcom/android/server/accessibility/TouchExplorer;->mCurrentState:I

    .line 613
    invoke-direct {p0, p1, p3}, Lcom/android/server/accessibility/TouchExplorer;->sendDownForAllNotInjectedPointers(Landroid/view/MotionEvent;I)V

    .line 615
    goto :goto_c6

    .line 560
    :cond_ad
    iget-object p2, p0, Lcom/android/server/accessibility/TouchExplorer;->mSendHoverEnterAndMoveDelayed:Lcom/android/server/accessibility/TouchExplorer$SendHoverEnterAndMoveDelayed;

    invoke-static {p2}, Lcom/android/server/accessibility/TouchExplorer$SendHoverEnterAndMoveDelayed;->access$200(Lcom/android/server/accessibility/TouchExplorer$SendHoverEnterAndMoveDelayed;)Z

    move-result p2

    if-eqz p2, :cond_bb

    .line 562
    iget-object p2, p0, Lcom/android/server/accessibility/TouchExplorer;->mSendHoverEnterAndMoveDelayed:Lcom/android/server/accessibility/TouchExplorer$SendHoverEnterAndMoveDelayed;

    invoke-virtual {p2, p1}, Lcom/android/server/accessibility/TouchExplorer$SendHoverEnterAndMoveDelayed;->addEvent(Landroid/view/MotionEvent;)V

    goto :goto_c6

    .line 564
    :cond_bb
    iget-boolean p2, p0, Lcom/android/server/accessibility/TouchExplorer;->mTouchExplorationInProgress:Z

    if-eqz p2, :cond_c6

    .line 565
    invoke-direct {p0, p3}, Lcom/android/server/accessibility/TouchExplorer;->sendTouchExplorationGestureStartAndHoverEnterIfNeeded(I)V

    .line 566
    const/4 p2, 0x7

    invoke-direct {p0, p1, p2, v5, p3}, Lcom/android/server/accessibility/TouchExplorer;->sendMotionEvent(Landroid/view/MotionEvent;III)V

    .line 636
    :cond_c6
    :goto_c6
    goto/16 :goto_14e

    .line 638
    :cond_c8
    iget-object p2, p0, Lcom/android/server/accessibility/TouchExplorer;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-virtual {p2}, Lcom/android/server/accessibility/AccessibilityManagerService;->onTouchInteractionEnd()V

    .line 639
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result p2

    .line 640
    shl-int p2, v2, p2

    .line 642
    iget-object v0, p0, Lcom/android/server/accessibility/TouchExplorer;->mSendHoverEnterAndMoveDelayed:Lcom/android/server/accessibility/TouchExplorer$SendHoverEnterAndMoveDelayed;

    invoke-static {v0}, Lcom/android/server/accessibility/TouchExplorer$SendHoverEnterAndMoveDelayed;->access$200(Lcom/android/server/accessibility/TouchExplorer$SendHoverEnterAndMoveDelayed;)Z

    move-result v0

    if-eqz v0, :cond_e5

    .line 644
    iget-object v0, p0, Lcom/android/server/accessibility/TouchExplorer;->mSendHoverExitDelayed:Lcom/android/server/accessibility/TouchExplorer$SendHoverExitDelayed;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/accessibility/TouchExplorer$SendHoverExitDelayed;->post(Landroid/view/MotionEvent;II)V

    goto :goto_e8

    .line 647
    :cond_e5
    invoke-direct {p0, p3}, Lcom/android/server/accessibility/TouchExplorer;->sendHoverExitAndTouchExplorationGestureEndIfNeeded(I)V

    .line 650
    :goto_e8
    iget-object p1, p0, Lcom/android/server/accessibility/TouchExplorer;->mSendTouchInteractionEndDelayed:Lcom/android/server/accessibility/TouchExplorer$SendAccessibilityEventDelayed;

    invoke-virtual {p1}, Lcom/android/server/accessibility/TouchExplorer$SendAccessibilityEventDelayed;->isPending()Z

    move-result p1

    if-nez p1, :cond_14e

    .line 651
    iget-object p1, p0, Lcom/android/server/accessibility/TouchExplorer;->mSendTouchInteractionEndDelayed:Lcom/android/server/accessibility/TouchExplorer$SendAccessibilityEventDelayed;

    invoke-virtual {p1}, Lcom/android/server/accessibility/TouchExplorer$SendAccessibilityEventDelayed;->post()V

    goto :goto_14e

    .line 508
    :cond_f6
    iget-object p2, p0, Lcom/android/server/accessibility/TouchExplorer;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-virtual {p2}, Lcom/android/server/accessibility/AccessibilityManagerService;->onTouchInteractionStart()V

    .line 513
    iget-object p2, p0, Lcom/android/server/accessibility/TouchExplorer;->mSendHoverEnterAndMoveDelayed:Lcom/android/server/accessibility/TouchExplorer$SendHoverEnterAndMoveDelayed;

    invoke-virtual {p2}, Lcom/android/server/accessibility/TouchExplorer$SendHoverEnterAndMoveDelayed;->cancel()V

    .line 514
    iget-object p2, p0, Lcom/android/server/accessibility/TouchExplorer;->mSendHoverExitDelayed:Lcom/android/server/accessibility/TouchExplorer$SendHoverExitDelayed;

    invoke-virtual {p2}, Lcom/android/server/accessibility/TouchExplorer$SendHoverExitDelayed;->cancel()V

    .line 517
    iget-boolean p2, p0, Lcom/android/server/accessibility/TouchExplorer;->mTouchExplorationInProgress:Z

    if-eqz p2, :cond_10c

    .line 518
    invoke-direct {p0, p3}, Lcom/android/server/accessibility/TouchExplorer;->sendHoverExitAndTouchExplorationGestureEndIfNeeded(I)V

    .line 522
    :cond_10c
    iget-object p2, p0, Lcom/android/server/accessibility/TouchExplorer;->mGestureDetector:Lcom/android/server/accessibility/AccessibilityGestureDetector;

    invoke-virtual {p2}, Lcom/android/server/accessibility/AccessibilityGestureDetector;->firstTapDetected()Z

    move-result p2

    if-nez p2, :cond_124

    .line 523
    iget-object p2, p0, Lcom/android/server/accessibility/TouchExplorer;->mSendTouchExplorationEndDelayed:Lcom/android/server/accessibility/TouchExplorer$SendAccessibilityEventDelayed;

    invoke-virtual {p2}, Lcom/android/server/accessibility/TouchExplorer$SendAccessibilityEventDelayed;->forceSendAndRemove()V

    .line 524
    iget-object p2, p0, Lcom/android/server/accessibility/TouchExplorer;->mSendTouchInteractionEndDelayed:Lcom/android/server/accessibility/TouchExplorer$SendAccessibilityEventDelayed;

    invoke-virtual {p2}, Lcom/android/server/accessibility/TouchExplorer$SendAccessibilityEventDelayed;->forceSendAndRemove()V

    .line 525
    const/high16 p2, 0x100000

    invoke-direct {p0, p2}, Lcom/android/server/accessibility/TouchExplorer;->sendAccessibilityEvent(I)V

    goto :goto_129

    .line 528
    :cond_124
    iget-object p2, p0, Lcom/android/server/accessibility/TouchExplorer;->mSendTouchInteractionEndDelayed:Lcom/android/server/accessibility/TouchExplorer$SendAccessibilityEventDelayed;

    invoke-virtual {p2}, Lcom/android/server/accessibility/TouchExplorer$SendAccessibilityEventDelayed;->cancel()V

    .line 531
    :goto_129
    iget-object p2, p0, Lcom/android/server/accessibility/TouchExplorer;->mGestureDetector:Lcom/android/server/accessibility/AccessibilityGestureDetector;

    invoke-virtual {p2}, Lcom/android/server/accessibility/AccessibilityGestureDetector;->firstTapDetected()Z

    move-result p2

    if-nez p2, :cond_14e

    iget-boolean p2, p0, Lcom/android/server/accessibility/TouchExplorer;->mTouchExplorationInProgress:Z

    if-nez p2, :cond_14e

    .line 532
    iget-object p2, p0, Lcom/android/server/accessibility/TouchExplorer;->mSendHoverEnterAndMoveDelayed:Lcom/android/server/accessibility/TouchExplorer$SendHoverEnterAndMoveDelayed;

    invoke-static {p2}, Lcom/android/server/accessibility/TouchExplorer$SendHoverEnterAndMoveDelayed;->access$200(Lcom/android/server/accessibility/TouchExplorer$SendHoverEnterAndMoveDelayed;)Z

    move-result p2

    if-nez p2, :cond_149

    .line 535
    invoke-virtual {v0}, Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;->getPrimaryPointerId()I

    move-result p2

    .line 536
    shl-int p2, v2, p2

    .line 537
    iget-object v0, p0, Lcom/android/server/accessibility/TouchExplorer;->mSendHoverEnterAndMoveDelayed:Lcom/android/server/accessibility/TouchExplorer$SendHoverEnterAndMoveDelayed;

    invoke-virtual {v0, p1, v2, p2, p3}, Lcom/android/server/accessibility/TouchExplorer$SendHoverEnterAndMoveDelayed;->post(Landroid/view/MotionEvent;ZII)V

    .line 539
    goto :goto_14e

    .line 541
    :cond_149
    iget-object p2, p0, Lcom/android/server/accessibility/TouchExplorer;->mSendHoverEnterAndMoveDelayed:Lcom/android/server/accessibility/TouchExplorer$SendHoverEnterAndMoveDelayed;

    invoke-virtual {p2, p1}, Lcom/android/server/accessibility/TouchExplorer$SendHoverEnterAndMoveDelayed;->addEvent(Landroid/view/MotionEvent;)V

    .line 656
    :cond_14e
    :goto_14e
    return-void
.end method

.method private isDraggingGesture(Landroid/view/MotionEvent;)Z
    .registers 13

    .line 1079
    iget-object v0, p0, Lcom/android/server/accessibility/TouchExplorer;->mReceivedPointerTracker:Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;

    .line 1081
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v6

    .line 1082
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v7

    .line 1083
    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v8

    .line 1084
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v9

    .line 1086
    invoke-virtual {v0, v1}, Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;->getReceivedPointerDownX(I)F

    move-result p1

    .line 1087
    invoke-virtual {v0, v1}, Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;->getReceivedPointerDownY(I)F

    move-result v3

    .line 1088
    invoke-virtual {v0, v2}, Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;->getReceivedPointerDownX(I)F

    move-result v4

    .line 1089
    invoke-virtual {v0, v2}, Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;->getReceivedPointerDownY(I)F

    move-result v5

    .line 1091
    const v10, 0x3f067b80

    move v2, p1

    invoke-static/range {v2 .. v10}, Lcom/android/server/accessibility/GestureUtils;->isDraggingGesture(FFFFFFFFF)Z

    move-result p1

    return p1
.end method

.method private offsetEvent(Landroid/view/MotionEvent;II)Landroid/view/MotionEvent;
    .registers 26

    .line 1014
    move-object/from16 v0, p1

    move/from16 v1, p2

    move/from16 v2, p3

    if-nez v1, :cond_b

    if-nez v2, :cond_b

    .line 1015
    return-object v0

    .line 1017
    :cond_b
    move-object/from16 v3, p0

    iget v3, v3, Lcom/android/server/accessibility/TouchExplorer;->mLongPressingPointerId:I

    invoke-virtual {v0, v3}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v3

    .line 1018
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v4

    .line 1019
    invoke-static {v4}, Landroid/view/MotionEvent$PointerProperties;->createArray(I)[Landroid/view/MotionEvent$PointerProperties;

    move-result-object v11

    .line 1020
    invoke-static {v4}, Landroid/view/MotionEvent$PointerCoords;->createArray(I)[Landroid/view/MotionEvent$PointerCoords;

    move-result-object v12

    .line 1021
    const/4 v5, 0x0

    :goto_20
    if-ge v5, v4, :cond_41

    .line 1022
    aget-object v6, v11, v5

    invoke-virtual {v0, v5, v6}, Landroid/view/MotionEvent;->getPointerProperties(ILandroid/view/MotionEvent$PointerProperties;)V

    .line 1023
    aget-object v6, v12, v5

    invoke-virtual {v0, v5, v6}, Landroid/view/MotionEvent;->getPointerCoords(ILandroid/view/MotionEvent$PointerCoords;)V

    .line 1024
    if-ne v5, v3, :cond_3e

    .line 1025
    aget-object v6, v12, v5

    iget v7, v6, Landroid/view/MotionEvent$PointerCoords;->x:F

    int-to-float v8, v1

    add-float/2addr v7, v8

    iput v7, v6, Landroid/view/MotionEvent$PointerCoords;->x:F

    .line 1026
    aget-object v6, v12, v5

    iget v7, v6, Landroid/view/MotionEvent$PointerCoords;->y:F

    int-to-float v8, v2

    add-float/2addr v7, v8

    iput v7, v6, Landroid/view/MotionEvent$PointerCoords;->y:F

    .line 1021
    :cond_3e
    add-int/lit8 v5, v5, 0x1

    goto :goto_20

    .line 1029
    :cond_41
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v5

    .line 1030
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v7

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v9

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v10

    .line 1031
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v13

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v14

    const/high16 v15, 0x3f800000  # 1.0f

    const/high16 v16, 0x3f800000  # 1.0f

    .line 1032
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getDeviceId()I

    move-result v17

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEdgeFlags()I

    move-result v18

    .line 1033
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v19

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getDisplayId()I

    move-result v20

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getFlags()I

    move-result v21

    .line 1029
    invoke-static/range {v5 .. v21}, Landroid/view/MotionEvent;->obtain(JJII[Landroid/view/MotionEvent$PointerProperties;[Landroid/view/MotionEvent$PointerCoords;IIFFIIIII)Landroid/view/MotionEvent;

    move-result-object v0

    return-object v0
.end method

.method private sendAccessibilityEvent(I)V
    .registers 5

    .line 832
    iget-object v0, p0, Lcom/android/server/accessibility/TouchExplorer;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    .line 833
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_2c

    .line 834
    invoke-static {p1}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v1

    .line 835
    iget-object v2, p0, Lcom/android/server/accessibility/TouchExplorer;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-virtual {v2}, Lcom/android/server/accessibility/AccessibilityManagerService;->getActiveWindowId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/accessibility/AccessibilityEvent;->setWindowId(I)V

    .line 836
    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityManager;->sendAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 837
    const/16 v0, 0x200

    if-eq p1, v0, :cond_29

    const/16 v0, 0x400

    if-eq p1, v0, :cond_25

    goto :goto_2c

    .line 842
    :cond_25
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/server/accessibility/TouchExplorer;->mTouchExplorationInProgress:Z

    goto :goto_2c

    .line 839
    :cond_29
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/server/accessibility/TouchExplorer;->mTouchExplorationInProgress:Z

    .line 846
    :cond_2c
    :goto_2c
    return-void
.end method

.method private sendActionDownAndUp(Landroid/view/MotionEvent;IZ)V
    .registers 7

    .line 936
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    .line 937
    const/4 v1, 0x1

    shl-int v0, v1, v0

    .line 938
    invoke-virtual {p1, p3}, Landroid/view/MotionEvent;->setTargetAccessibilityFocus(Z)V

    .line 939
    const/4 v2, 0x0

    invoke-direct {p0, p1, v2, v0, p2}, Lcom/android/server/accessibility/TouchExplorer;->sendMotionEvent(Landroid/view/MotionEvent;III)V

    .line 940
    invoke-virtual {p1, p3}, Landroid/view/MotionEvent;->setTargetAccessibilityFocus(Z)V

    .line 941
    invoke-direct {p0, p1, v1, v0, p2}, Lcom/android/server/accessibility/TouchExplorer;->sendMotionEvent(Landroid/view/MotionEvent;III)V

    .line 942
    return-void
.end method

.method private sendDownForAllNotInjectedPointers(Landroid/view/MotionEvent;I)V
    .registers 10

    .line 856
    iget-object v0, p0, Lcom/android/server/accessibility/TouchExplorer;->mInjectedPointerTracker:Lcom/android/server/accessibility/TouchExplorer$InjectedPointerTracker;

    .line 859
    nop

    .line 860
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v1

    .line 861
    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    :goto_a
    if-ge v3, v1, :cond_24

    .line 862
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v5

    .line 864
    invoke-virtual {v0, v5}, Lcom/android/server/accessibility/TouchExplorer$InjectedPointerTracker;->isInjectedPointerDown(I)Z

    move-result v6

    if-nez v6, :cond_21

    .line 865
    const/4 v6, 0x1

    shl-int v5, v6, v5

    or-int/2addr v4, v5

    .line 866
    invoke-direct {p0, v2, v3}, Lcom/android/server/accessibility/TouchExplorer;->computeInjectionAction(II)I

    move-result v5

    .line 867
    invoke-direct {p0, p1, v5, v4, p2}, Lcom/android/server/accessibility/TouchExplorer;->sendMotionEvent(Landroid/view/MotionEvent;III)V

    .line 861
    :cond_21
    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    .line 870
    :cond_24
    return-void
.end method

.method private sendHoverExitAndTouchExplorationGestureEndIfNeeded(I)V
    .registers 6

    .line 879
    iget-object v0, p0, Lcom/android/server/accessibility/TouchExplorer;->mInjectedPointerTracker:Lcom/android/server/accessibility/TouchExplorer$InjectedPointerTracker;

    invoke-virtual {v0}, Lcom/android/server/accessibility/TouchExplorer$InjectedPointerTracker;->getLastInjectedHoverEvent()Landroid/view/MotionEvent;

    move-result-object v0

    .line 880
    if-eqz v0, :cond_24

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    const/16 v2, 0xa

    if-eq v1, v2, :cond_24

    .line 881
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getPointerIdBits()I

    move-result v1

    .line 882
    iget-object v3, p0, Lcom/android/server/accessibility/TouchExplorer;->mSendTouchExplorationEndDelayed:Lcom/android/server/accessibility/TouchExplorer$SendAccessibilityEventDelayed;

    invoke-virtual {v3}, Lcom/android/server/accessibility/TouchExplorer$SendAccessibilityEventDelayed;->isPending()Z

    move-result v3

    if-nez v3, :cond_21

    .line 883
    iget-object v3, p0, Lcom/android/server/accessibility/TouchExplorer;->mSendTouchExplorationEndDelayed:Lcom/android/server/accessibility/TouchExplorer$SendAccessibilityEventDelayed;

    invoke-virtual {v3}, Lcom/android/server/accessibility/TouchExplorer$SendAccessibilityEventDelayed;->post()V

    .line 885
    :cond_21
    invoke-direct {p0, v0, v2, v1, p1}, Lcom/android/server/accessibility/TouchExplorer;->sendMotionEvent(Landroid/view/MotionEvent;III)V

    .line 887
    :cond_24
    return-void
.end method

.method private sendMotionEvent(Landroid/view/MotionEvent;III)V
    .registers 7

    .line 954
    invoke-virtual {p1, p2}, Landroid/view/MotionEvent;->setAction(I)V

    .line 956
    nop

    .line 957
    const/4 v0, -0x1

    if-ne p3, v0, :cond_9

    .line 958
    move-object p3, p1

    goto :goto_e

    .line 961
    :cond_9
    :try_start_9
    invoke-virtual {p1, p3}, Landroid/view/MotionEvent;->split(I)Landroid/view/MotionEvent;

    move-result-object p3
    :try_end_d
    .catch Ljava/lang/IllegalArgumentException; {:try_start_9 .. :try_end_d} :catch_41

    .line 965
    nop

    .line 967
    :goto_e
    if-nez p2, :cond_18

    .line 968
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v0

    invoke-virtual {p3, v0, v1}, Landroid/view/MotionEvent;->setDownTime(J)V

    goto :goto_21

    .line 970
    :cond_18
    iget-object p2, p0, Lcom/android/server/accessibility/TouchExplorer;->mInjectedPointerTracker:Lcom/android/server/accessibility/TouchExplorer$InjectedPointerTracker;

    invoke-virtual {p2}, Lcom/android/server/accessibility/TouchExplorer$InjectedPointerTracker;->getLastInjectedDownEventTime()J

    move-result-wide v0

    invoke-virtual {p3, v0, v1}, Landroid/view/MotionEvent;->setDownTime(J)V

    .line 979
    :goto_21
    iget p2, p0, Lcom/android/server/accessibility/TouchExplorer;->mLongPressingPointerId:I

    if-ltz p2, :cond_2f

    .line 980
    iget p2, p0, Lcom/android/server/accessibility/TouchExplorer;->mLongPressingPointerDeltaX:I

    neg-int p2, p2

    iget v0, p0, Lcom/android/server/accessibility/TouchExplorer;->mLongPressingPointerDeltaY:I

    neg-int v0, v0

    invoke-direct {p0, p3, p2, v0}, Lcom/android/server/accessibility/TouchExplorer;->offsetEvent(Landroid/view/MotionEvent;II)Landroid/view/MotionEvent;

    move-result-object p3

    .line 990
    :cond_2f
    const/high16 p2, 0x40000000  # 2.0f

    or-int/2addr p2, p4

    .line 994
    const/4 p4, 0x0

    invoke-super {p0, p3, p4, p2}, Lcom/android/server/accessibility/BaseEventStreamTransformation;->onMotionEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    .line 996
    iget-object p2, p0, Lcom/android/server/accessibility/TouchExplorer;->mInjectedPointerTracker:Lcom/android/server/accessibility/TouchExplorer$InjectedPointerTracker;

    invoke-virtual {p2, p3}, Lcom/android/server/accessibility/TouchExplorer$InjectedPointerTracker;->onMotionEvent(Landroid/view/MotionEvent;)V

    .line 998
    if-eq p3, p1, :cond_40

    .line 999
    invoke-virtual {p3}, Landroid/view/MotionEvent;->recycle()V

    .line 1001
    :cond_40
    return-void

    .line 962
    :catch_41
    move-exception p1

    .line 963
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p3, "sendMotionEvent: Failed to split motion event: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "TouchExplorer"

    invoke-static {p2, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 964
    return-void
.end method

.method private sendTouchExplorationGestureStartAndHoverEnterIfNeeded(I)V
    .registers 5

    .line 896
    iget-object v0, p0, Lcom/android/server/accessibility/TouchExplorer;->mInjectedPointerTracker:Lcom/android/server/accessibility/TouchExplorer$InjectedPointerTracker;

    invoke-virtual {v0}, Lcom/android/server/accessibility/TouchExplorer$InjectedPointerTracker;->getLastInjectedHoverEvent()Landroid/view/MotionEvent;

    move-result-object v0

    .line 897
    if-eqz v0, :cond_19

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    const/16 v2, 0xa

    if-ne v1, v2, :cond_19

    .line 898
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getPointerIdBits()I

    move-result v1

    .line 899
    const/16 v2, 0x9

    invoke-direct {p0, v0, v2, v1, p1}, Lcom/android/server/accessibility/TouchExplorer;->sendMotionEvent(Landroid/view/MotionEvent;III)V

    .line 901
    :cond_19
    return-void
.end method

.method private sendUpForInjectedDownPointers(Landroid/view/MotionEvent;I)V
    .registers 9

    .line 911
    iget-object v0, p0, Lcom/android/server/accessibility/TouchExplorer;->mInjectedPointerTracker:Lcom/android/server/accessibility/TouchExplorer$InjectedPointerTracker;

    .line 912
    nop

    .line 913
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v1

    .line 914
    const/4 v2, 0x0

    move v3, v2

    :goto_9
    if-ge v2, v1, :cond_24

    .line 915
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v4

    .line 917
    invoke-virtual {v0, v4}, Lcom/android/server/accessibility/TouchExplorer$InjectedPointerTracker;->isInjectedPointerDown(I)Z

    move-result v5

    if-nez v5, :cond_16

    .line 918
    goto :goto_21

    .line 920
    :cond_16
    const/4 v5, 0x1

    shl-int v4, v5, v4

    or-int/2addr v3, v4

    .line 921
    invoke-direct {p0, v5, v2}, Lcom/android/server/accessibility/TouchExplorer;->computeInjectionAction(II)I

    move-result v4

    .line 922
    invoke-direct {p0, p1, v4, v3, p2}, Lcom/android/server/accessibility/TouchExplorer;->sendMotionEvent(Landroid/view/MotionEvent;III)V

    .line 914
    :goto_21
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 924
    :cond_24
    return-void
.end method


# virtual methods
.method public clearEvents(I)V
    .registers 3

    .line 215
    const/16 v0, 0x1002

    if-ne p1, v0, :cond_7

    .line 216
    invoke-direct {p0}, Lcom/android/server/accessibility/TouchExplorer;->clear()V

    .line 218
    :cond_7
    invoke-super {p0, p1}, Lcom/android/server/accessibility/BaseEventStreamTransformation;->clearEvents(I)V

    .line 219
    return-void
.end method

.method public onAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .registers 5

    .line 321
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v0

    .line 325
    iget-object v1, p0, Lcom/android/server/accessibility/TouchExplorer;->mSendTouchExplorationEndDelayed:Lcom/android/server/accessibility/TouchExplorer$SendAccessibilityEventDelayed;

    invoke-virtual {v1}, Lcom/android/server/accessibility/TouchExplorer$SendAccessibilityEventDelayed;->isPending()Z

    move-result v1

    const/16 v2, 0x100

    if-eqz v1, :cond_1a

    if-ne v0, v2, :cond_1a

    .line 327
    iget-object v1, p0, Lcom/android/server/accessibility/TouchExplorer;->mSendTouchExplorationEndDelayed:Lcom/android/server/accessibility/TouchExplorer$SendAccessibilityEventDelayed;

    invoke-virtual {v1}, Lcom/android/server/accessibility/TouchExplorer$SendAccessibilityEventDelayed;->cancel()V

    .line 328
    const/16 v1, 0x400

    invoke-direct {p0, v1}, Lcom/android/server/accessibility/TouchExplorer;->sendAccessibilityEvent(I)V

    .line 333
    :cond_1a
    iget-object v1, p0, Lcom/android/server/accessibility/TouchExplorer;->mSendTouchInteractionEndDelayed:Lcom/android/server/accessibility/TouchExplorer$SendAccessibilityEventDelayed;

    invoke-virtual {v1}, Lcom/android/server/accessibility/TouchExplorer$SendAccessibilityEventDelayed;->isPending()Z

    move-result v1

    if-eqz v1, :cond_2e

    if-ne v0, v2, :cond_2e

    .line 335
    iget-object v1, p0, Lcom/android/server/accessibility/TouchExplorer;->mSendTouchInteractionEndDelayed:Lcom/android/server/accessibility/TouchExplorer$SendAccessibilityEventDelayed;

    invoke-virtual {v1}, Lcom/android/server/accessibility/TouchExplorer$SendAccessibilityEventDelayed;->cancel()V

    .line 336
    const/high16 v1, 0x200000

    invoke-direct {p0, v1}, Lcom/android/server/accessibility/TouchExplorer;->sendAccessibilityEvent(I)V

    .line 341
    :cond_2e
    const/16 v1, 0x20

    if-eq v0, v1, :cond_45

    const/16 v1, 0x80

    if-eq v0, v1, :cond_3e

    if-eq v0, v2, :cond_3e

    const v1, 0x8000

    if-eq v0, v1, :cond_45

    goto :goto_60

    .line 352
    :cond_3e
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getWindowId()I

    move-result v0

    iput v0, p0, Lcom/android/server/accessibility/TouchExplorer;->mLastTouchedWindowId:I

    goto :goto_60

    .line 344
    :cond_45
    iget-object v0, p0, Lcom/android/server/accessibility/TouchExplorer;->mInjectedPointerTracker:Lcom/android/server/accessibility/TouchExplorer$InjectedPointerTracker;

    invoke-static {v0}, Lcom/android/server/accessibility/TouchExplorer$InjectedPointerTracker;->access$100(Lcom/android/server/accessibility/TouchExplorer$InjectedPointerTracker;)Landroid/view/MotionEvent;

    move-result-object v0

    if-eqz v0, :cond_5c

    .line 345
    iget-object v0, p0, Lcom/android/server/accessibility/TouchExplorer;->mInjectedPointerTracker:Lcom/android/server/accessibility/TouchExplorer$InjectedPointerTracker;

    invoke-static {v0}, Lcom/android/server/accessibility/TouchExplorer$InjectedPointerTracker;->access$100(Lcom/android/server/accessibility/TouchExplorer$InjectedPointerTracker;)Landroid/view/MotionEvent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 346
    iget-object v0, p0, Lcom/android/server/accessibility/TouchExplorer;->mInjectedPointerTracker:Lcom/android/server/accessibility/TouchExplorer$InjectedPointerTracker;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/server/accessibility/TouchExplorer$InjectedPointerTracker;->access$102(Lcom/android/server/accessibility/TouchExplorer$InjectedPointerTracker;Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    .line 348
    :cond_5c
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/accessibility/TouchExplorer;->mLastTouchedWindowId:I

    .line 349
    nop

    .line 355
    :goto_60
    invoke-super {p0, p1}, Lcom/android/server/accessibility/BaseEventStreamTransformation;->onAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 356
    return-void
.end method

.method public onDestroy()V
    .registers 1

    .line 223
    invoke-direct {p0}, Lcom/android/server/accessibility/TouchExplorer;->clear()V

    .line 224
    return-void
.end method

.method public onDoubleTap(Landroid/view/MotionEvent;I)Z
    .registers 27

    .line 393
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget v2, v0, Lcom/android/server/accessibility/TouchExplorer;->mCurrentState:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eq v2, v4, :cond_b

    .line 394
    return v3

    .line 397
    :cond_b
    iget-object v2, v0, Lcom/android/server/accessibility/TouchExplorer;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-virtual {v2}, Lcom/android/server/accessibility/AccessibilityManagerService;->onTouchInteractionEnd()V

    .line 399
    iget-object v2, v0, Lcom/android/server/accessibility/TouchExplorer;->mSendHoverEnterAndMoveDelayed:Lcom/android/server/accessibility/TouchExplorer$SendHoverEnterAndMoveDelayed;

    invoke-virtual {v2}, Lcom/android/server/accessibility/TouchExplorer$SendHoverEnterAndMoveDelayed;->cancel()V

    .line 400
    iget-object v2, v0, Lcom/android/server/accessibility/TouchExplorer;->mSendHoverExitDelayed:Lcom/android/server/accessibility/TouchExplorer$SendHoverExitDelayed;

    invoke-virtual {v2}, Lcom/android/server/accessibility/TouchExplorer$SendHoverExitDelayed;->cancel()V

    .line 402
    iget-object v2, v0, Lcom/android/server/accessibility/TouchExplorer;->mSendTouchExplorationEndDelayed:Lcom/android/server/accessibility/TouchExplorer$SendAccessibilityEventDelayed;

    invoke-virtual {v2}, Lcom/android/server/accessibility/TouchExplorer$SendAccessibilityEventDelayed;->isPending()Z

    move-result v2

    if-eqz v2, :cond_27

    .line 403
    iget-object v2, v0, Lcom/android/server/accessibility/TouchExplorer;->mSendTouchExplorationEndDelayed:Lcom/android/server/accessibility/TouchExplorer$SendAccessibilityEventDelayed;

    invoke-virtual {v2}, Lcom/android/server/accessibility/TouchExplorer$SendAccessibilityEventDelayed;->forceSendAndRemove()V

    .line 407
    :cond_27
    const/high16 v2, 0x200000

    invoke-direct {v0, v2}, Lcom/android/server/accessibility/TouchExplorer;->sendAccessibilityEvent(I)V

    .line 410
    iget-object v2, v0, Lcom/android/server/accessibility/TouchExplorer;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    sget-object v5, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_CLICK:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {v2, v5}, Lcom/android/server/accessibility/AccessibilityManagerService;->performActionOnAccessibilityFocusedItem(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)Z

    move-result v2

    if-eqz v2, :cond_37

    .line 412
    return v4

    .line 414
    :cond_37
    const-string v2, "TouchExplorer"

    const-string v5, "ACTION_CLICK failed. Dispatching motion events to simulate click."

    invoke-static {v2, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 416
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v2

    .line 417
    invoke-virtual {v1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    .line 419
    iget-object v5, v0, Lcom/android/server/accessibility/TouchExplorer;->mTempPoint:Landroid/graphics/Point;

    .line 420
    invoke-direct {v0, v5}, Lcom/android/server/accessibility/TouchExplorer;->computeClickLocation(Landroid/graphics/Point;)I

    move-result v6

    .line 421
    if-nez v6, :cond_4e

    .line 424
    return v4

    .line 428
    :cond_4e
    new-array v7, v4, [Landroid/view/MotionEvent$PointerProperties;

    move-object v13, v7

    .line 429
    new-instance v8, Landroid/view/MotionEvent$PointerProperties;

    invoke-direct {v8}, Landroid/view/MotionEvent$PointerProperties;-><init>()V

    aput-object v8, v7, v3

    .line 430
    aget-object v7, v7, v3

    invoke-virtual {v1, v2, v7}, Landroid/view/MotionEvent;->getPointerProperties(ILandroid/view/MotionEvent$PointerProperties;)V

    .line 431
    new-array v2, v4, [Landroid/view/MotionEvent$PointerCoords;

    move-object v14, v2

    .line 432
    new-instance v7, Landroid/view/MotionEvent$PointerCoords;

    invoke-direct {v7}, Landroid/view/MotionEvent$PointerCoords;-><init>()V

    aput-object v7, v2, v3

    .line 433
    aget-object v7, v2, v3

    iget v8, v5, Landroid/graphics/Point;->x:I

    int-to-float v8, v8

    iput v8, v7, Landroid/view/MotionEvent$PointerCoords;->x:F

    .line 434
    aget-object v2, v2, v3

    iget v5, v5, Landroid/graphics/Point;->y:I

    int-to-float v5, v5

    iput v5, v2, Landroid/view/MotionEvent$PointerCoords;->y:F

    .line 435
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v7

    .line 436
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v9

    const/4 v11, 0x0

    const/4 v12, 0x1

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/high16 v17, 0x3f800000  # 1.0f

    const/high16 v18, 0x3f800000  # 1.0f

    .line 437
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getDeviceId()I

    move-result v19

    const/16 v20, 0x0

    .line 438
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v21

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getDisplayId()I

    move-result v22

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getFlags()I

    move-result v23

    .line 435
    invoke-static/range {v7 .. v23}, Landroid/view/MotionEvent;->obtain(JJII[Landroid/view/MotionEvent$PointerProperties;[Landroid/view/MotionEvent$PointerCoords;IIFFIIIII)Landroid/view/MotionEvent;

    move-result-object v1

    .line 439
    if-ne v6, v4, :cond_9f

    move v3, v4

    .line 440
    :cond_9f
    move/from16 v2, p2

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/accessibility/TouchExplorer;->sendActionDownAndUp(Landroid/view/MotionEvent;IZ)V

    .line 441
    invoke-virtual {v1}, Landroid/view/MotionEvent;->recycle()V

    .line 442
    return v4
.end method

.method public onDoubleTapAndHold(Landroid/view/MotionEvent;I)V
    .registers 7

    .line 361
    iget v0, p0, Lcom/android/server/accessibility/TouchExplorer;->mCurrentState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_6

    .line 362
    return-void

    .line 366
    :cond_6
    iget-object v0, p0, Lcom/android/server/accessibility/TouchExplorer;->mReceivedPointerTracker:Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;

    invoke-virtual {v0}, Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;->getLastReceivedEvent()Landroid/view/MotionEvent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    if-nez v0, :cond_13

    .line 367
    return-void

    .line 370
    :cond_13
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    .line 371
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    .line 373
    iget-object v2, p0, Lcom/android/server/accessibility/TouchExplorer;->mTempPoint:Landroid/graphics/Point;

    .line 374
    invoke-direct {p0, v2}, Lcom/android/server/accessibility/TouchExplorer;->computeClickLocation(Landroid/graphics/Point;)I

    move-result v3

    .line 376
    if-nez v3, :cond_24

    .line 377
    return-void

    .line 380
    :cond_24
    iput v1, p0, Lcom/android/server/accessibility/TouchExplorer;->mLongPressingPointerId:I

    .line 381
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    float-to-int v1, v1

    iget v3, v2, Landroid/graphics/Point;->x:I

    sub-int/2addr v1, v3

    iput v1, p0, Lcom/android/server/accessibility/TouchExplorer;->mLongPressingPointerDeltaX:I

    .line 382
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    float-to-int v0, v0

    iget v1, v2, Landroid/graphics/Point;->y:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/server/accessibility/TouchExplorer;->mLongPressingPointerDeltaY:I

    .line 384
    invoke-direct {p0, p2}, Lcom/android/server/accessibility/TouchExplorer;->sendHoverExitAndTouchExplorationGestureEndIfNeeded(I)V

    .line 386
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/server/accessibility/TouchExplorer;->mCurrentState:I

    .line 387
    invoke-direct {p0, p1, p2}, Lcom/android/server/accessibility/TouchExplorer;->sendDownForAllNotInjectedPointers(Landroid/view/MotionEvent;I)V

    .line 388
    return-void
.end method

.method public onGestureCancelled(Landroid/view/MotionEvent;I)Z
    .registers 7

    .line 474
    iget v0, p0, Lcom/android/server/accessibility/TouchExplorer;->mCurrentState:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x5

    if-ne v0, v3, :cond_12

    .line 475
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    if-ne p1, v2, :cond_e

    move v1, v2

    :cond_e
    invoke-direct {p0, v1}, Lcom/android/server/accessibility/TouchExplorer;->endGestureDetection(Z)V

    .line 476
    return v2

    .line 477
    :cond_12
    if-ne v0, v2, :cond_37

    .line 479
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v3, 0x2

    if-ne v0, v3, :cond_37

    .line 480
    iget-object v0, p0, Lcom/android/server/accessibility/TouchExplorer;->mReceivedPointerTracker:Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;

    invoke-virtual {v0}, Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;->getPrimaryPointerId()I

    move-result v0

    .line 481
    shl-int v0, v2, v0

    .line 485
    iget-object v1, p0, Lcom/android/server/accessibility/TouchExplorer;->mSendHoverEnterAndMoveDelayed:Lcom/android/server/accessibility/TouchExplorer$SendHoverEnterAndMoveDelayed;

    invoke-virtual {v1, p1}, Lcom/android/server/accessibility/TouchExplorer$SendHoverEnterAndMoveDelayed;->addEvent(Landroid/view/MotionEvent;)V

    .line 486
    iget-object v1, p0, Lcom/android/server/accessibility/TouchExplorer;->mSendHoverEnterAndMoveDelayed:Lcom/android/server/accessibility/TouchExplorer$SendHoverEnterAndMoveDelayed;

    invoke-virtual {v1}, Lcom/android/server/accessibility/TouchExplorer$SendHoverEnterAndMoveDelayed;->forceSendAndRemove()V

    .line 487
    iget-object v1, p0, Lcom/android/server/accessibility/TouchExplorer;->mSendHoverExitDelayed:Lcom/android/server/accessibility/TouchExplorer$SendHoverExitDelayed;

    invoke-virtual {v1}, Lcom/android/server/accessibility/TouchExplorer$SendHoverExitDelayed;->cancel()V

    .line 488
    const/4 v1, 0x7

    invoke-direct {p0, p1, v1, v0, p2}, Lcom/android/server/accessibility/TouchExplorer;->sendMotionEvent(Landroid/view/MotionEvent;III)V

    .line 489
    return v2

    .line 492
    :cond_37
    return v1
.end method

.method public onGestureCompleted(I)Z
    .registers 4

    .line 461
    iget v0, p0, Lcom/android/server/accessibility/TouchExplorer;->mCurrentState:I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_7

    .line 462
    const/4 p1, 0x0

    return p1

    .line 465
    :cond_7
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/server/accessibility/TouchExplorer;->endGestureDetection(Z)V

    .line 467
    iget-object v1, p0, Lcom/android/server/accessibility/TouchExplorer;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-virtual {v1, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->onGesture(I)Z

    .line 469
    return v0
.end method

.method public onGestureStarted()Z
    .registers 2

    .line 449
    const/4 v0, 0x5

    iput v0, p0, Lcom/android/server/accessibility/TouchExplorer;->mCurrentState:I

    .line 450
    iget-object v0, p0, Lcom/android/server/accessibility/TouchExplorer;->mSendHoverEnterAndMoveDelayed:Lcom/android/server/accessibility/TouchExplorer$SendHoverEnterAndMoveDelayed;

    invoke-virtual {v0}, Lcom/android/server/accessibility/TouchExplorer$SendHoverEnterAndMoveDelayed;->cancel()V

    .line 451
    iget-object v0, p0, Lcom/android/server/accessibility/TouchExplorer;->mSendHoverExitDelayed:Lcom/android/server/accessibility/TouchExplorer$SendHoverExitDelayed;

    invoke-virtual {v0}, Lcom/android/server/accessibility/TouchExplorer$SendHoverExitDelayed;->cancel()V

    .line 452
    iget-object v0, p0, Lcom/android/server/accessibility/TouchExplorer;->mExitGestureDetectionModeDelayed:Lcom/android/server/accessibility/TouchExplorer$ExitGestureDetectionModeDelayed;

    invoke-virtual {v0}, Lcom/android/server/accessibility/TouchExplorer$ExitGestureDetectionModeDelayed;->post()V

    .line 455
    const/high16 v0, 0x40000

    invoke-direct {p0, v0}, Lcom/android/server/accessibility/TouchExplorer;->sendAccessibilityEvent(I)V

    .line 456
    const/4 v0, 0x0

    return v0
.end method

.method public onMotionEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
    .registers 6

    .line 277
    const/16 v0, 0x1002

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->isFromSource(I)Z

    move-result v0

    if-nez v0, :cond_c

    .line 278
    invoke-super {p0, p1, p2, p3}, Lcom/android/server/accessibility/BaseEventStreamTransformation;->onMotionEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    .line 279
    return-void

    .line 288
    :cond_c
    iget-object v0, p0, Lcom/android/server/accessibility/TouchExplorer;->mReceivedPointerTracker:Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;

    invoke-virtual {v0, p2}, Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;->onMotionEvent(Landroid/view/MotionEvent;)V

    .line 290
    iget-object v0, p0, Lcom/android/server/accessibility/TouchExplorer;->mGestureDetector:Lcom/android/server/accessibility/AccessibilityGestureDetector;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/accessibility/AccessibilityGestureDetector;->onMotionEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 292
    return-void

    .line 295
    :cond_1a
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_25

    .line 296
    invoke-direct {p0, p1, p3}, Lcom/android/server/accessibility/TouchExplorer;->clear(Landroid/view/MotionEvent;I)V

    .line 297
    return-void

    .line 300
    :cond_25
    iget v0, p0, Lcom/android/server/accessibility/TouchExplorer;->mCurrentState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_58

    const/4 p2, 0x2

    if-eq v0, p2, :cond_54

    const/4 p2, 0x4

    if-eq v0, p2, :cond_50

    const/4 p2, 0x5

    if-eq v0, p2, :cond_4f

    .line 314
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Illegal state: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/server/accessibility/TouchExplorer;->mCurrentState:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "TouchExplorer"

    invoke-static {v0, p2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    invoke-direct {p0, p1, p3}, Lcom/android/server/accessibility/TouchExplorer;->clear(Landroid/view/MotionEvent;I)V

    goto :goto_5c

    .line 312
    :cond_4f
    goto :goto_5c

    .line 308
    :cond_50
    invoke-direct {p0, p1, p3}, Lcom/android/server/accessibility/TouchExplorer;->handleMotionEventStateDelegating(Landroid/view/MotionEvent;I)V

    .line 309
    goto :goto_5c

    .line 305
    :cond_54
    invoke-direct {p0, p1, p3}, Lcom/android/server/accessibility/TouchExplorer;->handleMotionEventStateDragging(Landroid/view/MotionEvent;I)V

    .line 306
    goto :goto_5c

    .line 302
    :cond_58
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/accessibility/TouchExplorer;->handleMotionEventStateTouchExploring(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    .line 303
    nop

    .line 317
    :goto_5c
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 1336
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TouchExplorer { mCurrentState: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/accessibility/TouchExplorer;->mCurrentState:I

    .line 1337
    invoke-static {v1}, Lcom/android/server/accessibility/TouchExplorer;->getStateSymbolicName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mDetermineUserIntentTimeout: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/accessibility/TouchExplorer;->mDetermineUserIntentTimeout:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mDoubleTapSlop: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/accessibility/TouchExplorer;->mDoubleTapSlop:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mDraggingPointerId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/accessibility/TouchExplorer;->mDraggingPointerId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mLongPressingPointerId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/accessibility/TouchExplorer;->mLongPressingPointerId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mLongPressingPointerDeltaX: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/accessibility/TouchExplorer;->mLongPressingPointerDeltaX:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mLongPressingPointerDeltaY: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/accessibility/TouchExplorer;->mLongPressingPointerDeltaY:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mLastTouchedWindowId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/accessibility/TouchExplorer;->mLastTouchedWindowId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mScaledMinPointerDistanceToUseMiddleLocation: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/accessibility/TouchExplorer;->mScaledMinPointerDistanceToUseMiddleLocation:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mTempPoint: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/accessibility/TouchExplorer;->mTempPoint:Landroid/graphics/Point;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mTouchExplorationInProgress: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/accessibility/TouchExplorer;->mTouchExplorationInProgress:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1336
    return-object v0
.end method
