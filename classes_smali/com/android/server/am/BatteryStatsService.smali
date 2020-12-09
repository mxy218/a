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

.field private static final MAX_LOW_POWER_STATS_SIZE:I = 0x1000

.field static final TAG:Ljava/lang/String; = "BatteryStatsService"

.field private static sService:Lcom/android/internal/app/IBatteryStats;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mDecoderStat:Ljava/nio/charset/CharsetDecoder;

.field final mStats:Lcom/android/internal/os/BatteryStatsImpl;

.field private final mUserManagerUserInfoProvider:Lcom/android/internal/os/BatteryStatsImpl$UserInfoProvider;

.field private mUtf16BufferStat:Ljava/nio/CharBuffer;

.field private mUtf8BufferStat:Ljava/nio/ByteBuffer;

.field private final mWorker:Lcom/android/server/am/BatteryExternalStatsWorker;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/io/File;Landroid/os/Handler;)V
    .registers 11

    .line 180
    invoke-direct {p0}, Lcom/android/internal/app/IBatteryStats$Stub;-><init>()V

    .line 104
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 105
    invoke-virtual {v0}, Ljava/nio/charset/Charset;->newDecoder()Ljava/nio/charset/CharsetDecoder;

    move-result-object v0

    sget-object v1, Ljava/nio/charset/CodingErrorAction;->REPLACE:Ljava/nio/charset/CodingErrorAction;

    .line 106
    invoke-virtual {v0, v1}, Ljava/nio/charset/CharsetDecoder;->onMalformedInput(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetDecoder;

    move-result-object v0

    sget-object v1, Ljava/nio/charset/CodingErrorAction;->REPLACE:Ljava/nio/charset/CodingErrorAction;

    .line 107
    invoke-virtual {v0, v1}, Ljava/nio/charset/CharsetDecoder;->onUnmappableCharacter(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetDecoder;

    move-result-object v0

    .line 108
    const-string v1, "?"

    invoke-virtual {v0, v1}, Ljava/nio/charset/CharsetDecoder;->replaceWith(Ljava/lang/String;)Ljava/nio/charset/CharsetDecoder;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mDecoderStat:Ljava/nio/charset/CharsetDecoder;

    .line 109
    const/16 v0, 0x1000

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mUtf8BufferStat:Ljava/nio/ByteBuffer;

    .line 110
    invoke-static {v0}, Ljava/nio/CharBuffer;->allocate(I)Ljava/nio/CharBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mUtf16BufferStat:Ljava/nio/CharBuffer;

    .line 182
    iput-object p1, p0, Lcom/android/server/am/BatteryStatsService;->mContext:Landroid/content/Context;

    .line 183
    new-instance v0, Lcom/android/server/am/BatteryStatsService$1;

    invoke-direct {v0, p0}, Lcom/android/server/am/BatteryStatsService$1;-><init>(Lcom/android/server/am/BatteryStatsService;)V

    iput-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mUserManagerUserInfoProvider:Lcom/android/internal/os/BatteryStatsImpl$UserInfoProvider;

    .line 193
    new-instance v0, Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v6, p0, Lcom/android/server/am/BatteryStatsService;->mUserManagerUserInfoProvider:Lcom/android/internal/os/BatteryStatsImpl$UserInfoProvider;

    move-object v1, v0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p0

    move-object v5, p0

    invoke-direct/range {v1 .. v6}, Lcom/android/internal/os/BatteryStatsImpl;-><init>(Ljava/io/File;Landroid/os/Handler;Lcom/android/internal/os/BatteryStatsImpl$PlatformIdleStateCallback;Lcom/android/internal/os/BatteryStatsImpl$RailEnergyDataCallback;Lcom/android/internal/os/BatteryStatsImpl$UserInfoProvider;)V

    iput-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    .line 195
    new-instance p2, Lcom/android/server/am/BatteryExternalStatsWorker;

    iget-object p3, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-direct {p2, p1, p3}, Lcom/android/server/am/BatteryExternalStatsWorker;-><init>(Landroid/content/Context;Lcom/android/internal/os/BatteryStatsImpl;)V

    iput-object p2, p0, Lcom/android/server/am/BatteryStatsService;->mWorker:Lcom/android/server/am/BatteryExternalStatsWorker;

    .line 196
    iget-object p2, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object p3, p0, Lcom/android/server/am/BatteryStatsService;->mWorker:Lcom/android/server/am/BatteryExternalStatsWorker;

    invoke-virtual {p2, p3}, Lcom/android/internal/os/BatteryStatsImpl;->setExternalStatsSyncLocked(Lcom/android/internal/os/BatteryStatsImpl$ExternalStatsSync;)V

    .line 197
    iget-object p2, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object p3, p0, Lcom/android/server/am/BatteryStatsService;->mContext:Landroid/content/Context;

    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const v0, 0x10e009e

    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p3

    int-to-long v0, p3

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    invoke-virtual {p2, v0, v1}, Lcom/android/internal/os/BatteryStatsImpl;->setRadioScanningTimeoutLocked(J)V

    .line 199
    iget-object p2, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    new-instance p3, Lcom/android/internal/os/PowerProfile;

    invoke-direct {p3, p1}, Lcom/android/internal/os/PowerProfile;-><init>(Landroid/content/Context;)V

    invoke-virtual {p2, p3}, Lcom/android/internal/os/BatteryStatsImpl;->setPowerProfileLocked(Lcom/android/internal/os/PowerProfile;)V

    .line 200
    return-void
.end method

.method static synthetic access$100(Ljava/nio/ByteBuffer;)I
    .registers 1

    .line 86
    invoke-static {p0}, Lcom/android/server/am/BatteryStatsService;->nativeWaitWakeup(Ljava/nio/ByteBuffer;)I

    move-result p0

    return p0
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

    .line 232
    :goto_0
    :try_start_0
    invoke-interface {p0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;
    :try_end_3
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_3} :catch_6
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_3} :catch_4

    .line 233
    return-void

    .line 236
    :catch_4
    move-exception v0

    .line 238
    goto :goto_0

    .line 234
    :catch_6
    move-exception p0

    .line 235
    return-void
.end method

.method private doEnableOrDisable(Ljava/io/PrintWriter;I[Ljava/lang/String;Z)I
    .registers 8

    .line 1292
    add-int/lit8 p2, p2, 0x1

    .line 1293
    array-length v0, p3

    const/4 v1, -0x1

    if-lt p2, v0, :cond_25

    .line 1294
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Missing option argument for "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p4, :cond_15

    const-string p3, "--enable"

    goto :goto_17

    :cond_15
    const-string p3, "--disable"

    :goto_17
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1295
    invoke-direct {p0, p1}, Lcom/android/server/am/BatteryStatsService;->dumpHelp(Ljava/io/PrintWriter;)V

    .line 1296
    return v1

    .line 1298
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

    .line 1302
    :cond_3a
    aget-object v0, p3, p2

    const-string/jumbo v2, "no-auto-reset"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_52

    .line 1303
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 1304
    :try_start_48
    iget-object p1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {p1, p4}, Lcom/android/internal/os/BatteryStatsImpl;->setNoAutoReset(Z)V

    .line 1305
    monitor-exit v0

    goto :goto_8d

    :catchall_4f
    move-exception p1

    monitor-exit v0
    :try_end_51
    .catchall {:try_start_48 .. :try_end_51} :catchall_4f

    throw p1

    .line 1306
    :cond_52
    aget-object v0, p3, p2

    const-string/jumbo v2, "pretend-screen-off"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6a

    .line 1307
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 1308
    :try_start_60
    iget-object p1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {p1, p4}, Lcom/android/internal/os/BatteryStatsImpl;->setPretendScreenOff(Z)V

    .line 1309
    monitor-exit v0

    goto :goto_8d

    :catchall_67
    move-exception p1

    monitor-exit v0
    :try_end_69
    .catchall {:try_start_60 .. :try_end_69} :catchall_67

    throw p1

    .line 1311
    :cond_6a
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unknown enable/disable option: "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object p2, p3, p2

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1312
    invoke-direct {p0, p1}, Lcom/android/server/am/BatteryStatsService;->dumpHelp(Ljava/io/PrintWriter;)V

    .line 1313
    return v1

    .line 1299
    :cond_84
    :goto_84
    iget-object p1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter p1

    .line 1300
    :try_start_87
    iget-object p3, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {p3, p4}, Lcom/android/internal/os/BatteryStatsImpl;->setRecordAllHistoryLocked(Z)V

    .line 1301
    monitor-exit p1

    .line 1315
    :goto_8d
    return p2

    .line 1301
    :catchall_8e
    move-exception p2

    monitor-exit p1
    :try_end_90
    .catchall {:try_start_87 .. :try_end_90} :catchall_8e

    throw p2
.end method

.method private dumpCpuStats(Ljava/io/PrintWriter;)V
    .registers 4

    .line 1286
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 1287
    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1, p1}, Lcom/android/internal/os/BatteryStatsImpl;->dumpCpuStatsLocked(Ljava/io/PrintWriter;)V

    .line 1288
    monitor-exit v0

    .line 1289
    return-void

    .line 1288
    :catchall_a
    move-exception p1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw p1
.end method

.method private dumpHelp(Ljava/io/PrintWriter;)V
    .registers 3

    .line 1249
    const-string v0, "Battery stats (batterystats) dump options:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1250
    const-string v0, "  [--checkin] [--proto] [--history] [--history-start] [--charged] [-c]"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1251
    const-string v0, "  [--daily] [--reset] [--write] [--new-daily] [--read-daily] [-h] [<package.name>]"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1252
    const-string v0, "  --checkin: generate output for a checkin report; will write (and clear) the"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1253
    const-string v0, "             last old completed stats when they had been reset."

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1254
    const-string v0, "  -c: write the current stats in checkin format."

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1255
    const-string v0, "  --proto: write the current aggregate stats (without history) in proto format."

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1256
    const-string v0, "  --history: show only history data."

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1257
    const-string v0, "  --history-start <num>: show only history data starting at given time offset."

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1258
    const-string v0, "  --history-create-events <num>: create <num> of battery history events."

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1259
    const-string v0, "  --charged: only output data since last charged."

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1260
    const-string v0, "  --daily: only output full daily data."

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1261
    const-string v0, "  --reset: reset the stats, clearing all current data."

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1262
    const-string v0, "  --write: force write current collected stats to disk."

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1263
    const-string v0, "  --new-daily: immediately create and write new daily stats record."

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1264
    const-string v0, "  --read-daily: read-load last written daily stats."

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1265
    const-string v0, "  --settings: dump the settings key/values related to batterystats"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1266
    const-string v0, "  --cpu: dump cpu stats for debugging purpose"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1267
    const-string v0, "  <package.name>: optional name of package to filter output by."

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1268
    const-string v0, "  -h: print this help text."

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1269
    const-string v0, "Battery stats (batterystats) commands:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1270
    const-string v0, "  enable|disable <option>"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1271
    const-string v0, "    Enable or disable a running option.  Option state is not saved across boots."

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1272
    const-string v0, "    Options are:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1273
    const-string v0, "      full-history: include additional detailed events in battery history:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1274
    const-string v0, "          wake_lock_in, alarms and proc events"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1275
    const-string v0, "      no-auto-reset: don\'t automatically reset stats when unplugged"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1276
    const-string v0, "      pretend-screen-off: pretend the screen is off, even if screen state changes"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1277
    return-void
.end method

.method private dumpSettings(Ljava/io/PrintWriter;)V
    .registers 4

    .line 1280
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 1281
    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1, p1}, Lcom/android/internal/os/BatteryStatsImpl;->dumpConstantsLocked(Ljava/io/PrintWriter;)V

    .line 1282
    monitor-exit v0

    .line 1283
    return-void

    .line 1282
    :catchall_a
    move-exception p1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw p1
.end method

.method private native getLowPowerStats(Lcom/android/internal/os/RpmStats;)V
.end method

.method private native getPlatformLowPowerStats(Ljava/nio/ByteBuffer;)I
.end method

.method private native getRailEnergyPowerStats(Lcom/android/internal/os/RailStats;)V
.end method

.method public static getService()Lcom/android/internal/app/IBatteryStats;
    .registers 1

    .line 275
    sget-object v0, Lcom/android/server/am/BatteryStatsService;->sService:Lcom/android/internal/app/IBatteryStats;

    if-eqz v0, :cond_5

    .line 276
    return-object v0

    .line 278
    :cond_5
    const-string v0, "batterystats"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 279
    invoke-static {v0}, Lcom/android/server/am/BatteryStatsService;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IBatteryStats;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/BatteryStatsService;->sService:Lcom/android/internal/app/IBatteryStats;

    .line 280
    sget-object v0, Lcom/android/server/am/BatteryStatsService;->sService:Lcom/android/internal/app/IBatteryStats;

    return-object v0
.end method

.method private native getSubsystemLowPowerStats(Ljava/nio/ByteBuffer;)I
.end method

.method private static native nativeWaitWakeup(Ljava/nio/ByteBuffer;)I
.end method

.method private static onlyCaller([I)Z
    .registers 6

    .line 1650
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1651
    array-length v1, p0

    .line 1652
    const/4 v2, 0x0

    move v3, v2

    :goto_7
    if-ge v3, v1, :cond_11

    .line 1653
    aget v4, p0, v3

    if-eq v4, v0, :cond_e

    .line 1654
    return v2

    .line 1652
    :cond_e
    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    .line 1657
    :cond_11
    const/4 p0, 0x1

    return p0
.end method

.method private shouldCollectExternalStats()Z
    .registers 5

    .line 1642
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/server/am/BatteryStatsService;->mWorker:Lcom/android/server/am/BatteryExternalStatsWorker;

    invoke-virtual {v2}, Lcom/android/server/am/BatteryExternalStatsWorker;->getLastCollectionTimeStamp()J

    move-result-wide v2

    sub-long/2addr v0, v2

    iget-object v2, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    .line 1643
    invoke-virtual {v2}, Lcom/android/internal/os/BatteryStatsImpl;->getExternalStatsCollectionRateLimitMs()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_17

    const/4 v0, 0x1

    goto :goto_18

    :cond_17
    const/4 v0, 0x0

    .line 1642
    :goto_18
    return v0
.end method

.method private syncStats(Ljava/lang/String;I)V
    .registers 4

    .line 243
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mWorker:Lcom/android/server/am/BatteryExternalStatsWorker;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/am/BatteryExternalStatsWorker;->scheduleSync(Ljava/lang/String;I)Ljava/util/concurrent/Future;

    move-result-object p1

    invoke-static {p1}, Lcom/android/server/am/BatteryStatsService;->awaitUninterruptibly(Ljava/util/concurrent/Future;)V

    .line 244
    return-void
.end method


# virtual methods
.method addIsolatedUid(II)V
    .registers 5

    .line 336
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 337
    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl;->addIsolatedUidLocked(II)V

    .line 338
    monitor-exit v0

    .line 339
    return-void

    .line 338
    :catchall_a
    move-exception p1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw p1
.end method

.method public computeBatteryTimeRemaining()J
    .registers 6

    .line 432
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 433
    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl;->computeBatteryTimeRemaining(J)J

    move-result-wide v1

    .line 434
    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-ltz v3, :cond_16

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    :cond_16
    monitor-exit v0

    return-wide v1

    .line 435
    :catchall_18
    move-exception v1

    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_3 .. :try_end_1a} :catchall_18

    throw v1
.end method

.method public computeChargeTimeRemaining()J
    .registers 6

    .line 439
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 440
    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl;->computeChargeTimeRemaining(J)J

    move-result-wide v1

    .line 441
    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-ltz v3, :cond_16

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    :cond_16
    monitor-exit v0

    return-wide v1

    .line 442
    :catchall_18
    move-exception v1

    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_3 .. :try_end_1a} :catchall_18

    throw v1
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 31

    .line 1321
    move-object/from16 v1, p0

    move-object/from16 v9, p2

    move-object/from16 v0, p3

    iget-object v2, v1, Lcom/android/server/am/BatteryStatsService;->mContext:Landroid/content/Context;

    const-string v3, "BatteryStatsService"

    invoke-static {v2, v3, v9}, Lcom/android/internal/util/DumpUtils;->checkDumpAndUsageStatsPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v2

    if-nez v2, :cond_11

    return-void

    .line 1323
    :cond_11
    nop

    .line 1324
    nop

    .line 1325
    nop

    .line 1326
    nop

    .line 1327
    nop

    .line 1328
    nop

    .line 1329
    const-wide/16 v2, -0x1

    .line 1330
    const/4 v4, -0x1

    .line 1331
    if-eqz v0, :cond_267

    .line 1332
    move-wide v12, v2

    move v7, v4

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v14, 0x0

    :goto_25
    array-length v15, v0

    if-ge v2, v15, :cond_260

    .line 1333
    aget-object v15, v0, v2

    .line 1334
    const-string v6, "--checkin"

    invoke-virtual {v6, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    const/4 v5, 0x1

    if-eqz v6, :cond_38

    .line 1335
    nop

    .line 1336
    move v8, v5

    move v11, v8

    goto/16 :goto_207

    .line 1337
    :cond_38
    const-string v6, "--history"

    invoke-virtual {v6, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_44

    .line 1338
    or-int/lit8 v4, v4, 0x8

    goto/16 :goto_207

    .line 1339
    :cond_44
    const-string v6, "--history-start"

    invoke-virtual {v6, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    move/from16 v18, v7

    move/from16 v19, v8

    const-wide/16 v7, 0x0

    if-eqz v6, :cond_70

    .line 1340
    or-int/lit8 v4, v4, 0x8

    .line 1341
    add-int/lit8 v2, v2, 0x1

    .line 1342
    array-length v6, v0

    if-lt v2, v6, :cond_62

    .line 1343
    const-string v0, "Missing time argument for --history-since"

    invoke-virtual {v9, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1344
    invoke-direct {v1, v9}, Lcom/android/server/am/BatteryStatsService;->dumpHelp(Ljava/io/PrintWriter;)V

    .line 1345
    return-void

    .line 1347
    :cond_62
    aget-object v6, v0, v2

    invoke-static {v6, v7, v8}, Lcom/android/internal/util/ParseUtils;->parseLong(Ljava/lang/String;J)J

    move-result-wide v6

    .line 1348
    move v14, v5

    move-wide v12, v6

    move/from16 v7, v18

    move/from16 v8, v19

    goto/16 :goto_207

    .line 1349
    :cond_70
    const-string v6, "--history-create-events"

    invoke-virtual {v6, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a5

    .line 1350
    add-int/lit8 v2, v2, 0x1

    .line 1351
    array-length v3, v0

    if-lt v2, v3, :cond_86

    .line 1352
    const-string v0, "Missing events argument for --history-create-events"

    invoke-virtual {v9, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1353
    invoke-direct {v1, v9}, Lcom/android/server/am/BatteryStatsService;->dumpHelp(Ljava/io/PrintWriter;)V

    .line 1354
    return-void

    .line 1356
    :cond_86
    aget-object v3, v0, v2

    invoke-static {v3, v7, v8}, Lcom/android/internal/util/ParseUtils;->parseLong(Ljava/lang/String;J)J

    move-result-wide v6

    .line 1357
    iget-object v8, v1, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v8

    .line 1358
    :try_start_8f
    iget-object v3, v1, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v3, v6, v7}, Lcom/android/internal/os/BatteryStatsImpl;->createFakeHistoryEvents(J)V

    .line 1359
    const-string v3, "Battery history create events started."

    invoke-virtual {v9, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1360
    nop

    .line 1361
    monitor-exit v8

    .line 1362
    move v3, v5

    move/from16 v7, v18

    move/from16 v8, v19

    goto/16 :goto_207

    .line 1361
    :catchall_a2
    move-exception v0

    monitor-exit v8
    :try_end_a4
    .catchall {:try_start_8f .. :try_end_a4} :catchall_a2

    throw v0

    .line 1362
    :cond_a5
    const-string v6, "-c"

    invoke-virtual {v6, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_b5

    .line 1363
    nop

    .line 1364
    or-int/lit8 v4, v4, 0x10

    move v8, v5

    move/from16 v7, v18

    goto/16 :goto_207

    .line 1365
    :cond_b5
    const-string v6, "--proto"

    invoke-virtual {v6, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_c4

    .line 1366
    move v10, v5

    move/from16 v7, v18

    move/from16 v8, v19

    goto/16 :goto_207

    .line 1367
    :cond_c4
    const-string v6, "--charged"

    invoke-virtual {v6, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_d4

    .line 1368
    or-int/lit8 v4, v4, 0x2

    move/from16 v7, v18

    move/from16 v8, v19

    goto/16 :goto_207

    .line 1369
    :cond_d4
    const-string v6, "--daily"

    invoke-virtual {v6, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_e4

    .line 1370
    or-int/lit8 v4, v4, 0x4

    move/from16 v7, v18

    move/from16 v8, v19

    goto/16 :goto_207

    .line 1371
    :cond_e4
    const-string v6, "--reset"

    invoke-virtual {v6, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_10e

    .line 1372
    iget-object v6, v1, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v6

    .line 1373
    :try_start_ef
    iget-object v3, v1, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v3}, Lcom/android/internal/os/BatteryStatsImpl;->resetAllStatsCmdLocked()V

    .line 1374
    const-string v3, "Battery stats reset."

    invoke-virtual {v9, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1375
    nop

    .line 1376
    monitor-exit v6
    :try_end_fb
    .catchall {:try_start_ef .. :try_end_fb} :catchall_10b

    .line 1377
    iget-object v3, v1, Lcom/android/server/am/BatteryStatsService;->mWorker:Lcom/android/server/am/BatteryExternalStatsWorker;

    const-string v6, "dump"

    const/16 v7, 0x1f

    invoke-virtual {v3, v6, v7}, Lcom/android/server/am/BatteryExternalStatsWorker;->scheduleSync(Ljava/lang/String;I)Ljava/util/concurrent/Future;

    move v3, v5

    move/from16 v7, v18

    move/from16 v8, v19

    goto/16 :goto_207

    .line 1376
    :catchall_10b
    move-exception v0

    :try_start_10c
    monitor-exit v6
    :try_end_10d
    .catchall {:try_start_10c .. :try_end_10d} :catchall_10b

    throw v0

    .line 1378
    :cond_10e
    const-string v6, "--write"

    invoke-virtual {v6, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_136

    .line 1379
    const-string v3, "dump"

    const/16 v6, 0x1f

    invoke-direct {v1, v3, v6}, Lcom/android/server/am/BatteryStatsService;->syncStats(Ljava/lang/String;I)V

    .line 1380
    iget-object v6, v1, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v6

    .line 1381
    :try_start_120
    iget-object v3, v1, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v3}, Lcom/android/internal/os/BatteryStatsImpl;->writeSyncLocked()V

    .line 1382
    const-string v3, "Battery stats written."

    invoke-virtual {v9, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1383
    nop

    .line 1384
    monitor-exit v6

    move v3, v5

    move/from16 v7, v18

    move/from16 v8, v19

    goto/16 :goto_207

    :catchall_133
    move-exception v0

    monitor-exit v6
    :try_end_135
    .catchall {:try_start_120 .. :try_end_135} :catchall_133

    throw v0

    .line 1385
    :cond_136
    const-string v6, "--new-daily"

    invoke-virtual {v6, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_157

    .line 1386
    iget-object v6, v1, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v6

    .line 1387
    :try_start_141
    iget-object v3, v1, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v3}, Lcom/android/internal/os/BatteryStatsImpl;->recordDailyStatsLocked()V

    .line 1388
    const-string v3, "New daily stats written."

    invoke-virtual {v9, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1389
    nop

    .line 1390
    monitor-exit v6

    move v3, v5

    move/from16 v7, v18

    move/from16 v8, v19

    goto/16 :goto_207

    :catchall_154
    move-exception v0

    monitor-exit v6
    :try_end_156
    .catchall {:try_start_141 .. :try_end_156} :catchall_154

    throw v0

    .line 1391
    :cond_157
    const-string v6, "--read-daily"

    invoke-virtual {v6, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_178

    .line 1392
    iget-object v6, v1, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v6

    .line 1393
    :try_start_162
    iget-object v3, v1, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v3}, Lcom/android/internal/os/BatteryStatsImpl;->readDailyStatsLocked()V

    .line 1394
    const-string v3, "Last daily stats read."

    invoke-virtual {v9, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1395
    nop

    .line 1396
    monitor-exit v6

    move v3, v5

    move/from16 v7, v18

    move/from16 v8, v19

    goto/16 :goto_207

    :catchall_175
    move-exception v0

    monitor-exit v6
    :try_end_177
    .catchall {:try_start_162 .. :try_end_177} :catchall_175

    throw v0

    .line 1397
    :cond_178
    const-string v6, "--enable"

    invoke-virtual {v6, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_242

    const-string v6, "enable"

    invoke-virtual {v6, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_18a

    goto/16 :goto_242

    .line 1404
    :cond_18a
    const-string v6, "--disable"

    invoke-virtual {v6, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_223

    const-string v6, "disable"

    invoke-virtual {v6, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_19c

    goto/16 :goto_223

    .line 1411
    :cond_19c
    const-string v6, "-h"

    invoke-virtual {v6, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1a8

    .line 1412
    invoke-direct {v1, v9}, Lcom/android/server/am/BatteryStatsService;->dumpHelp(Ljava/io/PrintWriter;)V

    .line 1413
    return-void

    .line 1414
    :cond_1a8
    const-string v6, "--settings"

    invoke-virtual {v6, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1b4

    .line 1415
    invoke-direct {v1, v9}, Lcom/android/server/am/BatteryStatsService;->dumpSettings(Ljava/io/PrintWriter;)V

    .line 1416
    return-void

    .line 1417
    :cond_1b4
    const-string v6, "--cpu"

    invoke-virtual {v6, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1c0

    .line 1418
    invoke-direct {v1, v9}, Lcom/android/server/am/BatteryStatsService;->dumpCpuStats(Ljava/io/PrintWriter;)V

    .line 1419
    return-void

    .line 1420
    :cond_1c0
    const-string v6, "-a"

    invoke-virtual {v6, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1cf

    .line 1421
    or-int/lit8 v4, v4, 0x20

    move/from16 v7, v18

    move/from16 v8, v19

    goto :goto_207

    .line 1422
    :cond_1cf
    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_1f6

    const/4 v6, 0x0

    invoke-virtual {v15, v6}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/16 v6, 0x2d

    if-ne v7, v6, :cond_1f6

    .line 1423
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown option: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1424
    invoke-direct {v1, v9}, Lcom/android/server/am/BatteryStatsService;->dumpHelp(Ljava/io/PrintWriter;)V

    .line 1425
    return-void

    .line 1429
    :cond_1f6
    :try_start_1f6
    iget-object v6, v1, Lcom/android/server/am/BatteryStatsService;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    .line 1430
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v7

    .line 1429
    invoke-virtual {v6, v15, v7}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;I)I

    move-result v6
    :try_end_204
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1f6 .. :try_end_204} :catch_20a

    .line 1435
    move v7, v6

    move/from16 v8, v19

    .line 1332
    :goto_207
    add-int/2addr v2, v5

    goto/16 :goto_25

    .line 1431
    :catch_20a
    move-exception v0

    .line 1432
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown package: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1433
    invoke-direct {v1, v9}, Lcom/android/server/am/BatteryStatsService;->dumpHelp(Ljava/io/PrintWriter;)V

    .line 1434
    return-void

    .line 1405
    :cond_223
    :goto_223
    const/4 v3, 0x0

    invoke-direct {v1, v9, v2, v0, v3}, Lcom/android/server/am/BatteryStatsService;->doEnableOrDisable(Ljava/io/PrintWriter;I[Ljava/lang/String;Z)I

    move-result v1

    .line 1406
    if-gez v1, :cond_22b

    .line 1407
    return-void

    .line 1409
    :cond_22b
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Disabled: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v0, v0, v1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1410
    return-void

    .line 1398
    :cond_242
    :goto_242
    invoke-direct {v1, v9, v2, v0, v5}, Lcom/android/server/am/BatteryStatsService;->doEnableOrDisable(Ljava/io/PrintWriter;I[Ljava/lang/String;Z)I

    move-result v1

    .line 1399
    if-gez v1, :cond_249

    .line 1400
    return-void

    .line 1402
    :cond_249
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Enabled: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v0, v0, v1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1403
    return-void

    .line 1332
    :cond_260
    move/from16 v18, v7

    move/from16 v19, v8

    move/from16 v6, v18

    goto :goto_270

    .line 1331
    :cond_267
    move-wide v12, v2

    move v6, v4

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v14, 0x0

    const/16 v19, 0x0

    .line 1439
    :goto_270
    if-eqz v3, :cond_273

    .line 1440
    return-void

    .line 1443
    :cond_273
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1445
    :try_start_277
    iget-object v0, v1, Lcom/android/server/am/BatteryStatsService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/internal/os/BatteryStatsHelper;->checkWifiOnly(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_281

    .line 1446
    or-int/lit8 v4, v4, 0x40

    .line 1449
    :cond_281
    const-string v0, "dump"

    const/16 v5, 0x1f

    invoke-direct {v1, v0, v5}, Lcom/android/server/am/BatteryStatsService;->syncStats(Ljava/lang/String;I)V
    :try_end_288
    .catchall {:try_start_277 .. :try_end_288} :catchall_40b

    .line 1451
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1452
    nop

    .line 1454
    if-ltz v6, :cond_298

    .line 1457
    and-int/lit8 v0, v4, 0xa

    if-nez v0, :cond_298

    .line 1458
    or-int/lit8 v0, v4, 0x2

    .line 1460
    and-int/lit8 v0, v0, -0x11

    move v15, v0

    goto :goto_299

    .line 1464
    :cond_298
    move v15, v4

    :goto_299
    const/high16 v0, 0x420000

    if-eqz v10, :cond_34d

    .line 1465
    iget-object v2, v1, Lcom/android/server/am/BatteryStatsService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v2

    .line 1467
    if-eqz v11, :cond_32a

    .line 1470
    iget-object v0, v1, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v3, v0, Lcom/android/internal/os/BatteryStatsImpl;->mCheckinFile:Lcom/android/internal/os/AtomicFile;

    monitor-enter v3

    .line 1471
    :try_start_2ae
    iget-object v0, v1, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mCheckinFile:Lcom/android/internal/os/AtomicFile;

    invoke-virtual {v0}, Lcom/android/internal/os/AtomicFile;->exists()Z

    move-result v0
    :try_end_2b6
    .catchall {:try_start_2ae .. :try_end_2b6} :catchall_327

    if-eqz v0, :cond_325

    .line 1473
    :try_start_2b8
    iget-object v0, v1, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mCheckinFile:Lcom/android/internal/os/AtomicFile;

    invoke-virtual {v0}, Lcom/android/internal/os/AtomicFile;->readFully()[B

    move-result-object v0

    .line 1474
    if-eqz v0, :cond_305

    .line 1475
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v4

    .line 1476
    array-length v5, v0

    const/4 v6, 0x0

    invoke-virtual {v4, v0, v6, v5}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 1477
    invoke-virtual {v4, v6}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 1478
    new-instance v0, Lcom/android/internal/os/BatteryStatsImpl;

    const/16 v17, 0x0

    iget-object v5, v1, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v5, v5, Lcom/android/internal/os/BatteryStatsImpl;->mHandler:Landroid/os/Handler;

    const/16 v19, 0x0

    const/16 v20, 0x0

    iget-object v6, v1, Lcom/android/server/am/BatteryStatsService;->mUserManagerUserInfoProvider:Lcom/android/internal/os/BatteryStatsImpl$UserInfoProvider;

    move-object/from16 v16, v0

    move-object/from16 v18, v5

    move-object/from16 v21, v6

    invoke-direct/range {v16 .. v21}, Lcom/android/internal/os/BatteryStatsImpl;-><init>(Ljava/io/File;Landroid/os/Handler;Lcom/android/internal/os/BatteryStatsImpl$PlatformIdleStateCallback;Lcom/android/internal/os/BatteryStatsImpl$RailEnergyDataCallback;Lcom/android/internal/os/BatteryStatsImpl$UserInfoProvider;)V

    .line 1481
    invoke-virtual {v0, v4}, Lcom/android/internal/os/BatteryStatsImpl;->readSummaryFromParcel(Landroid/os/Parcel;)V

    .line 1482
    invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V

    .line 1483
    iget-object v4, v1, Lcom/android/server/am/BatteryStatsService;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    move-object/from16 v21, v4

    move-object/from16 v22, p1

    move-object/from16 v23, v2

    move/from16 v24, v15

    move-wide/from16 v25, v12

    invoke-virtual/range {v20 .. v26}, Lcom/android/internal/os/BatteryStatsImpl;->dumpProtoLocked(Landroid/content/Context;Ljava/io/FileDescriptor;Ljava/util/List;IJ)V

    .line 1485
    iget-object v0, v1, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mCheckinFile:Lcom/android/internal/os/AtomicFile;

    invoke-virtual {v0}, Lcom/android/internal/os/AtomicFile;->delete()V
    :try_end_303
    .catch Ljava/io/IOException; {:try_start_2b8 .. :try_end_303} :catch_306
    .catch Landroid/os/ParcelFormatException; {:try_start_2b8 .. :try_end_303} :catch_306
    .catchall {:try_start_2b8 .. :try_end_303} :catchall_327

    .line 1486
    :try_start_303
    monitor-exit v3

    return-void

    .line 1491
    :cond_305
    goto :goto_325

    .line 1488
    :catch_306
    move-exception v0

    .line 1489
    const-string v4, "BatteryStatsService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failure reading checkin file "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v1, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v6, v6, Lcom/android/internal/os/BatteryStatsImpl;->mCheckinFile:Lcom/android/internal/os/AtomicFile;

    .line 1490
    invoke-virtual {v6}, Lcom/android/internal/os/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1489
    invoke-static {v4, v5, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1493
    :cond_325
    :goto_325
    monitor-exit v3

    goto :goto_32a

    :catchall_327
    move-exception v0

    monitor-exit v3
    :try_end_329
    .catchall {:try_start_303 .. :try_end_329} :catchall_327

    throw v0

    .line 1496
    :cond_32a
    :goto_32a
    iget-object v3, v1, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v3

    .line 1497
    :try_start_32d
    iget-object v0, v1, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v4, v1, Lcom/android/server/am/BatteryStatsService;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    move-object/from16 v21, v4

    move-object/from16 v22, p1

    move-object/from16 v23, v2

    move/from16 v24, v15

    move-wide/from16 v25, v12

    invoke-virtual/range {v20 .. v26}, Lcom/android/internal/os/BatteryStatsImpl;->dumpProtoLocked(Landroid/content/Context;Ljava/io/FileDescriptor;Ljava/util/List;IJ)V

    .line 1498
    if-eqz v14, :cond_347

    .line 1499
    iget-object v0, v1, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsImpl;->writeAsyncLocked()V

    .line 1501
    :cond_347
    monitor-exit v3

    .line 1503
    goto/16 :goto_407

    .line 1501
    :catchall_34a
    move-exception v0

    monitor-exit v3
    :try_end_34c
    .catchall {:try_start_32d .. :try_end_34c} :catchall_34a

    throw v0

    .line 1503
    :cond_34d
    if-eqz v19, :cond_3f1

    .line 1504
    iget-object v2, v1, Lcom/android/server/am/BatteryStatsService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v10

    .line 1506
    if-eqz v11, :cond_3d6

    .line 1509
    iget-object v0, v1, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v11, v0, Lcom/android/internal/os/BatteryStatsImpl;->mCheckinFile:Lcom/android/internal/os/AtomicFile;

    monitor-enter v11

    .line 1510
    :try_start_360
    iget-object v0, v1, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mCheckinFile:Lcom/android/internal/os/AtomicFile;

    invoke-virtual {v0}, Lcom/android/internal/os/AtomicFile;->exists()Z

    move-result v0
    :try_end_368
    .catchall {:try_start_360 .. :try_end_368} :catchall_3d3

    if-eqz v0, :cond_3d1

    .line 1512
    :try_start_36a
    iget-object v0, v1, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mCheckinFile:Lcom/android/internal/os/AtomicFile;

    invoke-virtual {v0}, Lcom/android/internal/os/AtomicFile;->readFully()[B

    move-result-object v0

    .line 1513
    if-eqz v0, :cond_3b1

    .line 1514
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 1515
    array-length v3, v0

    const/4 v4, 0x0

    invoke-virtual {v2, v0, v4, v3}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 1516
    invoke-virtual {v2, v4}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 1517
    new-instance v0, Lcom/android/internal/os/BatteryStatsImpl;

    const/16 v17, 0x0

    iget-object v3, v1, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v3, v3, Lcom/android/internal/os/BatteryStatsImpl;->mHandler:Landroid/os/Handler;

    const/16 v19, 0x0

    const/16 v20, 0x0

    iget-object v4, v1, Lcom/android/server/am/BatteryStatsService;->mUserManagerUserInfoProvider:Lcom/android/internal/os/BatteryStatsImpl$UserInfoProvider;

    move-object/from16 v16, v0

    move-object/from16 v18, v3

    move-object/from16 v21, v4

    invoke-direct/range {v16 .. v21}, Lcom/android/internal/os/BatteryStatsImpl;-><init>(Ljava/io/File;Landroid/os/Handler;Lcom/android/internal/os/BatteryStatsImpl$PlatformIdleStateCallback;Lcom/android/internal/os/BatteryStatsImpl$RailEnergyDataCallback;Lcom/android/internal/os/BatteryStatsImpl$UserInfoProvider;)V

    .line 1520
    invoke-virtual {v0, v2}, Lcom/android/internal/os/BatteryStatsImpl;->readSummaryFromParcel(Landroid/os/Parcel;)V

    .line 1521
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 1522
    iget-object v3, v1, Lcom/android/server/am/BatteryStatsService;->mContext:Landroid/content/Context;

    move-object v2, v0

    move-object/from16 v4, p2

    move-object v5, v10

    move v6, v15

    move-wide v7, v12

    invoke-virtual/range {v2 .. v8}, Lcom/android/internal/os/BatteryStatsImpl;->dumpCheckinLocked(Landroid/content/Context;Ljava/io/PrintWriter;Ljava/util/List;IJ)V

    .line 1524
    iget-object v0, v1, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mCheckinFile:Lcom/android/internal/os/AtomicFile;

    invoke-virtual {v0}, Lcom/android/internal/os/AtomicFile;->delete()V
    :try_end_3af
    .catch Ljava/io/IOException; {:try_start_36a .. :try_end_3af} :catch_3b2
    .catch Landroid/os/ParcelFormatException; {:try_start_36a .. :try_end_3af} :catch_3b2
    .catchall {:try_start_36a .. :try_end_3af} :catchall_3d3

    .line 1525
    :try_start_3af
    monitor-exit v11

    return-void

    .line 1530
    :cond_3b1
    goto :goto_3d1

    .line 1527
    :catch_3b2
    move-exception v0

    .line 1528
    const-string v2, "BatteryStatsService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failure reading checkin file "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v4, v4, Lcom/android/internal/os/BatteryStatsImpl;->mCheckinFile:Lcom/android/internal/os/AtomicFile;

    .line 1529
    invoke-virtual {v4}, Lcom/android/internal/os/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1528
    invoke-static {v2, v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1532
    :cond_3d1
    :goto_3d1
    monitor-exit v11

    goto :goto_3d6

    :catchall_3d3
    move-exception v0

    monitor-exit v11
    :try_end_3d5
    .catchall {:try_start_3af .. :try_end_3d5} :catchall_3d3

    throw v0

    .line 1535
    :cond_3d6
    :goto_3d6
    iget-object v11, v1, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v11

    .line 1536
    :try_start_3d9
    iget-object v2, v1, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v3, v1, Lcom/android/server/am/BatteryStatsService;->mContext:Landroid/content/Context;

    move-object/from16 v4, p2

    move-object v5, v10

    move v6, v15

    move-wide v7, v12

    invoke-virtual/range {v2 .. v8}, Lcom/android/internal/os/BatteryStatsImpl;->dumpCheckinLocked(Landroid/content/Context;Ljava/io/PrintWriter;Ljava/util/List;IJ)V

    .line 1537
    if-eqz v14, :cond_3ec

    .line 1538
    iget-object v0, v1, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsImpl;->writeAsyncLocked()V

    .line 1540
    :cond_3ec
    monitor-exit v11

    .line 1542
    goto :goto_407

    .line 1540
    :catchall_3ee
    move-exception v0

    monitor-exit v11
    :try_end_3f0
    .catchall {:try_start_3d9 .. :try_end_3f0} :catchall_3ee

    throw v0

    .line 1544
    :cond_3f1
    iget-object v10, v1, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v10

    .line 1545
    :try_start_3f4
    iget-object v2, v1, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v3, v1, Lcom/android/server/am/BatteryStatsService;->mContext:Landroid/content/Context;

    move-object/from16 v4, p2

    move v5, v15

    move-wide v7, v12

    invoke-virtual/range {v2 .. v8}, Lcom/android/internal/os/BatteryStatsImpl;->dumpLocked(Landroid/content/Context;Ljava/io/PrintWriter;IIJ)V

    .line 1546
    if-eqz v14, :cond_406

    .line 1547
    iget-object v0, v1, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsImpl;->writeAsyncLocked()V

    .line 1549
    :cond_406
    monitor-exit v10

    .line 1552
    :goto_407
    return-void

    .line 1549
    :catchall_408
    move-exception v0

    monitor-exit v10
    :try_end_40a
    .catchall {:try_start_3f4 .. :try_end_40a} :catchall_408

    throw v0

    .line 1451
    :catchall_40b
    move-exception v0

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method public enforceCallingPermission()V
    .registers 6

    .line 1180
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    if-ne v0, v1, :cond_b

    .line 1181
    return-void

    .line 1183
    :cond_b
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mContext:Landroid/content/Context;

    .line 1184
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    const/4 v3, 0x0

    .line 1183
    const-string v4, "android.permission.UPDATE_DEVICE_STATS"

    invoke-virtual {v0, v4, v1, v2, v3}, Landroid/content/Context;->enforcePermission(Ljava/lang/String;IILjava/lang/String;)V

    .line 1185
    return-void
.end method

.method public fillLowPowerStats(Lcom/android/internal/os/RpmStats;)V
    .registers 2

    .line 120
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/am/BatteryStatsService;->getLowPowerStats(Lcom/android/internal/os/RpmStats;)V
    :try_end_3
    .catchall {:try_start_0 .. :try_end_3} :catchall_5

    .line 123
    nop

    .line 124
    return-void

    .line 122
    :catchall_5
    move-exception p1

    throw p1
.end method

.method public fillRailDataStats(Lcom/android/internal/os/RailStats;)V
    .registers 2

    .line 130
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/am/BatteryStatsService;->getRailEnergyPowerStats(Lcom/android/internal/os/RailStats;)V
    :try_end_3
    .catchall {:try_start_0 .. :try_end_3} :catchall_5

    .line 133
    nop

    .line 134
    return-void

    .line 132
    :catchall_5
    move-exception p1

    throw p1
.end method

.method public getActiveStatistics()Lcom/android/internal/os/BatteryStatsImpl;
    .registers 2

    .line 301
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    return-object v0
.end method

.method public getAwakeTimeBattery()J
    .registers 4

    .line 1168
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BATTERY_STATS"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1170
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsImpl;->getAwakeTimeBattery()J

    move-result-wide v0

    return-wide v0
.end method

.method public getAwakeTimePlugged()J
    .registers 4

    .line 1174
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BATTERY_STATS"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1176
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsImpl;->getAwakeTimePlugged()J

    move-result-wide v0

    return-wide v0
.end method

.method public getCellularBatteryStats()Landroid/os/connectivity/CellularBatteryStats;
    .registers 3

    .line 1559
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 1560
    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1}, Lcom/android/internal/os/BatteryStatsImpl;->getCellularBatteryStats()Landroid/os/connectivity/CellularBatteryStats;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 1561
    :catchall_b
    move-exception v1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v1
.end method

.method public getGpsBatteryStats()Landroid/os/connectivity/GpsBatteryStats;
    .registers 3

    .line 1579
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 1580
    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1}, Lcom/android/internal/os/BatteryStatsImpl;->getGpsBatteryStats()Landroid/os/connectivity/GpsBatteryStats;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 1581
    :catchall_b
    move-exception v1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v1
.end method

.method getHealthStatsForUidLocked(I)Landroid/os/health/HealthStatsParceler;
    .registers 5

    .line 1665
    new-instance v0, Lcom/android/server/am/HealthStatsBatteryStatsWriter;

    invoke-direct {v0}, Lcom/android/server/am/HealthStatsBatteryStatsWriter;-><init>()V

    .line 1666
    new-instance v1, Landroid/os/health/HealthStatsWriter;

    sget-object v2, Landroid/os/health/UidHealthStats;->CONSTANTS:Landroid/os/health/HealthKeys$Constants;

    invoke-direct {v1, v2}, Landroid/os/health/HealthStatsWriter;-><init>(Landroid/os/health/HealthKeys$Constants;)V

    .line 1667
    iget-object v2, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v2}, Lcom/android/internal/os/BatteryStatsImpl;->getUidStats()Landroid/util/SparseArray;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/BatteryStats$Uid;

    .line 1668
    if-eqz p1, :cond_1f

    .line 1669
    iget-object v2, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0, v1, v2, p1}, Lcom/android/server/am/HealthStatsBatteryStatsWriter;->writeUid(Landroid/os/health/HealthStatsWriter;Landroid/os/BatteryStats;Landroid/os/BatteryStats$Uid;)V

    .line 1671
    :cond_1f
    new-instance p1, Landroid/os/health/HealthStatsParceler;

    invoke-direct {p1, v1}, Landroid/os/health/HealthStatsParceler;-><init>(Landroid/os/health/HealthStatsWriter;)V

    return-object p1
.end method

.method public getPlatformLowPowerStats()Ljava/lang/String;
    .registers 5

    .line 140
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mUtf8BufferStat:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 141
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mUtf16BufferStat:Ljava/nio/CharBuffer;

    invoke-virtual {v0}, Ljava/nio/CharBuffer;->clear()Ljava/nio/Buffer;

    .line 142
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mDecoderStat:Ljava/nio/charset/CharsetDecoder;

    invoke-virtual {v0}, Ljava/nio/charset/CharsetDecoder;->reset()Ljava/nio/charset/CharsetDecoder;

    .line 143
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mUtf8BufferStat:Ljava/nio/ByteBuffer;

    invoke-direct {p0, v0}, Lcom/android/server/am/BatteryStatsService;->getPlatformLowPowerStats(Ljava/nio/ByteBuffer;)I

    move-result v0

    .line 144
    if-gez v0, :cond_19

    .line 145
    const/4 v0, 0x0

    return-object v0

    .line 146
    :cond_19
    if-nez v0, :cond_1e

    .line 147
    const-string v0, "Empty"

    return-object v0

    .line 149
    :cond_1e
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mUtf8BufferStat:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 150
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mDecoderStat:Ljava/nio/charset/CharsetDecoder;

    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mUtf8BufferStat:Ljava/nio/ByteBuffer;

    iget-object v2, p0, Lcom/android/server/am/BatteryStatsService;->mUtf16BufferStat:Ljava/nio/CharBuffer;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Ljava/nio/charset/CharsetDecoder;->decode(Ljava/nio/ByteBuffer;Ljava/nio/CharBuffer;Z)Ljava/nio/charset/CoderResult;

    .line 151
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mUtf16BufferStat:Ljava/nio/CharBuffer;

    invoke-virtual {v0}, Ljava/nio/CharBuffer;->flip()Ljava/nio/Buffer;

    .line 152
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mUtf16BufferStat:Ljava/nio/CharBuffer;

    invoke-virtual {v0}, Ljava/nio/CharBuffer;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_38
    .catchall {:try_start_0 .. :try_end_38} :catchall_39

    return-object v0

    .line 154
    :catchall_39
    move-exception v0

    throw v0
.end method

.method public getServiceType()I
    .registers 2

    .line 285
    const/16 v0, 0x9

    return v0
.end method

.method public getStatistics()[B
    .registers 5

    .line 390
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BATTERY_STATS"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 394
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 395
    const-string v1, "get-stats"

    const/16 v2, 0x1f

    invoke-direct {p0, v1, v2}, Lcom/android/server/am/BatteryStatsService;->syncStats(Ljava/lang/String;I)V

    .line 396
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v1

    .line 397
    :try_start_16
    iget-object v2, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Lcom/android/internal/os/BatteryStatsImpl;->writeToParcel(Landroid/os/Parcel;I)V

    .line 398
    monitor-exit v1
    :try_end_1d
    .catchall {:try_start_16 .. :try_end_1d} :catchall_25

    .line 399
    invoke-virtual {v0}, Landroid/os/Parcel;->marshall()[B

    move-result-object v1

    .line 400
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 401
    return-object v1

    .line 398
    :catchall_25
    move-exception v0

    :try_start_26
    monitor-exit v1
    :try_end_27
    .catchall {:try_start_26 .. :try_end_27} :catchall_25

    throw v0
.end method

.method public getStatisticsStream()Landroid/os/ParcelFileDescriptor;
    .registers 6

    .line 405
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    const-string v2, "android.permission.BATTERY_STATS"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 409
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 410
    const-string v2, "get-stats"

    const/16 v3, 0x1f

    invoke-direct {p0, v2, v3}, Lcom/android/server/am/BatteryStatsService;->syncStats(Ljava/lang/String;I)V

    .line 411
    iget-object v2, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v2

    .line 412
    :try_start_16
    iget-object v3, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    const/4 v4, 0x0

    invoke-virtual {v3, v0, v4}, Lcom/android/internal/os/BatteryStatsImpl;->writeToParcel(Landroid/os/Parcel;I)V

    .line 413
    monitor-exit v2
    :try_end_1d
    .catchall {:try_start_16 .. :try_end_1d} :catchall_34

    .line 414
    invoke-virtual {v0}, Landroid/os/Parcel;->marshall()[B

    move-result-object v2

    .line 416
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 418
    :try_start_24
    const-string v0, "battery-stats"

    invoke-static {v2, v0}, Landroid/os/ParcelFileDescriptor;->fromData([BLjava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v0
    :try_end_2a
    .catch Ljava/io/IOException; {:try_start_24 .. :try_end_2a} :catch_2b

    return-object v0

    .line 419
    :catch_2b
    move-exception v0

    .line 420
    const-string v2, "BatteryStatsService"

    const-string v3, "Unable to create shared memory"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 421
    return-object v1

    .line 413
    :catchall_34
    move-exception v0

    :try_start_35
    monitor-exit v2
    :try_end_36
    .catchall {:try_start_35 .. :try_end_36} :catchall_34

    throw v0
.end method

.method public getSubsystemLowPowerStats()Ljava/lang/String;
    .registers 5

    .line 162
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mUtf8BufferStat:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 163
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mUtf16BufferStat:Ljava/nio/CharBuffer;

    invoke-virtual {v0}, Ljava/nio/CharBuffer;->clear()Ljava/nio/Buffer;

    .line 164
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mDecoderStat:Ljava/nio/charset/CharsetDecoder;

    invoke-virtual {v0}, Ljava/nio/charset/CharsetDecoder;->reset()Ljava/nio/charset/CharsetDecoder;

    .line 165
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mUtf8BufferStat:Ljava/nio/ByteBuffer;

    invoke-direct {p0, v0}, Lcom/android/server/am/BatteryStatsService;->getSubsystemLowPowerStats(Ljava/nio/ByteBuffer;)I

    move-result v0

    .line 166
    if-gez v0, :cond_19

    .line 167
    const/4 v0, 0x0

    return-object v0

    .line 168
    :cond_19
    if-nez v0, :cond_1e

    .line 169
    const-string v0, "Empty"

    return-object v0

    .line 171
    :cond_1e
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mUtf8BufferStat:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 172
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mDecoderStat:Ljava/nio/charset/CharsetDecoder;

    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mUtf8BufferStat:Ljava/nio/ByteBuffer;

    iget-object v2, p0, Lcom/android/server/am/BatteryStatsService;->mUtf16BufferStat:Ljava/nio/CharBuffer;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Ljava/nio/charset/CharsetDecoder;->decode(Ljava/nio/ByteBuffer;Ljava/nio/CharBuffer;Z)Ljava/nio/charset/CoderResult;

    .line 173
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mUtf16BufferStat:Ljava/nio/CharBuffer;

    invoke-virtual {v0}, Ljava/nio/CharBuffer;->flip()Ljava/nio/Buffer;

    .line 174
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mUtf16BufferStat:Ljava/nio/CharBuffer;

    invoke-virtual {v0}, Ljava/nio/CharBuffer;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_38
    .catchall {:try_start_0 .. :try_end_38} :catchall_39

    return-object v0

    .line 176
    :catchall_39
    move-exception v0

    throw v0
.end method

.method public getWifiBatteryStats()Landroid/os/connectivity/WifiBatteryStats;
    .registers 3

    .line 1569
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 1570
    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1}, Lcom/android/internal/os/BatteryStatsImpl;->getWifiBatteryStats()Landroid/os/connectivity/WifiBatteryStats;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 1571
    :catchall_b
    move-exception v1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v1
.end method

.method public initPowerManagement()V
    .registers 5

    .line 251
    const-class v0, Landroid/os/PowerManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManagerInternal;

    .line 252
    invoke-virtual {v0, p0}, Landroid/os/PowerManagerInternal;->registerLowPowerModeObserver(Landroid/os/PowerManagerInternal$LowPowerModeListener;)V

    .line 253
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v1

    .line 254
    :try_start_e
    iget-object v2, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    const/16 v3, 0x9

    .line 255
    invoke-virtual {v0, v3}, Landroid/os/PowerManagerInternal;->getLowPowerState(I)Landroid/os/PowerSaveState;

    move-result-object v0

    iget-boolean v0, v0, Landroid/os/PowerSaveState;->batterySaverEnabled:Z

    .line 254
    invoke-virtual {v2, v0}, Lcom/android/internal/os/BatteryStatsImpl;->notePowerSaveModeLocked(Z)V

    .line 257
    monitor-exit v1
    :try_end_1c
    .catchall {:try_start_e .. :try_end_1c} :catchall_25

    .line 258
    new-instance v0, Lcom/android/server/am/BatteryStatsService$WakeupReasonThread;

    invoke-direct {v0, p0}, Lcom/android/server/am/BatteryStatsService$WakeupReasonThread;-><init>(Lcom/android/server/am/BatteryStatsService;)V

    invoke-virtual {v0}, Lcom/android/server/am/BatteryStatsService$WakeupReasonThread;->start()V

    .line 259
    return-void

    .line 257
    :catchall_25
    move-exception v0

    :try_start_26
    monitor-exit v1
    :try_end_27
    .catchall {:try_start_26 .. :try_end_27} :catchall_25

    throw v0
.end method

.method public isCharging()Z
    .registers 3

    .line 426
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 427
    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1}, Lcom/android/internal/os/BatteryStatsImpl;->isCharging()Z

    move-result v1

    monitor-exit v0

    return v1

    .line 428
    :catchall_b
    move-exception v1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v1
.end method

.method public isOnBattery()Z
    .registers 2

    .line 1130
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsImpl;->isOnBattery()Z

    move-result v0

    return v0
.end method

.method public synthetic lambda$setBatteryState$0$BatteryStatsService(IIIIIIII)V
    .registers 20

    .line 1159
    move-object v0, p0

    iget-object v1, v0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v1

    .line 1160
    :try_start_4
    iget-object v2, v0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    move/from16 v10, p8

    invoke-virtual/range {v2 .. v10}, Lcom/android/internal/os/BatteryStatsImpl;->setBatteryStateLocked(IIIIIIII)V

    .line 1162
    monitor-exit v1

    .line 1163
    return-void

    .line 1162
    :catchall_17
    move-exception v0

    monitor-exit v1
    :try_end_19
    .catchall {:try_start_4 .. :try_end_19} :catchall_17

    throw v0
.end method

.method public synthetic lambda$setBatteryState$1$BatteryStatsService(IIIIIIII)V
    .registers 22

    .line 1142
    move-object v0, p0

    iget-object v1, v0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v1

    .line 1143
    :try_start_4
    invoke-static {p1, p2}, Lcom/android/internal/os/BatteryStatsImpl;->isOnBattery(II)Z

    move-result v2

    .line 1144
    iget-object v3, v0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v3}, Lcom/android/internal/os/BatteryStatsImpl;->isOnBattery()Z

    move-result v3

    if-ne v3, v2, :cond_25

    .line 1147
    iget-object v4, v0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    move v5, p2

    move/from16 v6, p3

    move v7, p1

    move/from16 v8, p4

    move/from16 v9, p5

    move/from16 v10, p6

    move/from16 v11, p7

    move/from16 v12, p8

    invoke-virtual/range {v4 .. v12}, Lcom/android/internal/os/BatteryStatsImpl;->setBatteryStateLocked(IIIIIIII)V

    .line 1149
    monitor-exit v1

    return-void

    .line 1151
    :cond_25
    monitor-exit v1
    :try_end_26
    .catchall {:try_start_4 .. :try_end_26} :catchall_4a

    .line 1157
    iget-object v1, v0, Lcom/android/server/am/BatteryStatsService;->mWorker:Lcom/android/server/am/BatteryExternalStatsWorker;

    const/16 v2, 0x1f

    const-string v3, "battery-state"

    invoke-virtual {v1, v3, v2}, Lcom/android/server/am/BatteryExternalStatsWorker;->scheduleSync(Ljava/lang/String;I)Ljava/util/concurrent/Future;

    .line 1158
    iget-object v11, v0, Lcom/android/server/am/BatteryStatsService;->mWorker:Lcom/android/server/am/BatteryExternalStatsWorker;

    new-instance v12, Lcom/android/server/am/-$$Lambda$BatteryStatsService$rRONgIFHr4sujxPESRmo9P5RJ6w;

    move-object v1, v12

    move-object v2, p0

    move v3, p2

    move/from16 v4, p3

    move v5, p1

    move/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    move/from16 v10, p8

    invoke-direct/range {v1 .. v10}, Lcom/android/server/am/-$$Lambda$BatteryStatsService$rRONgIFHr4sujxPESRmo9P5RJ6w;-><init>(Lcom/android/server/am/BatteryStatsService;IIIIIIII)V

    invoke-virtual {v11, v12}, Lcom/android/server/am/BatteryExternalStatsWorker;->scheduleRunnable(Ljava/lang/Runnable;)V

    .line 1164
    return-void

    .line 1151
    :catchall_4a
    move-exception v0

    :try_start_4b
    monitor-exit v1
    :try_end_4c
    .catchall {:try_start_4b .. :try_end_4c} :catchall_4a

    throw v0
.end method

.method public noteAlarmFinish(Ljava/lang/String;Landroid/os/WorkSource;I)V
    .registers 6

    .line 514
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 515
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 516
    :try_start_6
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl;->noteAlarmFinishLocked(Ljava/lang/String;Landroid/os/WorkSource;I)V

    .line 517
    monitor-exit v0

    .line 518
    return-void

    .line 517
    :catchall_d
    move-exception p1

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_6 .. :try_end_f} :catchall_d

    throw p1
.end method

.method public noteAlarmStart(Ljava/lang/String;Landroid/os/WorkSource;I)V
    .registers 6

    .line 507
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 508
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 509
    :try_start_6
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl;->noteAlarmStartLocked(Ljava/lang/String;Landroid/os/WorkSource;I)V

    .line 510
    monitor-exit v0

    .line 511
    return-void

    .line 510
    :catchall_d
    move-exception p1

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_6 .. :try_end_f} :catchall_d

    throw p1
.end method

.method public noteBleScanResults(Landroid/os/WorkSource;I)V
    .registers 5

    .line 1086
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 1087
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 1088
    :try_start_6
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl;->noteBluetoothScanResultsFromSourceLocked(Landroid/os/WorkSource;I)V

    .line 1089
    monitor-exit v0

    .line 1090
    return-void

    .line 1089
    :catchall_d
    move-exception p1

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_6 .. :try_end_f} :catchall_d

    throw p1
.end method

.method public noteBleScanStarted(Landroid/os/WorkSource;Z)V
    .registers 5

    .line 1062
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 1063
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 1064
    :try_start_6
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl;->noteBluetoothScanStartedFromSourceLocked(Landroid/os/WorkSource;Z)V

    .line 1065
    monitor-exit v0

    .line 1066
    return-void

    .line 1065
    :catchall_d
    move-exception p1

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_6 .. :try_end_f} :catchall_d

    throw p1
.end method

.method public noteBleScanStopped(Landroid/os/WorkSource;Z)V
    .registers 5

    .line 1070
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 1071
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 1072
    :try_start_6
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl;->noteBluetoothScanStoppedFromSourceLocked(Landroid/os/WorkSource;Z)V

    .line 1073
    monitor-exit v0

    .line 1074
    return-void

    .line 1073
    :catchall_d
    move-exception p1

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_6 .. :try_end_f} :catchall_d

    throw p1
.end method

.method public noteBluetoothControllerActivity(Landroid/bluetooth/BluetoothActivityEnergyInfo;)V
    .registers 4

    .line 1106
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 1107
    if-eqz p1, :cond_19

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothActivityEnergyInfo;->isValid()Z

    move-result v0

    if-nez v0, :cond_c

    goto :goto_19

    .line 1112
    :cond_c
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 1113
    :try_start_f
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1, p1}, Lcom/android/internal/os/BatteryStatsImpl;->updateBluetoothStateLocked(Landroid/bluetooth/BluetoothActivityEnergyInfo;)V

    .line 1114
    monitor-exit v0

    .line 1115
    return-void

    .line 1114
    :catchall_16
    move-exception p1

    monitor-exit v0
    :try_end_18
    .catchall {:try_start_f .. :try_end_18} :catchall_16

    throw p1

    .line 1108
    :cond_19
    :goto_19
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "invalid bluetooth data given: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "BatteryStatsService"

    invoke-static {v0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1109
    return-void
.end method

.method public noteChangeWakelockFromSource(Landroid/os/WorkSource;ILjava/lang/String;Ljava/lang/String;ILandroid/os/WorkSource;ILjava/lang/String;Ljava/lang/String;IZ)V
    .registers 26

    .line 550
    move-object v0, p0

    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 551
    iget-object v1, v0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v1

    .line 552
    :try_start_7
    iget-object v2, v0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    move-object v3, p1

    move/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move/from16 v7, p5

    move-object/from16 v8, p6

    move/from16 v9, p7

    move-object/from16 v10, p8

    move-object/from16 v11, p9

    move/from16 v12, p10

    move/from16 v13, p11

    invoke-virtual/range {v2 .. v13}, Lcom/android/internal/os/BatteryStatsImpl;->noteChangeWakelockFromSourceLocked(Landroid/os/WorkSource;ILjava/lang/String;Ljava/lang/String;ILandroid/os/WorkSource;ILjava/lang/String;Ljava/lang/String;IZ)V

    .line 554
    monitor-exit v1

    .line 555
    return-void

    .line 554
    :catchall_23
    move-exception v0

    monitor-exit v1
    :try_end_25
    .catchall {:try_start_7 .. :try_end_25} :catchall_23

    throw v0
.end method

.method public noteConnectivityChanged(ILjava/lang/String;)V
    .registers 5

    .line 686
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 687
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 688
    :try_start_6
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl;->noteConnectivityChangedLocked(ILjava/lang/String;)V

    .line 689
    monitor-exit v0

    .line 690
    return-void

    .line 689
    :catchall_d
    move-exception p1

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_6 .. :try_end_f} :catchall_d

    throw p1
.end method

.method public noteDeviceIdleMode(ILjava/lang/String;I)V
    .registers 6

    .line 1040
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 1041
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 1042
    :try_start_6
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl;->noteDeviceIdleModeLocked(ILjava/lang/String;I)V

    .line 1043
    monitor-exit v0

    .line 1044
    return-void

    .line 1043
    :catchall_d
    move-exception p1

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_6 .. :try_end_f} :catchall_d

    throw p1
.end method

.method public noteEvent(ILjava/lang/String;I)V
    .registers 6

    .line 446
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 447
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 448
    :try_start_6
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl;->noteEventLocked(ILjava/lang/String;I)V

    .line 449
    monitor-exit v0

    .line 450
    return-void

    .line 449
    :catchall_d
    move-exception p1

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_6 .. :try_end_f} :catchall_d

    throw p1
.end method

.method public noteFlashlightOff(I)V
    .registers 6

    .line 822
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 823
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 824
    :try_start_6
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1, p1}, Lcom/android/internal/os/BatteryStatsImpl;->noteFlashlightOffLocked(I)V

    .line 825
    const/16 v1, 0x1a

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v1, p1, v2, v3}, Landroid/util/StatsLog;->write_non_chained(IILjava/lang/String;I)I

    .line 827
    monitor-exit v0

    .line 828
    return-void

    .line 827
    :catchall_14
    move-exception p1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_6 .. :try_end_16} :catchall_14

    throw p1
.end method

.method public noteFlashlightOn(I)V
    .registers 6

    .line 813
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 814
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 815
    :try_start_6
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1, p1}, Lcom/android/internal/os/BatteryStatsImpl;->noteFlashlightOnLocked(I)V

    .line 816
    const/16 v1, 0x1a

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {v1, p1, v2, v3}, Landroid/util/StatsLog;->write_non_chained(IILjava/lang/String;I)I

    .line 818
    monitor-exit v0

    .line 819
    return-void

    .line 818
    :catchall_14
    move-exception p1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_6 .. :try_end_16} :catchall_14

    throw p1
.end method

.method public noteFullWifiLockAcquired(I)V
    .registers 4

    .line 937
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 938
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 939
    :try_start_6
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1, p1}, Lcom/android/internal/os/BatteryStatsImpl;->noteFullWifiLockAcquiredLocked(I)V

    .line 940
    monitor-exit v0

    .line 941
    return-void

    .line 940
    :catchall_d
    move-exception p1

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_6 .. :try_end_f} :catchall_d

    throw p1
.end method

.method public noteFullWifiLockAcquiredFromSource(Landroid/os/WorkSource;)V
    .registers 4

    .line 979
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 980
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 981
    :try_start_6
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1, p1}, Lcom/android/internal/os/BatteryStatsImpl;->noteFullWifiLockAcquiredFromSourceLocked(Landroid/os/WorkSource;)V

    .line 982
    monitor-exit v0

    .line 983
    return-void

    .line 982
    :catchall_d
    move-exception p1

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_6 .. :try_end_f} :catchall_d

    throw p1
.end method

.method public noteFullWifiLockReleased(I)V
    .registers 4

    .line 944
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 945
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 946
    :try_start_6
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1, p1}, Lcom/android/internal/os/BatteryStatsImpl;->noteFullWifiLockReleasedLocked(I)V

    .line 947
    monitor-exit v0

    .line 948
    return-void

    .line 947
    :catchall_d
    move-exception p1

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_6 .. :try_end_f} :catchall_d

    throw p1
.end method

.method public noteFullWifiLockReleasedFromSource(Landroid/os/WorkSource;)V
    .registers 4

    .line 986
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 987
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 988
    :try_start_6
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1, p1}, Lcom/android/internal/os/BatteryStatsImpl;->noteFullWifiLockReleasedFromSourceLocked(Landroid/os/WorkSource;)V

    .line 989
    monitor-exit v0

    .line 990
    return-void

    .line 989
    :catchall_d
    move-exception p1

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_6 .. :try_end_f} :catchall_d

    throw p1
.end method

.method public noteGpsChanged(Landroid/os/WorkSource;Landroid/os/WorkSource;)V
    .registers 5

    .line 633
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 634
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 635
    :try_start_6
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl;->noteGpsChangedLocked(Landroid/os/WorkSource;Landroid/os/WorkSource;)V

    .line 636
    monitor-exit v0

    .line 637
    return-void

    .line 636
    :catchall_d
    move-exception p1

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_6 .. :try_end_f} :catchall_d

    throw p1
.end method

.method public noteGpsSignalQuality(I)V
    .registers 4

    .line 640
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 641
    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1, p1}, Lcom/android/internal/os/BatteryStatsImpl;->noteGpsSignalQualityLocked(I)V

    .line 642
    monitor-exit v0

    .line 643
    return-void

    .line 642
    :catchall_a
    move-exception p1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw p1
.end method

.method public noteInteractive(Z)V
    .registers 4

    .line 679
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 680
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 681
    :try_start_6
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1, p1}, Lcom/android/internal/os/BatteryStatsImpl;->noteInteractiveLocked(Z)V

    .line 682
    monitor-exit v0

    .line 683
    return-void

    .line 682
    :catchall_d
    move-exception p1

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_6 .. :try_end_f} :catchall_d

    throw p1
.end method

.method public noteJobFinish(Ljava/lang/String;IIII)V
    .registers 16

    .line 483
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 484
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 485
    :try_start_6
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl;->noteJobFinishLocked(Ljava/lang/String;II)V

    .line 486
    const/16 v2, 0x8

    const/4 v4, 0x0

    const/4 v6, 0x0

    move v3, p2

    move-object v5, p1

    move v7, p3

    move v8, p4

    move v9, p5

    invoke-static/range {v2 .. v9}, Landroid/util/StatsLog;->write_non_chained(IILjava/lang/String;Ljava/lang/String;IIII)I

    .line 489
    monitor-exit v0

    .line 490
    return-void

    .line 489
    :catchall_19
    move-exception p1

    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_6 .. :try_end_1b} :catchall_19

    throw p1
.end method

.method public noteJobStart(Ljava/lang/String;III)V
    .registers 15

    .line 472
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 473
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 474
    :try_start_6
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl;->noteJobStartLocked(Ljava/lang/String;I)V

    .line 475
    const/16 v2, 0x8

    const/4 v4, 0x0

    const/4 v6, 0x1

    const/4 v7, -0x1

    move v3, p2

    move-object v5, p1

    move v8, p3

    move v9, p4

    invoke-static/range {v2 .. v9}, Landroid/util/StatsLog;->write_non_chained(IILjava/lang/String;Ljava/lang/String;IIII)I

    .line 478
    monitor-exit v0

    .line 479
    return-void

    .line 478
    :catchall_19
    move-exception p1

    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_6 .. :try_end_1b} :catchall_19

    throw p1
.end method

.method noteJobsDeferred(IIJ)V
    .registers 7

    .line 494
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 495
    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/android/internal/os/BatteryStatsImpl;->noteJobsDeferredLocked(IIJ)V

    .line 496
    monitor-exit v0

    .line 497
    return-void

    .line 496
    :catchall_a
    move-exception p1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw p1
.end method

.method public noteLongPartialWakelockFinish(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 6

    .line 584
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 585
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 586
    :try_start_6
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl;->noteLongPartialWakelockFinish(Ljava/lang/String;Ljava/lang/String;I)V

    .line 587
    monitor-exit v0

    .line 588
    return-void

    .line 587
    :catchall_d
    move-exception p1

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_6 .. :try_end_f} :catchall_d

    throw p1
.end method

.method public noteLongPartialWakelockFinishFromSource(Ljava/lang/String;Ljava/lang/String;Landroid/os/WorkSource;)V
    .registers 6

    .line 593
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 594
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 595
    :try_start_6
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl;->noteLongPartialWakelockFinishFromSource(Ljava/lang/String;Ljava/lang/String;Landroid/os/WorkSource;)V

    .line 596
    monitor-exit v0

    .line 597
    return-void

    .line 596
    :catchall_d
    move-exception p1

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_6 .. :try_end_f} :catchall_d

    throw p1
.end method

.method public noteLongPartialWakelockStart(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 6

    .line 567
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 568
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 569
    :try_start_6
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl;->noteLongPartialWakelockStart(Ljava/lang/String;Ljava/lang/String;I)V

    .line 570
    monitor-exit v0

    .line 571
    return-void

    .line 570
    :catchall_d
    move-exception p1

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_6 .. :try_end_f} :catchall_d

    throw p1
.end method

.method public noteLongPartialWakelockStartFromSource(Ljava/lang/String;Ljava/lang/String;Landroid/os/WorkSource;)V
    .registers 6

    .line 576
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 577
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 578
    :try_start_6
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl;->noteLongPartialWakelockStartFromSource(Ljava/lang/String;Ljava/lang/String;Landroid/os/WorkSource;)V

    .line 579
    monitor-exit v0

    .line 580
    return-void

    .line 579
    :catchall_d
    move-exception p1

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_6 .. :try_end_f} :catchall_d

    throw p1
.end method

.method public noteMobileRadioPowerState(IJI)V
    .registers 7

    .line 693
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 695
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 696
    :try_start_6
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/android/internal/os/BatteryStatsImpl;->noteMobileRadioPowerStateLocked(IJI)Z

    move-result p1

    .line 697
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_6 .. :try_end_d} :catchall_18

    .line 699
    if-eqz p1, :cond_17

    .line 700
    iget-object p1, p0, Lcom/android/server/am/BatteryStatsService;->mWorker:Lcom/android/server/am/BatteryExternalStatsWorker;

    const/4 p2, 0x4

    const-string p3, "modem-data"

    invoke-virtual {p1, p3, p2}, Lcom/android/server/am/BatteryExternalStatsWorker;->scheduleSync(Ljava/lang/String;I)Ljava/util/concurrent/Future;

    .line 702
    :cond_17
    return-void

    .line 697
    :catchall_18
    move-exception p1

    :try_start_19
    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_19 .. :try_end_1a} :catchall_18

    throw p1
.end method

.method public noteModemControllerActivity(Landroid/telephony/ModemActivityInfo;)V
    .registers 4

    .line 1119
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 1121
    if-eqz p1, :cond_12

    invoke-virtual {p1}, Landroid/telephony/ModemActivityInfo;->isValid()Z

    move-result v0

    if-nez v0, :cond_c

    goto :goto_12

    .line 1126
    :cond_c
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->updateMobileRadioState(Landroid/telephony/ModemActivityInfo;)V

    .line 1127
    return-void

    .line 1122
    :cond_12
    :goto_12
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "invalid modem data given: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "BatteryStatsService"

    invoke-static {v0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1123
    return-void
.end method

.method public noteNetworkInterfaceType(Ljava/lang/String;I)V
    .registers 5

    .line 1022
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 1023
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 1024
    :try_start_6
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl;->noteNetworkInterfaceTypeLocked(Ljava/lang/String;I)V

    .line 1025
    monitor-exit v0

    .line 1026
    return-void

    .line 1025
    :catchall_d
    move-exception p1

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_6 .. :try_end_f} :catchall_d

    throw p1
.end method

.method public noteNetworkStatsEnabled()V
    .registers 4

    .line 1030
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 1034
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mWorker:Lcom/android/server/am/BatteryExternalStatsWorker;

    const-string/jumbo v1, "network-stats-enabled"

    const/4 v2, 0x6

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/BatteryExternalStatsWorker;->scheduleSync(Ljava/lang/String;I)Ljava/util/concurrent/Future;

    .line 1036
    return-void
.end method

.method public notePackageInstalled(Ljava/lang/String;J)V
    .registers 6

    .line 1047
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 1048
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 1049
    :try_start_6
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl;->notePackageInstalledLocked(Ljava/lang/String;J)V

    .line 1050
    monitor-exit v0

    .line 1051
    return-void

    .line 1050
    :catchall_d
    move-exception p1

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_6 .. :try_end_f} :catchall_d

    throw p1
.end method

.method public notePackageUninstalled(Ljava/lang/String;)V
    .registers 4

    .line 1054
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 1055
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 1056
    :try_start_6
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1, p1}, Lcom/android/internal/os/BatteryStatsImpl;->notePackageUninstalledLocked(Ljava/lang/String;)V

    .line 1057
    monitor-exit v0

    .line 1058
    return-void

    .line 1057
    :catchall_d
    move-exception p1

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_6 .. :try_end_f} :catchall_d

    throw p1
.end method

.method public notePhoneDataConnectionState(IZI)V
    .registers 6

    .line 726
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 727
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 728
    :try_start_6
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl;->notePhoneDataConnectionStateLocked(IZI)V

    .line 729
    monitor-exit v0

    .line 730
    return-void

    .line 729
    :catchall_d
    move-exception p1

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_6 .. :try_end_f} :catchall_d

    throw p1
.end method

.method public notePhoneOff()V
    .registers 3

    .line 712
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 713
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 714
    :try_start_6
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1}, Lcom/android/internal/os/BatteryStatsImpl;->notePhoneOffLocked()V

    .line 715
    monitor-exit v0

    .line 716
    return-void

    .line 715
    :catchall_d
    move-exception v1

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_6 .. :try_end_f} :catchall_d

    throw v1
.end method

.method public notePhoneOn()V
    .registers 3

    .line 705
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 706
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 707
    :try_start_6
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1}, Lcom/android/internal/os/BatteryStatsImpl;->notePhoneOnLocked()V

    .line 708
    monitor-exit v0

    .line 709
    return-void

    .line 708
    :catchall_d
    move-exception v1

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_6 .. :try_end_f} :catchall_d

    throw v1
.end method

.method public notePhoneSignalStrength(Landroid/telephony/SignalStrength;)V
    .registers 4

    .line 719
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 720
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 721
    :try_start_6
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1, p1}, Lcom/android/internal/os/BatteryStatsImpl;->notePhoneSignalStrengthLocked(Landroid/telephony/SignalStrength;)V

    .line 722
    monitor-exit v0

    .line 723
    return-void

    .line 722
    :catchall_d
    move-exception p1

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_6 .. :try_end_f} :catchall_d

    throw p1
.end method

.method public notePhoneState(I)V
    .registers 5

    .line 733
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 734
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v0

    .line 735
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v1

    .line 736
    :try_start_e
    iget-object v2, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v2, p1, v0}, Lcom/android/internal/os/BatteryStatsImpl;->notePhoneStateLocked(II)V

    .line 737
    monitor-exit v1

    .line 738
    return-void

    .line 737
    :catchall_15
    move-exception p1

    monitor-exit v1
    :try_end_17
    .catchall {:try_start_e .. :try_end_17} :catchall_15

    throw p1
.end method

.method noteProcessAnr(Ljava/lang/String;I)V
    .registers 5

    .line 364
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 365
    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl;->noteProcessAnrLocked(Ljava/lang/String;I)V

    .line 366
    monitor-exit v0

    .line 367
    return-void

    .line 366
    :catchall_a
    move-exception p1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw p1
.end method

.method noteProcessCrash(Ljava/lang/String;I)V
    .registers 6

    .line 356
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 357
    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl;->noteProcessCrashLocked(Ljava/lang/String;I)V

    .line 358
    const/16 v1, 0x1c

    const/4 v2, 0x2

    invoke-static {v1, p2, p1, v2}, Landroid/util/StatsLog;->write(IILjava/lang/String;I)I

    .line 360
    monitor-exit v0

    .line 361
    return-void

    .line 360
    :catchall_10
    move-exception p1

    monitor-exit v0
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_10

    throw p1
.end method

.method noteProcessFinish(Ljava/lang/String;I)V
    .registers 6

    .line 370
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 371
    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl;->noteProcessFinishLocked(Ljava/lang/String;I)V

    .line 372
    const/16 v1, 0x1c

    const/4 v2, 0x0

    invoke-static {v1, p2, p1, v2}, Landroid/util/StatsLog;->write(IILjava/lang/String;I)I

    .line 374
    monitor-exit v0

    .line 375
    return-void

    .line 374
    :catchall_10
    move-exception p1

    monitor-exit v0
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_10

    throw p1
.end method

.method noteProcessStart(Ljava/lang/String;I)V
    .registers 6

    .line 348
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 349
    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl;->noteProcessStartLocked(Ljava/lang/String;I)V

    .line 350
    const/16 v1, 0x1c

    const/4 v2, 0x1

    invoke-static {v1, p2, p1, v2}, Landroid/util/StatsLog;->write(IILjava/lang/String;I)I

    .line 352
    monitor-exit v0

    .line 353
    return-void

    .line 352
    :catchall_10
    move-exception p1

    monitor-exit v0
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_10

    throw p1
.end method

.method public noteResetAudio()V
    .registers 6

    .line 795
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 796
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 797
    :try_start_6
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1}, Lcom/android/internal/os/BatteryStatsImpl;->noteResetAudioLocked()V

    .line 798
    const/16 v1, 0x17

    const/4 v2, -0x1

    const/4 v3, 0x0

    const/4 v4, 0x2

    invoke-static {v1, v2, v3, v4}, Landroid/util/StatsLog;->write_non_chained(IILjava/lang/String;I)I

    .line 800
    monitor-exit v0

    .line 801
    return-void

    .line 800
    :catchall_15
    move-exception v1

    monitor-exit v0
    :try_end_17
    .catchall {:try_start_6 .. :try_end_17} :catchall_15

    throw v1
.end method

.method public noteResetBleScan()V
    .registers 3

    .line 1078
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 1079
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 1080
    :try_start_6
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1}, Lcom/android/internal/os/BatteryStatsImpl;->noteResetBluetoothScanLocked()V

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

.method public noteResetCamera()V
    .registers 6

    .line 851
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 852
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 853
    :try_start_6
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1}, Lcom/android/internal/os/BatteryStatsImpl;->noteResetCameraLocked()V

    .line 854
    const/16 v1, 0x19

    const/4 v2, -0x1

    const/4 v3, 0x0

    const/4 v4, 0x2

    invoke-static {v1, v2, v3, v4}, Landroid/util/StatsLog;->write_non_chained(IILjava/lang/String;I)I

    .line 856
    monitor-exit v0

    .line 857
    return-void

    .line 856
    :catchall_15
    move-exception v1

    monitor-exit v0
    :try_end_17
    .catchall {:try_start_6 .. :try_end_17} :catchall_15

    throw v1
.end method

.method public noteResetFlashlight()V
    .registers 6

    .line 860
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 861
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 862
    :try_start_6
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1}, Lcom/android/internal/os/BatteryStatsImpl;->noteResetFlashlightLocked()V

    .line 863
    const/16 v1, 0x1a

    const/4 v2, -0x1

    const/4 v3, 0x0

    const/4 v4, 0x2

    invoke-static {v1, v2, v3, v4}, Landroid/util/StatsLog;->write_non_chained(IILjava/lang/String;I)I

    .line 865
    monitor-exit v0

    .line 866
    return-void

    .line 865
    :catchall_15
    move-exception v1

    monitor-exit v0
    :try_end_17
    .catchall {:try_start_6 .. :try_end_17} :catchall_15

    throw v1
.end method

.method public noteResetVideo()V
    .registers 6

    .line 804
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 805
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 806
    :try_start_6
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1}, Lcom/android/internal/os/BatteryStatsImpl;->noteResetVideoLocked()V

    .line 807
    const/16 v1, 0x18

    const/4 v2, -0x1

    const/4 v3, 0x0

    const/4 v4, 0x2

    invoke-static {v1, v2, v3, v4}, Landroid/util/StatsLog;->write_non_chained(IILjava/lang/String;I)I

    .line 809
    monitor-exit v0

    .line 810
    return-void

    .line 809
    :catchall_15
    move-exception v1

    monitor-exit v0
    :try_end_17
    .catchall {:try_start_6 .. :try_end_17} :catchall_15

    throw v1
.end method

.method public noteScreenBrightness(I)V
    .registers 4

    .line 657
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 658
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 659
    const/16 v1, 0x9

    :try_start_8
    invoke-static {v1, p1}, Landroid/util/StatsLog;->write(II)I

    .line 660
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1, p1}, Lcom/android/internal/os/BatteryStatsImpl;->noteScreenBrightnessLocked(I)V

    .line 661
    monitor-exit v0

    .line 662
    return-void

    .line 661
    :catchall_12
    move-exception p1

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_8 .. :try_end_14} :catchall_12

    throw p1
.end method

.method public noteScreenState(I)V
    .registers 4

    .line 646
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 648
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 649
    const/16 v1, 0x1d

    :try_start_8
    invoke-static {v1, p1}, Landroid/util/StatsLog;->write(II)I

    .line 651
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1, p1}, Lcom/android/internal/os/BatteryStatsImpl;->noteScreenStateLocked(I)V

    .line 652
    monitor-exit v0

    .line 654
    return-void

    .line 652
    :catchall_12
    move-exception p1

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_8 .. :try_end_14} :catchall_12

    throw p1
.end method

.method public noteStartAudio(I)V
    .registers 6

    .line 759
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 760
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 761
    :try_start_6
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1, p1}, Lcom/android/internal/os/BatteryStatsImpl;->noteAudioOnLocked(I)V

    .line 762
    const/16 v1, 0x17

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {v1, p1, v2, v3}, Landroid/util/StatsLog;->write_non_chained(IILjava/lang/String;I)I

    .line 764
    monitor-exit v0

    .line 765
    return-void

    .line 764
    :catchall_14
    move-exception p1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_6 .. :try_end_16} :catchall_14

    throw p1
.end method

.method public noteStartCamera(I)V
    .registers 6

    .line 831
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 833
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 834
    :try_start_6
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1, p1}, Lcom/android/internal/os/BatteryStatsImpl;->noteCameraOnLocked(I)V

    .line 835
    const/16 v1, 0x19

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {v1, p1, v2, v3}, Landroid/util/StatsLog;->write_non_chained(IILjava/lang/String;I)I

    .line 837
    monitor-exit v0

    .line 839
    return-void

    .line 837
    :catchall_14
    move-exception p1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_6 .. :try_end_16} :catchall_14

    throw p1
.end method

.method public noteStartSensor(II)V
    .registers 7

    .line 600
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 601
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 602
    :try_start_6
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl;->noteStartSensorLocked(II)V

    .line 603
    const/4 v1, 0x5

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {v1, p1, v2, p2, v3}, Landroid/util/StatsLog;->write_non_chained(IILjava/lang/String;II)I

    .line 605
    monitor-exit v0

    .line 606
    return-void

    .line 605
    :catchall_13
    move-exception p1

    monitor-exit v0
    :try_end_15
    .catchall {:try_start_6 .. :try_end_15} :catchall_13

    throw p1
.end method

.method public noteStartVideo(I)V
    .registers 6

    .line 777
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 778
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 779
    :try_start_6
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1, p1}, Lcom/android/internal/os/BatteryStatsImpl;->noteVideoOnLocked(I)V

    .line 780
    const/16 v1, 0x18

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {v1, p1, v2, v3}, Landroid/util/StatsLog;->write_non_chained(IILjava/lang/String;I)I

    .line 782
    monitor-exit v0

    .line 783
    return-void

    .line 782
    :catchall_14
    move-exception p1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_6 .. :try_end_16} :catchall_14

    throw p1
.end method

.method public noteStartWakelock(IILjava/lang/String;Ljava/lang/String;IZ)V
    .registers 21

    .line 522
    move-object v0, p0

    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 523
    iget-object v1, v0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v1

    .line 524
    :try_start_7
    iget-object v2, v0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    const/4 v5, 0x0

    .line 525
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    .line 526
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v12

    .line 524
    move v3, p1

    move/from16 v4, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move/from16 v8, p5

    move/from16 v9, p6

    invoke-virtual/range {v2 .. v13}, Lcom/android/internal/os/BatteryStatsImpl;->noteStartWakeLocked(IILandroid/os/WorkSource$WorkChain;Ljava/lang/String;Ljava/lang/String;IZJJ)V

    .line 527
    monitor-exit v1

    .line 528
    return-void

    .line 527
    :catchall_22
    move-exception v0

    monitor-exit v1
    :try_end_24
    .catchall {:try_start_7 .. :try_end_24} :catchall_22

    throw v0
.end method

.method public noteStartWakelockFromSource(Landroid/os/WorkSource;ILjava/lang/String;Ljava/lang/String;IZ)V
    .registers 15

    .line 540
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 541
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 542
    :try_start_6
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    move v7, p6

    invoke-virtual/range {v1 .. v7}, Lcom/android/internal/os/BatteryStatsImpl;->noteStartWakeFromSourceLocked(Landroid/os/WorkSource;ILjava/lang/String;Ljava/lang/String;IZ)V

    .line 544
    monitor-exit v0

    .line 545
    return-void

    .line 544
    :catchall_13
    move-exception p1

    monitor-exit v0
    :try_end_15
    .catchall {:try_start_6 .. :try_end_15} :catchall_13

    throw p1
.end method

.method public noteStopAudio(I)V
    .registers 6

    .line 768
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 769
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 770
    :try_start_6
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1, p1}, Lcom/android/internal/os/BatteryStatsImpl;->noteAudioOffLocked(I)V

    .line 771
    const/16 v1, 0x17

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v1, p1, v2, v3}, Landroid/util/StatsLog;->write_non_chained(IILjava/lang/String;I)I

    .line 773
    monitor-exit v0

    .line 774
    return-void

    .line 773
    :catchall_14
    move-exception p1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_6 .. :try_end_16} :catchall_14

    throw p1
.end method

.method public noteStopCamera(I)V
    .registers 6

    .line 842
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 843
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 844
    :try_start_6
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1, p1}, Lcom/android/internal/os/BatteryStatsImpl;->noteCameraOffLocked(I)V

    .line 845
    const/16 v1, 0x19

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v1, p1, v2, v3}, Landroid/util/StatsLog;->write_non_chained(IILjava/lang/String;I)I

    .line 847
    monitor-exit v0

    .line 848
    return-void

    .line 847
    :catchall_14
    move-exception p1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_6 .. :try_end_16} :catchall_14

    throw p1
.end method

.method public noteStopSensor(II)V
    .registers 7

    .line 609
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 610
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 611
    :try_start_6
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl;->noteStopSensorLocked(II)V

    .line 612
    const/4 v1, 0x5

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v1, p1, v2, p2, v3}, Landroid/util/StatsLog;->write_non_chained(IILjava/lang/String;II)I

    .line 614
    monitor-exit v0

    .line 615
    return-void

    .line 614
    :catchall_13
    move-exception p1

    monitor-exit v0
    :try_end_15
    .catchall {:try_start_6 .. :try_end_15} :catchall_13

    throw p1
.end method

.method public noteStopVideo(I)V
    .registers 6

    .line 786
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 787
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 788
    :try_start_6
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1, p1}, Lcom/android/internal/os/BatteryStatsImpl;->noteVideoOffLocked(I)V

    .line 789
    const/16 v1, 0x18

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v1, p1, v2, v3}, Landroid/util/StatsLog;->write_non_chained(IILjava/lang/String;I)I

    .line 791
    monitor-exit v0

    .line 792
    return-void

    .line 791
    :catchall_14
    move-exception p1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_6 .. :try_end_16} :catchall_14

    throw p1
.end method

.method public noteStopWakelock(IILjava/lang/String;Ljava/lang/String;I)V
    .registers 19

    .line 531
    move-object v0, p0

    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 532
    iget-object v1, v0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v1

    .line 533
    :try_start_7
    iget-object v2, v0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    const/4 v5, 0x0

    .line 534
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v9

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v11

    .line 533
    move v3, p1

    move v4, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move/from16 v8, p5

    invoke-virtual/range {v2 .. v12}, Lcom/android/internal/os/BatteryStatsImpl;->noteStopWakeLocked(IILandroid/os/WorkSource$WorkChain;Ljava/lang/String;Ljava/lang/String;IJJ)V

    .line 535
    monitor-exit v1

    .line 536
    return-void

    .line 535
    :catchall_1f
    move-exception v0

    monitor-exit v1
    :try_end_21
    .catchall {:try_start_7 .. :try_end_21} :catchall_1f

    throw v0
.end method

.method public noteStopWakelockFromSource(Landroid/os/WorkSource;ILjava/lang/String;Ljava/lang/String;I)V
    .registers 13

    .line 559
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 560
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 561
    :try_start_6
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    invoke-virtual/range {v1 .. v6}, Lcom/android/internal/os/BatteryStatsImpl;->noteStopWakeFromSourceLocked(Landroid/os/WorkSource;ILjava/lang/String;Ljava/lang/String;I)V

    .line 562
    monitor-exit v0

    .line 563
    return-void

    .line 562
    :catchall_12
    move-exception p1

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_6 .. :try_end_14} :catchall_12

    throw p1
.end method

.method public noteSyncFinish(Ljava/lang/String;I)V
    .registers 7

    .line 462
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 463
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 464
    :try_start_6
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl;->noteSyncFinishLocked(Ljava/lang/String;I)V

    .line 465
    const/4 v1, 0x7

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v1, p2, v2, p1, v3}, Landroid/util/StatsLog;->write_non_chained(IILjava/lang/String;Ljava/lang/String;I)I

    .line 467
    monitor-exit v0

    .line 468
    return-void

    .line 467
    :catchall_13
    move-exception p1

    monitor-exit v0
    :try_end_15
    .catchall {:try_start_6 .. :try_end_15} :catchall_13

    throw p1
.end method

.method public noteSyncStart(Ljava/lang/String;I)V
    .registers 7

    .line 453
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 454
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 455
    :try_start_6
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl;->noteSyncStartLocked(Ljava/lang/String;I)V

    .line 456
    const/4 v1, 0x7

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {v1, p2, v2, p1, v3}, Landroid/util/StatsLog;->write_non_chained(IILjava/lang/String;Ljava/lang/String;I)I

    .line 458
    monitor-exit v0

    .line 459
    return-void

    .line 458
    :catchall_13
    move-exception p1

    monitor-exit v0
    :try_end_15
    .catchall {:try_start_6 .. :try_end_15} :catchall_13

    throw p1
.end method

.method noteUidProcessState(II)V
    .registers 6

    .line 379
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 380
    const/16 v1, 0x1b

    .line 381
    :try_start_5
    invoke-static {p2}, Landroid/app/ActivityManager;->processStateAmToProto(I)I

    move-result v2

    .line 380
    invoke-static {v1, p1, v2}, Landroid/util/StatsLog;->write(III)I

    .line 383
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl;->noteUidProcessStateLocked(II)V

    .line 384
    monitor-exit v0

    .line 385
    return-void

    .line 384
    :catchall_13
    move-exception p1

    monitor-exit v0
    :try_end_15
    .catchall {:try_start_5 .. :try_end_15} :catchall_13

    throw p1
.end method

.method public noteUserActivity(II)V
    .registers 5

    .line 665
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 666
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 667
    :try_start_6
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl;->noteUserActivityLocked(II)V

    .line 668
    monitor-exit v0

    .line 669
    return-void

    .line 668
    :catchall_d
    move-exception p1

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_6 .. :try_end_f} :catchall_d

    throw p1
.end method

.method public noteVibratorOff(I)V
    .registers 4

    .line 625
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 626
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 627
    :try_start_6
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1, p1}, Lcom/android/internal/os/BatteryStatsImpl;->noteVibratorOffLocked(I)V

    .line 628
    monitor-exit v0

    .line 629
    return-void

    .line 628
    :catchall_d
    move-exception p1

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_6 .. :try_end_f} :catchall_d

    throw p1
.end method

.method public noteVibratorOn(IJ)V
    .registers 6

    .line 618
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 619
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 620
    :try_start_6
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl;->noteVibratorOnLocked(IJ)V

    .line 621
    monitor-exit v0

    .line 622
    return-void

    .line 621
    :catchall_d
    move-exception p1

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_6 .. :try_end_f} :catchall_d

    throw p1
.end method

.method public noteWakeUp(Ljava/lang/String;I)V
    .registers 5

    .line 672
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 673
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 674
    :try_start_6
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl;->noteWakeUpLocked(Ljava/lang/String;I)V

    .line 675
    monitor-exit v0

    .line 676
    return-void

    .line 675
    :catchall_d
    move-exception p1

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_6 .. :try_end_f} :catchall_d

    throw p1
.end method

.method public noteWakupAlarm(Ljava/lang/String;ILandroid/os/WorkSource;Ljava/lang/String;)V
    .registers 7

    .line 500
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 501
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 502
    :try_start_6
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/android/internal/os/BatteryStatsImpl;->noteWakupAlarmLocked(Ljava/lang/String;ILandroid/os/WorkSource;Ljava/lang/String;)V

    .line 503
    monitor-exit v0

    .line 504
    return-void

    .line 503
    :catchall_d
    move-exception p1

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_6 .. :try_end_f} :catchall_d

    throw p1
.end method

.method public noteWifiBatchedScanStartedFromSource(Landroid/os/WorkSource;I)V
    .registers 5

    .line 1007
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 1008
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 1009
    :try_start_6
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl;->noteWifiBatchedScanStartedFromSourceLocked(Landroid/os/WorkSource;I)V

    .line 1010
    monitor-exit v0

    .line 1011
    return-void

    .line 1010
    :catchall_d
    move-exception p1

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_6 .. :try_end_f} :catchall_d

    throw p1
.end method

.method public noteWifiBatchedScanStoppedFromSource(Landroid/os/WorkSource;)V
    .registers 4

    .line 1014
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 1015
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 1016
    :try_start_6
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1, p1}, Lcom/android/internal/os/BatteryStatsImpl;->noteWifiBatchedScanStoppedFromSourceLocked(Landroid/os/WorkSource;)V

    .line 1017
    monitor-exit v0

    .line 1018
    return-void

    .line 1017
    :catchall_d
    move-exception p1

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_6 .. :try_end_f} :catchall_d

    throw p1
.end method

.method public noteWifiControllerActivity(Landroid/net/wifi/WifiActivityEnergyInfo;)V
    .registers 4

    .line 1094
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 1096
    if-eqz p1, :cond_12

    invoke-virtual {p1}, Landroid/net/wifi/WifiActivityEnergyInfo;->isValid()Z

    move-result v0

    if-nez v0, :cond_c

    goto :goto_12

    .line 1101
    :cond_c
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->updateWifiState(Landroid/net/wifi/WifiActivityEnergyInfo;)V

    .line 1102
    return-void

    .line 1097
    :cond_12
    :goto_12
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "invalid wifi data given: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "BatteryStatsService"

    invoke-static {v0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1098
    return-void
.end method

.method public noteWifiMulticastDisabled(I)V
    .registers 4

    .line 972
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 973
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 974
    :try_start_6
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1, p1}, Lcom/android/internal/os/BatteryStatsImpl;->noteWifiMulticastDisabledLocked(I)V

    .line 975
    monitor-exit v0

    .line 976
    return-void

    .line 975
    :catchall_d
    move-exception p1

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_6 .. :try_end_f} :catchall_d

    throw p1
.end method

.method public noteWifiMulticastEnabled(I)V
    .registers 4

    .line 965
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 966
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 967
    :try_start_6
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1, p1}, Lcom/android/internal/os/BatteryStatsImpl;->noteWifiMulticastEnabledLocked(I)V

    .line 968
    monitor-exit v0

    .line 969
    return-void

    .line 968
    :catchall_d
    move-exception p1

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_6 .. :try_end_f} :catchall_d

    throw p1
.end method

.method public noteWifiOff()V
    .registers 3

    .line 750
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 751
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 752
    :try_start_6
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1}, Lcom/android/internal/os/BatteryStatsImpl;->noteWifiOffLocked()V

    .line 753
    monitor-exit v0
    :try_end_c
    .catchall {:try_start_6 .. :try_end_c} :catchall_13

    .line 754
    const/16 v0, 0x71

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/util/StatsLog;->write(II)I

    .line 756
    return-void

    .line 753
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

    .line 741
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 742
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 743
    :try_start_6
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1}, Lcom/android/internal/os/BatteryStatsImpl;->noteWifiOnLocked()V

    .line 744
    monitor-exit v0
    :try_end_c
    .catchall {:try_start_6 .. :try_end_c} :catchall_13

    .line 745
    const/16 v0, 0x71

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/util/StatsLog;->write(II)I

    .line 747
    return-void

    .line 744
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

    .line 870
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 874
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 875
    :try_start_6
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1}, Lcom/android/internal/os/BatteryStatsImpl;->isOnBattery()Z

    move-result v1

    if-eqz v1, :cond_31

    .line 876
    const/4 v1, 0x3

    const/4 v2, 0x2

    if-eq p1, v1, :cond_18

    if-ne p1, v2, :cond_15

    goto :goto_18

    .line 878
    :cond_15
    const-string v1, "inactive"

    goto :goto_1a

    .line 877
    :cond_18
    :goto_18
    const-string v1, "active"

    .line 879
    :goto_1a
    iget-object v3, p0, Lcom/android/server/am/BatteryStatsService;->mWorker:Lcom/android/server/am/BatteryExternalStatsWorker;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "wifi-data: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1, v2}, Lcom/android/server/am/BatteryExternalStatsWorker;->scheduleSync(Ljava/lang/String;I)Ljava/util/concurrent/Future;

    .line 881
    :cond_31
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/android/internal/os/BatteryStatsImpl;->noteWifiRadioPowerState(IJI)V

    .line 882
    monitor-exit v0

    .line 883
    return-void

    .line 882
    :catchall_38
    move-exception p1

    monitor-exit v0
    :try_end_3a
    .catchall {:try_start_6 .. :try_end_3a} :catchall_38

    throw p1
.end method

.method public noteWifiRssiChanged(I)V
    .registers 4

    .line 930
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 931
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 932
    :try_start_6
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1, p1}, Lcom/android/internal/os/BatteryStatsImpl;->noteWifiRssiChangedLocked(I)V

    .line 933
    monitor-exit v0

    .line 934
    return-void

    .line 933
    :catchall_d
    move-exception p1

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_6 .. :try_end_f} :catchall_d

    throw p1
.end method

.method public noteWifiRunning(Landroid/os/WorkSource;)V
    .registers 4

    .line 886
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 887
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 888
    :try_start_6
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1, p1}, Lcom/android/internal/os/BatteryStatsImpl;->noteWifiRunningLocked(Landroid/os/WorkSource;)V

    .line 889
    monitor-exit v0
    :try_end_c
    .catchall {:try_start_6 .. :try_end_c} :catchall_13

    .line 891
    const/16 v0, 0x72

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Landroid/util/StatsLog;->write(ILandroid/os/WorkSource;I)V

    .line 893
    return-void

    .line 889
    :catchall_13
    move-exception p1

    :try_start_14
    monitor-exit v0
    :try_end_15
    .catchall {:try_start_14 .. :try_end_15} :catchall_13

    throw p1
.end method

.method public noteWifiRunningChanged(Landroid/os/WorkSource;Landroid/os/WorkSource;)V
    .registers 5

    .line 896
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 897
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 898
    :try_start_6
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl;->noteWifiRunningChangedLocked(Landroid/os/WorkSource;Landroid/os/WorkSource;)V

    .line 899
    monitor-exit v0
    :try_end_c
    .catchall {:try_start_6 .. :try_end_c} :catchall_17

    .line 900
    const/4 v0, 0x1

    const/16 v1, 0x72

    invoke-static {v1, p2, v0}, Landroid/util/StatsLog;->write(ILandroid/os/WorkSource;I)V

    .line 902
    const/4 p2, 0x0

    invoke-static {v1, p1, p2}, Landroid/util/StatsLog;->write(ILandroid/os/WorkSource;I)V

    .line 904
    return-void

    .line 899
    :catchall_17
    move-exception p1

    :try_start_18
    monitor-exit v0
    :try_end_19
    .catchall {:try_start_18 .. :try_end_19} :catchall_17

    throw p1
.end method

.method public noteWifiScanStarted(I)V
    .registers 4

    .line 951
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 952
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 953
    :try_start_6
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1, p1}, Lcom/android/internal/os/BatteryStatsImpl;->noteWifiScanStartedLocked(I)V

    .line 954
    monitor-exit v0

    .line 955
    return-void

    .line 954
    :catchall_d
    move-exception p1

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_6 .. :try_end_f} :catchall_d

    throw p1
.end method

.method public noteWifiScanStartedFromSource(Landroid/os/WorkSource;)V
    .registers 4

    .line 993
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 994
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 995
    :try_start_6
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1, p1}, Lcom/android/internal/os/BatteryStatsImpl;->noteWifiScanStartedFromSourceLocked(Landroid/os/WorkSource;)V

    .line 996
    monitor-exit v0

    .line 997
    return-void

    .line 996
    :catchall_d
    move-exception p1

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_6 .. :try_end_f} :catchall_d

    throw p1
.end method

.method public noteWifiScanStopped(I)V
    .registers 4

    .line 958
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 959
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 960
    :try_start_6
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1, p1}, Lcom/android/internal/os/BatteryStatsImpl;->noteWifiScanStoppedLocked(I)V

    .line 961
    monitor-exit v0

    .line 962
    return-void

    .line 961
    :catchall_d
    move-exception p1

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_6 .. :try_end_f} :catchall_d

    throw p1
.end method

.method public noteWifiScanStoppedFromSource(Landroid/os/WorkSource;)V
    .registers 4

    .line 1000
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 1001
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 1002
    :try_start_6
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1, p1}, Lcom/android/internal/os/BatteryStatsImpl;->noteWifiScanStoppedFromSourceLocked(Landroid/os/WorkSource;)V

    .line 1003
    monitor-exit v0

    .line 1004
    return-void

    .line 1003
    :catchall_d
    move-exception p1

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_6 .. :try_end_f} :catchall_d

    throw p1
.end method

.method public noteWifiState(ILjava/lang/String;)V
    .registers 5

    .line 916
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 917
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 918
    :try_start_6
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl;->noteWifiStateLocked(ILjava/lang/String;)V

    .line 919
    monitor-exit v0

    .line 920
    return-void

    .line 919
    :catchall_d
    move-exception p1

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_6 .. :try_end_f} :catchall_d

    throw p1
.end method

.method public noteWifiStopped(Landroid/os/WorkSource;)V
    .registers 4

    .line 907
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 908
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 909
    :try_start_6
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1, p1}, Lcom/android/internal/os/BatteryStatsImpl;->noteWifiStoppedLocked(Landroid/os/WorkSource;)V

    .line 910
    monitor-exit v0
    :try_end_c
    .catchall {:try_start_6 .. :try_end_c} :catchall_13

    .line 911
    const/16 v0, 0x72

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/util/StatsLog;->write(ILandroid/os/WorkSource;I)V

    .line 913
    return-void

    .line 910
    :catchall_13
    move-exception p1

    :try_start_14
    monitor-exit v0
    :try_end_15
    .catchall {:try_start_14 .. :try_end_15} :catchall_13

    throw p1
.end method

.method public noteWifiSupplicantStateChanged(IZ)V
    .registers 5

    .line 923
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 924
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 925
    :try_start_6
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl;->noteWifiSupplicantStateChangedLocked(IZ)V

    .line 926
    monitor-exit v0

    .line 927
    return-void

    .line 926
    :catchall_d
    move-exception p1

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_6 .. :try_end_f} :catchall_d

    throw p1
.end method

.method onCleanupUser(I)V
    .registers 4

    .line 324
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 325
    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1, p1}, Lcom/android/internal/os/BatteryStatsImpl;->onCleanupUserLocked(I)V

    .line 326
    monitor-exit v0

    .line 327
    return-void

    .line 326
    :catchall_a
    move-exception p1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw p1
.end method

.method public onLowPowerModeChanged(Landroid/os/PowerSaveState;)V
    .registers 4

    .line 290
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 291
    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    iget-boolean p1, p1, Landroid/os/PowerSaveState;->batterySaverEnabled:Z

    invoke-virtual {v1, p1}, Lcom/android/internal/os/BatteryStatsImpl;->notePowerSaveModeLocked(Z)V

    .line 292
    monitor-exit v0

    .line 293
    return-void

    .line 292
    :catchall_c
    move-exception p1

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_c

    throw p1
.end method

.method onUserRemoved(I)V
    .registers 4

    .line 330
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 331
    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1, p1}, Lcom/android/internal/os/BatteryStatsImpl;->onUserRemovedLocked(I)V

    .line 332
    monitor-exit v0

    .line 333
    return-void

    .line 332
    :catchall_a
    move-exception p1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw p1
.end method

.method public publish()V
    .registers 4

    .line 203
    const-class v0, Landroid/os/BatteryStatsInternal;

    new-instance v1, Lcom/android/server/am/BatteryStatsService$LocalService;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/server/am/BatteryStatsService$LocalService;-><init>(Lcom/android/server/am/BatteryStatsService;Lcom/android/server/am/BatteryStatsService$1;)V

    invoke-static {v0, v1}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 204
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    const-string v1, "batterystats"

    invoke-static {v1, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 205
    return-void
.end method

.method removeIsolatedUid(II)V
    .registers 5

    .line 342
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 343
    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl;->scheduleRemoveIsolatedUidLocked(II)V

    .line 344
    monitor-exit v0

    .line 345
    return-void

    .line 344
    :catchall_a
    move-exception p1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw p1
.end method

.method removeUid(I)V
    .registers 4

    .line 318
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 319
    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1, p1}, Lcom/android/internal/os/BatteryStatsImpl;->removeUidStatsLocked(I)V

    .line 320
    monitor-exit v0

    .line 321
    return-void

    .line 320
    :catchall_a
    move-exception p1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw p1
.end method

.method public scheduleWriteToDisk()V
    .registers 2

    .line 309
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mWorker:Lcom/android/server/am/BatteryExternalStatsWorker;

    invoke-virtual {v0}, Lcom/android/server/am/BatteryExternalStatsWorker;->scheduleWrite()Ljava/util/concurrent/Future;

    .line 310
    return-void
.end method

.method public setBatteryState(IIIIIIII)V
    .registers 21

    .line 1137
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 1141
    move-object v1, p0

    iget-object v10, v1, Lcom/android/server/am/BatteryStatsService;->mWorker:Lcom/android/server/am/BatteryExternalStatsWorker;

    new-instance v11, Lcom/android/server/am/-$$Lambda$BatteryStatsService$ZxbqtJ7ozYmzYFkkNV3m_QRd0Sk;

    move-object v0, v11

    move v2, p3

    move v3, p1

    move v4, p2

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    invoke-direct/range {v0 .. v9}, Lcom/android/server/am/-$$Lambda$BatteryStatsService$ZxbqtJ7ozYmzYFkkNV3m_QRd0Sk;-><init>(Lcom/android/server/am/BatteryStatsService;IIIIIIII)V

    invoke-virtual {v10, v11}, Lcom/android/server/am/BatteryExternalStatsWorker;->scheduleRunnable(Ljava/lang/Runnable;)V

    .line 1165
    return-void
.end method

.method public setChargingStateUpdateDelayMillis(I)Z
    .registers 8

    .line 1680
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.POWER_SAVER"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1681
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1684
    :try_start_c
    iget-object v2, p0, Lcom/android/server/am/BatteryStatsService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 1685
    const-string v3, "battery_charging_state_update_delay"

    int-to-long v4, p1

    invoke-static {v2, v3, v4, v5}, Landroid/provider/Settings$Global;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    move-result p1
    :try_end_19
    .catchall {:try_start_c .. :try_end_19} :catchall_1d

    .line 1689
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1685
    return p1

    .line 1689
    :catchall_1d
    move-exception p1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1
.end method

.method public shutdown()V
    .registers 3

    .line 262
    const-string v0, "BatteryStats"

    const-string v1, "Writing battery stats before shutdown..."

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    const-string/jumbo v0, "shutdown"

    const/16 v1, 0x1f

    invoke-direct {p0, v0, v1}, Lcom/android/server/am/BatteryStatsService;->syncStats(Ljava/lang/String;I)V

    .line 266
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 267
    :try_start_12
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1}, Lcom/android/internal/os/BatteryStatsImpl;->shutdownLocked()V

    .line 268
    monitor-exit v0
    :try_end_18
    .catchall {:try_start_12 .. :try_end_18} :catchall_1e

    .line 271
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mWorker:Lcom/android/server/am/BatteryExternalStatsWorker;

    invoke-virtual {v0}, Lcom/android/server/am/BatteryExternalStatsWorker;->shutdown()V

    .line 272
    return-void

    .line 268
    :catchall_1e
    move-exception v1

    :try_start_1f
    monitor-exit v0
    :try_end_20
    .catchall {:try_start_1f .. :try_end_20} :catchall_1e

    throw v1
.end method

.method public systemServicesReady()V
    .registers 3

    .line 208
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl;->systemServicesReady(Landroid/content/Context;)V

    .line 209
    return-void
.end method

.method public takeUidSnapshot(I)Landroid/os/health/HealthStatsParceler;
    .registers 8

    .line 1589
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    if-eq p1, v0, :cond_e

    .line 1590
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    const-string v2, "android.permission.BATTERY_STATS"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1593
    :cond_e
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1595
    :try_start_12
    invoke-direct {p0}, Lcom/android/server/am/BatteryStatsService;->shouldCollectExternalStats()Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 1596
    const-string v2, "get-health-stats-for-uids"

    const/16 v3, 0x1f

    invoke-direct {p0, v2, v3}, Lcom/android/server/am/BatteryStatsService;->syncStats(Ljava/lang/String;I)V

    .line 1598
    :cond_1f
    iget-object v2, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v2
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_22} :catch_30
    .catchall {:try_start_12 .. :try_end_22} :catchall_2e

    .line 1599
    :try_start_22
    invoke-virtual {p0, p1}, Lcom/android/server/am/BatteryStatsService;->getHealthStatsForUidLocked(I)Landroid/os/health/HealthStatsParceler;

    move-result-object v3

    monitor-exit v2
    :try_end_27
    .catchall {:try_start_22 .. :try_end_27} :catchall_2b

    .line 1605
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1599
    return-object v3

    .line 1600
    :catchall_2b
    move-exception v3

    :try_start_2c
    monitor-exit v2
    :try_end_2d
    .catchall {:try_start_2c .. :try_end_2d} :catchall_2b

    :try_start_2d
    throw v3
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_2d .. :try_end_2e} :catch_30
    .catchall {:try_start_2d .. :try_end_2e} :catchall_2e

    .line 1605
    :catchall_2e
    move-exception p1

    goto :goto_4d

    .line 1601
    :catch_30
    move-exception v2

    .line 1602
    :try_start_31
    const-string v3, "BatteryStatsService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Crashed while writing for takeUidSnapshot("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1603
    throw v2
    :try_end_4d
    .catchall {:try_start_31 .. :try_end_4d} :catchall_2e

    .line 1605
    :goto_4d
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1
.end method

.method public takeUidSnapshots([I)[Landroid/os/health/HealthStatsParceler;
    .registers 9

    .line 1614
    invoke-static {p1}, Lcom/android/server/am/BatteryStatsService;->onlyCaller([I)Z

    move-result v0

    if-nez v0, :cond_e

    .line 1615
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    const-string v2, "android.permission.BATTERY_STATS"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1618
    :cond_e
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1619
    nop

    .line 1621
    :try_start_13
    invoke-direct {p0}, Lcom/android/server/am/BatteryStatsService;->shouldCollectExternalStats()Z

    move-result v2

    if-eqz v2, :cond_20

    .line 1622
    const-string v2, "get-health-stats-for-uids"

    const/16 v3, 0x1f

    invoke-direct {p0, v2, v3}, Lcom/android/server/am/BatteryStatsService;->syncStats(Ljava/lang/String;I)V

    .line 1624
    :cond_20
    iget-object v2, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v2
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_23} :catch_3e
    .catchall {:try_start_13 .. :try_end_23} :catchall_3c

    .line 1625
    :try_start_23
    array-length v3, p1

    .line 1626
    new-array v4, v3, [Landroid/os/health/HealthStatsParceler;

    .line 1627
    const/4 v5, 0x0

    :goto_27
    if-ge v5, v3, :cond_34

    .line 1628
    aget v6, p1, v5

    invoke-virtual {p0, v6}, Lcom/android/server/am/BatteryStatsService;->getHealthStatsForUidLocked(I)Landroid/os/health/HealthStatsParceler;

    move-result-object v6

    aput-object v6, v4, v5

    .line 1627
    add-int/lit8 v5, v5, 0x1

    goto :goto_27

    .line 1630
    :cond_34
    monitor-exit v2
    :try_end_35
    .catchall {:try_start_23 .. :try_end_35} :catchall_39

    .line 1637
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1630
    return-object v4

    .line 1631
    :catchall_39
    move-exception p1

    :try_start_3a
    monitor-exit v2
    :try_end_3b
    .catchall {:try_start_3a .. :try_end_3b} :catchall_39

    :try_start_3b
    throw p1
    :try_end_3c
    .catch Ljava/lang/Exception; {:try_start_3b .. :try_end_3c} :catch_3e
    .catchall {:try_start_3b .. :try_end_3c} :catchall_3c

    .line 1637
    :catchall_3c
    move-exception p1

    goto :goto_40

    .line 1632
    :catch_3e
    move-exception p1

    .line 1635
    :try_start_3f
    throw p1
    :try_end_40
    .catchall {:try_start_3f .. :try_end_40} :catchall_3c

    .line 1637
    :goto_40
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1
.end method
