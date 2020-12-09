.class public final Lcom/android/server/am/MemoryStatUtil;
.super Ljava/lang/Object;
.source "MemoryStatUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/MemoryStatUtil$IonAllocations;,
        Lcom/android/server/am/MemoryStatUtil$MemoryStat;
    }
.end annotation


# static fields
.field static final BYTES_IN_KILOBYTE:I = 0x400

.field private static final CACHE_IN_BYTES:Ljava/util/regex/Pattern;

.field private static final DEBUG_SYSTEM_ION_HEAP_FILE:Ljava/lang/String; = "/sys/kernel/debug/ion/heaps/system"

.field private static final DEVICE_HAS_PER_APP_MEMCG:Z

.field private static final ION_HEAP_SIZE_IN_BYTES:Ljava/util/regex/Pattern;

.field static final JIFFY_NANOS:J

.field private static final MEMORY_STAT_FILE_FMT:Ljava/lang/String; = "/dev/memcg/apps/uid_%d/pid_%d/memory.stat"

.field private static final PGFAULT:Ljava/util/regex/Pattern;

.field private static final PGFAULT_INDEX:I = 0x9

.field private static final PGMAJFAULT:Ljava/util/regex/Pattern;

.field private static final PGMAJFAULT_INDEX:I = 0xb

.field private static final PROCESS_ION_HEAP_SIZE_IN_BYTES:Ljava/util/regex/Pattern;

.field private static final PROCFS_ANON_RSS_IN_KILOBYTES:Ljava/util/regex/Pattern;

.field private static final PROCFS_RSS_IN_KILOBYTES:Ljava/util/regex/Pattern;

.field private static final PROCFS_SWAP_IN_KILOBYTES:Ljava/util/regex/Pattern;

.field private static final PROC_CMDLINE_FILE_FMT:Ljava/lang/String; = "/proc/%d/cmdline"

.field private static final PROC_STATUS_FILE_FMT:Ljava/lang/String; = "/proc/%d/status"

.field private static final PROC_STAT_FILE_FMT:Ljava/lang/String; = "/proc/%d/stat"

.field private static final RSS_HIGH_WATERMARK_IN_KILOBYTES:Ljava/util/regex/Pattern;

.field private static final RSS_IN_BYTES:Ljava/util/regex/Pattern;

.field private static final START_TIME_INDEX:I = 0x15

.field private static final SWAP_IN_BYTES:Ljava/util/regex/Pattern;

.field private static final TAG:Ljava/lang/String; = "ActivityManager"


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .line 48
    sget v0, Landroid/system/OsConstants;->_SC_CLK_TCK:I

    invoke-static {v0}, Landroid/system/Os;->sysconf(I)J

    move-result-wide v0

    const-wide/32 v2, 0x3b9aca00

    div-long/2addr v2, v0

    sput-wide v2, Lcom/android/server/am/MemoryStatUtil;->JIFFY_NANOS:J

    .line 53
    nop

    .line 54
    const-string/jumbo v0, "ro.config.per_app_memcg"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/am/MemoryStatUtil;->DEVICE_HAS_PER_APP_MEMCG:Z

    .line 67
    const-string/jumbo v0, "total_pgfault (\\d+)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/MemoryStatUtil;->PGFAULT:Ljava/util/regex/Pattern;

    .line 68
    const-string/jumbo v0, "total_pgmajfault (\\d+)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/MemoryStatUtil;->PGMAJFAULT:Ljava/util/regex/Pattern;

    .line 69
    const-string/jumbo v0, "total_rss (\\d+)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/MemoryStatUtil;->RSS_IN_BYTES:Ljava/util/regex/Pattern;

    .line 70
    const-string/jumbo v0, "total_cache (\\d+)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/MemoryStatUtil;->CACHE_IN_BYTES:Ljava/util/regex/Pattern;

    .line 71
    const-string/jumbo v0, "total_swap (\\d+)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/MemoryStatUtil;->SWAP_IN_BYTES:Ljava/util/regex/Pattern;

    .line 73
    nop

    .line 74
    const-string v0, "VmHWM:\\s*(\\d+)\\s*kB"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/MemoryStatUtil;->RSS_HIGH_WATERMARK_IN_KILOBYTES:Ljava/util/regex/Pattern;

    .line 75
    nop

    .line 76
    const-string v0, "VmRSS:\\s*(\\d+)\\s*kB"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/MemoryStatUtil;->PROCFS_RSS_IN_KILOBYTES:Ljava/util/regex/Pattern;

    .line 77
    nop

    .line 78
    const-string v0, "RssAnon:\\s*(\\d+)\\s*kB"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/MemoryStatUtil;->PROCFS_ANON_RSS_IN_KILOBYTES:Ljava/util/regex/Pattern;

    .line 79
    nop

    .line 80
    const-string v0, "VmSwap:\\s*(\\d+)\\s*kB"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/MemoryStatUtil;->PROCFS_SWAP_IN_KILOBYTES:Ljava/util/regex/Pattern;

    .line 82
    nop

    .line 83
    const-string v0, "\n\\s*total\\s*(\\d+)\\s*\n"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/MemoryStatUtil;->ION_HEAP_SIZE_IN_BYTES:Ljava/util/regex/Pattern;

    .line 84
    nop

    .line 85
    const-string v0, "\n\\s+\\S+\\s+(\\d+)\\s+(\\d+)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/MemoryStatUtil;->PROCESS_ION_HEAP_SIZE_IN_BYTES:Ljava/util/regex/Pattern;

    .line 84
    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static hasMemcg()Z
    .registers 1

    .line 323
    sget-boolean v0, Lcom/android/server/am/MemoryStatUtil;->DEVICE_HAS_PER_APP_MEMCG:Z

    return v0
.end method

.method static parseCmdlineFromProcfs(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 260
    if-nez p0, :cond_5

    .line 261
    const-string p0, ""

    return-object p0

    .line 263
    :cond_5
    const-string v0, "\u0000"

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 264
    const/4 v1, -0x1

    if-ne v0, v1, :cond_f

    .line 265
    return-object p0

    .line 267
    :cond_f
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static parseIonHeapSizeFromDebugfs(Ljava/lang/String;)J
    .registers 3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 276
    if-eqz p0, :cond_10

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_10

    .line 279
    :cond_9
    sget-object v0, Lcom/android/server/am/MemoryStatUtil;->ION_HEAP_SIZE_IN_BYTES:Ljava/util/regex/Pattern;

    invoke-static {v0, p0}, Lcom/android/server/am/MemoryStatUtil;->tryParseLong(Ljava/util/regex/Pattern;Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0

    .line 277
    :cond_10
    :goto_10
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method static parseMemoryStatFromMemcg(Ljava/lang/String;)Lcom/android/server/am/MemoryStatUtil$MemoryStat;
    .registers 4
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 188
    if-eqz p0, :cond_37

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_37

    .line 192
    :cond_9
    new-instance v0, Lcom/android/server/am/MemoryStatUtil$MemoryStat;

    invoke-direct {v0}, Lcom/android/server/am/MemoryStatUtil$MemoryStat;-><init>()V

    .line 193
    sget-object v1, Lcom/android/server/am/MemoryStatUtil;->PGFAULT:Ljava/util/regex/Pattern;

    invoke-static {v1, p0}, Lcom/android/server/am/MemoryStatUtil;->tryParseLong(Ljava/util/regex/Pattern;Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/android/server/am/MemoryStatUtil$MemoryStat;->pgfault:J

    .line 194
    sget-object v1, Lcom/android/server/am/MemoryStatUtil;->PGMAJFAULT:Ljava/util/regex/Pattern;

    invoke-static {v1, p0}, Lcom/android/server/am/MemoryStatUtil;->tryParseLong(Ljava/util/regex/Pattern;Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/android/server/am/MemoryStatUtil$MemoryStat;->pgmajfault:J

    .line 195
    sget-object v1, Lcom/android/server/am/MemoryStatUtil;->RSS_IN_BYTES:Ljava/util/regex/Pattern;

    invoke-static {v1, p0}, Lcom/android/server/am/MemoryStatUtil;->tryParseLong(Ljava/util/regex/Pattern;Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/android/server/am/MemoryStatUtil$MemoryStat;->rssInBytes:J

    .line 196
    sget-object v1, Lcom/android/server/am/MemoryStatUtil;->CACHE_IN_BYTES:Ljava/util/regex/Pattern;

    invoke-static {v1, p0}, Lcom/android/server/am/MemoryStatUtil;->tryParseLong(Ljava/util/regex/Pattern;Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/android/server/am/MemoryStatUtil$MemoryStat;->cacheInBytes:J

    .line 197
    sget-object v1, Lcom/android/server/am/MemoryStatUtil;->SWAP_IN_BYTES:Ljava/util/regex/Pattern;

    invoke-static {v1, p0}, Lcom/android/server/am/MemoryStatUtil;->tryParseLong(Ljava/util/regex/Pattern;Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/android/server/am/MemoryStatUtil$MemoryStat;->swapInBytes:J

    .line 198
    return-object v0

    .line 189
    :cond_37
    :goto_37
    const/4 p0, 0x0

    return-object p0
.end method

.method static parseMemoryStatFromProcfs(Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/am/MemoryStatUtil$MemoryStat;
    .registers 8
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 208
    const/4 v0, 0x0

    if-eqz p0, :cond_6d

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_a

    goto :goto_6d

    .line 211
    :cond_a
    if-eqz p1, :cond_6c

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_13

    goto :goto_6c

    .line 215
    :cond_13
    const-string v1, " "

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 216
    array-length v1, p0

    const/16 v2, 0x18

    if-ge v1, v2, :cond_1f

    .line 217
    return-object v0

    .line 221
    :cond_1f
    :try_start_1f
    new-instance v1, Lcom/android/server/am/MemoryStatUtil$MemoryStat;

    invoke-direct {v1}, Lcom/android/server/am/MemoryStatUtil$MemoryStat;-><init>()V

    .line 222
    const/16 v2, 0x9

    aget-object v2, p0, v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, v1, Lcom/android/server/am/MemoryStatUtil$MemoryStat;->pgfault:J

    .line 223
    const/16 v2, 0xb

    aget-object v2, p0, v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, v1, Lcom/android/server/am/MemoryStatUtil$MemoryStat;->pgmajfault:J

    .line 224
    sget-object v2, Lcom/android/server/am/MemoryStatUtil;->PROCFS_RSS_IN_KILOBYTES:Ljava/util/regex/Pattern;

    .line 225
    invoke-static {v2, p1}, Lcom/android/server/am/MemoryStatUtil;->tryParseLong(Ljava/util/regex/Pattern;Ljava/lang/String;)J

    move-result-wide v2

    const-wide/16 v4, 0x400

    mul-long/2addr v2, v4

    iput-wide v2, v1, Lcom/android/server/am/MemoryStatUtil$MemoryStat;->rssInBytes:J

    .line 226
    sget-object v2, Lcom/android/server/am/MemoryStatUtil;->PROCFS_ANON_RSS_IN_KILOBYTES:Ljava/util/regex/Pattern;

    .line 227
    invoke-static {v2, p1}, Lcom/android/server/am/MemoryStatUtil;->tryParseLong(Ljava/util/regex/Pattern;Ljava/lang/String;)J

    move-result-wide v2

    mul-long/2addr v2, v4

    iput-wide v2, v1, Lcom/android/server/am/MemoryStatUtil$MemoryStat;->anonRssInBytes:J

    .line 228
    sget-object v2, Lcom/android/server/am/MemoryStatUtil;->PROCFS_SWAP_IN_KILOBYTES:Ljava/util/regex/Pattern;

    .line 229
    invoke-static {v2, p1}, Lcom/android/server/am/MemoryStatUtil;->tryParseLong(Ljava/util/regex/Pattern;Ljava/lang/String;)J

    move-result-wide v2

    mul-long/2addr v2, v4

    iput-wide v2, v1, Lcom/android/server/am/MemoryStatUtil$MemoryStat;->swapInBytes:J

    .line 230
    const/16 p1, 0x15

    aget-object p0, p0, p1

    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p0

    sget-wide v2, Lcom/android/server/am/MemoryStatUtil;->JIFFY_NANOS:J

    mul-long/2addr p0, v2

    iput-wide p0, v1, Lcom/android/server/am/MemoryStatUtil$MemoryStat;->startTimeNanos:J
    :try_end_62
    .catch Ljava/lang/NumberFormatException; {:try_start_1f .. :try_end_62} :catch_63

    .line 231
    return-object v1

    .line 232
    :catch_63
    move-exception p0

    .line 233
    const-string p1, "ActivityManager"

    const-string v1, "Failed to parse value"

    invoke-static {p1, v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 234
    return-object v0

    .line 212
    :cond_6c
    :goto_6c
    return-object v0

    .line 209
    :cond_6d
    :goto_6d
    return-object v0
.end method

.method static parseProcessIonHeapSizesFromDebugfs(Ljava/lang/String;)Ljava/util/List;
    .registers 9
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/server/am/MemoryStatUtil$IonAllocations;",
            ">;"
        }
    .end annotation

    .line 288
    if-eqz p0, :cond_77

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_77

    .line 292
    :cond_9
    sget-object v0, Lcom/android/server/am/MemoryStatUtil;->PROCESS_ION_HEAP_SIZE_IN_BYTES:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    .line 293
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 294
    :goto_14
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_5a

    .line 296
    const/4 v1, 0x1

    :try_start_1b
    invoke-virtual {p0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 297
    const/4 v3, 0x2

    invoke-virtual {p0, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    .line 298
    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/MemoryStatUtil$IonAllocations;

    .line 299
    if-nez v5, :cond_3c

    .line 300
    new-instance v5, Lcom/android/server/am/MemoryStatUtil$IonAllocations;

    invoke-direct {v5}, Lcom/android/server/am/MemoryStatUtil$IonAllocations;-><init>()V

    .line 301
    invoke-virtual {v0, v2, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 303
    :cond_3c
    iput v2, v5, Lcom/android/server/am/MemoryStatUtil$IonAllocations;->pid:I

    .line 304
    iget-wide v6, v5, Lcom/android/server/am/MemoryStatUtil$IonAllocations;->totalSizeInBytes:J

    add-long/2addr v6, v3

    iput-wide v6, v5, Lcom/android/server/am/MemoryStatUtil$IonAllocations;->totalSizeInBytes:J

    .line 305
    iget v2, v5, Lcom/android/server/am/MemoryStatUtil$IonAllocations;->count:I

    add-int/2addr v2, v1

    iput v2, v5, Lcom/android/server/am/MemoryStatUtil$IonAllocations;->count:I

    .line 306
    iget-wide v1, v5, Lcom/android/server/am/MemoryStatUtil$IonAllocations;->maxSizeInBytes:J

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    iput-wide v1, v5, Lcom/android/server/am/MemoryStatUtil$IonAllocations;->maxSizeInBytes:J
    :try_end_50
    .catch Ljava/lang/NumberFormatException; {:try_start_1b .. :try_end_50} :catch_51

    goto :goto_59

    .line 307
    :catch_51
    move-exception v1

    .line 308
    const-string v2, "ActivityManager"

    const-string v3, "Failed to parse value"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 309
    :goto_59
    goto :goto_14

    .line 312
    :cond_5a
    new-instance p0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v1

    invoke-direct {p0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 313
    const/4 v1, 0x0

    :goto_64
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_76

    .line 314
    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/MemoryStatUtil$IonAllocations;

    invoke-interface {p0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 313
    add-int/lit8 v1, v1, 0x1

    goto :goto_64

    .line 316
    :cond_76
    return-object p0

    .line 289
    :cond_77
    :goto_77
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method static parseVmHWMFromProcfs(Ljava/lang/String;)J
    .registers 5
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 244
    if-eqz p0, :cond_13

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_13

    .line 248
    :cond_9
    sget-object v0, Lcom/android/server/am/MemoryStatUtil;->RSS_HIGH_WATERMARK_IN_KILOBYTES:Ljava/util/regex/Pattern;

    invoke-static {v0, p0}, Lcom/android/server/am/MemoryStatUtil;->tryParseLong(Ljava/util/regex/Pattern;Ljava/lang/String;)J

    move-result-wide v0

    const-wide/16 v2, 0x400

    mul-long/2addr v0, v2

    return-wide v0

    .line 245
    :cond_13
    :goto_13
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public static readCmdlineFromProcfs(I)Ljava/lang/String;
    .registers 4

    .line 143
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const-string p0, "/proc/%d/cmdline"

    invoke-static {v0, p0, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 144
    invoke-static {p0}, Lcom/android/server/am/MemoryStatUtil;->readFileContents(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/am/MemoryStatUtil;->parseCmdlineFromProcfs(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static readFileContents(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 168
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 169
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    const/4 v1, 0x0

    if-nez p0, :cond_d

    .line 171
    return-object v1

    .line 175
    :cond_d
    const/4 p0, 0x0

    :try_start_e
    invoke-static {v0, p0, v1}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_12} :catch_13

    return-object p0

    .line 176
    :catch_13
    move-exception p0

    .line 177
    const-string v0, "ActivityManager"

    const-string v2, "Failed to read file:"

    invoke-static {v0, v2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 178
    return-object v1
.end method

.method public static readMemoryStatFromFilesystem(II)Lcom/android/server/am/MemoryStatUtil$MemoryStat;
    .registers 3

    .line 101
    invoke-static {}, Lcom/android/server/am/MemoryStatUtil;->hasMemcg()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-static {p0, p1}, Lcom/android/server/am/MemoryStatUtil;->readMemoryStatFromMemcg(II)Lcom/android/server/am/MemoryStatUtil$MemoryStat;

    move-result-object p0

    goto :goto_f

    :cond_b
    invoke-static {p1}, Lcom/android/server/am/MemoryStatUtil;->readMemoryStatFromProcfs(I)Lcom/android/server/am/MemoryStatUtil$MemoryStat;

    move-result-object p0

    :goto_f
    return-object p0
.end method

.method static readMemoryStatFromMemcg(II)Lcom/android/server/am/MemoryStatUtil$MemoryStat;
    .registers 5

    .line 111
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v2, 0x0

    aput-object p0, v1, v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 p1, 0x1

    aput-object p0, v1, p1

    const-string p0, "/dev/memcg/apps/uid_%d/pid_%d/memory.stat"

    invoke-static {v0, p0, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 112
    invoke-static {p0}, Lcom/android/server/am/MemoryStatUtil;->readFileContents(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/am/MemoryStatUtil;->parseMemoryStatFromMemcg(Ljava/lang/String;)Lcom/android/server/am/MemoryStatUtil$MemoryStat;

    move-result-object p0

    return-object p0
.end method

.method public static readMemoryStatFromProcfs(I)Lcom/android/server/am/MemoryStatUtil$MemoryStat;
    .registers 6

    .line 122
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "/proc/%d/stat"

    invoke-static {v0, v3, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 123
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v1, v4

    const-string p0, "/proc/%d/status"

    invoke-static {v2, p0, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 124
    invoke-static {v0}, Lcom/android/server/am/MemoryStatUtil;->readFileContents(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0}, Lcom/android/server/am/MemoryStatUtil;->readFileContents(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/server/am/MemoryStatUtil;->parseMemoryStatFromProcfs(Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/am/MemoryStatUtil$MemoryStat;

    move-result-object p0

    return-object p0
.end method

.method public static readProcessSystemIonHeapSizesFromDebugfs()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/server/am/MemoryStatUtil$IonAllocations;",
            ">;"
        }
    .end annotation

    .line 164
    const-string v0, "/sys/kernel/debug/ion/heaps/system"

    invoke-static {v0}, Lcom/android/server/am/MemoryStatUtil;->readFileContents(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/am/MemoryStatUtil;->parseProcessIonHeapSizesFromDebugfs(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static readRssHighWaterMarkFromProcfs(I)J
    .registers 4

    .line 132
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const-string p0, "/proc/%d/status"

    invoke-static {v0, p0, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 133
    invoke-static {p0}, Lcom/android/server/am/MemoryStatUtil;->readFileContents(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/am/MemoryStatUtil;->parseVmHWMFromProcfs(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static readSystemIonHeapSizeFromDebugfs()J
    .registers 2

    .line 154
    const-string v0, "/sys/kernel/debug/ion/heaps/system"

    invoke-static {v0}, Lcom/android/server/am/MemoryStatUtil;->readFileContents(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/am/MemoryStatUtil;->parseIonHeapSizeFromDebugfs(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method private static tryParseLong(Ljava/util/regex/Pattern;Ljava/lang/String;)J
    .registers 5

    .line 331
    invoke-virtual {p0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    .line 333
    const-wide/16 v0, 0x0

    :try_start_6
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->find()Z

    move-result p1

    if-eqz p1, :cond_15

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0
    :try_end_15
    .catch Ljava/lang/NumberFormatException; {:try_start_6 .. :try_end_15} :catch_16

    :cond_15
    return-wide v0

    .line 334
    :catch_16
    move-exception p0

    .line 335
    const-string p1, "ActivityManager"

    const-string v2, "Failed to parse value"

    invoke-static {p1, v2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 336
    return-wide v0
.end method
