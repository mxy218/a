.class public abstract Lcom/android/server/os/Strategy;
.super Ljava/lang/Object;
.source "Strategy.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "Strategy"


# instance fields
.field protected mContext:Landroid/content/Context;

.field protected mRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

.field protected mStrategyConfig:Lcom/android/server/os/StrategyConfig;


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/android/server/os/Strategy;->mRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method


# virtual methods
.method public abstract disableStrategy()Z
.end method

.method public abstract enableStrategy()Z
.end method

.method public loadConfig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z
    .registers 7
    .param p1, "configName"  # Ljava/lang/String;
    .param p2, "path"  # Ljava/lang/String;
    .param p3, "defaultPath"  # Ljava/lang/String;
    .param p4, "propertyLen"  # I

    .line 25
    invoke-static {p1, p2, p3, p4}, Lcom/android/server/os/StrategyConfigFactory;->loadConfig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Lcom/android/server/os/StrategyConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/os/Strategy;->mStrategyConfig:Lcom/android/server/os/StrategyConfig;

    .line 27
    iget-object v0, p0, Lcom/android/server/os/Strategy;->mStrategyConfig:Lcom/android/server/os/StrategyConfig;

    if-nez v0, :cond_14

    .line 28
    const-string v0, "Strategy"

    const-string/jumbo v1, "load property file failed"

    invoke-static {v0, v1}, Landroid/scene/SceneUtils;->logSceneError(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    const/4 v0, 0x0

    return v0

    .line 31
    :cond_14
    const/4 v0, 0x1

    return v0
.end method

.method public setContext(Landroid/content/Context;)V
    .registers 2
    .param p1, "context"  # Landroid/content/Context;

    .line 16
    iput-object p1, p0, Lcom/android/server/os/Strategy;->mContext:Landroid/content/Context;

    .line 17
    return-void
.end method

.method public updateConfig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z
    .registers 7
    .param p1, "configName"  # Ljava/lang/String;
    .param p2, "path"  # Ljava/lang/String;
    .param p3, "defaultPath"  # Ljava/lang/String;
    .param p4, "propertyLen"  # I

    .line 36
    const/4 v0, 0x0

    invoke-static {p1, p2, v0, p4}, Lcom/android/server/os/StrategyConfigFactory;->loadConfig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Lcom/android/server/os/StrategyConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/os/Strategy;->mStrategyConfig:Lcom/android/server/os/StrategyConfig;

    .line 38
    iget-object v0, p0, Lcom/android/server/os/Strategy;->mStrategyConfig:Lcom/android/server/os/StrategyConfig;

    if-nez v0, :cond_15

    .line 39
    const-string v0, "Strategy"

    const-string/jumbo v1, "update property file failed"

    invoke-static {v0, v1}, Landroid/scene/SceneUtils;->logSceneError(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    const/4 v0, 0x0

    return v0

    .line 42
    :cond_15
    const/4 v0, 0x1

    return v0
.end method
