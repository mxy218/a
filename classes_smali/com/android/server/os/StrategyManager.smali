.class public Lcom/android/server/os/StrategyManager;
.super Ljava/lang/Object;
.source "StrategyManager.java"


# static fields
.field private static final DEFAULT_WHITE_LIST_FILE_PATH:Ljava/lang/String; = "/system/etc/perf_intelligent_strategy_config.conf"

.field private static final TAG:Ljava/lang/String; = "StrategyManager"

.field private static final WHITE_LIST_FILE_PATH:Ljava/lang/String; = "/data/system/perf_intelligent_strategy_config.conf"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mGlobalConfig:Lcom/android/server/os/StrategyConfig;

.field private final mStrategies:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/os/Strategy;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"  # Landroid/content/Context;

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/os/StrategyManager;->mStrategies:Ljava/util/HashMap;

    .line 20
    invoke-direct {p0}, Lcom/android/server/os/StrategyManager;->loadConfig()Z

    move-result v0

    if-nez v0, :cond_19

    .line 21
    const-string v0, "StrategyManager"

    const-string/jumbo v1, "load config file failed!"

    invoke-static {v0, v1}, Landroid/scene/SceneUtils;->logSceneError(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    return-void

    .line 24
    :cond_19
    iput-object p1, p0, Lcom/android/server/os/StrategyManager;->mContext:Landroid/content/Context;

    .line 25
    invoke-direct {p0}, Lcom/android/server/os/StrategyManager;->initStrategies()V

    .line 26
    return-void
.end method

.method private createStrategy(Ljava/lang/String;)Lcom/android/server/os/Strategy;
    .registers 5
    .param p1, "strategy"  # Ljava/lang/String;

    .line 87
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "com.android.server.os."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/os/Strategy;
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1b} :catch_1c

    return-object v0

    .line 88
    :catch_1c
    move-exception v0

    .line 89
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "can\'t create strategy "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "StrategyManager"

    invoke-static {v2, v1}, Landroid/scene/SceneUtils;->logSceneError(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 91
    const/4 v1, 0x0

    return-object v1
.end method

.method private initStrategies()V
    .registers 6

    .line 73
    iget-object v0, p0, Lcom/android/server/os/StrategyManager;->mGlobalConfig:Lcom/android/server/os/StrategyConfig;

    invoke-virtual {v0}, Lcom/android/server/os/StrategyConfig;->getConfig()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_47

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 74
    .local v1, "strategy":Ljava/lang/String;
    invoke-direct {p0, v1}, Lcom/android/server/os/StrategyManager;->isStrategyEnable(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_46

    .line 75
    invoke-direct {p0, v1}, Lcom/android/server/os/StrategyManager;->createStrategy(Ljava/lang/String;)Lcom/android/server/os/Strategy;

    move-result-object v2

    .line 76
    .local v2, "st":Lcom/android/server/os/Strategy;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "create strategy "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "StrategyManager"

    invoke-static {v4, v3}, Landroid/scene/SceneUtils;->logSceneError(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    if-eqz v2, :cond_46

    .line 78
    iget-object v3, p0, Lcom/android/server/os/StrategyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3}, Lcom/android/server/os/Strategy;->setContext(Landroid/content/Context;)V

    .line 79
    iget-object v3, p0, Lcom/android/server/os/StrategyManager;->mStrategies:Ljava/util/HashMap;

    invoke-virtual {v3, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    .end local v1  # "strategy":Ljava/lang/String;
    .end local v2  # "st":Lcom/android/server/os/Strategy;
    :cond_46
    goto :goto_e

    .line 83
    :cond_47
    return-void
.end method

.method private isStrategyEnable(Ljava/lang/String;)Z
    .registers 6
    .param p1, "strategy"  # Ljava/lang/String;

    .line 62
    iget-object v0, p0, Lcom/android/server/os/StrategyManager;->mGlobalConfig:Lcom/android/server/os/StrategyConfig;

    invoke-virtual {v0}, Lcom/android/server/os/StrategyConfig;->getConfig()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 63
    .local v0, "config":[Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "strategy config"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    aget-object v3, v0, v2

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "StrategyManager"

    invoke-static {v3, v1}, Landroid/scene/SceneUtils;->logSceneError(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    array-length v1, v0

    if-lez v1, :cond_40

    .line 65
    aget-object v1, v0, v2

    const-string v3, "1"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3e

    aget-object v1, v0, v2

    const-string/jumbo v3, "true"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_40

    .line 66
    :cond_3e
    const/4 v1, 0x1

    return v1

    .line 69
    :cond_40
    return v2
.end method

.method private loadConfig()Z
    .registers 5

    .line 107
    const/4 v0, 0x1

    const-string v1, "GlobalStrategyConfig"

    const-string v2, "/data/system/perf_intelligent_strategy_config.conf"

    const-string v3, "/system/etc/perf_intelligent_strategy_config.conf"

    invoke-static {v1, v2, v3, v0}, Lcom/android/server/os/StrategyConfigFactory;->loadConfig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Lcom/android/server/os/StrategyConfig;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/os/StrategyManager;->mGlobalConfig:Lcom/android/server/os/StrategyConfig;

    .line 109
    iget-object v1, p0, Lcom/android/server/os/StrategyManager;->mGlobalConfig:Lcom/android/server/os/StrategyConfig;

    if-eqz v1, :cond_12

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    :goto_13
    return v0
.end method

.method private stopStrategy(Ljava/lang/String;)V
    .registers 3
    .param p1, "strategy"  # Ljava/lang/String;

    .line 100
    iget-object v0, p0, Lcom/android/server/os/StrategyManager;->mStrategies:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/os/Strategy;

    .line 101
    .local v0, "s":Lcom/android/server/os/Strategy;
    if-eqz v0, :cond_d

    .line 102
    invoke-virtual {v0}, Lcom/android/server/os/Strategy;->disableStrategy()Z

    .line 104
    :cond_d
    return-void
.end method

.method private updateStrategies()V
    .registers 5

    .line 29
    iget-object v0, p0, Lcom/android/server/os/StrategyManager;->mGlobalConfig:Lcom/android/server/os/StrategyConfig;

    if-eqz v0, :cond_56

    .line 30
    invoke-virtual {v0}, Lcom/android/server/os/StrategyConfig;->getConfig()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_10
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_56

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 31
    .local v1, "strategy":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/android/server/os/StrategyManager;->isStrategyWork(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_26

    .line 32
    invoke-direct {p0, v1}, Lcom/android/server/os/StrategyManager;->stopStrategy(Ljava/lang/String;)V

    goto :goto_55

    .line 34
    :cond_26
    iget-object v2, p0, Lcom/android/server/os/StrategyManager;->mStrategies:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_3a

    .line 35
    invoke-direct {p0, v1}, Lcom/android/server/os/StrategyManager;->createStrategy(Ljava/lang/String;)Lcom/android/server/os/Strategy;

    move-result-object v2

    .line 36
    .local v2, "st":Lcom/android/server/os/Strategy;
    if-eqz v2, :cond_39

    .line 37
    iget-object v3, p0, Lcom/android/server/os/StrategyManager;->mStrategies:Ljava/util/HashMap;

    invoke-virtual {v3, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    .end local v2  # "st":Lcom/android/server/os/Strategy;
    :cond_39
    goto :goto_55

    .line 40
    :cond_3a
    iget-object v2, p0, Lcom/android/server/os/StrategyManager;->mStrategies:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/os/Strategy;

    iget-object v2, v2, Lcom/android/server/os/Strategy;->mRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-nez v2, :cond_55

    .line 41
    iget-object v2, p0, Lcom/android/server/os/StrategyManager;->mStrategies:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/os/Strategy;

    invoke-virtual {v2}, Lcom/android/server/os/Strategy;->enableStrategy()Z

    .line 45
    .end local v1  # "strategy":Ljava/lang/String;
    :cond_55
    :goto_55
    goto :goto_10

    .line 47
    :cond_56
    return-void
.end method


# virtual methods
.method public getContext()Landroid/content/Context;
    .registers 2

    .line 50
    iget-object v0, p0, Lcom/android/server/os/StrategyManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public isStrategyWork(Ljava/lang/String;)Z
    .registers 3
    .param p1, "strategy"  # Ljava/lang/String;

    .line 96
    iget-object v0, p0, Lcom/android/server/os/StrategyManager;->mGlobalConfig:Lcom/android/server/os/StrategyConfig;

    if-eqz v0, :cond_16

    invoke-virtual {v0}, Lcom/android/server/os/StrategyConfig;->getConfig()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_16

    const/4 v0, 0x1

    goto :goto_17

    :cond_16
    const/4 v0, 0x0

    :goto_17
    return v0
.end method

.method public updateConfig()V
    .registers 3

    .line 54
    invoke-direct {p0}, Lcom/android/server/os/StrategyManager;->loadConfig()Z

    move-result v0

    if-nez v0, :cond_f

    .line 55
    const-string v0, "StrategyManager"

    const-string/jumbo v1, "update config file failed!"

    invoke-static {v0, v1}, Landroid/scene/SceneUtils;->logSceneError(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    return-void

    .line 58
    :cond_f
    invoke-direct {p0}, Lcom/android/server/os/StrategyManager;->updateStrategies()V

    .line 59
    return-void
.end method
