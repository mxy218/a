.class public Lcom/android/systemui/statusbar/policy/DataSaverControllerImpl;
.super Ljava/lang/Object;
.source "DataSaverControllerImpl.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/DataSaverController;


# instance fields
.field private final mHandler:Landroid/os/Handler;

.field private final mListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/statusbar/policy/DataSaverController$Listener;",
            ">;"
        }
    .end annotation
.end field

.field private final mPolicyListener:Landroid/net/INetworkPolicyListener;

.field private final mPolicyManager:Landroid/net/NetworkPolicyManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/DataSaverControllerImpl;->mHandler:Landroid/os/Handler;

    .line 29
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/DataSaverControllerImpl;->mListeners:Ljava/util/ArrayList;

    .line 75
    new-instance v0, Lcom/android/systemui/statusbar/policy/DataSaverControllerImpl$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/policy/DataSaverControllerImpl$1;-><init>(Lcom/android/systemui/statusbar/policy/DataSaverControllerImpl;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/DataSaverControllerImpl;->mPolicyListener:Landroid/net/INetworkPolicyListener;

    .line 33
    invoke-static {p1}, Landroid/net/NetworkPolicyManager;->from(Landroid/content/Context;)Landroid/net/NetworkPolicyManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/DataSaverControllerImpl;->mPolicyManager:Landroid/net/NetworkPolicyManager;

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/policy/DataSaverControllerImpl;Z)V
    .registers 2

    .line 26
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/DataSaverControllerImpl;->handleRestrictBackgroundChanged(Z)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/policy/DataSaverControllerImpl;)Landroid/os/Handler;
    .registers 1

    .line 26
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/DataSaverControllerImpl;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method private handleRestrictBackgroundChanged(Z)V
    .registers 5

    .line 37
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/DataSaverControllerImpl;->mListeners:Ljava/util/ArrayList;

    monitor-enter v0

    const/4 v1, 0x0

    .line 38
    :goto_4
    :try_start_4
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/DataSaverControllerImpl;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1a

    .line 39
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/DataSaverControllerImpl;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/policy/DataSaverController$Listener;

    invoke-interface {v2, p1}, Lcom/android/systemui/statusbar/policy/DataSaverController$Listener;->onDataSaverChanged(Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 41
    :cond_1a
    monitor-exit v0

    return-void

    :catchall_1c
    move-exception p0

    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_4 .. :try_end_1e} :catchall_1c

    throw p0
.end method


# virtual methods
.method public addCallback(Lcom/android/systemui/statusbar/policy/DataSaverController$Listener;)V
    .registers 5

    .line 45
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/DataSaverControllerImpl;->mListeners:Ljava/util/ArrayList;

    monitor-enter v0

    .line 46
    :try_start_3
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/DataSaverControllerImpl;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 47
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/DataSaverControllerImpl;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_18

    .line 48
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/DataSaverControllerImpl;->mPolicyManager:Landroid/net/NetworkPolicyManager;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/DataSaverControllerImpl;->mPolicyListener:Landroid/net/INetworkPolicyListener;

    invoke-virtual {v1, v2}, Landroid/net/NetworkPolicyManager;->registerListener(Landroid/net/INetworkPolicyListener;)V

    .line 50
    :cond_18
    monitor-exit v0
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_21

    .line 51
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/DataSaverControllerImpl;->isDataSaverEnabled()Z

    move-result p0

    invoke-interface {p1, p0}, Lcom/android/systemui/statusbar/policy/DataSaverController$Listener;->onDataSaverChanged(Z)V

    return-void

    :catchall_21
    move-exception p0

    .line 50
    :try_start_22
    monitor-exit v0
    :try_end_23
    .catchall {:try_start_22 .. :try_end_23} :catchall_21

    throw p0
.end method

.method public bridge synthetic addCallback(Ljava/lang/Object;)V
    .registers 2

    .line 26
    check-cast p1, Lcom/android/systemui/statusbar/policy/DataSaverController$Listener;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/policy/DataSaverControllerImpl;->addCallback(Lcom/android/systemui/statusbar/policy/DataSaverController$Listener;)V

    return-void
.end method

.method public isDataSaverEnabled()Z
    .registers 1

    .line 64
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/DataSaverControllerImpl;->mPolicyManager:Landroid/net/NetworkPolicyManager;

    invoke-virtual {p0}, Landroid/net/NetworkPolicyManager;->getRestrictBackground()Z

    move-result p0

    return p0
.end method

.method public removeCallback(Lcom/android/systemui/statusbar/policy/DataSaverController$Listener;)V
    .registers 4

    .line 55
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/DataSaverControllerImpl;->mListeners:Ljava/util/ArrayList;

    monitor-enter v0

    .line 56
    :try_start_3
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/DataSaverControllerImpl;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 57
    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/DataSaverControllerImpl;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-nez p1, :cond_17

    .line 58
    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/DataSaverControllerImpl;->mPolicyManager:Landroid/net/NetworkPolicyManager;

    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/DataSaverControllerImpl;->mPolicyListener:Landroid/net/INetworkPolicyListener;

    invoke-virtual {p1, p0}, Landroid/net/NetworkPolicyManager;->unregisterListener(Landroid/net/INetworkPolicyListener;)V

    .line 60
    :cond_17
    monitor-exit v0

    return-void

    :catchall_19
    move-exception p0

    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_19

    throw p0
.end method

.method public bridge synthetic removeCallback(Ljava/lang/Object;)V
    .registers 2

    .line 26
    check-cast p1, Lcom/android/systemui/statusbar/policy/DataSaverController$Listener;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/policy/DataSaverControllerImpl;->removeCallback(Lcom/android/systemui/statusbar/policy/DataSaverController$Listener;)V

    return-void
.end method

.method public setDataSaverEnabled(Z)V
    .registers 3

    .line 68
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/DataSaverControllerImpl;->mPolicyManager:Landroid/net/NetworkPolicyManager;

    invoke-virtual {v0, p1}, Landroid/net/NetworkPolicyManager;->setRestrictBackground(Z)V

    .line 70
    :try_start_5
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/DataSaverControllerImpl;->mPolicyListener:Landroid/net/INetworkPolicyListener;

    invoke-interface {p0, p1}, Landroid/net/INetworkPolicyListener;->onRestrictBackgroundChanged(Z)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_a} :catch_a

    :catch_a
    return-void
.end method
