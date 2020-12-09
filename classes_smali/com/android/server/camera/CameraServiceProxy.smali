.class public Lcom/android/server/camera/CameraServiceProxy;
.super Lcom/android/server/SystemService;
.source "CameraServiceProxy.java"

# interfaces
.implements Landroid/os/Handler$Callback;
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;,
        Lcom/android/server/camera/CameraServiceProxy$NfcNotifyState;
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

.field private static final NFC_NOTIFY_ALL:I = 0x1

.field private static final NFC_NOTIFY_BACK:I = 0x2

.field private static final NFC_NOTIFY_FRONT:I = 0x3

.field private static final NFC_NOTIFY_NONE:I = 0x0

.field private static final NFC_SERVICE_BINDER_NAME:Ljava/lang/String; = "nfc"

.field private static final RETRY_DELAY_TIME:I = 0x14

.field private static final RETRY_TIMES:I = 0x1e

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

.field private final mAllowMediaUid:Z

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

.field private mLastNfcPollState:Z

.field private mLastUser:I

.field private final mLock:Ljava/lang/Object;

.field private final mLogger:Lcom/android/internal/logging/MetricsLogger;

.field private final mNotifyNfc:I

.field private mUserManager:Landroid/os/UserManager;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 104
    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    sput-object v0, Lcom/android/server/camera/CameraServiceProxy;->nfcInterfaceToken:Landroid/os/IBinder;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 5

    .line 224
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 91
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/camera/CameraServiceProxy;->mLock:Ljava/lang/Object;

    .line 98
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/camera/CameraServiceProxy;->mActiveCameraUsage:Landroid/util/ArrayMap;

    .line 99
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/camera/CameraServiceProxy;->mCameraUsageHistory:Ljava/util/List;

    .line 101
    new-instance v0, Lcom/android/internal/logging/MetricsLogger;

    invoke-direct {v0}, Lcom/android/internal/logging/MetricsLogger;-><init>()V

    iput-object v0, p0, Lcom/android/server/camera/CameraServiceProxy;->mLogger:Lcom/android/internal/logging/MetricsLogger;

    .line 125
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/camera/CameraServiceProxy;->mLastNfcPollState:Z

    .line 168
    new-instance v0, Lcom/android/server/camera/CameraServiceProxy$1;

    invoke-direct {v0, p0}, Lcom/android/server/camera/CameraServiceProxy$1;-><init>(Lcom/android/server/camera/CameraServiceProxy;)V

    iput-object v0, p0, Lcom/android/server/camera/CameraServiceProxy;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 193
    new-instance v0, Lcom/android/server/camera/CameraServiceProxy$2;

    invoke-direct {v0, p0}, Lcom/android/server/camera/CameraServiceProxy$2;-><init>(Lcom/android/server/camera/CameraServiceProxy;)V

    iput-object v0, p0, Lcom/android/server/camera/CameraServiceProxy;->mCameraServiceProxy:Landroid/hardware/ICameraServiceProxy$Stub;

    .line 225
    iput-object p1, p0, Lcom/android/server/camera/CameraServiceProxy;->mContext:Landroid/content/Context;

    .line 226
    new-instance p1, Lcom/android/server/ServiceThread;

    const/4 v0, 0x0

    const-string v1, "CameraService_proxy"

    const/4 v2, -0x4

    invoke-direct {p1, v1, v2, v0}, Lcom/android/server/ServiceThread;-><init>(Ljava/lang/String;IZ)V

    iput-object p1, p0, Lcom/android/server/camera/CameraServiceProxy;->mHandlerThread:Lcom/android/server/ServiceThread;

    .line 227
    iget-object p1, p0, Lcom/android/server/camera/CameraServiceProxy;->mHandlerThread:Lcom/android/server/ServiceThread;

    invoke-virtual {p1}, Lcom/android/server/ServiceThread;->start()V

    .line 228
    new-instance p1, Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/camera/CameraServiceProxy;->mHandlerThread:Lcom/android/server/ServiceThread;

    invoke-virtual {v1}, Lcom/android/server/ServiceThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {p1, v1, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object p1, p0, Lcom/android/server/camera/CameraServiceProxy;->mHandler:Landroid/os/Handler;

    .line 230
    const-string/jumbo p1, "ro.camera.notify_nfc"

    invoke-static {p1, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result p1

    .line 231
    if-ltz p1, :cond_5b

    const/4 v1, 0x3

    if-le p1, v1, :cond_5c

    .line 232
    :cond_5b
    move p1, v0

    .line 234
    :cond_5c
    iput p1, p0, Lcom/android/server/camera/CameraServiceProxy;->mNotifyNfc:I

    .line 236
    iget-object p1, p0, Lcom/android/server/camera/CameraServiceProxy;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x1110011

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/server/camera/CameraServiceProxy;->mAllowMediaUid:Z

    .line 238
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/camera/CameraServiceProxy;)Ljava/lang/Object;
    .registers 1

    .line 61
    iget-object p0, p0, Lcom/android/server/camera/CameraServiceProxy;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/server/camera/CameraServiceProxy;)Ljava/util/Set;
    .registers 1

    .line 61
    iget-object p0, p0, Lcom/android/server/camera/CameraServiceProxy;->mEnabledCameraUsers:Ljava/util/Set;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/server/camera/CameraServiceProxy;)I
    .registers 1

    .line 61
    iget p0, p0, Lcom/android/server/camera/CameraServiceProxy;->mLastUser:I

    return p0
.end method

.method static synthetic access$300(Lcom/android/server/camera/CameraServiceProxy;I)V
    .registers 2

    .line 61
    invoke-direct {p0, p1}, Lcom/android/server/camera/CameraServiceProxy;->switchUserLocked(I)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/camera/CameraServiceProxy;)Z
    .registers 1

    .line 61
    iget-boolean p0, p0, Lcom/android/server/camera/CameraServiceProxy;->mAllowMediaUid:Z

    return p0
.end method

.method static synthetic access$500(Lcom/android/server/camera/CameraServiceProxy;I)V
    .registers 2

    .line 61
    invoke-direct {p0, p1}, Lcom/android/server/camera/CameraServiceProxy;->notifySwitchWithRetries(I)V

    return-void
.end method

.method static synthetic access$600(I)Ljava/lang/String;
    .registers 1

    .line 61
    invoke-static {p0}, Lcom/android/server/camera/CameraServiceProxy;->cameraStateToString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$700(I)Ljava/lang/String;
    .registers 1

    .line 61
    invoke-static {p0}, Lcom/android/server/camera/CameraServiceProxy;->cameraFacingToString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$800(Lcom/android/server/camera/CameraServiceProxy;Ljava/lang/String;IILjava/lang/String;I)V
    .registers 6

    .line 61
    invoke-direct/range {p0 .. p5}, Lcom/android/server/camera/CameraServiceProxy;->updateActivityCount(Ljava/lang/String;IILjava/lang/String;I)V

    return-void
.end method

.method private static cameraFacingToString(I)Ljava/lang/String;
    .registers 2

    .line 575
    if-eqz p0, :cond_11

    const/4 v0, 0x1

    if-eq p0, v0, :cond_e

    const/4 v0, 0x2

    if-eq p0, v0, :cond_b

    .line 581
    const-string p0, "CAMERA_FACING_UNKNOWN"

    return-object p0

    .line 578
    :cond_b
    const-string p0, "CAMERA_FACING_EXTERNAL"

    return-object p0

    .line 577
    :cond_e
    const-string p0, "CAMERA_FACING_FRONT"

    return-object p0

    .line 576
    :cond_11
    const-string p0, "CAMERA_FACING_BACK"

    return-object p0
.end method

.method private static cameraStateToString(I)Ljava/lang/String;
    .registers 2

    .line 564
    if-eqz p0, :cond_17

    const/4 v0, 0x1

    if-eq p0, v0, :cond_14

    const/4 v0, 0x2

    if-eq p0, v0, :cond_11

    const/4 v0, 0x3

    if-eq p0, v0, :cond_e

    .line 571
    const-string p0, "CAMERA_STATE_UNKNOWN"

    return-object p0

    .line 568
    :cond_e
    const-string p0, "CAMERA_STATE_CLOSED"

    return-object p0

    .line 567
    :cond_11
    const-string p0, "CAMERA_STATE_IDLE"

    return-object p0

    .line 566
    :cond_14
    const-string p0, "CAMERA_STATE_ACTIVE"

    return-object p0

    .line 565
    :cond_17
    const-string p0, "CAMERA_STATE_OPEN"

    return-object p0
.end method

.method private getEnabledUserHandles(I)Ljava/util/Set;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 368
    iget-object v0, p0, Lcom/android/server/camera/CameraServiceProxy;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0, p1}, Landroid/os/UserManager;->getEnabledProfileIds(I)[I

    move-result-object p1

    .line 369
    new-instance v0, Landroid/util/ArraySet;

    array-length v1, p1

    invoke-direct {v0, v1}, Landroid/util/ArraySet;-><init>(I)V

    .line 371
    array-length v1, p1

    const/4 v2, 0x0

    :goto_e
    if-ge v2, v1, :cond_1c

    aget v3, p1, v2

    .line 372
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 371
    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    .line 375
    :cond_1c
    return-object v0
.end method

.method private static nfcNotifyToString(I)Ljava/lang/String;
    .registers 2

    .line 585
    if-eqz p0, :cond_17

    const/4 v0, 0x1

    if-eq p0, v0, :cond_14

    const/4 v0, 0x2

    if-eq p0, v0, :cond_11

    const/4 v0, 0x3

    if-eq p0, v0, :cond_e

    .line 591
    const-string p0, "UNKNOWN_NFC_NOTIFY"

    return-object p0

    .line 589
    :cond_e
    const-string p0, "NFC_NOTIFY_FRONT"

    return-object p0

    .line 588
    :cond_11
    const-string p0, "NFC_NOTIFY_BACK"

    return-object p0

    .line 587
    :cond_14
    const-string p0, "NFC_NOTIFY_ALL"

    return-object p0

    .line 586
    :cond_17
    const-string p0, "NFC_NOTIFY_NONE"

    return-object p0
.end method

.method private notifyCameraserverLocked(ILjava/util/Set;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;)Z"
        }
    .end annotation

    .line 402
    iget-object v0, p0, Lcom/android/server/camera/CameraServiceProxy;->mCameraServiceRaw:Landroid/hardware/ICameraService;

    const-string v1, "CameraService_proxy"

    const/4 v2, 0x0

    if-nez v0, :cond_27

    .line 403
    const-string v0, "media.camera"

    invoke-virtual {p0, v0}, Lcom/android/server/camera/CameraServiceProxy;->getBinderService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 404
    if-nez v0, :cond_15

    .line 405
    const-string p1, "Could not notify cameraserver, camera service not available."

    invoke-static {v1, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 406
    return v2

    .line 409
    :cond_15
    :try_start_15
    invoke-interface {v0, p0, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_15 .. :try_end_18} :catch_20

    .line 413
    nop

    .line 415
    invoke-static {v0}, Landroid/hardware/ICameraService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/ICameraService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/camera/CameraServiceProxy;->mCameraServiceRaw:Landroid/hardware/ICameraService;

    goto :goto_27

    .line 410
    :catch_20
    move-exception p1

    .line 411
    const-string p1, "Could not link to death of native camera service"

    invoke-static {v1, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 412
    return v2

    .line 419
    :cond_27
    :goto_27
    :try_start_27
    iget-object v0, p0, Lcom/android/server/camera/CameraServiceProxy;->mCameraServiceRaw:Landroid/hardware/ICameraService;

    invoke-static {p2}, Lcom/android/server/camera/CameraServiceProxy;->toArray(Ljava/util/Collection;)[I

    move-result-object p2

    invoke-interface {v0, p1, p2}, Landroid/hardware/ICameraService;->notifySystemEvent(I[I)V
    :try_end_30
    .catch Landroid/os/RemoteException; {:try_start_27 .. :try_end_30} :catch_33

    .line 424
    nop

    .line 425
    const/4 p1, 0x1

    return p1

    .line 420
    :catch_33
    move-exception p1

    .line 421
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Could not notify cameraserver, remote exception: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 423
    return v2
.end method

.method private notifyNfcService(Z)V
    .registers 7

    .line 531
    iget-boolean v0, p0, Lcom/android/server/camera/CameraServiceProxy;->mLastNfcPollState:Z

    if-ne p1, v0, :cond_5

    return-void

    .line 533
    :cond_5
    const-string/jumbo v0, "nfc"

    invoke-virtual {p0, v0}, Lcom/android/server/camera/CameraServiceProxy;->getBinderService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 534
    const-string v1, "CameraService_proxy"

    if-nez v0, :cond_16

    .line 535
    const-string p1, "Could not connect to NFC service to notify it of camera state"

    invoke-static {v1, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 536
    return-void

    .line 538
    :cond_16
    invoke-static {v0}, Landroid/nfc/INfcAdapter$Stub;->asInterface(Landroid/os/IBinder;)Landroid/nfc/INfcAdapter;

    move-result-object v0

    .line 539
    if-eqz p1, :cond_1e

    const/4 v2, 0x0

    goto :goto_20

    :cond_1e
    const/16 v2, 0x1000

    .line 546
    :goto_20
    :try_start_20
    sget-object v3, Lcom/android/server/camera/CameraServiceProxy;->nfcInterfaceToken:Landroid/os/IBinder;

    const/4 v4, 0x0

    invoke-interface {v0, v3, v4, v2, v4}, Landroid/nfc/INfcAdapter;->setReaderMode(Landroid/os/IBinder;Landroid/nfc/IAppCallback;ILandroid/os/Bundle;)V

    .line 547
    iput-boolean p1, p0, Lcom/android/server/camera/CameraServiceProxy;->mLastNfcPollState:Z
    :try_end_28
    .catch Landroid/os/RemoteException; {:try_start_20 .. :try_end_28} :catch_29

    .line 550
    goto :goto_3e

    .line 548
    :catch_29
    move-exception p1

    .line 549
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not notify NFC service, remote exception: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 551
    :goto_3e
    return-void
.end method

.method private notifySwitchWithRetries(I)V
    .registers 3

    .line 379
    iget-object v0, p0, Lcom/android/server/camera/CameraServiceProxy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 380
    :try_start_3
    invoke-direct {p0, p1}, Lcom/android/server/camera/CameraServiceProxy;->notifySwitchWithRetriesLocked(I)V

    .line 381
    monitor-exit v0

    .line 382
    return-void

    .line 381
    :catchall_8
    move-exception p1

    monitor-exit v0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_8

    throw p1
.end method

.method private notifySwitchWithRetriesLocked(I)V
    .registers 6

    .line 385
    iget-object v0, p0, Lcom/android/server/camera/CameraServiceProxy;->mEnabledCameraUsers:Ljava/util/Set;

    if-nez v0, :cond_5

    .line 386
    return-void

    .line 388
    :cond_5
    const/4 v1, 0x1

    invoke-direct {p0, v1, v0}, Lcom/android/server/camera/CameraServiceProxy;->notifyCameraserverLocked(ILjava/util/Set;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_e

    .line 389
    move p1, v2

    .line 391
    :cond_e
    if-gtz p1, :cond_11

    .line 392
    return-void

    .line 394
    :cond_11
    const-string v0, "CameraService_proxy"

    const-string v3, "Could not notify camera service of user switch, retrying..."

    invoke-static {v0, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 395
    iget-object v0, p0, Lcom/android/server/camera/CameraServiceProxy;->mHandler:Landroid/os/Handler;

    sub-int/2addr p1, v1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, p1, v2, v3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    const-wide/16 v1, 0x14

    invoke-virtual {v0, p1, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 397
    return-void
.end method

.method private switchUserLocked(I)V
    .registers 3

    .line 358
    invoke-direct {p0, p1}, Lcom/android/server/camera/CameraServiceProxy;->getEnabledUserHandles(I)Ljava/util/Set;

    move-result-object v0

    .line 359
    iput p1, p0, Lcom/android/server/camera/CameraServiceProxy;->mLastUser:I

    .line 360
    iget-object p1, p0, Lcom/android/server/camera/CameraServiceProxy;->mEnabledCameraUsers:Ljava/util/Set;

    if-eqz p1, :cond_10

    invoke-interface {p1, v0}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_17

    .line 362
    :cond_10
    iput-object v0, p0, Lcom/android/server/camera/CameraServiceProxy;->mEnabledCameraUsers:Ljava/util/Set;

    .line 363
    const/16 p1, 0x1e

    invoke-direct {p0, p1}, Lcom/android/server/camera/CameraServiceProxy;->notifySwitchWithRetriesLocked(I)V

    .line 365
    :cond_17
    return-void
.end method

.method private static toArray(Ljava/util/Collection;)[I
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/Integer;",
            ">;)[I"
        }
    .end annotation

    .line 554
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v0

    .line 555
    new-array v0, v0, [I

    .line 556
    nop

    .line 557
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v1, 0x0

    :goto_c
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_22

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 558
    add-int/lit8 v3, v1, 0x1

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aput v2, v0, v1

    .line 559
    move v1, v3

    goto :goto_c

    .line 560
    :cond_22
    return-object v0
.end method

.method private updateActivityCount(Ljava/lang/String;IILjava/lang/String;I)V
    .registers 12

    .line 430
    iget-object v0, p0, Lcom/android/server/camera/CameraServiceProxy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 432
    :try_start_3
    iget-object v1, p0, Lcom/android/server/camera/CameraServiceProxy;->mActiveCameraUsage:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->isEmpty()Z

    .line 433
    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz p2, :cond_c8

    if-eq p2, v4, :cond_67

    if-eq p2, v2, :cond_16

    if-eq p2, v1, :cond_16

    goto/16 :goto_f1

    .line 478
    :cond_16
    iget-object p2, p0, Lcom/android/server/camera/CameraServiceProxy;->mActiveCameraUsage:Landroid/util/ArrayMap;

    invoke-virtual {p2, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;

    .line 479
    if-nez p1, :cond_22

    goto/16 :goto_f1

    .line 481
    :cond_22
    invoke-virtual {p1}, Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;->markCompleted()V

    .line 482
    iget-object p2, p0, Lcom/android/server/camera/CameraServiceProxy;->mCameraUsageHistory:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 483
    iget-object p1, p0, Lcom/android/server/camera/CameraServiceProxy;->mCameraUsageHistory:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/16 p2, 0x64

    if-le p1, p2, :cond_37

    .line 484
    invoke-virtual {p0}, Lcom/android/server/camera/CameraServiceProxy;->dumpUsageEvents()V

    .line 489
    :cond_37
    nop

    .line 490
    move p1, v3

    :goto_39
    iget-object p2, p0, Lcom/android/server/camera/CameraServiceProxy;->mActiveCameraUsage:Landroid/util/ArrayMap;

    invoke-virtual {p2}, Landroid/util/ArrayMap;->size()I

    move-result p2

    if-ge p1, p2, :cond_57

    .line 491
    iget-object p2, p0, Lcom/android/server/camera/CameraServiceProxy;->mActiveCameraUsage:Landroid/util/ArrayMap;

    invoke-virtual {p2, p1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;

    iget-object p2, p2, Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;->mClientName:Ljava/lang/String;

    invoke-virtual {p2, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_54

    .line 492
    nop

    .line 493
    move p1, v4

    goto :goto_58

    .line 490
    :cond_54
    add-int/lit8 p1, p1, 0x1

    goto :goto_39

    :cond_57
    move p1, v3

    .line 498
    :goto_58
    if-nez p1, :cond_f1

    .line 499
    const-class p1, Lcom/android/server/wm/WindowManagerInternal;

    .line 500
    invoke-static {p1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/wm/WindowManagerInternal;

    .line 501
    invoke-virtual {p1, p4}, Lcom/android/server/wm/WindowManagerInternal;->removeNonHighRefreshRatePackage(Ljava/lang/String;)V

    goto/16 :goto_f1

    .line 452
    :cond_67
    nop

    .line 453
    move p2, v3

    :goto_69
    iget-object v5, p0, Lcom/android/server/camera/CameraServiceProxy;->mActiveCameraUsage:Landroid/util/ArrayMap;

    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    move-result v5

    if-ge p2, v5, :cond_87

    .line 454
    iget-object v5, p0, Lcom/android/server/camera/CameraServiceProxy;->mActiveCameraUsage:Landroid/util/ArrayMap;

    invoke-virtual {v5, p2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;

    iget-object v5, v5, Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;->mClientName:Ljava/lang/String;

    invoke-virtual {v5, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_84

    .line 455
    nop

    .line 456
    move p2, v4

    goto :goto_88

    .line 453
    :cond_84
    add-int/lit8 p2, p2, 0x1

    goto :goto_69

    :cond_87
    move p2, v3

    .line 461
    :goto_88
    if-nez p2, :cond_95

    .line 462
    const-class p2, Lcom/android/server/wm/WindowManagerInternal;

    .line 463
    invoke-static {p2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/server/wm/WindowManagerInternal;

    .line 464
    invoke-virtual {p2, p4}, Lcom/android/server/wm/WindowManagerInternal;->addNonHighRefreshRatePackage(Ljava/lang/String;)V

    .line 468
    :cond_95
    new-instance p2, Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;

    invoke-direct {p2, p3, p4, p5}, Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;-><init>(ILjava/lang/String;I)V

    .line 469
    iget-object p3, p0, Lcom/android/server/camera/CameraServiceProxy;->mActiveCameraUsage:Landroid/util/ArrayMap;

    invoke-virtual {p3, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;

    .line 470
    if-eqz p2, :cond_f1

    .line 471
    const-string p3, "CameraService_proxy"

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "Camera "

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " was already marked as active"

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 472
    invoke-virtual {p2}, Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;->markCompleted()V

    .line 473
    iget-object p1, p0, Lcom/android/server/camera/CameraServiceProxy;->mCameraUsageHistory:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_f1

    .line 440
    :cond_c8
    invoke-virtual {p0}, Lcom/android/server/camera/CameraServiceProxy;->getContext()Landroid/content/Context;

    move-result-object p1

    const-class p2, Landroid/media/AudioManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/AudioManager;

    .line 441
    if-eqz p1, :cond_f1

    .line 443
    if-nez p3, :cond_db

    .line 444
    const-string p2, "back"

    goto :goto_dd

    :cond_db
    const-string p2, "front"

    .line 445
    :goto_dd
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "cameraFacing="

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 446
    invoke-virtual {p1, p2}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    .line 506
    :cond_f1
    :goto_f1
    iget p1, p0, Lcom/android/server/camera/CameraServiceProxy;->mNotifyNfc:I

    if-eqz p1, :cond_12d

    if-eq p1, v4, :cond_123

    if-eq p1, v2, :cond_fc

    if-eq p1, v1, :cond_fc

    goto :goto_12e

    .line 514
    :cond_fc
    nop

    .line 515
    iget p1, p0, Lcom/android/server/camera/CameraServiceProxy;->mNotifyNfc:I

    if-ne p1, v2, :cond_103

    .line 516
    move p1, v3

    goto :goto_104

    .line 517
    :cond_103
    move p1, v4

    .line 518
    :goto_104
    move p2, v3

    :goto_105
    iget-object p3, p0, Lcom/android/server/camera/CameraServiceProxy;->mActiveCameraUsage:Landroid/util/ArrayMap;

    invoke-virtual {p3}, Landroid/util/ArrayMap;->size()I

    move-result p3

    if-ge p2, p3, :cond_11e

    .line 519
    iget-object p3, p0, Lcom/android/server/camera/CameraServiceProxy;->mActiveCameraUsage:Landroid/util/ArrayMap;

    invoke-virtual {p3, p2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;

    iget p3, p3, Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;->mCameraFacing:I

    if-ne p3, p1, :cond_11b

    .line 520
    nop

    .line 521
    goto :goto_11f

    .line 518
    :cond_11b
    add-int/lit8 p2, p2, 0x1

    goto :goto_105

    :cond_11e
    move v3, v4

    .line 524
    :goto_11f
    invoke-direct {p0, v3}, Lcom/android/server/camera/CameraServiceProxy;->notifyNfcService(Z)V

    goto :goto_12e

    .line 510
    :cond_123
    iget-object p1, p0, Lcom/android/server/camera/CameraServiceProxy;->mActiveCameraUsage:Landroid/util/ArrayMap;

    invoke-virtual {p1}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result p1

    invoke-direct {p0, p1}, Lcom/android/server/camera/CameraServiceProxy;->notifyNfcService(Z)V

    .line 511
    goto :goto_12e

    .line 508
    :cond_12d
    nop

    .line 527
    :goto_12e
    monitor-exit v0

    .line 528
    return-void

    .line 527
    :catchall_130
    move-exception p1

    monitor-exit v0
    :try_end_132
    .catchall {:try_start_3 .. :try_end_132} :catchall_130

    throw p1
.end method


# virtual methods
.method public binderDied()V
    .registers 3

    .line 300
    iget-object v0, p0, Lcom/android/server/camera/CameraServiceProxy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 301
    const/4 v1, 0x0

    :try_start_4
    iput-object v1, p0, Lcom/android/server/camera/CameraServiceProxy;->mCameraServiceRaw:Landroid/hardware/ICameraService;

    .line 304
    iget-object v1, p0, Lcom/android/server/camera/CameraServiceProxy;->mActiveCameraUsage:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->clear()V

    .line 307
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/android/server/camera/CameraServiceProxy;->notifyNfcService(Z)V

    .line 308
    monitor-exit v0

    .line 309
    return-void

    .line 308
    :catchall_11
    move-exception v1

    monitor-exit v0
    :try_end_13
    .catchall {:try_start_4 .. :try_end_13} :catchall_11

    throw v1
.end method

.method dumpUsageEvents()V
    .registers 7

    .line 316
    iget-object v0, p0, Lcom/android/server/camera/CameraServiceProxy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 318
    :try_start_3
    iget-object v1, p0, Lcom/android/server/camera/CameraServiceProxy;->mCameraUsageHistory:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->shuffle(Ljava/util/List;)V

    .line 319
    iget-object v1, p0, Lcom/android/server/camera/CameraServiceProxy;->mCameraUsageHistory:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;

    .line 325
    nop

    .line 326
    iget v3, v2, Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;->mCameraFacing:I

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eqz v3, :cond_2b

    if-eq v3, v5, :cond_28

    if-eq v3, v4, :cond_26

    .line 337
    goto :goto_e

    .line 334
    :cond_26
    nop

    .line 335
    goto :goto_2d

    .line 331
    :cond_28
    nop

    .line 332
    move v4, v5

    goto :goto_2d

    .line 328
    :cond_2b
    const/4 v4, 0x0

    .line 329
    nop

    .line 339
    :goto_2d
    new-instance v3, Landroid/metrics/LogMaker;

    const/16 v5, 0x408

    invoke-direct {v3, v5}, Landroid/metrics/LogMaker;-><init>(I)V

    const/4 v5, 0x4

    .line 340
    invoke-virtual {v3, v5}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    move-result-object v3

    .line 341
    invoke-virtual {v3, v4}, Landroid/metrics/LogMaker;->setSubtype(I)Landroid/metrics/LogMaker;

    move-result-object v3

    .line 342
    invoke-virtual {v2}, Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;->getDuration()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Landroid/metrics/LogMaker;->setLatency(J)Landroid/metrics/LogMaker;

    move-result-object v3

    const/16 v4, 0x52a

    iget v5, v2, Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;->mAPILevel:I

    .line 343
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    move-result-object v3

    iget-object v2, v2, Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;->mClientName:Ljava/lang/String;

    .line 344
    invoke-virtual {v3, v2}, Landroid/metrics/LogMaker;->setPackageName(Ljava/lang/String;)Landroid/metrics/LogMaker;

    move-result-object v2

    .line 345
    iget-object v3, p0, Lcom/android/server/camera/CameraServiceProxy;->mLogger:Lcom/android/internal/logging/MetricsLogger;

    invoke-virtual {v3, v2}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    .line 346
    goto :goto_e

    .line 347
    :cond_5d
    iget-object v1, p0, Lcom/android/server/camera/CameraServiceProxy;->mCameraUsageHistory:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 348
    monitor-exit v0
    :try_end_63
    .catchall {:try_start_3 .. :try_end_63} :catchall_76

    .line 349
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 351
    :try_start_67
    iget-object v2, p0, Lcom/android/server/camera/CameraServiceProxy;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/server/camera/CameraStatsJobService;->schedule(Landroid/content/Context;)V
    :try_end_6c
    .catchall {:try_start_67 .. :try_end_6c} :catchall_71

    .line 353
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 354
    nop

    .line 355
    return-void

    .line 353
    :catchall_71
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2

    .line 348
    :catchall_76
    move-exception v1

    :try_start_77
    monitor-exit v0
    :try_end_78
    .catchall {:try_start_77 .. :try_end_78} :catchall_76

    throw v1
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .registers 5

    .line 242
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1e

    .line 247
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CameraServiceProxy error, invalid message: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "CameraService_proxy"

    invoke-static {v0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_24

    .line 244
    :cond_1e
    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, p1}, Lcom/android/server/camera/CameraServiceProxy;->notifySwitchWithRetries(I)V

    .line 245
    nop

    .line 250
    :goto_24
    return v1
.end method

.method public onStart()V
    .registers 4

    .line 255
    iget-object v0, p0, Lcom/android/server/camera/CameraServiceProxy;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/camera/CameraServiceProxy;->mUserManager:Landroid/os/UserManager;

    .line 256
    iget-object v0, p0, Lcom/android/server/camera/CameraServiceProxy;->mUserManager:Landroid/os/UserManager;

    if-eqz v0, :cond_43

    .line 262
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 263
    const-string v1, "android.intent.action.USER_ADDED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 264
    const-string v1, "android.intent.action.USER_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 265
    const-string v1, "android.intent.action.USER_INFO_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 266
    const-string v1, "android.intent.action.MANAGED_PROFILE_ADDED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 267
    const-string v1, "android.intent.action.MANAGED_PROFILE_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 268
    iget-object v1, p0, Lcom/android/server/camera/CameraServiceProxy;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/camera/CameraServiceProxy;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 270
    iget-object v0, p0, Lcom/android/server/camera/CameraServiceProxy;->mCameraServiceProxy:Landroid/hardware/ICameraServiceProxy$Stub;

    const-string v1, "media.camera.proxy"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/camera/CameraServiceProxy;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 271
    const-class v0, Lcom/android/server/camera/CameraServiceProxy;

    invoke-virtual {p0, v0, p0}, Lcom/android/server/camera/CameraServiceProxy;->publishLocalService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 273
    iget-object v0, p0, Lcom/android/server/camera/CameraServiceProxy;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/camera/CameraStatsJobService;->schedule(Landroid/content/Context;)V

    .line 274
    return-void

    .line 258
    :cond_43
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "UserManagerService must start before CameraServiceProxy!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onStartUser(I)V
    .registers 4

    .line 278
    iget-object v0, p0, Lcom/android/server/camera/CameraServiceProxy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 279
    :try_start_3
    iget-object v1, p0, Lcom/android/server/camera/CameraServiceProxy;->mEnabledCameraUsers:Ljava/util/Set;

    if-nez v1, :cond_a

    .line 282
    invoke-direct {p0, p1}, Lcom/android/server/camera/CameraServiceProxy;->switchUserLocked(I)V

    .line 284
    :cond_a
    monitor-exit v0

    .line 285
    return-void

    .line 284
    :catchall_c
    move-exception p1

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_c

    throw p1
.end method

.method public onSwitchUser(I)V
    .registers 3

    .line 289
    iget-object v0, p0, Lcom/android/server/camera/CameraServiceProxy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 290
    :try_start_3
    invoke-direct {p0, p1}, Lcom/android/server/camera/CameraServiceProxy;->switchUserLocked(I)V

    .line 291
    monitor-exit v0

    .line 292
    return-void

    .line 291
    :catchall_8
    move-exception p1

    monitor-exit v0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_8

    throw p1
.end method
