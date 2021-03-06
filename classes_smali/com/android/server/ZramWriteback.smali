.class public final Lcom/android/server/ZramWriteback;
.super Landroid/app/job/JobService;
.source "ZramWriteback.java"


# static fields
.field private static final BDEV_SYS:Ljava/lang/String; = "/sys/block/zram%d/backing_dev"

.field private static final DEBUG:Z = false

.field private static final FIRST_WB_DELAY_PROP:Ljava/lang/String; = "ro.zram.first_wb_delay_mins"

.field private static final IDLE_SYS:Ljava/lang/String; = "/sys/block/zram%d/idle"

.field private static final IDLE_SYS_ALL_PAGES:Ljava/lang/String; = "all"

.field private static final MARK_IDLE_DELAY_PROP:Ljava/lang/String; = "ro.zram.mark_idle_delay_mins"

.field private static final MARK_IDLE_JOB_ID:I = 0x32b

.field private static final MAX_ZRAM_DEVICES:I = 0x100

.field private static final PERIODIC_WB_DELAY_PROP:Ljava/lang/String; = "ro.zram.periodic_wb_delay_hours"

.field private static final TAG:Ljava/lang/String; = "ZramWriteback"

.field private static final WB_STATS_MAX_FILE_SIZE:I = 0x80

.field private static final WB_STATS_SYS:Ljava/lang/String; = "/sys/block/zram%d/bd_stat"

.field private static final WB_SYS:Ljava/lang/String; = "/sys/block/zram%d/writeback"

.field private static final WB_SYS_IDLE_PAGES:Ljava/lang/String; = "idle"

.field private static final WRITEBACK_IDLE_JOB_ID:I = 0x32c

.field private static sZramDeviceId:I

.field private static final sZramWriteback:Landroid/content/ComponentName;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 40
    new-instance v0, Landroid/content/ComponentName;

    const-class v1, Lcom/android/server/ZramWriteback;

    .line 41
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android"

    invoke-direct {v0, v2, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/ZramWriteback;->sZramWriteback:Landroid/content/ComponentName;

    .line 47
    const/4 v0, 0x0

    sput v0, Lcom/android/server/ZramWriteback;->sZramDeviceId:I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 36
    invoke-direct {p0}, Landroid/app/job/JobService;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/server/ZramWriteback;)V
    .registers 1
    .param p0, "x0"  # Lcom/android/server/ZramWriteback;

    .line 36
    invoke-direct {p0}, Lcom/android/server/ZramWriteback;->markAndFlushPages()V

    return-void
.end method

.method static synthetic access$100(Landroid/content/Context;)V
    .registers 1
    .param p0, "x0"  # Landroid/content/Context;

    .line 36
    invoke-static {p0}, Lcom/android/server/ZramWriteback;->schedNextWriteback(Landroid/content/Context;)V

    return-void
.end method

.method private flushIdlePages()V
    .registers 5

    .line 75
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    sget v1, Lcom/android/server/ZramWriteback;->sZramDeviceId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "/sys/block/zram%d/writeback"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 77
    .local v0, "wbPath":Ljava/lang/String;
    :try_start_12
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, "idle"

    invoke-static {v1, v2}, Landroid/os/FileUtils;->stringToFile(Ljava/io/File;Ljava/lang/String;)V
    :try_end_1d
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_1d} :catch_1e

    .line 80
    goto :goto_35

    .line 78
    :catch_1e
    move-exception v1

    .line 79
    .local v1, "e":Ljava/io/IOException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to write to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ZramWriteback"

    invoke-static {v3, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    .end local v1  # "e":Ljava/io/IOException;
    :goto_35
    return-void
.end method

.method private getWrittenPageCount()I
    .registers 5

    .line 85
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    sget v1, Lcom/android/server/ZramWriteback;->sZramDeviceId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "/sys/block/zram%d/bd_stat"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 87
    .local v0, "wbStatsPath":Ljava/lang/String;
    :try_start_12
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/16 v2, 0x80

    const-string v3, ""

    .line 88
    invoke-static {v1, v2, v3}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 89
    .local v1, "wbStats":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const-string v3, "\\s+"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    aget-object v2, v2, v3

    const/16 v3, 0xa

    invoke-static {v2, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v2
    :try_end_32
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_32} :catch_33

    return v2

    .line 90
    .end local v1  # "wbStats":Ljava/lang/String;
    :catch_33
    move-exception v1

    .line 91
    .local v1, "e":Ljava/io/IOException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to read writeback stats from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ZramWriteback"

    invoke-static {v3, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    .end local v1  # "e":Ljava/io/IOException;
    const/4 v1, -0x1

    return v1
.end method

.method private static isWritebackEnabled()Z
    .registers 7

    .line 110
    const-string v0, "ZramWriteback"

    const/4 v1, 0x0

    :try_start_3
    new-instance v2, Ljava/io/File;

    const-string v3, "/sys/block/zram%d/backing_dev"

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Object;

    sget v6, Lcom/android/server/ZramWriteback;->sZramDeviceId:I

    .line 111
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v1

    invoke-static {v3, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/16 v3, 0x80

    const-string v5, ""

    invoke-static {v2, v3, v5}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 112
    .local v2, "backingDev":Ljava/lang/String;
    const-string/jumbo v3, "none"

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2f

    .line 113
    return v4

    .line 115
    :cond_2f
    const-string v3, "Writeback device is not set"

    invoke-static {v0, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_34
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_34} :catch_36

    .line 119
    nop

    .end local v2  # "backingDev":Ljava/lang/String;
    goto :goto_3c

    .line 117
    :catch_36
    move-exception v2

    .line 118
    .local v2, "e":Ljava/io/IOException;
    const-string v3, "Writeback is not enabled on zram"

    invoke-static {v0, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    .end local v2  # "e":Ljava/io/IOException;
    :goto_3c
    return v1
.end method

.method private markAndFlushPages()V
    .registers 4

    .line 98
    invoke-direct {p0}, Lcom/android/server/ZramWriteback;->getWrittenPageCount()I

    move-result v0

    .line 100
    .local v0, "pageCount":I
    invoke-direct {p0}, Lcom/android/server/ZramWriteback;->flushIdlePages()V

    .line 101
    invoke-direct {p0}, Lcom/android/server/ZramWriteback;->markPagesAsIdle()V

    .line 103
    const/4 v1, -0x1

    if-eq v0, v1, :cond_28

    .line 104
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Total pages written to disk is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/android/server/ZramWriteback;->getWrittenPageCount()I

    move-result v2

    sub-int/2addr v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ZramWriteback"

    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    :cond_28
    return-void
.end method

.method private markPagesAsIdle()V
    .registers 5

    .line 65
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    sget v1, Lcom/android/server/ZramWriteback;->sZramDeviceId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "/sys/block/zram%d/idle"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 67
    .local v0, "idlePath":Ljava/lang/String;
    :try_start_12
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-string v2, "all"

    invoke-static {v1, v2}, Landroid/os/FileUtils;->stringToFile(Ljava/io/File;Ljava/lang/String;)V
    :try_end_1c
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_1c} :catch_1d

    .line 70
    goto :goto_34

    .line 68
    :catch_1d
    move-exception v1

    .line 69
    .local v1, "e":Ljava/io/IOException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to write to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ZramWriteback"

    invoke-static {v3, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    .end local v1  # "e":Ljava/io/IOException;
    :goto_34
    return-void
.end method

.method private static schedNextWriteback(Landroid/content/Context;)V
    .registers 7
    .param p0, "context"  # Landroid/content/Context;

    .line 124
    const-string/jumbo v0, "ro.zram.periodic_wb_delay_hours"

    const/16 v1, 0x18

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 125
    .local v0, "nextWbDelay":I
    const-string/jumbo v1, "jobscheduler"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/job/JobScheduler;

    .line 127
    .local v1, "js":Landroid/app/job/JobScheduler;
    new-instance v2, Landroid/app/job/JobInfo$Builder;

    sget-object v3, Lcom/android/server/ZramWriteback;->sZramWriteback:Landroid/content/ComponentName;

    const/16 v4, 0x32c

    invoke-direct {v2, v4, v3}, Landroid/app/job/JobInfo$Builder;-><init>(ILandroid/content/ComponentName;)V

    sget-object v3, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    int-to-long v4, v0

    .line 128
    invoke-virtual {v3, v4, v5}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Landroid/app/job/JobInfo$Builder;->setMinimumLatency(J)Landroid/app/job/JobInfo$Builder;

    move-result-object v2

    .line 129
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/app/job/JobInfo$Builder;->setRequiresDeviceIdle(Z)Landroid/app/job/JobInfo$Builder;

    move-result-object v2

    .line 130
    invoke-virtual {v2}, Landroid/app/job/JobInfo$Builder;->build()Landroid/app/job/JobInfo;

    move-result-object v2

    .line 127
    invoke-virtual {v1, v2}, Landroid/app/job/JobScheduler;->schedule(Landroid/app/job/JobInfo;)I

    .line 131
    return-void
.end method

.method public static scheduleZramWriteback(Landroid/content/Context;)V
    .registers 8
    .param p0, "context"  # Landroid/content/Context;

    .line 168
    const-string/jumbo v0, "ro.zram.mark_idle_delay_mins"

    const/16 v1, 0x14

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 169
    .local v0, "markIdleDelay":I
    const-string/jumbo v1, "ro.zram.first_wb_delay_mins"

    const/16 v2, 0xb4

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 171
    .local v1, "firstWbDelay":I
    const-string/jumbo v2, "jobscheduler"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/job/JobScheduler;

    .line 175
    .local v2, "js":Landroid/app/job/JobScheduler;
    new-instance v3, Landroid/app/job/JobInfo$Builder;

    sget-object v4, Lcom/android/server/ZramWriteback;->sZramWriteback:Landroid/content/ComponentName;

    const/16 v5, 0x32b

    invoke-direct {v3, v5, v4}, Landroid/app/job/JobInfo$Builder;-><init>(ILandroid/content/ComponentName;)V

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    int-to-long v5, v0

    .line 176
    invoke-virtual {v4, v5, v6}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Landroid/app/job/JobInfo$Builder;->setMinimumLatency(J)Landroid/app/job/JobInfo$Builder;

    move-result-object v3

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    int-to-long v5, v0

    .line 177
    invoke-virtual {v4, v5, v6}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Landroid/app/job/JobInfo$Builder;->setOverrideDeadline(J)Landroid/app/job/JobInfo$Builder;

    move-result-object v3

    .line 178
    invoke-virtual {v3}, Landroid/app/job/JobInfo$Builder;->build()Landroid/app/job/JobInfo;

    move-result-object v3

    .line 175
    invoke-virtual {v2, v3}, Landroid/app/job/JobScheduler;->schedule(Landroid/app/job/JobInfo;)I

    .line 183
    new-instance v3, Landroid/app/job/JobInfo$Builder;

    sget-object v4, Lcom/android/server/ZramWriteback;->sZramWriteback:Landroid/content/ComponentName;

    const/16 v5, 0x32c

    invoke-direct {v3, v5, v4}, Landroid/app/job/JobInfo$Builder;-><init>(ILandroid/content/ComponentName;)V

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    int-to-long v5, v1

    .line 184
    invoke-virtual {v4, v5, v6}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Landroid/app/job/JobInfo$Builder;->setMinimumLatency(J)Landroid/app/job/JobInfo$Builder;

    move-result-object v3

    .line 185
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/app/job/JobInfo$Builder;->setRequiresDeviceIdle(Z)Landroid/app/job/JobInfo$Builder;

    move-result-object v3

    .line 186
    invoke-virtual {v3}, Landroid/app/job/JobInfo$Builder;->build()Landroid/app/job/JobInfo;

    move-result-object v3

    .line 183
    invoke-virtual {v2, v3}, Landroid/app/job/JobScheduler;->schedule(Landroid/app/job/JobInfo;)I

    .line 187
    return-void
.end method


# virtual methods
.method public onStartJob(Landroid/app/job/JobParameters;)Z
    .registers 5
    .param p1, "params"  # Landroid/app/job/JobParameters;

    .line 136
    invoke-static {}, Lcom/android/server/ZramWriteback;->isWritebackEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_b

    .line 137
    invoke-virtual {p0, p1, v1}, Lcom/android/server/ZramWriteback;->jobFinished(Landroid/app/job/JobParameters;Z)V

    .line 138
    return v1

    .line 141
    :cond_b
    invoke-virtual {p1}, Landroid/app/job/JobParameters;->getJobId()I

    move-result v0

    const/16 v2, 0x32b

    if-ne v0, v2, :cond_1a

    .line 142
    invoke-direct {p0}, Lcom/android/server/ZramWriteback;->markPagesAsIdle()V

    .line 143
    invoke-virtual {p0, p1, v1}, Lcom/android/server/ZramWriteback;->jobFinished(Landroid/app/job/JobParameters;Z)V

    .line 144
    return v1

    .line 146
    :cond_1a
    new-instance v0, Lcom/android/server/ZramWriteback$1;

    const-string v1, "ZramWriteback_WritebackIdlePages"

    invoke-direct {v0, p0, v1, p1}, Lcom/android/server/ZramWriteback$1;-><init>(Lcom/android/server/ZramWriteback;Ljava/lang/String;Landroid/app/job/JobParameters;)V

    .line 153
    invoke-virtual {v0}, Lcom/android/server/ZramWriteback$1;->start()V

    .line 155
    const/4 v0, 0x1

    return v0
.end method

.method public onStopJob(Landroid/app/job/JobParameters;)Z
    .registers 3
    .param p1, "params"  # Landroid/app/job/JobParameters;

    .line 161
    const/4 v0, 0x0

    return v0
.end method
