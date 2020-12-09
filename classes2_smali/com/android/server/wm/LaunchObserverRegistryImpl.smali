.class Lcom/android/server/wm/LaunchObserverRegistryImpl;
.super Ljava/lang/Object;
.source "LaunchObserverRegistryImpl.java"

# interfaces
.implements Lcom/android/server/wm/ActivityMetricsLaunchObserverRegistry;
.implements Lcom/android/server/wm/ActivityMetricsLaunchObserver;


# instance fields
.field private final mHandler:Landroid/os/Handler;

.field private final mList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wm/ActivityMetricsLaunchObserver;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/os/Looper;)V
    .registers 3

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/LaunchObserverRegistryImpl;->mList:Ljava/util/ArrayList;

    .line 57
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/wm/LaunchObserverRegistryImpl;->mHandler:Landroid/os/Handler;

    .line 58
    return-void
.end method

.method private handleOnActivityLaunchCancelled([B)V
    .registers 4

    .line 148
    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lcom/android/server/wm/LaunchObserverRegistryImpl;->mList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_17

    .line 149
    iget-object v1, p0, Lcom/android/server/wm/LaunchObserverRegistryImpl;->mList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/ActivityMetricsLaunchObserver;

    .line 150
    invoke-interface {v1, p1}, Lcom/android/server/wm/ActivityMetricsLaunchObserver;->onActivityLaunchCancelled([B)V

    .line 148
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 152
    :cond_17
    return-void
.end method

.method private handleOnActivityLaunchFinished([B)V
    .registers 4

    .line 157
    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lcom/android/server/wm/LaunchObserverRegistryImpl;->mList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_17

    .line 158
    iget-object v1, p0, Lcom/android/server/wm/LaunchObserverRegistryImpl;->mList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/ActivityMetricsLaunchObserver;

    .line 159
    invoke-interface {v1, p1}, Lcom/android/server/wm/ActivityMetricsLaunchObserver;->onActivityLaunchFinished([B)V

    .line 157
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 161
    :cond_17
    return-void
.end method

.method private handleOnActivityLaunched([BI)V
    .registers 5

    .line 139
    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lcom/android/server/wm/LaunchObserverRegistryImpl;->mList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_17

    .line 140
    iget-object v1, p0, Lcom/android/server/wm/LaunchObserverRegistryImpl;->mList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/ActivityMetricsLaunchObserver;

    .line 141
    invoke-interface {v1, p1, p2}, Lcom/android/server/wm/ActivityMetricsLaunchObserver;->onActivityLaunched([BI)V

    .line 139
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 143
    :cond_17
    return-void
.end method

.method private handleOnIntentFailed()V
    .registers 3

    .line 129
    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lcom/android/server/wm/LaunchObserverRegistryImpl;->mList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_17

    .line 130
    iget-object v1, p0, Lcom/android/server/wm/LaunchObserverRegistryImpl;->mList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/ActivityMetricsLaunchObserver;

    .line 131
    invoke-interface {v1}, Lcom/android/server/wm/ActivityMetricsLaunchObserver;->onIntentFailed()V

    .line 129
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 133
    :cond_17
    return-void
.end method

.method private handleOnIntentStarted(Landroid/content/Intent;)V
    .registers 4

    .line 121
    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lcom/android/server/wm/LaunchObserverRegistryImpl;->mList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_17

    .line 122
    iget-object v1, p0, Lcom/android/server/wm/LaunchObserverRegistryImpl;->mList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/ActivityMetricsLaunchObserver;

    .line 123
    invoke-interface {v1, p1}, Lcom/android/server/wm/ActivityMetricsLaunchObserver;->onIntentStarted(Landroid/content/Intent;)V

    .line 121
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 125
    :cond_17
    return-void
.end method

.method private handleRegisterLaunchObserver(Lcom/android/server/wm/ActivityMetricsLaunchObserver;)V
    .registers 3

    .line 112
    iget-object v0, p0, Lcom/android/server/wm/LaunchObserverRegistryImpl;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 113
    return-void
.end method

.method private handleUnregisterLaunchObserver(Lcom/android/server/wm/ActivityMetricsLaunchObserver;)V
    .registers 3

    .line 116
    iget-object v0, p0, Lcom/android/server/wm/LaunchObserverRegistryImpl;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 117
    return-void
.end method

.method public static synthetic lambda$850Ez4IkbH192NuVFW_l12sZL_E(Lcom/android/server/wm/LaunchObserverRegistryImpl;Lcom/android/server/wm/ActivityMetricsLaunchObserver;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/wm/LaunchObserverRegistryImpl;->handleUnregisterLaunchObserver(Lcom/android/server/wm/ActivityMetricsLaunchObserver;)V

    return-void
.end method

.method public static synthetic lambda$KukKmVpn5W_1xSV6Dnp8wW2H2Ks(Lcom/android/server/wm/LaunchObserverRegistryImpl;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/wm/LaunchObserverRegistryImpl;->handleOnIntentFailed()V

    return-void
.end method

.method public static synthetic lambda$UGY1OclnLIQLMEL9B55qjERFf4o(Lcom/android/server/wm/LaunchObserverRegistryImpl;[BI)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/LaunchObserverRegistryImpl;->handleOnActivityLaunched([BI)V

    return-void
.end method

.method public static synthetic lambda$iVXZh14_jAo_Gegs5q3ygQDW-ow(Lcom/android/server/wm/LaunchObserverRegistryImpl;[B)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/wm/LaunchObserverRegistryImpl;->handleOnActivityLaunchFinished([B)V

    return-void
.end method

.method public static synthetic lambda$kM3MnXbSpyNkUV4eUyr4OwWCqqA(Lcom/android/server/wm/LaunchObserverRegistryImpl;Landroid/content/Intent;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/wm/LaunchObserverRegistryImpl;->handleOnIntentStarted(Landroid/content/Intent;)V

    return-void
.end method

.method public static synthetic lambda$lAGPwfsXJvBWsyG2rbEfo3sTv34(Lcom/android/server/wm/LaunchObserverRegistryImpl;[B)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/wm/LaunchObserverRegistryImpl;->handleOnActivityLaunchCancelled([B)V

    return-void
.end method

.method public static synthetic lambda$pWUDt4Ot3BWLJOTAhXMkkhHUhpc(Lcom/android/server/wm/LaunchObserverRegistryImpl;Lcom/android/server/wm/ActivityMetricsLaunchObserver;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/wm/LaunchObserverRegistryImpl;->handleRegisterLaunchObserver(Lcom/android/server/wm/ActivityMetricsLaunchObserver;)V

    return-void
.end method


# virtual methods
.method public onActivityLaunchCancelled([B)V
    .registers 4

    .line 96
    iget-object v0, p0, Lcom/android/server/wm/LaunchObserverRegistryImpl;->mHandler:Landroid/os/Handler;

    sget-object v1, Lcom/android/server/wm/-$$Lambda$LaunchObserverRegistryImpl$lAGPwfsXJvBWsyG2rbEfo3sTv34;->INSTANCE:Lcom/android/server/wm/-$$Lambda$LaunchObserverRegistryImpl$lAGPwfsXJvBWsyG2rbEfo3sTv34;

    invoke-static {v1, p0, p1}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 98
    return-void
.end method

.method public onActivityLaunchFinished([B)V
    .registers 4

    .line 103
    iget-object v0, p0, Lcom/android/server/wm/LaunchObserverRegistryImpl;->mHandler:Landroid/os/Handler;

    sget-object v1, Lcom/android/server/wm/-$$Lambda$LaunchObserverRegistryImpl$iVXZh14_jAo_Gegs5q3ygQDW-ow;->INSTANCE:Lcom/android/server/wm/-$$Lambda$LaunchObserverRegistryImpl$iVXZh14_jAo_Gegs5q3ygQDW-ow;

    invoke-static {v1, p0, p1}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 105
    return-void
.end method

.method public onActivityLaunched([BI)V
    .registers 5

    .line 88
    iget-object v0, p0, Lcom/android/server/wm/LaunchObserverRegistryImpl;->mHandler:Landroid/os/Handler;

    sget-object v1, Lcom/android/server/wm/-$$Lambda$LaunchObserverRegistryImpl$UGY1OclnLIQLMEL9B55qjERFf4o;->INSTANCE:Lcom/android/server/wm/-$$Lambda$LaunchObserverRegistryImpl$UGY1OclnLIQLMEL9B55qjERFf4o;

    .line 90
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    .line 88
    invoke-static {v1, p0, p1, p2}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/TriConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 91
    return-void
.end method

.method public onIntentFailed()V
    .registers 3

    .line 80
    iget-object v0, p0, Lcom/android/server/wm/LaunchObserverRegistryImpl;->mHandler:Landroid/os/Handler;

    sget-object v1, Lcom/android/server/wm/-$$Lambda$LaunchObserverRegistryImpl$KukKmVpn5W_1xSV6Dnp8wW2H2Ks;->INSTANCE:Lcom/android/server/wm/-$$Lambda$LaunchObserverRegistryImpl$KukKmVpn5W_1xSV6Dnp8wW2H2Ks;

    invoke-static {v1, p0}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/Consumer;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 82
    return-void
.end method

.method public onIntentStarted(Landroid/content/Intent;)V
    .registers 4

    .line 74
    iget-object v0, p0, Lcom/android/server/wm/LaunchObserverRegistryImpl;->mHandler:Landroid/os/Handler;

    sget-object v1, Lcom/android/server/wm/-$$Lambda$LaunchObserverRegistryImpl$kM3MnXbSpyNkUV4eUyr4OwWCqqA;->INSTANCE:Lcom/android/server/wm/-$$Lambda$LaunchObserverRegistryImpl$kM3MnXbSpyNkUV4eUyr4OwWCqqA;

    invoke-static {v1, p0, p1}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 76
    return-void
.end method

.method public registerLaunchObserver(Lcom/android/server/wm/ActivityMetricsLaunchObserver;)V
    .registers 4

    .line 62
    iget-object v0, p0, Lcom/android/server/wm/LaunchObserverRegistryImpl;->mHandler:Landroid/os/Handler;

    sget-object v1, Lcom/android/server/wm/-$$Lambda$LaunchObserverRegistryImpl$pWUDt4Ot3BWLJOTAhXMkkhHUhpc;->INSTANCE:Lcom/android/server/wm/-$$Lambda$LaunchObserverRegistryImpl$pWUDt4Ot3BWLJOTAhXMkkhHUhpc;

    invoke-static {v1, p0, p1}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 64
    return-void
.end method

.method public unregisterLaunchObserver(Lcom/android/server/wm/ActivityMetricsLaunchObserver;)V
    .registers 4

    .line 68
    iget-object v0, p0, Lcom/android/server/wm/LaunchObserverRegistryImpl;->mHandler:Landroid/os/Handler;

    sget-object v1, Lcom/android/server/wm/-$$Lambda$LaunchObserverRegistryImpl$850Ez4IkbH192NuVFW_l12sZL_E;->INSTANCE:Lcom/android/server/wm/-$$Lambda$LaunchObserverRegistryImpl$850Ez4IkbH192NuVFW_l12sZL_E;

    invoke-static {v1, p0, p1}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 70
    return-void
.end method
