.class public final Lcom/android/server/am/BatteryStatsService;
.super Lcom/android/internal/app/IBatteryStats$Stub;
.source "BatteryStatsService.java"

# interfaces
.implements Landroid/os/PowerManagerInternal$LowPowerModeListener;
.implements Lcom/android/internal/os/BatteryStatsImpl$PlatformIdleStateCallback;
.implements Lcom/android/internal/os/BatteryStatsImpl$RailEnergyDataCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/BatteryStatsService$WakeupReasonThread;,
        Lcom/android/server/am/BatteryStatsService$LocalService;
    }
.end annotation


# static fields
.field static final DBG:Z = false

.field private static final MAX_LOW_POWER_STATS_SIZE:I = 0x800

.field static final TAG:Ljava/lang/String; = "BatteryStatsService"

.field private static sService:Lcom/android/internal/app/IBatteryStats;


# instance fields
.field mBatteryLevelStats:Lcom/android/internal/os/BatteryLevelStats;

.field private final mContext:Landroid/content/Context;

.field private mDecoderStat:Ljava/nio/charset/CharsetDecoder;

.field private mMode:I

.field final mStats:Lcom/android/internal/os/BatteryStatsImpl;

.field private final mUserManagerUserInfoProvider:Lcom/android/internal/os/BatteryStatsImpl$UserInfoProvider;

.field private mUtf16BufferStat:Ljava/nio/CharBuffer;

.field private mUtf8BufferStat:Ljava/nio/ByteBuffer;

.field private final mWorker:Lcom/android/server/am/BatteryExternalStatsWorker;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/io/File;Landroid/os/Handler;)V
    .registers 11
    .param p1, "context"  # Landroid/content/Context;
    .param p2, "systemDir"  # Ljava/io/File;
    .param p3, "handler"  # Landroid/os/Handler;

    .line 193
    invoke-direct {p0}, Lcom/android/internal/app/IBatteryStats$Stub;-><init>()V

    .line 111
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 112
    invoke-virtual {v0}, Ljava/nio/charset/Charset;->newDecoder()Ljava/nio/charset/CharsetDecoder;

    move-result-object v0

    sget-object v1, Ljava/nio/charset/CodingErrorAction;->REPLACE:Ljava/nio/charset/CodingErrorAction;

    .line 113
    invoke-virtual {v0, v1}, Ljava/nio/charset/CharsetDecoder;->onMalformedInput(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetDecoder;

    move-result-object v0

    sget-object v1, Ljava/nio/charset/CodingErrorAction;->REPLACE:Ljava/nio/charset/CodingErrorAction;

    .line 114
    invoke-virtual {v0, v1}, Ljava/nio/charset/CharsetDecoder;->onUnmappableCharacter(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetDecoder;

    move-result-object v0

    .line 115
    const-string v1, "?"

    invoke-virtual {v0, v1}, Ljava/nio/charset/CharsetDecoder;->replaceWith(Ljava/lang/String;)Ljava/nio/charset/CharsetDecoder;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mDecoderStat:Ljava/nio/charset/CharsetDecoder;

    .line 116
    const/16 v0, 0x800

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mUtf8BufferStat:Ljava/nio/ByteBuffer;

    .line 117
    invoke-static {v0}, Ljava/nio/CharBuffer;->allocate(I)Ljava/nio/CharBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mUtf16BufferStat:Ljava/nio/CharBuffer;

    .line 123
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/am/BatteryStatsService;->mMode:I

    .line 195
    iput-object p1, p0, Lcom/android/server/am/BatteryStatsService;->mContext:Landroid/content/Context;

    .line 196
    new-instance v0, Lcom/android/server/am/BatteryStatsService$1;

    invoke-direct {v0, p0}, Lcom/android/server/am/BatteryStatsService$1;-><init>(Lcom/android/server/am/BatteryStatsService;)V

    iput-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mUserManagerUserInfoProvider:Lcom/android/internal/os/BatteryStatsImpl$UserInfoProvider;

    .line 206
    new-instance v0, Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v6, p0, Lcom/android/server/am/BatteryStatsService;->mUserManagerUserInfoProvider:Lcom/android/internal/os/BatteryStatsImpl$UserInfoProvider;

    move-object v1, v0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p0

    move-object v5, p0

    invoke-direct/range {v1 .. v6}, Lcom/android/internal/os/BatteryStatsImpl;-><init>(Ljava/io/File;Landroid/os/Handler;Lcom/android/internal/os/BatteryStatsImpl$PlatformIdleStateCallback;Lcom/android/internal/os/BatteryStatsImpl$RailEnergyDataCallback;Lcom/android/internal/os/BatteryStatsImpl$UserInfoProvider;)V

    iput-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    .line 208
    new-instance v0, Lcom/android/server/am/BatteryExternalStatsWorker;

    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-direct {v0, p1, v1}, Lcom/android/server/am/BatteryExternalStatsWorker;-><init>(Landroid/content/Context;Lcom/android/internal/os/BatteryStatsImpl;)V

    iput-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mWorker:Lcom/android/server/am/BatteryExternalStatsWorker;

    .line 209
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mWorker:Lcom/android/server/am/BatteryExternalStatsWorker;

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl;->setExternalStatsSyncLocked(Lcom/android/internal/os/BatteryStatsImpl$ExternalStatsSync;)V

    .line 210
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e009c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-long v1, v1

    const-wide/16 v3, 0x3e8

    mul-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/os/BatteryStatsImpl;->setRadioScanningTimeoutLocked(J)V

    .line 212
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    new-instance v1, Lcom/android/internal/os/PowerProfile;

    invoke-direct {v1, p1}, Lcom/android/internal/os/PowerProfile;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl;->setPowerProfileLocked(Lcom/android/internal/os/PowerProfile;)V

    .line 215
    new-instance v0, Lcom/android/internal/os/BatteryLevelStats;

    invoke-direct {v0, p2}, Lcom/android/internal/os/BatteryLevelStats;-><init>(Ljava/io/File;)V

    iput-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mBatteryLevelStats:Lcom/android/internal/os/BatteryLevelStats;

    .line 216
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mBatteryLevelStats:Lcom/android/internal/os/BatteryLevelStats;

    invoke-virtual {v0}, Lcom/android/internal/os/BatteryLevelStats;->readLocked()V

    .line 217
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mBatteryLevelStats:Lcom/android/internal/os/BatteryLevelStats;

    invoke-virtual {v0}, Lcom/android/internal/os/BatteryLevelStats;->writeAsyncLocked()V

    .line 219
    return-void
.end method

.method static synthetic access$100(Ljava/nio/ByteBuffer;)I
    .registers 2
    .param p0, "x0"  # Ljava/nio/ByteBuffer;

    .line 93
    invoke-static {p0}, Lcom/android/server/am/BatteryStatsService;->nativeWaitWakeup(Ljava/nio/ByteBuffer;)I

    move-result v0

    return v0
.end method

.method private static awaitUninterruptibly(Ljava/util/concurrent/Future;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Future<",
            "*>;)V"
        }
    .end annotation

    .line 251
    .local p0, "future":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<*>;"
    :goto_0
    :try_start_0
    invoke-interface {p0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;
    :try_end_3
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_3} :catch_6
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_3} :catch_4

    .line 252
    return-void

    .line 255
    :catch_4
    move-exception v0

    .line 257
    goto :goto_0

    .line 253
    :catch_6
    move-exception v0

    .line 254
    .local v0, "e":Ljava/util/concurrent/ExecutionException;
    return-void
.end method

.method private doEnableOrDisable(Ljava/io/PrintWriter;I[Ljava/lang/String;Z)I
    .registers 8
    .param p1, "pw"  # Ljava/io/PrintWriter;
    .param p2, "i"  # I
    .param p3, "args"  # [Ljava/lang/String;
    .param p4, "enable"  # Z

    .line 1336
    add-int/lit8 p2, p2, 0x1

    .line 1337
    array-length v0, p3

    const/4 v1, -0x1

    if-lt p2, v0, :cond_25

    .line 1338
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Missing option argument for "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p4, :cond_15

    const-string v2, "--enable"

    goto :goto_17

    :cond_15
    const-string v2, "--disable"

    :goto_17
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1339
    invoke-direct {p0, p1}, Lcom/android/server/am/BatteryStatsService;->dumpHelp(Ljava/io/PrintWriter;)V

    .line 1340
    return v1

    .line 1342
    :cond_25
    aget-object v0, p3, p2

    const-string v2, "full-wake-history"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_84

    aget-object v0, p3, p2

    const-string v2, "full-history"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3a

    goto :goto_84

    .line 1346
    :cond_3a
    aget-object v0, p3, p2

    const-string/jumbo v2, "no-auto-reset"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_52

    .line 1347
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 1348
    :try_start_48
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1, p4}, Lcom/android/internal/os/BatteryStatsImpl;->setNoAutoReset(Z)V

    .line 1349
    monitor-exit v0

    goto :goto_8d

    :catchall_4f
    move-exception v1

    monitor-exit v0
    :try_end_51
    .catchall {:try_start_48 .. :try_end_51} :catchall_4f

    throw v1

    .line 1350
    :cond_52
    aget-object v0, p3, p2

    const-string/jumbo v2, "pretend-screen-off"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6a

    .line 1351
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 1352
    :try_start_60
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1, p4}, Lcom/android/internal/os/BatteryStatsImpl;->setPretendScreenOff(Z)V

    .line 1353
    monitor-exit v0

    goto :goto_8d

    :catchall_67
    move-exception v1

    monitor-exit v0
    :try_end_69
    .catchall {:try_start_60 .. :try_end_69} :catchall_67

    throw v1

    .line 1355
    :cond_6a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown enable/disable option: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v2, p3, p2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1356
    invoke-direct {p0, p1}, Lcom/android/server/am/BatteryStatsService;->dumpHelp(Ljava/io/PrintWriter;)V

    .line 1357
    return v1

    .line 1343
    :cond_84
    :goto_84
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 1344
    :try_start_87
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1, p4}, Lcom/android/internal/os/BatteryStatsImpl;->setRecordAllHistoryLocked(Z)V

    .line 1345
    monitor-exit v0

    .line 1359
    :goto_8d
    return p2

    .line 1345
    :catchall_8e
    move-exception v1

    monitor-exit v0
    :try_end_90
    .catchall {:try_start_87 .. :try_end_90} :catchall_8e

    throw v1
.end method

.method private dumpCpuStats(Ljava/io/PrintWriter;)V
    .registers 4
    .param p1, "pw"  # Ljava/io/PrintWriter;

    .line 1330
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 1331
    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1, p1}, Lcom/android/internal/os/BatteryStatsImpl;->dumpCpuStatsLocked(Ljava/io/PrintWriter;)V

    .line 1332
    monitor-exit v0

    .line 1333
    return-void

    .line 1332
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method

.method private dumpHelp(Ljava/io/PrintWriter;)V
    .registers 3
    .param p1, "pw"  # Ljava/io/PrintWriter;

    .line 1293
    const-string v0, "Battery stats (batterystats) dump options:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1294
    const-string v0, "  [--checkin] [--proto] [--history] [--history-start] [--charged] [-c]"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1295
    const-string v0, "  [--daily] [--reset] [--write] [--new-daily] [--read-daily] [-h] [<package.name>]"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1296
    const-string v0, "  --checkin: generate output for a checkin report; will write (and clear) the"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1297
    const-string v0, "             last old completed stats when they had been reset."

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1298
    const-string v0, "  -c: write the current stats in checkin format."

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1299
    const-string v0, "  --proto: write the current aggregate stats (without history) in proto format."

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1300
    const-string v0, "  --history: show only history data."

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1301
    const-string v0, "  --history-start <num>: show only history data starting at given time offset."

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1302
    const-string v0, "  --history-create-events <num>: create <num> of battery history events."

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1303
    const-string v0, "  --charged: only output data since last charged."

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1304
    const-string v0, "  --daily: only output full daily data."

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1305
    const-string v0, "  --reset: reset the stats, clearing all current data."

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1306
    const-string v0, "  --write: force write current collected stats to disk."

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1307
    const-string v0, "  --new-daily: immediately create and write new daily stats record."

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1308
    const-string v0, "  --read-daily: read-load last written daily stats."

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1309
    const-string v0, "  --settings: dump the settings key/values related to batterystats"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1310
    const-string v0, "  --cpu: dump cpu stats for debugging purpose"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1311
    const-string v0, "  <package.name>: optional name of package to filter output by."

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1312
    const-string v0, "  -h: print this help text."

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1313
    const-string v0, "Battery stats (batterystats) commands:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1314
    const-string v0, "  enable|disable <option>"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1315
    const-string v0, "    Enable or disable a running option.  Option state is not saved across boots."

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1316
    const-string v0, "    Options are:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1317
    const-string v0, "      full-history: include additional detailed events in battery history:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1318
    const-string v0, "          wake_lock_in, alarms and proc events"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1319
    const-string v0, "      no-auto-reset: don\'t automatically reset stats when unplugged"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1320
    const-string v0, "      pretend-screen-off: pretend the screen is off, even if screen state changes"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1321
    return-void
.end method

.method private dumpSettings(Ljava/io/PrintWriter;)V
    .registers 4
    .param p1, "pw"  # Ljava/io/PrintWriter;

    .line 1324
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 1325
    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1, p1}, Lcom/android/internal/os/BatteryStatsImpl;->dumpConstantsLocked(Ljava/io/PrintWriter;)V

    .line 1326
    monitor-exit v0

    .line 1327
    return-void

    .line 1326
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method

.method private enforceSelfOrCallingPermission(I)V
    .registers 3
    .param p1, "uid"  # I

    .line 1225
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    if-ne v0, p1, :cond_7

    .line 1226
    return-void

    .line 1228
    :cond_7
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 1229
    return-void
.end method

.method private native getLowPowerStats(Lcom/android/internal/os/RpmStats;)V
.end method

.method private native getPlatformLowPowerStats(Ljava/nio/ByteBuffer;)I
.end method

.method private native getRailEnergyPowerStats(Lcom/android/internal/os/RailStats;)V
.end method

.method public static getService()Lcom/android/internal/app/IBatteryStats;
    .registers 2

    .line 299
    sget-object v0, Lcom/android/server/am/BatteryStatsService;->sService:Lcom/android/internal/app/IBatteryStats;

    if-eqz v0, :cond_5

    .line 300
    return-object v0

    .line 302
    :cond_5
    const-string v0, "batterystats"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 303
    .local v0, "b":Landroid/os/IBinder;
    invoke-static {v0}, Lcom/android/server/am/BatteryStatsService;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IBatteryStats;

    move-result-object v1

    sput-object v1, Lcom/android/server/am/BatteryStatsService;->sService:Lcom/android/internal/app/IBatteryStats;

    .line 304
    sget-object v1, Lcom/android/server/am/BatteryStatsService;->sService:Lcom/android/internal/app/IBatteryStats;

    return-object v1
.end method

.method private native getSubsystemLowPowerStats(Ljava/nio/ByteBuffer;)I
.end method

.method private static native nativeWaitWakeup(Ljava/nio/ByteBuffer;)I
.end method

.method private static onlyCaller([I)Z
    .registers 5
    .param p0, "requestUids"  # [I

    .line 1694
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1695
    .local v0, "caller":I
    array-length v1, p0

    .line 1696
    .local v1, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_6
    if-ge v2, v1, :cond_11

    .line 1697
    aget v3, p0, v2

    if-eq v3, v0, :cond_e

    .line 1698
    const/4 v3, 0x0

    return v3

    .line 1696
    :cond_e
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 1701
    .end local v2  # "i":I
    :cond_11
    const/4 v2, 0x1

    return v2
.end method

.method private shouldCollectExternalStats()Z
    .registers 5

    .line 1686
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/server/am/BatteryStatsService;->mWorker:Lcom/android/server/am/BatteryExternalStatsWorker;

    invoke-virtual {v2}, Lcom/android/server/am/BatteryExternalStatsWorker;->getLastCollectionTimeStamp()J

    move-result-wide v2

    sub-long/2addr v0, v2

    iget-object v2, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    .line 1687
    invoke-virtual {v2}, Lcom/android/internal/os/BatteryStatsImpl;->getExternalStatsCollectionRateLimitMs()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_17

    const/4 v0, 0x1

    goto :goto_18

    :cond_17
    const/4 v0, 0x0

    .line 1686
    :goto_18
    return v0
.end method

.method private syncStats(Ljava/lang/String;I)V
    .registers 4
    .param p1, "reason"  # Ljava/lang/String;
    .param p2, "flags"  # I

    .line 262
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mWorker:Lcom/android/server/am/BatteryExternalStatsWorker;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/am/BatteryExternalStatsWorker;->scheduleSync(Ljava/lang/String;I)Ljava/util/concurrent/Future;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/am/BatteryStatsService;->awaitUninterruptibly(Ljava/util/concurrent/Future;)V

    .line 263
    return-void
.end method


# virtual methods
.method addIsolatedUid(II)V
    .registers 5
    .param p1, "isolatedUid"  # I
    .param p2, "appUid"  # I

    .line 360
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 361
    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl;->addIsolatedUidLocked(II)V

    .line 362
    monitor-exit v0

    .line 363
    return-void

    .line 362
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method

.method public computeBatteryTimeRemaining()J
    .registers 6

    .line 456
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 457
    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl;->computeBatteryTimeRemaining(J)J

    move-result-wide v1

    .line 458
    .local v1, "time":J
    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-ltz v3, :cond_18

    const-wide/16 v3, 0x3e8

    div-long v3, v1, v3

    goto :goto_19

    :cond_18
    move-wide v3, v1

    :goto_19
    monitor-exit v0

    return-wide v3

    .line 459
    .end local v1  # "time":J
    :catchall_1b
    move-exception v1

    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_3 .. :try_end_1d} :catchall_1b

    throw v1
.end method

.method public computeChargeTimeRemaining()J
    .registers 6

    .line 463
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 464
    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl;->computeChargeTimeRemaining(J)J

    move-result-wide v1

    .line 465
    .local v1, "time":J
    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-ltz v3, :cond_18

    const-wide/16 v3, 0x3e8

    div-long v3, v1, v3

    goto :goto_19

    :cond_18
    move-wide v3, v1

    :goto_19
    monitor-exit v0

    return-wide v3

    .line 466
    .end local v1  # "time":J
    :catchall_1b
    move-exception v1

    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_3 .. :try_end_1d} :catchall_1b

    throw v1
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 36
    .param p1, "fd"  # Ljava/io/FileDescriptor;
    .param p2, "pw"  # Ljava/io/PrintWriter;
    .param p3, "args"  # [Ljava/lang/String;

    .line 1365
    move-object/from16 v1, p0

    move-object/from16 v9, p2

    move-object/from16 v10, p3

    iget-object v0, v1, Lcom/android/server/am/BatteryStatsService;->mContext:Landroid/content/Context;

    const-string v2, "BatteryStatsService"

    invoke-static {v0, v2, v9}, Lcom/android/internal/util/DumpUtils;->checkDumpAndUsageStatsPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v0

    if-nez v0, :cond_11

    return-void

    .line 1367
    :cond_11
    const/4 v0, 0x0

    .line 1368
    .local v0, "flags":I
    const/4 v2, 0x0

    .line 1369
    .local v2, "useCheckinFormat":Z
    const/4 v3, 0x0

    .line 1370
    .local v3, "toProto":Z
    const/4 v4, 0x0

    .line 1371
    .local v4, "isRealCheckin":Z
    const/4 v5, 0x0

    .line 1372
    .local v5, "noOutput":Z
    const/4 v6, 0x0

    .line 1373
    .local v6, "writeData":Z
    const-wide/16 v7, -0x1

    .line 1374
    .local v7, "historyStart":J
    const/4 v11, -0x1

    .line 1375
    .local v11, "reqUid":I
    if-eqz v10, :cond_269

    .line 1376
    const/4 v14, 0x0

    move v15, v11

    move v11, v6

    move v6, v5

    move v5, v4

    move v4, v3

    move v3, v2

    move v2, v0

    .end local v0  # "flags":I
    .local v2, "flags":I
    .local v3, "useCheckinFormat":Z
    .local v4, "toProto":Z
    .local v5, "isRealCheckin":Z
    .local v6, "noOutput":Z
    .local v11, "writeData":Z
    .local v14, "i":I
    .local v15, "reqUid":I
    :goto_24
    array-length v0, v10

    if-ge v14, v0, :cond_25f

    .line 1377
    aget-object v13, v10, v14

    .line 1378
    .local v13, "arg":Ljava/lang/String;
    const-string v0, "--checkin"

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_35

    .line 1379
    const/4 v3, 0x1

    .line 1380
    const/4 v5, 0x1

    goto/16 :goto_204

    .line 1381
    :cond_35
    const-string v0, "--history"

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_41

    .line 1382
    or-int/lit8 v2, v2, 0x8

    goto/16 :goto_204

    .line 1383
    :cond_41
    const-string v0, "--history-start"

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    move-object/from16 v18, v13

    .end local v13  # "arg":Ljava/lang/String;
    .local v18, "arg":Ljava/lang/String;
    const-wide/16 v12, 0x0

    if-eqz v0, :cond_66

    .line 1384
    or-int/lit8 v2, v2, 0x8

    .line 1385
    add-int/lit8 v14, v14, 0x1

    .line 1386
    array-length v0, v10

    if-lt v14, v0, :cond_5d

    .line 1387
    const-string v0, "Missing time argument for --history-since"

    invoke-virtual {v9, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1388
    invoke-direct {v1, v9}, Lcom/android/server/am/BatteryStatsService;->dumpHelp(Ljava/io/PrintWriter;)V

    .line 1389
    return-void

    .line 1391
    :cond_5d
    aget-object v0, v10, v14

    invoke-static {v0, v12, v13}, Lcom/android/internal/util/ParseUtils;->parseLong(Ljava/lang/String;J)J

    move-result-wide v7

    .line 1392
    const/4 v11, 0x1

    goto/16 :goto_204

    .line 1393
    :cond_66
    const-string v0, "--history-create-events"

    move-object/from16 v12, v18

    .end local v18  # "arg":Ljava/lang/String;
    .local v12, "arg":Ljava/lang/String;
    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a3

    .line 1394
    add-int/lit8 v13, v14, 0x1

    .line 1395
    .end local v14  # "i":I
    .local v13, "i":I
    array-length v0, v10

    if-lt v13, v0, :cond_7e

    .line 1396
    const-string v0, "Missing events argument for --history-create-events"

    invoke-virtual {v9, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1397
    invoke-direct {v1, v9}, Lcom/android/server/am/BatteryStatsService;->dumpHelp(Ljava/io/PrintWriter;)V

    .line 1398
    return-void

    .line 1400
    :cond_7e
    aget-object v0, v10, v13

    move/from16 v22, v3

    move/from16 v18, v4

    const-wide/16 v3, 0x0

    .end local v3  # "useCheckinFormat":Z
    .end local v4  # "toProto":Z
    .local v18, "toProto":Z
    .local v22, "useCheckinFormat":Z
    invoke-static {v0, v3, v4}, Lcom/android/internal/util/ParseUtils;->parseLong(Ljava/lang/String;J)J

    move-result-wide v3

    .line 1401
    .local v3, "events":J
    iget-object v14, v1, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v14

    .line 1402
    :try_start_8d
    iget-object v0, v1, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0, v3, v4}, Lcom/android/internal/os/BatteryStatsImpl;->createFakeHistoryEvents(J)V

    .line 1403
    const-string v0, "Battery history create events started."

    invoke-virtual {v9, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1404
    const/4 v6, 0x1

    .line 1405
    monitor-exit v14

    .line 1406
    .end local v3  # "events":J
    move v14, v13

    move/from16 v4, v18

    move/from16 v3, v22

    goto/16 :goto_204

    .line 1405
    .restart local v3  # "events":J
    :catchall_a0
    move-exception v0

    monitor-exit v14
    :try_end_a2
    .catchall {:try_start_8d .. :try_end_a2} :catchall_a0

    throw v0

    .line 1406
    .end local v13  # "i":I
    .end local v18  # "toProto":Z
    .end local v22  # "useCheckinFormat":Z
    .local v3, "useCheckinFormat":Z
    .restart local v4  # "toProto":Z
    .restart local v14  # "i":I
    :cond_a3
    move/from16 v22, v3

    move/from16 v18, v4

    .end local v3  # "useCheckinFormat":Z
    .end local v4  # "toProto":Z
    .restart local v18  # "toProto":Z
    .restart local v22  # "useCheckinFormat":Z
    const-string v0, "-c"

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b6

    .line 1407
    const/4 v3, 0x1

    .line 1408
    .end local v22  # "useCheckinFormat":Z
    .restart local v3  # "useCheckinFormat":Z
    or-int/lit8 v2, v2, 0x10

    move/from16 v4, v18

    goto/16 :goto_204

    .line 1409
    .end local v3  # "useCheckinFormat":Z
    .restart local v22  # "useCheckinFormat":Z
    :cond_b6
    const-string v0, "--proto"

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c3

    .line 1410
    const/4 v4, 0x1

    move/from16 v3, v22

    .end local v18  # "toProto":Z
    .restart local v4  # "toProto":Z
    goto/16 :goto_204

    .line 1411
    .end local v4  # "toProto":Z
    .restart local v18  # "toProto":Z
    :cond_c3
    const-string v0, "--charged"

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d3

    .line 1412
    or-int/lit8 v2, v2, 0x2

    move/from16 v4, v18

    move/from16 v3, v22

    goto/16 :goto_204

    .line 1413
    :cond_d3
    const-string v0, "--daily"

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e3

    .line 1414
    or-int/lit8 v2, v2, 0x4

    move/from16 v4, v18

    move/from16 v3, v22

    goto/16 :goto_204

    .line 1415
    :cond_e3
    const-string v0, "--reset"

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10c

    .line 1416
    iget-object v3, v1, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v3

    .line 1417
    :try_start_ee
    iget-object v0, v1, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsImpl;->resetAllStatsCmdLocked()V

    .line 1418
    const-string v0, "Battery stats reset."

    invoke-virtual {v9, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1419
    const/4 v6, 0x1

    .line 1420
    monitor-exit v3
    :try_end_fa
    .catchall {:try_start_ee .. :try_end_fa} :catchall_109

    .line 1421
    iget-object v0, v1, Lcom/android/server/am/BatteryStatsService;->mWorker:Lcom/android/server/am/BatteryExternalStatsWorker;

    const-string v3, "dump"

    const/16 v4, 0x1f

    invoke-virtual {v0, v3, v4}, Lcom/android/server/am/BatteryExternalStatsWorker;->scheduleSync(Ljava/lang/String;I)Ljava/util/concurrent/Future;

    move/from16 v4, v18

    move/from16 v3, v22

    goto/16 :goto_204

    .line 1420
    :catchall_109
    move-exception v0

    :try_start_10a
    monitor-exit v3
    :try_end_10b
    .catchall {:try_start_10a .. :try_end_10b} :catchall_109

    throw v0

    .line 1422
    :cond_10c
    const-string v0, "--write"

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_133

    .line 1423
    const-string v0, "dump"

    const/16 v3, 0x1f

    invoke-direct {v1, v0, v3}, Lcom/android/server/am/BatteryStatsService;->syncStats(Ljava/lang/String;I)V

    .line 1424
    iget-object v3, v1, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v3

    .line 1425
    :try_start_11e
    iget-object v0, v1, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsImpl;->writeSyncLocked()V

    .line 1426
    const-string v0, "Battery stats written."

    invoke-virtual {v9, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1427
    const/4 v6, 0x1

    .line 1428
    monitor-exit v3

    move/from16 v4, v18

    move/from16 v3, v22

    goto/16 :goto_204

    :catchall_130
    move-exception v0

    monitor-exit v3
    :try_end_132
    .catchall {:try_start_11e .. :try_end_132} :catchall_130

    throw v0

    .line 1429
    :cond_133
    const-string v0, "--new-daily"

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_153

    .line 1430
    iget-object v3, v1, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v3

    .line 1431
    :try_start_13e
    iget-object v0, v1, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsImpl;->recordDailyStatsLocked()V

    .line 1432
    const-string v0, "New daily stats written."

    invoke-virtual {v9, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1433
    const/4 v6, 0x1

    .line 1434
    monitor-exit v3

    move/from16 v4, v18

    move/from16 v3, v22

    goto/16 :goto_204

    :catchall_150
    move-exception v0

    monitor-exit v3
    :try_end_152
    .catchall {:try_start_13e .. :try_end_152} :catchall_150

    throw v0

    .line 1435
    :cond_153
    const-string v0, "--read-daily"

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_173

    .line 1436
    iget-object v3, v1, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v3

    .line 1437
    :try_start_15e
    iget-object v0, v1, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsImpl;->readDailyStatsLocked()V

    .line 1438
    const-string v0, "Last daily stats read."

    invoke-virtual {v9, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1439
    const/4 v6, 0x1

    .line 1440
    monitor-exit v3

    move/from16 v4, v18

    move/from16 v3, v22

    goto/16 :goto_204

    :catchall_170
    move-exception v0

    monitor-exit v3
    :try_end_172
    .catchall {:try_start_15e .. :try_end_172} :catchall_170

    throw v0

    .line 1441
    :cond_173
    const-string v0, "--enable"

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_240

    const-string v0, "enable"

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_185

    goto/16 :goto_240

    .line 1448
    :cond_185
    const-string v0, "--disable"

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_221

    const-string v0, "disable"

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_197

    goto/16 :goto_221

    .line 1455
    :cond_197
    const-string v0, "-h"

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a3

    .line 1456
    invoke-direct {v1, v9}, Lcom/android/server/am/BatteryStatsService;->dumpHelp(Ljava/io/PrintWriter;)V

    .line 1457
    return-void

    .line 1458
    :cond_1a3
    const-string v0, "--settings"

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1af

    .line 1459
    invoke-direct {v1, v9}, Lcom/android/server/am/BatteryStatsService;->dumpSettings(Ljava/io/PrintWriter;)V

    .line 1460
    return-void

    .line 1461
    :cond_1af
    const-string v0, "--cpu"

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1bb

    .line 1462
    invoke-direct {v1, v9}, Lcom/android/server/am/BatteryStatsService;->dumpCpuStats(Ljava/io/PrintWriter;)V

    .line 1463
    return-void

    .line 1464
    :cond_1bb
    const-string v0, "-a"

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1ca

    .line 1465
    or-int/lit8 v2, v2, 0x20

    move/from16 v4, v18

    move/from16 v3, v22

    goto :goto_204

    .line 1466
    :cond_1ca
    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1f1

    const/4 v0, 0x0

    invoke-virtual {v12, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v0, 0x2d

    if-ne v3, v0, :cond_1f1

    .line 1467
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown option: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1468
    invoke-direct {v1, v9}, Lcom/android/server/am/BatteryStatsService;->dumpHelp(Ljava/io/PrintWriter;)V

    .line 1469
    return-void

    .line 1473
    :cond_1f1
    :try_start_1f1
    iget-object v0, v1, Lcom/android/server/am/BatteryStatsService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 1474
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v3

    .line 1473
    invoke-virtual {v0, v12, v3}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;I)I

    move-result v0
    :try_end_1ff
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1f1 .. :try_end_1ff} :catch_208

    .line 1479
    .end local v15  # "reqUid":I
    .local v0, "reqUid":I
    move v15, v0

    move/from16 v4, v18

    move/from16 v3, v22

    .line 1376
    .end local v0  # "reqUid":I
    .end local v12  # "arg":Ljava/lang/String;
    .end local v18  # "toProto":Z
    .end local v22  # "useCheckinFormat":Z
    .restart local v3  # "useCheckinFormat":Z
    .restart local v4  # "toProto":Z
    .restart local v15  # "reqUid":I
    :goto_204
    const/4 v0, 0x1

    add-int/2addr v14, v0

    goto/16 :goto_24

    .line 1475
    .end local v3  # "useCheckinFormat":Z
    .end local v4  # "toProto":Z
    .restart local v12  # "arg":Ljava/lang/String;
    .restart local v18  # "toProto":Z
    .restart local v22  # "useCheckinFormat":Z
    :catch_208
    move-exception v0

    .line 1476
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown package: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v9, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1477
    invoke-direct {v1, v9}, Lcom/android/server/am/BatteryStatsService;->dumpHelp(Ljava/io/PrintWriter;)V

    .line 1478
    return-void

    .line 1449
    .end local v0  # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_221
    :goto_221
    const/4 v0, 0x0

    invoke-direct {v1, v9, v14, v10, v0}, Lcom/android/server/am/BatteryStatsService;->doEnableOrDisable(Ljava/io/PrintWriter;I[Ljava/lang/String;Z)I

    move-result v0

    .line 1450
    .end local v14  # "i":I
    .local v0, "i":I
    if-gez v0, :cond_229

    .line 1451
    return-void

    .line 1453
    :cond_229
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Disabled: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v4, v10, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v9, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1454
    return-void

    .line 1442
    .end local v0  # "i":I
    .restart local v14  # "i":I
    :cond_240
    :goto_240
    const/4 v0, 0x1

    invoke-direct {v1, v9, v14, v10, v0}, Lcom/android/server/am/BatteryStatsService;->doEnableOrDisable(Ljava/io/PrintWriter;I[Ljava/lang/String;Z)I

    move-result v0

    .line 1443
    .end local v14  # "i":I
    .restart local v0  # "i":I
    if-gez v0, :cond_248

    .line 1444
    return-void

    .line 1446
    :cond_248
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Enabled: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v4, v10, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v9, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1447
    return-void

    .line 1376
    .end local v0  # "i":I
    .end local v12  # "arg":Ljava/lang/String;
    .end local v18  # "toProto":Z
    .end local v22  # "useCheckinFormat":Z
    .restart local v3  # "useCheckinFormat":Z
    .restart local v4  # "toProto":Z
    .restart local v14  # "i":I
    :cond_25f
    move/from16 v22, v3

    move/from16 v18, v4

    .end local v3  # "useCheckinFormat":Z
    .end local v4  # "toProto":Z
    .restart local v18  # "toProto":Z
    .restart local v22  # "useCheckinFormat":Z
    move v12, v5

    move-wide/from16 v19, v7

    move v13, v11

    move v11, v6

    goto :goto_274

    .line 1375
    .end local v14  # "i":I
    .end local v15  # "reqUid":I
    .end local v18  # "toProto":Z
    .end local v22  # "useCheckinFormat":Z
    .local v0, "flags":I
    .local v2, "useCheckinFormat":Z
    .local v3, "toProto":Z
    .local v4, "isRealCheckin":Z
    .local v5, "noOutput":Z
    .local v6, "writeData":Z
    .local v11, "reqUid":I
    :cond_269
    move/from16 v22, v2

    move/from16 v18, v3

    move v12, v4

    move v13, v6

    move-wide/from16 v19, v7

    move v15, v11

    move v2, v0

    move v11, v5

    .line 1483
    .end local v0  # "flags":I
    .end local v3  # "toProto":Z
    .end local v4  # "isRealCheckin":Z
    .end local v5  # "noOutput":Z
    .end local v6  # "writeData":Z
    .end local v7  # "historyStart":J
    .local v2, "flags":I
    .local v11, "noOutput":Z
    .local v12, "isRealCheckin":Z
    .local v13, "writeData":Z
    .restart local v15  # "reqUid":I
    .restart local v18  # "toProto":Z
    .local v19, "historyStart":J
    .restart local v22  # "useCheckinFormat":Z
    :goto_274
    if-eqz v11, :cond_277

    .line 1484
    return-void

    .line 1487
    :cond_277
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v30

    .line 1489
    .local v30, "ident":J
    :try_start_27b
    iget-object v0, v1, Lcom/android/server/am/BatteryStatsService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/internal/os/BatteryStatsHelper;->checkWifiOnly(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_285

    .line 1490
    or-int/lit8 v2, v2, 0x40

    .line 1493
    :cond_285
    const-string v0, "dump"

    const/16 v3, 0x1f

    invoke-direct {v1, v0, v3}, Lcom/android/server/am/BatteryStatsService;->syncStats(Ljava/lang/String;I)V
    :try_end_28c
    .catchall {:try_start_27b .. :try_end_28c} :catchall_436

    .line 1495
    invoke-static/range {v30 .. v31}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1496
    nop

    .line 1498
    if-ltz v15, :cond_29c

    .line 1501
    and-int/lit8 v0, v2, 0xa

    if-nez v0, :cond_29c

    .line 1502
    or-int/lit8 v0, v2, 0x2

    .line 1504
    .end local v2  # "flags":I
    .restart local v0  # "flags":I
    and-int/lit8 v0, v0, -0x11

    move v14, v0

    goto :goto_29d

    .line 1508
    .end local v0  # "flags":I
    .restart local v2  # "flags":I
    :cond_29c
    move v14, v2

    .end local v2  # "flags":I
    .local v14, "flags":I
    :goto_29d
    const/high16 v0, 0x420000

    if-eqz v18, :cond_351

    .line 1509
    iget-object v2, v1, Lcom/android/server/am/BatteryStatsService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v2

    .line 1511
    .local v2, "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    if-eqz v12, :cond_32e

    .line 1514
    iget-object v0, v1, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v3, v0, Lcom/android/internal/os/BatteryStatsImpl;->mCheckinFile:Lcom/android/internal/os/AtomicFile;

    monitor-enter v3

    .line 1515
    :try_start_2b2
    iget-object v0, v1, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mCheckinFile:Lcom/android/internal/os/AtomicFile;

    invoke-virtual {v0}, Lcom/android/internal/os/AtomicFile;->exists()Z

    move-result v0
    :try_end_2ba
    .catchall {:try_start_2b2 .. :try_end_2ba} :catchall_32b

    if-eqz v0, :cond_329

    .line 1517
    :try_start_2bc
    iget-object v0, v1, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mCheckinFile:Lcom/android/internal/os/AtomicFile;

    invoke-virtual {v0}, Lcom/android/internal/os/AtomicFile;->readFully()[B

    move-result-object v0

    .line 1518
    .local v0, "raw":[B
    if-eqz v0, :cond_309

    .line 1519
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v4

    .line 1520
    .local v4, "in":Landroid/os/Parcel;
    array-length v5, v0

    const/4 v6, 0x0

    invoke-virtual {v4, v0, v6, v5}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 1521
    invoke-virtual {v4, v6}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 1522
    new-instance v5, Lcom/android/internal/os/BatteryStatsImpl;

    const/16 v24, 0x0

    iget-object v6, v1, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v6, v6, Lcom/android/internal/os/BatteryStatsImpl;->mHandler:Landroid/os/Handler;

    const/16 v26, 0x0

    const/16 v27, 0x0

    iget-object v7, v1, Lcom/android/server/am/BatteryStatsService;->mUserManagerUserInfoProvider:Lcom/android/internal/os/BatteryStatsImpl$UserInfoProvider;

    move-object/from16 v23, v5

    move-object/from16 v25, v6

    move-object/from16 v28, v7

    invoke-direct/range {v23 .. v28}, Lcom/android/internal/os/BatteryStatsImpl;-><init>(Ljava/io/File;Landroid/os/Handler;Lcom/android/internal/os/BatteryStatsImpl$PlatformIdleStateCallback;Lcom/android/internal/os/BatteryStatsImpl$RailEnergyDataCallback;Lcom/android/internal/os/BatteryStatsImpl$UserInfoProvider;)V

    .line 1525
    .local v5, "checkinStats":Lcom/android/internal/os/BatteryStatsImpl;
    invoke-virtual {v5, v4}, Lcom/android/internal/os/BatteryStatsImpl;->readSummaryFromParcel(Landroid/os/Parcel;)V

    .line 1526
    invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V

    .line 1527
    iget-object v6, v1, Lcom/android/server/am/BatteryStatsService;->mContext:Landroid/content/Context;

    move-object/from16 v23, v5

    move-object/from16 v24, v6

    move-object/from16 v25, p1

    move-object/from16 v26, v2

    move/from16 v27, v14

    move-wide/from16 v28, v19

    invoke-virtual/range {v23 .. v29}, Lcom/android/internal/os/BatteryStatsImpl;->dumpProtoLocked(Landroid/content/Context;Ljava/io/FileDescriptor;Ljava/util/List;IJ)V

    .line 1529
    iget-object v6, v1, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v6, v6, Lcom/android/internal/os/BatteryStatsImpl;->mCheckinFile:Lcom/android/internal/os/AtomicFile;

    invoke-virtual {v6}, Lcom/android/internal/os/AtomicFile;->delete()V
    :try_end_307
    .catch Ljava/io/IOException; {:try_start_2bc .. :try_end_307} :catch_30a
    .catch Landroid/os/ParcelFormatException; {:try_start_2bc .. :try_end_307} :catch_30a
    .catchall {:try_start_2bc .. :try_end_307} :catchall_32b

    .line 1530
    :try_start_307
    monitor-exit v3

    return-void

    .line 1535
    .end local v0  # "raw":[B
    .end local v4  # "in":Landroid/os/Parcel;
    .end local v5  # "checkinStats":Lcom/android/internal/os/BatteryStatsImpl;
    :cond_309
    goto :goto_329

    .line 1532
    :catch_30a
    move-exception v0

    .line 1533
    .local v0, "e":Ljava/lang/Exception;
    const-string v4, "BatteryStatsService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failure reading checkin file "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v1, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v6, v6, Lcom/android/internal/os/BatteryStatsImpl;->mCheckinFile:Lcom/android/internal/os/AtomicFile;

    .line 1534
    invoke-virtual {v6}, Lcom/android/internal/os/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1533
    invoke-static {v4, v5, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1537
    .end local v0  # "e":Ljava/lang/Exception;
    :cond_329
    :goto_329
    monitor-exit v3

    goto :goto_32e

    :catchall_32b
    move-exception v0

    monitor-exit v3
    :try_end_32d
    .catchall {:try_start_307 .. :try_end_32d} :catchall_32b

    throw v0

    .line 1540
    :cond_32e
    :goto_32e
    iget-object v3, v1, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v3

    .line 1541
    :try_start_331
    iget-object v0, v1, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v4, v1, Lcom/android/server/am/BatteryStatsService;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    move-object/from16 v24, v4

    move-object/from16 v25, p1

    move-object/from16 v26, v2

    move/from16 v27, v14

    move-wide/from16 v28, v19

    invoke-virtual/range {v23 .. v29}, Lcom/android/internal/os/BatteryStatsImpl;->dumpProtoLocked(Landroid/content/Context;Ljava/io/FileDescriptor;Ljava/util/List;IJ)V

    .line 1542
    if-eqz v13, :cond_34b

    .line 1543
    iget-object v0, v1, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsImpl;->writeAsyncLocked()V

    .line 1545
    :cond_34b
    monitor-exit v3

    .line 1547
    .end local v2  # "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    goto/16 :goto_42e

    .line 1545
    .restart local v2  # "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    :catchall_34e
    move-exception v0

    monitor-exit v3
    :try_end_350
    .catchall {:try_start_331 .. :try_end_350} :catchall_34e

    throw v0

    .line 1547
    .end local v2  # "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    :cond_351
    if-eqz v22, :cond_414

    .line 1548
    iget-object v2, v1, Lcom/android/server/am/BatteryStatsService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v17

    .line 1550
    .local v17, "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    if-eqz v12, :cond_3f1

    .line 1553
    iget-object v0, v1, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v7, v0, Lcom/android/internal/os/BatteryStatsImpl;->mCheckinFile:Lcom/android/internal/os/AtomicFile;

    monitor-enter v7

    .line 1554
    :try_start_364
    iget-object v0, v1, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mCheckinFile:Lcom/android/internal/os/AtomicFile;

    invoke-virtual {v0}, Lcom/android/internal/os/AtomicFile;->exists()Z

    move-result v0
    :try_end_36c
    .catchall {:try_start_364 .. :try_end_36c} :catchall_3ea

    if-eqz v0, :cond_3e6

    .line 1556
    :try_start_36e
    iget-object v0, v1, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mCheckinFile:Lcom/android/internal/os/AtomicFile;

    invoke-virtual {v0}, Lcom/android/internal/os/AtomicFile;->readFully()[B

    move-result-object v0

    .line 1557
    .local v0, "raw":[B
    if-eqz v0, :cond_3c1

    .line 1558
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    move-object v8, v2

    .line 1559
    .local v8, "in":Landroid/os/Parcel;
    array-length v2, v0

    const/4 v3, 0x0

    invoke-virtual {v8, v0, v3, v2}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 1560
    invoke-virtual {v8, v3}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 1561
    new-instance v2, Lcom/android/internal/os/BatteryStatsImpl;

    const/16 v24, 0x0

    iget-object v3, v1, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v3, v3, Lcom/android/internal/os/BatteryStatsImpl;->mHandler:Landroid/os/Handler;

    const/16 v26, 0x0

    const/16 v27, 0x0

    iget-object v4, v1, Lcom/android/server/am/BatteryStatsService;->mUserManagerUserInfoProvider:Lcom/android/internal/os/BatteryStatsImpl$UserInfoProvider;

    move-object/from16 v23, v2

    move-object/from16 v25, v3

    move-object/from16 v28, v4

    invoke-direct/range {v23 .. v28}, Lcom/android/internal/os/BatteryStatsImpl;-><init>(Ljava/io/File;Landroid/os/Handler;Lcom/android/internal/os/BatteryStatsImpl$PlatformIdleStateCallback;Lcom/android/internal/os/BatteryStatsImpl$RailEnergyDataCallback;Lcom/android/internal/os/BatteryStatsImpl$UserInfoProvider;)V

    move-object v6, v2

    .line 1564
    .local v6, "checkinStats":Lcom/android/internal/os/BatteryStatsImpl;
    invoke-virtual {v6, v8}, Lcom/android/internal/os/BatteryStatsImpl;->readSummaryFromParcel(Landroid/os/Parcel;)V

    .line 1565
    invoke-virtual {v8}, Landroid/os/Parcel;->recycle()V

    .line 1566
    iget-object v3, v1, Lcom/android/server/am/BatteryStatsService;->mContext:Landroid/content/Context;
    :try_end_3a5
    .catch Ljava/io/IOException; {:try_start_36e .. :try_end_3a5} :catch_3c4
    .catch Landroid/os/ParcelFormatException; {:try_start_36e .. :try_end_3a5} :catch_3c4
    .catchall {:try_start_36e .. :try_end_3a5} :catchall_3ea

    move-object v2, v6

    move-object/from16 v4, p2

    move-object/from16 v5, v17

    move-object/from16 v16, v6

    .end local v6  # "checkinStats":Lcom/android/internal/os/BatteryStatsImpl;
    .local v16, "checkinStats":Lcom/android/internal/os/BatteryStatsImpl;
    move v6, v14

    move-object/from16 v21, v7

    move-object/from16 v23, v8

    .end local v8  # "in":Landroid/os/Parcel;
    .local v23, "in":Landroid/os/Parcel;
    move-wide/from16 v7, v19

    :try_start_3b3
    invoke-virtual/range {v2 .. v8}, Lcom/android/internal/os/BatteryStatsImpl;->dumpCheckinLocked(Landroid/content/Context;Ljava/io/PrintWriter;Ljava/util/List;IJ)V

    .line 1568
    iget-object v2, v1, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v2, v2, Lcom/android/internal/os/BatteryStatsImpl;->mCheckinFile:Lcom/android/internal/os/AtomicFile;

    invoke-virtual {v2}, Lcom/android/internal/os/AtomicFile;->delete()V
    :try_end_3bd
    .catch Ljava/io/IOException; {:try_start_3b3 .. :try_end_3bd} :catch_3bf
    .catch Landroid/os/ParcelFormatException; {:try_start_3b3 .. :try_end_3bd} :catch_3bf
    .catchall {:try_start_3b3 .. :try_end_3bd} :catchall_3ef

    .line 1569
    :try_start_3bd
    monitor-exit v21

    return-void

    .line 1571
    .end local v0  # "raw":[B
    .end local v16  # "checkinStats":Lcom/android/internal/os/BatteryStatsImpl;
    .end local v23  # "in":Landroid/os/Parcel;
    :catch_3bf
    move-exception v0

    goto :goto_3c7

    .line 1557
    .restart local v0  # "raw":[B
    :cond_3c1
    move-object/from16 v21, v7

    .line 1574
    .end local v0  # "raw":[B
    goto :goto_3e8

    .line 1571
    :catch_3c4
    move-exception v0

    move-object/from16 v21, v7

    .line 1572
    .local v0, "e":Ljava/lang/Exception;
    :goto_3c7
    const-string v2, "BatteryStatsService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failure reading checkin file "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v4, v4, Lcom/android/internal/os/BatteryStatsImpl;->mCheckinFile:Lcom/android/internal/os/AtomicFile;

    .line 1573
    invoke-virtual {v4}, Lcom/android/internal/os/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1572
    invoke-static {v2, v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3e8

    .line 1554
    .end local v0  # "e":Ljava/lang/Exception;
    :cond_3e6
    move-object/from16 v21, v7

    .line 1576
    :goto_3e8
    monitor-exit v21

    goto :goto_3f1

    :catchall_3ea
    move-exception v0

    move-object/from16 v21, v7

    :goto_3ed
    monitor-exit v21
    :try_end_3ee
    .catchall {:try_start_3bd .. :try_end_3ee} :catchall_3ef

    throw v0

    :catchall_3ef
    move-exception v0

    goto :goto_3ed

    .line 1579
    :cond_3f1
    :goto_3f1
    iget-object v7, v1, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v7

    .line 1580
    :try_start_3f4
    iget-object v2, v1, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v3, v1, Lcom/android/server/am/BatteryStatsService;->mContext:Landroid/content/Context;
    :try_end_3f8
    .catchall {:try_start_3f4 .. :try_end_3f8} :catchall_40d

    move-object/from16 v4, p2

    move-object/from16 v5, v17

    move v6, v14

    move-object/from16 v16, v7

    move-wide/from16 v7, v19

    :try_start_401
    invoke-virtual/range {v2 .. v8}, Lcom/android/internal/os/BatteryStatsImpl;->dumpCheckinLocked(Landroid/content/Context;Ljava/io/PrintWriter;Ljava/util/List;IJ)V

    .line 1581
    if-eqz v13, :cond_40b

    .line 1582
    iget-object v0, v1, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsImpl;->writeAsyncLocked()V

    .line 1584
    :cond_40b
    monitor-exit v16

    .line 1586
    .end local v17  # "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    goto :goto_42e

    .line 1584
    .restart local v17  # "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    :catchall_40d
    move-exception v0

    move-object/from16 v16, v7

    :goto_410
    monitor-exit v16
    :try_end_411
    .catchall {:try_start_401 .. :try_end_411} :catchall_412

    throw v0

    :catchall_412
    move-exception v0

    goto :goto_410

    .line 1588
    .end local v17  # "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    :cond_414
    iget-object v7, v1, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v7

    .line 1589
    :try_start_417
    iget-object v2, v1, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v3, v1, Lcom/android/server/am/BatteryStatsService;->mContext:Landroid/content/Context;
    :try_end_41b
    .catchall {:try_start_417 .. :try_end_41b} :catchall_42f

    move-object/from16 v4, p2

    move v5, v14

    move v6, v15

    move-object/from16 v16, v7

    move-wide/from16 v7, v19

    :try_start_423
    invoke-virtual/range {v2 .. v8}, Lcom/android/internal/os/BatteryStatsImpl;->dumpLocked(Landroid/content/Context;Ljava/io/PrintWriter;IIJ)V

    .line 1590
    if-eqz v13, :cond_42d

    .line 1591
    iget-object v0, v1, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsImpl;->writeAsyncLocked()V

    .line 1593
    :cond_42d
    monitor-exit v16

    .line 1596
    :goto_42e
    return-void

    .line 1593
    :catchall_42f
    move-exception v0

    move-object/from16 v16, v7

    :goto_432
    monitor-exit v16
    :try_end_433
    .catchall {:try_start_423 .. :try_end_433} :catchall_434

    throw v0

    :catchall_434
    move-exception v0

    goto :goto_432

    .line 1495
    .end local v14  # "flags":I
    .local v2, "flags":I
    :catchall_436
    move-exception v0

    invoke-static/range {v30 .. v31}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method public enforceCallingPermission()V
    .registers 6

    .line 1217
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    if-ne v0, v1, :cond_b

    .line 1218
    return-void

    .line 1220
    :cond_b
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mContext:Landroid/content/Context;

    .line 1221
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    const/4 v3, 0x0

    .line 1220
    const-string v4, "android.permission.UPDATE_DEVICE_STATS"

    invoke-virtual {v0, v4, v1, v2, v3}, Landroid/content/Context;->enforcePermission(Ljava/lang/String;IILjava/lang/String;)V

    .line 1222
    return-void
.end method

.method public fillLowPowerStats(Lcom/android/internal/os/RpmStats;)V
    .registers 3
    .param p1, "rpmStats"  # Lcom/android/internal/os/RpmStats;

    .line 133
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/am/BatteryStatsService;->getLowPowerStats(Lcom/android/internal/os/RpmStats;)V
    :try_end_3
    .catchall {:try_start_0 .. :try_end_3} :catchall_5

    .line 136
    nop

    .line 137
    return-void

    .line 135
    :catchall_5
    move-exception v0

    throw v0
.end method

.method public fillRailDataStats(Lcom/android/internal/os/RailStats;)V
    .registers 3
    .param p1, "railStats"  # Lcom/android/internal/os/RailStats;

    .line 143
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/am/BatteryStatsService;->getRailEnergyPowerStats(Lcom/android/internal/os/RailStats;)V
    :try_end_3
    .catchall {:try_start_0 .. :try_end_3} :catchall_5

    .line 146
    nop

    .line 147
    return-void

    .line 145
    :catchall_5
    move-exception v0

    throw v0
.end method

.method public getActiveStatistics()Lcom/android/internal/os/BatteryStatsImpl;
    .registers 2

    .line 325
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    return-object v0
.end method

.method public getAwakeTimeBattery()J
    .registers 4

    .line 1205
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BATTERY_STATS"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1207
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsImpl;->getAwakeTimeBattery()J

    move-result-wide v0

    return-wide v0
.end method

.method public getAwakeTimePlugged()J
    .registers 4

    .line 1211
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BATTERY_STATS"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1213
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsImpl;->getAwakeTimePlugged()J

    move-result-wide v0

    return-wide v0
.end method

.method public getBatteryLevelStatistics()[B
    .registers 5

    .line 1740
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BATTERY_STATS"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1743
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1744
    .local v0, "out":Landroid/os/Parcel;
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mBatteryLevelStats:Lcom/android/internal/os/BatteryLevelStats;

    monitor-enter v1

    .line 1745
    :try_start_f
    iget-object v2, p0, Lcom/android/server/am/BatteryStatsService;->mBatteryLevelStats:Lcom/android/internal/os/BatteryLevelStats;

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Lcom/android/internal/os/BatteryLevelStats;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1746
    monitor-exit v1
    :try_end_16
    .catchall {:try_start_f .. :try_end_16} :catchall_1e

    .line 1747
    invoke-virtual {v0}, Landroid/os/Parcel;->marshall()[B

    move-result-object v1

    .line 1748
    .local v1, "data":[B
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1749
    return-object v1

    .line 1746
    .end local v1  # "data":[B
    :catchall_1e
    move-exception v2

    :try_start_1f
    monitor-exit v1
    :try_end_20
    .catchall {:try_start_1f .. :try_end_20} :catchall_1e

    throw v2
.end method

.method public getBatteryLevelStatisticsStream()Landroid/os/ParcelFileDescriptor;
    .registers 7

    .line 1753
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    const-string v2, "android.permission.BATTERY_STATS"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1756
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1757
    .local v0, "out":Landroid/os/Parcel;
    iget-object v2, p0, Lcom/android/server/am/BatteryStatsService;->mBatteryLevelStats:Lcom/android/internal/os/BatteryLevelStats;

    monitor-enter v2

    .line 1758
    :try_start_f
    iget-object v3, p0, Lcom/android/server/am/BatteryStatsService;->mBatteryLevelStats:Lcom/android/internal/os/BatteryLevelStats;

    const/4 v4, 0x0

    invoke-virtual {v3, v0, v4}, Lcom/android/internal/os/BatteryLevelStats;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1759
    monitor-exit v2
    :try_end_16
    .catchall {:try_start_f .. :try_end_16} :catchall_2d

    .line 1760
    invoke-virtual {v0}, Landroid/os/Parcel;->marshall()[B

    move-result-object v2

    .line 1761
    .local v2, "data":[B
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1763
    :try_start_1d
    const-string v3, "battery-level"

    invoke-static {v2, v3}, Landroid/os/ParcelFileDescriptor;->fromData([BLjava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v1
    :try_end_23
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_23} :catch_24

    return-object v1

    .line 1764
    :catch_24
    move-exception v3

    .line 1765
    .local v3, "e":Ljava/io/IOException;
    const-string v4, "BatteryStatsService"

    const-string v5, "Unable to create shared memory"

    invoke-static {v4, v5, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1766
    return-object v1

    .line 1759
    .end local v2  # "data":[B
    .end local v3  # "e":Ljava/io/IOException;
    :catchall_2d
    move-exception v1

    :try_start_2e
    monitor-exit v2
    :try_end_2f
    .catchall {:try_start_2e .. :try_end_2f} :catchall_2d

    throw v1
.end method

.method public getCellularBatteryStats()Landroid/os/connectivity/CellularBatteryStats;
    .registers 3

    .line 1603
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 1604
    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1}, Lcom/android/internal/os/BatteryStatsImpl;->getCellularBatteryStats()Landroid/os/connectivity/CellularBatteryStats;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 1605
    :catchall_b
    move-exception v1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v1
.end method

.method public getGpsBatteryStats()Landroid/os/connectivity/GpsBatteryStats;
    .registers 3

    .line 1623
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 1624
    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1}, Lcom/android/internal/os/BatteryStatsImpl;->getGpsBatteryStats()Landroid/os/connectivity/GpsBatteryStats;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 1625
    :catchall_b
    move-exception v1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v1
.end method

.method getHealthStatsForUidLocked(I)Landroid/os/health/HealthStatsParceler;
    .registers 6
    .param p1, "requestUid"  # I

    .line 1709
    new-instance v0, Lcom/android/server/am/HealthStatsBatteryStatsWriter;

    invoke-direct {v0}, Lcom/android/server/am/HealthStatsBatteryStatsWriter;-><init>()V

    .line 1710
    .local v0, "writer":Lcom/android/server/am/HealthStatsBatteryStatsWriter;
    new-instance v1, Landroid/os/health/HealthStatsWriter;

    sget-object v2, Landroid/os/health/UidHealthStats;->CONSTANTS:Landroid/os/health/HealthKeys$Constants;

    invoke-direct {v1, v2}, Landroid/os/health/HealthStatsWriter;-><init>(Landroid/os/health/HealthKeys$Constants;)V

    .line 1711
    .local v1, "uidWriter":Landroid/os/health/HealthStatsWriter;
    iget-object v2, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v2}, Lcom/android/internal/os/BatteryStatsImpl;->getUidStats()Landroid/util/SparseArray;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/BatteryStats$Uid;

    .line 1712
    .local v2, "uid":Landroid/os/BatteryStats$Uid;
    if-eqz v2, :cond_1f

    .line 1713
    iget-object v3, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0, v1, v3, v2}, Lcom/android/server/am/HealthStatsBatteryStatsWriter;->writeUid(Landroid/os/health/HealthStatsWriter;Landroid/os/BatteryStats;Landroid/os/BatteryStats$Uid;)V

    .line 1715
    :cond_1f
    new-instance v3, Landroid/os/health/HealthStatsParceler;

    invoke-direct {v3, v1}, Landroid/os/health/HealthStatsParceler;-><init>(Landroid/os/health/HealthStatsWriter;)V

    return-object v3
.end method

.method public getPlatformLowPowerStats()Ljava/lang/String;
    .registers 6

    .line 153
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mUtf8BufferStat:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 154
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mUtf16BufferStat:Ljava/nio/CharBuffer;

    invoke-virtual {v0}, Ljava/nio/CharBuffer;->clear()Ljava/nio/Buffer;

    .line 155
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mDecoderStat:Ljava/nio/charset/CharsetDecoder;

    invoke-virtual {v0}, Ljava/nio/charset/CharsetDecoder;->reset()Ljava/nio/charset/CharsetDecoder;

    .line 156
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mUtf8BufferStat:Ljava/nio/ByteBuffer;

    invoke-direct {p0, v0}, Lcom/android/server/am/BatteryStatsService;->getPlatformLowPowerStats(Ljava/nio/ByteBuffer;)I

    move-result v0

    .line 157
    .local v0, "bytesWritten":I
    if-gez v0, :cond_19

    .line 158
    const/4 v1, 0x0

    return-object v1

    .line 159
    :cond_19
    if-nez v0, :cond_1e

    .line 160
    const-string v1, "Empty"

    return-object v1

    .line 162
    :cond_1e
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mUtf8BufferStat:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 163
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mDecoderStat:Ljava/nio/charset/CharsetDecoder;

    iget-object v2, p0, Lcom/android/server/am/BatteryStatsService;->mUtf8BufferStat:Ljava/nio/ByteBuffer;

    iget-object v3, p0, Lcom/android/server/am/BatteryStatsService;->mUtf16BufferStat:Ljava/nio/CharBuffer;

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v3, v4}, Ljava/nio/charset/CharsetDecoder;->decode(Ljava/nio/ByteBuffer;Ljava/nio/CharBuffer;Z)Ljava/nio/charset/CoderResult;

    .line 164
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mUtf16BufferStat:Ljava/nio/CharBuffer;

    invoke-virtual {v1}, Ljava/nio/CharBuffer;->flip()Ljava/nio/Buffer;

    .line 165
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mUtf16BufferStat:Ljava/nio/CharBuffer;

    invoke-virtual {v1}, Ljava/nio/CharBuffer;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_38
    .catchall {:try_start_0 .. :try_end_38} :catchall_39

    return-object v1

    .line 167
    .end local v0  # "bytesWritten":I
    :catchall_39
    move-exception v0

    throw v0
.end method

.method public getServiceType()I
    .registers 2

    .line 309
    const/16 v0, 0x9

    return v0
.end method

.method public getStatistics()[B
    .registers 5

    .line 414
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BATTERY_STATS"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 418
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 419
    .local v0, "out":Landroid/os/Parcel;
    const-string v1, "get-stats"

    const/16 v2, 0x1f

    invoke-direct {p0, v1, v2}, Lcom/android/server/am/BatteryStatsService;->syncStats(Ljava/lang/String;I)V

    .line 420
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v1

    .line 421
    :try_start_16
    iget-object v2, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Lcom/android/internal/os/BatteryStatsImpl;->writeToParcel(Landroid/os/Parcel;I)V

    .line 422
    monitor-exit v1
    :try_end_1d
    .catchall {:try_start_16 .. :try_end_1d} :catchall_25

    .line 423
    invoke-virtual {v0}, Landroid/os/Parcel;->marshall()[B

    move-result-object v1

    .line 424
    .local v1, "data":[B
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 425
    return-object v1

    .line 422
    .end local v1  # "data":[B
    :catchall_25
    move-exception v2

    :try_start_26
    monitor-exit v1
    :try_end_27
    .catchall {:try_start_26 .. :try_end_27} :catchall_25

    throw v2
.end method

.method public getStatisticsStream()Landroid/os/ParcelFileDescriptor;
    .registers 7

    .line 429
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    const-string v2, "android.permission.BATTERY_STATS"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 433
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 434
    .local v0, "out":Landroid/os/Parcel;
    const-string v2, "get-stats"

    const/16 v3, 0x1f

    invoke-direct {p0, v2, v3}, Lcom/android/server/am/BatteryStatsService;->syncStats(Ljava/lang/String;I)V

    .line 435
    iget-object v2, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v2

    .line 436
    :try_start_16
    iget-object v3, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    const/4 v4, 0x0

    invoke-virtual {v3, v0, v4}, Lcom/android/internal/os/BatteryStatsImpl;->writeToParcel(Landroid/os/Parcel;I)V

    .line 437
    monitor-exit v2
    :try_end_1d
    .catchall {:try_start_16 .. :try_end_1d} :catchall_34

    .line 438
    invoke-virtual {v0}, Landroid/os/Parcel;->marshall()[B

    move-result-object v2

    .line 440
    .local v2, "data":[B
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 442
    :try_start_24
    const-string v3, "battery-stats"

    invoke-static {v2, v3}, Landroid/os/ParcelFileDescriptor;->fromData([BLjava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v1
    :try_end_2a
    .catch Ljava/io/IOException; {:try_start_24 .. :try_end_2a} :catch_2b

    return-object v1

    .line 443
    :catch_2b
    move-exception v3

    .line 444
    .local v3, "e":Ljava/io/IOException;
    const-string v4, "BatteryStatsService"

    const-string v5, "Unable to create shared memory"

    invoke-static {v4, v5, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 445
    return-object v1

    .line 437
    .end local v2  # "data":[B
    .end local v3  # "e":Ljava/io/IOException;
    :catchall_34
    move-exception v1

    :try_start_35
    monitor-exit v2
    :try_end_36
    .catchall {:try_start_35 .. :try_end_36} :catchall_34

    throw v1
.end method

.method public getSubsystemLowPowerStats()Ljava/lang/String;
    .registers 6

    .line 175
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mUtf8BufferStat:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 176
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mUtf16BufferStat:Ljava/nio/CharBuffer;

    invoke-virtual {v0}, Ljava/nio/CharBuffer;->clear()Ljava/nio/Buffer;

    .line 177
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mDecoderStat:Ljava/nio/charset/CharsetDecoder;

    invoke-virtual {v0}, Ljava/nio/charset/CharsetDecoder;->reset()Ljava/nio/charset/CharsetDecoder;

    .line 178
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mUtf8BufferStat:Ljava/nio/ByteBuffer;

    invoke-direct {p0, v0}, Lcom/android/server/am/BatteryStatsService;->getSubsystemLowPowerStats(Ljava/nio/ByteBuffer;)I

    move-result v0

    .line 179
    .local v0, "bytesWritten":I
    if-gez v0, :cond_19

    .line 180
    const/4 v1, 0x0

    return-object v1

    .line 181
    :cond_19
    if-nez v0, :cond_1e

    .line 182
    const-string v1, "Empty"

    return-object v1

    .line 184
    :cond_1e
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mUtf8BufferStat:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 185
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mDecoderStat:Ljava/nio/charset/CharsetDecoder;

    iget-object v2, p0, Lcom/android/server/am/BatteryStatsService;->mUtf8BufferStat:Ljava/nio/ByteBuffer;

    iget-object v3, p0, Lcom/android/server/am/BatteryStatsService;->mUtf16BufferStat:Ljava/nio/CharBuffer;

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v3, v4}, Ljava/nio/charset/CharsetDecoder;->decode(Ljava/nio/ByteBuffer;Ljava/nio/CharBuffer;Z)Ljava/nio/charset/CoderResult;

    .line 186
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mUtf16BufferStat:Ljava/nio/CharBuffer;

    invoke-virtual {v1}, Ljava/nio/CharBuffer;->flip()Ljava/nio/Buffer;

    .line 187
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mUtf16BufferStat:Ljava/nio/CharBuffer;

    invoke-virtual {v1}, Ljava/nio/CharBuffer;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_38
    .catchall {:try_start_0 .. :try_end_38} :catchall_39

    return-object v1

    .line 189
    .end local v0  # "bytesWritten":I
    :catchall_39
    move-exception v0

    throw v0
.end method

.method public getWifiBatteryStats()Landroid/os/connectivity/WifiBatteryStats;
    .registers 3

    .line 1613
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 1614
    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1}, Lcom/android/internal/os/BatteryStatsImpl;->getWifiBatteryStats()Landroid/os/connectivity/WifiBatteryStats;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 1615
    :catchall_b
    move-exception v1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v1
.end method

.method public initPowerManagement()V
    .registers 5

    .line 270
    const-class v0, Landroid/os/PowerManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManagerInternal;

    .line 271
    .local v0, "powerMgr":Landroid/os/PowerManagerInternal;
    invoke-virtual {v0, p0}, Landroid/os/PowerManagerInternal;->registerLowPowerModeObserver(Landroid/os/PowerManagerInternal$LowPowerModeListener;)V

    .line 272
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v1

    .line 273
    :try_start_e
    iget-object v2, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    const/16 v3, 0x9

    .line 274
    invoke-virtual {v0, v3}, Landroid/os/PowerManagerInternal;->getLowPowerState(I)Landroid/os/PowerSaveState;

    move-result-object v3

    iget-boolean v3, v3, Landroid/os/PowerSaveState;->batterySaverEnabled:Z

    .line 273
    invoke-virtual {v2, v3}, Lcom/android/internal/os/BatteryStatsImpl;->notePowerSaveModeLocked(Z)V

    .line 276
    monitor-exit v1
    :try_end_1c
    .catchall {:try_start_e .. :try_end_1c} :catchall_25

    .line 277
    new-instance v1, Lcom/android/server/am/BatteryStatsService$WakeupReasonThread;

    invoke-direct {v1, p0}, Lcom/android/server/am/BatteryStatsService$WakeupReasonThread;-><init>(Lcom/android/server/am/BatteryStatsService;)V

    invoke-virtual {v1}, Lcom/android/server/am/BatteryStatsService$WakeupReasonThread;->start()V

    .line 278
    return-void

    .line 276
    :catchall_25
    move-exception v2

    :try_start_26
    monitor-exit v1
    :try_end_27
    .catchall {:try_start_26 .. :try_end_27} :catchall_25

    throw v2
.end method

.method public isCharging()Z
    .registers 3

    .line 450
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 451
    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1}, Lcom/android/internal/os/BatteryStatsImpl;->isCharging()Z

    move-result v1

    monitor-exit v0

    return v1

    .line 452
    :catchall_b
    move-exception v1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v1
.end method

.method public isOnBattery()Z
    .registers 2

    .line 1161
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsImpl;->isOnBattery()Z

    move-result v0

    return v0
.end method

.method public synthetic lambda$setBatteryState$0$BatteryStatsService(IIIIIIII)V
    .registers 21
    .param p1, "status"  # I
    .param p2, "health"  # I
    .param p3, "plugType"  # I
    .param p4, "level"  # I
    .param p5, "temp"  # I
    .param p6, "volt"  # I
    .param p7, "chargeUAh"  # I
    .param p8, "chargeFullUAh"  # I

    .line 1196
    move-object v1, p0

    iget-object v2, v1, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v2

    .line 1197
    :try_start_4
    iget-object v3, v1, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    move v4, p1

    move v5, p2

    move v6, p3

    move/from16 v7, p4

    move/from16 v8, p5

    move/from16 v9, p6

    move/from16 v10, p7

    move/from16 v11, p8

    invoke-virtual/range {v3 .. v11}, Lcom/android/internal/os/BatteryStatsImpl;->setBatteryStateLocked(IIIIIIII)V

    .line 1199
    monitor-exit v2

    .line 1200
    return-void

    .line 1199
    :catchall_18
    move-exception v0

    monitor-exit v2
    :try_end_1a
    .catchall {:try_start_4 .. :try_end_1a} :catchall_18

    throw v0
.end method

.method public synthetic lambda$setBatteryState$1$BatteryStatsService(IIIIIIII)V
    .registers 30
    .param p1, "plugType"  # I
    .param p2, "status"  # I
    .param p3, "health"  # I
    .param p4, "level"  # I
    .param p5, "temp"  # I
    .param p6, "volt"  # I
    .param p7, "chargeUAh"  # I
    .param p8, "chargeFullUAh"  # I

    .line 1173
    move-object/from16 v11, p0

    iget-object v1, v11, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v1

    .line 1174
    :try_start_5
    invoke-static/range {p1 .. p2}, Lcom/android/internal/os/BatteryStatsImpl;->isOnBattery(II)Z

    move-result v0

    move v2, v0

    .line 1175
    .local v2, "onBattery":Z
    iget-object v0, v11, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsImpl;->isOnBattery()Z

    move-result v0

    if-ne v0, v2, :cond_3f

    .line 1178
    iget-object v12, v11, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    move/from16 v13, p2

    move/from16 v14, p3

    move/from16 v15, p1

    move/from16 v16, p4

    move/from16 v17, p5

    move/from16 v18, p6

    move/from16 v19, p7

    move/from16 v20, p8

    invoke-virtual/range {v12 .. v20}, Lcom/android/internal/os/BatteryStatsImpl;->setBatteryStateLocked(IIIIIIII)V

    .line 1182
    iget-object v3, v11, Lcom/android/server/am/BatteryStatsService;->mBatteryLevelStats:Lcom/android/internal/os/BatteryLevelStats;

    monitor-enter v3
    :try_end_2a
    .catchall {:try_start_5 .. :try_end_2a} :catchall_6b

    .line 1183
    :try_start_2a
    iget-object v0, v11, Lcom/android/server/am/BatteryStatsService;->mBatteryLevelStats:Lcom/android/internal/os/BatteryLevelStats;
    :try_end_2c
    .catchall {:try_start_2a .. :try_end_2c} :catchall_38

    move/from16 v12, p1

    move/from16 v13, p4

    :try_start_30
    invoke-virtual {v0, v13, v12}, Lcom/android/internal/os/BatteryLevelStats;->onLevelChanged(II)V

    .line 1184
    monitor-exit v3
    :try_end_34
    .catchall {:try_start_30 .. :try_end_34} :catchall_36

    .line 1186
    :try_start_34
    monitor-exit v1
    :try_end_35
    .catchall {:try_start_34 .. :try_end_35} :catchall_72

    return-void

    .line 1184
    :catchall_36
    move-exception v0

    goto :goto_3d

    :catchall_38
    move-exception v0

    move/from16 v12, p1

    move/from16 v13, p4

    :goto_3d
    :try_start_3d
    monitor-exit v3
    :try_end_3e
    .catchall {:try_start_3d .. :try_end_3e} :catchall_36

    .end local p0  # "this":Lcom/android/server/am/BatteryStatsService;
    .end local p1  # "plugType":I
    .end local p2  # "status":I
    .end local p3  # "health":I
    .end local p4  # "level":I
    .end local p5  # "temp":I
    .end local p6  # "volt":I
    .end local p7  # "chargeUAh":I
    .end local p8  # "chargeFullUAh":I
    :try_start_3e
    throw v0

    .line 1175
    .restart local p0  # "this":Lcom/android/server/am/BatteryStatsService;
    .restart local p1  # "plugType":I
    .restart local p2  # "status":I
    .restart local p3  # "health":I
    .restart local p4  # "level":I
    .restart local p5  # "temp":I
    .restart local p6  # "volt":I
    .restart local p7  # "chargeUAh":I
    .restart local p8  # "chargeFullUAh":I
    :cond_3f
    move/from16 v12, p1

    move/from16 v13, p4

    .line 1188
    .end local v2  # "onBattery":Z
    monitor-exit v1
    :try_end_44
    .catchall {:try_start_3e .. :try_end_44} :catchall_72

    .line 1194
    iget-object v0, v11, Lcom/android/server/am/BatteryStatsService;->mWorker:Lcom/android/server/am/BatteryExternalStatsWorker;

    const/16 v1, 0x1f

    const-string v2, "battery-state"

    invoke-virtual {v0, v2, v1}, Lcom/android/server/am/BatteryExternalStatsWorker;->scheduleSync(Ljava/lang/String;I)Ljava/util/concurrent/Future;

    .line 1195
    iget-object v0, v11, Lcom/android/server/am/BatteryStatsService;->mWorker:Lcom/android/server/am/BatteryExternalStatsWorker;

    new-instance v14, Lcom/android/server/am/-$$Lambda$BatteryStatsService$rRONgIFHr4sujxPESRmo9P5RJ6w;

    move-object v1, v14

    move-object/from16 v2, p0

    move/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p1

    move/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    move/from16 v10, p8

    invoke-direct/range {v1 .. v10}, Lcom/android/server/am/-$$Lambda$BatteryStatsService$rRONgIFHr4sujxPESRmo9P5RJ6w;-><init>(Lcom/android/server/am/BatteryStatsService;IIIIIIII)V

    invoke-virtual {v0, v14}, Lcom/android/server/am/BatteryExternalStatsWorker;->scheduleRunnable(Ljava/lang/Runnable;)V

    .line 1201
    return-void

    .line 1188
    :catchall_6b
    move-exception v0

    move/from16 v12, p1

    move/from16 v13, p4

    :goto_70
    :try_start_70
    monitor-exit v1
    :try_end_71
    .catchall {:try_start_70 .. :try_end_71} :catchall_72

    throw v0

    :catchall_72
    move-exception v0

    goto :goto_70
.end method

.method public noteAlarmFinish(Ljava/lang/String;Landroid/os/WorkSource;I)V
    .registers 6
    .param p1, "name"  # Ljava/lang/String;
    .param p2, "workSource"  # Landroid/os/WorkSource;
    .param p3, "uid"  # I

    .line 538
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 539
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 540
    :try_start_6
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl;->noteAlarmFinishLocked(Ljava/lang/String;Landroid/os/WorkSource;I)V

    .line 541
    monitor-exit v0

    .line 542
    return-void

    .line 541
    :catchall_d
    move-exception v1

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_6 .. :try_end_f} :catchall_d

    throw v1
.end method

.method public noteAlarmStart(Ljava/lang/String;Landroid/os/WorkSource;I)V
    .registers 6
    .param p1, "name"  # Ljava/lang/String;
    .param p2, "workSource"  # Landroid/os/WorkSource;
    .param p3, "uid"  # I

    .line 531
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 532
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 533
    :try_start_6
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl;->noteAlarmStartLocked(Ljava/lang/String;Landroid/os/WorkSource;I)V

    .line 534
    monitor-exit v0

    .line 535
    return-void

    .line 534
    :catchall_d
    move-exception v1

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_6 .. :try_end_f} :catchall_d

    throw v1
.end method

.method public noteAodState(I)V
    .registers 4
    .param p1, "on"  # I

    .line 1779
    if-nez p1, :cond_f

    .line 1780
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 1781
    :try_start_5
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1}, Lcom/android/internal/os/BatteryStatsImpl;->noteAodOnLocked()V

    .line 1782
    monitor-exit v0

    goto :goto_36

    :catchall_c
    move-exception v1

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_5 .. :try_end_e} :catchall_c

    throw v1

    .line 1783
    :cond_f
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1f

    .line 1784
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 1785
    :try_start_15
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1}, Lcom/android/internal/os/BatteryStatsImpl;->noteAodOffLocked()V

    .line 1786
    monitor-exit v0

    goto :goto_36

    :catchall_1c
    move-exception v1

    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_15 .. :try_end_1e} :catchall_1c

    throw v1

    .line 1788
    :cond_1f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "unknown aod state: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BatteryStatsService"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1790
    :goto_36
    return-void
.end method

.method public noteBleScanResults(Landroid/os/WorkSource;I)V
    .registers 5
    .param p1, "ws"  # Landroid/os/WorkSource;
    .param p2, "numNewResults"  # I

    .line 1117
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 1118
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 1119
    :try_start_6
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl;->noteBluetoothScanResultsFromSourceLocked(Landroid/os/WorkSource;I)V

    .line 1120
    monitor-exit v0

    .line 1121
    return-void

    .line 1120
    :catchall_d
    move-exception v1

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_6 .. :try_end_f} :catchall_d

    throw v1
.end method

.method public noteBleScanStarted(Landroid/os/WorkSource;Z)V
    .registers 5
    .param p1, "ws"  # Landroid/os/WorkSource;
    .param p2, "isUnoptimized"  # Z

    .line 1093
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 1094
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 1095
    :try_start_6
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl;->noteBluetoothScanStartedFromSourceLocked(Landroid/os/WorkSource;Z)V

    .line 1096
    monitor-exit v0

    .line 1097
    return-void

    .line 1096
    :catchall_d
    move-exception v1

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_6 .. :try_end_f} :catchall_d

    throw v1
.end method

.method public noteBleScanStopped(Landroid/os/WorkSource;Z)V
    .registers 5
    .param p1, "ws"  # Landroid/os/WorkSource;
    .param p2, "isUnoptimized"  # Z

    .line 1101
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 1102
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 1103
    :try_start_6
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl;->noteBluetoothScanStoppedFromSourceLocked(Landroid/os/WorkSource;Z)V

    .line 1104
    monitor-exit v0

    .line 1105
    return-void

    .line 1104
    :catchall_d
    move-exception v1

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_6 .. :try_end_f} :catchall_d

    throw v1
.end method

.method public noteBluetoothControllerActivity(Landroid/bluetooth/BluetoothActivityEnergyInfo;)V
    .registers 4
    .param p1, "info"  # Landroid/bluetooth/BluetoothActivityEnergyInfo;

    .line 1137
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 1138
    if-eqz p1, :cond_19

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothActivityEnergyInfo;->isValid()Z

    move-result v0

    if-nez v0, :cond_c

    goto :goto_19

    .line 1143
    :cond_c
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 1144
    :try_start_f
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1, p1}, Lcom/android/internal/os/BatteryStatsImpl;->updateBluetoothStateLocked(Landroid/bluetooth/BluetoothActivityEnergyInfo;)V

    .line 1145
    monitor-exit v0

    .line 1146
    return-void

    .line 1145
    :catchall_16
    move-exception v1

    monitor-exit v0
    :try_end_18
    .catchall {:try_start_f .. :try_end_18} :catchall_16

    throw v1

    .line 1139
    :cond_19
    :goto_19
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "invalid bluetooth data given: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BatteryStatsService"

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1140
    return-void
.end method

.method public noteChangeWakelockFromSource(Landroid/os/WorkSource;ILjava/lang/String;Ljava/lang/String;ILandroid/os/WorkSource;ILjava/lang/String;Ljava/lang/String;IZ)V
    .registers 27
    .param p1, "ws"  # Landroid/os/WorkSource;
    .param p2, "pid"  # I
    .param p3, "name"  # Ljava/lang/String;
    .param p4, "historyName"  # Ljava/lang/String;
    .param p5, "type"  # I
    .param p6, "newWs"  # Landroid/os/WorkSource;
    .param p7, "newPid"  # I
    .param p8, "newName"  # Ljava/lang/String;
    .param p9, "newHistoryName"  # Ljava/lang/String;
    .param p10, "newType"  # I
    .param p11, "newUnimportantForLogging"  # Z

    .line 574
    move-object v1, p0

    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 575
    iget-object v2, v1, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v2

    .line 576
    :try_start_7
    iget-object v3, v1, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    move-object/from16 v4, p1

    move/from16 v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move/from16 v8, p5

    move-object/from16 v9, p6

    move/from16 v10, p7

    move-object/from16 v11, p8

    move-object/from16 v12, p9

    move/from16 v13, p10

    move/from16 v14, p11

    invoke-virtual/range {v3 .. v14}, Lcom/android/internal/os/BatteryStatsImpl;->noteChangeWakelockFromSourceLocked(Landroid/os/WorkSource;ILjava/lang/String;Ljava/lang/String;ILandroid/os/WorkSource;ILjava/lang/String;Ljava/lang/String;IZ)V

    .line 578
    monitor-exit v2

    .line 579
    return-void

    .line 578
    :catchall_24
    move-exception v0

    monitor-exit v2
    :try_end_26
    .catchall {:try_start_7 .. :try_end_26} :catchall_24

    throw v0
.end method

.method public noteConnectivityChanged(ILjava/lang/String;)V
    .registers 5
    .param p1, "type"  # I
    .param p2, "extra"  # Ljava/lang/String;

    .line 717
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 718
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 719
    :try_start_6
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl;->noteConnectivityChangedLocked(ILjava/lang/String;)V

    .line 720
    monitor-exit v0

    .line 721
    return-void

    .line 720
    :catchall_d
    move-exception v1

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_6 .. :try_end_f} :catchall_d

    throw v1
.end method

.method public noteDeviceIdleMode(ILjava/lang/String;I)V
    .registers 6
    .param p1, "mode"  # I
    .param p2, "activeReason"  # Ljava/lang/String;
    .param p3, "activeUid"  # I

    .line 1071
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 1072
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 1073
    :try_start_6
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl;->noteDeviceIdleModeLocked(ILjava/lang/String;I)V

    .line 1074
    monitor-exit v0

    .line 1075
    return-void

    .line 1074
    :catchall_d
    move-exception v1

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_6 .. :try_end_f} :catchall_d

    throw v1
.end method

.method public noteEvent(ILjava/lang/String;I)V
    .registers 6
    .param p1, "code"  # I
    .param p2, "name"  # Ljava/lang/String;
    .param p3, "uid"  # I

    .line 470
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 471
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 472
    :try_start_6
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl;->noteEventLocked(ILjava/lang/String;I)V

    .line 473
    monitor-exit v0

    .line 474
    return-void

    .line 473
    :catchall_d
    move-exception v1

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_6 .. :try_end_f} :catchall_d

    throw v1
.end method

.method public noteFaceState(I)V
    .registers 4
    .param p1, "on"  # I

    .line 1834
    if-nez p1, :cond_f

    .line 1835
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 1836
    :try_start_5
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1}, Lcom/android/internal/os/BatteryStatsImpl;->noteFaceOnLocked()V

    .line 1837
    monitor-exit v0

    goto :goto_36

    :catchall_c
    move-exception v1

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_5 .. :try_end_e} :catchall_c

    throw v1

    .line 1838
    :cond_f
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1f

    .line 1839
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 1840
    :try_start_15
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1}, Lcom/android/internal/os/BatteryStatsImpl;->noteFaceOffLocked()V

    .line 1841
    monitor-exit v0

    goto :goto_36

    :catchall_1c
    move-exception v1

    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_15 .. :try_end_1e} :catchall_1c

    throw v1

    .line 1843
    :cond_1f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "unknown face state: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BatteryStatsService"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1845
    :goto_36
    return-void
.end method

.method public noteFlashlightOff(I)V
    .registers 6
    .param p1, "uid"  # I

    .line 853
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 854
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 855
    :try_start_6
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1, p1}, Lcom/android/internal/os/BatteryStatsImpl;->noteFlashlightOffLocked(I)V

    .line 856
    const/16 v1, 0x1a

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v1, p1, v2, v3}, Landroid/util/StatsLog;->write_non_chained(IILjava/lang/String;I)I

    .line 858
    monitor-exit v0

    .line 859
    return-void

    .line 858
    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_6 .. :try_end_16} :catchall_14

    throw v1
.end method

.method public noteFlashlightOn(I)V
    .registers 6
    .param p1, "uid"  # I

    .line 844
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 845
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 846
    :try_start_6
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1, p1}, Lcom/android/internal/os/BatteryStatsImpl;->noteFlashlightOnLocked(I)V

    .line 847
    const/16 v1, 0x1a

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {v1, p1, v2, v3}, Landroid/util/StatsLog;->write_non_chained(IILjava/lang/String;I)I

    .line 849
    monitor-exit v0

    .line 850
    return-void

    .line 849
    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_6 .. :try_end_16} :catchall_14

    throw v1
.end method

.method public noteFodState(I)V
    .registers 4
    .param p1, "on"  # I

    .line 1819
    if-nez p1, :cond_13

    iget v0, p0, Lcom/android/server/am/BatteryStatsService;->mMode:I

    if-eqz v0, :cond_13

    .line 1820
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 1821
    :try_start_9
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1}, Lcom/android/internal/os/BatteryStatsImpl;->noteFodOnLocked()V

    .line 1822
    monitor-exit v0

    goto :goto_3a

    :catchall_10
    move-exception v1

    monitor-exit v0
    :try_end_12
    .catchall {:try_start_9 .. :try_end_12} :catchall_10

    throw v1

    .line 1823
    :cond_13
    const/4 v0, 0x1

    if-ne p1, v0, :cond_23

    .line 1824
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 1825
    :try_start_19
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1}, Lcom/android/internal/os/BatteryStatsImpl;->noteFodOffLocked()V

    .line 1826
    monitor-exit v0

    goto :goto_3a

    :catchall_20
    move-exception v1

    monitor-exit v0
    :try_end_22
    .catchall {:try_start_19 .. :try_end_22} :catchall_20

    throw v1

    .line 1828
    :cond_23
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "unknown fod state: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BatteryStatsService"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1830
    :goto_3a
    return-void
.end method

.method public noteFullWifiLockAcquired(I)V
    .registers 4
    .param p1, "uid"  # I

    .line 968
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 969
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 970
    :try_start_6
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1, p1}, Lcom/android/internal/os/BatteryStatsImpl;->noteFullWifiLockAcquiredLocked(I)V

    .line 971
    monitor-exit v0

    .line 972
    return-void

    .line 971
    :catchall_d
    move-exception v1

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_6 .. :try_end_f} :catchall_d

    throw v1
.end method

.method public noteFullWifiLockAcquiredFromSource(Landroid/os/WorkSource;)V
    .registers 4
    .param p1, "ws"  # Landroid/os/WorkSource;

    .line 1010
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 1011
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 1012
    :try_start_6
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1, p1}, Lcom/android/internal/os/BatteryStatsImpl;->noteFullWifiLockAcquiredFromSourceLocked(Landroid/os/WorkSource;)V

    .line 1013
    monitor-exit v0

    .line 1014
    return-void

    .line 1013
    :catchall_d
    move-exception v1

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_6 .. :try_end_f} :catchall_d

    throw v1
.end method

.method public noteFullWifiLockReleased(I)V
    .registers 4
    .param p1, "uid"  # I

    .line 975
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 976
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 977
    :try_start_6
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1, p1}, Lcom/android/internal/os/BatteryStatsImpl;->noteFullWifiLockReleasedLocked(I)V

    .line 978
    monitor-exit v0

    .line 979
    return-void

    .line 978
    :catchall_d
    move-exception v1

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_6 .. :try_end_f} :catchall_d

    throw v1
.end method

.method public noteFullWifiLockReleasedFromSource(Landroid/os/WorkSource;)V
    .registers 4
    .param p1, "ws"  # Landroid/os/WorkSource;

    .line 1017
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 1018
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 1019
    :try_start_6
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1, p1}, Lcom/android/internal/os/BatteryStatsImpl;->noteFullWifiLockReleasedFromSourceLocked(Landroid/os/WorkSource;)V

    .line 1020
    monitor-exit v0

    .line 1021
    return-void

    .line 1020
    :catchall_d
    move-exception v1

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_6 .. :try_end_f} :catchall_d

    throw v1
.end method

.method public noteGpsChanged(Landroid/os/WorkSource;Landroid/os/WorkSource;)V
    .registers 5
    .param p1, "oldWs"  # Landroid/os/WorkSource;
    .param p2, "newWs"  # Landroid/os/WorkSource;

    .line 657
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 658
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 659
    :try_start_6
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl;->noteGpsChangedLocked(Landroid/os/WorkSource;Landroid/os/WorkSource;)V

    .line 660
    monitor-exit v0

    .line 661
    return-void

    .line 660
    :catchall_d
    move-exception v1

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_6 .. :try_end_f} :catchall_d

    throw v1
.end method

.method public noteGpsSignalQuality(I)V
    .registers 4
    .param p1, "signalLevel"  # I

    .line 664
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 665
    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1, p1}, Lcom/android/internal/os/BatteryStatsImpl;->noteGpsSignalQualityLocked(I)V

    .line 666
    monitor-exit v0

    .line 667
    return-void

    .line 666
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method

.method public noteInteractive(Z)V
    .registers 4
    .param p1, "interactive"  # Z

    .line 710
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 711
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 712
    :try_start_6
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1, p1}, Lcom/android/internal/os/BatteryStatsImpl;->noteInteractiveLocked(Z)V

    .line 713
    monitor-exit v0

    .line 714
    return-void

    .line 713
    :catchall_d
    move-exception v1

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_6 .. :try_end_f} :catchall_d

    throw v1
.end method

.method public noteJobFinish(Ljava/lang/String;IIII)V
    .registers 16
    .param p1, "name"  # Ljava/lang/String;
    .param p2, "uid"  # I
    .param p3, "stopReason"  # I
    .param p4, "standbyBucket"  # I
    .param p5, "jobid"  # I

    .line 507
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 508
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 509
    :try_start_6
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl;->noteJobFinishLocked(Ljava/lang/String;II)V

    .line 510
    const/16 v2, 0x8

    const/4 v4, 0x0

    const/4 v6, 0x0

    move v3, p2

    move-object v5, p1

    move v7, p3

    move v8, p4

    move v9, p5

    invoke-static/range {v2 .. v9}, Landroid/util/StatsLog;->write_non_chained(IILjava/lang/String;Ljava/lang/String;IIII)I

    .line 513
    monitor-exit v0

    .line 514
    return-void

    .line 513
    :catchall_19
    move-exception v1

    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_6 .. :try_end_1b} :catchall_19

    throw v1
.end method

.method public noteJobStart(Ljava/lang/String;III)V
    .registers 15
    .param p1, "name"  # Ljava/lang/String;
    .param p2, "uid"  # I
    .param p3, "standbyBucket"  # I
    .param p4, "jobid"  # I

    .line 496
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 497
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 498
    :try_start_6
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl;->noteJobStartLocked(Ljava/lang/String;I)V

    .line 499
    const/16 v2, 0x8

    const/4 v4, 0x0

    const/4 v6, 0x1

    const/4 v7, -0x1

    move v3, p2

    move-object v5, p1

    move v8, p3

    move v9, p4

    invoke-static/range {v2 .. v9}, Landroid/util/StatsLog;->write_non_chained(IILjava/lang/String;Ljava/lang/String;IIII)I

    .line 502
    monitor-exit v0

    .line 503
    return-void

    .line 502
    :catchall_19
    move-exception v1

    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_6 .. :try_end_1b} :catchall_19

    throw v1
.end method

.method noteJobsDeferred(IIJ)V
    .registers 7
    .param p1, "uid"  # I
    .param p2, "numDeferred"  # I
    .param p3, "sinceLast"  # J

    .line 518
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 519
    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/android/internal/os/BatteryStatsImpl;->noteJobsDeferredLocked(IIJ)V

    .line 520
    monitor-exit v0

    .line 521
    return-void

    .line 520
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method

.method public noteLongPartialWakelockFinish(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 6
    .param p1, "name"  # Ljava/lang/String;
    .param p2, "historyName"  # Ljava/lang/String;
    .param p3, "uid"  # I

    .line 608
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 609
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 610
    :try_start_6
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl;->noteLongPartialWakelockFinish(Ljava/lang/String;Ljava/lang/String;I)V

    .line 611
    monitor-exit v0

    .line 612
    return-void

    .line 611
    :catchall_d
    move-exception v1

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_6 .. :try_end_f} :catchall_d

    throw v1
.end method

.method public noteLongPartialWakelockFinishFromSource(Ljava/lang/String;Ljava/lang/String;Landroid/os/WorkSource;)V
    .registers 6
    .param p1, "name"  # Ljava/lang/String;
    .param p2, "historyName"  # Ljava/lang/String;
    .param p3, "workSource"  # Landroid/os/WorkSource;

    .line 617
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 618
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 619
    :try_start_6
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl;->noteLongPartialWakelockFinishFromSource(Ljava/lang/String;Ljava/lang/String;Landroid/os/WorkSource;)V

    .line 620
    monitor-exit v0

    .line 621
    return-void

    .line 620
    :catchall_d
    move-exception v1

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_6 .. :try_end_f} :catchall_d

    throw v1
.end method

.method public noteLongPartialWakelockStart(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 6
    .param p1, "name"  # Ljava/lang/String;
    .param p2, "historyName"  # Ljava/lang/String;
    .param p3, "uid"  # I

    .line 591
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 592
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 593
    :try_start_6
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl;->noteLongPartialWakelockStart(Ljava/lang/String;Ljava/lang/String;I)V

    .line 594
    monitor-exit v0

    .line 595
    return-void

    .line 594
    :catchall_d
    move-exception v1

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_6 .. :try_end_f} :catchall_d

    throw v1
.end method

.method public noteLongPartialWakelockStartFromSource(Ljava/lang/String;Ljava/lang/String;Landroid/os/WorkSource;)V
    .registers 6
    .param p1, "name"  # Ljava/lang/String;
    .param p2, "historyName"  # Ljava/lang/String;
    .param p3, "workSource"  # Landroid/os/WorkSource;

    .line 600
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 601
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 602
    :try_start_6
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl;->noteLongPartialWakelockStartFromSource(Ljava/lang/String;Ljava/lang/String;Landroid/os/WorkSource;)V

    .line 603
    monitor-exit v0

    .line 604
    return-void

    .line 603
    :catchall_d
    move-exception v1

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_6 .. :try_end_f} :catchall_d

    throw v1
.end method

.method public noteMobileRadioPowerState(IJI)V
    .registers 9
    .param p1, "powerState"  # I
    .param p2, "timestampNs"  # J
    .param p4, "uid"  # I

    .line 724
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 726
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 727
    :try_start_6
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/android/internal/os/BatteryStatsImpl;->noteMobileRadioPowerStateLocked(IJI)Z

    move-result v1

    .line 728
    .local v1, "update":Z
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_6 .. :try_end_d} :catchall_19

    .line 730
    if-eqz v1, :cond_18

    .line 731
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mWorker:Lcom/android/server/am/BatteryExternalStatsWorker;

    const/4 v2, 0x4

    const-string/jumbo v3, "modem-data"

    invoke-virtual {v0, v3, v2}, Lcom/android/server/am/BatteryExternalStatsWorker;->scheduleSync(Ljava/lang/String;I)Ljava/util/concurrent/Future;

    .line 733
    :cond_18
    return-void

    .line 728
    .end local v1  # "update":Z
    :catchall_19
    move-exception v1

    :try_start_1a
    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_1a .. :try_end_1b} :catchall_19

    throw v1
.end method

.method public noteModemControllerActivity(Landroid/telephony/ModemActivityInfo;)V
    .registers 4
    .param p1, "info"  # Landroid/telephony/ModemActivityInfo;

    .line 1150
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 1152
    if-eqz p1, :cond_12

    invoke-virtual {p1}, Landroid/telephony/ModemActivityInfo;->isValid()Z

    move-result v0

    if-nez v0, :cond_c

    goto :goto_12

    .line 1157
    :cond_c
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->updateMobileRadioState(Landroid/telephony/ModemActivityInfo;)V

    .line 1158
    return-void

    .line 1153
    :cond_12
    :goto_12
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "invalid modem data given: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BatteryStatsService"

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1154
    return-void
.end method

.method public noteModifyTime()V
    .registers 2

    .line 1849
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mBatteryLevelStats:Lcom/android/internal/os/BatteryLevelStats;

    invoke-virtual {v0}, Lcom/android/internal/os/BatteryLevelStats;->noteModifyTime()V

    .line 1850
    return-void
.end method

.method public noteNetworkInterfaceType(Ljava/lang/String;I)V
    .registers 5
    .param p1, "iface"  # Ljava/lang/String;
    .param p2, "networkType"  # I

    .line 1053
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 1054
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 1055
    :try_start_6
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl;->noteNetworkInterfaceTypeLocked(Ljava/lang/String;I)V

    .line 1056
    monitor-exit v0

    .line 1057
    return-void

    .line 1056
    :catchall_d
    move-exception v1

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_6 .. :try_end_f} :catchall_d

    throw v1
.end method

.method public noteNetworkStatsEnabled()V
    .registers 4

    .line 1061
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 1065
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mWorker:Lcom/android/server/am/BatteryExternalStatsWorker;

    const-string/jumbo v1, "network-stats-enabled"

    const/4 v2, 0x6

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/BatteryExternalStatsWorker;->scheduleSync(Ljava/lang/String;I)Ljava/util/concurrent/Future;

    .line 1067
    return-void
.end method

.method public noteNetworkTrace(ILjava/lang/String;Ljava/lang/String;IJ)V
    .registers 15
    .param p1, "uid"  # I
    .param p2, "pkgName"  # Ljava/lang/String;
    .param p3, "processName"  # Ljava/lang/String;
    .param p4, "count"  # I
    .param p5, "duration"  # J

    .line 1772
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 1773
    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move-wide v6, p5

    invoke-virtual/range {v1 .. v7}, Lcom/android/internal/os/BatteryStatsImpl;->noteNetAccessLocked(ILjava/lang/String;Ljava/lang/String;IJ)V

    .line 1774
    monitor-exit v0

    .line 1775
    return-void

    .line 1774
    :catchall_f
    move-exception v1

    monitor-exit v0
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_f

    throw v1
.end method

.method public notePackageInstalled(Ljava/lang/String;J)V
    .registers 6
    .param p1, "pkgName"  # Ljava/lang/String;
    .param p2, "versionCode"  # J

    .line 1078
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 1079
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 1080
    :try_start_6
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl;->notePackageInstalledLocked(Ljava/lang/String;J)V

    .line 1081
    monitor-exit v0

    .line 1082
    return-void

    .line 1081
    :catchall_d
    move-exception v1

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_6 .. :try_end_f} :catchall_d

    throw v1
.end method

.method public notePackageUninstalled(Ljava/lang/String;)V
    .registers 4
    .param p1, "pkgName"  # Ljava/lang/String;

    .line 1085
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 1086
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 1087
    :try_start_6
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1, p1}, Lcom/android/internal/os/BatteryStatsImpl;->notePackageUninstalledLocked(Ljava/lang/String;)V

    .line 1088
    monitor-exit v0

    .line 1089
    return-void

    .line 1088
    :catchall_d
    move-exception v1

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_6 .. :try_end_f} :catchall_d

    throw v1
.end method

.method public notePhoneDataConnectionState(IZ)V
    .registers 5
    .param p1, "dataType"  # I
    .param p2, "hasData"  # Z

    .line 757
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 758
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 759
    :try_start_6
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl;->notePhoneDataConnectionStateLocked(IZ)V

    .line 760
    monitor-exit v0

    .line 761
    return-void

    .line 760
    :catchall_d
    move-exception v1

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_6 .. :try_end_f} :catchall_d

    throw v1
.end method

.method public notePhoneOff()V
    .registers 3

    .line 743
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 744
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 745
    :try_start_6
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1}, Lcom/android/internal/os/BatteryStatsImpl;->notePhoneOffLocked()V

    .line 746
    monitor-exit v0

    .line 747
    return-void

    .line 746
    :catchall_d
    move-exception v1

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_6 .. :try_end_f} :catchall_d

    throw v1
.end method

.method public notePhoneOn()V
    .registers 3

    .line 736
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 737
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 738
    :try_start_6
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1}, Lcom/android/internal/os/BatteryStatsImpl;->notePhoneOnLocked()V

    .line 739
    monitor-exit v0

    .line 740
    return-void

    .line 739
    :catchall_d
    move-exception v1

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_6 .. :try_end_f} :catchall_d

    throw v1
.end method

.method public notePhoneSignalStrength(Landroid/telephony/SignalStrength;)V
    .registers 4
    .param p1, "signalStrength"  # Landroid/telephony/SignalStrength;

    .line 750
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 751
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 752
    :try_start_6
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1, p1}, Lcom/android/internal/os/BatteryStatsImpl;->notePhoneSignalStrengthLocked(Landroid/telephony/SignalStrength;)V

    .line 753
    monitor-exit v0

    .line 754
    return-void

    .line 753
    :catchall_d
    move-exception v1

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_6 .. :try_end_f} :catchall_d

    throw v1
.end method

.method public notePhoneState(I)V
    .registers 5
    .param p1, "state"  # I

    .line 764
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 765
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v0

    .line 766
    .local v0, "simState":I
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v1

    .line 767
    :try_start_e
    iget-object v2, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v2, p1, v0}, Lcom/android/internal/os/BatteryStatsImpl;->notePhoneStateLocked(II)V

    .line 768
    monitor-exit v1

    .line 769
    return-void

    .line 768
    :catchall_15
    move-exception v2

    monitor-exit v1
    :try_end_17
    .catchall {:try_start_e .. :try_end_17} :catchall_15

    throw v2
.end method

.method noteProcessAnr(Ljava/lang/String;I)V
    .registers 5
    .param p1, "name"  # Ljava/lang/String;
    .param p2, "uid"  # I

    .line 388
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 389
    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl;->noteProcessAnrLocked(Ljava/lang/String;I)V

    .line 390
    monitor-exit v0

    .line 391
    return-void

    .line 390
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method

.method noteProcessCrash(Ljava/lang/String;I)V
    .registers 6
    .param p1, "name"  # Ljava/lang/String;
    .param p2, "uid"  # I

    .line 380
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 381
    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl;->noteProcessCrashLocked(Ljava/lang/String;I)V

    .line 382
    const/16 v1, 0x1c

    const/4 v2, 0x2

    invoke-static {v1, p2, p1, v2}, Landroid/util/StatsLog;->write(IILjava/lang/String;I)I

    .line 384
    monitor-exit v0

    .line 385
    return-void

    .line 384
    :catchall_10
    move-exception v1

    monitor-exit v0
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_10

    throw v1
.end method

.method noteProcessFinish(Ljava/lang/String;I)V
    .registers 6
    .param p1, "name"  # Ljava/lang/String;
    .param p2, "uid"  # I

    .line 394
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 395
    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl;->noteProcessFinishLocked(Ljava/lang/String;I)V

    .line 396
    const/16 v1, 0x1c

    const/4 v2, 0x0

    invoke-static {v1, p2, p1, v2}, Landroid/util/StatsLog;->write(IILjava/lang/String;I)I

    .line 398
    monitor-exit v0

    .line 399
    return-void

    .line 398
    :catchall_10
    move-exception v1

    monitor-exit v0
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_10

    throw v1
.end method

.method noteProcessStart(Ljava/lang/String;I)V
    .registers 6
    .param p1, "name"  # Ljava/lang/String;
    .param p2, "uid"  # I

    .line 372
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 373
    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl;->noteProcessStartLocked(Ljava/lang/String;I)V

    .line 374
    const/16 v1, 0x1c

    const/4 v2, 0x1

    invoke-static {v1, p2, p1, v2}, Landroid/util/StatsLog;->write(IILjava/lang/String;I)I

    .line 376
    monitor-exit v0

    .line 377
    return-void

    .line 376
    :catchall_10
    move-exception v1

    monitor-exit v0
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_10

    throw v1
.end method

.method public noteResetAudio()V
    .registers 6

    .line 826
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 827
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 828
    :try_start_6
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1}, Lcom/android/internal/os/BatteryStatsImpl;->noteResetAudioLocked()V

    .line 829
    const/16 v1, 0x17

    const/4 v2, -0x1

    const/4 v3, 0x0

    const/4 v4, 0x2

    invoke-static {v1, v2, v3, v4}, Landroid/util/StatsLog;->write_non_chained(IILjava/lang/String;I)I

    .line 831
    monitor-exit v0

    .line 832
    return-void

    .line 831
    :catchall_15
    move-exception v1

    monitor-exit v0
    :try_end_17
    .catchall {:try_start_6 .. :try_end_17} :catchall_15

    throw v1
.end method

.method public noteResetBleScan()V
    .registers 3

    .line 1109
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 1110
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 1111
    :try_start_6
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1}, Lcom/android/internal/os/BatteryStatsImpl;->noteResetBluetoothScanLocked()V

    .line 1112
    monitor-exit v0

    .line 1113
    return-void

    .line 1112
    :catchall_d
    move-exception v1

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_6 .. :try_end_f} :catchall_d

    throw v1
.end method

.method public noteResetCamera()V
    .registers 6

    .line 882
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 883
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 884
    :try_start_6
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1}, Lcom/android/internal/os/BatteryStatsImpl;->noteResetCameraLocked()V

    .line 885
    const/16 v1, 0x19

    const/4 v2, -0x1

    const/4 v3, 0x0

    const/4 v4, 0x2

    invoke-static {v1, v2, v3, v4}, Landroid/util/StatsLog;->write_non_chained(IILjava/lang/String;I)I

    .line 887
    monitor-exit v0

    .line 888
    return-void

    .line 887
    :catchall_15
    move-exception v1

    monitor-exit v0
    :try_end_17
    .catchall {:try_start_6 .. :try_end_17} :catchall_15

    throw v1
.end method

.method public noteResetFlashlight()V
    .registers 6

    .line 891
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 892
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 893
    :try_start_6
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1}, Lcom/android/internal/os/BatteryStatsImpl;->noteResetFlashlightLocked()V

    .line 894
    const/16 v1, 0x1a

    const/4 v2, -0x1

    const/4 v3, 0x0

    const/4 v4, 0x2

    invoke-static {v1, v2, v3, v4}, Landroid/util/StatsLog;->write_non_chained(IILjava/lang/String;I)I

    .line 896
    monitor-exit v0

    .line 897
    return-void

    .line 896
    :catchall_15
    move-exception v1

    monitor-exit v0
    :try_end_17
    .catchall {:try_start_6 .. :try_end_17} :catchall_15

    throw v1
.end method

.method public noteResetVideo()V
    .registers 6

    .line 835
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 836
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 837
    :try_start_6
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1}, Lcom/android/internal/os/BatteryStatsImpl;->noteResetVideoLocked()V

    .line 838
    const/16 v1, 0x18

    const/4 v2, -0x1

    const/4 v3, 0x0

    const/4 v4, 0x2

    invoke-static {v1, v2, v3, v4}, Landroid/util/StatsLog;->write_non_chained(IILjava/lang/String;I)I

    .line 840
    monitor-exit v0

    .line 841
    return-void

    .line 840
    :catchall_15
    move-exception v1

    monitor-exit v0
    :try_end_17
    .catchall {:try_start_6 .. :try_end_17} :catchall_15

    throw v1
.end method

.method public noteScreenBrightness(I)V
    .registers 4
    .param p1, "brightness"  # I

    .line 688
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 689
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 690
    const/16 v1, 0x9

    :try_start_8
    invoke-static {v1, p1}, Landroid/util/StatsLog;->write(II)I

    .line 691
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1, p1}, Lcom/android/internal/os/BatteryStatsImpl;->noteScreenBrightnessLocked(I)V

    .line 692
    monitor-exit v0

    .line 693
    return-void

    .line 692
    :catchall_12
    move-exception v1

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_8 .. :try_end_14} :catchall_12

    throw v1
.end method

.method public noteScreenState(I)V
    .registers 4
    .param p1, "state"  # I

    .line 670
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 672
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 673
    const/16 v1, 0x1d

    :try_start_8
    invoke-static {v1, p1}, Landroid/util/StatsLog;->write(II)I

    .line 675
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1, p1}, Lcom/android/internal/os/BatteryStatsImpl;->noteScreenStateLocked(I)V

    .line 676
    monitor-exit v0
    :try_end_11
    .catchall {:try_start_8 .. :try_end_11} :catchall_1e

    .line 681
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mBatteryLevelStats:Lcom/android/internal/os/BatteryLevelStats;

    monitor-enter v1

    .line 682
    :try_start_14
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mBatteryLevelStats:Lcom/android/internal/os/BatteryLevelStats;

    invoke-virtual {v0, p1}, Lcom/android/internal/os/BatteryLevelStats;->onScreenStatusChanged(I)V

    .line 683
    monitor-exit v1

    .line 685
    return-void

    .line 683
    :catchall_1b
    move-exception v0

    monitor-exit v1
    :try_end_1d
    .catchall {:try_start_14 .. :try_end_1d} :catchall_1b

    throw v0

    .line 676
    :catchall_1e
    move-exception v1

    :try_start_1f
    monitor-exit v0
    :try_end_20
    .catchall {:try_start_1f .. :try_end_20} :catchall_1e

    throw v1
.end method

.method public noteStartAudio(I)V
    .registers 6
    .param p1, "uid"  # I

    .line 790
    invoke-direct {p0, p1}, Lcom/android/server/am/BatteryStatsService;->enforceSelfOrCallingPermission(I)V

    .line 791
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 792
    :try_start_6
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1, p1}, Lcom/android/internal/os/BatteryStatsImpl;->noteAudioOnLocked(I)V

    .line 793
    const/16 v1, 0x17

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {v1, p1, v2, v3}, Landroid/util/StatsLog;->write_non_chained(IILjava/lang/String;I)I

    .line 795
    monitor-exit v0

    .line 796
    return-void

    .line 795
    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_6 .. :try_end_16} :catchall_14

    throw v1
.end method

.method public noteStartCamera(I)V
    .registers 6
    .param p1, "uid"  # I

    .line 862
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 864
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 865
    :try_start_6
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1, p1}, Lcom/android/internal/os/BatteryStatsImpl;->noteCameraOnLocked(I)V

    .line 866
    const/16 v1, 0x19

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {v1, p1, v2, v3}, Landroid/util/StatsLog;->write_non_chained(IILjava/lang/String;I)I

    .line 868
    monitor-exit v0

    .line 870
    return-void

    .line 868
    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_6 .. :try_end_16} :catchall_14

    throw v1
.end method

.method public noteStartSensor(II)V
    .registers 7
    .param p1, "uid"  # I
    .param p2, "sensor"  # I

    .line 624
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 625
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 626
    :try_start_6
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl;->noteStartSensorLocked(II)V

    .line 627
    const/4 v1, 0x5

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {v1, p1, v2, p2, v3}, Landroid/util/StatsLog;->write_non_chained(IILjava/lang/String;II)I

    .line 629
    monitor-exit v0

    .line 630
    return-void

    .line 629
    :catchall_13
    move-exception v1

    monitor-exit v0
    :try_end_15
    .catchall {:try_start_6 .. :try_end_15} :catchall_13

    throw v1
.end method

.method public noteStartVideo(I)V
    .registers 6
    .param p1, "uid"  # I

    .line 808
    invoke-direct {p0, p1}, Lcom/android/server/am/BatteryStatsService;->enforceSelfOrCallingPermission(I)V

    .line 809
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 810
    :try_start_6
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1, p1}, Lcom/android/internal/os/BatteryStatsImpl;->noteVideoOnLocked(I)V

    .line 811
    const/16 v1, 0x18

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {v1, p1, v2, v3}, Landroid/util/StatsLog;->write_non_chained(IILjava/lang/String;I)I

    .line 813
    monitor-exit v0

    .line 814
    return-void

    .line 813
    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_6 .. :try_end_16} :catchall_14

    throw v1
.end method

.method public noteStartWakelock(IILjava/lang/String;Ljava/lang/String;IZ)V
    .registers 22
    .param p1, "uid"  # I
    .param p2, "pid"  # I
    .param p3, "name"  # Ljava/lang/String;
    .param p4, "historyName"  # Ljava/lang/String;
    .param p5, "type"  # I
    .param p6, "unimportantForLogging"  # Z

    .line 546
    move-object v1, p0

    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 547
    iget-object v2, v1, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v2

    .line 548
    :try_start_7
    iget-object v3, v1, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    const/4 v6, 0x0

    .line 549
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v11

    .line 550
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v13

    .line 548
    move/from16 v4, p1

    move/from16 v5, p2

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    move/from16 v9, p5

    move/from16 v10, p6

    invoke-virtual/range {v3 .. v14}, Lcom/android/internal/os/BatteryStatsImpl;->noteStartWakeLocked(IILandroid/os/WorkSource$WorkChain;Ljava/lang/String;Ljava/lang/String;IZJJ)V

    .line 551
    monitor-exit v2

    .line 552
    return-void

    .line 551
    :catchall_23
    move-exception v0

    monitor-exit v2
    :try_end_25
    .catchall {:try_start_7 .. :try_end_25} :catchall_23

    throw v0
.end method

.method public noteStartWakelockFromSource(Landroid/os/WorkSource;ILjava/lang/String;Ljava/lang/String;IZ)V
    .registers 15
    .param p1, "ws"  # Landroid/os/WorkSource;
    .param p2, "pid"  # I
    .param p3, "name"  # Ljava/lang/String;
    .param p4, "historyName"  # Ljava/lang/String;
    .param p5, "type"  # I
    .param p6, "unimportantForLogging"  # Z

    .line 564
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 565
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 566
    :try_start_6
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    move v7, p6

    invoke-virtual/range {v1 .. v7}, Lcom/android/internal/os/BatteryStatsImpl;->noteStartWakeFromSourceLocked(Landroid/os/WorkSource;ILjava/lang/String;Ljava/lang/String;IZ)V

    .line 568
    monitor-exit v0

    .line 569
    return-void

    .line 568
    :catchall_13
    move-exception v1

    monitor-exit v0
    :try_end_15
    .catchall {:try_start_6 .. :try_end_15} :catchall_13

    throw v1
.end method

.method public noteStopAudio(I)V
    .registers 6
    .param p1, "uid"  # I

    .line 799
    invoke-direct {p0, p1}, Lcom/android/server/am/BatteryStatsService;->enforceSelfOrCallingPermission(I)V

    .line 800
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 801
    :try_start_6
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1, p1}, Lcom/android/internal/os/BatteryStatsImpl;->noteAudioOffLocked(I)V

    .line 802
    const/16 v1, 0x17

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v1, p1, v2, v3}, Landroid/util/StatsLog;->write_non_chained(IILjava/lang/String;I)I

    .line 804
    monitor-exit v0

    .line 805
    return-void

    .line 804
    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_6 .. :try_end_16} :catchall_14

    throw v1
.end method

.method public noteStopCamera(I)V
    .registers 6
    .param p1, "uid"  # I

    .line 873
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 874
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 875
    :try_start_6
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1, p1}, Lcom/android/internal/os/BatteryStatsImpl;->noteCameraOffLocked(I)V

    .line 876
    const/16 v1, 0x19

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v1, p1, v2, v3}, Landroid/util/StatsLog;->write_non_chained(IILjava/lang/String;I)I

    .line 878
    monitor-exit v0

    .line 879
    return-void

    .line 878
    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_6 .. :try_end_16} :catchall_14

    throw v1
.end method

.method public noteStopSensor(II)V
    .registers 7
    .param p1, "uid"  # I
    .param p2, "sensor"  # I

    .line 633
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 634
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 635
    :try_start_6
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl;->noteStopSensorLocked(II)V

    .line 636
    const/4 v1, 0x5

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v1, p1, v2, p2, v3}, Landroid/util/StatsLog;->write_non_chained(IILjava/lang/String;II)I

    .line 638
    monitor-exit v0

    .line 639
    return-void

    .line 638
    :catchall_13
    move-exception v1

    monitor-exit v0
    :try_end_15
    .catchall {:try_start_6 .. :try_end_15} :catchall_13

    throw v1
.end method

.method public noteStopVideo(I)V
    .registers 6
    .param p1, "uid"  # I

    .line 817
    invoke-direct {p0, p1}, Lcom/android/server/am/BatteryStatsService;->enforceSelfOrCallingPermission(I)V

    .line 818
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 819
    :try_start_6
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1, p1}, Lcom/android/internal/os/BatteryStatsImpl;->noteVideoOffLocked(I)V

    .line 820
    const/16 v1, 0x18

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v1, p1, v2, v3}, Landroid/util/StatsLog;->write_non_chained(IILjava/lang/String;I)I

    .line 822
    monitor-exit v0

    .line 823
    return-void

    .line 822
    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_6 .. :try_end_16} :catchall_14

    throw v1
.end method

.method public noteStopWakelock(IILjava/lang/String;Ljava/lang/String;I)V
    .registers 20
    .param p1, "uid"  # I
    .param p2, "pid"  # I
    .param p3, "name"  # Ljava/lang/String;
    .param p4, "historyName"  # Ljava/lang/String;
    .param p5, "type"  # I

    .line 555
    move-object v1, p0

    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 556
    iget-object v2, v1, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v2

    .line 557
    :try_start_7
    iget-object v3, v1, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    const/4 v6, 0x0

    .line 558
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v12

    .line 557
    move v4, p1

    move/from16 v5, p2

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    move/from16 v9, p5

    invoke-virtual/range {v3 .. v13}, Lcom/android/internal/os/BatteryStatsImpl;->noteStopWakeLocked(IILandroid/os/WorkSource$WorkChain;Ljava/lang/String;Ljava/lang/String;IJJ)V

    .line 559
    monitor-exit v2

    .line 560
    return-void

    .line 559
    :catchall_20
    move-exception v0

    monitor-exit v2
    :try_end_22
    .catchall {:try_start_7 .. :try_end_22} :catchall_20

    throw v0
.end method

.method public noteStopWakelockFromSource(Landroid/os/WorkSource;ILjava/lang/String;Ljava/lang/String;I)V
    .registers 13
    .param p1, "ws"  # Landroid/os/WorkSource;
    .param p2, "pid"  # I
    .param p3, "name"  # Ljava/lang/String;
    .param p4, "historyName"  # Ljava/lang/String;
    .param p5, "type"  # I

    .line 583
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 584
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 585
    :try_start_6
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    invoke-virtual/range {v1 .. v6}, Lcom/android/internal/os/BatteryStatsImpl;->noteStopWakeFromSourceLocked(Landroid/os/WorkSource;ILjava/lang/String;Ljava/lang/String;I)V

    .line 586
    monitor-exit v0

    .line 587
    return-void

    .line 586
    :catchall_12
    move-exception v1

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_6 .. :try_end_14} :catchall_12

    throw v1
.end method

.method public noteSyncFinish(Ljava/lang/String;I)V
    .registers 7
    .param p1, "name"  # Ljava/lang/String;
    .param p2, "uid"  # I

    .line 486
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 487
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 488
    :try_start_6
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl;->noteSyncFinishLocked(Ljava/lang/String;I)V

    .line 489
    const/4 v1, 0x7

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v1, p2, v2, p1, v3}, Landroid/util/StatsLog;->write_non_chained(IILjava/lang/String;Ljava/lang/String;I)I

    .line 491
    monitor-exit v0

    .line 492
    return-void

    .line 491
    :catchall_13
    move-exception v1

    monitor-exit v0
    :try_end_15
    .catchall {:try_start_6 .. :try_end_15} :catchall_13

    throw v1
.end method

.method public noteSyncStart(Ljava/lang/String;I)V
    .registers 7
    .param p1, "name"  # Ljava/lang/String;
    .param p2, "uid"  # I

    .line 477
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 478
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 479
    :try_start_6
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl;->noteSyncStartLocked(Ljava/lang/String;I)V

    .line 480
    const/4 v1, 0x7

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {v1, p2, v2, p1, v3}, Landroid/util/StatsLog;->write_non_chained(IILjava/lang/String;Ljava/lang/String;I)I

    .line 482
    monitor-exit v0

    .line 483
    return-void

    .line 482
    :catchall_13
    move-exception v1

    monitor-exit v0
    :try_end_15
    .catchall {:try_start_6 .. :try_end_15} :catchall_13

    throw v1
.end method

.method noteUidProcessState(II)V
    .registers 6
    .param p1, "uid"  # I
    .param p2, "state"  # I

    .line 403
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 404
    const/16 v1, 0x1b

    .line 405
    :try_start_5
    invoke-static {p2}, Landroid/app/ActivityManager;->processStateAmToProto(I)I

    move-result v2

    .line 404
    invoke-static {v1, p1, v2}, Landroid/util/StatsLog;->write(III)I

    .line 407
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl;->noteUidProcessStateLocked(II)V

    .line 408
    monitor-exit v0

    .line 409
    return-void

    .line 408
    :catchall_13
    move-exception v1

    monitor-exit v0
    :try_end_15
    .catchall {:try_start_5 .. :try_end_15} :catchall_13

    throw v1
.end method

.method public noteUserActivity(II)V
    .registers 5
    .param p1, "uid"  # I
    .param p2, "event"  # I

    .line 696
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 697
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 698
    :try_start_6
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl;->noteUserActivityLocked(II)V

    .line 699
    monitor-exit v0

    .line 700
    return-void

    .line 699
    :catchall_d
    move-exception v1

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_6 .. :try_end_f} :catchall_d

    throw v1
.end method

.method public noteVibratorOff(I)V
    .registers 4
    .param p1, "uid"  # I

    .line 649
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 650
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 651
    :try_start_6
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1, p1}, Lcom/android/internal/os/BatteryStatsImpl;->noteVibratorOffLocked(I)V

    .line 652
    monitor-exit v0

    .line 653
    return-void

    .line 652
    :catchall_d
    move-exception v1

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_6 .. :try_end_f} :catchall_d

    throw v1
.end method

.method public noteVibratorOn(IJ)V
    .registers 6
    .param p1, "uid"  # I
    .param p2, "durationMillis"  # J

    .line 642
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 643
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 644
    :try_start_6
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl;->noteVibratorOnLocked(IJ)V

    .line 645
    monitor-exit v0

    .line 646
    return-void

    .line 645
    :catchall_d
    move-exception v1

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_6 .. :try_end_f} :catchall_d

    throw v1
.end method

.method public noteWakeUp(Ljava/lang/String;I)V
    .registers 5
    .param p1, "reason"  # Ljava/lang/String;
    .param p2, "reasonUid"  # I

    .line 703
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 704
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 705
    :try_start_6
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl;->noteWakeUpLocked(Ljava/lang/String;I)V

    .line 706
    monitor-exit v0

    .line 707
    return-void

    .line 706
    :catchall_d
    move-exception v1

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_6 .. :try_end_f} :catchall_d

    throw v1
.end method

.method public noteWakupAlarm(Ljava/lang/String;ILandroid/os/WorkSource;Ljava/lang/String;)V
    .registers 7
    .param p1, "name"  # Ljava/lang/String;
    .param p2, "uid"  # I
    .param p3, "workSource"  # Landroid/os/WorkSource;
    .param p4, "tag"  # Ljava/lang/String;

    .line 524
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 525
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 526
    :try_start_6
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/android/internal/os/BatteryStatsImpl;->noteWakupAlarmLocked(Ljava/lang/String;ILandroid/os/WorkSource;Ljava/lang/String;)V

    .line 527
    monitor-exit v0

    .line 528
    return-void

    .line 527
    :catchall_d
    move-exception v1

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_6 .. :try_end_f} :catchall_d

    throw v1
.end method

.method public noteWifiBatchedScanStartedFromSource(Landroid/os/WorkSource;I)V
    .registers 5
    .param p1, "ws"  # Landroid/os/WorkSource;
    .param p2, "csph"  # I

    .line 1038
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 1039
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 1040
    :try_start_6
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl;->noteWifiBatchedScanStartedFromSourceLocked(Landroid/os/WorkSource;I)V

    .line 1041
    monitor-exit v0

    .line 1042
    return-void

    .line 1041
    :catchall_d
    move-exception v1

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_6 .. :try_end_f} :catchall_d

    throw v1
.end method

.method public noteWifiBatchedScanStoppedFromSource(Landroid/os/WorkSource;)V
    .registers 4
    .param p1, "ws"  # Landroid/os/WorkSource;

    .line 1045
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 1046
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 1047
    :try_start_6
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1, p1}, Lcom/android/internal/os/BatteryStatsImpl;->noteWifiBatchedScanStoppedFromSourceLocked(Landroid/os/WorkSource;)V

    .line 1048
    monitor-exit v0

    .line 1049
    return-void

    .line 1048
    :catchall_d
    move-exception v1

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_6 .. :try_end_f} :catchall_d

    throw v1
.end method

.method public noteWifiControllerActivity(Landroid/net/wifi/WifiActivityEnergyInfo;)V
    .registers 4
    .param p1, "info"  # Landroid/net/wifi/WifiActivityEnergyInfo;

    .line 1125
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 1127
    if-eqz p1, :cond_12

    invoke-virtual {p1}, Landroid/net/wifi/WifiActivityEnergyInfo;->isValid()Z

    move-result v0

    if-nez v0, :cond_c

    goto :goto_12

    .line 1132
    :cond_c
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->updateWifiState(Landroid/net/wifi/WifiActivityEnergyInfo;)V

    .line 1133
    return-void

    .line 1128
    :cond_12
    :goto_12
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "invalid wifi data given: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BatteryStatsService"

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1129
    return-void
.end method

.method public noteWifiMulticastDisabled(I)V
    .registers 4
    .param p1, "uid"  # I

    .line 1003
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 1004
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 1005
    :try_start_6
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1, p1}, Lcom/android/internal/os/BatteryStatsImpl;->noteWifiMulticastDisabledLocked(I)V

    .line 1006
    monitor-exit v0

    .line 1007
    return-void

    .line 1006
    :catchall_d
    move-exception v1

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_6 .. :try_end_f} :catchall_d

    throw v1
.end method

.method public noteWifiMulticastEnabled(I)V
    .registers 4
    .param p1, "uid"  # I

    .line 996
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 997
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 998
    :try_start_6
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1, p1}, Lcom/android/internal/os/BatteryStatsImpl;->noteWifiMulticastEnabledLocked(I)V

    .line 999
    monitor-exit v0

    .line 1000
    return-void

    .line 999
    :catchall_d
    move-exception v1

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_6 .. :try_end_f} :catchall_d

    throw v1
.end method

.method public noteWifiOff()V
    .registers 3

    .line 781
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 782
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 783
    :try_start_6
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1}, Lcom/android/internal/os/BatteryStatsImpl;->noteWifiOffLocked()V

    .line 784
    monitor-exit v0
    :try_end_c
    .catchall {:try_start_6 .. :try_end_c} :catchall_13

    .line 785
    const/16 v0, 0x71

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/util/StatsLog;->write(II)I

    .line 787
    return-void

    .line 784
    :catchall_13
    move-exception v1

    :try_start_14
    monitor-exit v0
    :try_end_15
    .catchall {:try_start_14 .. :try_end_15} :catchall_13

    throw v1
.end method

.method public noteWifiOn()V
    .registers 3

    .line 772
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 773
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 774
    :try_start_6
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1}, Lcom/android/internal/os/BatteryStatsImpl;->noteWifiOnLocked()V

    .line 775
    monitor-exit v0
    :try_end_c
    .catchall {:try_start_6 .. :try_end_c} :catchall_13

    .line 776
    const/16 v0, 0x71

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/util/StatsLog;->write(II)I

    .line 778
    return-void

    .line 775
    :catchall_13
    move-exception v1

    :try_start_14
    monitor-exit v0
    :try_end_15
    .catchall {:try_start_14 .. :try_end_15} :catchall_13

    throw v1
.end method

.method public noteWifiRadioPowerState(IJI)V
    .registers 11
    .param p1, "powerState"  # I
    .param p2, "tsNanos"  # J
    .param p4, "uid"  # I

    .line 901
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 905
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 906
    :try_start_6
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1}, Lcom/android/internal/os/BatteryStatsImpl;->isOnBattery()Z

    move-result v1

    if-eqz v1, :cond_33

    .line 907
    const/4 v1, 0x3

    const/4 v2, 0x2

    if-eq p1, v1, :cond_19

    if-ne p1, v2, :cond_15

    goto :goto_19

    .line 909
    :cond_15
    const-string/jumbo v1, "inactive"

    goto :goto_1b

    .line 908
    :cond_19
    :goto_19
    const-string v1, "active"

    .line 909
    :goto_1b
    nop

    .line 910
    .local v1, "type":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/am/BatteryStatsService;->mWorker:Lcom/android/server/am/BatteryExternalStatsWorker;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "wifi-data: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Lcom/android/server/am/BatteryExternalStatsWorker;->scheduleSync(Ljava/lang/String;I)Ljava/util/concurrent/Future;

    .line 912
    .end local v1  # "type":Ljava/lang/String;
    :cond_33
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/android/internal/os/BatteryStatsImpl;->noteWifiRadioPowerState(IJI)V

    .line 913
    monitor-exit v0

    .line 914
    return-void

    .line 913
    :catchall_3a
    move-exception v1

    monitor-exit v0
    :try_end_3c
    .catchall {:try_start_6 .. :try_end_3c} :catchall_3a

    throw v1
.end method

.method public noteWifiRssiChanged(I)V
    .registers 4
    .param p1, "newRssi"  # I

    .line 961
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 962
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 963
    :try_start_6
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1, p1}, Lcom/android/internal/os/BatteryStatsImpl;->noteWifiRssiChangedLocked(I)V

    .line 964
    monitor-exit v0

    .line 965
    return-void

    .line 964
    :catchall_d
    move-exception v1

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_6 .. :try_end_f} :catchall_d

    throw v1
.end method

.method public noteWifiRunning(Landroid/os/WorkSource;)V
    .registers 4
    .param p1, "ws"  # Landroid/os/WorkSource;

    .line 917
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 918
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 919
    :try_start_6
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1, p1}, Lcom/android/internal/os/BatteryStatsImpl;->noteWifiRunningLocked(Landroid/os/WorkSource;)V

    .line 920
    monitor-exit v0
    :try_end_c
    .catchall {:try_start_6 .. :try_end_c} :catchall_13

    .line 922
    const/16 v0, 0x72

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Landroid/util/StatsLog;->write(ILandroid/os/WorkSource;I)V

    .line 924
    return-void

    .line 920
    :catchall_13
    move-exception v1

    :try_start_14
    monitor-exit v0
    :try_end_15
    .catchall {:try_start_14 .. :try_end_15} :catchall_13

    throw v1
.end method

.method public noteWifiRunningChanged(Landroid/os/WorkSource;Landroid/os/WorkSource;)V
    .registers 5
    .param p1, "oldWs"  # Landroid/os/WorkSource;
    .param p2, "newWs"  # Landroid/os/WorkSource;

    .line 927
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 928
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 929
    :try_start_6
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl;->noteWifiRunningChangedLocked(Landroid/os/WorkSource;Landroid/os/WorkSource;)V

    .line 930
    monitor-exit v0
    :try_end_c
    .catchall {:try_start_6 .. :try_end_c} :catchall_17

    .line 931
    const/4 v0, 0x1

    const/16 v1, 0x72

    invoke-static {v1, p2, v0}, Landroid/util/StatsLog;->write(ILandroid/os/WorkSource;I)V

    .line 933
    const/4 v0, 0x0

    invoke-static {v1, p1, v0}, Landroid/util/StatsLog;->write(ILandroid/os/WorkSource;I)V

    .line 935
    return-void

    .line 930
    :catchall_17
    move-exception v1

    :try_start_18
    monitor-exit v0
    :try_end_19
    .catchall {:try_start_18 .. :try_end_19} :catchall_17

    throw v1
.end method

.method public noteWifiScanStarted(I)V
    .registers 4
    .param p1, "uid"  # I

    .line 982
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 983
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 984
    :try_start_6
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1, p1}, Lcom/android/internal/os/BatteryStatsImpl;->noteWifiScanStartedLocked(I)V

    .line 985
    monitor-exit v0

    .line 986
    return-void

    .line 985
    :catchall_d
    move-exception v1

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_6 .. :try_end_f} :catchall_d

    throw v1
.end method

.method public noteWifiScanStartedFromSource(Landroid/os/WorkSource;)V
    .registers 4
    .param p1, "ws"  # Landroid/os/WorkSource;

    .line 1024
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 1025
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 1026
    :try_start_6
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1, p1}, Lcom/android/internal/os/BatteryStatsImpl;->noteWifiScanStartedFromSourceLocked(Landroid/os/WorkSource;)V

    .line 1027
    monitor-exit v0

    .line 1028
    return-void

    .line 1027
    :catchall_d
    move-exception v1

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_6 .. :try_end_f} :catchall_d

    throw v1
.end method

.method public noteWifiScanStopped(I)V
    .registers 4
    .param p1, "uid"  # I

    .line 989
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 990
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 991
    :try_start_6
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1, p1}, Lcom/android/internal/os/BatteryStatsImpl;->noteWifiScanStoppedLocked(I)V

    .line 992
    monitor-exit v0

    .line 993
    return-void

    .line 992
    :catchall_d
    move-exception v1

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_6 .. :try_end_f} :catchall_d

    throw v1
.end method

.method public noteWifiScanStoppedFromSource(Landroid/os/WorkSource;)V
    .registers 4
    .param p1, "ws"  # Landroid/os/WorkSource;

    .line 1031
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 1032
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 1033
    :try_start_6
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1, p1}, Lcom/android/internal/os/BatteryStatsImpl;->noteWifiScanStoppedFromSourceLocked(Landroid/os/WorkSource;)V

    .line 1034
    monitor-exit v0

    .line 1035
    return-void

    .line 1034
    :catchall_d
    move-exception v1

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_6 .. :try_end_f} :catchall_d

    throw v1
.end method

.method public noteWifiState(ILjava/lang/String;)V
    .registers 5
    .param p1, "wifiState"  # I
    .param p2, "accessPoint"  # Ljava/lang/String;

    .line 947
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 948
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 949
    :try_start_6
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl;->noteWifiStateLocked(ILjava/lang/String;)V

    .line 950
    monitor-exit v0

    .line 951
    return-void

    .line 950
    :catchall_d
    move-exception v1

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_6 .. :try_end_f} :catchall_d

    throw v1
.end method

.method public noteWifiStopped(Landroid/os/WorkSource;)V
    .registers 4
    .param p1, "ws"  # Landroid/os/WorkSource;

    .line 938
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 939
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 940
    :try_start_6
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1, p1}, Lcom/android/internal/os/BatteryStatsImpl;->noteWifiStoppedLocked(Landroid/os/WorkSource;)V

    .line 941
    monitor-exit v0
    :try_end_c
    .catchall {:try_start_6 .. :try_end_c} :catchall_13

    .line 942
    const/16 v0, 0x72

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/util/StatsLog;->write(ILandroid/os/WorkSource;I)V

    .line 944
    return-void

    .line 941
    :catchall_13
    move-exception v1

    :try_start_14
    monitor-exit v0
    :try_end_15
    .catchall {:try_start_14 .. :try_end_15} :catchall_13

    throw v1
.end method

.method public noteWifiSupplicantStateChanged(IZ)V
    .registers 5
    .param p1, "supplState"  # I
    .param p2, "failedAuth"  # Z

    .line 954
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 955
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 956
    :try_start_6
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl;->noteWifiSupplicantStateChangedLocked(IZ)V

    .line 957
    monitor-exit v0

    .line 958
    return-void

    .line 957
    :catchall_d
    move-exception v1

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_6 .. :try_end_f} :catchall_d

    throw v1
.end method

.method onCleanupUser(I)V
    .registers 4
    .param p1, "userId"  # I

    .line 348
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 349
    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1, p1}, Lcom/android/internal/os/BatteryStatsImpl;->onCleanupUserLocked(I)V

    .line 350
    monitor-exit v0

    .line 351
    return-void

    .line 350
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method

.method public onLowPowerModeChanged(Landroid/os/PowerSaveState;)V
    .registers 5
    .param p1, "result"  # Landroid/os/PowerSaveState;

    .line 314
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 315
    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    iget-boolean v2, p1, Landroid/os/PowerSaveState;->batterySaverEnabled:Z

    invoke-virtual {v1, v2}, Lcom/android/internal/os/BatteryStatsImpl;->notePowerSaveModeLocked(Z)V

    .line 316
    monitor-exit v0

    .line 317
    return-void

    .line 316
    :catchall_c
    move-exception v1

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_c

    throw v1
.end method

.method onUserRemoved(I)V
    .registers 4
    .param p1, "userId"  # I

    .line 354
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 355
    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1, p1}, Lcom/android/internal/os/BatteryStatsImpl;->onUserRemovedLocked(I)V

    .line 356
    monitor-exit v0

    .line 357
    return-void

    .line 356
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method

.method public publish()V
    .registers 4

    .line 222
    const-class v0, Landroid/os/BatteryStatsInternal;

    new-instance v1, Lcom/android/server/am/BatteryStatsService$LocalService;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/server/am/BatteryStatsService$LocalService;-><init>(Lcom/android/server/am/BatteryStatsService;Lcom/android/server/am/BatteryStatsService$1;)V

    invoke-static {v0, v1}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 223
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    const-string v1, "batterystats"

    invoke-static {v1, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 224
    return-void
.end method

.method removeIsolatedUid(II)V
    .registers 5
    .param p1, "isolatedUid"  # I
    .param p2, "appUid"  # I

    .line 366
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 367
    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl;->scheduleRemoveIsolatedUidLocked(II)V

    .line 368
    monitor-exit v0

    .line 369
    return-void

    .line 368
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method

.method removeUid(I)V
    .registers 4
    .param p1, "uid"  # I

    .line 342
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 343
    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1, p1}, Lcom/android/internal/os/BatteryStatsImpl;->removeUidStatsLocked(I)V

    .line 344
    monitor-exit v0

    .line 345
    return-void

    .line 344
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method

.method public scheduleWriteToDisk()V
    .registers 2

    .line 333
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mWorker:Lcom/android/server/am/BatteryExternalStatsWorker;

    invoke-virtual {v0}, Lcom/android/server/am/BatteryExternalStatsWorker;->scheduleWrite()Ljava/util/concurrent/Future;

    .line 334
    return-void
.end method

.method public setBatteryState(IIIIIIII)V
    .registers 22
    .param p1, "status"  # I
    .param p2, "health"  # I
    .param p3, "plugType"  # I
    .param p4, "level"  # I
    .param p5, "temp"  # I
    .param p6, "volt"  # I
    .param p7, "chargeUAh"  # I
    .param p8, "chargeFullUAh"  # I

    .line 1168
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 1172
    move-object v10, p0

    iget-object v11, v10, Lcom/android/server/am/BatteryStatsService;->mWorker:Lcom/android/server/am/BatteryExternalStatsWorker;

    new-instance v12, Lcom/android/server/am/-$$Lambda$BatteryStatsService$ZxbqtJ7ozYmzYFkkNV3m_QRd0Sk;

    move-object v0, v12

    move-object v1, p0

    move/from16 v2, p3

    move v3, p1

    move v4, p2

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    invoke-direct/range {v0 .. v9}, Lcom/android/server/am/-$$Lambda$BatteryStatsService$ZxbqtJ7ozYmzYFkkNV3m_QRd0Sk;-><init>(Lcom/android/server/am/BatteryStatsService;IIIIIIII)V

    invoke-virtual {v11, v12}, Lcom/android/server/am/BatteryExternalStatsWorker;->scheduleRunnable(Ljava/lang/Runnable;)V

    .line 1202
    return-void
.end method

.method public setChargingStateUpdateDelayMillis(I)Z
    .registers 8
    .param p1, "delayMillis"  # I

    .line 1724
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.POWER_SAVER"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1725
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1728
    .local v0, "ident":J
    :try_start_c
    iget-object v2, p0, Lcom/android/server/am/BatteryStatsService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 1729
    .local v2, "contentResolver":Landroid/content/ContentResolver;
    const-string v3, "battery_charging_state_update_delay"

    int-to-long v4, p1

    invoke-static {v2, v3, v4, v5}, Landroid/provider/Settings$Global;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    move-result v3
    :try_end_19
    .catchall {:try_start_c .. :try_end_19} :catchall_1d

    .line 1733
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1729
    return v3

    .line 1733
    .end local v2  # "contentResolver":Landroid/content/ContentResolver;
    :catchall_1d
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public setDisplayPowerMode(I)V
    .registers 5
    .param p1, "mode"  # I

    .line 1793
    iput p1, p0, Lcom/android/server/am/BatteryStatsService;->mMode:I

    .line 1794
    const/4 v0, 0x0

    const-string/jumbo v1, "persist.sys.meizu.aod"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 1798
    .local v1, "isAODOn":Z
    if-eqz v1, :cond_16

    .line 1799
    const/4 v2, 0x1

    if-ne p1, v2, :cond_13

    .line 1800
    invoke-virtual {p0, v0}, Lcom/android/server/am/BatteryStatsService;->noteAodState(I)V

    goto :goto_16

    .line 1802
    :cond_13
    invoke-virtual {p0, v2}, Lcom/android/server/am/BatteryStatsService;->noteAodState(I)V

    .line 1806
    :cond_16
    :goto_16
    const-string/jumbo v2, "persist.sys.meizu.fingerprint"

    invoke-static {v2, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 1810
    .local v0, "isFODOPen":Z
    if-eqz v0, :cond_26

    .line 1811
    if-nez p1, :cond_26

    .line 1812
    iget-object v2, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v2}, Lcom/android/internal/os/BatteryStatsImpl;->noteFodOffLocked()V

    .line 1815
    :cond_26
    return-void
.end method

.method public shutdown()V
    .registers 3

    .line 281
    const-string v0, "BatteryStats"

    const-string v1, "Writing battery stats before shutdown..."

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    const-string/jumbo v0, "shutdown"

    const/16 v1, 0x1f

    invoke-direct {p0, v0, v1}, Lcom/android/server/am/BatteryStatsService;->syncStats(Ljava/lang/String;I)V

    .line 285
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 286
    :try_start_12
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1}, Lcom/android/internal/os/BatteryStatsImpl;->shutdownLocked()V

    .line 287
    monitor-exit v0
    :try_end_18
    .catchall {:try_start_12 .. :try_end_18} :catchall_2a

    .line 290
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mBatteryLevelStats:Lcom/android/internal/os/BatteryLevelStats;

    monitor-enter v1

    .line 291
    :try_start_1b
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mBatteryLevelStats:Lcom/android/internal/os/BatteryLevelStats;

    invoke-virtual {v0}, Lcom/android/internal/os/BatteryLevelStats;->shutdownLocked()V

    .line 292
    monitor-exit v1
    :try_end_21
    .catchall {:try_start_1b .. :try_end_21} :catchall_27

    .line 295
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mWorker:Lcom/android/server/am/BatteryExternalStatsWorker;

    invoke-virtual {v0}, Lcom/android/server/am/BatteryExternalStatsWorker;->shutdown()V

    .line 296
    return-void

    .line 292
    :catchall_27
    move-exception v0

    :try_start_28
    monitor-exit v1
    :try_end_29
    .catchall {:try_start_28 .. :try_end_29} :catchall_27

    throw v0

    .line 287
    :catchall_2a
    move-exception v1

    :try_start_2b
    monitor-exit v0
    :try_end_2c
    .catchall {:try_start_2b .. :try_end_2c} :catchall_2a

    throw v1
.end method

.method public systemServicesReady()V
    .registers 3

    .line 227
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl;->systemServicesReady(Landroid/content/Context;)V

    .line 228
    return-void
.end method

.method public takeUidSnapshot(I)Landroid/os/health/HealthStatsParceler;
    .registers 8
    .param p1, "requestUid"  # I

    .line 1633
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    if-eq p1, v0, :cond_e

    .line 1634
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    const-string v2, "android.permission.BATTERY_STATS"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1637
    :cond_e
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1639
    .local v0, "ident":J
    :try_start_12
    invoke-direct {p0}, Lcom/android/server/am/BatteryStatsService;->shouldCollectExternalStats()Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 1640
    const-string v2, "get-health-stats-for-uids"

    const/16 v3, 0x1f

    invoke-direct {p0, v2, v3}, Lcom/android/server/am/BatteryStatsService;->syncStats(Ljava/lang/String;I)V

    .line 1642
    :cond_1f
    iget-object v2, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v2
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_22} :catch_30
    .catchall {:try_start_12 .. :try_end_22} :catchall_2e

    .line 1643
    :try_start_22
    invoke-virtual {p0, p1}, Lcom/android/server/am/BatteryStatsService;->getHealthStatsForUidLocked(I)Landroid/os/health/HealthStatsParceler;

    move-result-object v3

    monitor-exit v2
    :try_end_27
    .catchall {:try_start_22 .. :try_end_27} :catchall_2b

    .line 1649
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1643
    return-object v3

    .line 1644
    :catchall_2b
    move-exception v3

    :try_start_2c
    monitor-exit v2
    :try_end_2d
    .catchall {:try_start_2c .. :try_end_2d} :catchall_2b

    .end local v0  # "ident":J
    .end local p0  # "this":Lcom/android/server/am/BatteryStatsService;
    .end local p1  # "requestUid":I
    :try_start_2d
    throw v3
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_2d .. :try_end_2e} :catch_30
    .catchall {:try_start_2d .. :try_end_2e} :catchall_2e

    .line 1649
    .restart local v0  # "ident":J
    .restart local p0  # "this":Lcom/android/server/am/BatteryStatsService;
    .restart local p1  # "requestUid":I
    :catchall_2e
    move-exception v2

    goto :goto_4e

    .line 1645
    :catch_30
    move-exception v2

    .line 1646
    .local v2, "ex":Ljava/lang/Exception;
    :try_start_31
    const-string v3, "BatteryStatsService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Crashed while writing for takeUidSnapshot("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1647
    nop

    .end local v0  # "ident":J
    .end local p0  # "this":Lcom/android/server/am/BatteryStatsService;
    .end local p1  # "requestUid":I
    throw v2
    :try_end_4e
    .catchall {:try_start_31 .. :try_end_4e} :catchall_2e

    .line 1649
    .end local v2  # "ex":Ljava/lang/Exception;
    .restart local v0  # "ident":J
    .restart local p0  # "this":Lcom/android/server/am/BatteryStatsService;
    .restart local p1  # "requestUid":I
    :goto_4e
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public takeUidSnapshots([I)[Landroid/os/health/HealthStatsParceler;
    .registers 9
    .param p1, "requestUids"  # [I

    .line 1658
    invoke-static {p1}, Lcom/android/server/am/BatteryStatsService;->onlyCaller([I)Z

    move-result v0

    if-nez v0, :cond_e

    .line 1659
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    const-string v2, "android.permission.BATTERY_STATS"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1662
    :cond_e
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1663
    .local v0, "ident":J
    const/4 v2, -0x1

    .line 1665
    .local v2, "i":I
    :try_start_13
    invoke-direct {p0}, Lcom/android/server/am/BatteryStatsService;->shouldCollectExternalStats()Z

    move-result v3

    if-eqz v3, :cond_20

    .line 1666
    const-string v3, "get-health-stats-for-uids"

    const/16 v4, 0x1f

    invoke-direct {p0, v3, v4}, Lcom/android/server/am/BatteryStatsService;->syncStats(Ljava/lang/String;I)V

    .line 1668
    :cond_20
    iget-object v3, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v3
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_23} :catch_3e
    .catchall {:try_start_13 .. :try_end_23} :catchall_3c

    .line 1669
    :try_start_23
    array-length v4, p1

    .line 1670
    .local v4, "N":I
    new-array v5, v4, [Landroid/os/health/HealthStatsParceler;

    .line 1671
    .local v5, "results":[Landroid/os/health/HealthStatsParceler;
    const/4 v2, 0x0

    :goto_27
    if-ge v2, v4, :cond_34

    .line 1672
    aget v6, p1, v2

    invoke-virtual {p0, v6}, Lcom/android/server/am/BatteryStatsService;->getHealthStatsForUidLocked(I)Landroid/os/health/HealthStatsParceler;

    move-result-object v6

    aput-object v6, v5, v2

    .line 1671
    add-int/lit8 v2, v2, 0x1

    goto :goto_27

    .line 1674
    :cond_34
    monitor-exit v3
    :try_end_35
    .catchall {:try_start_23 .. :try_end_35} :catchall_39

    .line 1681
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1674
    return-object v5

    .line 1675
    .end local v4  # "N":I
    .end local v5  # "results":[Landroid/os/health/HealthStatsParceler;
    :catchall_39
    move-exception v4

    :try_start_3a
    monitor-exit v3
    :try_end_3b
    .catchall {:try_start_3a .. :try_end_3b} :catchall_39

    .end local v0  # "ident":J
    .end local v2  # "i":I
    .end local p0  # "this":Lcom/android/server/am/BatteryStatsService;
    .end local p1  # "requestUids":[I
    :try_start_3b
    throw v4
    :try_end_3c
    .catch Ljava/lang/Exception; {:try_start_3b .. :try_end_3c} :catch_3e
    .catchall {:try_start_3b .. :try_end_3c} :catchall_3c

    .line 1681
    .restart local v0  # "ident":J
    .restart local v2  # "i":I
    .restart local p0  # "this":Lcom/android/server/am/BatteryStatsService;
    .restart local p1  # "requestUids":[I
    :catchall_3c
    move-exception v3

    goto :goto_41

    .line 1676
    :catch_3e
    move-exception v3

    .line 1679
    .local v3, "ex":Ljava/lang/Exception;
    nop

    .end local v0  # "ident":J
    .end local v2  # "i":I
    .end local p0  # "this":Lcom/android/server/am/BatteryStatsService;
    .end local p1  # "requestUids":[I
    :try_start_40
    throw v3
    :try_end_41
    .catchall {:try_start_40 .. :try_end_41} :catchall_3c

    .line 1681
    .end local v3  # "ex":Ljava/lang/Exception;
    .restart local v0  # "ident":J
    .restart local v2  # "i":I
    .restart local p0  # "this":Lcom/android/server/am/BatteryStatsService;
    .restart local p1  # "requestUids":[I
    :goto_41
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method
