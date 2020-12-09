.class Lcom/android/server/BluetoothManagerService;
.super Landroid/bluetooth/IBluetoothManager$Stub;
.source "BluetoothManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/BluetoothManagerService$BluetoothHandler;,
        Lcom/android/server/BluetoothManagerService$BluetoothServiceConnection;,
        Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;,
        Lcom/android/server/BluetoothManagerService$ClientDeathRecipient;,
        Lcom/android/server/BluetoothManagerService$ActiveLog;
    }
.end annotation


# static fields
.field private static final ACTIVE_LOG_MAX_SIZE:I = 0x14

.field private static final ADD_PROXY_DELAY_MS:I = 0x64

.field private static final BLUETOOTH_ADMIN_PERM:Ljava/lang/String; = "android.permission.BLUETOOTH_ADMIN"

.field private static final BLUETOOTH_OFF:I = 0x0

.field static final BLUETOOTH_ON_AIRPLANE:I = 0x2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private static final BLUETOOTH_ON_BLUETOOTH:I = 0x1

.field private static final BLUETOOTH_PERM:Ljava/lang/String; = "android.permission.BLUETOOTH"

.field private static final CRASH_LOG_MAX_SIZE:I = 0x64

.field private static final DBG:Z = true

.field private static final ERROR_RESTART_TIME_MS:I = 0xbb8

.field private static final MAX_ERROR_RESTART_RETRIES:I = 0x6

.field private static final MESSAGE_ADD_PROXY_DELAYED:I = 0x190

.field private static final MESSAGE_BIND_PROFILE_SERVICE:I = 0x191

.field private static final MESSAGE_BLUETOOTH_SERVICE_CONNECTED:I = 0x28

.field private static final MESSAGE_BLUETOOTH_SERVICE_DISCONNECTED:I = 0x29

.field private static final MESSAGE_BLUETOOTH_STATE_CHANGE:I = 0x3c

.field private static final MESSAGE_DISABLE:I = 0x2

.field private static final MESSAGE_ENABLE:I = 0x1

.field private static final MESSAGE_GET_NAME_AND_ADDRESS:I = 0xc8

.field private static final MESSAGE_REGISTER_ADAPTER:I = 0x14

.field private static final MESSAGE_REGISTER_STATE_CHANGE_CALLBACK:I = 0x1e

.field private static final MESSAGE_RESTART_BLUETOOTH_SERVICE:I = 0x2a

.field private static final MESSAGE_RESTORE_USER_SETTING:I = 0x1f4

.field private static final MESSAGE_TIMEOUT_BIND:I = 0x64

.field private static final MESSAGE_TIMEOUT_UNBIND:I = 0x65

.field private static final MESSAGE_UNREGISTER_ADAPTER:I = 0x15

.field private static final MESSAGE_UNREGISTER_STATE_CHANGE_CALLBACK:I = 0x1f

.field private static final MESSAGE_USER_SWITCHED:I = 0x12c

.field private static final MESSAGE_USER_UNLOCKED:I = 0x12d

.field private static final RESTORE_SETTING_TO_OFF:I = 0x0

.field private static final RESTORE_SETTING_TO_ON:I = 0x1

.field private static final SECURE_SETTINGS_BLUETOOTH_ADDRESS:Ljava/lang/String; = "bluetooth_address"

.field private static final SECURE_SETTINGS_BLUETOOTH_ADDR_VALID:Ljava/lang/String; = "bluetooth_addr_valid"

.field private static final SECURE_SETTINGS_BLUETOOTH_NAME:Ljava/lang/String; = "bluetooth_name"

.field private static final SERVICE_IBLUETOOTH:I = 0x1

.field private static final SERVICE_IBLUETOOTHGATT:I = 0x2

.field private static final SERVICE_RESTART_TIME_MS:I = 0x190

.field private static final TAG:Ljava/lang/String; = "BluetoothManagerService"

.field private static final TIMEOUT_BIND_MS:I = 0xbb8

.field private static final USER_SWITCHED_TIME_MS:I = 0xc8


# instance fields
.field private final mActiveLogs:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcom/android/server/BluetoothManagerService$ActiveLog;",
            ">;"
        }
    .end annotation
.end field

.field private mAddress:Ljava/lang/String;

.field private mAppOps:Landroid/app/AppOpsManager;

.field private mBinding:Z

.field private mBleApps:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/os/IBinder;",
            "Lcom/android/server/BluetoothManagerService$ClientDeathRecipient;",
            ">;"
        }
    .end annotation
.end field

.field private mBluetooth:Landroid/bluetooth/IBluetooth;

.field private mBluetoothAirplaneModeListener:Lcom/android/server/BluetoothAirplaneModeListener;

.field private mBluetoothBinder:Landroid/os/IBinder;

.field private final mBluetoothCallback:Landroid/bluetooth/IBluetoothCallback;

.field private mBluetoothGatt:Landroid/bluetooth/IBluetoothGatt;

.field private final mBluetoothLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

.field private final mCallbacks:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList<",
            "Landroid/bluetooth/IBluetoothManagerCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mConnection:Lcom/android/server/BluetoothManagerService$BluetoothServiceConnection;

.field private final mContentResolver:Landroid/content/ContentResolver;

.field private final mContext:Landroid/content/Context;

.field private final mCrashTimestamps:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mCrashes:I

.field private mEnable:Z

.field private mEnableExternal:Z

.field private mErrorRecoveryRetryCounter:I

.field private final mHandler:Lcom/android/server/BluetoothManagerService$BluetoothHandler;

.field private mIsHearingAidProfileSupported:Z

.field private mLastEnabledTime:J

.field private mName:Ljava/lang/String;

.field private final mProfileServices:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;",
            ">;"
        }
    .end annotation
.end field

.field private mQuietEnable:Z

.field private mQuietEnableExternal:Z

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mState:I

.field private final mStateChangeCallbacks:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList<",
            "Landroid/bluetooth/IBluetoothStateChangeCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final mSystemUiUid:I

.field private mUnbinding:Z

.field private final mUserRestrictionsListener:Landroid/os/UserManagerInternal$UserRestrictionsListener;

.field private final mWirelessConsentRequired:Z


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .registers 8

    .line 417
    invoke-direct {p0}, Landroid/bluetooth/IBluetoothManager$Stub;-><init>()V

    .line 163
    new-instance v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>()V

    iput-object v0, p0, Lcom/android/server/BluetoothManagerService;->mBluetoothLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 170
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/BluetoothManagerService;->mQuietEnable:Z

    .line 200
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iput-object v1, p0, Lcom/android/server/BluetoothManagerService;->mActiveLogs:Ljava/util/LinkedList;

    .line 201
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iput-object v1, p0, Lcom/android/server/BluetoothManagerService;->mCrashTimestamps:Ljava/util/LinkedList;

    .line 211
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/BluetoothManagerService;->mBleApps:Ljava/util/Map;

    .line 225
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/BluetoothManagerService;->mProfileServices:Ljava/util/Map;

    .line 229
    new-instance v1, Lcom/android/server/BluetoothManagerService$1;

    invoke-direct {v1, p0}, Lcom/android/server/BluetoothManagerService$1;-><init>(Lcom/android/server/BluetoothManagerService;)V

    iput-object v1, p0, Lcom/android/server/BluetoothManagerService;->mBluetoothCallback:Landroid/bluetooth/IBluetoothCallback;

    .line 238
    new-instance v1, Lcom/android/server/BluetoothManagerService$2;

    invoke-direct {v1, p0}, Lcom/android/server/BluetoothManagerService$2;-><init>(Lcom/android/server/BluetoothManagerService;)V

    iput-object v1, p0, Lcom/android/server/BluetoothManagerService;->mUserRestrictionsListener:Landroid/os/UserManagerInternal$UserRestrictionsListener;

    .line 368
    new-instance v1, Lcom/android/server/BluetoothManagerService$3;

    invoke-direct {v1, p0}, Lcom/android/server/BluetoothManagerService$3;-><init>(Lcom/android/server/BluetoothManagerService;)V

    iput-object v1, p0, Lcom/android/server/BluetoothManagerService;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 1608
    new-instance v1, Lcom/android/server/BluetoothManagerService$BluetoothServiceConnection;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/server/BluetoothManagerService$BluetoothServiceConnection;-><init>(Lcom/android/server/BluetoothManagerService;Lcom/android/server/BluetoothManagerService$1;)V

    iput-object v1, p0, Lcom/android/server/BluetoothManagerService;->mConnection:Lcom/android/server/BluetoothManagerService$BluetoothServiceConnection;

    .line 418
    new-instance v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    invoke-static {}, Lcom/android/server/IoThread;->get()Lcom/android/server/IoThread;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/IoThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v1, p0, v3}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;-><init>(Lcom/android/server/BluetoothManagerService;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/server/BluetoothManagerService;->mHandler:Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    .line 420
    iput-object p1, p0, Lcom/android/server/BluetoothManagerService;->mContext:Landroid/content/Context;

    .line 422
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 423
    const v3, 0x111011c

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/BluetoothManagerService;->mWirelessConsentRequired:Z

    .line 425
    iput v0, p0, Lcom/android/server/BluetoothManagerService;->mCrashes:I

    .line 426
    iput-object v2, p0, Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;

    .line 427
    iput-object v2, p0, Lcom/android/server/BluetoothManagerService;->mBluetoothBinder:Landroid/os/IBinder;

    .line 428
    iput-object v2, p0, Lcom/android/server/BluetoothManagerService;->mBluetoothGatt:Landroid/bluetooth/IBluetoothGatt;

    .line 429
    iput-boolean v0, p0, Lcom/android/server/BluetoothManagerService;->mBinding:Z

    .line 430
    iput-boolean v0, p0, Lcom/android/server/BluetoothManagerService;->mUnbinding:Z

    .line 431
    iput-boolean v0, p0, Lcom/android/server/BluetoothManagerService;->mEnable:Z

    .line 432
    const/16 v1, 0xa

    iput v1, p0, Lcom/android/server/BluetoothManagerService;->mState:I

    .line 433
    iput-boolean v0, p0, Lcom/android/server/BluetoothManagerService;->mQuietEnableExternal:Z

    .line 434
    iput-boolean v0, p0, Lcom/android/server/BluetoothManagerService;->mEnableExternal:Z

    .line 435
    iput-object v2, p0, Lcom/android/server/BluetoothManagerService;->mAddress:Ljava/lang/String;

    .line 436
    iput-object v2, p0, Lcom/android/server/BluetoothManagerService;->mName:Ljava/lang/String;

    .line 437
    iput v0, p0, Lcom/android/server/BluetoothManagerService;->mErrorRecoveryRetryCounter:I

    .line 438
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/BluetoothManagerService;->mContentResolver:Landroid/content/ContentResolver;

    .line 440
    invoke-direct {p0}, Lcom/android/server/BluetoothManagerService;->registerForBleScanModeChange()V

    .line 441
    new-instance v1, Landroid/os/RemoteCallbackList;

    invoke-direct {v1}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v1, p0, Lcom/android/server/BluetoothManagerService;->mCallbacks:Landroid/os/RemoteCallbackList;

    .line 442
    new-instance v1, Landroid/os/RemoteCallbackList;

    invoke-direct {v1}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v1, p0, Lcom/android/server/BluetoothManagerService;->mStateChangeCallbacks:Landroid/os/RemoteCallbackList;

    .line 444
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 445
    const v2, 0x1110090

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/BluetoothManagerService;->mIsHearingAidProfileSupported:Z

    .line 448
    const-string/jumbo v1, "persist.sys.fflag.override.settings_bluetooth_hearing_aid"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 449
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x1

    const-string v4, "BluetoothManagerService"

    if-nez v2, :cond_db

    .line 450
    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 451
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "set feature flag HEARING_AID_SETTINGS to "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 452
    const-string/jumbo v2, "settings_bluetooth_hearing_aid"

    invoke-static {p1, v2, v1}, Landroid/util/FeatureFlagUtils;->setEnabled(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 453
    if-eqz v1, :cond_db

    iget-boolean v1, p0, Lcom/android/server/BluetoothManagerService;->mIsHearingAidProfileSupported:Z

    if-nez v1, :cond_db

    .line 455
    iput-boolean v3, p0, Lcom/android/server/BluetoothManagerService;->mIsHearingAidProfileSupported:Z

    .line 459
    :cond_db
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 460
    const-string v2, "android.bluetooth.adapter.action.LOCAL_NAME_CHANGED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 461
    const-string v2, "android.bluetooth.adapter.action.BLUETOOTH_ADDRESS_CHANGED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 462
    const-string v2, "android.os.action.SETTING_RESTORED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 463
    const/16 v2, 0x3e8

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->setPriority(I)V

    .line 464
    iget-object v2, p0, Lcom/android/server/BluetoothManagerService;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/server/BluetoothManagerService;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v5, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 466
    invoke-direct {p0}, Lcom/android/server/BluetoothManagerService;->loadStoredNameAndAddress()V

    .line 467
    invoke-direct {p0}, Lcom/android/server/BluetoothManagerService;->isBluetoothPersistedStateOn()Z

    move-result v1

    if-eqz v1, :cond_10b

    .line 469
    const-string v1, "Startup: Bluetooth persisted state is ON."

    invoke-static {v4, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 471
    iput-boolean v3, p0, Lcom/android/server/BluetoothManagerService;->mEnableExternal:Z

    .line 474
    :cond_10b
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mContentResolver:Landroid/content/ContentResolver;

    .line 475
    const-string v2, "airplane_mode_radios"

    invoke-static {v1, v2}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 476
    if-eqz v1, :cond_11d

    const-string v2, "bluetooth"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_12c

    .line 478
    :cond_11d
    new-instance v1, Lcom/android/server/BluetoothAirplaneModeListener;

    .line 479
    invoke-static {}, Lcom/android/server/IoThread;->get()Lcom/android/server/IoThread;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/IoThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2, p1}, Lcom/android/server/BluetoothAirplaneModeListener;-><init>(Lcom/android/server/BluetoothManagerService;Landroid/os/Looper;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/server/BluetoothManagerService;->mBluetoothAirplaneModeListener:Lcom/android/server/BluetoothAirplaneModeListener;

    .line 482
    :cond_12c
    const/4 p1, -0x1

    .line 485
    :try_start_12d
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x11100a6

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    .line 486
    if-nez v1, :cond_14a

    .line 487
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "com.android.systemui"

    const/high16 v3, 0x100000

    .line 488
    invoke-virtual {v1, v2, v3, v0}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;II)I

    move-result p1

    .line 491
    :cond_14a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Detected SystemUiUid: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_162
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_12d .. :try_end_162} :catch_163

    .line 495
    goto :goto_169

    .line 492
    :catch_163
    move-exception v0

    .line 494
    const-string v1, "Unable to resolve SystemUI\'s UID."

    invoke-static {v4, v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 496
    :goto_169
    iput p1, p0, Lcom/android/server/BluetoothManagerService;->mSystemUiUid:I

    .line 497
    return-void
.end method

.method static synthetic access$000(J)Ljava/lang/CharSequence;
    .registers 2

    .line 89
    invoke-static {p0, p1}, Lcom/android/server/BluetoothManagerService;->timeToLog(J)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$100(I)Ljava/lang/String;
    .registers 1

    .line 89
    invoke-static {p0}, Lcom/android/server/BluetoothManagerService;->getEnableDisableReasonString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1000(Lcom/android/server/BluetoothManagerService;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;
    .registers 1

    .line 89
    iget-object p0, p0, Lcom/android/server/BluetoothManagerService;->mBluetoothLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/android/server/BluetoothManagerService;)Landroid/bluetooth/IBluetooth;
    .registers 1

    .line 89
    iget-object p0, p0, Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;

    return-object p0
.end method

.method static synthetic access$1102(Lcom/android/server/BluetoothManagerService;Landroid/bluetooth/IBluetooth;)Landroid/bluetooth/IBluetooth;
    .registers 2

    .line 89
    iput-object p1, p0, Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;

    return-object p1
.end method

.method static synthetic access$1200(Lcom/android/server/BluetoothManagerService;ILjava/lang/String;Z)V
    .registers 4

    .line 89
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/BluetoothManagerService;->addActiveLog(ILjava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/server/BluetoothManagerService;)Z
    .registers 1

    .line 89
    iget-boolean p0, p0, Lcom/android/server/BluetoothManagerService;->mEnable:Z

    return p0
.end method

.method static synthetic access$1702(Lcom/android/server/BluetoothManagerService;Z)Z
    .registers 2

    .line 89
    iput-boolean p1, p0, Lcom/android/server/BluetoothManagerService;->mEnable:Z

    return p1
.end method

.method static synthetic access$1900(Lcom/android/server/BluetoothManagerService;)Z
    .registers 1

    .line 89
    iget-boolean p0, p0, Lcom/android/server/BluetoothManagerService;->mBinding:Z

    return p0
.end method

.method static synthetic access$1902(Lcom/android/server/BluetoothManagerService;Z)Z
    .registers 2

    .line 89
    iput-boolean p1, p0, Lcom/android/server/BluetoothManagerService;->mBinding:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/server/BluetoothManagerService;)Lcom/android/server/BluetoothManagerService$BluetoothHandler;
    .registers 1

    .line 89
    iget-object p0, p0, Lcom/android/server/BluetoothManagerService;->mHandler:Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    return-object p0
.end method

.method static synthetic access$2000(Lcom/android/server/BluetoothManagerService;)Lcom/android/server/BluetoothManagerService$BluetoothServiceConnection;
    .registers 1

    .line 89
    iget-object p0, p0, Lcom/android/server/BluetoothManagerService;->mConnection:Lcom/android/server/BluetoothManagerService$BluetoothServiceConnection;

    return-object p0
.end method

.method static synthetic access$2100(Lcom/android/server/BluetoothManagerService;I)V
    .registers 2

    .line 89
    invoke-direct {p0, p1}, Lcom/android/server/BluetoothManagerService;->persistBluetoothSetting(I)V

    return-void
.end method

.method static synthetic access$2200(Lcom/android/server/BluetoothManagerService;)Z
    .registers 1

    .line 89
    iget-boolean p0, p0, Lcom/android/server/BluetoothManagerService;->mQuietEnable:Z

    return p0
.end method

.method static synthetic access$2202(Lcom/android/server/BluetoothManagerService;Z)Z
    .registers 2

    .line 89
    iput-boolean p1, p0, Lcom/android/server/BluetoothManagerService;->mQuietEnable:Z

    return p1
.end method

.method static synthetic access$2300(Lcom/android/server/BluetoothManagerService;Z)V
    .registers 2

    .line 89
    invoke-direct {p0, p1}, Lcom/android/server/BluetoothManagerService;->handleEnable(Z)V

    return-void
.end method

.method static synthetic access$2400(Lcom/android/server/BluetoothManagerService;Ljava/util/Set;)Z
    .registers 2

    .line 89
    invoke-direct {p0, p1}, Lcom/android/server/BluetoothManagerService;->waitForState(Ljava/util/Set;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$2500(Lcom/android/server/BluetoothManagerService;)I
    .registers 1

    .line 89
    invoke-direct {p0}, Lcom/android/server/BluetoothManagerService;->getServiceRestartMs()I

    move-result p0

    return p0
.end method

.method static synthetic access$2600(Lcom/android/server/BluetoothManagerService;)V
    .registers 1

    .line 89
    invoke-direct {p0}, Lcom/android/server/BluetoothManagerService;->handleDisable()V

    return-void
.end method

.method static synthetic access$2702(Lcom/android/server/BluetoothManagerService;Z)Z
    .registers 2

    .line 89
    iput-boolean p1, p0, Lcom/android/server/BluetoothManagerService;->mEnableExternal:Z

    return p1
.end method

.method static synthetic access$2802(Lcom/android/server/BluetoothManagerService;Z)Z
    .registers 2

    .line 89
    iput-boolean p1, p0, Lcom/android/server/BluetoothManagerService;->mQuietEnableExternal:Z

    return p1
.end method

.method static synthetic access$2900(Lcom/android/server/BluetoothManagerService;ZILjava/lang/String;)V
    .registers 4

    .line 89
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/BluetoothManagerService;->sendEnableMsg(ZILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/BluetoothManagerService;IZ)V
    .registers 3

    .line 89
    invoke-direct {p0, p1, p2}, Lcom/android/server/BluetoothManagerService;->updateOppLauncherComponentState(IZ)V

    return-void
.end method

.method static synthetic access$3000(Lcom/android/server/BluetoothManagerService;)Landroid/os/RemoteCallbackList;
    .registers 1

    .line 89
    iget-object p0, p0, Lcom/android/server/BluetoothManagerService;->mCallbacks:Landroid/os/RemoteCallbackList;

    return-object p0
.end method

.method static synthetic access$3100(Lcom/android/server/BluetoothManagerService;)Landroid/os/RemoteCallbackList;
    .registers 1

    .line 89
    iget-object p0, p0, Lcom/android/server/BluetoothManagerService;->mStateChangeCallbacks:Landroid/os/RemoteCallbackList;

    return-object p0
.end method

.method static synthetic access$3200(Lcom/android/server/BluetoothManagerService;)Ljava/util/Map;
    .registers 1

    .line 89
    iget-object p0, p0, Lcom/android/server/BluetoothManagerService;->mProfileServices:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic access$3402(Lcom/android/server/BluetoothManagerService;Landroid/bluetooth/IBluetoothGatt;)Landroid/bluetooth/IBluetoothGatt;
    .registers 2

    .line 89
    iput-object p1, p0, Lcom/android/server/BluetoothManagerService;->mBluetoothGatt:Landroid/bluetooth/IBluetoothGatt;

    return-object p1
.end method

.method static synthetic access$3500(Lcom/android/server/BluetoothManagerService;)V
    .registers 1

    .line 89
    invoke-direct {p0}, Lcom/android/server/BluetoothManagerService;->continueFromBleOnState()V

    return-void
.end method

.method static synthetic access$3602(Lcom/android/server/BluetoothManagerService;Landroid/os/IBinder;)Landroid/os/IBinder;
    .registers 2

    .line 89
    iput-object p1, p0, Lcom/android/server/BluetoothManagerService;->mBluetoothBinder:Landroid/os/IBinder;

    return-object p1
.end method

.method static synthetic access$3700(Lcom/android/server/BluetoothManagerService;)Z
    .registers 1

    .line 89
    invoke-direct {p0}, Lcom/android/server/BluetoothManagerService;->isNameAndAddressSet()Z

    move-result p0

    return p0
.end method

.method static synthetic access$3800(Lcom/android/server/BluetoothManagerService;)Landroid/bluetooth/IBluetoothCallback;
    .registers 1

    .line 89
    iget-object p0, p0, Lcom/android/server/BluetoothManagerService;->mBluetoothCallback:Landroid/bluetooth/IBluetoothCallback;

    return-object p0
.end method

.method static synthetic access$3900(Lcom/android/server/BluetoothManagerService;)V
    .registers 1

    .line 89
    invoke-direct {p0}, Lcom/android/server/BluetoothManagerService;->sendBluetoothServiceUpCallback()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/BluetoothManagerService;)Landroid/content/Context;
    .registers 1

    .line 89
    iget-object p0, p0, Lcom/android/server/BluetoothManagerService;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$4000(Lcom/android/server/BluetoothManagerService;)I
    .registers 1

    .line 89
    iget p0, p0, Lcom/android/server/BluetoothManagerService;->mState:I

    return p0
.end method

.method static synthetic access$4002(Lcom/android/server/BluetoothManagerService;I)I
    .registers 2

    .line 89
    iput p1, p0, Lcom/android/server/BluetoothManagerService;->mState:I

    return p1
.end method

.method static synthetic access$4100(Lcom/android/server/BluetoothManagerService;II)V
    .registers 3

    .line 89
    invoke-direct {p0, p1, p2}, Lcom/android/server/BluetoothManagerService;->bluetoothStateChangeHandler(II)V

    return-void
.end method

.method static synthetic access$4200(Lcom/android/server/BluetoothManagerService;Z)V
    .registers 2

    .line 89
    invoke-direct {p0, p1}, Lcom/android/server/BluetoothManagerService;->recoverBluetoothServiceFromError(Z)V

    return-void
.end method

.method static synthetic access$4300(Lcom/android/server/BluetoothManagerService;)I
    .registers 1

    .line 89
    iget p0, p0, Lcom/android/server/BluetoothManagerService;->mErrorRecoveryRetryCounter:I

    return p0
.end method

.method static synthetic access$4302(Lcom/android/server/BluetoothManagerService;I)I
    .registers 2

    .line 89
    iput p1, p0, Lcom/android/server/BluetoothManagerService;->mErrorRecoveryRetryCounter:I

    return p1
.end method

.method static synthetic access$4308(Lcom/android/server/BluetoothManagerService;)I
    .registers 3

    .line 89
    iget v0, p0, Lcom/android/server/BluetoothManagerService;->mErrorRecoveryRetryCounter:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/server/BluetoothManagerService;->mErrorRecoveryRetryCounter:I

    return v0
.end method

.method static synthetic access$4400(Lcom/android/server/BluetoothManagerService;)V
    .registers 1

    .line 89
    invoke-direct {p0}, Lcom/android/server/BluetoothManagerService;->addCrashLog()V

    return-void
.end method

.method static synthetic access$4500(Lcom/android/server/BluetoothManagerService;)V
    .registers 1

    .line 89
    invoke-direct {p0}, Lcom/android/server/BluetoothManagerService;->sendBluetoothServiceDownCallback()V

    return-void
.end method

.method static synthetic access$4602(Lcom/android/server/BluetoothManagerService;Z)Z
    .registers 2

    .line 89
    iput-boolean p1, p0, Lcom/android/server/BluetoothManagerService;->mUnbinding:Z

    return p1
.end method

.method static synthetic access$4700(Lcom/android/server/BluetoothManagerService;)V
    .registers 1

    .line 89
    invoke-direct {p0}, Lcom/android/server/BluetoothManagerService;->unbindAllBluetoothProfileServices()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/BluetoothManagerService;ILjava/lang/String;)V
    .registers 3

    .line 89
    invoke-direct {p0, p1, p2}, Lcom/android/server/BluetoothManagerService;->sendDisableMsg(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/BluetoothManagerService;Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 89
    invoke-direct {p0, p1, p2}, Lcom/android/server/BluetoothManagerService;->storeNameAndAddress(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/server/BluetoothManagerService;)Ljava/util/Map;
    .registers 1

    .line 89
    iget-object p0, p0, Lcom/android/server/BluetoothManagerService;->mBleApps:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic access$800(Lcom/android/server/BluetoothManagerService;)V
    .registers 1

    .line 89
    invoke-direct {p0}, Lcom/android/server/BluetoothManagerService;->disableBleScanMode()V

    return-void
.end method

.method static synthetic access$900(Lcom/android/server/BluetoothManagerService;)V
    .registers 1

    .line 89
    invoke-direct {p0}, Lcom/android/server/BluetoothManagerService;->clearBleApps()V

    return-void
.end method

.method private addActiveLog(ILjava/lang/String;Z)V
    .registers 14

    .line 2331
    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mActiveLogs:Ljava/util/LinkedList;

    monitor-enter v0

    .line 2332
    :try_start_3
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mActiveLogs:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    const/16 v2, 0x14

    if-le v1, v2, :cond_12

    .line 2333
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mActiveLogs:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->remove()Ljava/lang/Object;

    .line 2335
    :cond_12
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mActiveLogs:Ljava/util/LinkedList;

    new-instance v9, Lcom/android/server/BluetoothManagerService$ActiveLog;

    .line 2336
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    move-object v2, v9

    move-object v3, p0

    move v4, p1

    move-object v5, p2

    move v6, p3

    invoke-direct/range {v2 .. v8}, Lcom/android/server/BluetoothManagerService$ActiveLog;-><init>(Lcom/android/server/BluetoothManagerService;ILjava/lang/String;ZJ)V

    .line 2335
    invoke-virtual {v1, v9}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 2337
    monitor-exit v0
    :try_end_26
    .catchall {:try_start_3 .. :try_end_26} :catchall_3a

    .line 2339
    if-eqz p3, :cond_2b

    const/4 p3, 0x1

    move v3, p3

    goto :goto_2d

    .line 2340
    :cond_2b
    const/4 p3, 0x2

    move v3, p3

    .line 2341
    :goto_2d
    const/16 v0, 0x43

    .line 2342
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    const/4 v2, 0x0

    .line 2341
    move v4, p1

    move-object v5, p2

    invoke-static/range {v0 .. v5}, Landroid/util/StatsLog;->write_non_chained(IILjava/lang/String;IILjava/lang/String;)I

    .line 2343
    return-void

    .line 2337
    :catchall_3a
    move-exception p1

    :try_start_3b
    monitor-exit v0
    :try_end_3c
    .catchall {:try_start_3b .. :try_end_3c} :catchall_3a

    throw p1
.end method

.method private addCrashLog()V
    .registers 5

    .line 2346
    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mCrashTimestamps:Ljava/util/LinkedList;

    monitor-enter v0

    .line 2347
    :try_start_3
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mCrashTimestamps:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    const/16 v2, 0x64

    if-ne v1, v2, :cond_12

    .line 2348
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mCrashTimestamps:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    .line 2350
    :cond_12
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mCrashTimestamps:Ljava/util/LinkedList;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 2351
    iget v1, p0, Lcom/android/server/BluetoothManagerService;->mCrashes:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/server/BluetoothManagerService;->mCrashes:I

    .line 2352
    monitor-exit v0

    .line 2353
    return-void

    .line 2352
    :catchall_27
    move-exception v1

    monitor-exit v0
    :try_end_29
    .catchall {:try_start_3 .. :try_end_29} :catchall_27

    throw v1
.end method

.method private bluetoothStateChangeHandler(II)V
    .registers 10

    .line 2216
    nop

    .line 2217
    if-ne p1, p2, :cond_4

    .line 2218
    return-void

    .line 2221
    :cond_4
    const/16 v0, 0xd

    const/16 v1, 0xf

    const/4 v2, 0x1

    const/16 v3, 0xa

    const/4 v4, 0x0

    if-eq p2, v1, :cond_3a

    if-ne p2, v3, :cond_11

    goto :goto_3a

    .line 2267
    :cond_11
    const/16 v5, 0xc

    if-ne p2, v5, :cond_20

    .line 2268
    if-ne p2, v5, :cond_18

    move v4, v2

    .line 2269
    :cond_18
    invoke-direct {p0, v4}, Lcom/android/server/BluetoothManagerService;->sendBluetoothStateCallback(Z)V

    .line 2270
    invoke-direct {p0, p1, p2}, Lcom/android/server/BluetoothManagerService;->sendBleStateChanged(II)V

    .line 2272
    goto/16 :goto_a4

    :cond_20
    const/16 v5, 0xe

    if-eq p2, v5, :cond_34

    const/16 v5, 0x10

    if-ne p2, v5, :cond_29

    goto :goto_34

    .line 2277
    :cond_29
    const/16 v4, 0xb

    if-eq p2, v4, :cond_2f

    if-ne p2, v0, :cond_a4

    .line 2279
    :cond_2f
    invoke-direct {p0, p1, p2}, Lcom/android/server/BluetoothManagerService;->sendBleStateChanged(II)V

    goto/16 :goto_a4

    .line 2274
    :cond_34
    :goto_34
    invoke-direct {p0, p1, p2}, Lcom/android/server/BluetoothManagerService;->sendBleStateChanged(II)V

    .line 2275
    move v2, v4

    goto/16 :goto_a4

    .line 2222
    :cond_3a
    :goto_3a
    if-ne p1, v0, :cond_40

    if-ne p2, v1, :cond_40

    move v0, v2

    goto :goto_41

    :cond_40
    move v0, v4

    .line 2225
    :goto_41
    const-string v5, "BluetoothManagerService"

    if-ne p2, v3, :cond_55

    .line 2228
    const-string v0, "Bluetooth is complete send Service Down"

    invoke-static {v5, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2230
    invoke-direct {p0}, Lcom/android/server/BluetoothManagerService;->sendBluetoothServiceDownCallback()V

    .line 2231
    invoke-virtual {p0}, Lcom/android/server/BluetoothManagerService;->unbindAndFinish()V

    .line 2232
    invoke-direct {p0, p1, p2}, Lcom/android/server/BluetoothManagerService;->sendBleStateChanged(II)V

    .line 2234
    move v2, v4

    goto :goto_a3

    .line 2236
    :cond_55
    if-nez v0, :cond_91

    .line 2239
    const-string v0, "Bluetooth is in LE only mode"

    invoke-static {v5, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2241
    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mBluetoothGatt:Landroid/bluetooth/IBluetoothGatt;

    if-nez v0, :cond_89

    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 2242
    const-string v2, "android.hardware.bluetooth_le"

    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6f

    goto :goto_89

    .line 2246
    :cond_6f
    const-string v0, "Binding Bluetooth GATT service"

    invoke-static {v5, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2248
    new-instance v0, Landroid/content/Intent;

    const-class v2, Landroid/bluetooth/IBluetoothGatt;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2249
    iget-object v2, p0, Lcom/android/server/BluetoothManagerService;->mConnection:Lcom/android/server/BluetoothManagerService$BluetoothServiceConnection;

    const/16 v5, 0x41

    sget-object v6, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {p0, v0, v2, v5, v6}, Lcom/android/server/BluetoothManagerService;->doBind(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    goto :goto_8c

    .line 2243
    :cond_89
    :goto_89
    invoke-direct {p0}, Lcom/android/server/BluetoothManagerService;->continueFromBleOnState()V

    .line 2252
    :goto_8c
    invoke-direct {p0, p1, p2}, Lcom/android/server/BluetoothManagerService;->sendBleStateChanged(II)V

    .line 2254
    move v2, v4

    goto :goto_a3

    .line 2256
    :cond_91
    if-eqz v0, :cond_a3

    .line 2258
    const-string v0, "Intermediate off, back to LE only mode"

    invoke-static {v5, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2261
    invoke-direct {p0, p1, p2}, Lcom/android/server/BluetoothManagerService;->sendBleStateChanged(II)V

    .line 2262
    invoke-direct {p0, v4}, Lcom/android/server/BluetoothManagerService;->sendBluetoothStateCallback(Z)V

    .line 2264
    nop

    .line 2265
    invoke-direct {p0}, Lcom/android/server/BluetoothManagerService;->sendBrEdrDownCallback()V

    move p2, v3

    .line 2267
    :cond_a3
    :goto_a3
    nop

    .line 2282
    :cond_a4
    :goto_a4
    if-eqz v2, :cond_c8

    .line 2283
    if-ne p1, v1, :cond_a9

    .line 2285
    move p1, v3

    .line 2287
    :cond_a9
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2288
    const-string v1, "android.bluetooth.adapter.extra.PREVIOUS_STATE"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2289
    const-string p1, "android.bluetooth.adapter.extra.STATE"

    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2290
    const/high16 p1, 0x4000000

    invoke-virtual {v0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2291
    iget-object p1, p0, Lcom/android/server/BluetoothManagerService;->mContext:Landroid/content/Context;

    sget-object p2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string v1, "android.permission.BLUETOOTH"

    invoke-virtual {p1, v0, p2, v1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 2293
    :cond_c8
    return-void
.end method

.method private checkBluetoothPermissionWhenWirelessConsentRequired()Z
    .registers 3

    .line 1107
    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MANAGE_BLUETOOTH_WHEN_WIRELESS_CONSENT_REQUIRED"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v0

    .line 1109
    if-nez v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method private checkIfCallerIsForegroundUser()Z
    .registers 10

    .line 2178
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 2179
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 2180
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 2181
    iget-object v4, p0, Lcom/android/server/BluetoothManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "user"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/UserManager;

    .line 2182
    invoke-virtual {v4, v0}, Landroid/os/UserManager;->getProfileParent(I)Landroid/content/pm/UserInfo;

    move-result-object v4

    .line 2183
    if-eqz v4, :cond_20

    iget v4, v4, Landroid/content/pm/UserInfo;->id:I

    goto :goto_22

    :cond_20
    const/16 v4, -0x2710

    .line 2184
    :goto_22
    invoke-static {v1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v1

    .line 2185
    nop

    .line 2187
    :try_start_27
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v5

    .line 2188
    if-eq v0, v5, :cond_3a

    if-eq v4, v5, :cond_3a

    const/16 v6, 0x403

    if-eq v1, v6, :cond_3a

    iget v6, p0, Lcom/android/server/BluetoothManagerService;->mSystemUiUid:I

    if-ne v1, v6, :cond_38

    goto :goto_3a

    :cond_38
    const/4 v1, 0x0

    goto :goto_3b

    :cond_3a
    :goto_3a
    const/4 v1, 0x1

    .line 2190
    :goto_3b
    if-nez v1, :cond_6b

    .line 2191
    const-string v6, "BluetoothManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "checkIfCallerIsForegroundUser: valid="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v8, " callingUser="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " parentUser="

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " foregroundUser="

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6b
    .catchall {:try_start_27 .. :try_end_6b} :catchall_70

    .line 2196
    :cond_6b
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2197
    nop

    .line 2198
    return v1

    .line 2196
    :catchall_70
    move-exception v0

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method private checkPackage(ILjava/lang/String;)V
    .registers 7

    .line 1078
    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mAppOps:Landroid/app/AppOpsManager;

    const-string v1, "BluetoothManagerService"

    if-eqz v0, :cond_49

    .line 1083
    if-nez p2, :cond_1d

    .line 1084
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "checkPackage(): called with null packageName from "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1085
    return-void

    .line 1088
    :cond_1d
    :try_start_1d
    invoke-virtual {v0, p1, p2}, Landroid/app/AppOpsManager;->checkPackage(ILjava/lang/String;)V
    :try_end_20
    .catch Ljava/lang/SecurityException; {:try_start_1d .. :try_end_20} :catch_22

    .line 1092
    nop

    .line 1093
    return-void

    .line 1089
    :catch_22
    move-exception v0

    .line 1090
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkPackage(): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " does not belong to uid "

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1091
    new-instance p1, Ljava/lang/SecurityException;

    invoke-virtual {v0}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1079
    :cond_49
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkPackage(): called before system boot up, uid "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", packageName "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1081
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "System has not boot yet"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private clearBleApps()V
    .registers 2

    .line 844
    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mBleApps:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 845
    return-void
.end method

.method private continueFromBleOnState()V
    .registers 4

    .line 860
    const-string v0, "BluetoothManagerService"

    const-string v1, "continueFromBleOnState()"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 863
    :try_start_7
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mBluetoothLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 864
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;

    if-nez v1, :cond_24

    .line 865
    const-string/jumbo v1, "onBluetoothServiceUp: mBluetooth is null!"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_1a} :catch_3c
    .catchall {:try_start_7 .. :try_end_1a} :catchall_3a

    .line 876
    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mBluetoothLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 866
    return-void

    .line 868
    :cond_24
    :try_start_24
    invoke-direct {p0}, Lcom/android/server/BluetoothManagerService;->isBluetoothPersistedStateOnBluetooth()Z

    move-result v1

    if-nez v1, :cond_30

    invoke-virtual {p0}, Lcom/android/server/BluetoothManagerService;->isBleAppPresent()Z

    move-result v1

    if-nez v1, :cond_42

    .line 870
    :cond_30
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;

    invoke-interface {v1}, Landroid/bluetooth/IBluetooth;->onLeServiceUp()V

    .line 871
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/android/server/BluetoothManagerService;->persistBluetoothSetting(I)V
    :try_end_39
    .catch Landroid/os/RemoteException; {:try_start_24 .. :try_end_39} :catch_3c
    .catchall {:try_start_24 .. :try_end_39} :catchall_3a

    goto :goto_42

    .line 876
    :catchall_3a
    move-exception v0

    goto :goto_4d

    .line 873
    :catch_3c
    move-exception v1

    .line 874
    :try_start_3d
    const-string v2, "Unable to call onServiceUp"

    invoke-static {v0, v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_42
    .catchall {:try_start_3d .. :try_end_42} :catchall_3a

    .line 876
    :cond_42
    :goto_42
    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mBluetoothLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 877
    nop

    .line 878
    return-void

    .line 876
    :goto_4d
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mBluetoothLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    throw v0
.end method

.method private disableBleScanMode()V
    .registers 4

    .line 788
    const-string v0, "BluetoothManagerService"

    :try_start_2
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mBluetoothLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 789
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;

    if-eqz v1, :cond_2a

    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;

    invoke-interface {v1}, Landroid/bluetooth/IBluetooth;->getState()I

    move-result v1

    const/16 v2, 0xc

    if-eq v1, v2, :cond_2a

    .line 791
    const-string v1, "Reseting the mEnable flag for clean disable"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 793
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/BluetoothManagerService;->mEnable:Z
    :try_end_21
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_21} :catch_24
    .catchall {:try_start_2 .. :try_end_21} :catchall_22

    goto :goto_2a

    .line 798
    :catchall_22
    move-exception v0

    goto :goto_35

    .line 795
    :catch_24
    move-exception v1

    .line 796
    :try_start_25
    const-string v2, "getState()"

    invoke-static {v0, v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2a
    .catchall {:try_start_25 .. :try_end_2a} :catchall_22

    .line 798
    :cond_2a
    :goto_2a
    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mBluetoothLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 799
    nop

    .line 800
    return-void

    .line 798
    :goto_35
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mBluetoothLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    throw v0
.end method

.method private static getEnableDisableReasonString(I)Ljava/lang/String;
    .registers 3

    .line 2519
    packed-switch p0, :pswitch_data_38

    .line 2541
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UNKNOWN["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 2539
    :pswitch_1a  #0xa
    const-string p0, "FACTORY_RESET"

    return-object p0

    .line 2537
    :pswitch_1d  #0x9
    const-string p0, "RESTORE_USER_SETTING"

    return-object p0

    .line 2535
    :pswitch_20  #0x8
    const-string p0, "USER_SWITCH"

    return-object p0

    .line 2533
    :pswitch_23  #0x7
    const-string p0, "CRASH"

    return-object p0

    .line 2531
    :pswitch_26  #0x6
    const-string p0, "SYSTEM_BOOT"

    return-object p0

    .line 2529
    :pswitch_29  #0x5
    const-string p0, "START_ERROR"

    return-object p0

    .line 2527
    :pswitch_2c  #0x4
    const-string p0, "RESTARTED"

    return-object p0

    .line 2525
    :pswitch_2f  #0x3
    const-string p0, "DISALLOWED"

    return-object p0

    .line 2523
    :pswitch_32  #0x2
    const-string p0, "AIRPLANE_MODE"

    return-object p0

    .line 2521
    :pswitch_35  #0x1
    const-string p0, "APPLICATION_REQUEST"

    return-object p0

    :pswitch_data_38
    .packed-switch 0x1
        :pswitch_35  #00000001
        :pswitch_32  #00000002
        :pswitch_2f  #00000003
        :pswitch_2c  #00000004
        :pswitch_29  #00000005
        :pswitch_26  #00000006
        :pswitch_23  #00000007
        :pswitch_20  #00000008
        :pswitch_1d  #00000009
        :pswitch_1a  #0000000a
    .end packed-switch
.end method

.method private getServiceRestartMs()I
    .registers 2

    .line 2440
    iget v0, p0, Lcom/android/server/BluetoothManagerService;->mErrorRecoveryRetryCounter:I

    add-int/lit8 v0, v0, 0x1

    mul-int/lit16 v0, v0, 0x190

    return v0
.end method

.method private handleDisable()V
    .registers 4

    .line 2160
    const-string v0, "BluetoothManagerService"

    :try_start_2
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mBluetoothLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 2161
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;

    if-eqz v1, :cond_2a

    .line 2163
    const-string v1, "Sending off request."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2165
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;

    invoke-interface {v1}, Landroid/bluetooth/IBluetooth;->disable()Z

    move-result v1

    if-nez v1, :cond_2a

    .line 2166
    const-string v1, "IBluetooth.disable() returned false"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_21
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_21} :catch_24
    .catchall {:try_start_2 .. :try_end_21} :catchall_22

    goto :goto_2a

    .line 2172
    :catchall_22
    move-exception v0

    goto :goto_35

    .line 2169
    :catch_24
    move-exception v1

    .line 2170
    :try_start_25
    const-string v2, "Unable to call disable()"

    invoke-static {v0, v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2a
    .catchall {:try_start_25 .. :try_end_2a} :catchall_22

    .line 2172
    :cond_2a
    :goto_2a
    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mBluetoothLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 2173
    nop

    .line 2174
    return-void

    .line 2172
    :goto_35
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mBluetoothLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    throw v0
.end method

.method private handleEnable(Z)V
    .registers 6

    .line 2112
    const-string v0, "BluetoothManagerService"

    iput-boolean p1, p0, Lcom/android/server/BluetoothManagerService;->mQuietEnable:Z

    .line 2115
    :try_start_4
    iget-object p1, p0, Lcom/android/server/BluetoothManagerService;->mBluetoothLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 2116
    iget-object p1, p0, Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;

    if-nez p1, :cond_45

    iget-boolean p1, p0, Lcom/android/server/BluetoothManagerService;->mBinding:Z

    if-nez p1, :cond_45

    .line 2118
    iget-object p1, p0, Lcom/android/server/BluetoothManagerService;->mHandler:Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    const/16 v0, 0x64

    invoke-virtual {p1, v0}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    .line 2119
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mHandler:Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v1, p1, v2, v3}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 2120
    new-instance p1, Landroid/content/Intent;

    const-class v1, Landroid/bluetooth/IBluetooth;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2121
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mConnection:Lcom/android/server/BluetoothManagerService$BluetoothServiceConnection;

    const/16 v2, 0x41

    sget-object v3, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {p0, p1, v1, v2, v3}, Lcom/android/server/BluetoothManagerService;->doBind(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result p1

    if-nez p1, :cond_41

    .line 2123
    iget-object p1, p0, Lcom/android/server/BluetoothManagerService;->mHandler:Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    invoke-virtual {p1, v0}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->removeMessages(I)V

    goto :goto_70

    .line 2125
    :cond_41
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/server/BluetoothManagerService;->mBinding:Z

    goto :goto_70

    .line 2127
    :cond_45
    iget-object p1, p0, Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;
    :try_end_47
    .catchall {:try_start_4 .. :try_end_47} :catchall_7c

    if-eqz p1, :cond_70

    .line 2130
    :try_start_49
    iget-boolean p1, p0, Lcom/android/server/BluetoothManagerService;->mQuietEnable:Z

    if-nez p1, :cond_5b

    .line 2131
    iget-object p1, p0, Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;

    invoke-interface {p1}, Landroid/bluetooth/IBluetooth;->enable()Z

    move-result p1

    if-nez p1, :cond_68

    .line 2132
    const-string p1, "IBluetooth.enable() returned false"

    invoke-static {v0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_68

    .line 2135
    :cond_5b
    iget-object p1, p0, Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;

    invoke-interface {p1}, Landroid/bluetooth/IBluetooth;->enableNoAutoConnect()Z

    move-result p1

    if-nez p1, :cond_68

    .line 2136
    const-string p1, "IBluetooth.enableNoAutoConnect() returned false"

    invoke-static {v0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_68
    .catch Landroid/os/RemoteException; {:try_start_49 .. :try_end_68} :catch_69
    .catchall {:try_start_49 .. :try_end_68} :catchall_7c

    .line 2141
    :cond_68
    :goto_68
    goto :goto_71

    .line 2139
    :catch_69
    move-exception p1

    .line 2140
    :try_start_6a
    const-string v1, "Unable to call enable()"

    invoke-static {v0, v1, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6f
    .catchall {:try_start_6a .. :try_end_6f} :catchall_7c

    goto :goto_71

    .line 2127
    :cond_70
    :goto_70
    nop

    .line 2144
    :goto_71
    iget-object p1, p0, Lcom/android/server/BluetoothManagerService;->mBluetoothLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 2145
    nop

    .line 2146
    return-void

    .line 2144
    :catchall_7c
    move-exception p1

    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mBluetoothLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    throw p1
.end method

.method private isAirplaneModeOn()Z
    .registers 4

    .line 503
    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "airplane_mode_on"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_11

    move v1, v2

    :cond_11
    return v1
.end method

.method private isBluetoothDisallowed()Z
    .registers 6

    .line 2407
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2409
    :try_start_4
    iget-object v2, p0, Lcom/android/server/BluetoothManagerService;->mContext:Landroid/content/Context;

    const-class v3, Landroid/os/UserManager;

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/UserManager;

    const-string/jumbo v3, "no_bluetooth"

    sget-object v4, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    .line 2410
    invoke-virtual {v2, v3, v4}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v2
    :try_end_17
    .catchall {:try_start_4 .. :try_end_17} :catchall_1b

    .line 2412
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2409
    return v2

    .line 2412
    :catchall_1b
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method private isBluetoothPersistedStateOn()Z
    .registers 5

    .line 515
    invoke-direct {p0}, Lcom/android/server/BluetoothManagerService;->supportBluetoothPersistedState()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 516
    return v1

    .line 518
    :cond_8
    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mContentResolver:Landroid/content/ContentResolver;

    const/4 v2, -0x1

    const-string v3, "bluetooth_on"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 520
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Bluetooth persisted state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "BluetoothManagerService"

    invoke-static {v3, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 522
    if-eqz v0, :cond_2a

    const/4 v1, 0x1

    :cond_2a
    return v1
.end method

.method private isBluetoothPersistedStateOnAirplane()Z
    .registers 5

    .line 526
    invoke-direct {p0}, Lcom/android/server/BluetoothManagerService;->supportBluetoothPersistedState()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 527
    return v1

    .line 529
    :cond_8
    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mContentResolver:Landroid/content/ContentResolver;

    const/4 v2, -0x1

    const-string v3, "bluetooth_on"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 531
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Bluetooth persisted state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "BluetoothManagerService"

    invoke-static {v3, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 533
    const/4 v2, 0x2

    if-ne v0, v2, :cond_2b

    const/4 v1, 0x1

    :cond_2b
    return v1
.end method

.method private isBluetoothPersistedStateOnBluetooth()Z
    .registers 5

    .line 540
    invoke-direct {p0}, Lcom/android/server/BluetoothManagerService;->supportBluetoothPersistedState()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 541
    return v1

    .line 543
    :cond_8
    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mContentResolver:Landroid/content/ContentResolver;

    const/4 v2, 0x1

    const-string v3, "bluetooth_on"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_14

    move v1, v2

    :cond_14
    return v1
.end method

.method private isNameAndAddressSet()Z
    .registers 3

    .line 566
    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mName:Ljava/lang/String;

    if-eqz v0, :cond_18

    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mAddress:Ljava/lang/String;

    if-eqz v1, :cond_18

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_18

    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mAddress:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_18

    const/4 v0, 0x1

    goto :goto_19

    :cond_18
    const/4 v0, 0x0

    :goto_19
    return v0
.end method

.method private loadStoredNameAndAddress()V
    .registers 5

    .line 575
    const-string v0, "BluetoothManagerService"

    const-string v1, "Loading stored name and address"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 577
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 578
    const v2, 0x1110030

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-eqz v1, :cond_27

    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mContentResolver:Landroid/content/ContentResolver;

    const/4 v2, 0x0

    .line 579
    const-string v3, "bluetooth_addr_valid"

    invoke-static {v1, v3, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_27

    .line 583
    const-string v1, "invalid bluetooth name and address stored"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 585
    return-void

    .line 587
    :cond_27
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mContentResolver:Landroid/content/ContentResolver;

    const-string v2, "bluetooth_name"

    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/BluetoothManagerService;->mName:Ljava/lang/String;

    .line 588
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mContentResolver:Landroid/content/ContentResolver;

    const-string v2, "bluetooth_address"

    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/BluetoothManagerService;->mAddress:Ljava/lang/String;

    .line 590
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Stored bluetooth Name="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/BluetoothManagerService;->mName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",Address="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/BluetoothManagerService;->mAddress:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 592
    return-void
.end method

.method private persistBluetoothSetting(I)V
    .registers 6

    .line 552
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Persisting Bluetooth Setting: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BluetoothManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 555
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 556
    iget-object v2, p0, Lcom/android/server/BluetoothManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "bluetooth_on"

    invoke-static {v2, v3, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 557
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 558
    return-void
.end method

.method private recoverBluetoothServiceFromError(Z)V
    .registers 7

    .line 2356
    const-string v0, "BluetoothManagerService"

    const-string/jumbo v1, "recoverBluetoothServiceFromError"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2358
    :try_start_8
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mBluetoothLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 2359
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;

    if-eqz v1, :cond_26

    .line 2361
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;

    iget-object v2, p0, Lcom/android/server/BluetoothManagerService;->mBluetoothCallback:Landroid/bluetooth/IBluetoothCallback;

    invoke-interface {v1, v2}, Landroid/bluetooth/IBluetooth;->unregisterCallback(Landroid/bluetooth/IBluetoothCallback;)V
    :try_end_1c
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_1c} :catch_20
    .catchall {:try_start_8 .. :try_end_1c} :catchall_1d

    goto :goto_26

    .line 2366
    :catchall_1d
    move-exception p1

    goto/16 :goto_ab

    .line 2363
    :catch_20
    move-exception v1

    .line 2364
    :try_start_21
    const-string v2, "Unable to unregister"

    invoke-static {v0, v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_26
    .catchall {:try_start_21 .. :try_end_26} :catchall_1d

    .line 2366
    :cond_26
    :goto_26
    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mBluetoothLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 2367
    nop

    .line 2369
    const-wide/16 v0, 0x1f4

    invoke-static {v0, v1}, Landroid/os/SystemClock;->sleep(J)V

    .line 2372
    const/4 v0, 0x5

    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mContext:Landroid/content/Context;

    .line 2373
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 2372
    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/BluetoothManagerService;->addActiveLog(ILjava/lang/String;Z)V

    .line 2374
    invoke-direct {p0}, Lcom/android/server/BluetoothManagerService;->handleDisable()V

    .line 2376
    new-instance v0, Ljava/util/HashSet;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Integer;

    const/16 v3, 0xa

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-direct {p0, v0}, Lcom/android/server/BluetoothManagerService;->waitForState(Ljava/util/Set;)Z

    .line 2378
    invoke-direct {p0}, Lcom/android/server/BluetoothManagerService;->sendBluetoothServiceDownCallback()V

    .line 2381
    :try_start_5d
    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mBluetoothLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 2382
    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;

    const/4 v1, 0x0

    if-eqz v0, :cond_74

    .line 2383
    iput-object v1, p0, Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;

    .line 2385
    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/server/BluetoothManagerService;->mConnection:Lcom/android/server/BluetoothManagerService$BluetoothServiceConnection;

    invoke-virtual {v0, v4}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 2387
    :cond_74
    iput-object v1, p0, Lcom/android/server/BluetoothManagerService;->mBluetoothGatt:Landroid/bluetooth/IBluetoothGatt;
    :try_end_76
    .catchall {:try_start_5d .. :try_end_76} :catchall_a0

    .line 2389
    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mBluetoothLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 2390
    nop

    .line 2392
    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mHandler:Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    const/16 v1, 0x3c

    invoke-virtual {v0, v1}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->removeMessages(I)V

    .line 2393
    iput v3, p0, Lcom/android/server/BluetoothManagerService;->mState:I

    .line 2395
    if-eqz p1, :cond_8e

    .line 2396
    invoke-direct {p0}, Lcom/android/server/BluetoothManagerService;->clearBleApps()V

    .line 2399
    :cond_8e
    iput-boolean v2, p0, Lcom/android/server/BluetoothManagerService;->mEnable:Z

    .line 2402
    iget-object p1, p0, Lcom/android/server/BluetoothManagerService;->mHandler:Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    const/16 v0, 0x2a

    invoke-virtual {p1, v0}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    .line 2403
    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mHandler:Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    const-wide/16 v1, 0xbb8

    invoke-virtual {v0, p1, v1, v2}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 2404
    return-void

    .line 2389
    :catchall_a0
    move-exception p1

    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mBluetoothLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    throw p1

    .line 2366
    :goto_ab
    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mBluetoothLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    throw p1
.end method

.method private registerForBleScanModeChange()V
    .registers 5

    .line 755
    new-instance v0, Lcom/android/server/BluetoothManagerService$4;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/BluetoothManagerService$4;-><init>(Lcom/android/server/BluetoothManagerService;Landroid/os/Handler;)V

    .line 780
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mContentResolver:Landroid/content/ContentResolver;

    .line 781
    const-string v2, "ble_scan_always_enabled"

    invoke-static {v2}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 780
    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 783
    return-void
.end method

.method private sendBleStateChanged(II)V
    .registers 5

    .line 2203
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Sending BLE State Change: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2204
    invoke-static {p1}, Landroid/bluetooth/BluetoothAdapter;->nameForState(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " > "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2205
    invoke-static {p2}, Landroid/bluetooth/BluetoothAdapter;->nameForState(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2203
    const-string v1, "BluetoothManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2208
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.bluetooth.adapter.action.BLE_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2209
    const-string v1, "android.bluetooth.adapter.extra.PREVIOUS_STATE"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2210
    const-string p1, "android.bluetooth.adapter.extra.STATE"

    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2211
    const/high16 p1, 0x4000000

    invoke-virtual {v0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2212
    iget-object p1, p0, Lcom/android/server/BluetoothManagerService;->mContext:Landroid/content/Context;

    sget-object p2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string v1, "android.permission.BLUETOOTH"

    invoke-virtual {p1, v0, p2, v1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 2213
    return-void
.end method

.method private sendBluetoothServiceDownCallback()V
    .registers 7

    .line 1499
    const-string v0, "BluetoothManagerService"

    :try_start_2
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v1

    .line 1500
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Broadcasting onBluetoothServiceDown() to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " receivers."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_21
    .catchall {:try_start_2 .. :try_end_21} :catchall_4f

    .line 1501
    const/4 v2, 0x0

    :goto_22
    if-ge v2, v1, :cond_48

    .line 1503
    :try_start_24
    iget-object v3, p0, Lcom/android/server/BluetoothManagerService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Landroid/bluetooth/IBluetoothManagerCallback;

    invoke-interface {v3}, Landroid/bluetooth/IBluetoothManagerCallback;->onBluetoothServiceDown()V
    :try_end_2f
    .catch Landroid/os/RemoteException; {:try_start_24 .. :try_end_2f} :catch_30
    .catchall {:try_start_24 .. :try_end_2f} :catchall_4f

    .line 1506
    goto :goto_45

    .line 1504
    :catch_30
    move-exception v3

    .line 1505
    :try_start_31
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to call onBluetoothServiceDown() on callback #"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_45
    .catchall {:try_start_31 .. :try_end_45} :catchall_4f

    .line 1501
    :goto_45
    add-int/lit8 v2, v2, 0x1

    goto :goto_22

    .line 1509
    :cond_48
    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 1510
    nop

    .line 1511
    return-void

    .line 1509
    :catchall_4f
    move-exception v0

    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    throw v0
.end method

.method private sendBluetoothServiceUpCallback()V
    .registers 7

    .line 1480
    const-string v0, "BluetoothManagerService"

    :try_start_2
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v1

    .line 1481
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Broadcasting onBluetoothServiceUp() to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " receivers."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_21
    .catchall {:try_start_2 .. :try_end_21} :catchall_51

    .line 1482
    const/4 v2, 0x0

    :goto_22
    if-ge v2, v1, :cond_4a

    .line 1484
    :try_start_24
    iget-object v3, p0, Lcom/android/server/BluetoothManagerService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Landroid/bluetooth/IBluetoothManagerCallback;

    iget-object v4, p0, Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;

    invoke-interface {v3, v4}, Landroid/bluetooth/IBluetoothManagerCallback;->onBluetoothServiceUp(Landroid/bluetooth/IBluetooth;)V
    :try_end_31
    .catch Landroid/os/RemoteException; {:try_start_24 .. :try_end_31} :catch_32
    .catchall {:try_start_24 .. :try_end_31} :catchall_51

    .line 1487
    goto :goto_47

    .line 1485
    :catch_32
    move-exception v3

    .line 1486
    :try_start_33
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to call onBluetoothServiceUp() on callback #"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_47
    .catchall {:try_start_33 .. :try_end_47} :catchall_51

    .line 1482
    :goto_47
    add-int/lit8 v2, v2, 0x1

    goto :goto_22

    .line 1490
    :cond_4a
    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 1491
    nop

    .line 1492
    return-void

    .line 1490
    :catchall_51
    move-exception v0

    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    throw v0
.end method

.method private sendBluetoothStateCallback(Z)V
    .registers 8

    .line 1458
    const-string v0, "BluetoothManagerService"

    :try_start_2
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mStateChangeCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v1

    .line 1460
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Broadcasting onBluetoothStateChange("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ") to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " receivers."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_29
    .catchall {:try_start_2 .. :try_end_29} :catchall_57

    .line 1463
    const/4 v2, 0x0

    :goto_2a
    if-ge v2, v1, :cond_50

    .line 1465
    :try_start_2c
    iget-object v3, p0, Lcom/android/server/BluetoothManagerService;->mStateChangeCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Landroid/bluetooth/IBluetoothStateChangeCallback;

    invoke-interface {v3, p1}, Landroid/bluetooth/IBluetoothStateChangeCallback;->onBluetoothStateChange(Z)V
    :try_end_37
    .catch Landroid/os/RemoteException; {:try_start_2c .. :try_end_37} :catch_38
    .catchall {:try_start_2c .. :try_end_37} :catchall_57

    .line 1468
    goto :goto_4d

    .line 1466
    :catch_38
    move-exception v3

    .line 1467
    :try_start_39
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to call onBluetoothStateChange() on callback #"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4d
    .catchall {:try_start_39 .. :try_end_4d} :catchall_57

    .line 1463
    :goto_4d
    add-int/lit8 v2, v2, 0x1

    goto :goto_2a

    .line 1471
    :cond_50
    iget-object p1, p0, Lcom/android/server/BluetoothManagerService;->mStateChangeCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {p1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 1472
    nop

    .line 1473
    return-void

    .line 1471
    :catchall_57
    move-exception p1

    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mStateChangeCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    throw p1
.end method

.method private sendBrEdrDownCallback()V
    .registers 4

    .line 886
    const-string v0, "BluetoothManagerService"

    const-string v1, "Calling sendBrEdrDownCallback callbacks"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 889
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;

    if-nez v1, :cond_11

    .line 890
    const-string v1, "Bluetooth handle is null"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 891
    return-void

    .line 894
    :cond_11
    invoke-virtual {p0}, Lcom/android/server/BluetoothManagerService;->isBleAppPresent()Z

    move-result v1

    if-eqz v1, :cond_24

    .line 897
    :try_start_17
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mBluetoothGatt:Landroid/bluetooth/IBluetoothGatt;

    invoke-interface {v1}, Landroid/bluetooth/IBluetoothGatt;->unregAll()V
    :try_end_1c
    .catch Landroid/os/RemoteException; {:try_start_17 .. :try_end_1c} :catch_1d

    goto :goto_23

    .line 898
    :catch_1d
    move-exception v1

    .line 899
    const-string v2, "Unable to disconnect all apps."

    invoke-static {v0, v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 900
    :goto_23
    goto :goto_49

    .line 903
    :cond_24
    :try_start_24
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mBluetoothLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 904
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;

    if-eqz v1, :cond_3f

    .line 905
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;

    invoke-interface {v1}, Landroid/bluetooth/IBluetooth;->onBrEdrDown()V
    :try_end_36
    .catch Landroid/os/RemoteException; {:try_start_24 .. :try_end_36} :catch_39
    .catchall {:try_start_24 .. :try_end_36} :catchall_37

    goto :goto_3f

    .line 910
    :catchall_37
    move-exception v0

    goto :goto_4a

    .line 907
    :catch_39
    move-exception v1

    .line 908
    :try_start_3a
    const-string v2, "Call to onBrEdrDown() failed."

    invoke-static {v0, v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3f
    .catchall {:try_start_3a .. :try_end_3f} :catchall_37

    .line 910
    :cond_3f
    :goto_3f
    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mBluetoothLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 911
    nop

    .line 914
    :goto_49
    return-void

    .line 910
    :goto_4a
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mBluetoothLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    throw v0
.end method

.method private sendDisableMsg(ILjava/lang/String;)V
    .registers 5

    .line 2320
    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mHandler:Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->sendMessage(Landroid/os/Message;)Z

    .line 2321
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/BluetoothManagerService;->addActiveLog(ILjava/lang/String;Z)V

    .line 2322
    return-void
.end method

.method private sendEnableMsg(ZILjava/lang/String;)V
    .registers 7

    .line 2325
    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mHandler:Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v2, p1, v1}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->sendMessage(Landroid/os/Message;)Z

    .line 2326
    invoke-direct {p0, p2, p3, v2}, Lcom/android/server/BluetoothManagerService;->addActiveLog(ILjava/lang/String;Z)V

    .line 2327
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/android/server/BluetoothManagerService;->mLastEnabledTime:J

    .line 2328
    return-void
.end method

.method private startConsentUiIfNeeded(Ljava/lang/String;ILjava/lang/String;)Z
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1041
    invoke-direct {p0}, Lcom/android/server/BluetoothManagerService;->checkBluetoothPermissionWhenWirelessConsentRequired()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    .line 1042
    return v1

    .line 1046
    :cond_8
    :try_start_8
    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/high16 v2, 0x10000000

    .line 1049
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    .line 1047
    invoke-virtual {v0, p1, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 1050
    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    if-ne v0, p2, :cond_50

    .line 1055
    new-instance p2, Landroid/content/Intent;

    invoke-direct {p2, p3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1056
    const-string v0, "android.intent.extra.PACKAGE_NAME"

    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1057
    const/high16 p1, 0x10800000

    invoke-virtual {p2, p1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;
    :try_end_2b
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_8 .. :try_end_2b} :catch_6f

    .line 1060
    :try_start_2b
    iget-object p1, p0, Lcom/android/server/BluetoothManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p1, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_30
    .catch Landroid/content/ActivityNotFoundException; {:try_start_2b .. :try_end_30} :catch_33
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2b .. :try_end_30} :catch_6f

    .line 1065
    nop

    .line 1066
    const/4 p1, 0x1

    return p1

    .line 1061
    :catch_33
    move-exception p1

    .line 1063
    :try_start_34
    const-string p1, "BluetoothManagerService"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Intent to handle action "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " missing"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1064
    return v1

    .line 1051
    :cond_50
    new-instance p3, Ljava/lang/SecurityException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Package "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " not in uid "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p3
    :try_end_6f
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_34 .. :try_end_6f} :catch_6f

    .line 1067
    :catch_6f
    move-exception p1

    .line 1068
    new-instance p2, Landroid/os/RemoteException;

    invoke-virtual {p1}, Landroid/content/pm/PackageManager$NameNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method private storeNameAndAddress(Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    .line 601
    const-string v0, "BluetoothManagerService"

    if-eqz p1, :cond_27

    .line 602
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mContentResolver:Landroid/content/ContentResolver;

    const-string v2, "bluetooth_name"

    invoke-static {v1, v2, p1}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 603
    iput-object p1, p0, Lcom/android/server/BluetoothManagerService;->mName:Ljava/lang/String;

    .line 605
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Stored Bluetooth name: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/BluetoothManagerService;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {v3, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 610
    :cond_27
    if-eqz p2, :cond_4c

    .line 611
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mContentResolver:Landroid/content/ContentResolver;

    const-string v2, "bluetooth_address"

    invoke-static {v1, v2, p2}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 612
    iput-object p2, p0, Lcom/android/server/BluetoothManagerService;->mAddress:Ljava/lang/String;

    .line 614
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Stored Bluetoothaddress: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/BluetoothManagerService;->mContentResolver:Landroid/content/ContentResolver;

    .line 615
    invoke-static {v3, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 614
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 620
    :cond_4c
    if-eqz p1, :cond_58

    if-eqz p2, :cond_58

    .line 621
    iget-object p1, p0, Lcom/android/server/BluetoothManagerService;->mContentResolver:Landroid/content/ContentResolver;

    const/4 p2, 0x1

    const-string v0, "bluetooth_addr_valid"

    invoke-static {p1, v0, p2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 623
    :cond_58
    return-void
.end method

.method private supportBluetoothPersistedState()Z
    .registers 3

    .line 508
    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x11100d2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method

.method private static timeToLog(J)Ljava/lang/CharSequence;
    .registers 3

    .line 174
    const-string v0, "MM-dd HH:mm:ss"

    invoke-static {v0, p0, p1}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method private unbindAllBluetoothProfileServices()V
    .registers 8

    .line 1215
    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mProfileServices:Ljava/util/Map;

    monitor-enter v0

    .line 1216
    :try_start_3
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mProfileServices:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_44

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 1217
    iget-object v3, p0, Lcom/android/server/BluetoothManagerService;->mProfileServices:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;
    :try_end_21
    .catchall {:try_start_3 .. :try_end_21} :catchall_4b

    .line 1219
    :try_start_21
    iget-object v3, p0, Lcom/android/server/BluetoothManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_26
    .catch Ljava/lang/IllegalArgumentException; {:try_start_21 .. :try_end_26} :catch_27
    .catchall {:try_start_21 .. :try_end_26} :catchall_4b

    .line 1222
    goto :goto_40

    .line 1220
    :catch_27
    move-exception v3

    .line 1221
    :try_start_28
    const-string v4, "BluetoothManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unable to unbind service with intent: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v2, Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;->mIntent:Landroid/content/Intent;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1223
    :goto_40
    invoke-static {v2}, Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;->access$1600(Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;)V

    .line 1224
    goto :goto_d

    .line 1225
    :cond_44
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mProfileServices:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 1226
    monitor-exit v0

    .line 1227
    return-void

    .line 1226
    :catchall_4b
    move-exception v1

    monitor-exit v0
    :try_end_4d
    .catchall {:try_start_28 .. :try_end_4d} :catchall_4b

    throw v1
.end method

.method private updateOppLauncherComponentState(IZ)V
    .registers 6

    .line 2425
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.android.bluetooth"

    const-string v2, "com.android.bluetooth.opp.BluetoothOppLauncherActivity"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2428
    if-eqz p2, :cond_d

    const/4 p2, 0x2

    goto :goto_e

    .line 2429
    :cond_d
    const/4 p2, 0x0

    :goto_e
    nop

    .line 2431
    :try_start_f
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v1

    .line 2432
    const/4 v2, 0x1

    invoke-interface {v1, v0, p2, v2, p1}, Landroid/content/pm/IPackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;III)V
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_17} :catch_18

    .line 2436
    goto :goto_19

    .line 2434
    :catch_18
    move-exception p1

    .line 2437
    :goto_19
    return-void
.end method

.method private waitForState(Ljava/util/Set;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;)Z"
        }
    .end annotation

    .line 2296
    const/4 v0, 0x0

    move v1, v0

    .line 2297
    :goto_2
    const/16 v2, 0xa

    const-string v3, "BluetoothManagerService"

    if-ge v1, v2, :cond_60

    .line 2299
    :try_start_8
    iget-object v2, p0, Lcom/android/server/BluetoothManagerService;->mBluetoothLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 2300
    iget-object v2, p0, Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;

    if-nez v2, :cond_16

    .line 2310
    goto :goto_4c

    .line 2303
    :cond_16
    iget-object v2, p0, Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;

    invoke-interface {v2}, Landroid/bluetooth/IBluetooth;->getState()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2
    :try_end_24
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_24} :catch_46
    .catchall {:try_start_8 .. :try_end_24} :catchall_44

    if-eqz v2, :cond_32

    .line 2304
    nop

    .line 2310
    iget-object p1, p0, Lcom/android/server/BluetoothManagerService;->mBluetoothLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 2304
    const/4 p1, 0x1

    return p1

    .line 2310
    :cond_32
    iget-object v2, p0, Lcom/android/server/BluetoothManagerService;->mBluetoothLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 2311
    nop

    .line 2312
    const-wide/16 v2, 0x12c

    invoke-static {v2, v3}, Landroid/os/SystemClock;->sleep(J)V

    .line 2313
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 2310
    :catchall_44
    move-exception p1

    goto :goto_56

    .line 2306
    :catch_46
    move-exception v1

    .line 2307
    :try_start_47
    const-string v2, "getState()"

    invoke-static {v3, v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4c
    .catchall {:try_start_47 .. :try_end_4c} :catchall_44

    .line 2310
    :goto_4c
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mBluetoothLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    goto :goto_60

    :goto_56
    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mBluetoothLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    throw p1

    .line 2315
    :cond_60
    :goto_60
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "waitForState "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " time out"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2316
    return v0
.end method


# virtual methods
.method public bindBluetoothProfileService(ILandroid/bluetooth/IBluetoothProfileServiceConnection;)Z
    .registers 9

    .line 1155
    iget-boolean v0, p0, Lcom/android/server/BluetoothManagerService;->mEnable:Z

    const/4 v1, 0x0

    if-nez v0, :cond_21

    .line 1157
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Trying to bind to profile: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", while Bluetooth was disabled"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "BluetoothManagerService"

    invoke-static {p2, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1160
    return v1

    .line 1162
    :cond_21
    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mProfileServices:Ljava/util/Map;

    monitor-enter v0

    .line 1163
    :try_start_24
    iget-object v2, p0, Lcom/android/server/BluetoothManagerService;->mProfileServices:Ljava/util/Map;

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;

    .line 1164
    const/4 v3, 0x1

    if-nez v2, :cond_70

    .line 1166
    const-string v2, "BluetoothManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Creating new ProfileServiceConnections object for profile: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1170
    if-eq p1, v3, :cond_4e

    .line 1171
    monitor-exit v0

    return v1

    .line 1174
    :cond_4e
    new-instance v2, Landroid/content/Intent;

    const-class v4, Landroid/bluetooth/IBluetoothHeadset;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1175
    new-instance v4, Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;

    invoke-direct {v4, p0, v2}, Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;-><init>(Lcom/android/server/BluetoothManagerService;Landroid/content/Intent;)V

    .line 1176
    invoke-static {v4}, Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;->access$1300(Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;)Z

    move-result v2

    if-nez v2, :cond_66

    .line 1177
    monitor-exit v0

    return v1

    .line 1180
    :cond_66
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mProfileServices:Ljava/util/Map;

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v1, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1182
    :cond_70
    monitor-exit v0
    :try_end_71
    .catchall {:try_start_24 .. :try_end_71} :catchall_85

    .line 1185
    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mHandler:Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    const/16 v1, 0x190

    invoke-virtual {v0, v1}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1186
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 1187
    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1188
    iget-object p1, p0, Lcom/android/server/BluetoothManagerService;->mHandler:Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    const-wide/16 v1, 0x64

    invoke-virtual {p1, v0, v1, v2}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1189
    return v3

    .line 1182
    :catchall_85
    move-exception p1

    :try_start_86
    monitor-exit v0
    :try_end_87
    .catchall {:try_start_86 .. :try_end_87} :catchall_85

    throw p1
.end method

.method public disable(Ljava/lang/String;Z)Z
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1001
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1002
    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/16 v4, 0x3e8

    if-ne v1, v4, :cond_10

    move v1, v2

    goto :goto_11

    :cond_10
    move v1, v3

    .line 1004
    :goto_11
    if-nez v1, :cond_40

    .line 1006
    invoke-direct {p0, v0, p1}, Lcom/android/server/BluetoothManagerService;->checkPackage(ILjava/lang/String;)V

    .line 1008
    invoke-direct {p0}, Lcom/android/server/BluetoothManagerService;->checkIfCallerIsForegroundUser()Z

    move-result v1

    if-nez v1, :cond_24

    .line 1009
    const-string p1, "BluetoothManagerService"

    const-string p2, "disable(): not allowed for non-active and non system user"

    invoke-static {p1, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1010
    return v3

    .line 1013
    :cond_24
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mContext:Landroid/content/Context;

    const-string v4, "android.permission.BLUETOOTH_ADMIN"

    const-string v5, "Need BLUETOOTH ADMIN permission"

    invoke-virtual {v1, v4, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1016
    invoke-virtual {p0}, Lcom/android/server/BluetoothManagerService;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_40

    iget-boolean v1, p0, Lcom/android/server/BluetoothManagerService;->mWirelessConsentRequired:Z

    if-eqz v1, :cond_40

    const-string v1, "android.bluetooth.adapter.action.REQUEST_DISABLE"

    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/BluetoothManagerService;->startConsentUiIfNeeded(Ljava/lang/String;ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_40

    .line 1018
    return v3

    .line 1023
    :cond_40
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "disable(): mBluetooth = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " mBinding = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/BluetoothManagerService;->mBinding:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BluetoothManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1026
    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mReceiver:Landroid/content/BroadcastReceiver;

    monitor-enter v0

    .line 1027
    :try_start_65
    invoke-direct {p0}, Lcom/android/server/BluetoothManagerService;->isBluetoothPersistedStateOnAirplane()Z

    move-result v1

    if-nez v1, :cond_72

    .line 1028
    if-eqz p2, :cond_70

    .line 1029
    invoke-direct {p0, v3}, Lcom/android/server/BluetoothManagerService;->persistBluetoothSetting(I)V

    .line 1031
    :cond_70
    iput-boolean v3, p0, Lcom/android/server/BluetoothManagerService;->mEnableExternal:Z

    .line 1033
    :cond_72
    invoke-direct {p0, v2, p1}, Lcom/android/server/BluetoothManagerService;->sendDisableMsg(ILjava/lang/String;)V

    .line 1035
    monitor-exit v0

    .line 1036
    return v2

    .line 1035
    :catchall_77
    move-exception p1

    monitor-exit v0
    :try_end_79
    .catchall {:try_start_65 .. :try_end_79} :catchall_77

    throw p1
.end method

.method doBind(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z
    .registers 7

    .line 2149
    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->resolveSystemService(Landroid/content/pm/PackageManager;I)Landroid/content/ComponentName;

    move-result-object v0

    .line 2150
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 2151
    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result p2

    if-nez p2, :cond_19

    goto :goto_1b

    .line 2155
    :cond_19
    const/4 p1, 0x1

    return p1

    .line 2152
    :cond_1b
    :goto_1b
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Fail to bind to: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "BluetoothManagerService"

    invoke-static {p2, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2153
    return v1
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 21

    .line 2445
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    iget-object v3, v0, Lcom/android/server/BluetoothManagerService;->mContext:Landroid/content/Context;

    const-string v4, "BluetoothManagerService"

    invoke-static {v3, v4, v1}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v3

    if-nez v3, :cond_11

    .line 2446
    return-void

    .line 2448
    :cond_11
    const/4 v3, 0x0

    .line 2450
    array-length v4, v2

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-lez v4, :cond_23

    aget-object v4, v2, v5

    const-string v7, "--proto"

    invoke-virtual {v4, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_23

    move v4, v6

    goto :goto_24

    :cond_23
    move v4, v5

    .line 2452
    :goto_24
    if-nez v4, :cond_1ef

    .line 2453
    const-string v7, "Bluetooth Status"

    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2454
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "  enabled: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/BluetoothManagerService;->isEnabled()Z

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2455
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "  state: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, v0, Lcom/android/server/BluetoothManagerService;->mState:I

    invoke-static {v8}, Landroid/bluetooth/BluetoothAdapter;->nameForState(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2456
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "  address: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v0, Lcom/android/server/BluetoothManagerService;->mAddress:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2457
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "  name: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v0, Lcom/android/server/BluetoothManagerService;->mName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2458
    iget-boolean v7, v0, Lcom/android/server/BluetoothManagerService;->mEnable:Z

    if-eqz v7, :cond_e5

    .line 2459
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    iget-wide v9, v0, Lcom/android/server/BluetoothManagerService;->mLastEnabledTime:J

    sub-long/2addr v7, v9

    .line 2460
    sget-object v9, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v10, 0x4

    new-array v10, v10, [Ljava/lang/Object;

    const-wide/32 v11, 0x36ee80

    div-long v11, v7, v11

    long-to-int v11, v11

    .line 2461
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v10, v5

    const-wide/32 v11, 0xea60

    div-long v11, v7, v11

    const-wide/16 v13, 0x3c

    rem-long/2addr v11, v13

    long-to-int v5, v11

    .line 2462
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v10, v6

    const/4 v5, 0x2

    const-wide/16 v11, 0x3e8

    div-long v15, v7, v11

    rem-long v13, v15, v13

    long-to-int v13, v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v10, v5

    const/4 v5, 0x3

    rem-long/2addr v7, v11

    long-to-int v7, v7

    .line 2463
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v10, v5

    .line 2460
    const-string v5, "%02d:%02d:%02d.%03d"

    invoke-static {v9, v5, v10}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 2464
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "  time since enabled: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2467
    :cond_e5
    iget-object v5, v0, Lcom/android/server/BluetoothManagerService;->mActiveLogs:Ljava/util/LinkedList;

    invoke-virtual {v5}, Ljava/util/LinkedList;->size()I

    move-result v5

    const-string v7, "  "

    if-nez v5, :cond_f5

    .line 2468
    const-string v5, "\nBluetooth never enabled!"

    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_11f

    .line 2470
    :cond_f5
    const-string v5, "\nEnable log:"

    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2471
    iget-object v5, v0, Lcom/android/server/BluetoothManagerService;->mActiveLogs:Ljava/util/LinkedList;

    invoke-virtual {v5}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_100
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_11f

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/BluetoothManagerService$ActiveLog;

    .line 2472
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2473
    goto :goto_100

    .line 2476
    :cond_11f
    :goto_11f
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "\nBluetooth crashed "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, v0, Lcom/android/server/BluetoothManagerService;->mCrashes:I

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " time"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2477
    iget v8, v0, Lcom/android/server/BluetoothManagerService;->mCrashes:I

    const-string/jumbo v9, "s"

    const-string v10, ""

    if-ne v8, v6, :cond_13e

    move-object v8, v10

    goto :goto_13f

    :cond_13e
    move-object v8, v9

    :goto_13f
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 2476
    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2478
    iget v5, v0, Lcom/android/server/BluetoothManagerService;->mCrashes:I

    const/16 v8, 0x64

    if-ne v5, v8, :cond_154

    .line 2479
    const-string v5, "(last 100)"

    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2481
    :cond_154
    iget-object v5, v0, Lcom/android/server/BluetoothManagerService;->mCrashTimestamps:Ljava/util/LinkedList;

    invoke-virtual {v5}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_15a
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_181

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Long;

    .line 2482
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    invoke-static {v12, v13}, Lcom/android/server/BluetoothManagerService;->timeToLog(J)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2483
    goto :goto_15a

    .line 2485
    :cond_181
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "\n"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v0, Lcom/android/server/BluetoothManagerService;->mBleApps:Ljava/util/Map;

    invoke-interface {v8}, Ljava/util/Map;->size()I

    move-result v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " BLE app"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v0, Lcom/android/server/BluetoothManagerService;->mBleApps:Ljava/util/Map;

    invoke-interface {v8}, Ljava/util/Map;->size()I

    move-result v8

    if-ne v8, v6, :cond_1a2

    move-object v9, v10

    :cond_1a2
    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v6, "registered"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2487
    iget-object v5, v0, Lcom/android/server/BluetoothManagerService;->mBleApps:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1bc
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1df

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/BluetoothManagerService$ClientDeathRecipient;

    .line 2488
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Lcom/android/server/BluetoothManagerService$ClientDeathRecipient;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2489
    goto :goto_1bc

    .line 2491
    :cond_1df
    invoke-virtual {v1, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2492
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->flush()V

    .line 2493
    array-length v5, v2

    if-nez v5, :cond_1ef

    .line 2495
    nop

    .line 2496
    const-string v2, "--print"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    .line 2500
    :cond_1ef
    iget-object v0, v0, Lcom/android/server/BluetoothManagerService;->mBluetoothBinder:Landroid/os/IBinder;

    if-nez v0, :cond_1f6

    .line 2501
    const-string v3, "Bluetooth Service not connected"

    goto :goto_1ff

    .line 2504
    :cond_1f6
    move-object/from16 v5, p1

    :try_start_1f8
    invoke-interface {v0, v5, v2}, Landroid/os/IBinder;->dump(Ljava/io/FileDescriptor;[Ljava/lang/String;)V
    :try_end_1fb
    .catch Landroid/os/RemoteException; {:try_start_1f8 .. :try_end_1fb} :catch_1fc

    .line 2507
    goto :goto_1ff

    .line 2505
    :catch_1fc
    move-exception v0

    .line 2506
    const-string v3, "RemoteException while dumping Bluetooth Service"

    .line 2509
    :goto_1ff
    if-eqz v3, :cond_207

    .line 2511
    if-eqz v4, :cond_204

    .line 2512
    return-void

    .line 2514
    :cond_204
    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2516
    :cond_207
    return-void
.end method

.method public enable(Ljava/lang/String;)Z
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 954
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 955
    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/16 v4, 0x3e8

    if-ne v1, v4, :cond_10

    move v1, v2

    goto :goto_11

    :cond_10
    move v1, v3

    .line 957
    :goto_11
    invoke-direct {p0}, Lcom/android/server/BluetoothManagerService;->isBluetoothDisallowed()Z

    move-result v4

    if-eqz v4, :cond_1f

    .line 959
    const-string p1, "BluetoothManagerService"

    const-string v0, "enable(): not enabling - bluetooth disallowed"

    invoke-static {p1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 961
    return v3

    .line 964
    :cond_1f
    if-nez v1, :cond_4e

    .line 966
    invoke-direct {p0, v0, p1}, Lcom/android/server/BluetoothManagerService;->checkPackage(ILjava/lang/String;)V

    .line 968
    invoke-direct {p0}, Lcom/android/server/BluetoothManagerService;->checkIfCallerIsForegroundUser()Z

    move-result v1

    if-nez v1, :cond_32

    .line 969
    const-string p1, "BluetoothManagerService"

    const-string v0, "enable(): not allowed for non-active and non system user"

    invoke-static {p1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 970
    return v3

    .line 973
    :cond_32
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mContext:Landroid/content/Context;

    const-string v4, "android.permission.BLUETOOTH_ADMIN"

    const-string v5, "Need BLUETOOTH ADMIN permission"

    invoke-virtual {v1, v4, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 976
    invoke-virtual {p0}, Lcom/android/server/BluetoothManagerService;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_4e

    iget-boolean v1, p0, Lcom/android/server/BluetoothManagerService;->mWirelessConsentRequired:Z

    if-eqz v1, :cond_4e

    const-string v1, "android.bluetooth.adapter.action.REQUEST_ENABLE"

    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/BluetoothManagerService;->startConsentUiIfNeeded(Ljava/lang/String;ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4e

    .line 978
    return v3

    .line 983
    :cond_4e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "enable("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "):  mBluetooth ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " mBinding = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/BluetoothManagerService;->mBinding:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " mState = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/BluetoothManagerService;->mState:I

    .line 984
    invoke-static {v1}, Landroid/bluetooth/BluetoothAdapter;->nameForState(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 983
    const-string v1, "BluetoothManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 987
    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mReceiver:Landroid/content/BroadcastReceiver;

    monitor-enter v0

    .line 988
    :try_start_89
    iput-boolean v3, p0, Lcom/android/server/BluetoothManagerService;->mQuietEnableExternal:Z

    .line 989
    iput-boolean v2, p0, Lcom/android/server/BluetoothManagerService;->mEnableExternal:Z

    .line 991
    invoke-direct {p0, v3, v2, p1}, Lcom/android/server/BluetoothManagerService;->sendEnableMsg(ZILjava/lang/String;)V

    .line 993
    monitor-exit v0
    :try_end_91
    .catchall {:try_start_89 .. :try_end_91} :catchall_99

    .line 995
    const-string p1, "BluetoothManagerService"

    const-string v0, "enable returning"

    invoke-static {p1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 997
    return v2

    .line 993
    :catchall_99
    move-exception p1

    :try_start_9a
    monitor-exit v0
    :try_end_9b
    .catchall {:try_start_9a .. :try_end_9b} :catchall_99

    throw p1
.end method

.method public enableNoAutoConnect(Ljava/lang/String;)Z
    .registers 7

    .line 917
    invoke-direct {p0}, Lcom/android/server/BluetoothManagerService;->isBluetoothDisallowed()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_f

    .line 919
    const-string p1, "BluetoothManagerService"

    const-string v0, "enableNoAutoConnect(): not enabling - bluetooth disallowed"

    invoke-static {p1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 921
    return v1

    .line 925
    :cond_f
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 926
    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v2

    const/16 v3, 0x3e8

    const/4 v4, 0x1

    if-ne v2, v3, :cond_1d

    move v1, v4

    .line 927
    :cond_1d
    if-nez v1, :cond_22

    .line 928
    invoke-direct {p0, v0, p1}, Lcom/android/server/BluetoothManagerService;->checkPackage(ILjava/lang/String;)V

    .line 931
    :cond_22
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.BLUETOOTH_ADMIN"

    const-string v3, "Need BLUETOOTH ADMIN permission"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 935
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enableNoAutoConnect():  mBluetooth ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " mBinding = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/BluetoothManagerService;->mBinding:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "BluetoothManagerService"

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 938
    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    .line 940
    const/16 v1, 0x403

    if-ne v0, v1, :cond_64

    .line 944
    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mReceiver:Landroid/content/BroadcastReceiver;

    monitor-enter v0

    .line 945
    :try_start_58
    iput-boolean v4, p0, Lcom/android/server/BluetoothManagerService;->mQuietEnableExternal:Z

    .line 946
    iput-boolean v4, p0, Lcom/android/server/BluetoothManagerService;->mEnableExternal:Z

    .line 947
    invoke-direct {p0, v4, v4, p1}, Lcom/android/server/BluetoothManagerService;->sendEnableMsg(ZILjava/lang/String;)V

    .line 949
    monitor-exit v0

    .line 950
    return v4

    .line 949
    :catchall_61
    move-exception p1

    monitor-exit v0
    :try_end_63
    .catchall {:try_start_58 .. :try_end_63} :catchall_61

    throw p1

    .line 941
    :cond_64
    new-instance p1, Ljava/lang/SecurityException;

    const-string/jumbo v0, "no permission to enable Bluetooth quietly"

    invoke-direct {p1, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getAddress()Ljava/lang/String;
    .registers 4

    .line 1514
    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BLUETOOTH"

    const-string v2, "Need BLUETOOTH permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1516
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const-string v1, "BluetoothManagerService"

    const/16 v2, 0x3e8

    if-eq v0, v2, :cond_20

    invoke-direct {p0}, Lcom/android/server/BluetoothManagerService;->checkIfCallerIsForegroundUser()Z

    move-result v0

    if-nez v0, :cond_20

    .line 1517
    const-string v0, "getAddress(): not allowed for non-active and non system user"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1518
    const/4 v0, 0x0

    return-object v0

    .line 1521
    :cond_20
    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.LOCAL_MAC_ADDRESS"

    invoke-virtual {v0, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_2d

    .line 1523
    const-string v0, "02:00:00:00:00:00"

    return-object v0

    .line 1527
    :cond_2d
    :try_start_2d
    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mBluetoothLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 1528
    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;

    if-eqz v0, :cond_52

    .line 1529
    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;

    invoke-interface {v0}, Landroid/bluetooth/IBluetooth;->getAddress()Ljava/lang/String;

    move-result-object v0
    :try_end_40
    .catch Landroid/os/RemoteException; {:try_start_2d .. :try_end_40} :catch_4c
    .catchall {:try_start_2d .. :try_end_40} :catchall_4a

    .line 1536
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mBluetoothLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 1529
    return-object v0

    .line 1536
    :catchall_4a
    move-exception v0

    goto :goto_5f

    .line 1531
    :catch_4c
    move-exception v0

    .line 1532
    :try_start_4d
    const-string v2, "getAddress(): Unable to retrieve address remotely. Returning cached address"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_52
    .catchall {:try_start_4d .. :try_end_52} :catchall_4a

    .line 1536
    :cond_52
    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mBluetoothLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 1537
    nop

    .line 1542
    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mAddress:Ljava/lang/String;

    return-object v0

    .line 1536
    :goto_5f
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mBluetoothLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    throw v0
.end method

.method public getBluetoothGatt()Landroid/bluetooth/IBluetoothGatt;
    .registers 2

    .line 1149
    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mBluetoothGatt:Landroid/bluetooth/IBluetoothGatt;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 4

    .line 1546
    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BLUETOOTH"

    const-string v2, "Need BLUETOOTH permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1548
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const-string v1, "BluetoothManagerService"

    const/16 v2, 0x3e8

    if-eq v0, v2, :cond_20

    invoke-direct {p0}, Lcom/android/server/BluetoothManagerService;->checkIfCallerIsForegroundUser()Z

    move-result v0

    if-nez v0, :cond_20

    .line 1549
    const-string v0, "getName(): not allowed for non-active and non system user"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1550
    const/4 v0, 0x0

    return-object v0

    .line 1554
    :cond_20
    :try_start_20
    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mBluetoothLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 1555
    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;

    if-eqz v0, :cond_45

    .line 1556
    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;

    invoke-interface {v0}, Landroid/bluetooth/IBluetooth;->getName()Ljava/lang/String;

    move-result-object v0
    :try_end_33
    .catch Landroid/os/RemoteException; {:try_start_20 .. :try_end_33} :catch_3f
    .catchall {:try_start_20 .. :try_end_33} :catchall_3d

    .line 1561
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mBluetoothLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 1556
    return-object v0

    .line 1561
    :catchall_3d
    move-exception v0

    goto :goto_52

    .line 1558
    :catch_3f
    move-exception v0

    .line 1559
    :try_start_40
    const-string v2, "getName(): Unable to retrieve name remotely. Returning cached name"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_45
    .catchall {:try_start_40 .. :try_end_45} :catchall_3d

    .line 1561
    :cond_45
    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mBluetoothLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 1562
    nop

    .line 1567
    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mName:Ljava/lang/String;

    return-object v0

    .line 1561
    :goto_52
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mBluetoothLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    throw v0
.end method

.method public getState()I
    .registers 5

    .line 690
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0xa

    const-string v2, "BluetoothManagerService"

    const/16 v3, 0x3e8

    if-eq v0, v3, :cond_18

    invoke-direct {p0}, Lcom/android/server/BluetoothManagerService;->checkIfCallerIsForegroundUser()Z

    move-result v0

    if-nez v0, :cond_18

    .line 691
    const-string v0, "getState(): report OFF for non-active and non system user"

    invoke-static {v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 692
    return v1

    .line 696
    :cond_18
    :try_start_18
    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mBluetoothLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 697
    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;

    if-eqz v0, :cond_3d

    .line 698
    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;

    invoke-interface {v0}, Landroid/bluetooth/IBluetooth;->getState()I

    move-result v0
    :try_end_2b
    .catch Landroid/os/RemoteException; {:try_start_18 .. :try_end_2b} :catch_37
    .catchall {:try_start_18 .. :try_end_2b} :catchall_35

    .line 703
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mBluetoothLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 698
    return v0

    .line 703
    :catchall_35
    move-exception v0

    goto :goto_48

    .line 700
    :catch_37
    move-exception v0

    .line 701
    :try_start_38
    const-string v3, "getState()"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3d
    .catchall {:try_start_38 .. :try_end_3d} :catchall_35

    .line 703
    :cond_3d
    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mBluetoothLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 704
    nop

    .line 705
    return v1

    .line 703
    :goto_48
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mBluetoothLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    throw v0
.end method

.method public handleOnBootPhase()V
    .registers 4

    .line 1235
    const-string v0, "BluetoothManagerService"

    const-string v1, "Bluetooth boot completed"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1237
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mContext:Landroid/content/Context;

    const-class v2, Landroid/app/AppOpsManager;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AppOpsManager;

    iput-object v1, p0, Lcom/android/server/BluetoothManagerService;->mAppOps:Landroid/app/AppOpsManager;

    .line 1238
    const-class v1, Landroid/os/UserManagerInternal;

    .line 1239
    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserManagerInternal;

    .line 1240
    iget-object v2, p0, Lcom/android/server/BluetoothManagerService;->mUserRestrictionsListener:Landroid/os/UserManagerInternal$UserRestrictionsListener;

    invoke-virtual {v1, v2}, Landroid/os/UserManagerInternal;->addUserRestrictionsListener(Landroid/os/UserManagerInternal$UserRestrictionsListener;)V

    .line 1241
    invoke-direct {p0}, Lcom/android/server/BluetoothManagerService;->isBluetoothDisallowed()Z

    move-result v1

    .line 1242
    if-eqz v1, :cond_27

    .line 1243
    return-void

    .line 1245
    :cond_27
    iget-boolean v1, p0, Lcom/android/server/BluetoothManagerService;->mEnableExternal:Z

    if-eqz v1, :cond_43

    invoke-direct {p0}, Lcom/android/server/BluetoothManagerService;->isBluetoothPersistedStateOnBluetooth()Z

    move-result v1

    if-eqz v1, :cond_43

    .line 1247
    const-string v1, "Auto-enabling Bluetooth."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1249
    iget-boolean v0, p0, Lcom/android/server/BluetoothManagerService;->mQuietEnableExternal:Z

    const/4 v1, 0x6

    iget-object v2, p0, Lcom/android/server/BluetoothManagerService;->mContext:Landroid/content/Context;

    .line 1251
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 1249
    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/BluetoothManagerService;->sendEnableMsg(ZILjava/lang/String;)V

    goto :goto_5b

    .line 1252
    :cond_43
    invoke-direct {p0}, Lcom/android/server/BluetoothManagerService;->isNameAndAddressSet()Z

    move-result v1

    if-nez v1, :cond_5b

    .line 1254
    const-string v1, "Getting adapter name and address"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1256
    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mHandler:Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    const/16 v1, 0xc8

    invoke-virtual {v0, v1}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1257
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mHandler:Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    invoke-virtual {v1, v0}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1259
    :cond_5b
    :goto_5b
    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mBluetoothAirplaneModeListener:Lcom/android/server/BluetoothAirplaneModeListener;

    if-eqz v0, :cond_69

    .line 1260
    new-instance v1, Lcom/android/server/BluetoothAirplaneModeListener$AirplaneModeHelper;

    iget-object v2, p0, Lcom/android/server/BluetoothManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/server/BluetoothAirplaneModeListener$AirplaneModeHelper;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/android/server/BluetoothAirplaneModeListener;->start(Lcom/android/server/BluetoothAirplaneModeListener$AirplaneModeHelper;)V

    .line 1263
    :cond_69
    return-void
.end method

.method public handleOnSwitchUser(I)V
    .registers 5

    .line 1270
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "User "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " switched"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BluetoothManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1272
    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mHandler:Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    const/16 v1, 0x12c

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 1273
    return-void
.end method

.method public handleOnUnlockUser(I)V
    .registers 5

    .line 1280
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "User "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " unlocked"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BluetoothManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1282
    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mHandler:Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    const/16 v1, 0x12d

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 1283
    return-void
.end method

.method public isBleAppPresent()Z
    .registers 3

    .line 850
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isBleAppPresent() count: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mBleApps:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BluetoothManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 852
    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mBleApps:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_26

    const/4 v0, 0x1

    goto :goto_27

    :cond_26
    const/4 v0, 0x0

    :goto_27
    return v0
.end method

.method public isBleScanAlwaysAvailable()Z
    .registers 4

    .line 737
    invoke-direct {p0}, Lcom/android/server/BluetoothManagerService;->isAirplaneModeOn()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_c

    iget-boolean v0, p0, Lcom/android/server/BluetoothManagerService;->mEnable:Z

    if-nez v0, :cond_c

    .line 738
    return v1

    .line 741
    :cond_c
    :try_start_c
    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mContentResolver:Landroid/content/ContentResolver;

    const-string v2, "ble_scan_always_enabled"

    invoke-static {v0, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v0
    :try_end_14
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_c .. :try_end_14} :catch_18

    if-eqz v0, :cond_17

    const/4 v1, 0x1

    :cond_17
    return v1

    .line 743
    :catch_18
    move-exception v0

    .line 745
    return v1
.end method

.method public isEnabled()Z
    .registers 5

    .line 671
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/4 v1, 0x0

    const-string v2, "BluetoothManagerService"

    const/16 v3, 0x3e8

    if-eq v0, v3, :cond_17

    invoke-direct {p0}, Lcom/android/server/BluetoothManagerService;->checkIfCallerIsForegroundUser()Z

    move-result v0

    if-nez v0, :cond_17

    .line 672
    const-string v0, "isEnabled(): not allowed for non-active and non system user"

    invoke-static {v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 673
    return v1

    .line 677
    :cond_17
    :try_start_17
    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mBluetoothLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 678
    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;

    if-eqz v0, :cond_3c

    .line 679
    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;

    invoke-interface {v0}, Landroid/bluetooth/IBluetooth;->isEnabled()Z

    move-result v0
    :try_end_2a
    .catch Landroid/os/RemoteException; {:try_start_17 .. :try_end_2a} :catch_36
    .catchall {:try_start_17 .. :try_end_2a} :catchall_34

    .line 684
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mBluetoothLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 679
    return v0

    .line 684
    :catchall_34
    move-exception v0

    goto :goto_47

    .line 681
    :catch_36
    move-exception v0

    .line 682
    :try_start_37
    const-string v3, "isEnabled()"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3c
    .catchall {:try_start_37 .. :try_end_3c} :catchall_34

    .line 684
    :cond_3c
    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mBluetoothLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 685
    nop

    .line 686
    return v1

    .line 684
    :goto_47
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mBluetoothLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    throw v0
.end method

.method public isHearingAidProfileSupported()Z
    .registers 2

    .line 750
    iget-boolean v0, p0, Lcom/android/server/BluetoothManagerService;->mIsHearingAidProfileSupported:Z

    return v0
.end method

.method public onAirplaneModeChanged()V
    .registers 6

    .line 309
    monitor-enter p0

    .line 310
    :try_start_1
    invoke-direct {p0}, Lcom/android/server/BluetoothManagerService;->isBluetoothPersistedStateOn()Z

    move-result v0

    const/4 v1, 0x2

    if-eqz v0, :cond_16

    .line 311
    invoke-direct {p0}, Lcom/android/server/BluetoothManagerService;->isAirplaneModeOn()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 312
    invoke-direct {p0, v1}, Lcom/android/server/BluetoothManagerService;->persistBluetoothSetting(I)V

    goto :goto_16

    .line 314
    :cond_12
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/server/BluetoothManagerService;->persistBluetoothSetting(I)V
    :try_end_16
    .catchall {:try_start_1 .. :try_end_16} :catchall_ec

    .line 318
    :cond_16
    :goto_16
    const/16 v0, 0xa

    .line 320
    :try_start_18
    iget-object v2, p0, Lcom/android/server/BluetoothManagerService;->mBluetoothLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 321
    iget-object v2, p0, Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;

    if-eqz v2, :cond_2b

    .line 322
    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;

    invoke-interface {v0}, Landroid/bluetooth/IBluetooth;->getState()I

    move-result v0
    :try_end_2b
    .catch Landroid/os/RemoteException; {:try_start_18 .. :try_end_2b} :catch_cf
    .catchall {:try_start_18 .. :try_end_2b} :catchall_cd

    .line 328
    :cond_2b
    :try_start_2b
    iget-object v2, p0, Lcom/android/server/BluetoothManagerService;->mBluetoothLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 329
    nop

    .line 331
    const-string v2, "BluetoothManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Airplane Mode change - current state:  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 332
    invoke-static {v0}, Landroid/bluetooth/BluetoothAdapter;->nameForState(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", isAirplaneModeOn()="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 333
    invoke-direct {p0}, Lcom/android/server/BluetoothManagerService;->isAirplaneModeOn()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 331
    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 335
    invoke-direct {p0}, Lcom/android/server/BluetoothManagerService;->isAirplaneModeOn()Z

    move-result v2

    if-eqz v2, :cond_bc

    .line 337
    invoke-direct {p0}, Lcom/android/server/BluetoothManagerService;->clearBleApps()V
    :try_end_64
    .catchall {:try_start_2b .. :try_end_64} :catchall_ec

    .line 340
    const/16 v2, 0xf

    if-ne v0, v2, :cond_ae

    .line 342
    :try_start_68
    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mBluetoothLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 343
    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;

    if-eqz v0, :cond_88

    .line 344
    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mContext:Landroid/content/Context;

    .line 346
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 344
    const/4 v2, 0x0

    invoke-direct {p0, v1, v0, v2}, Lcom/android/server/BluetoothManagerService;->addActiveLog(ILjava/lang/String;Z)V

    .line 347
    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;

    invoke-interface {v0}, Landroid/bluetooth/IBluetooth;->onBrEdrDown()V

    .line 348
    iput-boolean v2, p0, Lcom/android/server/BluetoothManagerService;->mEnable:Z

    .line 349
    iput-boolean v2, p0, Lcom/android/server/BluetoothManagerService;->mEnableExternal:Z
    :try_end_88
    .catch Landroid/os/RemoteException; {:try_start_68 .. :try_end_88} :catch_91
    .catchall {:try_start_68 .. :try_end_88} :catchall_8f

    .line 354
    :cond_88
    :try_start_88
    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mBluetoothLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0
    :try_end_8e
    .catchall {:try_start_88 .. :try_end_8e} :catchall_ec

    goto :goto_9f

    :catchall_8f
    move-exception v0

    goto :goto_a4

    .line 351
    :catch_91
    move-exception v0

    .line 352
    :try_start_92
    const-string v1, "BluetoothManagerService"

    const-string v2, "Unable to call onBrEdrDown"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_99
    .catchall {:try_start_92 .. :try_end_99} :catchall_8f

    .line 354
    :try_start_99
    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mBluetoothLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    :goto_9f
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 355
    nop

    .line 354
    goto :goto_cb

    :goto_a4
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mBluetoothLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    throw v0

    .line 356
    :cond_ae
    const/16 v2, 0xc

    if-ne v0, v2, :cond_cb

    .line 357
    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mContext:Landroid/content/Context;

    .line 358
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 357
    invoke-direct {p0, v1, v0}, Lcom/android/server/BluetoothManagerService;->sendDisableMsg(ILjava/lang/String;)V

    goto :goto_cb

    .line 360
    :cond_bc
    iget-boolean v0, p0, Lcom/android/server/BluetoothManagerService;->mEnableExternal:Z

    if-eqz v0, :cond_cb

    .line 361
    iget-boolean v0, p0, Lcom/android/server/BluetoothManagerService;->mQuietEnableExternal:Z

    iget-object v2, p0, Lcom/android/server/BluetoothManagerService;->mContext:Landroid/content/Context;

    .line 363
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 361
    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/BluetoothManagerService;->sendEnableMsg(ZILjava/lang/String;)V

    .line 365
    :cond_cb
    :goto_cb
    monitor-exit p0
    :try_end_cc
    .catchall {:try_start_99 .. :try_end_cc} :catchall_ec

    .line 366
    return-void

    .line 328
    :catchall_cd
    move-exception v0

    goto :goto_e2

    .line 324
    :catch_cf
    move-exception v0

    .line 325
    :try_start_d0
    const-string v1, "BluetoothManagerService"

    const-string v2, "Unable to call getState"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_d7
    .catchall {:try_start_d0 .. :try_end_d7} :catchall_cd

    .line 328
    :try_start_d7
    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mBluetoothLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    monitor-exit p0

    .line 326
    return-void

    .line 328
    :goto_e2
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mBluetoothLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    throw v0

    .line 365
    :catchall_ec
    move-exception v0

    monitor-exit p0
    :try_end_ee
    .catchall {:try_start_d7 .. :try_end_ee} :catchall_ec

    throw v0
.end method

.method public onFactoryReset()Z
    .registers 8

    .line 269
    invoke-virtual {p0}, Lcom/android/server/BluetoothManagerService;->getState()I

    move-result v0

    .line 270
    const/16 v1, 0xc

    const/16 v2, 0xf

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/16 v5, 0xe

    if-eq v0, v5, :cond_16

    const/16 v5, 0xb

    if-eq v0, v5, :cond_16

    const/16 v5, 0xd

    if-ne v0, v5, :cond_35

    .line 273
    :cond_16
    new-instance v0, Ljava/util/HashSet;

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Integer;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v4

    .line 274
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v3

    .line 273
    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-direct {v0, v5}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-direct {p0, v0}, Lcom/android/server/BluetoothManagerService;->waitForState(Ljava/util/Set;)Z

    move-result v0

    if-nez v0, :cond_35

    .line 275
    return v4

    .line 280
    :cond_35
    invoke-direct {p0}, Lcom/android/server/BluetoothManagerService;->clearBleApps()V

    .line 281
    invoke-virtual {p0}, Lcom/android/server/BluetoothManagerService;->getState()I

    move-result v0

    .line 283
    :try_start_3c
    iget-object v5, p0, Lcom/android/server/BluetoothManagerService;->mBluetoothLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 284
    iget-object v5, p0, Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;
    :try_end_47
    .catch Landroid/os/RemoteException; {:try_start_3c .. :try_end_47} :catch_8e
    .catchall {:try_start_3c .. :try_end_47} :catchall_8c

    if-nez v5, :cond_54

    .line 285
    nop

    .line 303
    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mBluetoothLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 285
    return v4

    .line 287
    :cond_54
    const/16 v5, 0xa

    if-ne v0, v2, :cond_71

    .line 288
    :try_start_58
    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mContext:Landroid/content/Context;

    .line 290
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 288
    invoke-direct {p0, v5, v0, v4}, Lcom/android/server/BluetoothManagerService;->addActiveLog(ILjava/lang/String;Z)V

    .line 291
    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;

    invoke-interface {v0}, Landroid/bluetooth/IBluetooth;->onBrEdrDown()V
    :try_end_66
    .catch Landroid/os/RemoteException; {:try_start_58 .. :try_end_66} :catch_8e
    .catchall {:try_start_58 .. :try_end_66} :catchall_8c

    .line 292
    nop

    .line 303
    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mBluetoothLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 292
    return v3

    .line 293
    :cond_71
    if-ne v0, v1, :cond_96

    .line 294
    :try_start_73
    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mContext:Landroid/content/Context;

    .line 296
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 294
    invoke-direct {p0, v5, v0, v4}, Lcom/android/server/BluetoothManagerService;->addActiveLog(ILjava/lang/String;Z)V

    .line 297
    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;

    invoke-interface {v0}, Landroid/bluetooth/IBluetooth;->disable()Z
    :try_end_81
    .catch Landroid/os/RemoteException; {:try_start_73 .. :try_end_81} :catch_8e
    .catchall {:try_start_73 .. :try_end_81} :catchall_8c

    .line 298
    nop

    .line 303
    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mBluetoothLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 298
    return v3

    .line 303
    :catchall_8c
    move-exception v0

    goto :goto_a1

    .line 300
    :catch_8e
    move-exception v0

    .line 301
    :try_start_8f
    const-string v1, "BluetoothManagerService"

    const-string v2, "Unable to shutdown Bluetooth"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_96
    .catchall {:try_start_8f .. :try_end_96} :catchall_8c

    .line 303
    :cond_96
    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mBluetoothLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 304
    nop

    .line 305
    return v4

    .line 303
    :goto_a1
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mBluetoothLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    throw v0
.end method

.method public registerAdapter(Landroid/bluetooth/IBluetoothManagerCallback;)Landroid/bluetooth/IBluetooth;
    .registers 4

    .line 626
    if-nez p1, :cond_b

    .line 627
    const-string p1, "BluetoothManagerService"

    const-string v0, "Callback is null in registerAdapter"

    invoke-static {p1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 628
    const/4 p1, 0x0

    return-object p1

    .line 630
    :cond_b
    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mHandler:Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    const/16 v1, 0x14

    invoke-virtual {v0, v1}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 631
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 632
    iget-object p1, p0, Lcom/android/server/BluetoothManagerService;->mHandler:Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    invoke-virtual {p1, v0}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->sendMessage(Landroid/os/Message;)Z

    .line 634
    iget-object p1, p0, Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;

    return-object p1
.end method

.method public registerStateChangeCallback(Landroid/bluetooth/IBluetoothStateChangeCallback;)V
    .registers 5

    .line 649
    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BLUETOOTH"

    const-string v2, "Need BLUETOOTH permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 650
    if-nez p1, :cond_14

    .line 651
    const-string p1, "BluetoothManagerService"

    const-string/jumbo v0, "registerStateChangeCallback: Callback is null!"

    invoke-static {p1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 652
    return-void

    .line 654
    :cond_14
    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mHandler:Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    const/16 v1, 0x1e

    invoke-virtual {v0, v1}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 655
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 656
    iget-object p1, p0, Lcom/android/server/BluetoothManagerService;->mHandler:Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    invoke-virtual {p1, v0}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->sendMessage(Landroid/os/Message;)Z

    .line 657
    return-void
.end method

.method public unbindAndFinish()V
    .registers 6

    .line 1114
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "unbindAndFinish(): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " mBinding = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/BluetoothManagerService;->mBinding:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " mUnbinding = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/BluetoothManagerService;->mUnbinding:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BluetoothManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1119
    :try_start_2d
    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mBluetoothLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 1120
    iget-boolean v0, p0, Lcom/android/server/BluetoothManagerService;->mUnbinding:Z
    :try_end_38
    .catchall {:try_start_2d .. :try_end_38} :catchall_88

    if-eqz v0, :cond_44

    .line 1143
    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mBluetoothLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 1121
    return-void

    .line 1123
    :cond_44
    const/4 v0, 0x1

    :try_start_45
    iput-boolean v0, p0, Lcom/android/server/BluetoothManagerService;->mUnbinding:Z

    .line 1124
    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mHandler:Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    const/16 v2, 0x3c

    invoke-virtual {v0, v2}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->removeMessages(I)V

    .line 1125
    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mHandler:Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    const/16 v2, 0x191

    invoke-virtual {v0, v2}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->removeMessages(I)V

    .line 1126
    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;
    :try_end_57
    .catchall {:try_start_45 .. :try_end_57} :catchall_88

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v0, :cond_79

    .line 1129
    :try_start_5b
    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;

    iget-object v4, p0, Lcom/android/server/BluetoothManagerService;->mBluetoothCallback:Landroid/bluetooth/IBluetoothCallback;

    invoke-interface {v0, v4}, Landroid/bluetooth/IBluetooth;->unregisterCallback(Landroid/bluetooth/IBluetoothCallback;)V
    :try_end_62
    .catch Landroid/os/RemoteException; {:try_start_5b .. :try_end_62} :catch_63
    .catchall {:try_start_5b .. :try_end_62} :catchall_88

    .line 1132
    goto :goto_69

    .line 1130
    :catch_63
    move-exception v0

    .line 1131
    :try_start_64
    const-string v4, "Unable to unregister BluetoothCallback"

    invoke-static {v1, v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1133
    :goto_69
    iput-object v2, p0, Lcom/android/server/BluetoothManagerService;->mBluetoothBinder:Landroid/os/IBinder;

    .line 1134
    iput-object v2, p0, Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;

    .line 1135
    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mConnection:Lcom/android/server/BluetoothManagerService$BluetoothServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 1136
    iput-boolean v3, p0, Lcom/android/server/BluetoothManagerService;->mUnbinding:Z

    .line 1137
    iput-boolean v3, p0, Lcom/android/server/BluetoothManagerService;->mBinding:Z

    goto :goto_7b

    .line 1139
    :cond_79
    iput-boolean v3, p0, Lcom/android/server/BluetoothManagerService;->mUnbinding:Z

    .line 1141
    :goto_7b
    iput-object v2, p0, Lcom/android/server/BluetoothManagerService;->mBluetoothGatt:Landroid/bluetooth/IBluetoothGatt;
    :try_end_7d
    .catchall {:try_start_64 .. :try_end_7d} :catchall_88

    .line 1143
    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mBluetoothLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 1144
    nop

    .line 1145
    return-void

    .line 1143
    :catchall_88
    move-exception v0

    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mBluetoothLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    throw v0
.end method

.method public unbindBluetoothProfileService(ILandroid/bluetooth/IBluetoothProfileServiceConnection;)V
    .registers 8

    .line 1195
    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mProfileServices:Ljava/util/Map;

    monitor-enter v0

    .line 1196
    :try_start_3
    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    .line 1197
    iget-object p1, p0, Lcom/android/server/BluetoothManagerService;->mProfileServices:Ljava/util/Map;

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;

    .line 1198
    if-nez p1, :cond_14

    .line 1199
    monitor-exit v0

    return-void

    .line 1201
    :cond_14
    invoke-static {p1, p2}, Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;->access$1400(Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;Landroid/bluetooth/IBluetoothProfileServiceConnection;)V

    .line 1202
    invoke-static {p1}, Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;->access$1500(Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;)Z

    move-result p2
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_43

    if-eqz p2, :cond_41

    .line 1205
    :try_start_1d
    iget-object p2, p0, Lcom/android/server/BluetoothManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p2, p1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_22
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1d .. :try_end_22} :catch_23
    .catchall {:try_start_1d .. :try_end_22} :catchall_43

    .line 1208
    goto :goto_3c

    .line 1206
    :catch_23
    move-exception p2

    .line 1207
    :try_start_24
    const-string v2, "BluetoothManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to unbind service with intent: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;->mIntent:Landroid/content/Intent;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1, p2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1209
    :goto_3c
    iget-object p1, p0, Lcom/android/server/BluetoothManagerService;->mProfileServices:Ljava/util/Map;

    invoke-interface {p1, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1211
    :cond_41
    monitor-exit v0

    .line 1212
    return-void

    .line 1211
    :catchall_43
    move-exception p1

    monitor-exit v0
    :try_end_45
    .catchall {:try_start_24 .. :try_end_45} :catchall_43

    throw p1
.end method

.method public unregisterAdapter(Landroid/bluetooth/IBluetoothManagerCallback;)V
    .registers 5

    .line 638
    if-nez p1, :cond_a

    .line 639
    const-string p1, "BluetoothManagerService"

    const-string v0, "Callback is null in unregisterAdapter"

    invoke-static {p1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 640
    return-void

    .line 642
    :cond_a
    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BLUETOOTH"

    const-string v2, "Need BLUETOOTH permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 643
    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mHandler:Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    const/16 v1, 0x15

    invoke-virtual {v0, v1}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 644
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 645
    iget-object p1, p0, Lcom/android/server/BluetoothManagerService;->mHandler:Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    invoke-virtual {p1, v0}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->sendMessage(Landroid/os/Message;)Z

    .line 646
    return-void
.end method

.method public unregisterStateChangeCallback(Landroid/bluetooth/IBluetoothStateChangeCallback;)V
    .registers 5

    .line 660
    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BLUETOOTH"

    const-string v2, "Need BLUETOOTH permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 661
    if-nez p1, :cond_14

    .line 662
    const-string p1, "BluetoothManagerService"

    const-string/jumbo v0, "unregisterStateChangeCallback: Callback is null!"

    invoke-static {p1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 663
    return-void

    .line 665
    :cond_14
    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mHandler:Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    const/16 v1, 0x1f

    invoke-virtual {v0, v1}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 666
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 667
    iget-object p1, p0, Lcom/android/server/BluetoothManagerService;->mHandler:Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    invoke-virtual {p1, v0}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->sendMessage(Landroid/os/Message;)Z

    .line 668
    return-void
.end method

.method public updateBleAppCount(Landroid/os/IBinder;ZLjava/lang/String;)I
    .registers 8

    .line 804
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 805
    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v1

    const/4 v2, 0x0

    const/16 v3, 0x3e8

    if-ne v1, v3, :cond_f

    const/4 v1, 0x1

    goto :goto_10

    :cond_f
    move v1, v2

    .line 806
    :goto_10
    if-nez v1, :cond_15

    .line 807
    invoke-direct {p0, v0, p3}, Lcom/android/server/BluetoothManagerService;->checkPackage(ILjava/lang/String;)V

    .line 809
    :cond_15
    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mBleApps:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/BluetoothManagerService$ClientDeathRecipient;

    .line 810
    const-string v1, "BluetoothManagerService"

    if-nez v0, :cond_63

    if-eqz p2, :cond_63

    .line 811
    new-instance p2, Lcom/android/server/BluetoothManagerService$ClientDeathRecipient;

    invoke-direct {p2, p0, p3}, Lcom/android/server/BluetoothManagerService$ClientDeathRecipient;-><init>(Lcom/android/server/BluetoothManagerService;Ljava/lang/String;)V

    .line 813
    :try_start_28
    invoke-interface {p1, p2, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_2b
    .catch Landroid/os/RemoteException; {:try_start_28 .. :try_end_2b} :catch_46

    .line 816
    nop

    .line 817
    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mBleApps:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 819
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Registered for death of "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_84

    .line 814
    :catch_46
    move-exception p1

    .line 815
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "BLE app ("

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, ") already dead!"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 821
    :cond_63
    if-nez p2, :cond_84

    if-eqz v0, :cond_84

    .line 823
    invoke-interface {p1, v0, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 824
    iget-object p2, p0, Lcom/android/server/BluetoothManagerService;->mBleApps:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 826
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Unregistered for death of "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_85

    .line 821
    :cond_84
    :goto_84
    nop

    .line 829
    :goto_85
    iget-object p1, p0, Lcom/android/server/BluetoothManagerService;->mBleApps:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result p1

    .line 831
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " registered Ble Apps"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 833
    if-nez p1, :cond_a8

    iget-boolean p2, p0, Lcom/android/server/BluetoothManagerService;->mEnable:Z

    if-eqz p2, :cond_a8

    .line 834
    invoke-direct {p0}, Lcom/android/server/BluetoothManagerService;->disableBleScanMode()V

    .line 836
    :cond_a8
    if-nez p1, :cond_b1

    iget-boolean p2, p0, Lcom/android/server/BluetoothManagerService;->mEnableExternal:Z

    if-nez p2, :cond_b1

    .line 837
    invoke-direct {p0}, Lcom/android/server/BluetoothManagerService;->sendBrEdrDownCallback()V

    .line 839
    :cond_b1
    return p1
.end method
