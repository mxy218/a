.class public Lcom/android/server/sence/SceneService;
.super Landroid/scene/SceneServiceNative;
.source "SceneService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/sence/SceneService$AppDeathRecipient;
    }
.end annotation


# static fields
.field private static final ALLOWUID:[I

.field private static final BUS:I = 0x2

.field private static final CPU:I = 0x0

.field private static final DEFAULT_WHITE_LIST_FILE_PATH:Ljava/lang/String; = "/system/etc/perf_scene_register_allow_config.conf"

.field private static final DUMP_PERMISSION:Ljava/lang/String; = "android.permission.DUMP"

.field private static final GPU:I = 0x1

.field private static final IO:I = 0x3

.field private static final MEM:I = 0x4

.field private static final RES_MAX:I = 0x5

.field private static RES_MAX_LEVEL:[I = null

.field private static final RES_NAME:[Ljava/lang/String;

.field public static final SERVER_NAME:Ljava/lang/String; = "scene_server"

.field private static final TAG:Ljava/lang/String; = "SceneService"

.field private static final WHITE_LIST_FILE_PATH:Ljava/lang/String; = "/data/system/perf_scene_register_allow_config.conf"

.field private static mConfigs:Lcom/android/server/os/StrategyConfig;

.field private static mResourceInfo:Landroid/scene/ResourceInfo;


# instance fields
.field private final mAppClientMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/os/IBinder;",
            "Lcom/android/server/sence/SceneDispatcherClient;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private mSceneManager:Lcom/android/server/sence/SceneManager;

.field private final mSceneMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/android/server/sence/SceneDispatcherClient;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .line 39
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x3e8

    aput v2, v0, v1

    sput-object v0, Lcom/android/server/sence/SceneService;->ALLOWUID:[I

    .line 42
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/sence/SceneService;->mConfigs:Lcom/android/server/os/StrategyConfig;

    .line 56
    const-string v1, "cpu_level"

    const-string v2, "gpu_level"

    const-string v3, "bus_level"

    const-string/jumbo v4, "io_level"

    const-string/jumbo v5, "mem_level"

    filled-new-array {v1, v2, v3, v4, v5}, [Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/server/sence/SceneService;->RES_NAME:[Ljava/lang/String;

    .line 57
    const/4 v1, 0x5

    new-array v1, v1, [I

    fill-array-data v1, :array_2a

    sput-object v1, Lcom/android/server/sence/SceneService;->RES_MAX_LEVEL:[I

    .line 58
    sput-object v0, Lcom/android/server/sence/SceneService;->mResourceInfo:Landroid/scene/ResourceInfo;

    return-void

    :array_2a
    .array-data 4
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"  # Landroid/content/Context;

    .line 60
    invoke-direct {p0}, Landroid/scene/SceneServiceNative;-><init>()V

    .line 43
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/sence/SceneService;->mAppClientMap:Ljava/util/HashMap;

    .line 44
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/sence/SceneService;->mSceneMap:Ljava/util/HashMap;

    .line 61
    const-string v0, "SceneService"

    const-string v1, "enter init"

    invoke-static {v0, v1}, Landroid/scene/SceneUtils;->logSceneDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    invoke-static {}, Lcom/android/server/sence/SceneService;->loadConfig()V

    .line 63
    iput-object p1, p0, Lcom/android/server/sence/SceneService;->mContext:Landroid/content/Context;

    .line 64
    new-instance v1, Lcom/android/server/sence/SceneManager;

    invoke-direct {v1, p0}, Lcom/android/server/sence/SceneManager;-><init>(Lcom/android/server/sence/SceneService;)V

    iput-object v1, p0, Lcom/android/server/sence/SceneService;->mSceneManager:Lcom/android/server/sence/SceneManager;

    .line 65
    const-string v1, "exit init"

    invoke-static {v0, v1}, Landroid/scene/SceneUtils;->logSceneDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/sence/SceneService;Landroid/os/IBinder;)V
    .registers 2
    .param p0, "x0"  # Lcom/android/server/sence/SceneService;
    .param p1, "x1"  # Landroid/os/IBinder;

    .line 36
    invoke-direct {p0, p1}, Lcom/android/server/sence/SceneService;->removeClientLock(Landroid/os/IBinder;)V

    return-void
.end method

.method private addClientLock(Landroid/os/IBinder;I)V
    .registers 6
    .param p1, "client"  # Landroid/os/IBinder;
    .param p2, "pid"  # I

    .line 137
    if-nez p1, :cond_3

    return-void

    .line 139
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "add client："

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " pid: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SceneService"

    invoke-static {v1, v0}, Landroid/scene/SceneUtils;->logSceneDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    iget-object v0, p0, Lcom/android/server/sence/SceneService;->mAppClientMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/sence/SceneDispatcherClient;

    .line 142
    .local v0, "appClient":Lcom/android/server/sence/SceneDispatcherClient;
    if-eqz v0, :cond_39

    iget-object v2, v0, Lcom/android/server/sence/SceneDispatcherClient;->client:Landroid/scene/ISceneDispatcher;

    invoke-interface {v2}, Landroid/scene/ISceneDispatcher;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    if-ne v2, p1, :cond_39

    .line 143
    const-string v2, "client is already added"

    invoke-static {v1, v2}, Landroid/scene/SceneUtils;->logSceneError(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    return-void

    .line 146
    :cond_39
    new-instance v1, Lcom/android/server/sence/SceneDispatcherClient;

    invoke-direct {v1, p1, p2}, Lcom/android/server/sence/SceneDispatcherClient;-><init>(Landroid/os/IBinder;I)V

    move-object v0, v1

    .line 147
    new-instance v1, Lcom/android/server/sence/SceneService$AppDeathRecipient;

    invoke-direct {v1, p0, p1}, Lcom/android/server/sence/SceneService$AppDeathRecipient;-><init>(Lcom/android/server/sence/SceneService;Landroid/os/IBinder;)V

    invoke-virtual {v0, v1}, Lcom/android/server/sence/SceneDispatcherClient;->linkToDeath(Landroid/os/IBinder$DeathRecipient;)V

    .line 148
    iget-object v1, p0, Lcom/android/server/sence/SceneService;->mAppClientMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    return-void
.end method

.method private checkPermission(I)Z
    .registers 3
    .param p1, "uid"  # I

    .line 290
    invoke-direct {p0, p1}, Lcom/android/server/sence/SceneService;->isSystemUid(I)Z

    move-result v0

    if-nez v0, :cond_f

    invoke-direct {p0, p1}, Lcom/android/server/sence/SceneService;->isAllowedApp(I)Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_f

    :cond_d
    const/4 v0, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 v0, 0x1

    :goto_10
    return v0
.end method

.method private getClientLock(Landroid/os/IBinder;)Lcom/android/server/sence/SceneDispatcherClient;
    .registers 3
    .param p1, "client"  # Landroid/os/IBinder;

    .line 133
    iget-object v0, p0, Lcom/android/server/sence/SceneService;->mAppClientMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/sence/SceneDispatcherClient;

    return-object v0
.end method

.method public static internelGetResourceInfo()Landroid/scene/ResourceInfo;
    .registers 1

    .line 103
    sget-object v0, Lcom/android/server/sence/SceneService;->mConfigs:Lcom/android/server/os/StrategyConfig;

    if-nez v0, :cond_7

    .line 104
    invoke-static {}, Lcom/android/server/sence/SceneService;->loadConfig()V

    .line 106
    :cond_7
    sget-object v0, Lcom/android/server/sence/SceneService;->mResourceInfo:Landroid/scene/ResourceInfo;

    return-object v0
.end method

.method private isAllowedApp(I)Z
    .registers 5
    .param p1, "uid"  # I

    .line 275
    sget-object v0, Lcom/android/server/sence/SceneService;->mConfigs:Lcom/android/server/os/StrategyConfig;

    if-nez v0, :cond_6

    .line 276
    const/4 v0, 0x0

    return v0

    .line 278
    :cond_6
    iget-object v0, p0, Lcom/android/server/sence/SceneService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v0

    .line 280
    .local v0, "packageName":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "check permission for："

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SceneService"

    invoke-static {v2, v1}, Landroid/scene/SceneUtils;->logSceneDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 282
    sget-object v1, Lcom/android/server/sence/SceneService;->mConfigs:Lcom/android/server/os/StrategyConfig;

    invoke-virtual {v1}, Lcom/android/server/os/StrategyConfig;->getConfig()Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method private isSystemScene(Landroid/scene/Scene;)Z
    .registers 4
    .param p1, "scene"  # Landroid/scene/Scene;

    .line 294
    invoke-virtual {p1}, Landroid/scene/Scene;->getSceneClass()I

    move-result v0

    .line 295
    .local v0, "sceneClass":I
    const/4 v1, 0x1

    if-eq v0, v1, :cond_b

    if-nez v0, :cond_a

    goto :goto_b

    :cond_a
    const/4 v1, 0x0

    :cond_b
    :goto_b
    return v1
.end method

.method private isSystemUid(I)Z
    .registers 3
    .param p1, "uid"  # I

    .line 286
    const/16 v0, 0x3e8

    if-ne p1, v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public static loadConfig()V
    .registers 8

    .line 69
    const/4 v0, 0x0

    const-string v1, "SceneAllowedAppsConfig"

    const-string v2, "/data/system/perf_scene_register_allow_config.conf"

    const-string v3, "/system/etc/perf_scene_register_allow_config.conf"

    invoke-static {v1, v2, v3, v0}, Lcom/android/server/os/StrategyConfigFactory;->loadConfig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Lcom/android/server/os/StrategyConfig;

    move-result-object v1

    sput-object v1, Lcom/android/server/sence/SceneService;->mConfigs:Lcom/android/server/os/StrategyConfig;

    .line 71
    sget-object v1, Lcom/android/server/sence/SceneService;->mConfigs:Lcom/android/server/os/StrategyConfig;

    if-nez v1, :cond_1a

    .line 72
    const-string v0, "SceneService"

    const-string/jumbo v1, "no resource range info config"

    invoke-static {v0, v1}, Landroid/scene/SceneUtils;->logSceneError(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    return-void

    .line 76
    :cond_1a
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1b
    const/4 v2, 0x5

    const/4 v3, 0x1

    if-ge v1, v2, :cond_58

    .line 77
    sget-object v2, Lcom/android/server/sence/SceneService;->mConfigs:Lcom/android/server/os/StrategyConfig;

    invoke-virtual {v2}, Lcom/android/server/os/StrategyConfig;->getConfig()Ljava/util/HashMap;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/android/server/sence/SceneService;->RES_NAME:[Ljava/lang/String;

    aget-object v5, v5, v1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "_max"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    .line 78
    .local v2, "resMaxLevel":[Ljava/lang/String;
    if-eqz v2, :cond_55

    array-length v4, v2

    if-ne v4, v3, :cond_55

    .line 79
    aget-object v3, v2, v0

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 80
    .local v3, "l":I
    if-lez v3, :cond_55

    const/16 v4, 0x64

    if-ge v3, v4, :cond_55

    .line 81
    sget-object v4, Lcom/android/server/sence/SceneService;->RES_MAX_LEVEL:[I

    aput v3, v4, v1

    .line 76
    .end local v2  # "resMaxLevel":[Ljava/lang/String;
    .end local v3  # "l":I
    :cond_55
    add-int/lit8 v1, v1, 0x1

    goto :goto_1b

    .line 86
    .end local v1  # "i":I
    :cond_58
    new-instance v1, Landroid/scene/ResourceInfo;

    invoke-direct {v1}, Landroid/scene/ResourceInfo;-><init>()V

    sput-object v1, Lcom/android/server/sence/SceneService;->mResourceInfo:Landroid/scene/ResourceInfo;

    .line 87
    sget-object v1, Lcom/android/server/sence/SceneService;->mResourceInfo:Landroid/scene/ResourceInfo;

    sget-object v2, Lcom/android/server/sence/SceneService;->RES_MAX_LEVEL:[I

    aget v2, v2, v0

    const/4 v4, -0x1

    if-ne v2, v4, :cond_6a

    move v2, v4

    goto :goto_6b

    :cond_6a
    move v2, v0

    :goto_6b
    iput v2, v1, Landroid/scene/ResourceInfo;->CPU_LEVEL_MIN:I

    .line 88
    sget-object v1, Lcom/android/server/sence/SceneService;->mResourceInfo:Landroid/scene/ResourceInfo;

    sget-object v2, Lcom/android/server/sence/SceneService;->RES_MAX_LEVEL:[I

    aget v2, v2, v3

    if-ne v2, v4, :cond_77

    move v2, v4

    goto :goto_78

    :cond_77
    move v2, v0

    :goto_78
    iput v2, v1, Landroid/scene/ResourceInfo;->GPU_LEVEL_MIN:I

    .line 89
    sget-object v1, Lcom/android/server/sence/SceneService;->mResourceInfo:Landroid/scene/ResourceInfo;

    sget-object v2, Lcom/android/server/sence/SceneService;->RES_MAX_LEVEL:[I

    const/4 v5, 0x2

    aget v2, v2, v5

    if-ne v2, v4, :cond_85

    move v2, v4

    goto :goto_86

    :cond_85
    move v2, v0

    :goto_86
    iput v2, v1, Landroid/scene/ResourceInfo;->BUS_LEVEL_MIN:I

    .line 90
    sget-object v1, Lcom/android/server/sence/SceneService;->mResourceInfo:Landroid/scene/ResourceInfo;

    sget-object v2, Lcom/android/server/sence/SceneService;->RES_MAX_LEVEL:[I

    const/4 v6, 0x3

    aget v2, v2, v6

    if-ne v2, v4, :cond_93

    move v2, v4

    goto :goto_94

    :cond_93
    move v2, v0

    :goto_94
    iput v2, v1, Landroid/scene/ResourceInfo;->IO_LEVEL_MIN:I

    .line 91
    sget-object v1, Lcom/android/server/sence/SceneService;->mResourceInfo:Landroid/scene/ResourceInfo;

    sget-object v2, Lcom/android/server/sence/SceneService;->RES_MAX_LEVEL:[I

    const/4 v7, 0x4

    aget v2, v2, v7

    if-ne v2, v4, :cond_a0

    goto :goto_a1

    :cond_a0
    move v4, v0

    :goto_a1
    iput v4, v1, Landroid/scene/ResourceInfo;->MEM_LEVEL_MIN:I

    .line 92
    sget-object v1, Lcom/android/server/sence/SceneService;->mResourceInfo:Landroid/scene/ResourceInfo;

    sget-object v2, Lcom/android/server/sence/SceneService;->RES_MAX_LEVEL:[I

    aget v0, v2, v0

    iput v0, v1, Landroid/scene/ResourceInfo;->CPU_LEVEL_MAX:I

    .line 93
    aget v0, v2, v3

    iput v0, v1, Landroid/scene/ResourceInfo;->GPU_LEVEL_MAX:I

    .line 94
    aget v0, v2, v5

    iput v0, v1, Landroid/scene/ResourceInfo;->BUS_LEVEL_MAX:I

    .line 95
    aget v0, v2, v6

    iput v0, v1, Landroid/scene/ResourceInfo;->IO_LEVEL_MAX:I

    .line 96
    aget v0, v2, v7

    iput v0, v1, Landroid/scene/ResourceInfo;->MEM_LEVEL_MAX:I

    .line 97
    return-void
.end method

.method private removeClientLock(Landroid/os/IBinder;)V
    .registers 5
    .param p1, "client"  # Landroid/os/IBinder;

    .line 152
    if-nez p1, :cond_3

    return-void

    .line 153
    :cond_3
    iget-object v0, p0, Lcom/android/server/sence/SceneService;->mAppClientMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/sence/SceneDispatcherClient;

    .line 154
    .local v0, "appClient":Lcom/android/server/sence/SceneDispatcherClient;
    if-eqz v0, :cond_46

    .line 155
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "remove client："

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " pid: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Lcom/android/server/sence/SceneDispatcherClient;->pid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SceneService"

    invoke-static {v2, v1}, Landroid/scene/SceneUtils;->logSceneDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    iget-object v1, p0, Lcom/android/server/sence/SceneService;->mAppClientMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    iget-object v1, v0, Lcom/android/server/sence/SceneDispatcherClient;->scenes:Landroid/util/ArraySet;

    monitor-enter v1

    .line 158
    :try_start_36
    iget-object v2, v0, Lcom/android/server/sence/SceneDispatcherClient;->scenes:Landroid/util/ArraySet;

    invoke-virtual {v2}, Landroid/util/ArraySet;->clear()V

    .line 159
    monitor-exit v1
    :try_end_3c
    .catchall {:try_start_36 .. :try_end_3c} :catchall_43

    .line 160
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/server/sence/SceneDispatcherClient;->active:Z

    .line 161
    invoke-virtual {v0}, Lcom/android/server/sence/SceneDispatcherClient;->unlinkDeathRecipient()V

    goto :goto_46

    .line 159
    :catchall_43
    move-exception v2

    :try_start_44
    monitor-exit v1
    :try_end_45
    .catchall {:try_start_44 .. :try_end_45} :catchall_43

    throw v2

    .line 163
    :cond_46
    :goto_46
    return-void
.end method


# virtual methods
.method public addClient(Landroid/os/IBinder;)V
    .registers 5
    .param p1, "client"  # Landroid/os/IBinder;

    .line 111
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 112
    .local v0, "uid":I
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    .line 113
    .local v1, "pid":I
    invoke-direct {p0, v0}, Lcom/android/server/sence/SceneService;->checkPermission(I)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 114
    invoke-direct {p0, p1, v1}, Lcom/android/server/sence/SceneService;->addClientLock(Landroid/os/IBinder;I)V

    .line 116
    :cond_11
    return-void
.end method

.method public addClientScene(Landroid/os/IBinder;Landroid/util/ArraySet;)V
    .registers 10
    .param p1, "client"  # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/IBinder;",
            "Landroid/util/ArraySet<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 167
    .local p2, "scenes":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Integer;>;"
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 168
    .local v0, "uid":I
    invoke-direct {p0, v0}, Lcom/android/server/sence/SceneService;->checkPermission(I)Z

    move-result v1

    if-eqz v1, :cond_b2

    .line 169
    if-eqz p1, :cond_b1

    if-eqz p2, :cond_b1

    invoke-virtual {p2}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_16

    goto/16 :goto_b1

    .line 170
    :cond_16
    invoke-direct {p0, p1}, Lcom/android/server/sence/SceneService;->getClientLock(Landroid/os/IBinder;)Lcom/android/server/sence/SceneDispatcherClient;

    move-result-object v1

    .line 171
    .local v1, "appClient":Lcom/android/server/sence/SceneDispatcherClient;
    sget-boolean v2, Landroid/scene/SceneUtils;->DEBUG:Z

    if-eqz v2, :cond_5b

    .line 172
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "add scene for client："

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "SceneService"

    invoke-static {v3, v2}, Landroid/scene/SceneUtils;->logSceneInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    invoke-virtual {p2}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_38
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 174
    .local v3, "scene":Ljava/lang/Integer;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "SceneService"

    invoke-static {v5, v4}, Landroid/scene/SceneUtils;->logSceneInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    .end local v3  # "scene":Ljava/lang/Integer;
    goto :goto_38

    .line 177
    :cond_5b
    if-eqz v1, :cond_b0

    iget-boolean v2, v1, Lcom/android/server/sence/SceneDispatcherClient;->active:Z

    if-eqz v2, :cond_b0

    iget-object v2, v1, Lcom/android/server/sence/SceneDispatcherClient;->client:Landroid/scene/ISceneDispatcher;

    .line 178
    invoke-interface {v2}, Landroid/scene/ISceneDispatcher;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    if-eq v2, p1, :cond_6a

    goto :goto_b0

    .line 182
    :cond_6a
    iget-object v2, v1, Lcom/android/server/sence/SceneDispatcherClient;->scenes:Landroid/util/ArraySet;

    invoke-virtual {v2, p2}, Landroid/util/ArraySet;->addAll(Landroid/util/ArraySet;)V

    .line 183
    invoke-virtual {p2}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_73
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_b2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 184
    .restart local v3  # "scene":Ljava/lang/Integer;
    iget-object v4, p0, Lcom/android/server/sence/SceneService;->mSceneMap:Ljava/util/HashMap;

    monitor-enter v4

    .line 185
    :try_start_82
    iget-object v5, p0, Lcom/android/server/sence/SceneService;->mSceneMap:Ljava/util/HashMap;

    invoke-virtual {v5, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_9a

    .line 186
    iget-object v5, p0, Lcom/android/server/sence/SceneService;->mSceneMap:Ljava/util/HashMap;

    invoke-virtual {v5, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {p0, p1}, Lcom/android/server/sence/SceneService;->getClientLock(Landroid/os/IBinder;)Lcom/android/server/sence/SceneDispatcherClient;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_ab

    .line 188
    :cond_9a
    new-instance v5, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v5}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .line 189
    .local v5, "dispatchers":Ljava/util/concurrent/CopyOnWriteArrayList;, "Ljava/util/concurrent/CopyOnWriteArrayList<Lcom/android/server/sence/SceneDispatcherClient;>;"
    invoke-direct {p0, p1}, Lcom/android/server/sence/SceneService;->getClientLock(Landroid/os/IBinder;)Lcom/android/server/sence/SceneDispatcherClient;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 190
    iget-object v6, p0, Lcom/android/server/sence/SceneService;->mSceneMap:Ljava/util/HashMap;

    invoke-virtual {v6, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 192
    .end local v5  # "dispatchers":Ljava/util/concurrent/CopyOnWriteArrayList;, "Ljava/util/concurrent/CopyOnWriteArrayList<Lcom/android/server/sence/SceneDispatcherClient;>;"
    :goto_ab
    monitor-exit v4

    .line 193
    .end local v3  # "scene":Ljava/lang/Integer;
    goto :goto_73

    .line 192
    .restart local v3  # "scene":Ljava/lang/Integer;
    :catchall_ad
    move-exception v2

    monitor-exit v4
    :try_end_af
    .catchall {:try_start_82 .. :try_end_af} :catchall_ad

    throw v2

    .line 179
    .end local v3  # "scene":Ljava/lang/Integer;
    :cond_b0
    :goto_b0
    return-void

    .line 169
    .end local v1  # "appClient":Lcom/android/server/sence/SceneDispatcherClient;
    :cond_b1
    :goto_b1
    return-void

    .line 195
    :cond_b2
    return-void
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 12
    .param p1, "fd"  # Ljava/io/FileDescriptor;
    .param p2, "pw"  # Ljava/io/PrintWriter;
    .param p3, "args"  # [Ljava/lang/String;

    .line 301
    iget-object v0, p0, Lcom/android/server/sence/SceneService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.DUMP"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_2f

    .line 303
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Permission Denial: can\'t dump SceneServer Info from pid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 304
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", uid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 303
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 305
    return-void

    .line 308
    :cond_2f
    const/4 v0, 0x0

    if-nez p3, :cond_34

    move v1, v0

    goto :goto_35

    :cond_34
    array-length v1, p3

    .line 309
    .local v1, "length":I
    :goto_35
    if-nez v1, :cond_5d

    .line 310
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 311
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v2, "Usage:adb shell dumpsys scene_server [options]\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 312
    const-string v2, "[options]\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 313
    const-string v2, "  --all\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 314
    const-string v2, "  --scene\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 315
    const-string v2, "  --debug\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 316
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 317
    return-void

    .line 320
    .end local v0  # "sb":Ljava/lang/StringBuilder;
    :cond_5d
    aget-object v2, p3, v0

    const-string v3, "--all"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_115

    .line 321
    const-string v0, "--------------------------------------------------------------------"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 322
    const/4 v0, 0x0

    .local v0, "i":I
    const/4 v2, 0x0

    .line 323
    .local v2, "j":I
    const-string v3, "Register client:"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 324
    const-string v3, ""

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 325
    iget-object v4, p0, Lcom/android/server/sence/SceneService;->mAppClientMap:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_82
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const-string v6, "#"

    if-eqz v5, :cond_ac

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/sence/SceneDispatcherClient;

    .line 326
    .local v5, "client":Lcom/android/server/sence/SceneDispatcherClient;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v6, v0, 0x1

    .end local v0  # "i":I
    .local v6, "i":I
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 327
    invoke-virtual {v5, p2}, Lcom/android/server/sence/SceneDispatcherClient;->dump(Ljava/io/PrintWriter;)V

    .line 328
    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 329
    .end local v5  # "client":Lcom/android/server/sence/SceneDispatcherClient;
    move v0, v6

    goto :goto_82

    .line 331
    .end local v6  # "i":I
    .restart local v0  # "i":I
    :cond_ac
    const-string v4, "Scene receiver:"

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 332
    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 333
    iget-object v3, p0, Lcom/android/server/sence/SceneService;->mSceneMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 334
    .local v3, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :goto_be
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_10f

    .line 335
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v5, v2, 0x1

    .end local v2  # "j":I
    .local v5, "j":I
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 336
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 337
    .local v2, "scene":Ljava/lang/Integer;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "scene: "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 338
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Client: "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/android/server/sence/SceneService;->mSceneMap:Ljava/util/HashMap;

    invoke-virtual {v7, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 339
    .end local v2  # "scene":Ljava/lang/Integer;
    move v2, v5

    goto :goto_be

    .line 340
    .end local v5  # "j":I
    .local v2, "j":I
    :cond_10f
    iget-object v4, p0, Lcom/android/server/sence/SceneService;->mSceneManager:Lcom/android/server/sence/SceneManager;

    invoke-virtual {v4, p2}, Lcom/android/server/sence/SceneManager;->dump(Ljava/io/PrintWriter;)V

    .line 341
    .end local v0  # "i":I
    .end local v2  # "j":I
    .end local v3  # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    goto :goto_138

    :cond_115
    aget-object v2, p3, v0

    const-string v3, "--scene"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12b

    .line 342
    const-string/jumbo v0, "register scene:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 343
    iget-object v0, p0, Lcom/android/server/sence/SceneService;->mSceneManager:Lcom/android/server/sence/SceneManager;

    invoke-virtual {v0, p2}, Lcom/android/server/sence/SceneManager;->dump(Ljava/io/PrintWriter;)V

    goto :goto_138

    .line 344
    :cond_12b
    aget-object v0, p3, v0

    const-string v2, "--debug"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_138

    .line 345
    const/4 v0, 0x1

    sput-boolean v0, Landroid/scene/SceneUtils;->DEBUG:Z

    .line 347
    :cond_138
    :goto_138
    return-void
.end method

.method getDispatchers(Ljava/lang/Integer;)Ljava/util/concurrent/CopyOnWriteArrayList;
    .registers 4
    .param p1, "scene"  # Ljava/lang/Integer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Integer;",
            ")",
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/android/server/sence/SceneDispatcherClient;",
            ">;"
        }
    .end annotation

    .line 127
    iget-object v0, p0, Lcom/android/server/sence/SceneService;->mSceneMap:Ljava/util/HashMap;

    monitor-enter v0

    .line 128
    :try_start_3
    iget-object v1, p0, Lcom/android/server/sence/SceneService;->mSceneMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    monitor-exit v0

    return-object v1

    .line 129
    :catchall_d
    move-exception v1

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw v1
.end method

.method public getResourceInfo()Landroid/scene/ResourceInfo;
    .registers 3

    .line 244
    const-string v0, "SceneService"

    const-string v1, "get Resource range"

    invoke-static {v0, v1}, Landroid/scene/SceneUtils;->logSceneDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/server/sence/SceneService;->checkPermission(I)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 247
    invoke-static {}, Lcom/android/server/sence/SceneService;->internelGetResourceInfo()Landroid/scene/ResourceInfo;

    move-result-object v0

    return-object v0

    .line 249
    :cond_16
    const-string v1, "caller is not be allowed."

    invoke-static {v0, v1}, Landroid/scene/SceneUtils;->logSceneWarn(Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    const/4 v0, 0x0

    return-object v0
.end method

.method public notifyScene(Landroid/scene/Scene;)V
    .registers 4
    .param p1, "scene"  # Landroid/scene/Scene;

    .line 234
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "notify scene "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/scene/Scene;->getSceneId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/scene/Scene;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SceneService"

    invoke-static {v1, v0}, Landroid/scene/SceneUtils;->logSceneDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    invoke-direct {p0, p1}, Lcom/android/server/sence/SceneService;->isSystemScene(Landroid/scene/Scene;)Z

    move-result v0

    if-nez v0, :cond_37

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/sence/SceneService;->checkPermission(I)Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 237
    :cond_37
    iget-object v0, p0, Lcom/android/server/sence/SceneService;->mSceneManager:Lcom/android/server/sence/SceneManager;

    invoke-virtual {v0, p1}, Lcom/android/server/sence/SceneManager;->enqueueScene(Landroid/scene/Scene;)V

    .line 239
    :cond_3c
    return-void
.end method

.method public notifySurfaceFlingerUpdate()V
    .registers 7

    .line 257
    const-string v0, "SceneService"

    const-string v1, "SurfaceFlinger"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    .line 258
    .local v1, "mSurfaceFlinger":Landroid/os/IBinder;
    if-eqz v1, :cond_32

    .line 259
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 260
    .local v2, "data":Landroid/os/Parcel;
    const-string v3, "android.ui.ISurfaceComposer"

    invoke-virtual {v2, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 262
    const/16 v3, 0x4e21

    const/4 v4, 0x0

    const/4 v5, 0x0

    :try_start_17
    invoke-interface {v1, v3, v2, v4, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_17 .. :try_end_1a} :catch_27
    .catch Ljava/lang/SecurityException; {:try_start_17 .. :try_end_1a} :catch_20
    .catchall {:try_start_17 .. :try_end_1a} :catchall_1e

    .line 268
    :goto_1a
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 269
    goto :goto_32

    .line 268
    :catchall_1e
    move-exception v0

    goto :goto_2e

    .line 265
    :catch_20
    move-exception v3

    .line 266
    .local v3, "e":Ljava/lang/SecurityException;
    :try_start_21
    const-string v4, "Security Exception"

    invoke-static {v0, v4}, Landroid/scene/SceneUtils;->logSceneWarn(Ljava/lang/String;Ljava/lang/String;)V

    .end local v3  # "e":Ljava/lang/SecurityException;
    goto :goto_1a

    .line 263
    :catch_27
    move-exception v3

    .line 264
    .local v3, "e":Landroid/os/RemoteException;
    const-string v4, "Remote Exception"

    invoke-static {v0, v4}, Landroid/scene/SceneUtils;->logSceneWarn(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2d
    .catchall {:try_start_21 .. :try_end_2d} :catchall_1e

    .end local v3  # "e":Landroid/os/RemoteException;
    goto :goto_1a

    .line 268
    :goto_2e
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    throw v0

    .line 271
    .end local v2  # "data":Landroid/os/Parcel;
    :cond_32
    :goto_32
    return-void
.end method

.method public removeClient(Landroid/os/IBinder;)V
    .registers 4
    .param p1, "client"  # Landroid/os/IBinder;

    .line 120
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 121
    .local v0, "uid":I
    invoke-direct {p0, v0}, Lcom/android/server/sence/SceneService;->checkPermission(I)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 122
    invoke-direct {p0, p1}, Lcom/android/server/sence/SceneService;->removeClientLock(Landroid/os/IBinder;)V

    .line 124
    :cond_d
    return-void
.end method

.method public removeClientScene(Landroid/os/IBinder;Landroid/util/ArraySet;)V
    .registers 10
    .param p1, "client"  # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/IBinder;",
            "Landroid/util/ArraySet<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 199
    .local p2, "scenes":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Integer;>;"
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 200
    .local v0, "uid":I
    invoke-direct {p0, v0}, Lcom/android/server/sence/SceneService;->checkPermission(I)Z

    move-result v1

    if-eqz v1, :cond_af

    .line 201
    if-eqz p1, :cond_ae

    if-eqz p2, :cond_ae

    invoke-virtual {p2}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_16

    goto/16 :goto_ae

    .line 202
    :cond_16
    invoke-direct {p0, p1}, Lcom/android/server/sence/SceneService;->getClientLock(Landroid/os/IBinder;)Lcom/android/server/sence/SceneDispatcherClient;

    move-result-object v1

    .line 203
    .local v1, "appClient":Lcom/android/server/sence/SceneDispatcherClient;
    sget-boolean v2, Landroid/scene/SceneUtils;->DEBUG:Z

    if-eqz v2, :cond_5c

    .line 204
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "remove scene for client："

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "SceneService"

    invoke-static {v3, v2}, Landroid/scene/SceneUtils;->logSceneInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    invoke-virtual {p2}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_39
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 206
    .local v3, "scene":Ljava/lang/Integer;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "SceneService"

    invoke-static {v5, v4}, Landroid/scene/SceneUtils;->logSceneInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    .end local v3  # "scene":Ljava/lang/Integer;
    goto :goto_39

    .line 209
    :cond_5c
    if-eqz v1, :cond_ad

    iget-boolean v2, v1, Lcom/android/server/sence/SceneDispatcherClient;->active:Z

    if-eqz v2, :cond_ad

    iget-object v2, v1, Lcom/android/server/sence/SceneDispatcherClient;->client:Landroid/scene/ISceneDispatcher;

    .line 210
    invoke-interface {v2}, Landroid/scene/ISceneDispatcher;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    if-eq v2, p1, :cond_6b

    goto :goto_ad

    .line 214
    :cond_6b
    iget-object v2, v1, Lcom/android/server/sence/SceneDispatcherClient;->scenes:Landroid/util/ArraySet;

    invoke-virtual {v2, p2}, Landroid/util/ArraySet;->removeAll(Landroid/util/ArraySet;)Z

    .line 215
    iget-object v2, v1, Lcom/android/server/sence/SceneDispatcherClient;->scenes:Landroid/util/ArraySet;

    invoke-virtual {v2}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_7b

    .line 216
    invoke-direct {p0, p1}, Lcom/android/server/sence/SceneService;->removeClientLock(Landroid/os/IBinder;)V

    .line 219
    :cond_7b
    invoke-virtual {p2}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_7f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_af

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 220
    .restart local v3  # "scene":Ljava/lang/Integer;
    iget-object v4, p0, Lcom/android/server/sence/SceneService;->mSceneMap:Ljava/util/HashMap;

    monitor-enter v4

    .line 221
    :try_start_8e
    iget-object v5, p0, Lcom/android/server/sence/SceneService;->mSceneMap:Ljava/util/HashMap;

    invoke-virtual {v5, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 222
    .local v5, "dispatchers":Ljava/util/concurrent/CopyOnWriteArrayList;, "Ljava/util/concurrent/CopyOnWriteArrayList<Lcom/android/server/sence/SceneDispatcherClient;>;"
    invoke-direct {p0, p1}, Lcom/android/server/sence/SceneService;->getClientLock(Landroid/os/IBinder;)Lcom/android/server/sence/SceneDispatcherClient;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 223
    invoke-virtual {v5}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_a8

    .line 224
    iget-object v6, p0, Lcom/android/server/sence/SceneService;->mSceneMap:Ljava/util/HashMap;

    invoke-virtual {v6, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 226
    .end local v5  # "dispatchers":Ljava/util/concurrent/CopyOnWriteArrayList;, "Ljava/util/concurrent/CopyOnWriteArrayList<Lcom/android/server/sence/SceneDispatcherClient;>;"
    :cond_a8
    monitor-exit v4

    .line 227
    .end local v3  # "scene":Ljava/lang/Integer;
    goto :goto_7f

    .line 226
    .restart local v3  # "scene":Ljava/lang/Integer;
    :catchall_aa
    move-exception v2

    monitor-exit v4
    :try_end_ac
    .catchall {:try_start_8e .. :try_end_ac} :catchall_aa

    throw v2

    .line 211
    .end local v3  # "scene":Ljava/lang/Integer;
    :cond_ad
    :goto_ad
    return-void

    .line 201
    .end local v1  # "appClient":Lcom/android/server/sence/SceneDispatcherClient;
    :cond_ae
    :goto_ae
    return-void

    .line 229
    :cond_af
    return-void
.end method
