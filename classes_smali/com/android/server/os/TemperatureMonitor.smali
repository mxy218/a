.class public Lcom/android/server/os/TemperatureMonitor;
.super Ljava/lang/Object;
.source "TemperatureMonitor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/os/TemperatureMonitor$Instance;
    }
.end annotation


# static fields
.field private static final DEFAULT_WHITE_LIST_FILE_PATH:Ljava/lang/String; = "/system/etc/perf_game_temp_notify_config.conf"

.field private static final TAG:Ljava/lang/String; = "TemperatureMonitor"

.field private static final WHITE_LIST_FILE_PATH:Ljava/lang/String; = "/data/system/perf_game_temp_notify_config.conf"


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private mSceneReceiver:Landroid/scene/SceneReceiver;

.field private mStrategyConfig:Lcom/android/server/os/StrategyConfig;

.field private mTimerTask:Ljava/util/TimerTask;


# direct methods
.method constructor <init>()V
    .registers 1

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    invoke-direct {p0}, Lcom/android/server/os/TemperatureMonitor;->init()V

    .line 82
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/os/TemperatureMonitor;)V
    .registers 1
    .param p0, "x0"  # Lcom/android/server/os/TemperatureMonitor;

    .line 12
    invoke-direct {p0}, Lcom/android/server/os/TemperatureMonitor;->getTemperature()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/os/TemperatureMonitor;)Landroid/os/Handler;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/os/TemperatureMonitor;

    .line 12
    iget-object v0, p0, Lcom/android/server/os/TemperatureMonitor;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/server/os/TemperatureMonitor;Landroid/os/Handler;)Landroid/os/Handler;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/os/TemperatureMonitor;
    .param p1, "x1"  # Landroid/os/Handler;

    .line 12
    iput-object p1, p0, Lcom/android/server/os/TemperatureMonitor;->mHandler:Landroid/os/Handler;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/server/os/TemperatureMonitor;)Ljava/util/TimerTask;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/os/TemperatureMonitor;

    .line 12
    iget-object v0, p0, Lcom/android/server/os/TemperatureMonitor;->mTimerTask:Ljava/util/TimerTask;

    return-object v0
.end method

.method public static getInstance()Lcom/android/server/os/TemperatureMonitor;
    .registers 1

    .line 29
    sget-object v0, Lcom/android/server/os/TemperatureMonitor$Instance;->INSTANCE:Lcom/android/server/os/TemperatureMonitor;

    return-object v0
.end method

.method private getTemperature()V
    .registers 5

    .line 85
    invoke-direct {p0}, Lcom/android/server/os/TemperatureMonitor;->nativeGetTemp()[I

    move-result-object v0

    .line 86
    .local v0, "temp":[I
    const-string v1, "TemperatureMonitor"

    const-string v2, "getTemperature"

    invoke-static {v1, v2}, Landroid/scene/SceneUtils;->logSceneDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    if-eqz v0, :cond_36

    array-length v2, v0

    const/4 v3, 0x2

    if-ne v2, v3, :cond_36

    .line 88
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cpu temperature:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x0

    aget v3, v0, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " pcb temperature:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x1

    aget v3, v0, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/scene/SceneUtils;->logSceneDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    invoke-direct {p0, v0}, Lcom/android/server/os/TemperatureMonitor;->triggerMarks([I)V

    .line 91
    :cond_36
    return-void
.end method

.method private init()V
    .registers 3

    .line 39
    invoke-direct {p0}, Lcom/android/server/os/TemperatureMonitor;->loadConfig()Z

    move-result v0

    if-nez v0, :cond_f

    .line 40
    const-string v0, "TemperatureMonitor"

    const-string/jumbo v1, "load config file failed!"

    invoke-static {v0, v1}, Landroid/scene/SceneUtils;->logSceneError(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    return-void

    .line 43
    :cond_f
    invoke-direct {p0}, Lcom/android/server/os/TemperatureMonitor;->nativeInit()I

    .line 45
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/server/os/TemperatureMonitor;->mHandler:Landroid/os/Handler;

    .line 46
    new-instance v0, Lcom/android/server/os/TemperatureMonitor$1;

    invoke-direct {v0, p0}, Lcom/android/server/os/TemperatureMonitor$1;-><init>(Lcom/android/server/os/TemperatureMonitor;)V

    iput-object v0, p0, Lcom/android/server/os/TemperatureMonitor;->mTimerTask:Ljava/util/TimerTask;

    .line 52
    new-instance v0, Lcom/android/server/os/TemperatureMonitor$2;

    invoke-direct {v0, p0}, Lcom/android/server/os/TemperatureMonitor$2;-><init>(Lcom/android/server/os/TemperatureMonitor;)V

    iput-object v0, p0, Lcom/android/server/os/TemperatureMonitor;->mSceneReceiver:Landroid/scene/SceneReceiver;

    .line 76
    iget-object v0, p0, Lcom/android/server/os/TemperatureMonitor;->mSceneReceiver:Landroid/scene/SceneReceiver;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/scene/SceneReceiver;->addScene(I)V

    .line 77
    invoke-static {}, Landroid/scene/SceneClient;->getInstance()Landroid/scene/SceneClient;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/os/TemperatureMonitor;->mSceneReceiver:Landroid/scene/SceneReceiver;

    invoke-virtual {v0, v1}, Landroid/scene/SceneClient;->registerSceneReceiver(Landroid/scene/SceneReceiver;)V

    .line 78
    return-void
.end method

.method private loadConfig()Z
    .registers 5

    .line 33
    const-string v0, "TemperatureMonitor"

    const-string v1, "/data/system/perf_game_temp_notify_config.conf"

    const-string v2, "/system/etc/perf_game_temp_notify_config.conf"

    const/4 v3, 0x3

    invoke-static {v0, v1, v2, v3}, Lcom/android/server/os/StrategyConfigFactory;->loadConfig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Lcom/android/server/os/StrategyConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/os/TemperatureMonitor;->mStrategyConfig:Lcom/android/server/os/StrategyConfig;

    .line 35
    iget-object v0, p0, Lcom/android/server/os/TemperatureMonitor;->mStrategyConfig:Lcom/android/server/os/StrategyConfig;

    if-eqz v0, :cond_13

    const/4 v0, 0x1

    goto :goto_14

    :cond_13
    const/4 v0, 0x0

    :goto_14
    return v0
.end method

.method private native nativeClose()V
.end method

.method private native nativeGetTemp()[I
.end method

.method private native nativeInit()I
.end method

.method private triggerMarks([I)V
    .registers 13
    .param p1, "temp"  # [I

    .line 94
    iget-object v0, p0, Lcom/android/server/os/TemperatureMonitor;->mStrategyConfig:Lcom/android/server/os/StrategyConfig;

    invoke-virtual {v0}, Lcom/android/server/os/StrategyConfig;->getConfig()Ljava/util/HashMap;

    move-result-object v0

    const-string v1, "cpu_temp"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 95
    .local v0, "cpu_temps":[Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/os/TemperatureMonitor;->mStrategyConfig:Lcom/android/server/os/StrategyConfig;

    invoke-virtual {v1}, Lcom/android/server/os/StrategyConfig;->getConfig()Ljava/util/HashMap;

    move-result-object v1

    const-string/jumbo v2, "pcb_temp"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    .line 96
    .local v1, "pcb_temps":[Ljava/lang/String;
    if-eqz v0, :cond_f2

    array-length v3, v0

    const/4 v4, 0x3

    if-ne v3, v4, :cond_f2

    if-eqz v1, :cond_f2

    array-length v3, v1

    if-eq v3, v4, :cond_2a

    goto/16 :goto_f2

    .line 102
    :cond_2a
    const/4 v3, 0x0

    aget v4, p1, v3

    aget-object v5, v0, v3

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    const-string/jumbo v6, "temp_level"

    const-string v7, "SystemTempTri"

    const-string v8, "TemperatureMonitor"

    const/4 v9, 0x1

    if-lt v4, v5, :cond_7b

    aget v4, p1, v9

    aget-object v5, v1, v3

    .line 103
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    if-lt v4, v5, :cond_7b

    aget v4, p1, v3

    aget-object v5, v0, v9

    .line 104
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    if-ge v4, v5, :cond_7b

    aget v4, p1, v9

    aget-object v5, v1, v9

    .line 105
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    if-ge v4, v5, :cond_7b

    .line 106
    const-string/jumbo v4, "medium temperature threshold triggered!!!"

    invoke-static {v8, v4}, Landroid/scene/SceneUtils;->logSceneWarn(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    new-instance v4, Landroid/scene/Scene;

    invoke-direct {v4, v3, v7}, Landroid/scene/Scene;-><init>(ILjava/lang/String;)V

    move-object v3, v4

    .line 108
    .local v3, "scene":Landroid/scene/Scene;
    aget v4, p1, v9

    invoke-virtual {v3, v2, v4}, Landroid/scene/Scene;->putExtra(Ljava/lang/String;I)Landroid/scene/Scene;

    .line 109
    const-string/jumbo v2, "medium"

    invoke-virtual {v3, v6, v2}, Landroid/scene/Scene;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/scene/Scene;

    .line 110
    invoke-static {}, Landroid/scene/SceneClient;->getInstance()Landroid/scene/SceneClient;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/scene/SceneClient;->notifyScene(Landroid/scene/Scene;)V

    .line 111
    .end local v3  # "scene":Landroid/scene/Scene;
    goto/16 :goto_f1

    :cond_7b
    aget v4, p1, v3

    aget-object v5, v0, v9

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    const/4 v10, 0x2

    if-lt v4, v5, :cond_c1

    aget v4, p1, v9

    aget-object v5, v1, v9

    .line 112
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    if-lt v4, v5, :cond_c1

    aget v4, p1, v3

    aget-object v5, v0, v10

    .line 113
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    if-ge v4, v5, :cond_c1

    aget v4, p1, v9

    aget-object v5, v1, v10

    .line 114
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    if-ge v4, v5, :cond_c1

    .line 115
    const-string v4, "high temperature threshold triggered!!!"

    invoke-static {v8, v4}, Landroid/scene/SceneUtils;->logSceneWarn(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    new-instance v4, Landroid/scene/Scene;

    invoke-direct {v4, v3, v7}, Landroid/scene/Scene;-><init>(ILjava/lang/String;)V

    move-object v3, v4

    .line 117
    .restart local v3  # "scene":Landroid/scene/Scene;
    aget v4, p1, v9

    invoke-virtual {v3, v2, v4}, Landroid/scene/Scene;->putExtra(Ljava/lang/String;I)Landroid/scene/Scene;

    .line 118
    const-string v2, "high"

    invoke-virtual {v3, v6, v2}, Landroid/scene/Scene;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/scene/Scene;

    .line 119
    invoke-static {}, Landroid/scene/SceneClient;->getInstance()Landroid/scene/SceneClient;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/scene/SceneClient;->notifyScene(Landroid/scene/Scene;)V

    .line 120
    .end local v3  # "scene":Landroid/scene/Scene;
    goto :goto_f1

    :cond_c1
    aget v4, p1, v3

    aget-object v5, v0, v10

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    if-lt v4, v5, :cond_f1

    aget v4, p1, v9

    aget-object v5, v1, v10

    .line 121
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    if-lt v4, v5, :cond_f1

    .line 122
    const-string v4, "critical temperature threshold triggered!!!"

    invoke-static {v8, v4}, Landroid/scene/SceneUtils;->logSceneWarn(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    new-instance v4, Landroid/scene/Scene;

    invoke-direct {v4, v3, v7}, Landroid/scene/Scene;-><init>(ILjava/lang/String;)V

    move-object v3, v4

    .line 124
    .restart local v3  # "scene":Landroid/scene/Scene;
    aget v4, p1, v9

    invoke-virtual {v3, v2, v4}, Landroid/scene/Scene;->putExtra(Ljava/lang/String;I)Landroid/scene/Scene;

    .line 125
    const-string v2, "critical"

    invoke-virtual {v3, v6, v2}, Landroid/scene/Scene;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/scene/Scene;

    .line 126
    invoke-static {}, Landroid/scene/SceneClient;->getInstance()Landroid/scene/SceneClient;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/scene/SceneClient;->notifyScene(Landroid/scene/Scene;)V

    .line 128
    .end local v3  # "scene":Landroid/scene/Scene;
    :cond_f1
    :goto_f1
    return-void

    .line 100
    :cond_f2
    :goto_f2
    return-void
.end method
