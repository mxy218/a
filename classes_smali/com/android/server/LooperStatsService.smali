.class public Lcom/android/server/LooperStatsService;
.super Landroid/os/Binder;
.source "LooperStatsService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/LooperStatsService$LooperShellCommand;,
        Lcom/android/server/LooperStatsService$SettingsObserver;,
        Lcom/android/server/LooperStatsService$Lifecycle;
    }
.end annotation


# static fields
.field private static final DEBUG_SYS_LOOPER_STATS_ENABLED:Ljava/lang/String; = "debug.sys.looper_stats_enabled"

.field private static final DEFAULT_ENABLED:Z = true

.field private static final DEFAULT_ENTRIES_SIZE_CAP:I = 0x5dc

.field private static final DEFAULT_SAMPLING_INTERVAL:I = 0x3e8

.field private static final DEFAULT_TRACK_SCREEN_INTERACTIVE:Z = false

.field private static final LOOPER_STATS_SERVICE_NAME:Ljava/lang/String; = "looper_stats"

.field private static final SETTINGS_ENABLED_KEY:Ljava/lang/String; = "enabled"

.field private static final SETTINGS_SAMPLING_INTERVAL_KEY:Ljava/lang/String; = "sampling_interval"

.field private static final SETTINGS_TRACK_SCREEN_INTERACTIVE_KEY:Ljava/lang/String; = "track_screen_state"

.field private static final TAG:Ljava/lang/String; = "LooperStatsService"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mEnabled:Z

.field private final mStats:Lcom/android/internal/os/LooperStats;

.field private mTrackScreenInteractive:Z


# direct methods
.method private constructor <init>(Landroid/content/Context;Lcom/android/internal/os/LooperStats;)V
    .registers 4

    .line 68
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 65
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/LooperStatsService;->mEnabled:Z

    .line 66
    iput-boolean v0, p0, Lcom/android/server/LooperStatsService;->mTrackScreenInteractive:Z

    .line 69
    iput-object p1, p0, Lcom/android/server/LooperStatsService;->mContext:Landroid/content/Context;

    .line 70
    iput-object p2, p0, Lcom/android/server/LooperStatsService;->mStats:Lcom/android/internal/os/LooperStats;

    .line 71
    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;Lcom/android/internal/os/LooperStats;Lcom/android/server/LooperStatsService$1;)V
    .registers 4

    .line 49
    invoke-direct {p0, p1, p2}, Lcom/android/server/LooperStatsService;-><init>(Landroid/content/Context;Lcom/android/internal/os/LooperStats;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/LooperStatsService;)V
    .registers 1

    .line 49
    invoke-direct {p0}, Lcom/android/server/LooperStatsService;->initFromSettings()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/LooperStatsService;Z)V
    .registers 2

    .line 49
    invoke-direct {p0, p1}, Lcom/android/server/LooperStatsService;->setEnabled(Z)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/LooperStatsService;)Lcom/android/internal/os/LooperStats;
    .registers 1

    .line 49
    iget-object p0, p0, Lcom/android/server/LooperStatsService;->mStats:Lcom/android/internal/os/LooperStats;

    return-object p0
.end method

.method static synthetic access$500(Lcom/android/server/LooperStatsService;I)V
    .registers 2

    .line 49
    invoke-direct {p0, p1}, Lcom/android/server/LooperStatsService;->setSamplingInterval(I)V

    return-void
.end method

.method private initFromSettings()V
    .registers 5

    .line 74
    new-instance v0, Landroid/util/KeyValueListParser;

    const/16 v1, 0x2c

    invoke-direct {v0, v1}, Landroid/util/KeyValueListParser;-><init>(C)V

    .line 77
    :try_start_7
    iget-object v1, p0, Lcom/android/server/LooperStatsService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "looper_stats"

    invoke-static {v1, v2}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/KeyValueListParser;->setString(Ljava/lang/String;)V
    :try_end_16
    .catch Ljava/lang/IllegalArgumentException; {:try_start_7 .. :try_end_16} :catch_17

    .line 81
    goto :goto_1f

    .line 79
    :catch_17
    move-exception v1

    .line 80
    const-string v2, "LooperStatsService"

    const-string v3, "Bad looper_stats settings"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 83
    :goto_1f
    const/16 v1, 0x3e8

    .line 84
    const-string/jumbo v2, "sampling_interval"

    invoke-virtual {v0, v2, v1}, Landroid/util/KeyValueListParser;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 83
    invoke-direct {p0, v1}, Lcom/android/server/LooperStatsService;->setSamplingInterval(I)V

    .line 85
    const/4 v1, 0x0

    .line 86
    const-string/jumbo v2, "track_screen_state"

    invoke-virtual {v0, v2, v1}, Landroid/util/KeyValueListParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 85
    invoke-direct {p0, v1}, Lcom/android/server/LooperStatsService;->setTrackScreenInteractive(Z)V

    .line 89
    const/4 v1, 0x1

    .line 91
    const-string v2, "enabled"

    invoke-virtual {v0, v2, v1}, Landroid/util/KeyValueListParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 89
    const-string v1, "debug.sys.looper_stats_enabled"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/LooperStatsService;->setEnabled(Z)V

    .line 92
    return-void
.end method

.method static synthetic lambda$dump$0(Lcom/android/internal/os/LooperStats$ExportedEntry;)Ljava/lang/Integer;
    .registers 1

    .line 110
    iget p0, p0, Lcom/android/internal/os/LooperStats$ExportedEntry;->workSourceUid:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$dump$1(Lcom/android/internal/os/LooperStats$ExportedEntry;)Ljava/lang/String;
    .registers 1

    .line 111
    iget-object p0, p0, Lcom/android/internal/os/LooperStats$ExportedEntry;->threadName:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic lambda$dump$2(Lcom/android/internal/os/LooperStats$ExportedEntry;)Ljava/lang/String;
    .registers 1

    .line 112
    iget-object p0, p0, Lcom/android/internal/os/LooperStats$ExportedEntry;->handlerClassName:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic lambda$dump$3(Lcom/android/internal/os/LooperStats$ExportedEntry;)Ljava/lang/String;
    .registers 1

    .line 113
    iget-object p0, p0, Lcom/android/internal/os/LooperStats$ExportedEntry;->messageName:Ljava/lang/String;

    return-object p0
.end method

.method private setEnabled(Z)V
    .registers 3

    .line 156
    iget-boolean v0, p0, Lcom/android/server/LooperStatsService;->mEnabled:Z

    if-eq v0, p1, :cond_19

    .line 157
    iput-boolean p1, p0, Lcom/android/server/LooperStatsService;->mEnabled:Z

    .line 158
    iget-object v0, p0, Lcom/android/server/LooperStatsService;->mStats:Lcom/android/internal/os/LooperStats;

    invoke-virtual {v0}, Lcom/android/internal/os/LooperStats;->reset()V

    .line 159
    iget-object v0, p0, Lcom/android/server/LooperStatsService;->mStats:Lcom/android/internal/os/LooperStats;

    invoke-virtual {v0, p1}, Lcom/android/internal/os/LooperStats;->setAddDebugEntries(Z)V

    .line 160
    if-eqz p1, :cond_15

    iget-object p1, p0, Lcom/android/server/LooperStatsService;->mStats:Lcom/android/internal/os/LooperStats;

    goto :goto_16

    :cond_15
    const/4 p1, 0x0

    :goto_16
    invoke-static {p1}, Landroid/os/Looper;->setObserver(Landroid/os/Looper$Observer;)V

    .line 162
    :cond_19
    return-void
.end method

.method private setSamplingInterval(I)V
    .registers 4

    .line 172
    if-lez p1, :cond_8

    .line 173
    iget-object v0, p0, Lcom/android/server/LooperStatsService;->mStats:Lcom/android/internal/os/LooperStats;

    invoke-virtual {v0, p1}, Lcom/android/internal/os/LooperStats;->setSamplingInterval(I)V

    goto :goto_1e

    .line 175
    :cond_8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Ignored invalid sampling interval (value must be positive): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "LooperStatsService"

    invoke-static {v0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    :goto_1e
    return-void
.end method

.method private setTrackScreenInteractive(Z)V
    .registers 3

    .line 165
    iget-boolean v0, p0, Lcom/android/server/LooperStatsService;->mTrackScreenInteractive:Z

    if-eq v0, p1, :cond_b

    .line 166
    iput-boolean p1, p0, Lcom/android/server/LooperStatsService;->mTrackScreenInteractive:Z

    .line 167
    iget-object p1, p0, Lcom/android/server/LooperStatsService;->mStats:Lcom/android/internal/os/LooperStats;

    invoke-virtual {p1}, Lcom/android/internal/os/LooperStats;->reset()V

    .line 169
    :cond_b
    return-void
.end method


# virtual methods
.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 23

    .line 102
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    iget-object v2, v0, Lcom/android/server/LooperStatsService;->mContext:Landroid/content/Context;

    const-string v3, "LooperStatsService"

    invoke-static {v2, v3, v1}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v2

    if-nez v2, :cond_f

    return-void

    .line 103
    :cond_f
    invoke-static {}, Lcom/android/internal/os/AppIdToPackageMap;->getSnapshot()Lcom/android/internal/os/AppIdToPackageMap;

    move-result-object v2

    .line 104
    const-string v3, "Start time: "

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 105
    iget-object v3, v0, Lcom/android/server/LooperStatsService;->mStats:Lcom/android/internal/os/LooperStats;

    invoke-virtual {v3}, Lcom/android/internal/os/LooperStats;->getStartTimeMillis()J

    move-result-wide v3

    const-string/jumbo v5, "yyyy-MM-dd HH:mm:ss"

    invoke-static {v5, v3, v4}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 106
    const-string v3, "On battery time (ms): "

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 107
    iget-object v3, v0, Lcom/android/server/LooperStatsService;->mStats:Lcom/android/internal/os/LooperStats;

    invoke-virtual {v3}, Lcom/android/internal/os/LooperStats;->getBatteryTimeMillis()J

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Ljava/io/PrintWriter;->println(J)V

    .line 108
    iget-object v0, v0, Lcom/android/server/LooperStatsService;->mStats:Lcom/android/internal/os/LooperStats;

    invoke-virtual {v0}, Lcom/android/internal/os/LooperStats;->getEntries()Ljava/util/List;

    move-result-object v0

    .line 109
    sget-object v3, Lcom/android/server/-$$Lambda$LooperStatsService$Byo6QAxZpVXDCMtjrcYJc6YLAks;->INSTANCE:Lcom/android/server/-$$Lambda$LooperStatsService$Byo6QAxZpVXDCMtjrcYJc6YLAks;

    .line 110
    invoke-static {v3}, Ljava/util/Comparator;->comparing(Ljava/util/function/Function;)Ljava/util/Comparator;

    move-result-object v3

    sget-object v4, Lcom/android/server/-$$Lambda$LooperStatsService$Vzysuo2tO86qjfcWeh1Rdb47NQQ;->INSTANCE:Lcom/android/server/-$$Lambda$LooperStatsService$Vzysuo2tO86qjfcWeh1Rdb47NQQ;

    .line 111
    invoke-interface {v3, v4}, Ljava/util/Comparator;->thenComparing(Ljava/util/function/Function;)Ljava/util/Comparator;

    move-result-object v3

    sget-object v4, Lcom/android/server/-$$Lambda$LooperStatsService$XjYmSR91xdWG1Xgt-Gj9GBZZbjk;->INSTANCE:Lcom/android/server/-$$Lambda$LooperStatsService$XjYmSR91xdWG1Xgt-Gj9GBZZbjk;

    .line 112
    invoke-interface {v3, v4}, Ljava/util/Comparator;->thenComparing(Ljava/util/function/Function;)Ljava/util/Comparator;

    move-result-object v3

    sget-object v4, Lcom/android/server/-$$Lambda$LooperStatsService$XtFJEDeyYRT79ZkVP96XkHribxg;->INSTANCE:Lcom/android/server/-$$Lambda$LooperStatsService$XtFJEDeyYRT79ZkVP96XkHribxg;

    .line 113
    invoke-interface {v3, v4}, Ljava/util/Comparator;->thenComparing(Ljava/util/function/Function;)Ljava/util/Comparator;

    move-result-object v3

    .line 109
    invoke-interface {v0, v3}, Ljava/util/List;->sort(Ljava/util/Comparator;)V

    .line 114
    const-string/jumbo v4, "work_source_uid"

    const-string/jumbo v5, "thread_name"

    const-string v6, "handler_class"

    const-string v7, "message_name"

    const-string v8, "is_interactive"

    const-string v9, "message_count"

    const-string/jumbo v10, "recorded_message_count"

    const-string/jumbo v11, "total_latency_micros"

    const-string v12, "max_latency_micros"

    const-string/jumbo v13, "total_cpu_micros"

    const-string v14, "max_cpu_micros"

    const-string/jumbo v15, "recorded_delay_message_count"

    const-string/jumbo v16, "total_delay_millis"

    const-string v17, "max_delay_millis"

    const-string v18, "exception_count"

    filled-new-array/range {v4 .. v18}, [Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    const-string v4, ","

    invoke-static {v4, v3}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v3

    .line 130
    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 131
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_91
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_135

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/os/LooperStats$ExportedEntry;

    .line 132
    iget-object v4, v3, Lcom/android/internal/os/LooperStats$ExportedEntry;->messageName:Ljava/lang/String;

    const-string v5, "__DEBUG_"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_a8

    .line 134
    goto :goto_91

    .line 136
    :cond_a8
    const/16 v4, 0xf

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget v6, v3, Lcom/android/internal/os/LooperStats$ExportedEntry;->workSourceUid:I

    .line 137
    invoke-virtual {v2, v6}, Lcom/android/internal/os/AppIdToPackageMap;->mapUid(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    iget-object v6, v3, Lcom/android/internal/os/LooperStats$ExportedEntry;->threadName:Ljava/lang/String;

    aput-object v6, v4, v5

    const/4 v5, 0x2

    iget-object v6, v3, Lcom/android/internal/os/LooperStats$ExportedEntry;->handlerClassName:Ljava/lang/String;

    aput-object v6, v4, v5

    const/4 v5, 0x3

    iget-object v6, v3, Lcom/android/internal/os/LooperStats$ExportedEntry;->messageName:Ljava/lang/String;

    aput-object v6, v4, v5

    const/4 v5, 0x4

    iget-boolean v6, v3, Lcom/android/internal/os/LooperStats$ExportedEntry;->isInteractive:Z

    .line 141
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x5

    iget-wide v6, v3, Lcom/android/internal/os/LooperStats$ExportedEntry;->messageCount:J

    .line 142
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x6

    iget-wide v6, v3, Lcom/android/internal/os/LooperStats$ExportedEntry;->recordedMessageCount:J

    .line 143
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x7

    iget-wide v6, v3, Lcom/android/internal/os/LooperStats$ExportedEntry;->totalLatencyMicros:J

    .line 144
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v5

    const/16 v5, 0x8

    iget-wide v6, v3, Lcom/android/internal/os/LooperStats$ExportedEntry;->maxLatencyMicros:J

    .line 145
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v5

    const/16 v5, 0x9

    iget-wide v6, v3, Lcom/android/internal/os/LooperStats$ExportedEntry;->cpuUsageMicros:J

    .line 146
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v5

    const/16 v5, 0xa

    iget-wide v6, v3, Lcom/android/internal/os/LooperStats$ExportedEntry;->maxCpuUsageMicros:J

    .line 147
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v5

    const/16 v5, 0xb

    iget-wide v6, v3, Lcom/android/internal/os/LooperStats$ExportedEntry;->recordedDelayMessageCount:J

    .line 148
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v5

    const/16 v5, 0xc

    iget-wide v6, v3, Lcom/android/internal/os/LooperStats$ExportedEntry;->delayMillis:J

    .line 149
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v5

    const/16 v5, 0xd

    iget-wide v6, v3, Lcom/android/internal/os/LooperStats$ExportedEntry;->maxDelayMillis:J

    .line 150
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v5

    const/16 v5, 0xe

    iget-wide v6, v3, Lcom/android/internal/os/LooperStats$ExportedEntry;->exceptionCount:J

    .line 151
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v4, v5

    .line 136
    const-string v3, "%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s\n"

    invoke-virtual {v1, v3, v4}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 152
    goto/16 :goto_91

    .line 153
    :cond_135
    return-void
.end method

.method public onShellCommand(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)V
    .registers 15

    .line 97
    new-instance v0, Lcom/android/server/LooperStatsService$LooperShellCommand;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/LooperStatsService$LooperShellCommand;-><init>(Lcom/android/server/LooperStatsService;Lcom/android/server/LooperStatsService$1;)V

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/LooperStatsService$LooperShellCommand;->exec(Landroid/os/Binder;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)I

    .line 98
    return-void
.end method
