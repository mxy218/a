.class public Lcom/android/server/os/SceneBoostStrategy;
.super Lcom/android/server/os/Strategy;
.source "SceneBoostStrategy.java"


# static fields
.field private static final BIG_GAME:J = 0x1f400000L

.field private static final BUS:I = 0x2

.field private static final CPU:I = 0x0

.field private static final DEFAULT_WHITE_LIST_FILE_PATH:Ljava/lang/String; = "/system/etc/perf_intelligent_app_config.conf"

.field private static final GPU:I = 0x1

.field private static final INTERACTIVE_NODES_NAME:[Ljava/lang/String;

.field private static final INTERACTIVE_ORIG_VALUE:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final IO:I = 0x3

.field private static final MEM:I = 0x4

.field private static final MSG_INIT_BOOST_ENV:I = 0x110

.field private static final MSG_NETEASE_SCENE_BOOST:I = 0x112

.field private static final MSG_SYS_SCENE_BOOST:I = 0x111

.field private static final MSG_TENCENT_SCENE_BOOST:I = 0x113

.field private static final MSG_WEIXIN_SCENE_BOOST:I = 0x114

.field private static final RES_MAX:I = 0x5

.field private static RES_MAX_LEVEL:[I = null

.field private static final RES_NAME:[Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "SceneBoostStrategy"

.field private static final WHITE_LIST_FILE_PATH:Ljava/lang/String; = "/data/system/perf_intelligent_app_config.conf"

.field private static lastGameConfig:[Ljava/lang/String;

.field private static final mBlurBoostCounter:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static mCurrentGame:Ljava/lang/String;

.field private static mIsPerfLockAcquired:Z

.field private static mPerfBoost:Landroid/perf/IntelligentBoostFramework;

.field private static mPrePowerMode:I

.field private static mPrePowerModeExt:I

.field private static mState:I

.field private static mTimeout:J

.field private static registered:Z


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private mHandlerThread:Landroid/os/HandlerThread;

.field private mSceneReceiver:Landroid/scene/SceneReceiver;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .line 58
    const-string/jumbo v0, "sys.scene_boost_timeout"

    const-wide/16 v1, 0x5dc

    invoke-static {v0, v1, v2}, Landroid/os/SystemProperties;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    sput-wide v0, Lcom/android/server/os/SceneBoostStrategy;->mTimeout:J

    .line 67
    const-string v0, "cpu_level"

    const-string v1, "gpu_level"

    const-string v2, "bus_level"

    const-string/jumbo v3, "io_level"

    const-string/jumbo v4, "mem_level"

    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/os/SceneBoostStrategy;->RES_NAME:[Ljava/lang/String;

    .line 68
    const/4 v0, 0x5

    new-array v0, v0, [I

    fill-array-data v0, :array_64

    sput-object v0, Lcom/android/server/os/SceneBoostStrategy;->RES_MAX_LEVEL:[I

    .line 69
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/os/SceneBoostStrategy;->lastGameConfig:[Ljava/lang/String;

    .line 70
    sput-object v0, Lcom/android/server/os/SceneBoostStrategy;->mCurrentGame:Ljava/lang/String;

    .line 71
    const/4 v1, 0x1

    sput-boolean v1, Lcom/android/server/os/SceneBoostStrategy;->registered:Z

    .line 72
    sput v1, Lcom/android/server/os/SceneBoostStrategy;->mPrePowerMode:I

    .line 74
    const/4 v1, -0x1

    sput v1, Lcom/android/server/os/SceneBoostStrategy;->mPrePowerModeExt:I

    .line 76
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v1, Lcom/android/server/os/SceneBoostStrategy;->mBlurBoostCounter:Ljava/util/concurrent/ConcurrentHashMap;

    .line 79
    sput-object v0, Lcom/android/server/os/SceneBoostStrategy;->mPerfBoost:Landroid/perf/IntelligentBoostFramework;

    .line 80
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/os/SceneBoostStrategy;->mIsPerfLockAcquired:Z

    .line 82
    const-string/jumbo v1, "target_loads"

    const-string v2, "go_hispeed_load"

    const-string v3, "above_hispeed_delay"

    const-string v4, "hispeed_freq"

    const-string/jumbo v5, "min_sample_time"

    const-string/jumbo v6, "timer_rate"

    const-string/jumbo v7, "timer_slack"

    filled-new-array/range {v1 .. v7}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/os/SceneBoostStrategy;->INTERACTIVE_NODES_NAME:[Ljava/lang/String;

    .line 84
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/server/os/SceneBoostStrategy;->INTERACTIVE_ORIG_VALUE:Ljava/util/HashMap;

    .line 87
    const-string/jumbo v0, "sceneboost_jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 88
    return-void

    :array_64
    .array-data 4
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
    .end array-data
.end method

.method public constructor <init>()V
    .registers 11

    .line 133
    invoke-direct {p0}, Lcom/android/server/os/Strategy;-><init>()V

    .line 134
    const-string v0, "SceneBoostStrategy"

    const-string/jumbo v1, "init SceneBoostStrategy！"

    invoke-static {v0, v1}, Landroid/scene/SceneUtils;->logSceneDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    const-string v1, "SceneBoostConfig"

    const-string v2, "/data/system/perf_intelligent_app_config.conf"

    const-string v3, "/system/etc/perf_intelligent_app_config.conf"

    const/4 v4, -0x1

    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/android/server/os/SceneBoostStrategy;->loadConfig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v1

    if-nez v1, :cond_1f

    .line 137
    const-string/jumbo v1, "load config file failed!"

    invoke-static {v0, v1}, Landroid/scene/SceneUtils;->logSceneError(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    return-void

    .line 141
    :cond_1f
    invoke-static {}, Lcom/android/server/sence/SceneService;->internelGetResourceInfo()Landroid/scene/ResourceInfo;

    move-result-object v1

    .line 142
    .local v1, "resourceInfo":Landroid/scene/ResourceInfo;
    sget-object v2, Lcom/android/server/os/SceneBoostStrategy;->RES_MAX_LEVEL:[I

    iget v3, v1, Landroid/scene/ResourceInfo;->CPU_LEVEL_MAX:I

    const/4 v4, 0x0

    aput v3, v2, v4

    .line 143
    sget-object v2, Lcom/android/server/os/SceneBoostStrategy;->RES_MAX_LEVEL:[I

    iget v3, v1, Landroid/scene/ResourceInfo;->GPU_LEVEL_MAX:I

    const/4 v5, 0x1

    aput v3, v2, v5

    .line 144
    sget-object v2, Lcom/android/server/os/SceneBoostStrategy;->RES_MAX_LEVEL:[I

    const/4 v3, 0x2

    iget v6, v1, Landroid/scene/ResourceInfo;->BUS_LEVEL_MAX:I

    aput v6, v2, v3

    .line 145
    sget-object v2, Lcom/android/server/os/SceneBoostStrategy;->RES_MAX_LEVEL:[I

    const/4 v3, 0x3

    iget v6, v1, Landroid/scene/ResourceInfo;->IO_LEVEL_MAX:I

    aput v6, v2, v3

    .line 146
    sget-object v2, Lcom/android/server/os/SceneBoostStrategy;->RES_MAX_LEVEL:[I

    const/4 v3, 0x4

    iget v6, v1, Landroid/scene/ResourceInfo;->MEM_LEVEL_MAX:I

    aput v6, v2, v3

    .line 149
    iget-object v2, p0, Lcom/android/server/os/SceneBoostStrategy;->mStrategyConfig:Lcom/android/server/os/StrategyConfig;

    invoke-virtual {v2}, Lcom/android/server/os/StrategyConfig;->getConfig()Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_54
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_90

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 150
    .local v3, "item":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 151
    .local v6, "key":Ljava/lang/String;
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    .line 152
    .local v7, "value":Ljava/lang/Object;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "key:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v0, v8}, Landroid/scene/SceneUtils;->logSceneDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    iget-object v8, p0, Lcom/android/server/os/SceneBoostStrategy;->mStrategyConfig:Lcom/android/server/os/StrategyConfig;

    invoke-virtual {v8}, Lcom/android/server/os/StrategyConfig;->getConfig()Ljava/util/HashMap;

    move-result-object v8

    move-object v9, v7

    check-cast v9, [Ljava/lang/String;

    invoke-direct {p0, v9}, Lcom/android/server/os/SceneBoostStrategy;->convertArrayFormat([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v6, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    .end local v3  # "item":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v6  # "key":Ljava/lang/String;
    .end local v7  # "value":Ljava/lang/Object;
    goto :goto_54

    .line 156
    :cond_90
    invoke-direct {p0}, Lcom/android/server/os/SceneBoostStrategy;->init()V

    .line 157
    new-instance v0, Lcom/android/server/os/SceneBoostStrategy$2;

    invoke-direct {v0, p0}, Lcom/android/server/os/SceneBoostStrategy$2;-><init>(Lcom/android/server/os/SceneBoostStrategy;)V

    iput-object v0, p0, Lcom/android/server/os/SceneBoostStrategy;->mSceneReceiver:Landroid/scene/SceneReceiver;

    .line 165
    iget-object v0, p0, Lcom/android/server/os/SceneBoostStrategy;->mSceneReceiver:Landroid/scene/SceneReceiver;

    invoke-virtual {v0, v4}, Landroid/scene/SceneReceiver;->addSceneClass(I)V

    .line 166
    iget-object v0, p0, Lcom/android/server/os/SceneBoostStrategy;->mSceneReceiver:Landroid/scene/SceneReceiver;

    invoke-virtual {v0, v5}, Landroid/scene/SceneReceiver;->addSceneClass(I)V

    .line 167
    iget-object v0, p0, Lcom/android/server/os/SceneBoostStrategy;->mSceneReceiver:Landroid/scene/SceneReceiver;

    const/16 v2, 0x10

    invoke-virtual {v0, v2}, Landroid/scene/SceneReceiver;->addSceneClass(I)V

    .line 168
    iget-object v0, p0, Lcom/android/server/os/SceneBoostStrategy;->mSceneReceiver:Landroid/scene/SceneReceiver;

    const/16 v2, 0x11

    invoke-virtual {v0, v2}, Landroid/scene/SceneReceiver;->addSceneClass(I)V

    .line 169
    iget-object v0, p0, Lcom/android/server/os/SceneBoostStrategy;->mSceneReceiver:Landroid/scene/SceneReceiver;

    const/16 v2, 0x12

    invoke-virtual {v0, v2}, Landroid/scene/SceneReceiver;->addSceneClass(I)V

    .line 170
    invoke-static {}, Landroid/scene/SceneClient;->getInstance()Landroid/scene/SceneClient;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/os/SceneBoostStrategy;->mSceneReceiver:Landroid/scene/SceneReceiver;

    invoke-virtual {v0, v2}, Landroid/scene/SceneClient;->registerSceneReceiver(Landroid/scene/SceneReceiver;)V

    .line 171
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/os/SceneBoostStrategy;)V
    .registers 1
    .param p0, "x0"  # Lcom/android/server/os/SceneBoostStrategy;

    .line 40
    invoke-direct {p0}, Lcom/android/server/os/SceneBoostStrategy;->initBoostEnv()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/os/SceneBoostStrategy;Landroid/scene/Scene;)V
    .registers 2
    .param p0, "x0"  # Lcom/android/server/os/SceneBoostStrategy;
    .param p1, "x1"  # Landroid/scene/Scene;

    .line 40
    invoke-direct {p0, p1}, Lcom/android/server/os/SceneBoostStrategy;->doBoost(Landroid/scene/Scene;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/os/SceneBoostStrategy;Landroid/scene/Scene;)V
    .registers 2
    .param p0, "x0"  # Lcom/android/server/os/SceneBoostStrategy;
    .param p1, "x1"  # Landroid/scene/Scene;

    .line 40
    invoke-direct {p0, p1}, Lcom/android/server/os/SceneBoostStrategy;->doNeteaseBoost(Landroid/scene/Scene;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/os/SceneBoostStrategy;Landroid/scene/Scene;)V
    .registers 2
    .param p0, "x0"  # Lcom/android/server/os/SceneBoostStrategy;
    .param p1, "x1"  # Landroid/scene/Scene;

    .line 40
    invoke-direct {p0, p1}, Lcom/android/server/os/SceneBoostStrategy;->doTencentBoost(Landroid/scene/Scene;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/os/SceneBoostStrategy;Landroid/scene/Scene;)V
    .registers 2
    .param p0, "x0"  # Lcom/android/server/os/SceneBoostStrategy;
    .param p1, "x1"  # Landroid/scene/Scene;

    .line 40
    invoke-direct {p0, p1}, Lcom/android/server/os/SceneBoostStrategy;->doWeixinBoost(Landroid/scene/Scene;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/os/SceneBoostStrategy;Landroid/scene/Scene;)V
    .registers 2
    .param p0, "x0"  # Lcom/android/server/os/SceneBoostStrategy;
    .param p1, "x1"  # Landroid/scene/Scene;

    .line 40
    invoke-direct {p0, p1}, Lcom/android/server/os/SceneBoostStrategy;->sendBoostMessage(Landroid/scene/Scene;)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/os/SceneBoostStrategy;Landroid/scene/Scene;Z)V
    .registers 3
    .param p0, "x0"  # Lcom/android/server/os/SceneBoostStrategy;
    .param p1, "x1"  # Landroid/scene/Scene;
    .param p2, "x2"  # Z

    .line 40
    invoke-direct {p0, p1, p2}, Lcom/android/server/os/SceneBoostStrategy;->doFullGameBoost(Landroid/scene/Scene;Z)V

    return-void
.end method

.method static synthetic access$700()Ljava/lang/String;
    .registers 1

    .line 40
    sget-object v0, Lcom/android/server/os/SceneBoostStrategy;->mCurrentGame:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/server/os/SceneBoostStrategy;Landroid/scene/Scene;)V
    .registers 2
    .param p0, "x0"  # Lcom/android/server/os/SceneBoostStrategy;
    .param p1, "x1"  # Landroid/scene/Scene;

    .line 40
    invoke-direct {p0, p1}, Lcom/android/server/os/SceneBoostStrategy;->doNormalGameBoost(Landroid/scene/Scene;)V

    return-void
.end method

.method private cancelGameNormalBoost(Landroid/scene/Scene;)V
    .registers 7
    .param p1, "scene"  # Landroid/scene/Scene;

    .line 606
    invoke-virtual {p1}, Landroid/scene/Scene;->getSceneType()Ljava/lang/String;

    move-result-object v0

    .line 607
    .local v0, "packageName":Ljava/lang/String;
    const/4 v1, 0x0

    .line 608
    .local v1, "config":[Ljava/lang/String;
    if-eqz v0, :cond_25

    .line 609
    iget-object v2, p0, Lcom/android/server/os/SceneBoostStrategy;->mStrategyConfig:Lcom/android/server/os/StrategyConfig;

    invoke-virtual {v2}, Lcom/android/server/os/StrategyConfig;->getConfig()Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v1, v2

    check-cast v1, [Ljava/lang/String;

    .line 610
    if-nez v1, :cond_25

    .line 611
    iget-object v2, p0, Lcom/android/server/os/SceneBoostStrategy;->mStrategyConfig:Lcom/android/server/os/StrategyConfig;

    invoke-virtual {v2}, Lcom/android/server/os/StrategyConfig;->getConfig()Ljava/util/HashMap;

    move-result-object v2

    const-string v3, "GameNormal"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v1, v2

    check-cast v1, [Ljava/lang/String;

    .line 614
    :cond_25
    const v2, 0x1000017

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/android/server/os/SceneBoostStrategy;->executeBoost([Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 615
    return-void
.end method

.method private checkTimeout(Ljava/lang/String;)Z
    .registers 5
    .param p1, "config"  # Ljava/lang/String;

    .line 225
    const-string v0, " "

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 226
    .local v0, "c":[Ljava/lang/String;
    array-length v1, v0

    const/4 v2, 0x3

    if-ne v1, v2, :cond_16

    .line 227
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aget-object v1, v0, v1

    const-string v2, "-1"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1

    .line 229
    :cond_16
    const/4 v1, 0x0

    return v1
.end method

.method private convertArrayFormat([Ljava/lang/String;)[Ljava/lang/String;
    .registers 8
    .param p1, "configArrays"  # [Ljava/lang/String;

    .line 214
    array-length v0, p1

    div-int/lit8 v0, v0, 0x3

    .line 215
    .local v0, "len":I
    new-array v1, v0, [Ljava/lang/String;

    .line 216
    .local v1, "config":[Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_6
    if-ge v2, v0, :cond_37

    .line 217
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    mul-int/lit8 v4, v2, 0x3

    aget-object v4, p1, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    mul-int/lit8 v5, v2, 0x3

    add-int/lit8 v5, v5, 0x1

    aget-object v5, p1, v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    mul-int/lit8 v4, v2, 0x3

    add-int/lit8 v4, v4, 0x2

    aget-object v4, p1, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 216
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 221
    .end local v2  # "i":I
    :cond_37
    return-object v1
.end method

.method private convertTimeout(Ljava/lang/String;ZLjava/lang/String;)Ljava/lang/String;
    .registers 9
    .param p1, "config"  # Ljava/lang/String;
    .param p2, "replace"  # Z
    .param p3, "replaceTime"  # Ljava/lang/String;

    .line 234
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 235
    .local v0, "b":Ljava/lang/StringBuilder;
    if-eqz p1, :cond_2d

    .line 236
    const-string v1, " "

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 237
    .local v2, "c":[Ljava/lang/String;
    if-eqz p2, :cond_14

    .line 238
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    aput-object p3, v2, v3

    .line 240
    :cond_14
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_15
    array-length v4, v2

    if-ge v3, v4, :cond_28

    .line 241
    aget-object v4, v2, v3

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 242
    array-length v4, v2

    add-int/lit8 v4, v4, -0x1

    if-eq v3, v4, :cond_25

    .line 243
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 240
    :cond_25
    add-int/lit8 v3, v3, 0x1

    goto :goto_15

    .line 245
    .end local v3  # "i":I
    :cond_28
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 247
    .end local v2  # "c":[Ljava/lang/String;
    :cond_2d
    const-string v1, "SceneBoostStrategy"

    const-string v2, "convertTimeout error!!!"

    invoke-static {v1, v2}, Landroid/scene/SceneUtils;->logSceneError(Ljava/lang/String;Ljava/lang/String;)V

    .line 248
    const/4 v1, 0x0

    return-object v1
.end method

.method private doBechMarkBoost(Landroid/scene/Scene;)V
    .registers 15
    .param p1, "scene"  # Landroid/scene/Scene;

    .line 530
    invoke-virtual {p1}, Landroid/scene/Scene;->getSceneType()Ljava/lang/String;

    move-result-object v0

    .line 531
    .local v0, "packageName":Ljava/lang/String;
    if-nez v0, :cond_7

    return-void

    .line 532
    :cond_7
    invoke-virtual {p1}, Landroid/scene/Scene;->getSceneId()I

    move-result v1

    .line 533
    .local v1, "sceneId":I
    invoke-virtual {p1}, Landroid/scene/Scene;->getSceneType()Ljava/lang/String;

    move-result-object v2

    .line 534
    .local v2, "sceneType":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Enter Benchmark, sceneType = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " SceneName = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 535
    invoke-virtual {p1}, Landroid/scene/Scene;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 534
    const-string v5, "SceneBoostStrategy"

    invoke-static {v5, v3}, Landroid/scene/SceneUtils;->logSceneDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 536
    invoke-static {v0}, Lcom/android/server/os/BoostInfo;->isBenchMarkApp(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_d2

    .line 537
    const/4 v3, 0x0

    const-string/jumbo v6, "persist.vendor.benchmark.mode"

    invoke-static {v6, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v6

    .line 538
    .local v6, "benchmark_mode":I
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Enter Benchmark, packageName = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 539
    invoke-virtual {p1}, Landroid/scene/Scene;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 538
    invoke-static {v5, v4}, Landroid/scene/SceneUtils;->logSceneDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 540
    const/4 v4, 0x1

    if-ne v6, v4, :cond_d2

    .line 541
    const-string v7, "PowerModeBench"

    .line 542
    .local v7, "sceneName":Ljava/lang/String;
    iget-object v8, p0, Lcom/android/server/os/SceneBoostStrategy;->mStrategyConfig:Lcom/android/server/os/StrategyConfig;

    invoke-virtual {v8}, Lcom/android/server/os/StrategyConfig;->getConfig()Ljava/util/HashMap;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Ljava/lang/String;

    .line 543
    .local v8, "config":[Ljava/lang/String;
    const v9, 0x1000004

    const/4 v10, 0x2

    if-ne v1, v9, :cond_b8

    .line 544
    if-eqz v8, :cond_7b

    .line 545
    const-string v3, "68818216031789"

    .line 546
    .local v3, "boost_benchmark_id":Ljava/lang/String;
    invoke-direct {p0, v8, v3, v4, v4}, Lcom/android/server/os/SceneBoostStrategy;->executeBoost([Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 548
    .end local v3  # "boost_benchmark_id":Ljava/lang/String;
    :cond_7b
    sget-object v3, Lcom/android/server/os/SceneBoostStrategy;->mPerfBoost:Landroid/perf/IntelligentBoostFramework;

    if-nez v3, :cond_86

    .line 549
    new-instance v3, Landroid/perf/IntelligentBoostFramework;

    invoke-direct {v3}, Landroid/perf/IntelligentBoostFramework;-><init>()V

    sput-object v3, Lcom/android/server/os/SceneBoostStrategy;->mPerfBoost:Landroid/perf/IntelligentBoostFramework;

    .line 551
    :cond_86
    sget-object v3, Lcom/android/server/os/SceneBoostStrategy;->mPerfBoost:Landroid/perf/IntelligentBoostFramework;

    if-eqz v3, :cond_b3

    sget-boolean v3, Lcom/android/server/os/SceneBoostStrategy;->mIsPerfLockAcquired:Z

    if-nez v3, :cond_b3

    .line 554
    const-string v3, "com.ludashi.benchmark"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    const v9, 0x7fffffff

    const/4 v11, 0x0

    const/16 v12, 0x1100

    if-eqz v3, :cond_a7

    .line 555
    sget-object v3, Lcom/android/server/os/SceneBoostStrategy;->mPerfBoost:Landroid/perf/IntelligentBoostFramework;

    invoke-virtual {v3, v12, v11, v9, v10}, Landroid/perf/IntelligentBoostFramework;->perfHint(ILjava/lang/String;II)I

    .line 557
    const-string v3, "Perflock acquired for Benchmark BOOST_V2"

    invoke-static {v5, v3}, Landroid/scene/SceneUtils;->logSceneDebug(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_b1

    .line 559
    :cond_a7
    sget-object v3, Lcom/android/server/os/SceneBoostStrategy;->mPerfBoost:Landroid/perf/IntelligentBoostFramework;

    invoke-virtual {v3, v12, v11, v9, v4}, Landroid/perf/IntelligentBoostFramework;->perfHint(ILjava/lang/String;II)I

    .line 561
    const-string v3, "Perflock acquired for Benchmark BOOST_V1"

    invoke-static {v5, v3}, Landroid/scene/SceneUtils;->logSceneDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 563
    :goto_b1
    sput-boolean v4, Lcom/android/server/os/SceneBoostStrategy;->mIsPerfLockAcquired:Z

    .line 565
    :cond_b3
    const/4 v3, 0x4

    invoke-direct {p0, v3}, Lcom/android/server/os/SceneBoostStrategy;->setThermalMode(I)V

    goto :goto_d2

    .line 568
    :cond_b8
    const-string v9, "68818216031789"

    .line 569
    .local v9, "boost_benchmark_id":Ljava/lang/String;
    invoke-direct {p0, v8, v9, v3, v4}, Lcom/android/server/os/SceneBoostStrategy;->executeBoost([Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 570
    sget-boolean v4, Lcom/android/server/os/SceneBoostStrategy;->mIsPerfLockAcquired:Z

    if-eqz v4, :cond_cf

    sget-object v4, Lcom/android/server/os/SceneBoostStrategy;->mPerfBoost:Landroid/perf/IntelligentBoostFramework;

    if-eqz v4, :cond_cf

    .line 571
    invoke-virtual {v4}, Landroid/perf/IntelligentBoostFramework;->perfLockRelease()I

    .line 572
    sput-boolean v3, Lcom/android/server/os/SceneBoostStrategy;->mIsPerfLockAcquired:Z

    .line 573
    const-string v3, "Perflock released for Benchmark "

    invoke-static {v5, v3}, Landroid/scene/SceneUtils;->logSceneDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 575
    :cond_cf
    invoke-direct {p0, v10}, Lcom/android/server/os/SceneBoostStrategy;->setThermalMode(I)V

    .line 579
    .end local v6  # "benchmark_mode":I
    .end local v7  # "sceneName":Ljava/lang/String;
    .end local v8  # "config":[Ljava/lang/String;
    .end local v9  # "boost_benchmark_id":Ljava/lang/String;
    :cond_d2
    :goto_d2
    return-void
.end method

.method private doBoost(Landroid/scene/Scene;)V
    .registers 9
    .param p1, "scene"  # Landroid/scene/Scene;

    .line 467
    const/4 v0, 0x0

    .line 469
    .local v0, "enabled":I
    sget-boolean v1, Lcom/android/server/os/SceneBoostStrategy;->registered:Z

    const/4 v2, 0x0

    if-nez v1, :cond_20

    .line 470
    const-string/jumbo v1, "mz_game_mode_accelerate_full"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 471
    .local v1, "accelerate":Landroid/net/Uri;
    iget-object v3, p0, Lcom/android/server/os/SceneBoostStrategy;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    new-instance v4, Lcom/android/server/os/SceneBoostStrategy$4;

    iget-object v5, p0, Lcom/android/server/os/SceneBoostStrategy;->mHandler:Landroid/os/Handler;

    invoke-direct {v4, p0, v5}, Lcom/android/server/os/SceneBoostStrategy$4;-><init>(Lcom/android/server/os/SceneBoostStrategy;Landroid/os/Handler;)V

    invoke-virtual {v3, v1, v2, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 491
    const/4 v3, 0x1

    sput-boolean v3, Lcom/android/server/os/SceneBoostStrategy;->registered:Z

    .line 493
    .end local v1  # "accelerate":Landroid/net/Uri;
    :cond_20
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "doBoost: accelerate:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " sceneId:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 494
    invoke-virtual {p1}, Landroid/scene/Scene;->getSceneId()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " sceneName:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 495
    invoke-virtual {p1}, Landroid/scene/Scene;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " packageName:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 496
    invoke-virtual {p1}, Landroid/scene/Scene;->getSceneType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " flag:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 497
    invoke-virtual {p1}, Landroid/scene/Scene;->getSceneFlag()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 493
    const-string v3, "SceneBoostStrategy"

    invoke-static {v3, v1}, Landroid/scene/SceneUtils;->logSceneDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 499
    invoke-virtual {p1}, Landroid/scene/Scene;->getSceneId()I

    move-result v1

    const v4, 0x1000017

    if-ne v1, v4, :cond_74

    .line 505
    invoke-direct {p0, p1}, Lcom/android/server/os/SceneBoostStrategy;->doNormalGameBoost(Landroid/scene/Scene;)V

    goto/16 :goto_f4

    .line 506
    :cond_74
    invoke-virtual {p1}, Landroid/scene/Scene;->getSceneId()I

    move-result v1

    const v4, 0x100001d

    if-ne v1, v4, :cond_81

    .line 507
    invoke-direct {p0, p1}, Lcom/android/server/os/SceneBoostStrategy;->doStandbyLimitedBoost(Landroid/scene/Scene;)V

    goto :goto_f4

    .line 508
    :cond_81
    invoke-virtual {p1}, Landroid/scene/Scene;->getSceneId()I

    move-result v1

    const v4, 0x100001e

    if-ne v1, v4, :cond_8e

    .line 509
    invoke-direct {p0, p1}, Lcom/android/server/os/SceneBoostStrategy;->doSurfaceFlingerWindowBlurBoost(Landroid/scene/Scene;)V

    goto :goto_f4

    .line 511
    :cond_8e
    invoke-direct {p0, p1}, Lcom/android/server/os/SceneBoostStrategy;->doSystemBoost(Landroid/scene/Scene;)V

    .line 512
    nop

    .line 513
    invoke-virtual {p1}, Landroid/scene/Scene;->getSceneId()I

    move-result v1

    const v5, 0x1000004

    const/4 v6, 0x2

    if-eq v1, v5, :cond_ab

    .line 514
    invoke-virtual {p1}, Landroid/scene/Scene;->getSceneId()I

    move-result v1

    const v5, 0x1000005

    if-eq v1, v5, :cond_ab

    invoke-virtual {p1}, Landroid/scene/Scene;->getSceneId()I

    move-result v1

    if-ne v1, v6, :cond_ae

    .line 515
    :cond_ab
    invoke-direct {p0, p1}, Lcom/android/server/os/SceneBoostStrategy;->doBechMarkBoost(Landroid/scene/Scene;)V

    .line 519
    :cond_ae
    const-string/jumbo v1, "pid"

    invoke-virtual {p1, v1, v2}, Landroid/scene/Scene;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 520
    .local v1, "pid":I
    if-eqz v1, :cond_f4

    sget-object v2, Lcom/android/server/os/SceneBoostStrategy;->mBlurBoostCounter:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f4

    invoke-virtual {p1}, Landroid/scene/Scene;->getSceneId()I

    move-result v2

    if-ne v2, v6, :cond_f4

    .line 521
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "clear BlurBoost key="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/scene/SceneUtils;->logSceneDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 522
    sget-object v2, Lcom/android/server/os/SceneBoostStrategy;->mBlurBoostCounter:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 523
    new-instance v2, Landroid/scene/Scene;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    const-string v5, "default"

    invoke-direct {v2, v4, v5, v3}, Landroid/scene/Scene;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v2}, Lcom/android/server/os/SceneBoostStrategy;->doSurfaceFlingerWindowBlurBoost(Landroid/scene/Scene;)V

    .line 527
    .end local v1  # "pid":I
    :cond_f4
    :goto_f4
    return-void
.end method

.method private doFullGameBoost(Landroid/scene/Scene;Z)V
    .registers 13
    .param p1, "scene"  # Landroid/scene/Scene;
    .param p2, "big"  # Z

    .line 282
    invoke-virtual {p1}, Landroid/scene/Scene;->getSceneFlag()I

    move-result v0

    .line 283
    .local v0, "enter":I
    invoke-virtual {p1}, Landroid/scene/Scene;->getSceneType()Ljava/lang/String;

    move-result-object v1

    .line 284
    .local v1, "packageName":Ljava/lang/String;
    sput-object v1, Lcom/android/server/os/SceneBoostStrategy;->mCurrentGame:Ljava/lang/String;

    .line 285
    invoke-virtual {p1}, Landroid/scene/Scene;->getSceneId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    .line 286
    .local v2, "sceneId":Ljava/lang/String;
    const/4 v3, 0x0

    .line 287
    .local v3, "config":[Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "doNormalGameBoost for app "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " lastGameConfig:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Lcom/android/server/os/SceneBoostStrategy;->lastGameConfig:[Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " enter:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " big:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "SceneBoostStrategy"

    invoke-static {v5, v4}, Landroid/scene/SceneUtils;->logSceneDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 289
    if-lez v0, :cond_ca

    .line 290
    const-string v4, "GameNormal_boost"

    if-nez p2, :cond_ba

    .line 291
    if-eqz v1, :cond_c7

    .line 292
    iget-object v6, p0, Lcom/android/server/os/SceneBoostStrategy;->mStrategyConfig:Lcom/android/server/os/StrategyConfig;

    invoke-virtual {v6}, Lcom/android/server/os/StrategyConfig;->getConfig()Ljava/util/HashMap;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "_boost"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    move-object v3, v6

    check-cast v3, [Ljava/lang/String;

    .line 293
    if-nez v3, :cond_c7

    .line 294
    iget-object v6, p0, Lcom/android/server/os/SceneBoostStrategy;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v6

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v7, 0x19

    if-le v6, v7, :cond_b6

    .line 295
    iget-object v6, p0, Lcom/android/server/os/SceneBoostStrategy;->mContext:Landroid/content/Context;

    invoke-static {v6, v1}, Landroid/perf/GameUtils;->getApkSize(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v6

    .line 296
    .local v6, "size":J
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "game size "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/scene/SceneUtils;->logSceneDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 297
    const-wide/32 v8, 0x1f400000

    cmp-long v5, v6, v8

    if-lez v5, :cond_a6

    .line 298
    iget-object v5, p0, Lcom/android/server/os/SceneBoostStrategy;->mStrategyConfig:Lcom/android/server/os/StrategyConfig;

    invoke-virtual {v5}, Lcom/android/server/os/StrategyConfig;->getConfig()Ljava/util/HashMap;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v3, v4

    check-cast v3, [Ljava/lang/String;

    goto :goto_b5

    .line 300
    :cond_a6
    iget-object v4, p0, Lcom/android/server/os/SceneBoostStrategy;->mStrategyConfig:Lcom/android/server/os/StrategyConfig;

    invoke-virtual {v4}, Lcom/android/server/os/StrategyConfig;->getConfig()Ljava/util/HashMap;

    move-result-object v4

    const-string v5, "GameNormal"

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v3, v4

    check-cast v3, [Ljava/lang/String;

    .line 302
    .end local v6  # "size":J
    :goto_b5
    goto :goto_c7

    .line 303
    :cond_b6
    invoke-direct {p0, p1, v1}, Lcom/android/server/os/SceneBoostStrategy;->getApkSize(Landroid/scene/Scene;Ljava/lang/String;)V

    .line 304
    return-void

    .line 309
    :cond_ba
    iget-object v5, p0, Lcom/android/server/os/SceneBoostStrategy;->mStrategyConfig:Lcom/android/server/os/StrategyConfig;

    invoke-virtual {v5}, Lcom/android/server/os/StrategyConfig;->getConfig()Ljava/util/HashMap;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v3, v4

    check-cast v3, [Ljava/lang/String;

    .line 311
    :cond_c7
    :goto_c7
    sput-object v3, Lcom/android/server/os/SceneBoostStrategy;->lastGameConfig:[Ljava/lang/String;

    goto :goto_cf

    .line 313
    :cond_ca
    sget-object v3, Lcom/android/server/os/SceneBoostStrategy;->lastGameConfig:[Ljava/lang/String;

    .line 314
    const/4 v4, 0x0

    sput-object v4, Lcom/android/server/os/SceneBoostStrategy;->mCurrentGame:Ljava/lang/String;

    .line 317
    :goto_cf
    const/4 v4, 0x1

    invoke-direct {p0, v3, v2, v0, v4}, Lcom/android/server/os/SceneBoostStrategy;->executeBoost([Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 318
    return-void
.end method

.method private doNeteaseBoost(Landroid/scene/Scene;)V
    .registers 10
    .param p1, "scene"  # Landroid/scene/Scene;

    .line 582
    invoke-virtual {p1}, Landroid/scene/Scene;->getSceneId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 584
    .local v0, "sceneId":Ljava/lang/String;
    const-string/jumbo v1, "timeout"

    invoke-virtual {p1, v1}, Landroid/scene/Scene;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 585
    .local v1, "timeout":Ljava/lang/String;
    if-nez v1, :cond_17

    .line 586
    sget-wide v2, Lcom/android/server/os/SceneBoostStrategy;->mTimeout:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    .line 588
    :cond_17
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_18
    const/4 v3, 0x5

    if-ge v2, v3, :cond_89

    .line 589
    sget-object v3, Lcom/android/server/os/SceneBoostStrategy;->RES_NAME:[Ljava/lang/String;

    aget-object v3, v3, v2

    const/4 v4, -0x1

    invoke-virtual {p1, v3, v4}, Landroid/scene/Scene;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 590
    .local v3, "res_value":I
    if-ne v3, v4, :cond_27

    goto :goto_86

    .line 591
    :cond_27
    sget-object v5, Lcom/android/server/os/SceneBoostStrategy;->RES_MAX_LEVEL:[I

    aget v6, v5, v2

    if-le v3, v6, :cond_2f

    .line 592
    aget v3, v5, v2

    .line 594
    :cond_2f
    sget-object v5, Lcom/android/server/os/SceneBoostStrategy;->RES_MAX_LEVEL:[I

    aget v5, v5, v2

    if-eq v5, v4, :cond_86

    if-ltz v3, :cond_86

    .line 595
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 596
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v6, Lcom/android/server/os/SceneBoostStrategy;->RES_MAX_LEVEL:[I

    aget v6, v6, v2

    .line 597
    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 599
    .local v4, "value":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "doNeteaseBoost "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v7, Lcom/android/server/os/SceneBoostStrategy;->RES_NAME:[Ljava/lang/String;

    aget-object v7, v7, v2

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "SceneBoostStrategy"

    invoke-static {v6, v5}, Landroid/scene/SceneUtils;->logSceneDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 600
    invoke-direct {p0, v2, v4}, Lcom/android/server/os/SceneBoostStrategy;->nativeBoost(ILjava/lang/String;)V

    .line 588
    .end local v3  # "res_value":I
    .end local v4  # "value":Ljava/lang/String;
    :cond_86
    :goto_86
    add-int/lit8 v2, v2, 0x1

    goto :goto_18

    .line 603
    .end local v2  # "i":I
    :cond_89
    return-void
.end method

.method private doNormalGameBoost(Landroid/scene/Scene;)V
    .registers 11
    .param p1, "scene"  # Landroid/scene/Scene;

    .line 321
    invoke-virtual {p1}, Landroid/scene/Scene;->getSceneFlag()I

    move-result v0

    .line 322
    .local v0, "enter":I
    invoke-virtual {p1}, Landroid/scene/Scene;->getSceneType()Ljava/lang/String;

    move-result-object v1

    .line 323
    .local v1, "packageName":Ljava/lang/String;
    sput-object v1, Lcom/android/server/os/SceneBoostStrategy;->mCurrentGame:Ljava/lang/String;

    .line 325
    const-string v2, "com.tencent.mm"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    const-string v3, "SceneBoostStrategy"

    if-eqz v2, :cond_56

    .line 326
    const-string/jumbo v2, "wechat_small_game_id"

    invoke-virtual {p1, v2}, Landroid/scene/Scene;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 327
    .local v4, "vx_game_name":Ljava/lang/String;
    if-eqz v4, :cond_21

    .line 328
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 330
    :cond_21
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "wechat_game_packageName: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Landroid/scene/Scene;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/scene/SceneUtils;->logSceneDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 331
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "wechat_game_name: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v5, "wechat_small_game_name"

    invoke-virtual {p1, v5}, Landroid/scene/Scene;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/scene/SceneUtils;->logSceneDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 334
    .end local v4  # "vx_game_name":Ljava/lang/String;
    :cond_56
    invoke-virtual {p1}, Landroid/scene/Scene;->getSceneId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    .line 335
    .local v2, "sceneId":Ljava/lang/String;
    const/4 v4, 0x0

    .line 336
    .local v4, "config":[Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "doNormalGameBoost for app "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " lastGameConfig:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v6, Lcom/android/server/os/SceneBoostStrategy;->lastGameConfig:[Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " enter:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/scene/SceneUtils;->logSceneDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 338
    if-lez v0, :cond_fb

    .line 339
    if-eqz v1, :cond_104

    .line 340
    iget-object v5, p0, Lcom/android/server/os/SceneBoostStrategy;->mStrategyConfig:Lcom/android/server/os/StrategyConfig;

    invoke-virtual {v5}, Lcom/android/server/os/StrategyConfig;->getConfig()Ljava/util/HashMap;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object v4, v5

    check-cast v4, [Ljava/lang/String;

    .line 341
    if-nez v4, :cond_cb

    .line 342
    const-string v5, "."

    invoke-virtual {v1, v5}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v5

    .line 343
    .local v5, "index":I
    if-lez v5, :cond_cb

    .line 344
    const/4 v6, 0x0

    invoke-virtual {v1, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 345
    .local v6, "configPakage":Ljava/lang/String;
    iget-object v7, p0, Lcom/android/server/os/SceneBoostStrategy;->mStrategyConfig:Lcom/android/server/os/StrategyConfig;

    invoke-virtual {v7}, Lcom/android/server/os/StrategyConfig;->getConfig()Ljava/util/HashMap;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    move-object v4, v7

    check-cast v4, [Ljava/lang/String;

    .line 346
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "configPakage: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " config"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Landroid/scene/SceneUtils;->logSceneDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 349
    .end local v5  # "index":I
    .end local v6  # "configPakage":Ljava/lang/String;
    :cond_cb
    if-nez v4, :cond_dc

    .line 350
    iget-object v5, p0, Lcom/android/server/os/SceneBoostStrategy;->mStrategyConfig:Lcom/android/server/os/StrategyConfig;

    invoke-virtual {v5}, Lcom/android/server/os/StrategyConfig;->getConfig()Ljava/util/HashMap;

    move-result-object v5

    const-string v6, "GameNormal"

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object v4, v5

    check-cast v4, [Ljava/lang/String;

    .line 352
    :cond_dc
    sput-object v4, Lcom/android/server/os/SceneBoostStrategy;->lastGameConfig:[Ljava/lang/String;

    .line 353
    sget-object v5, Lcom/android/server/os/IntelligentThermalManager;->THERMAL_GAME_LIST:Ljava/lang/String;

    invoke-virtual {v5, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_f1

    .line 354
    const-string/jumbo v5, "super thermal in"

    invoke-static {v3, v5}, Landroid/scene/SceneUtils;->logSceneError(Ljava/lang/String;Ljava/lang/String;)V

    .line 355
    const/4 v3, 0x5

    invoke-direct {p0, v3}, Lcom/android/server/os/SceneBoostStrategy;->setThermalMode(I)V

    goto :goto_104

    .line 357
    :cond_f1
    const-string v5, "high thermal in"

    invoke-static {v3, v5}, Landroid/scene/SceneUtils;->logSceneError(Ljava/lang/String;Ljava/lang/String;)V

    .line 358
    const/4 v3, 0x3

    invoke-direct {p0, v3}, Lcom/android/server/os/SceneBoostStrategy;->setThermalMode(I)V

    goto :goto_104

    .line 362
    :cond_fb
    sget-object v4, Lcom/android/server/os/SceneBoostStrategy;->lastGameConfig:[Ljava/lang/String;

    .line 363
    const/4 v3, 0x0

    sput-object v3, Lcom/android/server/os/SceneBoostStrategy;->mCurrentGame:Ljava/lang/String;

    .line 364
    const/4 v3, 0x2

    invoke-direct {p0, v3}, Lcom/android/server/os/SceneBoostStrategy;->setThermalMode(I)V

    .line 366
    :cond_104
    :goto_104
    const/4 v3, 0x1

    invoke-direct {p0, v4, v2, v0, v3}, Lcom/android/server/os/SceneBoostStrategy;->executeBoost([Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 367
    return-void
.end method

.method private doStandbyLimitedBoost(Landroid/scene/Scene;)V
    .registers 7
    .param p1, "scene"  # Landroid/scene/Scene;

    .line 370
    invoke-virtual {p1}, Landroid/scene/Scene;->getSceneFlag()I

    move-result v0

    .line 371
    .local v0, "enter":I
    invoke-virtual {p1}, Landroid/scene/Scene;->getSceneId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 372
    .local v1, "sceneId":Ljava/lang/String;
    const/4 v2, 0x0

    .line 373
    .local v2, "config":[Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "doStandbyLimited  lastGameConfig:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lcom/android/server/os/SceneBoostStrategy;->lastGameConfig:[Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " enter:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "SceneBoostStrategy"

    invoke-static {v4, v3}, Landroid/scene/SceneUtils;->logSceneDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 375
    if-lez v0, :cond_41

    .line 376
    iget-object v3, p0, Lcom/android/server/os/SceneBoostStrategy;->mStrategyConfig:Lcom/android/server/os/StrategyConfig;

    invoke-virtual {v3}, Lcom/android/server/os/StrategyConfig;->getConfig()Ljava/util/HashMap;

    move-result-object v3

    const-string v4, "GameStandbyLimited"

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v2, v3

    check-cast v2, [Ljava/lang/String;

    .line 377
    sput-object v2, Lcom/android/server/os/SceneBoostStrategy;->lastGameConfig:[Ljava/lang/String;

    goto :goto_43

    .line 380
    :cond_41
    sget-object v2, Lcom/android/server/os/SceneBoostStrategy;->lastGameConfig:[Ljava/lang/String;

    .line 382
    :goto_43
    const/4 v3, 0x1

    invoke-direct {p0, v2, v1, v0, v3}, Lcom/android/server/os/SceneBoostStrategy;->executeBoost([Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 383
    return-void
.end method

.method private doSurfaceFlingerWindowBlurBoost(Landroid/scene/Scene;)V
    .registers 12
    .param p1, "scene"  # Landroid/scene/Scene;

    .line 386
    invoke-virtual {p1}, Landroid/scene/Scene;->getSceneFlag()I

    move-result v0

    .line 387
    .local v0, "enter":I
    const/4 v1, 0x0

    .line 388
    .local v1, "config":[Ljava/lang/String;
    invoke-virtual {p1}, Landroid/scene/Scene;->getSceneType()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_e

    const-string v2, "0"

    goto :goto_12

    :cond_e
    invoke-virtual {p1}, Landroid/scene/Scene;->getSceneType()Ljava/lang/String;

    move-result-object v2

    .line 389
    .local v2, "pid_str":Ljava/lang/String;
    :goto_12
    const v3, 0x100001e

    const-string v4, "SceneBoostStrategy"

    const/4 v5, 0x1

    if-lez v0, :cond_8f

    .line 391
    sget-object v6, Lcom/android/server/os/SceneBoostStrategy;->mBlurBoostCounter:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v6, v2}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_39

    .line 392
    sget-object v6, Lcom/android/server/os/SceneBoostStrategy;->mBlurBoostCounter:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v6, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 393
    .local v6, "count":I
    add-int/2addr v6, v5

    .line 394
    sget-object v7, Lcom/android/server/os/SceneBoostStrategy;->mBlurBoostCounter:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v2, v8}, Ljava/util/concurrent/ConcurrentHashMap;->replace(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 395
    .end local v6  # "count":I
    goto :goto_43

    .line 396
    :cond_39
    const/4 v6, 0x1

    .line 397
    .restart local v6  # "count":I
    sget-object v7, Lcom/android/server/os/SceneBoostStrategy;->mBlurBoostCounter:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v2, v8}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 400
    .end local v6  # "count":I
    :goto_43
    const/4 v6, 0x0

    .line 401
    .local v6, "totalCount":I
    sget-object v7, Lcom/android/server/os/SceneBoostStrategy;->mBlurBoostCounter:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v7}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_4e
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_60

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 402
    .local v8, "value":I
    add-int/2addr v6, v8

    .line 403
    .end local v8  # "value":I
    goto :goto_4e

    .line 405
    :cond_60
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "BOOST_SF_WINDOW_BLUR  boost_count: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/scene/SceneUtils;->logSceneDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 406
    if-ne v6, v5, :cond_8e

    .line 407
    iget-object v4, p0, Lcom/android/server/os/SceneBoostStrategy;->mStrategyConfig:Lcom/android/server/os/StrategyConfig;

    invoke-virtual {v4}, Lcom/android/server/os/StrategyConfig;->getConfig()Ljava/util/HashMap;

    move-result-object v4

    const-string v7, "SfWindowBlur"

    invoke-virtual {v4, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v1, v4

    check-cast v1, [Ljava/lang/String;

    .line 408
    sput-object v1, Lcom/android/server/os/SceneBoostStrategy;->lastGameConfig:[Ljava/lang/String;

    .line 409
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v1, v3, v5, v5}, Lcom/android/server/os/SceneBoostStrategy;->executeBoost([Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 411
    .end local v6  # "totalCount":I
    :cond_8e
    goto :goto_f5

    .line 413
    :cond_8f
    sget-object v6, Lcom/android/server/os/SceneBoostStrategy;->mBlurBoostCounter:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v6, v2}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    const/4 v7, 0x0

    if-eqz v6, :cond_b0

    .line 414
    sget-object v6, Lcom/android/server/os/SceneBoostStrategy;->mBlurBoostCounter:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v6, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 415
    .local v6, "count":I
    add-int/lit8 v6, v6, -0x1

    .line 416
    sget-object v8, Lcom/android/server/os/SceneBoostStrategy;->mBlurBoostCounter:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v2, v9}, Ljava/util/concurrent/ConcurrentHashMap;->replace(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 417
    .end local v6  # "count":I
    goto :goto_b9

    .line 418
    :cond_b0
    sget-object v6, Lcom/android/server/os/SceneBoostStrategy;->mBlurBoostCounter:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v2, v8}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 421
    :goto_b9
    const/4 v6, 0x0

    .line 422
    .local v6, "totalCount":I
    sget-object v8, Lcom/android/server/os/SceneBoostStrategy;->mBlurBoostCounter:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v8}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_c4
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_d6

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    .line 423
    .local v9, "value":I
    add-int/2addr v6, v9

    .line 424
    .end local v9  # "value":I
    goto :goto_c4

    .line 426
    :cond_d6
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "BOOST_SF_WINDOW_BLUR  cancel_count: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Landroid/scene/SceneUtils;->logSceneDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 427
    if-nez v6, :cond_f5

    .line 428
    sget-object v1, Lcom/android/server/os/SceneBoostStrategy;->lastGameConfig:[Ljava/lang/String;

    .line 429
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v1, v3, v7, v5}, Lcom/android/server/os/SceneBoostStrategy;->executeBoost([Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 432
    .end local v6  # "totalCount":I
    :cond_f5
    :goto_f5
    return-void
.end method

.method private doSystemBoost(Landroid/scene/Scene;)V
    .registers 12
    .param p1, "scene"  # Landroid/scene/Scene;

    .line 435
    invoke-virtual {p1}, Landroid/scene/Scene;->getSceneId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 436
    .local v0, "sceneId":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/scene/Scene;->getName()Ljava/lang/String;

    move-result-object v1

    .line 437
    .local v1, "sceneName":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/scene/Scene;->getSceneFlag()I

    move-result v2

    .line 438
    .local v2, "timeout":I
    const-string v3, "SceneBoostStrategy"

    if-nez v1, :cond_1a

    .line 439
    const-string v4, "Get a system boost scene, no scene name"

    invoke-static {v3, v4}, Landroid/scene/SceneUtils;->logSceneWarn(Ljava/lang/String;Ljava/lang/String;)V

    .line 440
    return-void

    .line 442
    :cond_1a
    invoke-virtual {p1}, Landroid/scene/Scene;->getSceneType()Ljava/lang/String;

    move-result-object v4

    .line 444
    .local v4, "packageName":Ljava/lang/String;
    const/4 v5, 0x0

    const-string v6, "doSystemBoost for scene "

    if-eqz v4, :cond_77

    .line 445
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "doSystemBoost for app "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Landroid/scene/SceneUtils;->logSceneDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 446
    iget-object v7, p0, Lcom/android/server/os/SceneBoostStrategy;->mStrategyConfig:Lcom/android/server/os/StrategyConfig;

    invoke-virtual {v7}, Lcom/android/server/os/StrategyConfig;->getConfig()Ljava/util/HashMap;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Ljava/lang/String;

    .line 447
    .local v7, "config":[Ljava/lang/String;
    if-eqz v7, :cond_4e

    .line 448
    aget-object v3, v7, v5

    invoke-direct {p0, v3}, Lcom/android/server/os/SceneBoostStrategy;->checkTimeout(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_96

    return-void

    .line 449
    :cond_4e
    invoke-virtual {p1}, Landroid/scene/Scene;->getSceneId()I

    move-result v8

    const v9, 0x1000001

    if-ne v8, v9, :cond_96

    .line 450
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/scene/SceneUtils;->logSceneDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 451
    iget-object v3, p0, Lcom/android/server/os/SceneBoostStrategy;->mStrategyConfig:Lcom/android/server/os/StrategyConfig;

    invoke-virtual {v3}, Lcom/android/server/os/StrategyConfig;->getConfig()Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v7, v3

    check-cast v7, [Ljava/lang/String;

    goto :goto_96

    .line 454
    .end local v7  # "config":[Ljava/lang/String;
    :cond_77
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/scene/SceneUtils;->logSceneDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 455
    iget-object v3, p0, Lcom/android/server/os/SceneBoostStrategy;->mStrategyConfig:Lcom/android/server/os/StrategyConfig;

    invoke-virtual {v3}, Lcom/android/server/os/StrategyConfig;->getConfig()Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v7, v3

    check-cast v7, [Ljava/lang/String;

    .line 458
    .restart local v7  # "config":[Ljava/lang/String;
    :cond_96
    :goto_96
    invoke-virtual {p1}, Landroid/scene/Scene;->getSceneId()I

    move-result v3

    const v6, 0x100000f

    if-eq v3, v6, :cond_ac

    .line 459
    invoke-virtual {p1}, Landroid/scene/Scene;->getSceneId()I

    move-result v3

    const v6, 0x1000011

    if-eq v3, v6, :cond_ac

    .line 460
    invoke-direct {p0, v7, v0, v2, v5}, Lcom/android/server/os/SceneBoostStrategy;->executeBoost([Ljava/lang/String;Ljava/lang/String;IZ)V

    goto :goto_b0

    .line 462
    :cond_ac
    const/4 v3, 0x1

    invoke-direct {p0, v7, v0, v2, v3}, Lcom/android/server/os/SceneBoostStrategy;->executeBoost([Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 464
    :goto_b0
    return-void
.end method

.method private doTencentBoost(Landroid/scene/Scene;)V
    .registers 11
    .param p1, "scene"  # Landroid/scene/Scene;

    .line 618
    const/4 v0, 0x0

    .line 620
    .local v0, "enabled":I
    const-string v1, "SceneBoostStrategy"

    if-lez v0, :cond_b

    .line 621
    const-string v2, "Use full game boost, bypass tencent scene boost!"

    invoke-static {v1, v2}, Landroid/scene/SceneUtils;->logSceneWarn(Ljava/lang/String;Ljava/lang/String;)V

    .line 622
    return-void

    .line 625
    :cond_b
    invoke-virtual {p1}, Landroid/scene/Scene;->getSceneId()I

    move-result v2

    const/high16 v3, 0x11000000

    const-string v4, " "

    if-ne v2, v3, :cond_e1

    .line 626
    invoke-virtual {p1}, Landroid/scene/Scene;->getSceneFlag()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_a6

    .line 627
    invoke-direct {p0, p1}, Lcom/android/server/os/SceneBoostStrategy;->cancelGameNormalBoost(Landroid/scene/Scene;)V

    .line 628
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_20
    sget-object v3, Lcom/android/server/os/SceneBoostStrategy;->INTERACTIVE_NODES_NAME:[Ljava/lang/String;

    array-length v3, v3

    if-ge v2, v3, :cond_a5

    .line 629
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "interactive_"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Lcom/android/server/os/SceneBoostStrategy;->INTERACTIVE_NODES_NAME:[Ljava/lang/String;

    aget-object v5, v5, v2

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/scene/Scene;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 630
    .local v3, "new_value":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "to config interactive_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v6, Lcom/android/server/os/SceneBoostStrategy;->INTERACTIVE_NODES_NAME:[Ljava/lang/String;

    aget-object v6, v6, v2

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/scene/SceneUtils;->logSceneDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 631
    if-eqz v3, :cond_a1

    .line 632
    sget-object v5, Lcom/android/server/os/SceneBoostStrategy;->INTERACTIVE_NODES_NAME:[Ljava/lang/String;

    aget-object v5, v5, v2

    invoke-direct {p0, v5}, Lcom/android/server/os/SceneBoostStrategy;->nativeGetValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 633
    .local v5, "old_value":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "interactive parameter "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v7, Lcom/android/server/os/SceneBoostStrategy;->INTERACTIVE_NODES_NAME:[Ljava/lang/String;

    aget-object v7, v7, v2

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " orig value:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ", new value:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/scene/SceneUtils;->logSceneDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 636
    sget-object v6, Lcom/android/server/os/SceneBoostStrategy;->INTERACTIVE_ORIG_VALUE:Ljava/util/HashMap;

    sget-object v7, Lcom/android/server/os/SceneBoostStrategy;->INTERACTIVE_NODES_NAME:[Ljava/lang/String;

    aget-object v7, v7, v2

    invoke-virtual {v6, v7, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 637
    sget-object v6, Lcom/android/server/os/SceneBoostStrategy;->INTERACTIVE_NODES_NAME:[Ljava/lang/String;

    aget-object v6, v6, v2

    invoke-direct {p0, v6, v3}, Lcom/android/server/os/SceneBoostStrategy;->nativeSetValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 628
    .end local v3  # "new_value":Ljava/lang/String;
    .end local v5  # "old_value":Ljava/lang/String;
    :cond_a1
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_20

    .end local v2  # "i":I
    :cond_a5
    goto :goto_e1

    .line 641
    :cond_a6
    const/4 v2, 0x0

    .restart local v2  # "i":I
    :goto_a7
    sget-object v3, Lcom/android/server/os/SceneBoostStrategy;->INTERACTIVE_NODES_NAME:[Ljava/lang/String;

    array-length v5, v3

    if-ge v2, v5, :cond_e1

    .line 642
    sget-object v5, Lcom/android/server/os/SceneBoostStrategy;->INTERACTIVE_ORIG_VALUE:Ljava/util/HashMap;

    aget-object v3, v3, v2

    invoke-virtual {v5, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 643
    .local v3, "value":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "to restore interactive_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v6, Lcom/android/server/os/SceneBoostStrategy;->INTERACTIVE_NODES_NAME:[Ljava/lang/String;

    aget-object v6, v6, v2

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/scene/SceneUtils;->logSceneDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 644
    if-eqz v3, :cond_de

    .line 645
    sget-object v5, Lcom/android/server/os/SceneBoostStrategy;->INTERACTIVE_NODES_NAME:[Ljava/lang/String;

    aget-object v5, v5, v2

    invoke-direct {p0, v5, v3}, Lcom/android/server/os/SceneBoostStrategy;->nativeSetValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 641
    .end local v3  # "value":Ljava/lang/String;
    :cond_de
    add-int/lit8 v2, v2, 0x1

    goto :goto_a7

    .line 651
    .end local v2  # "i":I
    :cond_e1
    :goto_e1
    invoke-virtual {p1}, Landroid/scene/Scene;->getSceneId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    .line 652
    .local v2, "sceneId":Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_ea
    const/4 v5, 0x5

    if-ge v3, v5, :cond_12e

    .line 653
    sget-object v5, Lcom/android/server/os/SceneBoostStrategy;->RES_NAME:[Ljava/lang/String;

    aget-object v5, v5, v3

    invoke-virtual {p1, v5}, Landroid/scene/Scene;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 654
    .local v5, "config":Ljava/lang/String;
    if-nez v5, :cond_f8

    goto :goto_12b

    .line 656
    :cond_f8
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 657
    .local v6, "value":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "doTencentBoost "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v8, Lcom/android/server/os/SceneBoostStrategy;->RES_NAME:[Ljava/lang/String;

    aget-object v8, v8, v3

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v7}, Landroid/scene/SceneUtils;->logSceneDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 658
    invoke-direct {p0, v3, v6}, Lcom/android/server/os/SceneBoostStrategy;->nativeBoost(ILjava/lang/String;)V

    .line 652
    .end local v5  # "config":Ljava/lang/String;
    .end local v6  # "value":Ljava/lang/String;
    :goto_12b
    add-int/lit8 v3, v3, 0x1

    goto :goto_ea

    .line 661
    .end local v3  # "i":I
    :cond_12e
    return-void
.end method

.method private doWeixinBoost(Landroid/scene/Scene;)V
    .registers 14
    .param p1, "scene"  # Landroid/scene/Scene;

    .line 676
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "doWeixinBoost "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/scene/Scene;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "SceneBoostStrategy"

    invoke-static {v2, v0}, Landroid/scene/SceneUtils;->logSceneDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 677
    invoke-virtual {p1}, Landroid/scene/Scene;->getSceneFlag()I

    move-result v0

    .line 678
    .local v0, "flag":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "doWeixinBoost scene:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/scene/Scene;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-wide/32 v4, 0x80000

    invoke-static {v4, v5, v3}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 679
    invoke-virtual {p1}, Landroid/scene/Scene;->getSceneId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    .line 680
    .local v3, "sceneId":Ljava/lang/String;
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_42
    const/4 v7, 0x5

    if-ge v6, v7, :cond_86

    .line 681
    sget-object v7, Lcom/android/server/os/SceneBoostStrategy;->RES_NAME:[Ljava/lang/String;

    aget-object v7, v7, v6

    invoke-virtual {p1, v7}, Landroid/scene/Scene;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 682
    .local v7, "config":Ljava/lang/String;
    if-nez v7, :cond_50

    goto :goto_83

    .line 684
    :cond_50
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 685
    .local v8, "value":Ljava/lang/String;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v11, Lcom/android/server/os/SceneBoostStrategy;->RES_NAME:[Ljava/lang/String;

    aget-object v11, v11, v6

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v2, v9}, Landroid/scene/SceneUtils;->logSceneDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 686
    invoke-direct {p0, v6, v8}, Lcom/android/server/os/SceneBoostStrategy;->nativeBoost(ILjava/lang/String;)V

    .line 680
    .end local v7  # "config":Ljava/lang/String;
    .end local v8  # "value":Ljava/lang/String;
    :goto_83
    add-int/lit8 v6, v6, 0x1

    goto :goto_42

    .line 689
    .end local v6  # "i":I
    :cond_86
    const-string/jumbo v1, "tids"

    invoke-virtual {p1, v1}, Landroid/scene/Scene;->getIntArrayExtra(Ljava/lang/String;)[I

    move-result-object v1

    .line 690
    .local v1, "tids":[I
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "enter:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v7, "tids:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/scene/SceneUtils;->logSceneDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 691
    invoke-direct {p0, v1, v0}, Lcom/android/server/os/SceneBoostStrategy;->setSchedAffinity([II)V

    .line 692
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 693
    return-void
.end method

.method private executeBoost([Ljava/lang/String;Ljava/lang/String;IZ)V
    .registers 12
    .param p1, "config"  # [Ljava/lang/String;
    .param p2, "sceneId"  # Ljava/lang/String;
    .param p3, "timeout"  # I
    .param p4, "replace"  # Z

    .line 267
    const-string v0, "SceneBoostStrategy"

    if-eqz p1, :cond_60

    if-eqz p2, :cond_60

    if-eqz p4, :cond_b

    if-gez p3, :cond_b

    goto :goto_60

    .line 271
    :cond_b
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_c
    const/4 v2, 0x5

    if-ge v1, v2, :cond_5f

    .line 272
    sget-object v2, Lcom/android/server/os/SceneBoostStrategy;->RES_MAX_LEVEL:[I

    aget v2, v2, v1

    const/4 v3, -0x1

    if-eq v2, v3, :cond_5c

    array-length v2, p1

    if-le v2, v1, :cond_5c

    .line 273
    aget-object v2, p1, v1

    if-eqz p3, :cond_1e

    goto :goto_1f

    :cond_1e
    const/4 v3, 0x0

    :goto_1f
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, p4, v3}, Lcom/android/server/os/SceneBoostStrategy;->convertTimeout(Ljava/lang/String;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 274
    .local v2, "c":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 275
    .local v3, "value":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "executeBoost "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v6, Lcom/android/server/os/SceneBoostStrategy;->RES_NAME:[Ljava/lang/String;

    aget-object v6, v6, v1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/scene/SceneUtils;->logSceneDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 276
    invoke-direct {p0, v1, v3}, Lcom/android/server/os/SceneBoostStrategy;->nativeBoost(ILjava/lang/String;)V

    .line 271
    .end local v2  # "c":Ljava/lang/String;
    .end local v3  # "value":Ljava/lang/String;
    :cond_5c
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    .line 279
    .end local v1  # "i":I
    :cond_5f
    return-void

    .line 268
    :cond_60
    :goto_60
    const-string v1, "Please check executeBoost params!!!"

    invoke-static {v0, v1}, Landroid/scene/SceneUtils;->logSceneWarn(Ljava/lang/String;Ljava/lang/String;)V

    .line 269
    return-void
.end method

.method private getApkSize(Landroid/scene/Scene;Ljava/lang/String;)V
    .registers 5
    .param p1, "scene"  # Landroid/scene/Scene;
    .param p2, "pkgName"  # Ljava/lang/String;

    .line 252
    iget-object v0, p0, Lcom/android/server/os/SceneBoostStrategy;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    new-instance v1, Lcom/android/server/os/SceneBoostStrategy$3;

    invoke-direct {v1, p0, p2, p1}, Lcom/android/server/os/SceneBoostStrategy$3;-><init>(Lcom/android/server/os/SceneBoostStrategy;Ljava/lang/String;Landroid/scene/Scene;)V

    invoke-virtual {v0, p2, v1}, Landroid/content/pm/PackageManager;->getPackageSizeInfo(Ljava/lang/String;Landroid/content/pm/IPackageStatsObserver;)V

    .line 264
    return-void
.end method

.method private init()V
    .registers 3

    .line 91
    new-instance v0, Landroid/os/HandlerThread;

    const-string/jumbo v1, "scene_boost"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/os/SceneBoostStrategy;->mHandlerThread:Landroid/os/HandlerThread;

    .line 92
    iget-object v0, p0, Lcom/android/server/os/SceneBoostStrategy;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 93
    new-instance v0, Lcom/android/server/os/SceneBoostStrategy$1;

    iget-object v1, p0, Lcom/android/server/os/SceneBoostStrategy;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/os/SceneBoostStrategy$1;-><init>(Lcom/android/server/os/SceneBoostStrategy;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/os/SceneBoostStrategy;->mHandler:Landroid/os/Handler;

    .line 130
    iget-object v0, p0, Lcom/android/server/os/SceneBoostStrategy;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x110

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 131
    return-void
.end method

.method private initBoostEnv()V
    .registers 1

    .line 697
    invoke-direct {p0}, Lcom/android/server/os/SceneBoostStrategy;->nativeOpen()V

    .line 698
    return-void
.end method

.method private native nativeBoost(ILjava/lang/String;)V
.end method

.method private native nativeClear()V
.end method

.method private native nativeClose()V
.end method

.method private native nativeGetValue(Ljava/lang/String;)Ljava/lang/String;
.end method

.method private native nativeOpen()V
.end method

.method private native nativeSetValue(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method private sendBoostMessage(Landroid/scene/Scene;)V
    .registers 6
    .param p1, "scene"  # Landroid/scene/Scene;

    .line 174
    invoke-virtual {p1}, Landroid/scene/Scene;->getSceneClass()I

    move-result v0

    const/16 v1, 0x111

    const-string/jumbo v2, "scene"

    if-nez v0, :cond_24

    .line 175
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 176
    .local v0, "msg":Landroid/os/Message;
    iput v1, v0, Landroid/os/Message;->what:I

    .line 177
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 178
    .local v1, "bundle":Landroid/os/Bundle;
    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 179
    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 180
    iget-object v2, p0, Lcom/android/server/os/SceneBoostStrategy;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 181
    .end local v0  # "msg":Landroid/os/Message;
    .end local v1  # "bundle":Landroid/os/Bundle;
    goto/16 :goto_aa

    :cond_24
    invoke-virtual {p1}, Landroid/scene/Scene;->getSceneClass()I

    move-result v0

    const/4 v3, 0x1

    if-ne v0, v3, :cond_43

    .line 182
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 183
    .restart local v0  # "msg":Landroid/os/Message;
    iput v1, v0, Landroid/os/Message;->what:I

    .line 184
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 185
    .restart local v1  # "bundle":Landroid/os/Bundle;
    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 186
    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 187
    iget-object v2, p0, Lcom/android/server/os/SceneBoostStrategy;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 188
    .end local v0  # "msg":Landroid/os/Message;
    .end local v1  # "bundle":Landroid/os/Bundle;
    goto :goto_aa

    :cond_43
    invoke-virtual {p1}, Landroid/scene/Scene;->getSceneClass()I

    move-result v0

    const/16 v1, 0x10

    if-ne v0, v1, :cond_65

    .line 189
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 190
    .restart local v0  # "msg":Landroid/os/Message;
    const/16 v1, 0x112

    iput v1, v0, Landroid/os/Message;->what:I

    .line 191
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 192
    .restart local v1  # "bundle":Landroid/os/Bundle;
    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 193
    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 194
    iget-object v2, p0, Lcom/android/server/os/SceneBoostStrategy;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 195
    .end local v0  # "msg":Landroid/os/Message;
    .end local v1  # "bundle":Landroid/os/Bundle;
    goto :goto_aa

    :cond_65
    invoke-virtual {p1}, Landroid/scene/Scene;->getSceneClass()I

    move-result v0

    const/16 v1, 0x11

    if-ne v0, v1, :cond_87

    .line 196
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 197
    .restart local v0  # "msg":Landroid/os/Message;
    const/16 v1, 0x113

    iput v1, v0, Landroid/os/Message;->what:I

    .line 198
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 199
    .restart local v1  # "bundle":Landroid/os/Bundle;
    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 200
    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 201
    iget-object v2, p0, Lcom/android/server/os/SceneBoostStrategy;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .end local v0  # "msg":Landroid/os/Message;
    .end local v1  # "bundle":Landroid/os/Bundle;
    goto :goto_a9

    .line 202
    :cond_87
    invoke-virtual {p1}, Landroid/scene/Scene;->getSceneClass()I

    move-result v0

    const/16 v1, 0x12

    if-ne v0, v1, :cond_a9

    .line 203
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 204
    .restart local v0  # "msg":Landroid/os/Message;
    const/16 v1, 0x114

    iput v1, v0, Landroid/os/Message;->what:I

    .line 205
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 206
    .restart local v1  # "bundle":Landroid/os/Bundle;
    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 207
    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 208
    iget-object v2, p0, Lcom/android/server/os/SceneBoostStrategy;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_aa

    .line 202
    .end local v0  # "msg":Landroid/os/Message;
    .end local v1  # "bundle":Landroid/os/Bundle;
    :cond_a9
    :goto_a9
    nop

    .line 211
    :goto_aa
    return-void
.end method

.method private setSchedAffinity([II)V
    .registers 6
    .param p1, "pids"  # [I
    .param p2, "flag"  # I

    .line 664
    if-eqz p1, :cond_17

    array-length v0, p1

    if-lez v0, :cond_17

    .line 665
    array-length v0, p1

    const/4 v1, 0x0

    :goto_7
    if-ge v1, v0, :cond_17

    aget v2, p1, v1

    .line 666
    .local v2, "pid":I
    if-lez p2, :cond_11

    .line 667
    invoke-static {v2}, Lcom/meizu/affinityctrl/AffinityCtrlJNI;->bindBigCore(I)V

    goto :goto_14

    .line 669
    :cond_11
    invoke-static {v2}, Lcom/meizu/affinityctrl/AffinityCtrlJNI;->cancerBindCore(I)V

    .line 665
    .end local v2  # "pid":I
    :goto_14
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 673
    :cond_17
    return-void
.end method

.method private setThermalMode(I)V
    .registers 3
    .param p1, "mode"  # I

    .line 732
    const/4 v0, 0x2

    if-eq p1, v0, :cond_19

    const/4 v0, 0x3

    if-eq p1, v0, :cond_15

    const/4 v0, 0x4

    if-eq p1, v0, :cond_11

    const/4 v0, 0x5

    if-eq p1, v0, :cond_d

    goto :goto_1c

    .line 734
    :cond_d
    invoke-static {v0}, Lcom/android/server/os/IntelligentThermalManager;->handleThermalChange(I)V

    .line 735
    goto :goto_1c

    .line 737
    :cond_11
    invoke-static {v0}, Lcom/android/server/os/IntelligentThermalManager;->handleThermalChange(I)V

    .line 738
    goto :goto_1c

    .line 740
    :cond_15
    invoke-static {v0}, Lcom/android/server/os/IntelligentThermalManager;->handleThermalChange(I)V

    .line 741
    goto :goto_1c

    .line 743
    :cond_19
    invoke-static {v0}, Lcom/android/server/os/IntelligentThermalManager;->handleThermalChange(I)V

    .line 745
    :goto_1c
    return-void
.end method


# virtual methods
.method public disableStrategy()Z
    .registers 4

    .line 714
    iget-object v0, p0, Lcom/android/server/os/SceneBoostStrategy;->mRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_a

    .line 715
    return v1

    .line 717
    :cond_a
    invoke-static {}, Landroid/scene/SceneClient;->getInstance()Landroid/scene/SceneClient;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/os/SceneBoostStrategy;->mSceneReceiver:Landroid/scene/SceneReceiver;

    invoke-virtual {v0, v2}, Landroid/scene/SceneClient;->unregisterSceneReceiver(Landroid/scene/SceneReceiver;)V

    .line 718
    iget-object v0, p0, Lcom/android/server/os/SceneBoostStrategy;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    if-eqz v0, :cond_1b

    .line 719
    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 722
    :cond_1b
    iget-object v0, p0, Lcom/android/server/os/SceneBoostStrategy;->mHandlerThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_24

    .line 723
    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z

    .line 724
    iput-object v2, p0, Lcom/android/server/os/SceneBoostStrategy;->mHandlerThread:Landroid/os/HandlerThread;

    .line 726
    :cond_24
    invoke-direct {p0}, Lcom/android/server/os/SceneBoostStrategy;->nativeClose()V

    .line 727
    iget-object v0, p0, Lcom/android/server/os/SceneBoostStrategy;->mRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 728
    const/4 v0, 0x1

    return v0
.end method

.method public enableStrategy()Z
    .registers 3

    .line 702
    iget-object v0, p0, Lcom/android/server/os/SceneBoostStrategy;->mRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 703
    const/4 v0, 0x0

    return v0

    .line 705
    :cond_a
    invoke-direct {p0}, Lcom/android/server/os/SceneBoostStrategy;->init()V

    .line 706
    invoke-static {}, Landroid/scene/SceneClient;->getInstance()Landroid/scene/SceneClient;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/os/SceneBoostStrategy;->mSceneReceiver:Landroid/scene/SceneReceiver;

    invoke-virtual {v0, v1}, Landroid/scene/SceneClient;->registerSceneReceiver(Landroid/scene/SceneReceiver;)V

    .line 707
    iget-object v0, p0, Lcom/android/server/os/SceneBoostStrategy;->mRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 708
    return v1
.end method
