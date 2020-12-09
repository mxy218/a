.class public Lcom/android/server/power/WirelessChargerDetector;
.super Ljava/lang/Object;
.source "WirelessChargerDetector.java"


# annotations
.annotation build Lcom/android/internal/annotations/VisibleForTesting;
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final MAX_GRAVITY:D = 10.806650161743164

.field private static final MIN_GRAVITY:D = 8.806650161743164

.field private static final MIN_SAMPLES:I = 0x3

.field private static final MOVEMENT_ANGLE_COS_THRESHOLD:D

.field private static final SAMPLING_INTERVAL_MILLIS:I = 0x32

.field private static final SETTLE_TIME_MILLIS:J = 0x320L

.field private static final TAG:Ljava/lang/String; = "WirelessChargerDetector"


# instance fields
.field private mAtRest:Z

.field private mDetectionInProgress:Z

.field private mDetectionStartTime:J

.field private mFirstSampleX:F

.field private mFirstSampleY:F

.field private mFirstSampleZ:F

.field private mGravitySensor:Landroid/hardware/Sensor;

.field private final mHandler:Landroid/os/Handler;

.field private mLastSampleX:F

.field private mLastSampleY:F

.field private mLastSampleZ:F

.field private final mListener:Landroid/hardware/SensorEventListener;

.field private final mLock:Ljava/lang/Object;

.field private mMovingSamples:I

.field private mMustUpdateRestPosition:Z

.field private mPoweredWirelessly:Z

.field private mRestX:F

.field private mRestY:F

.field private mRestZ:F

.field private final mSensorManager:Landroid/hardware/SensorManager;

.field private final mSensorTimeout:Ljava/lang/Runnable;

.field private final mSuspendBlocker:Lcom/android/server/power/SuspendBlocker;

.field private mTotalSamples:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 93
    const-wide v0, 0x3fb657184ae74487L  # 0.08726646259971647

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    sput-wide v0, Lcom/android/server/power/WirelessChargerDetector;->MOVEMENT_ANGLE_COS_THRESHOLD:D

    return-void
.end method

.method public constructor <init>(Landroid/hardware/SensorManager;Lcom/android/server/power/SuspendBlocker;Landroid/os/Handler;)V
    .registers 5

    .line 144
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/power/WirelessChargerDetector;->mLock:Ljava/lang/Object;

    .line 369
    new-instance v0, Lcom/android/server/power/WirelessChargerDetector$1;

    invoke-direct {v0, p0}, Lcom/android/server/power/WirelessChargerDetector$1;-><init>(Lcom/android/server/power/WirelessChargerDetector;)V

    iput-object v0, p0, Lcom/android/server/power/WirelessChargerDetector;->mListener:Landroid/hardware/SensorEventListener;

    .line 382
    new-instance v0, Lcom/android/server/power/WirelessChargerDetector$2;

    invoke-direct {v0, p0}, Lcom/android/server/power/WirelessChargerDetector$2;-><init>(Lcom/android/server/power/WirelessChargerDetector;)V

    iput-object v0, p0, Lcom/android/server/power/WirelessChargerDetector;->mSensorTimeout:Ljava/lang/Runnable;

    .line 145
    iput-object p1, p0, Lcom/android/server/power/WirelessChargerDetector;->mSensorManager:Landroid/hardware/SensorManager;

    .line 146
    iput-object p2, p0, Lcom/android/server/power/WirelessChargerDetector;->mSuspendBlocker:Lcom/android/server/power/SuspendBlocker;

    .line 147
    iput-object p3, p0, Lcom/android/server/power/WirelessChargerDetector;->mHandler:Landroid/os/Handler;

    .line 149
    const/16 p2, 0x9

    invoke-virtual {p1, p2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/power/WirelessChargerDetector;->mGravitySensor:Landroid/hardware/Sensor;

    .line 150
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/power/WirelessChargerDetector;)Ljava/lang/Object;
    .registers 1

    .line 76
    iget-object p0, p0, Lcom/android/server/power/WirelessChargerDetector;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/server/power/WirelessChargerDetector;FFF)V
    .registers 4

    .line 76
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/power/WirelessChargerDetector;->processSampleLocked(FFF)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/power/WirelessChargerDetector;)V
    .registers 1

    .line 76
    invoke-direct {p0}, Lcom/android/server/power/WirelessChargerDetector;->finishDetectionLocked()V

    return-void
.end method

.method private clearAtRestLocked()V
    .registers 2

    .line 339
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/power/WirelessChargerDetector;->mAtRest:Z

    .line 340
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/power/WirelessChargerDetector;->mRestX:F

    .line 341
    iput v0, p0, Lcom/android/server/power/WirelessChargerDetector;->mRestY:F

    .line 342
    iput v0, p0, Lcom/android/server/power/WirelessChargerDetector;->mRestZ:F

    .line 343
    return-void
.end method

.method private finishDetectionLocked()V
    .registers 5

    .line 274
    iget-boolean v0, p0, Lcom/android/server/power/WirelessChargerDetector;->mDetectionInProgress:Z

    if-eqz v0, :cond_6b

    .line 275
    iget-object v0, p0, Lcom/android/server/power/WirelessChargerDetector;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/android/server/power/WirelessChargerDetector;->mListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 276
    iget-object v0, p0, Lcom/android/server/power/WirelessChargerDetector;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/power/WirelessChargerDetector;->mSensorTimeout:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 278
    iget-boolean v0, p0, Lcom/android/server/power/WirelessChargerDetector;->mMustUpdateRestPosition:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_64

    .line 279
    invoke-direct {p0}, Lcom/android/server/power/WirelessChargerDetector;->clearAtRestLocked()V

    .line 280
    iget v0, p0, Lcom/android/server/power/WirelessChargerDetector;->mTotalSamples:I

    const/4 v2, 0x3

    if-ge v0, v2, :cond_4f

    .line 281
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Wireless charger detector is broken.  Only received "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/power/WirelessChargerDetector;->mTotalSamples:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " samples from the gravity sensor but we need at least "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " and we expect to see about "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/16 v2, 0x10

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " on average."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "WirelessChargerDetector"

    invoke-static {v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_62

    .line 286
    :cond_4f
    iget v0, p0, Lcom/android/server/power/WirelessChargerDetector;->mMovingSamples:I

    if-nez v0, :cond_62

    .line 287
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/power/WirelessChargerDetector;->mAtRest:Z

    .line 288
    iget v0, p0, Lcom/android/server/power/WirelessChargerDetector;->mLastSampleX:F

    iput v0, p0, Lcom/android/server/power/WirelessChargerDetector;->mRestX:F

    .line 289
    iget v0, p0, Lcom/android/server/power/WirelessChargerDetector;->mLastSampleY:F

    iput v0, p0, Lcom/android/server/power/WirelessChargerDetector;->mRestY:F

    .line 290
    iget v0, p0, Lcom/android/server/power/WirelessChargerDetector;->mLastSampleZ:F

    iput v0, p0, Lcom/android/server/power/WirelessChargerDetector;->mRestZ:F

    .line 292
    :cond_62
    :goto_62
    iput-boolean v1, p0, Lcom/android/server/power/WirelessChargerDetector;->mMustUpdateRestPosition:Z

    .line 302
    :cond_64
    iput-boolean v1, p0, Lcom/android/server/power/WirelessChargerDetector;->mDetectionInProgress:Z

    .line 303
    iget-object v0, p0, Lcom/android/server/power/WirelessChargerDetector;->mSuspendBlocker:Lcom/android/server/power/SuspendBlocker;

    invoke-interface {v0}, Lcom/android/server/power/SuspendBlocker;->release()V

    .line 305
    :cond_6b
    return-void
.end method

.method private static hasMoved(FFFFFF)Z
    .registers 12

    .line 347
    mul-float v0, p0, p3

    mul-float v1, p1, p4

    add-float/2addr v0, v1

    mul-float v1, p2, p5

    add-float/2addr v0, v1

    float-to-double v0, v0

    .line 348
    mul-float/2addr p0, p0

    mul-float/2addr p1, p1

    add-float/2addr p0, p1

    mul-float/2addr p2, p2

    add-float/2addr p0, p2

    float-to-double p0, p0

    invoke-static {p0, p1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p0

    .line 349
    mul-float/2addr p3, p3

    mul-float/2addr p4, p4

    add-float/2addr p3, p4

    mul-float/2addr p5, p5

    add-float/2addr p3, p5

    float-to-double p2, p3

    invoke-static {p2, p3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p2

    .line 350
    const-wide p4, 0x40219d0140000000L  # 8.806650161743164

    cmpg-double v2, p0, p4

    const/4 v3, 0x1

    if-ltz v2, :cond_44

    const-wide v4, 0x40259d0140000000L  # 10.806650161743164

    cmpl-double v2, p0, v4

    if-gtz v2, :cond_44

    cmpg-double p4, p2, p4

    if-ltz p4, :cond_44

    cmpl-double p4, p2, v4

    if-lez p4, :cond_39

    goto :goto_44

    .line 357
    :cond_39
    mul-double/2addr p0, p2

    sget-wide p2, Lcom/android/server/power/WirelessChargerDetector;->MOVEMENT_ANGLE_COS_THRESHOLD:D

    mul-double/2addr p0, p2

    cmpg-double p0, v0, p0

    if-gez p0, :cond_42

    goto :goto_43

    :cond_42
    const/4 v3, 0x0

    .line 366
    :goto_43
    return v3

    .line 355
    :cond_44
    :goto_44
    return v3
.end method

.method private processSampleLocked(FFF)V
    .registers 12

    .line 308
    iget-boolean v0, p0, Lcom/android/server/power/WirelessChargerDetector;->mDetectionInProgress:Z

    if-eqz v0, :cond_45

    .line 309
    iput p1, p0, Lcom/android/server/power/WirelessChargerDetector;->mLastSampleX:F

    .line 310
    iput p2, p0, Lcom/android/server/power/WirelessChargerDetector;->mLastSampleY:F

    .line 311
    iput p3, p0, Lcom/android/server/power/WirelessChargerDetector;->mLastSampleZ:F

    .line 313
    iget v0, p0, Lcom/android/server/power/WirelessChargerDetector;->mTotalSamples:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/server/power/WirelessChargerDetector;->mTotalSamples:I

    .line 314
    iget v0, p0, Lcom/android/server/power/WirelessChargerDetector;->mTotalSamples:I

    if-ne v0, v1, :cond_1b

    .line 316
    iput p1, p0, Lcom/android/server/power/WirelessChargerDetector;->mFirstSampleX:F

    .line 317
    iput p2, p0, Lcom/android/server/power/WirelessChargerDetector;->mFirstSampleY:F

    .line 318
    iput p3, p0, Lcom/android/server/power/WirelessChargerDetector;->mFirstSampleZ:F

    goto :goto_2f

    .line 321
    :cond_1b
    iget v2, p0, Lcom/android/server/power/WirelessChargerDetector;->mFirstSampleX:F

    iget v3, p0, Lcom/android/server/power/WirelessChargerDetector;->mFirstSampleY:F

    iget v4, p0, Lcom/android/server/power/WirelessChargerDetector;->mFirstSampleZ:F

    move v5, p1

    move v6, p2

    move v7, p3

    invoke-static/range {v2 .. v7}, Lcom/android/server/power/WirelessChargerDetector;->hasMoved(FFFFFF)Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 322
    iget v0, p0, Lcom/android/server/power/WirelessChargerDetector;->mMovingSamples:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/server/power/WirelessChargerDetector;->mMovingSamples:I

    .line 327
    :cond_2f
    :goto_2f
    iget-boolean v0, p0, Lcom/android/server/power/WirelessChargerDetector;->mAtRest:Z

    if-eqz v0, :cond_45

    iget v1, p0, Lcom/android/server/power/WirelessChargerDetector;->mRestX:F

    iget v2, p0, Lcom/android/server/power/WirelessChargerDetector;->mRestY:F

    iget v3, p0, Lcom/android/server/power/WirelessChargerDetector;->mRestZ:F

    move v4, p1

    move v5, p2

    move v6, p3

    invoke-static/range {v1 .. v6}, Lcom/android/server/power/WirelessChargerDetector;->hasMoved(FFFFFF)Z

    move-result p1

    if-eqz p1, :cond_45

    .line 333
    invoke-direct {p0}, Lcom/android/server/power/WirelessChargerDetector;->clearAtRestLocked()V

    .line 336
    :cond_45
    return-void
.end method

.method private startDetectionLocked()V
    .registers 5

    .line 257
    iget-boolean v0, p0, Lcom/android/server/power/WirelessChargerDetector;->mDetectionInProgress:Z

    if-nez v0, :cond_3a

    iget-object v0, p0, Lcom/android/server/power/WirelessChargerDetector;->mGravitySensor:Landroid/hardware/Sensor;

    if-eqz v0, :cond_3a

    .line 258
    iget-object v1, p0, Lcom/android/server/power/WirelessChargerDetector;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v2, p0, Lcom/android/server/power/WirelessChargerDetector;->mListener:Landroid/hardware/SensorEventListener;

    const v3, 0xc350

    invoke-virtual {v1, v2, v0, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    move-result v0

    if-eqz v0, :cond_3a

    .line 260
    iget-object v0, p0, Lcom/android/server/power/WirelessChargerDetector;->mSuspendBlocker:Lcom/android/server/power/SuspendBlocker;

    invoke-interface {v0}, Lcom/android/server/power/SuspendBlocker;->acquire()V

    .line 261
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/power/WirelessChargerDetector;->mDetectionInProgress:Z

    .line 262
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/power/WirelessChargerDetector;->mDetectionStartTime:J

    .line 263
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/server/power/WirelessChargerDetector;->mTotalSamples:I

    .line 264
    iput v1, p0, Lcom/android/server/power/WirelessChargerDetector;->mMovingSamples:I

    .line 266
    iget-object v1, p0, Lcom/android/server/power/WirelessChargerDetector;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/server/power/WirelessChargerDetector;->mSensorTimeout:Ljava/lang/Runnable;

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;Ljava/lang/Runnable;)Landroid/os/Message;

    move-result-object v1

    .line 267
    invoke-virtual {v1, v0}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 268
    iget-object v0, p0, Lcom/android/server/power/WirelessChargerDetector;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x320

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 271
    :cond_3a
    return-void
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;)V
    .registers 8

    .line 153
    iget-object v0, p0, Lcom/android/server/power/WirelessChargerDetector;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 154
    :try_start_3
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 155
    const-string v1, "Wireless Charger Detector State:"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 156
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mGravitySensor="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/power/WirelessChargerDetector;->mGravitySensor:Landroid/hardware/Sensor;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 157
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mPoweredWirelessly="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/power/WirelessChargerDetector;->mPoweredWirelessly:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 158
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mAtRest="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/power/WirelessChargerDetector;->mAtRest:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 159
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mRestX="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/power/WirelessChargerDetector;->mRestX:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ", mRestY="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/power/WirelessChargerDetector;->mRestY:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ", mRestZ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/power/WirelessChargerDetector;->mRestZ:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 160
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mDetectionInProgress="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/power/WirelessChargerDetector;->mDetectionInProgress:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 161
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mDetectionStartTime="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/android/server/power/WirelessChargerDetector;->mDetectionStartTime:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_a2

    const-string v2, "0 (never)"

    goto :goto_a8

    .line 162
    :cond_a2
    iget-wide v2, p0, Lcom/android/server/power/WirelessChargerDetector;->mDetectionStartTime:J

    invoke-static {v2, v3}, Landroid/util/TimeUtils;->formatUptime(J)Ljava/lang/String;

    move-result-object v2

    :goto_a8
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 161
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 163
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mMustUpdateRestPosition="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/power/WirelessChargerDetector;->mMustUpdateRestPosition:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 164
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mTotalSamples="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/power/WirelessChargerDetector;->mTotalSamples:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 165
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mMovingSamples="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/power/WirelessChargerDetector;->mMovingSamples:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 166
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mFirstSampleX="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/power/WirelessChargerDetector;->mFirstSampleX:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ", mFirstSampleY="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/power/WirelessChargerDetector;->mFirstSampleY:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ", mFirstSampleZ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/power/WirelessChargerDetector;->mFirstSampleZ:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 168
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mLastSampleX="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/power/WirelessChargerDetector;->mLastSampleX:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ", mLastSampleY="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/power/WirelessChargerDetector;->mLastSampleY:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ", mLastSampleZ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/power/WirelessChargerDetector;->mLastSampleZ:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 170
    monitor-exit v0

    .line 171
    return-void

    .line 170
    :catchall_14a
    move-exception p1

    monitor-exit v0
    :try_end_14c
    .catchall {:try_start_3 .. :try_end_14c} :catchall_14a

    throw p1
.end method

.method public update(ZI)Z
    .registers 8

    .line 220
    iget-object v0, p0, Lcom/android/server/power/WirelessChargerDetector;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 221
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/power/WirelessChargerDetector;->mPoweredWirelessly:Z

    .line 223
    const/4 v2, 0x4

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz p1, :cond_14

    if-ne p2, v2, :cond_14

    .line 226
    iput-boolean v3, p0, Lcom/android/server/power/WirelessChargerDetector;->mPoweredWirelessly:Z

    .line 227
    iput-boolean v3, p0, Lcom/android/server/power/WirelessChargerDetector;->mMustUpdateRestPosition:Z

    .line 228
    invoke-direct {p0}, Lcom/android/server/power/WirelessChargerDetector;->startDetectionLocked()V

    goto :goto_27

    .line 232
    :cond_14
    iput-boolean v4, p0, Lcom/android/server/power/WirelessChargerDetector;->mPoweredWirelessly:Z

    .line 233
    iget-boolean p1, p0, Lcom/android/server/power/WirelessChargerDetector;->mAtRest:Z

    if-eqz p1, :cond_27

    .line 234
    if-eqz p2, :cond_24

    if-eq p2, v2, :cond_24

    .line 237
    iput-boolean v4, p0, Lcom/android/server/power/WirelessChargerDetector;->mMustUpdateRestPosition:Z

    .line 238
    invoke-direct {p0}, Lcom/android/server/power/WirelessChargerDetector;->clearAtRestLocked()V

    goto :goto_27

    .line 244
    :cond_24
    invoke-direct {p0}, Lcom/android/server/power/WirelessChargerDetector;->startDetectionLocked()V

    .line 252
    :cond_27
    :goto_27
    iget-boolean p1, p0, Lcom/android/server/power/WirelessChargerDetector;->mPoweredWirelessly:Z

    if-eqz p1, :cond_32

    if-nez v1, :cond_32

    iget-boolean p1, p0, Lcom/android/server/power/WirelessChargerDetector;->mAtRest:Z

    if-nez p1, :cond_32

    goto :goto_33

    :cond_32
    move v3, v4

    :goto_33
    monitor-exit v0

    return v3

    .line 253
    :catchall_35
    move-exception p1

    monitor-exit v0
    :try_end_37
    .catchall {:try_start_3 .. :try_end_37} :catchall_35

    throw p1
.end method

.method public writeToProto(Landroid/util/proto/ProtoOutputStream;J)V
    .registers 16

    .line 174
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide p2

    .line 175
    iget-object v0, p0, Lcom/android/server/power/WirelessChargerDetector;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 176
    const-wide v1, 0x10800000001L

    :try_start_c
    iget-boolean v3, p0, Lcom/android/server/power/WirelessChargerDetector;->mPoweredWirelessly:Z

    invoke-virtual {p1, v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 177
    const-wide v1, 0x10800000002L

    iget-boolean v3, p0, Lcom/android/server/power/WirelessChargerDetector;->mAtRest:Z

    invoke-virtual {p1, v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 179
    const-wide v1, 0x10b00000003L

    invoke-virtual {p1, v1, v2}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v1

    .line 180
    iget v3, p0, Lcom/android/server/power/WirelessChargerDetector;->mRestX:F

    const-wide v4, 0x10200000001L

    invoke-virtual {p1, v4, v5, v3}, Landroid/util/proto/ProtoOutputStream;->write(JF)V

    .line 181
    iget v3, p0, Lcom/android/server/power/WirelessChargerDetector;->mRestY:F

    const-wide v6, 0x10200000002L

    invoke-virtual {p1, v6, v7, v3}, Landroid/util/proto/ProtoOutputStream;->write(JF)V

    .line 182
    iget v3, p0, Lcom/android/server/power/WirelessChargerDetector;->mRestZ:F

    const-wide v8, 0x10200000003L

    invoke-virtual {p1, v8, v9, v3}, Landroid/util/proto/ProtoOutputStream;->write(JF)V

    .line 183
    invoke-virtual {p1, v1, v2}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 185
    const-wide v1, 0x10800000004L

    iget-boolean v3, p0, Lcom/android/server/power/WirelessChargerDetector;->mDetectionInProgress:Z

    invoke-virtual {p1, v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 187
    const-wide v1, 0x10300000005L

    iget-wide v10, p0, Lcom/android/server/power/WirelessChargerDetector;->mDetectionStartTime:J

    invoke-virtual {p1, v1, v2, v10, v11}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 188
    const-wide v1, 0x10800000006L

    iget-boolean v3, p0, Lcom/android/server/power/WirelessChargerDetector;->mMustUpdateRestPosition:Z

    invoke-virtual {p1, v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 191
    const-wide v1, 0x10500000007L

    iget v3, p0, Lcom/android/server/power/WirelessChargerDetector;->mTotalSamples:I

    invoke-virtual {p1, v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 192
    const-wide v1, 0x10500000008L

    iget v3, p0, Lcom/android/server/power/WirelessChargerDetector;->mMovingSamples:I

    invoke-virtual {p1, v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 194
    const-wide v1, 0x10b00000009L

    .line 195
    invoke-virtual {p1, v1, v2}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v1

    .line 196
    iget v3, p0, Lcom/android/server/power/WirelessChargerDetector;->mFirstSampleX:F

    invoke-virtual {p1, v4, v5, v3}, Landroid/util/proto/ProtoOutputStream;->write(JF)V

    .line 197
    iget v3, p0, Lcom/android/server/power/WirelessChargerDetector;->mFirstSampleY:F

    invoke-virtual {p1, v6, v7, v3}, Landroid/util/proto/ProtoOutputStream;->write(JF)V

    .line 198
    iget v3, p0, Lcom/android/server/power/WirelessChargerDetector;->mFirstSampleZ:F

    invoke-virtual {p1, v8, v9, v3}, Landroid/util/proto/ProtoOutputStream;->write(JF)V

    .line 199
    invoke-virtual {p1, v1, v2}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 201
    const-wide v1, 0x10b0000000aL

    .line 202
    invoke-virtual {p1, v1, v2}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v1

    .line 203
    iget v3, p0, Lcom/android/server/power/WirelessChargerDetector;->mLastSampleX:F

    invoke-virtual {p1, v4, v5, v3}, Landroid/util/proto/ProtoOutputStream;->write(JF)V

    .line 204
    iget v3, p0, Lcom/android/server/power/WirelessChargerDetector;->mLastSampleY:F

    invoke-virtual {p1, v6, v7, v3}, Landroid/util/proto/ProtoOutputStream;->write(JF)V

    .line 205
    iget v3, p0, Lcom/android/server/power/WirelessChargerDetector;->mLastSampleZ:F

    invoke-virtual {p1, v8, v9, v3}, Landroid/util/proto/ProtoOutputStream;->write(JF)V

    .line 206
    invoke-virtual {p1, v1, v2}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 207
    monitor-exit v0
    :try_end_ae
    .catchall {:try_start_c .. :try_end_ae} :catchall_b2

    .line 208
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 209
    return-void

    .line 207
    :catchall_b2
    move-exception p1

    :try_start_b3
    monitor-exit v0
    :try_end_b4
    .catchall {:try_start_b3 .. :try_end_b4} :catchall_b2

    throw p1
.end method
