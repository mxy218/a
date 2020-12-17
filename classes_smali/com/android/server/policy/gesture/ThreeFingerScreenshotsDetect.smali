.class public Lcom/android/server/policy/gesture/ThreeFingerScreenshotsDetect;
.super Lcom/android/server/policy/gesture/GestureListenerBase;
.source "ThreeFingerScreenshotsDetect.java"


# static fields
.field private static final DEBUG:Z = true

.field private static final SCREEN_SHOT_GESTURE_FINGERS_COUNT:I = 0x3

.field private static SCREEN_SHOT_GESTURE_VALID_DISTANCE:I = 0x0

.field private static final SCREEN_SHOT_GESTURE_VALID_DURATION:I = 0x32


# instance fields
.field private mLatestPointDownTime:J

.field private mPointersDown:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "[[",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private mPointersUp:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "[[",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private mStatusBarHeihgt:I

.field private mTouchSlop:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 32
    const/16 v0, 0x64

    sput v0, Lcom/android/server/policy/gesture/ThreeFingerScreenshotsDetect;->SCREEN_SHOT_GESTURE_VALID_DISTANCE:I

    return-void
.end method

.method public constructor <init>(Lcom/android/server/policy/gesture/SystemGesture;Landroid/content/Context;)V
    .registers 5
    .param p1, "SystemGesture"  # Lcom/android/server/policy/gesture/SystemGesture;
    .param p2, "context"  # Landroid/content/Context;

    .line 40
    invoke-direct {p0, p1, p2}, Lcom/android/server/policy/gesture/GestureListenerBase;-><init>(Lcom/android/server/policy/gesture/SystemGesture;Landroid/content/Context;)V

    .line 33
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/gesture/ThreeFingerScreenshotsDetect;->mPointersDown:Ljava/util/HashMap;

    .line 34
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/gesture/ThreeFingerScreenshotsDetect;->mPointersUp:Ljava/util/HashMap;

    .line 35
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/server/policy/gesture/ThreeFingerScreenshotsDetect;->mLatestPointDownTime:J

    .line 41
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

    .line 216
    .local p1, "arg":Ljava/lang/Object;, "TT;"
    if-eqz p1, :cond_3

    .line 219
    return-object p1

    .line 217
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


# virtual methods
.method protected getSupportGestureType()I
    .registers 2

    .line 207
    const/4 v0, -0x1

    return v0
.end method

.method public interceptKeyBeforeDispatching(Lcom/android/server/policy/WindowManagerPolicy$WindowState;Landroid/view/KeyEvent;I)J
    .registers 6
    .param p1, "win"  # Lcom/android/server/policy/WindowManagerPolicy$WindowState;
    .param p2, "event"  # Landroid/view/KeyEvent;
    .param p3, "policyFlags"  # I

    .line 197
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public interceptKeyBeforeQueueing(Landroid/view/KeyEvent;I)Z
    .registers 4
    .param p1, "event"  # Landroid/view/KeyEvent;
    .param p2, "policyFlags"  # I

    .line 191
    const/4 v0, 0x0

    return v0
.end method

.method public interceptMotionBeforeQueueing(Landroid/view/MotionEvent;I)I
    .registers 22
    .param p1, "event"  # Landroid/view/MotionEvent;
    .param p2, "policyFlags"  # I

    .line 56
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-super/range {p0 .. p2}, Lcom/android/server/policy/gesture/GestureListenerBase;->interceptMotionBeforeQueueing(Landroid/view/MotionEvent;I)I

    .line 57
    iget-object v2, v0, Lcom/android/server/policy/gesture/ThreeFingerScreenshotsDetect;->mSystemGesture:Lcom/android/server/policy/gesture/SystemGesture;

    iget-object v2, v2, Lcom/android/server/policy/gesture/SystemGesture;->mMzPhoneWindowManager:Lcom/android/server/policy/MzPhoneWindowManager;

    invoke-virtual {v2}, Lcom/android/server/policy/MzPhoneWindowManager;->isGameMode()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_1f

    iget-object v2, v0, Lcom/android/server/policy/gesture/ThreeFingerScreenshotsDetect;->mSystemGesture:Lcom/android/server/policy/gesture/SystemGesture;

    invoke-virtual {v2}, Lcom/android/server/policy/gesture/SystemGesture;->getGestureSwitchController()Lcom/android/server/policy/gesture/GestureSwitchController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/policy/gesture/GestureSwitchController;->isThreeFingersScreenshotEnabled()Z

    move-result v2

    if-nez v2, :cond_1f

    .line 58
    return v3

    .line 60
    :cond_1f
    const/4 v2, 0x1

    .line 61
    .local v2, "result":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    .line 62
    .local v4, "x":F
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v5

    invoke-virtual {v1, v5}, Landroid/view/MotionEvent;->getY(I)F

    move-result v5

    .line 63
    .local v5, "y":F
    const/4 v6, 0x2

    filled-new-array {v3, v6}, [I

    move-result-object v7

    const-class v8, Ljava/lang/Float;

    invoke-static {v8, v7}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [[Ljava/lang/Float;

    .line 64
    .local v7, "location":[[Ljava/lang/Float;
    const/4 v8, 0x0

    aget-object v9, v7, v8

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    aput-object v10, v9, v8

    .line 65
    aget-object v9, v7, v8

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    aput-object v10, v9, v3

    .line 67
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v9

    invoke-virtual {v1, v9}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v9

    .line 68
    .local v9, "pointerId":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v10

    const/4 v11, 0x3

    if-eqz v10, :cond_21a

    if-eq v10, v3, :cond_159

    if-eq v10, v6, :cond_92

    if-eq v10, v11, :cond_7e

    const/4 v12, 0x5

    if-eq v10, v12, :cond_220

    const/4 v3, 0x6

    if-eq v10, v3, :cond_6f

    move v13, v2

    move/from16 v17, v4

    move v14, v9

    goto/16 :goto_421

    .line 140
    :cond_6f
    iget-object v3, v0, Lcom/android/server/policy/gesture/ThreeFingerScreenshotsDetect;->mPointersUp:Ljava/util/HashMap;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    move v13, v2

    move/from16 v17, v4

    move v14, v9

    goto/16 :goto_421

    .line 144
    :cond_7e
    iget-object v3, v0, Lcom/android/server/policy/gesture/ThreeFingerScreenshotsDetect;->mPointersDown:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    .line 145
    iget-object v3, v0, Lcom/android/server/policy/gesture/ThreeFingerScreenshotsDetect;->mPointersUp:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    .line 146
    sget-object v3, Lcom/android/server/policy/gesture/GestureListenerBase$GestureState;->IDLE:Lcom/android/server/policy/gesture/GestureListenerBase$GestureState;

    iput-object v3, v0, Lcom/android/server/policy/gesture/ThreeFingerScreenshotsDetect;->mGestureState:Lcom/android/server/policy/gesture/GestureListenerBase$GestureState;

    .line 147
    move v13, v2

    move/from16 v17, v4

    move v14, v9

    goto/16 :goto_421

    .line 121
    :cond_92
    iget-object v6, v0, Lcom/android/server/policy/gesture/ThreeFingerScreenshotsDetect;->mGestureState:Lcom/android/server/policy/gesture/GestureListenerBase$GestureState;

    sget-object v10, Lcom/android/server/policy/gesture/GestureListenerBase$GestureState;->PENDING_CHECK:Lcom/android/server/policy/gesture/GestureListenerBase$GestureState;

    if-ne v6, v10, :cond_153

    .line 122
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_99
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v10

    if-ge v6, v10, :cond_14f

    .line 123
    invoke-virtual {v1, v6}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v9

    .line 124
    iget-object v10, v0, Lcom/android/server/policy/gesture/ThreeFingerScreenshotsDetect;->mPointersDown:Ljava/util/HashMap;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [[Ljava/lang/Float;

    .line 125
    .local v10, "locationDown":[[Ljava/lang/Float;
    aget-object v11, v10, v8

    aget-object v11, v11, v3

    invoke-virtual {v11}, Ljava/lang/Float;->floatValue()F

    move-result v11

    invoke-virtual {v1, v6}, Landroid/view/MotionEvent;->getY(I)F

    move-result v12

    sub-float/2addr v11, v12

    iget v12, v0, Lcom/android/server/policy/gesture/ThreeFingerScreenshotsDetect;->mTouchSlop:I

    int-to-float v12, v12

    cmpl-float v11, v11, v12

    if-gtz v11, :cond_144

    aget-object v11, v10, v8

    aget-object v11, v11, v8

    .line 126
    invoke-virtual {v11}, Ljava/lang/Float;->floatValue()F

    move-result v11

    invoke-virtual {v1, v6}, Landroid/view/MotionEvent;->getX(I)F

    move-result v12

    sub-float/2addr v11, v12

    invoke-static {v11}, Ljava/lang/Math;->abs(F)F

    move-result v11

    iget v12, v0, Lcom/android/server/policy/gesture/ThreeFingerScreenshotsDetect;->mTouchSlop:I

    int-to-float v12, v12

    cmpl-float v11, v11, v12

    if-lez v11, :cond_102

    aget-object v11, v10, v8

    aget-object v11, v11, v8

    invoke-virtual {v11}, Ljava/lang/Float;->floatValue()F

    move-result v11

    invoke-virtual {v1, v6}, Landroid/view/MotionEvent;->getX(I)F

    move-result v12

    sub-float/2addr v11, v12

    invoke-static {v11}, Ljava/lang/Math;->abs(F)F

    move-result v11

    invoke-virtual {v1, v6}, Landroid/view/MotionEvent;->getY(I)F

    move-result v12

    aget-object v13, v10, v8

    aget-object v13, v13, v3

    invoke-virtual {v13}, Ljava/lang/Float;->floatValue()F

    move-result v13

    sub-float/2addr v12, v13

    invoke-static {v12}, Ljava/lang/Math;->abs(F)F

    move-result v12

    cmpl-float v11, v11, v12

    if-lez v11, :cond_102

    goto :goto_144

    .line 130
    :cond_102
    invoke-virtual {v1, v6}, Landroid/view/MotionEvent;->getY(I)F

    move-result v11

    aget-object v12, v10, v8

    aget-object v12, v12, v3

    invoke-virtual {v12}, Ljava/lang/Float;->floatValue()F

    move-result v12

    sub-float/2addr v11, v12

    iget v12, v0, Lcom/android/server/policy/gesture/ThreeFingerScreenshotsDetect;->mTouchSlop:I

    int-to-float v12, v12

    cmpl-float v11, v11, v12

    if-lez v11, :cond_140

    aget-object v11, v10, v8

    aget-object v11, v11, v8

    .line 131
    invoke-virtual {v11}, Ljava/lang/Float;->floatValue()F

    move-result v11

    invoke-virtual {v1, v6}, Landroid/view/MotionEvent;->getX(I)F

    move-result v12

    sub-float/2addr v11, v12

    invoke-static {v11}, Ljava/lang/Math;->abs(F)F

    move-result v11

    invoke-virtual {v1, v6}, Landroid/view/MotionEvent;->getY(I)F

    move-result v12

    aget-object v13, v10, v8

    aget-object v13, v13, v3

    invoke-virtual {v13}, Ljava/lang/Float;->floatValue()F

    move-result v13

    sub-float/2addr v12, v13

    invoke-static {v12}, Ljava/lang/Math;->abs(F)F

    move-result v12

    cmpg-float v11, v11, v12

    if-gtz v11, :cond_140

    .line 132
    sget-object v11, Lcom/android/server/policy/gesture/GestureListenerBase$GestureState;->TRIGGERED:Lcom/android/server/policy/gesture/GestureListenerBase$GestureState;

    iput-object v11, v0, Lcom/android/server/policy/gesture/ThreeFingerScreenshotsDetect;->mGestureState:Lcom/android/server/policy/gesture/GestureListenerBase$GestureState;

    .line 122
    :cond_140
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_99

    .line 127
    :cond_144
    :goto_144
    sget-object v3, Lcom/android/server/policy/gesture/GestureListenerBase$GestureState;->CANCELED:Lcom/android/server/policy/gesture/GestureListenerBase$GestureState;

    iput-object v3, v0, Lcom/android/server/policy/gesture/ThreeFingerScreenshotsDetect;->mGestureState:Lcom/android/server/policy/gesture/GestureListenerBase$GestureState;

    .line 128
    iget-object v3, v0, Lcom/android/server/policy/gesture/ThreeFingerScreenshotsDetect;->TAG:Ljava/lang/String;

    const-string v8, "Negative slide direction"

    invoke-static {v3, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    .end local v6  # "i":I
    .end local v10  # "locationDown":[[Ljava/lang/Float;
    :cond_14f
    move/from16 v17, v4

    goto/16 :goto_423

    .line 121
    :cond_153
    move v13, v2

    move/from16 v17, v4

    move v14, v9

    goto/16 :goto_421

    .line 149
    :cond_159
    iget-object v10, v0, Lcom/android/server/policy/gesture/ThreeFingerScreenshotsDetect;->mPointersUp:Ljava/util/HashMap;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v10, v11, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    iget-object v10, v0, Lcom/android/server/policy/gesture/ThreeFingerScreenshotsDetect;->mGestureState:Lcom/android/server/policy/gesture/GestureListenerBase$GestureState;

    sget-object v11, Lcom/android/server/policy/gesture/GestureListenerBase$GestureState;->PENDING_CHECK:Lcom/android/server/policy/gesture/GestureListenerBase$GestureState;

    if-eq v10, v11, :cond_16e

    iget-object v10, v0, Lcom/android/server/policy/gesture/ThreeFingerScreenshotsDetect;->mGestureState:Lcom/android/server/policy/gesture/GestureListenerBase$GestureState;

    sget-object v11, Lcom/android/server/policy/gesture/GestureListenerBase$GestureState;->TRIGGERED:Lcom/android/server/policy/gesture/GestureListenerBase$GestureState;

    if-ne v10, v11, :cond_1f0

    .line 151
    :cond_16e
    iget-object v10, v0, Lcom/android/server/policy/gesture/ThreeFingerScreenshotsDetect;->mPointersDown:Ljava/util/HashMap;

    invoke-virtual {v10}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .line 152
    .local v10, "iter":Ljava/util/Iterator;
    :goto_178
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_1f0

    .line 153
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/Map$Entry;

    .line 154
    .local v11, "entry":Ljava/util/Map$Entry;
    invoke-interface {v11}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v9

    .line 155
    invoke-interface {v11}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, [[Ljava/lang/Float;

    .line 156
    .local v12, "locationDown":[[Ljava/lang/Float;
    iget-object v13, v0, Lcom/android/server/policy/gesture/ThreeFingerScreenshotsDetect;->mPointersUp:Ljava/util/HashMap;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, [[Ljava/lang/Float;

    .line 157
    .local v13, "locationUp":[[Ljava/lang/Float;
    aget-object v14, v13, v8

    aget-object v14, v14, v3

    invoke-virtual {v14}, Ljava/lang/Float;->floatValue()F

    move-result v14

    aget-object v15, v12, v8

    aget-object v15, v15, v3

    invoke-virtual {v15}, Ljava/lang/Float;->floatValue()F

    move-result v15

    sub-float/2addr v14, v15

    sget v15, Lcom/android/server/policy/gesture/ThreeFingerScreenshotsDetect;->SCREEN_SHOT_GESTURE_VALID_DISTANCE:I

    int-to-float v15, v15

    cmpl-float v14, v14, v15

    if-lez v14, :cond_1ec

    aget-object v14, v13, v8

    aget-object v14, v14, v8

    .line 158
    invoke-virtual {v14}, Ljava/lang/Float;->floatValue()F

    move-result v14

    aget-object v15, v12, v8

    aget-object v15, v15, v8

    invoke-virtual {v15}, Ljava/lang/Float;->floatValue()F

    move-result v15

    sub-float/2addr v14, v15

    invoke-static {v14}, Ljava/lang/Math;->abs(F)F

    move-result v14

    aget-object v15, v13, v8

    aget-object v15, v15, v3

    invoke-virtual {v15}, Ljava/lang/Float;->floatValue()F

    move-result v15

    aget-object v16, v12, v8

    aget-object v16, v16, v3

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Float;->floatValue()F

    move-result v16

    sub-float v15, v15, v16

    invoke-static {v15}, Ljava/lang/Math;->abs(F)F

    move-result v15

    cmpg-float v14, v14, v15

    if-gtz v14, :cond_1ec

    .line 159
    sget-object v14, Lcom/android/server/policy/gesture/GestureListenerBase$GestureState;->TRIGGERED:Lcom/android/server/policy/gesture/GestureListenerBase$GestureState;

    iput-object v14, v0, Lcom/android/server/policy/gesture/ThreeFingerScreenshotsDetect;->mGestureState:Lcom/android/server/policy/gesture/GestureListenerBase$GestureState;

    .line 160
    goto :goto_178

    .line 162
    :cond_1ec
    sget-object v3, Lcom/android/server/policy/gesture/GestureListenerBase$GestureState;->IDLE:Lcom/android/server/policy/gesture/GestureListenerBase$GestureState;

    iput-object v3, v0, Lcom/android/server/policy/gesture/ThreeFingerScreenshotsDetect;->mGestureState:Lcom/android/server/policy/gesture/GestureListenerBase$GestureState;

    .line 167
    .end local v10  # "iter":Ljava/util/Iterator;
    .end local v11  # "entry":Ljava/util/Map$Entry;
    .end local v12  # "locationDown":[[Ljava/lang/Float;
    .end local v13  # "locationUp":[[Ljava/lang/Float;
    :cond_1f0
    iget-object v3, v0, Lcom/android/server/policy/gesture/ThreeFingerScreenshotsDetect;->mGestureState:Lcom/android/server/policy/gesture/GestureListenerBase$GestureState;

    sget-object v8, Lcom/android/server/policy/gesture/GestureListenerBase$GestureState;->TRIGGERED:Lcom/android/server/policy/gesture/GestureListenerBase$GestureState;

    if-ne v3, v8, :cond_208

    .line 168
    iget-object v3, v0, Lcom/android/server/policy/gesture/ThreeFingerScreenshotsDetect;->TAG:Ljava/lang/String;

    const-string v8, "Three finger screen shot detect now "

    invoke-static {v3, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    and-int/lit8 v2, v2, -0x2

    .line 170
    iget-object v3, v0, Lcom/android/server/policy/gesture/ThreeFingerScreenshotsDetect;->mSystemGesture:Lcom/android/server/policy/gesture/SystemGesture;

    invoke-virtual {v3}, Lcom/android/server/policy/gesture/SystemGesture;->getMzPhoneWindowManager()Lcom/android/server/policy/MzPhoneWindowManager;

    move-result-object v3

    invoke-virtual {v3, v6}, Lcom/android/server/policy/MzPhoneWindowManager;->startScreenshot(I)V

    .line 172
    :cond_208
    iget-object v3, v0, Lcom/android/server/policy/gesture/ThreeFingerScreenshotsDetect;->mPointersDown:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    .line 173
    iget-object v3, v0, Lcom/android/server/policy/gesture/ThreeFingerScreenshotsDetect;->mPointersUp:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    .line 174
    sget-object v3, Lcom/android/server/policy/gesture/GestureListenerBase$GestureState;->IDLE:Lcom/android/server/policy/gesture/GestureListenerBase$GestureState;

    iput-object v3, v0, Lcom/android/server/policy/gesture/ThreeFingerScreenshotsDetect;->mGestureState:Lcom/android/server/policy/gesture/GestureListenerBase$GestureState;

    move/from16 v17, v4

    goto/16 :goto_423

    .line 70
    :cond_21a
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v12

    iput-wide v12, v0, Lcom/android/server/policy/gesture/ThreeFingerScreenshotsDetect;->mLatestPointDownTime:J

    .line 73
    :cond_220
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v12

    iget-wide v14, v0, Lcom/android/server/policy/gesture/ThreeFingerScreenshotsDetect;->mLatestPointDownTime:J

    sub-long/2addr v12, v14

    const-wide/16 v14, 0x32

    cmp-long v10, v12, v14

    if-lez v10, :cond_239

    .line 74
    iget-object v10, v0, Lcom/android/server/policy/gesture/ThreeFingerScreenshotsDetect;->TAG:Ljava/lang/String;

    const-string v12, "Finger down time out"

    invoke-static {v10, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    sget-object v10, Lcom/android/server/policy/gesture/GestureListenerBase$GestureState;->CANCELED:Lcom/android/server/policy/gesture/GestureListenerBase$GestureState;

    iput-object v10, v0, Lcom/android/server/policy/gesture/ThreeFingerScreenshotsDetect;->mGestureState:Lcom/android/server/policy/gesture/GestureListenerBase$GestureState;

    goto :goto_23f

    .line 77
    :cond_239
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v12

    iput-wide v12, v0, Lcom/android/server/policy/gesture/ThreeFingerScreenshotsDetect;->mLatestPointDownTime:J

    .line 80
    :goto_23f
    iget v10, v0, Lcom/android/server/policy/gesture/ThreeFingerScreenshotsDetect;->mStatusBarHeihgt:I

    int-to-float v10, v10

    cmpg-float v10, v5, v10

    if-gtz v10, :cond_251

    .line 81
    iget-object v10, v0, Lcom/android/server/policy/gesture/ThreeFingerScreenshotsDetect;->TAG:Ljava/lang/String;

    const-string v12, "Finger down in status bar area"

    invoke-static {v10, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    sget-object v10, Lcom/android/server/policy/gesture/GestureListenerBase$GestureState;->CANCELED:Lcom/android/server/policy/gesture/GestureListenerBase$GestureState;

    iput-object v10, v0, Lcom/android/server/policy/gesture/ThreeFingerScreenshotsDetect;->mGestureState:Lcom/android/server/policy/gesture/GestureListenerBase$GestureState;

    .line 84
    :cond_251
    iget-object v10, v0, Lcom/android/server/policy/gesture/ThreeFingerScreenshotsDetect;->mPointersDown:Ljava/util/HashMap;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v10, v12, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    iget-object v10, v0, Lcom/android/server/policy/gesture/ThreeFingerScreenshotsDetect;->mGestureState:Lcom/android/server/policy/gesture/GestureListenerBase$GestureState;

    sget-object v12, Lcom/android/server/policy/gesture/GestureListenerBase$GestureState;->IDLE:Lcom/android/server/policy/gesture/GestureListenerBase$GestureState;

    if-ne v10, v12, :cond_411

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v10

    if-ne v10, v11, :cond_411

    .line 87
    new-array v10, v11, [D

    .line 88
    .local v10, "distance":[D
    iget-object v11, v0, Lcom/android/server/policy/gesture/ThreeFingerScreenshotsDetect;->mPointersDown:Ljava/util/HashMap;

    .line 89
    invoke-virtual {v1, v8}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [[Ljava/lang/Float;

    aget-object v11, v11, v8

    aget-object v11, v11, v8

    invoke-virtual {v11}, Ljava/lang/Float;->floatValue()F

    move-result v11

    float-to-double v11, v11

    iget-object v13, v0, Lcom/android/server/policy/gesture/ThreeFingerScreenshotsDetect;->mPointersDown:Ljava/util/HashMap;

    .line 90
    invoke-virtual {v1, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, [[Ljava/lang/Float;

    aget-object v13, v13, v8

    aget-object v13, v13, v8

    invoke-virtual {v13}, Ljava/lang/Float;->floatValue()F

    move-result v13

    float-to-double v13, v13

    sub-double/2addr v11, v13

    .line 88
    const-wide/high16 v13, 0x4000000000000000L  # 2.0

    invoke-static {v11, v12, v13, v14}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v11

    iget-object v15, v0, Lcom/android/server/policy/gesture/ThreeFingerScreenshotsDetect;->mPointersDown:Ljava/util/HashMap;

    .line 91
    invoke-virtual {v1, v8}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v15, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [[Ljava/lang/Float;

    aget-object v6, v6, v8

    aget-object v6, v6, v3

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v6

    float-to-double v13, v6

    iget-object v6, v0, Lcom/android/server/policy/gesture/ThreeFingerScreenshotsDetect;->mPointersDown:Ljava/util/HashMap;

    .line 92
    invoke-virtual {v1, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v6, v15}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [[Ljava/lang/Float;

    aget-object v6, v6, v8

    aget-object v6, v6, v3

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v6

    move/from16 v17, v4

    .end local v4  # "x":F
    .local v17, "x":F
    float-to-double v3, v6

    sub-double/2addr v13, v3

    .line 90
    const-wide/high16 v3, 0x4000000000000000L  # 2.0

    invoke-static {v13, v14, v3, v4}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v13

    add-double/2addr v11, v13

    .line 88
    invoke-static {v11, v12}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v3

    aput-wide v3, v10, v8

    .line 93
    iget-object v3, v0, Lcom/android/server/policy/gesture/ThreeFingerScreenshotsDetect;->mPointersDown:Ljava/util/HashMap;

    .line 94
    invoke-virtual {v1, v8}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [[Ljava/lang/Float;

    aget-object v3, v3, v8

    aget-object v3, v3, v8

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    float-to-double v3, v3

    iget-object v6, v0, Lcom/android/server/policy/gesture/ThreeFingerScreenshotsDetect;->mPointersDown:Ljava/util/HashMap;

    .line 95
    const/4 v11, 0x2

    invoke-virtual {v1, v11}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v6, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [[Ljava/lang/Float;

    aget-object v6, v6, v8

    aget-object v6, v6, v8

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v6

    float-to-double v11, v6

    sub-double/2addr v3, v11

    .line 93
    const-wide/high16 v11, 0x4000000000000000L  # 2.0

    invoke-static {v3, v4, v11, v12}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    iget-object v6, v0, Lcom/android/server/policy/gesture/ThreeFingerScreenshotsDetect;->mPointersDown:Ljava/util/HashMap;

    .line 96
    invoke-virtual {v1, v8}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v6, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [[Ljava/lang/Float;

    aget-object v6, v6, v8

    const/4 v11, 0x1

    aget-object v6, v6, v11

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v6

    float-to-double v12, v6

    iget-object v6, v0, Lcom/android/server/policy/gesture/ThreeFingerScreenshotsDetect;->mPointersDown:Ljava/util/HashMap;

    .line 97
    const/4 v14, 0x2

    invoke-virtual {v1, v14}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v6, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [[Ljava/lang/Float;

    aget-object v6, v6, v8

    aget-object v6, v6, v11

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v6

    move v14, v9

    .end local v9  # "pointerId":I
    .local v14, "pointerId":I
    float-to-double v8, v6

    sub-double/2addr v12, v8

    .line 95
    const-wide/high16 v8, 0x4000000000000000L  # 2.0

    invoke-static {v12, v13, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v12

    add-double/2addr v3, v12

    .line 93
    invoke-static {v3, v4}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v3

    aput-wide v3, v10, v11

    .line 98
    iget-object v3, v0, Lcom/android/server/policy/gesture/ThreeFingerScreenshotsDetect;->mPointersDown:Ljava/util/HashMap;

    .line 99
    invoke-virtual {v1, v11}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [[Ljava/lang/Float;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    aget-object v3, v3, v4

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    float-to-double v8, v3

    iget-object v3, v0, Lcom/android/server/policy/gesture/ThreeFingerScreenshotsDetect;->mPointersDown:Ljava/util/HashMap;

    .line 100
    const/4 v6, 0x2

    invoke-virtual {v1, v6}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [[Ljava/lang/Float;

    aget-object v3, v3, v4

    aget-object v3, v3, v4

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    float-to-double v3, v3

    sub-double/2addr v8, v3

    .line 98
    const-wide/high16 v3, 0x4000000000000000L  # 2.0

    invoke-static {v8, v9, v3, v4}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v8

    iget-object v3, v0, Lcom/android/server/policy/gesture/ThreeFingerScreenshotsDetect;->mPointersDown:Ljava/util/HashMap;

    .line 101
    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [[Ljava/lang/Float;

    const/4 v6, 0x0

    aget-object v3, v3, v6

    aget-object v3, v3, v4

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    float-to-double v11, v3

    iget-object v3, v0, Lcom/android/server/policy/gesture/ThreeFingerScreenshotsDetect;->mPointersDown:Ljava/util/HashMap;

    .line 102
    const/4 v13, 0x2

    invoke-virtual {v1, v13}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v3, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [[Ljava/lang/Float;

    aget-object v3, v3, v6

    aget-object v3, v3, v4

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    float-to-double v3, v3

    sub-double/2addr v11, v3

    .line 100
    const-wide/high16 v3, 0x4000000000000000L  # 2.0

    invoke-static {v11, v12, v3, v4}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    add-double/2addr v8, v3

    .line 98
    invoke-static {v8, v9}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v3

    const/4 v6, 0x2

    aput-wide v3, v10, v6

    .line 103
    const/4 v3, 0x0

    .line 104
    .local v3, "distanceNearCount":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_3e1
    array-length v6, v10

    if-ge v4, v6, :cond_3fc

    .line 105
    aget-wide v8, v10, v4

    const-wide v11, 0x3fd999999999999aL  # 0.4

    iget v6, v0, Lcom/android/server/policy/gesture/ThreeFingerScreenshotsDetect;->DEVICE_HEIGHT:I

    move v13, v2

    .end local v2  # "result":I
    .local v13, "result":I
    int-to-double v1, v6

    mul-double/2addr v1, v11

    cmpg-double v1, v8, v1

    if-gez v1, :cond_3f6

    .line 106
    add-int/lit8 v3, v3, 0x1

    .line 104
    :cond_3f6
    add-int/lit8 v4, v4, 0x1

    move-object/from16 v1, p1

    move v2, v13

    goto :goto_3e1

    .end local v13  # "result":I
    .restart local v2  # "result":I
    :cond_3fc
    move v13, v2

    .line 109
    .end local v2  # "result":I
    .end local v4  # "i":I
    .restart local v13  # "result":I
    const/4 v1, 0x2

    if-lt v3, v1, :cond_405

    .line 110
    sget-object v1, Lcom/android/server/policy/gesture/GestureListenerBase$GestureState;->PENDING_CHECK:Lcom/android/server/policy/gesture/GestureListenerBase$GestureState;

    iput-object v1, v0, Lcom/android/server/policy/gesture/ThreeFingerScreenshotsDetect;->mGestureState:Lcom/android/server/policy/gesture/GestureListenerBase$GestureState;

    goto :goto_420

    .line 112
    :cond_405
    sget-object v1, Lcom/android/server/policy/gesture/GestureListenerBase$GestureState;->CANCELED:Lcom/android/server/policy/gesture/GestureListenerBase$GestureState;

    iput-object v1, v0, Lcom/android/server/policy/gesture/ThreeFingerScreenshotsDetect;->mGestureState:Lcom/android/server/policy/gesture/GestureListenerBase$GestureState;

    .line 113
    iget-object v1, v0, Lcom/android/server/policy/gesture/ThreeFingerScreenshotsDetect;->TAG:Ljava/lang/String;

    const-string v2, "Fingers down too far away"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_420

    .line 85
    .end local v3  # "distanceNearCount":I
    .end local v10  # "distance":[D
    .end local v13  # "result":I
    .end local v14  # "pointerId":I
    .end local v17  # "x":F
    .restart local v2  # "result":I
    .local v4, "x":F
    .restart local v9  # "pointerId":I
    :cond_411
    move v13, v2

    move/from16 v17, v4

    move v14, v9

    .line 115
    .end local v2  # "result":I
    .end local v4  # "x":F
    .end local v9  # "pointerId":I
    .restart local v13  # "result":I
    .restart local v14  # "pointerId":I
    .restart local v17  # "x":F
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v1

    if-le v1, v11, :cond_420

    .line 116
    sget-object v1, Lcom/android/server/policy/gesture/GestureListenerBase$GestureState;->CANCELED:Lcom/android/server/policy/gesture/GestureListenerBase$GestureState;

    iput-object v1, v0, Lcom/android/server/policy/gesture/ThreeFingerScreenshotsDetect;->mGestureState:Lcom/android/server/policy/gesture/GestureListenerBase$GestureState;

    goto :goto_421

    .line 115
    :cond_420
    :goto_420
    nop

    .line 178
    .end local v13  # "result":I
    .end local v14  # "pointerId":I
    .end local v17  # "x":F
    .restart local v2  # "result":I
    .restart local v4  # "x":F
    .restart local v9  # "pointerId":I
    :goto_421
    move v2, v13

    move v9, v14

    .end local v4  # "x":F
    .restart local v17  # "x":F
    :goto_423
    iget-object v1, v0, Lcom/android/server/policy/gesture/ThreeFingerScreenshotsDetect;->mGestureState:Lcom/android/server/policy/gesture/GestureListenerBase$GestureState;

    sget-object v3, Lcom/android/server/policy/gesture/GestureListenerBase$GestureState;->TRIGGERED:Lcom/android/server/policy/gesture/GestureListenerBase$GestureState;

    if-ne v1, v3, :cond_42b

    .line 179
    and-int/lit8 v2, v2, -0x2

    .line 181
    :cond_42b
    return v2
.end method

.method public interceptMotionBeforeQueueingVice(Landroid/view/MotionEvent;)I
    .registers 3
    .param p1, "event"  # Landroid/view/MotionEvent;

    .line 186
    const/4 v0, 0x1

    return v0
.end method

.method protected isSupportGestureType(I)Z
    .registers 3
    .param p1, "gesture"  # I

    .line 202
    const/4 v0, 0x0

    return v0
.end method

.method protected shouldInterceptGesture()Z
    .registers 2

    .line 212
    const/4 v0, 0x1

    return v0
.end method

.method public systemReady()V
    .registers 4

    .line 45
    invoke-super {p0}, Lcom/android/server/policy/gesture/GestureListenerBase;->systemReady()V

    .line 46
    iget-object v0, p0, Lcom/android/server/policy/gesture/ThreeFingerScreenshotsDetect;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 47
    .local v0, "res":Landroid/content/res/Resources;
    const v1, 0xa070388

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/android/server/policy/gesture/ThreeFingerScreenshotsDetect;->SCREEN_SHOT_GESTURE_VALID_DISTANCE:I

    .line 49
    iget-object v1, p0, Lcom/android/server/policy/gesture/ThreeFingerScreenshotsDetect;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    iput v1, p0, Lcom/android/server/policy/gesture/ThreeFingerScreenshotsDetect;->mTouchSlop:I

    .line 50
    iget-object v1, p0, Lcom/android/server/policy/gesture/ThreeFingerScreenshotsDetect;->mContext:Landroid/content/Context;

    const-string v2, "context"

    invoke-static {v2, v1}, Lcom/android/server/policy/gesture/ThreeFingerScreenshotsDetect;->checkNull(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 51
    const v2, 0x105020f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/server/policy/gesture/ThreeFingerScreenshotsDetect;->mStatusBarHeihgt:I

    .line 52
    return-void
.end method
