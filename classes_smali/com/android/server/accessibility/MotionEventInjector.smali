.class public Lcom/android/server/accessibility/MotionEventInjector;
.super Lcom/android/server/accessibility/BaseEventStreamTransformation;
.source "MotionEventInjector.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# static fields
.field private static final EVENT_BUTTON_STATE:I = 0x0

.field private static final EVENT_DEVICE_ID:I = 0x0

.field private static final EVENT_EDGE_FLAGS:I = 0x0

.field private static final EVENT_FLAGS:I = 0x0

.field private static final EVENT_META_STATE:I = 0x0

.field private static final EVENT_SOURCE:I = 0x1002

.field private static final EVENT_X_PRECISION:F = 1.0f

.field private static final EVENT_Y_PRECISION:F = 1.0f

.field private static final LOG_TAG:Ljava/lang/String; = "MotionEventInjector"

.field private static final MESSAGE_INJECT_EVENTS:I = 0x2

.field private static final MESSAGE_SEND_MOTION_EVENT:I = 0x1

.field private static sPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

.field private static sPointerProps:[Landroid/view/MotionEvent$PointerProperties;


# instance fields
.field private mDownTime:J

.field private final mHandler:Landroid/os/Handler;

.field private mIsDestroyed:Z

.field private mLastScheduledEventTime:J

.field private mLastTouchPoints:[Landroid/accessibilityservice/GestureDescription$TouchPoint;

.field private mNumLastTouchPoints:I

.field private final mOpenGesturesInProgress:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mSequencesInProgress:Landroid/util/IntArray;

.field private mServiceInterfaceForCurrentGesture:Landroid/accessibilityservice/IAccessibilityServiceClient;

.field private mStrokeIdToPointerId:Landroid/util/SparseIntArray;


# direct methods
.method public constructor <init>(Landroid/os/Handler;)V
    .registers 4

    .line 90
    invoke-direct {p0}, Lcom/android/server/accessibility/BaseEventStreamTransformation;-><init>()V

    .line 69
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/accessibility/MotionEventInjector;->mOpenGesturesInProgress:Landroid/util/SparseArray;

    .line 72
    new-instance v0, Landroid/util/IntArray;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Landroid/util/IntArray;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/accessibility/MotionEventInjector;->mSequencesInProgress:Landroid/util/IntArray;

    .line 73
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/accessibility/MotionEventInjector;->mIsDestroyed:Z

    .line 78
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0, v1}, Landroid/util/SparseIntArray;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/accessibility/MotionEventInjector;->mStrokeIdToPointerId:Landroid/util/SparseIntArray;

    .line 91
    iput-object p1, p0, Lcom/android/server/accessibility/MotionEventInjector;->mHandler:Landroid/os/Handler;

    .line 92
    return-void
.end method

.method public constructor <init>(Landroid/os/Looper;)V
    .registers 4

    .line 83
    invoke-direct {p0}, Lcom/android/server/accessibility/BaseEventStreamTransformation;-><init>()V

    .line 69
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/accessibility/MotionEventInjector;->mOpenGesturesInProgress:Landroid/util/SparseArray;

    .line 72
    new-instance v0, Landroid/util/IntArray;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Landroid/util/IntArray;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/accessibility/MotionEventInjector;->mSequencesInProgress:Landroid/util/IntArray;

    .line 73
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/accessibility/MotionEventInjector;->mIsDestroyed:Z

    .line 78
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0, v1}, Landroid/util/SparseIntArray;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/accessibility/MotionEventInjector;->mStrokeIdToPointerId:Landroid/util/SparseIntArray;

    .line 84
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p1, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/android/server/accessibility/MotionEventInjector;->mHandler:Landroid/os/Handler;

    .line 85
    return-void
.end method

.method private appendDownEvents(Ljava/util/List;[Landroid/accessibilityservice/GestureDescription$TouchPoint;IJ)V
    .registers 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/MotionEvent;",
            ">;[",
            "Landroid/accessibilityservice/GestureDescription$TouchPoint;",
            "IJ)V"
        }
    .end annotation

    .line 428
    move-object v8, p0

    invoke-direct {p0}, Lcom/android/server/accessibility/MotionEventInjector;->getLastTouchPoints()[Landroid/accessibilityservice/GestureDescription$TouchPoint;

    move-result-object v9

    .line 429
    const/4 v10, 0x0

    move v11, v10

    :goto_7
    move/from16 v12, p3

    if-ge v11, v12, :cond_4c

    .line 430
    aget-object v0, p2, v11

    iget-boolean v0, v0, Landroid/accessibilityservice/GestureDescription$TouchPoint;->mIsStartOfPath:Z

    if-eqz v0, :cond_45

    .line 432
    iget v0, v8, Lcom/android/server/accessibility/MotionEventInjector;->mNumLastTouchPoints:I

    add-int/lit8 v1, v0, 0x1

    iput v1, v8, Lcom/android/server/accessibility/MotionEventInjector;->mNumLastTouchPoints:I

    aget-object v0, v9, v0

    aget-object v1, p2, v11

    invoke-virtual {v0, v1}, Landroid/accessibilityservice/GestureDescription$TouchPoint;->copyFrom(Landroid/accessibilityservice/GestureDescription$TouchPoint;)V

    .line 433
    iget v0, v8, Lcom/android/server/accessibility/MotionEventInjector;->mNumLastTouchPoints:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_25

    move v0, v10

    goto :goto_26

    .line 434
    :cond_25
    const/4 v0, 0x5

    .line 435
    :goto_26
    if-nez v0, :cond_2d

    .line 436
    move-wide/from16 v13, p4

    iput-wide v13, v8, Lcom/android/server/accessibility/MotionEventInjector;->mDownTime:J

    goto :goto_2f

    .line 435
    :cond_2d
    move-wide/from16 v13, p4

    .line 438
    :goto_2f
    shl-int/lit8 v1, v11, 0x8

    or-int v5, v0, v1

    .line 439
    iget-wide v1, v8, Lcom/android/server/accessibility/MotionEventInjector;->mDownTime:J

    iget v7, v8, Lcom/android/server/accessibility/MotionEventInjector;->mNumLastTouchPoints:I

    move-object v0, p0

    move-wide/from16 v3, p4

    move-object v6, v9

    invoke-direct/range {v0 .. v7}, Lcom/android/server/accessibility/MotionEventInjector;->obtainMotionEvent(JJI[Landroid/accessibilityservice/GestureDescription$TouchPoint;I)Landroid/view/MotionEvent;

    move-result-object v0

    move-object/from16 v1, p1

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_49

    .line 430
    :cond_45
    move-object/from16 v1, p1

    move-wide/from16 v13, p4

    .line 429
    :goto_49
    add-int/lit8 v11, v11, 0x1

    goto :goto_7

    .line 443
    :cond_4c
    return-void
.end method

.method private appendMoveEventIfNeeded(Ljava/util/List;[Landroid/accessibilityservice/GestureDescription$TouchPoint;IJ)V
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/MotionEvent;",
            ">;[",
            "Landroid/accessibilityservice/GestureDescription$TouchPoint;",
            "IJ)V"
        }
    .end annotation

    .line 379
    nop

    .line 380
    invoke-direct {p0}, Lcom/android/server/accessibility/MotionEventInjector;->getLastTouchPoints()[Landroid/accessibilityservice/GestureDescription$TouchPoint;

    move-result-object v6

    .line 381
    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    :goto_8
    if-ge v1, p3, :cond_3d

    .line 382
    iget v3, p0, Lcom/android/server/accessibility/MotionEventInjector;->mNumLastTouchPoints:I

    aget-object v4, p2, v1

    iget v4, v4, Landroid/accessibilityservice/GestureDescription$TouchPoint;->mStrokeId:I

    invoke-static {v6, v3, v4}, Lcom/android/server/accessibility/MotionEventInjector;->findPointByStrokeId([Landroid/accessibilityservice/GestureDescription$TouchPoint;II)I

    move-result v3

    .line 384
    if-ltz v3, :cond_3a

    .line 385
    aget-object v4, v6, v3

    iget v4, v4, Landroid/accessibilityservice/GestureDescription$TouchPoint;->mX:F

    aget-object v5, p2, v1

    iget v5, v5, Landroid/accessibilityservice/GestureDescription$TouchPoint;->mX:F

    cmpl-float v4, v4, v5

    if-nez v4, :cond_31

    aget-object v4, v6, v3

    iget v4, v4, Landroid/accessibilityservice/GestureDescription$TouchPoint;->mY:F

    aget-object v5, p2, v1

    iget v5, v5, Landroid/accessibilityservice/GestureDescription$TouchPoint;->mY:F

    cmpl-float v4, v4, v5

    if-eqz v4, :cond_2f

    goto :goto_31

    :cond_2f
    move v4, v0

    goto :goto_32

    :cond_31
    :goto_31
    const/4 v4, 0x1

    :goto_32
    or-int/2addr v2, v4

    .line 387
    aget-object v3, v6, v3

    aget-object v4, p2, v1

    invoke-virtual {v3, v4}, Landroid/accessibilityservice/GestureDescription$TouchPoint;->copyFrom(Landroid/accessibilityservice/GestureDescription$TouchPoint;)V

    .line 381
    :cond_3a
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 391
    :cond_3d
    if-eqz v2, :cond_4d

    .line 392
    iget-wide v1, p0, Lcom/android/server/accessibility/MotionEventInjector;->mDownTime:J

    const/4 v5, 0x2

    iget v7, p0, Lcom/android/server/accessibility/MotionEventInjector;->mNumLastTouchPoints:I

    move-object v0, p0

    move-wide v3, p4

    invoke-direct/range {v0 .. v7}, Lcom/android/server/accessibility/MotionEventInjector;->obtainMotionEvent(JJI[Landroid/accessibilityservice/GestureDescription$TouchPoint;I)Landroid/view/MotionEvent;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 395
    :cond_4d
    return-void
.end method

.method private appendUpEvents(Ljava/util/List;[Landroid/accessibilityservice/GestureDescription$TouchPoint;IJ)V
    .registers 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/MotionEvent;",
            ">;[",
            "Landroid/accessibilityservice/GestureDescription$TouchPoint;",
            "IJ)V"
        }
    .end annotation

    .line 400
    move-object v8, p0

    invoke-direct {p0}, Lcom/android/server/accessibility/MotionEventInjector;->getLastTouchPoints()[Landroid/accessibilityservice/GestureDescription$TouchPoint;

    move-result-object v9

    .line 401
    const/4 v0, 0x0

    move v10, v0

    :goto_7
    move/from16 v11, p3

    if-ge v10, v11, :cond_5e

    .line 402
    aget-object v0, p2, v10

    iget-boolean v0, v0, Landroid/accessibilityservice/GestureDescription$TouchPoint;->mIsEndOfPath:Z

    if-eqz v0, :cond_5a

    .line 403
    iget v0, v8, Lcom/android/server/accessibility/MotionEventInjector;->mNumLastTouchPoints:I

    aget-object v1, p2, v10

    iget v1, v1, Landroid/accessibilityservice/GestureDescription$TouchPoint;->mStrokeId:I

    invoke-static {v9, v0, v1}, Lcom/android/server/accessibility/MotionEventInjector;->findPointByStrokeId([Landroid/accessibilityservice/GestureDescription$TouchPoint;II)I

    move-result v12

    .line 405
    if-gez v12, :cond_1f

    .line 406
    move-object v1, p1

    goto :goto_5b

    .line 408
    :cond_1f
    iget v0, v8, Lcom/android/server/accessibility/MotionEventInjector;->mNumLastTouchPoints:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_25

    goto :goto_26

    .line 409
    :cond_25
    const/4 v1, 0x6

    .line 410
    :goto_26
    shl-int/lit8 v0, v12, 0x8

    or-int v5, v1, v0

    .line 411
    iget-wide v1, v8, Lcom/android/server/accessibility/MotionEventInjector;->mDownTime:J

    iget v7, v8, Lcom/android/server/accessibility/MotionEventInjector;->mNumLastTouchPoints:I

    move-object v0, p0

    move-wide/from16 v3, p4

    move-object v6, v9

    invoke-direct/range {v0 .. v7}, Lcom/android/server/accessibility/MotionEventInjector;->obtainMotionEvent(JJI[Landroid/accessibilityservice/GestureDescription$TouchPoint;I)Landroid/view/MotionEvent;

    move-result-object v0

    move-object v1, p1

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 414
    :goto_3a
    iget v0, v8, Lcom/android/server/accessibility/MotionEventInjector;->mNumLastTouchPoints:I

    add-int/lit8 v2, v0, -0x1

    if-ge v12, v2, :cond_4c

    .line 415
    aget-object v0, v9, v12

    iget-object v2, v8, Lcom/android/server/accessibility/MotionEventInjector;->mLastTouchPoints:[Landroid/accessibilityservice/GestureDescription$TouchPoint;

    add-int/lit8 v12, v12, 0x1

    aget-object v2, v2, v12

    invoke-virtual {v0, v2}, Landroid/accessibilityservice/GestureDescription$TouchPoint;->copyFrom(Landroid/accessibilityservice/GestureDescription$TouchPoint;)V

    goto :goto_3a

    .line 417
    :cond_4c
    add-int/lit8 v0, v0, -0x1

    iput v0, v8, Lcom/android/server/accessibility/MotionEventInjector;->mNumLastTouchPoints:I

    .line 418
    iget v0, v8, Lcom/android/server/accessibility/MotionEventInjector;->mNumLastTouchPoints:I

    if-nez v0, :cond_5b

    .line 419
    iget-object v0, v8, Lcom/android/server/accessibility/MotionEventInjector;->mStrokeIdToPointerId:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    goto :goto_5b

    .line 402
    :cond_5a
    move-object v1, p1

    .line 401
    :cond_5b
    :goto_5b
    add-int/lit8 v10, v10, 0x1

    goto :goto_7

    .line 423
    :cond_5e
    return-void
.end method

.method private cancelAnyGestureInProgress(I)V
    .registers 12

    .line 304
    invoke-virtual {p0}, Lcom/android/server/accessibility/MotionEventInjector;->getNext()Lcom/android/server/accessibility/EventStreamTransformation;

    move-result-object v0

    if-eqz v0, :cond_37

    iget-object v0, p0, Lcom/android/server/accessibility/MotionEventInjector;->mOpenGesturesInProgress:Landroid/util/SparseArray;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, p1, v2}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_37

    .line 305
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    .line 306
    const/4 v7, 0x3

    .line 307
    invoke-direct {p0}, Lcom/android/server/accessibility/MotionEventInjector;->getLastTouchPoints()[Landroid/accessibilityservice/GestureDescription$TouchPoint;

    move-result-object v8

    const/4 v9, 0x1

    move-object v2, p0

    move-wide v3, v5

    invoke-direct/range {v2 .. v9}, Lcom/android/server/accessibility/MotionEventInjector;->obtainMotionEvent(JJI[Landroid/accessibilityservice/GestureDescription$TouchPoint;I)Landroid/view/MotionEvent;

    move-result-object v0

    .line 308
    const/high16 v2, 0x40000000  # 2.0f

    invoke-direct {p0, v0, v0, v2}, Lcom/android/server/accessibility/MotionEventInjector;->sendMotionEventToNext(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    .line 310
    iget-object v0, p0, Lcom/android/server/accessibility/MotionEventInjector;->mOpenGesturesInProgress:Landroid/util/SparseArray;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 312
    :cond_37
    return-void
.end method

.method private cancelAnyPendingInjectedEvents()V
    .registers 5

    .line 315
    iget-object v0, p0, Lcom/android/server/accessibility/MotionEventInjector;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    const/4 v2, 0x0

    const/16 v3, 0x1002

    if-eqz v0, :cond_30

    .line 316
    iget-object v0, p0, Lcom/android/server/accessibility/MotionEventInjector;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 317
    invoke-direct {p0, v3}, Lcom/android/server/accessibility/MotionEventInjector;->cancelAnyGestureInProgress(I)V

    .line 318
    iget-object v0, p0, Lcom/android/server/accessibility/MotionEventInjector;->mSequencesInProgress:Landroid/util/IntArray;

    invoke-virtual {v0}, Landroid/util/IntArray;->size()I

    move-result v0

    sub-int/2addr v0, v1

    :goto_1b
    if-ltz v0, :cond_37

    .line 319
    iget-object v1, p0, Lcom/android/server/accessibility/MotionEventInjector;->mServiceInterfaceForCurrentGesture:Landroid/accessibilityservice/IAccessibilityServiceClient;

    iget-object v3, p0, Lcom/android/server/accessibility/MotionEventInjector;->mSequencesInProgress:Landroid/util/IntArray;

    .line 320
    invoke-virtual {v3, v0}, Landroid/util/IntArray;->get(I)I

    move-result v3

    .line 319
    invoke-direct {p0, v1, v3, v2}, Lcom/android/server/accessibility/MotionEventInjector;->notifyService(Landroid/accessibilityservice/IAccessibilityServiceClient;IZ)V

    .line 321
    iget-object v1, p0, Lcom/android/server/accessibility/MotionEventInjector;->mSequencesInProgress:Landroid/util/IntArray;

    invoke-virtual {v1, v0}, Landroid/util/IntArray;->remove(I)V

    .line 318
    add-int/lit8 v0, v0, -0x1

    goto :goto_1b

    .line 323
    :cond_30
    iget v0, p0, Lcom/android/server/accessibility/MotionEventInjector;->mNumLastTouchPoints:I

    if-eqz v0, :cond_37

    .line 325
    invoke-direct {p0, v3}, Lcom/android/server/accessibility/MotionEventInjector;->cancelAnyGestureInProgress(I)V

    .line 327
    :cond_37
    iput v2, p0, Lcom/android/server/accessibility/MotionEventInjector;->mNumLastTouchPoints:I

    .line 328
    iget-object v0, p0, Lcom/android/server/accessibility/MotionEventInjector;->mStrokeIdToPointerId:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    .line 329
    return-void
.end method

.method private static findPointByStrokeId([Landroid/accessibilityservice/GestureDescription$TouchPoint;II)I
    .registers 5

    .line 481
    const/4 v0, 0x0

    :goto_1
    if-ge v0, p1, :cond_d

    .line 482
    aget-object v1, p0, v0

    iget v1, v1, Landroid/accessibilityservice/GestureDescription$TouchPoint;->mStrokeId:I

    if-ne v1, p2, :cond_a

    .line 483
    return v0

    .line 481
    :cond_a
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 486
    :cond_d
    const/4 p0, -0x1

    return p0
.end method

.method private getLastTouchPoints()[Landroid/accessibilityservice/GestureDescription$TouchPoint;
    .registers 5

    .line 366
    iget-object v0, p0, Lcom/android/server/accessibility/MotionEventInjector;->mLastTouchPoints:[Landroid/accessibilityservice/GestureDescription$TouchPoint;

    if-nez v0, :cond_1b

    .line 367
    invoke-static {}, Landroid/accessibilityservice/GestureDescription;->getMaxStrokeCount()I

    move-result v0

    .line 368
    new-array v1, v0, [Landroid/accessibilityservice/GestureDescription$TouchPoint;

    iput-object v1, p0, Lcom/android/server/accessibility/MotionEventInjector;->mLastTouchPoints:[Landroid/accessibilityservice/GestureDescription$TouchPoint;

    .line 369
    const/4 v1, 0x0

    :goto_d
    if-ge v1, v0, :cond_1b

    .line 370
    iget-object v2, p0, Lcom/android/server/accessibility/MotionEventInjector;->mLastTouchPoints:[Landroid/accessibilityservice/GestureDescription$TouchPoint;

    new-instance v3, Landroid/accessibilityservice/GestureDescription$TouchPoint;

    invoke-direct {v3}, Landroid/accessibilityservice/GestureDescription$TouchPoint;-><init>()V

    aput-object v3, v2, v1

    .line 369
    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    .line 373
    :cond_1b
    iget-object v0, p0, Lcom/android/server/accessibility/MotionEventInjector;->mLastTouchPoints:[Landroid/accessibilityservice/GestureDescription$TouchPoint;

    return-object v0
.end method

.method private getMotionEventsFromGestureSteps(Ljava/util/List;J)Ljava/util/List;
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/accessibilityservice/GestureDescription$GestureStep;",
            ">;J)",
            "Ljava/util/List<",
            "Landroid/view/MotionEvent;",
            ">;"
        }
    .end annotation

    .line 342
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 344
    invoke-direct {p0}, Lcom/android/server/accessibility/MotionEventInjector;->getLastTouchPoints()[Landroid/accessibilityservice/GestureDescription$TouchPoint;

    move-result-object v7

    .line 346
    const/4 v8, 0x0

    move v9, v8

    :goto_b
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v9, v0, :cond_48

    .line 347
    invoke-interface {p1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Landroid/accessibilityservice/GestureDescription$GestureStep;

    .line 348
    iget v11, v10, Landroid/accessibilityservice/GestureDescription$GestureStep;->numTouchPoints:I

    .line 349
    array-length v0, v7

    if-le v11, v0, :cond_23

    .line 350
    iput v8, p0, Lcom/android/server/accessibility/MotionEventInjector;->mNumLastTouchPoints:I

    .line 351
    invoke-interface {v6}, Ljava/util/List;->clear()V

    .line 352
    return-object v6

    .line 355
    :cond_23
    iget-object v2, v10, Landroid/accessibilityservice/GestureDescription$GestureStep;->touchPoints:[Landroid/accessibilityservice/GestureDescription$TouchPoint;

    iget-wide v0, v10, Landroid/accessibilityservice/GestureDescription$GestureStep;->timeSinceGestureStart:J

    add-long v4, p2, v0

    move-object v0, p0

    move-object v1, v6

    move v3, v11

    invoke-direct/range {v0 .. v5}, Lcom/android/server/accessibility/MotionEventInjector;->appendMoveEventIfNeeded(Ljava/util/List;[Landroid/accessibilityservice/GestureDescription$TouchPoint;IJ)V

    .line 357
    iget-object v2, v10, Landroid/accessibilityservice/GestureDescription$GestureStep;->touchPoints:[Landroid/accessibilityservice/GestureDescription$TouchPoint;

    iget-wide v0, v10, Landroid/accessibilityservice/GestureDescription$GestureStep;->timeSinceGestureStart:J

    add-long v4, p2, v0

    move-object v0, p0

    move-object v1, v6

    invoke-direct/range {v0 .. v5}, Lcom/android/server/accessibility/MotionEventInjector;->appendUpEvents(Ljava/util/List;[Landroid/accessibilityservice/GestureDescription$TouchPoint;IJ)V

    .line 359
    iget-object v2, v10, Landroid/accessibilityservice/GestureDescription$GestureStep;->touchPoints:[Landroid/accessibilityservice/GestureDescription$TouchPoint;

    iget-wide v0, v10, Landroid/accessibilityservice/GestureDescription$GestureStep;->timeSinceGestureStart:J

    add-long v4, p2, v0

    move-object v0, p0

    move-object v1, v6

    invoke-direct/range {v0 .. v5}, Lcom/android/server/accessibility/MotionEventInjector;->appendDownEvents(Ljava/util/List;[Landroid/accessibilityservice/GestureDescription$TouchPoint;IJ)V

    .line 346
    add-int/lit8 v9, v9, 0x1

    goto :goto_b

    .line 362
    :cond_48
    return-object v6
.end method

.method private getUnusedPointerId()I
    .registers 3

    .line 489
    nop

    .line 490
    const/4 v0, 0x0

    .line 491
    :cond_2
    iget-object v1, p0, Lcom/android/server/accessibility/MotionEventInjector;->mStrokeIdToPointerId:Landroid/util/SparseIntArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseIntArray;->indexOfValue(I)I

    move-result v1

    if-ltz v1, :cond_11

    .line 492
    add-int/lit8 v0, v0, 0x1

    .line 493
    const/16 v1, 0xa

    if-lt v0, v1, :cond_2

    .line 494
    return v1

    .line 497
    :cond_11
    return v0
.end method

.method private injectEventsMainThread(Ljava/util/List;Landroid/accessibilityservice/IAccessibilityServiceClient;I)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/accessibilityservice/GestureDescription$GestureStep;",
            ">;",
            "Landroid/accessibilityservice/IAccessibilityServiceClient;",
            "I)V"
        }
    .end annotation

    .line 169
    iget-boolean v0, p0, Lcom/android/server/accessibility/MotionEventInjector;->mIsDestroyed:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_21

    .line 171
    :try_start_5
    invoke-interface {p2, p3, v1}, Landroid/accessibilityservice/IAccessibilityServiceClient;->onPerformGestureResult(IZ)V
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_8} :catch_9

    .line 175
    goto :goto_20

    .line 172
    :catch_9
    move-exception p1

    .line 173
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Error sending status with mIsDestroyed to "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "MotionEventInjector"

    invoke-static {p3, p2, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 176
    :goto_20
    return-void

    .line 179
    :cond_21
    invoke-virtual {p0}, Lcom/android/server/accessibility/MotionEventInjector;->getNext()Lcom/android/server/accessibility/EventStreamTransformation;

    move-result-object v0

    if-nez v0, :cond_2b

    .line 180
    invoke-direct {p0, p2, p3, v1}, Lcom/android/server/accessibility/MotionEventInjector;->notifyService(Landroid/accessibilityservice/IAccessibilityServiceClient;IZ)V

    .line 181
    return-void

    .line 184
    :cond_2b
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/MotionEventInjector;->newGestureTriesToContinueOldOne(Ljava/util/List;)Z

    move-result v0

    .line 186
    if-eqz v0, :cond_42

    .line 187
    iget-object v2, p0, Lcom/android/server/accessibility/MotionEventInjector;->mServiceInterfaceForCurrentGesture:Landroid/accessibilityservice/IAccessibilityServiceClient;

    if-ne p2, v2, :cond_3b

    .line 188
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/MotionEventInjector;->prepareToContinueOldGesture(Ljava/util/List;)Z

    move-result v2

    if-nez v2, :cond_42

    .line 189
    :cond_3b
    invoke-direct {p0}, Lcom/android/server/accessibility/MotionEventInjector;->cancelAnyPendingInjectedEvents()V

    .line 190
    invoke-direct {p0, p2, p3, v1}, Lcom/android/server/accessibility/MotionEventInjector;->notifyService(Landroid/accessibilityservice/IAccessibilityServiceClient;IZ)V

    .line 191
    return-void

    .line 194
    :cond_42
    if-nez v0, :cond_4c

    .line 195
    invoke-direct {p0}, Lcom/android/server/accessibility/MotionEventInjector;->cancelAnyPendingInjectedEvents()V

    .line 197
    const/16 v0, 0x1002

    invoke-direct {p0, v0}, Lcom/android/server/accessibility/MotionEventInjector;->cancelAnyGestureInProgress(I)V

    .line 199
    :cond_4c
    iput-object p2, p0, Lcom/android/server/accessibility/MotionEventInjector;->mServiceInterfaceForCurrentGesture:Landroid/accessibilityservice/IAccessibilityServiceClient;

    .line 201
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 202
    nop

    .line 203
    iget-object v0, p0, Lcom/android/server/accessibility/MotionEventInjector;->mSequencesInProgress:Landroid/util/IntArray;

    invoke-virtual {v0}, Landroid/util/IntArray;->size()I

    move-result v0

    if-nez v0, :cond_5d

    move-wide v4, v2

    goto :goto_5f

    :cond_5d
    iget-wide v4, p0, Lcom/android/server/accessibility/MotionEventInjector;->mLastScheduledEventTime:J

    .line 202
    :goto_5f
    invoke-direct {p0, p1, v4, v5}, Lcom/android/server/accessibility/MotionEventInjector;->getMotionEventsFromGestureSteps(Ljava/util/List;J)Ljava/util/List;

    move-result-object p1

    .line 204
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_6d

    .line 205
    invoke-direct {p0, p2, p3, v1}, Lcom/android/server/accessibility/MotionEventInjector;->notifyService(Landroid/accessibilityservice/IAccessibilityServiceClient;IZ)V

    .line 206
    return-void

    .line 208
    :cond_6d
    iget-object p2, p0, Lcom/android/server/accessibility/MotionEventInjector;->mSequencesInProgress:Landroid/util/IntArray;

    invoke-virtual {p2, p3}, Landroid/util/IntArray;->add(I)V

    .line 210
    move p2, v1

    :goto_73
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p3

    if-ge p2, p3, :cond_a9

    .line 211
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/view/MotionEvent;

    .line 212
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v4, 0x1

    sub-int/2addr v0, v4

    if-ne p2, v0, :cond_89

    move v0, v4

    goto :goto_8a

    :cond_89
    move v0, v1

    .line 213
    :goto_8a
    iget-object v5, p0, Lcom/android/server/accessibility/MotionEventInjector;->mHandler:Landroid/os/Handler;

    invoke-virtual {v5, v4, v0, v1, p3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 215
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/server/accessibility/MotionEventInjector;->mLastScheduledEventTime:J

    .line 216
    iget-object v4, p0, Lcom/android/server/accessibility/MotionEventInjector;->mHandler:Landroid/os/Handler;

    const-wide/16 v5, 0x0

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v7

    sub-long/2addr v7, v2

    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v5

    invoke-virtual {v4, v0, v5, v6}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 210
    add-int/lit8 p2, p2, 0x1

    goto :goto_73

    .line 218
    :cond_a9
    return-void
.end method

.method private newGestureTriesToContinueOldOne(Ljava/util/List;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/accessibilityservice/GestureDescription$GestureStep;",
            ">;)Z"
        }
    .end annotation

    .line 221
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    .line 222
    return v1

    .line 224
    :cond_8
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/accessibilityservice/GestureDescription$GestureStep;

    .line 225
    move v0, v1

    :goto_f
    iget v2, p1, Landroid/accessibilityservice/GestureDescription$GestureStep;->numTouchPoints:I

    if-ge v0, v2, :cond_20

    .line 226
    iget-object v2, p1, Landroid/accessibilityservice/GestureDescription$GestureStep;->touchPoints:[Landroid/accessibilityservice/GestureDescription$TouchPoint;

    aget-object v2, v2, v0

    iget-boolean v2, v2, Landroid/accessibilityservice/GestureDescription$TouchPoint;->mIsStartOfPath:Z

    if-nez v2, :cond_1d

    .line 227
    const/4 p1, 0x1

    return p1

    .line 225
    :cond_1d
    add-int/lit8 v0, v0, 0x1

    goto :goto_f

    .line 230
    :cond_20
    return v1
.end method

.method private notifyService(Landroid/accessibilityservice/IAccessibilityServiceClient;IZ)V
    .registers 4

    .line 333
    :try_start_0
    invoke-interface {p1, p2, p3}, Landroid/accessibilityservice/IAccessibilityServiceClient;->onPerformGestureResult(IZ)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_3} :catch_4

    .line 337
    goto :goto_1d

    .line 334
    :catch_4
    move-exception p1

    .line 335
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Error sending motion event injection status to "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/android/server/accessibility/MotionEventInjector;->mServiceInterfaceForCurrentGesture:Landroid/accessibilityservice/IAccessibilityServiceClient;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "MotionEventInjector"

    invoke-static {p3, p2, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 338
    :goto_1d
    return-void
.end method

.method private obtainMotionEvent(JJI[Landroid/accessibilityservice/GestureDescription$TouchPoint;I)Landroid/view/MotionEvent;
    .registers 24

    .line 447
    move-object/from16 v0, p0

    move/from16 v5, p7

    sget-object v1, Lcom/android/server/accessibility/MotionEventInjector;->sPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    const/4 v2, 0x0

    if-eqz v1, :cond_c

    array-length v1, v1

    if-ge v1, v5, :cond_1f

    .line 448
    :cond_c
    new-array v1, v5, [Landroid/view/MotionEvent$PointerCoords;

    sput-object v1, Lcom/android/server/accessibility/MotionEventInjector;->sPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    .line 449
    move v1, v2

    :goto_11
    if-ge v1, v5, :cond_1f

    .line 450
    sget-object v3, Lcom/android/server/accessibility/MotionEventInjector;->sPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    new-instance v4, Landroid/view/MotionEvent$PointerCoords;

    invoke-direct {v4}, Landroid/view/MotionEvent$PointerCoords;-><init>()V

    aput-object v4, v3, v1

    .line 449
    add-int/lit8 v1, v1, 0x1

    goto :goto_11

    .line 453
    :cond_1f
    sget-object v1, Lcom/android/server/accessibility/MotionEventInjector;->sPointerProps:[Landroid/view/MotionEvent$PointerProperties;

    if-eqz v1, :cond_26

    array-length v1, v1

    if-ge v1, v5, :cond_39

    .line 454
    :cond_26
    new-array v1, v5, [Landroid/view/MotionEvent$PointerProperties;

    sput-object v1, Lcom/android/server/accessibility/MotionEventInjector;->sPointerProps:[Landroid/view/MotionEvent$PointerProperties;

    .line 455
    move v1, v2

    :goto_2b
    if-ge v1, v5, :cond_39

    .line 456
    sget-object v3, Lcom/android/server/accessibility/MotionEventInjector;->sPointerProps:[Landroid/view/MotionEvent$PointerProperties;

    new-instance v4, Landroid/view/MotionEvent$PointerProperties;

    invoke-direct {v4}, Landroid/view/MotionEvent$PointerProperties;-><init>()V

    aput-object v4, v3, v1

    .line 455
    add-int/lit8 v1, v1, 0x1

    goto :goto_2b

    .line 459
    :cond_39
    move v1, v2

    :goto_3a
    if-ge v1, v5, :cond_88

    .line 460
    iget-object v3, v0, Lcom/android/server/accessibility/MotionEventInjector;->mStrokeIdToPointerId:Landroid/util/SparseIntArray;

    aget-object v4, p6, v1

    iget v4, v4, Landroid/accessibilityservice/GestureDescription$TouchPoint;->mStrokeId:I

    const/4 v6, -0x1

    invoke-virtual {v3, v4, v6}, Landroid/util/SparseIntArray;->get(II)I

    move-result v3

    .line 461
    if-ne v3, v6, :cond_56

    .line 462
    invoke-direct/range {p0 .. p0}, Lcom/android/server/accessibility/MotionEventInjector;->getUnusedPointerId()I

    move-result v3

    .line 463
    iget-object v4, v0, Lcom/android/server/accessibility/MotionEventInjector;->mStrokeIdToPointerId:Landroid/util/SparseIntArray;

    aget-object v6, p6, v1

    iget v6, v6, Landroid/accessibilityservice/GestureDescription$TouchPoint;->mStrokeId:I

    invoke-virtual {v4, v6, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 465
    :cond_56
    sget-object v4, Lcom/android/server/accessibility/MotionEventInjector;->sPointerProps:[Landroid/view/MotionEvent$PointerProperties;

    aget-object v6, v4, v1

    iput v3, v6, Landroid/view/MotionEvent$PointerProperties;->id:I

    .line 466
    aget-object v3, v4, v1

    iput v2, v3, Landroid/view/MotionEvent$PointerProperties;->toolType:I

    .line 467
    sget-object v3, Lcom/android/server/accessibility/MotionEventInjector;->sPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v3, v3, v1

    invoke-virtual {v3}, Landroid/view/MotionEvent$PointerCoords;->clear()V

    .line 468
    sget-object v3, Lcom/android/server/accessibility/MotionEventInjector;->sPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v4, v3, v1

    const/high16 v6, 0x3f800000  # 1.0f

    iput v6, v4, Landroid/view/MotionEvent$PointerCoords;->pressure:F

    .line 469
    aget-object v4, v3, v1

    iput v6, v4, Landroid/view/MotionEvent$PointerCoords;->size:F

    .line 470
    aget-object v3, v3, v1

    aget-object v4, p6, v1

    iget v4, v4, Landroid/accessibilityservice/GestureDescription$TouchPoint;->mX:F

    iput v4, v3, Landroid/view/MotionEvent$PointerCoords;->x:F

    .line 471
    sget-object v3, Lcom/android/server/accessibility/MotionEventInjector;->sPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v3, v3, v1

    aget-object v4, p6, v1

    iget v4, v4, Landroid/accessibilityservice/GestureDescription$TouchPoint;->mY:F

    iput v4, v3, Landroid/view/MotionEvent$PointerCoords;->y:F

    .line 459
    add-int/lit8 v1, v1, 0x1

    goto :goto_3a

    .line 473
    :cond_88
    sget-object v6, Lcom/android/server/accessibility/MotionEventInjector;->sPointerProps:[Landroid/view/MotionEvent$PointerProperties;

    sget-object v7, Lcom/android/server/accessibility/MotionEventInjector;->sPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/high16 v10, 0x3f800000  # 1.0f

    const/high16 v11, 0x3f800000  # 1.0f

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/16 v14, 0x1002

    const/4 v15, 0x0

    move-wide/from16 v0, p1

    move-wide/from16 v2, p3

    move/from16 v4, p5

    move/from16 v5, p7

    invoke-static/range {v0 .. v15}, Landroid/view/MotionEvent;->obtain(JJII[Landroid/view/MotionEvent$PointerProperties;[Landroid/view/MotionEvent$PointerCoords;IIFFIIII)Landroid/view/MotionEvent;

    move-result-object v0

    return-object v0
.end method

.method private prepareToContinueOldGesture(Ljava/util/List;)Z
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/accessibilityservice/GestureDescription$GestureStep;",
            ">;)Z"
        }
    .end annotation

    .line 242
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_e5

    iget-object v0, p0, Lcom/android/server/accessibility/MotionEventInjector;->mLastTouchPoints:[Landroid/accessibilityservice/GestureDescription$TouchPoint;

    if-eqz v0, :cond_e5

    iget v0, p0, Lcom/android/server/accessibility/MotionEventInjector;->mNumLastTouchPoints:I

    if-nez v0, :cond_11

    goto/16 :goto_e5

    .line 245
    :cond_11
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/accessibilityservice/GestureDescription$GestureStep;

    .line 247
    nop

    .line 248
    move v0, v1

    move v2, v0

    :goto_1a
    iget v3, p1, Landroid/accessibilityservice/GestureDescription$GestureStep;->numTouchPoints:I

    if-ge v0, v3, :cond_cf

    .line 249
    iget-object v3, p1, Landroid/accessibilityservice/GestureDescription$GestureStep;->touchPoints:[Landroid/accessibilityservice/GestureDescription$TouchPoint;

    aget-object v3, v3, v0

    .line 250
    iget-boolean v4, v3, Landroid/accessibilityservice/GestureDescription$TouchPoint;->mIsStartOfPath:Z

    if-nez v4, :cond_c9

    .line 251
    iget-object v4, p0, Lcom/android/server/accessibility/MotionEventInjector;->mStrokeIdToPointerId:Landroid/util/SparseIntArray;

    iget v5, v3, Landroid/accessibilityservice/GestureDescription$TouchPoint;->mContinuedStrokeId:I

    .line 252
    const/4 v6, -0x1

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseIntArray;->get(II)I

    move-result v4

    .line 253
    const-string v5, "MotionEventInjector"

    if-ne v4, v6, :cond_48

    .line 254
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Can\'t continue gesture due to unknown continued stroke id in "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v5, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    return v1

    .line 258
    :cond_48
    iget-object v6, p0, Lcom/android/server/accessibility/MotionEventInjector;->mStrokeIdToPointerId:Landroid/util/SparseIntArray;

    iget v7, v3, Landroid/accessibilityservice/GestureDescription$TouchPoint;->mStrokeId:I

    invoke-virtual {v6, v7, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 259
    iget-object v4, p0, Lcom/android/server/accessibility/MotionEventInjector;->mLastTouchPoints:[Landroid/accessibilityservice/GestureDescription$TouchPoint;

    iget v6, p0, Lcom/android/server/accessibility/MotionEventInjector;->mNumLastTouchPoints:I

    iget v7, v3, Landroid/accessibilityservice/GestureDescription$TouchPoint;->mContinuedStrokeId:I

    invoke-static {v4, v6, v7}, Lcom/android/server/accessibility/MotionEventInjector;->findPointByStrokeId([Landroid/accessibilityservice/GestureDescription$TouchPoint;II)I

    move-result v4

    .line 261
    if-gez v4, :cond_7e

    .line 262
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Can\'t continue gesture due continued gesture id of "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " not matching any previous strokes in "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/server/accessibility/MotionEventInjector;->mLastTouchPoints:[Landroid/accessibilityservice/GestureDescription$TouchPoint;

    .line 264
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 262
    invoke-static {v5, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    return v1

    .line 267
    :cond_7e
    iget-object v6, p0, Lcom/android/server/accessibility/MotionEventInjector;->mLastTouchPoints:[Landroid/accessibilityservice/GestureDescription$TouchPoint;

    aget-object v6, v6, v4

    iget-boolean v6, v6, Landroid/accessibilityservice/GestureDescription$TouchPoint;->mIsEndOfPath:Z

    if-nez v6, :cond_a8

    iget-object v6, p0, Lcom/android/server/accessibility/MotionEventInjector;->mLastTouchPoints:[Landroid/accessibilityservice/GestureDescription$TouchPoint;

    aget-object v6, v6, v4

    iget v6, v6, Landroid/accessibilityservice/GestureDescription$TouchPoint;->mX:F

    iget v7, v3, Landroid/accessibilityservice/GestureDescription$TouchPoint;->mX:F

    cmpl-float v6, v6, v7

    if-nez v6, :cond_a8

    iget-object v6, p0, Lcom/android/server/accessibility/MotionEventInjector;->mLastTouchPoints:[Landroid/accessibilityservice/GestureDescription$TouchPoint;

    aget-object v6, v6, v4

    iget v6, v6, Landroid/accessibilityservice/GestureDescription$TouchPoint;->mY:F

    iget v7, v3, Landroid/accessibilityservice/GestureDescription$TouchPoint;->mY:F

    cmpl-float v6, v6, v7

    if-eqz v6, :cond_9f

    goto :goto_a8

    .line 276
    :cond_9f
    iget-object v5, p0, Lcom/android/server/accessibility/MotionEventInjector;->mLastTouchPoints:[Landroid/accessibilityservice/GestureDescription$TouchPoint;

    aget-object v4, v5, v4

    iget v3, v3, Landroid/accessibilityservice/GestureDescription$TouchPoint;->mStrokeId:I

    iput v3, v4, Landroid/accessibilityservice/GestureDescription$TouchPoint;->mStrokeId:I

    goto :goto_c9

    .line 270
    :cond_a8
    :goto_a8
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Can\'t continue gesture due to points mismatch between "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/server/accessibility/MotionEventInjector;->mLastTouchPoints:[Landroid/accessibilityservice/GestureDescription$TouchPoint;

    aget-object v0, v0, v4

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " and "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v5, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    return v1

    .line 278
    :cond_c9
    :goto_c9
    add-int/lit8 v2, v2, 0x1

    .line 248
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1a

    .line 281
    :cond_cf
    move p1, v1

    :goto_d0
    iget v0, p0, Lcom/android/server/accessibility/MotionEventInjector;->mNumLastTouchPoints:I

    if-ge p1, v0, :cond_e1

    .line 282
    iget-object v0, p0, Lcom/android/server/accessibility/MotionEventInjector;->mLastTouchPoints:[Landroid/accessibilityservice/GestureDescription$TouchPoint;

    aget-object v0, v0, p1

    iget-boolean v0, v0, Landroid/accessibilityservice/GestureDescription$TouchPoint;->mIsEndOfPath:Z

    if-nez v0, :cond_de

    .line 283
    add-int/lit8 v2, v2, -0x1

    .line 281
    :cond_de
    add-int/lit8 p1, p1, 0x1

    goto :goto_d0

    .line 286
    :cond_e1
    if-nez v2, :cond_e4

    const/4 v1, 0x1

    :cond_e4
    return v1

    .line 243
    :cond_e5
    :goto_e5
    return v1
.end method

.method private sendMotionEventToNext(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
    .registers 6

    .line 291
    invoke-virtual {p0}, Lcom/android/server/accessibility/MotionEventInjector;->getNext()Lcom/android/server/accessibility/EventStreamTransformation;

    move-result-object v0

    if-eqz v0, :cond_38

    .line 292
    invoke-super {p0, p1, p2, p3}, Lcom/android/server/accessibility/BaseEventStreamTransformation;->onMotionEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    .line 293
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p2

    const/4 p3, 0x1

    if-nez p2, :cond_1d

    .line 294
    iget-object p2, p0, Lcom/android/server/accessibility/MotionEventInjector;->mOpenGesturesInProgress:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v0

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 296
    :cond_1d
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p2

    if-eq p2, p3, :cond_2a

    .line 297
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p2

    const/4 p3, 0x3

    if-ne p2, p3, :cond_38

    .line 298
    :cond_2a
    iget-object p2, p0, Lcom/android/server/accessibility/MotionEventInjector;->mOpenGesturesInProgress:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    move-result p1

    const/4 p3, 0x0

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p3

    invoke-virtual {p2, p1, p3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 301
    :cond_38
    return-void
.end method


# virtual methods
.method public clearEvents(I)V
    .registers 4

    .line 133
    iget-object v0, p0, Lcom/android/server/accessibility/MotionEventInjector;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_13

    .line 134
    iget-object v0, p0, Lcom/android/server/accessibility/MotionEventInjector;->mOpenGesturesInProgress:Landroid/util/SparseArray;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 136
    :cond_13
    return-void
.end method

.method public bridge synthetic getNext()Lcom/android/server/accessibility/EventStreamTransformation;
    .registers 2

    .line 48
    invoke-super {p0}, Lcom/android/server/accessibility/BaseEventStreamTransformation;->getNext()Lcom/android/server/accessibility/EventStreamTransformation;

    move-result-object v0

    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .registers 6

    .line 146
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-ne v0, v2, :cond_1b

    .line 147
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/internal/os/SomeArgs;

    .line 148
    iget-object v0, p1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    iget-object v2, p1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v2, Landroid/accessibilityservice/IAccessibilityServiceClient;

    iget v3, p1, Lcom/android/internal/os/SomeArgs;->argi1:I

    invoke-direct {p0, v0, v2, v3}, Lcom/android/server/accessibility/MotionEventInjector;->injectEventsMainThread(Ljava/util/List;Landroid/accessibilityservice/IAccessibilityServiceClient;I)V

    .line 150
    invoke-virtual {p1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 151
    return v1

    .line 153
    :cond_1b
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x0

    if-eq v0, v1, :cond_39

    .line 154
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown message: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "MotionEventInjector"

    invoke-static {v0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    return v2

    .line 157
    :cond_39
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/view/MotionEvent;

    .line 158
    const/high16 v3, 0x40000000  # 2.0f

    invoke-direct {p0, v0, v0, v3}, Lcom/android/server/accessibility/MotionEventInjector;->sendMotionEventToNext(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    .line 159
    iget p1, p1, Landroid/os/Message;->arg1:I

    if-eqz p1, :cond_48

    move p1, v1

    goto :goto_49

    :cond_48
    move p1, v2

    .line 160
    :goto_49
    if-eqz p1, :cond_5b

    .line 161
    iget-object p1, p0, Lcom/android/server/accessibility/MotionEventInjector;->mServiceInterfaceForCurrentGesture:Landroid/accessibilityservice/IAccessibilityServiceClient;

    iget-object v0, p0, Lcom/android/server/accessibility/MotionEventInjector;->mSequencesInProgress:Landroid/util/IntArray;

    invoke-virtual {v0, v2}, Landroid/util/IntArray;->get(I)I

    move-result v0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/accessibility/MotionEventInjector;->notifyService(Landroid/accessibilityservice/IAccessibilityServiceClient;IZ)V

    .line 162
    iget-object p1, p0, Lcom/android/server/accessibility/MotionEventInjector;->mSequencesInProgress:Landroid/util/IntArray;

    invoke-virtual {p1, v2}, Landroid/util/IntArray;->remove(I)V

    .line 164
    :cond_5b
    return v1
.end method

.method public injectEvents(Ljava/util/List;Landroid/accessibilityservice/IAccessibilityServiceClient;I)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/accessibilityservice/GestureDescription$GestureStep;",
            ">;",
            "Landroid/accessibilityservice/IAccessibilityServiceClient;",
            "I)V"
        }
    .end annotation

    .line 105
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .line 106
    iput-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 107
    iput-object p2, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 108
    iput p3, v0, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 109
    iget-object p1, p0, Lcom/android/server/accessibility/MotionEventInjector;->mHandler:Landroid/os/Handler;

    const/4 p2, 0x2

    invoke-virtual {p1, p2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 110
    return-void
.end method

.method public onDestroy()V
    .registers 2

    .line 140
    invoke-direct {p0}, Lcom/android/server/accessibility/MotionEventInjector;->cancelAnyPendingInjectedEvents()V

    .line 141
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/accessibility/MotionEventInjector;->mIsDestroyed:Z

    .line 142
    return-void
.end method

.method public onMotionEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
    .registers 7

    .line 118
    const/16 v0, 0x2002

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->isFromSource(I)Z

    move-result v0

    if-eqz v0, :cond_25

    .line 119
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x7

    if-ne v0, v1, :cond_25

    iget-object v0, p0, Lcom/android/server/accessibility/MotionEventInjector;->mOpenGesturesInProgress:Landroid/util/SparseArray;

    const/16 v1, 0x1002

    const/4 v2, 0x0

    .line 120
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_25

    .line 121
    return-void

    .line 123
    :cond_25
    invoke-direct {p0}, Lcom/android/server/accessibility/MotionEventInjector;->cancelAnyPendingInjectedEvents()V

    .line 124
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/accessibility/MotionEventInjector;->sendMotionEventToNext(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    .line 125
    return-void
.end method

.method public bridge synthetic setNext(Lcom/android/server/accessibility/EventStreamTransformation;)V
    .registers 2

    .line 48
    invoke-super {p0, p1}, Lcom/android/server/accessibility/BaseEventStreamTransformation;->setNext(Lcom/android/server/accessibility/EventStreamTransformation;)V

    return-void
.end method
