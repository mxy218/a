.class Lcom/android/server/VibratorService$VibrateThread;
.super Ljava/lang/Thread;
.source "VibratorService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/VibratorService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "VibrateThread"
.end annotation


# instance fields
.field private final mAttrs:Landroid/media/AudioAttributes;

.field private mForceStop:Z

.field private final mUid:I

.field private final mWaveform:Landroid/os/VibrationEffect$Waveform;

.field final synthetic this$0:Lcom/android/server/VibratorService;


# direct methods
.method constructor <init>(Lcom/android/server/VibratorService;Landroid/os/VibrationEffect$Waveform;ILandroid/media/AudioAttributes;)V
    .registers 5

    .line 1253
    iput-object p1, p0, Lcom/android/server/VibratorService$VibrateThread;->this$0:Lcom/android/server/VibratorService;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 1254
    iput-object p2, p0, Lcom/android/server/VibratorService$VibrateThread;->mWaveform:Landroid/os/VibrationEffect$Waveform;

    .line 1255
    iput p3, p0, Lcom/android/server/VibratorService$VibrateThread;->mUid:I

    .line 1256
    iput-object p4, p0, Lcom/android/server/VibratorService$VibrateThread;->mAttrs:Landroid/media/AudioAttributes;

    .line 1257
    invoke-static {p1}, Lcom/android/server/VibratorService;->access$1000(Lcom/android/server/VibratorService;)Landroid/os/WorkSource;

    move-result-object p2

    invoke-virtual {p2, p3}, Landroid/os/WorkSource;->set(I)V

    .line 1258
    invoke-static {p1}, Lcom/android/server/VibratorService;->access$1100(Lcom/android/server/VibratorService;)Landroid/os/PowerManager$WakeLock;

    move-result-object p2

    invoke-static {p1}, Lcom/android/server/VibratorService;->access$1000(Lcom/android/server/VibratorService;)Landroid/os/WorkSource;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/os/PowerManager$WakeLock;->setWorkSource(Landroid/os/WorkSource;)V

    .line 1259
    return-void
.end method

.method private delayLocked(J)J
    .registers 12

    .line 1262
    const-wide/32 v0, 0x800000

    const-string v2, "delayLocked"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1264
    nop

    .line 1265
    const-wide/16 v2, 0x0

    cmp-long v4, p1, v2

    if-lez v4, :cond_34

    .line 1266
    :try_start_f
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4
    :try_end_13
    .catchall {:try_start_f .. :try_end_13} :catchall_2f

    add-long/2addr v4, p1

    move-wide v6, p1

    .line 1269
    :cond_15
    :try_start_15
    invoke-virtual {p0, v6, v7}, Ljava/lang/Object;->wait(J)V
    :try_end_18
    .catch Ljava/lang/InterruptedException; {:try_start_15 .. :try_end_18} :catch_19
    .catchall {:try_start_15 .. :try_end_18} :catchall_2f

    .line 1271
    :goto_18
    goto :goto_1b

    :catch_19
    move-exception v8

    goto :goto_18

    .line 1272
    :goto_1b
    :try_start_1b
    iget-boolean v8, p0, Lcom/android/server/VibratorService$VibrateThread;->mForceStop:Z

    if-eqz v8, :cond_20

    .line 1273
    goto :goto_2a

    .line 1275
    :cond_20
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6
    :try_end_24
    .catchall {:try_start_1b .. :try_end_24} :catchall_2f

    sub-long v6, v4, v6

    .line 1276
    cmp-long v8, v6, v2

    if-gtz v8, :cond_15

    .line 1277
    :goto_2a
    sub-long/2addr p1, v6

    .line 1281
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 1277
    return-wide p1

    .line 1281
    :catchall_2f
    move-exception p1

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    throw p1

    .line 1279
    :cond_34
    nop

    .line 1281
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 1279
    return-wide v2
.end method

.method private getTotalOnDuration([J[III)J
    .registers 12

    .line 1367
    nop

    .line 1368
    const-wide/16 v0, 0x0

    move v2, p4

    move p4, p3

    .line 1369
    :cond_5
    aget v3, p2, p4

    if-eqz v3, :cond_1f

    .line 1370
    add-int/lit8 v3, p4, 0x1

    aget-wide v4, p1, p4

    add-long/2addr v0, v4

    .line 1371
    array-length p4, p1

    if-lt v3, p4, :cond_19

    .line 1372
    if-ltz v2, :cond_1f

    .line 1373
    nop

    .line 1375
    const/4 p4, -0x1

    move v6, v2

    move v2, p4

    move p4, v6

    goto :goto_1a

    .line 1371
    :cond_19
    move p4, v3

    .line 1380
    :goto_1a
    if-ne p4, p3, :cond_5

    .line 1381
    const-wide/16 p1, 0x3e8

    return-wide p1

    .line 1384
    :cond_1f
    return-wide v0
.end method


# virtual methods
.method public cancel()V
    .registers 3

    .line 1355
    monitor-enter p0

    .line 1356
    :try_start_1
    iget-object v0, p0, Lcom/android/server/VibratorService$VibrateThread;->this$0:Lcom/android/server/VibratorService;

    invoke-static {v0}, Lcom/android/server/VibratorService;->access$1400(Lcom/android/server/VibratorService;)Lcom/android/server/VibratorService$VibrateThread;

    move-result-object v0

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/server/VibratorService$VibrateThread;->mForceStop:Z

    .line 1357
    iget-object v0, p0, Lcom/android/server/VibratorService$VibrateThread;->this$0:Lcom/android/server/VibratorService;

    invoke-static {v0}, Lcom/android/server/VibratorService;->access$1400(Lcom/android/server/VibratorService;)Lcom/android/server/VibratorService$VibrateThread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 1358
    monitor-exit p0

    .line 1359
    return-void

    .line 1358
    :catchall_15
    move-exception v0

    monitor-exit p0
    :try_end_17
    .catchall {:try_start_1 .. :try_end_17} :catchall_15

    throw v0
.end method

.method public playWaveform()Z
    .registers 23

    .line 1304
    move-object/from16 v1, p0

    const-wide/32 v2, 0x800000

    const-string/jumbo v0, "playWaveform"

    invoke-static {v2, v3, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1306
    :try_start_b
    monitor-enter p0
    :try_end_c
    .catchall {:try_start_b .. :try_end_c} :catchall_90

    .line 1307
    :try_start_c
    iget-object v0, v1, Lcom/android/server/VibratorService$VibrateThread;->mWaveform:Landroid/os/VibrationEffect$Waveform;

    invoke-virtual {v0}, Landroid/os/VibrationEffect$Waveform;->getTimings()[J

    move-result-object v0

    .line 1308
    iget-object v4, v1, Lcom/android/server/VibratorService$VibrateThread;->mWaveform:Landroid/os/VibrationEffect$Waveform;

    invoke-virtual {v4}, Landroid/os/VibrationEffect$Waveform;->getAmplitudes()[I

    move-result-object v4

    .line 1309
    array-length v5, v0

    .line 1310
    iget-object v6, v1, Lcom/android/server/VibratorService$VibrateThread;->mWaveform:Landroid/os/VibrationEffect$Waveform;

    invoke-virtual {v6}, Landroid/os/VibrationEffect$Waveform;->getRepeatIndex()I

    move-result v6

    .line 1312
    nop

    .line 1313
    const-wide/16 v8, 0x0

    move-wide v11, v8

    const/4 v10, 0x0

    .line 1314
    :goto_24
    iget-boolean v13, v1, Lcom/android/server/VibratorService$VibrateThread;->mForceStop:Z

    if-nez v13, :cond_7b

    .line 1315
    if-ge v10, v5, :cond_71

    .line 1316
    aget v13, v4, v10

    .line 1317
    add-int/lit8 v20, v10, 0x1

    aget-wide v14, v0, v10

    .line 1318
    cmp-long v10, v14, v8

    if-gtz v10, :cond_37

    .line 1319
    move/from16 v10, v20

    goto :goto_24

    .line 1321
    :cond_37
    if-eqz v13, :cond_5d

    .line 1322
    cmp-long v10, v11, v8

    if-gtz v10, :cond_56

    .line 1329
    add-int/lit8 v10, v20, -0x1

    invoke-direct {v1, v0, v4, v10, v6}, Lcom/android/server/VibratorService$VibrateThread;->getTotalOnDuration([J[III)J

    move-result-wide v10

    .line 1331
    iget-object v12, v1, Lcom/android/server/VibratorService$VibrateThread;->this$0:Lcom/android/server/VibratorService;

    iget v7, v1, Lcom/android/server/VibratorService$VibrateThread;->mUid:I

    iget-object v8, v1, Lcom/android/server/VibratorService$VibrateThread;->mAttrs:Landroid/media/AudioAttributes;

    move-wide v2, v14

    move-object v14, v12

    move-wide v15, v10

    move/from16 v17, v13

    move/from16 v18, v7

    move-object/from16 v19, v8

    invoke-static/range {v14 .. v19}, Lcom/android/server/VibratorService;->access$1200(Lcom/android/server/VibratorService;JIILandroid/media/AudioAttributes;)V

    goto :goto_5f

    .line 1333
    :cond_56
    move-wide v2, v14

    iget-object v7, v1, Lcom/android/server/VibratorService$VibrateThread;->this$0:Lcom/android/server/VibratorService;

    invoke-static {v7, v13}, Lcom/android/server/VibratorService;->access$1300(Lcom/android/server/VibratorService;I)V

    goto :goto_5e

    .line 1321
    :cond_5d
    move-wide v2, v14

    .line 1337
    :goto_5e
    move-wide v10, v11

    :goto_5f
    invoke-direct {v1, v2, v3}, Lcom/android/server/VibratorService$VibrateThread;->delayLocked(J)J

    move-result-wide v2

    .line 1338
    if-eqz v13, :cond_68

    .line 1339
    sub-long/2addr v10, v2

    move-wide v11, v10

    goto :goto_69

    .line 1338
    :cond_68
    move-wide v11, v10

    .line 1341
    :goto_69
    move/from16 v10, v20

    const-wide/32 v2, 0x800000

    const-wide/16 v8, 0x0

    goto :goto_24

    :cond_71
    if-gez v6, :cond_74

    .line 1342
    goto :goto_7b

    .line 1344
    :cond_74
    move v10, v6

    const-wide/32 v2, 0x800000

    const-wide/16 v8, 0x0

    goto :goto_24

    .line 1347
    :cond_7b
    :goto_7b
    iget-boolean v0, v1, Lcom/android/server/VibratorService$VibrateThread;->mForceStop:Z

    if-nez v0, :cond_83

    const/4 v7, 0x1

    move/from16 v21, v7

    goto :goto_85

    :cond_83
    const/16 v21, 0x0

    :goto_85
    monitor-exit p0
    :try_end_86
    .catchall {:try_start_c .. :try_end_86} :catchall_8d

    .line 1350
    const-wide/32 v1, 0x800000

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 1347
    return v21

    .line 1348
    :catchall_8d
    move-exception v0

    :try_start_8e
    monitor-exit p0
    :try_end_8f
    .catchall {:try_start_8e .. :try_end_8f} :catchall_8d

    :try_start_8f
    throw v0
    :try_end_90
    .catchall {:try_start_8f .. :try_end_90} :catchall_90

    .line 1350
    :catchall_90
    move-exception v0

    const-wide/32 v1, 0x800000

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    throw v0
.end method

.method public run()V
    .registers 3

    .line 1286
    const/4 v0, -0x8

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 1287
    iget-object v0, p0, Lcom/android/server/VibratorService$VibrateThread;->this$0:Lcom/android/server/VibratorService;

    invoke-static {v0}, Lcom/android/server/VibratorService;->access$1100(Lcom/android/server/VibratorService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 1289
    :try_start_d
    invoke-virtual {p0}, Lcom/android/server/VibratorService$VibrateThread;->playWaveform()Z

    move-result v0

    .line 1290
    if-eqz v0, :cond_18

    .line 1291
    iget-object v0, p0, Lcom/android/server/VibratorService$VibrateThread;->this$0:Lcom/android/server/VibratorService;

    invoke-virtual {v0}, Lcom/android/server/VibratorService;->onVibrationFinished()V
    :try_end_18
    .catchall {:try_start_d .. :try_end_18} :catchall_23

    .line 1294
    :cond_18
    iget-object v0, p0, Lcom/android/server/VibratorService$VibrateThread;->this$0:Lcom/android/server/VibratorService;

    invoke-static {v0}, Lcom/android/server/VibratorService;->access$1100(Lcom/android/server/VibratorService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1295
    nop

    .line 1296
    return-void

    .line 1294
    :catchall_23
    move-exception v0

    iget-object v1, p0, Lcom/android/server/VibratorService$VibrateThread;->this$0:Lcom/android/server/VibratorService;

    invoke-static {v1}, Lcom/android/server/VibratorService;->access$1100(Lcom/android/server/VibratorService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    throw v0
.end method
