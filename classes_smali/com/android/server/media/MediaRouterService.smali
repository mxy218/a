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
    .registers 10

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
    nop

    .line 171
    :try_start_65
    iget-object v0, p0, Lcom/android/server/media/MediaRouterService;->mAudioService:Landroid/media/IAudioService;

    new-instance v1, Lcom/android/server/media/MediaRouterService$2;

    invoke-direct {v1, p0}, Lcom/android/server/media/MediaRouterService$2;-><init>(Lcom/android/server/media/MediaRouterService;)V

    invoke-interface {v0, v1}, Landroid/media/IAudioService;->startWatchingRoutes(Landroid/media/IAudioRoutesObserver;)Landroid/media/AudioRoutesInfo;
    :try_end_6f
    .catch Landroid/os/RemoteException; {:try_start_65 .. :try_end_6f} :catch_70

    .line 196
    goto :goto_78

    .line 194
    :catch_70
    move-exception v0

    .line 195
    const-string v0, "MediaRouterService"

    const-string v1, "RemoteException in the audio service."

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    :goto_78
    new-instance v5, Landroid/content/IntentFilter;

    const-string v0, "android.bluetooth.a2dp.profile.action.ACTIVE_DEVICE_CHANGED"

    invoke-direct {v5, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 199
    iget-object v3, p0, Lcom/android/server/media/MediaRouterService;->mReceiver:Landroid/content/BroadcastReceiver;

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 200
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/media/MediaRouterService;)Landroid/util/IntArray;
    .registers 1

    .line 74
    iget-object p0, p0, Lcom/android/server/media/MediaRouterService;->mActivePlayerMinPriorityQueue:Landroid/util/IntArray;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/server/media/MediaRouterService;)Landroid/util/IntArray;
    .registers 1

    .line 74
    iget-object p0, p0, Lcom/android/server/media/MediaRouterService;->mActivePlayerUidMinPriorityQueue:Landroid/util/IntArray;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/server/media/MediaRouterService;)Landroid/os/Handler;
    .registers 1

    .line 74
    iget-object p0, p0, Lcom/android/server/media/MediaRouterService;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$300()Z
    .registers 1

    .line 74
    sget-boolean v0, Lcom/android/server/media/MediaRouterService;->DEBUG:Z

    return v0
.end method

.method static synthetic access$400(Lcom/android/server/media/MediaRouterService;)Ljava/lang/Object;
    .registers 1

    .line 74
    iget-object p0, p0, Lcom/android/server/media/MediaRouterService;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$600(Lcom/android/server/media/MediaRouterService;)Landroid/content/Context;
    .registers 1

    .line 74
    iget-object p0, p0, Lcom/android/server/media/MediaRouterService;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method private disposeClientLocked(Lcom/android/server/media/MediaRouterService$ClientRecord;Z)V
    .registers 5

    .line 686
    sget-boolean v0, Lcom/android/server/media/MediaRouterService;->DEBUG:Z

    if-eqz v0, :cond_31

    .line 687
    const-string v0, "MediaRouterService"

    if-eqz p2, :cond_1d

    .line 688
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ": Died!"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_31

    .line 690
    :cond_1d
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ": Unregistered"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 693
    :cond_31
    :goto_31
    iget p2, p1, Lcom/android/server/media/MediaRouterService$ClientRecord;->mRouteTypes:I

    if-nez p2, :cond_39

    iget-boolean p2, p1, Lcom/android/server/media/MediaRouterService$ClientRecord;->mActiveScan:Z

    if-eqz p2, :cond_41

    .line 694
    :cond_39
    iget-object p2, p1, Lcom/android/server/media/MediaRouterService$ClientRecord;->mUserRecord:Lcom/android/server/media/MediaRouterService$UserRecord;

    iget-object p2, p2, Lcom/android/server/media/MediaRouterService$UserRecord;->mHandler:Lcom/android/server/media/MediaRouterService$UserHandler;

    const/4 v0, 0x3

    invoke-virtual {p2, v0}, Lcom/android/server/media/MediaRouterService$UserHandler;->sendEmptyMessage(I)Z

    .line 697
    :cond_41
    invoke-virtual {p1}, Lcom/android/server/media/MediaRouterService$ClientRecord;->dispose()V

    .line 698
    return-void
.end method

.method private disposeUserIfNeededLocked(Lcom/android/server/media/MediaRouterService$UserRecord;)V
    .registers 4

    .line 669
    iget v0, p1, Lcom/android/server/media/MediaRouterService$UserRecord;->mUserId:I

    iget v1, p0, Lcom/android/server/media/MediaRouterService;->mCurrentUserId:I

    if-eq v0, v1, :cond_2f

    iget-object v0, p1, Lcom/android/server/media/MediaRouterService$UserRecord;->mClientRecords:Ljava/util/ArrayList;

    .line 670
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 671
    sget-boolean v0, Lcom/android/server/media/MediaRouterService;->DEBUG:Z

    if-eqz v0, :cond_28

    .line 672
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ": Disposed"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MediaRouterService"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 674
    :cond_28
    iget-object v0, p0, Lcom/android/server/media/MediaRouterService;->mUserRecords:Landroid/util/SparseArray;

    iget p1, p1, Lcom/android/server/media/MediaRouterService$UserRecord;->mUserId:I

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 677
    :cond_2f
    return-void
.end method

.method private getStateLocked(Landroid/media/IMediaRouterClient;)Landroid/media/MediaRouterClientState;
    .registers 3

    .line 565
    iget-object v0, p0, Lcom/android/server/media/MediaRouterService;->mAllClientRecords:Landroid/util/ArrayMap;

    invoke-interface {p1}, Landroid/media/IMediaRouterClient;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/media/MediaRouterService$ClientRecord;

    .line 566
    if-eqz p1, :cond_13

    .line 567
    invoke-virtual {p1}, Lcom/android/server/media/MediaRouterService$ClientRecord;->getState()Landroid/media/MediaRouterClientState;

    move-result-object p1

    return-object p1

    .line 569
    :cond_13
    const/4 p1, 0x0

    return-object p1
.end method

.method private initializeClientLocked(Lcom/android/server/media/MediaRouterService$ClientRecord;)V
    .registers 3

    .line 680
    sget-boolean v0, Lcom/android/server/media/MediaRouterService;->DEBUG:Z

    if-eqz v0, :cond_1a

    .line 681
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ": Registered"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "MediaRouterService"

    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 683
    :cond_1a
    return-void
.end method

.method private initializeUserLocked(Lcom/android/server/media/MediaRouterService$UserRecord;)V
    .registers 4

    .line 656
    sget-boolean v0, Lcom/android/server/media/MediaRouterService;->DEBUG:Z

    if-eqz v0, :cond_1a

    .line 657
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ": Initialized"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MediaRouterService"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 659
    :cond_1a
    iget v0, p1, Lcom/android/server/media/MediaRouterService$UserRecord;->mUserId:I

    iget v1, p0, Lcom/android/server/media/MediaRouterService;->mCurrentUserId:I

    if-ne v0, v1, :cond_26

    .line 660
    iget-object p1, p1, Lcom/android/server/media/MediaRouterService$UserRecord;->mHandler:Lcom/android/server/media/MediaRouterService$UserHandler;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/android/server/media/MediaRouterService$UserHandler;->sendEmptyMessage(I)Z

    .line 662
    :cond_26
    return-void
.end method

.method private registerClientGroupIdLocked(Landroid/media/IMediaRouterClient;Ljava/lang/String;)V
    .registers 5

    .line 529
    invoke-interface {p1}, Landroid/media/IMediaRouterClient;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    .line 530
    iget-object v0, p0, Lcom/android/server/media/MediaRouterService;->mAllClientRecords:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/media/MediaRouterService$ClientRecord;

    .line 531
    if-nez p1, :cond_16

    .line 532
    const-string p1, "MediaRouterService"

    const-string p2, "Ignoring group id register request of a unregistered client."

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 533
    return-void

    .line 535
    :cond_16
    iget-object v0, p1, Lcom/android/server/media/MediaRouterService$ClientRecord;->mGroupId:Ljava/lang/String;

    invoke-static {v0, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 536
    return-void

    .line 538
    :cond_1f
    iget-object v0, p1, Lcom/android/server/media/MediaRouterService$ClientRecord;->mUserRecord:Lcom/android/server/media/MediaRouterService$UserRecord;

    .line 539
    iget-object v1, p1, Lcom/android/server/media/MediaRouterService$ClientRecord;->mGroupId:Ljava/lang/String;

    if-eqz v1, :cond_2a

    .line 540
    iget-object v1, p1, Lcom/android/server/media/MediaRouterService$ClientRecord;->mGroupId:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/android/server/media/MediaRouterService$UserRecord;->removeFromGroup(Ljava/lang/String;Lcom/android/server/media/MediaRouterService$ClientRecord;)V

    .line 542
    :cond_2a
    iput-object p2, p1, Lcom/android/server/media/MediaRouterService$ClientRecord;->mGroupId:Ljava/lang/String;

    .line 543
    if-eqz p2, :cond_3c

    .line 544
    invoke-virtual {v0, p2, p1}, Lcom/android/server/media/MediaRouterService$UserRecord;->addToGroup(Ljava/lang/String;Lcom/android/server/media/MediaRouterService$ClientRecord;)V

    .line 545
    iget-object p1, v0, Lcom/android/server/media/MediaRouterService$UserRecord;->mHandler:Lcom/android/server/media/MediaRouterService$UserHandler;

    const/16 v0, 0xa

    invoke-virtual {p1, v0, p2}, Lcom/android/server/media/MediaRouterService$UserHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 546
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 548
    :cond_3c
    return-void
.end method

.method private registerClientLocked(Landroid/media/IMediaRouterClient;IILjava/lang/String;IZ)V
    .registers 22

    .line 501
    move-object v0, p0

    move/from16 v9, p5

    invoke-interface/range {p1 .. p1}, Landroid/media/IMediaRouterClient;->asBinder()Landroid/os/IBinder;

    move-result-object v10

    .line 502
    iget-object v1, v0, Lcom/android/server/media/MediaRouterService;->mAllClientRecords:Landroid/util/ArrayMap;

    invoke-virtual {v1, v10}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/media/MediaRouterService$ClientRecord;

    .line 503
    if-nez v1, :cond_60

    .line 504
    nop

    .line 505
    iget-object v1, v0, Lcom/android/server/media/MediaRouterService;->mUserRecords:Landroid/util/SparseArray;

    invoke-virtual {v1, v9}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/media/MediaRouterService$UserRecord;

    .line 506
    const/4 v11, 0x0

    if-nez v1, :cond_26

    .line 507
    new-instance v1, Lcom/android/server/media/MediaRouterService$UserRecord;

    invoke-direct {v1, p0, v9}, Lcom/android/server/media/MediaRouterService$UserRecord;-><init>(Lcom/android/server/media/MediaRouterService;I)V

    .line 508
    const/4 v2, 0x1

    move-object v12, v1

    move v13, v2

    goto :goto_28

    .line 506
    :cond_26
    move-object v12, v1

    move v13, v11

    .line 510
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

    .line 512
    :try_start_3a
    invoke-interface {v10, v14, v11}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_3d
    .catch Landroid/os/RemoteException; {:try_start_3a .. :try_end_3d} :catch_56

    .line 515
    nop

    .line 517
    if-eqz v13, :cond_48

    .line 518
    iget-object v1, v0, Lcom/android/server/media/MediaRouterService;->mUserRecords:Landroid/util/SparseArray;

    invoke-virtual {v1, v9, v12}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 519
    invoke-direct {p0, v12}, Lcom/android/server/media/MediaRouterService;->initializeUserLocked(Lcom/android/server/media/MediaRouterService$UserRecord;)V

    .line 522
    :cond_48
    iget-object v1, v12, Lcom/android/server/media/MediaRouterService$UserRecord;->mClientRecords:Ljava/util/ArrayList;

    invoke-virtual {v1, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 523
    iget-object v1, v0, Lcom/android/server/media/MediaRouterService;->mAllClientRecords:Landroid/util/ArrayMap;

    invoke-virtual {v1, v10, v14}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 524
    invoke-direct {p0, v14}, Lcom/android/server/media/MediaRouterService;->initializeClientLocked(Lcom/android/server/media/MediaRouterService$ClientRecord;)V

    goto :goto_60

    .line 513
    :catch_56
    move-exception v0

    move-object v1, v0

    .line 514
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v2, "Media router client died prematurely."

    invoke-direct {v0, v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 526
    :cond_60
    :goto_60
    return-void
.end method

.method private requestSetVolumeLocked(Landroid/media/IMediaRouterClient;Ljava/lang/String;I)V
    .registers 6

    .line 637
    invoke-interface {p1}, Landroid/media/IMediaRouterClient;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    .line 638
    iget-object v0, p0, Lcom/android/server/media/MediaRouterService;->mAllClientRecords:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/media/MediaRouterService$ClientRecord;

    .line 639
    if-eqz p1, :cond_1b

    .line 640
    iget-object p1, p1, Lcom/android/server/media/MediaRouterService$ClientRecord;->mUserRecord:Lcom/android/server/media/MediaRouterService$UserRecord;

    iget-object p1, p1, Lcom/android/server/media/MediaRouterService$UserRecord;->mHandler:Lcom/android/server/media/MediaRouterService$UserHandler;

    const/4 v0, 0x6

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p3, v1, p2}, Lcom/android/server/media/MediaRouterService$UserHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 641
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 643
    :cond_1b
    return-void
.end method

.method private requestUpdateVolumeLocked(Landroid/media/IMediaRouterClient;Ljava/lang/String;I)V
    .registers 6

    .line 647
    invoke-interface {p1}, Landroid/media/IMediaRouterClient;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    .line 648
    iget-object v0, p0, Lcom/android/server/media/MediaRouterService;->mAllClientRecords:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/media/MediaRouterService$ClientRecord;

    .line 649
    if-eqz p1, :cond_1b

    .line 650
    iget-object p1, p1, Lcom/android/server/media/MediaRouterService$ClientRecord;->mUserRecord:Lcom/android/server/media/MediaRouterService$UserRecord;

    iget-object p1, p1, Lcom/android/server/media/MediaRouterService$UserRecord;->mHandler:Lcom/android/server/media/MediaRouterService$UserHandler;

    const/4 v0, 0x7

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p3, v1, p2}, Lcom/android/server/media/MediaRouterService$UserHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 651
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 653
    :cond_1b
    return-void
.end method

.method private setDiscoveryRequestLocked(Landroid/media/IMediaRouterClient;IZ)V
    .registers 6

    .line 574
    invoke-interface {p1}, Landroid/media/IMediaRouterClient;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    .line 575
    iget-object v0, p0, Lcom/android/server/media/MediaRouterService;->mAllClientRecords:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/media/MediaRouterService$ClientRecord;

    .line 576
    if-eqz p1, :cond_51

    .line 578
    iget-boolean v0, p1, Lcom/android/server/media/MediaRouterService$ClientRecord;->mTrusted:Z

    if-nez v0, :cond_14

    .line 579
    and-int/lit8 p2, p2, -0x5

    .line 582
    :cond_14
    iget v0, p1, Lcom/android/server/media/MediaRouterService$ClientRecord;->mRouteTypes:I

    if-ne v0, p2, :cond_1c

    iget-boolean v0, p1, Lcom/android/server/media/MediaRouterService$ClientRecord;->mActiveScan:Z

    if-eq v0, p3, :cond_51

    .line 584
    :cond_1c
    sget-boolean v0, Lcom/android/server/media/MediaRouterService;->DEBUG:Z

    if-eqz v0, :cond_45

    .line 585
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ": Set discovery request, routeTypes=0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 586
    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", activeScan="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 585
    const-string v1, "MediaRouterService"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 588
    :cond_45
    iput p2, p1, Lcom/android/server/media/MediaRouterService$ClientRecord;->mRouteTypes:I

    .line 589
    iput-boolean p3, p1, Lcom/android/server/media/MediaRouterService$ClientRecord;->mActiveScan:Z

    .line 590
    iget-object p1, p1, Lcom/android/server/media/MediaRouterService$ClientRecord;->mUserRecord:Lcom/android/server/media/MediaRouterService$UserRecord;

    iget-object p1, p1, Lcom/android/server/media/MediaRouterService$UserRecord;->mHandler:Lcom/android/server/media/MediaRouterService$UserHandler;

    const/4 p2, 0x3

    invoke-virtual {p1, p2}, Lcom/android/server/media/MediaRouterService$UserHandler;->sendEmptyMessage(I)Z

    .line 594
    :cond_51
    return-void
.end method

.method private setSelectedRouteLocked(Landroid/media/IMediaRouterClient;Ljava/lang/String;Z)V
    .registers 7

    .line 598
    iget-object v0, p0, Lcom/android/server/media/MediaRouterService;->mAllClientRecords:Landroid/util/ArrayMap;

    invoke-interface {p1}, Landroid/media/IMediaRouterClient;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/media/MediaRouterService$ClientRecord;

    .line 599
    if-eqz p1, :cond_8c

    .line 600
    iget-object v0, p1, Lcom/android/server/media/MediaRouterService$ClientRecord;->mSelectedRouteId:Ljava/lang/String;

    .line 601
    invoke-static {p2, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8c

    .line 602
    sget-boolean v1, Lcom/android/server/media/MediaRouterService;->DEBUG:Z

    if-eqz v1, :cond_43

    .line 603
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ": Set selected route, routeId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", oldRouteId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", explicit="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MediaRouterService"

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 608
    :cond_43
    iput-object p2, p1, Lcom/android/server/media/MediaRouterService$ClientRecord;->mSelectedRouteId:Ljava/lang/String;

    .line 611
    if-eqz p3, :cond_8c

    iget-boolean p3, p1, Lcom/android/server/media/MediaRouterService$ClientRecord;->mTrusted:Z

    if-eqz p3, :cond_8c

    .line 612
    if-eqz v0, :cond_59

    .line 613
    iget-object p3, p1, Lcom/android/server/media/MediaRouterService$ClientRecord;->mUserRecord:Lcom/android/server/media/MediaRouterService$UserRecord;

    iget-object p3, p3, Lcom/android/server/media/MediaRouterService$UserRecord;->mHandler:Lcom/android/server/media/MediaRouterService$UserHandler;

    const/4 v1, 0x5

    invoke-virtual {p3, v1, v0}, Lcom/android/server/media/MediaRouterService$UserHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p3

    .line 614
    invoke-virtual {p3}, Landroid/os/Message;->sendToTarget()V

    .line 616
    :cond_59
    if-eqz p2, :cond_67

    .line 617
    iget-object p3, p1, Lcom/android/server/media/MediaRouterService$ClientRecord;->mUserRecord:Lcom/android/server/media/MediaRouterService$UserRecord;

    iget-object p3, p3, Lcom/android/server/media/MediaRouterService$UserRecord;->mHandler:Lcom/android/server/media/MediaRouterService$UserHandler;

    const/4 v0, 0x4

    invoke-virtual {p3, v0, p2}, Lcom/android/server/media/MediaRouterService$UserHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p3

    .line 618
    invoke-virtual {p3}, Landroid/os/Message;->sendToTarget()V

    .line 620
    :cond_67
    iget-object p3, p1, Lcom/android/server/media/MediaRouterService$ClientRecord;->mGroupId:Ljava/lang/String;

    if-eqz p3, :cond_8c

    .line 621
    iget-object p3, p1, Lcom/android/server/media/MediaRouterService$ClientRecord;->mUserRecord:Lcom/android/server/media/MediaRouterService$UserRecord;

    .line 622
    invoke-static {p3}, Lcom/android/server/media/MediaRouterService$UserRecord;->access$500(Lcom/android/server/media/MediaRouterService$UserRecord;)Landroid/util/ArrayMap;

    move-result-object p3

    iget-object v0, p1, Lcom/android/server/media/MediaRouterService$ClientRecord;->mGroupId:Ljava/lang/String;

    invoke-virtual {p3, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/server/media/MediaRouterService$ClientGroup;

    .line 623
    if-eqz p3, :cond_8c

    .line 624
    iput-object p2, p3, Lcom/android/server/media/MediaRouterService$ClientGroup;->mSelectedRouteId:Ljava/lang/String;

    .line 625
    iget-object p2, p1, Lcom/android/server/media/MediaRouterService$ClientRecord;->mUserRecord:Lcom/android/server/media/MediaRouterService$UserRecord;

    iget-object p2, p2, Lcom/android/server/media/MediaRouterService$UserRecord;->mHandler:Lcom/android/server/media/MediaRouterService$UserHandler;

    const/16 p3, 0xa

    iget-object p1, p1, Lcom/android/server/media/MediaRouterService$ClientRecord;->mGroupId:Ljava/lang/String;

    invoke-virtual {p2, p3, p1}, Lcom/android/server/media/MediaRouterService$UserHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 627
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 633
    :cond_8c
    return-void
.end method

.method private unregisterClientLocked(Landroid/media/IMediaRouterClient;Z)V
    .registers 5

    .line 551
    iget-object v0, p0, Lcom/android/server/media/MediaRouterService;->mAllClientRecords:Landroid/util/ArrayMap;

    invoke-interface {p1}, Landroid/media/IMediaRouterClient;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/media/MediaRouterService$ClientRecord;

    .line 552
    if-eqz p1, :cond_27

    .line 553
    iget-object v0, p1, Lcom/android/server/media/MediaRouterService$ClientRecord;->mUserRecord:Lcom/android/server/media/MediaRouterService$UserRecord;

    .line 554
    iget-object v1, v0, Lcom/android/server/media/MediaRouterService$UserRecord;->mClientRecords:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 555
    iget-object v1, p1, Lcom/android/server/media/MediaRouterService$ClientRecord;->mGroupId:Ljava/lang/String;

    if-eqz v1, :cond_21

    .line 556
    iget-object v1, p1, Lcom/android/server/media/MediaRouterService$ClientRecord;->mGroupId:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/android/server/media/MediaRouterService$UserRecord;->removeFromGroup(Ljava/lang/String;Lcom/android/server/media/MediaRouterService$ClientRecord;)V

    .line 557
    const/4 v1, 0x0

    iput-object v1, p1, Lcom/android/server/media/MediaRouterService$ClientRecord;->mGroupId:Ljava/lang/String;

    .line 559
    :cond_21
    invoke-direct {p0, p1, p2}, Lcom/android/server/media/MediaRouterService;->disposeClientLocked(Lcom/android/server/media/MediaRouterService$ClientRecord;Z)V

    .line 560
    invoke-direct {p0, v0}, Lcom/android/server/media/MediaRouterService;->disposeUserIfNeededLocked(Lcom/android/server/media/MediaRouterService$UserRecord;)V

    .line 562
    :cond_27
    return-void
.end method

.method private validatePackageName(ILjava/lang/String;)Z
    .registers 7

    .line 701
    const/4 v0, 0x0

    if-eqz p2, :cond_20

    .line 702
    iget-object v1, p0, Lcom/android/server/media/MediaRouterService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object p1

    .line 703
    if-eqz p1, :cond_20

    .line 704
    array-length v1, p1

    move v2, v0

    :goto_11
    if-ge v2, v1, :cond_20

    aget-object v3, p1, v2

    .line 705
    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1d

    .line 706
    const/4 p1, 0x1

    return p1

    .line 704
    :cond_1d
    add-int/lit8 v2, v2, 0x1

    goto :goto_11

    .line 711
    :cond_20
    return v0
.end method


# virtual methods
.method clientDied(Lcom/android/server/media/MediaRouterService$ClientRecord;)V
    .registers 4

    .line 494
    iget-object v0, p0, Lcom/android/server/media/MediaRouterService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 495
    :try_start_3
    iget-object p1, p1, Lcom/android/server/media/MediaRouterService$ClientRecord;->mClient:Landroid/media/IMediaRouterClient;

    const/4 v1, 0x1

    invoke-direct {p0, p1, v1}, Lcom/android/server/media/MediaRouterService;->unregisterClientLocked(Landroid/media/IMediaRouterClient;Z)V

    .line 496
    monitor-exit v0

    .line 497
    return-void

    .line 496
    :catchall_b
    move-exception p1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw p1
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 7

    .line 411
    iget-object p1, p0, Lcom/android/server/media/MediaRouterService;->mContext:Landroid/content/Context;

    const-string p3, "MediaRouterService"

    invoke-static {p1, p3, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result p1

    if-nez p1, :cond_b

    return-void

    .line 413
    :cond_b
    const-string p1, "MEDIA ROUTER SERVICE (dumpsys media_router)"

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 414
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 415
    const-string p1, "Global state"

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 416
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "  mCurrentUserId="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p0, Lcom/android/server/media/MediaRouterService;->mCurrentUserId:I

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 418
    iget-object p1, p0, Lcom/android/server/media/MediaRouterService;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 419
    :try_start_31
    iget-object p3, p0, Lcom/android/server/media/MediaRouterService;->mUserRecords:Landroid/util/SparseArray;

    invoke-virtual {p3}, Landroid/util/SparseArray;->size()I

    move-result p3

    .line 420
    const/4 v0, 0x0

    :goto_38
    if-ge v0, p3, :cond_4d

    .line 421
    iget-object v1, p0, Lcom/android/server/media/MediaRouterService;->mUserRecords:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/media/MediaRouterService$UserRecord;

    .line 422
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 423
    const-string v2, ""

    invoke-virtual {v1, p2, v2}, Lcom/android/server/media/MediaRouterService$UserRecord;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 420
    add-int/lit8 v0, v0, 0x1

    goto :goto_38

    .line 425
    :cond_4d
    monitor-exit p1

    .line 426
    return-void

    .line 425
    :catchall_4f
    move-exception p2

    monitor-exit p1
    :try_end_51
    .catchall {:try_start_31 .. :try_end_51} :catchall_4f

    throw p2
.end method

.method public getState(Landroid/media/IMediaRouterClient;)Landroid/media/MediaRouterClientState;
    .registers 5

    .line 292
    if-eqz p1, :cond_1a

    .line 296
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 298
    :try_start_6
    iget-object v2, p0, Lcom/android/server/media/MediaRouterService;->mLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_9
    .catchall {:try_start_6 .. :try_end_9} :catchall_15

    .line 299
    :try_start_9
    invoke-direct {p0, p1}, Lcom/android/server/media/MediaRouterService;->getStateLocked(Landroid/media/IMediaRouterClient;)Landroid/media/MediaRouterClientState;

    move-result-object p1

    monitor-exit v2
    :try_end_e
    .catchall {:try_start_9 .. :try_end_e} :catchall_12

    .line 302
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 299
    return-object p1

    .line 300
    :catchall_12
    move-exception p1

    :try_start_13
    monitor-exit v2
    :try_end_14
    .catchall {:try_start_13 .. :try_end_14} :catchall_12

    :try_start_14
    throw p1
    :try_end_15
    .catchall {:try_start_14 .. :try_end_15} :catchall_15

    .line 302
    :catchall_15
    move-exception p1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1

    .line 293
    :cond_1a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "client must not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public isPlaybackActive(Landroid/media/IMediaRouterClient;)Z
    .registers 6

    .line 309
    if-eqz p1, :cond_31

    .line 313
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 316
    :try_start_6
    iget-object v2, p0, Lcom/android/server/media/MediaRouterService;->mLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_9
    .catchall {:try_start_6 .. :try_end_9} :catchall_2c

    .line 317
    :try_start_9
    iget-object v3, p0, Lcom/android/server/media/MediaRouterService;->mAllClientRecords:Landroid/util/ArrayMap;

    invoke-interface {p1}, Landroid/media/IMediaRouterClient;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-virtual {v3, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/media/MediaRouterService$ClientRecord;

    .line 318
    monitor-exit v2
    :try_end_16
    .catchall {:try_start_9 .. :try_end_16} :catchall_29

    .line 319
    if-eqz p1, :cond_24

    .line 320
    :try_start_18
    iget-object v2, p0, Lcom/android/server/media/MediaRouterService;->mAudioPlayerStateMonitor:Lcom/android/server/media/AudioPlayerStateMonitor;

    iget p1, p1, Lcom/android/server/media/MediaRouterService$ClientRecord;->mUid:I

    invoke-virtual {v2, p1}, Lcom/android/server/media/AudioPlayerStateMonitor;->isPlaybackActive(I)Z

    move-result p1
    :try_end_20
    .catchall {:try_start_18 .. :try_end_20} :catchall_2c

    .line 324
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 320
    return p1

    .line 322
    :cond_24
    const/4 p1, 0x0

    .line 324
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 322
    return p1

    .line 318
    :catchall_29
    move-exception p1

    :try_start_2a
    monitor-exit v2
    :try_end_2b
    .catchall {:try_start_2a .. :try_end_2b} :catchall_29

    :try_start_2b
    throw p1
    :try_end_2c
    .catchall {:try_start_2b .. :try_end_2c} :catchall_2c

    .line 324
    :catchall_2c
    move-exception p1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1

    .line 310
    :cond_31
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "client must not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
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
    .registers 15

    .line 224
    if-eqz p1, :cond_51

    .line 228
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v7

    .line 229
    invoke-direct {p0, v7, p2}, Lcom/android/server/media/MediaRouterService;->validatePackageName(ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_48

    .line 233
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v8

    .line 234
    const/4 v3, 0x0

    const/4 v4, 0x1

    const-string/jumbo v5, "registerClientAsUser"

    move v0, v8

    move v1, v7

    move v2, p3

    move-object v6, p2

    invoke-static/range {v0 .. v6}, Landroid/app/ActivityManager;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I

    move-result v5

    .line 236
    iget-object p3, p0, Lcom/android/server/media/MediaRouterService;->mContext:Landroid/content/Context;

    const-string v0, "android.permission.CONFIGURE_WIFI_DISPLAY"

    invoke-virtual {p3, v0}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result p3

    if-nez p3, :cond_29

    const/4 p3, 0x1

    goto :goto_2a

    :cond_29
    const/4 p3, 0x0

    :goto_2a
    move v6, p3

    .line 239
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v9

    .line 241
    :try_start_2f
    iget-object p3, p0, Lcom/android/server/media/MediaRouterService;->mLock:Ljava/lang/Object;

    monitor-enter p3
    :try_end_32
    .catchall {:try_start_2f .. :try_end_32} :catchall_43

    .line 242
    move-object v0, p0

    move-object v1, p1

    move v2, v7

    move v3, v8

    move-object v4, p2

    :try_start_37
    invoke-direct/range {v0 .. v6}, Lcom/android/server/media/MediaRouterService;->registerClientLocked(Landroid/media/IMediaRouterClient;IILjava/lang/String;IZ)V

    .line 243
    monitor-exit p3
    :try_end_3b
    .catchall {:try_start_37 .. :try_end_3b} :catchall_40

    .line 245
    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 246
    nop

    .line 247
    return-void

    .line 243
    :catchall_40
    move-exception p1

    :try_start_41
    monitor-exit p3
    :try_end_42
    .catchall {:try_start_41 .. :try_end_42} :catchall_40

    :try_start_42
    throw p1
    :try_end_43
    .catchall {:try_start_42 .. :try_end_43} :catchall_43

    .line 245
    :catchall_43
    move-exception p1

    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1

    .line 230
    :cond_48
    new-instance p1, Ljava/lang/SecurityException;

    const-string/jumbo p2, "packageName must match the calling uid"

    invoke-direct {p1, p2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 225
    :cond_51
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "client must not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public registerClientGroupId(Landroid/media/IMediaRouterClient;Ljava/lang/String;)V
    .registers 6

    .line 252
    if-eqz p1, :cond_2c

    .line 255
    iget-object v0, p0, Lcom/android/server/media/MediaRouterService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CONFIGURE_WIFI_DISPLAY"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_14

    .line 258
    const-string p1, "MediaRouterService"

    const-string p2, "Ignoring client group request because the client doesn\'t have the CONFIGURE_WIFI_DISPLAY permission."

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    return-void

    .line 262
    :cond_14
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 264
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
    move-exception p1

    :try_start_25
    monitor-exit v2
    :try_end_26
    .catchall {:try_start_25 .. :try_end_26} :catchall_24

    :try_start_26
    throw p1
    :try_end_27
    .catchall {:try_start_26 .. :try_end_27} :catchall_27

    .line 268
    :catchall_27
    move-exception p1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1

    .line 253
    :cond_2c
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "client must not be null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public requestSetVolume(Landroid/media/IMediaRouterClient;Ljava/lang/String;I)V
    .registers 7

    .line 371
    if-eqz p1, :cond_25

    .line 374
    if-eqz p2, :cond_1c

    .line 378
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 380
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
    move-exception p1

    :try_start_15
    monitor-exit v2
    :try_end_16
    .catchall {:try_start_15 .. :try_end_16} :catchall_14

    :try_start_16
    throw p1
    :try_end_17
    .catchall {:try_start_16 .. :try_end_17} :catchall_17

    .line 384
    :catchall_17
    move-exception p1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1

    .line 375
    :cond_1c
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p2, "routeId must not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 372
    :cond_25
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "client must not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public requestUpdateVolume(Landroid/media/IMediaRouterClient;Ljava/lang/String;I)V
    .registers 7

    .line 391
    if-eqz p1, :cond_25

    .line 394
    if-eqz p2, :cond_1c

    .line 398
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 400
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
    move-exception p1

    :try_start_15
    monitor-exit v2
    :try_end_16
    .catchall {:try_start_15 .. :try_end_16} :catchall_14

    :try_start_16
    throw p1
    :try_end_17
    .catchall {:try_start_16 .. :try_end_17} :catchall_17

    .line 404
    :catchall_17
    move-exception p1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1

    .line 395
    :cond_1c
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p2, "routeId must not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 392
    :cond_25
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "client must not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method restoreBluetoothA2dp()V
    .registers 5

    .line 432
    :try_start_0
    iget-object v0, p0, Lcom/android/server/media/MediaRouterService;->mLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_3} :catch_33

    .line 433
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/media/MediaRouterService;->mGlobalBluetoothA2dpOn:Z

    .line 434
    iget-object v2, p0, Lcom/android/server/media/MediaRouterService;->mActiveBluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    .line 435
    monitor-exit v0
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_30

    .line 437
    if-eqz v2, :cond_2f

    .line 438
    :try_start_a
    sget-boolean v0, Lcom/android/server/media/MediaRouterService;->DEBUG:Z

    if-eqz v0, :cond_2a

    .line 439
    const-string v0, "MediaRouterService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "restoreBluetoothA2dp("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 441
    :cond_2a
    iget-object v0, p0, Lcom/android/server/media/MediaRouterService;->mAudioService:Landroid/media/IAudioService;

    invoke-interface {v0, v1}, Landroid/media/IAudioService;->setBluetoothA2dpOn(Z)V
    :try_end_2f
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_2f} :catch_33

    .line 445
    :cond_2f
    goto :goto_3b

    .line 435
    :catchall_30
    move-exception v1

    :try_start_31
    monitor-exit v0
    :try_end_32
    .catchall {:try_start_31 .. :try_end_32} :catchall_30

    :try_start_32
    throw v1
    :try_end_33
    .catch Landroid/os/RemoteException; {:try_start_32 .. :try_end_33} :catch_33

    .line 443
    :catch_33
    move-exception v0

    .line 444
    const-string v0, "MediaRouterService"

    const-string v1, "RemoteException while calling setBluetoothA2dpOn."

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 446
    :goto_3b
    return-void
.end method

.method restoreRoute(I)V
    .registers 6

    .line 449
    nop

    .line 450
    iget-object v0, p0, Lcom/android/server/media/MediaRouterService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 451
    :try_start_4
    iget-object v1, p0, Lcom/android/server/media/MediaRouterService;->mUserRecords:Landroid/util/SparseArray;

    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/media/MediaRouterService$UserRecord;

    .line 452
    if-eqz v1, :cond_33

    iget-object v2, v1, Lcom/android/server/media/MediaRouterService$UserRecord;->mClientRecords:Ljava/util/ArrayList;

    if-eqz v2, :cond_33

    .line 453
    iget-object v1, v1, Lcom/android/server/media/MediaRouterService$UserRecord;->mClientRecords:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_33

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/media/MediaRouterService$ClientRecord;

    .line 454
    iget-object v3, v2, Lcom/android/server/media/MediaRouterService$ClientRecord;->mPackageName:Ljava/lang/String;

    invoke-direct {p0, p1, v3}, Lcom/android/server/media/MediaRouterService;->validatePackageName(ILjava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_32

    .line 455
    nop

    .line 456
    goto :goto_34

    .line 458
    :cond_32
    goto :goto_1c

    .line 460
    :cond_33
    const/4 v2, 0x0

    :goto_34
    monitor-exit v0
    :try_end_35
    .catchall {:try_start_4 .. :try_end_35} :catchall_4a

    .line 461
    if-eqz v2, :cond_46

    .line 463
    :try_start_37
    iget-object p1, v2, Lcom/android/server/media/MediaRouterService$ClientRecord;->mClient:Landroid/media/IMediaRouterClient;

    invoke-interface {p1}, Landroid/media/IMediaRouterClient;->onRestoreRoute()V
    :try_end_3c
    .catch Landroid/os/RemoteException; {:try_start_37 .. :try_end_3c} :catch_3d

    goto :goto_45

    .line 464
    :catch_3d
    move-exception p1

    .line 465
    const-string p1, "MediaRouterService"

    const-string v0, "Failed to call onRestoreRoute. Client probably died."

    invoke-static {p1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 466
    :goto_45
    goto :goto_49

    .line 468
    :cond_46
    invoke-virtual {p0}, Lcom/android/server/media/MediaRouterService;->restoreBluetoothA2dp()V

    .line 470
    :goto_49
    return-void

    .line 460
    :catchall_4a
    move-exception p1

    :try_start_4b
    monitor-exit v0
    :try_end_4c
    .catchall {:try_start_4b .. :try_end_4c} :catchall_4a

    throw p1
.end method

.method public setDiscoveryRequest(Landroid/media/IMediaRouterClient;IZ)V
    .registers 7

    .line 332
    if-eqz p1, :cond_1a

    .line 336
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 338
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
    move-exception p1

    :try_start_13
    monitor-exit v2
    :try_end_14
    .catchall {:try_start_13 .. :try_end_14} :catchall_12

    :try_start_14
    throw p1
    :try_end_15
    .catchall {:try_start_14 .. :try_end_15} :catchall_15

    .line 342
    :catchall_15
    move-exception p1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1

    .line 333
    :cond_1a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "client must not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setSelectedRoute(Landroid/media/IMediaRouterClient;Ljava/lang/String;Z)V
    .registers 7

    .line 354
    if-eqz p1, :cond_1a

    .line 358
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 360
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
    move-exception p1

    :try_start_13
    monitor-exit v2
    :try_end_14
    .catchall {:try_start_13 .. :try_end_14} :catchall_12

    :try_start_14
    throw p1
    :try_end_15
    .catchall {:try_start_14 .. :try_end_15} :catchall_15

    .line 364
    :catchall_15
    move-exception p1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1

    .line 355
    :cond_1a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "client must not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method switchUser()V
    .registers 6

    .line 473
    iget-object v0, p0, Lcom/android/server/media/MediaRouterService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 474
    :try_start_3
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v1

    .line 475
    iget v2, p0, Lcom/android/server/media/MediaRouterService;->mCurrentUserId:I

    if-eq v2, v1, :cond_32

    .line 476
    iget v2, p0, Lcom/android/server/media/MediaRouterService;->mCurrentUserId:I

    .line 477
    iput v1, p0, Lcom/android/server/media/MediaRouterService;->mCurrentUserId:I

    .line 479
    iget-object v3, p0, Lcom/android/server/media/MediaRouterService;->mUserRecords:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/media/MediaRouterService$UserRecord;

    .line 480
    if-eqz v2, :cond_22

    .line 481
    iget-object v3, v2, Lcom/android/server/media/MediaRouterService$UserRecord;->mHandler:Lcom/android/server/media/MediaRouterService$UserHandler;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Lcom/android/server/media/MediaRouterService$UserHandler;->sendEmptyMessage(I)Z

    .line 482
    invoke-direct {p0, v2}, Lcom/android/server/media/MediaRouterService;->disposeUserIfNeededLocked(Lcom/android/server/media/MediaRouterService$UserRecord;)V

    .line 485
    :cond_22
    iget-object v2, p0, Lcom/android/server/media/MediaRouterService;->mUserRecords:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/media/MediaRouterService$UserRecord;

    .line 486
    if-eqz v1, :cond_32

    .line 487
    iget-object v1, v1, Lcom/android/server/media/MediaRouterService$UserRecord;->mHandler:Lcom/android/server/media/MediaRouterService$UserHandler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/server/media/MediaRouterService$UserHandler;->sendEmptyMessage(I)Z

    .line 490
    :cond_32
    monitor-exit v0

    .line 491
    return-void

    .line 490
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

    .line 275
    if-eqz p1, :cond_1b

    .line 279
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 281
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
    move-exception p1

    :try_start_14
    monitor-exit v2
    :try_end_15
    .catchall {:try_start_14 .. :try_end_15} :catchall_13

    :try_start_15
    throw p1
    :try_end_16
    .catchall {:try_start_15 .. :try_end_16} :catchall_16

    .line 285
    :catchall_16
    move-exception p1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1

    .line 276
    :cond_1b
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "client must not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
