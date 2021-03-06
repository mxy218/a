.class public Lcom/android/systemui/qs/external/TileServices;
.super Landroid/service/quicksettings/IQSService$Stub;
.source "TileServices.java"


# static fields
.field private static final SERVICE_SORT:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/android/systemui/qs/external/TileServiceManager;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field private final mHost:Lcom/android/systemui/qs/QSTileHost;

.field private final mMainHandler:Landroid/os/Handler;

.field private mMaxBound:I

.field private final mRequestListeningReceiver:Landroid/content/BroadcastReceiver;

.field private final mServices:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Lcom/android/systemui/qs/external/CustomTile;",
            "Lcom/android/systemui/qs/external/TileServiceManager;",
            ">;"
        }
    .end annotation
.end field

.field private final mTiles:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/content/ComponentName;",
            "Lcom/android/systemui/qs/external/CustomTile;",
            ">;"
        }
    .end annotation
.end field

.field private final mTokenMap:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/os/IBinder;",
            "Lcom/android/systemui/qs/external/CustomTile;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 338
    new-instance v0, Lcom/android/systemui/qs/external/TileServices$3;

    invoke-direct {v0}, Lcom/android/systemui/qs/external/TileServices$3;-><init>()V

    sput-object v0, Lcom/android/systemui/qs/external/TileServices;->SERVICE_SORT:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/qs/QSTileHost;Landroid/os/Looper;)V
    .registers 6

    .line 66
    invoke-direct {p0}, Landroid/service/quicksettings/IQSService$Stub;-><init>()V

    .line 56
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/qs/external/TileServices;->mServices:Landroid/util/ArrayMap;

    .line 57
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/qs/external/TileServices;->mTiles:Landroid/util/ArrayMap;

    .line 58
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/qs/external/TileServices;->mTokenMap:Landroid/util/ArrayMap;

    const/4 v0, 0x3

    .line 64
    iput v0, p0, Lcom/android/systemui/qs/external/TileServices;->mMaxBound:I

    .line 328
    new-instance v0, Lcom/android/systemui/qs/external/TileServices$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/external/TileServices$2;-><init>(Lcom/android/systemui/qs/external/TileServices;)V

    iput-object v0, p0, Lcom/android/systemui/qs/external/TileServices;->mRequestListeningReceiver:Landroid/content/BroadcastReceiver;

    .line 67
    iput-object p1, p0, Lcom/android/systemui/qs/external/TileServices;->mHost:Lcom/android/systemui/qs/QSTileHost;

    .line 68
    iget-object p1, p0, Lcom/android/systemui/qs/external/TileServices;->mHost:Lcom/android/systemui/qs/QSTileHost;

    invoke-virtual {p1}, Lcom/android/systemui/qs/QSTileHost;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/qs/external/TileServices;->mContext:Landroid/content/Context;

    .line 69
    iget-object p1, p0, Lcom/android/systemui/qs/external/TileServices;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/android/systemui/qs/external/TileServices;->mRequestListeningReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.service.quicksettings.action.REQUEST_LISTENING"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 71
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/android/systemui/qs/external/TileServices;->mHandler:Landroid/os/Handler;

    .line 72
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/android/systemui/qs/external/TileServices;->mMainHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/qs/external/TileServices;)Lcom/android/systemui/qs/QSTileHost;
    .registers 1

    .line 51
    iget-object p0, p0, Lcom/android/systemui/qs/external/TileServices;->mHost:Lcom/android/systemui/qs/QSTileHost;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/systemui/qs/external/TileServices;Landroid/content/ComponentName;)V
    .registers 2

    .line 51
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/external/TileServices;->requestListening(Landroid/content/ComponentName;)V

    return-void
.end method

.method private getTileForComponent(Landroid/content/ComponentName;)Lcom/android/systemui/qs/external/CustomTile;
    .registers 3

    .line 316
    iget-object v0, p0, Lcom/android/systemui/qs/external/TileServices;->mServices:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 317
    :try_start_3
    iget-object p0, p0, Lcom/android/systemui/qs/external/TileServices;->mTiles:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/qs/external/CustomTile;

    monitor-exit v0

    return-object p0

    :catchall_d
    move-exception p0

    .line 318
    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw p0
.end method

.method private getTileForToken(Landroid/os/IBinder;)Lcom/android/systemui/qs/external/CustomTile;
    .registers 3

    .line 310
    iget-object v0, p0, Lcom/android/systemui/qs/external/TileServices;->mServices:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 311
    :try_start_3
    iget-object p0, p0, Lcom/android/systemui/qs/external/TileServices;->mTokenMap:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/qs/external/CustomTile;

    monitor-exit v0

    return-object p0

    :catchall_d
    move-exception p0

    .line 312
    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw p0
.end method

.method private requestListening(Landroid/content/ComponentName;)V
    .registers 5

    .line 160
    iget-object v0, p0, Lcom/android/systemui/qs/external/TileServices;->mServices:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 161
    :try_start_3
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/external/TileServices;->getTileForComponent(Landroid/content/ComponentName;)Lcom/android/systemui/qs/external/CustomTile;

    move-result-object v1

    if-nez v1, :cond_21

    const-string p0, "TileServices"

    .line 163
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Couldn\'t find tile for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    monitor-exit v0

    return-void

    .line 166
    :cond_21
    iget-object p0, p0, Lcom/android/systemui/qs/external/TileServices;->mServices:Landroid/util/ArrayMap;

    invoke-virtual {p0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/qs/external/TileServiceManager;

    .line 167
    invoke-virtual {p0}, Lcom/android/systemui/qs/external/TileServiceManager;->isActiveTile()Z

    move-result p1

    if-nez p1, :cond_31

    .line 168
    monitor-exit v0

    return-void

    :cond_31
    const/4 p1, 0x1

    .line 170
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/external/TileServiceManager;->setBindRequested(Z)V
    :try_end_35
    .catchall {:try_start_3 .. :try_end_35} :catchall_3e

    .line 172
    :try_start_35
    invoke-virtual {p0}, Lcom/android/systemui/qs/external/TileServiceManager;->getTileService()Landroid/service/quicksettings/IQSTileService;

    move-result-object p0

    invoke-interface {p0}, Landroid/service/quicksettings/IQSTileService;->onStartListening()V
    :try_end_3c
    .catch Landroid/os/RemoteException; {:try_start_35 .. :try_end_3c} :catch_3c
    .catchall {:try_start_35 .. :try_end_3c} :catchall_3e

    .line 175
    :catch_3c
    :try_start_3c
    monitor-exit v0

    return-void

    :catchall_3e
    move-exception p0

    monitor-exit v0
    :try_end_40
    .catchall {:try_start_3c .. :try_end_40} :catchall_3e

    throw p0
.end method

.method private verifyCaller(Lcom/android/systemui/qs/external/CustomTile;)V
    .registers 3

    .line 148
    :try_start_0
    invoke-virtual {p1}, Lcom/android/systemui/qs/external/CustomTile;->getComponent()Landroid/content/ComponentName;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p1

    .line 149
    iget-object p0, p0, Lcom/android/systemui/qs/external/TileServices;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    .line 150
    invoke-static {}, Landroid/os/Binder;->getCallingUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    .line 149
    invoke-virtual {p0, p1, v0}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;I)I

    move-result p0

    .line 151
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p1

    if-ne p1, p0, :cond_21

    return-void

    .line 152
    :cond_21
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "Component outside caller\'s uid"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_29
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_29} :catch_29

    :catch_29
    move-exception p0

    .line 155
    new-instance p1, Ljava/lang/SecurityException;

    invoke-direct {p1, p0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method


# virtual methods
.method public freeService(Lcom/android/systemui/qs/external/CustomTile;Lcom/android/systemui/qs/external/TileServiceManager;)V
    .registers 5

    .line 101
    iget-object v0, p0, Lcom/android/systemui/qs/external/TileServices;->mServices:Landroid/util/ArrayMap;

    monitor-enter v0

    const/4 v1, 0x0

    .line 102
    :try_start_4
    invoke-virtual {p2, v1}, Lcom/android/systemui/qs/external/TileServiceManager;->setBindAllowed(Z)V

    .line 103
    invoke-virtual {p2}, Lcom/android/systemui/qs/external/TileServiceManager;->handleDestroy()V

    .line 104
    iget-object v1, p0, Lcom/android/systemui/qs/external/TileServices;->mServices:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    iget-object v1, p0, Lcom/android/systemui/qs/external/TileServices;->mTokenMap:Landroid/util/ArrayMap;

    invoke-virtual {p2}, Lcom/android/systemui/qs/external/TileServiceManager;->getToken()Landroid/os/IBinder;

    move-result-object p2

    invoke-virtual {v1, p2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    iget-object p2, p0, Lcom/android/systemui/qs/external/TileServices;->mTiles:Landroid/util/ArrayMap;

    invoke-virtual {p1}, Lcom/android/systemui/qs/external/CustomTile;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    invoke-virtual {p1}, Lcom/android/systemui/qs/external/CustomTile;->getComponent()Landroid/content/ComponentName;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object p1

    .line 109
    iget-object p2, p0, Lcom/android/systemui/qs/external/TileServices;->mMainHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/systemui/qs/external/-$$Lambda$TileServices$m2qCzd8BVbBUzSnClFn7o_chF7k;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/qs/external/-$$Lambda$TileServices$m2qCzd8BVbBUzSnClFn7o_chF7k;-><init>(Lcom/android/systemui/qs/external/TileServices;Ljava/lang/String;)V

    invoke-virtual {p2, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 111
    monitor-exit v0

    return-void

    :catchall_35
    move-exception p0

    monitor-exit v0
    :try_end_37
    .catchall {:try_start_4 .. :try_end_37} :catchall_35

    throw p0
.end method

.method public getContext()Landroid/content/Context;
    .registers 1

    .line 76
    iget-object p0, p0, Lcom/android/systemui/qs/external/TileServices;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public getHost()Lcom/android/systemui/qs/QSTileHost;
    .registers 1

    .line 80
    iget-object p0, p0, Lcom/android/systemui/qs/external/TileServices;->mHost:Lcom/android/systemui/qs/QSTileHost;

    return-object p0
.end method

.method public getTile(Landroid/os/IBinder;)Landroid/service/quicksettings/Tile;
    .registers 2

    .line 280
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/external/TileServices;->getTileForToken(Landroid/os/IBinder;)Lcom/android/systemui/qs/external/CustomTile;

    move-result-object p1

    if-eqz p1, :cond_e

    .line 282
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/external/TileServices;->verifyCaller(Lcom/android/systemui/qs/external/CustomTile;)V

    .line 283
    invoke-virtual {p1}, Lcom/android/systemui/qs/external/CustomTile;->getQsTile()Landroid/service/quicksettings/Tile;

    move-result-object p0

    return-object p0

    :cond_e
    const/4 p0, 0x0

    return-object p0
.end method

.method public getTileWrapper(Lcom/android/systemui/qs/external/CustomTile;)Lcom/android/systemui/qs/external/TileServiceManager;
    .registers 6

    .line 84
    invoke-virtual {p1}, Lcom/android/systemui/qs/external/CustomTile;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    .line 85
    invoke-virtual {p1}, Lcom/android/systemui/qs/external/CustomTile;->getQsTile()Landroid/service/quicksettings/Tile;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/qs/external/TileServices;->onCreateTileService(Landroid/content/ComponentName;Landroid/service/quicksettings/Tile;)Lcom/android/systemui/qs/external/TileServiceManager;

    move-result-object v1

    .line 86
    iget-object v2, p0, Lcom/android/systemui/qs/external/TileServices;->mServices:Landroid/util/ArrayMap;

    monitor-enter v2

    .line 87
    :try_start_f
    iget-object v3, p0, Lcom/android/systemui/qs/external/TileServices;->mServices:Landroid/util/ArrayMap;

    invoke-virtual {v3, p1, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    iget-object v3, p0, Lcom/android/systemui/qs/external/TileServices;->mTiles:Landroid/util/ArrayMap;

    invoke-virtual {v3, v0, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    iget-object p0, p0, Lcom/android/systemui/qs/external/TileServices;->mTokenMap:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Lcom/android/systemui/qs/external/TileServiceManager;->getToken()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    monitor-exit v2
    :try_end_23
    .catchall {:try_start_f .. :try_end_23} :catchall_27

    .line 92
    invoke-virtual {v1}, Lcom/android/systemui/qs/external/TileServiceManager;->startLifecycleManagerAndAddTile()V

    return-object v1

    :catchall_27
    move-exception p0

    .line 90
    :try_start_28
    monitor-exit v2
    :try_end_29
    .catchall {:try_start_28 .. :try_end_29} :catchall_27

    throw p0
.end method

.method public isLocked()Z
    .registers 1

    .line 299
    const-class p0, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    invoke-static {p0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    .line 300
    invoke-interface {p0}, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;->isShowing()Z

    move-result p0

    return p0
.end method

.method public isSecure()Z
    .registers 2

    .line 305
    const-class p0, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    invoke-static {p0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    .line 306
    invoke-interface {p0}, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;->isSecure()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-interface {p0}, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;->isShowing()Z

    move-result p0

    if-eqz p0, :cond_16

    const/4 p0, 0x1

    goto :goto_17

    :cond_16
    const/4 p0, 0x0

    :goto_17
    return p0
.end method

.method public synthetic lambda$freeService$0$TileServices(Ljava/lang/String;)V
    .registers 2

    .line 109
    iget-object p0, p0, Lcom/android/systemui/qs/external/TileServices;->mHost:Lcom/android/systemui/qs/QSTileHost;

    invoke-virtual {p0}, Lcom/android/systemui/qs/QSTileHost;->getIconController()Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    move-result-object p0

    .line 110
    invoke-interface {p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->removeAllIconsForSlot(Ljava/lang/String;)V

    return-void
.end method

.method protected onCreateTileService(Landroid/content/ComponentName;Landroid/service/quicksettings/Tile;)Lcom/android/systemui/qs/external/TileServiceManager;
    .registers 5

    .line 97
    new-instance v0, Lcom/android/systemui/qs/external/TileServiceManager;

    iget-object v1, p0, Lcom/android/systemui/qs/external/TileServices;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1, p1, p2}, Lcom/android/systemui/qs/external/TileServiceManager;-><init>(Lcom/android/systemui/qs/external/TileServices;Landroid/os/Handler;Landroid/content/ComponentName;Landroid/service/quicksettings/Tile;)V

    return-object v0
.end method

.method public onDialogHidden(Landroid/os/IBinder;)V
    .registers 3

    .line 231
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/external/TileServices;->getTileForToken(Landroid/os/IBinder;)Lcom/android/systemui/qs/external/CustomTile;

    move-result-object p1

    if-eqz p1, :cond_18

    .line 233
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/external/TileServices;->verifyCaller(Lcom/android/systemui/qs/external/CustomTile;)V

    .line 234
    iget-object p0, p0, Lcom/android/systemui/qs/external/TileServices;->mServices:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/qs/external/TileServiceManager;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/external/TileServiceManager;->setShowingDialog(Z)V

    .line 235
    invoke-virtual {p1}, Lcom/android/systemui/qs/external/CustomTile;->onDialogHidden()V

    :cond_18
    return-void
.end method

.method public onShowDialog(Landroid/os/IBinder;)V
    .registers 3

    .line 220
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/external/TileServices;->getTileForToken(Landroid/os/IBinder;)Lcom/android/systemui/qs/external/CustomTile;

    move-result-object p1

    if-eqz p1, :cond_1d

    .line 222
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/external/TileServices;->verifyCaller(Lcom/android/systemui/qs/external/CustomTile;)V

    .line 223
    invoke-virtual {p1}, Lcom/android/systemui/qs/external/CustomTile;->onDialogShown()V

    .line 224
    iget-object v0, p0, Lcom/android/systemui/qs/external/TileServices;->mHost:Lcom/android/systemui/qs/QSTileHost;

    invoke-virtual {v0}, Lcom/android/systemui/qs/QSTileHost;->forceCollapsePanels()V

    .line 225
    iget-object p0, p0, Lcom/android/systemui/qs/external/TileServices;->mServices:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/qs/external/TileServiceManager;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/external/TileServiceManager;->setShowingDialog(Z)V

    :cond_1d
    return-void
.end method

.method public onStartActivity(Landroid/os/IBinder;)V
    .registers 2

    .line 241
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/external/TileServices;->getTileForToken(Landroid/os/IBinder;)Lcom/android/systemui/qs/external/CustomTile;

    move-result-object p1

    if-eqz p1, :cond_e

    .line 243
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/external/TileServices;->verifyCaller(Lcom/android/systemui/qs/external/CustomTile;)V

    .line 244
    iget-object p0, p0, Lcom/android/systemui/qs/external/TileServices;->mHost:Lcom/android/systemui/qs/QSTileHost;

    invoke-virtual {p0}, Lcom/android/systemui/qs/QSTileHost;->forceCollapsePanels()V

    :cond_e
    return-void
.end method

.method public onStartSuccessful(Landroid/os/IBinder;)V
    .registers 5

    .line 200
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/external/TileServices;->getTileForToken(Landroid/os/IBinder;)Lcom/android/systemui/qs/external/CustomTile;

    move-result-object p1

    if-eqz p1, :cond_49

    .line 202
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/external/TileServices;->verifyCaller(Lcom/android/systemui/qs/external/CustomTile;)V

    .line 203
    iget-object v0, p0, Lcom/android/systemui/qs/external/TileServices;->mServices:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 204
    :try_start_c
    iget-object p0, p0, Lcom/android/systemui/qs/external/TileServices;->mServices:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/qs/external/TileServiceManager;

    if-eqz p0, :cond_25

    .line 207
    invoke-virtual {p0}, Lcom/android/systemui/qs/external/TileServiceManager;->isLifecycleStarted()Z

    move-result v1

    if-nez v1, :cond_1d

    goto :goto_25

    .line 212
    :cond_1d
    invoke-virtual {p0}, Lcom/android/systemui/qs/external/TileServiceManager;->clearPendingBind()V

    .line 213
    monitor-exit v0
    :try_end_21
    .catchall {:try_start_c .. :try_end_21} :catchall_46

    .line 214
    invoke-virtual {p1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->refreshState()V

    goto :goto_49

    :cond_25
    :goto_25
    :try_start_25
    const-string p0, "TileServices"

    .line 208
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TileServiceManager not started for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/systemui/qs/external/CustomTile;->getComponent()Landroid/content/ComponentName;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    invoke-static {p0, p1, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 210
    monitor-exit v0

    return-void

    :catchall_46
    move-exception p0

    .line 213
    monitor-exit v0
    :try_end_48
    .catchall {:try_start_25 .. :try_end_48} :catchall_46

    throw p0

    :cond_49
    :goto_49
    return-void
.end method

.method public recalculateBindAllowance()V
    .registers 8

    .line 121
    iget-object v0, p0, Lcom/android/systemui/qs/external/TileServices;->mServices:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 122
    :try_start_3
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/systemui/qs/external/TileServices;->mServices:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 123
    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_53

    .line 124
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 125
    iget v2, p0, Lcom/android/systemui/qs/external/TileServices;->mMaxBound:I

    const/4 v3, 0x0

    if-le v0, v2, :cond_30

    .line 126
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    move v2, v3

    :goto_1d
    if-ge v2, v0, :cond_2b

    .line 129
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/systemui/qs/external/TileServiceManager;

    invoke-virtual {v6, v4, v5}, Lcom/android/systemui/qs/external/TileServiceManager;->calculateBindPriority(J)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1d

    .line 132
    :cond_2b
    sget-object v2, Lcom/android/systemui/qs/external/TileServices;->SERVICE_SORT:Ljava/util/Comparator;

    invoke-static {v1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    :cond_30
    move v2, v3

    .line 136
    :goto_31
    iget v4, p0, Lcom/android/systemui/qs/external/TileServices;->mMaxBound:I

    if-ge v2, v4, :cond_44

    if-ge v2, v0, :cond_44

    .line 137
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/qs/external/TileServiceManager;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/android/systemui/qs/external/TileServiceManager;->setBindAllowed(Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_31

    :cond_44
    :goto_44
    if-ge v2, v0, :cond_52

    .line 141
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/qs/external/TileServiceManager;

    invoke-virtual {p0, v3}, Lcom/android/systemui/qs/external/TileServiceManager;->setBindAllowed(Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_44

    :cond_52
    return-void

    :catchall_53
    move-exception p0

    .line 123
    :try_start_54
    monitor-exit v0
    :try_end_55
    .catchall {:try_start_54 .. :try_end_55} :catchall_53

    throw p0
.end method

.method public startUnlockAndRun(Landroid/os/IBinder;)V
    .registers 2

    .line 290
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/external/TileServices;->getTileForToken(Landroid/os/IBinder;)Lcom/android/systemui/qs/external/CustomTile;

    move-result-object p1

    if-eqz p1, :cond_c

    .line 292
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/external/TileServices;->verifyCaller(Lcom/android/systemui/qs/external/CustomTile;)V

    .line 293
    invoke-virtual {p1}, Lcom/android/systemui/qs/external/CustomTile;->startUnlockAndRun()V

    :cond_c
    return-void
.end method

.method public updateQsTile(Landroid/service/quicksettings/Tile;Landroid/os/IBinder;)V
    .registers 6

    .line 180
    invoke-direct {p0, p2}, Lcom/android/systemui/qs/external/TileServices;->getTileForToken(Landroid/os/IBinder;)Lcom/android/systemui/qs/external/CustomTile;

    move-result-object p2

    if-eqz p2, :cond_53

    .line 182
    invoke-direct {p0, p2}, Lcom/android/systemui/qs/external/TileServices;->verifyCaller(Lcom/android/systemui/qs/external/CustomTile;)V

    .line 183
    iget-object v0, p0, Lcom/android/systemui/qs/external/TileServices;->mServices:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 184
    :try_start_c
    iget-object p0, p0, Lcom/android/systemui/qs/external/TileServices;->mServices:Landroid/util/ArrayMap;

    invoke-virtual {p0, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/qs/external/TileServiceManager;

    if-eqz p0, :cond_2f

    .line 185
    invoke-virtual {p0}, Lcom/android/systemui/qs/external/TileServiceManager;->isLifecycleStarted()Z

    move-result v1

    if-nez v1, :cond_1d

    goto :goto_2f

    .line 190
    :cond_1d
    invoke-virtual {p0}, Lcom/android/systemui/qs/external/TileServiceManager;->clearPendingBind()V

    .line 191
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lcom/android/systemui/qs/external/TileServiceManager;->setLastUpdate(J)V

    .line 192
    monitor-exit v0
    :try_end_28
    .catchall {:try_start_c .. :try_end_28} :catchall_50

    .line 193
    invoke-virtual {p2, p1}, Lcom/android/systemui/qs/external/CustomTile;->updateState(Landroid/service/quicksettings/Tile;)V

    .line 194
    invoke-virtual {p2}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->refreshState()V

    goto :goto_53

    :cond_2f
    :goto_2f
    :try_start_2f
    const-string p0, "TileServices"

    .line 186
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TileServiceManager not started for "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/android/systemui/qs/external/CustomTile;->getComponent()Landroid/content/ComponentName;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/IllegalStateException;

    invoke-direct {p2}, Ljava/lang/IllegalStateException;-><init>()V

    invoke-static {p0, p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 188
    monitor-exit v0

    return-void

    :catchall_50
    move-exception p0

    .line 192
    monitor-exit v0
    :try_end_52
    .catchall {:try_start_2f .. :try_end_52} :catchall_50

    throw p0

    :cond_53
    :goto_53
    return-void
.end method

.method public updateStatusIcon(Landroid/os/IBinder;Landroid/graphics/drawable/Icon;Ljava/lang/String;)V
    .registers 12

    .line 250
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/external/TileServices;->getTileForToken(Landroid/os/IBinder;)Lcom/android/systemui/qs/external/CustomTile;

    move-result-object p1

    if-eqz p1, :cond_44

    .line 252
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/external/TileServices;->verifyCaller(Lcom/android/systemui/qs/external/CustomTile;)V

    .line 254
    :try_start_9
    invoke-virtual {p1}, Lcom/android/systemui/qs/external/CustomTile;->getComponent()Landroid/content/ComponentName;

    move-result-object p1

    .line 255
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 256
    invoke-static {}, Landroid/service/quicksettings/IQSService$Stub;->getCallingUserHandle()Landroid/os/UserHandle;

    move-result-object v1

    .line 257
    iget-object v0, p0, Lcom/android/systemui/qs/external/TileServices;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v3, 0x0

    .line 258
    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v4

    .line 257
    invoke-virtual {v0, v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 259
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v0}, Landroid/content/pm/ApplicationInfo;->isSystemApp()Z

    move-result v0

    if-eqz v0, :cond_44

    if-eqz p2, :cond_39

    .line 261
    new-instance v7, Lcom/android/internal/statusbar/StatusBarIcon;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, v7

    move-object v3, p2

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/statusbar/StatusBarIcon;-><init>(Landroid/os/UserHandle;Ljava/lang/String;Landroid/graphics/drawable/Icon;IILjava/lang/CharSequence;)V

    goto :goto_3a

    :cond_39
    const/4 v7, 0x0

    .line 264
    :goto_3a
    iget-object p2, p0, Lcom/android/systemui/qs/external/TileServices;->mMainHandler:Landroid/os/Handler;

    new-instance p3, Lcom/android/systemui/qs/external/TileServices$1;

    invoke-direct {p3, p0, p1, v7}, Lcom/android/systemui/qs/external/TileServices$1;-><init>(Lcom/android/systemui/qs/external/TileServices;Landroid/content/ComponentName;Lcom/android/internal/statusbar/StatusBarIcon;)V

    invoke-virtual {p2, p3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_44
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_9 .. :try_end_44} :catch_44

    :catch_44
    :cond_44
    return-void
.end method
