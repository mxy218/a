.class Lcom/android/server/BluetoothManagerService;
.super Landroid/bluetooth/IBluetoothManager$Stub;
.source "BluetoothManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/BluetoothManagerService$CallbackTimeoutHandler;,
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

.field private static final AUTO_ENABLE_BT_DELAY_MS:I = 0xfa0

.field private static final BLUETOOTH_ADMIN_PERM:Ljava/lang/String; = "android.permission.BLUETOOTH_ADMIN"

.field private static final BLUETOOTH_OFF:I = 0x0

.field private static final BLUETOOTH_ON_AIRPLANE:I = 0x2

.field private static final BLUETOOTH_ON_BLUETOOTH:I = 0x1

.field private static final BLUETOOTH_PERM:Ljava/lang/String; = "android.permission.BLUETOOTH"

.field private static final BLUETOOTH_PRIVILEGED_PERM:Ljava/lang/String; = "android.permission.BLUETOOTH_PRIVILEGED"

.field private static final CRASH_LOG_MAX_SIZE:I = 0x64

.field private static final DBG:Z = true

.field private static final ERROR_RESTART_TIME_MS:I = 0xbb8

.field private static final MAX_ERROR_RESTART_RETRIES:I = 0x6

.field private static final MEIZU_MESSAGE_BASE:I = 0x2328

.field private static final MESSAGE_ADD_PROXY_DELAYED:I = 0x190

.field private static final MESSAGE_AUTO_ENABLE:I = 0x2328

.field private static final MESSAGE_BIND_PROFILE_SERVICE:I = 0x191

.field private static final MESSAGE_BLUETOOTH_SERVICE_CONNECTED:I = 0x28

.field private static final MESSAGE_BLUETOOTH_SERVICE_DISCONNECTED:I = 0x29

.field private static final MESSAGE_BLUETOOTH_STATE_CHANGE:I = 0x3c

.field private static final MESSAGE_CALLBACK_TIMEOUT:I = 0x1

.field private static final MESSAGE_DISABLE:I = 0x2

.field private static final MESSAGE_ENABLE:I = 0x1

.field private static final MESSAGE_GET_NAME_AND_ADDRESS:I = 0xc8

.field private static final MESSAGE_REGISTER_ADAPTER:I = 0x14

.field private static final MESSAGE_REGISTER_STATE_CHANGE_CALLBACK:I = 0x1e

.field private static final MESSAGE_RESTART_BLUETOOTH_SERVICE:I = 0x2a

.field private static final MESSAGE_RESTORE_USER_SETTING:I = 0x1f4

.field private static final MESSAGE_SAVE_NAME_AND_ADDRESS:I = 0xc9

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

.field private static final SERVICE_RESTART_TIME_MS:I = 0xc8

.field private static final TAG:Ljava/lang/String; = "BluetoothManagerService"

.field private static final TIMEOUT_BIND_MS:I = 0xbb8

.field private static final TIMEOUT_CALLBACK:I = 0x4e20

.field private static final USER_OFF_BT_AIRPLANE:I = 0x0

.field private static final USER_ON_BT_AIRPLANE:I = 0x1

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

.field private final mAirplaneModeObserver:Landroid/database/ContentObserver;

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

.field private mBluetoothBinder:Landroid/os/IBinder;

.field private final mBluetoothCallback:Landroid/bluetooth/IBluetoothCallback;

.field private mBluetoothGatt:Landroid/bluetooth/IBluetoothGatt;

.field private final mBluetoothLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

.field private final mCallbackTimeoutHandler:Lcom/android/server/BluetoothManagerService$CallbackTimeoutHandler;

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

.field private mEnableBLE:Z

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
    .registers 13
    .param p1, "context"  # Landroid/content/Context;

    .line 439
    invoke-direct {p0}, Landroid/bluetooth/IBluetoothManager$Stub;-><init>()V

    .line 204
    new-instance v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>()V

    iput-object v0, p0, Lcom/android/server/BluetoothManagerService;->mBluetoothLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 209
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/BluetoothManagerService;->mQuietEnable:Z

    .line 239
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iput-object v1, p0, Lcom/android/server/BluetoothManagerService;->mActiveLogs:Ljava/util/LinkedList;

    .line 240
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iput-object v1, p0, Lcom/android/server/BluetoothManagerService;->mCrashTimestamps:Ljava/util/LinkedList;

    .line 251
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/BluetoothManagerService;->mBleApps:Ljava/util/Map;

    .line 272
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/BluetoothManagerService;->mProfileServices:Ljava/util/Map;

    .line 276
    new-instance v1, Lcom/android/server/BluetoothManagerService$1;

    invoke-direct {v1, p0}, Lcom/android/server/BluetoothManagerService$1;-><init>(Lcom/android/server/BluetoothManagerService;)V

    iput-object v1, p0, Lcom/android/server/BluetoothManagerService;->mBluetoothCallback:Landroid/bluetooth/IBluetoothCallback;

    .line 285
    new-instance v1, Lcom/android/server/BluetoothManagerService$2;

    invoke-direct {v1, p0}, Lcom/android/server/BluetoothManagerService$2;-><init>(Lcom/android/server/BluetoothManagerService;)V

    iput-object v1, p0, Lcom/android/server/BluetoothManagerService;->mUserRestrictionsListener:Landroid/os/UserManagerInternal$UserRestrictionsListener;

    .line 314
    new-instance v1, Lcom/android/server/BluetoothManagerService$3;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/server/BluetoothManagerService$3;-><init>(Lcom/android/server/BluetoothManagerService;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/server/BluetoothManagerService;->mAirplaneModeObserver:Landroid/database/ContentObserver;

    .line 387
    new-instance v1, Lcom/android/server/BluetoothManagerService$4;

    invoke-direct {v1, p0}, Lcom/android/server/BluetoothManagerService$4;-><init>(Lcom/android/server/BluetoothManagerService;)V

    iput-object v1, p0, Lcom/android/server/BluetoothManagerService;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 1906
    new-instance v1, Lcom/android/server/BluetoothManagerService$BluetoothServiceConnection;

    invoke-direct {v1, p0, v2}, Lcom/android/server/BluetoothManagerService$BluetoothServiceConnection;-><init>(Lcom/android/server/BluetoothManagerService;Lcom/android/server/BluetoothManagerService$1;)V

    iput-object v1, p0, Lcom/android/server/BluetoothManagerService;->mConnection:Lcom/android/server/BluetoothManagerService$BluetoothServiceConnection;

    .line 440
    new-instance v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    invoke-static {}, Lcom/android/server/IoThread;->get()Lcom/android/server/IoThread;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/IoThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v1, p0, v3}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;-><init>(Lcom/android/server/BluetoothManagerService;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/server/BluetoothManagerService;->mHandler:Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    .line 442
    iput-object p1, p0, Lcom/android/server/BluetoothManagerService;->mContext:Landroid/content/Context;

    .line 444
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 445
    const v3, 0x111011c

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/BluetoothManagerService;->mWirelessConsentRequired:Z

    .line 447
    iput v0, p0, Lcom/android/server/BluetoothManagerService;->mCrashes:I

    .line 448
    iput-object v2, p0, Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;

    .line 449
    iput-object v2, p0, Lcom/android/server/BluetoothManagerService;->mBluetoothBinder:Landroid/os/IBinder;

    .line 450
    iput-object v2, p0, Lcom/android/server/BluetoothManagerService;->mBluetoothGatt:Landroid/bluetooth/IBluetoothGatt;

    .line 451
    iput-boolean v0, p0, Lcom/android/server/BluetoothManagerService;->mBinding:Z

    .line 452
    iput-boolean v0, p0, Lcom/android/server/BluetoothManagerService;->mUnbinding:Z

    .line 453
    iput-boolean v0, p0, Lcom/android/server/BluetoothManagerService;->mEnable:Z

    .line 454
    iput-boolean v0, p0, Lcom/android/server/BluetoothManagerService;->mEnableBLE:Z

    .line 455
    const/16 v1, 0xa

    iput v1, p0, Lcom/android/server/BluetoothManagerService;->mState:I

    .line 456
    iput-boolean v0, p0, Lcom/android/server/BluetoothManagerService;->mQuietEnableExternal:Z

    .line 457
    iput-boolean v0, p0, Lcom/android/server/BluetoothManagerService;->mEnableExternal:Z

    .line 458
    iput-object v2, p0, Lcom/android/server/BluetoothManagerService;->mAddress:Ljava/lang/String;

    .line 459
    iput-object v2, p0, Lcom/android/server/BluetoothManagerService;->mName:Ljava/lang/String;

    .line 460
    iput v0, p0, Lcom/android/server/BluetoothManagerService;->mErrorRecoveryRetryCounter:I

    .line 461
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/BluetoothManagerService;->mContentResolver:Landroid/content/ContentResolver;

    .line 463
    invoke-direct {p0}, Lcom/android/server/BluetoothManagerService;->registerForBleScanModeChange()V

    .line 464
    new-instance v1, Landroid/os/RemoteCallbackList;

    invoke-direct {v1}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v1, p0, Lcom/android/server/BluetoothManagerService;->mCallbacks:Landroid/os/RemoteCallbackList;

    .line 465
    new-instance v1, Landroid/os/RemoteCallbackList;

    invoke-direct {v1}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v1, p0, Lcom/android/server/BluetoothManagerService;->mStateChangeCallbacks:Landroid/os/RemoteCallbackList;

    .line 467
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 468
    const v2, 0x111008a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/BluetoothManagerService;->mIsHearingAidProfileSupported:Z

    .line 471
    const-string/jumbo v1, "persist.sys.fflag.override.settings_bluetooth_hearing_aid"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 472
    .local v1, "value":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x1

    const-string v4, "BluetoothManagerService"

    if-nez v2, :cond_e4

    .line 473
    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    .line 474
    .local v2, "isHearingAidEnabled":Z
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "set feature flag HEARING_AID_SETTINGS to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 475
    const-string/jumbo v5, "settings_bluetooth_hearing_aid"

    invoke-static {p1, v5, v2}, Landroid/util/FeatureFlagUtils;->setEnabled(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 476
    if-eqz v2, :cond_e4

    iget-boolean v5, p0, Lcom/android/server/BluetoothManagerService;->mIsHearingAidProfileSupported:Z

    if-nez v5, :cond_e4

    .line 478
    iput-boolean v3, p0, Lcom/android/server/BluetoothManagerService;->mIsHearingAidProfileSupported:Z

    .line 482
    .end local v2  # "isHearingAidEnabled":Z
    :cond_e4
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 483
    .local v2, "filter":Landroid/content/IntentFilter;
    const-string v5, "android.bluetooth.adapter.action.LOCAL_NAME_CHANGED"

    invoke-virtual {v2, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 484
    const-string v5, "android.bluetooth.adapter.action.BLUETOOTH_ADDRESS_CHANGED"

    invoke-virtual {v2, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 485
    const-string v5, "android.os.action.SETTING_RESTORED"

    invoke-virtual {v2, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 487
    const-string/jumbo v5, "meizu.intent.action.ACTION_MEIZU_DEVICE_NAME_CHANGE"

    invoke-virtual {v2, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 493
    new-instance v5, Landroid/os/HandlerThread;

    const-string v6, "BMS_timeout_thread"

    invoke-direct {v5, v6}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 494
    .local v5, "timeOutThread":Landroid/os/HandlerThread;
    invoke-virtual {v5}, Landroid/os/HandlerThread;->start()V

    .line 495
    new-instance v6, Lcom/android/server/BluetoothManagerService$CallbackTimeoutHandler;

    invoke-virtual {v5}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v7

    invoke-direct {v6, p0, v7}, Lcom/android/server/BluetoothManagerService$CallbackTimeoutHandler;-><init>(Lcom/android/server/BluetoothManagerService;Landroid/os/Looper;)V

    iput-object v6, p0, Lcom/android/server/BluetoothManagerService;->mCallbackTimeoutHandler:Lcom/android/server/BluetoothManagerService$CallbackTimeoutHandler;

    .line 498
    const/16 v6, 0x3e8

    invoke-virtual {v2, v6}, Landroid/content/IntentFilter;->setPriority(I)V

    .line 499
    iget-object v6, p0, Lcom/android/server/BluetoothManagerService;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/android/server/BluetoothManagerService;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v6, v7, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 501
    invoke-direct {p0}, Lcom/android/server/BluetoothManagerService;->loadStoredNameAndAddress()V

    .line 502
    invoke-direct {p0}, Lcom/android/server/BluetoothManagerService;->isBluetoothPersistedStateOn()Z

    move-result v6

    if-eqz v6, :cond_12f

    .line 504
    const-string v6, "Startup: Bluetooth persisted state is ON."

    invoke-static {v4, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 506
    iput-boolean v3, p0, Lcom/android/server/BluetoothManagerService;->mEnableExternal:Z

    .line 509
    :cond_12f
    iget-object v6, p0, Lcom/android/server/BluetoothManagerService;->mContentResolver:Landroid/content/ContentResolver;

    .line 510
    const-string v7, "airplane_mode_radios"

    invoke-static {v6, v7}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 511
    .local v6, "airplaneModeRadios":Ljava/lang/String;
    if-eqz v6, :cond_141

    const-string v7, "bluetooth"

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_14e

    .line 513
    :cond_141
    iget-object v7, p0, Lcom/android/server/BluetoothManagerService;->mContentResolver:Landroid/content/ContentResolver;

    .line 514
    const-string v8, "airplane_mode_on"

    invoke-static {v8}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/BluetoothManagerService;->mAirplaneModeObserver:Landroid/database/ContentObserver;

    .line 513
    invoke-virtual {v7, v8, v3, v9}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 518
    :cond_14e
    const/4 v3, -0x1

    .line 521
    .local v3, "systemUiUid":I
    :try_start_14f
    iget-object v7, p0, Lcom/android/server/BluetoothManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x11100a0

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v7

    .line 522
    .local v7, "noHome":Z
    if-nez v7, :cond_16d

    .line 523
    iget-object v8, p0, Lcom/android/server/BluetoothManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    const-string v9, "com.android.systemui"

    const/high16 v10, 0x100000

    .line 524
    invoke-virtual {v8, v9, v10, v0}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;II)I

    move-result v0

    move v3, v0

    .line 527
    :cond_16d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Detected SystemUiUid: "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_185
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_14f .. :try_end_185} :catch_187

    .line 531
    nop

    .end local v7  # "noHome":Z
    goto :goto_18d

    .line 528
    :catch_187
    move-exception v0

    .line 530
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v7, "Unable to resolve SystemUI\'s UID."

    invoke-static {v4, v7, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 532
    .end local v0  # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :goto_18d
    iput v3, p0, Lcom/android/server/BluetoothManagerService;->mSystemUiUid:I

    .line 533
    return-void
.end method

.method static synthetic access$000(J)Ljava/lang/CharSequence;
    .registers 3
    .param p0, "x0"  # J

    .line 114
    invoke-static {p0, p1}, Lcom/android/server/BluetoothManagerService;->timeToLog(J)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(I)Ljava/lang/String;
    .registers 2
    .param p0, "x0"  # I

    .line 114
    invoke-static {p0}, Lcom/android/server/BluetoothManagerService;->getEnableDisableReasonString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/server/BluetoothManagerService;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/BluetoothManagerService;

    .line 114
    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mBluetoothLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/server/BluetoothManagerService;)Landroid/bluetooth/IBluetooth;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/BluetoothManagerService;

    .line 114
    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/android/server/BluetoothManagerService;Landroid/bluetooth/IBluetooth;)Landroid/bluetooth/IBluetooth;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/BluetoothManagerService;
    .param p1, "x1"  # Landroid/bluetooth/IBluetooth;

    .line 114
    iput-object p1, p0, Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;

    return-object p1
.end method

.method static synthetic access$1200(Lcom/android/server/BluetoothManagerService;)V
    .registers 1
    .param p0, "x0"  # Lcom/android/server/BluetoothManagerService;

    .line 114
    invoke-direct {p0}, Lcom/android/server/BluetoothManagerService;->clearBleApps()V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/server/BluetoothManagerService;ILjava/lang/String;Z)V
    .registers 4
    .param p0, "x0"  # Lcom/android/server/BluetoothManagerService;
    .param p1, "x1"  # I
    .param p2, "x2"  # Ljava/lang/String;
    .param p3, "x3"  # Z

    .line 114
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/BluetoothManagerService;->addActiveLog(ILjava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/server/BluetoothManagerService;)Z
    .registers 2
    .param p0, "x0"  # Lcom/android/server/BluetoothManagerService;

    .line 114
    iget-boolean v0, p0, Lcom/android/server/BluetoothManagerService;->mEnable:Z

    return v0
.end method

.method static synthetic access$1402(Lcom/android/server/BluetoothManagerService;Z)Z
    .registers 2
    .param p0, "x0"  # Lcom/android/server/BluetoothManagerService;
    .param p1, "x1"  # Z

    .line 114
    iput-boolean p1, p0, Lcom/android/server/BluetoothManagerService;->mEnable:Z

    return p1
.end method

.method static synthetic access$1500(Lcom/android/server/BluetoothManagerService;)Z
    .registers 2
    .param p0, "x0"  # Lcom/android/server/BluetoothManagerService;

    .line 114
    iget-boolean v0, p0, Lcom/android/server/BluetoothManagerService;->mEnableExternal:Z

    return v0
.end method

.method static synthetic access$1502(Lcom/android/server/BluetoothManagerService;Z)Z
    .registers 2
    .param p0, "x0"  # Lcom/android/server/BluetoothManagerService;
    .param p1, "x1"  # Z

    .line 114
    iput-boolean p1, p0, Lcom/android/server/BluetoothManagerService;->mEnableExternal:Z

    return p1
.end method

.method static synthetic access$1600(Lcom/android/server/BluetoothManagerService;)Z
    .registers 2
    .param p0, "x0"  # Lcom/android/server/BluetoothManagerService;

    .line 114
    iget-boolean v0, p0, Lcom/android/server/BluetoothManagerService;->mQuietEnableExternal:Z

    return v0
.end method

.method static synthetic access$1602(Lcom/android/server/BluetoothManagerService;Z)Z
    .registers 2
    .param p0, "x0"  # Lcom/android/server/BluetoothManagerService;
    .param p1, "x1"  # Z

    .line 114
    iput-boolean p1, p0, Lcom/android/server/BluetoothManagerService;->mQuietEnableExternal:Z

    return p1
.end method

.method static synthetic access$1700(Lcom/android/server/BluetoothManagerService;ZILjava/lang/String;)V
    .registers 4
    .param p0, "x0"  # Lcom/android/server/BluetoothManagerService;
    .param p1, "x1"  # Z
    .param p2, "x2"  # I
    .param p3, "x3"  # Ljava/lang/String;

    .line 114
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/BluetoothManagerService;->sendEnableMsg(ZILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/server/BluetoothManagerService;Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .param p0, "x0"  # Lcom/android/server/BluetoothManagerService;
    .param p1, "x1"  # Ljava/lang/String;
    .param p2, "x2"  # Ljava/lang/String;

    .line 114
    invoke-direct {p0, p1, p2}, Lcom/android/server/BluetoothManagerService;->storeNameAndAddress(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/server/BluetoothManagerService;)Ljava/util/Map;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/BluetoothManagerService;

    .line 114
    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mBleApps:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/BluetoothManagerService;)Lcom/android/server/BluetoothManagerService$BluetoothHandler;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/BluetoothManagerService;

    .line 114
    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mHandler:Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/server/BluetoothManagerService;)V
    .registers 1
    .param p0, "x0"  # Lcom/android/server/BluetoothManagerService;

    .line 114
    invoke-direct {p0}, Lcom/android/server/BluetoothManagerService;->disableBleScanMode()V

    return-void
.end method

.method static synthetic access$2600(Lcom/android/server/BluetoothManagerService;)Z
    .registers 2
    .param p0, "x0"  # Lcom/android/server/BluetoothManagerService;

    .line 114
    iget-boolean v0, p0, Lcom/android/server/BluetoothManagerService;->mBinding:Z

    return v0
.end method

.method static synthetic access$2602(Lcom/android/server/BluetoothManagerService;Z)Z
    .registers 2
    .param p0, "x0"  # Lcom/android/server/BluetoothManagerService;
    .param p1, "x1"  # Z

    .line 114
    iput-boolean p1, p0, Lcom/android/server/BluetoothManagerService;->mBinding:Z

    return p1
.end method

.method static synthetic access$2700(Lcom/android/server/BluetoothManagerService;)Lcom/android/server/BluetoothManagerService$BluetoothServiceConnection;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/BluetoothManagerService;

    .line 114
    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mConnection:Lcom/android/server/BluetoothManagerService$BluetoothServiceConnection;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/android/server/BluetoothManagerService;)Z
    .registers 2
    .param p0, "x0"  # Lcom/android/server/BluetoothManagerService;

    .line 114
    iget-boolean v0, p0, Lcom/android/server/BluetoothManagerService;->mQuietEnable:Z

    return v0
.end method

.method static synthetic access$2802(Lcom/android/server/BluetoothManagerService;Z)Z
    .registers 2
    .param p0, "x0"  # Lcom/android/server/BluetoothManagerService;
    .param p1, "x1"  # Z

    .line 114
    iput-boolean p1, p0, Lcom/android/server/BluetoothManagerService;->mQuietEnable:Z

    return p1
.end method

.method static synthetic access$2900(Lcom/android/server/BluetoothManagerService;Z)V
    .registers 2
    .param p0, "x0"  # Lcom/android/server/BluetoothManagerService;
    .param p1, "x1"  # Z

    .line 114
    invoke-direct {p0, p1}, Lcom/android/server/BluetoothManagerService;->handleEnable(Z)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/BluetoothManagerService;IZ)V
    .registers 3
    .param p0, "x0"  # Lcom/android/server/BluetoothManagerService;
    .param p1, "x1"  # I
    .param p2, "x2"  # Z

    .line 114
    invoke-direct {p0, p1, p2}, Lcom/android/server/BluetoothManagerService;->updateOppLauncherComponentState(IZ)V

    return-void
.end method

.method static synthetic access$3000(Lcom/android/server/BluetoothManagerService;ZZ)Z
    .registers 4
    .param p0, "x0"  # Lcom/android/server/BluetoothManagerService;
    .param p1, "x1"  # Z
    .param p2, "x2"  # Z

    .line 114
    invoke-direct {p0, p1, p2}, Lcom/android/server/BluetoothManagerService;->waitForMonitoredOnOff(ZZ)Z

    move-result v0

    return v0
.end method

.method static synthetic access$3100(Lcom/android/server/BluetoothManagerService;)Z
    .registers 2
    .param p0, "x0"  # Lcom/android/server/BluetoothManagerService;

    .line 114
    invoke-direct {p0}, Lcom/android/server/BluetoothManagerService;->isBluetoothPersistedStateOnBluetooth()Z

    move-result v0

    return v0
.end method

.method static synthetic access$3200(Lcom/android/server/BluetoothManagerService;)V
    .registers 1
    .param p0, "x0"  # Lcom/android/server/BluetoothManagerService;

    .line 114
    invoke-direct {p0}, Lcom/android/server/BluetoothManagerService;->handleDisable()V

    return-void
.end method

.method static synthetic access$3300(Lcom/android/server/BluetoothManagerService;)Landroid/os/RemoteCallbackList;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/BluetoothManagerService;

    .line 114
    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mCallbacks:Landroid/os/RemoteCallbackList;

    return-object v0
.end method

.method static synthetic access$3400(Lcom/android/server/BluetoothManagerService;)Landroid/os/RemoteCallbackList;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/BluetoothManagerService;

    .line 114
    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mStateChangeCallbacks:Landroid/os/RemoteCallbackList;

    return-object v0
.end method

.method static synthetic access$3500(Lcom/android/server/BluetoothManagerService;)Ljava/util/Map;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/BluetoothManagerService;

    .line 114
    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mProfileServices:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$3702(Lcom/android/server/BluetoothManagerService;Landroid/bluetooth/IBluetoothGatt;)Landroid/bluetooth/IBluetoothGatt;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/BluetoothManagerService;
    .param p1, "x1"  # Landroid/bluetooth/IBluetoothGatt;

    .line 114
    iput-object p1, p0, Lcom/android/server/BluetoothManagerService;->mBluetoothGatt:Landroid/bluetooth/IBluetoothGatt;

    return-object p1
.end method

.method static synthetic access$3800(Lcom/android/server/BluetoothManagerService;)V
    .registers 1
    .param p0, "x0"  # Lcom/android/server/BluetoothManagerService;

    .line 114
    invoke-direct {p0}, Lcom/android/server/BluetoothManagerService;->continueFromBleOnState()V

    return-void
.end method

.method static synthetic access$3902(Lcom/android/server/BluetoothManagerService;Landroid/os/IBinder;)Landroid/os/IBinder;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/BluetoothManagerService;
    .param p1, "x1"  # Landroid/os/IBinder;

    .line 114
    iput-object p1, p0, Lcom/android/server/BluetoothManagerService;->mBluetoothBinder:Landroid/os/IBinder;

    return-object p1
.end method

.method static synthetic access$400(Lcom/android/server/BluetoothManagerService;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/BluetoothManagerService;

    .line 114
    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$4000(Lcom/android/server/BluetoothManagerService;)Z
    .registers 2
    .param p0, "x0"  # Lcom/android/server/BluetoothManagerService;

    .line 114
    invoke-direct {p0}, Lcom/android/server/BluetoothManagerService;->isNameAndAddressSet()Z

    move-result v0

    return v0
.end method

.method static synthetic access$4100(Lcom/android/server/BluetoothManagerService;)Landroid/bluetooth/IBluetoothCallback;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/BluetoothManagerService;

    .line 114
    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mBluetoothCallback:Landroid/bluetooth/IBluetoothCallback;

    return-object v0
.end method

.method static synthetic access$4200(Lcom/android/server/BluetoothManagerService;)V
    .registers 1
    .param p0, "x0"  # Lcom/android/server/BluetoothManagerService;

    .line 114
    invoke-direct {p0}, Lcom/android/server/BluetoothManagerService;->sendBluetoothServiceUpCallback()V

    return-void
.end method

.method static synthetic access$4300(Lcom/android/server/BluetoothManagerService;)I
    .registers 2
    .param p0, "x0"  # Lcom/android/server/BluetoothManagerService;

    .line 114
    iget v0, p0, Lcom/android/server/BluetoothManagerService;->mState:I

    return v0
.end method

.method static synthetic access$4302(Lcom/android/server/BluetoothManagerService;I)I
    .registers 2
    .param p0, "x0"  # Lcom/android/server/BluetoothManagerService;
    .param p1, "x1"  # I

    .line 114
    iput p1, p0, Lcom/android/server/BluetoothManagerService;->mState:I

    return p1
.end method

.method static synthetic access$4400(Lcom/android/server/BluetoothManagerService;II)V
    .registers 3
    .param p0, "x0"  # Lcom/android/server/BluetoothManagerService;
    .param p1, "x1"  # I
    .param p2, "x2"  # I

    .line 114
    invoke-direct {p0, p1, p2}, Lcom/android/server/BluetoothManagerService;->bluetoothStateChangeHandler(II)V

    return-void
.end method

.method static synthetic access$4500(Lcom/android/server/BluetoothManagerService;Z)V
    .registers 2
    .param p0, "x0"  # Lcom/android/server/BluetoothManagerService;
    .param p1, "x1"  # Z

    .line 114
    invoke-direct {p0, p1}, Lcom/android/server/BluetoothManagerService;->recoverBluetoothServiceFromError(Z)V

    return-void
.end method

.method static synthetic access$4600(Lcom/android/server/BluetoothManagerService;)I
    .registers 2
    .param p0, "x0"  # Lcom/android/server/BluetoothManagerService;

    .line 114
    iget v0, p0, Lcom/android/server/BluetoothManagerService;->mErrorRecoveryRetryCounter:I

    return v0
.end method

.method static synthetic access$4602(Lcom/android/server/BluetoothManagerService;I)I
    .registers 2
    .param p0, "x0"  # Lcom/android/server/BluetoothManagerService;
    .param p1, "x1"  # I

    .line 114
    iput p1, p0, Lcom/android/server/BluetoothManagerService;->mErrorRecoveryRetryCounter:I

    return p1
.end method

.method static synthetic access$4700(Lcom/android/server/BluetoothManagerService;)V
    .registers 1
    .param p0, "x0"  # Lcom/android/server/BluetoothManagerService;

    .line 114
    invoke-direct {p0}, Lcom/android/server/BluetoothManagerService;->addCrashLog()V

    return-void
.end method

.method static synthetic access$4800(Lcom/android/server/BluetoothManagerService;)V
    .registers 1
    .param p0, "x0"  # Lcom/android/server/BluetoothManagerService;

    .line 114
    invoke-direct {p0}, Lcom/android/server/BluetoothManagerService;->sendBluetoothServiceDownCallback()V

    return-void
.end method

.method static synthetic access$4902(Lcom/android/server/BluetoothManagerService;Z)Z
    .registers 2
    .param p0, "x0"  # Lcom/android/server/BluetoothManagerService;
    .param p1, "x1"  # Z

    .line 114
    iput-boolean p1, p0, Lcom/android/server/BluetoothManagerService;->mUnbinding:Z

    return p1
.end method

.method static synthetic access$500(Lcom/android/server/BluetoothManagerService;ILjava/lang/String;)V
    .registers 3
    .param p0, "x0"  # Lcom/android/server/BluetoothManagerService;
    .param p1, "x1"  # I
    .param p2, "x2"  # Ljava/lang/String;

    .line 114
    invoke-direct {p0, p1, p2}, Lcom/android/server/BluetoothManagerService;->sendDisableMsg(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$5000(Lcom/android/server/BluetoothManagerService;)V
    .registers 1
    .param p0, "x0"  # Lcom/android/server/BluetoothManagerService;

    .line 114
    invoke-direct {p0}, Lcom/android/server/BluetoothManagerService;->unbindAllBluetoothProfileServices()V

    return-void
.end method

.method static synthetic access$5100(Lcom/android/server/BluetoothManagerService;Ljava/lang/Object;)Z
    .registers 3
    .param p0, "x0"  # Lcom/android/server/BluetoothManagerService;
    .param p1, "x1"  # Ljava/lang/Object;

    .line 114
    invoke-direct {p0, p1}, Lcom/android/server/BluetoothManagerService;->isPidStopped(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$5200(Lcom/android/server/BluetoothManagerService;II)V
    .registers 3
    .param p0, "x0"  # Lcom/android/server/BluetoothManagerService;
    .param p1, "x1"  # I
    .param p2, "x2"  # I

    .line 114
    invoke-direct {p0, p1, p2}, Lcom/android/server/BluetoothManagerService;->pidPkgUnfreeze(II)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/BluetoothManagerService;)Z
    .registers 2
    .param p0, "x0"  # Lcom/android/server/BluetoothManagerService;

    .line 114
    invoke-direct {p0}, Lcom/android/server/BluetoothManagerService;->isAirplaneModeOn()Z

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lcom/android/server/BluetoothManagerService;)Z
    .registers 2
    .param p0, "x0"  # Lcom/android/server/BluetoothManagerService;

    .line 114
    invoke-direct {p0}, Lcom/android/server/BluetoothManagerService;->isUserActionOnInAirPlane()Z

    move-result v0

    return v0
.end method

.method static synthetic access$800(Lcom/android/server/BluetoothManagerService;)Z
    .registers 2
    .param p0, "x0"  # Lcom/android/server/BluetoothManagerService;

    .line 114
    invoke-direct {p0}, Lcom/android/server/BluetoothManagerService;->isBluetoothPersistedStateOn()Z

    move-result v0

    return v0
.end method

.method static synthetic access$900(Lcom/android/server/BluetoothManagerService;I)V
    .registers 2
    .param p0, "x0"  # Lcom/android/server/BluetoothManagerService;
    .param p1, "x1"  # I

    .line 114
    invoke-direct {p0, p1}, Lcom/android/server/BluetoothManagerService;->persistBluetoothSetting(I)V

    return-void
.end method

.method private addActiveLog(ILjava/lang/String;Z)V
    .registers 14
    .param p1, "reason"  # I
    .param p2, "packageName"  # Ljava/lang/String;
    .param p3, "enable"  # Z

    .line 2763
    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mActiveLogs:Ljava/util/LinkedList;

    monitor-enter v0

    .line 2764
    :try_start_3
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mActiveLogs:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    const/16 v2, 0x14

    if-le v1, v2, :cond_12

    .line 2765
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mActiveLogs:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->remove()Ljava/lang/Object;

    .line 2767
    :cond_12
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mActiveLogs:Ljava/util/LinkedList;

    new-instance v9, Lcom/android/server/BluetoothManagerService$ActiveLog;

    .line 2768
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    move-object v2, v9

    move-object v3, p0

    move v4, p1

    move-object v5, p2

    move v6, p3

    invoke-direct/range {v2 .. v8}, Lcom/android/server/BluetoothManagerService$ActiveLog;-><init>(Lcom/android/server/BluetoothManagerService;ILjava/lang/String;ZJ)V

    .line 2767
    invoke-virtual {v1, v9}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 2769
    monitor-exit v0
    :try_end_26
    .catchall {:try_start_3 .. :try_end_26} :catchall_3b

    .line 2771
    if-eqz p3, :cond_2b

    const/4 v0, 0x1

    move v4, v0

    goto :goto_2d

    .line 2772
    :cond_2b
    const/4 v0, 0x2

    move v4, v0

    :goto_2d
    nop

    .line 2773
    .local v4, "state":I
    const/16 v1, 0x43

    .line 2774
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    const/4 v3, 0x0

    .line 2773
    move v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Landroid/util/StatsLog;->write_non_chained(IILjava/lang/String;IILjava/lang/String;)I

    .line 2775
    return-void

    .line 2769
    .end local v4  # "state":I
    :catchall_3b
    move-exception v1

    :try_start_3c
    monitor-exit v0
    :try_end_3d
    .catchall {:try_start_3c .. :try_end_3d} :catchall_3b

    throw v1
.end method

.method private addCrashLog()V
    .registers 5

    .line 2778
    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mCrashTimestamps:Ljava/util/LinkedList;

    monitor-enter v0

    .line 2779
    :try_start_3
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mCrashTimestamps:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    const/16 v2, 0x64

    if-ne v1, v2, :cond_12

    .line 2780
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mCrashTimestamps:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    .line 2782
    :cond_12
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mCrashTimestamps:Ljava/util/LinkedList;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 2783
    iget v1, p0, Lcom/android/server/BluetoothManagerService;->mCrashes:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/server/BluetoothManagerService;->mCrashes:I

    .line 2784
    monitor-exit v0

    .line 2785
    return-void

    .line 2784
    :catchall_27
    move-exception v1

    monitor-exit v0
    :try_end_29
    .catchall {:try_start_3 .. :try_end_29} :catchall_27

    throw v1
.end method

.method private bluetoothStateChangeHandler(II)V
    .registers 10
    .param p1, "prevState"  # I
    .param p2, "newState"  # I

    .line 2570
    const/4 v0, 0x1

    .line 2571
    .local v0, "isStandardBroadcast":Z
    if-ne p1, p2, :cond_4

    .line 2572
    return-void

    .line 2575
    :cond_4
    const/16 v1, 0xb

    const/4 v2, 0x1

    const/16 v3, 0xa

    const/16 v4, 0xd

    const/4 v5, 0x0

    const/16 v6, 0xf

    if-eq p2, v6, :cond_3c

    if-ne p2, v3, :cond_13

    goto :goto_3c

    .line 2623
    :cond_13
    const/16 v3, 0xc

    if-ne p2, v3, :cond_24

    .line 2624
    if-ne p2, v3, :cond_1a

    goto :goto_1b

    :cond_1a
    move v2, v5

    :goto_1b
    move v1, v2

    .line 2625
    .local v1, "isUp":Z
    invoke-direct {p0, v1}, Lcom/android/server/BluetoothManagerService;->sendBluetoothStateCallback(Z)V

    .line 2626
    invoke-direct {p0, p1, p2}, Lcom/android/server/BluetoothManagerService;->sendBleStateChanged(II)V

    .line 2628
    .end local v1  # "isUp":Z
    goto/16 :goto_a7

    :cond_24
    const/16 v2, 0xe

    if-eq p2, v2, :cond_36

    const/16 v2, 0x10

    if-ne p2, v2, :cond_2d

    goto :goto_36

    .line 2633
    :cond_2d
    if-eq p2, v1, :cond_31

    if-ne p2, v4, :cond_a7

    .line 2635
    :cond_31
    invoke-direct {p0, p1, p2}, Lcom/android/server/BluetoothManagerService;->sendBleStateChanged(II)V

    goto/16 :goto_a7

    .line 2630
    :cond_36
    :goto_36
    invoke-direct {p0, p1, p2}, Lcom/android/server/BluetoothManagerService;->sendBleStateChanged(II)V

    .line 2631
    const/4 v0, 0x0

    goto/16 :goto_a7

    .line 2576
    :cond_3c
    :goto_3c
    if-ne p1, v4, :cond_41

    if-ne p2, v6, :cond_41

    goto :goto_42

    :cond_41
    move v2, v5

    .line 2579
    .local v2, "intermediate_off":Z
    :goto_42
    const-string v4, "BluetoothManagerService"

    if-ne p2, v3, :cond_58

    .line 2582
    const-string v3, "Bluetooth is complete send Service Down"

    invoke-static {v4, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2584
    invoke-direct {p0}, Lcom/android/server/BluetoothManagerService;->sendBluetoothServiceDownCallback()V

    .line 2585
    invoke-virtual {p0}, Lcom/android/server/BluetoothManagerService;->unbindAndFinish()V

    .line 2586
    invoke-direct {p0, p1, p2}, Lcom/android/server/BluetoothManagerService;->sendBleStateChanged(II)V

    .line 2587
    if-eq p1, v1, :cond_a6

    .line 2589
    const/4 v0, 0x0

    goto :goto_a6

    .line 2592
    :cond_58
    if-nez v2, :cond_94

    .line 2595
    const-string v1, "Bluetooth is in LE only mode"

    invoke-static {v4, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2597
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mBluetoothGatt:Landroid/bluetooth/IBluetoothGatt;

    if-nez v1, :cond_8c

    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 2598
    const-string v3, "android.hardware.bluetooth_le"

    invoke-virtual {v1, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_72

    goto :goto_8c

    .line 2602
    :cond_72
    const-string v1, "Binding Bluetooth GATT service"

    invoke-static {v4, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2604
    new-instance v1, Landroid/content/Intent;

    const-class v3, Landroid/bluetooth/IBluetoothGatt;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2605
    .local v1, "i":Landroid/content/Intent;
    iget-object v3, p0, Lcom/android/server/BluetoothManagerService;->mConnection:Lcom/android/server/BluetoothManagerService$BluetoothServiceConnection;

    const/16 v4, 0x41

    sget-object v5, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {p0, v1, v3, v4, v5}, Lcom/android/server/BluetoothManagerService;->doBind(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    goto :goto_8f

    .line 2599
    .end local v1  # "i":Landroid/content/Intent;
    :cond_8c
    :goto_8c
    invoke-direct {p0}, Lcom/android/server/BluetoothManagerService;->continueFromBleOnState()V

    .line 2608
    :goto_8f
    invoke-direct {p0, p1, p2}, Lcom/android/server/BluetoothManagerService;->sendBleStateChanged(II)V

    .line 2610
    const/4 v0, 0x0

    goto :goto_a6

    .line 2612
    :cond_94
    if-eqz v2, :cond_a6

    .line 2614
    const-string v1, "Intermediate off, back to LE only mode"

    invoke-static {v4, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2617
    invoke-direct {p0, p1, p2}, Lcom/android/server/BluetoothManagerService;->sendBleStateChanged(II)V

    .line 2618
    invoke-direct {p0, v5}, Lcom/android/server/BluetoothManagerService;->sendBluetoothStateCallback(Z)V

    .line 2620
    const/16 p2, 0xa

    .line 2621
    invoke-direct {p0}, Lcom/android/server/BluetoothManagerService;->sendBrEdrDownCallback()V

    .line 2623
    .end local v2  # "intermediate_off":Z
    :cond_a6
    :goto_a6
    nop

    .line 2638
    :cond_a7
    :goto_a7
    if-eqz v0, :cond_d1

    .line 2639
    if-ne p1, v6, :cond_ad

    .line 2641
    const/16 p1, 0xa

    .line 2643
    :cond_ad
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2644
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "android.bluetooth.adapter.extra.PREVIOUS_STATE"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2645
    const-string v2, "android.bluetooth.adapter.extra.STATE"

    invoke-virtual {v1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2646
    const/high16 v2, 0x4000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2647
    const/high16 v2, 0x1000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2648
    iget-object v2, p0, Lcom/android/server/BluetoothManagerService;->mContext:Landroid/content/Context;

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string v4, "android.permission.BLUETOOTH"

    invoke-virtual {v2, v1, v3, v4}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 2651
    .end local v1  # "intent":Landroid/content/Intent;
    :cond_d1
    invoke-virtual {p0, p1, p2}, Lcom/android/server/BluetoothManagerService;->mzChangeBluetoothName(II)V

    .line 2653
    return-void
.end method

.method private checkBluetoothPermissionWhenWirelessConsentRequired()Z
    .registers 3

    .line 1280
    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MANAGE_BLUETOOTH_WHEN_WIRELESS_CONSENT_REQUIRED"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v0

    .line 1282
    .local v0, "result":I
    if-nez v0, :cond_c

    const/4 v1, 0x1

    goto :goto_d

    :cond_c
    const/4 v1, 0x0

    :goto_d
    return v1
.end method

.method private checkIfCallerIsForegroundUser()Z
    .registers 14

    .line 2520
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 2521
    .local v0, "callingUser":I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 2522
    .local v1, "callingUid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 2523
    .local v2, "callingIdentity":J
    iget-object v4, p0, Lcom/android/server/BluetoothManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "user"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/UserManager;

    .line 2524
    .local v4, "um":Landroid/os/UserManager;
    invoke-virtual {v4, v0}, Landroid/os/UserManager;->getProfileParent(I)Landroid/content/pm/UserInfo;

    move-result-object v5

    .line 2525
    .local v5, "ui":Landroid/content/pm/UserInfo;
    if-eqz v5, :cond_20

    iget v6, v5, Landroid/content/pm/UserInfo;->id:I

    goto :goto_22

    :cond_20
    const/16 v6, -0x2710

    .line 2526
    .local v6, "parentUser":I
    :goto_22
    invoke-static {v1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v7

    .line 2527
    .local v7, "callingAppId":I
    const/4 v8, 0x0

    .line 2529
    .local v8, "valid":Z
    :try_start_27
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v9

    .line 2530
    .local v9, "foregroundUser":I
    if-eq v0, v9, :cond_3a

    if-eq v6, v9, :cond_3a

    const/16 v10, 0x403

    if-eq v7, v10, :cond_3a

    iget v10, p0, Lcom/android/server/BluetoothManagerService;->mSystemUiUid:I

    if-ne v7, v10, :cond_38

    goto :goto_3a

    :cond_38
    const/4 v10, 0x0

    goto :goto_3b

    :cond_3a
    :goto_3a
    const/4 v10, 0x1

    :goto_3b
    move v8, v10

    .line 2532
    if-nez v8, :cond_6c

    .line 2533
    const-string v10, "BluetoothManagerService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "checkIfCallerIsForegroundUser: valid="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v12, " callingUser="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, " parentUser="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, " foregroundUser="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6c
    .catchall {:try_start_27 .. :try_end_6c} :catchall_71

    .line 2538
    :cond_6c
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2539
    nop

    .line 2540
    return v8

    .line 2538
    .end local v9  # "foregroundUser":I
    :catchall_71
    move-exception v9

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v9
.end method

.method private checkPackage(ILjava/lang/String;)V
    .registers 7
    .param p1, "uid"  # I
    .param p2, "packageName"  # Ljava/lang/String;

    .line 1251
    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mAppOps:Landroid/app/AppOpsManager;

    const-string v1, "BluetoothManagerService"

    if-eqz v0, :cond_49

    .line 1256
    if-nez p2, :cond_1d

    .line 1257
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkPackage(): called with null packageName from "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1258
    return-void

    .line 1261
    :cond_1d
    :try_start_1d
    invoke-virtual {v0, p1, p2}, Landroid/app/AppOpsManager;->checkPackage(ILjava/lang/String;)V
    :try_end_20
    .catch Ljava/lang/SecurityException; {:try_start_1d .. :try_end_20} :catch_22

    .line 1265
    nop

    .line 1266
    return-void

    .line 1262
    :catch_22
    move-exception v0

    .line 1263
    .local v0, "e":Ljava/lang/SecurityException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkPackage(): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " does not belong to uid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1264
    new-instance v1, Ljava/lang/SecurityException;

    invoke-virtual {v0}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1252
    .end local v0  # "e":Ljava/lang/SecurityException;
    :cond_49
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkPackage(): called before system boot up, uid "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", packageName "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1254
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "System has not boot yet"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private clearBleApps()V
    .registers 2

    .line 947
    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mBleApps:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 948
    return-void
.end method

.method private continueFromBleOnState()V
    .registers 6

    .line 963
    const-string v0, "BluetoothManagerService"

    const-string v1, "continueFromBleOnState()"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 966
    :try_start_7
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mBluetoothLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 967
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;

    if-nez v1, :cond_24

    .line 968
    const-string/jumbo v1, "onBluetoothServiceUp: mBluetooth is null!"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_1a} :catch_8d
    .catchall {:try_start_7 .. :try_end_1a} :catchall_8b

    .line 994
    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mBluetoothLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 969
    return-void

    .line 971
    :cond_24
    :try_start_24
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;

    invoke-interface {v1}, Landroid/bluetooth/IBluetooth;->getState()I

    move-result v1

    .line 972
    .local v1, "st":I
    const/16 v2, 0xf

    if-eq v1, v2, :cond_51

    .line 973
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onBluetoothServiceUp: state isn\'t BLE_ON: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 974
    invoke-static {v1}, Landroid/bluetooth/BluetoothAdapter;->nameForState(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 973
    invoke-static {v0, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_47
    .catch Landroid/os/RemoteException; {:try_start_24 .. :try_end_47} :catch_8d
    .catchall {:try_start_24 .. :try_end_47} :catchall_8b

    .line 994
    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mBluetoothLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 975
    return-void

    .line 977
    :cond_51
    :try_start_51
    invoke-direct {p0}, Lcom/android/server/BluetoothManagerService;->isAirplaneModeOn()Z

    move-result v2

    if-eqz v2, :cond_70

    iget-boolean v2, p0, Lcom/android/server/BluetoothManagerService;->mEnableExternal:Z

    if-nez v2, :cond_70

    .line 978
    const/4 v2, 0x2

    iget-object v3, p0, Lcom/android/server/BluetoothManagerService;->mContext:Landroid/content/Context;

    .line 979
    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 978
    const/4 v4, 0x0

    invoke-direct {p0, v2, v3, v4}, Lcom/android/server/BluetoothManagerService;->addActiveLog(ILjava/lang/String;Z)V

    .line 981
    iget-object v2, p0, Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;

    invoke-interface {v2}, Landroid/bluetooth/IBluetooth;->onBrEdrDown()V

    .line 982
    iput-boolean v4, p0, Lcom/android/server/BluetoothManagerService;->mEnable:Z

    .line 983
    iput-boolean v4, p0, Lcom/android/server/BluetoothManagerService;->mEnableExternal:Z

    goto :goto_8a

    .line 984
    :cond_70
    invoke-direct {p0}, Lcom/android/server/BluetoothManagerService;->isBluetoothPersistedStateOnBluetooth()Z

    move-result v2

    if-nez v2, :cond_7a

    iget-boolean v2, p0, Lcom/android/server/BluetoothManagerService;->mEnableExternal:Z

    if-eqz v2, :cond_8a

    .line 987
    :cond_7a
    iget-object v2, p0, Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;

    iget-boolean v3, p0, Lcom/android/server/BluetoothManagerService;->mQuietEnable:Z

    invoke-interface {v2, v3}, Landroid/bluetooth/IBluetooth;->updateQuietModeStatus(Z)V

    .line 988
    iget-object v2, p0, Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;

    invoke-interface {v2}, Landroid/bluetooth/IBluetooth;->onLeServiceUp()V

    .line 989
    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcom/android/server/BluetoothManagerService;->persistBluetoothSetting(I)V
    :try_end_8a
    .catch Landroid/os/RemoteException; {:try_start_51 .. :try_end_8a} :catch_8d
    .catchall {:try_start_51 .. :try_end_8a} :catchall_8b

    .line 994
    .end local v1  # "st":I
    :cond_8a
    :goto_8a
    goto :goto_94

    :catchall_8b
    move-exception v0

    goto :goto_9f

    .line 991
    :catch_8d
    move-exception v1

    .line 992
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_8e
    const-string v2, "Unable to call onServiceUp"

    invoke-static {v0, v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_93
    .catchall {:try_start_8e .. :try_end_93} :catchall_8b

    .line 994
    nop

    .end local v1  # "e":Landroid/os/RemoteException;
    :goto_94
    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mBluetoothLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 995
    nop

    .line 996
    return-void

    .line 994
    :goto_9f
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mBluetoothLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    throw v0
.end method

.method private disableBleScanMode()V
    .registers 4

    .line 859
    const-string v0, "BluetoothManagerService"

    :try_start_2
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mBluetoothLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 860
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;

    if-eqz v1, :cond_2b

    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;

    invoke-interface {v1}, Landroid/bluetooth/IBluetooth;->getState()I

    move-result v1

    const/16 v2, 0xc

    if-eq v1, v2, :cond_2b

    invoke-direct {p0}, Lcom/android/server/BluetoothManagerService;->isBluetoothPersistedStateOnBluetooth()Z

    move-result v1

    if-nez v1, :cond_2b

    .line 862
    const-string v1, "Reseting the mEnable flag for clean disable"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 864
    iget-boolean v1, p0, Lcom/android/server/BluetoothManagerService;->mEnableExternal:Z

    if-nez v1, :cond_2b

    .line 865
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/BluetoothManagerService;->mEnable:Z
    :try_end_2b
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2b} :catch_2e
    .catchall {:try_start_2 .. :try_end_2b} :catchall_2c

    .line 871
    :cond_2b
    goto :goto_35

    :catchall_2c
    move-exception v0

    goto :goto_40

    .line 868
    :catch_2e
    move-exception v1

    .line 869
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_2f
    const-string v2, "getState()"

    invoke-static {v0, v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_34
    .catchall {:try_start_2f .. :try_end_34} :catchall_2c

    .line 871
    nop

    .end local v1  # "e":Landroid/os/RemoteException;
    :goto_35
    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mBluetoothLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 872
    nop

    .line 873
    return-void

    .line 871
    :goto_40
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mBluetoothLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    throw v0
.end method

.method private static getEnableDisableReasonString(I)Ljava/lang/String;
    .registers 3
    .param p0, "reason"  # I

    .line 3117
    packed-switch p0, :pswitch_data_36

    .line 3137
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UNKNOWN["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 3135
    :pswitch_1a  #0x9
    const-string v0, "RESTORE_USER_SETTING"

    return-object v0

    .line 3133
    :pswitch_1d  #0x8
    const-string v0, "USER_SWITCH"

    return-object v0

    .line 3131
    :pswitch_20  #0x7
    const-string v0, "CRASH"

    return-object v0

    .line 3129
    :pswitch_23  #0x6
    const-string v0, "SYSTEM_BOOT"

    return-object v0

    .line 3127
    :pswitch_26  #0x5
    const-string v0, "START_ERROR"

    return-object v0

    .line 3125
    :pswitch_29  #0x4
    const-string v0, "RESTARTED"

    return-object v0

    .line 3123
    :pswitch_2c  #0x3
    const-string v0, "DISALLOWED"

    return-object v0

    .line 3121
    :pswitch_2f  #0x2
    const-string v0, "AIRPLANE_MODE"

    return-object v0

    .line 3119
    :pswitch_32  #0x1
    const-string v0, "APPLICATION_REQUEST"

    return-object v0

    nop

    :pswitch_data_36
    .packed-switch 0x1
        :pswitch_32  #00000001
        :pswitch_2f  #00000002
        :pswitch_2c  #00000003
        :pswitch_29  #00000004
        :pswitch_26  #00000005
        :pswitch_23  #00000006
        :pswitch_20  #00000007
        :pswitch_1d  #00000008
        :pswitch_1a  #00000009
    .end packed-switch
.end method

.method private handleDisable()V
    .registers 4

    .line 2502
    const-string v0, "BluetoothManagerService"

    :try_start_2
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mBluetoothLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 2503
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;

    if-eqz v1, :cond_21

    .line 2505
    const-string v1, "Sending off request."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2507
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;

    invoke-interface {v1}, Landroid/bluetooth/IBluetooth;->disable()Z

    move-result v1

    if-nez v1, :cond_21

    .line 2508
    const-string v1, "IBluetooth.disable() returned false"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_21
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_21} :catch_24
    .catchall {:try_start_2 .. :try_end_21} :catchall_22

    .line 2514
    :cond_21
    goto :goto_2b

    :catchall_22
    move-exception v0

    goto :goto_36

    .line 2511
    :catch_24
    move-exception v1

    .line 2512
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_25
    const-string v2, "Unable to call disable()"

    invoke-static {v0, v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2a
    .catchall {:try_start_25 .. :try_end_2a} :catchall_22

    .line 2514
    nop

    .end local v1  # "e":Landroid/os/RemoteException;
    :goto_2b
    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mBluetoothLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 2515
    nop

    .line 2516
    return-void

    .line 2514
    :goto_36
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mBluetoothLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    throw v0
.end method

.method private handleEnable(Z)V
    .registers 8
    .param p1, "quietMode"  # Z

    .line 2454
    const-string v0, "BluetoothManagerService"

    iput-boolean p1, p0, Lcom/android/server/BluetoothManagerService;->mQuietEnable:Z

    .line 2457
    :try_start_4
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mBluetoothLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 2458
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;

    if-nez v1, :cond_45

    iget-boolean v1, p0, Lcom/android/server/BluetoothManagerService;->mBinding:Z

    if-nez v1, :cond_45

    .line 2460
    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mHandler:Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 2461
    .local v0, "timeoutMsg":Landroid/os/Message;
    iget-object v2, p0, Lcom/android/server/BluetoothManagerService;->mHandler:Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    const-wide/16 v3, 0xbb8

    invoke-virtual {v2, v0, v3, v4}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 2462
    new-instance v2, Landroid/content/Intent;

    const-class v3, Landroid/bluetooth/IBluetooth;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2463
    .local v2, "i":Landroid/content/Intent;
    iget-object v3, p0, Lcom/android/server/BluetoothManagerService;->mConnection:Lcom/android/server/BluetoothManagerService$BluetoothServiceConnection;

    const/16 v4, 0x41

    sget-object v5, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {p0, v2, v3, v4, v5}, Lcom/android/server/BluetoothManagerService;->doBind(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v3

    if-nez v3, :cond_41

    .line 2465
    iget-object v3, p0, Lcom/android/server/BluetoothManagerService;->mHandler:Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    invoke-virtual {v3, v1}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->removeMessages(I)V

    goto :goto_70

    .line 2467
    :cond_41
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/BluetoothManagerService;->mBinding:Z

    goto :goto_70

    .line 2469
    .end local v0  # "timeoutMsg":Landroid/os/Message;
    .end local v2  # "i":Landroid/content/Intent;
    :cond_45
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;
    :try_end_47
    .catchall {:try_start_4 .. :try_end_47} :catchall_7c

    if-eqz v1, :cond_70

    .line 2472
    :try_start_49
    iget-boolean v1, p0, Lcom/android/server/BluetoothManagerService;->mQuietEnable:Z

    if-nez v1, :cond_5b

    .line 2473
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;

    invoke-interface {v1}, Landroid/bluetooth/IBluetooth;->enable()Z

    move-result v1

    if-nez v1, :cond_68

    .line 2474
    const-string v1, "IBluetooth.enable() returned false"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_68

    .line 2477
    :cond_5b
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;

    invoke-interface {v1}, Landroid/bluetooth/IBluetooth;->enableNoAutoConnect()Z

    move-result v1

    if-nez v1, :cond_68

    .line 2478
    const-string v1, "IBluetooth.enableNoAutoConnect() returned false"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_68
    .catch Landroid/os/RemoteException; {:try_start_49 .. :try_end_68} :catch_69
    .catchall {:try_start_49 .. :try_end_68} :catchall_7c

    .line 2483
    :cond_68
    :goto_68
    goto :goto_71

    .line 2481
    :catch_69
    move-exception v1

    .line 2482
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_6a
    const-string v2, "Unable to call enable()"

    invoke-static {v0, v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6f
    .catchall {:try_start_6a .. :try_end_6f} :catchall_7c

    goto :goto_71

    .line 2469
    .end local v1  # "e":Landroid/os/RemoteException;
    :cond_70
    :goto_70
    nop

    .line 2486
    :goto_71
    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mBluetoothLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 2487
    nop

    .line 2488
    return-void

    .line 2486
    :catchall_7c
    move-exception v0

    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mBluetoothLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    throw v0
.end method

.method private hook_checkIfCallerIsForegroundUser()Z
    .registers 2

    .line 2560
    nop

    .line 2561
    const/16 v0, 0x4d

    invoke-static {v0}, Lmeizu/security/FlymePermissionManager;->isFlymePermissionGranted(I)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 2562
    invoke-direct {p0}, Lcom/android/server/BluetoothManagerService;->checkIfCallerIsForegroundUser()Z

    move-result v0

    return v0

    .line 2564
    :cond_e
    const/4 v0, 0x0

    return v0
.end method

.method private isAirplaneModeOn()Z
    .registers 4

    .line 539
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

    .line 2824
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2826
    .local v0, "callingIdentity":J
    :try_start_4
    iget-object v2, p0, Lcom/android/server/BluetoothManagerService;->mContext:Landroid/content/Context;

    const-class v3, Landroid/os/UserManager;

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/UserManager;

    const-string/jumbo v3, "no_bluetooth"

    sget-object v4, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    .line 2827
    invoke-virtual {v2, v3, v4}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v2
    :try_end_17
    .catchall {:try_start_4 .. :try_end_17} :catchall_1b

    .line 2829
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2826
    return v2

    .line 2829
    :catchall_1b
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method private isBluetoothPersistedStateOn()Z
    .registers 5

    .line 551
    invoke-direct {p0}, Lcom/android/server/BluetoothManagerService;->supportBluetoothPersistedState()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 552
    return v1

    .line 554
    :cond_8
    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mContentResolver:Landroid/content/ContentResolver;

    const/4 v2, -0x1

    const-string v3, "bluetooth_on"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 556
    .local v0, "state":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Bluetooth persisted state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "BluetoothManagerService"

    invoke-static {v3, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 558
    if-eqz v0, :cond_2a

    const/4 v1, 0x1

    :cond_2a
    return v1
.end method

.method private isBluetoothPersistedStateOnBluetooth()Z
    .registers 5

    .line 565
    invoke-direct {p0}, Lcom/android/server/BluetoothManagerService;->supportBluetoothPersistedState()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 566
    return v1

    .line 568
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

.method private isCanDisable(Z)Z
    .registers 9
    .param p1, "persist"  # Z

    .line 2839
    const/4 v0, 0x0

    .line 2842
    .local v0, "isTransfering":Z
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/bluetooth/BluetoothAdapterExt;->getBtSessionStatus(Landroid/content/Context;)I

    move-result v1

    .line 2843
    .local v1, "status":I
    const-string v2, "BluetoothManagerService"

    const/4 v3, 0x0

    if-nez v1, :cond_13

    .line 2845
    const-string v4, "Bluetooth is transfering, can\'t disable it."

    invoke-static {v2, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2846
    const/4 v0, 0x1

    goto :goto_29

    .line 2849
    :cond_13
    iget-object v4, p0, Lcom/android/server/BluetoothManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "mz_nfcp2p_on"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 2851
    const/4 v4, 0x1

    if-eq v1, v4, :cond_24

    .line 2852
    return v4

    .line 2854
    :cond_24
    const-string v4, "Nfc is on, can\'t disable bluetooth."

    invoke-static {v2, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2857
    :goto_29
    new-instance v2, Landroid/content/Intent;

    const-string v4, "android.btopp.nfcp2p.ACTION_BT_TURN_OFF_PROMPT"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2858
    .local v2, "i":Landroid/content/Intent;
    const-string/jumbo v4, "isTransfering"

    invoke-virtual {v2, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2859
    const-string/jumbo v4, "persist"

    invoke-virtual {v2, v4, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2860
    const-string v4, "com.meizu.share"

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 2861
    const/high16 v4, 0x1000000

    invoke-virtual {v2, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2862
    iget-object v4, p0, Lcom/android/server/BluetoothManagerService;->mContext:Landroid/content/Context;

    sget-object v5, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string v6, "android.permission.BLUETOOTH"

    invoke-virtual {v4, v2, v5, v6}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 2863
    return v3
.end method

.method private isNameAndAddressSet()Z
    .registers 3

    .line 616
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

.method private isPidStopped(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "pidObj"  # Ljava/lang/Object;

    .line 2992
    const/4 v0, 0x0

    .line 2993
    .local v0, "isStoped":Z
    move-object v1, p1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 2994
    .local v1, "pid":I
    nop

    .line 2999
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isPidStopped "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "BluetoothManagerService"

    invoke-static {v3, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3000
    return v0
.end method

.method private final isUserActionOnInAirPlane()Z
    .registers 4

    .line 603
    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v1, "mz_user_on_bt_airplane"

    const/4 v2, -0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 605
    .local v0, "state":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "isUserActionOnInAirPlaneMode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "BluetoothManagerService"

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 606
    const/4 v1, 0x1

    if-ne v0, v1, :cond_25

    goto :goto_26

    :cond_25
    const/4 v1, 0x0

    :goto_26
    return v1
.end method

.method private loadStoredNameAndAddress()V
    .registers 5

    .line 625
    const-string v0, "BluetoothManagerService"

    const-string v1, "Loading stored name and address"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 627
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 628
    const v2, 0x111002e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-eqz v1, :cond_28

    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mContentResolver:Landroid/content/ContentResolver;

    const/4 v2, 0x0

    .line 629
    const-string v3, "bluetooth_addr_valid"

    invoke-static {v1, v3, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_28

    .line 633
    const-string/jumbo v1, "invalid bluetooth name and address stored"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 635
    return-void

    .line 639
    :cond_28
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v2, "meizu_device_name"

    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/BluetoothManagerService;->mName:Ljava/lang/String;

    .line 641
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mContentResolver:Landroid/content/ContentResolver;

    const-string v2, "bluetooth_address"

    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/BluetoothManagerService;->mAddress:Ljava/lang/String;

    .line 643
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

    .line 645
    return-void
.end method

.method private mzAllowQuietlyEnableBT(I)Z
    .registers 7
    .param p1, "callingAppId"  # I

    .line 2869
    const-string v0, "BluetoothManagerService"

    const/4 v1, -0x1

    .line 2871
    .local v1, "meizuShareUid":I
    const/4 v2, 0x0

    :try_start_4
    iget-object v3, p0, Lcom/android/server/BluetoothManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const-string v4, "com.meizu.share"

    invoke-virtual {v3, v4, v2}, Landroid/content/pm/PackageManager;->getPackageUid(Ljava/lang/String;I)I

    move-result v3
    :try_end_10
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_4 .. :try_end_10} :catch_12

    move v1, v3

    .line 2875
    goto :goto_18

    .line 2873
    :catch_12
    move-exception v3

    .line 2874
    .local v3, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v4, "NameNotFoundException, Unable to resolve com.meizu.share\'s UID."

    invoke-static {v0, v4, v3}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2876
    .end local v3  # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :goto_18
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "mzAllowQuietlyEnableBT, callingAppId: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2878
    const/16 v0, 0x3ea

    if-eq p1, v0, :cond_39

    const/16 v0, 0x403

    if-eq p1, v0, :cond_39

    if-ne p1, v1, :cond_38

    goto :goto_39

    .line 2882
    :cond_38
    return v2

    .line 2880
    :cond_39
    :goto_39
    const/4 v0, 0x1

    return v0
.end method

.method private persistBluetoothSetting(I)V
    .registers 6
    .param p1, "value"  # I

    .line 577
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Persisting Bluetooth Setting: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BluetoothManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 580
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 581
    .local v0, "callingIdentity":J
    iget-object v2, p0, Lcom/android/server/BluetoothManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "bluetooth_on"

    invoke-static {v2, v3, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 582
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 583
    return-void
.end method

.method private persistUserActionInAirPlane(I)V
    .registers 6
    .param p1, "value"  # I

    .line 590
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "persistUserActionInAirPlane: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BluetoothManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 592
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 593
    .local v0, "callingIdentity":J
    iget-object v2, p0, Lcom/android/server/BluetoothManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "mz_user_on_bt_airplane"

    invoke-static {v2, v3, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 596
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 597
    return-void
.end method

.method private pidPkgUnfreeze(II)V
    .registers 7
    .param p1, "pid"  # I
    .param p2, "uid"  # I

    .line 2977
    const/4 v0, 0x0

    .line 2979
    .local v0, "pkgs":[Ljava/lang/String;
    :try_start_1
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v1

    invoke-interface {v1, p2}, Landroid/content/pm/IPackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v1
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_9} :catch_b

    move-object v0, v1

    .line 2981
    goto :goto_c

    .line 2980
    :catch_b
    move-exception v1

    .line 2982
    :goto_c
    if-eqz v0, :cond_1b

    array-length v1, v0

    if-lez v1, :cond_1b

    .line 2983
    array-length v1, v0

    const/4 v2, 0x0

    :goto_13
    if-ge v2, v1, :cond_1b

    aget-object v3, v0, v2

    .line 2984
    .local v3, "pkg":Ljava/lang/String;
    nop

    .line 2983
    .end local v3  # "pkg":Ljava/lang/String;
    add-int/lit8 v2, v2, 0x1

    goto :goto_13

    .line 2989
    :cond_1b
    return-void
.end method

.method private recoverBluetoothServiceFromError(Z)V
    .registers 6
    .param p1, "clearBle"  # Z

    .line 2788
    const-string v0, "BluetoothManagerService"

    const-string/jumbo v1, "recoverBluetoothServiceFromError"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2790
    :try_start_8
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mBluetoothLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 2791
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;

    if-eqz v1, :cond_1c

    .line 2793
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;

    iget-object v2, p0, Lcom/android/server/BluetoothManagerService;->mBluetoothCallback:Landroid/bluetooth/IBluetoothCallback;

    invoke-interface {v1, v2}, Landroid/bluetooth/IBluetooth;->unregisterCallback(Landroid/bluetooth/IBluetoothCallback;)V
    :try_end_1c
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_1c} :catch_1f
    .catchall {:try_start_8 .. :try_end_1c} :catchall_1d

    .line 2798
    :cond_1c
    goto :goto_26

    :catchall_1d
    move-exception v0

    goto :goto_63

    .line 2795
    :catch_1f
    move-exception v1

    .line 2796
    .local v1, "re":Landroid/os/RemoteException;
    :try_start_20
    const-string v2, "Unable to unregister"

    invoke-static {v0, v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_25
    .catchall {:try_start_20 .. :try_end_25} :catchall_1d

    .line 2798
    nop

    .end local v1  # "re":Landroid/os/RemoteException;
    :goto_26
    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mBluetoothLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 2799
    nop

    .line 2801
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, v1, v0}, Lcom/android/server/BluetoothManagerService;->waitForMonitoredOnOff(ZZ)Z

    .line 2803
    invoke-direct {p0}, Lcom/android/server/BluetoothManagerService;->sendBluetoothServiceDownCallback()V

    .line 2805
    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mHandler:Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    const/16 v2, 0x3c

    invoke-virtual {v0, v2}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->removeMessages(I)V

    .line 2806
    const/16 v0, 0xa

    iput v0, p0, Lcom/android/server/BluetoothManagerService;->mState:I

    .line 2808
    if-eqz p1, :cond_48

    .line 2809
    invoke-direct {p0}, Lcom/android/server/BluetoothManagerService;->clearBleApps()V

    .line 2812
    :cond_48
    iput-boolean v1, p0, Lcom/android/server/BluetoothManagerService;->mEnable:Z

    .line 2814
    iget v0, p0, Lcom/android/server/BluetoothManagerService;->mErrorRecoveryRetryCounter:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/server/BluetoothManagerService;->mErrorRecoveryRetryCounter:I

    const/4 v1, 0x6

    if-ge v0, v1, :cond_62

    .line 2816
    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mHandler:Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    const/16 v1, 0x2a

    invoke-virtual {v0, v1}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 2817
    .local v0, "restartMsg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mHandler:Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 2821
    .end local v0  # "restartMsg":Landroid/os/Message;
    :cond_62
    return-void

    .line 2798
    :goto_63
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mBluetoothLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    throw v0
.end method

.method private registerForBleScanModeChange()V
    .registers 5

    .line 826
    new-instance v0, Lcom/android/server/BluetoothManagerService$5;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/BluetoothManagerService$5;-><init>(Lcom/android/server/BluetoothManagerService;Landroid/os/Handler;)V

    .line 851
    .local v0, "contentObserver":Landroid/database/ContentObserver;
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mContentResolver:Landroid/content/ContentResolver;

    .line 852
    const-string v2, "ble_scan_always_enabled"

    invoke-static {v2}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 851
    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 854
    return-void
.end method

.method private sendBleStateChanged(II)V
    .registers 7
    .param p1, "prevState"  # I
    .param p2, "newState"  # I

    .line 2545
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Sending BLE State Change: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2546
    invoke-static {p1}, Landroid/bluetooth/BluetoothAdapter;->nameForState(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " > "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2547
    invoke-static {p2}, Landroid/bluetooth/BluetoothAdapter;->nameForState(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2545
    const-string v1, "BluetoothManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2550
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.bluetooth.adapter.action.BLE_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2551
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "android.bluetooth.adapter.extra.PREVIOUS_STATE"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2552
    const-string v1, "android.bluetooth.adapter.extra.STATE"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2553
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2554
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 2555
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string v3, "android.permission.BLUETOOTH"

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 2556
    return-void
.end method

.method private sendBluetoothServiceDownCallback()V
    .registers 7

    .line 1747
    const-string v0, "BluetoothManagerService"

    :try_start_2
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v1

    .line 1748
    .local v1, "n":I
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
    .catchall {:try_start_2 .. :try_end_21} :catchall_a3

    .line 1749
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_22
    if-ge v2, v1, :cond_9c

    .line 1752
    :try_start_24
    iget-object v3, p0, Lcom/android/server/BluetoothManagerService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v2}, Landroid/os/RemoteCallbackList;->getBroadcastCookie(I)Ljava/lang/Object;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/server/BluetoothManagerService;->isPidStopped(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4c

    .line 1753
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "skipping bluetooth call for freeze state pid "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/BluetoothManagerService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4, v2}, Landroid/os/RemoteCallbackList;->getBroadcastCookie(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1754
    goto :goto_99

    .line 1761
    :cond_4c
    iget-object v3, p0, Lcom/android/server/BluetoothManagerService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Landroid/bluetooth/IBluetoothManagerCallback;

    .line 1762
    .local v3, "callback":Landroid/bluetooth/IBluetoothManagerCallback;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "sendBluetoothServiceDownCallback(), Callback: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1763
    iget-object v4, p0, Lcom/android/server/BluetoothManagerService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4, v2}, Landroid/os/RemoteCallbackList;->getBroadcastCookie(I)Ljava/lang/Object;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/server/BluetoothManagerService;->sendCallbackTimeout(Ljava/lang/Object;)V

    .line 1766
    iget-object v4, p0, Lcom/android/server/BluetoothManagerService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v4

    check-cast v4, Landroid/bluetooth/IBluetoothManagerCallback;

    invoke-interface {v4}, Landroid/bluetooth/IBluetoothManagerCallback;->onBluetoothServiceDown()V
    :try_end_7d
    .catch Landroid/os/RemoteException; {:try_start_24 .. :try_end_7d} :catch_7e
    .catchall {:try_start_24 .. :try_end_7d} :catchall_a3

    .line 1769
    .end local v3  # "callback":Landroid/bluetooth/IBluetoothManagerCallback;
    goto :goto_93

    .line 1767
    :catch_7e
    move-exception v3

    .line 1768
    .local v3, "e":Landroid/os/RemoteException;
    :try_start_7f
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to call onBluetoothServiceDown() on callback #"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1774
    .end local v3  # "e":Landroid/os/RemoteException;
    :goto_93
    iget-object v3, p0, Lcom/android/server/BluetoothManagerService;->mCallbackTimeoutHandler:Lcom/android/server/BluetoothManagerService$CallbackTimeoutHandler;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/android/server/BluetoothManagerService$CallbackTimeoutHandler;->removeMessages(I)V
    :try_end_99
    .catchall {:try_start_7f .. :try_end_99} :catchall_a3

    .line 1749
    :goto_99
    add-int/lit8 v2, v2, 0x1

    goto :goto_22

    .line 1779
    .end local v1  # "n":I
    .end local v2  # "i":I
    :cond_9c
    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 1780
    nop

    .line 1781
    return-void

    .line 1779
    :catchall_a3
    move-exception v0

    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    throw v0
.end method

.method private sendBluetoothServiceUpCallback()V
    .registers 7

    .line 1707
    const-string v0, "BluetoothManagerService"

    :try_start_2
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v1

    .line 1708
    .local v1, "n":I
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
    .catchall {:try_start_2 .. :try_end_21} :catchall_a5

    .line 1709
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_22
    if-ge v2, v1, :cond_9e

    .line 1712
    :try_start_24
    iget-object v3, p0, Lcom/android/server/BluetoothManagerService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v2}, Landroid/os/RemoteCallbackList;->getBroadcastCookie(I)Ljava/lang/Object;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/server/BluetoothManagerService;->isPidStopped(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4c

    .line 1713
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "skipping bluetooth call for freeze state pid "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/BluetoothManagerService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4, v2}, Landroid/os/RemoteCallbackList;->getBroadcastCookie(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1714
    goto :goto_9b

    .line 1721
    :cond_4c
    iget-object v3, p0, Lcom/android/server/BluetoothManagerService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Landroid/bluetooth/IBluetoothManagerCallback;

    .line 1722
    .local v3, "callback":Landroid/bluetooth/IBluetoothManagerCallback;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "sendBluetoothServiceUpCallback(), Callback: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1723
    iget-object v4, p0, Lcom/android/server/BluetoothManagerService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4, v2}, Landroid/os/RemoteCallbackList;->getBroadcastCookie(I)Ljava/lang/Object;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/server/BluetoothManagerService;->sendCallbackTimeout(Ljava/lang/Object;)V

    .line 1726
    iget-object v4, p0, Lcom/android/server/BluetoothManagerService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v4

    check-cast v4, Landroid/bluetooth/IBluetoothManagerCallback;

    iget-object v5, p0, Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;

    invoke-interface {v4, v5}, Landroid/bluetooth/IBluetoothManagerCallback;->onBluetoothServiceUp(Landroid/bluetooth/IBluetooth;)V
    :try_end_7f
    .catch Landroid/os/RemoteException; {:try_start_24 .. :try_end_7f} :catch_80
    .catchall {:try_start_24 .. :try_end_7f} :catchall_a5

    .line 1729
    .end local v3  # "callback":Landroid/bluetooth/IBluetoothManagerCallback;
    goto :goto_95

    .line 1727
    :catch_80
    move-exception v3

    .line 1728
    .local v3, "e":Landroid/os/RemoteException;
    :try_start_81
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to call onBluetoothServiceUp() on callback #"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1733
    .end local v3  # "e":Landroid/os/RemoteException;
    :goto_95
    iget-object v3, p0, Lcom/android/server/BluetoothManagerService;->mCallbackTimeoutHandler:Lcom/android/server/BluetoothManagerService$CallbackTimeoutHandler;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/android/server/BluetoothManagerService$CallbackTimeoutHandler;->removeMessages(I)V
    :try_end_9b
    .catchall {:try_start_81 .. :try_end_9b} :catchall_a5

    .line 1709
    :goto_9b
    add-int/lit8 v2, v2, 0x1

    goto :goto_22

    .line 1738
    .end local v1  # "n":I
    .end local v2  # "i":I
    :cond_9e
    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 1739
    nop

    .line 1740
    return-void

    .line 1738
    :catchall_a5
    move-exception v0

    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    throw v0
.end method

.method private sendBluetoothStateCallback(Z)V
    .registers 8
    .param p1, "isUp"  # Z

    .line 1665
    const-string v0, "BluetoothManagerService"

    :try_start_2
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mStateChangeCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v1

    .line 1667
    .local v1, "n":I
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
    .catchall {:try_start_2 .. :try_end_29} :catchall_8e

    .line 1670
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2a
    if-ge v2, v1, :cond_87

    .line 1673
    :try_start_2c
    iget-object v3, p0, Lcom/android/server/BluetoothManagerService;->mStateChangeCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v2}, Landroid/os/RemoteCallbackList;->getBroadcastCookie(I)Ljava/lang/Object;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/server/BluetoothManagerService;->isPidStopped(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_54

    .line 1674
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "skipping bluetooth call for freeze state pid "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/BluetoothManagerService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4, v2}, Landroid/os/RemoteCallbackList;->getBroadcastCookie(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1675
    goto :goto_84

    .line 1682
    :cond_54
    iget-object v3, p0, Lcom/android/server/BluetoothManagerService;->mStateChangeCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v2}, Landroid/os/RemoteCallbackList;->getBroadcastCookie(I)Ljava/lang/Object;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/server/BluetoothManagerService;->sendCallbackTimeout(Ljava/lang/Object;)V

    .line 1685
    iget-object v3, p0, Lcom/android/server/BluetoothManagerService;->mStateChangeCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Landroid/bluetooth/IBluetoothStateChangeCallback;

    invoke-interface {v3, p1}, Landroid/bluetooth/IBluetoothStateChangeCallback;->onBluetoothStateChange(Z)V
    :try_end_68
    .catch Landroid/os/RemoteException; {:try_start_2c .. :try_end_68} :catch_69
    .catchall {:try_start_2c .. :try_end_68} :catchall_8e

    .line 1688
    goto :goto_7e

    .line 1686
    :catch_69
    move-exception v3

    .line 1687
    .local v3, "e":Landroid/os/RemoteException;
    :try_start_6a
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to call onBluetoothStateChange() on callback #"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1693
    .end local v3  # "e":Landroid/os/RemoteException;
    :goto_7e
    iget-object v3, p0, Lcom/android/server/BluetoothManagerService;->mCallbackTimeoutHandler:Lcom/android/server/BluetoothManagerService$CallbackTimeoutHandler;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/android/server/BluetoothManagerService$CallbackTimeoutHandler;->removeMessages(I)V
    :try_end_84
    .catchall {:try_start_6a .. :try_end_84} :catchall_8e

    .line 1670
    :goto_84
    add-int/lit8 v2, v2, 0x1

    goto :goto_2a

    .line 1698
    .end local v1  # "n":I
    .end local v2  # "i":I
    :cond_87
    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mStateChangeCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 1699
    nop

    .line 1700
    return-void

    .line 1698
    :catchall_8e
    move-exception v0

    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mStateChangeCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    throw v0
.end method

.method private sendBrEdrDownCallback()V
    .registers 4

    .line 1004
    const-string v0, "BluetoothManagerService"

    const-string v1, "Calling sendBrEdrDownCallback callbacks"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1007
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;

    if-nez v1, :cond_11

    .line 1008
    const-string v1, "Bluetooth handle is null"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1009
    return-void

    .line 1012
    :cond_11
    invoke-virtual {p0}, Lcom/android/server/BluetoothManagerService;->isBleAppPresent()Z

    move-result v1

    if-eqz v1, :cond_28

    .line 1015
    :try_start_17
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mBluetoothGatt:Landroid/bluetooth/IBluetoothGatt;

    if-eqz v1, :cond_27

    .line 1016
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mBluetoothGatt:Landroid/bluetooth/IBluetoothGatt;

    invoke-interface {v1}, Landroid/bluetooth/IBluetoothGatt;->unregAll()V
    :try_end_20
    .catch Landroid/os/RemoteException; {:try_start_17 .. :try_end_20} :catch_21

    goto :goto_27

    .line 1018
    :catch_21
    move-exception v1

    .line 1019
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "Unable to disconnect all apps."

    invoke-static {v0, v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1020
    .end local v1  # "e":Landroid/os/RemoteException;
    :cond_27
    :goto_27
    goto :goto_4e

    .line 1023
    :cond_28
    :try_start_28
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mBluetoothLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 1024
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;

    if-eqz v1, :cond_3a

    .line 1025
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;

    invoke-interface {v1}, Landroid/bluetooth/IBluetooth;->onBrEdrDown()V
    :try_end_3a
    .catch Landroid/os/RemoteException; {:try_start_28 .. :try_end_3a} :catch_3d
    .catchall {:try_start_28 .. :try_end_3a} :catchall_3b

    .line 1030
    :cond_3a
    goto :goto_44

    :catchall_3b
    move-exception v0

    goto :goto_4f

    .line 1027
    :catch_3d
    move-exception v1

    .line 1028
    .restart local v1  # "e":Landroid/os/RemoteException;
    :try_start_3e
    const-string v2, "Call to onBrEdrDown() failed."

    invoke-static {v0, v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_43
    .catchall {:try_start_3e .. :try_end_43} :catchall_3b

    .line 1030
    nop

    .end local v1  # "e":Landroid/os/RemoteException;
    :goto_44
    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mBluetoothLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 1031
    nop

    .line 1034
    :goto_4e
    return-void

    .line 1030
    :goto_4f
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mBluetoothLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    throw v0
.end method

.method private sendCallbackTimeout(Ljava/lang/Object;)V
    .registers 6
    .param p1, "pid"  # Ljava/lang/Object;

    .line 2966
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 2967
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->what:I

    .line 2968
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 2969
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mCallbackTimeoutHandler:Lcom/android/server/BluetoothManagerService$CallbackTimeoutHandler;

    const-wide/16 v2, 0x4e20

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/server/BluetoothManagerService$CallbackTimeoutHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 2970
    return-void
.end method

.method private sendDisableMsg(ILjava/lang/String;)V
    .registers 5
    .param p1, "reason"  # I
    .param p2, "packageName"  # Ljava/lang/String;

    .line 2752
    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mHandler:Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->sendMessage(Landroid/os/Message;)Z

    .line 2753
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/BluetoothManagerService;->addActiveLog(ILjava/lang/String;Z)V

    .line 2754
    return-void
.end method

.method private sendEnableMsg(ZILjava/lang/String;)V
    .registers 7
    .param p1, "quietMode"  # Z
    .param p2, "reason"  # I
    .param p3, "packageName"  # Ljava/lang/String;

    .line 2757
    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mHandler:Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v2, p1, v1}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->sendMessage(Landroid/os/Message;)Z

    .line 2758
    invoke-direct {p0, p2, p3, v2}, Lcom/android/server/BluetoothManagerService;->addActiveLog(ILjava/lang/String;Z)V

    .line 2759
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/BluetoothManagerService;->mLastEnabledTime:J

    .line 2760
    return-void
.end method

.method private startConsentUiIfNeeded(Ljava/lang/String;ILjava/lang/String;)Z
    .registers 11
    .param p1, "packageName"  # Ljava/lang/String;
    .param p2, "callingUid"  # I
    .param p3, "intentAction"  # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1214
    invoke-direct {p0}, Lcom/android/server/BluetoothManagerService;->checkBluetoothPermissionWhenWirelessConsentRequired()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    .line 1215
    return v1

    .line 1219
    :cond_8
    :try_start_8
    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/high16 v2, 0x10000000

    .line 1222
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    .line 1220
    invoke-virtual {v0, p1, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 1223
    .local v0, "applicationInfo":Landroid/content/pm/ApplicationInfo;
    iget v2, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    if-ne v2, p2, :cond_50

    .line 1228
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, p3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1229
    .local v2, "intent":Landroid/content/Intent;
    const-string v3, "android.intent.extra.PACKAGE_NAME"

    invoke-virtual {v2, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1230
    const/high16 v3, 0x10800000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;
    :try_end_2b
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_8 .. :try_end_2b} :catch_6f

    .line 1233
    :try_start_2b
    iget-object v3, p0, Lcom/android/server/BluetoothManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_30
    .catch Landroid/content/ActivityNotFoundException; {:try_start_2b .. :try_end_30} :catch_33
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2b .. :try_end_30} :catch_6f

    .line 1238
    nop

    .line 1239
    const/4 v1, 0x1

    return v1

    .line 1234
    :catch_33
    move-exception v3

    .line 1236
    .local v3, "e":Landroid/content/ActivityNotFoundException;
    :try_start_34
    const-string v4, "BluetoothManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Intent to handle action "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " missing"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1237
    return v1

    .line 1224
    .end local v2  # "intent":Landroid/content/Intent;
    .end local v3  # "e":Landroid/content/ActivityNotFoundException;
    :cond_50
    new-instance v1, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Package "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " not in uid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .end local p0  # "this":Lcom/android/server/BluetoothManagerService;
    .end local p1  # "packageName":Ljava/lang/String;
    .end local p2  # "callingUid":I
    .end local p3  # "intentAction":Ljava/lang/String;
    throw v1
    :try_end_6f
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_34 .. :try_end_6f} :catch_6f

    .line 1240
    .end local v0  # "applicationInfo":Landroid/content/pm/ApplicationInfo;
    .restart local p0  # "this":Lcom/android/server/BluetoothManagerService;
    .restart local p1  # "packageName":Ljava/lang/String;
    .restart local p2  # "callingUid":I
    .restart local p3  # "intentAction":Ljava/lang/String;
    :catch_6f
    move-exception v0

    .line 1241
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v1, Landroid/os/RemoteException;

    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private storeNameAndAddress(Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .param p1, "name"  # Ljava/lang/String;
    .param p2, "address"  # Ljava/lang/String;

    .line 654
    const-string v0, "BluetoothManagerService"

    if-eqz p1, :cond_27

    .line 655
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mContentResolver:Landroid/content/ContentResolver;

    const-string v2, "bluetooth_name"

    invoke-static {v1, v2, p1}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 656
    iput-object p1, p0, Lcom/android/server/BluetoothManagerService;->mName:Ljava/lang/String;

    .line 658
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

    .line 663
    :cond_27
    if-eqz p2, :cond_4c

    .line 664
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mContentResolver:Landroid/content/ContentResolver;

    const-string v2, "bluetooth_address"

    invoke-static {v1, v2, p2}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 665
    iput-object p2, p0, Lcom/android/server/BluetoothManagerService;->mAddress:Ljava/lang/String;

    .line 667
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Stored Bluetoothaddress: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/BluetoothManagerService;->mContentResolver:Landroid/content/ContentResolver;

    .line 668
    invoke-static {v3, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 667
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 673
    :cond_4c
    if-eqz p1, :cond_58

    if-eqz p2, :cond_58

    .line 674
    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mContentResolver:Landroid/content/ContentResolver;

    const/4 v1, 0x1

    const-string v2, "bluetooth_addr_valid"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 676
    :cond_58
    return-void
.end method

.method private supportBluetoothPersistedState()Z
    .registers 3

    .line 544
    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x11100ce

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method

.method private static timeToLog(J)Ljava/lang/CharSequence;
    .registers 3
    .param p0, "timestamp"  # J

    .line 213
    const-string v0, "MM-dd HH:mm:ss"

    invoke-static {v0, p0, p1}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method private unbindAllBluetoothProfileServices()V
    .registers 9

    .line 1409
    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mProfileServices:Ljava/util/Map;

    monitor-enter v0

    .line 1410
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

    .line 1411
    .local v2, "i":Ljava/lang/Integer;
    iget-object v3, p0, Lcom/android/server/BluetoothManagerService;->mProfileServices:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;
    :try_end_21
    .catchall {:try_start_3 .. :try_end_21} :catchall_4b

    .line 1413
    .local v3, "psc":Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;
    :try_start_21
    iget-object v4, p0, Lcom/android/server/BluetoothManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v3}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_26
    .catch Ljava/lang/IllegalArgumentException; {:try_start_21 .. :try_end_26} :catch_27
    .catchall {:try_start_21 .. :try_end_26} :catchall_4b

    .line 1416
    goto :goto_40

    .line 1414
    :catch_27
    move-exception v4

    .line 1415
    .local v4, "e":Ljava/lang/IllegalArgumentException;
    :try_start_28
    const-string v5, "BluetoothManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unable to unbind service with intent: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v3, Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;->mIntent:Landroid/content/Intent;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1417
    .end local v4  # "e":Ljava/lang/IllegalArgumentException;
    :goto_40
    invoke-static {v3}, Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;->access$2400(Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;)V

    .line 1418
    .end local v2  # "i":Ljava/lang/Integer;
    .end local v3  # "psc":Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;
    goto :goto_d

    .line 1419
    :cond_44
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mProfileServices:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 1420
    monitor-exit v0

    .line 1421
    return-void

    .line 1420
    :catchall_4b
    move-exception v1

    monitor-exit v0
    :try_end_4d
    .catchall {:try_start_28 .. :try_end_4d} :catchall_4b

    throw v1
.end method

.method private updateOppLauncherComponentState(IZ)V
    .registers 7
    .param p1, "userId"  # I
    .param p2, "bluetoothSharingDisallowed"  # Z

    .line 3023
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.android.bluetooth"

    const-string v2, "com.android.bluetooth.opp.BluetoothOppLauncherActivity"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 3026
    .local v0, "oppLauncherComponent":Landroid/content/ComponentName;
    if-eqz p2, :cond_d

    const/4 v1, 0x2

    goto :goto_e

    .line 3027
    :cond_d
    const/4 v1, 0x0

    :goto_e
    nop

    .line 3029
    .local v1, "newState":I
    :try_start_f
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v2

    .line 3030
    .local v2, "imp":Landroid/content/pm/IPackageManager;
    const/4 v3, 0x1

    invoke-interface {v2, v0, v1, v3, p1}, Landroid/content/pm/IPackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;III)V
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_17} :catch_18

    .line 3034
    .end local v2  # "imp":Landroid/content/pm/IPackageManager;
    goto :goto_19

    .line 3032
    :catch_18
    move-exception v2

    .line 3035
    :goto_19
    return-void
.end method

.method private waitForMonitoredOnOff(ZZ)Z
    .registers 9
    .param p1, "on"  # Z
    .param p2, "off"  # Z

    .line 2704
    const/4 v0, 0x0

    .line 2705
    .local v0, "i":I
    :goto_1
    const/16 v1, 0xa

    if-ge v0, v1, :cond_94

    .line 2706
    iget-object v2, p0, Lcom/android/server/BluetoothManagerService;->mConnection:Lcom/android/server/BluetoothManagerService$BluetoothServiceConnection;

    monitor-enter v2

    .line 2708
    :try_start_8
    iget-object v3, p0, Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_a} :catch_88
    .catchall {:try_start_8 .. :try_end_a} :catchall_86

    if-nez v3, :cond_f

    :try_start_c
    monitor-exit v2
    :try_end_d
    .catchall {:try_start_c .. :try_end_d} :catchall_86

    goto/16 :goto_94

    .line 2709
    :cond_f
    const/16 v3, 0xc

    const/16 v4, 0xf

    const/4 v5, 0x1

    if-eqz p1, :cond_47

    .line 2710
    :try_start_16
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;

    invoke-interface {v1}, Landroid/bluetooth/IBluetooth;->getState()I

    move-result v1
    :try_end_1c
    .catch Landroid/os/RemoteException; {:try_start_16 .. :try_end_1c} :catch_88
    .catchall {:try_start_16 .. :try_end_1c} :catchall_86

    if-ne v1, v3, :cond_20

    :try_start_1e
    monitor-exit v2
    :try_end_1f
    .catchall {:try_start_1e .. :try_end_1f} :catchall_86

    return v5

    .line 2711
    :cond_20
    :try_start_20
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;

    invoke-interface {v1}, Landroid/bluetooth/IBluetooth;->getState()I

    move-result v1

    if-ne v1, v4, :cond_70

    .line 2712
    const/16 v1, 0xe

    invoke-direct {p0, v1, v4}, Lcom/android/server/BluetoothManagerService;->bluetoothStateChangeHandler(II)V

    .line 2714
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mBluetoothGatt:Landroid/bluetooth/IBluetoothGatt;

    if-eqz v1, :cond_3e

    .line 2715
    const-string v1, "BluetoothManagerService"

    const-string v3, "GattService is connected, execute waitForOnOff"

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2716
    invoke-direct {p0, p1, p2}, Lcom/android/server/BluetoothManagerService;->waitForOnOff(ZZ)Z

    move-result v1
    :try_end_3c
    .catch Landroid/os/RemoteException; {:try_start_20 .. :try_end_3c} :catch_88
    .catchall {:try_start_20 .. :try_end_3c} :catchall_86

    .line 2717
    .local v1, "ret":Z
    :try_start_3c
    monitor-exit v2
    :try_end_3d
    .catchall {:try_start_3c .. :try_end_3d} :catchall_86

    return v1

    .line 2719
    .end local v1  # "ret":Z
    :cond_3e
    :try_start_3e
    const-string v1, "BluetoothManagerService"

    const-string v3, "GattService connect in progress, return to avoid timeout"

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_45
    .catch Landroid/os/RemoteException; {:try_start_3e .. :try_end_45} :catch_88
    .catchall {:try_start_3e .. :try_end_45} :catchall_86

    .line 2721
    :try_start_45
    monitor-exit v2
    :try_end_46
    .catchall {:try_start_45 .. :try_end_46} :catchall_86

    return v5

    .line 2724
    :cond_47
    if-eqz p2, :cond_66

    .line 2725
    :try_start_49
    iget-object v3, p0, Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;

    invoke-interface {v3}, Landroid/bluetooth/IBluetooth;->getState()I

    move-result v3
    :try_end_4f
    .catch Landroid/os/RemoteException; {:try_start_49 .. :try_end_4f} :catch_88
    .catchall {:try_start_49 .. :try_end_4f} :catchall_86

    if-ne v3, v1, :cond_53

    :try_start_51
    monitor-exit v2
    :try_end_52
    .catchall {:try_start_51 .. :try_end_52} :catchall_86

    return v5

    .line 2726
    :cond_53
    :try_start_53
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;

    invoke-interface {v1}, Landroid/bluetooth/IBluetooth;->getState()I

    move-result v1

    if-ne v1, v4, :cond_70

    .line 2727
    const/16 v1, 0xd

    invoke-direct {p0, v1, v4}, Lcom/android/server/BluetoothManagerService;->bluetoothStateChangeHandler(II)V

    .line 2729
    invoke-direct {p0, p1, p2}, Lcom/android/server/BluetoothManagerService;->waitForOnOff(ZZ)Z

    move-result v1
    :try_end_64
    .catch Landroid/os/RemoteException; {:try_start_53 .. :try_end_64} :catch_88
    .catchall {:try_start_53 .. :try_end_64} :catchall_86

    .line 2730
    .restart local v1  # "ret":Z
    :try_start_64
    monitor-exit v2
    :try_end_65
    .catchall {:try_start_64 .. :try_end_65} :catchall_86

    return v1

    .line 2733
    .end local v1  # "ret":Z
    :cond_66
    :try_start_66
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;

    invoke-interface {v1}, Landroid/bluetooth/IBluetooth;->getState()I

    move-result v1
    :try_end_6c
    .catch Landroid/os/RemoteException; {:try_start_66 .. :try_end_6c} :catch_88
    .catchall {:try_start_66 .. :try_end_6c} :catchall_86

    if-eq v1, v3, :cond_70

    :try_start_6e
    monitor-exit v2

    return v5

    .line 2738
    :cond_70
    nop

    .line 2739
    monitor-exit v2
    :try_end_72
    .catchall {:try_start_6e .. :try_end_72} :catchall_86

    .line 2740
    if-nez p1, :cond_7d

    if-eqz p2, :cond_77

    goto :goto_7d

    .line 2743
    :cond_77
    const-wide/16 v1, 0x32

    invoke-static {v1, v2}, Landroid/os/SystemClock;->sleep(J)V

    goto :goto_82

    .line 2741
    :cond_7d
    :goto_7d
    const-wide/16 v1, 0x12c

    invoke-static {v1, v2}, Landroid/os/SystemClock;->sleep(J)V

    .line 2745
    :goto_82
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1

    .line 2739
    :catchall_86
    move-exception v1

    goto :goto_92

    .line 2735
    :catch_88
    move-exception v1

    .line 2736
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_89
    const-string v3, "BluetoothManagerService"

    const-string v4, "getState()"

    invoke-static {v3, v4, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2737
    monitor-exit v2

    goto :goto_94

    .line 2739
    .end local v1  # "e":Landroid/os/RemoteException;
    :goto_92
    monitor-exit v2
    :try_end_93
    .catchall {:try_start_89 .. :try_end_93} :catchall_86

    throw v1

    .line 2747
    :cond_94
    :goto_94
    const-string v1, "BluetoothManagerService"

    const-string/jumbo v2, "waitForMonitoredOnOff time out"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2748
    const/4 v1, 0x0

    return v1
.end method

.method private waitForOnOff(ZZ)Z
    .registers 8
    .param p1, "on"  # Z
    .param p2, "off"  # Z

    .line 2661
    const/4 v0, 0x0

    .line 2662
    .local v0, "i":I
    :goto_1
    const/16 v1, 0x10

    const-string v2, "BluetoothManagerService"

    if-ge v0, v1, :cond_9a

    .line 2664
    :try_start_7
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mBluetoothLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 2665
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_12} :catch_80
    .catchall {:try_start_7 .. :try_end_12} :catchall_7e

    if-nez v1, :cond_1f

    .line 2685
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mBluetoothLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    goto/16 :goto_9a

    .line 2668
    :cond_1f
    const/16 v1, 0xc

    const/4 v3, 0x1

    if-eqz p1, :cond_37

    .line 2669
    :try_start_24
    iget-object v4, p0, Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;

    invoke-interface {v4}, Landroid/bluetooth/IBluetooth;->getState()I

    move-result v2
    :try_end_2a
    .catch Landroid/os/RemoteException; {:try_start_24 .. :try_end_2a} :catch_80
    .catchall {:try_start_24 .. :try_end_2a} :catchall_7e

    if-ne v2, v1, :cond_61

    .line 2670
    nop

    .line 2685
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mBluetoothLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 2670
    return v3

    .line 2672
    :cond_37
    if-eqz p2, :cond_4e

    .line 2673
    :try_start_39
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;

    invoke-interface {v1}, Landroid/bluetooth/IBluetooth;->getState()I

    move-result v1
    :try_end_3f
    .catch Landroid/os/RemoteException; {:try_start_39 .. :try_end_3f} :catch_80
    .catchall {:try_start_39 .. :try_end_3f} :catchall_7e

    const/16 v2, 0xa

    if-ne v1, v2, :cond_61

    .line 2674
    nop

    .line 2685
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mBluetoothLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 2674
    return v3

    .line 2677
    :cond_4e
    :try_start_4e
    iget-object v4, p0, Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;

    invoke-interface {v4}, Landroid/bluetooth/IBluetooth;->getState()I

    move-result v2
    :try_end_54
    .catch Landroid/os/RemoteException; {:try_start_4e .. :try_end_54} :catch_80
    .catchall {:try_start_4e .. :try_end_54} :catchall_7e

    if-eq v2, v1, :cond_61

    .line 2678
    nop

    .line 2685
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mBluetoothLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 2678
    return v3

    .line 2685
    :cond_61
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mBluetoothLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 2686
    nop

    .line 2687
    if-nez p1, :cond_76

    if-eqz p2, :cond_70

    goto :goto_76

    .line 2690
    :cond_70
    const-wide/16 v1, 0x1e

    invoke-static {v1, v2}, Landroid/os/SystemClock;->sleep(J)V

    goto :goto_7b

    .line 2688
    :cond_76
    :goto_76
    const-wide/16 v1, 0x1f4

    invoke-static {v1, v2}, Landroid/os/SystemClock;->sleep(J)V

    .line 2692
    :goto_7b
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2685
    :catchall_7e
    move-exception v1

    goto :goto_90

    .line 2681
    :catch_80
    move-exception v1

    .line 2682
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_81
    const-string v3, "getState()"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_86
    .catchall {:try_start_81 .. :try_end_86} :catchall_7e

    .line 2685
    iget-object v3, p0, Lcom/android/server/BluetoothManagerService;->mBluetoothLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    goto :goto_9a

    .end local v1  # "e":Landroid/os/RemoteException;
    :goto_90
    iget-object v2, p0, Lcom/android/server/BluetoothManagerService;->mBluetoothLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    throw v1

    .line 2694
    :cond_9a
    :goto_9a
    const-string/jumbo v1, "waitForOnOff time out"

    invoke-static {v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2695
    const/4 v1, 0x0

    return v1
.end method


# virtual methods
.method public bindBluetoothProfileService(ILandroid/bluetooth/IBluetoothProfileServiceConnection;)Z
    .registers 10
    .param p1, "bluetoothProfile"  # I
    .param p2, "proxy"  # Landroid/bluetooth/IBluetoothProfileServiceConnection;

    .line 1345
    invoke-virtual {p0}, Lcom/android/server/BluetoothManagerService;->isBluetoothAvailableForBinding()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_23

    .line 1346
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bindBluetoothProfileService:Trying to bind to profile: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", while Bluetooth is disabled"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "BluetoothManagerService"

    invoke-static {v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1348
    return v1

    .line 1350
    :cond_23
    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mProfileServices:Ljava/util/Map;

    monitor-enter v0

    .line 1351
    :try_start_26
    iget-object v2, p0, Lcom/android/server/BluetoothManagerService;->mProfileServices:Ljava/util/Map;

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;

    .line 1352
    .local v2, "psc":Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;
    const/4 v3, 0x1

    if-nez v2, :cond_75

    .line 1354
    const-string v4, "BluetoothManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Creating new ProfileServiceConnections object for profile: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1358
    if-eq p1, v3, :cond_50

    .line 1359
    monitor-exit v0

    return v1

    .line 1362
    :cond_50
    new-instance v4, Landroid/content/Intent;

    const-class v5, Landroid/bluetooth/IBluetoothHeadset;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1363
    .local v4, "intent":Landroid/content/Intent;
    new-instance v5, Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;

    invoke-direct {v5, p0, v4}, Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;-><init>(Lcom/android/server/BluetoothManagerService;Landroid/content/Intent;)V

    move-object v2, v5

    .line 1364
    invoke-static {v2}, Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;->access$2100(Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;)Z

    move-result v5

    if-nez v5, :cond_69

    .line 1365
    monitor-exit v0

    return v1

    .line 1368
    :cond_69
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mProfileServices:Ljava/util/Map;

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v1, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1369
    nop

    .end local v4  # "intent":Landroid/content/Intent;
    goto :goto_7d

    .line 1371
    :cond_75
    const-string v1, "BluetoothManagerService"

    const-string/jumbo v4, "psc is not null in bindBluetoothProfileService"

    invoke-static {v1, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1372
    .end local v2  # "psc":Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;
    :goto_7d
    monitor-exit v0
    :try_end_7e
    .catchall {:try_start_26 .. :try_end_7e} :catchall_92

    .line 1375
    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mHandler:Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    const/16 v1, 0x190

    invoke-virtual {v0, v1}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1376
    .local v0, "addProxyMsg":Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 1377
    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1378
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mHandler:Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    const-wide/16 v4, 0x64

    invoke-virtual {v1, v0, v4, v5}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1379
    return v3

    .line 1372
    .end local v0  # "addProxyMsg":Landroid/os/Message;
    :catchall_92
    move-exception v1

    :try_start_93
    monitor-exit v0
    :try_end_94
    .catchall {:try_start_93 .. :try_end_94} :catchall_92

    throw v1
.end method

.method public disable(Ljava/lang/String;Z)Z
    .registers 10
    .param p1, "packageName"  # Ljava/lang/String;
    .param p2, "persist"  # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1142
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1143
    .local v0, "callingUid":I
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

    .line 1145
    .local v1, "callerSystem":Z
    :goto_11
    if-nez v1, :cond_40

    .line 1147
    invoke-direct {p0, v0, p1}, Lcom/android/server/BluetoothManagerService;->checkPackage(ILjava/lang/String;)V

    .line 1149
    invoke-direct {p0}, Lcom/android/server/BluetoothManagerService;->checkIfCallerIsForegroundUser()Z

    move-result v4

    if-nez v4, :cond_24

    .line 1150
    const-string v2, "BluetoothManagerService"

    const-string v4, "disable(): not allowed for non-active and non system user"

    invoke-static {v2, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1151
    return v3

    .line 1154
    :cond_24
    iget-object v4, p0, Lcom/android/server/BluetoothManagerService;->mContext:Landroid/content/Context;

    const-string v5, "android.permission.BLUETOOTH_ADMIN"

    const-string v6, "Need BLUETOOTH ADMIN permission"

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1157
    invoke-virtual {p0}, Lcom/android/server/BluetoothManagerService;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_40

    iget-boolean v4, p0, Lcom/android/server/BluetoothManagerService;->mWirelessConsentRequired:Z

    if-eqz v4, :cond_40

    const-string v4, "android.bluetooth.adapter.action.REQUEST_DISABLE"

    invoke-direct {p0, p1, v0, v4}, Lcom/android/server/BluetoothManagerService;->startConsentUiIfNeeded(Ljava/lang/String;ILjava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_40

    .line 1159
    return v3

    .line 1164
    :cond_40
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "disable(): mBluetooth = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " mBinding = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, p0, Lcom/android/server/BluetoothManagerService;->mBinding:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "BluetoothManagerService"

    invoke-static {v5, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1168
    invoke-direct {p0, p2}, Lcom/android/server/BluetoothManagerService;->isCanDisable(Z)Z

    move-result v4

    if-nez v4, :cond_71

    .line 1169
    const-string v2, "BluetoothManagerService"

    const-string/jumbo v4, "opp transfering, disable ignore."

    invoke-static {v2, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1170
    return v3

    .line 1173
    :cond_71
    iget-object v4, p0, Lcom/android/server/BluetoothManagerService;->mReceiver:Landroid/content/BroadcastReceiver;

    monitor-enter v4

    .line 1174
    if-eqz p2, :cond_88

    .line 1175
    :try_start_76
    invoke-direct {p0, v3}, Lcom/android/server/BluetoothManagerService;->persistBluetoothSetting(I)V

    .line 1176
    iput-boolean v3, p0, Lcom/android/server/BluetoothManagerService;->mEnableExternal:Z

    .line 1177
    invoke-direct {p0, v2, p1}, Lcom/android/server/BluetoothManagerService;->sendDisableMsg(ILjava/lang/String;)V

    .line 1180
    invoke-direct {p0}, Lcom/android/server/BluetoothManagerService;->isAirplaneModeOn()Z

    move-result v5

    if-eqz v5, :cond_ce

    .line 1181
    invoke-direct {p0, v3}, Lcom/android/server/BluetoothManagerService;->persistUserActionInAirPlane(I)V

    goto :goto_ce

    .line 1186
    :cond_88
    monitor-enter p0
    :try_end_89
    .catchall {:try_start_76 .. :try_end_89} :catchall_dd

    .line 1187
    :try_start_89
    invoke-direct {p0}, Lcom/android/server/BluetoothManagerService;->clearBleApps()V

    .line 1188
    monitor-exit p0
    :try_end_8d
    .catchall {:try_start_89 .. :try_end_8d} :catchall_da

    .line 1191
    :try_start_8d
    iget-object v5, p0, Lcom/android/server/BluetoothManagerService;->mBluetoothLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 1192
    iput-boolean v3, p0, Lcom/android/server/BluetoothManagerService;->mEnableExternal:Z

    .line 1193
    iget-object v5, p0, Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;

    if-eqz v5, :cond_b2

    .line 1194
    iget-object v5, p0, Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;

    invoke-interface {v5}, Landroid/bluetooth/IBluetooth;->getState()I

    move-result v5

    const/16 v6, 0xf

    if-ne v5, v6, :cond_ae

    .line 1195
    iput-boolean v3, p0, Lcom/android/server/BluetoothManagerService;->mEnable:Z

    .line 1196
    iget-object v3, p0, Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;

    invoke-interface {v3}, Landroid/bluetooth/IBluetooth;->onBrEdrDown()V

    goto :goto_b2

    .line 1198
    :cond_ae
    const/4 v3, 0x6

    invoke-direct {p0, v3, p1}, Lcom/android/server/BluetoothManagerService;->sendDisableMsg(ILjava/lang/String;)V
    :try_end_b2
    .catch Landroid/os/RemoteException; {:try_start_8d .. :try_end_b2} :catch_bb
    .catchall {:try_start_8d .. :try_end_b2} :catchall_b9

    .line 1205
    :cond_b2
    :goto_b2
    :try_start_b2
    iget-object v3, p0, Lcom/android/server/BluetoothManagerService;->mBluetoothLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v3
    :try_end_b8
    .catchall {:try_start_b2 .. :try_end_b8} :catchall_dd

    goto :goto_ca

    :catchall_b9
    move-exception v2

    goto :goto_d0

    .line 1202
    :catch_bb
    move-exception v3

    .line 1203
    .local v3, "e":Landroid/os/RemoteException;
    :try_start_bc
    const-string v5, "BluetoothManagerService"

    const-string v6, "Unable to initiate disable"

    invoke-static {v5, v6, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_c3
    .catchall {:try_start_bc .. :try_end_c3} :catchall_b9

    .line 1205
    nop

    .end local v3  # "e":Landroid/os/RemoteException;
    :try_start_c4
    iget-object v3, p0, Lcom/android/server/BluetoothManagerService;->mBluetoothLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v3

    :goto_ca
    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 1206
    nop

    .line 1208
    :cond_ce
    :goto_ce
    monitor-exit v4

    .line 1209
    return v2

    .line 1205
    :goto_d0
    iget-object v3, p0, Lcom/android/server/BluetoothManagerService;->mBluetoothLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .end local v0  # "callingUid":I
    .end local v1  # "callerSystem":Z
    .end local p0  # "this":Lcom/android/server/BluetoothManagerService;
    .end local p1  # "packageName":Ljava/lang/String;
    .end local p2  # "persist":Z
    throw v2
    :try_end_da
    .catchall {:try_start_c4 .. :try_end_da} :catchall_dd

    .line 1188
    .restart local v0  # "callingUid":I
    .restart local v1  # "callerSystem":Z
    .restart local p0  # "this":Lcom/android/server/BluetoothManagerService;
    .restart local p1  # "packageName":Ljava/lang/String;
    .restart local p2  # "persist":Z
    :catchall_da
    move-exception v2

    :try_start_db
    monitor-exit p0
    :try_end_dc
    .catchall {:try_start_db .. :try_end_dc} :catchall_da

    .end local v0  # "callingUid":I
    .end local v1  # "callerSystem":Z
    .end local p0  # "this":Lcom/android/server/BluetoothManagerService;
    .end local p1  # "packageName":Ljava/lang/String;
    .end local p2  # "persist":Z
    :try_start_dc
    throw v2

    .line 1208
    .restart local v0  # "callingUid":I
    .restart local v1  # "callerSystem":Z
    .restart local p0  # "this":Lcom/android/server/BluetoothManagerService;
    .restart local p1  # "packageName":Ljava/lang/String;
    .restart local p2  # "persist":Z
    :catchall_dd
    move-exception v2

    monitor-exit v4
    :try_end_df
    .catchall {:try_start_dc .. :try_end_df} :catchall_dd

    throw v2
.end method

.method doBind(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z
    .registers 9
    .param p1, "intent"  # Landroid/content/Intent;
    .param p2, "conn"  # Landroid/content/ServiceConnection;
    .param p3, "flags"  # I
    .param p4, "user"  # Landroid/os/UserHandle;

    .line 2491
    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->resolveSystemService(Landroid/content/pm/PackageManager;I)Landroid/content/ComponentName;

    move-result-object v0

    .line 2492
    .local v0, "comp":Landroid/content/ComponentName;
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 2493
    if-eqz v0, :cond_1b

    iget-object v2, p0, Lcom/android/server/BluetoothManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2, p1, p2, p3, p4}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v2

    if-nez v2, :cond_19

    goto :goto_1b

    .line 2497
    :cond_19
    const/4 v1, 0x1

    return v1

    .line 2494
    :cond_1b
    :goto_1b
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Fail to bind to: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "BluetoothManagerService"

    invoke-static {v3, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2495
    return v1
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 23
    .param p1, "fd"  # Ljava/io/FileDescriptor;
    .param p2, "writer"  # Ljava/io/PrintWriter;
    .param p3, "args"  # [Ljava/lang/String;

    .line 3039
    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move-object/from16 v0, p3

    iget-object v3, v1, Lcom/android/server/BluetoothManagerService;->mContext:Landroid/content/Context;

    const-string v4, "BluetoothManagerService"

    invoke-static {v3, v4, v2}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v3

    if-nez v3, :cond_11

    .line 3040
    return-void

    .line 3042
    :cond_11
    const/4 v3, 0x0

    .line 3044
    .local v3, "errorMsg":Ljava/lang/String;
    array-length v4, v0

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-lez v4, :cond_23

    aget-object v4, v0, v5

    const-string v7, "--proto"

    invoke-virtual {v4, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_23

    move v4, v6

    goto :goto_24

    :cond_23
    move v4, v5

    .line 3046
    .local v4, "protoOut":Z
    :goto_24
    if-nez v4, :cond_1f1

    .line 3047
    const-string v7, "Bluetooth Status"

    invoke-virtual {v2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3048
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "  enabled: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/BluetoothManagerService;->isEnabled()Z

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3049
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "  state: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, v1, Lcom/android/server/BluetoothManagerService;->mState:I

    invoke-static {v8}, Landroid/bluetooth/BluetoothAdapter;->nameForState(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3050
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "  address: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v1, Lcom/android/server/BluetoothManagerService;->mAddress:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3051
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "  name: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v1, Lcom/android/server/BluetoothManagerService;->mName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3052
    iget-boolean v7, v1, Lcom/android/server/BluetoothManagerService;->mEnable:Z

    if-eqz v7, :cond_e6

    .line 3053
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    iget-wide v9, v1, Lcom/android/server/BluetoothManagerService;->mLastEnabledTime:J

    sub-long/2addr v7, v9

    .line 3054
    .local v7, "onDuration":J
    sget-object v9, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v10, 0x4

    new-array v10, v10, [Ljava/lang/Object;

    const-wide/32 v11, 0x36ee80

    div-long v11, v7, v11

    long-to-int v11, v11

    .line 3055
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v10, v5

    const-wide/32 v11, 0xea60

    div-long v11, v7, v11

    const-wide/16 v13, 0x3c

    rem-long/2addr v11, v13

    long-to-int v11, v11

    .line 3056
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v10, v6

    const/4 v11, 0x2

    const-wide/16 v15, 0x3e8

    div-long v17, v7, v15

    rem-long v12, v17, v13

    long-to-int v12, v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x3

    rem-long v12, v7, v15

    long-to-int v12, v12

    .line 3057
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    .line 3054
    const-string v11, "%02d:%02d:%02d.%03d"

    invoke-static {v9, v11, v10}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .line 3058
    .local v9, "onDurationString":Ljava/lang/String;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "  time since enabled: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3061
    .end local v7  # "onDuration":J
    .end local v9  # "onDurationString":Ljava/lang/String;
    :cond_e6
    iget-object v7, v1, Lcom/android/server/BluetoothManagerService;->mActiveLogs:Ljava/util/LinkedList;

    invoke-virtual {v7}, Ljava/util/LinkedList;->size()I

    move-result v7

    const-string v8, "  "

    if-nez v7, :cond_f6

    .line 3062
    const-string v7, "\nBluetooth never enabled!"

    invoke-virtual {v2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_120

    .line 3064
    :cond_f6
    const-string v7, "\nEnable log:"

    invoke-virtual {v2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3065
    iget-object v7, v1, Lcom/android/server/BluetoothManagerService;->mActiveLogs:Ljava/util/LinkedList;

    invoke-virtual {v7}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_101
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_120

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/BluetoothManagerService$ActiveLog;

    .line 3066
    .local v9, "log":Lcom/android/server/BluetoothManagerService$ActiveLog;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3067
    .end local v9  # "log":Lcom/android/server/BluetoothManagerService$ActiveLog;
    goto :goto_101

    .line 3070
    :cond_120
    :goto_120
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "\nBluetooth crashed "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, v1, Lcom/android/server/BluetoothManagerService;->mCrashes:I

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " time"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3071
    iget v9, v1, Lcom/android/server/BluetoothManagerService;->mCrashes:I

    const-string/jumbo v10, "s"

    const-string v11, ""

    if-ne v9, v6, :cond_13f

    move-object v9, v11

    goto :goto_140

    :cond_13f
    move-object v9, v10

    :goto_140
    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 3070
    invoke-virtual {v2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3072
    iget v7, v1, Lcom/android/server/BluetoothManagerService;->mCrashes:I

    const/16 v9, 0x64

    if-ne v7, v9, :cond_155

    .line 3073
    const-string v7, "(last 100)"

    invoke-virtual {v2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3075
    :cond_155
    iget-object v7, v1, Lcom/android/server/BluetoothManagerService;->mCrashTimestamps:Ljava/util/LinkedList;

    invoke-virtual {v7}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_15b
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_182

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Long;

    .line 3076
    .local v9, "time":Ljava/lang/Long;
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v13

    invoke-static {v13, v14}, Lcom/android/server/BluetoothManagerService;->timeToLog(J)Ljava/lang/CharSequence;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v2, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3077
    .end local v9  # "time":Ljava/lang/Long;
    goto :goto_15b

    .line 3079
    :cond_182
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "\n"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v1, Lcom/android/server/BluetoothManagerService;->mBleApps:Ljava/util/Map;

    invoke-interface {v9}, Ljava/util/Map;->size()I

    move-result v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " BLE app"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v1, Lcom/android/server/BluetoothManagerService;->mBleApps:Ljava/util/Map;

    invoke-interface {v9}, Ljava/util/Map;->size()I

    move-result v9

    if-ne v9, v6, :cond_1a3

    move-object v10, v11

    :cond_1a3
    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v9, "registered"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3081
    iget-object v7, v1, Lcom/android/server/BluetoothManagerService;->mBleApps:Ljava/util/Map;

    invoke-interface {v7}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1bd
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1e0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/BluetoothManagerService$ClientDeathRecipient;

    .line 3082
    .local v9, "app":Lcom/android/server/BluetoothManagerService$ClientDeathRecipient;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Lcom/android/server/BluetoothManagerService$ClientDeathRecipient;->getPackageName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3083
    .end local v9  # "app":Lcom/android/server/BluetoothManagerService$ClientDeathRecipient;
    goto :goto_1bd

    .line 3085
    :cond_1e0
    invoke-virtual {v2, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3086
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->flush()V

    .line 3087
    array-length v7, v0

    if-nez v7, :cond_1f1

    .line 3089
    new-array v0, v6, [Ljava/lang/String;

    .line 3090
    .end local p3  # "args":[Ljava/lang/String;
    .local v0, "args":[Ljava/lang/String;
    const-string v6, "--print"

    aput-object v6, v0, v5

    move-object v5, v0

    goto :goto_1f2

    .line 3094
    .end local v0  # "args":[Ljava/lang/String;
    .restart local p3  # "args":[Ljava/lang/String;
    :cond_1f1
    move-object v5, v0

    .end local p3  # "args":[Ljava/lang/String;
    .local v5, "args":[Ljava/lang/String;
    :goto_1f2
    iget-object v0, v1, Lcom/android/server/BluetoothManagerService;->mBluetoothBinder:Landroid/os/IBinder;

    if-nez v0, :cond_1fb

    .line 3095
    const-string v3, "Bluetooth Service not connected"

    move-object/from16 v6, p1

    goto :goto_206

    .line 3098
    :cond_1fb
    move-object/from16 v6, p1

    :try_start_1fd
    invoke-interface {v0, v6, v5}, Landroid/os/IBinder;->dump(Ljava/io/FileDescriptor;[Ljava/lang/String;)V
    :try_end_200
    .catch Landroid/os/RemoteException; {:try_start_1fd .. :try_end_200} :catch_201

    .line 3101
    goto :goto_206

    .line 3099
    :catch_201
    move-exception v0

    move-object v7, v0

    move-object v0, v7

    .line 3100
    .local v0, "re":Landroid/os/RemoteException;
    const-string v3, "RemoteException while dumping Bluetooth Service"

    .line 3103
    .end local v0  # "re":Landroid/os/RemoteException;
    :goto_206
    if-eqz v3, :cond_20e

    .line 3105
    if-eqz v4, :cond_20b

    .line 3106
    return-void

    .line 3108
    :cond_20b
    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3112
    :cond_20e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "mz_user_on_bt_airplane : "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct/range {p0 .. p0}, Lcom/android/server/BluetoothManagerService;->isUserActionOnInAirPlane()Z

    move-result v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3114
    return-void
.end method

.method public enable(Ljava/lang/String;)Z
    .registers 9
    .param p1, "packageName"  # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1083
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1084
    .local v0, "callingUid":I
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

    .line 1086
    .local v1, "callerSystem":Z
    :goto_11
    invoke-direct {p0}, Lcom/android/server/BluetoothManagerService;->isBluetoothDisallowed()Z

    move-result v4

    if-eqz v4, :cond_1f

    .line 1088
    const-string v2, "BluetoothManagerService"

    const-string v4, "enable(): not enabling - bluetooth disallowed"

    invoke-static {v2, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1090
    return v3

    .line 1093
    :cond_1f
    if-nez v1, :cond_4e

    .line 1095
    invoke-direct {p0, v0, p1}, Lcom/android/server/BluetoothManagerService;->checkPackage(ILjava/lang/String;)V

    .line 1099
    invoke-direct {p0}, Lcom/android/server/BluetoothManagerService;->hook_checkIfCallerIsForegroundUser()Z

    move-result v4

    if-nez v4, :cond_32

    .line 1101
    const-string v2, "BluetoothManagerService"

    const-string v4, "enable(): not allowed for non-active and non system user"

    invoke-static {v2, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1102
    return v3

    .line 1105
    :cond_32
    iget-object v4, p0, Lcom/android/server/BluetoothManagerService;->mContext:Landroid/content/Context;

    const-string v5, "android.permission.BLUETOOTH_ADMIN"

    const-string v6, "Need BLUETOOTH ADMIN permission"

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1108
    invoke-virtual {p0}, Lcom/android/server/BluetoothManagerService;->isEnabled()Z

    move-result v4

    if-nez v4, :cond_4e

    iget-boolean v4, p0, Lcom/android/server/BluetoothManagerService;->mWirelessConsentRequired:Z

    if-eqz v4, :cond_4e

    const-string v4, "android.bluetooth.adapter.action.REQUEST_ENABLE"

    invoke-direct {p0, p1, v0, v4}, Lcom/android/server/BluetoothManagerService;->startConsentUiIfNeeded(Ljava/lang/String;ILjava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4e

    .line 1110
    return v3

    .line 1115
    :cond_4e
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "enable("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "):  mBluetooth ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " mBinding = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, p0, Lcom/android/server/BluetoothManagerService;->mBinding:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, " mState = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/android/server/BluetoothManagerService;->mState:I

    .line 1116
    invoke-static {v5}, Landroid/bluetooth/BluetoothAdapter;->nameForState(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1115
    const-string v5, "BluetoothManagerService"

    invoke-static {v5, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1119
    iget-object v4, p0, Lcom/android/server/BluetoothManagerService;->mReceiver:Landroid/content/BroadcastReceiver;

    monitor-enter v4

    .line 1120
    :try_start_89
    iput-boolean v3, p0, Lcom/android/server/BluetoothManagerService;->mQuietEnableExternal:Z

    .line 1121
    iget-boolean v5, p0, Lcom/android/server/BluetoothManagerService;->mEnableBLE:Z

    if-nez v5, :cond_92

    .line 1122
    iput-boolean v2, p0, Lcom/android/server/BluetoothManagerService;->mEnableExternal:Z

    goto :goto_94

    .line 1124
    :cond_92
    iput-boolean v3, p0, Lcom/android/server/BluetoothManagerService;->mEnableBLE:Z

    .line 1127
    :goto_94
    invoke-direct {p0, v3, v2, p1}, Lcom/android/server/BluetoothManagerService;->sendEnableMsg(ZILjava/lang/String;)V

    .line 1130
    invoke-direct {p0}, Lcom/android/server/BluetoothManagerService;->isAirplaneModeOn()Z

    move-result v3

    if-eqz v3, :cond_a0

    .line 1131
    invoke-direct {p0, v2}, Lcom/android/server/BluetoothManagerService;->persistUserActionInAirPlane(I)V

    .line 1134
    :cond_a0
    monitor-exit v4
    :try_end_a1
    .catchall {:try_start_89 .. :try_end_a1} :catchall_a9

    .line 1136
    const-string v3, "BluetoothManagerService"

    const-string v4, "enable returning"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1138
    return v2

    .line 1134
    :catchall_a9
    move-exception v2

    :try_start_aa
    monitor-exit v4
    :try_end_ab
    .catchall {:try_start_aa .. :try_end_ab} :catchall_a9

    throw v2
.end method

.method public enableNoAutoConnect(Ljava/lang/String;)Z
    .registers 10
    .param p1, "packageName"  # Ljava/lang/String;

    .line 1037
    invoke-direct {p0}, Lcom/android/server/BluetoothManagerService;->isBluetoothDisallowed()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_f

    .line 1039
    const-string v0, "BluetoothManagerService"

    const-string v2, "enableNoAutoConnect(): not enabling - bluetooth disallowed"

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1041
    return v1

    .line 1045
    :cond_f
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1046
    .local v0, "callingUid":I
    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v2

    const/16 v3, 0x3e8

    const/4 v4, 0x1

    if-ne v2, v3, :cond_1d

    move v1, v4

    .line 1047
    .local v1, "isCallerSystem":Z
    :cond_1d
    if-nez v1, :cond_22

    .line 1048
    invoke-direct {p0, v0, p1}, Lcom/android/server/BluetoothManagerService;->checkPackage(ILjava/lang/String;)V

    .line 1051
    :cond_22
    iget-object v2, p0, Lcom/android/server/BluetoothManagerService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.BLUETOOTH_ADMIN"

    const-string v5, "Need BLUETOOTH ADMIN permission"

    invoke-virtual {v2, v3, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1055
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "enableNoAutoConnect():  mBluetooth ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " mBinding = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/server/BluetoothManagerService;->mBinding:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "BluetoothManagerService"

    invoke-static {v3, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1058
    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v2

    .line 1062
    .local v2, "callingAppId":I
    const/4 v3, 0x0

    .line 1064
    .local v3, "isAllow":Z
    :try_start_52
    invoke-direct {p0, v2}, Lcom/android/server/BluetoothManagerService;->mzAllowQuietlyEnableBT(I)Z

    move-result v5
    :try_end_56
    .catchall {:try_start_52 .. :try_end_56} :catchall_58

    move v3, v5

    .line 1067
    goto :goto_74

    .line 1065
    :catchall_58
    move-exception v5

    .line 1066
    .local v5, "t":Ljava/lang/Throwable;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "enableNoAutoConnect() - Unexpected exception ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "BluetoothManagerService"

    invoke-static {v7, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1068
    .end local v5  # "t":Ljava/lang/Throwable;
    :goto_74
    if-eqz v3, :cond_85

    .line 1073
    iget-object v5, p0, Lcom/android/server/BluetoothManagerService;->mReceiver:Landroid/content/BroadcastReceiver;

    monitor-enter v5

    .line 1074
    :try_start_79
    iput-boolean v4, p0, Lcom/android/server/BluetoothManagerService;->mQuietEnableExternal:Z

    .line 1075
    iput-boolean v4, p0, Lcom/android/server/BluetoothManagerService;->mEnableExternal:Z

    .line 1076
    invoke-direct {p0, v4, v4, p1}, Lcom/android/server/BluetoothManagerService;->sendEnableMsg(ZILjava/lang/String;)V

    .line 1078
    monitor-exit v5

    .line 1079
    return v4

    .line 1078
    :catchall_82
    move-exception v4

    monitor-exit v5
    :try_end_84
    .catchall {:try_start_79 .. :try_end_84} :catchall_82

    throw v4

    .line 1069
    :cond_85
    new-instance v4, Ljava/lang/SecurityException;

    const-string/jumbo v5, "no permission to enable Bluetooth quietly"

    invoke-direct {v4, v5}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public factoryReset()Z
    .registers 9

    .line 1841
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1842
    .local v0, "callingUid":I
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

    .line 1844
    .local v1, "callerSystem":Z
    :goto_11
    const-string v4, "BluetoothManagerService"

    if-nez v1, :cond_2a

    .line 1845
    invoke-direct {p0}, Lcom/android/server/BluetoothManagerService;->checkIfCallerIsForegroundUser()Z

    move-result v5

    if-nez v5, :cond_21

    .line 1846
    const-string v2, "factoryReset(): not allowed for non-active and non system user"

    invoke-static {v4, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1847
    return v3

    .line 1850
    :cond_21
    iget-object v5, p0, Lcom/android/server/BluetoothManagerService;->mContext:Landroid/content/Context;

    const-string v6, "android.permission.BLUETOOTH_PRIVILEGED"

    const-string v7, "Need BLUETOOTH PRIVILEGED permission"

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1853
    :cond_2a
    invoke-direct {p0, v2}, Lcom/android/server/BluetoothManagerService;->persistBluetoothSetting(I)V

    .line 1855
    invoke-direct {p0}, Lcom/android/server/BluetoothManagerService;->clearBleApps()V

    .line 1857
    :try_start_30
    iget-object v5, p0, Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;

    if-eqz v5, :cond_3b

    .line 1858
    iget-object v2, p0, Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;

    invoke-interface {v2}, Landroid/bluetooth/IBluetooth;->factoryReset()Z

    move-result v2
    :try_end_3a
    .catch Landroid/os/RemoteException; {:try_start_30 .. :try_end_3a} :catch_3d

    return v2

    .line 1863
    :cond_3b
    nop

    .line 1864
    return v2

    .line 1860
    :catch_3d
    move-exception v2

    .line 1861
    .local v2, "e":Landroid/os/RemoteException;
    const-string v5, "factoryReset(): Unable to do factoryReset."

    invoke-static {v4, v5, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1862
    return v3
.end method

.method public getAddress()Ljava/lang/String;
    .registers 4

    .line 1784
    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BLUETOOTH"

    const-string v2, "Need BLUETOOTH permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1786
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const-string v1, "BluetoothManagerService"

    const/16 v2, 0x3e8

    if-eq v0, v2, :cond_20

    invoke-direct {p0}, Lcom/android/server/BluetoothManagerService;->checkIfCallerIsForegroundUser()Z

    move-result v0

    if-nez v0, :cond_20

    .line 1787
    const-string v0, "getAddress(): not allowed for non-active and non system user"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1788
    const/4 v0, 0x0

    return-object v0

    .line 1791
    :cond_20
    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.LOCAL_MAC_ADDRESS"

    invoke-virtual {v0, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_2d

    .line 1793
    const-string v0, "02:00:00:00:00:00"

    return-object v0

    .line 1797
    :cond_2d
    :try_start_2d
    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mBluetoothLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 1798
    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;

    if-eqz v0, :cond_4a

    .line 1799
    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;

    invoke-interface {v0}, Landroid/bluetooth/IBluetooth;->getAddress()Ljava/lang/String;

    move-result-object v0
    :try_end_40
    .catch Landroid/os/RemoteException; {:try_start_2d .. :try_end_40} :catch_4d
    .catchall {:try_start_2d .. :try_end_40} :catchall_4b

    .line 1806
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mBluetoothLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 1799
    return-object v0

    .line 1806
    :cond_4a
    goto :goto_54

    :catchall_4b
    move-exception v0

    goto :goto_61

    .line 1801
    :catch_4d
    move-exception v0

    .line 1802
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_4e
    const-string v2, "getAddress(): Unable to retrieve address remotely. Returning cached address"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_53
    .catchall {:try_start_4e .. :try_end_53} :catchall_4b

    .line 1806
    nop

    .end local v0  # "e":Landroid/os/RemoteException;
    :goto_54
    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mBluetoothLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 1807
    nop

    .line 1812
    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mAddress:Ljava/lang/String;

    return-object v0

    .line 1806
    :goto_61
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mBluetoothLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    throw v0
.end method

.method public getBluetoothGatt()Landroid/bluetooth/IBluetoothGatt;
    .registers 2

    .line 1322
    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mBluetoothGatt:Landroid/bluetooth/IBluetoothGatt;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 4

    .line 1816
    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BLUETOOTH"

    const-string v2, "Need BLUETOOTH permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1818
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const-string v1, "BluetoothManagerService"

    const/16 v2, 0x3e8

    if-eq v0, v2, :cond_20

    invoke-direct {p0}, Lcom/android/server/BluetoothManagerService;->checkIfCallerIsForegroundUser()Z

    move-result v0

    if-nez v0, :cond_20

    .line 1819
    const-string v0, "getName(): not allowed for non-active and non system user"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1820
    const/4 v0, 0x0

    return-object v0

    .line 1824
    :cond_20
    :try_start_20
    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mBluetoothLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 1825
    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;

    if-eqz v0, :cond_3d

    .line 1826
    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;

    invoke-interface {v0}, Landroid/bluetooth/IBluetooth;->getName()Ljava/lang/String;

    move-result-object v0
    :try_end_33
    .catch Landroid/os/RemoteException; {:try_start_20 .. :try_end_33} :catch_40
    .catchall {:try_start_20 .. :try_end_33} :catchall_3e

    .line 1831
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mBluetoothLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 1826
    return-object v0

    .line 1831
    :cond_3d
    goto :goto_47

    :catchall_3e
    move-exception v0

    goto :goto_54

    .line 1828
    :catch_40
    move-exception v0

    .line 1829
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_41
    const-string v2, "getName(): Unable to retrieve name remotely. Returning cached name"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_46
    .catchall {:try_start_41 .. :try_end_46} :catchall_3e

    .line 1831
    nop

    .end local v0  # "e":Landroid/os/RemoteException;
    :goto_47
    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mBluetoothLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 1832
    nop

    .line 1837
    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mName:Ljava/lang/String;

    return-object v0

    .line 1831
    :goto_54
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mBluetoothLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    throw v0
.end method

.method public getNameAndAddress()V
    .registers 3

    .line 3006
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getNameAndAddress(): mBluetooth = "

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

    .line 3009
    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mHandler:Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    const/16 v1, 0xc8

    invoke-virtual {v0, v1}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 3010
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mHandler:Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    invoke-virtual {v1, v0}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->sendMessage(Landroid/os/Message;)Z

    .line 3011
    return-void
.end method

.method public getState()I
    .registers 5

    .line 761
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0xa

    const-string v2, "BluetoothManagerService"

    const/16 v3, 0x3e8

    if-eq v0, v3, :cond_18

    invoke-direct {p0}, Lcom/android/server/BluetoothManagerService;->checkIfCallerIsForegroundUser()Z

    move-result v0

    if-nez v0, :cond_18

    .line 762
    const-string v0, "getState(): report OFF for non-active and non system user"

    invoke-static {v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 763
    return v1

    .line 767
    :cond_18
    :try_start_18
    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mBluetoothLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 768
    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;

    if-eqz v0, :cond_35

    .line 769
    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;

    invoke-interface {v0}, Landroid/bluetooth/IBluetooth;->getState()I

    move-result v0
    :try_end_2b
    .catch Landroid/os/RemoteException; {:try_start_18 .. :try_end_2b} :catch_38
    .catchall {:try_start_18 .. :try_end_2b} :catchall_36

    .line 774
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mBluetoothLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 769
    return v0

    .line 774
    :cond_35
    goto :goto_3f

    :catchall_36
    move-exception v0

    goto :goto_4a

    .line 771
    :catch_38
    move-exception v0

    .line 772
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_39
    const-string v3, "getState()"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3e
    .catchall {:try_start_39 .. :try_end_3e} :catchall_36

    .line 774
    nop

    .end local v0  # "e":Landroid/os/RemoteException;
    :goto_3f
    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mBluetoothLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 775
    nop

    .line 776
    return v1

    .line 774
    :goto_4a
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mBluetoothLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    throw v0
.end method

.method public handleOnBootPhase()V
    .registers 7

    .line 1429
    const-string v0, "BluetoothManagerService"

    const-string v1, "Bluetooth boot completed"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1431
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mContext:Landroid/content/Context;

    const-class v2, Landroid/app/AppOpsManager;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AppOpsManager;

    iput-object v1, p0, Lcom/android/server/BluetoothManagerService;->mAppOps:Landroid/app/AppOpsManager;

    .line 1432
    const-class v1, Landroid/os/UserManagerInternal;

    .line 1433
    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserManagerInternal;

    .line 1434
    .local v1, "userManagerInternal":Landroid/os/UserManagerInternal;
    iget-object v2, p0, Lcom/android/server/BluetoothManagerService;->mUserRestrictionsListener:Landroid/os/UserManagerInternal$UserRestrictionsListener;

    invoke-virtual {v1, v2}, Landroid/os/UserManagerInternal;->addUserRestrictionsListener(Landroid/os/UserManagerInternal$UserRestrictionsListener;)V

    .line 1435
    invoke-direct {p0}, Lcom/android/server/BluetoothManagerService;->isBluetoothDisallowed()Z

    move-result v2

    .line 1436
    .local v2, "isBluetoothDisallowed":Z
    if-eqz v2, :cond_27

    .line 1437
    return-void

    .line 1439
    :cond_27
    iget-boolean v3, p0, Lcom/android/server/BluetoothManagerService;->mEnableExternal:Z

    if-eqz v3, :cond_40

    invoke-direct {p0}, Lcom/android/server/BluetoothManagerService;->isBluetoothPersistedStateOnBluetooth()Z

    move-result v3

    if-eqz v3, :cond_40

    .line 1441
    const-string v3, "Auto-enabling Bluetooth."

    invoke-static {v0, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1447
    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mHandler:Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    const/16 v3, 0x2328

    const-wide/16 v4, 0xfa0

    invoke-virtual {v0, v3, v4, v5}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_58

    .line 1449
    :cond_40
    invoke-direct {p0}, Lcom/android/server/BluetoothManagerService;->isNameAndAddressSet()Z

    move-result v3

    if-nez v3, :cond_58

    .line 1451
    const-string v3, "Getting adapter name and address"

    invoke-static {v0, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1453
    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mHandler:Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    const/16 v3, 0xc8

    invoke-virtual {v0, v3}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1454
    .local v0, "getMsg":Landroid/os/Message;
    iget-object v3, p0, Lcom/android/server/BluetoothManagerService;->mHandler:Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    invoke-virtual {v3, v0}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1456
    .end local v0  # "getMsg":Landroid/os/Message;
    :cond_58
    :goto_58
    return-void
.end method

.method public handleOnSwitchUser(I)V
    .registers 5
    .param p1, "userHandle"  # I

    .line 1463
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

    .line 1465
    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mHandler:Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    const/16 v1, 0x12c

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1466
    return-void
.end method

.method public handleOnUnlockUser(I)V
    .registers 5
    .param p1, "userHandle"  # I

    .line 1473
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

    .line 1475
    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mHandler:Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    const/16 v1, 0x12d

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1476
    return-void
.end method

.method public isBleAppPresent()Z
    .registers 3

    .line 953
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "isBleAppPresent() count: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mBleApps:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BluetoothManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 955
    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mBleApps:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_27

    const/4 v0, 0x1

    goto :goto_28

    :cond_27
    const/4 v0, 0x0

    :goto_28
    return v0
.end method

.method public isBleScanAlwaysAvailable()Z
    .registers 4

    .line 808
    invoke-direct {p0}, Lcom/android/server/BluetoothManagerService;->isAirplaneModeOn()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_c

    iget-boolean v0, p0, Lcom/android/server/BluetoothManagerService;->mEnable:Z

    if-nez v0, :cond_c

    .line 809
    return v1

    .line 812
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

    .line 814
    :catch_18
    move-exception v0

    .line 816
    return v1
.end method

.method public isBluetoothAvailableForBinding()Z
    .registers 5

    .line 1327
    const/4 v0, 0x0

    :try_start_1
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mBluetoothLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 1328
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;

    if-eqz v1, :cond_2d

    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;

    invoke-interface {v1}, Landroid/bluetooth/IBluetooth;->getState()I

    move-result v1

    const/16 v2, 0xc

    if-eq v1, v2, :cond_22

    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;

    .line 1329
    invoke-interface {v1}, Landroid/bluetooth/IBluetooth;->getState()I

    move-result v1
    :try_end_1e
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1e} :catch_3a
    .catchall {:try_start_1 .. :try_end_1e} :catchall_38

    const/16 v2, 0xb

    if-ne v1, v2, :cond_2d

    .line 1330
    :cond_22
    const/4 v0, 0x1

    .line 1337
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mBluetoothLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 1330
    return v0

    .line 1332
    :cond_2d
    nop

    .line 1337
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mBluetoothLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 1332
    return v0

    .line 1337
    :catchall_38
    move-exception v0

    goto :goto_4e

    .line 1334
    :catch_3a
    move-exception v1

    .line 1335
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_3b
    const-string v2, "BluetoothManagerService"

    const-string v3, "getState()"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_42
    .catchall {:try_start_3b .. :try_end_42} :catchall_38

    .line 1337
    nop

    .end local v1  # "e":Landroid/os/RemoteException;
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mBluetoothLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 1338
    nop

    .line 1339
    return v0

    .line 1337
    :goto_4e
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mBluetoothLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    throw v0
.end method

.method public isEnabled()Z
    .registers 5

    .line 742
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/4 v1, 0x0

    const-string v2, "BluetoothManagerService"

    const/16 v3, 0x3e8

    if-eq v0, v3, :cond_18

    invoke-direct {p0}, Lcom/android/server/BluetoothManagerService;->checkIfCallerIsForegroundUser()Z

    move-result v0

    if-nez v0, :cond_18

    .line 743
    const-string/jumbo v0, "isEnabled(): not allowed for non-active and non system user"

    invoke-static {v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 744
    return v1

    .line 748
    :cond_18
    :try_start_18
    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mBluetoothLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 749
    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;

    if-eqz v0, :cond_35

    .line 750
    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;

    invoke-interface {v0}, Landroid/bluetooth/IBluetooth;->isEnabled()Z

    move-result v0
    :try_end_2b
    .catch Landroid/os/RemoteException; {:try_start_18 .. :try_end_2b} :catch_38
    .catchall {:try_start_18 .. :try_end_2b} :catchall_36

    .line 755
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mBluetoothLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 750
    return v0

    .line 755
    :cond_35
    goto :goto_40

    :catchall_36
    move-exception v0

    goto :goto_4b

    .line 752
    :catch_38
    move-exception v0

    .line 753
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_39
    const-string/jumbo v3, "isEnabled()"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3f
    .catchall {:try_start_39 .. :try_end_3f} :catchall_36

    .line 755
    nop

    .end local v0  # "e":Landroid/os/RemoteException;
    :goto_40
    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mBluetoothLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 756
    nop

    .line 757
    return v1

    .line 755
    :goto_4b
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mBluetoothLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    throw v0
.end method

.method public isHearingAidProfileSupported()Z
    .registers 2

    .line 821
    iget-boolean v0, p0, Lcom/android/server/BluetoothManagerService;->mIsHearingAidProfileSupported:Z

    return v0
.end method

.method public mzChangeBluetoothName(II)V
    .registers 7
    .param p1, "prevState"  # I
    .param p2, "newState"  # I

    .line 2906
    if-eq p1, p2, :cond_58

    .line 2908
    const/16 v0, 0xc

    if-ne p2, v0, :cond_58

    .line 2910
    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v1, "meizu_device_name"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2912
    .local v0, "phoneName":Ljava/lang/String;
    if-nez v0, :cond_13

    .line 2913
    const-string v0, "MEIZU"

    .line 2915
    :cond_13
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mName:Ljava/lang/String;

    if-eqz v1, :cond_1d

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_58

    .line 2916
    :cond_1d
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "name != phonename"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/BluetoothManagerService;->mName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "   "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "BluetoothManagerService"

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2918
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;

    if-eqz v1, :cond_58

    .line 2919
    const-string v1, "enter setname"

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2921
    :try_start_4c
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;

    invoke-interface {v1, v0}, Landroid/bluetooth/IBluetooth;->setName(Ljava/lang/String;)Z
    :try_end_51
    .catch Landroid/os/RemoteException; {:try_start_4c .. :try_end_51} :catch_52

    .line 2925
    goto :goto_58

    .line 2922
    :catch_52
    move-exception v1

    .line 2923
    .local v1, "e":Landroid/os/RemoteException;
    const-string v3, "getAddress(): Unable to set name"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2930
    .end local v0  # "phoneName":Ljava/lang/String;
    .end local v1  # "e":Landroid/os/RemoteException;
    :cond_58
    :goto_58
    return-void
.end method

.method public mzProcessMeizuDeviceNamaChange(Landroid/content/Intent;)V
    .registers 6
    .param p1, "intent"  # Landroid/content/Intent;

    .line 2888
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 2889
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v1, "meizu.intent.action.ACTION_MEIZU_DEVICE_NAME_CHANGE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_47

    .line 2890
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "recv ACTION_MEIZU_DEVICE_NAME_CHANGE mBluetooth = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "BluetoothManagerService"

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2891
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;

    if-eqz v1, :cond_47

    .line 2893
    :try_start_2a
    const-string/jumbo v1, "name"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2894
    .local v1, "name":Ljava/lang/String;
    if-eqz v1, :cond_47

    .line 2895
    iget-object v3, p0, Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;

    invoke-interface {v3, v1}, Landroid/bluetooth/IBluetooth;->setName(Ljava/lang/String;)Z
    :try_end_38
    .catch Landroid/os/RemoteException; {:try_start_2a .. :try_end_38} :catch_41
    .catch Ljava/lang/NullPointerException; {:try_start_2a .. :try_end_38} :catch_39

    goto :goto_47

    .line 2898
    .end local v1  # "name":Ljava/lang/String;
    :catch_39
    move-exception v1

    .line 2899
    .local v1, "e":Ljava/lang/NullPointerException;
    const-string/jumbo v3, "mzProcessMeizuDeviceNamaChange: "

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_47

    .line 2896
    .end local v1  # "e":Ljava/lang/NullPointerException;
    :catch_41
    move-exception v1

    .line 2897
    .local v1, "e":Landroid/os/RemoteException;
    const-string v3, "getAddress(): Unable to set name"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2903
    .end local v1  # "e":Landroid/os/RemoteException;
    :cond_47
    :goto_47
    return-void
.end method

.method public registerAdapter(Landroid/bluetooth/IBluetoothManagerCallback;)Landroid/bluetooth/IBluetooth;
    .registers 5
    .param p1, "callback"  # Landroid/bluetooth/IBluetoothManagerCallback;

    .line 679
    if-nez p1, :cond_b

    .line 680
    const-string v0, "BluetoothManagerService"

    const-string v1, "Callback is null in registerAdapter"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 681
    const/4 v0, 0x0

    return-object v0

    .line 683
    :cond_b
    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mHandler:Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    const/16 v1, 0x14

    invoke-virtual {v0, v1}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 684
    .local v0, "msg":Landroid/os/Message;
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 688
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 690
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mHandler:Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    invoke-virtual {v1, v0}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->sendMessage(Landroid/os/Message;)Z

    .line 693
    :try_start_20
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mBluetoothLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 694
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;
    :try_end_2b
    .catchall {:try_start_20 .. :try_end_2b} :catchall_35

    .line 696
    iget-object v2, p0, Lcom/android/server/BluetoothManagerService;->mBluetoothLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 694
    return-object v1

    .line 696
    :catchall_35
    move-exception v1

    iget-object v2, p0, Lcom/android/server/BluetoothManagerService;->mBluetoothLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    throw v1
.end method

.method public registerStateChangeCallback(Landroid/bluetooth/IBluetoothStateChangeCallback;)V
    .registers 5
    .param p1, "callback"  # Landroid/bluetooth/IBluetoothStateChangeCallback;

    .line 713
    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BLUETOOTH"

    const-string v2, "Need BLUETOOTH permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 714
    if-nez p1, :cond_14

    .line 715
    const-string v0, "BluetoothManagerService"

    const-string/jumbo v1, "registerStateChangeCallback: Callback is null!"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 716
    return-void

    .line 718
    :cond_14
    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mHandler:Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    const/16 v1, 0x1e

    invoke-virtual {v0, v1}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 719
    .local v0, "msg":Landroid/os/Message;
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 724
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 727
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mHandler:Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    invoke-virtual {v1, v0}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->sendMessage(Landroid/os/Message;)Z

    .line 728
    return-void
.end method

.method public unbindAndFinish()V
    .registers 6

    .line 1287
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

    .line 1292
    :try_start_2d
    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mBluetoothLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 1293
    iget-boolean v0, p0, Lcom/android/server/BluetoothManagerService;->mUnbinding:Z
    :try_end_38
    .catchall {:try_start_2d .. :try_end_38} :catchall_88

    if-eqz v0, :cond_44

    .line 1316
    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mBluetoothLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 1294
    return-void

    .line 1296
    :cond_44
    const/4 v0, 0x1

    :try_start_45
    iput-boolean v0, p0, Lcom/android/server/BluetoothManagerService;->mUnbinding:Z

    .line 1297
    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mHandler:Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    const/16 v2, 0x3c

    invoke-virtual {v0, v2}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->removeMessages(I)V

    .line 1298
    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mHandler:Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    const/16 v2, 0x191

    invoke-virtual {v0, v2}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->removeMessages(I)V

    .line 1299
    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;
    :try_end_57
    .catchall {:try_start_45 .. :try_end_57} :catchall_88

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v0, :cond_79

    .line 1302
    :try_start_5b
    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;

    iget-object v4, p0, Lcom/android/server/BluetoothManagerService;->mBluetoothCallback:Landroid/bluetooth/IBluetoothCallback;

    invoke-interface {v0, v4}, Landroid/bluetooth/IBluetooth;->unregisterCallback(Landroid/bluetooth/IBluetoothCallback;)V
    :try_end_62
    .catch Landroid/os/RemoteException; {:try_start_5b .. :try_end_62} :catch_63
    .catchall {:try_start_5b .. :try_end_62} :catchall_88

    .line 1305
    goto :goto_69

    .line 1303
    :catch_63
    move-exception v0

    .line 1304
    .local v0, "re":Landroid/os/RemoteException;
    :try_start_64
    const-string v4, "Unable to unregister BluetoothCallback"

    invoke-static {v1, v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1306
    .end local v0  # "re":Landroid/os/RemoteException;
    :goto_69
    iput-object v2, p0, Lcom/android/server/BluetoothManagerService;->mBluetoothBinder:Landroid/os/IBinder;

    .line 1307
    iput-object v2, p0, Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;

    .line 1308
    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mConnection:Lcom/android/server/BluetoothManagerService$BluetoothServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 1309
    iput-boolean v3, p0, Lcom/android/server/BluetoothManagerService;->mUnbinding:Z

    .line 1310
    iput-boolean v3, p0, Lcom/android/server/BluetoothManagerService;->mBinding:Z

    goto :goto_7b

    .line 1312
    :cond_79
    iput-boolean v3, p0, Lcom/android/server/BluetoothManagerService;->mUnbinding:Z

    .line 1314
    :goto_7b
    iput-object v2, p0, Lcom/android/server/BluetoothManagerService;->mBluetoothGatt:Landroid/bluetooth/IBluetoothGatt;
    :try_end_7d
    .catchall {:try_start_64 .. :try_end_7d} :catchall_88

    .line 1316
    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mBluetoothLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 1317
    nop

    .line 1318
    return-void

    .line 1316
    :catchall_88
    move-exception v0

    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mBluetoothLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    throw v0
.end method

.method public unbindBluetoothProfileService(ILandroid/bluetooth/IBluetoothProfileServiceConnection;)V
    .registers 10
    .param p1, "bluetoothProfile"  # I
    .param p2, "proxy"  # Landroid/bluetooth/IBluetoothProfileServiceConnection;

    .line 1385
    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mProfileServices:Ljava/util/Map;

    monitor-enter v0

    .line 1386
    :try_start_3
    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    .line 1387
    .local v1, "profile":Ljava/lang/Integer;
    iget-object v2, p0, Lcom/android/server/BluetoothManagerService;->mProfileServices:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;

    .line 1388
    .local v2, "psc":Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;
    if-nez v2, :cond_1c

    .line 1389
    const-string v3, "BluetoothManagerService"

    const-string/jumbo v4, "unbindBluetoothProfileService: psc is null, returning"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1390
    monitor-exit v0

    return-void

    .line 1392
    :cond_1c
    const-string v3, "BluetoothManagerService"

    const-string/jumbo v4, "unbindBluetoothProfileService: calling psc.removeProxy"

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1393
    invoke-static {v2, p2}, Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;->access$2200(Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;Landroid/bluetooth/IBluetoothProfileServiceConnection;)V

    .line 1394
    invoke-static {v2}, Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;->access$2300(Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;)Z

    move-result v3
    :try_end_2b
    .catchall {:try_start_3 .. :try_end_2b} :catchall_6a

    if-eqz v3, :cond_68

    .line 1397
    :try_start_2d
    iget-object v3, p0, Lcom/android/server/BluetoothManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_32
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2d .. :try_end_32} :catch_33
    .catchall {:try_start_2d .. :try_end_32} :catchall_6a

    .line 1400
    goto :goto_4c

    .line 1398
    :catch_33
    move-exception v3

    .line 1399
    .local v3, "e":Ljava/lang/IllegalArgumentException;
    :try_start_34
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

    .line 1401
    .end local v3  # "e":Ljava/lang/IllegalArgumentException;
    :goto_4c
    const-string v3, "BluetoothManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "psc.isEmpty is true, removing psc entry for profile "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1403
    iget-object v3, p0, Lcom/android/server/BluetoothManagerService;->mProfileServices:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1405
    .end local v1  # "profile":Ljava/lang/Integer;
    .end local v2  # "psc":Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;
    :cond_68
    monitor-exit v0

    .line 1406
    return-void

    .line 1405
    :catchall_6a
    move-exception v1

    monitor-exit v0
    :try_end_6c
    .catchall {:try_start_34 .. :try_end_6c} :catchall_6a

    throw v1
.end method

.method public unregisterAdapter(Landroid/bluetooth/IBluetoothManagerCallback;)V
    .registers 5
    .param p1, "callback"  # Landroid/bluetooth/IBluetoothManagerCallback;

    .line 702
    if-nez p1, :cond_a

    .line 703
    const-string v0, "BluetoothManagerService"

    const-string v1, "Callback is null in unregisterAdapter"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 704
    return-void

    .line 706
    :cond_a
    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BLUETOOTH"

    const-string v2, "Need BLUETOOTH permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 707
    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mHandler:Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    const/16 v1, 0x15

    invoke-virtual {v0, v1}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 708
    .local v0, "msg":Landroid/os/Message;
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 709
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mHandler:Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    invoke-virtual {v1, v0}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->sendMessage(Landroid/os/Message;)Z

    .line 710
    return-void
.end method

.method public unregisterStateChangeCallback(Landroid/bluetooth/IBluetoothStateChangeCallback;)V
    .registers 5
    .param p1, "callback"  # Landroid/bluetooth/IBluetoothStateChangeCallback;

    .line 731
    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BLUETOOTH"

    const-string v2, "Need BLUETOOTH permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 732
    if-nez p1, :cond_14

    .line 733
    const-string v0, "BluetoothManagerService"

    const-string/jumbo v1, "unregisterStateChangeCallback: Callback is null!"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 734
    return-void

    .line 736
    :cond_14
    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mHandler:Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    const/16 v1, 0x1f

    invoke-virtual {v0, v1}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 737
    .local v0, "msg":Landroid/os/Message;
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 738
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mHandler:Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    invoke-virtual {v1, v0}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->sendMessage(Landroid/os/Message;)Z

    .line 739
    return-void
.end method

.method public updateBleAppCount(Landroid/os/IBinder;ZLjava/lang/String;)I
    .registers 14
    .param p1, "token"  # Landroid/os/IBinder;
    .param p2, "enable"  # Z
    .param p3, "packageName"  # Ljava/lang/String;

    .line 877
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 878
    .local v0, "callingUid":I
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

    .line 879
    .local v1, "isCallerSystem":Z
    :goto_11
    if-nez v1, :cond_16

    .line 880
    invoke-direct {p0, v0, p3}, Lcom/android/server/BluetoothManagerService;->checkPackage(ILjava/lang/String;)V

    .line 882
    :cond_16
    iget-object v4, p0, Lcom/android/server/BluetoothManagerService;->mBleApps:Ljava/util/Map;

    invoke-interface {v4, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/BluetoothManagerService$ClientDeathRecipient;

    .line 883
    .local v4, "r":Lcom/android/server/BluetoothManagerService$ClientDeathRecipient;
    const/16 v5, 0xa

    .line 884
    .local v5, "st":I
    const-string v6, "BluetoothManagerService"

    if-nez v4, :cond_66

    if-eqz p2, :cond_66

    .line 885
    new-instance v7, Lcom/android/server/BluetoothManagerService$ClientDeathRecipient;

    invoke-direct {v7, p0, p3}, Lcom/android/server/BluetoothManagerService$ClientDeathRecipient;-><init>(Lcom/android/server/BluetoothManagerService;Ljava/lang/String;)V

    .line 887
    .local v7, "deathRec":Lcom/android/server/BluetoothManagerService$ClientDeathRecipient;
    :try_start_2b
    invoke-interface {p1, v7, v3}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_2e
    .catch Landroid/os/RemoteException; {:try_start_2b .. :try_end_2e} :catch_49

    .line 890
    nop

    .line 891
    iget-object v8, p0, Lcom/android/server/BluetoothManagerService;->mBleApps:Ljava/util/Map;

    invoke-interface {v8, p1, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 893
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Registered for death of "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .end local v7  # "deathRec":Lcom/android/server/BluetoothManagerService$ClientDeathRecipient;
    goto :goto_87

    .line 888
    .restart local v7  # "deathRec":Lcom/android/server/BluetoothManagerService$ClientDeathRecipient;
    :catch_49
    move-exception v2

    .line 889
    .local v2, "ex":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "BLE app ("

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ") already dead!"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 895
    .end local v2  # "ex":Landroid/os/RemoteException;
    .end local v7  # "deathRec":Lcom/android/server/BluetoothManagerService$ClientDeathRecipient;
    :cond_66
    if-nez p2, :cond_87

    if-eqz v4, :cond_87

    .line 897
    invoke-interface {p1, v4, v3}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 898
    iget-object v7, p0, Lcom/android/server/BluetoothManagerService;->mBleApps:Ljava/util/Map;

    invoke-interface {v7, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 900
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unregistered for death of "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_88

    .line 895
    :cond_87
    :goto_87
    nop

    .line 903
    :goto_88
    const/16 v7, 0xf

    if-eqz p2, :cond_d5

    .line 905
    :try_start_8c
    iget-object v8, p0, Lcom/android/server/BluetoothManagerService;->mBluetoothLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v8}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 906
    iget-object v8, p0, Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;

    if-eqz v8, :cond_b5

    iget-object v8, p0, Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;

    .line 907
    invoke-interface {v8}, Landroid/bluetooth/IBluetooth;->getState()I

    move-result v8

    if-eq v8, v7, :cond_b7

    iget-object v8, p0, Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;

    .line 908
    invoke-interface {v8}, Landroid/bluetooth/IBluetooth;->getState()I

    move-result v8

    const/16 v9, 0xb

    if-eq v8, v9, :cond_b7

    iget-object v8, p0, Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;

    .line 909
    invoke-interface {v8}, Landroid/bluetooth/IBluetooth;->getState()I

    move-result v8

    const/16 v9, 0xc

    if-eq v8, v9, :cond_b7

    .line 910
    :cond_b5
    iput-boolean v2, p0, Lcom/android/server/BluetoothManagerService;->mEnableBLE:Z
    :try_end_b7
    .catch Landroid/os/RemoteException; {:try_start_8c .. :try_end_b7} :catch_ba
    .catchall {:try_start_8c .. :try_end_b7} :catchall_b8

    .line 915
    :cond_b7
    goto :goto_c1

    :catchall_b8
    move-exception v2

    goto :goto_cb

    .line 912
    :catch_ba
    move-exception v2

    .line 913
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_bb
    const-string v8, "Unable to call getState"

    invoke-static {v6, v8, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_c0
    .catchall {:try_start_bb .. :try_end_c0} :catchall_b8

    .line 915
    nop

    .end local v2  # "e":Landroid/os/RemoteException;
    :goto_c1
    iget-object v2, p0, Lcom/android/server/BluetoothManagerService;->mBluetoothLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 916
    goto :goto_d5

    .line 915
    :goto_cb
    iget-object v3, p0, Lcom/android/server/BluetoothManagerService;->mBluetoothLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    throw v2

    .line 918
    :cond_d5
    :goto_d5
    iget-object v2, p0, Lcom/android/server/BluetoothManagerService;->mBleApps:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    .line 920
    .local v2, "appCount":I
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " registered Ble Apps"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 922
    if-nez v2, :cond_f8

    iget-boolean v8, p0, Lcom/android/server/BluetoothManagerService;->mEnable:Z

    if-eqz v8, :cond_f8

    .line 923
    invoke-direct {p0}, Lcom/android/server/BluetoothManagerService;->disableBleScanMode()V

    .line 925
    :cond_f8
    if-nez v2, :cond_13c

    .line 927
    :try_start_fa
    iget-object v8, p0, Lcom/android/server/BluetoothManagerService;->mBluetoothLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v8}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 928
    iget-object v8, p0, Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;

    if-eqz v8, :cond_10e

    .line 929
    iget-object v8, p0, Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;

    invoke-interface {v8}, Landroid/bluetooth/IBluetooth;->getState()I

    move-result v8

    move v5, v8

    .line 931
    :cond_10e
    iget-boolean v8, p0, Lcom/android/server/BluetoothManagerService;->mEnableExternal:Z

    if-eqz v8, :cond_114

    if-ne v5, v7, :cond_11e

    .line 932
    :cond_114
    const-string v7, "Move to BT state OFF"

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 933
    invoke-direct {p0}, Lcom/android/server/BluetoothManagerService;->sendBrEdrDownCallback()V

    .line 934
    iput-boolean v3, p0, Lcom/android/server/BluetoothManagerService;->mEnableExternal:Z
    :try_end_11e
    .catch Landroid/os/RemoteException; {:try_start_fa .. :try_end_11e} :catch_121
    .catchall {:try_start_fa .. :try_end_11e} :catchall_11f

    .line 939
    :cond_11e
    goto :goto_128

    :catchall_11f
    move-exception v3

    goto :goto_132

    .line 936
    :catch_121
    move-exception v3

    .line 937
    .local v3, "e":Landroid/os/RemoteException;
    :try_start_122
    const-string v7, ""

    invoke-static {v6, v7, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_127
    .catchall {:try_start_122 .. :try_end_127} :catchall_11f

    .line 939
    nop

    .end local v3  # "e":Landroid/os/RemoteException;
    :goto_128
    iget-object v3, p0, Lcom/android/server/BluetoothManagerService;->mBluetoothLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 940
    goto :goto_13c

    .line 939
    :goto_132
    iget-object v6, p0, Lcom/android/server/BluetoothManagerService;->mBluetoothLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v6}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    throw v3

    .line 942
    :cond_13c
    :goto_13c
    return v2
.end method
