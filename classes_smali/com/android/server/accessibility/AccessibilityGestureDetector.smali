.class Lcom/android/server/accessibility/AccessibilityGestureDetector;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "AccessibilityGestureDetector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/accessibility/AccessibilityGestureDetector$Listener;
    }
.end annotation


# static fields
.field private static final ANGLE_THRESHOLD:F = 0.0f

.field private static final CANCEL_ON_PAUSE_THRESHOLD_NOT_STARTED_MS:J = 0x96L

.field private static final CANCEL_ON_PAUSE_THRESHOLD_STARTED_MS:J = 0x12cL

.field private static final DEBUG:Z = false

.field private static final DIRECTIONS_TO_GESTURE_ID:[[I

.field private static final DOWN:I = 0x3

.field private static final GESTURE_CONFIRM_MM:I = 0xa

.field private static final LEFT:I = 0x0

.field private static final LOG_TAG:Ljava/lang/String; = "AccessibilityGestureDetector"

.field private static final MIN_INCHES_BETWEEN_SAMPLES:F = 0.1f

.field private static final MIN_PREDICTION_SCORE:F = 2.0f

.field private static final RIGHT:I = 0x1

.field private static final TOUCH_TOLERANCE:I = 0x3

.field private static final UP:I = 0x2


# instance fields
.field private mBaseTime:J

.field private mBaseX:F

.field private mBaseY:F

.field private final mContext:Landroid/content/Context;

.field private mDoubleTapDetected:Z

.field private mFirstTapDetected:Z

.field private final mGestureDetectionThreshold:F

.field private final mGestureDetector:Landroid/view/GestureDetector;

.field private mGestureStarted:Z

.field private final mListener:Lcom/android/server/accessibility/AccessibilityGestureDetector$Listener;

.field private final mMinPixelsBetweenSamplesX:F

.field private final mMinPixelsBetweenSamplesY:F

.field private mPolicyFlags:I

.field private mPreviousGestureX:F

.field private mPreviousGestureY:F

.field private mRecognizingGesture:Z

.field private mSecondFingerDoubleTap:Z

.field private mSecondPointerDownTime:J

.field private final mStrokeBuffer:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/gesture/GesturePoint;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .line 64
    const/4 v0, 0x4

    new-array v1, v0, [[I

    new-array v2, v0, [I

    fill-array-data v2, :array_26

    const/4 v3, 0x0

    aput-object v2, v1, v3

    new-array v2, v0, [I

    fill-array-data v2, :array_32

    const/4 v3, 0x1

    aput-object v2, v1, v3

    new-array v2, v0, [I

    fill-array-data v2, :array_3e

    const/4 v3, 0x2

    aput-object v2, v1, v3

    new-array v0, v0, [I

    fill-array-data v0, :array_4a

    const/4 v2, 0x3

    aput-object v0, v1, v2

    sput-object v1, Lcom/android/server/accessibility/AccessibilityGestureDetector;->DIRECTIONS_TO_GESTURE_ID:[[I

    return-void

    :array_26
    .array-data 4
        0x3
        0x5
        0x9
        0xa
    .end array-data

    :array_32
    .array-data 4
        0x6
        0x4
        0xb
        0xc
    .end array-data

    :array_3e
    .array-data 4
        0xd
        0xe
        0x1
        0x7
    .end array-data

    :array_4a
    .array-data 4
        0xf
        0x10
        0x8
        0x2
    .end array-data
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/server/accessibility/AccessibilityGestureDetector$Listener;)V
    .registers 4

    .line 225
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/accessibility/AccessibilityGestureDetector;-><init>(Landroid/content/Context;Lcom/android/server/accessibility/AccessibilityGestureDetector$Listener;Landroid/view/GestureDetector;)V

    .line 226
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/server/accessibility/AccessibilityGestureDetector$Listener;Landroid/view/GestureDetector;)V
    .registers 6

    .line 236
    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    .line 192
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/accessibility/AccessibilityGestureDetector;->mStrokeBuffer:Ljava/util/ArrayList;

    .line 237
    iput-object p2, p0, Lcom/android/server/accessibility/AccessibilityGestureDetector;->mListener:Lcom/android/server/accessibility/AccessibilityGestureDetector$Listener;

    .line 238
    iput-object p1, p0, Lcom/android/server/accessibility/AccessibilityGestureDetector;->mContext:Landroid/content/Context;

    .line 241
    if-nez p3, :cond_1a

    .line 242
    new-instance p2, Landroid/view/GestureDetector;

    invoke-direct {p2, p1, p0}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object p2, p0, Lcom/android/server/accessibility/AccessibilityGestureDetector;->mGestureDetector:Landroid/view/GestureDetector;

    goto :goto_1c

    .line 244
    :cond_1a
    iput-object p3, p0, Lcom/android/server/accessibility/AccessibilityGestureDetector;->mGestureDetector:Landroid/view/GestureDetector;

    .line 246
    :goto_1c
    iget-object p2, p0, Lcom/android/server/accessibility/AccessibilityGestureDetector;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {p2, p0}, Landroid/view/GestureDetector;->setOnDoubleTapListener(Landroid/view/GestureDetector$OnDoubleTapListener;)V

    .line 247
    const/4 p2, 0x5

    const/high16 p3, 0x3f800000  # 1.0f

    .line 248
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 247
    invoke-static {p2, p3, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p2

    const/high16 p3, 0x41200000  # 10.0f

    mul-float/2addr p2, p3

    iput p2, p0, Lcom/android/server/accessibility/AccessibilityGestureDetector;->mGestureDetectionThreshold:F

    .line 251
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p2

    iget p2, p2, Landroid/util/DisplayMetrics;->xdpi:F

    .line 252
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->ydpi:F

    .line 253
    const p3, 0x3dcccccd  # 0.1f

    mul-float/2addr p2, p3

    iput p2, p0, Lcom/android/server/accessibility/AccessibilityGestureDetector;->mMinPixelsBetweenSamplesX:F

    .line 254
    mul-float/2addr p1, p3

    iput p1, p0, Lcom/android/server/accessibility/AccessibilityGestureDetector;->mMinPixelsBetweenSamplesY:F

    .line 255
    return-void
.end method

.method private cancelGesture()V
    .registers 2

    .line 463
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/accessibility/AccessibilityGestureDetector;->mRecognizingGesture:Z

    .line 464
    iput-boolean v0, p0, Lcom/android/server/accessibility/AccessibilityGestureDetector;->mGestureStarted:Z

    .line 465
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityGestureDetector;->mStrokeBuffer:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 466
    return-void
.end method

.method private finishDoubleTap(Landroid/view/MotionEvent;I)Z
    .registers 4

    .line 457
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityGestureDetector;->clear()V

    .line 459
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityGestureDetector;->mListener:Lcom/android/server/accessibility/AccessibilityGestureDetector$Listener;

    invoke-interface {v0, p1, p2}, Lcom/android/server/accessibility/AccessibilityGestureDetector$Listener;->onDoubleTap(Landroid/view/MotionEvent;I)Z

    move-result p1

    return p1
.end method

.method private mapSecondPointerToFirstPointer(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;
    .registers 19

    .line 618
    move-object/from16 v0, p1

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_5e

    .line 619
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    const/4 v3, 0x6

    const/4 v4, 0x5

    if-eq v1, v4, :cond_1e

    .line 620
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    if-eq v1, v3, :cond_1e

    .line 621
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    if-eq v1, v2, :cond_1e

    goto :goto_5e

    .line 625
    :cond_1e
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    .line 627
    const/4 v2, 0x1

    if-ne v1, v4, :cond_28

    .line 628
    const/4 v1, 0x0

    move v7, v1

    goto :goto_2d

    .line 629
    :cond_28
    if-ne v1, v3, :cond_2c

    .line 630
    move v7, v2

    goto :goto_2d

    .line 629
    :cond_2c
    move v7, v1

    .line 634
    :goto_2d
    move-object/from16 v1, p0

    iget-wide v3, v1, Lcom/android/server/accessibility/AccessibilityGestureDetector;->mSecondPointerDownTime:J

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v5

    .line 635
    invoke-virtual {v0, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v8

    invoke-virtual {v0, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v9

    invoke-virtual {v0, v2}, Landroid/view/MotionEvent;->getPressure(I)F

    move-result v10

    invoke-virtual {v0, v2}, Landroid/view/MotionEvent;->getSize(I)F

    move-result v11

    .line 636
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v12

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getXPrecision()F

    move-result v13

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getYPrecision()F

    move-result v14

    .line 637
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getDeviceId()I

    move-result v15

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEdgeFlags()I

    move-result v16

    .line 634
    invoke-static/range {v3 .. v16}, Landroid/view/MotionEvent;->obtain(JJIFFFFIFFII)Landroid/view/MotionEvent;

    move-result-object v0

    return-object v0

    .line 622
    :cond_5e
    :goto_5e
    const/4 v0, 0x0

    return-object v0
.end method

.method private maybeSendLongPress(Landroid/view/MotionEvent;I)V
    .registers 4

    .line 447
    iget-boolean v0, p0, Lcom/android/server/accessibility/AccessibilityGestureDetector;->mDoubleTapDetected:Z

    if-nez v0, :cond_5

    .line 448
    return-void

    .line 451
    :cond_5
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityGestureDetector;->clear()V

    .line 453
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityGestureDetector;->mListener:Lcom/android/server/accessibility/AccessibilityGestureDetector$Listener;

    invoke-interface {v0, p1, p2}, Lcom/android/server/accessibility/AccessibilityGestureDetector$Listener;->onDoubleTapAndHold(Landroid/view/MotionEvent;I)V

    .line 454
    return-void
.end method

.method private recognizeGesture(Landroid/view/MotionEvent;I)Z
    .registers 22

    .line 478
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    iget-object v3, v0, Lcom/android/server/accessibility/AccessibilityGestureDetector;->mStrokeBuffer:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x2

    if-ge v3, v4, :cond_16

    .line 479
    iget-object v0, v0, Lcom/android/server/accessibility/AccessibilityGestureDetector;->mListener:Lcom/android/server/accessibility/AccessibilityGestureDetector$Listener;

    invoke-interface {v0, v1, v2}, Lcom/android/server/accessibility/AccessibilityGestureDetector$Listener;->onGestureCancelled(Landroid/view/MotionEvent;I)Z

    move-result v0

    return v0

    .line 488
    :cond_16
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 489
    new-instance v4, Landroid/graphics/PointF;

    iget-object v5, v0, Lcom/android/server/accessibility/AccessibilityGestureDetector;->mStrokeBuffer:Ljava/util/ArrayList;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/gesture/GesturePoint;

    iget v5, v5, Landroid/gesture/GesturePoint;->x:F

    iget-object v7, v0, Lcom/android/server/accessibility/AccessibilityGestureDetector;->mStrokeBuffer:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/gesture/GesturePoint;

    iget v7, v7, Landroid/gesture/GesturePoint;->y:F

    invoke-direct {v4, v5, v7}, Landroid/graphics/PointF;-><init>(FF)V

    .line 490
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 492
    nop

    .line 493
    nop

    .line 494
    nop

    .line 495
    nop

    .line 497
    new-instance v5, Landroid/graphics/PointF;

    invoke-direct {v5}, Landroid/graphics/PointF;-><init>()V

    .line 498
    move-object v13, v4

    move v9, v6

    const/4 v4, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    :goto_47
    iget-object v14, v0, Lcom/android/server/accessibility/AccessibilityGestureDetector;->mStrokeBuffer:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v14

    if-ge v4, v14, :cond_d8

    .line 499
    new-instance v5, Landroid/graphics/PointF;

    iget-object v14, v0, Lcom/android/server/accessibility/AccessibilityGestureDetector;->mStrokeBuffer:Ljava/util/ArrayList;

    invoke-virtual {v14, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/gesture/GesturePoint;

    iget v14, v14, Landroid/gesture/GesturePoint;->x:F

    iget-object v15, v0, Lcom/android/server/accessibility/AccessibilityGestureDetector;->mStrokeBuffer:Ljava/util/ArrayList;

    invoke-virtual {v15, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/gesture/GesturePoint;

    iget v15, v15, Landroid/gesture/GesturePoint;->y:F

    invoke-direct {v5, v14, v15}, Landroid/graphics/PointF;-><init>(FF)V

    .line 500
    if-lez v9, :cond_af

    .line 502
    int-to-float v14, v9

    div-float v15, v10, v14

    .line 503
    div-float v14, v11, v14

    .line 512
    new-instance v6, Landroid/graphics/PointF;

    mul-float v16, v12, v15

    iget v7, v13, Landroid/graphics/PointF;->x:F

    add-float v7, v16, v7

    mul-float/2addr v12, v14

    iget v8, v13, Landroid/graphics/PointF;->y:F

    add-float/2addr v12, v8

    invoke-direct {v6, v7, v12}, Landroid/graphics/PointF;-><init>(FF)V

    .line 516
    iget v7, v5, Landroid/graphics/PointF;->x:F

    iget v8, v6, Landroid/graphics/PointF;->x:F

    sub-float/2addr v7, v8

    .line 517
    iget v8, v5, Landroid/graphics/PointF;->y:F

    iget v12, v6, Landroid/graphics/PointF;->y:F

    sub-float/2addr v8, v12

    .line 518
    mul-float v12, v7, v7

    mul-float v17, v8, v8

    add-float v12, v12, v17

    move/from16 v17, v9

    move/from16 v18, v10

    float-to-double v9, v12

    invoke-static {v9, v10}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v9

    double-to-float v9, v9

    .line 519
    div-float/2addr v7, v9

    .line 520
    div-float/2addr v8, v9

    .line 524
    mul-float/2addr v15, v7

    mul-float/2addr v14, v8

    add-float/2addr v15, v14

    .line 525
    const/4 v7, 0x0

    cmpg-float v8, v15, v7

    if-gez v8, :cond_b4

    .line 526
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 527
    nop

    .line 528
    nop

    .line 529
    nop

    .line 530
    move-object v13, v6

    move v11, v7

    move/from16 v18, v11

    const/16 v17, 0x0

    goto :goto_b4

    .line 500
    :cond_af
    move/from16 v17, v9

    move/from16 v18, v10

    const/4 v7, 0x0

    .line 535
    :cond_b4
    :goto_b4
    iget v6, v5, Landroid/graphics/PointF;->x:F

    iget v8, v13, Landroid/graphics/PointF;->x:F

    sub-float/2addr v6, v8

    .line 536
    iget v8, v5, Landroid/graphics/PointF;->y:F

    iget v9, v13, Landroid/graphics/PointF;->y:F

    sub-float/2addr v8, v9

    .line 537
    mul-float v9, v6, v6

    mul-float v10, v8, v8

    add-float/2addr v9, v10

    float-to-double v9, v9

    invoke-static {v9, v10}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v9

    double-to-float v12, v9

    .line 540
    const/4 v9, 0x1

    add-int/lit8 v10, v17, 0x1

    .line 541
    div-float/2addr v6, v12

    add-float v6, v18, v6

    .line 542
    div-float/2addr v8, v12

    add-float/2addr v11, v8

    .line 498
    add-int/lit8 v4, v4, 0x1

    move v9, v10

    move v10, v6

    const/4 v6, 0x0

    goto/16 :goto_47

    .line 545
    :cond_d8
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 546
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "path="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "AccessibilityGestureDetector"

    invoke-static {v5, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 549
    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/accessibility/AccessibilityGestureDetector;->recognizeGesturePath(Landroid/view/MotionEvent;ILjava/util/ArrayList;)Z

    move-result v0

    return v0
.end method

.method private recognizeGesturePath(Landroid/view/MotionEvent;ILjava/util/ArrayList;)Z
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/MotionEvent;",
            "I",
            "Ljava/util/ArrayList<",
            "Landroid/graphics/PointF;",
            ">;)Z"
        }
    .end annotation

    .line 565
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x3

    const/4 v3, 0x1

    const/4 v4, 0x2

    if-ne v0, v4, :cond_4a

    .line 566
    invoke-virtual {p3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/PointF;

    .line 567
    invoke-virtual {p3, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/graphics/PointF;

    .line 569
    iget v1, p3, Landroid/graphics/PointF;->x:F

    iget v5, v0, Landroid/graphics/PointF;->x:F

    sub-float/2addr v1, v5

    .line 570
    iget p3, p3, Landroid/graphics/PointF;->y:F

    iget v0, v0, Landroid/graphics/PointF;->y:F

    sub-float/2addr p3, v0

    .line 571
    invoke-static {v1, p3}, Lcom/android/server/accessibility/AccessibilityGestureDetector;->toDirection(FF)I

    move-result p3

    .line 572
    if-eqz p3, :cond_43

    if-eq p3, v3, :cond_3b

    if-eq p3, v4, :cond_34

    if-eq p3, v2, :cond_2d

    .line 585
    goto :goto_8b

    .line 580
    :cond_2d
    iget-object p1, p0, Lcom/android/server/accessibility/AccessibilityGestureDetector;->mListener:Lcom/android/server/accessibility/AccessibilityGestureDetector$Listener;

    invoke-interface {p1, v4}, Lcom/android/server/accessibility/AccessibilityGestureDetector$Listener;->onGestureCompleted(I)Z

    move-result p1

    return p1

    .line 578
    :cond_34
    iget-object p1, p0, Lcom/android/server/accessibility/AccessibilityGestureDetector;->mListener:Lcom/android/server/accessibility/AccessibilityGestureDetector$Listener;

    invoke-interface {p1, v3}, Lcom/android/server/accessibility/AccessibilityGestureDetector$Listener;->onGestureCompleted(I)Z

    move-result p1

    return p1

    .line 576
    :cond_3b
    iget-object p1, p0, Lcom/android/server/accessibility/AccessibilityGestureDetector;->mListener:Lcom/android/server/accessibility/AccessibilityGestureDetector$Listener;

    const/4 p2, 0x4

    invoke-interface {p1, p2}, Lcom/android/server/accessibility/AccessibilityGestureDetector$Listener;->onGestureCompleted(I)Z

    move-result p1

    return p1

    .line 574
    :cond_43
    iget-object p1, p0, Lcom/android/server/accessibility/AccessibilityGestureDetector;->mListener:Lcom/android/server/accessibility/AccessibilityGestureDetector$Listener;

    invoke-interface {p1, v2}, Lcom/android/server/accessibility/AccessibilityGestureDetector$Listener;->onGestureCompleted(I)Z

    move-result p1

    return p1

    .line 585
    :cond_4a
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne v0, v2, :cond_8b

    .line 586
    invoke-virtual {p3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/PointF;

    .line 587
    invoke-virtual {p3, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/graphics/PointF;

    .line 588
    invoke-virtual {p3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/graphics/PointF;

    .line 590
    iget v0, p2, Landroid/graphics/PointF;->x:F

    iget v1, p1, Landroid/graphics/PointF;->x:F

    sub-float/2addr v0, v1

    .line 591
    iget v1, p2, Landroid/graphics/PointF;->y:F

    iget p1, p1, Landroid/graphics/PointF;->y:F

    sub-float/2addr v1, p1

    .line 593
    iget p1, p3, Landroid/graphics/PointF;->x:F

    iget v2, p2, Landroid/graphics/PointF;->x:F

    sub-float/2addr p1, v2

    .line 594
    iget p3, p3, Landroid/graphics/PointF;->y:F

    iget p2, p2, Landroid/graphics/PointF;->y:F

    sub-float/2addr p3, p2

    .line 596
    invoke-static {v0, v1}, Lcom/android/server/accessibility/AccessibilityGestureDetector;->toDirection(FF)I

    move-result p2

    .line 597
    invoke-static {p1, p3}, Lcom/android/server/accessibility/AccessibilityGestureDetector;->toDirection(FF)I

    move-result p1

    .line 598
    sget-object p3, Lcom/android/server/accessibility/AccessibilityGestureDetector;->DIRECTIONS_TO_GESTURE_ID:[[I

    aget-object p2, p3, p2

    aget p1, p2, p1

    .line 599
    iget-object p2, p0, Lcom/android/server/accessibility/AccessibilityGestureDetector;->mListener:Lcom/android/server/accessibility/AccessibilityGestureDetector$Listener;

    invoke-interface {p2, p1}, Lcom/android/server/accessibility/AccessibilityGestureDetector$Listener;->onGestureCompleted(I)Z

    move-result p1

    return p1

    .line 602
    :cond_8b
    :goto_8b
    iget-object p3, p0, Lcom/android/server/accessibility/AccessibilityGestureDetector;->mListener:Lcom/android/server/accessibility/AccessibilityGestureDetector$Listener;

    invoke-interface {p3, p1, p2}, Lcom/android/server/accessibility/AccessibilityGestureDetector$Listener;->onGestureCancelled(Landroid/view/MotionEvent;I)Z

    move-result p1

    return p1
.end method

.method private static toDirection(FF)I
    .registers 4

    .line 607
    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpl-float v0, v0, v1

    const/4 v1, 0x0

    if-lez v0, :cond_15

    .line 609
    cmpg-float p0, p0, v1

    if-gez p0, :cond_13

    const/4 p0, 0x0

    goto :goto_14

    :cond_13
    const/4 p0, 0x1

    :goto_14
    return p0

    .line 612
    :cond_15
    cmpg-float p0, p1, v1

    if-gez p0, :cond_1b

    const/4 p0, 0x2

    goto :goto_1c

    :cond_1b
    const/4 p0, 0x3

    :goto_1c
    return p0
.end method


# virtual methods
.method public clear()V
    .registers 10

    .line 408
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/accessibility/AccessibilityGestureDetector;->mFirstTapDetected:Z

    .line 409
    iput-boolean v0, p0, Lcom/android/server/accessibility/AccessibilityGestureDetector;->mDoubleTapDetected:Z

    .line 410
    iput-boolean v0, p0, Lcom/android/server/accessibility/AccessibilityGestureDetector;->mSecondFingerDoubleTap:Z

    .line 411
    iput-boolean v0, p0, Lcom/android/server/accessibility/AccessibilityGestureDetector;->mGestureStarted:Z

    .line 412
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityGestureDetector;->mGestureDetector:Landroid/view/GestureDetector;

    const-wide/16 v1, 0x0

    const-wide/16 v3, 0x0

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v1 .. v8}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 414
    invoke-direct {p0}, Lcom/android/server/accessibility/AccessibilityGestureDetector;->cancelGesture()V

    .line 415
    return-void
.end method

.method public firstTapDetected()Z
    .registers 2

    .line 418
    iget-boolean v0, p0, Lcom/android/server/accessibility/AccessibilityGestureDetector;->mFirstTapDetected:Z

    return v0
.end method

.method public onDoubleTap(Landroid/view/MotionEvent;)Z
    .registers 2

    .line 442
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/server/accessibility/AccessibilityGestureDetector;->mDoubleTapDetected:Z

    .line 443
    const/4 p1, 0x0

    return p1
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .registers 3

    .line 423
    iget v0, p0, Lcom/android/server/accessibility/AccessibilityGestureDetector;->mPolicyFlags:I

    invoke-direct {p0, p1, v0}, Lcom/android/server/accessibility/AccessibilityGestureDetector;->maybeSendLongPress(Landroid/view/MotionEvent;I)V

    .line 424
    return-void
.end method

.method public onMotionEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)Z
    .registers 16

    .line 273
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 274
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    .line 275
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v2

    .line 277
    iput p3, p0, Lcom/android/server/accessibility/AccessibilityGestureDetector;->mPolicyFlags:I

    .line 278
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v4

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v4, :cond_fb

    if-eq v4, v5, :cond_c3

    const/4 v7, 0x2

    if-eq v4, v7, :cond_4b

    const/4 v0, 0x3

    if-eq v4, v0, :cond_46

    const/4 v0, 0x5

    if-eq v4, v0, :cond_33

    const/4 v0, 0x6

    if-eq v4, v0, :cond_26

    goto/16 :goto_11d

    .line 377
    :cond_26
    iget-boolean v0, p0, Lcom/android/server/accessibility/AccessibilityGestureDetector;->mSecondFingerDoubleTap:Z

    if-eqz v0, :cond_11d

    iget-boolean v0, p0, Lcom/android/server/accessibility/AccessibilityGestureDetector;->mDoubleTapDetected:Z

    if-eqz v0, :cond_11d

    .line 378
    invoke-direct {p0, p2, p3}, Lcom/android/server/accessibility/AccessibilityGestureDetector;->finishDoubleTap(Landroid/view/MotionEvent;I)Z

    move-result p1

    return p1

    .line 360
    :cond_33
    invoke-direct {p0}, Lcom/android/server/accessibility/AccessibilityGestureDetector;->cancelGesture()V

    .line 362
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result p3

    if-ne p3, v7, :cond_42

    .line 365
    iput-boolean v5, p0, Lcom/android/server/accessibility/AccessibilityGestureDetector;->mSecondFingerDoubleTap:Z

    .line 366
    iput-wide v2, p0, Lcom/android/server/accessibility/AccessibilityGestureDetector;->mSecondPointerDownTime:J

    goto/16 :goto_11d

    .line 370
    :cond_42
    iput-boolean v6, p0, Lcom/android/server/accessibility/AccessibilityGestureDetector;->mSecondFingerDoubleTap:Z

    .line 372
    goto/16 :goto_11d

    .line 383
    :cond_46
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityGestureDetector;->clear()V

    goto/16 :goto_11d

    .line 295
    :cond_4b
    iget-boolean v4, p0, Lcom/android/server/accessibility/AccessibilityGestureDetector;->mRecognizingGesture:Z

    if-eqz v4, :cond_11d

    .line 296
    iget v4, p0, Lcom/android/server/accessibility/AccessibilityGestureDetector;->mBaseX:F

    sub-float/2addr v4, v0

    .line 297
    iget v7, p0, Lcom/android/server/accessibility/AccessibilityGestureDetector;->mBaseY:F

    sub-float/2addr v7, v1

    .line 298
    float-to-double v8, v4

    float-to-double v10, v7

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v7

    .line 299
    iget v4, p0, Lcom/android/server/accessibility/AccessibilityGestureDetector;->mGestureDetectionThreshold:F

    float-to-double v9, v4

    cmpl-double v4, v7, v9

    if-lez v4, :cond_79

    .line 302
    iput v0, p0, Lcom/android/server/accessibility/AccessibilityGestureDetector;->mBaseX:F

    .line 303
    iput v1, p0, Lcom/android/server/accessibility/AccessibilityGestureDetector;->mBaseY:F

    .line 304
    iput-wide v2, p0, Lcom/android/server/accessibility/AccessibilityGestureDetector;->mBaseTime:J

    .line 308
    iput-boolean v6, p0, Lcom/android/server/accessibility/AccessibilityGestureDetector;->mFirstTapDetected:Z

    .line 309
    iput-boolean v6, p0, Lcom/android/server/accessibility/AccessibilityGestureDetector;->mDoubleTapDetected:Z

    .line 313
    iget-boolean p3, p0, Lcom/android/server/accessibility/AccessibilityGestureDetector;->mGestureStarted:Z

    if-nez p3, :cond_98

    .line 314
    iput-boolean v5, p0, Lcom/android/server/accessibility/AccessibilityGestureDetector;->mGestureStarted:Z

    .line 315
    iget-object p1, p0, Lcom/android/server/accessibility/AccessibilityGestureDetector;->mListener:Lcom/android/server/accessibility/AccessibilityGestureDetector$Listener;

    invoke-interface {p1}, Lcom/android/server/accessibility/AccessibilityGestureDetector$Listener;->onGestureStarted()Z

    move-result p1

    return p1

    .line 317
    :cond_79
    iget-boolean v4, p0, Lcom/android/server/accessibility/AccessibilityGestureDetector;->mFirstTapDetected:Z

    if-nez v4, :cond_98

    .line 320
    iget-wide v4, p0, Lcom/android/server/accessibility/AccessibilityGestureDetector;->mBaseTime:J

    sub-long v4, v2, v4

    .line 321
    iget-boolean v7, p0, Lcom/android/server/accessibility/AccessibilityGestureDetector;->mGestureStarted:Z

    if-eqz v7, :cond_88

    .line 322
    const-wide/16 v7, 0x12c

    goto :goto_8a

    .line 323
    :cond_88
    const-wide/16 v7, 0x96

    .line 327
    :goto_8a
    cmp-long v4, v4, v7

    if-lez v4, :cond_98

    .line 328
    invoke-direct {p0}, Lcom/android/server/accessibility/AccessibilityGestureDetector;->cancelGesture()V

    .line 329
    iget-object p1, p0, Lcom/android/server/accessibility/AccessibilityGestureDetector;->mListener:Lcom/android/server/accessibility/AccessibilityGestureDetector$Listener;

    invoke-interface {p1, p2, p3}, Lcom/android/server/accessibility/AccessibilityGestureDetector$Listener;->onGestureCancelled(Landroid/view/MotionEvent;I)Z

    move-result p1

    return p1

    .line 333
    :cond_98
    iget p3, p0, Lcom/android/server/accessibility/AccessibilityGestureDetector;->mPreviousGestureX:F

    sub-float p3, v0, p3

    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result p3

    .line 334
    iget v4, p0, Lcom/android/server/accessibility/AccessibilityGestureDetector;->mPreviousGestureY:F

    sub-float v4, v1, v4

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    .line 335
    iget v5, p0, Lcom/android/server/accessibility/AccessibilityGestureDetector;->mMinPixelsBetweenSamplesX:F

    cmpl-float p3, p3, v5

    if-gez p3, :cond_b4

    iget p3, p0, Lcom/android/server/accessibility/AccessibilityGestureDetector;->mMinPixelsBetweenSamplesY:F

    cmpl-float p3, v4, p3

    if-ltz p3, :cond_c2

    .line 336
    :cond_b4
    iput v0, p0, Lcom/android/server/accessibility/AccessibilityGestureDetector;->mPreviousGestureX:F

    .line 337
    iput v1, p0, Lcom/android/server/accessibility/AccessibilityGestureDetector;->mPreviousGestureY:F

    .line 338
    iget-object p3, p0, Lcom/android/server/accessibility/AccessibilityGestureDetector;->mStrokeBuffer:Ljava/util/ArrayList;

    new-instance v4, Landroid/gesture/GesturePoint;

    invoke-direct {v4, v0, v1, v2, v3}, Landroid/gesture/GesturePoint;-><init>(FFJ)V

    invoke-virtual {p3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 340
    :cond_c2
    goto :goto_11d

    .line 344
    :cond_c3
    iget-boolean v4, p0, Lcom/android/server/accessibility/AccessibilityGestureDetector;->mDoubleTapDetected:Z

    if-eqz v4, :cond_cc

    .line 345
    invoke-direct {p0, p2, p3}, Lcom/android/server/accessibility/AccessibilityGestureDetector;->finishDoubleTap(Landroid/view/MotionEvent;I)Z

    move-result p1

    return p1

    .line 347
    :cond_cc
    iget-boolean v4, p0, Lcom/android/server/accessibility/AccessibilityGestureDetector;->mGestureStarted:Z

    if-eqz v4, :cond_11d

    .line 348
    iget p1, p0, Lcom/android/server/accessibility/AccessibilityGestureDetector;->mPreviousGestureX:F

    sub-float p1, v0, p1

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    .line 349
    iget v4, p0, Lcom/android/server/accessibility/AccessibilityGestureDetector;->mPreviousGestureY:F

    sub-float v4, v1, v4

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    .line 350
    iget v5, p0, Lcom/android/server/accessibility/AccessibilityGestureDetector;->mMinPixelsBetweenSamplesX:F

    cmpl-float p1, p1, v5

    if-gez p1, :cond_ec

    iget p1, p0, Lcom/android/server/accessibility/AccessibilityGestureDetector;->mMinPixelsBetweenSamplesY:F

    cmpl-float p1, v4, p1

    if-ltz p1, :cond_f6

    .line 351
    :cond_ec
    iget-object p1, p0, Lcom/android/server/accessibility/AccessibilityGestureDetector;->mStrokeBuffer:Ljava/util/ArrayList;

    new-instance v4, Landroid/gesture/GesturePoint;

    invoke-direct {v4, v0, v1, v2, v3}, Landroid/gesture/GesturePoint;-><init>(FFJ)V

    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 353
    :cond_f6
    invoke-direct {p0, p2, p3}, Lcom/android/server/accessibility/AccessibilityGestureDetector;->recognizeGesture(Landroid/view/MotionEvent;I)Z

    move-result p1

    return p1

    .line 280
    :cond_fb
    iput-boolean v6, p0, Lcom/android/server/accessibility/AccessibilityGestureDetector;->mDoubleTapDetected:Z

    .line 281
    iput-boolean v6, p0, Lcom/android/server/accessibility/AccessibilityGestureDetector;->mSecondFingerDoubleTap:Z

    .line 282
    iput-boolean v5, p0, Lcom/android/server/accessibility/AccessibilityGestureDetector;->mRecognizingGesture:Z

    .line 283
    iput-boolean v6, p0, Lcom/android/server/accessibility/AccessibilityGestureDetector;->mGestureStarted:Z

    .line 284
    iput v0, p0, Lcom/android/server/accessibility/AccessibilityGestureDetector;->mPreviousGestureX:F

    .line 285
    iput v1, p0, Lcom/android/server/accessibility/AccessibilityGestureDetector;->mPreviousGestureY:F

    .line 286
    iget-object p3, p0, Lcom/android/server/accessibility/AccessibilityGestureDetector;->mStrokeBuffer:Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->clear()V

    .line 287
    iget-object p3, p0, Lcom/android/server/accessibility/AccessibilityGestureDetector;->mStrokeBuffer:Ljava/util/ArrayList;

    new-instance v4, Landroid/gesture/GesturePoint;

    invoke-direct {v4, v0, v1, v2, v3}, Landroid/gesture/GesturePoint;-><init>(FFJ)V

    invoke-virtual {p3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 289
    iput v0, p0, Lcom/android/server/accessibility/AccessibilityGestureDetector;->mBaseX:F

    .line 290
    iput v1, p0, Lcom/android/server/accessibility/AccessibilityGestureDetector;->mBaseY:F

    .line 291
    iput-wide v2, p0, Lcom/android/server/accessibility/AccessibilityGestureDetector;->mBaseTime:J

    .line 292
    nop

    .line 389
    :cond_11d
    :goto_11d
    iget-boolean p3, p0, Lcom/android/server/accessibility/AccessibilityGestureDetector;->mSecondFingerDoubleTap:Z

    if-eqz p3, :cond_132

    .line 390
    invoke-direct {p0, p2}, Lcom/android/server/accessibility/AccessibilityGestureDetector;->mapSecondPointerToFirstPointer(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object p1

    .line 391
    if-nez p1, :cond_128

    .line 392
    return v6

    .line 394
    :cond_128
    iget-object p2, p0, Lcom/android/server/accessibility/AccessibilityGestureDetector;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {p2, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p2

    .line 395
    invoke-virtual {p1}, Landroid/view/MotionEvent;->recycle()V

    .line 396
    return p2

    .line 399
    :cond_132
    iget-boolean p2, p0, Lcom/android/server/accessibility/AccessibilityGestureDetector;->mRecognizingGesture:Z

    if-nez p2, :cond_137

    .line 400
    return v6

    .line 404
    :cond_137
    iget-object p2, p0, Lcom/android/server/accessibility/AccessibilityGestureDetector;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {p2, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
    .registers 2

    .line 434
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityGestureDetector;->clear()V

    .line 435
    const/4 p1, 0x0

    return p1
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .registers 2

    .line 428
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/server/accessibility/AccessibilityGestureDetector;->mFirstTapDetected:Z

    .line 429
    const/4 p1, 0x0

    return p1
.end method
