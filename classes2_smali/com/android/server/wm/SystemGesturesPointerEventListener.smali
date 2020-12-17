.class Lcom/android/server/wm/SystemGesturesPointerEventListener;
.super Ljava/lang/Object;
.source "SystemGesturesPointerEventListener.java"

# interfaces
.implements Landroid/view/WindowManagerPolicyConstants$PointerEventListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/SystemGesturesPointerEventListener$Callbacks;,
        Lcom/android/server/wm/SystemGesturesPointerEventListener$FlingGestureDetector;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final MAX_FLING_TIME_MILLIS:I = 0x1388

.field private static final MAX_TRACKED_POINTERS:I = 0x20

.field private static final SWIPE_FROM_BOTTOM:I = 0x2

.field private static final SWIPE_FROM_LEFT:I = 0x4

.field private static final SWIPE_FROM_RIGHT:I = 0x3

.field private static final SWIPE_FROM_TOP:I = 0x1

.field private static final SWIPE_NONE:I = 0x0

.field private static final SWIPE_TIMEOUT_MS:J = 0x1f4L

.field private static final TAG:Ljava/lang/String; = "SystemGestures"

.field private static final UNTRACKED_POINTER:I = -0x1


# instance fields
.field private final mCallbacks:Lcom/android/server/wm/SystemGesturesPointerEventListener$Callbacks;

.field private final mContext:Landroid/content/Context;

.field private mDebugFireable:Z

.field private mDisplayCutoutTouchableRegionSize:I

.field private final mDownPointerId:[I

.field private mDownPointers:I

.field private final mDownTime:[J

.field private final mDownX:[F

.field private final mDownY:[F

.field private mGestureDetector:Landroid/view/GestureDetector;

.field private final mHandler:Landroid/os/Handler;

.field private mLastFlingTime:J

.field private mMouseHoveringAtEdge:Z

.field private mScrollFired:Z

.field private mSwipeDistanceThreshold:I

.field private mSwipeFireable:Z

.field private mSwipeStartThreshold:I

.field screenHeight:I

.field screenWidth:I


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/wm/SystemGesturesPointerEventListener$Callbacks;)V
    .registers 6
    .param p1, "context"  # Landroid/content/Context;
    .param p2, "handler"  # Landroid/os/Handler;
    .param p3, "callbacks"  # Lcom/android/server/wm/SystemGesturesPointerEventListener$Callbacks;

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    const/16 v0, 0x20

    new-array v1, v0, [I

    iput-object v1, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mDownPointerId:[I

    .line 59
    new-array v1, v0, [F

    iput-object v1, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mDownX:[F

    .line 60
    new-array v1, v0, [F

    iput-object v1, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mDownY:[F

    .line 61
    new-array v0, v0, [J

    iput-object v0, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mDownTime:[J

    .line 75
    const-string v0, "context"

    invoke-static {v0, p1}, Lcom/android/server/wm/SystemGesturesPointerEventListener;->checkNull(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iput-object v0, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mContext:Landroid/content/Context;

    .line 76
    iput-object p2, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mHandler:Landroid/os/Handler;

    .line 77
    const-string v0, "callbacks"

    invoke-static {v0, p3}, Lcom/android/server/wm/SystemGesturesPointerEventListener;->checkNull(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/SystemGesturesPointerEventListener$Callbacks;

    iput-object v0, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mCallbacks:Lcom/android/server/wm/SystemGesturesPointerEventListener$Callbacks;

    .line 79
    invoke-virtual {p0}, Lcom/android/server/wm/SystemGesturesPointerEventListener;->onConfigurationChanged()V

    .line 80
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/wm/SystemGesturesPointerEventListener;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/wm/SystemGesturesPointerEventListener;

    .line 38
    iget-object v0, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/wm/SystemGesturesPointerEventListener;)J
    .registers 3
    .param p0, "x0"  # Lcom/android/server/wm/SystemGesturesPointerEventListener;

    .line 38
    iget-wide v0, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mLastFlingTime:J

    return-wide v0
.end method

.method static synthetic access$102(Lcom/android/server/wm/SystemGesturesPointerEventListener;J)J
    .registers 3
    .param p0, "x0"  # Lcom/android/server/wm/SystemGesturesPointerEventListener;
    .param p1, "x1"  # J

    .line 38
    iput-wide p1, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mLastFlingTime:J

    return-wide p1
.end method

.method static synthetic access$200(Lcom/android/server/wm/SystemGesturesPointerEventListener;)Lcom/android/server/wm/SystemGesturesPointerEventListener$Callbacks;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/wm/SystemGesturesPointerEventListener;

    .line 38
    iget-object v0, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mCallbacks:Lcom/android/server/wm/SystemGesturesPointerEventListener$Callbacks;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/wm/SystemGesturesPointerEventListener;)Z
    .registers 2
    .param p0, "x0"  # Lcom/android/server/wm/SystemGesturesPointerEventListener;

    .line 38
    iget-boolean v0, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mScrollFired:Z

    return v0
.end method

.method static synthetic access$302(Lcom/android/server/wm/SystemGesturesPointerEventListener;Z)Z
    .registers 2
    .param p0, "x0"  # Lcom/android/server/wm/SystemGesturesPointerEventListener;
    .param p1, "x1"  # Z

    .line 38
    iput-boolean p1, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mScrollFired:Z

    return p1
.end method

.method private captureDown(Landroid/view/MotionEvent;I)V
    .registers 8
    .param p1, "event"  # Landroid/view/MotionEvent;
    .param p2, "pointerIndex"  # I

    .line 202
    invoke-virtual {p1, p2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    .line 203
    .local v0, "pointerId":I
    invoke-direct {p0, v0}, Lcom/android/server/wm/SystemGesturesPointerEventListener;->findIndex(I)I

    move-result v1

    .line 206
    .local v1, "i":I
    const/4 v2, -0x1

    if-eq v1, v2, :cond_23

    .line 207
    iget-object v2, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mDownX:[F

    invoke-virtual {p1, p2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    aput v3, v2, v1

    .line 208
    iget-object v2, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mDownY:[F

    invoke-virtual {p1, p2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    aput v3, v2, v1

    .line 209
    iget-object v2, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mDownTime:[J

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v3

    aput-wide v3, v2, v1

    .line 213
    :cond_23
    return-void
.end method

.method private static checkNull(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5
    .param p0, "name"  # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "TT;)TT;"
        }
    .end annotation

    .line 105
    .local p1, "arg":Ljava/lang/Object;, "TT;"
    if-eqz p1, :cond_3

    .line 108
    return-object p1

    .line 106
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " must not be null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private detectSwipe(IJFF)I
    .registers 14
    .param p1, "i"  # I
    .param p2, "time"  # J
    .param p4, "x"  # F
    .param p5, "y"  # F

    .line 258
    iget-object v0, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mDownX:[F

    aget v0, v0, p1

    .line 259
    .local v0, "fromX":F
    iget-object v1, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mDownY:[F

    aget v1, v1, p1

    .line 260
    .local v1, "fromY":F
    iget-object v2, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mDownTime:[J

    aget-wide v2, v2, p1

    sub-long v2, p2, v2

    .line 263
    .local v2, "elapsed":J
    iget v4, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mSwipeStartThreshold:I

    int-to-float v4, v4

    cmpg-float v4, v1, v4

    const-wide/16 v5, 0x1f4

    if-gtz v4, :cond_25

    iget v4, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mSwipeDistanceThreshold:I

    int-to-float v4, v4

    add-float/2addr v4, v1

    cmpl-float v4, p5, v4

    if-lez v4, :cond_25

    cmp-long v4, v2, v5

    if-gez v4, :cond_25

    .line 266
    const/4 v4, 0x1

    return v4

    .line 268
    :cond_25
    iget v4, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->screenHeight:I

    iget v7, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mSwipeStartThreshold:I

    sub-int/2addr v4, v7

    int-to-float v4, v4

    cmpl-float v4, v1, v4

    if-ltz v4, :cond_3e

    iget v4, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mSwipeDistanceThreshold:I

    int-to-float v4, v4

    sub-float v4, v1, v4

    cmpg-float v4, p5, v4

    if-gez v4, :cond_3e

    cmp-long v4, v2, v5

    if-gez v4, :cond_3e

    .line 271
    const/4 v4, 0x2

    return v4

    .line 273
    :cond_3e
    iget v4, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->screenWidth:I

    iget v7, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mSwipeStartThreshold:I

    sub-int/2addr v4, v7

    int-to-float v4, v4

    cmpl-float v4, v0, v4

    if-ltz v4, :cond_57

    iget v4, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mSwipeDistanceThreshold:I

    int-to-float v4, v4

    sub-float v4, v0, v4

    cmpg-float v4, p4, v4

    if-gez v4, :cond_57

    cmp-long v4, v2, v5

    if-gez v4, :cond_57

    .line 276
    const/4 v4, 0x3

    return v4

    .line 278
    :cond_57
    iget v4, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mSwipeStartThreshold:I

    int-to-float v4, v4

    cmpg-float v4, v0, v4

    if-gtz v4, :cond_6c

    iget v4, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mSwipeDistanceThreshold:I

    int-to-float v4, v4

    add-float/2addr v4, v0

    cmpl-float v4, p4, v4

    if-lez v4, :cond_6c

    cmp-long v4, v2, v5

    if-gez v4, :cond_6c

    .line 281
    const/4 v4, 0x4

    return v4

    .line 283
    :cond_6c
    const/4 v4, 0x0

    return v4
.end method

.method private detectSwipe(Landroid/view/MotionEvent;)I
    .registers 20
    .param p1, "move"  # Landroid/view/MotionEvent;

    .line 233
    move-object/from16 v0, p1

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getHistorySize()I

    move-result v1

    .line 234
    .local v1, "historySize":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v2

    .line 235
    .local v2, "pointerCount":I
    const/4 v3, 0x0

    .local v3, "p":I
    :goto_b
    if-ge v3, v2, :cond_55

    .line 236
    invoke-virtual {v0, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v4

    .line 237
    .local v4, "pointerId":I
    move-object/from16 v11, p0

    invoke-direct {v11, v4}, Lcom/android/server/wm/SystemGesturesPointerEventListener;->findIndex(I)I

    move-result v12

    .line 238
    .local v12, "i":I
    const/4 v5, -0x1

    if-eq v12, v5, :cond_52

    .line 239
    const/4 v5, 0x0

    move v13, v5

    .local v13, "h":I
    :goto_1c
    if-ge v13, v1, :cond_3c

    .line 240
    invoke-virtual {v0, v13}, Landroid/view/MotionEvent;->getHistoricalEventTime(I)J

    move-result-wide v14

    .line 241
    .local v14, "time":J
    invoke-virtual {v0, v3, v13}, Landroid/view/MotionEvent;->getHistoricalX(II)F

    move-result v16

    .line 242
    .local v16, "x":F
    invoke-virtual {v0, v3, v13}, Landroid/view/MotionEvent;->getHistoricalY(II)F

    move-result v17

    .line 243
    .local v17, "y":F
    move-object/from16 v5, p0

    move v6, v12

    move-wide v7, v14

    move/from16 v9, v16

    move/from16 v10, v17

    invoke-direct/range {v5 .. v10}, Lcom/android/server/wm/SystemGesturesPointerEventListener;->detectSwipe(IJFF)I

    move-result v5

    .line 244
    .local v5, "swipe":I
    if-eqz v5, :cond_39

    .line 245
    return v5

    .line 239
    .end local v5  # "swipe":I
    .end local v14  # "time":J
    .end local v16  # "x":F
    .end local v17  # "y":F
    :cond_39
    add-int/lit8 v13, v13, 0x1

    goto :goto_1c

    .line 248
    .end local v13  # "h":I
    :cond_3c
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v7

    invoke-virtual {v0, v3}, Landroid/view/MotionEvent;->getX(I)F

    move-result v9

    invoke-virtual {v0, v3}, Landroid/view/MotionEvent;->getY(I)F

    move-result v10

    move-object/from16 v5, p0

    move v6, v12

    invoke-direct/range {v5 .. v10}, Lcom/android/server/wm/SystemGesturesPointerEventListener;->detectSwipe(IJFF)I

    move-result v5

    .line 249
    .restart local v5  # "swipe":I
    if-eqz v5, :cond_52

    .line 250
    return v5

    .line 235
    .end local v4  # "pointerId":I
    .end local v5  # "swipe":I
    .end local v12  # "i":I
    :cond_52
    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    :cond_55
    move-object/from16 v11, p0

    .line 254
    .end local v3  # "p":I
    const/4 v3, 0x0

    return v3
.end method

.method private findIndex(I)I
    .registers 5
    .param p1, "pointerId"  # I

    .line 220
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget v1, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mDownPointers:I

    if-ge v0, v1, :cond_f

    .line 221
    iget-object v1, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mDownPointerId:[I

    aget v1, v1, v0

    if-ne v1, p1, :cond_c

    .line 222
    return v0

    .line 220
    :cond_c
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 225
    .end local v0  # "i":I
    :cond_f
    const/16 v0, 0x20

    const/4 v2, -0x1

    if-eq v1, v0, :cond_24

    if-ne p1, v2, :cond_17

    goto :goto_24

    .line 228
    :cond_17
    iget-object v0, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mDownPointerId:[I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mDownPointers:I

    aput p1, v0, v1

    .line 229
    iget v0, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mDownPointers:I

    add-int/lit8 v0, v0, -0x1

    return v0

    .line 226
    :cond_24
    :goto_24
    return v2
.end method


# virtual methods
.method protected currentGestureStartedInRegion(Landroid/graphics/Region;)Z
    .registers 5
    .param p1, "r"  # Landroid/graphics/Region;

    .line 216
    iget-object v0, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mDownX:[F

    const/4 v1, 0x0

    aget v0, v0, v1

    float-to-int v0, v0

    iget-object v2, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mDownY:[F

    aget v1, v2, v1

    float-to-int v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Region;->contains(II)Z

    move-result v0

    return v0
.end method

.method public synthetic lambda$systemReady$0$SystemGesturesPointerEventListener()V
    .registers 5

    .line 121
    new-instance v0, Lcom/android/server/wm/SystemGesturesPointerEventListener$1;

    iget-object v1, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/android/server/wm/SystemGesturesPointerEventListener$FlingGestureDetector;

    invoke-direct {v2, p0}, Lcom/android/server/wm/SystemGesturesPointerEventListener$FlingGestureDetector;-><init>(Lcom/android/server/wm/SystemGesturesPointerEventListener;)V

    iget-object v3, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/android/server/wm/SystemGesturesPointerEventListener$1;-><init>(Lcom/android/server/wm/SystemGesturesPointerEventListener;Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mGestureDetector:Landroid/view/GestureDetector;

    return-void
.end method

.method onConfigurationChanged()V
    .registers 6

    .line 83
    iget-object v0, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 84
    const v1, 0x105020f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mSwipeStartThreshold:I

    .line 86
    invoke-static {}, Landroid/hardware/display/DisplayManagerGlobal;->getInstance()Landroid/hardware/display/DisplayManagerGlobal;

    move-result-object v0

    .line 87
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/hardware/display/DisplayManagerGlobal;->getRealDisplay(I)Landroid/view/Display;

    move-result-object v0

    .line 88
    .local v0, "display":Landroid/view/Display;
    invoke-virtual {v0}, Landroid/view/Display;->getCutout()Landroid/view/DisplayCutout;

    move-result-object v1

    .line 89
    .local v1, "displayCutout":Landroid/view/DisplayCutout;
    if-eqz v1, :cond_3e

    .line 90
    invoke-virtual {v1}, Landroid/view/DisplayCutout;->getBoundingRectTop()Landroid/graphics/Rect;

    move-result-object v2

    .line 91
    .local v2, "bounds":Landroid/graphics/Rect;
    invoke-virtual {v2}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_3e

    .line 94
    iget-object v3, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x10500f4

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mDisplayCutoutTouchableRegionSize:I

    .line 96
    iget v3, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mSwipeStartThreshold:I

    iget v4, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mDisplayCutoutTouchableRegionSize:I

    add-int/2addr v3, v4

    iput v3, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mSwipeStartThreshold:I

    .line 99
    .end local v2  # "bounds":Landroid/graphics/Rect;
    :cond_3e
    iget v2, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mSwipeStartThreshold:I

    iput v2, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mSwipeDistanceThreshold:I

    .line 102
    return-void
.end method

.method public onPointerEvent(Landroid/view/MotionEvent;)V
    .registers 7
    .param p1, "event"  # Landroid/view/MotionEvent;

    .line 127
    iget-object v0, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mGestureDetector:Landroid/view/GestureDetector;

    if-eqz v0, :cond_f

    invoke-virtual {p1}, Landroid/view/MotionEvent;->isTouchEvent()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 128
    iget-object v0, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 130
    :cond_f
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_e1

    if-eq v0, v1, :cond_cc

    const/4 v3, 0x3

    const/4 v4, 0x2

    if-eq v0, v4, :cond_9e

    if-eq v0, v3, :cond_cc

    const/4 v3, 0x5

    if-eq v0, v3, :cond_7f

    const/4 v3, 0x7

    if-eq v0, v3, :cond_27

    goto/16 :goto_fd

    .line 173
    :cond_27
    const/16 v0, 0x2002

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->isFromSource(I)Z

    move-result v0

    if-eqz v0, :cond_fd

    .line 174
    iget-boolean v0, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mMouseHoveringAtEdge:Z

    const/4 v3, 0x0

    if-nez v0, :cond_45

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    cmpl-float v0, v0, v3

    if-nez v0, :cond_45

    .line 175
    iget-object v0, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mCallbacks:Lcom/android/server/wm/SystemGesturesPointerEventListener$Callbacks;

    invoke-interface {v0}, Lcom/android/server/wm/SystemGesturesPointerEventListener$Callbacks;->onMouseHoverAtTop()V

    .line 176
    iput-boolean v1, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mMouseHoveringAtEdge:Z

    goto/16 :goto_fd

    .line 177
    :cond_45
    iget-boolean v0, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mMouseHoveringAtEdge:Z

    if-nez v0, :cond_5e

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iget v4, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->screenHeight:I

    sub-int/2addr v4, v1

    int-to-float v4, v4

    cmpl-float v0, v0, v4

    if-ltz v0, :cond_5e

    .line 178
    iget-object v0, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mCallbacks:Lcom/android/server/wm/SystemGesturesPointerEventListener$Callbacks;

    invoke-interface {v0}, Lcom/android/server/wm/SystemGesturesPointerEventListener$Callbacks;->onMouseHoverAtBottom()V

    .line 179
    iput-boolean v1, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mMouseHoveringAtEdge:Z

    goto/16 :goto_fd

    .line 180
    :cond_5e
    iget-boolean v0, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mMouseHoveringAtEdge:Z

    if-eqz v0, :cond_fd

    .line 181
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    cmpl-float v0, v0, v3

    if-lez v0, :cond_fd

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iget v3, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->screenHeight:I

    sub-int/2addr v3, v1

    int-to-float v1, v3

    cmpg-float v0, v0, v1

    if-gez v0, :cond_fd

    .line 182
    iget-object v0, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mCallbacks:Lcom/android/server/wm/SystemGesturesPointerEventListener$Callbacks;

    invoke-interface {v0}, Lcom/android/server/wm/SystemGesturesPointerEventListener$Callbacks;->onMouseLeaveFromEdge()V

    .line 183
    iput-boolean v2, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mMouseHoveringAtEdge:Z

    goto/16 :goto_fd

    .line 144
    :cond_7f
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/android/server/wm/SystemGesturesPointerEventListener;->captureDown(Landroid/view/MotionEvent;I)V

    .line 145
    iget-boolean v0, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mDebugFireable:Z

    if-eqz v0, :cond_fd

    .line 146
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    if-ge v0, v3, :cond_91

    goto :goto_92

    :cond_91
    move v1, v2

    :goto_92
    iput-boolean v1, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mDebugFireable:Z

    .line 147
    iget-boolean v0, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mDebugFireable:Z

    if-nez v0, :cond_fd

    .line 149
    iget-object v0, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mCallbacks:Lcom/android/server/wm/SystemGesturesPointerEventListener$Callbacks;

    invoke-interface {v0}, Lcom/android/server/wm/SystemGesturesPointerEventListener$Callbacks;->onDebug()V

    goto :goto_fd

    .line 154
    :cond_9e
    iget-boolean v0, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mSwipeFireable:Z

    if-eqz v0, :cond_fd

    .line 155
    invoke-direct {p0, p1}, Lcom/android/server/wm/SystemGesturesPointerEventListener;->detectSwipe(Landroid/view/MotionEvent;)I

    move-result v0

    .line 156
    .local v0, "swipe":I
    if-nez v0, :cond_a9

    move v2, v1

    :cond_a9
    iput-boolean v2, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mSwipeFireable:Z

    .line 157
    if-ne v0, v1, :cond_b3

    .line 159
    iget-object v1, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mCallbacks:Lcom/android/server/wm/SystemGesturesPointerEventListener$Callbacks;

    invoke-interface {v1}, Lcom/android/server/wm/SystemGesturesPointerEventListener$Callbacks;->onSwipeFromTop()V

    goto :goto_cb

    .line 160
    :cond_b3
    if-ne v0, v4, :cond_bb

    .line 162
    iget-object v1, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mCallbacks:Lcom/android/server/wm/SystemGesturesPointerEventListener$Callbacks;

    invoke-interface {v1}, Lcom/android/server/wm/SystemGesturesPointerEventListener$Callbacks;->onSwipeFromBottom()V

    goto :goto_cb

    .line 163
    :cond_bb
    if-ne v0, v3, :cond_c3

    .line 165
    iget-object v1, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mCallbacks:Lcom/android/server/wm/SystemGesturesPointerEventListener$Callbacks;

    invoke-interface {v1}, Lcom/android/server/wm/SystemGesturesPointerEventListener$Callbacks;->onSwipeFromRight()V

    goto :goto_cb

    .line 166
    :cond_c3
    const/4 v1, 0x4

    if-ne v0, v1, :cond_cb

    .line 168
    iget-object v1, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mCallbacks:Lcom/android/server/wm/SystemGesturesPointerEventListener$Callbacks;

    invoke-interface {v1}, Lcom/android/server/wm/SystemGesturesPointerEventListener$Callbacks;->onSwipeFromLeft()V

    .line 170
    .end local v0  # "swipe":I
    :cond_cb
    :goto_cb
    goto :goto_fd

    .line 189
    :cond_cc
    iput-boolean v2, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mSwipeFireable:Z

    .line 190
    iput-boolean v2, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mDebugFireable:Z

    .line 191
    iget-boolean v0, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mScrollFired:Z

    if-eqz v0, :cond_d9

    .line 192
    iget-object v0, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mCallbacks:Lcom/android/server/wm/SystemGesturesPointerEventListener$Callbacks;

    invoke-interface {v0, v2}, Lcom/android/server/wm/SystemGesturesPointerEventListener$Callbacks;->onScroll(Z)V

    .line 193
    :cond_d9
    iput-boolean v2, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mScrollFired:Z

    .line 194
    iget-object v0, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mCallbacks:Lcom/android/server/wm/SystemGesturesPointerEventListener$Callbacks;

    invoke-interface {v0}, Lcom/android/server/wm/SystemGesturesPointerEventListener$Callbacks;->onUpOrCancel()V

    .line 195
    goto :goto_fd

    .line 132
    :cond_e1
    iput-boolean v1, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mSwipeFireable:Z

    .line 133
    iput-boolean v1, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mDebugFireable:Z

    .line 134
    iput-boolean v2, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mScrollFired:Z

    .line 135
    iput v2, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mDownPointers:I

    .line 136
    invoke-direct {p0, p1, v2}, Lcom/android/server/wm/SystemGesturesPointerEventListener;->captureDown(Landroid/view/MotionEvent;I)V

    .line 137
    iget-boolean v0, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mMouseHoveringAtEdge:Z

    if-eqz v0, :cond_f7

    .line 138
    iput-boolean v2, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mMouseHoveringAtEdge:Z

    .line 139
    iget-object v0, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mCallbacks:Lcom/android/server/wm/SystemGesturesPointerEventListener$Callbacks;

    invoke-interface {v0}, Lcom/android/server/wm/SystemGesturesPointerEventListener$Callbacks;->onMouseLeaveFromEdge()V

    .line 141
    :cond_f7
    iget-object v0, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mCallbacks:Lcom/android/server/wm/SystemGesturesPointerEventListener$Callbacks;

    invoke-interface {v0}, Lcom/android/server/wm/SystemGesturesPointerEventListener$Callbacks;->onDown()V

    .line 142
    nop

    .line 199
    :cond_fd
    :goto_fd
    return-void
.end method

.method public systemReady()V
    .registers 3

    .line 121
    iget-object v0, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/wm/-$$Lambda$SystemGesturesPointerEventListener$9Iw39fjTtjXO5kacgrpdxfxjuSY;

    invoke-direct {v1, p0}, Lcom/android/server/wm/-$$Lambda$SystemGesturesPointerEventListener$9Iw39fjTtjXO5kacgrpdxfxjuSY;-><init>(Lcom/android/server/wm/SystemGesturesPointerEventListener;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 123
    return-void
.end method
