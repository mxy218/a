.class public Lcom/android/server/camera/CameraServiceProxy;
.super Lcom/android/server/SystemService;
.source "CameraServiceProxy.java"

# interfaces
.implements Landroid/os/Handler$Callback;
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;
    }
.end annotation


# static fields
.field private static final CAMERA_SERVICE_BINDER_NAME:Ljava/lang/String; = "media.camera"

.field public static final CAMERA_SERVICE_PROXY_BINDER_NAME:Ljava/lang/String; = "media.camera.proxy"

.field private static final DEBUG:Z = false

.field public static final DISABLE_POLLING_FLAGS:I = 0x1000

.field public static final ENABLE_POLLING_FLAGS:I = 0x0

.field private static final MAX_USAGE_HISTORY:I = 0x64

.field private static final MSG_SWITCH_USER:I = 0x1

.field private static final NFC_NOTIFICATION_PROP:Ljava/lang/String; = "ro.camera.notify_nfc"

.field private static final NFC_SERVICE_BINDER_NAME:Ljava/lang/String; = "nfc"

.field private static final REFRESH_RATE_120HZ:I = 0x3

.field private static final REFRESH_RATE_DYNAMIC:I = 0x1

.field private static final REFRESH_RATE_FORCE_SIXTY_HZ:I = 0x0

.field private static final RETRY_DELAY_TIME:I = 0x14

.field private static final RETRY_TIMES:I = 0x1e

.field private static final SCREEN_REFRESH_RATE:Ljava/lang/String; = "screen_refresh_rate"

.field private static final TAG:Ljava/lang/String; = "CameraService_proxy"

.field private static final nfcInterfaceToken:Landroid/os/IBinder;


# instance fields
.field private final mActiveCameraUsage:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;",
            ">;"
        }
    .end annotation
.end field

.field private final mCameraServiceProxy:Landroid/hardware/ICameraServiceProxy$Stub;

.field private mCameraServiceRaw:Landroid/hardware/ICameraService;

.field private final mCameraUsageHistory:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private mEnabledCameraUsers:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mHandler:Landroid/os/Handler;

.field private final mHandlerThread:Lcom/android/server/ServiceThread;

.field private final mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mLastUser:I

.field private final mLock:Ljava/lang/Object;

.field private final mLogger:Lcom/android/internal/logging/MetricsLogger;

.field private final mNotifyNfc:Z

.field private mUserManager:Landroid/os/UserManager;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 109
    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    sput-object v0, Lcom/android/server/camera/CameraServiceProxy;->nfcInterfaceToken:Landroid/os/IBinder;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 6
    .param p1, "context"  # Landroid/content/Context;

    .line 226
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 96
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/camera/CameraServiceProxy;->mLock:Ljava/lang/Object;

    .line 103
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/camera/CameraServiceProxy;->mActiveCameraUsage:Landroid/util/ArrayMap;

    .line 104
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/camera/CameraServiceProxy;->mCameraUsageHistory:Ljava/util/List;

    .line 106
    new-instance v0, Lcom/android/internal/logging/MetricsLogger;

    invoke-direct {v0}, Lcom/android/internal/logging/MetricsLogger;-><init>()V

    iput-object v0, p0, Lcom/android/server/camera/CameraServiceProxy;->mLogger:Lcom/android/internal/logging/MetricsLogger;

    .line 153
    new-instance v0, Lcom/android/server/camera/CameraServiceProxy$1;

    invoke-direct {v0, p0}, Lcom/android/server/camera/CameraServiceProxy$1;-><init>(Lcom/android/server/camera/CameraServiceProxy;)V

    iput-object v0, p0, Lcom/android/server/camera/CameraServiceProxy;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 178
    new-instance v0, Lcom/android/server/camera/CameraServiceProxy$2;

    invoke-direct {v0, p0}, Lcom/android/server/camera/CameraServiceProxy$2;-><init>(Lcom/android/server/camera/CameraServiceProxy;)V

    iput-object v0, p0, Lcom/android/server/camera/CameraServiceProxy;->mCameraServiceProxy:Landroid/hardware/ICameraServiceProxy$Stub;

    .line 227
    iput-object p1, p0, Lcom/android/server/camera/CameraServiceProxy;->mContext:Landroid/content/Context;

    .line 228
    new-instance v0, Lcom/android/server/ServiceThread;

    const/4 v1, 0x0

    const-string v2, "CameraService_proxy"

    const/4 v3, -0x4

    invoke-direct {v0, v2, v3, v1}, Lcom/android/server/ServiceThread;-><init>(Ljava/lang/String;IZ)V

    iput-object v0, p0, Lcom/android/server/camera/CameraServiceProxy;->mHandlerThread:Lcom/android/server/ServiceThread;

    .line 229
    iget-object v0, p0, Lcom/android/server/camera/CameraServiceProxy;->mHandlerThread:Lcom/android/server/ServiceThread;

    invoke-virtual {v0}, Lcom/android/server/ServiceThread;->start()V

    .line 230
    new-instance v0, Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/server/camera/CameraServiceProxy;->mHandlerThread:Lcom/android/server/ServiceThread;

    invoke-virtual {v2}, Lcom/android/server/ServiceThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, v2, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/android/server/camera/CameraServiceProxy;->mHandler:Landroid/os/Handler;

    .line 232
    const-string/jumbo v0, "ro.camera.notify_nfc"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-lez v0, :cond_56

    const/4 v1, 0x1

    :cond_56
    iput-boolean v1, p0, Lcom/android/server/camera/CameraServiceProxy;->mNotifyNfc:Z

    .line 234
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/camera/CameraServiceProxy;)Ljava/lang/Object;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/camera/CameraServiceProxy;

    .line 61
    iget-object v0, p0, Lcom/android/server/camera/CameraServiceProxy;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/camera/CameraServiceProxy;)Ljava/util/Set;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/camera/CameraServiceProxy;

    .line 61
    iget-object v0, p0, Lcom/android/server/camera/CameraServiceProxy;->mEnabledCameraUsers:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/camera/CameraServiceProxy;)I
    .registers 2
    .param p0, "x0"  # Lcom/android/server/camera/CameraServiceProxy;

    .line 61
    iget v0, p0, Lcom/android/server/camera/CameraServiceProxy;->mLastUser:I

    return v0
.end method

.method static synthetic access$300(Lcom/android/server/camera/CameraServiceProxy;I)V
    .registers 2
    .param p0, "x0"  # Lcom/android/server/camera/CameraServiceProxy;
    .param p1, "x1"  # I

    .line 61
    invoke-direct {p0, p1}, Lcom/android/server/camera/CameraServiceProxy;->switchUserLocked(I)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/camera/CameraServiceProxy;I)V
    .registers 2
    .param p0, "x0"  # Lcom/android/server/camera/CameraServiceProxy;
    .param p1, "x1"  # I

    .line 61
    invoke-direct {p0, p1}, Lcom/android/server/camera/CameraServiceProxy;->notifySwitchWithRetries(I)V

    return-void
.end method

.method static synthetic access$500(I)Ljava/lang/String;
    .registers 2
    .param p0, "x0"  # I

    .line 61
    invoke-static {p0}, Lcom/android/server/camera/CameraServiceProxy;->cameraStateToString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(I)Ljava/lang/String;
    .registers 2
    .param p0, "x0"  # I

    .line 61
    invoke-static {p0}, Lcom/android/server/camera/CameraServiceProxy;->cameraFacingToString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/server/camera/CameraServiceProxy;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/camera/CameraServiceProxy;

    .line 61
    iget-object v0, p0, Lcom/android/server/camera/CameraServiceProxy;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/server/camera/CameraServiceProxy;Ljava/lang/String;IILjava/lang/String;I)V
    .registers 6
    .param p0, "x0"  # Lcom/android/server/camera/CameraServiceProxy;
    .param p1, "x1"  # Ljava/lang/String;
    .param p2, "x2"  # I
    .param p3, "x3"  # I
    .param p4, "x4"  # Ljava/lang/String;
    .param p5, "x5"  # I

    .line 61
    invoke-direct/range {p0 .. p5}, Lcom/android/server/camera/CameraServiceProxy;->updateActivityCount(Ljava/lang/String;IILjava/lang/String;I)V

    return-void
.end method

.method private static cameraFacingToString(I)Ljava/lang/String;
    .registers 2
    .param p0, "cameraFacing"  # I

    .line 574
    if-eqz p0, :cond_11

    const/4 v0, 0x1

    if-eq p0, v0, :cond_e

    const/4 v0, 0x2

    if-eq p0, v0, :cond_b

    .line 580
    const-string v0, "CAMERA_FACING_UNKNOWN"

    return-object v0

    .line 577
    :cond_b
    const-string v0, "CAMERA_FACING_EXTERNAL"

    return-object v0

    .line 576
    :cond_e
    const-string v0, "CAMERA_FACING_FRONT"

    return-object v0

    .line 575
    :cond_11
    const-string v0, "CAMERA_FACING_BACK"

    return-object v0
.end method

.method private static cameraStateToString(I)Ljava/lang/String;
    .registers 2
    .param p0, "newCameraState"  # I

    .line 563
    if-eqz p0, :cond_17

    const/4 v0, 0x1

    if-eq p0, v0, :cond_14

    const/4 v0, 0x2

    if-eq p0, v0, :cond_11

    const/4 v0, 0x3

    if-eq p0, v0, :cond_e

    .line 570
    const-string v0, "CAMERA_STATE_UNKNOWN"

    return-object v0

    .line 567
    :cond_e
    const-string v0, "CAMERA_STATE_CLOSED"

    return-object v0

    .line 566
    :cond_11
    const-string v0, "CAMERA_STATE_IDLE"

    return-object v0

    .line 565
    :cond_14
    const-string v0, "CAMERA_STATE_ACTIVE"

    return-object v0

    .line 564
    :cond_17
    const-string v0, "CAMERA_STATE_OPEN"

    return-object v0
.end method

.method private getEnabledUserHandles(I)Ljava/util/Set;
    .registers 8
    .param p1, "currentUserHandle"  # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 366
    iget-object v0, p0, Lcom/android/server/camera/CameraServiceProxy;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0, p1}, Landroid/os/UserManager;->getEnabledProfileIds(I)[I

    move-result-object v0

    .line 367
    .local v0, "userProfiles":[I
    new-instance v1, Landroid/util/ArraySet;

    array-length v2, v0

    invoke-direct {v1, v2}, Landroid/util/ArraySet;-><init>(I)V

    .line 369
    .local v1, "handles":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    array-length v2, v0

    const/4 v3, 0x0

    :goto_e
    if-ge v3, v2, :cond_1c

    aget v4, v0, v3

    .line 370
    .local v4, "id":I
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 369
    .end local v4  # "id":I
    add-int/lit8 v3, v3, 0x1

    goto :goto_e

    .line 373
    :cond_1c
    return-object v1
.end method

.method private notifyCameraserverLocked(ILjava/util/Set;)Z
    .registers 8
    .param p1, "eventType"  # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;)Z"
        }
    .end annotation

    .line 400
    .local p2, "updatedUserHandles":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    iget-object v0, p0, Lcom/android/server/camera/CameraServiceProxy;->mCameraServiceRaw:Landroid/hardware/ICameraService;

    const-string v1, "CameraService_proxy"

    const/4 v2, 0x0

    if-nez v0, :cond_28

    .line 401
    const-string/jumbo v0, "media.camera"

    invoke-virtual {p0, v0}, Lcom/android/server/camera/CameraServiceProxy;->getBinderService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 402
    .local v0, "cameraServiceBinder":Landroid/os/IBinder;
    if-nez v0, :cond_16

    .line 403
    const-string v3, "Could not notify cameraserver, camera service not available."

    invoke-static {v1, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 404
    return v2

    .line 407
    :cond_16
    :try_start_16
    invoke-interface {v0, p0, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_16 .. :try_end_19} :catch_21

    .line 411
    nop

    .line 413
    invoke-static {v0}, Landroid/hardware/ICameraService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/ICameraService;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/camera/CameraServiceProxy;->mCameraServiceRaw:Landroid/hardware/ICameraService;

    goto :goto_28

    .line 408
    :catch_21
    move-exception v3

    .line 409
    .local v3, "e":Landroid/os/RemoteException;
    const-string v4, "Could not link to death of native camera service"

    invoke-static {v1, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 410
    return v2

    .line 417
    .end local v0  # "cameraServiceBinder":Landroid/os/IBinder;
    .end local v3  # "e":Landroid/os/RemoteException;
    :cond_28
    :goto_28
    :try_start_28
    iget-object v0, p0, Lcom/android/server/camera/CameraServiceProxy;->mCameraServiceRaw:Landroid/hardware/ICameraService;

    invoke-static {p2}, Lcom/android/server/camera/CameraServiceProxy;->toArray(Ljava/util/Collection;)[I

    move-result-object v3

    invoke-interface {v0, p1, v3}, Landroid/hardware/ICameraService;->notifySystemEvent(I[I)V
    :try_end_31
    .catch Landroid/os/RemoteException; {:try_start_28 .. :try_end_31} :catch_34

    .line 422
    nop

    .line 423
    const/4 v0, 0x1

    return v0

    .line 418
    :catch_34
    move-exception v0

    .line 419
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not notify cameraserver, remote exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 421
    return v2
.end method

.method private notifyNfcService(Z)V
    .registers 9
    .param p1, "enablePolling"  # Z

    .line 537
    const-string/jumbo v0, "nfc"

    invoke-virtual {p0, v0}, Lcom/android/server/camera/CameraServiceProxy;->getBinderService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 538
    .local v0, "nfcServiceBinder":Landroid/os/IBinder;
    const-string v1, "CameraService_proxy"

    if-nez v0, :cond_11

    .line 539
    const-string v2, "Could not connect to NFC service to notify it of camera state"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 540
    return-void

    .line 542
    :cond_11
    invoke-static {v0}, Landroid/nfc/INfcAdapter$Stub;->asInterface(Landroid/os/IBinder;)Landroid/nfc/INfcAdapter;

    move-result-object v2

    .line 543
    .local v2, "nfcAdapterRaw":Landroid/nfc/INfcAdapter;
    if-eqz p1, :cond_19

    const/4 v3, 0x0

    goto :goto_1b

    :cond_19
    const/16 v3, 0x1000

    .line 546
    .local v3, "flags":I
    :goto_1b
    :try_start_1b
    sget-object v4, Lcom/android/server/camera/CameraServiceProxy;->nfcInterfaceToken:Landroid/os/IBinder;

    const/4 v5, 0x0

    invoke-interface {v2, v4, v5, v3, v5}, Landroid/nfc/INfcAdapter;->setReaderMode(Landroid/os/IBinder;Landroid/nfc/IAppCallback;ILandroid/os/Bundle;)V
    :try_end_21
    .catch Landroid/os/RemoteException; {:try_start_1b .. :try_end_21} :catch_22

    .line 549
    goto :goto_37

    .line 547
    :catch_22
    move-exception v4

    .line 548
    .local v4, "e":Landroid/os/RemoteException;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Could not notify NFC service, remote exception: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 550
    .end local v4  # "e":Landroid/os/RemoteException;
    :goto_37
    return-void
.end method

.method private notifySwitchWithRetries(I)V
    .registers 4
    .param p1, "retries"  # I

    .line 377
    iget-object v0, p0, Lcom/android/server/camera/CameraServiceProxy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 378
    :try_start_3
    invoke-direct {p0, p1}, Lcom/android/server/camera/CameraServiceProxy;->notifySwitchWithRetriesLocked(I)V

    .line 379
    monitor-exit v0

    .line 380
    return-void

    .line 379
    :catchall_8
    move-exception v1

    monitor-exit v0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_8

    throw v1
.end method

.method private notifySwitchWithRetriesLocked(I)V
    .registers 7
    .param p1, "retries"  # I

    .line 383
    iget-object v0, p0, Lcom/android/server/camera/CameraServiceProxy;->mEnabledCameraUsers:Ljava/util/Set;

    if-nez v0, :cond_5

    .line 384
    return-void

    .line 386
    :cond_5
    const/4 v1, 0x1

    invoke-direct {p0, v1, v0}, Lcom/android/server/camera/CameraServiceProxy;->notifyCameraserverLocked(ILjava/util/Set;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 387
    const/4 p1, 0x0

    .line 389
    :cond_d
    if-gtz p1, :cond_10

    .line 390
    return-void

    .line 392
    :cond_10
    const-string v0, "CameraService_proxy"

    const-string v2, "Could not notify camera service of user switch, retrying..."

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 393
    iget-object v0, p0, Lcom/android/server/camera/CameraServiceProxy;->mHandler:Landroid/os/Handler;

    add-int/lit8 v2, p1, -0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x14

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 395
    return-void
.end method

.method private switchUserLocked(I)V
    .registers 4
    .param p1, "userHandle"  # I

    .line 356
    invoke-direct {p0, p1}, Lcom/android/server/camera/CameraServiceProxy;->getEnabledUserHandles(I)Ljava/util/Set;

    move-result-object v0

    .line 357
    .local v0, "currentUserHandles":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    iput p1, p0, Lcom/android/server/camera/CameraServiceProxy;->mLastUser:I

    .line 358
    iget-object v1, p0, Lcom/android/server/camera/CameraServiceProxy;->mEnabledCameraUsers:Ljava/util/Set;

    if-eqz v1, :cond_10

    invoke-interface {v1, v0}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    .line 360
    :cond_10
    iput-object v0, p0, Lcom/android/server/camera/CameraServiceProxy;->mEnabledCameraUsers:Ljava/util/Set;

    .line 361
    const/16 v1, 0x1e

    invoke-direct {p0, v1}, Lcom/android/server/camera/CameraServiceProxy;->notifySwitchWithRetriesLocked(I)V

    .line 363
    :cond_17
    return-void
.end method

.method private static toArray(Ljava/util/Collection;)[I
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/Integer;",
            ">;)[I"
        }
    .end annotation

    .line 553
    .local p0, "c":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Integer;>;"
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v0

    .line 554
    .local v0, "len":I
    new-array v1, v0, [I

    .line 555
    .local v1, "ret":[I
    const/4 v2, 0x0

    .line 556
    .local v2, "idx":I
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_b
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_21

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    .line 557
    .local v4, "i":Ljava/lang/Integer;
    add-int/lit8 v5, v2, 0x1

    .end local v2  # "idx":I
    .local v5, "idx":I
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v6

    aput v6, v1, v2

    .line 558
    .end local v4  # "i":Ljava/lang/Integer;
    move v2, v5

    goto :goto_b

    .line 559
    .end local v5  # "idx":I
    .restart local v2  # "idx":I
    :cond_21
    return-object v1
.end method

.method private updateActivityCount(Ljava/lang/String;IILjava/lang/String;I)V
    .registers 16
    .param p1, "cameraId"  # Ljava/lang/String;
    .param p2, "newCameraState"  # I
    .param p3, "facing"  # I
    .param p4, "clientName"  # Ljava/lang/String;
    .param p5, "apiLevel"  # I

    .line 428
    iget-object v0, p0, Lcom/android/server/camera/CameraServiceProxy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 430
    :try_start_3
    iget-object v1, p0, Lcom/android/server/camera/CameraServiceProxy;->mActiveCameraUsage:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v1

    .line 431
    .local v1, "wasEmpty":Z
    if-eqz p2, :cond_119

    const/16 v2, 0x11

    const/4 v3, 0x3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eq p2, v5, :cond_95

    const/4 v6, 0x2

    if-eq p2, v6, :cond_19

    if-eq p2, v3, :cond_19

    goto/16 :goto_142

    .line 488
    :cond_19
    iget-object v6, p0, Lcom/android/server/camera/CameraServiceProxy;->mActiveCameraUsage:Landroid/util/ArrayMap;

    invoke-virtual {v6, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;

    .line 489
    .local v6, "doneEvent":Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;
    if-nez v6, :cond_25

    goto/16 :goto_142

    .line 491
    :cond_25
    invoke-virtual {v6}, Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;->markCompleted()V

    .line 492
    iget-object v7, p0, Lcom/android/server/camera/CameraServiceProxy;->mCameraUsageHistory:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 493
    iget-object v7, p0, Lcom/android/server/camera/CameraServiceProxy;->mCameraUsageHistory:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    const/16 v8, 0x64

    if-le v7, v8, :cond_3a

    .line 494
    invoke-virtual {p0}, Lcom/android/server/camera/CameraServiceProxy;->dumpUsageEvents()V

    .line 499
    :cond_3a
    const/4 v7, 0x0

    .line 500
    .local v7, "stillActivePackage":Z
    move v8, v4

    .local v8, "i":I
    :goto_3c
    iget-object v9, p0, Lcom/android/server/camera/CameraServiceProxy;->mActiveCameraUsage:Landroid/util/ArrayMap;

    invoke-virtual {v9}, Landroid/util/ArrayMap;->size()I

    move-result v9

    if-ge v8, v9, :cond_59

    .line 501
    iget-object v9, p0, Lcom/android/server/camera/CameraServiceProxy;->mActiveCameraUsage:Landroid/util/ArrayMap;

    invoke-virtual {v9, v8}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;

    iget-object v9, v9, Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;->mClientName:Ljava/lang/String;

    invoke-virtual {v9, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_56

    .line 502
    const/4 v7, 0x1

    .line 503
    goto :goto_59

    .line 500
    :cond_56
    add-int/lit8 v8, v8, 0x1

    goto :goto_3c

    .line 509
    .end local v8  # "i":I
    :cond_59
    :goto_59
    if-nez v7, :cond_142

    .line 512
    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v8, v2, :cond_142

    .line 513
    iget-object v2, p0, Lcom/android/server/camera/CameraServiceProxy;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v8, "screen_refresh_rate"

    invoke-static {v2, v8, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 515
    .local v2, "refreshRateSettingsValue":I
    if-eq v2, v5, :cond_70

    if-ne v2, v3, :cond_142

    .line 516
    :cond_70
    const-string v3, "com.meizu.media.camera"

    invoke-virtual {v3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_142

    const-string v3, "com.tencent.mm"

    invoke-virtual {v3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_142

    const-string v3, "com.tencent.mobileqq"

    invoke-virtual {v3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_142

    .line 517
    const-class v3, Lcom/android/server/wm/WindowManagerInternal;

    .line 518
    invoke-static {v3}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/WindowManagerInternal;

    .line 519
    .local v3, "wmi":Lcom/android/server/wm/WindowManagerInternal;
    invoke-virtual {v3, p4}, Lcom/android/server/wm/WindowManagerInternal;->removeNonHighRefreshRatePackage(Ljava/lang/String;)V

    goto/16 :goto_142

    .line 450
    .end local v2  # "refreshRateSettingsValue":I
    .end local v3  # "wmi":Lcom/android/server/wm/WindowManagerInternal;
    .end local v6  # "doneEvent":Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;
    .end local v7  # "stillActivePackage":Z
    :cond_95
    const/4 v6, 0x0

    .line 451
    .local v6, "alreadyActivePackage":Z
    move v7, v4

    .local v7, "i":I
    :goto_97
    iget-object v8, p0, Lcom/android/server/camera/CameraServiceProxy;->mActiveCameraUsage:Landroid/util/ArrayMap;

    invoke-virtual {v8}, Landroid/util/ArrayMap;->size()I

    move-result v8

    if-ge v7, v8, :cond_b4

    .line 452
    iget-object v8, p0, Lcom/android/server/camera/CameraServiceProxy;->mActiveCameraUsage:Landroid/util/ArrayMap;

    invoke-virtual {v8, v7}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;

    iget-object v8, v8, Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;->mClientName:Ljava/lang/String;

    invoke-virtual {v8, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_b1

    .line 453
    const/4 v6, 0x1

    .line 454
    goto :goto_b4

    .line 451
    :cond_b1
    add-int/lit8 v7, v7, 0x1

    goto :goto_97

    .line 460
    .end local v7  # "i":I
    :cond_b4
    :goto_b4
    if-nez v6, :cond_e6

    .line 463
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v7, v2, :cond_e6

    .line 464
    iget-object v2, p0, Lcom/android/server/camera/CameraServiceProxy;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v7, "screen_refresh_rate"

    invoke-static {v2, v7, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 466
    .restart local v2  # "refreshRateSettingsValue":I
    if-eq v2, v5, :cond_cb

    if-ne v2, v3, :cond_e6

    .line 467
    :cond_cb
    const-string v3, "com.tencent.mm"

    invoke-virtual {v3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_e6

    const-string v3, "com.tencent.mobileqq"

    invoke-virtual {v3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_e6

    .line 468
    const-class v3, Lcom/android/server/wm/WindowManagerInternal;

    .line 469
    invoke-static {v3}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/WindowManagerInternal;

    .line 470
    .restart local v3  # "wmi":Lcom/android/server/wm/WindowManagerInternal;
    invoke-virtual {v3, p4}, Lcom/android/server/wm/WindowManagerInternal;->addNonHighRefreshRatePackage(Ljava/lang/String;)V

    .line 478
    .end local v2  # "refreshRateSettingsValue":I
    .end local v3  # "wmi":Lcom/android/server/wm/WindowManagerInternal;
    :cond_e6
    new-instance v2, Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;

    invoke-direct {v2, p3, p4, p5}, Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;-><init>(ILjava/lang/String;I)V

    .line 479
    .local v2, "newEvent":Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;
    iget-object v3, p0, Lcom/android/server/camera/CameraServiceProxy;->mActiveCameraUsage:Landroid/util/ArrayMap;

    invoke-virtual {v3, p1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;

    .line 480
    .local v3, "oldEvent":Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;
    if-eqz v3, :cond_142

    .line 481
    const-string v4, "CameraService_proxy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Camera "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " was already marked as active"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 482
    invoke-virtual {v3}, Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;->markCompleted()V

    .line 483
    iget-object v4, p0, Lcom/android/server/camera/CameraServiceProxy;->mCameraUsageHistory:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_142

    .line 438
    .end local v2  # "newEvent":Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;
    .end local v3  # "oldEvent":Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;
    .end local v6  # "alreadyActivePackage":Z
    :cond_119
    invoke-virtual {p0}, Lcom/android/server/camera/CameraServiceProxy;->getContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Landroid/media/AudioManager;

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/AudioManager;

    .line 439
    .local v2, "audioManager":Landroid/media/AudioManager;
    if-eqz v2, :cond_142

    .line 441
    if-nez p3, :cond_12c

    .line 442
    const-string v3, "back"

    goto :goto_12e

    :cond_12c
    const-string v3, "front"

    .line 443
    .local v3, "facingStr":Ljava/lang/String;
    :goto_12e
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "cameraFacing="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 444
    .local v4, "facingParameter":Ljava/lang/String;
    invoke-virtual {v2, v4}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    .line 528
    .end local v2  # "audioManager":Landroid/media/AudioManager;
    .end local v3  # "facingStr":Ljava/lang/String;
    .end local v4  # "facingParameter":Ljava/lang/String;
    :cond_142
    :goto_142
    iget-object v2, p0, Lcom/android/server/camera/CameraServiceProxy;->mActiveCameraUsage:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v2

    .line 529
    .local v2, "isEmpty":Z
    iget-boolean v3, p0, Lcom/android/server/camera/CameraServiceProxy;->mNotifyNfc:Z

    if-eqz v3, :cond_151

    if-eq v1, v2, :cond_151

    .line 530
    invoke-direct {p0, v2}, Lcom/android/server/camera/CameraServiceProxy;->notifyNfcService(Z)V

    .line 532
    .end local v1  # "wasEmpty":Z
    .end local v2  # "isEmpty":Z
    :cond_151
    monitor-exit v0

    .line 533
    return-void

    .line 532
    :catchall_153
    move-exception v1

    monitor-exit v0
    :try_end_155
    .catchall {:try_start_3 .. :try_end_155} :catchall_153

    throw v1
.end method


# virtual methods
.method public binderDied()V
    .registers 4

    .line 296
    iget-object v0, p0, Lcom/android/server/camera/CameraServiceProxy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 297
    const/4 v1, 0x0

    :try_start_4
    iput-object v1, p0, Lcom/android/server/camera/CameraServiceProxy;->mCameraServiceRaw:Landroid/hardware/ICameraService;

    .line 300
    iget-object v1, p0, Lcom/android/server/camera/CameraServiceProxy;->mActiveCameraUsage:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v1

    .line 301
    .local v1, "wasEmpty":Z
    iget-object v2, p0, Lcom/android/server/camera/CameraServiceProxy;->mActiveCameraUsage:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->clear()V

    .line 303
    iget-boolean v2, p0, Lcom/android/server/camera/CameraServiceProxy;->mNotifyNfc:Z

    if-eqz v2, :cond_1b

    if-nez v1, :cond_1b

    .line 304
    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcom/android/server/camera/CameraServiceProxy;->notifyNfcService(Z)V

    .line 306
    .end local v1  # "wasEmpty":Z
    :cond_1b
    monitor-exit v0

    .line 307
    return-void

    .line 306
    :catchall_1d
    move-exception v1

    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_4 .. :try_end_1f} :catchall_1d

    throw v1
.end method

.method dumpUsageEvents()V
    .registers 8

    .line 314
    iget-object v0, p0, Lcom/android/server/camera/CameraServiceProxy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 316
    :try_start_3
    iget-object v1, p0, Lcom/android/server/camera/CameraServiceProxy;->mCameraUsageHistory:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->shuffle(Ljava/util/List;)V

    .line 317
    iget-object v1, p0, Lcom/android/server/camera/CameraServiceProxy;->mCameraUsageHistory:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;

    .line 323
    .local v2, "e":Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;
    const/4 v3, 0x0

    .line 324
    .local v3, "subtype":I
    iget v4, v2, Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;->mCameraFacing:I

    if-eqz v4, :cond_2a

    const/4 v5, 0x1

    if-eq v4, v5, :cond_28

    const/4 v5, 0x2

    if-eq v4, v5, :cond_26

    .line 335
    goto :goto_e

    .line 332
    :cond_26
    const/4 v3, 0x2

    .line 333
    goto :goto_2c

    .line 329
    :cond_28
    const/4 v3, 0x1

    .line 330
    goto :goto_2c

    .line 326
    :cond_2a
    const/4 v3, 0x0

    .line 327
    nop

    .line 337
    :goto_2c
    new-instance v4, Landroid/metrics/LogMaker;

    const/16 v5, 0x408

    invoke-direct {v4, v5}, Landroid/metrics/LogMaker;-><init>(I)V

    const/4 v5, 0x4

    .line 338
    invoke-virtual {v4, v5}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    move-result-object v4

    .line 339
    invoke-virtual {v4, v3}, Landroid/metrics/LogMaker;->setSubtype(I)Landroid/metrics/LogMaker;

    move-result-object v4

    .line 340
    invoke-virtual {v2}, Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;->getDuration()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Landroid/metrics/LogMaker;->setLatency(J)Landroid/metrics/LogMaker;

    move-result-object v4

    const/16 v5, 0x52a

    iget v6, v2, Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;->mAPILevel:I

    .line 341
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    move-result-object v4

    iget-object v5, v2, Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;->mClientName:Ljava/lang/String;

    .line 342
    invoke-virtual {v4, v5}, Landroid/metrics/LogMaker;->setPackageName(Ljava/lang/String;)Landroid/metrics/LogMaker;

    move-result-object v4

    .line 343
    .local v4, "l":Landroid/metrics/LogMaker;
    iget-object v5, p0, Lcom/android/server/camera/CameraServiceProxy;->mLogger:Lcom/android/internal/logging/MetricsLogger;

    invoke-virtual {v5, v4}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    .line 344
    .end local v2  # "e":Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;
    .end local v3  # "subtype":I
    .end local v4  # "l":Landroid/metrics/LogMaker;
    goto :goto_e

    .line 345
    :cond_5c
    iget-object v1, p0, Lcom/android/server/camera/CameraServiceProxy;->mCameraUsageHistory:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 346
    monitor-exit v0
    :try_end_62
    .catchall {:try_start_3 .. :try_end_62} :catchall_75

    .line 347
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 349
    .local v0, "ident":J
    :try_start_66
    iget-object v2, p0, Lcom/android/server/camera/CameraServiceProxy;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/server/camera/CameraStatsJobService;->schedule(Landroid/content/Context;)V
    :try_end_6b
    .catchall {:try_start_66 .. :try_end_6b} :catchall_70

    .line 351
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 352
    nop

    .line 353
    return-void

    .line 351
    :catchall_70
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2

    .line 346
    .end local v0  # "ident":J
    :catchall_75
    move-exception v1

    :try_start_76
    monitor-exit v0
    :try_end_77
    .catchall {:try_start_76 .. :try_end_77} :catchall_75

    throw v1
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .registers 5
    .param p1, "msg"  # Landroid/os/Message;

    .line 238
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1e

    .line 243
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CameraServiceProxy error, invalid message: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "CameraService_proxy"

    invoke-static {v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_24

    .line 240
    :cond_1e
    iget v0, p1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, v0}, Lcom/android/server/camera/CameraServiceProxy;->notifySwitchWithRetries(I)V

    .line 241
    nop

    .line 246
    :goto_24
    return v1
.end method

.method public onStart()V
    .registers 4

    .line 251
    iget-object v0, p0, Lcom/android/server/camera/CameraServiceProxy;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/camera/CameraServiceProxy;->mUserManager:Landroid/os/UserManager;

    .line 252
    iget-object v0, p0, Lcom/android/server/camera/CameraServiceProxy;->mUserManager:Landroid/os/UserManager;

    if-eqz v0, :cond_44

    .line 258
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 259
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.USER_ADDED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 260
    const-string v1, "android.intent.action.USER_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 261
    const-string v1, "android.intent.action.USER_INFO_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 262
    const-string v1, "android.intent.action.MANAGED_PROFILE_ADDED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 263
    const-string v1, "android.intent.action.MANAGED_PROFILE_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 264
    iget-object v1, p0, Lcom/android/server/camera/CameraServiceProxy;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/camera/CameraServiceProxy;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 266
    iget-object v1, p0, Lcom/android/server/camera/CameraServiceProxy;->mCameraServiceProxy:Landroid/hardware/ICameraServiceProxy$Stub;

    const-string/jumbo v2, "media.camera.proxy"

    invoke-virtual {p0, v2, v1}, Lcom/android/server/camera/CameraServiceProxy;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 267
    const-class v1, Lcom/android/server/camera/CameraServiceProxy;

    invoke-virtual {p0, v1, p0}, Lcom/android/server/camera/CameraServiceProxy;->publishLocalService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 269
    iget-object v1, p0, Lcom/android/server/camera/CameraServiceProxy;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/server/camera/CameraStatsJobService;->schedule(Landroid/content/Context;)V

    .line 270
    return-void

    .line 254
    .end local v0  # "filter":Landroid/content/IntentFilter;
    :cond_44
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "UserManagerService must start before CameraServiceProxy!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onStartUser(I)V
    .registers 4
    .param p1, "userHandle"  # I

    .line 274
    iget-object v0, p0, Lcom/android/server/camera/CameraServiceProxy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 275
    :try_start_3
    iget-object v1, p0, Lcom/android/server/camera/CameraServiceProxy;->mEnabledCameraUsers:Ljava/util/Set;

    if-nez v1, :cond_a

    .line 278
    invoke-direct {p0, p1}, Lcom/android/server/camera/CameraServiceProxy;->switchUserLocked(I)V

    .line 280
    :cond_a
    monitor-exit v0

    .line 281
    return-void

    .line 280
    :catchall_c
    move-exception v1

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_c

    throw v1
.end method

.method public onSwitchUser(I)V
    .registers 4
    .param p1, "userHandle"  # I

    .line 285
    iget-object v0, p0, Lcom/android/server/camera/CameraServiceProxy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 286
    :try_start_3
    invoke-direct {p0, p1}, Lcom/android/server/camera/CameraServiceProxy;->switchUserLocked(I)V

    .line 287
    monitor-exit v0

    .line 288
    return-void

    .line 287
    :catchall_8
    move-exception v1

    monitor-exit v0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_8

    throw v1
.end method
