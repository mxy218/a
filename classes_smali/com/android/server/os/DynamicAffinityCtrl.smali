.class public Lcom/android/server/os/DynamicAffinityCtrl;
.super Lcom/android/server/os/Strategy;
.source "DynamicAffinityCtrl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/os/DynamicAffinityCtrl$Stats;
    }
.end annotation


# static fields
.field private static final DEFAULT_WHITE_LIST_FILE_PATH:Ljava/lang/String; = "/system/etc/perf_intelligent_affinity_config.conf"

.field private static final MSG_SET_AFFINITY:I = 0x112

.field private static final MSG_SET_NAME:I = 0x110

.field private static final MSG_UPDATE_INFO:I = 0x111

.field private static final PROCESS_STATS_FORMAT:[I

.field private static final PROCESS_STAT_STIME:I = 0x2

.field private static final PROCESS_STAT_UTIME:I = 0x1

.field private static final TAG:Ljava/lang/String; = "DynamicAffinityCtrl"

.field private static final WHITE_LIST_FILE_PATH:Ljava/lang/String; = "/data/system/perf_intelligent_affinity_config.conf"

.field private static final sLoadComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/android/server/os/DynamicAffinityCtrl$Stats;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private mHandlerThread:Landroid/os/HandlerThread;

.field private final mJiffyMillis:J

.field private mNum:I

.field private mPid:I

.field private final mProcessStatsData:[J

.field private final mProcessStatsStringData:[Ljava/lang/String;

.field private mSceneReceiver:Landroid/scene/SceneReceiver;

.field private mThreadStats:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/os/DynamicAffinityCtrl$Stats;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 65
    new-instance v0, Lcom/android/server/os/DynamicAffinityCtrl$1;

    invoke-direct {v0}, Lcom/android/server/os/DynamicAffinityCtrl$1;-><init>()V

    sput-object v0, Lcom/android/server/os/DynamicAffinityCtrl;->sLoadComparator:Ljava/util/Comparator;

    .line 146
    const/16 v0, 0xf

    new-array v0, v0, [I

    fill-array-data v0, :array_12

    sput-object v0, Lcom/android/server/os/DynamicAffinityCtrl;->PROCESS_STATS_FORMAT:[I

    return-void

    nop

    :array_12
    .array-data 4
        0x20
        0x1220
        0x20
        0x20
        0x20
        0x20
        0x20
        0x20
        0x20
        0x20
        0x20
        0x20
        0x20
        0x2020
        0x2020
    .end array-data
.end method

.method constructor <init>()V
    .registers 8

    .line 105
    invoke-direct {p0}, Lcom/android/server/os/Strategy;-><init>()V

    .line 54
    const/4 v0, 0x3

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/android/server/os/DynamicAffinityCtrl;->mProcessStatsData:[J

    .line 55
    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/String;

    iput-object v1, p0, Lcom/android/server/os/DynamicAffinityCtrl;->mProcessStatsStringData:[Ljava/lang/String;

    .line 204
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/os/DynamicAffinityCtrl;->mThreadStats:Ljava/util/ArrayList;

    .line 106
    const-string v1, "DynamicAffinityCtrl"

    const-string/jumbo v2, "init DynamicAffinityCtrl！"

    invoke-static {v1, v2}, Landroid/scene/SceneUtils;->logSceneDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    sget v2, Landroid/system/OsConstants;->_SC_CLK_TCK:I

    invoke-static {v2}, Landroid/system/Os;->sysconf(I)J

    move-result-wide v2

    .line 108
    .local v2, "jiffyHz":J
    const-wide/16 v4, 0x3e8

    div-long/2addr v4, v2

    iput-wide v4, p0, Lcom/android/server/os/DynamicAffinityCtrl;->mJiffyMillis:J

    .line 109
    const/4 v4, -0x1

    iput v4, p0, Lcom/android/server/os/DynamicAffinityCtrl;->mPid:I

    .line 110
    const-string v4, "DynamicAffinityConfig"

    const-string v5, "/data/system/perf_intelligent_affinity_config.conf"

    const-string v6, "/system/etc/perf_intelligent_affinity_config.conf"

    invoke-virtual {p0, v4, v5, v6, v0}, Lcom/android/server/os/DynamicAffinityCtrl;->loadConfig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v4

    if-nez v4, :cond_3d

    .line 112
    const-string/jumbo v0, "load config file failed!"

    invoke-static {v1, v0}, Landroid/scene/SceneUtils;->logSceneError(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    return-void

    .line 115
    :cond_3d
    invoke-direct {p0}, Lcom/android/server/os/DynamicAffinityCtrl;->init()V

    .line 116
    new-instance v1, Lcom/android/server/os/DynamicAffinityCtrl$3;

    invoke-direct {v1, p0}, Lcom/android/server/os/DynamicAffinityCtrl$3;-><init>(Lcom/android/server/os/DynamicAffinityCtrl;)V

    iput-object v1, p0, Lcom/android/server/os/DynamicAffinityCtrl;->mSceneReceiver:Landroid/scene/SceneReceiver;

    .line 130
    new-array v0, v0, [Ljava/lang/Integer;

    const/4 v1, 0x0

    const v4, 0x1000004

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v0, v1

    .line 131
    .local v0, "scenes":[Ljava/lang/Integer;
    iget-object v1, p0, Lcom/android/server/os/DynamicAffinityCtrl;->mSceneReceiver:Landroid/scene/SceneReceiver;

    invoke-virtual {v1, v0}, Landroid/scene/SceneReceiver;->addScenes([Ljava/lang/Integer;)V

    .line 132
    invoke-static {}, Landroid/scene/SceneClient;->getInstance()Landroid/scene/SceneClient;

    move-result-object v1

    iget-object v4, p0, Lcom/android/server/os/DynamicAffinityCtrl;->mSceneReceiver:Landroid/scene/SceneReceiver;

    invoke-virtual {v1, v4}, Landroid/scene/SceneClient;->registerSceneReceiver(Landroid/scene/SceneReceiver;)V

    .line 133
    return-void
.end method

.method static synthetic access$1000(Lcom/android/server/os/DynamicAffinityCtrl;Ljava/lang/String;)V
    .registers 2
    .param p0, "x0"  # Lcom/android/server/os/DynamicAffinityCtrl;
    .param p1, "x1"  # Ljava/lang/String;

    .line 38
    invoke-direct {p0, p1}, Lcom/android/server/os/DynamicAffinityCtrl;->setDynamicAffinity(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/os/DynamicAffinityCtrl;Ljava/lang/String;)V
    .registers 2
    .param p0, "x0"  # Lcom/android/server/os/DynamicAffinityCtrl;
    .param p1, "x1"  # Ljava/lang/String;

    .line 38
    invoke-direct {p0, p1}, Lcom/android/server/os/DynamicAffinityCtrl;->setAppToChangeAffinity(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/os/DynamicAffinityCtrl;)I
    .registers 2
    .param p0, "x0"  # Lcom/android/server/os/DynamicAffinityCtrl;

    .line 38
    iget v0, p0, Lcom/android/server/os/DynamicAffinityCtrl;->mPid:I

    return v0
.end method

.method static synthetic access$400(Lcom/android/server/os/DynamicAffinityCtrl;)Ljava/util/ArrayList;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/os/DynamicAffinityCtrl;

    .line 38
    iget-object v0, p0, Lcom/android/server/os/DynamicAffinityCtrl;->mThreadStats:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/os/DynamicAffinityCtrl;I[ILjava/util/ArrayList;)[I
    .registers 5
    .param p0, "x0"  # Lcom/android/server/os/DynamicAffinityCtrl;
    .param p1, "x1"  # I
    .param p2, "x2"  # [I
    .param p3, "x3"  # Ljava/util/ArrayList;

    .line 38
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/os/DynamicAffinityCtrl;->collectStats(I[ILjava/util/ArrayList;)[I

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/os/DynamicAffinityCtrl;)Landroid/os/Handler;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/os/DynamicAffinityCtrl;

    .line 38
    iget-object v0, p0, Lcom/android/server/os/DynamicAffinityCtrl;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/server/os/DynamicAffinityCtrl;)I
    .registers 2
    .param p0, "x0"  # Lcom/android/server/os/DynamicAffinityCtrl;

    .line 38
    iget v0, p0, Lcom/android/server/os/DynamicAffinityCtrl;->mNum:I

    return v0
.end method

.method static synthetic access$702(Lcom/android/server/os/DynamicAffinityCtrl;I)I
    .registers 2
    .param p0, "x0"  # Lcom/android/server/os/DynamicAffinityCtrl;
    .param p1, "x1"  # I

    .line 38
    iput p1, p0, Lcom/android/server/os/DynamicAffinityCtrl;->mNum:I

    return p1
.end method

.method static synthetic access$800(Lcom/android/server/os/DynamicAffinityCtrl;I)[I
    .registers 3
    .param p0, "x0"  # Lcom/android/server/os/DynamicAffinityCtrl;
    .param p1, "x1"  # I

    .line 38
    invoke-direct {p0, p1}, Lcom/android/server/os/DynamicAffinityCtrl;->getHeavyThreads(I)[I

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/server/os/DynamicAffinityCtrl;[I)V
    .registers 2
    .param p0, "x0"  # Lcom/android/server/os/DynamicAffinityCtrl;
    .param p1, "x1"  # [I

    .line 38
    invoke-direct {p0, p1}, Lcom/android/server/os/DynamicAffinityCtrl;->setSchedAffinity([I)V

    return-void
.end method

.method private collectStats(I[ILjava/util/ArrayList;)[I
    .registers 34
    .param p1, "leadPid"  # I
    .param p2, "curPids"  # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[I",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/os/DynamicAffinityCtrl$Stats;",
            ">;)[I"
        }
    .end annotation

    .line 217
    .local p3, "allThreads":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/os/DynamicAffinityCtrl$Stats;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DynamicAffinityCtrl collectStats at "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "DynamicAffinityCtrl"

    invoke-static {v3, v2}, Landroid/scene/SceneUtils;->logSceneDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    const/4 v2, 0x0

    if-gez p1, :cond_22

    return-object v2

    .line 219
    :cond_22
    new-instance v4, Ljava/io/File;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "/proc"

    invoke-direct {v4, v6, v5}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    .local v4, "procDir":Ljava/io/File;
    new-instance v5, Ljava/io/File;

    const-string/jumbo v6, "task"

    invoke-direct {v5, v4, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v5

    .line 221
    .local v5, "threadsDir":Ljava/lang/String;
    move-object/from16 v6, p2

    invoke-static {v5, v6}, Landroid/os/Process;->getPids(Ljava/lang/String;[I)[I

    move-result-object v7

    .line 222
    .local v7, "pids":[I
    if-nez v7, :cond_43

    const/4 v9, 0x0

    goto :goto_44

    :cond_43
    array-length v9, v7

    .line 223
    .local v9, "NP":I
    :goto_44
    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->size()I

    move-result v10

    .line 224
    .local v10, "NS":I
    const/4 v11, 0x0

    .line 225
    .local v11, "curStatsIndex":I
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_4a
    if-ge v12, v9, :cond_2cc

    .line 226
    aget v13, v7, v12

    .line 227
    .local v13, "pid":I
    if-gez v13, :cond_59

    .line 228
    move v9, v13

    .line 229
    move-object/from16 v18, v4

    move-object/from16 v23, v5

    move-object/from16 v22, v7

    goto/16 :goto_2d8

    .line 231
    :cond_59
    if-ge v11, v10, :cond_62

    invoke-virtual {v1, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/server/os/DynamicAffinityCtrl$Stats;

    goto :goto_63

    :cond_62
    move-object v14, v2

    .line 233
    .local v14, "st":Lcom/android/server/os/DynamicAffinityCtrl$Stats;
    :goto_63
    const-string v15, " : "

    const-string/jumbo v8, "number "

    const/16 v16, 0x2

    const-string v2, " stime="

    move-object/from16 v18, v4

    .end local v4  # "procDir":Ljava/io/File;
    .local v18, "procDir":Ljava/io/File;
    const-string v4, " utime="

    const-string v6, " name="

    const/16 v19, 0x1

    if-eqz v14, :cond_15d

    move/from16 v20, v9

    .end local v9  # "NP":I
    .local v20, "NP":I
    iget v9, v14, Lcom/android/server/os/DynamicAffinityCtrl$Stats;->pid:I

    if-ne v9, v13, :cond_154

    .line 235
    add-int/lit8 v11, v11, 0x1

    .line 236
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v21, v11

    .end local v11  # "curStatsIndex":I
    .local v21, "curStatsIndex":I
    const-string v11, "Existing thread pid "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v3, v9}, Landroid/scene/SceneUtils;->logSceneDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    move v9, v12

    .end local v12  # "i":I
    .local v9, "i":I
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v11

    .line 240
    .local v11, "uptime":J
    move-object/from16 v22, v7

    .end local v7  # "pids":[I
    .local v22, "pids":[I
    iget-object v7, v0, Lcom/android/server/os/DynamicAffinityCtrl;->mProcessStatsData:[J

    .line 241
    .local v7, "procStats":[J
    move-object/from16 v23, v5

    .end local v5  # "threadsDir":Ljava/lang/String;
    .local v23, "threadsDir":Ljava/lang/String;
    invoke-static {v14}, Lcom/android/server/os/DynamicAffinityCtrl$Stats;->access$1100(Lcom/android/server/os/DynamicAffinityCtrl$Stats;)Ljava/lang/String;

    move-result-object v5

    move/from16 v24, v9

    .end local v9  # "i":I
    .local v24, "i":I
    sget-object v9, Lcom/android/server/os/DynamicAffinityCtrl;->PROCESS_STATS_FORMAT:[I

    move/from16 v25, v10

    const/4 v10, 0x0

    .end local v10  # "NS":I
    .local v25, "NS":I
    invoke-static {v5, v9, v10, v7, v10}, Landroid/os/Process;->readProcFile(Ljava/lang/String;[I[Ljava/lang/String;[J[F)Z

    move-result v5

    if-nez v5, :cond_b2

    .line 243
    goto/16 :goto_14e

    .line 246
    :cond_b2
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_b3
    array-length v9, v7

    if-ge v5, v9, :cond_d7

    .line 247
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v26, v11

    .end local v11  # "uptime":J
    .local v26, "uptime":J
    aget-wide v10, v7, v5

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v3, v9}, Landroid/scene/SceneUtils;->logSceneDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    add-int/lit8 v5, v5, 0x1

    move-wide/from16 v11, v26

    goto :goto_b3

    .end local v26  # "uptime":J
    .restart local v11  # "uptime":J
    :cond_d7
    move-wide/from16 v26, v11

    .line 249
    .end local v5  # "j":I
    .end local v11  # "uptime":J
    .restart local v26  # "uptime":J
    aget-wide v8, v7, v19

    iget-wide v10, v0, Lcom/android/server/os/DynamicAffinityCtrl;->mJiffyMillis:J

    mul-long/2addr v8, v10

    .line 250
    .local v8, "utime":J
    aget-wide v28, v7, v16

    mul-long v10, v10, v28

    .line 252
    .local v10, "stime":J
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Stats changed  pid="

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v12, v14, Lcom/android/server/os/DynamicAffinityCtrl$Stats;->pid:I

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v14}, Lcom/android/server/os/DynamicAffinityCtrl$Stats;->access$1200(Lcom/android/server/os/DynamicAffinityCtrl$Stats;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, "-"

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 253
    move-object v12, v7

    .end local v7  # "procStats":[J
    .local v12, "procStats":[J
    invoke-static {v14}, Lcom/android/server/os/DynamicAffinityCtrl$Stats;->access$1300(Lcom/android/server/os/DynamicAffinityCtrl$Stats;)J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 254
    invoke-static {v14}, Lcom/android/server/os/DynamicAffinityCtrl$Stats;->access$1400(Lcom/android/server/os/DynamicAffinityCtrl$Stats;)J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 252
    invoke-static {v3, v2}, Landroid/scene/SceneUtils;->logSceneDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    invoke-static {v14}, Lcom/android/server/os/DynamicAffinityCtrl$Stats;->access$1600(Lcom/android/server/os/DynamicAffinityCtrl$Stats;)J

    move-result-wide v4

    sub-long v4, v26, v4

    invoke-static {v14, v4, v5}, Lcom/android/server/os/DynamicAffinityCtrl$Stats;->access$1502(Lcom/android/server/os/DynamicAffinityCtrl$Stats;J)J

    .line 257
    move-wide/from16 v4, v26

    .end local v26  # "uptime":J
    .local v4, "uptime":J
    invoke-static {v14, v4, v5}, Lcom/android/server/os/DynamicAffinityCtrl$Stats;->access$1602(Lcom/android/server/os/DynamicAffinityCtrl$Stats;J)J

    .line 258
    invoke-static {v14}, Lcom/android/server/os/DynamicAffinityCtrl$Stats;->access$1300(Lcom/android/server/os/DynamicAffinityCtrl$Stats;)J

    move-result-wide v6

    sub-long v6, v8, v6

    long-to-int v2, v6

    invoke-static {v14, v2}, Lcom/android/server/os/DynamicAffinityCtrl$Stats;->access$002(Lcom/android/server/os/DynamicAffinityCtrl$Stats;I)I

    .line 259
    invoke-static {v14}, Lcom/android/server/os/DynamicAffinityCtrl$Stats;->access$1400(Lcom/android/server/os/DynamicAffinityCtrl$Stats;)J

    move-result-wide v6

    sub-long v6, v10, v6

    long-to-int v2, v6

    invoke-static {v14, v2}, Lcom/android/server/os/DynamicAffinityCtrl$Stats;->access$102(Lcom/android/server/os/DynamicAffinityCtrl$Stats;I)I

    .line 260
    invoke-static {v14, v8, v9}, Lcom/android/server/os/DynamicAffinityCtrl$Stats;->access$1302(Lcom/android/server/os/DynamicAffinityCtrl$Stats;J)J

    .line 261
    invoke-static {v14, v10, v11}, Lcom/android/server/os/DynamicAffinityCtrl$Stats;->access$1402(Lcom/android/server/os/DynamicAffinityCtrl$Stats;J)J

    .line 263
    nop

    .line 225
    .end local v4  # "uptime":J
    .end local v8  # "utime":J
    .end local v10  # "stime":J
    .end local v12  # "procStats":[J
    .end local v13  # "pid":I
    .end local v14  # "st":Lcom/android/server/os/DynamicAffinityCtrl$Stats;
    :goto_14e
    move/from16 v11, v21

    move/from16 v10, v25

    goto/16 :goto_2bd

    .line 233
    .end local v21  # "curStatsIndex":I
    .end local v22  # "pids":[I
    .end local v23  # "threadsDir":Ljava/lang/String;
    .end local v24  # "i":I
    .end local v25  # "NS":I
    .local v5, "threadsDir":Ljava/lang/String;
    .local v7, "pids":[I
    .local v10, "NS":I
    .local v11, "curStatsIndex":I
    .local v12, "i":I
    .restart local v13  # "pid":I
    .restart local v14  # "st":Lcom/android/server/os/DynamicAffinityCtrl$Stats;
    :cond_154
    move-object/from16 v23, v5

    move-object/from16 v22, v7

    move/from16 v25, v10

    move/from16 v24, v12

    .end local v5  # "threadsDir":Ljava/lang/String;
    .end local v7  # "pids":[I
    .end local v10  # "NS":I
    .end local v12  # "i":I
    .restart local v22  # "pids":[I
    .restart local v23  # "threadsDir":Ljava/lang/String;
    .restart local v24  # "i":I
    .restart local v25  # "NS":I
    goto :goto_167

    .end local v20  # "NP":I
    .end local v22  # "pids":[I
    .end local v23  # "threadsDir":Ljava/lang/String;
    .end local v24  # "i":I
    .end local v25  # "NS":I
    .restart local v5  # "threadsDir":Ljava/lang/String;
    .restart local v7  # "pids":[I
    .local v9, "NP":I
    .restart local v10  # "NS":I
    .restart local v12  # "i":I
    :cond_15d
    move-object/from16 v23, v5

    move-object/from16 v22, v7

    move/from16 v20, v9

    move/from16 v25, v10

    move/from16 v24, v12

    .line 266
    .end local v5  # "threadsDir":Ljava/lang/String;
    .end local v7  # "pids":[I
    .end local v9  # "NP":I
    .end local v10  # "NS":I
    .end local v12  # "i":I
    .restart local v20  # "NP":I
    .restart local v22  # "pids":[I
    .restart local v23  # "threadsDir":Ljava/lang/String;
    .restart local v24  # "i":I
    .restart local v25  # "NS":I
    :goto_167
    if-eqz v14, :cond_194

    iget v5, v14, Lcom/android/server/os/DynamicAffinityCtrl$Stats;->pid:I

    if-le v5, v13, :cond_16e

    goto :goto_194

    .line 303
    :cond_16e
    const/4 v2, 0x0

    invoke-static {v14, v2}, Lcom/android/server/os/DynamicAffinityCtrl$Stats;->access$002(Lcom/android/server/os/DynamicAffinityCtrl$Stats;I)I

    .line 304
    invoke-static {v14, v2}, Lcom/android/server/os/DynamicAffinityCtrl$Stats;->access$102(Lcom/android/server/os/DynamicAffinityCtrl$Stats;I)I

    .line 305
    invoke-virtual {v1, v11}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 306
    add-int/lit8 v10, v25, -0x1

    .line 307
    .end local v25  # "NS":I
    .restart local v10  # "NS":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Removed thread pid "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/scene/SceneUtils;->logSceneDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 310
    add-int/lit8 v12, v24, -0x1

    move/from16 v24, v12

    .end local v24  # "i":I
    .restart local v12  # "i":I
    goto/16 :goto_2bd

    .line 268
    .end local v10  # "NS":I
    .end local v12  # "i":I
    .restart local v24  # "i":I
    .restart local v25  # "NS":I
    :cond_194
    :goto_194
    new-instance v5, Lcom/android/server/os/DynamicAffinityCtrl$Stats;

    invoke-direct {v5, v13}, Lcom/android/server/os/DynamicAffinityCtrl$Stats;-><init>(I)V

    .line 269
    .end local v14  # "st":Lcom/android/server/os/DynamicAffinityCtrl$Stats;
    .local v5, "st":Lcom/android/server/os/DynamicAffinityCtrl$Stats;
    invoke-virtual {v1, v11, v5}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 270
    add-int/lit8 v11, v11, 0x1

    .line 271
    add-int/lit8 v10, v25, 0x1

    .line 272
    .end local v25  # "NS":I
    .restart local v10  # "NS":I
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "New thread pid "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Landroid/scene/SceneUtils;->logSceneDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 274
    iget-object v7, v0, Lcom/android/server/os/DynamicAffinityCtrl;->mProcessStatsData:[J

    .line 275
    .local v7, "procStats":[J
    iget-object v9, v0, Lcom/android/server/os/DynamicAffinityCtrl;->mProcessStatsStringData:[Ljava/lang/String;

    .line 276
    .local v9, "procStatsString":[Ljava/lang/String;
    new-instance v12, Ljava/io/File;

    new-instance v14, Ljava/io/File;

    move/from16 v21, v10

    move-object/from16 v10, v23

    .end local v23  # "threadsDir":Ljava/lang/String;
    .local v10, "threadsDir":Ljava/lang/String;
    .local v21, "NS":I
    invoke-direct {v14, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .end local v10  # "threadsDir":Ljava/lang/String;
    .restart local v23  # "threadsDir":Ljava/lang/String;
    invoke-static {v13}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v12, v14, v10}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v10, v12

    .line 277
    .local v10, "taskDir":Ljava/io/File;
    new-instance v12, Ljava/io/File;

    const-string/jumbo v14, "stat"

    invoke-direct {v12, v10, v14}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v12}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v5, v12}, Lcom/android/server/os/DynamicAffinityCtrl$Stats;->access$1102(Lcom/android/server/os/DynamicAffinityCtrl$Stats;Ljava/lang/String;)Ljava/lang/String;

    .line 278
    move-object v14, v10

    move v12, v11

    .end local v10  # "taskDir":Ljava/io/File;
    .end local v11  # "curStatsIndex":I
    .local v12, "curStatsIndex":I
    .local v14, "taskDir":Ljava/io/File;
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v10

    invoke-static {v5, v10, v11}, Lcom/android/server/os/DynamicAffinityCtrl$Stats;->access$1602(Lcom/android/server/os/DynamicAffinityCtrl$Stats;J)J

    .line 279
    invoke-static {v5}, Lcom/android/server/os/DynamicAffinityCtrl$Stats;->access$1100(Lcom/android/server/os/DynamicAffinityCtrl$Stats;)Ljava/lang/String;

    move-result-object v10

    .line 280
    .local v10, "path":Ljava/lang/String;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v25, v12

    .end local v12  # "curStatsIndex":I
    .local v25, "curStatsIndex":I
    const-string v12, "Reading proc file: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v3, v11}, Landroid/scene/SceneUtils;->logSceneDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 281
    sget-object v11, Lcom/android/server/os/DynamicAffinityCtrl;->PROCESS_STATS_FORMAT:[I

    const/4 v12, 0x0

    invoke-static {v10, v11, v9, v7, v12}, Landroid/os/Process;->readProcFile(Ljava/lang/String;[I[Ljava/lang/String;[J[F)Z

    move-result v11

    move/from16 v17, v13

    .end local v13  # "pid":I
    .local v17, "pid":I
    if-eqz v11, :cond_25c

    .line 283
    const/4 v11, 0x0

    .local v11, "j":I
    :goto_209
    array-length v12, v7

    if-ge v11, v12, :cond_22d

    .line 284
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v29, v14

    .end local v14  # "taskDir":Ljava/io/File;
    .local v29, "taskDir":Ljava/io/File;
    aget-wide v13, v7, v11

    invoke-virtual {v12, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v3, v12}, Landroid/scene/SceneUtils;->logSceneDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 283
    add-int/lit8 v11, v11, 0x1

    move-object/from16 v14, v29

    goto :goto_209

    .end local v29  # "taskDir":Ljava/io/File;
    .restart local v14  # "taskDir":Ljava/io/File;
    :cond_22d
    move-object/from16 v29, v14

    .line 286
    .end local v11  # "j":I
    .end local v14  # "taskDir":Ljava/io/File;
    .restart local v29  # "taskDir":Ljava/io/File;
    aget-wide v11, v7, v19

    iget-wide v13, v0, Lcom/android/server/os/DynamicAffinityCtrl;->mJiffyMillis:J

    mul-long/2addr v11, v13

    invoke-static {v5, v11, v12}, Lcom/android/server/os/DynamicAffinityCtrl$Stats;->access$1302(Lcom/android/server/os/DynamicAffinityCtrl$Stats;J)J

    .line 287
    aget-wide v11, v7, v16

    iget-wide v13, v0, Lcom/android/server/os/DynamicAffinityCtrl;->mJiffyMillis:J

    mul-long/2addr v11, v13

    invoke-static {v5, v11, v12}, Lcom/android/server/os/DynamicAffinityCtrl$Stats;->access$1402(Lcom/android/server/os/DynamicAffinityCtrl$Stats;J)J

    .line 288
    const/4 v8, 0x0

    aget-object v11, v9, v8

    invoke-static {v5, v11}, Lcom/android/server/os/DynamicAffinityCtrl$Stats;->access$1202(Lcom/android/server/os/DynamicAffinityCtrl$Stats;Ljava/lang/String;)Ljava/lang/String;

    .line 289
    invoke-static {v5}, Lcom/android/server/os/DynamicAffinityCtrl$Stats;->access$1300(Lcom/android/server/os/DynamicAffinityCtrl$Stats;)J

    move-result-wide v11

    const-wide/16 v13, 0x0

    sub-long/2addr v11, v13

    long-to-int v8, v11

    invoke-static {v5, v8}, Lcom/android/server/os/DynamicAffinityCtrl$Stats;->access$002(Lcom/android/server/os/DynamicAffinityCtrl$Stats;I)I

    .line 290
    invoke-static {v5}, Lcom/android/server/os/DynamicAffinityCtrl$Stats;->access$1400(Lcom/android/server/os/DynamicAffinityCtrl$Stats;)J

    move-result-wide v11

    sub-long/2addr v11, v13

    long-to-int v8, v11

    invoke-static {v5, v8}, Lcom/android/server/os/DynamicAffinityCtrl$Stats;->access$102(Lcom/android/server/os/DynamicAffinityCtrl$Stats;I)I

    move/from16 v11, v17

    goto :goto_285

    .line 292
    .end local v29  # "taskDir":Ljava/io/File;
    .restart local v14  # "taskDir":Ljava/io/File;
    :cond_25c
    move-object/from16 v29, v14

    .end local v14  # "taskDir":Ljava/io/File;
    .restart local v29  # "taskDir":Ljava/io/File;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Skipping unknown thread pid "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v11, v17

    .end local v17  # "pid":I
    .local v11, "pid":I
    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v8}, Landroid/scene/SceneUtils;->logSceneDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 293
    const-wide/16 v12, 0x0

    invoke-static {v5, v12, v13}, Lcom/android/server/os/DynamicAffinityCtrl$Stats;->access$1402(Lcom/android/server/os/DynamicAffinityCtrl$Stats;J)J

    move-result-wide v12

    invoke-static {v5, v12, v13}, Lcom/android/server/os/DynamicAffinityCtrl$Stats;->access$1302(Lcom/android/server/os/DynamicAffinityCtrl$Stats;J)J

    .line 294
    const/4 v8, 0x0

    invoke-static {v5, v8}, Lcom/android/server/os/DynamicAffinityCtrl$Stats;->access$102(Lcom/android/server/os/DynamicAffinityCtrl$Stats;I)I

    move-result v12

    invoke-static {v5, v12}, Lcom/android/server/os/DynamicAffinityCtrl$Stats;->access$002(Lcom/android/server/os/DynamicAffinityCtrl$Stats;I)I

    .line 297
    :goto_285
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Stats added pid="

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v12, v5, Lcom/android/server/os/DynamicAffinityCtrl$Stats;->pid:I

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v5}, Lcom/android/server/os/DynamicAffinityCtrl$Stats;->access$1200(Lcom/android/server/os/DynamicAffinityCtrl$Stats;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 298
    invoke-static {v5}, Lcom/android/server/os/DynamicAffinityCtrl$Stats;->access$1300(Lcom/android/server/os/DynamicAffinityCtrl$Stats;)J

    move-result-wide v12

    invoke-virtual {v8, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v5}, Lcom/android/server/os/DynamicAffinityCtrl$Stats;->access$1400(Lcom/android/server/os/DynamicAffinityCtrl$Stats;)J

    move-result-wide v12

    invoke-virtual {v8, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 297
    invoke-static {v3, v2}, Landroid/scene/SceneUtils;->logSceneDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 299
    move/from16 v10, v21

    move/from16 v11, v25

    .line 225
    .end local v5  # "st":Lcom/android/server/os/DynamicAffinityCtrl$Stats;
    .end local v7  # "procStats":[J
    .end local v9  # "procStatsString":[Ljava/lang/String;
    .end local v21  # "NS":I
    .end local v25  # "curStatsIndex":I
    .end local v29  # "taskDir":Ljava/io/File;
    .local v10, "NS":I
    .local v11, "curStatsIndex":I
    :goto_2bd
    add-int/lit8 v12, v24, 0x1

    move-object/from16 v6, p2

    move-object/from16 v4, v18

    move/from16 v9, v20

    move-object/from16 v7, v22

    move-object/from16 v5, v23

    const/4 v2, 0x0

    .end local v24  # "i":I
    .local v12, "i":I
    goto/16 :goto_4a

    .end local v18  # "procDir":Ljava/io/File;
    .end local v20  # "NP":I
    .end local v22  # "pids":[I
    .end local v23  # "threadsDir":Ljava/lang/String;
    .local v4, "procDir":Ljava/io/File;
    .local v5, "threadsDir":Ljava/lang/String;
    .local v7, "pids":[I
    .local v9, "NP":I
    :cond_2cc
    move-object/from16 v18, v4

    move-object/from16 v23, v5

    move-object/from16 v22, v7

    move/from16 v20, v9

    move/from16 v25, v10

    move/from16 v24, v12

    .line 313
    .end local v4  # "procDir":Ljava/io/File;
    .end local v5  # "threadsDir":Ljava/lang/String;
    .end local v7  # "pids":[I
    .end local v12  # "i":I
    .restart local v18  # "procDir":Ljava/io/File;
    .restart local v22  # "pids":[I
    .restart local v23  # "threadsDir":Ljava/lang/String;
    :goto_2d8
    if-ge v11, v10, :cond_303

    .line 315
    invoke-virtual {v1, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/os/DynamicAffinityCtrl$Stats;

    .line 316
    .local v2, "st":Lcom/android/server/os/DynamicAffinityCtrl$Stats;
    const/4 v4, 0x0

    invoke-static {v2, v4}, Lcom/android/server/os/DynamicAffinityCtrl$Stats;->access$002(Lcom/android/server/os/DynamicAffinityCtrl$Stats;I)I

    .line 317
    invoke-static {v2, v4}, Lcom/android/server/os/DynamicAffinityCtrl$Stats;->access$102(Lcom/android/server/os/DynamicAffinityCtrl$Stats;I)I

    .line 318
    invoke-virtual {v1, v11}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 319
    add-int/lit8 v10, v10, -0x1

    .line 320
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Removed pid "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v2, Lcom/android/server/os/DynamicAffinityCtrl$Stats;->pid:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/scene/SceneUtils;->logSceneDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 321
    .end local v2  # "st":Lcom/android/server/os/DynamicAffinityCtrl$Stats;
    goto :goto_2d8

    .line 323
    :cond_303
    return-object v22
.end method

.method private getHeavyThreads(I)[I
    .registers 10
    .param p1, "n"  # I

    .line 327
    new-array v0, p1, [I

    .line 328
    .local v0, "result":[I
    iget-object v1, p0, Lcom/android/server/os/DynamicAffinityCtrl;->mThreadStats:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    if-gtz v1, :cond_c

    .line 329
    return-object v2

    .line 331
    :cond_c
    iget-object v1, p0, Lcom/android/server/os/DynamicAffinityCtrl;->mThreadStats:Ljava/util/ArrayList;

    sget-object v3, Lcom/android/server/os/DynamicAffinityCtrl;->sLoadComparator:Ljava/util/Comparator;

    invoke-static {v1, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 332
    iget-object v1, p0, Lcom/android/server/os/DynamicAffinityCtrl;->mThreadStats:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_19
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const-string v4, "DynamicAffinityCtrl"

    if-eqz v3, :cond_70

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/os/DynamicAffinityCtrl$Stats;

    .line 333
    .local v3, "stats":Lcom/android/server/os/DynamicAffinityCtrl$Stats;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v3}, Lcom/android/server/os/DynamicAffinityCtrl$Stats;->access$1200(Lcom/android/server/os/DynamicAffinityCtrl$Stats;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v3, Lcom/android/server/os/DynamicAffinityCtrl$Stats;->pid:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ") load : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 334
    invoke-static {v3}, Lcom/android/server/os/DynamicAffinityCtrl$Stats;->access$000(Lcom/android/server/os/DynamicAffinityCtrl$Stats;)I

    move-result v6

    invoke-static {v3}, Lcom/android/server/os/DynamicAffinityCtrl$Stats;->access$100(Lcom/android/server/os/DynamicAffinityCtrl$Stats;)I

    move-result v7

    add-int/2addr v6, v7

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 333
    invoke-static {v4, v5}, Landroid/scene/SceneUtils;->logSceneDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 335
    invoke-static {v3}, Lcom/android/server/os/DynamicAffinityCtrl$Stats;->access$1200(Lcom/android/server/os/DynamicAffinityCtrl$Stats;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "RenderThread 1"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6f

    .line 336
    add-int/lit8 v1, p1, -0x1

    iget v5, v3, Lcom/android/server/os/DynamicAffinityCtrl$Stats;->pid:I

    aput v5, v0, v1

    .line 337
    iget-object v1, p0, Lcom/android/server/os/DynamicAffinityCtrl;->mThreadStats:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 338
    add-int/lit8 p1, p1, -0x1

    .line 339
    goto :goto_70

    .line 341
    .end local v3  # "stats":Lcom/android/server/os/DynamicAffinityCtrl$Stats;
    :cond_6f
    goto :goto_19

    .line 344
    :cond_70
    :goto_70
    iget-object v1, p0, Lcom/android/server/os/DynamicAffinityCtrl;->mThreadStats:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v3, -0x1

    if-le p1, v1, :cond_ad

    .line 345
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Get heavy thread wrong, mNum="

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " mThreadStats.size="

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/os/DynamicAffinityCtrl;->mThreadStats:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " mPid="

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/android/server/os/DynamicAffinityCtrl;->mPid:I

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/scene/SceneUtils;->logSceneWarn(Ljava/lang/String;Ljava/lang/String;)V

    .line 346
    iget-object v1, p0, Lcom/android/server/os/DynamicAffinityCtrl;->mThreadStats:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 347
    iput v3, p0, Lcom/android/server/os/DynamicAffinityCtrl;->mPid:I

    .line 348
    return-object v2

    .line 351
    :cond_ad
    :goto_ad
    add-int/2addr p1, v3

    if-ltz p1, :cond_e5

    .line 352
    iget-object v1, p0, Lcom/android/server/os/DynamicAffinityCtrl;->mThreadStats:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/os/DynamicAffinityCtrl$Stats;

    iget v1, v1, Lcom/android/server/os/DynamicAffinityCtrl$Stats;->pid:I

    aput v1, v0, p1

    .line 353
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Heavy thread  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/os/DynamicAffinityCtrl;->mThreadStats:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/os/DynamicAffinityCtrl$Stats;

    invoke-static {v2}, Lcom/android/server/os/DynamicAffinityCtrl$Stats;->access$1200(Lcom/android/server/os/DynamicAffinityCtrl$Stats;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/scene/SceneUtils;->logSceneDebug(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_ad

    .line 355
    :cond_e5
    iget-object v1, p0, Lcom/android/server/os/DynamicAffinityCtrl;->mThreadStats:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 356
    iput v3, p0, Lcom/android/server/os/DynamicAffinityCtrl;->mPid:I

    .line 357
    return-object v0
.end method

.method private init()V
    .registers 3

    .line 78
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "dynamic_affinity_ctrl"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/os/DynamicAffinityCtrl;->mHandlerThread:Landroid/os/HandlerThread;

    .line 79
    iget-object v0, p0, Lcom/android/server/os/DynamicAffinityCtrl;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 80
    new-instance v0, Lcom/android/server/os/DynamicAffinityCtrl$2;

    iget-object v1, p0, Lcom/android/server/os/DynamicAffinityCtrl;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/os/DynamicAffinityCtrl$2;-><init>(Lcom/android/server/os/DynamicAffinityCtrl;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/os/DynamicAffinityCtrl;->mHandler:Landroid/os/Handler;

    .line 103
    return-void
.end method

.method private setAppToChangeAffinity(Ljava/lang/String;)V
    .registers 6
    .param p1, "procName"  # Ljava/lang/String;

    .line 207
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DynamicAffinityCtrl setAppToChangeAffinity "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DynamicAffinityCtrl"

    invoke-static {v1, v0}, Landroid/scene/SceneUtils;->logSceneDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    .line 209
    .local v0, "proc":[Ljava/lang/String;
    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 210
    invoke-static {v0}, Landroid/os/Process;->getPidsForCommands([Ljava/lang/String;)[I

    move-result-object v2

    .line 211
    .local v2, "pids":[I
    if-eqz v2, :cond_29

    array-length v3, v2

    if-lez v3, :cond_29

    .line 212
    aget v1, v2, v1

    iput v1, p0, Lcom/android/server/os/DynamicAffinityCtrl;->mPid:I

    .line 214
    :cond_29
    return-void
.end method

.method private setDynamicAffinity(Ljava/lang/String;)V
    .registers 7
    .param p1, "name"  # Ljava/lang/String;

    .line 136
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 137
    .local v0, "msg":Landroid/os/Message;
    const/16 v1, 0x110

    iput v1, v0, Landroid/os/Message;->what:I

    .line 138
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 139
    .local v1, "bundle":Landroid/os/Bundle;
    const-string/jumbo v2, "name"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 141
    iget-object v2, p0, Lcom/android/server/os/DynamicAffinityCtrl;->mHandler:Landroid/os/Handler;

    const-wide/16 v3, 0x7530

    invoke-virtual {v2, v0, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 143
    return-void
.end method

.method private setSchedAffinity([I)V
    .registers 5
    .param p1, "pids"  # [I

    .line 361
    if-eqz p1, :cond_e

    .line 362
    array-length v0, p1

    const/4 v1, 0x0

    :goto_4
    if-ge v1, v0, :cond_e

    aget v2, p1, v1

    .line 363
    .local v2, "pid":I
    invoke-static {v2}, Lcom/meizu/affinityctrl/AffinityCtrlJNI;->bindBigCore(I)V

    .line 362
    .end local v2  # "pid":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 366
    :cond_e
    return-void
.end method


# virtual methods
.method public disableStrategy()Z
    .registers 4

    .line 382
    iget-object v0, p0, Lcom/android/server/os/DynamicAffinityCtrl;->mRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_a

    .line 383
    return v1

    .line 385
    :cond_a
    invoke-static {}, Landroid/scene/SceneClient;->getInstance()Landroid/scene/SceneClient;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/os/DynamicAffinityCtrl;->mSceneReceiver:Landroid/scene/SceneReceiver;

    invoke-virtual {v0, v2}, Landroid/scene/SceneClient;->unregisterSceneReceiver(Landroid/scene/SceneReceiver;)V

    .line 386
    iget-object v0, p0, Lcom/android/server/os/DynamicAffinityCtrl;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    if-eqz v0, :cond_1b

    .line 387
    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 390
    :cond_1b
    iget-object v0, p0, Lcom/android/server/os/DynamicAffinityCtrl;->mHandlerThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_24

    .line 391
    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z

    .line 392
    iput-object v2, p0, Lcom/android/server/os/DynamicAffinityCtrl;->mHandlerThread:Landroid/os/HandlerThread;

    .line 394
    :cond_24
    iget-object v0, p0, Lcom/android/server/os/DynamicAffinityCtrl;->mThreadStats:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 395
    iget-object v0, p0, Lcom/android/server/os/DynamicAffinityCtrl;->mRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 396
    const/4 v0, 0x1

    return v0
.end method

.method public enableStrategy()Z
    .registers 3

    .line 370
    iget-object v0, p0, Lcom/android/server/os/DynamicAffinityCtrl;->mRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 371
    const/4 v0, 0x0

    return v0

    .line 373
    :cond_a
    invoke-direct {p0}, Lcom/android/server/os/DynamicAffinityCtrl;->init()V

    .line 374
    invoke-static {}, Landroid/scene/SceneClient;->getInstance()Landroid/scene/SceneClient;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/os/DynamicAffinityCtrl;->mSceneReceiver:Landroid/scene/SceneReceiver;

    invoke-virtual {v0, v1}, Landroid/scene/SceneClient;->registerSceneReceiver(Landroid/scene/SceneReceiver;)V

    .line 375
    iget-object v0, p0, Lcom/android/server/os/DynamicAffinityCtrl;->mRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 376
    return v1
.end method
