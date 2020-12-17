.class public Lcom/flyme/systemui/statusbar/policy/VpnControllerImpl;
.super Ljava/lang/Object;
.source "VpnControllerImpl.java"

# interfaces
.implements Lcom/flyme/systemui/statusbar/policy/VpnController;


# annotations
.annotation runtime Ljavax/inject/Singleton;
.end annotation


# instance fields
.field private final mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/flyme/systemui/statusbar/policy/VpnController$VpnControllerCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mConnecting:Z

.field private final mContext:Landroid/content/Context;

.field private mEnabled:Z

.field private mInitializing:Z

.field private mIsInitialized:Z

.field private mNetworkConnected:Z

.field private mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkController;

.field private final mService:Landroid/net/IConnectivityManager;

.field mVpnFilter:Landroid/content/IntentFilter;

.field private final mVpnReceiver:Landroid/content/BroadcastReceiver;

.field private mWaitForReconnect:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/statusbar/policy/NetworkController;)V
    .registers 4
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/flyme/systemui/statusbar/policy/VpnControllerImpl;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    const-string v0, "connectivity"

    .line 32
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/net/IConnectivityManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/IConnectivityManager;

    move-result-object v0

    iput-object v0, p0, Lcom/flyme/systemui/statusbar/policy/VpnControllerImpl;->mService:Landroid/net/IConnectivityManager;

    .line 43
    new-instance v0, Lcom/flyme/systemui/statusbar/policy/VpnControllerImpl$1;

    invoke-direct {v0, p0}, Lcom/flyme/systemui/statusbar/policy/VpnControllerImpl$1;-><init>(Lcom/flyme/systemui/statusbar/policy/VpnControllerImpl;)V

    iput-object v0, p0, Lcom/flyme/systemui/statusbar/policy/VpnControllerImpl;->mVpnReceiver:Landroid/content/BroadcastReceiver;

    .line 62
    iput-object p1, p0, Lcom/flyme/systemui/statusbar/policy/VpnControllerImpl;->mContext:Landroid/content/Context;

    .line 64
    :try_start_1f
    iget-object p1, p0, Lcom/flyme/systemui/statusbar/policy/VpnControllerImpl;->mService:Landroid/net/IConnectivityManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-interface {p1, v0}, Landroid/net/IConnectivityManager;->getLegacyVpnInfo(I)Lcom/android/internal/net/LegacyVpnInfo;

    move-result-object p1

    if-eqz p1, :cond_35

    .line 66
    iget p1, p1, Lcom/android/internal/net/LegacyVpnInfo;->state:I

    invoke-direct {p0, p1}, Lcom/flyme/systemui/statusbar/policy/VpnControllerImpl;->setAdapterState(I)V
    :try_end_30
    .catch Landroid/os/RemoteException; {:try_start_1f .. :try_end_30} :catch_31

    goto :goto_35

    :catch_31
    move-exception p1

    .line 69
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 71
    :cond_35
    :goto_35
    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    iput-object p1, p0, Lcom/flyme/systemui/statusbar/policy/VpnControllerImpl;->mVpnFilter:Landroid/content/IntentFilter;

    .line 72
    iget-object p1, p0, Lcom/flyme/systemui/statusbar/policy/VpnControllerImpl;->mVpnFilter:Landroid/content/IntentFilter;

    const-string v0, "meizu.intent.action.VPN_STATE_CHANGED"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 74
    iput-object p2, p0, Lcom/flyme/systemui/statusbar/policy/VpnControllerImpl;->mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkController;

    .line 75
    iget-object p1, p0, Lcom/flyme/systemui/statusbar/policy/VpnControllerImpl;->mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkController;

    new-instance p2, Lcom/flyme/systemui/statusbar/policy/VpnControllerImpl$2;

    invoke-direct {p2, p0}, Lcom/flyme/systemui/statusbar/policy/VpnControllerImpl$2;-><init>(Lcom/flyme/systemui/statusbar/policy/VpnControllerImpl;)V

    invoke-interface {p1, p2}, Lcom/android/systemui/statusbar/policy/NetworkController;->addNetworkConnectionCallBack(Lcom/android/systemui/statusbar/policy/NetworkController$NetworkConnectionCallBack;)V

    .line 90
    iget-object p1, p0, Lcom/flyme/systemui/statusbar/policy/VpnControllerImpl;->mContext:Landroid/content/Context;

    iget-object p2, p0, Lcom/flyme/systemui/statusbar/policy/VpnControllerImpl;->mVpnReceiver:Landroid/content/BroadcastReceiver;

    iget-object p0, p0, Lcom/flyme/systemui/statusbar/policy/VpnControllerImpl;->mVpnFilter:Landroid/content/IntentFilter;

    invoke-virtual {p1, p2, p0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method static synthetic access$000(Lcom/flyme/systemui/statusbar/policy/VpnControllerImpl;I)V
    .registers 2

    .line 25
    invoke-direct {p0, p1}, Lcom/flyme/systemui/statusbar/policy/VpnControllerImpl;->setAdapterState(I)V

    return-void
.end method

.method static synthetic access$100(Lcom/flyme/systemui/statusbar/policy/VpnControllerImpl;)Z
    .registers 1

    .line 25
    iget-boolean p0, p0, Lcom/flyme/systemui/statusbar/policy/VpnControllerImpl;->mNetworkConnected:Z

    return p0
.end method

.method static synthetic access$102(Lcom/flyme/systemui/statusbar/policy/VpnControllerImpl;Z)Z
    .registers 2

    .line 25
    iput-boolean p1, p0, Lcom/flyme/systemui/statusbar/policy/VpnControllerImpl;->mNetworkConnected:Z

    return p1
.end method

.method static synthetic access$200(Lcom/flyme/systemui/statusbar/policy/VpnControllerImpl;)V
    .registers 1

    .line 25
    invoke-direct {p0}, Lcom/flyme/systemui/statusbar/policy/VpnControllerImpl;->notifyChanged()V

    return-void
.end method

.method static synthetic access$300(Lcom/flyme/systemui/statusbar/policy/VpnControllerImpl;)Landroid/content/Context;
    .registers 1

    .line 25
    iget-object p0, p0, Lcom/flyme/systemui/statusbar/policy/VpnControllerImpl;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method private notifyChanged()V
    .registers 3

    .line 136
    iget-object v0, p0, Lcom/flyme/systemui/statusbar/policy/VpnControllerImpl;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/flyme/systemui/statusbar/policy/VpnController$VpnControllerCallback;

    .line 137
    invoke-direct {p0, v1}, Lcom/flyme/systemui/statusbar/policy/VpnControllerImpl;->notifyChanged(Lcom/flyme/systemui/statusbar/policy/VpnController$VpnControllerCallback;)V

    goto :goto_6

    :cond_16
    return-void
.end method

.method private notifyChanged(Lcom/flyme/systemui/statusbar/policy/VpnController$VpnControllerCallback;)V
    .registers 5

    .line 142
    iget-boolean v0, p0, Lcom/flyme/systemui/statusbar/policy/VpnControllerImpl;->mEnabled:Z

    iget-boolean v1, p0, Lcom/flyme/systemui/statusbar/policy/VpnControllerImpl;->mConnecting:Z

    iget-boolean v2, p0, Lcom/flyme/systemui/statusbar/policy/VpnControllerImpl;->mInitializing:Z

    iget-boolean p0, p0, Lcom/flyme/systemui/statusbar/policy/VpnControllerImpl;->mWaitForReconnect:Z

    invoke-interface {p1, v0, v1, v2, p0}, Lcom/flyme/systemui/statusbar/policy/VpnController$VpnControllerCallback;->onVpnStateChanged(ZZZZ)V

    return-void
.end method

.method private setAdapterState(I)V
    .registers 8

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x3

    if-ne p1, v2, :cond_7

    move v2, v1

    goto :goto_8

    :cond_7
    move v2, v0

    :goto_8
    const/4 v3, 0x2

    if-ne p1, v3, :cond_d

    move v3, v1

    goto :goto_e

    :cond_d
    move v3, v0

    :goto_e
    if-ne p1, v1, :cond_12

    move v4, v1

    goto :goto_13

    :cond_12
    move v4, v0

    :goto_13
    const/4 v5, 0x6

    if-ne p1, v5, :cond_17

    move v0, v1

    .line 150
    :cond_17
    iget-boolean p1, p0, Lcom/flyme/systemui/statusbar/policy/VpnControllerImpl;->mEnabled:Z

    if-ne p1, v2, :cond_28

    iget-boolean p1, p0, Lcom/flyme/systemui/statusbar/policy/VpnControllerImpl;->mConnecting:Z

    if-ne p1, v3, :cond_28

    iget-boolean p1, p0, Lcom/flyme/systemui/statusbar/policy/VpnControllerImpl;->mInitializing:Z

    if-ne p1, v4, :cond_28

    iget-boolean p1, p0, Lcom/flyme/systemui/statusbar/policy/VpnControllerImpl;->mWaitForReconnect:Z

    if-ne p1, v0, :cond_28

    return-void

    .line 154
    :cond_28
    iput-boolean v2, p0, Lcom/flyme/systemui/statusbar/policy/VpnControllerImpl;->mEnabled:Z

    .line 155
    iput-boolean v3, p0, Lcom/flyme/systemui/statusbar/policy/VpnControllerImpl;->mConnecting:Z

    .line 156
    iput-boolean v4, p0, Lcom/flyme/systemui/statusbar/policy/VpnControllerImpl;->mInitializing:Z

    .line 157
    iput-boolean v0, p0, Lcom/flyme/systemui/statusbar/policy/VpnControllerImpl;->mWaitForReconnect:Z

    .line 158
    invoke-direct {p0}, Lcom/flyme/systemui/statusbar/policy/VpnControllerImpl;->notifyChanged()V

    return-void
.end method


# virtual methods
.method public addCallback(Lcom/flyme/systemui/statusbar/policy/VpnController$VpnControllerCallback;)V
    .registers 3

    .line 163
    iget-object v0, p0, Lcom/flyme/systemui/statusbar/policy/VpnControllerImpl;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 164
    invoke-direct {p0, p1}, Lcom/flyme/systemui/statusbar/policy/VpnControllerImpl;->notifyChanged(Lcom/flyme/systemui/statusbar/policy/VpnController$VpnControllerCallback;)V

    return-void
.end method

.method public bridge synthetic addCallback(Ljava/lang/Object;)V
    .registers 2

    .line 24
    check-cast p1, Lcom/flyme/systemui/statusbar/policy/VpnController$VpnControllerCallback;

    invoke-virtual {p0, p1}, Lcom/flyme/systemui/statusbar/policy/VpnControllerImpl;->addCallback(Lcom/flyme/systemui/statusbar/policy/VpnController$VpnControllerCallback;)V

    return-void
.end method

.method public isVpnConnecting()Z
    .registers 1

    .line 109
    iget-boolean p0, p0, Lcom/flyme/systemui/statusbar/policy/VpnControllerImpl;->mConnecting:Z

    return p0
.end method

.method public isVpnEnabled()Z
    .registers 1

    .line 104
    iget-boolean p0, p0, Lcom/flyme/systemui/statusbar/policy/VpnControllerImpl;->mEnabled:Z

    return p0
.end method

.method public isVpnInitializing()Z
    .registers 1

    .line 114
    iget-boolean p0, p0, Lcom/flyme/systemui/statusbar/policy/VpnControllerImpl;->mInitializing:Z

    return p0
.end method

.method public isVpnSupported()Z
    .registers 2

    .line 95
    iget-boolean v0, p0, Lcom/flyme/systemui/statusbar/policy/VpnControllerImpl;->mIsInitialized:Z

    if-nez v0, :cond_f

    .line 96
    iget-object v0, p0, Lcom/flyme/systemui/statusbar/policy/VpnControllerImpl;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/flyme/systemui/statusbar/phone/FlymeNetworkUtils;->isNetworkConnected(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/flyme/systemui/statusbar/policy/VpnControllerImpl;->mNetworkConnected:Z

    const/4 v0, 0x1

    .line 97
    iput-boolean v0, p0, Lcom/flyme/systemui/statusbar/policy/VpnControllerImpl;->mIsInitialized:Z

    .line 99
    :cond_f
    iget-boolean p0, p0, Lcom/flyme/systemui/statusbar/policy/VpnControllerImpl;->mNetworkConnected:Z

    return p0
.end method

.method public isVpnWaitForReconnect()Z
    .registers 1

    .line 119
    iget-boolean p0, p0, Lcom/flyme/systemui/statusbar/policy/VpnControllerImpl;->mWaitForReconnect:Z

    return p0
.end method

.method public removeCallback(Lcom/flyme/systemui/statusbar/policy/VpnController$VpnControllerCallback;)V
    .registers 2

    .line 169
    iget-object p0, p0, Lcom/flyme/systemui/statusbar/policy/VpnControllerImpl;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public bridge synthetic removeCallback(Ljava/lang/Object;)V
    .registers 2

    .line 24
    check-cast p1, Lcom/flyme/systemui/statusbar/policy/VpnController$VpnControllerCallback;

    invoke-virtual {p0, p1}, Lcom/flyme/systemui/statusbar/policy/VpnControllerImpl;->removeCallback(Lcom/flyme/systemui/statusbar/policy/VpnController$VpnControllerCallback;)V

    return-void
.end method

.method public setVpnEnabled(Z)V
    .registers 3

    .line 124
    new-instance v0, Lcom/flyme/systemui/statusbar/policy/VpnControllerImpl$3;

    invoke-direct {v0, p0, p1}, Lcom/flyme/systemui/statusbar/policy/VpnControllerImpl$3;-><init>(Lcom/flyme/systemui/statusbar/policy/VpnControllerImpl;Z)V

    invoke-static {v0}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
