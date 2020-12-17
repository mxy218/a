.class final Lcom/android/server/audio/RotationHelper$AudioOrientationListener;
.super Ljava/lang/Object;
.source "RotationHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/audio/RotationHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "AudioOrientationListener"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/audio/RotationHelper$AudioOrientationListener$SensorEventListenerImpl;
    }
.end annotation


# static fields
.field private static mClassName:Ljava/lang/String; = null

.field private static mEnabled:Z = false

.field private static final mLock:Ljava/lang/Object;

.field private static final mRate:I = 0x2

.field private static mSensor:Landroid/hardware/Sensor; = null

.field private static mSensorEventListener:Landroid/hardware/SensorEventListener; = null

.field private static mSensorManager:Landroid/hardware/SystemSensorManager; = null

.field private static final sOverlapDegree:I = 0xa


# instance fields
.field private mHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 204
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/audio/RotationHelper$AudioOrientationListener;->mLock:Ljava/lang/Object;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .registers 5
    .param p1, "context"  # Landroid/content/Context;
    .param p2, "handler"  # Landroid/os/Handler;

    .line 209
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 211
    iput-object p2, p0, Lcom/android/server/audio/RotationHelper$AudioOrientationListener;->mHandler:Landroid/os/Handler;

    .line 212
    const-string/jumbo v0, "sensor"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SystemSensorManager;

    sput-object v0, Lcom/android/server/audio/RotationHelper$AudioOrientationListener;->mSensorManager:Landroid/hardware/SystemSensorManager;

    .line 213
    sget-object v0, Lcom/android/server/audio/RotationHelper$AudioOrientationListener;->mSensorManager:Landroid/hardware/SystemSensorManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/hardware/SystemSensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    sput-object v0, Lcom/android/server/audio/RotationHelper$AudioOrientationListener;->mSensor:Landroid/hardware/Sensor;

    .line 214
    sget-object v0, Lcom/android/server/audio/RotationHelper$AudioOrientationListener;->mSensor:Landroid/hardware/Sensor;

    if-eqz v0, :cond_4c

    .line 216
    new-instance v0, Lcom/android/server/audio/RotationHelper$AudioOrientationListener$SensorEventListenerImpl;

    invoke-direct {v0, p1}, Lcom/android/server/audio/RotationHelper$AudioOrientationListener$SensorEventListenerImpl;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/server/audio/RotationHelper$AudioOrientationListener;->mSensorEventListener:Landroid/hardware/SensorEventListener;

    .line 217
    sget-object v0, Lcom/android/server/audio/RotationHelper$AudioOrientationListener;->mSensorEventListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getEnclosingClass()Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_3f

    .line 218
    sget-object v0, Lcom/android/server/audio/RotationHelper$AudioOrientationListener;->mSensorEventListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getEnclosingClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_49

    .line 219
    :cond_3f
    sget-object v0, Lcom/android/server/audio/RotationHelper$AudioOrientationListener;->mSensorEventListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    :goto_49
    sput-object v0, Lcom/android/server/audio/RotationHelper$AudioOrientationListener;->mClassName:Ljava/lang/String;

    goto :goto_53

    .line 221
    :cond_4c
    const-string v0, "AudioService.RotationHelper"

    const-string v1, "AudioOrientationListener: sensor(TYPE_ACCELEROMETER) is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    :goto_53
    return-void
.end method

.method static synthetic access$800()Ljava/lang/Object;
    .registers 1

    .line 197
    sget-object v0, Lcom/android/server/audio/RotationHelper$AudioOrientationListener;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method public static onProposedRotationChanged(I)V
    .registers 2
    .param p0, "rotation"  # I

    .line 226
    invoke-static {}, Lcom/android/server/audio/RotationHelper;->access$600()I

    move-result v0

    if-ne v0, p0, :cond_7

    return-void

    .line 228
    :cond_7
    invoke-static {p0}, Lcom/android/server/audio/RotationHelper;->access$602(I)I

    .line 229
    invoke-static {}, Lcom/android/server/audio/RotationHelper;->updateOrientation()V

    .line 230
    return-void
.end method


# virtual methods
.method public disable()V
    .registers 4

    .line 255
    sget-object v0, Lcom/android/server/audio/RotationHelper$AudioOrientationListener;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 256
    :try_start_3
    sget-object v1, Lcom/android/server/audio/RotationHelper$AudioOrientationListener;->mSensor:Landroid/hardware/Sensor;

    if-nez v1, :cond_10

    .line 257
    const-string v1, "AudioService.RotationHelper"

    const-string v2, "[AUDIO_ROTATION] Cannot detect sensors. Invalid disable"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    monitor-exit v0

    return-void

    .line 260
    :cond_10
    sget-boolean v1, Lcom/android/server/audio/RotationHelper$AudioOrientationListener;->mEnabled:Z

    const/4 v2, 0x1

    if-ne v1, v2, :cond_26

    .line 261
    const-string v1, "AudioService.RotationHelper"

    const-string v2, "[AUDIO_ROTATION] AudioOrientationListener disabled"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    sget-object v1, Lcom/android/server/audio/RotationHelper$AudioOrientationListener;->mSensorManager:Landroid/hardware/SystemSensorManager;

    sget-object v2, Lcom/android/server/audio/RotationHelper$AudioOrientationListener;->mSensorEventListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v1, v2}, Landroid/hardware/SystemSensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 263
    const/4 v1, 0x0

    sput-boolean v1, Lcom/android/server/audio/RotationHelper$AudioOrientationListener;->mEnabled:Z

    .line 265
    :cond_26
    monitor-exit v0

    .line 266
    return-void

    .line 265
    :catchall_28
    move-exception v1

    monitor-exit v0
    :try_end_2a
    .catchall {:try_start_3 .. :try_end_2a} :catchall_28

    throw v1
.end method

.method public enable()V
    .registers 7

    .line 241
    sget-object v0, Lcom/android/server/audio/RotationHelper$AudioOrientationListener;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 242
    :try_start_3
    sget-object v1, Lcom/android/server/audio/RotationHelper$AudioOrientationListener;->mSensor:Landroid/hardware/Sensor;

    if-nez v1, :cond_10

    .line 243
    const-string v1, "AudioService.RotationHelper"

    const-string v2, "[AUDIO_ROTATION] Cannot detect sensors. Not enabled"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    monitor-exit v0

    return-void

    .line 246
    :cond_10
    sget-boolean v1, Lcom/android/server/audio/RotationHelper$AudioOrientationListener;->mEnabled:Z

    if-nez v1, :cond_2a

    .line 247
    const-string v1, "AudioService.RotationHelper"

    const-string v2, "[AUDIO_ROTATION] AudioOrientationListener enabled"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    sget-object v1, Lcom/android/server/audio/RotationHelper$AudioOrientationListener;->mSensorManager:Landroid/hardware/SystemSensorManager;

    sget-object v2, Lcom/android/server/audio/RotationHelper$AudioOrientationListener;->mSensorEventListener:Landroid/hardware/SensorEventListener;

    sget-object v3, Lcom/android/server/audio/RotationHelper$AudioOrientationListener;->mSensor:Landroid/hardware/Sensor;

    const/4 v4, 0x2

    iget-object v5, p0, Lcom/android/server/audio/RotationHelper$AudioOrientationListener;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/hardware/SystemSensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;)Z

    .line 249
    const/4 v1, 0x1

    sput-boolean v1, Lcom/android/server/audio/RotationHelper$AudioOrientationListener;->mEnabled:Z

    .line 251
    :cond_2a
    monitor-exit v0

    .line 252
    return-void

    .line 251
    :catchall_2c
    move-exception v1

    monitor-exit v0
    :try_end_2e
    .catchall {:try_start_3 .. :try_end_2e} :catchall_2c

    throw v1
.end method

.method public getClassName()Ljava/lang/String;
    .registers 2

    .line 237
    sget-object v0, Lcom/android/server/audio/RotationHelper$AudioOrientationListener;->mClassName:Ljava/lang/String;

    return-object v0
.end method

.method public getSensorManager()Landroid/hardware/SystemSensorManager;
    .registers 2

    .line 233
    sget-object v0, Lcom/android/server/audio/RotationHelper$AudioOrientationListener;->mSensorManager:Landroid/hardware/SystemSensorManager;

    return-object v0
.end method
