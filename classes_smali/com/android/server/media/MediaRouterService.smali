.class public final Lcom/android/server/media/MediaRouterService;
.super Landroid/media/IMediaRouterService$Stub;
.source "MediaRouterService.java"

# interfaces
.implements Lcom/android/server/Watchdog$Monitor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/media/MediaRouterService$UserHandler;,
        Lcom/android/server/media/MediaRouterService$UserRecord;,
        Lcom/android/server/media/MediaRouterService$ClientGroup;,
        Lcom/android/server/media/MediaRouterService$ClientRecord;,
        Lcom/android/server/media/MediaRouterService$MediaRouterServiceBroadcastReceiver;
    }
.end annotation


# static fields
.field static final CONNECTED_TIMEOUT:J = 0xea60L

.field static final CONNECTING_TIMEOUT:J = 0x1388L

.field private static final DEBUG:Z

.field private static final TAG:Ljava/lang/String; = "MediaRouterService"


# instance fields
.field mActiveBluetoothDevice:Landroid/bluetooth/BluetoothDevice;

.field private final mActivePlayerMinPriorityQueue:Landroid/util/IntArray;

.field private final mActivePlayerUidMinPriorityQueue:Landroid/util/IntArray;

.field private final mAllClientRecords:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/os/IBinder;",
            "Lcom/android/server/media/MediaRouterService$ClientRecord;",
            ">;"
        }
    .end annotation
.end field

.field private final mAudioPlayerStateMonitor:Lcom/android/server/media/AudioPlayerStateMonitor;

.field mAudioRouteMainType:I

.field private final mAudioService:Landroid/media/IAudioService;

.field private final mContext:Landroid/content/Context;

.field private mCurrentUserId:I

.field mGlobalBluetoothA2dpOn:Z

.field private final mHandler:Landroid/os/Handler;

.field private final mLock:Ljava/lang/Object;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private final mUserRecords:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/media/MediaRouterService$UserRecord;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 77
    const-string v0, "MediaRouterService"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/media/MediaRouterService;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 9
    .param p1, "context"  # Landroid/content/Context;

    .line 111
    invoke-direct {p0}, Landroid/media/IMediaRouterService$Stub;-><init>()V

    .line 96
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/media/MediaRouterService;->mLock:Ljava/lang/Object;

    .line 97
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/media/MediaRouterService;->mUserRecords:Landroid/util/SparseArray;

    .line 98
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/media/MediaRouterService;->mAllClientRecords:Landroid/util/ArrayMap;

    .line 99
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/media/MediaRouterService;->mCurrentUserId:I

    .line 102
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/server/media/MediaRouterService;->mHandler:Landroid/os/Handler;

    .line 103
    new-instance v0, Landroid/util/IntArray;

    invoke-direct {v0}, Landroid/util/IntArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/media/MediaRouterService;->mActivePlayerMinPriorityQueue:Landroid/util/IntArray;

    .line 104
    new-instance v0, Landroid/util/IntArray;

    invoke-direct {v0}, Landroid/util/IntArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/media/MediaRouterService;->mActivePlayerUidMinPriorityQueue:Landroid/util/IntArray;

    .line 106
    new-instance v0, Lcom/android/server/media/MediaRouterService$MediaRouterServiceBroadcastReceiver;

    invoke-direct {v0, p0}, Lcom/android/server/media/MediaRouterService$MediaRouterServiceBroadcastReceiver;-><init>(Lcom/android/server/media/MediaRouterService;)V

    iput-object v0, p0, Lcom/android/server/media/MediaRouterService;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 108
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/media/MediaRouterService;->mAudioRouteMainType:I

    .line 109
    iput-boolean v0, p0, Lcom/android/server/media/MediaRouterService;->mGlobalBluetoothA2dpOn:Z

    .line 112
    iput-object p1, p0, Lcom/android/server/media/MediaRouterService;->mContext:Landroid/content/Context;

    .line 113
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/server/Watchdog;->addMonitor(Lcom/android/server/Watchdog$Monitor;)V

    .line 115
    nop

    .line 116
    const-string v0, "audio"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 115
    invoke-static {v0}, Landroid/media/IAudioService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IAudioService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/media/MediaRouterService;->mAudioService:Landroid/media/IAudioService;

    .line 117
    invoke-static {p1}, Lcom/android/server/media/AudioPlayerStateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/server/media/AudioPlayerStateMonitor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/media/MediaRouterService;->mAudioPlayerStateMonitor:Lcom/android/server/media/AudioPlayerStateMonitor;

    .line 118
    iget-object v0, p0, Lcom/android/server/media/MediaRouterService;->mAudioPlayerStateMonitor:Lcom/android/server/media/AudioPlayerStateMonitor;

    new-instance v1, Lcom/android/server/media/MediaRouterService$1;

    invoke-direct {v1, p0}, Lcom/android/server/media/MediaRouterService$1;-><init>(Lcom/android/server/media/MediaRouterService;)V

    iget-object v2, p0, Lcom/android/server/media/MediaRouterService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1, v2}, Lcom/android/server/media/AudioPlayerStateMonitor;->registerListener(Lcom/android/server/media/AudioPlayerStateMonitor$OnAudioPlayerActiveStateChangedListener;Landroid/os/Handler;)V

    .line 169
    const/4 v0, 0x0

    .line 171
    .local v0, "audioRoutes":Landroid/media/AudioRoutesInfo;
    :try_start_65
    iget-object v1, p0, Lcom/android/server/media/MediaRouterService;->mAudioService:Landroid/media/IAudioService;

    new-instance v2, Lcom/android/server/media/MediaRouterService$2;

    invoke-direct {v2, p0}, Lcom/android/server/media/MediaRouterService$2;-><init>(Lcom/android/server/media/MediaRouterService;)V

    invoke-interface {v1, v2}, Landroid/media/IAudioService;->startWatchingRoutes(Landroid/media/IAudioRoutesObserver;)Landroid/media/AudioRoutesInfo;

    move-result-object v1
    :try_end_70
    .catch Landroid/os/RemoteException; {:try_start_65 .. :try_end_70} :catch_72

    move-object v0, v1

    .line 196
    goto :goto_7a

    .line 194
    :catch_72
    move-exception v1

    .line 195
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "MediaRouterService"

    const-string v3, "RemoteException in the audio service."

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    .end local v1  # "e":Landroid/os/RemoteException;
    :goto_7a
    new-instance v4, Landroid/content/IntentFilter;

    const-string v1, "android.bluetooth.a2dp.profile.action.ACTIVE_DEVICE_CHANGED"

    invoke-direct {v4, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 199
    .local v4, "intentFilter":Landroid/content/IntentFilter;
    iget-object v2, p0, Lcom/android/server/media/MediaRouterService;->mReceiver:Landroid/content/BroadcastReceiver;

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 200
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/media/MediaRouterService;)Landroid/util/IntArray;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/media/MediaRouterService;

    .line 74
    iget-object v0, p0, Lcom/android/server/media/MediaRouterService;->mActivePlayerMinPriorityQueue:Landroid/util/IntArray;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/media/MediaRouterService;)Landroid/util/IntArray;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/media/MediaRouterService;

    .line 74
    iget-object v0, p0, Lcom/android/server/media/MediaRouterService;->mActivePlayerUidMinPriorityQueue:Landroid/util/IntArray;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/media/MediaRouterService;)Landroid/os/Handler;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/media/MediaRouterService;

    .line 74
    iget-object v0, p0, Lcom/android/server/media/MediaRouterService;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$300()Z
    .registers 1

    .line 74
    sget-boolean v0, Lcom/android/server/media/MediaRouterService;->DEBUG:Z

    return v0
.end method

.method static synthetic access$400(Lcom/android/server/media/MediaRouterService;)Ljava/lang/Object;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/media/MediaRouterService;

    .line 74
    iget-object v0, p0, Lcom/android/server/media/MediaRouterService;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/media/MediaRouterService;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/media/MediaRouterService;

    .line 74
    iget-object v0, p0, Lcom/android/server/media/MediaRouterService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private disposeClientLocked(Lcom/android/server/media/MediaRouterService$ClientRecord;Z)V
    .registers 6
    .param p1, "clientRecord"  # Lcom/android/server/media/MediaRouterService$ClientRecord;
    .param p2, "died"  # Z

    .line 689
    sget-boolean v0, Lcom/android/server/media/MediaRouterService;->DEBUG:Z

    if-eqz v0, :cond_31

    .line 690
    const-string v0, "MediaRouterService"

    if-eqz p2, :cond_1d

    .line 691
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ": Died!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_31

    .line 693
    :cond_1d
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ": Unregistered"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 696
    :cond_31
    :goto_31
    iget v0, p1, Lcom/android/server/media/MediaRouterService$ClientRecord;->mRouteTypes:I

    if-nez v0, :cond_39

    iget-boolean v0, p1, Lcom/android/server/media/MediaRouterService$ClientRecord;->mActiveScan:Z

    if-eqz v0, :cond_41

    .line 697
    :cond_39
    iget-object v0, p1, Lcom/android/server/media/MediaRouterService$ClientRecord;->mUserRecord:Lcom/android/server/media/MediaRouterService$UserRecord;

    iget-object v0, v0, Lcom/android/server/media/MediaRouterService$UserRecord;->mHandler:Lcom/android/server/media/MediaRouterService$UserHandler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/android/server/media/MediaRouterService$UserHandler;->sendEmptyMessage(I)Z

    .line 700
    :cond_41
    invoke-virtual {p1}, Lcom/android/server/media/MediaRouterService$ClientRecord;->dispose()V

    .line 701
    return-void
.end method

.method private disposeUserIfNeededLocked(Lcom/android/server/media/MediaRouterService$UserRecord;)V
    .registers 4
    .param p1, "userRecord"  # Lcom/android/server/media/MediaRouterService$UserRecord;

    .line 672
    iget v0, p1, Lcom/android/server/media/MediaRouterService$UserRecord;->mUserId:I

    iget v1, p0, Lcom/android/server/media/MediaRouterService;->mCurrentUserId:I

    if-eq v0, v1, :cond_2f

    iget-object v0, p1, Lcom/android/server/media/MediaRouterService$UserRecord;->mClientRecords:Ljava/util/ArrayList;

    .line 673
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 674
    sget-boolean v0, Lcom/android/server/media/MediaRouterService;->DEBUG:Z

    if-eqz v0, :cond_28

    .line 675
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ": Disposed"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MediaRouterService"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 677
    :cond_28
    iget-object v0, p0, Lcom/android/server/media/MediaRouterService;->mUserRecords:Landroid/util/SparseArray;

    iget v1, p1, Lcom/android/server/media/MediaRouterService$UserRecord;->mUserId:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->remove(I)V

    .line 680
    :cond_2f
    return-void
.end method

.method private getStateLocked(Landroid/media/IMediaRouterClient;)Landroid/media/MediaRouterClientState;
    .registers 4
    .param p1, "client"  # Landroid/media/IMediaRouterClient;

    .line 568
    iget-object v0, p0, Lcom/android/server/media/MediaRouterService;->mAllClientRecords:Landroid/util/ArrayMap;

    invoke-interface {p1}, Landroid/media/IMediaRouterClient;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/media/MediaRouterService$ClientRecord;

    .line 569
    .local v0, "clientRecord":Lcom/android/server/media/MediaRouterService$ClientRecord;
    if-eqz v0, :cond_13

    .line 570
    invoke-virtual {v0}, Lcom/android/server/media/MediaRouterService$ClientRecord;->getState()Landroid/media/MediaRouterClientState;

    move-result-object v1

    return-object v1

    .line 572
    :cond_13
    const/4 v1, 0x0

    return-object v1
.end method

.method private initializeClientLocked(Lcom/android/server/media/MediaRouterService$ClientRecord;)V
    .registers 4
    .param p1, "clientRecord"  # Lcom/android/server/media/MediaRouterService$ClientRecord;

    .line 683
    sget-boolean v0, Lcom/android/server/media/MediaRouterService;->DEBUG:Z

    if-eqz v0, :cond_1a

    .line 684
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ": Registered"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MediaRouterService"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 686
    :cond_1a
    return-void
.end method

.method private initializeUserLocked(Lcom/android/server/media/MediaRouterService$UserRecord;)V
    .registers 4
    .param p1, "userRecord"  # Lcom/android/server/media/MediaRouterService$UserRecord;

    .line 659
    sget-boolean v0, Lcom/android/server/media/MediaRouterService;->DEBUG:Z

    if-eqz v0, :cond_1a

    .line 660
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ": Initialized"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MediaRouterService"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 662
    :cond_1a
    iget v0, p1, Lcom/android/server/media/MediaRouterService$UserRecord;->mUserId:I

    iget v1, p0, Lcom/android/server/media/MediaRouterService;->mCurrentUserId:I

    if-ne v0, v1, :cond_26

    .line 663
    iget-object v0, p1, Lcom/android/server/media/MediaRouterService$UserRecord;->mHandler:Lcom/android/server/media/MediaRouterService$UserHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/media/MediaRouterService$UserHandler;->sendEmptyMessage(I)Z

    .line 665
    :cond_26
    return-void
.end method

.method private registerClientGroupIdLocked(Landroid/media/IMediaRouterClient;Ljava/lang/String;)V
    .registers 8
    .param p1, "client"  # Landroid/media/IMediaRouterClient;
    .param p2, "groupId"  # Ljava/lang/String;

    .line 532
    invoke-interface {p1}, Landroid/media/IMediaRouterClient;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 533
    .local v0, "binder":Landroid/os/IBinder;
    iget-object v1, p0, Lcom/android/server/media/MediaRouterService;->mAllClientRecords:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/media/MediaRouterService$ClientRecord;

    .line 534
    .local v1, "clientRecord":Lcom/android/server/media/MediaRouterService$ClientRecord;
    if-nez v1, :cond_16

    .line 535
    const-string v2, "MediaRouterService"

    const-string v3, "Ignoring group id register request of a unregistered client."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 536
    return-void

    .line 538
    :cond_16
    iget-object v2, v1, Lcom/android/server/media/MediaRouterService$ClientRecord;->mGroupId:Ljava/lang/String;

    invoke-static {v2, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 539
    return-void

    .line 541
    :cond_1f
    iget-object v2, v1, Lcom/android/server/media/MediaRouterService$ClientRecord;->mUserRecord:Lcom/android/server/media/MediaRouterService$UserRecord;

    .line 542
    .local v2, "userRecord":Lcom/android/server/media/MediaRouterService$UserRecord;
    iget-object v3, v1, Lcom/android/server/media/MediaRouterService$ClientRecord;->mGroupId:Ljava/lang/String;

    if-eqz v3, :cond_2a

    .line 543
    iget-object v3, v1, Lcom/android/server/media/MediaRouterService$ClientRecord;->mGroupId:Ljava/lang/String;

    invoke-virtual {v2, v3, v1}, Lcom/android/server/media/MediaRouterService$UserRecord;->removeFromGroup(Ljava/lang/String;Lcom/android/server/media/MediaRouterService$ClientRecord;)V

    .line 545
    :cond_2a
    iput-object p2, v1, Lcom/android/server/media/MediaRouterService$ClientRecord;->mGroupId:Ljava/lang/String;

    .line 546
    if-eqz p2, :cond_3c

    .line 547
    invoke-virtual {v2, p2, v1}, Lcom/android/server/media/MediaRouterService$UserRecord;->addToGroup(Ljava/lang/String;Lcom/android/server/media/MediaRouterService$ClientRecord;)V

    .line 548
    iget-object v3, v2, Lcom/android/server/media/MediaRouterService$UserRecord;->mHandler:Lcom/android/server/media/MediaRouterService$UserHandler;

    const/16 v4, 0xa

    invoke-virtual {v3, v4, p2}, Lcom/android/server/media/MediaRouterService$UserHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    .line 549
    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    .line 551
    :cond_3c
    return-void
.end method

.method private registerClientLocked(Landroid/media/IMediaRouterClient;IILjava/lang/String;IZ)V
    .registers 22
    .param p1, "client"  # Landroid/media/IMediaRouterClient;
    .param p2, "uid"  # I
    .param p3, "pid"  # I
    .param p4, "packageName"  # Ljava/lang/String;
    .param p5, "userId"  # I
    .param p6, "trusted"  # Z

    .line 504
    move-object v9, p0

    move/from16 v10, p5

    invoke-interface/range {p1 .. p1}, Landroid/media/IMediaRouterClient;->asBinder()Landroid/os/IBinder;

    move-result-object v11

    .line 505
    .local v11, "binder":Landroid/os/IBinder;
    iget-object v0, v9, Lcom/android/server/media/MediaRouterService;->mAllClientRecords:Landroid/util/ArrayMap;

    invoke-virtual {v0, v11}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/media/MediaRouterService$ClientRecord;

    .line 506
    .local v0, "clientRecord":Lcom/android/server/media/MediaRouterService$ClientRecord;
    if-nez v0, :cond_63

    .line 507
    const/4 v1, 0x0

    .line 508
    .local v1, "newUser":Z
    iget-object v2, v9, Lcom/android/server/media/MediaRouterService;->mUserRecords:Landroid/util/SparseArray;

    invoke-virtual {v2, v10}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/media/MediaRouterService$UserRecord;

    .line 509
    .local v2, "userRecord":Lcom/android/server/media/MediaRouterService$UserRecord;
    if-nez v2, :cond_26

    .line 510
    new-instance v3, Lcom/android/server/media/MediaRouterService$UserRecord;

    invoke-direct {v3, p0, v10}, Lcom/android/server/media/MediaRouterService$UserRecord;-><init>(Lcom/android/server/media/MediaRouterService;I)V

    move-object v2, v3

    .line 511
    const/4 v1, 0x1

    move v13, v1

    move-object v12, v2

    goto :goto_28

    .line 509
    :cond_26
    move v13, v1

    move-object v12, v2

    .line 513
    .end local v1  # "newUser":Z
    .end local v2  # "userRecord":Lcom/android/server/media/MediaRouterService$UserRecord;
    .local v12, "userRecord":Lcom/android/server/media/MediaRouterService$UserRecord;
    .local v13, "newUser":Z
    :goto_28
    new-instance v14, Lcom/android/server/media/MediaRouterService$ClientRecord;

    move-object v1, v14

    move-object v2, p0

    move-object v3, v12

    move-object/from16 v4, p1

    move/from16 v5, p2

    move/from16 v6, p3

    move-object/from16 v7, p4

    move/from16 v8, p6

    invoke-direct/range {v1 .. v8}, Lcom/android/server/media/MediaRouterService$ClientRecord;-><init>(Lcom/android/server/media/MediaRouterService;Lcom/android/server/media/MediaRouterService$UserRecord;Landroid/media/IMediaRouterClient;IILjava/lang/String;Z)V

    .line 515
    .end local v0  # "clientRecord":Lcom/android/server/media/MediaRouterService$ClientRecord;
    .local v1, "clientRecord":Lcom/android/server/media/MediaRouterService$ClientRecord;
    const/4 v0, 0x0

    :try_start_3b
    invoke-interface {v11, v1, v0}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_3e
    .catch Landroid/os/RemoteException; {:try_start_3b .. :try_end_3e} :catch_58

    .line 518
    nop

    .line 520
    if-eqz v13, :cond_49

    .line 521
    iget-object v0, v9, Lcom/android/server/media/MediaRouterService;->mUserRecords:Landroid/util/SparseArray;

    invoke-virtual {v0, v10, v12}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 522
    invoke-direct {p0, v12}, Lcom/android/server/media/MediaRouterService;->initializeUserLocked(Lcom/android/server/media/MediaRouterService$UserRecord;)V

    .line 525
    :cond_49
    iget-object v0, v12, Lcom/android/server/media/MediaRouterService$UserRecord;->mClientRecords:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 526
    iget-object v0, v9, Lcom/android/server/media/MediaRouterService;->mAllClientRecords:Landroid/util/ArrayMap;

    invoke-virtual {v0, v11, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 527
    invoke-direct {p0, v1}, Lcom/android/server/media/MediaRouterService;->initializeClientLocked(Lcom/android/server/media/MediaRouterService$ClientRecord;)V

    move-object v0, v1

    goto :goto_63

    .line 516
    :catch_58
    move-exception v0

    move-object v2, v0

    move-object v0, v2

    .line 517
    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Media router client died prematurely."

    invoke-direct {v2, v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 529
    .end local v1  # "clientRecord":Lcom/android/server/media/MediaRouterService$ClientRecord;
    .end local v12  # "userRecord":Lcom/android/server/media/MediaRouterService$UserRecord;
    .end local v13  # "newUser":Z
    .local v0, "clientRecord":Lcom/android/server/media/MediaRouterService$ClientRecord;
    :cond_63
    :goto_63
    return-void
.end method

.method private requestSetVolumeLocked(Landroid/media/IMediaRouterClient;Ljava/lang/String;I)V
    .registers 9
    .param p1, "client"  # Landroid/media/IMediaRouterClient;
    .param p2, "routeId"  # Ljava/lang/String;
    .param p3, "volume"  # I

    .line 640
    invoke-interface {p1}, Landroid/media/IMediaRouterClient;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 641
    .local v0, "binder":Landroid/os/IBinder;
    iget-object v1, p0, Lcom/android/server/media/MediaRouterService;->mAllClientRecords:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/media/MediaRouterService$ClientRecord;

    .line 642
    .local v1, "clientRecord":Lcom/android/server/media/MediaRouterService$ClientRecord;
    if-eqz v1, :cond_1b

    .line 643
    iget-object v2, v1, Lcom/android/server/media/MediaRouterService$ClientRecord;->mUserRecord:Lcom/android/server/media/MediaRouterService$UserRecord;

    iget-object v2, v2, Lcom/android/server/media/MediaRouterService$UserRecord;->mHandler:Lcom/android/server/media/MediaRouterService$UserHandler;

    const/4 v3, 0x6

    const/4 v4, 0x0

    invoke-virtual {v2, v3, p3, v4, p2}, Lcom/android/server/media/MediaRouterService$UserHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 644
    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 646
    :cond_1b
    return-void
.end method

.method private requestUpdateVolumeLocked(Landroid/media/IMediaRouterClient;Ljava/lang/String;I)V
    .registers 9
    .param p1, "client"  # Landroid/media/IMediaRouterClient;
    .param p2, "routeId"  # Ljava/lang/String;
    .param p3, "direction"  # I

    .line 650
    invoke-interface {p1}, Landroid/media/IMediaRouterClient;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 651
    .local v0, "binder":Landroid/os/IBinder;
    iget-object v1, p0, Lcom/android/server/media/MediaRouterService;->mAllClientRecords:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/media/MediaRouterService$ClientRecord;

    .line 652
    .local v1, "clientRecord":Lcom/android/server/media/MediaRouterService$ClientRecord;
    if-eqz v1, :cond_1b

    .line 653
    iget-object v2, v1, Lcom/android/server/media/MediaRouterService$ClientRecord;->mUserRecord:Lcom/android/server/media/MediaRouterService$UserRecord;

    iget-object v2, v2, Lcom/android/server/media/MediaRouterService$UserRecord;->mHandler:Lcom/android/server/media/MediaRouterService$UserHandler;

    const/4 v3, 0x7

    const/4 v4, 0x0

    invoke-virtual {v2, v3, p3, v4, p2}, Lcom/android/server/media/MediaRouterService$UserHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 654
    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 656
    :cond_1b
    return-void
.end method

.method private setDiscoveryRequestLocked(Landroid/media/IMediaRouterClient;IZ)V
    .registers 8
    .param p1, "client"  # Landroid/media/IMediaRouterClient;
    .param p2, "routeTypes"  # I
    .param p3, "activeScan"  # Z

    .line 577
    invoke-interface {p1}, Landroid/media/IMediaRouterClient;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 578
    .local v0, "binder":Landroid/os/IBinder;
    iget-object v1, p0, Lcom/android/server/media/MediaRouterService;->mAllClientRecords:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/media/MediaRouterService$ClientRecord;

    .line 579
    .local v1, "clientRecord":Lcom/android/server/media/MediaRouterService$ClientRecord;
    if-eqz v1, :cond_51

    .line 581
    iget-boolean v2, v1, Lcom/android/server/media/MediaRouterService$ClientRecord;->mTrusted:Z

    if-nez v2, :cond_14

    .line 582
    and-int/lit8 p2, p2, -0x5

    .line 585
    :cond_14
    iget v2, v1, Lcom/android/server/media/MediaRouterService$ClientRecord;->mRouteTypes:I

    if-ne v2, p2, :cond_1c

    iget-boolean v2, v1, Lcom/android/server/media/MediaRouterService$ClientRecord;->mActiveScan:Z

    if-eq v2, p3, :cond_51

    .line 587
    :cond_1c
    sget-boolean v2, Lcom/android/server/media/MediaRouterService;->DEBUG:Z

    if-eqz v2, :cond_45

    .line 588
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ": Set discovery request, routeTypes=0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 589
    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", activeScan="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 588
    const-string v3, "MediaRouterService"

    invoke-static {v3, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 591
    :cond_45
    iput p2, v1, Lcom/android/server/media/MediaRouterService$ClientRecord;->mRouteTypes:I

    .line 592
    iput-boolean p3, v1, Lcom/android/server/media/MediaRouterService$ClientRecord;->mActiveScan:Z

    .line 593
    iget-object v2, v1, Lcom/android/server/media/MediaRouterService$ClientRecord;->mUserRecord:Lcom/android/server/media/MediaRouterService$UserRecord;

    iget-object v2, v2, Lcom/android/server/media/MediaRouterService$UserRecord;->mHandler:Lcom/android/server/media/MediaRouterService$UserHandler;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Lcom/android/server/media/MediaRouterService$UserHandler;->sendEmptyMessage(I)Z

    .line 597
    :cond_51
    return-void
.end method

.method private setSelectedRouteLocked(Landroid/media/IMediaRouterClient;Ljava/lang/String;Z)V
    .registers 10
    .param p1, "client"  # Landroid/media/IMediaRouterClient;
    .param p2, "routeId"  # Ljava/lang/String;
    .param p3, "explicit"  # Z

    .line 601
    iget-object v0, p0, Lcom/android/server/media/MediaRouterService;->mAllClientRecords:Landroid/util/ArrayMap;

    invoke-interface {p1}, Landroid/media/IMediaRouterClient;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/media/MediaRouterService$ClientRecord;

    .line 602
    .local v0, "clientRecord":Lcom/android/server/media/MediaRouterService$ClientRecord;
    if-eqz v0, :cond_8c

    .line 603
    iget-object v1, v0, Lcom/android/server/media/MediaRouterService$ClientRecord;->mSelectedRouteId:Ljava/lang/String;

    .line 604
    .local v1, "oldRouteId":Ljava/lang/String;
    invoke-static {p2, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8c

    .line 605
    sget-boolean v2, Lcom/android/server/media/MediaRouterService;->DEBUG:Z

    if-eqz v2, :cond_43

    .line 606
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ": Set selected route, routeId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", oldRouteId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", explicit="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "MediaRouterService"

    invoke-static {v3, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 611
    :cond_43
    iput-object p2, v0, Lcom/android/server/media/MediaRouterService$ClientRecord;->mSelectedRouteId:Ljava/lang/String;

    .line 614
    if-eqz p3, :cond_8c

    iget-boolean v2, v0, Lcom/android/server/media/MediaRouterService$ClientRecord;->mTrusted:Z

    if-eqz v2, :cond_8c

    .line 615
    if-eqz v1, :cond_59

    .line 616
    iget-object v2, v0, Lcom/android/server/media/MediaRouterService$ClientRecord;->mUserRecord:Lcom/android/server/media/MediaRouterService$UserRecord;

    iget-object v2, v2, Lcom/android/server/media/MediaRouterService$UserRecord;->mHandler:Lcom/android/server/media/MediaRouterService$UserHandler;

    const/4 v3, 0x5

    invoke-virtual {v2, v3, v1}, Lcom/android/server/media/MediaRouterService$UserHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 617
    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 619
    :cond_59
    if-eqz p2, :cond_67

    .line 620
    iget-object v2, v0, Lcom/android/server/media/MediaRouterService$ClientRecord;->mUserRecord:Lcom/android/server/media/MediaRouterService$UserRecord;

    iget-object v2, v2, Lcom/android/server/media/MediaRouterService$UserRecord;->mHandler:Lcom/android/server/media/MediaRouterService$UserHandler;

    const/4 v3, 0x4

    invoke-virtual {v2, v3, p2}, Lcom/android/server/media/MediaRouterService$UserHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 621
    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 623
    :cond_67
    iget-object v2, v0, Lcom/android/server/media/MediaRouterService$ClientRecord;->mGroupId:Ljava/lang/String;

    if-eqz v2, :cond_8c

    .line 624
    iget-object v2, v0, Lcom/android/server/media/MediaRouterService$ClientRecord;->mUserRecord:Lcom/android/server/media/MediaRouterService$UserRecord;

    .line 625
    invoke-static {v2}, Lcom/android/server/media/MediaRouterService$UserRecord;->access$500(Lcom/android/server/media/MediaRouterService$UserRecord;)Landroid/util/ArrayMap;

    move-result-object v2

    iget-object v3, v0, Lcom/android/server/media/MediaRouterService$ClientRecord;->mGroupId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/media/MediaRouterService$ClientGroup;

    .line 626
    .local v2, "group":Lcom/android/server/media/MediaRouterService$ClientGroup;
    if-eqz v2, :cond_8c

    .line 627
    iput-object p2, v2, Lcom/android/server/media/MediaRouterService$ClientGroup;->mSelectedRouteId:Ljava/lang/String;

    .line 628
    iget-object v3, v0, Lcom/android/server/media/MediaRouterService$ClientRecord;->mUserRecord:Lcom/android/server/media/MediaRouterService$UserRecord;

    iget-object v3, v3, Lcom/android/server/media/MediaRouterService$UserRecord;->mHandler:Lcom/android/server/media/MediaRouterService$UserHandler;

    const/16 v4, 0xa

    iget-object v5, v0, Lcom/android/server/media/MediaRouterService$ClientRecord;->mGroupId:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lcom/android/server/media/MediaRouterService$UserHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    .line 630
    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    .line 636
    .end local v1  # "oldRouteId":Ljava/lang/String;
    .end local v2  # "group":Lcom/android/server/media/MediaRouterService$ClientGroup;
    :cond_8c
    return-void
.end method

.method private unregisterClientLocked(Landroid/media/IMediaRouterClient;Z)V
    .registers 6
    .param p1, "client"  # Landroid/media/IMediaRouterClient;
    .param p2, "died"  # Z

    .line 554
    iget-object v0, p0, Lcom/android/server/media/MediaRouterService;->mAllClientRecords:Landroid/util/ArrayMap;

    invoke-interface {p1}, Landroid/media/IMediaRouterClient;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/media/MediaRouterService$ClientRecord;

    .line 555
    .local v0, "clientRecord":Lcom/android/server/media/MediaRouterService$ClientRecord;
    if-eqz v0, :cond_27

    .line 556
    iget-object v1, v0, Lcom/android/server/media/MediaRouterService$ClientRecord;->mUserRecord:Lcom/android/server/media/MediaRouterService$UserRecord;

    .line 557
    .local v1, "userRecord":Lcom/android/server/media/MediaRouterService$UserRecord;
    iget-object v2, v1, Lcom/android/server/media/MediaRouterService$UserRecord;->mClientRecords:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 558
    iget-object v2, v0, Lcom/android/server/media/MediaRouterService$ClientRecord;->mGroupId:Ljava/lang/String;

    if-eqz v2, :cond_21

    .line 559
    iget-object v2, v0, Lcom/android/server/media/MediaRouterService$ClientRecord;->mGroupId:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lcom/android/server/media/MediaRouterService$UserRecord;->removeFromGroup(Ljava/lang/String;Lcom/android/server/media/MediaRouterService$ClientRecord;)V

    .line 560
    const/4 v2, 0x0

    iput-object v2, v0, Lcom/android/server/media/MediaRouterService$ClientRecord;->mGroupId:Ljava/lang/String;

    .line 562
    :cond_21
    invoke-direct {p0, v0, p2}, Lcom/android/server/media/MediaRouterService;->disposeClientLocked(Lcom/android/server/media/MediaRouterService$ClientRecord;Z)V

    .line 563
    invoke-direct {p0, v1}, Lcom/android/server/media/MediaRouterService;->disposeUserIfNeededLocked(Lcom/android/server/media/MediaRouterService$UserRecord;)V

    .line 565
    .end local v1  # "userRecord":Lcom/android/server/media/MediaRouterService$UserRecord;
    :cond_27
    return-void
.end method

.method private validatePackageName(ILjava/lang/String;)Z
    .registers 9
    .param p1, "uid"  # I
    .param p2, "packageName"  # Ljava/lang/String;

    .line 704
    const/4 v0, 0x0

    if-eqz p2, :cond_20

    .line 705
    iget-object v1, p0, Lcom/android/server/media/MediaRouterService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v1

    .line 706
    .local v1, "packageNames":[Ljava/lang/String;
    if-eqz v1, :cond_20

    .line 707
    array-length v2, v1

    move v3, v0

    :goto_11
    if-ge v3, v2, :cond_20

    aget-object v4, v1, v3

    .line 708
    .local v4, "n":Ljava/lang/String;
    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1d

    .line 709
    const/4 v0, 0x1

    return v0

    .line 707
    .end local v4  # "n":Ljava/lang/String;
    :cond_1d
    add-int/lit8 v3, v3, 0x1

    goto :goto_11

    .line 714
    .end local v1  # "packageNames":[Ljava/lang/String;
    :cond_20
    return v0
.end method


# virtual methods
.method clientDied(Lcom/android/server/media/MediaRouterService$ClientRecord;)V
    .registers 5
    .param p1, "clientRecord"  # Lcom/android/server/media/MediaRouterService$ClientRecord;

    .line 497
    iget-object v0, p0, Lcom/android/server/media/MediaRouterService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 498
    :try_start_3
    iget-object v1, p1, Lcom/android/server/media/MediaRouterService$ClientRecord;->mClient:Landroid/media/IMediaRouterClient;

    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Lcom/android/server/media/MediaRouterService;->unregisterClientLocked(Landroid/media/IMediaRouterClient;Z)V

    .line 499
    monitor-exit v0

    .line 500
    return-void

    .line 499
    :catchall_b
    move-exception v1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v1
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 9
    .param p1, "fd"  # Ljava/io/FileDescriptor;
    .param p2, "pw"  # Ljava/io/PrintWriter;
    .param p3, "args"  # [Ljava/lang/String;

    .line 411
    iget-object v0, p0, Lcom/android/server/media/MediaRouterService;->mContext:Landroid/content/Context;

    const-string v1, "MediaRouterService"

    invoke-static {v0, v1, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v0

    if-nez v0, :cond_b

    return-void

    .line 413
    :cond_b
    const-string v0, "MEDIA ROUTER SERVICE (dumpsys media_router)"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 414
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 415
    const-string v0, "Global state"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 416
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mCurrentUserId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/media/MediaRouterService;->mCurrentUserId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 418
    iget-object v0, p0, Lcom/android/server/media/MediaRouterService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 419
    :try_start_31
    iget-object v1, p0, Lcom/android/server/media/MediaRouterService;->mUserRecords:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    .line 420
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_38
    if-ge v2, v1, :cond_4d

    .line 421
    iget-object v3, p0, Lcom/android/server/media/MediaRouterService;->mUserRecords:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/media/MediaRouterService$UserRecord;

    .line 422
    .local v3, "userRecord":Lcom/android/server/media/MediaRouterService$UserRecord;
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 423
    const-string v4, ""

    invoke-virtual {v3, p2, v4}, Lcom/android/server/media/MediaRouterService$UserRecord;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 420
    .end local v3  # "userRecord":Lcom/android/server/media/MediaRouterService$UserRecord;
    add-int/lit8 v2, v2, 0x1

    goto :goto_38

    .line 425
    .end local v1  # "count":I
    .end local v2  # "i":I
    :cond_4d
    monitor-exit v0

    .line 426
    return-void

    .line 425
    :catchall_4f
    move-exception v1

    monitor-exit v0
    :try_end_51
    .catchall {:try_start_31 .. :try_end_51} :catchall_4f

    throw v1
.end method

.method public getState(Landroid/media/IMediaRouterClient;)Landroid/media/MediaRouterClientState;
    .registers 6
    .param p1, "client"  # Landroid/media/IMediaRouterClient;

    .line 292
    if-eqz p1, :cond_1a

    .line 296
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 298
    .local v0, "token":J
    :try_start_6
    iget-object v2, p0, Lcom/android/server/media/MediaRouterService;->mLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_9
    .catchall {:try_start_6 .. :try_end_9} :catchall_15

    .line 299
    :try_start_9
    invoke-direct {p0, p1}, Lcom/android/server/media/MediaRouterService;->getStateLocked(Landroid/media/IMediaRouterClient;)Landroid/media/MediaRouterClientState;

    move-result-object v3

    monitor-exit v2
    :try_end_e
    .catchall {:try_start_9 .. :try_end_e} :catchall_12

    .line 302
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 299
    return-object v3

    .line 300
    :catchall_12
    move-exception v3

    :try_start_13
    monitor-exit v2
    :try_end_14
    .catchall {:try_start_13 .. :try_end_14} :catchall_12

    .end local v0  # "token":J
    .end local p0  # "this":Lcom/android/server/media/MediaRouterService;
    .end local p1  # "client":Landroid/media/IMediaRouterClient;
    :try_start_14
    throw v3
    :try_end_15
    .catchall {:try_start_14 .. :try_end_15} :catchall_15

    .line 302
    .restart local v0  # "token":J
    .restart local p0  # "this":Lcom/android/server/media/MediaRouterService;
    .restart local p1  # "client":Landroid/media/IMediaRouterClient;
    :catchall_15
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2

    .line 293
    .end local v0  # "token":J
    :cond_1a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "client must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isPlaybackActive(Landroid/media/IMediaRouterClient;)Z
    .registers 7
    .param p1, "client"  # Landroid/media/IMediaRouterClient;

    .line 309
    if-eqz p1, :cond_31

    .line 313
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 316
    .local v0, "token":J
    :try_start_6
    iget-object v2, p0, Lcom/android/server/media/MediaRouterService;->mLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_9
    .catchall {:try_start_6 .. :try_end_9} :catchall_2c

    .line 317
    :try_start_9
    iget-object v3, p0, Lcom/android/server/media/MediaRouterService;->mAllClientRecords:Landroid/util/ArrayMap;

    invoke-interface {p1}, Landroid/media/IMediaRouterClient;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/media/MediaRouterService$ClientRecord;

    .line 318
    .local v3, "clientRecord":Lcom/android/server/media/MediaRouterService$ClientRecord;
    monitor-exit v2
    :try_end_16
    .catchall {:try_start_9 .. :try_end_16} :catchall_29

    .line 319
    if-eqz v3, :cond_24

    .line 320
    :try_start_18
    iget-object v2, p0, Lcom/android/server/media/MediaRouterService;->mAudioPlayerStateMonitor:Lcom/android/server/media/AudioPlayerStateMonitor;

    iget v4, v3, Lcom/android/server/media/MediaRouterService$ClientRecord;->mUid:I

    invoke-virtual {v2, v4}, Lcom/android/server/media/AudioPlayerStateMonitor;->isPlaybackActive(I)Z

    move-result v2
    :try_end_20
    .catchall {:try_start_18 .. :try_end_20} :catchall_2c

    .line 324
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 320
    return v2

    .line 322
    :cond_24
    const/4 v2, 0x0

    .line 324
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 322
    return v2

    .line 318
    .end local v3  # "clientRecord":Lcom/android/server/media/MediaRouterService$ClientRecord;
    :catchall_29
    move-exception v3

    :try_start_2a
    monitor-exit v2
    :try_end_2b
    .catchall {:try_start_2a .. :try_end_2b} :catchall_29

    .end local v0  # "token":J
    .end local p0  # "this":Lcom/android/server/media/MediaRouterService;
    .end local p1  # "client":Landroid/media/IMediaRouterClient;
    :try_start_2b
    throw v3
    :try_end_2c
    .catchall {:try_start_2b .. :try_end_2c} :catchall_2c

    .line 324
    .restart local v0  # "token":J
    .restart local p0  # "this":Lcom/android/server/media/MediaRouterService;
    .restart local p1  # "client":Landroid/media/IMediaRouterClient;
    :catchall_2c
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2

    .line 310
    .end local v0  # "token":J
    :cond_31
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "client must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public monitor()V
    .registers 3

    .line 218
    iget-object v0, p0, Lcom/android/server/media/MediaRouterService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    monitor-exit v0

    .line 219
    return-void

    .line 218
    :catchall_5
    move-exception v1

    monitor-exit v0
    :try_end_7
    .catchall {:try_start_3 .. :try_end_7} :catchall_5

    throw v1
.end method

.method public registerClientAsUser(Landroid/media/IMediaRouterClient;Ljava/lang/String;I)V
    .registers 20
    .param p1, "client"  # Landroid/media/IMediaRouterClient;
    .param p2, "packageName"  # Ljava/lang/String;
    .param p3, "userId"  # I

    .line 224
    move-object/from16 v8, p0

    if-eqz p1, :cond_5b

    .line 228
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v9

    .line 229
    .local v9, "uid":I
    move-object/from16 v10, p2

    invoke-direct {v8, v9, v10}, Lcom/android/server/media/MediaRouterService;->validatePackageName(ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_52

    .line 233
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v11

    .line 234
    .local v11, "pid":I
    const/4 v4, 0x0

    const/4 v5, 0x1

    const-string/jumbo v6, "registerClientAsUser"

    move v1, v11

    move v2, v9

    move/from16 v3, p3

    move-object/from16 v7, p2

    invoke-static/range {v1 .. v7}, Landroid/app/ActivityManager;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I

    move-result v12

    .line 236
    .local v12, "resolvedUserId":I
    iget-object v0, v8, Lcom/android/server/media/MediaRouterService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CONFIGURE_WIFI_DISPLAY"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_2f

    const/4 v0, 0x1

    goto :goto_30

    :cond_2f
    const/4 v0, 0x0

    :goto_30
    move v7, v0

    .line 239
    .local v7, "trusted":Z
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v13

    .line 241
    .local v13, "token":J
    :try_start_35
    iget-object v15, v8, Lcom/android/server/media/MediaRouterService;->mLock:Ljava/lang/Object;

    monitor-enter v15
    :try_end_38
    .catchall {:try_start_35 .. :try_end_38} :catchall_4d

    .line 242
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move v3, v9

    move v4, v11

    move-object/from16 v5, p2

    move v6, v12

    :try_start_41
    invoke-direct/range {v1 .. v7}, Lcom/android/server/media/MediaRouterService;->registerClientLocked(Landroid/media/IMediaRouterClient;IILjava/lang/String;IZ)V

    .line 243
    monitor-exit v15
    :try_end_45
    .catchall {:try_start_41 .. :try_end_45} :catchall_4a

    .line 245
    invoke-static {v13, v14}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 246
    nop

    .line 247
    return-void

    .line 243
    :catchall_4a
    move-exception v0

    :try_start_4b
    monitor-exit v15
    :try_end_4c
    .catchall {:try_start_4b .. :try_end_4c} :catchall_4a

    .end local v7  # "trusted":Z
    .end local v9  # "uid":I
    .end local v11  # "pid":I
    .end local v12  # "resolvedUserId":I
    .end local v13  # "token":J
    .end local p0  # "this":Lcom/android/server/media/MediaRouterService;
    .end local p1  # "client":Landroid/media/IMediaRouterClient;
    .end local p2  # "packageName":Ljava/lang/String;
    .end local p3  # "userId":I
    :try_start_4c
    throw v0
    :try_end_4d
    .catchall {:try_start_4c .. :try_end_4d} :catchall_4d

    .line 245
    .restart local v7  # "trusted":Z
    .restart local v9  # "uid":I
    .restart local v11  # "pid":I
    .restart local v12  # "resolvedUserId":I
    .restart local v13  # "token":J
    .restart local p0  # "this":Lcom/android/server/media/MediaRouterService;
    .restart local p1  # "client":Landroid/media/IMediaRouterClient;
    .restart local p2  # "packageName":Ljava/lang/String;
    .restart local p3  # "userId":I
    :catchall_4d
    move-exception v0

    invoke-static {v13, v14}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    .line 230
    .end local v7  # "trusted":Z
    .end local v11  # "pid":I
    .end local v12  # "resolvedUserId":I
    .end local v13  # "token":J
    :cond_52
    new-instance v0, Ljava/lang/SecurityException;

    const-string/jumbo v1, "packageName must match the calling uid"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 225
    .end local v9  # "uid":I
    :cond_5b
    move-object/from16 v10, p2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "client must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public registerClientGroupId(Landroid/media/IMediaRouterClient;Ljava/lang/String;)V
    .registers 7
    .param p1, "client"  # Landroid/media/IMediaRouterClient;
    .param p2, "groupId"  # Ljava/lang/String;

    .line 252
    if-eqz p1, :cond_2c

    .line 255
    iget-object v0, p0, Lcom/android/server/media/MediaRouterService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CONFIGURE_WIFI_DISPLAY"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_14

    .line 258
    const-string v0, "MediaRouterService"

    const-string v1, "Ignoring client group request because the client doesn\'t have the CONFIGURE_WIFI_DISPLAY permission."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    return-void

    .line 262
    :cond_14
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 264
    .local v0, "token":J
    :try_start_18
    iget-object v2, p0, Lcom/android/server/media/MediaRouterService;->mLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_1b
    .catchall {:try_start_18 .. :try_end_1b} :catchall_27

    .line 265
    :try_start_1b
    invoke-direct {p0, p1, p2}, Lcom/android/server/media/MediaRouterService;->registerClientGroupIdLocked(Landroid/media/IMediaRouterClient;Ljava/lang/String;)V

    .line 266
    monitor-exit v2
    :try_end_1f
    .catchall {:try_start_1b .. :try_end_1f} :catchall_24

    .line 268
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 269
    nop

    .line 270
    return-void

    .line 266
    :catchall_24
    move-exception v3

    :try_start_25
    monitor-exit v2
    :try_end_26
    .catchall {:try_start_25 .. :try_end_26} :catchall_24

    .end local v0  # "token":J
    .end local p0  # "this":Lcom/android/server/media/MediaRouterService;
    .end local p1  # "client":Landroid/media/IMediaRouterClient;
    .end local p2  # "groupId":Ljava/lang/String;
    :try_start_26
    throw v3
    :try_end_27
    .catchall {:try_start_26 .. :try_end_27} :catchall_27

    .line 268
    .restart local v0  # "token":J
    .restart local p0  # "this":Lcom/android/server/media/MediaRouterService;
    .restart local p1  # "client":Landroid/media/IMediaRouterClient;
    .restart local p2  # "groupId":Ljava/lang/String;
    :catchall_27
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2

    .line 253
    .end local v0  # "token":J
    :cond_2c
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "client must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public requestSetVolume(Landroid/media/IMediaRouterClient;Ljava/lang/String;I)V
    .registers 8
    .param p1, "client"  # Landroid/media/IMediaRouterClient;
    .param p2, "routeId"  # Ljava/lang/String;
    .param p3, "volume"  # I

    .line 371
    if-eqz p1, :cond_25

    .line 374
    if-eqz p2, :cond_1c

    .line 378
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 380
    .local v0, "token":J
    :try_start_8
    iget-object v2, p0, Lcom/android/server/media/MediaRouterService;->mLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_b
    .catchall {:try_start_8 .. :try_end_b} :catchall_17

    .line 381
    :try_start_b
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/media/MediaRouterService;->requestSetVolumeLocked(Landroid/media/IMediaRouterClient;Ljava/lang/String;I)V

    .line 382
    monitor-exit v2
    :try_end_f
    .catchall {:try_start_b .. :try_end_f} :catchall_14

    .line 384
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 385
    nop

    .line 386
    return-void

    .line 382
    :catchall_14
    move-exception v3

    :try_start_15
    monitor-exit v2
    :try_end_16
    .catchall {:try_start_15 .. :try_end_16} :catchall_14

    .end local v0  # "token":J
    .end local p0  # "this":Lcom/android/server/media/MediaRouterService;
    .end local p1  # "client":Landroid/media/IMediaRouterClient;
    .end local p2  # "routeId":Ljava/lang/String;
    .end local p3  # "volume":I
    :try_start_16
    throw v3
    :try_end_17
    .catchall {:try_start_16 .. :try_end_17} :catchall_17

    .line 384
    .restart local v0  # "token":J
    .restart local p0  # "this":Lcom/android/server/media/MediaRouterService;
    .restart local p1  # "client":Landroid/media/IMediaRouterClient;
    .restart local p2  # "routeId":Ljava/lang/String;
    .restart local p3  # "volume":I
    :catchall_17
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2

    .line 375
    .end local v0  # "token":J
    :cond_1c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "routeId must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 372
    :cond_25
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "client must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public requestUpdateVolume(Landroid/media/IMediaRouterClient;Ljava/lang/String;I)V
    .registers 8
    .param p1, "client"  # Landroid/media/IMediaRouterClient;
    .param p2, "routeId"  # Ljava/lang/String;
    .param p3, "direction"  # I

    .line 391
    if-eqz p1, :cond_25

    .line 394
    if-eqz p2, :cond_1c

    .line 398
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 400
    .local v0, "token":J
    :try_start_8
    iget-object v2, p0, Lcom/android/server/media/MediaRouterService;->mLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_b
    .catchall {:try_start_8 .. :try_end_b} :catchall_17

    .line 401
    :try_start_b
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/media/MediaRouterService;->requestUpdateVolumeLocked(Landroid/media/IMediaRouterClient;Ljava/lang/String;I)V

    .line 402
    monitor-exit v2
    :try_end_f
    .catchall {:try_start_b .. :try_end_f} :catchall_14

    .line 404
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 405
    nop

    .line 406
    return-void

    .line 402
    :catchall_14
    move-exception v3

    :try_start_15
    monitor-exit v2
    :try_end_16
    .catchall {:try_start_15 .. :try_end_16} :catchall_14

    .end local v0  # "token":J
    .end local p0  # "this":Lcom/android/server/media/MediaRouterService;
    .end local p1  # "client":Landroid/media/IMediaRouterClient;
    .end local p2  # "routeId":Ljava/lang/String;
    .end local p3  # "direction":I
    :try_start_16
    throw v3
    :try_end_17
    .catchall {:try_start_16 .. :try_end_17} :catchall_17

    .line 404
    .restart local v0  # "token":J
    .restart local p0  # "this":Lcom/android/server/media/MediaRouterService;
    .restart local p1  # "client":Landroid/media/IMediaRouterClient;
    .restart local p2  # "routeId":Ljava/lang/String;
    .restart local p3  # "direction":I
    :catchall_17
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2

    .line 395
    .end local v0  # "token":J
    :cond_1c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "routeId must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 392
    :cond_25
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "client must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method restoreBluetoothA2dp()V
    .registers 6

    .line 432
    :try_start_0
    iget-object v0, p0, Lcom/android/server/media/MediaRouterService;->mLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_3} :catch_3b

    .line 433
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/media/MediaRouterService;->mGlobalBluetoothA2dpOn:Z

    .line 434
    .local v1, "a2dpOn":Z
    iget-object v2, p0, Lcom/android/server/media/MediaRouterService;->mActiveBluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    .line 435
    .local v2, "btDevice":Landroid/bluetooth/BluetoothDevice;
    monitor-exit v0
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_38

    .line 437
    if-eqz v2, :cond_37

    .line 438
    :try_start_a
    sget-boolean v0, Lcom/android/server/media/MediaRouterService;->DEBUG:Z

    if-eqz v0, :cond_2a

    .line 439
    const-string v0, "MediaRouterService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "restoreBluetoothA2dp("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 442
    :cond_2a
    iget-object v0, p0, Lcom/android/server/media/MediaRouterService;->mAudioService:Landroid/media/IAudioService;

    invoke-interface {v0}, Landroid/media/IAudioService;->isBluetoothA2dpOn()Z

    move-result v0

    if-nez v0, :cond_37

    .line 444
    iget-object v0, p0, Lcom/android/server/media/MediaRouterService;->mAudioService:Landroid/media/IAudioService;

    invoke-interface {v0, v1}, Landroid/media/IAudioService;->setBluetoothA2dpOn(Z)V
    :try_end_37
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_37} :catch_3b

    .line 448
    .end local v1  # "a2dpOn":Z
    .end local v2  # "btDevice":Landroid/bluetooth/BluetoothDevice;
    :cond_37
    goto :goto_43

    .line 435
    :catchall_38
    move-exception v1

    :try_start_39
    monitor-exit v0
    :try_end_3a
    .catchall {:try_start_39 .. :try_end_3a} :catchall_38

    .end local p0  # "this":Lcom/android/server/media/MediaRouterService;
    :try_start_3a
    throw v1
    :try_end_3b
    .catch Landroid/os/RemoteException; {:try_start_3a .. :try_end_3b} :catch_3b

    .line 446
    .restart local p0  # "this":Lcom/android/server/media/MediaRouterService;
    :catch_3b
    move-exception v0

    .line 447
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "MediaRouterService"

    const-string v2, "RemoteException while calling setBluetoothA2dpOn."

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 449
    .end local v0  # "e":Landroid/os/RemoteException;
    :goto_43
    return-void
.end method

.method restoreRoute(I)V
    .registers 8
    .param p1, "uid"  # I

    .line 452
    const/4 v0, 0x0

    .line 453
    .local v0, "clientRecord":Lcom/android/server/media/MediaRouterService$ClientRecord;
    iget-object v1, p0, Lcom/android/server/media/MediaRouterService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 454
    :try_start_4
    iget-object v2, p0, Lcom/android/server/media/MediaRouterService;->mUserRecords:Landroid/util/SparseArray;

    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/media/MediaRouterService$UserRecord;

    .line 455
    .local v2, "userRecord":Lcom/android/server/media/MediaRouterService$UserRecord;
    if-eqz v2, :cond_33

    iget-object v3, v2, Lcom/android/server/media/MediaRouterService$UserRecord;->mClientRecords:Ljava/util/ArrayList;

    if-eqz v3, :cond_33

    .line 456
    iget-object v3, v2, Lcom/android/server/media/MediaRouterService$UserRecord;->mClientRecords:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1c
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_33

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/media/MediaRouterService$ClientRecord;

    .line 457
    .local v4, "cr":Lcom/android/server/media/MediaRouterService$ClientRecord;
    iget-object v5, v4, Lcom/android/server/media/MediaRouterService$ClientRecord;->mPackageName:Ljava/lang/String;

    invoke-direct {p0, p1, v5}, Lcom/android/server/media/MediaRouterService;->validatePackageName(ILjava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_32

    .line 458
    move-object v0, v4

    .line 459
    goto :goto_33

    .line 461
    .end local v4  # "cr":Lcom/android/server/media/MediaRouterService$ClientRecord;
    :cond_32
    goto :goto_1c

    .line 463
    .end local v2  # "userRecord":Lcom/android/server/media/MediaRouterService$UserRecord;
    :cond_33
    :goto_33
    monitor-exit v1
    :try_end_34
    .catchall {:try_start_4 .. :try_end_34} :catchall_49

    .line 464
    if-eqz v0, :cond_45

    .line 466
    :try_start_36
    iget-object v1, v0, Lcom/android/server/media/MediaRouterService$ClientRecord;->mClient:Landroid/media/IMediaRouterClient;

    invoke-interface {v1}, Landroid/media/IMediaRouterClient;->onRestoreRoute()V
    :try_end_3b
    .catch Landroid/os/RemoteException; {:try_start_36 .. :try_end_3b} :catch_3c

    goto :goto_44

    .line 467
    :catch_3c
    move-exception v1

    .line 468
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "MediaRouterService"

    const-string v3, "Failed to call onRestoreRoute. Client probably died."

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 469
    .end local v1  # "e":Landroid/os/RemoteException;
    :goto_44
    goto :goto_48

    .line 471
    :cond_45
    invoke-virtual {p0}, Lcom/android/server/media/MediaRouterService;->restoreBluetoothA2dp()V

    .line 473
    :goto_48
    return-void

    .line 463
    :catchall_49
    move-exception v2

    :try_start_4a
    monitor-exit v1
    :try_end_4b
    .catchall {:try_start_4a .. :try_end_4b} :catchall_49

    throw v2
.end method

.method public setDiscoveryRequest(Landroid/media/IMediaRouterClient;IZ)V
    .registers 8
    .param p1, "client"  # Landroid/media/IMediaRouterClient;
    .param p2, "routeTypes"  # I
    .param p3, "activeScan"  # Z

    .line 332
    if-eqz p1, :cond_1a

    .line 336
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 338
    .local v0, "token":J
    :try_start_6
    iget-object v2, p0, Lcom/android/server/media/MediaRouterService;->mLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_9
    .catchall {:try_start_6 .. :try_end_9} :catchall_15

    .line 339
    :try_start_9
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/media/MediaRouterService;->setDiscoveryRequestLocked(Landroid/media/IMediaRouterClient;IZ)V

    .line 340
    monitor-exit v2
    :try_end_d
    .catchall {:try_start_9 .. :try_end_d} :catchall_12

    .line 342
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 343
    nop

    .line 344
    return-void

    .line 340
    :catchall_12
    move-exception v3

    :try_start_13
    monitor-exit v2
    :try_end_14
    .catchall {:try_start_13 .. :try_end_14} :catchall_12

    .end local v0  # "token":J
    .end local p0  # "this":Lcom/android/server/media/MediaRouterService;
    .end local p1  # "client":Landroid/media/IMediaRouterClient;
    .end local p2  # "routeTypes":I
    .end local p3  # "activeScan":Z
    :try_start_14
    throw v3
    :try_end_15
    .catchall {:try_start_14 .. :try_end_15} :catchall_15

    .line 342
    .restart local v0  # "token":J
    .restart local p0  # "this":Lcom/android/server/media/MediaRouterService;
    .restart local p1  # "client":Landroid/media/IMediaRouterClient;
    .restart local p2  # "routeTypes":I
    .restart local p3  # "activeScan":Z
    :catchall_15
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2

    .line 333
    .end local v0  # "token":J
    :cond_1a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "client must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setSelectedRoute(Landroid/media/IMediaRouterClient;Ljava/lang/String;Z)V
    .registers 8
    .param p1, "client"  # Landroid/media/IMediaRouterClient;
    .param p2, "routeId"  # Ljava/lang/String;
    .param p3, "explicit"  # Z

    .line 354
    if-eqz p1, :cond_1a

    .line 358
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 360
    .local v0, "token":J
    :try_start_6
    iget-object v2, p0, Lcom/android/server/media/MediaRouterService;->mLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_9
    .catchall {:try_start_6 .. :try_end_9} :catchall_15

    .line 361
    :try_start_9
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/media/MediaRouterService;->setSelectedRouteLocked(Landroid/media/IMediaRouterClient;Ljava/lang/String;Z)V

    .line 362
    monitor-exit v2
    :try_end_d
    .catchall {:try_start_9 .. :try_end_d} :catchall_12

    .line 364
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 365
    nop

    .line 366
    return-void

    .line 362
    :catchall_12
    move-exception v3

    :try_start_13
    monitor-exit v2
    :try_end_14
    .catchall {:try_start_13 .. :try_end_14} :catchall_12

    .end local v0  # "token":J
    .end local p0  # "this":Lcom/android/server/media/MediaRouterService;
    .end local p1  # "client":Landroid/media/IMediaRouterClient;
    .end local p2  # "routeId":Ljava/lang/String;
    .end local p3  # "explicit":Z
    :try_start_14
    throw v3
    :try_end_15
    .catchall {:try_start_14 .. :try_end_15} :catchall_15

    .line 364
    .restart local v0  # "token":J
    .restart local p0  # "this":Lcom/android/server/media/MediaRouterService;
    .restart local p1  # "client":Landroid/media/IMediaRouterClient;
    .restart local p2  # "routeId":Ljava/lang/String;
    .restart local p3  # "explicit":Z
    :catchall_15
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2

    .line 355
    .end local v0  # "token":J
    :cond_1a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "client must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method switchUser()V
    .registers 8

    .line 476
    iget-object v0, p0, Lcom/android/server/media/MediaRouterService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 477
    :try_start_3
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v1

    .line 478
    .local v1, "userId":I
    iget v2, p0, Lcom/android/server/media/MediaRouterService;->mCurrentUserId:I

    if-eq v2, v1, :cond_32

    .line 479
    iget v2, p0, Lcom/android/server/media/MediaRouterService;->mCurrentUserId:I

    .line 480
    .local v2, "oldUserId":I
    iput v1, p0, Lcom/android/server/media/MediaRouterService;->mCurrentUserId:I

    .line 482
    iget-object v3, p0, Lcom/android/server/media/MediaRouterService;->mUserRecords:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/media/MediaRouterService$UserRecord;

    .line 483
    .local v3, "oldUser":Lcom/android/server/media/MediaRouterService$UserRecord;
    if-eqz v3, :cond_22

    .line 484
    iget-object v4, v3, Lcom/android/server/media/MediaRouterService$UserRecord;->mHandler:Lcom/android/server/media/MediaRouterService$UserHandler;

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Lcom/android/server/media/MediaRouterService$UserHandler;->sendEmptyMessage(I)Z

    .line 485
    invoke-direct {p0, v3}, Lcom/android/server/media/MediaRouterService;->disposeUserIfNeededLocked(Lcom/android/server/media/MediaRouterService$UserRecord;)V

    .line 488
    :cond_22
    iget-object v4, p0, Lcom/android/server/media/MediaRouterService;->mUserRecords:Landroid/util/SparseArray;

    invoke-virtual {v4, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/media/MediaRouterService$UserRecord;

    .line 489
    .local v4, "newUser":Lcom/android/server/media/MediaRouterService$UserRecord;
    if-eqz v4, :cond_32

    .line 490
    iget-object v5, v4, Lcom/android/server/media/MediaRouterService$UserRecord;->mHandler:Lcom/android/server/media/MediaRouterService$UserHandler;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lcom/android/server/media/MediaRouterService$UserHandler;->sendEmptyMessage(I)Z

    .line 493
    .end local v1  # "userId":I
    .end local v2  # "oldUserId":I
    .end local v3  # "oldUser":Lcom/android/server/media/MediaRouterService$UserRecord;
    .end local v4  # "newUser":Lcom/android/server/media/MediaRouterService$UserRecord;
    :cond_32
    monitor-exit v0

    .line 494
    return-void

    .line 493
    :catchall_34
    move-exception v1

    monitor-exit v0
    :try_end_36
    .catchall {:try_start_3 .. :try_end_36} :catchall_34

    throw v1
.end method

.method public systemRunning()V
    .registers 4

    .line 203
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.USER_SWITCHED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 204
    .local v0, "filter":Landroid/content/IntentFilter;
    iget-object v1, p0, Lcom/android/server/media/MediaRouterService;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/android/server/media/MediaRouterService$3;

    invoke-direct {v2, p0}, Lcom/android/server/media/MediaRouterService$3;-><init>(Lcom/android/server/media/MediaRouterService;)V

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 213
    invoke-virtual {p0}, Lcom/android/server/media/MediaRouterService;->switchUser()V

    .line 214
    return-void
.end method

.method public unregisterClient(Landroid/media/IMediaRouterClient;)V
    .registers 6
    .param p1, "client"  # Landroid/media/IMediaRouterClient;

    .line 275
    if-eqz p1, :cond_1b

    .line 279
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 281
    .local v0, "token":J
    :try_start_6
    iget-object v2, p0, Lcom/android/server/media/MediaRouterService;->mLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_9
    .catchall {:try_start_6 .. :try_end_9} :catchall_16

    .line 282
    const/4 v3, 0x0

    :try_start_a
    invoke-direct {p0, p1, v3}, Lcom/android/server/media/MediaRouterService;->unregisterClientLocked(Landroid/media/IMediaRouterClient;Z)V

    .line 283
    monitor-exit v2
    :try_end_e
    .catchall {:try_start_a .. :try_end_e} :catchall_13

    .line 285
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 286
    nop

    .line 287
    return-void

    .line 283
    :catchall_13
    move-exception v3

    :try_start_14
    monitor-exit v2
    :try_end_15
    .catchall {:try_start_14 .. :try_end_15} :catchall_13

    .end local v0  # "token":J
    .end local p0  # "this":Lcom/android/server/media/MediaRouterService;
    .end local p1  # "client":Landroid/media/IMediaRouterClient;
    :try_start_15
    throw v3
    :try_end_16
    .catchall {:try_start_15 .. :try_end_16} :catchall_16

    .line 285
    .restart local v0  # "token":J
    .restart local p0  # "this":Lcom/android/server/media/MediaRouterService;
    .restart local p1  # "client":Landroid/media/IMediaRouterClient;
    :catchall_16
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2

    .line 276
    .end local v0  # "token":J
    :cond_1b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "client must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
