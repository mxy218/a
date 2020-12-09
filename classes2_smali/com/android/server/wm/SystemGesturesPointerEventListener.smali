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

.field private mSwipeDistanceThreshold:I

.field private mSwipeFireable:Z

.field private mSwipeStartThreshold:I

.field screenHeight:I

.field screenWidth:I


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/wm/SystemGesturesPointerEventListener$Callbacks;)V
    .registers 6

    .line 73
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

    .line 74
    const-string v0, "context"

    invoke-static {v0, p1}, Lcom/android/server/wm/SystemGesturesPointerEventListener;->checkNull(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    iput-object p1, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mContext:Landroid/content/Context;

    .line 75
    iput-object p2, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mHandler:Landroid/os/Handler;

    .line 76
    const-string p1, "callbacks"

    invoke-static {p1, p3}, Lcom/android/server/wm/SystemGesturesPointerEventListener;->checkNull(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/wm/SystemGesturesPointerEventListener$Callbacks;

    iput-object p1, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mCallbacks:Lcom/android/server/wm/SystemGesturesPointerEventListener$Callbacks;

    .line 78
    invoke-virtual {p0}, Lcom/android/server/wm/SystemGesturesPointerEventListener;->onConfigurationChanged()V

    .line 79
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/wm/SystemGesturesPointerEventListener;)Landroid/content/Context;
    .registers 1

    .line 38
    iget-object p0, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/server/wm/SystemGesturesPointerEventListener;)J
    .registers 3

    .line 38
    iget-wide v0, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mLastFlingTime:J

    return-wide v0
.end method

.method static synthetic access$102(Lcom/android/server/wm/SystemGesturesPointerEventListener;J)J
    .registers 3

    .line 38
    iput-wide p1, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mLastFlingTime:J

    return-wide p1
.end method

.method static synthetic access$200(Lcom/android/server/wm/SystemGesturesPointerEventListener;)Lcom/android/server/wm/SystemGesturesPointerEventListener$Callbacks;
    .registers 1

    .line 38
    iget-object p0, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mCallbacks:Lcom/android/server/wm/SystemGesturesPointerEventListener$Callbacks;

    return-object p0
.end method

.method private captureDown(Landroid/view/MotionEvent;I)V
    .registers 6

    .line 197
    invoke-virtual {p1, p2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    .line 198
    invoke-direct {p0, v0}, Lcom/android/server/wm/SystemGesturesPointerEventListener;->findIndex(I)I

    move-result v0

    .line 201
    const/4 v1, -0x1

    if-eq v0, v1, :cond_23

    .line 202
    iget-object v1, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mDownX:[F

    invoke-virtual {p1, p2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    aput v2, v1, v0

    .line 203
    iget-object v1, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mDownY:[F

    invoke-virtual {p1, p2}, Landroid/view/MotionEvent;->getY(I)F

    move-result p2

    aput p2, v1, v0

    .line 204
    iget-object p2, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mDownTime:[J

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v1

    aput-wide v1, p2, v0

    .line 208
    :cond_23
    return-void
.end method

.method private static checkNull(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "TT;)TT;"
        }
    .end annotation

    .line 104
    if-eqz p1, :cond_3

    .line 107
    return-object p1

    .line 105
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " must not be null"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private detectSwipe(IJFF)I
    .registers 11

    .line 253
    iget-object v0, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mDownX:[F

    aget v0, v0, p1

    .line 254
    iget-object v1, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mDownY:[F

    aget v1, v1, p1

    .line 255
    iget-object v2, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mDownTime:[J

    aget-wide v2, v2, p1

    sub-long/2addr p2, v2

    .line 258
    iget p1, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mSwipeStartThreshold:I

    int-to-float p1, p1

    cmpg-float p1, v1, p1

    const-wide/16 v2, 0x1f4

    if-gtz p1, :cond_24

    iget p1, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mSwipeDistanceThreshold:I

    int-to-float p1, p1

    add-float/2addr p1, v1

    cmpl-float p1, p5, p1

    if-lez p1, :cond_24

    cmp-long p1, p2, v2

    if-gez p1, :cond_24

    .line 261
    const/4 p1, 0x1

    return p1

    .line 263
    :cond_24
    iget p1, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->screenHeight:I

    iget v4, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mSwipeStartThreshold:I

    sub-int/2addr p1, v4

    int-to-float p1, p1

    cmpl-float p1, v1, p1

    if-ltz p1, :cond_3c

    iget p1, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mSwipeDistanceThreshold:I

    int-to-float p1, p1

    sub-float/2addr v1, p1

    cmpg-float p1, p5, v1

    if-gez p1, :cond_3c

    cmp-long p1, p2, v2

    if-gez p1, :cond_3c

    .line 266
    const/4 p1, 0x2

    return p1

    .line 268
    :cond_3c
    iget p1, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->screenWidth:I

    iget p5, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mSwipeStartThreshold:I

    sub-int/2addr p1, p5

    int-to-float p1, p1

    cmpl-float p1, v0, p1

    if-ltz p1, :cond_55

    iget p1, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mSwipeDistanceThreshold:I

    int-to-float p1, p1

    sub-float p1, v0, p1

    cmpg-float p1, p4, p1

    if-gez p1, :cond_55

    cmp-long p1, p2, v2

    if-gez p1, :cond_55

    .line 271
    const/4 p1, 0x3

    return p1

    .line 273
    :cond_55
    iget p1, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mSwipeStartThreshold:I

    int-to-float p1, p1

    cmpg-float p1, v0, p1

    if-gtz p1, :cond_6a

    iget p1, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mSwipeDistanceThreshold:I

    int-to-float p1, p1

    add-float/2addr v0, p1

    cmpl-float p1, p4, v0

    if-lez p1, :cond_6a

    cmp-long p1, p2, v2

    if-gez p1, :cond_6a

    .line 276
    const/4 p1, 0x4

    return p1

    .line 278
    :cond_6a
    const/4 p1, 0x0

    return p1
.end method

.method private detectSwipe(Landroid/view/MotionEvent;)I
    .registers 14

    .line 228
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getHistorySize()I

    move-result v0

    .line 229
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v1

    .line 230
    const/4 v2, 0x0

    move v3, v2

    :goto_a
    if-ge v3, v1, :cond_4a

    .line 231
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v4

    .line 232
    invoke-direct {p0, v4}, Lcom/android/server/wm/SystemGesturesPointerEventListener;->findIndex(I)I

    move-result v4

    .line 233
    const/4 v5, -0x1

    if-eq v4, v5, :cond_47

    .line 234
    move v11, v2

    :goto_18
    if-ge v11, v0, :cond_32

    .line 235
    invoke-virtual {p1, v11}, Landroid/view/MotionEvent;->getHistoricalEventTime(I)J

    move-result-wide v7

    .line 236
    invoke-virtual {p1, v3, v11}, Landroid/view/MotionEvent;->getHistoricalX(II)F

    move-result v9

    .line 237
    invoke-virtual {p1, v3, v11}, Landroid/view/MotionEvent;->getHistoricalY(II)F

    move-result v10

    .line 238
    move-object v5, p0

    move v6, v4

    invoke-direct/range {v5 .. v10}, Lcom/android/server/wm/SystemGesturesPointerEventListener;->detectSwipe(IJFF)I

    move-result v5

    .line 239
    if-eqz v5, :cond_2f

    .line 240
    return v5

    .line 234
    :cond_2f
    add-int/lit8 v11, v11, 0x1

    goto :goto_18

    .line 243
    :cond_32
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v7

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getX(I)F

    move-result v9

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getY(I)F

    move-result v10

    move-object v5, p0

    move v6, v4

    invoke-direct/range {v5 .. v10}, Lcom/android/server/wm/SystemGesturesPointerEventListener;->detectSwipe(IJFF)I

    move-result v4

    .line 244
    if-eqz v4, :cond_47

    .line 245
    return v4

    .line 230
    :cond_47
    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    .line 249
    :cond_4a
    return v2
.end method

.method private findIndex(I)I
    .registers 5

    .line 215
    const/4 v0, 0x0

    :goto_1
    iget v1, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mDownPointers:I

    if-ge v0, v1, :cond_f

    .line 216
    iget-object v1, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mDownPointerId:[I

    aget v1, v1, v0

    if-ne v1, p1, :cond_c

    .line 217
    return v0

    .line 215
    :cond_c
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 220
    :cond_f
    const/16 v0, 0x20

    const/4 v2, -0x1

    if-eq v1, v0, :cond_24

    if-ne p1, v2, :cond_17

    goto :goto_24

    .line 223
    :cond_17
    iget-object v0, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mDownPointerId:[I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mDownPointers:I

    aput p1, v0, v1

    .line 224
    iget p1, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mDownPointers:I

    add-int/lit8 p1, p1, -0x1

    return p1

    .line 221
    :cond_24
    :goto_24
    return v2
.end method


# virtual methods
.method protected currentGestureStartedInRegion(Landroid/graphics/Region;)Z
    .registers 5

    .line 211
    iget-object v0, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mDownX:[F

    const/4 v1, 0x0

    aget v0, v0, v1

    float-to-int v0, v0

    iget-object v2, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mDownY:[F

    aget v1, v2, v1

    float-to-int v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Region;->contains(II)Z

    move-result p1

    return p1
.end method

.method public synthetic lambda$systemReady$0$SystemGesturesPointerEventListener()V
    .registers 5

    .line 120
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
    .registers 3

    .line 82
    iget-object v0, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 83
    const v1, 0x105021a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mSwipeStartThreshold:I

    .line 85
    invoke-static {}, Landroid/hardware/display/DisplayManagerGlobal;->getInstance()Landroid/hardware/display/DisplayManagerGlobal;

    move-result-object v0

    .line 86
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/hardware/display/DisplayManagerGlobal;->getRealDisplay(I)Landroid/view/Display;

    move-result-object v0

    .line 87
    invoke-virtual {v0}, Landroid/view/Display;->getCutout()Landroid/view/DisplayCutout;

    move-result-object v0

    .line 88
    if-eqz v0, :cond_3e

    .line 89
    invoke-virtual {v0}, Landroid/view/DisplayCutout;->getBoundingRectTop()Landroid/graphics/Rect;

    move-result-object v0

    .line 90
    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3e

    .line 93
    iget-object v0, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10500f7

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mDisplayCutoutTouchableRegionSize:I

    .line 95
    iget v0, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mSwipeStartThreshold:I

    iget v1, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mDisplayCutoutTouchableRegionSize:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mSwipeStartThreshold:I

    .line 98
    :cond_3e
    iget v0, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mSwipeStartThreshold:I

    iput v0, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mSwipeDistanceThreshold:I

    .line 101
    return-void
.end method

.method public onPointerEvent(Landroid/view/MotionEvent;)V
    .registers 7

    .line 126
    iget-object v0, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mGestureDetector:Landroid/view/GestureDetector;

    if-eqz v0, :cond_f

    invoke-virtual {p1}, Landroid/view/MotionEvent;->isTouchEvent()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 127
    iget-object v0, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 129
    :cond_f
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_d5

    if-eq v0, v2, :cond_cb

    const/4 v3, 0x3

    const/4 v4, 0x2

    if-eq v0, v4, :cond_9d

    if-eq v0, v3, :cond_cb

    const/4 v3, 0x5

    if-eq v0, v3, :cond_7f

    const/4 v3, 0x7

    if-eq v0, v3, :cond_27

    goto/16 :goto_ef

    .line 171
    :cond_27
    const/16 v0, 0x2002

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->isFromSource(I)Z

    move-result v0

    if-eqz v0, :cond_ef

    .line 172
    iget-boolean v0, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mMouseHoveringAtEdge:Z

    const/4 v3, 0x0

    if-nez v0, :cond_45

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    cmpl-float v0, v0, v3

    if-nez v0, :cond_45

    .line 173
    iget-object p1, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mCallbacks:Lcom/android/server/wm/SystemGesturesPointerEventListener$Callbacks;

    invoke-interface {p1}, Lcom/android/server/wm/SystemGesturesPointerEventListener$Callbacks;->onMouseHoverAtTop()V

    .line 174
    iput-boolean v2, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mMouseHoveringAtEdge:Z

    goto/16 :goto_ef

    .line 175
    :cond_45
    iget-boolean v0, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mMouseHoveringAtEdge:Z

    if-nez v0, :cond_5e

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iget v4, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->screenHeight:I

    sub-int/2addr v4, v2

    int-to-float v4, v4

    cmpl-float v0, v0, v4

    if-ltz v0, :cond_5e

    .line 176
    iget-object p1, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mCallbacks:Lcom/android/server/wm/SystemGesturesPointerEventListener$Callbacks;

    invoke-interface {p1}, Lcom/android/server/wm/SystemGesturesPointerEventListener$Callbacks;->onMouseHoverAtBottom()V

    .line 177
    iput-boolean v2, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mMouseHoveringAtEdge:Z

    goto/16 :goto_ef

    .line 178
    :cond_5e
    iget-boolean v0, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mMouseHoveringAtEdge:Z

    if-eqz v0, :cond_ef

    .line 179
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    cmpl-float v0, v0, v3

    if-lez v0, :cond_ef

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iget v0, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->screenHeight:I

    sub-int/2addr v0, v2

    int-to-float v0, v0

    cmpg-float p1, p1, v0

    if-gez p1, :cond_ef

    .line 180
    iget-object p1, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mCallbacks:Lcom/android/server/wm/SystemGesturesPointerEventListener$Callbacks;

    invoke-interface {p1}, Lcom/android/server/wm/SystemGesturesPointerEventListener$Callbacks;->onMouseLeaveFromEdge()V

    .line 181
    iput-boolean v1, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mMouseHoveringAtEdge:Z

    goto/16 :goto_ef

    .line 142
    :cond_7f
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/android/server/wm/SystemGesturesPointerEventListener;->captureDown(Landroid/view/MotionEvent;I)V

    .line 143
    iget-boolean v0, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mDebugFireable:Z

    if-eqz v0, :cond_ef

    .line 144
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result p1

    if-ge p1, v3, :cond_91

    move v1, v2

    :cond_91
    iput-boolean v1, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mDebugFireable:Z

    .line 145
    iget-boolean p1, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mDebugFireable:Z

    if-nez p1, :cond_ef

    .line 147
    iget-object p1, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mCallbacks:Lcom/android/server/wm/SystemGesturesPointerEventListener$Callbacks;

    invoke-interface {p1}, Lcom/android/server/wm/SystemGesturesPointerEventListener$Callbacks;->onDebug()V

    goto :goto_ef

    .line 152
    :cond_9d
    iget-boolean v0, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mSwipeFireable:Z

    if-eqz v0, :cond_ef

    .line 153
    invoke-direct {p0, p1}, Lcom/android/server/wm/SystemGesturesPointerEventListener;->detectSwipe(Landroid/view/MotionEvent;)I

    move-result p1

    .line 154
    if-nez p1, :cond_a8

    move v1, v2

    :cond_a8
    iput-boolean v1, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mSwipeFireable:Z

    .line 155
    if-ne p1, v2, :cond_b2

    .line 157
    iget-object p1, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mCallbacks:Lcom/android/server/wm/SystemGesturesPointerEventListener$Callbacks;

    invoke-interface {p1}, Lcom/android/server/wm/SystemGesturesPointerEventListener$Callbacks;->onSwipeFromTop()V

    goto :goto_ca

    .line 158
    :cond_b2
    if-ne p1, v4, :cond_ba

    .line 160
    iget-object p1, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mCallbacks:Lcom/android/server/wm/SystemGesturesPointerEventListener$Callbacks;

    invoke-interface {p1}, Lcom/android/server/wm/SystemGesturesPointerEventListener$Callbacks;->onSwipeFromBottom()V

    goto :goto_ca

    .line 161
    :cond_ba
    if-ne p1, v3, :cond_c2

    .line 163
    iget-object p1, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mCallbacks:Lcom/android/server/wm/SystemGesturesPointerEventListener$Callbacks;

    invoke-interface {p1}, Lcom/android/server/wm/SystemGesturesPointerEventListener$Callbacks;->onSwipeFromRight()V

    goto :goto_ca

    .line 164
    :cond_c2
    const/4 v0, 0x4

    if-ne p1, v0, :cond_ca

    .line 166
    iget-object p1, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mCallbacks:Lcom/android/server/wm/SystemGesturesPointerEventListener$Callbacks;

    invoke-interface {p1}, Lcom/android/server/wm/SystemGesturesPointerEventListener$Callbacks;->onSwipeFromLeft()V

    .line 168
    :cond_ca
    :goto_ca
    goto :goto_ef

    .line 187
    :cond_cb
    iput-boolean v1, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mSwipeFireable:Z

    .line 188
    iput-boolean v1, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mDebugFireable:Z

    .line 189
    iget-object p1, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mCallbacks:Lcom/android/server/wm/SystemGesturesPointerEventListener$Callbacks;

    invoke-interface {p1}, Lcom/android/server/wm/SystemGesturesPointerEventListener$Callbacks;->onUpOrCancel()V

    .line 190
    goto :goto_ef

    .line 131
    :cond_d5
    iput-boolean v2, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mSwipeFireable:Z

    .line 132
    iput-boolean v2, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mDebugFireable:Z

    .line 133
    iput v1, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mDownPointers:I

    .line 134
    invoke-direct {p0, p1, v1}, Lcom/android/server/wm/SystemGesturesPointerEventListener;->captureDown(Landroid/view/MotionEvent;I)V

    .line 135
    iget-boolean p1, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mMouseHoveringAtEdge:Z

    if-eqz p1, :cond_e9

    .line 136
    iput-boolean v1, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mMouseHoveringAtEdge:Z

    .line 137
    iget-object p1, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mCallbacks:Lcom/android/server/wm/SystemGesturesPointerEventListener$Callbacks;

    invoke-interface {p1}, Lcom/android/server/wm/SystemGesturesPointerEventListener$Callbacks;->onMouseLeaveFromEdge()V

    .line 139
    :cond_e9
    iget-object p1, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mCallbacks:Lcom/android/server/wm/SystemGesturesPointerEventListener$Callbacks;

    invoke-interface {p1}, Lcom/android/server/wm/SystemGesturesPointerEventListener$Callbacks;->onDown()V

    .line 140
    nop

    .line 194
    :cond_ef
    :goto_ef
    return-void
.end method

.method public systemReady()V
    .registers 3

    .line 120
    iget-object v0, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/wm/-$$Lambda$SystemGesturesPointerEventListener$9Iw39fjTtjXO5kacgrpdxfxjuSY;

    invoke-direct {v1, p0}, Lcom/android/server/wm/-$$Lambda$SystemGesturesPointerEventListener$9Iw39fjTtjXO5kacgrpdxfxjuSY;-><init>(Lcom/android/server/wm/SystemGesturesPointerEventListener;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 122
    return-void
.end method
