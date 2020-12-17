.class public Lcom/android/server/locksettings/LockSettingsService;
.super Lcom/android/internal/widget/ILockSettings$Stub;
.source "LockSettingsService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/locksettings/LockSettingsService$FindPhoneInjector;,
        Lcom/android/server/locksettings/LockSettingsService$LocalService;,
        Lcom/android/server/locksettings/LockSettingsService$DeviceProvisionedObserver;,
        Lcom/android/server/locksettings/LockSettingsService$GateKeeperDiedRecipient;,
        Lcom/android/server/locksettings/LockSettingsService$Injector;,
        Lcom/android/server/locksettings/LockSettingsService$SynchronizedStrongAuthTracker;,
        Lcom/android/server/locksettings/LockSettingsService$Lifecycle;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final DEFAULT_PASSWORD:Ljava/lang/String; = "default_password"

.field private static final GSI_RUNNING_PROP:Ljava/lang/String; = "ro.gsid.image_running"

.field private static final PERMISSION:Ljava/lang/String; = "android.permission.ACCESS_KEYGUARD_SECURE_STORAGE"

.field private static final PROFILE_KEY_IV_SIZE:I = 0xc

.field private static final READ_CONTACTS_PROTECTED_SETTINGS:[Ljava/lang/String;

.field private static final READ_PASSWORD_PROTECTED_SETTINGS:[Ljava/lang/String;

.field private static final SEPARATE_PROFILE_CHALLENGE_KEY:Ljava/lang/String; = "lockscreen.profilechallenge"

.field private static final SETTINGS_TO_BACKUP:[Ljava/lang/String;

.field private static final SYNTHETIC_PASSWORD_ENABLED_BY_DEFAULT:I = 0x1

.field private static final SYSTEM_CREDENTIAL_UIDS:[I

.field private static final TAG:Ljava/lang/String; = "LockSettingsService"

.field private static final VALID_SETTINGS:[Ljava/lang/String;

.field private static mSavePassword:Ljava/lang/String;


# instance fields
.field private final mActivityManager:Landroid/app/IActivityManager;

.field protected mAuthSecretService:Landroid/hardware/authsecret/V1_0/IAuthSecret;

.field private final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private final mContext:Landroid/content/Context;

.field private final mDeviceProvisionedObserver:Lcom/android/server/locksettings/LockSettingsService$DeviceProvisionedObserver;

.field private mFindPhoneService:Lcom/meizu/findphone/FindPhoneService;

.field private mFirstCallToVold:Z

.field private mFlymeLockSettingsServiceExt:Lcom/android/server/locksettings/FlymeLockSettingsServiceExt;

.field protected mGateKeeperService:Landroid/service/gatekeeper/IGateKeeperService;

.field protected final mHandler:Landroid/os/Handler;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private final mInjector:Lcom/android/server/locksettings/LockSettingsService$Injector;

.field private final mKeyStore:Landroid/security/KeyStore;

.field private final mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private final mNotificationManager:Landroid/app/NotificationManager;

.field private final mRecoverableKeyStoreManager:Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;

.field private final mSeparateChallengeLock:Ljava/lang/Object;

.field private mSpCache:Landroid/util/SparseArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mSpManager"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;",
            ">;"
        }
    .end annotation
.end field

.field private final mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

.field protected final mStorage:Lcom/android/server/locksettings/LockSettingsStorage;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private final mStorageManager:Landroid/os/storage/IStorageManager;

.field private final mStrongAuth:Lcom/android/server/locksettings/LockSettingsStrongAuth;

.field private final mStrongAuthTracker:Lcom/android/server/locksettings/LockSettingsService$SynchronizedStrongAuthTracker;

.field private final mUserManager:Landroid/os/UserManager;


# direct methods
.method static constructor <clinit>()V
    .registers 16

    .line 204
    const-string v0, "default_password"

    sput-object v0, Lcom/android/server/locksettings/LockSettingsService;->mSavePassword:Ljava/lang/String;

    .line 221
    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_6a

    sput-object v0, Lcom/android/server/locksettings/LockSettingsService;->SYSTEM_CREDENTIAL_UIDS:[I

    .line 2347
    const-string/jumbo v1, "lockscreen.lockedoutpermanently"

    const-string/jumbo v2, "lockscreen.patterneverchosen"

    const-string/jumbo v3, "lockscreen.password_type"

    const-string/jumbo v4, "lockscreen.password_type_alternate"

    const-string/jumbo v5, "lockscreen.password_salt"

    const-string/jumbo v6, "lockscreen.disabled"

    const-string/jumbo v7, "lockscreen.options"

    const-string/jumbo v8, "lockscreen.biometric_weak_fallback"

    const-string/jumbo v9, "lockscreen.biometricweakeverchosen"

    const-string/jumbo v10, "lockscreen.power_button_instantly_locks"

    const-string/jumbo v11, "lockscreen.passwordhistory"

    const-string/jumbo v12, "lock_pattern_autolock"

    const-string/jumbo v13, "lock_biometric_weak_flags"

    const-string/jumbo v14, "lock_pattern_visible_pattern"

    const-string/jumbo v15, "lock_pattern_tactile_feedback_enabled"

    filled-new-array/range {v1 .. v15}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/locksettings/LockSettingsService;->VALID_SETTINGS:[Ljava/lang/String;

    .line 2366
    const-string/jumbo v0, "lock_screen_owner_info"

    const-string/jumbo v1, "lock_screen_owner_info_enabled"

    filled-new-array {v1, v0}, [Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/android/server/locksettings/LockSettingsService;->READ_CONTACTS_PROTECTED_SETTINGS:[Ljava/lang/String;

    .line 2372
    const-string/jumbo v2, "lockscreen.password_salt"

    const-string/jumbo v3, "lockscreen.passwordhistory"

    const-string/jumbo v4, "lockscreen.password_type"

    const-string/jumbo v5, "lockscreen.profilechallenge"

    filled-new-array {v2, v3, v4, v5}, [Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/android/server/locksettings/LockSettingsService;->READ_PASSWORD_PROTECTED_SETTINGS:[Ljava/lang/String;

    .line 2379
    const-string/jumbo v2, "lock_pattern_visible_pattern"

    const-string/jumbo v3, "lockscreen.power_button_instantly_locks"

    filled-new-array {v1, v0, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/locksettings/LockSettingsService;->SETTINGS_TO_BACKUP:[Ljava/lang/String;

    return-void

    :array_6a
    .array-data 4
        0x3f2
        0x3f8
        0x0
        0x3e8
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"  # Landroid/content/Context;

    .line 451
    new-instance v0, Lcom/android/server/locksettings/LockSettingsService$Injector;

    invoke-direct {v0, p1}, Lcom/android/server/locksettings/LockSettingsService$Injector;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, v0}, Lcom/android/server/locksettings/LockSettingsService;-><init>(Lcom/android/server/locksettings/LockSettingsService$Injector;)V

    .line 452
    return-void
.end method

.method protected constructor <init>(Lcom/android/server/locksettings/LockSettingsService$Injector;)V
    .registers 9
    .param p1, "injector"  # Lcom/android/server/locksettings/LockSettingsService$Injector;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 455
    invoke-direct {p0}, Lcom/android/internal/widget/ILockSettings$Stub;-><init>()V

    .line 181
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mSeparateChallengeLock:Ljava/lang/Object;

    .line 184
    new-instance v0, Lcom/android/server/locksettings/LockSettingsService$DeviceProvisionedObserver;

    invoke-direct {v0, p0}, Lcom/android/server/locksettings/LockSettingsService$DeviceProvisionedObserver;-><init>(Lcom/android/server/locksettings/LockSettingsService;)V

    iput-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mDeviceProvisionedObserver:Lcom/android/server/locksettings/LockSettingsService$DeviceProvisionedObserver;

    .line 664
    new-instance v0, Lcom/android/server/locksettings/LockSettingsService$2;

    invoke-direct {v0, p0}, Lcom/android/server/locksettings/LockSettingsService$2;-><init>(Lcom/android/server/locksettings/LockSettingsService;)V

    iput-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 2419
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpCache:Landroid/util/SparseArray;

    .line 456
    iput-object p1, p0, Lcom/android/server/locksettings/LockSettingsService;->mInjector:Lcom/android/server/locksettings/LockSettingsService$Injector;

    .line 457
    invoke-virtual {p1}, Lcom/android/server/locksettings/LockSettingsService$Injector;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mContext:Landroid/content/Context;

    .line 458
    invoke-virtual {p1}, Lcom/android/server/locksettings/LockSettingsService$Injector;->getKeyStore()Landroid/security/KeyStore;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mKeyStore:Landroid/security/KeyStore;

    .line 459
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mKeyStore:Landroid/security/KeyStore;

    invoke-virtual {p1, v0}, Lcom/android/server/locksettings/LockSettingsService$Injector;->getRecoverableKeyStoreManager(Landroid/security/KeyStore;)Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mRecoverableKeyStoreManager:Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;

    .line 460
    invoke-virtual {p1}, Lcom/android/server/locksettings/LockSettingsService$Injector;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mHandler:Landroid/os/Handler;

    .line 461
    invoke-virtual {p1}, Lcom/android/server/locksettings/LockSettingsService$Injector;->getStrongAuth()Lcom/android/server/locksettings/LockSettingsStrongAuth;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mStrongAuth:Lcom/android/server/locksettings/LockSettingsStrongAuth;

    .line 462
    invoke-virtual {p1}, Lcom/android/server/locksettings/LockSettingsService$Injector;->getActivityManager()Landroid/app/IActivityManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mActivityManager:Landroid/app/IActivityManager;

    .line 464
    invoke-virtual {p1}, Lcom/android/server/locksettings/LockSettingsService$Injector;->getLockPatternUtils()Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 465
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mFirstCallToVold:Z

    .line 467
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 468
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.USER_ADDED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 469
    const-string v1, "android.intent.action.USER_STARTING"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 470
    const-string v1, "android.intent.action.USER_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 471
    invoke-virtual {p1}, Lcom/android/server/locksettings/LockSettingsService$Injector;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/locksettings/LockSettingsService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v4, v0

    invoke-virtual/range {v1 .. v6}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 474
    invoke-virtual {p1}, Lcom/android/server/locksettings/LockSettingsService$Injector;->getStorage()Lcom/android/server/locksettings/LockSettingsStorage;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    .line 475
    invoke-virtual {p1}, Lcom/android/server/locksettings/LockSettingsService$Injector;->getNotificationManager()Landroid/app/NotificationManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/locksettings/LockSettingsService;->mNotificationManager:Landroid/app/NotificationManager;

    .line 476
    invoke-virtual {p1}, Lcom/android/server/locksettings/LockSettingsService$Injector;->getUserManager()Landroid/os/UserManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/locksettings/LockSettingsService;->mUserManager:Landroid/os/UserManager;

    .line 477
    invoke-virtual {p1}, Lcom/android/server/locksettings/LockSettingsService$Injector;->getStorageManager()Landroid/os/storage/IStorageManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/locksettings/LockSettingsService;->mStorageManager:Landroid/os/storage/IStorageManager;

    .line 478
    invoke-virtual {p1}, Lcom/android/server/locksettings/LockSettingsService$Injector;->getStrongAuthTracker()Lcom/android/server/locksettings/LockSettingsService$SynchronizedStrongAuthTracker;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/locksettings/LockSettingsService;->mStrongAuthTracker:Lcom/android/server/locksettings/LockSettingsService$SynchronizedStrongAuthTracker;

    .line 479
    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsService;->mStrongAuthTracker:Lcom/android/server/locksettings/LockSettingsService$SynchronizedStrongAuthTracker;

    iget-object v2, p0, Lcom/android/server/locksettings/LockSettingsService;->mStrongAuth:Lcom/android/server/locksettings/LockSettingsStrongAuth;

    invoke-virtual {v1, v2}, Lcom/android/server/locksettings/LockSettingsService$SynchronizedStrongAuthTracker;->register(Lcom/android/server/locksettings/LockSettingsStrongAuth;)V

    .line 481
    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    invoke-virtual {p1, v1}, Lcom/android/server/locksettings/LockSettingsService$Injector;->getSyntheticPasswordManager(Lcom/android/server/locksettings/LockSettingsStorage;)Lcom/android/server/locksettings/SyntheticPasswordManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    .line 483
    const-class v1, Lcom/android/internal/widget/LockSettingsInternal;

    new-instance v2, Lcom/android/server/locksettings/LockSettingsService$LocalService;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/android/server/locksettings/LockSettingsService$LocalService;-><init>(Lcom/android/server/locksettings/LockSettingsService;Lcom/android/server/locksettings/LockSettingsService$1;)V

    invoke-static {v1, v2}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 485
    new-instance v1, Lcom/android/server/locksettings/FlymeLockSettingsServiceExt;

    iget-object v2, p0, Lcom/android/server/locksettings/LockSettingsService;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, p0}, Lcom/android/server/locksettings/FlymeLockSettingsServiceExt;-><init>(Landroid/content/Context;Lcom/android/server/locksettings/LockSettingsService;)V

    iput-object v1, p0, Lcom/android/server/locksettings/LockSettingsService;->mFlymeLockSettingsServiceExt:Lcom/android/server/locksettings/FlymeLockSettingsServiceExt;

    .line 488
    invoke-static {p0}, Lcom/android/server/locksettings/LockSettingsService$FindPhoneInjector;->createFindPhoneService(Lcom/android/server/locksettings/LockSettingsService;)V

    .line 489
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/locksettings/LockSettingsService;)V
    .registers 1
    .param p0, "x0"  # Lcom/android/server/locksettings/LockSettingsService;

    .line 170
    invoke-direct {p0}, Lcom/android/server/locksettings/LockSettingsService;->migrateOldDataAfterSystemReady()V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/server/locksettings/LockSettingsService;I)V
    .registers 2
    .param p0, "x0"  # Lcom/android/server/locksettings/LockSettingsService;
    .param p1, "x1"  # I

    .line 170
    invoke-direct {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->tryRemoveUserFromSpCacheLater(I)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/server/locksettings/LockSettingsService;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/locksettings/LockSettingsService;

    .line 170
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/server/locksettings/LockSettingsService;[BILcom/android/internal/widget/LockPatternUtils$EscrowTokenStateChangeCallback;)J
    .registers 6
    .param p0, "x0"  # Lcom/android/server/locksettings/LockSettingsService;
    .param p1, "x1"  # [B
    .param p2, "x2"  # I
    .param p3, "x3"  # Lcom/android/internal/widget/LockPatternUtils$EscrowTokenStateChangeCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 170
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/locksettings/LockSettingsService;->addEscrowToken([BILcom/android/internal/widget/LockPatternUtils$EscrowTokenStateChangeCallback;)J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$1300(Lcom/android/server/locksettings/LockSettingsService;JI)Z
    .registers 5
    .param p0, "x0"  # Lcom/android/server/locksettings/LockSettingsService;
    .param p1, "x1"  # J
    .param p3, "x2"  # I

    .line 170
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/locksettings/LockSettingsService;->removeEscrowToken(JI)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1400(Lcom/android/server/locksettings/LockSettingsService;JI)Z
    .registers 5
    .param p0, "x0"  # Lcom/android/server/locksettings/LockSettingsService;
    .param p1, "x1"  # J
    .param p3, "x2"  # I

    .line 170
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/locksettings/LockSettingsService;->isEscrowTokenActive(JI)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1500(Lcom/android/server/locksettings/LockSettingsService;)Lcom/android/internal/widget/LockPatternUtils;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/locksettings/LockSettingsService;

    .line 170
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/server/locksettings/LockSettingsService;[BIJ[BII)Z
    .registers 9
    .param p0, "x0"  # Lcom/android/server/locksettings/LockSettingsService;
    .param p1, "x1"  # [B
    .param p2, "x2"  # I
    .param p3, "x3"  # J
    .param p5, "x4"  # [B
    .param p6, "x5"  # I
    .param p7, "x6"  # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 170
    invoke-direct/range {p0 .. p7}, Lcom/android/server/locksettings/LockSettingsService;->setLockCredentialWithToken([BIJ[BII)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1700(Lcom/android/server/locksettings/LockSettingsService;J[BI)Z
    .registers 6
    .param p0, "x0"  # Lcom/android/server/locksettings/LockSettingsService;
    .param p1, "x1"  # J
    .param p3, "x2"  # [B
    .param p4, "x3"  # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 170
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/locksettings/LockSettingsService;->unlockUserWithToken(J[BI)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1800(Lcom/android/server/locksettings/LockSettingsService;)Lcom/meizu/findphone/FindPhoneService;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/locksettings/LockSettingsService;

    .line 170
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mFindPhoneService:Lcom/meizu/findphone/FindPhoneService;

    return-object v0
.end method

.method static synthetic access$1802(Lcom/android/server/locksettings/LockSettingsService;Lcom/meizu/findphone/FindPhoneService;)Lcom/meizu/findphone/FindPhoneService;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/locksettings/LockSettingsService;
    .param p1, "x1"  # Lcom/meizu/findphone/FindPhoneService;

    .line 170
    iput-object p1, p0, Lcom/android/server/locksettings/LockSettingsService;->mFindPhoneService:Lcom/meizu/findphone/FindPhoneService;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/server/locksettings/LockSettingsService;I)V
    .registers 2
    .param p0, "x0"  # Lcom/android/server/locksettings/LockSettingsService;
    .param p1, "x1"  # I

    .line 170
    invoke-direct {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->ensureProfileKeystoreUnlocked(I)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/locksettings/LockSettingsService;Landroid/os/UserHandle;)V
    .registers 2
    .param p0, "x0"  # Lcom/android/server/locksettings/LockSettingsService;
    .param p1, "x1"  # Landroid/os/UserHandle;

    .line 170
    invoke-direct {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->hideEncryptionNotification(Landroid/os/UserHandle;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/locksettings/LockSettingsService;)Landroid/os/UserManager;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/locksettings/LockSettingsService;

    .line 170
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mUserManager:Landroid/os/UserManager;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/locksettings/LockSettingsService;I)Z
    .registers 3
    .param p0, "x0"  # Lcom/android/server/locksettings/LockSettingsService;
    .param p1, "x1"  # I

    .line 170
    invoke-direct {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->isUserSecure(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/android/server/locksettings/LockSettingsService;I)V
    .registers 2
    .param p0, "x0"  # Lcom/android/server/locksettings/LockSettingsService;
    .param p1, "x1"  # I

    .line 170
    invoke-direct {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->tryDeriveAuthTokenForUnsecuredPrimaryUser(I)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/server/locksettings/LockSettingsService;IZ)V
    .registers 3
    .param p0, "x0"  # Lcom/android/server/locksettings/LockSettingsService;
    .param p1, "x1"  # I
    .param p2, "x2"  # Z

    .line 170
    invoke-direct {p0, p1, p2}, Lcom/android/server/locksettings/LockSettingsService;->removeUser(IZ)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/server/locksettings/LockSettingsService;)Lcom/android/server/locksettings/SyntheticPasswordManager;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/locksettings/LockSettingsService;

    .line 170
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    return-object v0
.end method

.method private activateEscrowTokens(Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;I)V
    .registers 12
    .param p1, "auth"  # Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;
    .param p2, "userId"  # I

    .line 2913
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    monitor-enter v0

    .line 2914
    :try_start_3
    invoke-direct {p0, p2}, Lcom/android/server/locksettings/LockSettingsService;->disableEscrowTokenOnNonManagedDevicesIfNeeded(I)V

    .line 2915
    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    invoke-virtual {v1, p2}, Lcom/android/server/locksettings/SyntheticPasswordManager;->getPendingTokensForUser(I)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_10
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_43

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 2916
    .local v2, "handle":J
    const-string v4, "LockSettingsService"

    const-string v5, "activateEscrowTokens: %x %d "

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2917
    iget-object v4, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    invoke-virtual {v4, v2, v3, p1, p2}, Lcom/android/server/locksettings/SyntheticPasswordManager;->activateTokenBasedSyntheticPassword(JLcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;I)Z

    .line 2918
    nop

    .end local v2  # "handle":J
    goto :goto_10

    .line 2919
    :cond_43
    monitor-exit v0

    .line 2920
    return-void

    .line 2919
    :catchall_45
    move-exception v1

    monitor-exit v0
    :try_end_47
    .catchall {:try_start_3 .. :try_end_47} :catchall_45

    throw v1
.end method

.method private addEscrowToken([BILcom/android/internal/widget/LockPatternUtils$EscrowTokenStateChangeCallback;)J
    .registers 13
    .param p1, "token"  # [B
    .param p2, "userId"  # I
    .param p3, "callback"  # Lcom/android/internal/widget/LockPatternUtils$EscrowTokenStateChangeCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2881
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    monitor-enter v0

    .line 2882
    :try_start_3
    invoke-direct {p0}, Lcom/android/server/locksettings/LockSettingsService;->enableSyntheticPasswordLocked()V

    .line 2885
    const/4 v1, 0x0

    .line 2886
    .local v1, "auth":Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;
    invoke-direct {p0, p2}, Lcom/android/server/locksettings/LockSettingsService;->isUserSecure(I)Z

    move-result v2

    if-nez v2, :cond_33

    .line 2887
    invoke-virtual {p0, p2}, Lcom/android/server/locksettings/LockSettingsService;->shouldMigrateToSyntheticPasswordLocked(I)Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 2888
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, -0x1

    const/4 v7, 0x0

    move-object v3, p0

    move v8, p2

    invoke-virtual/range {v3 .. v8}, Lcom/android/server/locksettings/LockSettingsService;->initializeSyntheticPasswordLocked([B[BIII)Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;

    move-result-object v2

    move-object v1, v2

    goto :goto_33

    .line 2892
    :cond_1f
    invoke-direct {p0, p2}, Lcom/android/server/locksettings/LockSettingsService;->getSyntheticPasswordHandleLocked(I)J

    move-result-wide v4

    .line 2893
    .local v4, "pwdHandle":J
    iget-object v2, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsService;->getGateKeeperService()Landroid/service/gatekeeper/IGateKeeperService;

    move-result-object v3

    const/4 v6, 0x0

    const/4 v8, 0x0

    move v7, p2

    invoke-virtual/range {v2 .. v8}, Lcom/android/server/locksettings/SyntheticPasswordManager;->unwrapPasswordBasedSyntheticPassword(Landroid/service/gatekeeper/IGateKeeperService;J[BILcom/android/internal/widget/ICheckCredentialProgressCallback;)Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;

    move-result-object v2

    iget-object v2, v2, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;->authToken:Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;

    move-object v1, v2

    .line 2897
    .end local v4  # "pwdHandle":J
    :cond_33
    :goto_33
    invoke-direct {p0, p2}, Lcom/android/server/locksettings/LockSettingsService;->isSyntheticPasswordBasedCredentialLocked(I)Z

    move-result v2

    if-eqz v2, :cond_4d

    .line 2898
    invoke-direct {p0, p2}, Lcom/android/server/locksettings/LockSettingsService;->disableEscrowTokenOnNonManagedDevicesIfNeeded(I)V

    .line 2899
    iget-object v2, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    invoke-virtual {v2, p2}, Lcom/android/server/locksettings/SyntheticPasswordManager;->hasEscrowData(I)Z

    move-result v2

    if-eqz v2, :cond_45

    goto :goto_4d

    .line 2900
    :cond_45
    new-instance v2, Ljava/lang/SecurityException;

    const-string v3, "Escrow token is disabled on the current user"

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .end local p0  # "this":Lcom/android/server/locksettings/LockSettingsService;
    .end local p1  # "token":[B
    .end local p2  # "userId":I
    .end local p3  # "callback":Lcom/android/internal/widget/LockPatternUtils$EscrowTokenStateChangeCallback;
    throw v2

    .line 2903
    .restart local p0  # "this":Lcom/android/server/locksettings/LockSettingsService;
    .restart local p1  # "token":[B
    .restart local p2  # "userId":I
    .restart local p3  # "callback":Lcom/android/internal/widget/LockPatternUtils$EscrowTokenStateChangeCallback;
    :cond_4d
    :goto_4d
    iget-object v2, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    invoke-virtual {v2, p1, p2, p3}, Lcom/android/server/locksettings/SyntheticPasswordManager;->createTokenBasedSyntheticPassword([BILcom/android/internal/widget/LockPatternUtils$EscrowTokenStateChangeCallback;)J

    move-result-wide v2

    .line 2904
    .local v2, "handle":J
    if-eqz v1, :cond_5a

    .line 2905
    iget-object v4, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    invoke-virtual {v4, v2, v3, v1, p2}, Lcom/android/server/locksettings/SyntheticPasswordManager;->activateTokenBasedSyntheticPassword(JLcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;I)Z

    .line 2907
    :cond_5a
    monitor-exit v0

    return-wide v2

    .line 2908
    .end local v1  # "auth":Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;
    .end local v2  # "handle":J
    :catchall_5c
    move-exception v1

    monitor-exit v0
    :try_end_5e
    .catchall {:try_start_3 .. :try_end_5e} :catchall_5c

    throw v1
.end method

.method private addUserKeyAuth(I[B[B)V
    .registers 9
    .param p1, "userId"  # I
    .param p2, "token"  # [B
    .param p3, "secret"  # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1753
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    .line 1754
    .local v0, "userInfo":Landroid/content/pm/UserInfo;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 1756
    .local v1, "callingId":J
    :try_start_a
    iget-object v3, p0, Lcom/android/server/locksettings/LockSettingsService;->mStorageManager:Landroid/os/storage/IStorageManager;

    iget v4, v0, Landroid/content/pm/UserInfo;->serialNumber:I

    invoke-interface {v3, p1, v4, p2, p3}, Landroid/os/storage/IStorageManager;->addUserKeyAuth(II[B[B)V
    :try_end_11
    .catchall {:try_start_a .. :try_end_11} :catchall_16

    .line 1758
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1759
    nop

    .line 1760
    return-void

    .line 1758
    :catchall_16
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method private checkCryptKeeperPermissions()Z
    .registers 5

    .line 1160
    const/4 v0, 0x0

    .line 1162
    .local v0, "permission_err":Z
    :try_start_1
    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.CRYPT_KEEPER"

    const-string/jumbo v3, "no permission to get the password"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_b
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_b} :catch_c

    .line 1167
    goto :goto_e

    .line 1165
    :catch_c
    move-exception v1

    .line 1166
    .local v1, "e":Ljava/lang/SecurityException;
    const/4 v0, 0x1

    .line 1168
    .end local v1  # "e":Ljava/lang/SecurityException;
    :goto_e
    return v0
.end method

.method private checkFindPhonePassword(Lcom/android/internal/widget/VerifyCredentialResponse;)V
    .registers 5
    .param p1, "response"  # Lcom/android/internal/widget/VerifyCredentialResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3277
    invoke-virtual {p1}, Lcom/android/internal/widget/VerifyCredentialResponse;->getResponseCode()I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_b

    .line 3278
    invoke-static {p0, v1}, Lcom/android/server/locksettings/LockSettingsService$FindPhoneInjector;->checkPassword(Lcom/android/server/locksettings/LockSettingsService;Z)V

    goto :goto_19

    .line 3279
    :cond_b
    invoke-virtual {p1}, Lcom/android/internal/widget/VerifyCredentialResponse;->getResponseCode()I

    move-result v0

    const/4 v2, 0x0

    if-ne v0, v1, :cond_16

    .line 3280
    invoke-static {p0, v2}, Lcom/android/server/locksettings/LockSettingsService$FindPhoneInjector;->checkPassword(Lcom/android/server/locksettings/LockSettingsService;Z)V

    goto :goto_19

    .line 3282
    :cond_16
    invoke-static {p0, v2}, Lcom/android/server/locksettings/LockSettingsService$FindPhoneInjector;->checkPassword(Lcom/android/server/locksettings/LockSettingsService;Z)V

    .line 3284
    :goto_19
    return-void
.end method

.method private final checkPasswordHavePermission(I)V
    .registers 7
    .param p1, "userId"  # I

    .line 950
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.ACCESS_KEYGUARD_SECURE_STORAGE"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_28

    .line 951
    const v0, 0x534e4554

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "28251513"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {}, Lcom/android/server/locksettings/LockSettingsService;->getCallingUid()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, ""

    aput-object v4, v2, v3

    invoke-static {v0, v2}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 953
    :cond_28
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mContext:Landroid/content/Context;

    const-string v2, "LockSettingsHave"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 954
    return-void
.end method

.method private final checkPasswordReadPermission(I)V
    .registers 5
    .param p1, "userId"  # I

    .line 946
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.ACCESS_KEYGUARD_SECURE_STORAGE"

    const-string v2, "LockSettingsRead"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 947
    return-void
.end method

.method private final checkReadPermission(Ljava/lang/String;I)V
    .registers 13
    .param p1, "requestedKey"  # Ljava/lang/String;
    .param p2, "userId"  # I

    .line 957
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 959
    .local v0, "callingUid":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_5
    sget-object v2, Lcom/android/server/locksettings/LockSettingsService;->READ_CONTACTS_PROTECTED_SETTINGS:[Ljava/lang/String;

    array-length v3, v2

    const-string v4, " for user "

    const-string v5, " to read "

    const-string v6, " needs permission "

    const-string/jumbo v7, "uid="

    if-ge v1, v3, :cond_50

    .line 960
    aget-object v2, v2, v1

    .line 961
    .local v2, "key":Ljava/lang/String;
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4d

    iget-object v3, p0, Lcom/android/server/locksettings/LockSettingsService;->mContext:Landroid/content/Context;

    const-string v8, "android.permission.READ_CONTACTS"

    invoke-virtual {v3, v8}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_26

    goto :goto_4d

    .line 963
    :cond_26
    new-instance v3, Ljava/lang/SecurityException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 959
    .end local v2  # "key":Ljava/lang/String;
    :cond_4d
    :goto_4d
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 969
    .end local v1  # "i":I
    :cond_50
    const/4 v1, 0x0

    .restart local v1  # "i":I
    :goto_51
    sget-object v2, Lcom/android/server/locksettings/LockSettingsService;->READ_PASSWORD_PROTECTED_SETTINGS:[Ljava/lang/String;

    array-length v3, v2

    if-ge v1, v3, :cond_93

    .line 970
    aget-object v2, v2, v1

    .line 971
    .restart local v2  # "key":Ljava/lang/String;
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_90

    iget-object v3, p0, Lcom/android/server/locksettings/LockSettingsService;->mContext:Landroid/content/Context;

    const-string v8, "android.permission.ACCESS_KEYGUARD_SECURE_STORAGE"

    invoke-virtual {v3, v8}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_69

    goto :goto_90

    .line 973
    :cond_69
    new-instance v3, Ljava/lang/SecurityException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 969
    .end local v2  # "key":Ljava/lang/String;
    :cond_90
    :goto_90
    add-int/lit8 v1, v1, 0x1

    goto :goto_51

    .line 978
    .end local v1  # "i":I
    :cond_93
    return-void
.end method

.method private final checkWritePermission(I)V
    .registers 5
    .param p1, "userId"  # I

    .line 942
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.ACCESS_KEYGUARD_SECURE_STORAGE"

    const-string v2, "LockSettingsWrite"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 943
    return-void
.end method

.method private clearUserKeyAuth(I[B[B)V
    .registers 9
    .param p1, "userId"  # I
    .param p2, "token"  # [B
    .param p3, "secret"  # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1711
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    .line 1712
    .local v0, "userInfo":Landroid/content/pm/UserInfo;
    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsService;->mInjector:Lcom/android/server/locksettings/LockSettingsService$Injector;

    invoke-virtual {v1}, Lcom/android/server/locksettings/LockSettingsService$Injector;->getStorageManager()Landroid/os/storage/IStorageManager;

    move-result-object v1

    .line 1713
    .local v1, "storageManager":Landroid/os/storage/IStorageManager;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1715
    .local v2, "callingId":J
    :try_start_10
    iget v4, v0, Landroid/content/pm/UserInfo;->serialNumber:I

    invoke-interface {v1, p1, v4, p2, p3}, Landroid/os/storage/IStorageManager;->clearUserKeyAuth(II[B[B)V
    :try_end_15
    .catchall {:try_start_10 .. :try_end_15} :catchall_1a

    .line 1717
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1718
    nop

    .line 1719
    return-void

    .line 1717
    :catchall_1a
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
.end method

.method private clearUserKeyProtection(I)V
    .registers 3
    .param p1, "userId"  # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1706
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v0}, Lcom/android/server/locksettings/LockSettingsService;->addUserKeyAuth(I[B[B)V

    .line 1707
    return-void
.end method

.method private convertResponse(Landroid/service/gatekeeper/GateKeeperResponse;)Lcom/android/internal/widget/VerifyCredentialResponse;
    .registers 3
    .param p1, "gateKeeperResponse"  # Landroid/service/gatekeeper/GateKeeperResponse;

    .line 1598
    invoke-static {p1}, Lcom/android/internal/widget/VerifyCredentialResponse;->fromGateKeeperResponse(Landroid/service/gatekeeper/GateKeeperResponse;)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object v0

    return-object v0
.end method

.method private disableEscrowTokenOnNonManagedDevicesIfNeeded(I)V
    .registers 8
    .param p1, "userId"  # I

    .line 3054
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 3057
    .local v0, "ident":J
    :try_start_4
    iget-object v2, p0, Lcom/android/server/locksettings/LockSettingsService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v2, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v2
    :try_end_e
    .catchall {:try_start_4 .. :try_end_e} :catchall_87

    const-string v3, "LockSettingsService"

    if-eqz v2, :cond_1b

    .line 3058
    :try_start_12
    const-string v2, "Managed profile can have escrow token"

    invoke-static {v3, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_17
    .catchall {:try_start_12 .. :try_end_17} :catchall_87

    .line 3099
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3059
    return-void

    .line 3061
    :cond_1b
    :try_start_1b
    iget-object v2, p0, Lcom/android/server/locksettings/LockSettingsService;->mInjector:Lcom/android/server/locksettings/LockSettingsService$Injector;

    invoke-virtual {v2}, Lcom/android/server/locksettings/LockSettingsService$Injector;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v2

    .line 3063
    .local v2, "dpm":Landroid/app/admin/DevicePolicyManager;
    invoke-virtual {v2}, Landroid/app/admin/DevicePolicyManager;->getDeviceOwnerComponentOnAnyUser()Landroid/content/ComponentName;

    move-result-object v4

    if-eqz v4, :cond_30

    .line 3064
    const-string v4, "Corp-owned device can have escrow token"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2c
    .catchall {:try_start_1b .. :try_end_2c} :catchall_87

    .line 3099
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3065
    return-void

    .line 3068
    :cond_30
    :try_start_30
    invoke-virtual {v2, p1}, Landroid/app/admin/DevicePolicyManager;->getProfileOwnerAsUser(I)Landroid/content/ComponentName;

    move-result-object v4

    if-eqz v4, :cond_3f

    .line 3069
    const-string v4, "User with profile owner can have escrow token"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3b
    .catchall {:try_start_30 .. :try_end_3b} :catchall_87

    .line 3099
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3070
    return-void

    .line 3075
    :cond_3f
    :try_start_3f
    invoke-virtual {v2}, Landroid/app/admin/DevicePolicyManager;->isDeviceProvisioned()Z

    move-result v4

    if-nez v4, :cond_4e

    .line 3076
    const-string v4, "Postpone disabling escrow tokens until device is provisioned"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4a
    .catchall {:try_start_3f .. :try_end_4a} :catchall_87

    .line 3099
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3077
    return-void

    .line 3081
    :cond_4e
    :try_start_4e
    iget-object v4, p0, Lcom/android/server/locksettings/LockSettingsService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const-string v5, "android.hardware.type.automotive"

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v4
    :try_end_5a
    .catchall {:try_start_4e .. :try_end_5a} :catchall_87

    if-eqz v4, :cond_60

    .line 3099
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3082
    return-void

    .line 3086
    :cond_60
    :try_start_60
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Disabling escrow token on user "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3087
    invoke-direct {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->isSyntheticPasswordBasedCredentialLocked(I)Z

    move-result v3

    if-eqz v3, :cond_82

    .line 3090
    new-instance v3, Lcom/android/server/locksettings/LockSettingsService$4;

    invoke-direct {v3, p0, p1}, Lcom/android/server/locksettings/LockSettingsService$4;-><init>(Lcom/android/server/locksettings/LockSettingsService;I)V

    invoke-static {v3}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V
    :try_end_82
    .catchall {:try_start_60 .. :try_end_82} :catchall_87

    .line 3099
    .end local v2  # "dpm":Landroid/app/admin/DevicePolicyManager;
    :cond_82
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3100
    nop

    .line 3101
    return-void

    .line 3099
    :catchall_87
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method private doVerifyCredential([BIZJILcom/android/internal/widget/ICheckCredentialProgressCallback;)Lcom/android/internal/widget/VerifyCredentialResponse;
    .registers 24
    .param p1, "credential"  # [B
    .param p2, "credentialType"  # I
    .param p3, "hasChallenge"  # Z
    .param p4, "challenge"  # J
    .param p6, "userId"  # I
    .param p7, "progressCallback"  # Lcom/android/internal/widget/ICheckCredentialProgressCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1850
    move-object/from16 v8, p0

    move-object/from16 v9, p1

    move/from16 v10, p2

    move/from16 v11, p6

    if-eqz v9, :cond_ba

    array-length v0, v9

    if-eqz v0, :cond_ba

    .line 1853
    const/4 v0, 0x0

    const/16 v1, -0x270f

    const-string v2, "LockSettingsService"

    if-ne v11, v1, :cond_2a

    iget-object v3, v8, Lcom/android/server/locksettings/LockSettingsService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "device_provisioned"

    invoke-static {v3, v4, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_2a

    .line 1855
    const-string v0, "FRP credential can only be verified prior to provisioning."

    invoke-static {v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1856
    sget-object v0, Lcom/android/internal/widget/VerifyCredentialResponse;->ERROR:Lcom/android/internal/widget/VerifyCredentialResponse;

    return-object v0

    .line 1858
    :cond_2a
    const/4 v3, 0x0

    .line 1859
    .local v3, "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    invoke-direct/range {p0 .. p7}, Lcom/android/server/locksettings/LockSettingsService;->spBasedDoVerifyCredential([BIZJILcom/android/internal/widget/ICheckCredentialProgressCallback;)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object v12

    .line 1862
    .end local v3  # "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    .local v12, "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    if-eqz v12, :cond_3e

    .line 1863
    invoke-virtual {v12}, Lcom/android/internal/widget/VerifyCredentialResponse;->getResponseCode()I

    move-result v0

    if-nez v0, :cond_3a

    .line 1864
    invoke-direct {v8, v10, v9, v11}, Lcom/android/server/locksettings/LockSettingsService;->sendCredentialsOnUnlockIfRequired(I[BI)V

    .line 1867
    :cond_3a
    invoke-direct {v8, v12}, Lcom/android/server/locksettings/LockSettingsService;->checkFindPhonePassword(Lcom/android/internal/widget/VerifyCredentialResponse;)V

    .line 1869
    return-object v12

    .line 1872
    :cond_3e
    if-ne v11, v1, :cond_48

    .line 1873
    const-string v0, "Unexpected FRP credential type, should be SP based."

    invoke-static {v2, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 1874
    sget-object v0, Lcom/android/internal/widget/VerifyCredentialResponse;->ERROR:Lcom/android/internal/widget/VerifyCredentialResponse;

    return-object v0

    .line 1877
    :cond_48
    iget-object v1, v8, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    invoke-virtual {v1, v11}, Lcom/android/server/locksettings/LockSettingsStorage;->readCredentialHash(I)Lcom/android/server/locksettings/LockSettingsStorage$CredentialHash;

    move-result-object v13

    .line 1878
    .local v13, "storedHash":Lcom/android/server/locksettings/LockSettingsStorage$CredentialHash;
    iget v1, v13, Lcom/android/server/locksettings/LockSettingsStorage$CredentialHash;->type:I

    if-eq v1, v10, :cond_73

    .line 1879
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "doVerifyCredential type mismatch with stored credential?? stored: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v13, Lcom/android/server/locksettings/LockSettingsStorage$CredentialHash;->type:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " passed in: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 1881
    sget-object v0, Lcom/android/internal/widget/VerifyCredentialResponse;->ERROR:Lcom/android/internal/widget/VerifyCredentialResponse;

    return-object v0

    .line 1884
    :cond_73
    iget v1, v13, Lcom/android/server/locksettings/LockSettingsStorage$CredentialHash;->type:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_7d

    iget-boolean v1, v13, Lcom/android/server/locksettings/LockSettingsStorage$CredentialHash;->isBaseZeroPattern:Z

    if-eqz v1, :cond_7d

    move v0, v2

    :cond_7d
    move v14, v0

    .line 1888
    .local v14, "shouldReEnrollBaseZero":Z
    if-eqz v14, :cond_86

    .line 1889
    invoke-static/range {p1 .. p1}, Lcom/android/internal/widget/LockPatternUtils;->patternByteArrayToBaseZero([B)[B

    move-result-object v0

    move-object v15, v0

    .local v0, "credentialToVerify":[B
    goto :goto_89

    .line 1891
    .end local v0  # "credentialToVerify":[B
    :cond_86
    move-object/from16 v0, p1

    move-object v15, v0

    .line 1894
    .local v15, "credentialToVerify":[B
    :goto_89
    move-object/from16 v0, p0

    move/from16 v1, p6

    move-object v2, v13

    move-object v3, v15

    move/from16 v4, p3

    move-wide/from16 v5, p4

    move-object/from16 v7, p7

    invoke-direct/range {v0 .. v7}, Lcom/android/server/locksettings/LockSettingsService;->verifyCredential(ILcom/android/server/locksettings/LockSettingsStorage$CredentialHash;[BZJLcom/android/internal/widget/ICheckCredentialProgressCallback;)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object v12

    .line 1897
    invoke-virtual {v12}, Lcom/android/internal/widget/VerifyCredentialResponse;->getResponseCode()I

    move-result v0

    if-nez v0, :cond_b6

    .line 1898
    iget-object v0, v8, Lcom/android/server/locksettings/LockSettingsService;->mStrongAuth:Lcom/android/server/locksettings/LockSettingsStrongAuth;

    invoke-virtual {v0, v11}, Lcom/android/server/locksettings/LockSettingsStrongAuth;->reportSuccessfulStrongAuthUnlock(I)V

    .line 1899
    if-eqz v14, :cond_b6

    .line 1900
    iget v2, v13, Lcom/android/server/locksettings/LockSettingsStorage$CredentialHash;->type:I

    const/high16 v4, 0x10000

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v3, v15

    move/from16 v5, p6

    invoke-direct/range {v0 .. v7}, Lcom/android/server/locksettings/LockSettingsService;->setLockCredentialInternal([BI[BIIZZ)V

    .line 1907
    :cond_b6
    invoke-direct {v8, v12}, Lcom/android/server/locksettings/LockSettingsService;->checkFindPhonePassword(Lcom/android/internal/widget/VerifyCredentialResponse;)V

    .line 1910
    return-object v12

    .line 1851
    .end local v12  # "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    .end local v13  # "storedHash":Lcom/android/server/locksettings/LockSettingsStorage$CredentialHash;
    .end local v14  # "shouldReEnrollBaseZero":Z
    .end local v15  # "credentialToVerify":[B
    :cond_ba
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Credential can\'t be null or empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private enableSyntheticPasswordLocked()V
    .registers 5

    .line 2583
    const-string v0, "enable-sp"

    const-wide/16 v1, 0x1

    const/4 v3, 0x0

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/server/locksettings/LockSettingsService;->setLong(Ljava/lang/String;JI)V

    .line 2584
    return-void
.end method

.method private enforceShell()V
    .registers 3

    .line 2224
    invoke-direct {p0}, Lcom/android/server/locksettings/LockSettingsService;->isCallerShell()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 2227
    return-void

    .line 2225
    :cond_7
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Caller must be shell"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private enrollCredential([B[B[BI)[B
    .registers 9
    .param p1, "enrolledHandle"  # [B
    .param p2, "enrolledCredential"  # [B
    .param p3, "toEnroll"  # [B
    .param p4, "userId"  # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1664
    invoke-direct {p0, p4}, Lcom/android/server/locksettings/LockSettingsService;->checkWritePermission(I)V

    .line 1665
    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsService;->getGateKeeperService()Landroid/service/gatekeeper/IGateKeeperService;

    move-result-object v0

    invoke-interface {v0, p4, p1, p2, p3}, Landroid/service/gatekeeper/IGateKeeperService;->enroll(I[B[B[B)Landroid/service/gatekeeper/GateKeeperResponse;

    move-result-object v0

    .line 1668
    .local v0, "response":Landroid/service/gatekeeper/GateKeeperResponse;
    if-nez v0, :cond_f

    .line 1669
    const/4 v1, 0x0

    return-object v1

    .line 1672
    :cond_f
    invoke-virtual {v0}, Landroid/service/gatekeeper/GateKeeperResponse;->getPayload()[B

    move-result-object v1

    .line 1673
    .local v1, "hash":[B
    if-eqz v1, :cond_19

    .line 1674
    invoke-direct {p0, p3, p4}, Lcom/android/server/locksettings/LockSettingsService;->setKeystorePassword([BI)V

    goto :goto_20

    .line 1677
    :cond_19
    const-string v2, "LockSettingsService"

    const-string v3, "Throttled while enrolling a password"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1679
    :goto_20
    return-object v1
.end method

.method private ensureProfileKeystoreUnlocked(I)V
    .registers 6
    .param p1, "userId"  # I

    .line 599
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v0

    .line 600
    .local v0, "ks":Landroid/security/KeyStore;
    invoke-virtual {v0, p1}, Landroid/security/KeyStore;->state(I)Landroid/security/KeyStore$State;

    move-result-object v1

    sget-object v2, Landroid/security/KeyStore$State;->LOCKED:Landroid/security/KeyStore$State;

    if-ne v1, v2, :cond_2a

    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsService;->mUserManager:Landroid/os/UserManager;

    .line 601
    invoke-virtual {v1, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/locksettings/LockSettingsService;->tiedManagedProfileReadyToUnlock(Landroid/content/pm/UserInfo;)Z

    move-result v1

    if-eqz v1, :cond_2a

    .line 602
    const-string v1, "LockSettingsService"

    const-string v2, "Managed profile got unlocked, will unlock its keystore"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 607
    const/4 v2, 0x1

    :try_start_20
    invoke-direct {p0, p1, v2}, Lcom/android/server/locksettings/LockSettingsService;->unlockChildProfile(IZ)V
    :try_end_23
    .catch Landroid/os/RemoteException; {:try_start_20 .. :try_end_23} :catch_24

    .line 610
    goto :goto_2a

    .line 608
    :catch_24
    move-exception v2

    .line 609
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "Failed to unlock child profile"

    invoke-static {v1, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 612
    .end local v2  # "e":Landroid/os/RemoteException;
    :cond_2a
    :goto_2a
    return-void
.end method

.method private fixateNewestUserKeyAuth(I)V
    .registers 5
    .param p1, "userId"  # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1765
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1767
    .local v0, "callingId":J
    :try_start_4
    iget-object v2, p0, Lcom/android/server/locksettings/LockSettingsService;->mStorageManager:Landroid/os/storage/IStorageManager;

    invoke-interface {v2, p1}, Landroid/os/storage/IStorageManager;->fixateNewestUserKeyAuth(I)V
    :try_end_9
    .catchall {:try_start_4 .. :try_end_9} :catchall_e

    .line 1769
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1770
    nop

    .line 1771
    return-void

    .line 1769
    :catchall_e
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method private getDecryptedPasswordsForAllTiedProfiles(I)Ljava/util/Map;
    .registers 11
    .param p1, "userId"  # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "[B>;"
        }
    .end annotation

    .line 1323
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 1324
    const/4 v0, 0x0

    return-object v0

    .line 1326
    :cond_e
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 1327
    .local v0, "result":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;[B>;"
    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v1, p1}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    move-result-object v1

    .line 1328
    .local v1, "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    .line 1329
    .local v2, "size":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1e
    if-ge v3, v2, :cond_5e

    .line 1330
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/UserInfo;

    .line 1331
    .local v4, "profile":Landroid/content/pm/UserInfo;
    invoke-virtual {v4}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v5

    if-nez v5, :cond_2d

    .line 1332
    goto :goto_5b

    .line 1334
    :cond_2d
    iget v5, v4, Landroid/content/pm/UserInfo;->id:I

    .line 1335
    .local v5, "managedUserId":I
    iget-object v6, p0, Lcom/android/server/locksettings/LockSettingsService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v6, v5}, Lcom/android/internal/widget/LockPatternUtils;->isSeparateProfileChallengeEnabled(I)Z

    move-result v6

    if-eqz v6, :cond_38

    .line 1336
    goto :goto_5b

    .line 1339
    :cond_38
    :try_start_38
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {p0, v5}, Lcom/android/server/locksettings/LockSettingsService;->getDecryptedPasswordForTiedProfile(I)[B

    move-result-object v7

    invoke-interface {v0, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_43
    .catch Ljava/security/KeyStoreException; {:try_start_38 .. :try_end_43} :catch_44
    .catch Ljava/security/UnrecoverableKeyException; {:try_start_38 .. :try_end_43} :catch_44
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_38 .. :try_end_43} :catch_44
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_38 .. :try_end_43} :catch_44
    .catch Ljava/security/InvalidKeyException; {:try_start_38 .. :try_end_43} :catch_44
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_38 .. :try_end_43} :catch_44
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_38 .. :try_end_43} :catch_44
    .catch Ljavax/crypto/BadPaddingException; {:try_start_38 .. :try_end_43} :catch_44
    .catch Ljava/security/cert/CertificateException; {:try_start_38 .. :try_end_43} :catch_44
    .catch Ljava/io/IOException; {:try_start_38 .. :try_end_43} :catch_44

    .line 1346
    goto :goto_5b

    .line 1340
    :catch_44
    move-exception v6

    .line 1344
    .local v6, "e":Ljava/lang/Exception;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getDecryptedPasswordsForAllTiedProfiles failed for user "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "LockSettingsService"

    invoke-static {v8, v7, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1329
    .end local v4  # "profile":Landroid/content/pm/UserInfo;
    .end local v5  # "managedUserId":I
    .end local v6  # "e":Ljava/lang/Exception;
    :goto_5b
    add-int/lit8 v3, v3, 0x1

    goto :goto_1e

    .line 1348
    .end local v3  # "i":I
    :cond_5e
    return-object v0
.end method

.method private getFrpStringUnchecked(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p1, "key"  # Ljava/lang/String;

    .line 1098
    const-string/jumbo v0, "lockscreen.password_type"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 1099
    invoke-direct {p0}, Lcom/android/server/locksettings/LockSettingsService;->readFrpPasswordQuality()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1101
    :cond_12
    const/4 v0, 0x0

    return-object v0
.end method

.method private getProfilesWithSameLockScreen(I)Ljava/util/Set;
    .registers 6
    .param p1, "userId"  # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1462
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 1463
    .local v0, "profiles":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v1, p1}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_35

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/UserInfo;

    .line 1464
    .local v2, "profile":Landroid/content/pm/UserInfo;
    iget v3, v2, Landroid/content/pm/UserInfo;->id:I

    if-eq v3, p1, :cond_2b

    iget v3, v2, Landroid/content/pm/UserInfo;->profileGroupId:I

    if-ne v3, p1, :cond_34

    iget v3, v2, Landroid/content/pm/UserInfo;->id:I

    .line 1466
    invoke-direct {p0, v3}, Lcom/android/server/locksettings/LockSettingsService;->isManagedProfileWithUnifiedLock(I)Z

    move-result v3

    if-eqz v3, :cond_34

    .line 1467
    :cond_2b
    iget v3, v2, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1469
    .end local v2  # "profile":Landroid/content/pm/UserInfo;
    :cond_34
    goto :goto_f

    .line 1470
    :cond_35
    return-object v0
.end method

.method private getSyntheticPasswordHandleLocked(I)J
    .registers 5
    .param p1, "userId"  # I

    .line 2557
    const-string/jumbo v0, "sp-handle"

    const-wide/16 v1, 0x0

    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/android/server/locksettings/LockSettingsService;->getLong(Ljava/lang/String;JI)J

    move-result-wide v0

    return-wide v0
.end method

.method private hideEncryptionNotification(Landroid/os/UserHandle;)V
    .registers 5
    .param p1, "userHandle"  # Landroid/os/UserHandle;

    .line 576
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mNotificationManager:Landroid/app/NotificationManager;

    const/4 v1, 0x0

    const/16 v2, 0x9

    invoke-virtual {v0, v1, v2, p1}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    .line 578
    return-void
.end method

.method private isCallerShell()Z
    .registers 3

    .line 2219
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 2220
    .local v0, "callingUid":I
    const/16 v1, 0x7d0

    if-eq v0, v1, :cond_d

    if-nez v0, :cond_b

    goto :goto_d

    :cond_b
    const/4 v1, 0x0

    goto :goto_e

    :cond_d
    :goto_d
    const/4 v1, 0x1

    :goto_e
    return v1
.end method

.method private isEscrowTokenActive(JI)Z
    .registers 6
    .param p1, "handle"  # J
    .param p3, "userId"  # I

    .line 2923
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    monitor-enter v0

    .line 2924
    :try_start_3
    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/server/locksettings/SyntheticPasswordManager;->existsHandle(JI)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 2925
    :catchall_b
    move-exception v1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v1
.end method

.method private isManagedProfileWithSeparatedLock(I)Z
    .registers 3
    .param p1, "userId"  # I

    .line 1408
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v0

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 1409
    invoke-virtual {v0, p1}, Lcom/android/internal/widget/LockPatternUtils;->isSeparateProfileChallengeEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_16

    const/4 v0, 0x1

    goto :goto_17

    :cond_16
    const/4 v0, 0x0

    .line 1408
    :goto_17
    return v0
.end method

.method private isManagedProfileWithUnifiedLock(I)Z
    .registers 3
    .param p1, "userId"  # I

    .line 1403
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v0

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 1404
    invoke-virtual {v0, p1}, Lcom/android/internal/widget/LockPatternUtils;->isSeparateProfileChallengeEnabled(I)Z

    move-result v0

    if-nez v0, :cond_16

    const/4 v0, 0x1

    goto :goto_17

    :cond_16
    const/4 v0, 0x0

    .line 1403
    :goto_17
    return v0
.end method

.method private isSyntheticPasswordBasedCredentialLocked(I)Z
    .registers 11
    .param p1, "userId"  # I

    .line 2562
    const/4 v0, 0x1

    const/4 v1, 0x0

    const/16 v2, -0x270f

    if-ne p1, v2, :cond_16

    .line 2563
    iget-object v2, p0, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    invoke-virtual {v2}, Lcom/android/server/locksettings/LockSettingsStorage;->readPersistentDataBlock()Lcom/android/server/locksettings/LockSettingsStorage$PersistentData;

    move-result-object v2

    iget v2, v2, Lcom/android/server/locksettings/LockSettingsStorage$PersistentData;->type:I

    .line 2564
    .local v2, "type":I
    if-eq v2, v0, :cond_15

    const/4 v3, 0x2

    if-ne v2, v3, :cond_14

    goto :goto_15

    :cond_14
    move v0, v1

    :cond_15
    :goto_15
    return v0

    .line 2566
    .end local v2  # "type":I
    :cond_16
    invoke-direct {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->getSyntheticPasswordHandleLocked(I)J

    move-result-wide v2

    .line 2568
    .local v2, "handle":J
    const-wide/16 v4, 0x1

    const-string v6, "enable-sp"

    invoke-virtual {p0, v6, v4, v5, v1}, Lcom/android/server/locksettings/LockSettingsService;->getLong(Ljava/lang/String;JI)J

    move-result-wide v4

    .line 2570
    .local v4, "enabled":J
    const-wide/16 v6, 0x0

    cmp-long v8, v4, v6

    if-eqz v8, :cond_2d

    cmp-long v6, v2, v6

    if-eqz v6, :cond_2d

    goto :goto_2e

    :cond_2d
    move v0, v1

    :goto_2e
    return v0
.end method

.method private isUserKeyUnlocked(I)Z
    .registers 5
    .param p1, "userId"  # I

    .line 1738
    :try_start_0
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mStorageManager:Landroid/os/storage/IStorageManager;

    invoke-interface {v0, p1}, Landroid/os/storage/IStorageManager;->isUserKeyUnlocked(I)Z

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 1739
    :catch_7
    move-exception v0

    .line 1740
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "LockSettingsService"

    const-string v2, "failed to check user key locked state"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1741
    const/4 v1, 0x0

    return v1
.end method

.method private isUserSecure(I)Z
    .registers 7
    .param p1, "userId"  # I

    .line 1135
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    monitor-enter v0

    .line 1136
    :try_start_3
    invoke-direct {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->isSyntheticPasswordBasedCredentialLocked(I)Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 1137
    invoke-direct {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->getSyntheticPasswordHandleLocked(I)J

    move-result-wide v1

    .line 1138
    .local v1, "handle":J
    iget-object v3, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    invoke-virtual {v3, v1, v2, p1}, Lcom/android/server/locksettings/SyntheticPasswordManager;->getCredentialType(JI)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_18

    const/4 v3, 0x1

    goto :goto_19

    :cond_18
    const/4 v3, 0x0

    :goto_19
    monitor-exit v0

    return v3

    .line 1140
    .end local v1  # "handle":J
    :cond_1b
    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_3 .. :try_end_1c} :catchall_23

    .line 1141
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    invoke-virtual {v0, p1}, Lcom/android/server/locksettings/LockSettingsStorage;->hasCredential(I)Z

    move-result v0

    return v0

    .line 1140
    :catchall_23
    move-exception v1

    :try_start_24
    monitor-exit v0
    :try_end_25
    .catchall {:try_start_24 .. :try_end_25} :catchall_23

    throw v1
.end method

.method private maybeShowEncryptionNotificationForUser(I)V
    .registers 8
    .param p1, "userId"  # I

    .line 496
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    .line 497
    .local v0, "user":Landroid/content/pm/UserInfo;
    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v1

    if-nez v1, :cond_d

    .line 501
    return-void

    .line 504
    :cond_d
    invoke-direct {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->isUserKeyUnlocked(I)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 507
    return-void

    .line 510
    :cond_14
    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v1

    .line 511
    .local v1, "userHandle":Landroid/os/UserHandle;
    invoke-direct {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->isUserSecure(I)Z

    move-result v2

    .line 512
    .local v2, "isSecure":Z
    if-eqz v2, :cond_45

    iget-object v3, p0, Lcom/android/server/locksettings/LockSettingsService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v3, v1}, Landroid/os/UserManager;->isUserUnlockingOrUnlocked(Landroid/os/UserHandle;)Z

    move-result v3

    if-nez v3, :cond_45

    .line 513
    iget-object v3, p0, Lcom/android/server/locksettings/LockSettingsService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v3, p1}, Landroid/os/UserManager;->getProfileParent(I)Landroid/content/pm/UserInfo;

    move-result-object v3

    .line 514
    .local v3, "parent":Landroid/content/pm/UserInfo;
    if-eqz v3, :cond_45

    iget-object v4, p0, Lcom/android/server/locksettings/LockSettingsService;->mUserManager:Landroid/os/UserManager;

    .line 515
    invoke-virtual {v3}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/os/UserManager;->isUserUnlockingOrUnlocked(Landroid/os/UserHandle;)Z

    move-result v4

    if-eqz v4, :cond_45

    iget-object v4, p0, Lcom/android/server/locksettings/LockSettingsService;->mUserManager:Landroid/os/UserManager;

    .line 516
    invoke-virtual {v4, v1}, Landroid/os/UserManager;->isQuietModeEnabled(Landroid/os/UserHandle;)Z

    move-result v4

    if-nez v4, :cond_45

    .line 519
    invoke-direct {p0, v1}, Lcom/android/server/locksettings/LockSettingsService;->showEncryptionNotificationForProfile(Landroid/os/UserHandle;)V

    .line 522
    .end local v3  # "parent":Landroid/content/pm/UserInfo;
    :cond_45
    return-void
.end method

.method private migrateFrpCredential()V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 894
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    invoke-virtual {v0}, Lcom/android/server/locksettings/LockSettingsStorage;->readPersistentDataBlock()Lcom/android/server/locksettings/LockSettingsStorage$PersistentData;

    move-result-object v0

    sget-object v1, Lcom/android/server/locksettings/LockSettingsStorage$PersistentData;->NONE:Lcom/android/server/locksettings/LockSettingsStorage$PersistentData;

    if-eq v0, v1, :cond_b

    .line 895
    return-void

    .line 897
    :cond_b
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_15
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/UserInfo;

    .line 898
    .local v1, "userInfo":Landroid/content/pm/UserInfo;
    iget-object v2, p0, Lcom/android/server/locksettings/LockSettingsService;->mContext:Landroid/content/Context;

    invoke-static {v2, v1}, Lcom/android/internal/widget/LockPatternUtils;->userOwnsFrpCredential(Landroid/content/Context;Landroid/content/pm/UserInfo;)Z

    move-result v2

    if-eqz v2, :cond_5c

    iget v2, v1, Landroid/content/pm/UserInfo;->id:I

    invoke-direct {p0, v2}, Lcom/android/server/locksettings/LockSettingsService;->isUserSecure(I)Z

    move-result v2

    if-eqz v2, :cond_5c

    .line 899
    iget-object v2, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    monitor-enter v2

    .line 900
    :try_start_34
    iget v0, v1, Landroid/content/pm/UserInfo;->id:I

    invoke-direct {p0, v0}, Lcom/android/server/locksettings/LockSettingsService;->isSyntheticPasswordBasedCredentialLocked(I)Z

    move-result v0

    if-eqz v0, :cond_57

    .line 901
    const-string/jumbo v0, "lockscreen.password_type"

    const-wide/16 v3, 0x0

    iget v5, v1, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p0, v0, v3, v4, v5}, Lcom/android/server/locksettings/LockSettingsService;->getLong(Ljava/lang/String;JI)J

    move-result-wide v3

    long-to-int v0, v3

    .line 904
    .local v0, "actualQuality":I
    iget-object v3, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    iget v4, v1, Landroid/content/pm/UserInfo;->id:I

    .line 905
    invoke-direct {p0, v4}, Lcom/android/server/locksettings/LockSettingsService;->getSyntheticPasswordHandleLocked(I)J

    move-result-wide v4

    .line 907
    invoke-direct {p0, v0}, Lcom/android/server/locksettings/LockSettingsService;->redactActualQualityToMostLenientEquivalentQuality(I)I

    move-result v6

    .line 904
    invoke-virtual {v3, v4, v5, v1, v6}, Lcom/android/server/locksettings/SyntheticPasswordManager;->migrateFrpPasswordLocked(JLandroid/content/pm/UserInfo;I)V

    .line 909
    .end local v0  # "actualQuality":I
    :cond_57
    monitor-exit v2

    .line 910
    return-void

    .line 909
    :catchall_59
    move-exception v0

    monitor-exit v2
    :try_end_5b
    .catchall {:try_start_34 .. :try_end_5b} :catchall_59

    throw v0

    .line 912
    .end local v1  # "userInfo":Landroid/content/pm/UserInfo;
    :cond_5c
    goto :goto_15

    .line 913
    :cond_5d
    return-void
.end method

.method private migrateOldData()V
    .registers 21

    .line 722
    move-object/from16 v1, p0

    const-string/jumbo v2, "lock_screen_owner_info_enabled"

    const-string/jumbo v0, "migrated"

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v0, v3, v4}, Lcom/android/server/locksettings/LockSettingsService;->getString(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "true"

    const-string v7, "LockSettingsService"

    if-nez v5, :cond_37

    .line 723
    iget-object v5, v1, Lcom/android/server/locksettings/LockSettingsService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    .line 724
    .local v5, "cr":Landroid/content/ContentResolver;
    sget-object v8, Lcom/android/server/locksettings/LockSettingsService;->VALID_SETTINGS:[Ljava/lang/String;

    array-length v9, v8

    move v10, v4

    :goto_1f
    if-ge v10, v9, :cond_2f

    aget-object v11, v8, v10

    .line 725
    .local v11, "validSetting":Ljava/lang/String;
    invoke-static {v5, v11}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 726
    .local v12, "value":Ljava/lang/String;
    if-eqz v12, :cond_2c

    .line 727
    invoke-virtual {v1, v11, v12, v4}, Lcom/android/server/locksettings/LockSettingsService;->setString(Ljava/lang/String;Ljava/lang/String;I)V

    .line 724
    .end local v11  # "validSetting":Ljava/lang/String;
    .end local v12  # "value":Ljava/lang/String;
    :cond_2c
    add-int/lit8 v10, v10, 0x1

    goto :goto_1f

    .line 731
    :cond_2f
    invoke-virtual {v1, v0, v6, v4}, Lcom/android/server/locksettings/LockSettingsService;->setString(Ljava/lang/String;Ljava/lang/String;I)V

    .line 732
    const-string v0, "Migrated lock settings to new location"

    invoke-static {v7, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 736
    .end local v5  # "cr":Landroid/content/ContentResolver;
    :cond_37
    const-string/jumbo v5, "migrated_user_specific"

    invoke-virtual {v1, v5, v3, v4}, Lcom/android/server/locksettings/LockSettingsService;->getString(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_ac

    .line 737
    iget-object v0, v1, Lcom/android/server/locksettings/LockSettingsService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    .line 738
    .local v11, "cr":Landroid/content/ContentResolver;
    iget-object v0, v1, Lcom/android/server/locksettings/LockSettingsService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v12

    .line 739
    .local v12, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    const/4 v0, 0x0

    move v13, v0

    .local v13, "user":I
    :goto_4e
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v0

    if-ge v13, v0, :cond_a2

    .line 741
    invoke-interface {v12, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/UserInfo;

    iget v14, v0, Landroid/content/pm/UserInfo;->id:I

    .line 742
    .local v14, "userId":I
    const-string/jumbo v15, "lock_screen_owner_info"

    .line 743
    .local v15, "OWNER_INFO":Ljava/lang/String;
    const-string/jumbo v0, "lock_screen_owner_info"

    invoke-static {v11, v0, v14}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v10

    .line 744
    .local v10, "ownerInfo":Ljava/lang/String;
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v16

    if-nez v16, :cond_74

    .line 745
    invoke-virtual {v1, v0, v10, v14}, Lcom/android/server/locksettings/LockSettingsService;->setString(Ljava/lang/String;Ljava/lang/String;I)V

    .line 746
    const-string v8, ""

    invoke-static {v11, v0, v8, v14}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 752
    :cond_74
    const-string/jumbo v8, "lock_screen_owner_info_enabled"

    .line 755
    .local v8, "OWNER_INFO_ENABLED":Ljava/lang/String;
    :try_start_77
    invoke-static {v11, v2, v14}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 756
    .local v0, "ivalue":I
    if-eqz v0, :cond_7f

    const/4 v9, 0x1

    goto :goto_80

    :cond_7f
    move v9, v4

    .line 757
    .local v9, "enabled":Z
    :goto_80
    if-eqz v9, :cond_87

    const-wide/16 v18, 0x1

    move-wide/from16 v3, v18

    goto :goto_89

    :cond_87
    const-wide/16 v3, 0x0

    :goto_89
    invoke-virtual {v1, v2, v3, v4, v14}, Lcom/android/server/locksettings/LockSettingsService;->setLong(Ljava/lang/String;JI)V
    :try_end_8c
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_77 .. :try_end_8c} :catch_8d

    .line 763
    .end local v0  # "ivalue":I
    goto :goto_99

    .line 758
    .end local v9  # "enabled":Z
    :catch_8d
    move-exception v0

    .line 760
    .local v0, "e":Landroid/provider/Settings$SettingNotFoundException;
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_99

    .line 761
    const-wide/16 v3, 0x1

    invoke-virtual {v1, v2, v3, v4, v14}, Lcom/android/server/locksettings/LockSettingsService;->setLong(Ljava/lang/String;JI)V

    .line 764
    .end local v0  # "e":Landroid/provider/Settings$SettingNotFoundException;
    :cond_99
    :goto_99
    const/4 v3, 0x0

    invoke-static {v11, v2, v3, v14}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 739
    .end local v8  # "OWNER_INFO_ENABLED":Ljava/lang/String;
    .end local v10  # "ownerInfo":Ljava/lang/String;
    .end local v14  # "userId":I
    .end local v15  # "OWNER_INFO":Ljava/lang/String;
    add-int/lit8 v13, v13, 0x1

    move v4, v3

    const/4 v3, 0x0

    goto :goto_4e

    :cond_a2
    move v3, v4

    .line 767
    .end local v13  # "user":I
    invoke-virtual {v1, v5, v6, v3}, Lcom/android/server/locksettings/LockSettingsService;->setString(Ljava/lang/String;Ljava/lang/String;I)V

    .line 768
    const-string v0, "Migrated per-user lock settings to new location"

    invoke-static {v7, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_ad

    .line 736
    .end local v11  # "cr":Landroid/content/ContentResolver;
    .end local v12  # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :cond_ac
    move v3, v4

    .line 772
    :goto_ad
    const-string/jumbo v0, "migrated_biometric_weak"

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/server/locksettings/LockSettingsService;->getString(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v2, "lockscreen.password_type"

    if-nez v4, :cond_f6

    .line 773
    iget-object v3, v1, Lcom/android/server/locksettings/LockSettingsService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v3}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v3

    .line 774
    .local v3, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_c1
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_ec

    .line 775
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/UserInfo;

    iget v5, v5, Landroid/content/pm/UserInfo;->id:I

    .line 776
    .local v5, "userId":I
    const-wide/16 v8, 0x0

    invoke-virtual {v1, v2, v8, v9, v5}, Lcom/android/server/locksettings/LockSettingsService;->getLong(Ljava/lang/String;JI)J

    move-result-wide v10

    .line 779
    .local v10, "type":J
    const-string/jumbo v12, "lockscreen.password_type_alternate"

    invoke-virtual {v1, v12, v8, v9, v5}, Lcom/android/server/locksettings/LockSettingsService;->getLong(Ljava/lang/String;JI)J

    move-result-wide v13

    .line 782
    .local v13, "alternateType":J
    const-wide/32 v16, 0x8000

    cmp-long v15, v10, v16

    if-nez v15, :cond_e6

    .line 783
    invoke-virtual {v1, v2, v13, v14, v5}, Lcom/android/server/locksettings/LockSettingsService;->setLong(Ljava/lang/String;JI)V

    .line 787
    :cond_e6
    invoke-virtual {v1, v12, v8, v9, v5}, Lcom/android/server/locksettings/LockSettingsService;->setLong(Ljava/lang/String;JI)V

    .line 774
    .end local v5  # "userId":I
    .end local v10  # "type":J
    .end local v13  # "alternateType":J
    add-int/lit8 v4, v4, 0x1

    goto :goto_c1

    .line 791
    .end local v4  # "i":I
    :cond_ec
    const/4 v4, 0x0

    invoke-virtual {v1, v0, v6, v4}, Lcom/android/server/locksettings/LockSettingsService;->setString(Ljava/lang/String;Ljava/lang/String;I)V

    .line 792
    const-string v0, "Migrated biometric weak to use the fallback instead"

    invoke-static {v7, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_f7

    .line 772
    .end local v3  # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :cond_f6
    const/4 v4, 0x0

    .line 798
    :goto_f7
    const-string/jumbo v0, "migrated_lockscreen_disabled"

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v3, v4}, Lcom/android/server/locksettings/LockSettingsService;->getString(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v3, "lockscreen.disabled"

    if-nez v5, :cond_147

    .line 799
    iget-object v4, v1, Lcom/android/server/locksettings/LockSettingsService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v4}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v4

    .line 800
    .local v4, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    .line 801
    .local v5, "userCount":I
    const/4 v8, 0x0

    .line 802
    .local v8, "switchableUsers":I
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_110
    if-ge v9, v5, :cond_123

    .line 803
    invoke-interface {v4, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/content/pm/UserInfo;

    invoke-virtual {v10}, Landroid/content/pm/UserInfo;->supportsSwitchTo()Z

    move-result v10

    if-eqz v10, :cond_120

    .line 804
    add-int/lit8 v8, v8, 0x1

    .line 802
    :cond_120
    add-int/lit8 v9, v9, 0x1

    goto :goto_110

    .line 808
    .end local v9  # "i":I
    :cond_123
    const/4 v9, 0x1

    if-le v8, v9, :cond_13e

    .line 809
    const/4 v9, 0x0

    .restart local v9  # "i":I
    :goto_127
    if-ge v9, v5, :cond_13e

    .line 810
    invoke-interface {v4, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/content/pm/UserInfo;

    iget v10, v10, Landroid/content/pm/UserInfo;->id:I

    .line 812
    .local v10, "id":I
    const/4 v11, 0x0

    invoke-virtual {v1, v3, v11, v10}, Lcom/android/server/locksettings/LockSettingsService;->getBoolean(Ljava/lang/String;ZI)Z

    move-result v12

    if-eqz v12, :cond_13b

    .line 813
    invoke-virtual {v1, v3, v11, v10}, Lcom/android/server/locksettings/LockSettingsService;->setBoolean(Ljava/lang/String;ZI)V

    .line 809
    .end local v10  # "id":I
    :cond_13b
    add-int/lit8 v9, v9, 0x1

    goto :goto_127

    .line 818
    .end local v9  # "i":I
    :cond_13e
    const/4 v9, 0x0

    invoke-virtual {v1, v0, v6, v9}, Lcom/android/server/locksettings/LockSettingsService;->setString(Ljava/lang/String;Ljava/lang/String;I)V

    .line 819
    const-string v0, "Migrated lockscreen disabled flag"

    invoke-static {v7, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 822
    .end local v4  # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .end local v5  # "userCount":I
    .end local v8  # "switchableUsers":I
    :cond_147
    iget-object v0, v1, Lcom/android/server/locksettings/LockSettingsService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v4

    .line 823
    .restart local v4  # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    const/4 v0, 0x0

    move v5, v0

    .local v5, "i":I
    :goto_14f
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    if-ge v5, v0, :cond_1d6

    .line 824
    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Landroid/content/pm/UserInfo;

    .line 825
    .local v8, "userInfo":Landroid/content/pm/UserInfo;
    invoke-virtual {v8}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v0

    if-eqz v0, :cond_1a2

    iget-object v0, v1, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    iget v9, v8, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v0, v9}, Lcom/android/server/locksettings/LockSettingsStorage;->hasChildProfileLock(I)Z

    move-result v0

    if-eqz v0, :cond_1a2

    .line 832
    iget v0, v8, Landroid/content/pm/UserInfo;->id:I

    const-wide/16 v9, 0x0

    invoke-virtual {v1, v2, v9, v10, v0}, Lcom/android/server/locksettings/LockSettingsService;->getLong(Ljava/lang/String;JI)J

    move-result-wide v11

    .line 834
    .local v11, "quality":J
    cmp-long v0, v11, v9

    if-nez v0, :cond_186

    .line 836
    const-string v0, "Migrated tied profile lock type"

    invoke-static {v7, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 837
    const-wide/32 v13, 0x50000

    iget v0, v8, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v1, v2, v13, v14, v0}, Lcom/android/server/locksettings/LockSettingsService;->setLong(Ljava/lang/String;JI)V

    goto :goto_1a4

    .line 839
    :cond_186
    const-wide/32 v13, 0x50000

    cmp-long v0, v11, v13

    if-eqz v0, :cond_1a4

    .line 841
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Invalid tied profile lock type: "

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1a4

    .line 825
    .end local v11  # "quality":J
    :cond_1a2
    const-wide/16 v9, 0x0

    .line 845
    :cond_1a4
    :goto_1a4
    :try_start_1a4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "profile_key_name_encrypt_"

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v11, v8, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 846
    .local v0, "alias":Ljava/lang/String;
    const-string v11, "AndroidKeyStore"

    .line 847
    invoke-static {v11}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v11

    .line 848
    .local v11, "keyStore":Ljava/security/KeyStore;
    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Ljava/security/KeyStore;->load(Ljava/security/KeyStore$LoadStoreParameter;)V

    .line 849
    invoke-virtual {v11, v0}, Ljava/security/KeyStore;->containsAlias(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_1cb

    .line 850
    invoke-virtual {v11, v0}, Ljava/security/KeyStore;->deleteEntry(Ljava/lang/String;)V
    :try_end_1cb
    .catch Ljava/security/KeyStoreException; {:try_start_1a4 .. :try_end_1cb} :catch_1cc
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1a4 .. :try_end_1cb} :catch_1cc
    .catch Ljava/security/cert/CertificateException; {:try_start_1a4 .. :try_end_1cb} :catch_1cc
    .catch Ljava/io/IOException; {:try_start_1a4 .. :try_end_1cb} :catch_1cc

    .line 855
    .end local v0  # "alias":Ljava/lang/String;
    .end local v11  # "keyStore":Ljava/security/KeyStore;
    :cond_1cb
    goto :goto_1d2

    .line 852
    :catch_1cc
    move-exception v0

    .line 854
    .local v0, "e":Ljava/lang/Exception;
    const-string v11, "Unable to remove tied profile key"

    invoke-static {v7, v11, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 823
    .end local v0  # "e":Ljava/lang/Exception;
    .end local v8  # "userInfo":Landroid/content/pm/UserInfo;
    :goto_1d2
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_14f

    .line 858
    .end local v5  # "i":I
    :cond_1d6
    iget-object v0, v1, Lcom/android/server/locksettings/LockSettingsService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v2, "android.hardware.type.watch"

    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    .line 862
    .local v0, "isWatch":Z
    if-eqz v0, :cond_211

    const-string/jumbo v2, "migrated_wear_lockscreen_disabled"

    const/4 v5, 0x0

    const/4 v8, 0x0

    invoke-virtual {v1, v2, v5, v8}, Lcom/android/server/locksettings/LockSettingsService;->getString(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_211

    .line 863
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v2

    .line 864
    .local v2, "userCount":I
    const/4 v5, 0x0

    .restart local v5  # "i":I
    :goto_1f4
    if-ge v5, v2, :cond_205

    .line 865
    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/pm/UserInfo;

    iget v8, v8, Landroid/content/pm/UserInfo;->id:I

    .line 866
    .local v8, "id":I
    const/4 v9, 0x0

    invoke-virtual {v1, v3, v9, v8}, Lcom/android/server/locksettings/LockSettingsService;->setBoolean(Ljava/lang/String;ZI)V

    .line 864
    .end local v8  # "id":I
    add-int/lit8 v5, v5, 0x1

    goto :goto_1f4

    :cond_205
    const/4 v9, 0x0

    .line 868
    .end local v5  # "i":I
    const-string/jumbo v3, "migrated_wear_lockscreen_disabled"

    invoke-virtual {v1, v3, v6, v9}, Lcom/android/server/locksettings/LockSettingsService;->setString(Ljava/lang/String;Ljava/lang/String;I)V

    .line 869
    const-string v3, "Migrated lockscreen_disabled for Wear devices"

    invoke-static {v7, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 871
    .end local v2  # "userCount":I
    :cond_211
    return-void
.end method

.method private migrateOldDataAfterSystemReady()V
    .registers 5

    .line 876
    const-string/jumbo v0, "migrated_frp"

    const-string v1, "LockSettingsService"

    :try_start_5
    iget-object v2, p0, Lcom/android/server/locksettings/LockSettingsService;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/internal/widget/LockPatternUtils;->frpCredentialEnabled(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_20

    .line 877
    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2, v2}, Lcom/android/server/locksettings/LockSettingsService;->getBoolean(Ljava/lang/String;ZI)Z

    move-result v3

    if-nez v3, :cond_20

    .line 878
    invoke-direct {p0}, Lcom/android/server/locksettings/LockSettingsService;->migrateFrpCredential()V

    .line 879
    const/4 v3, 0x1

    invoke-virtual {p0, v0, v3, v2}, Lcom/android/server/locksettings/LockSettingsService;->setBoolean(Ljava/lang/String;ZI)V

    .line 880
    const-string v0, "Migrated migrated_frp."

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_20
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_20} :catch_21

    .line 884
    :cond_20
    goto :goto_27

    .line 882
    :catch_21
    move-exception v0

    .line 883
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "Unable to migrateOldDataAfterSystemReady"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 885
    .end local v0  # "e":Landroid/os/RemoteException;
    :goto_27
    return-void
.end method

.method private notifyActivePasswordMetricsAvailable(I[BI)V
    .registers 7
    .param p1, "credentialType"  # I
    .param p2, "password"  # [B
    .param p3, "userId"  # I

    .line 2071
    nop

    .line 2072
    invoke-static {p1, p2}, Landroid/app/admin/PasswordMetrics;->computeForCredential(I[B)Landroid/app/admin/PasswordMetrics;

    move-result-object v0

    .line 2075
    .local v0, "metrics":Landroid/app/admin/PasswordMetrics;
    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsService;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/locksettings/-$$Lambda$LockSettingsService$Hh44Kcp05cKI6Hc6dJfQupn4QY8;

    invoke-direct {v2, p0, v0, p3}, Lcom/android/server/locksettings/-$$Lambda$LockSettingsService$Hh44Kcp05cKI6Hc6dJfQupn4QY8;-><init>(Lcom/android/server/locksettings/LockSettingsService;Landroid/app/admin/PasswordMetrics;I)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2080
    return-void
.end method

.method private notifyPasswordChanged(I)V
    .registers 4
    .param p1, "userId"  # I

    .line 2088
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/locksettings/-$$Lambda$LockSettingsService$cIsW_BZK9p1jhG1yw78i-3W9E4Y;

    invoke-direct {v1, p0, p1}, Lcom/android/server/locksettings/-$$Lambda$LockSettingsService$cIsW_BZK9p1jhG1yw78i-3W9E4Y;-><init>(Lcom/android/server/locksettings/LockSettingsService;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2094
    return-void
.end method

.method private notifySeparateProfileChallengeChanged(I)V
    .registers 3
    .param p1, "userId"  # I

    .line 1021
    const-class v0, Landroid/app/admin/DevicePolicyManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManagerInternal;

    .line 1023
    .local v0, "dpmi":Landroid/app/admin/DevicePolicyManagerInternal;
    if-eqz v0, :cond_d

    .line 1024
    invoke-virtual {v0, p1}, Landroid/app/admin/DevicePolicyManagerInternal;->reportSeparateProfileChallengeChanged(I)V

    .line 1026
    :cond_d
    return-void
.end method

.method private onAuthTokenKnownForUser(ILcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;)V
    .registers 7
    .param p1, "userId"  # I
    .param p2, "auth"  # Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;

    .line 2424
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Caching SP for user "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LockSettingsService"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2425
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    monitor-enter v0

    .line 2426
    :try_start_19
    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpCache:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2427
    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_19 .. :try_end_1f} :catchall_6b

    .line 2428
    invoke-direct {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->tryRemoveUserFromSpCacheLater(I)V

    .line 2430
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mInjector:Lcom/android/server/locksettings/LockSettingsService$Injector;

    invoke-virtual {v0}, Lcom/android/server/locksettings/LockSettingsService$Injector;->isGsiRunning()Z

    move-result v0

    if-eqz v0, :cond_32

    .line 2431
    const-string v0, "LockSettingsService"

    const-string v1, "AuthSecret disabled in GSI"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2432
    return-void

    .line 2436
    :cond_32
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mAuthSecretService:Landroid/hardware/authsecret/V1_0/IAuthSecret;

    if-eqz v0, :cond_6a

    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isPrimary()Z

    move-result v0

    if-eqz v0, :cond_6a

    .line 2438
    :try_start_42
    invoke-virtual {p2}, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->deriveVendorAuthSecret()[B

    move-result-object v0

    .line 2439
    .local v0, "rawSecret":[B
    new-instance v1, Ljava/util/ArrayList;

    array-length v2, v0

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 2440
    .local v1, "secret":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_4d
    array-length v3, v0

    if-ge v2, v3, :cond_5c

    .line 2441
    aget-byte v3, v0, v2

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2440
    add-int/lit8 v2, v2, 0x1

    goto :goto_4d

    .line 2443
    .end local v2  # "i":I
    :cond_5c
    iget-object v2, p0, Lcom/android/server/locksettings/LockSettingsService;->mAuthSecretService:Landroid/hardware/authsecret/V1_0/IAuthSecret;

    invoke-interface {v2, v1}, Landroid/hardware/authsecret/V1_0/IAuthSecret;->primaryUserCredential(Ljava/util/ArrayList;)V
    :try_end_61
    .catch Landroid/os/RemoteException; {:try_start_42 .. :try_end_61} :catch_62

    .line 2446
    .end local v0  # "rawSecret":[B
    .end local v1  # "secret":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    goto :goto_6a

    .line 2444
    :catch_62
    move-exception v0

    .line 2445
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "LockSettingsService"

    const-string v2, "Failed to pass primary user secret to AuthSecret HAL"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2448
    .end local v0  # "e":Landroid/os/RemoteException;
    :cond_6a
    :goto_6a
    return-void

    .line 2427
    :catchall_6b
    move-exception v1

    :try_start_6c
    monitor-exit v0
    :try_end_6d
    .catchall {:try_start_6c .. :try_end_6d} :catchall_6b

    throw v1
.end method

.method private readFrpPasswordQuality()I
    .registers 2

    .line 1105
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    invoke-virtual {v0}, Lcom/android/server/locksettings/LockSettingsStorage;->readPersistentDataBlock()Lcom/android/server/locksettings/LockSettingsStorage$PersistentData;

    move-result-object v0

    iget v0, v0, Lcom/android/server/locksettings/LockSettingsStorage$PersistentData;->qualityForUi:I

    return v0
.end method

.method private redactActualQualityToMostLenientEquivalentQuality(I)I
    .registers 4
    .param p1, "quality"  # I

    .line 924
    const/high16 v0, 0x20000

    if-eq p1, v0, :cond_16

    const/high16 v1, 0x30000

    if-eq p1, v1, :cond_16

    const/high16 v0, 0x40000

    if-eq p1, v0, :cond_15

    const/high16 v1, 0x50000

    if-eq p1, v1, :cond_15

    const/high16 v1, 0x60000

    if-eq p1, v1, :cond_15

    .line 937
    return p1

    .line 928
    :cond_15
    return v0

    .line 931
    :cond_16
    return v0
.end method

.method private removeEscrowToken(JI)Z
    .registers 8
    .param p1, "handle"  # J
    .param p3, "userId"  # I

    .line 2937
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    monitor-enter v0

    .line 2938
    :try_start_3
    invoke-direct {p0, p3}, Lcom/android/server/locksettings/LockSettingsService;->getSyntheticPasswordHandleLocked(I)J

    move-result-wide v1

    cmp-long v1, p1, v1

    const/4 v2, 0x0

    if-nez v1, :cond_15

    .line 2939
    const-string v1, "LockSettingsService"

    const-string v3, "Cannot remove password handle"

    invoke-static {v1, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2940
    monitor-exit v0

    return v2

    .line 2942
    :cond_15
    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/server/locksettings/SyntheticPasswordManager;->removePendingToken(JI)Z

    move-result v1

    const/4 v3, 0x1

    if-eqz v1, :cond_20

    .line 2943
    monitor-exit v0

    return v3

    .line 2945
    :cond_20
    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/server/locksettings/SyntheticPasswordManager;->existsHandle(JI)Z

    move-result v1

    if-eqz v1, :cond_2f

    .line 2946
    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/server/locksettings/SyntheticPasswordManager;->destroyTokenBasedSyntheticPassword(JI)V

    .line 2947
    monitor-exit v0

    return v3

    .line 2949
    :cond_2f
    monitor-exit v0

    return v2

    .line 2951
    :catchall_31
    move-exception v1

    monitor-exit v0
    :try_end_33
    .catchall {:try_start_3 .. :try_end_33} :catchall_31

    throw v1
.end method

.method private removeKeystoreProfileKey(I)V
    .registers 5
    .param p1, "targetUserId"  # I

    .line 2177
    :try_start_0
    const-string v0, "AndroidKeyStore"

    invoke-static {v0}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v0

    .line 2178
    .local v0, "keyStore":Ljava/security/KeyStore;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/security/KeyStore;->load(Ljava/security/KeyStore$LoadStoreParameter;)V

    .line 2179
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "profile_key_name_encrypt_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/security/KeyStore;->deleteEntry(Ljava/lang/String;)V

    .line 2180
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "profile_key_name_decrypt_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/security/KeyStore;->deleteEntry(Ljava/lang/String;)V
    :try_end_34
    .catch Ljava/security/KeyStoreException; {:try_start_0 .. :try_end_34} :catch_35
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_34} :catch_35
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_34} :catch_35
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_34} :catch_35

    .line 2185
    .end local v0  # "keyStore":Ljava/security/KeyStore;
    goto :goto_4c

    .line 2181
    :catch_35
    move-exception v0

    .line 2184
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to remove keystore profile key for user:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "LockSettingsService"

    invoke-static {v2, v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2186
    .end local v0  # "e":Ljava/lang/Exception;
    :goto_4c
    return-void
.end method

.method private removeUser(IZ)V
    .registers 7
    .param p1, "userId"  # I
    .param p2, "unknownUser"  # Z

    .line 2153
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    invoke-virtual {v0, p1}, Lcom/android/server/locksettings/SyntheticPasswordManager;->removeUser(I)V

    .line 2154
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    invoke-virtual {v0, p1}, Lcom/android/server/locksettings/LockSettingsStorage;->removeUser(I)V

    .line 2155
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mStrongAuth:Lcom/android/server/locksettings/LockSettingsStrongAuth;

    invoke-virtual {v0, p1}, Lcom/android/server/locksettings/LockSettingsStrongAuth;->removeUser(I)V

    .line 2156
    invoke-direct {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->tryRemoveUserFromSpCacheLater(I)V

    .line 2158
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v0

    .line 2159
    .local v0, "ks":Landroid/security/KeyStore;
    invoke-virtual {v0, p1}, Landroid/security/KeyStore;->onUserRemoved(I)V

    .line 2162
    :try_start_19
    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsService;->getGateKeeperService()Landroid/service/gatekeeper/IGateKeeperService;

    move-result-object v1

    .line 2163
    .local v1, "gk":Landroid/service/gatekeeper/IGateKeeperService;
    if-eqz v1, :cond_22

    .line 2164
    invoke-interface {v1, p1}, Landroid/service/gatekeeper/IGateKeeperService;->clearSecureUserId(I)V
    :try_end_22
    .catch Landroid/os/RemoteException; {:try_start_19 .. :try_end_22} :catch_23

    .line 2168
    .end local v1  # "gk":Landroid/service/gatekeeper/IGateKeeperService;
    :cond_22
    goto :goto_2c

    .line 2166
    :catch_23
    move-exception v1

    .line 2167
    .local v1, "ex":Landroid/os/RemoteException;
    const-string v2, "LockSettingsService"

    const-string/jumbo v3, "unable to clear GK secure user id"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2169
    .end local v1  # "ex":Landroid/os/RemoteException;
    :goto_2c
    if-nez p2, :cond_3a

    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v1, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v1

    if-eqz v1, :cond_3d

    .line 2170
    :cond_3a
    invoke-direct {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->removeKeystoreProfileKey(I)V

    .line 2172
    :cond_3d
    return-void
.end method

.method private static secretFromCredential([B)[B
    .registers 4
    .param p0, "credential"  # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1723
    :try_start_0
    const-string v0, "SHA-512"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 1725
    .local v0, "digest":Ljava/security/MessageDigest;
    const-string v1, "Android FBE credential hash"

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    .line 1727
    .local v1, "personalization":[B
    const/16 v2, 0x80

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v2

    move-object v1, v2

    .line 1728
    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->update([B)V

    .line 1729
    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->update([B)V

    .line 1730
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v2
    :try_end_1d
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_1d} :catch_1e

    return-object v2

    .line 1731
    .end local v0  # "digest":Ljava/security/MessageDigest;
    .end local v1  # "personalization":[B
    :catch_1e
    move-exception v0

    .line 1732
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "NoSuchAlgorithmException for SHA-512"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private sendCredentialsOnChangeIfRequired(I[BIZ)V
    .registers 8
    .param p1, "credentialType"  # I
    .param p2, "credential"  # [B
    .param p3, "userId"  # I
    .param p4, "isLockTiedToParent"  # Z

    .line 1446
    if-eqz p4, :cond_3

    .line 1447
    return-void

    .line 1451
    :cond_3
    invoke-direct {p0, p3}, Lcom/android/server/locksettings/LockSettingsService;->getProfilesWithSameLockScreen(I)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_21

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 1452
    .local v1, "profileId":I
    iget-object v2, p0, Lcom/android/server/locksettings/LockSettingsService;->mRecoverableKeyStoreManager:Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;

    invoke-virtual {v2, p1, p2, v1}, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->lockScreenSecretChanged(I[BI)V

    .line 1454
    .end local v1  # "profileId":I
    goto :goto_b

    .line 1455
    :cond_21
    return-void
.end method

.method private sendCredentialsOnUnlockIfRequired(I[BI)V
    .registers 7
    .param p1, "credentialType"  # I
    .param p2, "credential"  # [B
    .param p3, "userId"  # I

    .line 1419
    const/16 v0, -0x270f

    if-ne p3, v0, :cond_5

    .line 1420
    return-void

    .line 1426
    :cond_5
    invoke-direct {p0, p3}, Lcom/android/server/locksettings/LockSettingsService;->isManagedProfileWithUnifiedLock(I)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 1427
    return-void

    .line 1431
    :cond_c
    invoke-direct {p0, p3}, Lcom/android/server/locksettings/LockSettingsService;->getProfilesWithSameLockScreen(I)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_14
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 1432
    .local v1, "profileId":I
    iget-object v2, p0, Lcom/android/server/locksettings/LockSettingsService;->mRecoverableKeyStoreManager:Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;

    invoke-virtual {v2, p1, p2, v1}, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->lockScreenSecretAvailable(I[BI)V

    .line 1434
    .end local v1  # "profileId":I
    goto :goto_14

    .line 1435
    :cond_2a
    return-void
.end method

.method private setAuthlessUserKeyProtection(I[B)V
    .registers 4
    .param p1, "userId"  # I
    .param p2, "key"  # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1684
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lcom/android/server/locksettings/LockSettingsService;->addUserKeyAuth(I[B[B)V

    .line 1685
    return-void
.end method

.method private setDeviceUnlockedForUser(I)V
    .registers 4
    .param p1, "userId"  # I

    .line 2675
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mContext:Landroid/content/Context;

    const-class v1, Landroid/app/trust/TrustManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/trust/TrustManager;

    .line 2676
    .local v0, "trustManager":Landroid/app/trust/TrustManager;
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/app/trust/TrustManager;->setDeviceLockedForUser(IZ)V

    .line 2677
    return-void
.end method

.method private setKeystorePassword([BI)V
    .registers 5
    .param p1, "password"  # [B
    .param p2, "userHandle"  # I

    .line 1184
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v0

    .line 1186
    .local v0, "ks":Landroid/security/KeyStore;
    if-nez p1, :cond_8

    const/4 v1, 0x0

    goto :goto_d

    :cond_8
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p1}, Ljava/lang/String;-><init>([B)V

    .line 1187
    .local v1, "passwordString":Ljava/lang/String;
    :goto_d
    invoke-virtual {v0, p2, v1}, Landroid/security/KeyStore;->onUserPasswordChanged(ILjava/lang/String;)Z

    .line 1188
    return-void
.end method

.method private setLockCredentialInternal([BI[BIIZZ)V
    .registers 28
    .param p1, "credential"  # [B
    .param p2, "credentialType"  # I
    .param p3, "savedCredential"  # [B
    .param p4, "requestedQuality"  # I
    .param p5, "userId"  # I
    .param p6, "allowUntrustedChange"  # Z
    .param p7, "isLockTiedToParent"  # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1507
    move-object/from16 v9, p0

    move-object/from16 v0, p1

    move/from16 v10, p2

    move-object/from16 v1, p3

    move/from16 v11, p5

    move/from16 v12, p7

    if-eqz v1, :cond_14

    array-length v2, v1

    if-nez v2, :cond_12

    goto :goto_14

    :cond_12
    move-object v13, v1

    goto :goto_16

    .line 1508
    :cond_14
    :goto_14
    const/4 v1, 0x0

    move-object v13, v1

    .line 1510
    .end local p3  # "savedCredential":[B
    .local v13, "savedCredential":[B
    :goto_16
    if-eqz v0, :cond_1e

    array-length v1, v0

    if-nez v1, :cond_1c

    goto :goto_1e

    :cond_1c
    move-object v14, v0

    goto :goto_20

    .line 1511
    :cond_1e
    :goto_1e
    const/4 v0, 0x0

    move-object v14, v0

    .line 1513
    .end local p1  # "credential":[B
    .local v14, "credential":[B
    :goto_20
    iget-object v15, v9, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    monitor-enter v15

    .line 1514
    :try_start_23
    invoke-direct {v9, v11}, Lcom/android/server/locksettings/LockSettingsService;->isSyntheticPasswordBasedCredentialLocked(I)Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 1515
    move-object/from16 v1, p0

    move-object v2, v14

    move/from16 v3, p2

    move-object v4, v13

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    invoke-direct/range {v1 .. v8}, Lcom/android/server/locksettings/LockSettingsService;->spBasedSetLockCredentialInternalLocked([BI[BIIZZ)V

    .line 1517
    monitor-exit v15

    return-void

    .line 1519
    :cond_3c
    monitor-exit v15
    :try_end_3d
    .catchall {:try_start_23 .. :try_end_3d} :catchall_16b

    .line 1521
    const/4 v0, -0x1

    const/4 v15, 0x0

    if-ne v10, v0, :cond_6d

    .line 1522
    if-eqz v14, :cond_4a

    .line 1523
    const-string v1, "LockSettingsService"

    const-string v2, "CredentialType is none, but credential is non-null."

    invoke-static {v1, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 1525
    :cond_4a
    invoke-direct {v9, v11}, Lcom/android/server/locksettings/LockSettingsService;->clearUserKeyProtection(I)V

    .line 1526
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/locksettings/LockSettingsService;->getGateKeeperService()Landroid/service/gatekeeper/IGateKeeperService;

    move-result-object v1

    invoke-interface {v1, v11}, Landroid/service/gatekeeper/IGateKeeperService;->clearSecureUserId(I)V

    .line 1527
    iget-object v1, v9, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    invoke-static {}, Lcom/android/server/locksettings/LockSettingsStorage$CredentialHash;->createEmptyHash()Lcom/android/server/locksettings/LockSettingsStorage$CredentialHash;

    move-result-object v2

    invoke-virtual {v1, v2, v11}, Lcom/android/server/locksettings/LockSettingsStorage;->writeCredentialHash(Lcom/android/server/locksettings/LockSettingsStorage$CredentialHash;I)V

    .line 1528
    invoke-direct {v9, v15, v11}, Lcom/android/server/locksettings/LockSettingsService;->setKeystorePassword([BI)V

    .line 1529
    invoke-direct {v9, v11}, Lcom/android/server/locksettings/LockSettingsService;->fixateNewestUserKeyAuth(I)V

    .line 1530
    invoke-direct {v9, v11, v15}, Lcom/android/server/locksettings/LockSettingsService;->synchronizeUnifiedWorkChallengeForProfiles(ILjava/util/Map;)V

    .line 1531
    invoke-direct {v9, v0, v15, v11}, Lcom/android/server/locksettings/LockSettingsService;->notifyActivePasswordMetricsAvailable(I[BI)V

    .line 1532
    invoke-direct {v9, v10, v14, v11, v12}, Lcom/android/server/locksettings/LockSettingsService;->sendCredentialsOnChangeIfRequired(I[BIZ)V

    .line 1534
    return-void

    .line 1536
    :cond_6d
    if-eqz v14, :cond_163

    .line 1540
    iget-object v0, v9, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    invoke-virtual {v0, v11}, Lcom/android/server/locksettings/LockSettingsStorage;->readCredentialHash(I)Lcom/android/server/locksettings/LockSettingsStorage$CredentialHash;

    move-result-object v8

    .line 1541
    .local v8, "currentHandle":Lcom/android/server/locksettings/LockSettingsStorage$CredentialHash;
    invoke-direct {v9, v11}, Lcom/android/server/locksettings/LockSettingsService;->isManagedProfileWithUnifiedLock(I)Z

    move-result v0

    if-eqz v0, :cond_97

    .line 1543
    if-nez v13, :cond_a6

    .line 1545
    :try_start_7d
    invoke-virtual {v9, v11}, Lcom/android/server/locksettings/LockSettingsService;->getDecryptedPasswordForTiedProfile(I)[B

    move-result-object v0
    :try_end_81
    .catch Ljava/io/FileNotFoundException; {:try_start_7d .. :try_end_81} :catch_8c
    .catch Ljava/security/UnrecoverableKeyException; {:try_start_7d .. :try_end_81} :catch_83
    .catch Ljava/security/InvalidKeyException; {:try_start_7d .. :try_end_81} :catch_83
    .catch Ljava/security/KeyStoreException; {:try_start_7d .. :try_end_81} :catch_83
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_7d .. :try_end_81} :catch_83
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_7d .. :try_end_81} :catch_83
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_7d .. :try_end_81} :catch_83
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_7d .. :try_end_81} :catch_83
    .catch Ljavax/crypto/BadPaddingException; {:try_start_7d .. :try_end_81} :catch_83
    .catch Ljava/security/cert/CertificateException; {:try_start_7d .. :try_end_81} :catch_83
    .catch Ljava/io/IOException; {:try_start_7d .. :try_end_81} :catch_83

    .line 1553
    .end local v13  # "savedCredential":[B
    .local v0, "savedCredential":[B
    move-object v13, v0

    goto :goto_a6

    .line 1548
    .end local v0  # "savedCredential":[B
    .restart local v13  # "savedCredential":[B
    :catch_83
    move-exception v0

    .line 1552
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "LockSettingsService"

    const-string v2, "Failed to decrypt child profile key"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v0  # "e":Ljava/lang/Exception;
    goto :goto_96

    .line 1546
    :catch_8c
    move-exception v0

    move-object v1, v0

    move-object v0, v1

    .line 1547
    .local v0, "e":Ljava/io/FileNotFoundException;
    const-string v1, "LockSettingsService"

    const-string v2, "Child profile key not found"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1553
    .end local v0  # "e":Ljava/io/FileNotFoundException;
    :goto_96
    goto :goto_a6

    .line 1556
    :cond_97
    iget-object v0, v8, Lcom/android/server/locksettings/LockSettingsStorage$CredentialHash;->hash:[B

    if-nez v0, :cond_a6

    .line 1557
    if-eqz v13, :cond_a4

    .line 1558
    const-string v0, "LockSettingsService"

    const-string v1, "Saved credential provided, but none stored"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1560
    :cond_a4
    const/4 v0, 0x0

    move-object v13, v0

    .line 1563
    :cond_a6
    :goto_a6
    iget-object v7, v9, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    monitor-enter v7

    .line 1564
    :try_start_a9
    invoke-virtual {v9, v11}, Lcom/android/server/locksettings/LockSettingsService;->shouldMigrateToSyntheticPasswordLocked(I)Z

    move-result v0
    :try_end_ad
    .catchall {:try_start_a9 .. :try_end_ad} :catchall_15a

    if-eqz v0, :cond_df

    .line 1565
    :try_start_af
    iget-object v2, v8, Lcom/android/server/locksettings/LockSettingsStorage$CredentialHash;->hash:[B

    iget v4, v8, Lcom/android/server/locksettings/LockSettingsStorage$CredentialHash;->type:I

    move-object/from16 v1, p0

    move-object v3, v13

    move/from16 v5, p4

    move/from16 v6, p5

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/locksettings/LockSettingsService;->initializeSyntheticPasswordLocked([B[BIII)Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;
    :try_end_bd
    .catchall {:try_start_af .. :try_end_bd} :catchall_d8

    .line 1567
    move-object/from16 v1, p0

    move-object v2, v14

    move/from16 v3, p2

    move-object v4, v13

    move/from16 v5, p4

    move/from16 v6, p5

    move-object/from16 v16, v7

    move/from16 v7, p6

    move-object v15, v8

    .end local v8  # "currentHandle":Lcom/android/server/locksettings/LockSettingsStorage$CredentialHash;
    .local v15, "currentHandle":Lcom/android/server/locksettings/LockSettingsStorage$CredentialHash;
    move/from16 v8, p7

    :try_start_ce
    invoke-direct/range {v1 .. v8}, Lcom/android/server/locksettings/LockSettingsService;->spBasedSetLockCredentialInternalLocked([BI[BIIZZ)V

    .line 1569
    monitor-exit v16
    :try_end_d2
    .catchall {:try_start_ce .. :try_end_d2} :catchall_d3

    return-void

    .line 1571
    :catchall_d3
    move-exception v0

    move-object/from16 v17, v15

    goto/16 :goto_15f

    .end local v15  # "currentHandle":Lcom/android/server/locksettings/LockSettingsStorage$CredentialHash;
    .restart local v8  # "currentHandle":Lcom/android/server/locksettings/LockSettingsStorage$CredentialHash;
    :catchall_d8
    move-exception v0

    move-object/from16 v16, v7

    move-object/from16 v17, v8

    .end local v8  # "currentHandle":Lcom/android/server/locksettings/LockSettingsStorage$CredentialHash;
    .restart local v15  # "currentHandle":Lcom/android/server/locksettings/LockSettingsStorage$CredentialHash;
    goto/16 :goto_15f

    .end local v15  # "currentHandle":Lcom/android/server/locksettings/LockSettingsStorage$CredentialHash;
    .restart local v8  # "currentHandle":Lcom/android/server/locksettings/LockSettingsStorage$CredentialHash;
    :cond_df
    move-object/from16 v16, v7

    :try_start_e1
    monitor-exit v16
    :try_end_e2
    .catchall {:try_start_e1 .. :try_end_e2} :catchall_158

    .line 1573
    iget-object v0, v8, Lcom/android/server/locksettings/LockSettingsStorage$CredentialHash;->hash:[B

    invoke-direct {v9, v0, v13, v14, v11}, Lcom/android/server/locksettings/LockSettingsService;->enrollCredential([B[B[BI)[B

    move-result-object v7

    .line 1575
    .local v7, "enrolledHandle":[B
    if-eqz v7, :cond_133

    .line 1576
    invoke-static {v7, v10}, Lcom/android/server/locksettings/LockSettingsStorage$CredentialHash;->create([BI)Lcom/android/server/locksettings/LockSettingsStorage$CredentialHash;

    move-result-object v6

    .line 1577
    .local v6, "willStore":Lcom/android/server/locksettings/LockSettingsStorage$CredentialHash;
    iget-object v0, v9, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    invoke-virtual {v0, v6, v11}, Lcom/android/server/locksettings/LockSettingsStorage;->writeCredentialHash(Lcom/android/server/locksettings/LockSettingsStorage$CredentialHash;I)V

    .line 1579
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/locksettings/LockSettingsService;->getGateKeeperService()Landroid/service/gatekeeper/IGateKeeperService;

    move-result-object v0

    const-wide/16 v2, 0x0

    iget-object v4, v6, Lcom/android/server/locksettings/LockSettingsStorage$CredentialHash;->hash:[B

    .line 1580
    move/from16 v1, p5

    move-object v5, v14

    invoke-interface/range {v0 .. v5}, Landroid/service/gatekeeper/IGateKeeperService;->verifyChallenge(IJ[B[B)Landroid/service/gatekeeper/GateKeeperResponse;

    move-result-object v0

    .line 1581
    .local v0, "gkResponse":Landroid/service/gatekeeper/GateKeeperResponse;
    invoke-direct {v9, v0}, Lcom/android/server/locksettings/LockSettingsService;->convertResponse(Landroid/service/gatekeeper/GateKeeperResponse;)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object v1

    invoke-direct {v9, v11, v14, v1}, Lcom/android/server/locksettings/LockSettingsService;->setUserKeyProtection(I[BLcom/android/internal/widget/VerifyCredentialResponse;)V

    .line 1582
    invoke-direct {v9, v11}, Lcom/android/server/locksettings/LockSettingsService;->fixateNewestUserKeyAuth(I)V

    .line 1584
    const/4 v4, 0x1

    const-wide/16 v16, 0x0

    const/16 v18, 0x0

    move-object/from16 v1, p0

    move-object v2, v14

    move/from16 v3, p2

    move-object/from16 v19, v6

    .end local v6  # "willStore":Lcom/android/server/locksettings/LockSettingsStorage$CredentialHash;
    .local v19, "willStore":Lcom/android/server/locksettings/LockSettingsStorage$CredentialHash;
    move-wide/from16 v5, v16

    move-object/from16 v16, v7

    .end local v7  # "enrolledHandle":[B
    .local v16, "enrolledHandle":[B
    move/from16 v7, p5

    move-object/from16 v17, v8

    .end local v8  # "currentHandle":Lcom/android/server/locksettings/LockSettingsStorage$CredentialHash;
    .local v17, "currentHandle":Lcom/android/server/locksettings/LockSettingsStorage$CredentialHash;
    move-object/from16 v8, v18

    invoke-direct/range {v1 .. v8}, Lcom/android/server/locksettings/LockSettingsService;->doVerifyCredential([BIZJILcom/android/internal/widget/ICheckCredentialProgressCallback;)Lcom/android/internal/widget/VerifyCredentialResponse;

    .line 1585
    invoke-direct {v9, v11, v15}, Lcom/android/server/locksettings/LockSettingsService;->synchronizeUnifiedWorkChallengeForProfiles(ILjava/util/Map;)V

    .line 1586
    invoke-direct {v9, v10, v14, v11, v12}, Lcom/android/server/locksettings/LockSettingsService;->sendCredentialsOnChangeIfRequired(I[BIZ)V

    .line 1588
    .end local v0  # "gkResponse":Landroid/service/gatekeeper/GateKeeperResponse;
    .end local v19  # "willStore":Lcom/android/server/locksettings/LockSettingsStorage$CredentialHash;
    nop

    .line 1593
    iget-object v0, v9, Lcom/android/server/locksettings/LockSettingsService;->mFindPhoneService:Lcom/meizu/findphone/FindPhoneService;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/meizu/findphone/FindPhoneService;->processLeftTimes(Z)I

    .line 1595
    return-void

    .line 1589
    .end local v16  # "enrolledHandle":[B
    .end local v17  # "currentHandle":Lcom/android/server/locksettings/LockSettingsStorage$CredentialHash;
    .restart local v7  # "enrolledHandle":[B
    .restart local v8  # "currentHandle":Lcom/android/server/locksettings/LockSettingsStorage$CredentialHash;
    :cond_133
    move-object/from16 v16, v7

    move-object/from16 v17, v8

    .end local v7  # "enrolledHandle":[B
    .end local v8  # "currentHandle":Lcom/android/server/locksettings/LockSettingsStorage$CredentialHash;
    .restart local v16  # "enrolledHandle":[B
    .restart local v17  # "currentHandle":Lcom/android/server/locksettings/LockSettingsStorage$CredentialHash;
    new-instance v0, Landroid/os/RemoteException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to enroll "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1590
    const/4 v2, 0x2

    if-ne v10, v2, :cond_14a

    const-string/jumbo v2, "password"

    goto :goto_14d

    :cond_14a
    const-string/jumbo v2, "pattern"

    :goto_14d
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1571
    .end local v16  # "enrolledHandle":[B
    .end local v17  # "currentHandle":Lcom/android/server/locksettings/LockSettingsStorage$CredentialHash;
    .restart local v8  # "currentHandle":Lcom/android/server/locksettings/LockSettingsStorage$CredentialHash;
    :catchall_158
    move-exception v0

    goto :goto_15d

    :catchall_15a
    move-exception v0

    move-object/from16 v16, v7

    :goto_15d
    move-object/from16 v17, v8

    .end local v8  # "currentHandle":Lcom/android/server/locksettings/LockSettingsStorage$CredentialHash;
    .restart local v17  # "currentHandle":Lcom/android/server/locksettings/LockSettingsStorage$CredentialHash;
    :goto_15f
    :try_start_15f
    monitor-exit v16
    :try_end_160
    .catchall {:try_start_15f .. :try_end_160} :catchall_161

    throw v0

    :catchall_161
    move-exception v0

    goto :goto_15f

    .line 1537
    .end local v17  # "currentHandle":Lcom/android/server/locksettings/LockSettingsStorage$CredentialHash;
    :cond_163
    new-instance v0, Landroid/os/RemoteException;

    const-string v1, "Null credential with mismatched credential type"

    invoke-direct {v0, v1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1519
    :catchall_16b
    move-exception v0

    :try_start_16c
    monitor-exit v15
    :try_end_16d
    .catchall {:try_start_16c .. :try_end_16d} :catchall_16b

    throw v0
.end method

.method private setLockCredentialWithAuthTokenLocked([BILcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;II)J
    .registers 19
    .param p1, "credential"  # [B
    .param p2, "credentialType"  # I
    .param p3, "auth"  # Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;
    .param p4, "requestedQuality"  # I
    .param p5, "userId"  # I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mSpManager"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2693
    move-object v0, p0

    move-object v8, p1

    move/from16 v9, p5

    iget-object v1, v0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsService;->getGateKeeperService()Landroid/service/gatekeeper/IGateKeeperService;

    move-result-object v2

    move-object v3, p1

    move v4, p2

    move-object/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/locksettings/SyntheticPasswordManager;->createPasswordBasedSyntheticPassword(Landroid/service/gatekeeper/IGateKeeperService;[BILcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;II)J

    move-result-wide v10

    .line 2696
    .local v10, "newHandle":J
    if-eqz v8, :cond_5f

    .line 2698
    const/4 v7, 0x0

    .line 2700
    .local v7, "profilePasswords":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;[B>;"
    iget-object v1, v0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    invoke-virtual {v1, v9}, Lcom/android/server/locksettings/SyntheticPasswordManager;->hasSidForUser(I)Z

    move-result v1

    if-eqz v1, :cond_33

    .line 2706
    iget-object v1, v0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsService;->getGateKeeperService()Landroid/service/gatekeeper/IGateKeeperService;

    move-result-object v2

    const-wide/16 v4, 0x0

    move-object/from16 v3, p3

    move/from16 v6, p5

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/locksettings/SyntheticPasswordManager;->verifyChallenge(Landroid/service/gatekeeper/IGateKeeperService;Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;JI)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-object/from16 v12, p3

    goto :goto_8d

    .line 2710
    :cond_33
    iget-object v1, v0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsService;->getGateKeeperService()Landroid/service/gatekeeper/IGateKeeperService;

    move-result-object v2

    move-object/from16 v12, p3

    invoke-virtual {v1, v2, v12, v9}, Lcom/android/server/locksettings/SyntheticPasswordManager;->newSidForUser(Landroid/service/gatekeeper/IGateKeeperService;Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;I)V

    .line 2711
    iget-object v1, v0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsService;->getGateKeeperService()Landroid/service/gatekeeper/IGateKeeperService;

    move-result-object v2

    const-wide/16 v4, 0x0

    move-object/from16 v3, p3

    move/from16 v6, p5

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/locksettings/SyntheticPasswordManager;->verifyChallenge(Landroid/service/gatekeeper/IGateKeeperService;Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;JI)Lcom/android/internal/widget/VerifyCredentialResponse;

    .line 2712
    invoke-virtual/range {p3 .. p3}, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->deriveDiskEncryptionKey()[B

    move-result-object v1

    invoke-direct {p0, v9, v1}, Lcom/android/server/locksettings/LockSettingsService;->setAuthlessUserKeyProtection(I[B)V

    .line 2713
    invoke-direct {p0, v9}, Lcom/android/server/locksettings/LockSettingsService;->fixateNewestUserKeyAuth(I)V

    .line 2714
    invoke-virtual/range {p3 .. p3}, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->deriveKeyStorePassword()[B

    move-result-object v1

    invoke-direct {p0, v1, v9}, Lcom/android/server/locksettings/LockSettingsService;->setKeystorePassword([BI)V

    goto :goto_8d

    .line 2719
    .end local v7  # "profilePasswords":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;[B>;"
    :cond_5f
    move-object/from16 v12, p3

    invoke-direct {p0, v9}, Lcom/android/server/locksettings/LockSettingsService;->getDecryptedPasswordsForAllTiedProfiles(I)Ljava/util/Map;

    move-result-object v7

    .line 2722
    .restart local v7  # "profilePasswords":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;[B>;"
    iget-object v1, v0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    invoke-virtual {v1, v9}, Lcom/android/server/locksettings/SyntheticPasswordManager;->clearSidForUser(I)V

    .line 2723
    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsService;->getGateKeeperService()Landroid/service/gatekeeper/IGateKeeperService;

    move-result-object v1

    invoke-interface {v1, v9}, Landroid/service/gatekeeper/IGateKeeperService;->clearSecureUserId(I)V

    .line 2727
    invoke-virtual/range {p3 .. p3}, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->deriveDiskEncryptionKey()[B

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {p0, v9, v2, v1}, Lcom/android/server/locksettings/LockSettingsService;->unlockUserKey(I[B[B)V

    .line 2728
    invoke-virtual/range {p3 .. p3}, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->deriveDiskEncryptionKey()[B

    move-result-object v1

    invoke-direct {p0, v9, v2, v1}, Lcom/android/server/locksettings/LockSettingsService;->clearUserKeyAuth(I[B[B)V

    .line 2729
    invoke-direct {p0, v9}, Lcom/android/server/locksettings/LockSettingsService;->fixateNewestUserKeyAuth(I)V

    .line 2730
    invoke-virtual/range {p3 .. p3}, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->deriveKeyStorePassword()[B

    move-result-object v1

    invoke-direct {p0, v1, v9}, Lcom/android/server/locksettings/LockSettingsService;->unlockKeystore([BI)V

    .line 2731
    invoke-direct {p0, v2, v9}, Lcom/android/server/locksettings/LockSettingsService;->setKeystorePassword([BI)V

    .line 2733
    :goto_8d
    const-string/jumbo v1, "sp-handle"

    invoke-virtual {p0, v1, v10, v11, v9}, Lcom/android/server/locksettings/LockSettingsService;->setLong(Ljava/lang/String;JI)V

    .line 2734
    invoke-direct {p0, v9, v7}, Lcom/android/server/locksettings/LockSettingsService;->synchronizeUnifiedWorkChallengeForProfiles(ILjava/util/Map;)V

    .line 2736
    move v1, p2

    invoke-direct {p0, p2, p1, v9}, Lcom/android/server/locksettings/LockSettingsService;->notifyActivePasswordMetricsAvailable(I[BI)V

    .line 2738
    if-eqz v7, :cond_bb

    .line 2739
    invoke-interface {v7}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_a4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_bb

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 2740
    .local v3, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;[B>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    const/4 v5, 0x0

    invoke-static {v4, v5}, Ljava/util/Arrays;->fill([BB)V

    .line 2741
    .end local v3  # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;[B>;"
    goto :goto_a4

    .line 2744
    :cond_bb
    return-wide v10
.end method

.method private setLockCredentialWithToken([BIJ[BII)Z
    .registers 12
    .param p1, "credential"  # [B
    .param p2, "type"  # I
    .param p3, "tokenHandle"  # J
    .param p5, "token"  # [B
    .param p6, "requestedQuality"  # I
    .param p7, "userId"  # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2957
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    monitor-enter v0

    .line 2958
    :try_start_3
    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    invoke-virtual {v1, p7}, Lcom/android/server/locksettings/SyntheticPasswordManager;->hasEscrowData(I)Z

    move-result v1

    if-eqz v1, :cond_32

    .line 2961
    invoke-direct/range {p0 .. p7}, Lcom/android/server/locksettings/LockSettingsService;->setLockCredentialWithTokenInternalLocked([BIJ[BII)Z

    move-result v1

    .line 2963
    .local v1, "result":Z
    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_3a

    .line 2964
    if-eqz v1, :cond_31

    .line 2965
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mSeparateChallengeLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2966
    const/4 v2, 0x1

    const/4 v3, 0x0

    :try_start_17
    invoke-direct {p0, p7, v2, v3}, Lcom/android/server/locksettings/LockSettingsService;->setSeparateProfileChallengeEnabledLocked(IZ[B)V

    .line 2967
    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_17 .. :try_end_1b} :catchall_2e

    .line 2968
    if-nez p1, :cond_27

    .line 2972
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/locksettings/-$$Lambda$LockSettingsService$3iCV7W6YQrxOv5dDGr5Cx3toXr0;

    invoke-direct {v2, p0, p7}, Lcom/android/server/locksettings/-$$Lambda$LockSettingsService$3iCV7W6YQrxOv5dDGr5Cx3toXr0;-><init>(Lcom/android/server/locksettings/LockSettingsService;I)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2974
    :cond_27
    invoke-direct {p0, p7}, Lcom/android/server/locksettings/LockSettingsService;->notifyPasswordChanged(I)V

    .line 2975
    invoke-direct {p0, p7}, Lcom/android/server/locksettings/LockSettingsService;->notifySeparateProfileChallengeChanged(I)V

    goto :goto_31

    .line 2967
    :catchall_2e
    move-exception v2

    :try_start_2f
    monitor-exit v0
    :try_end_30
    .catchall {:try_start_2f .. :try_end_30} :catchall_2e

    throw v2

    .line 2977
    :cond_31
    :goto_31
    return v1

    .line 2959
    .end local v1  # "result":Z
    :cond_32
    :try_start_32
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "Escrow token is disabled on the current user"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .end local p0  # "this":Lcom/android/server/locksettings/LockSettingsService;
    .end local p1  # "credential":[B
    .end local p2  # "type":I
    .end local p3  # "tokenHandle":J
    .end local p5  # "token":[B
    .end local p6  # "requestedQuality":I
    .end local p7  # "userId":I
    throw v1

    .line 2963
    .restart local p0  # "this":Lcom/android/server/locksettings/LockSettingsService;
    .restart local p1  # "credential":[B
    .restart local p2  # "type":I
    .restart local p3  # "tokenHandle":J
    .restart local p5  # "token":[B
    .restart local p6  # "requestedQuality":I
    .restart local p7  # "userId":I
    :catchall_3a
    move-exception v1

    monitor-exit v0
    :try_end_3c
    .catchall {:try_start_32 .. :try_end_3c} :catchall_3a

    throw v1
.end method

.method private setLockCredentialWithTokenInternalLocked([BIJ[BII)Z
    .registers 20
    .param p1, "credential"  # [B
    .param p2, "type"  # I
    .param p3, "tokenHandle"  # J
    .param p5, "token"  # [B
    .param p6, "requestedQuality"  # I
    .param p7, "userId"  # I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mSpManager"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2985
    move-object v6, p0

    move/from16 v7, p7

    iget-object v0, v6, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    .line 2986
    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsService;->getGateKeeperService()Landroid/service/gatekeeper/IGateKeeperService;

    move-result-object v1

    .line 2985
    move-wide v2, p3

    move-object/from16 v4, p5

    move/from16 v5, p7

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/locksettings/SyntheticPasswordManager;->unwrapTokenBasedSyntheticPassword(Landroid/service/gatekeeper/IGateKeeperService;J[BI)Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;

    move-result-object v8

    .line 2987
    .local v8, "result":Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;
    iget-object v0, v8, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;->authToken:Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;

    const/4 v1, 0x0

    const-string v2, "LockSettingsService"

    if-nez v0, :cond_1f

    .line 2988
    const-string v0, "Invalid escrow token supplied"

    invoke-static {v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2989
    return v1

    .line 2991
    :cond_1f
    iget-object v0, v8, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;->gkResponse:Lcom/android/internal/widget/VerifyCredentialResponse;

    invoke-virtual {v0}, Lcom/android/internal/widget/VerifyCredentialResponse;->getResponseCode()I

    move-result v0

    if-eqz v0, :cond_2d

    .line 2994
    const-string v0, "Obsolete token: synthetic password derived but it fails GK verification."

    invoke-static {v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2996
    return v1

    .line 2999
    :cond_2d
    move/from16 v9, p6

    int-to-long v0, v9

    const-string/jumbo v2, "lockscreen.password_type"

    invoke-virtual {p0, v2, v0, v1, v7}, Lcom/android/server/locksettings/LockSettingsService;->setLong(Ljava/lang/String;JI)V

    .line 3000
    invoke-direct {p0, v7}, Lcom/android/server/locksettings/LockSettingsService;->getSyntheticPasswordHandleLocked(I)J

    move-result-wide v10

    .line 3001
    .local v10, "oldHandle":J
    iget-object v3, v8, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;->authToken:Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move/from16 v4, p6

    move/from16 v5, p7

    invoke-direct/range {v0 .. v5}, Lcom/android/server/locksettings/LockSettingsService;->setLockCredentialWithAuthTokenLocked([BILcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;II)J

    .line 3003
    iget-object v0, v6, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    invoke-virtual {v0, v10, v11, v7}, Lcom/android/server/locksettings/SyntheticPasswordManager;->destroyPasswordBasedSyntheticPassword(JI)V

    .line 3005
    iget-object v0, v8, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;->authToken:Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;

    invoke-direct {p0, v7, v0}, Lcom/android/server/locksettings/LockSettingsService;->onAuthTokenKnownForUser(ILcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;)V

    .line 3006
    const/4 v0, 0x1

    return v0
.end method

.method private setSeparateProfileChallengeEnabledLocked(IZ[B)V
    .registers 7
    .param p1, "userId"  # I
    .param p2, "enabled"  # Z
    .param p3, "managedUserPassword"  # [B
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mSeparateChallengeLock"
        }
    .end annotation

    .line 1005
    const-string/jumbo v0, "lockscreen.profilechallenge"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, p1}, Lcom/android/server/locksettings/LockSettingsService;->getBoolean(Ljava/lang/String;ZI)Z

    move-result v1

    .line 1006
    .local v1, "old":Z
    invoke-virtual {p0, v0, p2, p1}, Lcom/android/server/locksettings/LockSettingsService;->setBoolean(Ljava/lang/String;ZI)V

    .line 1008
    if-eqz p2, :cond_16

    .line 1009
    :try_start_d
    iget-object v2, p0, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    invoke-virtual {v2, p1}, Lcom/android/server/locksettings/LockSettingsStorage;->removeChildProfileLock(I)V

    .line 1010
    invoke-direct {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->removeKeystoreProfileKey(I)V

    goto :goto_19

    .line 1012
    :cond_16
    invoke-virtual {p0, p1, p3}, Lcom/android/server/locksettings/LockSettingsService;->tieManagedProfileLockIfNecessary(I[B)V
    :try_end_19
    .catch Ljava/lang/IllegalStateException; {:try_start_d .. :try_end_19} :catch_1b

    .line 1017
    :goto_19
    nop

    .line 1018
    return-void

    .line 1014
    :catch_1b
    move-exception v2

    .line 1015
    .local v2, "e":Ljava/lang/IllegalStateException;
    invoke-virtual {p0, v0, v1, p1}, Lcom/android/server/locksettings/LockSettingsService;->setBoolean(Ljava/lang/String;ZI)V

    .line 1016
    throw v2
.end method

.method private setStringUnchecked(Ljava/lang/String;ILjava/lang/String;)V
    .registers 6
    .param p1, "key"  # Ljava/lang/String;
    .param p2, "userId"  # I
    .param p3, "value"  # Ljava/lang/String;

    .line 1047
    const/16 v0, -0x270f

    if-eq p2, v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    const-string v1, "cannot store lock settings for FRP user"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 1049
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    invoke-virtual {v0, p1, p3, p2}, Lcom/android/server/locksettings/LockSettingsStorage;->writeKeyValue(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1050
    sget-object v0, Lcom/android/server/locksettings/LockSettingsService;->SETTINGS_TO_BACKUP:[Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 1051
    const-string v0, "com.android.providers.settings"

    invoke-static {v0}, Landroid/app/backup/BackupManager;->dataChanged(Ljava/lang/String;)V

    .line 1053
    :cond_1e
    return-void
.end method

.method private setUserKeyProtection(I[BLcom/android/internal/widget/VerifyCredentialResponse;)V
    .registers 7
    .param p1, "userId"  # I
    .param p2, "credential"  # [B
    .param p3, "vcr"  # Lcom/android/internal/widget/VerifyCredentialResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1690
    if-eqz p3, :cond_39

    .line 1693
    invoke-virtual {p3}, Lcom/android/internal/widget/VerifyCredentialResponse;->getResponseCode()I

    move-result v0

    if-nez v0, :cond_1e

    .line 1697
    invoke-virtual {p3}, Lcom/android/internal/widget/VerifyCredentialResponse;->getPayload()[B

    move-result-object v0

    .line 1698
    .local v0, "token":[B
    if-eqz v0, :cond_16

    .line 1701
    invoke-static {p2}, Lcom/android/server/locksettings/LockSettingsService;->secretFromCredential([B)[B

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/locksettings/LockSettingsService;->addUserKeyAuth(I[B[B)V

    .line 1702
    return-void

    .line 1699
    :cond_16
    new-instance v1, Landroid/os/RemoteException;

    const-string v2, "Empty payload verifying a credential we just set"

    invoke-direct {v1, v2}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1694
    .end local v0  # "token":[B
    :cond_1e
    new-instance v0, Landroid/os/RemoteException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Non-OK response verifying a credential we just set: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1695
    invoke-virtual {p3}, Lcom/android/internal/widget/VerifyCredentialResponse;->getResponseCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1691
    :cond_39
    new-instance v0, Landroid/os/RemoteException;

    const-string v1, "Null response verifying a credential we just set"

    invoke-direct {v0, v1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private shouldCacheSpForUser(I)Z
    .registers 5
    .param p1, "userId"  # I

    .line 2470
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    const-string/jumbo v2, "user_setup_complete"

    invoke-static {v0, v2, v1, p1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-nez v0, :cond_12

    .line 2472
    const/4 v0, 0x1

    return v0

    .line 2478
    :cond_12
    const-class v0, Landroid/app/admin/DevicePolicyManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManagerInternal;

    .line 2480
    .local v0, "dpmi":Landroid/app/admin/DevicePolicyManagerInternal;
    if-nez v0, :cond_1d

    .line 2481
    return v1

    .line 2483
    :cond_1d
    invoke-virtual {v0, p1}, Landroid/app/admin/DevicePolicyManagerInternal;->canUserHaveUntrustedCredentialReset(I)Z

    move-result v1

    return v1
.end method

.method private showEncryptionNotification(Landroid/os/UserHandle;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V
    .registers 10
    .param p1, "user"  # Landroid/os/UserHandle;
    .param p2, "title"  # Ljava/lang/CharSequence;
    .param p3, "message"  # Ljava/lang/CharSequence;
    .param p4, "detail"  # Ljava/lang/CharSequence;
    .param p5, "intent"  # Landroid/app/PendingIntent;

    .line 552
    invoke-static {}, Landroid/os/storage/StorageManager;->isFileEncryptedNativeOrEmulated()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 554
    :cond_7
    new-instance v0, Landroid/app/Notification$Builder;

    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsService;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/android/internal/notification/SystemNotificationChannels;->DEVICE_ADMIN:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const v1, 0x1080530

    .line 556
    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v0

    const-wide/16 v1, 0x0

    .line 557
    invoke-virtual {v0, v1, v2}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 558
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 559
    invoke-virtual {v0, p2}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/locksettings/LockSettingsService;->mContext:Landroid/content/Context;

    const v3, 0x106001c

    .line 560
    invoke-virtual {v2, v3}, Landroid/content/Context;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 562
    invoke-virtual {v0, p2}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 563
    invoke-virtual {v0, p3}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 564
    invoke-virtual {v0, p4}, Landroid/app/Notification$Builder;->setSubText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 565
    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setVisibility(I)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 566
    invoke-virtual {v0, p5}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 567
    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    .line 572
    .local v0, "notification":Landroid/app/Notification;
    return-void
.end method

.method private showEncryptionNotificationForProfile(Landroid/os/UserHandle;)V
    .registers 15
    .param p1, "user"  # Landroid/os/UserHandle;

    .line 525
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 526
    .local v0, "r":Landroid/content/res/Resources;
    const v1, 0x10405fe

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    .line 528
    .local v1, "title":Ljava/lang/CharSequence;
    const v2, 0x10405fd

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v8

    .line 530
    .local v8, "message":Ljava/lang/CharSequence;
    const v2, 0x10405fc

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v9

    .line 533
    .local v9, "detail":Ljava/lang/CharSequence;
    iget-object v2, p0, Lcom/android/server/locksettings/LockSettingsService;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "keyguard"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    move-object v10, v2

    check-cast v10, Landroid/app/KeyguardManager;

    .line 534
    .local v10, "km":Landroid/app/KeyguardManager;
    nop

    .line 535
    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    .line 534
    const/4 v3, 0x0

    invoke-virtual {v10, v3, v3, v2}, Landroid/app/KeyguardManager;->createConfirmDeviceCredentialIntent(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)Landroid/content/Intent;

    move-result-object v11

    .line 536
    .local v11, "unlockIntent":Landroid/content/Intent;
    if-nez v11, :cond_34

    .line 537
    return-void

    .line 539
    :cond_34
    const/high16 v2, 0x10800000

    invoke-virtual {v11, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 541
    iget-object v2, p0, Lcom/android/server/locksettings/LockSettingsService;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    const/high16 v4, 0x8000000

    invoke-static {v2, v3, v11, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v12

    .line 544
    .local v12, "intent":Landroid/app/PendingIntent;
    move-object v2, p0

    move-object v3, p1

    move-object v4, v1

    move-object v5, v8

    move-object v6, v9

    move-object v7, v12

    invoke-direct/range {v2 .. v7}, Lcom/android/server/locksettings/LockSettingsService;->showEncryptionNotification(Landroid/os/UserHandle;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 545
    return-void
.end method

.method private spBasedDoVerifyCredential([BIZJILcom/android/internal/widget/ICheckCredentialProgressCallback;)Lcom/android/internal/widget/VerifyCredentialResponse;
    .registers 27
    .param p1, "userCredential"  # [B
    .param p2, "credentialType"  # I
    .param p3, "hasChallenge"  # Z
    .param p4, "challenge"  # J
    .param p6, "userId"  # I
    .param p7, "progressCallback"  # Lcom/android/internal/widget/ICheckCredentialProgressCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2590
    move-object/from16 v1, p0

    move/from16 v2, p2

    move/from16 v13, p6

    const/4 v0, -0x1

    if-ne v2, v0, :cond_c

    .line 2591
    const/4 v0, 0x0

    move-object v14, v0

    .end local p1  # "userCredential":[B
    .local v0, "userCredential":[B
    goto :goto_e

    .line 2590
    .end local v0  # "userCredential":[B
    .restart local p1  # "userCredential":[B
    :cond_c
    move-object/from16 v14, p1

    .line 2594
    .end local p1  # "userCredential":[B
    .local v14, "userCredential":[B
    :goto_e
    iget-object v0, v1, Lcom/android/server/locksettings/LockSettingsService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v15

    .line 2598
    .local v15, "pm":Landroid/content/pm/PackageManager;
    if-nez p3, :cond_37

    const-string v0, "android.hardware.biometrics.face"

    invoke-virtual {v15, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_37

    iget-object v0, v1, Lcom/android/server/locksettings/LockSettingsService;->mInjector:Lcom/android/server/locksettings/LockSettingsService$Injector;

    .line 2599
    invoke-virtual {v0}, Lcom/android/server/locksettings/LockSettingsService$Injector;->hasEnrolledBiometrics()Z

    move-result v0

    if-eqz v0, :cond_37

    .line 2600
    iget-object v0, v1, Lcom/android/server/locksettings/LockSettingsService;->mContext:Landroid/content/Context;

    const-class v3, Landroid/hardware/face/FaceManager;

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/face/FaceManager;

    invoke-virtual {v0}, Landroid/hardware/face/FaceManager;->generateChallenge()J

    move-result-wide v3

    move-wide/from16 v16, v3

    .end local p4  # "challenge":J
    .local v3, "challenge":J
    goto :goto_39

    .line 2605
    .end local v3  # "challenge":J
    .restart local p4  # "challenge":J
    :cond_37
    move-wide/from16 v16, p4

    .end local p4  # "challenge":J
    .local v16, "challenge":J
    :goto_39
    iget-object v12, v1, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    monitor-enter v12

    .line 2606
    :try_start_3c
    invoke-direct {v1, v13}, Lcom/android/server/locksettings/LockSettingsService;->isSyntheticPasswordBasedCredentialLocked(I)Z

    move-result v0

    const/4 v10, 0x0

    if-nez v0, :cond_45

    .line 2607
    monitor-exit v12
    :try_end_44
    .catchall {:try_start_3c .. :try_end_44} :catchall_169

    return-object v10

    .line 2609
    :cond_45
    const/16 v0, -0x270f

    if-ne v13, v0, :cond_5c

    .line 2610
    :try_start_49
    iget-object v0, v1, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/locksettings/LockSettingsService;->getGateKeeperService()Landroid/service/gatekeeper/IGateKeeperService;

    move-result-object v3
    :try_end_4f
    .catchall {:try_start_49 .. :try_end_4f} :catchall_57

    move-object/from16 v11, p7

    :try_start_51
    invoke-virtual {v0, v3, v14, v2, v11}, Lcom/android/server/locksettings/SyntheticPasswordManager;->verifyFrpCredential(Landroid/service/gatekeeper/IGateKeeperService;[BILcom/android/internal/widget/ICheckCredentialProgressCallback;)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object v0

    monitor-exit v12

    return-object v0

    .line 2636
    :catchall_57
    move-exception v0

    move-object/from16 v11, p7

    goto/16 :goto_16a

    .line 2614
    :cond_5c
    move-object/from16 v11, p7

    invoke-direct {v1, v13}, Lcom/android/server/locksettings/LockSettingsService;->getSyntheticPasswordHandleLocked(I)J

    move-result-wide v5

    .line 2615
    .local v5, "handle":J
    iget-object v3, v1, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    .line 2616
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/locksettings/LockSettingsService;->getGateKeeperService()Landroid/service/gatekeeper/IGateKeeperService;

    move-result-object v4

    .line 2615
    move-object v7, v14

    move/from16 v8, p6

    move-object/from16 v9, p7

    invoke-virtual/range {v3 .. v9}, Lcom/android/server/locksettings/SyntheticPasswordManager;->unwrapPasswordBasedSyntheticPassword(Landroid/service/gatekeeper/IGateKeeperService;J[BILcom/android/internal/widget/ICheckCredentialProgressCallback;)Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;

    move-result-object v0

    .line 2618
    .local v0, "authResult":Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;
    iget v3, v0, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;->credentialType:I

    if-eq v3, v2, :cond_80

    .line 2619
    const-string v3, "LockSettingsService"

    const-string v4, "Credential type mismatch."

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2620
    sget-object v3, Lcom/android/internal/widget/VerifyCredentialResponse;->ERROR:Lcom/android/internal/widget/VerifyCredentialResponse;

    monitor-exit v12

    return-object v3

    .line 2622
    :cond_80
    iget-object v3, v0, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;->gkResponse:Lcom/android/internal/widget/VerifyCredentialResponse;

    .line 2624
    .local v3, "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    invoke-virtual {v3}, Lcom/android/internal/widget/VerifyCredentialResponse;->getResponseCode()I

    move-result v4

    if-nez v4, :cond_ae

    .line 2627
    iget-object v7, v1, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/locksettings/LockSettingsService;->getGateKeeperService()Landroid/service/gatekeeper/IGateKeeperService;

    move-result-object v8

    iget-object v9, v0, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;->authToken:Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;
    :try_end_90
    .catchall {:try_start_51 .. :try_end_90} :catchall_169

    move-object v4, v10

    move-wide/from16 v10, v16

    move-object/from16 v18, v12

    move/from16 v12, p6

    :try_start_97
    invoke-virtual/range {v7 .. v12}, Lcom/android/server/locksettings/SyntheticPasswordManager;->verifyChallenge(Landroid/service/gatekeeper/IGateKeeperService;Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;JI)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object v7

    move-object v3, v7

    .line 2629
    invoke-virtual {v3}, Lcom/android/internal/widget/VerifyCredentialResponse;->getResponseCode()I

    move-result v7

    if-eqz v7, :cond_b1

    .line 2632
    const-string v4, "LockSettingsService"

    const-string/jumbo v7, "verifyChallenge with SP failed."

    invoke-static {v4, v7}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 2633
    sget-object v4, Lcom/android/internal/widget/VerifyCredentialResponse;->ERROR:Lcom/android/internal/widget/VerifyCredentialResponse;

    monitor-exit v18

    return-object v4

    .line 2624
    :cond_ae
    move-object v4, v10

    move-object/from16 v18, v12

    .line 2636
    .end local v5  # "handle":J
    :cond_b1
    monitor-exit v18
    :try_end_b2
    .catchall {:try_start_97 .. :try_end_b2} :catchall_16e

    .line 2638
    invoke-virtual {v3}, Lcom/android/internal/widget/VerifyCredentialResponse;->getResponseCode()I

    move-result v5

    if-nez v5, :cond_154

    .line 2639
    invoke-direct {v1, v2, v14, v13}, Lcom/android/server/locksettings/LockSettingsService;->notifyActivePasswordMetricsAvailable(I[BI)V

    .line 2640
    iget-object v5, v0, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;->authToken:Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;

    invoke-virtual {v5}, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->deriveKeyStorePassword()[B

    move-result-object v5

    invoke-direct {v1, v5, v13}, Lcom/android/server/locksettings/LockSettingsService;->unlockKeystore([BI)V

    .line 2642
    iget-object v5, v1, Lcom/android/server/locksettings/LockSettingsService;->mInjector:Lcom/android/server/locksettings/LockSettingsService$Injector;

    invoke-virtual {v5}, Lcom/android/server/locksettings/LockSettingsService$Injector;->hasEnrolledBiometrics()Z

    move-result v5

    if-eqz v5, :cond_113

    .line 2643
    iget-object v5, v1, Lcom/android/server/locksettings/LockSettingsService;->mContext:Landroid/content/Context;

    const-class v6, Landroid/hardware/biometrics/BiometricManager;

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/hardware/biometrics/BiometricManager;

    .line 2644
    .local v5, "bm":Landroid/hardware/biometrics/BiometricManager;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Resetting lockout, length: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v0, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;->gkResponse:Lcom/android/internal/widget/VerifyCredentialResponse;

    .line 2645
    invoke-virtual {v7}, Lcom/android/internal/widget/VerifyCredentialResponse;->getPayload()[B

    move-result-object v7

    array-length v7, v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 2644
    const-string v7, "LockSettingsService"

    invoke-static {v7, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2646
    iget-object v6, v0, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;->gkResponse:Lcom/android/internal/widget/VerifyCredentialResponse;

    invoke-virtual {v6}, Lcom/android/internal/widget/VerifyCredentialResponse;->getPayload()[B

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/hardware/biometrics/BiometricManager;->resetLockout([B)V

    .line 2648
    if-nez p3, :cond_113

    const-string v6, "android.hardware.biometrics.face"

    invoke-virtual {v15, v6}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_113

    .line 2649
    iget-object v6, v1, Lcom/android/server/locksettings/LockSettingsService;->mContext:Landroid/content/Context;

    const-class v7, Landroid/hardware/face/FaceManager;

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/hardware/face/FaceManager;

    invoke-virtual {v6}, Landroid/hardware/face/FaceManager;->revokeChallenge()I

    .line 2653
    .end local v5  # "bm":Landroid/hardware/biometrics/BiometricManager;
    :cond_113
    iget-object v5, v0, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;->authToken:Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;

    invoke-virtual {v5}, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->deriveDiskEncryptionKey()[B

    move-result-object v5

    .line 2654
    .local v5, "secret":[B
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unlocking user "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " with secret only, length "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v7, v5

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "LockSettingsService"

    invoke-static {v7, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2655
    invoke-direct {v1, v13, v4, v5}, Lcom/android/server/locksettings/LockSettingsService;->unlockUser(I[B[B)V

    .line 2657
    iget-object v4, v0, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;->authToken:Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;

    invoke-direct {v1, v4, v13}, Lcom/android/server/locksettings/LockSettingsService;->activateEscrowTokens(Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;I)V

    .line 2659
    invoke-direct {v1, v13}, Lcom/android/server/locksettings/LockSettingsService;->isManagedProfileWithSeparatedLock(I)Z

    move-result v4

    if-eqz v4, :cond_149

    .line 2660
    invoke-direct {v1, v13}, Lcom/android/server/locksettings/LockSettingsService;->setDeviceUnlockedForUser(I)V

    .line 2662
    :cond_149
    iget-object v4, v1, Lcom/android/server/locksettings/LockSettingsService;->mStrongAuth:Lcom/android/server/locksettings/LockSettingsStrongAuth;

    invoke-virtual {v4, v13}, Lcom/android/server/locksettings/LockSettingsStrongAuth;->reportSuccessfulStrongAuthUnlock(I)V

    .line 2664
    iget-object v4, v0, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;->authToken:Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;

    invoke-direct {v1, v13, v4}, Lcom/android/server/locksettings/LockSettingsService;->onAuthTokenKnownForUser(ILcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;)V

    .end local v5  # "secret":[B
    goto :goto_167

    .line 2665
    :cond_154
    invoke-virtual {v3}, Lcom/android/internal/widget/VerifyCredentialResponse;->getResponseCode()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_167

    .line 2666
    invoke-virtual {v3}, Lcom/android/internal/widget/VerifyCredentialResponse;->getTimeout()I

    move-result v4

    if-lez v4, :cond_168

    .line 2667
    const/16 v4, 0x8

    invoke-virtual {v1, v4, v13}, Lcom/android/server/locksettings/LockSettingsService;->requireStrongAuth(II)V

    goto :goto_168

    .line 2665
    :cond_167
    :goto_167
    nop

    .line 2671
    :cond_168
    :goto_168
    return-object v3

    .line 2636
    .end local v0  # "authResult":Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;
    .end local v3  # "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    :catchall_169
    move-exception v0

    :goto_16a
    move-object/from16 v18, v12

    :goto_16c
    :try_start_16c
    monitor-exit v18
    :try_end_16d
    .catchall {:try_start_16c .. :try_end_16d} :catchall_16e

    throw v0

    :catchall_16e
    move-exception v0

    goto :goto_16c
.end method

.method private spBasedSetLockCredentialInternalLocked([BI[BIIZZ)V
    .registers 26
    .param p1, "credential"  # [B
    .param p2, "credentialType"  # I
    .param p3, "savedCredential"  # [B
    .param p4, "requestedQuality"  # I
    .param p5, "userId"  # I
    .param p6, "allowUntrustedChange"  # Z
    .param p7, "isLockTiedToParent"  # Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mSpManager"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2754
    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move/from16 v9, p2

    move/from16 v15, p5

    iget-object v0, v7, Lcom/android/server/locksettings/LockSettingsService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v14

    .line 2755
    .local v14, "pkg":Ljava/lang/String;
    const/4 v1, 0x0

    if-nez v8, :cond_64

    if-nez p3, :cond_64

    if-nez v15, :cond_64

    iget-object v0, v7, Lcom/android/server/locksettings/LockSettingsService;->mFindPhoneService:Lcom/meizu/findphone/FindPhoneService;

    .line 2757
    invoke-virtual {v0, v1}, Lcom/meizu/findphone/FindPhoneService;->processLeftTimes(Z)I

    move-result v0

    const/16 v2, 0xa

    if-le v0, v2, :cond_45

    const-string v0, "com.meizu.flyme.service.find"

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_45

    .line 2758
    invoke-static {}, Landroid/os/BuildExt;->isShopDemoVersion()Z

    move-result v0

    if-nez v0, :cond_45

    const-string v0, "com.android.settings"

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_45

    const-string v0, "com.meizu.account"

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_64

    .line 2759
    :cond_45
    invoke-direct {v7, v15}, Lcom/android/server/locksettings/LockSettingsService;->getSyntheticPasswordHandleLocked(I)J

    move-result-wide v10

    .line 2760
    .local v10, "handle":J
    const/4 v2, 0x0

    move-object/from16 v1, p0

    move-object/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p4

    move/from16 v6, p5

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/locksettings/LockSettingsService;->initializeSyntheticPasswordLocked([B[BIII)Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;

    .line 2762
    const/4 v0, 0x0

    invoke-direct {v7, v15, v0}, Lcom/android/server/locksettings/LockSettingsService;->synchronizeUnifiedWorkChallengeForProfiles(ILjava/util/Map;)V

    .line 2763
    iget-object v0, v7, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    invoke-virtual {v0, v10, v11, v15}, Lcom/android/server/locksettings/SyntheticPasswordManager;->destroyPasswordBasedSyntheticPassword(JI)V

    .line 2764
    invoke-direct {v7, v9, v8, v15}, Lcom/android/server/locksettings/LockSettingsService;->notifyActivePasswordMetricsAvailable(I[BI)V

    .line 2766
    return-void

    .line 2770
    .end local v10  # "handle":J
    :cond_64
    invoke-direct {v7, v15}, Lcom/android/server/locksettings/LockSettingsService;->isManagedProfileWithUnifiedLock(I)Z

    move-result v0

    const-string v2, "LockSettingsService"

    if-eqz v0, :cond_80

    .line 2773
    :try_start_6c
    invoke-virtual {v7, v15}, Lcom/android/server/locksettings/LockSettingsService;->getDecryptedPasswordForTiedProfile(I)[B

    move-result-object v0
    :try_end_70
    .catch Ljava/io/FileNotFoundException; {:try_start_6c .. :try_end_70} :catch_78
    .catch Ljava/security/UnrecoverableKeyException; {:try_start_6c .. :try_end_70} :catch_71
    .catch Ljava/security/InvalidKeyException; {:try_start_6c .. :try_end_70} :catch_71
    .catch Ljava/security/KeyStoreException; {:try_start_6c .. :try_end_70} :catch_71
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_6c .. :try_end_70} :catch_71
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_6c .. :try_end_70} :catch_71
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_6c .. :try_end_70} :catch_71
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_6c .. :try_end_70} :catch_71
    .catch Ljavax/crypto/BadPaddingException; {:try_start_6c .. :try_end_70} :catch_71
    .catch Ljava/security/cert/CertificateException; {:try_start_6c .. :try_end_70} :catch_71
    .catch Ljava/io/IOException; {:try_start_6c .. :try_end_70} :catch_71

    .line 2781
    .end local p3  # "savedCredential":[B
    .local v0, "savedCredential":[B
    goto :goto_82

    .line 2776
    .end local v0  # "savedCredential":[B
    .restart local p3  # "savedCredential":[B
    :catch_71
    move-exception v0

    .line 2780
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "Failed to decrypt child profile key"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_80

    .line 2774
    .end local v0  # "e":Ljava/lang/Exception;
    :catch_78
    move-exception v0

    move-object v3, v0

    move-object v0, v3

    .line 2775
    .local v0, "e":Ljava/io/FileNotFoundException;
    const-string v3, "Child profile key not found"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2783
    .end local v0  # "e":Ljava/io/FileNotFoundException;
    :cond_80
    :goto_80
    move-object/from16 v0, p3

    .end local p3  # "savedCredential":[B
    .local v0, "savedCredential":[B
    :goto_82
    invoke-direct {v7, v15}, Lcom/android/server/locksettings/LockSettingsService;->getSyntheticPasswordHandleLocked(I)J

    move-result-wide v5

    .line 2784
    .local v5, "handle":J
    iget-object v10, v7, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    .line 2785
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/locksettings/LockSettingsService;->getGateKeeperService()Landroid/service/gatekeeper/IGateKeeperService;

    move-result-object v11

    const/16 v16, 0x0

    .line 2784
    move-wide v12, v5

    move-object/from16 v17, v14

    .end local v14  # "pkg":Ljava/lang/String;
    .local v17, "pkg":Ljava/lang/String;
    move-object v14, v0

    move v4, v15

    move/from16 v15, p5

    invoke-virtual/range {v10 .. v16}, Lcom/android/server/locksettings/SyntheticPasswordManager;->unwrapPasswordBasedSyntheticPassword(Landroid/service/gatekeeper/IGateKeeperService;J[BILcom/android/internal/widget/ICheckCredentialProgressCallback;)Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;

    move-result-object v10

    .line 2786
    .local v10, "authResult":Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;
    iget-object v11, v10, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;->gkResponse:Lcom/android/internal/widget/VerifyCredentialResponse;

    .line 2787
    .local v11, "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    iget-object v3, v10, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;->authToken:Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;

    .line 2790
    .local v3, "auth":Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;
    if-eqz v0, :cond_c2

    if-nez v3, :cond_c2

    .line 2791
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Failed to enroll "

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2792
    const/4 v12, 0x2

    if-ne v9, v12, :cond_b4

    .line 2793
    const-string/jumbo v12, "password"

    goto :goto_b7

    :cond_b4
    const-string/jumbo v12, "pattern"

    :goto_b7
    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2795
    :cond_c2
    const/4 v12, 0x0

    .line 2796
    .local v12, "untrustedReset":Z
    if-eqz v3, :cond_cb

    .line 2797
    invoke-direct {v7, v4, v3}, Lcom/android/server/locksettings/LockSettingsService;->onAuthTokenKnownForUser(ILcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;)V

    move v13, v12

    move-object v12, v3

    goto :goto_102

    .line 2798
    :cond_cb
    if-eqz v11, :cond_13e

    .line 2800
    invoke-virtual {v11}, Lcom/android/internal/widget/VerifyCredentialResponse;->getResponseCode()I

    move-result v13

    const/4 v14, -0x1

    if-ne v13, v14, :cond_135

    .line 2803
    const-string v13, "Untrusted credential change invoked"

    invoke-static {v2, v13}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2805
    iget-object v13, v7, Lcom/android/server/locksettings/LockSettingsService;->mSpCache:Landroid/util/SparseArray;

    invoke-virtual {v13, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v13

    move-object v3, v13

    check-cast v3, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;

    .line 2806
    if-nez p6, :cond_ff

    .line 2811
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Untrusted credential change was invoked but it was not allowed. This is likely a bug. Auth token is null: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v3, :cond_f1

    const/4 v1, 0x1

    .line 2813
    :cond_f1
    invoke-static {v1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2811
    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2816
    :cond_ff
    const/4 v12, 0x1

    move v13, v12

    move-object v12, v3

    .line 2821
    .end local v3  # "auth":Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;
    .local v12, "auth":Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;
    .local v13, "untrustedReset":Z
    :goto_102
    if-eqz v12, :cond_12d

    .line 2822
    if-eqz v13, :cond_10f

    .line 2827
    iget-object v1, v7, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/locksettings/LockSettingsService;->getGateKeeperService()Landroid/service/gatekeeper/IGateKeeperService;

    move-result-object v2

    invoke-virtual {v1, v2, v12, v4}, Lcom/android/server/locksettings/SyntheticPasswordManager;->newSidForUser(Landroid/service/gatekeeper/IGateKeeperService;Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;I)V

    .line 2829
    :cond_10f
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    move v14, v4

    move-object v4, v12

    move-object/from16 p3, v10

    move-object v15, v11

    move-wide v10, v5

    .end local v5  # "handle":J
    .end local v11  # "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    .local v10, "handle":J
    .local v15, "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    .local p3, "authResult":Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;
    move/from16 v5, p4

    move/from16 v6, p5

    invoke-direct/range {v1 .. v6}, Lcom/android/server/locksettings/LockSettingsService;->setLockCredentialWithAuthTokenLocked([BILcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;II)J

    .line 2831
    iget-object v1, v7, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    invoke-virtual {v1, v10, v11, v14}, Lcom/android/server/locksettings/SyntheticPasswordManager;->destroyPasswordBasedSyntheticPassword(JI)V

    .line 2839
    move/from16 v1, p7

    invoke-direct {v7, v9, v8, v14, v1}, Lcom/android/server/locksettings/LockSettingsService;->sendCredentialsOnChangeIfRequired(I[BIZ)V

    .line 2840
    return-void

    .line 2833
    .end local v15  # "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    .end local p3  # "authResult":Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;
    .restart local v5  # "handle":J
    .local v10, "authResult":Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;
    .restart local v11  # "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    :cond_12d
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Untrusted credential reset not possible without cached SP"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 2818
    .end local v13  # "untrustedReset":Z
    .restart local v3  # "auth":Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;
    .local v12, "untrustedReset":Z
    :cond_135
    move v14, v4

    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v4, "Rate limit exceeded, so password was not changed."

    invoke-direct {v2, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 2799
    :cond_13e
    move v14, v4

    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v4, "Password change failed."

    invoke-direct {v2, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private synchronizeUnifiedWorkChallengeForProfiles(ILjava/util/Map;)V
    .registers 21
    .param p1, "userId"  # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "[B>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1365
    .local p2, "profilePasswordMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;[B>;"
    move-object/from16 v8, p0

    move/from16 v9, p1

    move-object/from16 v10, p2

    iget-object v0, v8, Lcom/android/server/locksettings/LockSettingsService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0, v9}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 1366
    return-void

    .line 1368
    :cond_13
    invoke-direct/range {p0 .. p1}, Lcom/android/server/locksettings/LockSettingsService;->isUserSecure(I)Z

    move-result v11

    .line 1369
    .local v11, "isSecure":Z
    iget-object v0, v8, Lcom/android/server/locksettings/LockSettingsService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0, v9}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    move-result-object v12

    .line 1370
    .local v12, "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v13

    .line 1371
    .local v13, "size":I
    const/4 v0, 0x0

    move v14, v0

    .local v14, "i":I
    :goto_23
    if-ge v14, v13, :cond_8f

    .line 1372
    invoke-interface {v12, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v15, v0

    check-cast v15, Landroid/content/pm/UserInfo;

    .line 1373
    .local v15, "profile":Landroid/content/pm/UserInfo;
    invoke-virtual {v15}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v0

    if-eqz v0, :cond_8c

    .line 1374
    iget v7, v15, Landroid/content/pm/UserInfo;->id:I

    .line 1375
    .local v7, "managedUserId":I
    iget-object v0, v8, Lcom/android/server/locksettings/LockSettingsService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0, v7}, Lcom/android/internal/widget/LockPatternUtils;->isSeparateProfileChallengeEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_3d

    .line 1376
    goto :goto_8c

    .line 1378
    :cond_3d
    if-eqz v11, :cond_44

    .line 1379
    const/4 v0, 0x0

    invoke-virtual {v8, v7, v0}, Lcom/android/server/locksettings/LockSettingsService;->tieManagedProfileLockIfNecessary(I[B)V

    goto :goto_8c

    .line 1383
    :cond_44
    if-eqz v10, :cond_6c

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v10, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6c

    .line 1384
    const/4 v1, 0x0

    const/4 v2, -0x1

    .line 1385
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v10, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, [B

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/16 v16, 0x1

    .line 1384
    move-object/from16 v0, p0

    move v5, v7

    move/from16 v17, v7

    .end local v7  # "managedUserId":I
    .local v17, "managedUserId":I
    move/from16 v7, v16

    invoke-direct/range {v0 .. v7}, Lcom/android/server/locksettings/LockSettingsService;->setLockCredentialInternal([BI[BIIZZ)V

    goto :goto_82

    .line 1383
    .end local v17  # "managedUserId":I
    .restart local v7  # "managedUserId":I
    :cond_6c
    move/from16 v17, v7

    .line 1389
    .end local v7  # "managedUserId":I
    .restart local v17  # "managedUserId":I
    const-string v0, "LockSettingsService"

    const-string v1, "clear tied profile challenges, but no password supplied."

    invoke-static {v0, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 1391
    const/4 v1, 0x0

    const/4 v2, -0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x1

    move-object/from16 v0, p0

    move/from16 v5, v17

    invoke-direct/range {v0 .. v7}, Lcom/android/server/locksettings/LockSettingsService;->setLockCredentialInternal([BI[BIIZZ)V

    .line 1395
    :goto_82
    iget-object v0, v8, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    move/from16 v1, v17

    .end local v17  # "managedUserId":I
    .local v1, "managedUserId":I
    invoke-virtual {v0, v1}, Lcom/android/server/locksettings/LockSettingsStorage;->removeChildProfileLock(I)V

    .line 1396
    invoke-direct {v8, v1}, Lcom/android/server/locksettings/LockSettingsService;->removeKeystoreProfileKey(I)V

    .line 1371
    .end local v1  # "managedUserId":I
    .end local v15  # "profile":Landroid/content/pm/UserInfo;
    :cond_8c
    :goto_8c
    add-int/lit8 v14, v14, 0x1

    goto :goto_23

    .line 1400
    .end local v14  # "i":I
    :cond_8f
    return-void
.end method

.method private tiedManagedProfileReadyToUnlock(Landroid/content/pm/UserInfo;)Z
    .registers 4
    .param p1, "userInfo"  # Landroid/content/pm/UserInfo;

    .line 1316
    invoke-virtual {p1}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v0

    if-eqz v0, :cond_26

    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v1, p1, Landroid/content/pm/UserInfo;->id:I

    .line 1317
    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->isSeparateProfileChallengeEnabled(I)Z

    move-result v0

    if-nez v0, :cond_26

    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    iget v1, p1, Landroid/content/pm/UserInfo;->id:I

    .line 1318
    invoke-virtual {v0, v1}, Lcom/android/server/locksettings/LockSettingsStorage;->hasChildProfileLock(I)Z

    move-result v0

    if-eqz v0, :cond_26

    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mUserManager:Landroid/os/UserManager;

    iget v1, p1, Landroid/content/pm/UserInfo;->id:I

    .line 1319
    invoke-virtual {v0, v1}, Landroid/os/UserManager;->isUserRunning(I)Z

    move-result v0

    if-eqz v0, :cond_26

    const/4 v0, 0x1

    goto :goto_27

    :cond_26
    const/4 v0, 0x0

    .line 1316
    :goto_27
    return v0
.end method

.method private tryDeriveAuthTokenForUnsecuredPrimaryUser(I)V
    .registers 11
    .param p1, "userId"  # I

    .line 640
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    monitor-enter v0

    .line 642
    :try_start_3
    invoke-direct {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->isSyntheticPasswordBasedCredentialLocked(I)Z

    move-result v1

    if-nez v1, :cond_b

    .line 643
    monitor-exit v0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_5e

    return-void

    .line 647
    :cond_b
    :try_start_b
    invoke-direct {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->getSyntheticPasswordHandleLocked(I)J

    move-result-wide v4

    .line 648
    .local v4, "handle":J
    const/4 v1, 0x0

    .line 649
    .local v1, "noCredential":[B
    iget-object v2, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    .line 651
    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsService;->getGateKeeperService()Landroid/service/gatekeeper/IGateKeeperService;

    move-result-object v3

    const/4 v8, 0x0

    .line 650
    move-object v6, v1

    move v7, p1

    invoke-virtual/range {v2 .. v8}, Lcom/android/server/locksettings/SyntheticPasswordManager;->unwrapPasswordBasedSyntheticPassword(Landroid/service/gatekeeper/IGateKeeperService;J[BILcom/android/internal/widget/ICheckCredentialProgressCallback;)Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;

    move-result-object v2

    .line 652
    .local v2, "result":Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;
    iget-object v3, v2, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;->authToken:Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;

    if-eqz v3, :cond_3d

    .line 653
    const-string v3, "LockSettingsService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Retrieved auth token for user "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 654
    iget-object v3, v2, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;->authToken:Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;

    invoke-direct {p0, p1, v3}, Lcom/android/server/locksettings/LockSettingsService;->onAuthTokenKnownForUser(ILcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;)V

    goto :goto_53

    .line 656
    :cond_3d
    const-string v3, "LockSettingsService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Auth token not available for user "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_53
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_53} :catch_54
    .catchall {:try_start_b .. :try_end_53} :catchall_5e

    .line 660
    .end local v1  # "noCredential":[B
    .end local v2  # "result":Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;
    .end local v4  # "handle":J
    :goto_53
    goto :goto_5c

    .line 658
    :catch_54
    move-exception v1

    .line 659
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_55
    const-string v2, "LockSettingsService"

    const-string v3, "Failure retrieving auth token"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 661
    .end local v1  # "e":Landroid/os/RemoteException;
    :goto_5c
    monitor-exit v0

    .line 662
    return-void

    .line 661
    :catchall_5e
    move-exception v1

    monitor-exit v0
    :try_end_60
    .catchall {:try_start_55 .. :try_end_60} :catchall_5e

    throw v1
.end method

.method private tryRemoveUserFromSpCacheLater(I)V
    .registers 4
    .param p1, "userId"  # I

    .line 2451
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/locksettings/-$$Lambda$LockSettingsService$lWTrcqR9gZxL-pxwBbtvTGqAifU;

    invoke-direct {v1, p0, p1}, Lcom/android/server/locksettings/-$$Lambda$LockSettingsService$lWTrcqR9gZxL-pxwBbtvTGqAifU;-><init>(Lcom/android/server/locksettings/LockSettingsService;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2464
    return-void
.end method

.method private unlockChildProfile(IZ)V
    .registers 11
    .param p1, "profileHandle"  # I
    .param p2, "ignoreUserNotAuthenticated"  # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1229
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->getDecryptedPasswordForTiedProfile(I)[B

    move-result-object v1

    const/4 v2, 0x2

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move v6, p1

    invoke-direct/range {v0 .. v7}, Lcom/android/server/locksettings/LockSettingsService;->doVerifyCredential([BIZJILcom/android/internal/widget/ICheckCredentialProgressCallback;)Lcom/android/internal/widget/VerifyCredentialResponse;
    :try_end_e
    .catch Ljava/security/UnrecoverableKeyException; {:try_start_0 .. :try_end_e} :catch_f
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_e} :catch_f
    .catch Ljava/security/KeyStoreException; {:try_start_0 .. :try_end_e} :catch_f
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_e} :catch_f
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_e} :catch_f
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_e} :catch_f
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_e} :catch_f
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_e} :catch_f
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_e} :catch_f
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_e} :catch_f

    .line 1243
    goto :goto_2d

    .line 1232
    :catch_f
    move-exception v0

    .line 1236
    .local v0, "e":Ljava/lang/Exception;
    instance-of v1, v0, Ljava/io/FileNotFoundException;

    const-string v2, "LockSettingsService"

    if-eqz v1, :cond_1c

    .line 1237
    const-string v1, "Child profile key not found"

    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2d

    .line 1238
    :cond_1c
    if-eqz p2, :cond_28

    instance-of v1, v0, Landroid/security/keystore/UserNotAuthenticatedException;

    if-eqz v1, :cond_28

    .line 1239
    const-string v1, "Parent keystore seems locked, ignoring"

    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2d

    .line 1241
    :cond_28
    const-string v1, "Failed to decrypt child profile key"

    invoke-static {v2, v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1244
    .end local v0  # "e":Ljava/lang/Exception;
    :goto_2d
    return-void
.end method

.method private unlockKeystore([BI)V
    .registers 5
    .param p1, "password"  # [B
    .param p2, "userHandle"  # I

    .line 1193
    if-nez p1, :cond_4

    const/4 v0, 0x0

    goto :goto_9

    :cond_4
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>([B)V

    .line 1194
    .local v0, "passwordString":Ljava/lang/String;
    :goto_9
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v1

    .line 1195
    .local v1, "ks":Landroid/security/KeyStore;
    invoke-virtual {v1, p2, v0}, Landroid/security/KeyStore;->unlock(ILjava/lang/String;)Z

    .line 1196
    return-void
.end method

.method private unlockUser(I[B[B)V
    .registers 12
    .param p1, "userId"  # I
    .param p2, "token"  # [B
    .param p3, "secret"  # [B

    .line 1256
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0, p1}, Landroid/os/UserManager;->isUserUnlockingOrUnlocked(I)Z

    move-result v0

    .line 1257
    .local v0, "alreadyUnlocked":Z
    new-instance v1, Ljava/util/concurrent/CountDownLatch;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 1258
    .local v1, "latch":Ljava/util/concurrent/CountDownLatch;
    new-instance v2, Lcom/android/server/locksettings/LockSettingsService$3;

    invoke-direct {v2, p0, v1}, Lcom/android/server/locksettings/LockSettingsService$3;-><init>(Lcom/android/server/locksettings/LockSettingsService;Ljava/util/concurrent/CountDownLatch;)V

    .line 1277
    .local v2, "listener":Landroid/os/IProgressListener;
    :try_start_11
    iget-object v3, p0, Lcom/android/server/locksettings/LockSettingsService;->mActivityManager:Landroid/app/IActivityManager;

    invoke-interface {v3, p1, p2, p3, v2}, Landroid/app/IActivityManager;->unlockUser(I[B[BLandroid/os/IProgressListener;)Z
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_16} :catch_75

    .line 1280
    nop

    .line 1283
    const-wide/16 v3, 0xf

    :try_start_19
    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v3, v4, v5}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_1e
    .catch Ljava/lang/InterruptedException; {:try_start_19 .. :try_end_1e} :catch_1f

    .line 1286
    goto :goto_27

    .line 1284
    :catch_1f
    move-exception v3

    .line 1285
    .local v3, "e":Ljava/lang/InterruptedException;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->interrupt()V

    .line 1288
    .end local v3  # "e":Ljava/lang/InterruptedException;
    :goto_27
    iget-object v3, p0, Lcom/android/server/locksettings/LockSettingsService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v3, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v3

    if-eqz v3, :cond_34

    .line 1289
    return-void

    .line 1292
    :cond_34
    iget-object v3, p0, Lcom/android/server/locksettings/LockSettingsService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v3, p1}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3e
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_74

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/UserInfo;

    .line 1294
    .local v4, "profile":Landroid/content/pm/UserInfo;
    invoke-direct {p0, v4}, Lcom/android/server/locksettings/LockSettingsService;->tiedManagedProfileReadyToUnlock(Landroid/content/pm/UserInfo;)Z

    move-result v5

    if-eqz v5, :cond_5f

    .line 1296
    :try_start_50
    iget v5, v4, Landroid/content/pm/UserInfo;->id:I

    const/4 v6, 0x0

    invoke-direct {p0, v5, v6}, Lcom/android/server/locksettings/LockSettingsService;->unlockChildProfile(IZ)V
    :try_end_56
    .catch Landroid/os/RemoteException; {:try_start_50 .. :try_end_56} :catch_57

    .line 1299
    goto :goto_5f

    .line 1297
    :catch_57
    move-exception v5

    .line 1298
    .local v5, "e":Landroid/os/RemoteException;
    const-string v6, "LockSettingsService"

    const-string v7, "Failed to unlock child profile"

    invoke-static {v6, v7, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1303
    .end local v5  # "e":Landroid/os/RemoteException;
    :cond_5f
    :goto_5f
    if-nez v0, :cond_73

    .line 1304
    invoke-static {}, Lcom/android/server/locksettings/LockSettingsService;->clearCallingIdentity()J

    move-result-wide v5

    .line 1306
    .local v5, "ident":J
    :try_start_65
    iget v7, v4, Landroid/content/pm/UserInfo;->id:I

    invoke-direct {p0, v7}, Lcom/android/server/locksettings/LockSettingsService;->maybeShowEncryptionNotificationForUser(I)V
    :try_end_6a
    .catchall {:try_start_65 .. :try_end_6a} :catchall_6e

    .line 1308
    invoke-static {v5, v6}, Lcom/android/server/locksettings/LockSettingsService;->restoreCallingIdentity(J)V

    .line 1309
    goto :goto_73

    .line 1308
    :catchall_6e
    move-exception v3

    invoke-static {v5, v6}, Lcom/android/server/locksettings/LockSettingsService;->restoreCallingIdentity(J)V

    throw v3

    .line 1312
    .end local v4  # "profile":Landroid/content/pm/UserInfo;
    .end local v5  # "ident":J
    :cond_73
    :goto_73
    goto :goto_3e

    .line 1313
    :cond_74
    return-void

    .line 1278
    :catch_75
    move-exception v3

    .line 1279
    .local v3, "e":Landroid/os/RemoteException;
    invoke-virtual {v3}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v4

    throw v4
.end method

.method private unlockUserKey(I[B[B)V
    .registers 7
    .param p1, "userId"  # I
    .param p2, "token"  # [B
    .param p3, "secret"  # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1747
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    .line 1748
    .local v0, "userInfo":Landroid/content/pm/UserInfo;
    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsService;->mStorageManager:Landroid/os/storage/IStorageManager;

    iget v2, v0, Landroid/content/pm/UserInfo;->serialNumber:I

    invoke-interface {v1, p1, v2, p2, p3}, Landroid/os/storage/IStorageManager;->unlockUserKey(II[B[B)V

    .line 1749
    return-void
.end method

.method private unlockUserWithToken(J[BI)Z
    .registers 13
    .param p1, "tokenHandle"  # J
    .param p3, "token"  # [B
    .param p4, "userId"  # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3012
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    monitor-enter v0

    .line 3013
    :try_start_3
    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    invoke-virtual {v1, p4}, Lcom/android/server/locksettings/SyntheticPasswordManager;->hasEscrowData(I)Z

    move-result v1

    if-eqz v1, :cond_38

    .line 3016
    iget-object v2, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsService;->getGateKeeperService()Landroid/service/gatekeeper/IGateKeeperService;

    move-result-object v3

    move-wide v4, p1

    move-object v6, p3

    move v7, p4

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/locksettings/SyntheticPasswordManager;->unwrapTokenBasedSyntheticPassword(Landroid/service/gatekeeper/IGateKeeperService;J[BI)Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;

    move-result-object v1

    .line 3018
    .local v1, "authResult":Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;
    iget-object v2, v1, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;->authToken:Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;

    if-nez v2, :cond_26

    .line 3019
    const-string v2, "LockSettingsService"

    const-string v3, "Invalid escrow token supplied"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3020
    const/4 v2, 0x0

    monitor-exit v0

    return v2

    .line 3022
    :cond_26
    monitor-exit v0
    :try_end_27
    .catchall {:try_start_3 .. :try_end_27} :catchall_40

    .line 3023
    const/4 v0, 0x0

    iget-object v2, v1, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;->authToken:Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;

    invoke-virtual {v2}, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->deriveDiskEncryptionKey()[B

    move-result-object v2

    invoke-direct {p0, p4, v0, v2}, Lcom/android/server/locksettings/LockSettingsService;->unlockUser(I[B[B)V

    .line 3024
    iget-object v0, v1, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;->authToken:Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;

    invoke-direct {p0, p4, v0}, Lcom/android/server/locksettings/LockSettingsService;->onAuthTokenKnownForUser(ILcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;)V

    .line 3025
    const/4 v0, 0x1

    return v0

    .line 3014
    .end local v1  # "authResult":Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;
    :cond_38
    :try_start_38
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "Escrow token is disabled on the current user"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .end local p0  # "this":Lcom/android/server/locksettings/LockSettingsService;
    .end local p1  # "tokenHandle":J
    .end local p3  # "token":[B
    .end local p4  # "userId":I
    throw v1

    .line 3022
    .restart local p0  # "this":Lcom/android/server/locksettings/LockSettingsService;
    .restart local p1  # "tokenHandle":J
    .restart local p3  # "token":[B
    .restart local p4  # "userId":I
    :catchall_40
    move-exception v1

    monitor-exit v0
    :try_end_42
    .catchall {:try_start_38 .. :try_end_42} :catchall_40

    throw v1
.end method

.method private verifyCredential(ILcom/android/server/locksettings/LockSettingsStorage$CredentialHash;[BZJLcom/android/internal/widget/ICheckCredentialProgressCallback;)Lcom/android/internal/widget/VerifyCredentialResponse;
    .registers 27
    .param p1, "userId"  # I
    .param p2, "storedHash"  # Lcom/android/server/locksettings/LockSettingsStorage$CredentialHash;
    .param p3, "credential"  # [B
    .param p4, "hasChallenge"  # Z
    .param p5, "challenge"  # J
    .param p7, "progressCallback"  # Lcom/android/internal/widget/ICheckCredentialProgressCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1958
    move-object/from16 v12, p0

    move/from16 v13, p1

    move-object/from16 v14, p2

    move-object/from16 v15, p3

    if-eqz v14, :cond_f

    iget-object v0, v14, Lcom/android/server/locksettings/LockSettingsStorage$CredentialHash;->hash:[B

    array-length v0, v0

    if-nez v0, :cond_16

    :cond_f
    if-eqz v15, :cond_167

    array-length v0, v15

    if-nez v0, :cond_16

    goto/16 :goto_167

    .line 1964
    :cond_16
    if-eqz v14, :cond_164

    if-eqz v15, :cond_164

    array-length v0, v15

    if-nez v0, :cond_1f

    goto/16 :goto_164

    .line 1970
    :cond_1f
    invoke-static {}, Landroid/os/StrictMode;->noteDiskRead()V

    .line 1972
    iget v0, v14, Lcom/android/server/locksettings/LockSettingsStorage$CredentialHash;->version:I

    const/high16 v9, 0x10000

    const/high16 v10, 0x50000

    const/4 v11, 0x1

    if-nez v0, :cond_a8

    .line 1974
    iget v0, v14, Lcom/android/server/locksettings/LockSettingsStorage$CredentialHash;->type:I

    if-ne v0, v11, :cond_39

    .line 1975
    nop

    .line 1976
    invoke-static/range {p3 .. p3}, Lcom/android/internal/widget/LockPatternUtils;->byteArrayToPattern([B)Ljava/util/List;

    move-result-object v0

    .line 1975
    invoke-static {v0}, Lcom/android/internal/widget/LockPatternUtils;->patternToHash(Ljava/util/List;)[B

    move-result-object v0

    .local v0, "hash":[B
    goto :goto_43

    .line 1978
    .end local v0  # "hash":[B
    :cond_39
    iget-object v0, v12, Lcom/android/server/locksettings/LockSettingsService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0, v15, v13}, Lcom/android/internal/widget/LockPatternUtils;->legacyPasswordToHash([BI)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 1980
    .restart local v0  # "hash":[B
    :goto_43
    iget-object v1, v14, Lcom/android/server/locksettings/LockSettingsStorage$CredentialHash;->hash:[B

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-eqz v1, :cond_a5

    .line 1981
    iget v1, v14, Lcom/android/server/locksettings/LockSettingsStorage$CredentialHash;->type:I

    if-ne v1, v11, :cond_57

    .line 1982
    invoke-static/range {p3 .. p3}, Lcom/android/internal/widget/LockPatternUtils;->patternByteArrayToBaseZero([B)[B

    move-result-object v1

    invoke-direct {v12, v1, v13}, Lcom/android/server/locksettings/LockSettingsService;->unlockKeystore([BI)V

    goto :goto_5a

    .line 1984
    :cond_57
    invoke-direct {v12, v15, v13}, Lcom/android/server/locksettings/LockSettingsService;->unlockKeystore([BI)V

    .line 1988
    :goto_5a
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unlocking user with fake token: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "LockSettingsService"

    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1989
    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    .line 1990
    .local v8, "fakeToken":[B
    invoke-direct {v12, v13, v8, v8}, Lcom/android/server/locksettings/LockSettingsService;->unlockUser(I[B[B)V

    .line 1993
    iget v3, v14, Lcom/android/server/locksettings/LockSettingsStorage$CredentialHash;->type:I

    const/4 v4, 0x0

    .line 1994
    iget v1, v14, Lcom/android/server/locksettings/LockSettingsStorage$CredentialHash;->type:I

    if-ne v1, v11, :cond_84

    .line 1995
    move v5, v9

    goto :goto_85

    .line 1996
    :cond_84
    move v5, v10

    :goto_85
    const/4 v7, 0x0

    const/16 v16, 0x0

    .line 1993
    move-object/from16 v1, p0

    move-object/from16 v2, p3

    move/from16 v6, p1

    move-object/from16 v17, v8

    .end local v8  # "fakeToken":[B
    .local v17, "fakeToken":[B
    move/from16 v8, v16

    invoke-direct/range {v1 .. v8}, Lcom/android/server/locksettings/LockSettingsService;->setLockCredentialInternal([BI[BIIZZ)V

    .line 1999
    if-nez p4, :cond_a4

    .line 2000
    iget v1, v14, Lcom/android/server/locksettings/LockSettingsStorage$CredentialHash;->type:I

    invoke-direct {v12, v1, v15, v13}, Lcom/android/server/locksettings/LockSettingsService;->notifyActivePasswordMetricsAvailable(I[BI)V

    .line 2002
    iget v1, v14, Lcom/android/server/locksettings/LockSettingsStorage$CredentialHash;->type:I

    invoke-direct {v12, v1, v15, v13}, Lcom/android/server/locksettings/LockSettingsService;->sendCredentialsOnUnlockIfRequired(I[BI)V

    .line 2003
    sget-object v1, Lcom/android/internal/widget/VerifyCredentialResponse;->OK:Lcom/android/internal/widget/VerifyCredentialResponse;

    return-object v1

    .line 2008
    .end local v17  # "fakeToken":[B
    :cond_a4
    goto :goto_a8

    .line 2009
    :cond_a5
    sget-object v1, Lcom/android/internal/widget/VerifyCredentialResponse;->ERROR:Lcom/android/internal/widget/VerifyCredentialResponse;

    return-object v1

    .line 2012
    .end local v0  # "hash":[B
    :cond_a8
    :goto_a8
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/locksettings/LockSettingsService;->getGateKeeperService()Landroid/service/gatekeeper/IGateKeeperService;

    move-result-object v1

    iget-object v5, v14, Lcom/android/server/locksettings/LockSettingsStorage$CredentialHash;->hash:[B

    .line 2013
    move/from16 v2, p1

    move-wide/from16 v3, p5

    move-object/from16 v6, p3

    invoke-interface/range {v1 .. v6}, Landroid/service/gatekeeper/IGateKeeperService;->verifyChallenge(IJ[B[B)Landroid/service/gatekeeper/GateKeeperResponse;

    move-result-object v8

    .line 2014
    .local v8, "gateKeeperResponse":Landroid/service/gatekeeper/GateKeeperResponse;
    invoke-direct {v12, v8}, Lcom/android/server/locksettings/LockSettingsService;->convertResponse(Landroid/service/gatekeeper/GateKeeperResponse;)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object v16

    .line 2015
    .local v16, "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    invoke-virtual {v8}, Landroid/service/gatekeeper/GateKeeperResponse;->getShouldReEnroll()Z

    move-result v17

    .line 2017
    .local v17, "shouldReEnroll":Z
    invoke-virtual/range {v16 .. v16}, Lcom/android/internal/widget/VerifyCredentialResponse;->getResponseCode()I

    move-result v0

    if-nez v0, :cond_14e

    .line 2021
    if-eqz p7, :cond_cb

    .line 2022
    invoke-interface/range {p7 .. p7}, Lcom/android/internal/widget/ICheckCredentialProgressCallback;->onCredentialVerified()V

    .line 2024
    :cond_cb
    iget v0, v14, Lcom/android/server/locksettings/LockSettingsStorage$CredentialHash;->type:I

    invoke-direct {v12, v0, v15, v13}, Lcom/android/server/locksettings/LockSettingsService;->notifyActivePasswordMetricsAvailable(I[BI)V

    .line 2025
    invoke-direct {v12, v15, v13}, Lcom/android/server/locksettings/LockSettingsService;->unlockKeystore([BI)V

    .line 2027
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unlocking user "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " with token length "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2028
    invoke-virtual/range {v16 .. v16}, Lcom/android/internal/widget/VerifyCredentialResponse;->getPayload()[B

    move-result-object v1

    array-length v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2027
    const-string v1, "LockSettingsService"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2029
    invoke-virtual/range {v16 .. v16}, Lcom/android/internal/widget/VerifyCredentialResponse;->getPayload()[B

    move-result-object v0

    invoke-static/range {p3 .. p3}, Lcom/android/server/locksettings/LockSettingsService;->secretFromCredential([B)[B

    move-result-object v1

    invoke-direct {v12, v13, v0, v1}, Lcom/android/server/locksettings/LockSettingsService;->unlockUser(I[B[B)V

    .line 2031
    invoke-direct/range {p0 .. p1}, Lcom/android/server/locksettings/LockSettingsService;->isManagedProfileWithSeparatedLock(I)Z

    move-result v0

    if-eqz v0, :cond_10a

    .line 2032
    invoke-direct/range {p0 .. p1}, Lcom/android/server/locksettings/LockSettingsService;->setDeviceUnlockedForUser(I)V

    .line 2034
    :cond_10a
    iget v0, v14, Lcom/android/server/locksettings/LockSettingsStorage$CredentialHash;->type:I

    if-ne v0, v11, :cond_110

    .line 2035
    move v5, v9

    goto :goto_111

    .line 2036
    :cond_110
    move v5, v10

    :goto_111
    nop

    .line 2038
    .local v5, "reEnrollQuality":I
    if-eqz v17, :cond_127

    .line 2039
    iget v3, v14, Lcom/android/server/locksettings/LockSettingsStorage$CredentialHash;->type:I

    const/4 v7, 0x0

    const/4 v0, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p3

    move-object/from16 v4, p3

    move/from16 v6, p1

    move-object/from16 v18, v8

    .end local v8  # "gateKeeperResponse":Landroid/service/gatekeeper/GateKeeperResponse;
    .local v18, "gateKeeperResponse":Landroid/service/gatekeeper/GateKeeperResponse;
    move v8, v0

    invoke-direct/range {v1 .. v8}, Lcom/android/server/locksettings/LockSettingsService;->setLockCredentialInternal([BI[BIIZZ)V

    goto :goto_145

    .line 2044
    .end local v18  # "gateKeeperResponse":Landroid/service/gatekeeper/GateKeeperResponse;
    .restart local v8  # "gateKeeperResponse":Landroid/service/gatekeeper/GateKeeperResponse;
    :cond_127
    move-object/from16 v18, v8

    .end local v8  # "gateKeeperResponse":Landroid/service/gatekeeper/GateKeeperResponse;
    .restart local v18  # "gateKeeperResponse":Landroid/service/gatekeeper/GateKeeperResponse;
    iget-object v1, v12, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    monitor-enter v1

    .line 2045
    :try_start_12c
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/locksettings/LockSettingsService;->shouldMigrateToSyntheticPasswordLocked(I)Z

    move-result v0

    if-eqz v0, :cond_144

    .line 2046
    iget-object v7, v14, Lcom/android/server/locksettings/LockSettingsStorage$CredentialHash;->hash:[B

    iget v9, v14, Lcom/android/server/locksettings/LockSettingsStorage$CredentialHash;->type:I

    move-object/from16 v6, p0

    move-object/from16 v8, p3

    move v10, v5

    move/from16 v11, p1

    invoke-virtual/range {v6 .. v11}, Lcom/android/server/locksettings/LockSettingsService;->initializeSyntheticPasswordLocked([B[BIII)Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;

    move-result-object v0

    .line 2049
    .local v0, "auth":Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;
    invoke-direct {v12, v0, v13}, Lcom/android/server/locksettings/LockSettingsService;->activateEscrowTokens(Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;I)V

    .line 2051
    .end local v0  # "auth":Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;
    :cond_144
    monitor-exit v1
    :try_end_145
    .catchall {:try_start_12c .. :try_end_145} :catchall_14b

    .line 2054
    :goto_145
    iget v0, v14, Lcom/android/server/locksettings/LockSettingsStorage$CredentialHash;->type:I

    invoke-direct {v12, v0, v15, v13}, Lcom/android/server/locksettings/LockSettingsService;->sendCredentialsOnUnlockIfRequired(I[BI)V

    .end local v5  # "reEnrollQuality":I
    goto :goto_162

    .line 2051
    .restart local v5  # "reEnrollQuality":I
    :catchall_14b
    move-exception v0

    :try_start_14c
    monitor-exit v1
    :try_end_14d
    .catchall {:try_start_14c .. :try_end_14d} :catchall_14b

    throw v0

    .line 2056
    .end local v5  # "reEnrollQuality":I
    .end local v18  # "gateKeeperResponse":Landroid/service/gatekeeper/GateKeeperResponse;
    .restart local v8  # "gateKeeperResponse":Landroid/service/gatekeeper/GateKeeperResponse;
    :cond_14e
    move-object/from16 v18, v8

    .end local v8  # "gateKeeperResponse":Landroid/service/gatekeeper/GateKeeperResponse;
    .restart local v18  # "gateKeeperResponse":Landroid/service/gatekeeper/GateKeeperResponse;
    invoke-virtual/range {v16 .. v16}, Lcom/android/internal/widget/VerifyCredentialResponse;->getResponseCode()I

    move-result v0

    if-ne v0, v11, :cond_162

    .line 2057
    invoke-virtual/range {v16 .. v16}, Lcom/android/internal/widget/VerifyCredentialResponse;->getTimeout()I

    move-result v0

    if-lez v0, :cond_163

    .line 2058
    const/16 v0, 0x8

    invoke-virtual {v12, v0, v13}, Lcom/android/server/locksettings/LockSettingsService;->requireStrongAuth(II)V

    goto :goto_163

    .line 2056
    :cond_162
    :goto_162
    nop

    .line 2062
    :cond_163
    :goto_163
    return-object v16

    .line 1965
    .end local v16  # "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    .end local v17  # "shouldReEnroll":Z
    .end local v18  # "gateKeeperResponse":Landroid/service/gatekeeper/GateKeeperResponse;
    :cond_164
    :goto_164
    sget-object v0, Lcom/android/internal/widget/VerifyCredentialResponse;->ERROR:Lcom/android/internal/widget/VerifyCredentialResponse;

    return-object v0

    .line 1961
    :cond_167
    :goto_167
    sget-object v0, Lcom/android/internal/widget/VerifyCredentialResponse;->OK:Lcom/android/internal/widget/VerifyCredentialResponse;

    return-object v0
.end method


# virtual methods
.method public checkCredential([BIILcom/android/internal/widget/ICheckCredentialProgressCallback;)Lcom/android/internal/widget/VerifyCredentialResponse;
    .registers 13
    .param p1, "credential"  # [B
    .param p2, "type"  # I
    .param p3, "userId"  # I
    .param p4, "progressCallback"  # Lcom/android/internal/widget/ICheckCredentialProgressCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1823
    invoke-direct {p0, p3}, Lcom/android/server/locksettings/LockSettingsService;->checkPasswordReadPermission(I)V

    .line 1824
    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v6, p3

    move-object v7, p4

    invoke-direct/range {v0 .. v7}, Lcom/android/server/locksettings/LockSettingsService;->doVerifyCredential([BIZJILcom/android/internal/widget/ICheckCredentialProgressCallback;)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object v0

    .line 1826
    .local v0, "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    invoke-virtual {v0}, Lcom/android/internal/widget/VerifyCredentialResponse;->getResponseCode()I

    move-result v1

    if-nez v1, :cond_23

    if-nez p3, :cond_23

    .line 1829
    if-nez p1, :cond_1b

    const/4 v1, 0x0

    goto :goto_20

    :cond_1b
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p1}, Ljava/lang/String;-><init>([B)V

    .line 1830
    .local v1, "credentialString":Ljava/lang/String;
    :goto_20
    invoke-virtual {p0, v1}, Lcom/android/server/locksettings/LockSettingsService;->retainPassword(Ljava/lang/String;)V

    .line 1832
    .end local v1  # "credentialString":Ljava/lang/String;
    :cond_23
    return-object v0
.end method

.method public checkFlymePassword(ILjava/lang/String;I)Z
    .registers 5
    .param p1, "type"  # I
    .param p2, "password"  # Ljava/lang/String;
    .param p3, "userId"  # I

    .line 3250
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mFlymeLockSettingsServiceExt:Lcom/android/server/locksettings/FlymeLockSettingsServiceExt;

    if-eqz v0, :cond_9

    .line 3251
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/locksettings/FlymeLockSettingsServiceExt;->checkPassword(ILjava/lang/String;I)Z

    move-result v0

    return v0

    .line 3253
    :cond_9
    const/4 v0, 0x0

    return v0
.end method

.method public checkVoldPassword(I)Z
    .registers 11
    .param p1, "userId"  # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2098
    iget-boolean v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mFirstCallToVold:Z

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 2099
    return v1

    .line 2101
    :cond_6
    iput-boolean v1, p0, Lcom/android/server/locksettings/LockSettingsService;->mFirstCallToVold:Z

    .line 2103
    invoke-direct {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->checkPasswordReadPermission(I)V

    .line 2113
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mInjector:Lcom/android/server/locksettings/LockSettingsService$Injector;

    invoke-virtual {v0}, Lcom/android/server/locksettings/LockSettingsService$Injector;->getStorageManager()Landroid/os/storage/IStorageManager;

    move-result-object v0

    .line 2116
    .local v0, "service":Landroid/os/storage/IStorageManager;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 2118
    .local v2, "identity":J
    :try_start_15
    invoke-interface {v0}, Landroid/os/storage/IStorageManager;->getPassword()Ljava/lang/String;

    move-result-object v4

    .line 2119
    .local v4, "password":Ljava/lang/String;
    invoke-interface {v0}, Landroid/os/storage/IStorageManager;->clearPassword()V
    :try_end_1c
    .catchall {:try_start_15 .. :try_end_1c} :catchall_59

    .line 2121
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2122
    nop

    .line 2123
    if-nez v4, :cond_23

    .line 2124
    return v1

    .line 2128
    :cond_23
    const/4 v5, 0x0

    const/4 v6, 0x1

    :try_start_25
    iget-object v7, p0, Lcom/android/server/locksettings/LockSettingsService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v7, p1}, Lcom/android/internal/widget/LockPatternUtils;->isLockPatternEnabled(I)Z

    move-result v7

    if-eqz v7, :cond_3c

    .line 2129
    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v7

    invoke-virtual {p0, v7, v6, p1, v5}, Lcom/android/server/locksettings/LockSettingsService;->checkCredential([BIILcom/android/internal/widget/ICheckCredentialProgressCallback;)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object v7

    .line 2131
    invoke-virtual {v7}, Lcom/android/internal/widget/VerifyCredentialResponse;->getResponseCode()I

    move-result v7
    :try_end_39
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_39} :catch_3d

    if-nez v7, :cond_3c

    .line 2132
    return v6

    .line 2136
    :cond_3c
    goto :goto_3e

    .line 2135
    :catch_3d
    move-exception v7

    .line 2139
    :goto_3e
    :try_start_3e
    iget-object v7, p0, Lcom/android/server/locksettings/LockSettingsService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v7, p1}, Lcom/android/internal/widget/LockPatternUtils;->isLockPasswordEnabled(I)Z

    move-result v7

    if-eqz v7, :cond_56

    .line 2140
    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v7

    const/4 v8, 0x2

    invoke-virtual {p0, v7, v8, p1, v5}, Lcom/android/server/locksettings/LockSettingsService;->checkCredential([BIILcom/android/internal/widget/ICheckCredentialProgressCallback;)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object v5

    .line 2142
    invoke-virtual {v5}, Lcom/android/internal/widget/VerifyCredentialResponse;->getResponseCode()I

    move-result v5
    :try_end_53
    .catch Ljava/lang/Exception; {:try_start_3e .. :try_end_53} :catch_57

    if-nez v5, :cond_56

    .line 2143
    return v6

    .line 2147
    :cond_56
    goto :goto_58

    .line 2146
    :catch_57
    move-exception v5

    .line 2149
    :goto_58
    return v1

    .line 2121
    .end local v4  # "password":Ljava/lang/String;
    :catchall_59
    move-exception v1

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v1
.end method

.method public clearFlymePassword(II)Z
    .registers 4
    .param p1, "type"  # I
    .param p2, "userId"  # I

    .line 3266
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mFlymeLockSettingsServiceExt:Lcom/android/server/locksettings/FlymeLockSettingsServiceExt;

    if-eqz v0, :cond_9

    .line 3267
    invoke-virtual {v0, p1, p2}, Lcom/android/server/locksettings/FlymeLockSettingsServiceExt;->clearPassword(II)Z

    move-result v0

    return v0

    .line 3269
    :cond_9
    const/4 v0, 0x0

    return v0
.end method

.method public closeSession(Ljava/lang/String;)V
    .registers 3
    .param p1, "sessionId"  # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2311
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mRecoverableKeyStoreManager:Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;

    invoke-virtual {v0, p1}, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->closeSession(Ljava/lang/String;)V

    .line 2312
    return-void
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 14
    .param p1, "fd"  # Ljava/io/FileDescriptor;
    .param p2, "pw"  # Ljava/io/PrintWriter;
    .param p3, "args"  # [Ljava/lang/String;

    .line 3030
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mContext:Landroid/content/Context;

    const-string v1, "LockSettingsService"

    invoke-static {v0, v1, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v0

    if-nez v0, :cond_b

    return-void

    .line 3032
    :cond_b
    const-string v0, "Current lock settings service state:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3033
    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/android/server/locksettings/LockSettingsService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 3034
    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternUtils;->isSyntheticPasswordEnabled()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 3033
    const-string v2, "SP Enabled = %b"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3036
    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v1}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v1

    .line 3037
    .local v1, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    const/4 v2, 0x0

    .local v2, "user":I
    :goto_30
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_8c

    .line 3038
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/UserInfo;

    iget v4, v4, Landroid/content/pm/UserInfo;->id:I

    .line 3039
    .local v4, "userId":I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "    User "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3040
    iget-object v5, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    monitor-enter v5

    .line 3041
    :try_start_55
    const-string v6, "        SP Handle = %x"

    new-array v7, v0, [Ljava/lang/Object;

    .line 3042
    invoke-direct {p0, v4}, Lcom/android/server/locksettings/LockSettingsService;->getSyntheticPasswordHandleLocked(I)J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v7, v3

    .line 3041
    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3043
    monitor-exit v5
    :try_end_6b
    .catchall {:try_start_55 .. :try_end_6b} :catchall_89

    .line 3045
    :try_start_6b
    const-string v5, "        SID = %x"

    new-array v6, v0, [Ljava/lang/Object;

    .line 3046
    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsService;->getGateKeeperService()Landroid/service/gatekeeper/IGateKeeperService;

    move-result-object v7

    invoke-interface {v7, v4}, Landroid/service/gatekeeper/IGateKeeperService;->getSecureUserId(I)J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v6, v3

    .line 3045
    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_84
    .catch Landroid/os/RemoteException; {:try_start_6b .. :try_end_84} :catch_85

    .line 3049
    goto :goto_86

    .line 3047
    :catch_85
    move-exception v5

    .line 3037
    .end local v4  # "userId":I
    :goto_86
    add-int/lit8 v2, v2, 0x1

    goto :goto_30

    .line 3043
    .restart local v4  # "userId":I
    :catchall_89
    move-exception v0

    :try_start_8a
    monitor-exit v5
    :try_end_8b
    .catchall {:try_start_8a .. :try_end_8b} :catchall_89

    throw v0

    .line 3051
    .end local v2  # "user":I
    .end local v4  # "userId":I
    :cond_8c
    return-void
.end method

.method public generateKey(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p1, "alias"  # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2321
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mRecoverableKeyStoreManager:Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;

    invoke-virtual {v0, p1}, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->generateKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public generateKeyWithMetadata(Ljava/lang/String;[B)Ljava/lang/String;
    .registers 4
    .param p1, "alias"  # Ljava/lang/String;
    .param p2, "metadata"  # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2327
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mRecoverableKeyStoreManager:Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->generateKeyWithMetadata(Ljava/lang/String;[B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getBoolean(Ljava/lang/String;ZI)Z
    .registers 6
    .param p1, "key"  # Ljava/lang/String;
    .param p2, "defaultValue"  # Z
    .param p3, "userId"  # I

    .line 1057
    invoke-direct {p0, p1, p3}, Lcom/android/server/locksettings/LockSettingsService;->checkReadPermission(Ljava/lang/String;I)V

    .line 1058
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p3}, Lcom/android/server/locksettings/LockSettingsService;->getStringUnchecked(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 1059
    .local v0, "value":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 1060
    move v1, p2

    goto :goto_25

    :cond_10
    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_24

    const-string/jumbo v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_22

    goto :goto_24

    :cond_22
    const/4 v1, 0x0

    goto :goto_25

    :cond_24
    :goto_24
    const/4 v1, 0x1

    .line 1059
    :goto_25
    return v1
.end method

.method protected getDecryptedPasswordForTiedProfile(I)[B
    .registers 11
    .param p1, "userId"  # I
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;,
            Ljava/security/UnrecoverableKeyException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljavax/crypto/NoSuchPaddingException;,
            Ljava/security/InvalidKeyException;,
            Ljava/security/InvalidAlgorithmParameterException;,
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljavax/crypto/BadPaddingException;,
            Ljava/security/cert/CertificateException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1205
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    invoke-virtual {v0, p1}, Lcom/android/server/locksettings/LockSettingsStorage;->readChildProfileLock(I)[B

    move-result-object v0

    .line 1206
    .local v0, "storedData":[B
    if-eqz v0, :cond_4c

    .line 1209
    const/4 v1, 0x0

    const/16 v2, 0xc

    invoke-static {v0, v1, v2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v1

    .line 1210
    .local v1, "iv":[B
    array-length v3, v0

    invoke-static {v0, v2, v3}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v2

    .line 1213
    .local v2, "encryptedPassword":[B
    const-string v3, "AndroidKeyStore"

    invoke-static {v3}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v3

    .line 1214
    .local v3, "keyStore":Ljava/security/KeyStore;
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/security/KeyStore;->load(Ljava/security/KeyStore$LoadStoreParameter;)V

    .line 1215
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "profile_key_name_decrypt_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5, v4}, Ljava/security/KeyStore;->getKey(Ljava/lang/String;[C)Ljava/security/Key;

    move-result-object v4

    check-cast v4, Ljavax/crypto/SecretKey;

    .line 1218
    .local v4, "decryptionKey":Ljavax/crypto/SecretKey;
    const-string v5, "AES/GCM/NoPadding"

    invoke-static {v5}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v5

    .line 1221
    .local v5, "cipher":Ljavax/crypto/Cipher;
    const/4 v6, 0x2

    new-instance v7, Ljavax/crypto/spec/GCMParameterSpec;

    const/16 v8, 0x80

    invoke-direct {v7, v8, v1}, Ljavax/crypto/spec/GCMParameterSpec;-><init>(I[B)V

    invoke-virtual {v5, v6, v4, v7}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 1222
    invoke-virtual {v5, v2}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v6

    .line 1223
    .local v6, "decryptionResult":[B
    return-object v6

    .line 1207
    .end local v1  # "iv":[B
    .end local v2  # "encryptedPassword":[B
    .end local v3  # "keyStore":Ljava/security/KeyStore;
    .end local v4  # "decryptionKey":Ljavax/crypto/SecretKey;
    .end local v5  # "cipher":Ljavax/crypto/Cipher;
    .end local v6  # "decryptionResult":[B
    :cond_4c
    new-instance v1, Ljava/io/FileNotFoundException;

    const-string v2, "Child profile lock file not found"

    invoke-direct {v1, v2}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method protected declared-synchronized getGateKeeperService()Landroid/service/gatekeeper/IGateKeeperService;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    monitor-enter p0

    .line 2396
    :try_start_1
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mGateKeeperService:Landroid/service/gatekeeper/IGateKeeperService;

    if-eqz v0, :cond_9

    .line 2397
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mGateKeeperService:Landroid/service/gatekeeper/IGateKeeperService;
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_2e

    monitor-exit p0

    return-object v0

    .line 2400
    .end local p0  # "this":Lcom/android/server/locksettings/LockSettingsService;
    :cond_9
    :try_start_9
    const-string v0, "android.service.gatekeeper.IGateKeeperService"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 2401
    .local v0, "service":Landroid/os/IBinder;
    const/4 v1, 0x0

    if-eqz v0, :cond_25

    .line 2402
    new-instance v2, Lcom/android/server/locksettings/LockSettingsService$GateKeeperDiedRecipient;

    invoke-direct {v2, p0, v1}, Lcom/android/server/locksettings/LockSettingsService$GateKeeperDiedRecipient;-><init>(Lcom/android/server/locksettings/LockSettingsService;Lcom/android/server/locksettings/LockSettingsService$1;)V

    const/4 v1, 0x0

    invoke-interface {v0, v2, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 2403
    invoke-static {v0}, Landroid/service/gatekeeper/IGateKeeperService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/gatekeeper/IGateKeeperService;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/locksettings/LockSettingsService;->mGateKeeperService:Landroid/service/gatekeeper/IGateKeeperService;

    .line 2404
    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsService;->mGateKeeperService:Landroid/service/gatekeeper/IGateKeeperService;
    :try_end_23
    .catchall {:try_start_9 .. :try_end_23} :catchall_2e

    monitor-exit p0

    return-object v1

    .line 2407
    :cond_25
    :try_start_25
    const-string v2, "LockSettingsService"

    const-string v3, "Unable to acquire GateKeeperService"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2c
    .catchall {:try_start_25 .. :try_end_2c} :catchall_2e

    .line 2408
    monitor-exit p0

    return-object v1

    .line 2395
    .end local v0  # "service":Landroid/os/IBinder;
    :catchall_2e
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getHashFactor([BI)[B
    .registers 14
    .param p1, "currentCredential"  # [B
    .param p2, "userId"  # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2850
    invoke-direct {p0, p2}, Lcom/android/server/locksettings/LockSettingsService;->checkPasswordReadPermission(I)V

    .line 2851
    if-eqz p1, :cond_8

    array-length v0, p1

    if-nez v0, :cond_9

    .line 2852
    :cond_8
    const/4 p1, 0x0

    .line 2854
    :cond_9
    invoke-direct {p0, p2}, Lcom/android/server/locksettings/LockSettingsService;->isManagedProfileWithUnifiedLock(I)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1f

    .line 2856
    :try_start_10
    invoke-virtual {p0, p2}, Lcom/android/server/locksettings/LockSettingsService;->getDecryptedPasswordForTiedProfile(I)[B

    move-result-object v0
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_14} :catch_16

    move-object p1, v0

    .line 2860
    goto :goto_1f

    .line 2857
    :catch_16
    move-exception v0

    .line 2858
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "LockSettingsService"

    const-string v3, "Failed to get work profile credential"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2859
    return-object v1

    .line 2862
    .end local v0  # "e":Ljava/lang/Exception;
    :cond_1f
    :goto_1f
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    monitor-enter v0

    .line 2863
    :try_start_22
    invoke-direct {p0, p2}, Lcom/android/server/locksettings/LockSettingsService;->isSyntheticPasswordBasedCredentialLocked(I)Z

    move-result v2

    if-nez v2, :cond_31

    .line 2864
    const-string v2, "LockSettingsService"

    const-string v3, "Synthetic password not enabled"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2865
    monitor-exit v0

    return-object v1

    .line 2867
    :cond_31
    invoke-direct {p0, p2}, Lcom/android/server/locksettings/LockSettingsService;->getSyntheticPasswordHandleLocked(I)J

    move-result-wide v6

    .line 2868
    .local v6, "handle":J
    iget-object v4, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    .line 2869
    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsService;->getGateKeeperService()Landroid/service/gatekeeper/IGateKeeperService;

    move-result-object v5

    const/4 v10, 0x0

    .line 2868
    move-object v8, p1

    move v9, p2

    invoke-virtual/range {v4 .. v10}, Lcom/android/server/locksettings/SyntheticPasswordManager;->unwrapPasswordBasedSyntheticPassword(Landroid/service/gatekeeper/IGateKeeperService;J[BILcom/android/internal/widget/ICheckCredentialProgressCallback;)Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;

    move-result-object v2

    .line 2870
    .local v2, "auth":Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;
    iget-object v3, v2, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;->authToken:Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;

    if-nez v3, :cond_4f

    .line 2871
    const-string v3, "LockSettingsService"

    const-string v4, "Current credential is incorrect"

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2872
    monitor-exit v0

    return-object v1

    .line 2874
    :cond_4f
    iget-object v1, v2, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;->authToken:Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;

    invoke-virtual {v1}, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->derivePasswordHashFactor()[B

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 2875
    .end local v2  # "auth":Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;
    .end local v6  # "handle":J
    :catchall_57
    move-exception v1

    monitor-exit v0
    :try_end_59
    .catchall {:try_start_22 .. :try_end_59} :catchall_57

    throw v1
.end method

.method public getKey(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p1, "alias"  # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2344
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mRecoverableKeyStoreManager:Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;

    invoke-virtual {v0, p1}, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->getKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getKeyChainSnapshot()Landroid/security/keystore/recovery/KeyChainSnapshot;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2253
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mRecoverableKeyStoreManager:Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;

    invoke-virtual {v0}, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->getKeyChainSnapshot()Landroid/security/keystore/recovery/KeyChainSnapshot;

    move-result-object v0

    return-object v0
.end method

.method public getLong(Ljava/lang/String;JI)J
    .registers 8
    .param p1, "key"  # Ljava/lang/String;
    .param p2, "defaultValue"  # J
    .param p4, "userId"  # I

    .line 1065
    invoke-direct {p0, p1, p4}, Lcom/android/server/locksettings/LockSettingsService;->checkReadPermission(Ljava/lang/String;I)V

    .line 1066
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p4}, Lcom/android/server/locksettings/LockSettingsService;->getStringUnchecked(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 1067
    .local v0, "value":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_10

    move-wide v1, p2

    goto :goto_14

    :cond_10
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    :goto_14
    return-wide v1
.end method

.method public getPassword()Ljava/lang/String;
    .registers 4

    .line 1175
    invoke-direct {p0}, Lcom/android/server/locksettings/LockSettingsService;->checkCryptKeeperPermissions()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 1176
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.ACCESS_KEYGUARD_SECURE_STORAGE"

    const-string/jumbo v2, "no crypt_keeper or admin permission to get the password"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1180
    :cond_10
    sget-object v0, Lcom/android/server/locksettings/LockSettingsService;->mSavePassword:Ljava/lang/String;

    return-object v0
.end method

.method public getRecoverySecretTypes()[I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2285
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mRecoverableKeyStoreManager:Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;

    invoke-virtual {v0}, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->getRecoverySecretTypes()[I

    move-result-object v0

    return-object v0
.end method

.method public getRecoveryStatus()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2274
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mRecoverableKeyStoreManager:Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;

    invoke-virtual {v0}, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->getRecoveryStatus()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getSeparateProfileChallengeEnabled(I)Z
    .registers 5
    .param p1, "userId"  # I

    .line 982
    const-string/jumbo v0, "lockscreen.profilechallenge"

    invoke-direct {p0, v0, p1}, Lcom/android/server/locksettings/LockSettingsService;->checkReadPermission(Ljava/lang/String;I)V

    .line 983
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mSeparateChallengeLock:Ljava/lang/Object;

    monitor-enter v0

    .line 984
    :try_start_9
    const-string/jumbo v1, "lockscreen.profilechallenge"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2, p1}, Lcom/android/server/locksettings/LockSettingsService;->getBoolean(Ljava/lang/String;ZI)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 985
    :catchall_13
    move-exception v1

    monitor-exit v0
    :try_end_15
    .catchall {:try_start_9 .. :try_end_15} :catchall_13

    throw v1
.end method

.method public getString(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .registers 5
    .param p1, "key"  # Ljava/lang/String;
    .param p2, "defaultValue"  # Ljava/lang/String;
    .param p3, "userId"  # I

    .line 1072
    invoke-direct {p0, p1, p3}, Lcom/android/server/locksettings/LockSettingsService;->checkReadPermission(Ljava/lang/String;I)V

    .line 1073
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/locksettings/LockSettingsService;->getStringUnchecked(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getStringUnchecked(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .registers 7
    .param p1, "key"  # Ljava/lang/String;
    .param p2, "defaultValue"  # Ljava/lang/String;
    .param p3, "userId"  # I

    .line 1077
    const-string/jumbo v0, "lock_pattern_autolock"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 1078
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1080
    .local v0, "ident":J
    :try_start_d
    iget-object v2, p0, Lcom/android/server/locksettings/LockSettingsService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2, p3}, Lcom/android/internal/widget/LockPatternUtils;->isLockPatternEnabled(I)Z

    move-result v2

    if-eqz v2, :cond_18

    const-string v2, "1"

    goto :goto_1a

    :cond_18
    const-string v2, "0"
    :try_end_1a
    .catchall {:try_start_d .. :try_end_1a} :catchall_1e

    .line 1082
    :goto_1a
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1080
    return-object v2

    .line 1082
    :catchall_1e
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2

    .line 1086
    .end local v0  # "ident":J
    :cond_23
    const/16 v0, -0x270f

    if-ne p3, v0, :cond_2c

    .line 1087
    invoke-direct {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->getFrpStringUnchecked(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1090
    :cond_2c
    const-string/jumbo v0, "legacy_lock_pattern_enabled"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_38

    .line 1091
    const-string/jumbo p1, "lock_pattern_autolock"

    .line 1094
    :cond_38
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/locksettings/LockSettingsStorage;->readKeyValue(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getStrongAuthForUser(I)I
    .registers 3
    .param p1, "userId"  # I

    .line 2214
    invoke-direct {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->checkPasswordReadPermission(I)V

    .line 2215
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mStrongAuthTracker:Lcom/android/server/locksettings/LockSettingsService$SynchronizedStrongAuthTracker;

    invoke-virtual {v0, p1}, Lcom/android/server/locksettings/LockSettingsService$SynchronizedStrongAuthTracker;->getStrongAuthForUser(I)I

    move-result v0

    return v0
.end method

.method public hasFlymePassword(II)Z
    .registers 4
    .param p1, "type"  # I
    .param p2, "userId"  # I

    .line 3258
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mFlymeLockSettingsServiceExt:Lcom/android/server/locksettings/FlymeLockSettingsServiceExt;

    if-eqz v0, :cond_9

    .line 3259
    invoke-virtual {v0, p1, p2}, Lcom/android/server/locksettings/FlymeLockSettingsServiceExt;->hasPassword(II)Z

    move-result v0

    return v0

    .line 3261
    :cond_9
    const/4 v0, 0x0

    return v0
.end method

.method public hasPendingEscrowToken(I)Z
    .registers 4
    .param p1, "userId"  # I

    .line 2930
    invoke-direct {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->checkPasswordReadPermission(I)V

    .line 2931
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    monitor-enter v0

    .line 2932
    :try_start_6
    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    invoke-virtual {v1, p1}, Lcom/android/server/locksettings/SyntheticPasswordManager;->getPendingTokensForUser(I)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_14

    const/4 v1, 0x1

    goto :goto_15

    :cond_14
    const/4 v1, 0x0

    :goto_15
    monitor-exit v0

    return v1

    .line 2933
    :catchall_17
    move-exception v1

    monitor-exit v0
    :try_end_19
    .catchall {:try_start_6 .. :try_end_19} :catchall_17

    throw v1
.end method

.method public havePassword(I)Z
    .registers 7
    .param p1, "userId"  # I

    .line 1110
    invoke-direct {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->checkPasswordHavePermission(I)V

    .line 1111
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    monitor-enter v0

    .line 1112
    :try_start_6
    invoke-direct {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->isSyntheticPasswordBasedCredentialLocked(I)Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 1113
    invoke-direct {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->getSyntheticPasswordHandleLocked(I)J

    move-result-wide v1

    .line 1114
    .local v1, "handle":J
    iget-object v3, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    invoke-virtual {v3, v1, v2, p1}, Lcom/android/server/locksettings/SyntheticPasswordManager;->getCredentialType(JI)I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1b

    const/4 v3, 0x1

    goto :goto_1c

    :cond_1b
    const/4 v3, 0x0

    :goto_1c
    monitor-exit v0

    return v3

    .line 1116
    .end local v1  # "handle":J
    :cond_1e
    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_6 .. :try_end_1f} :catchall_26

    .line 1118
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    invoke-virtual {v0, p1}, Lcom/android/server/locksettings/LockSettingsStorage;->hasPassword(I)Z

    move-result v0

    return v0

    .line 1116
    :catchall_26
    move-exception v1

    :try_start_27
    monitor-exit v0
    :try_end_28
    .catchall {:try_start_27 .. :try_end_28} :catchall_26

    throw v1
.end method

.method public havePattern(I)Z
    .registers 7
    .param p1, "userId"  # I

    .line 1123
    invoke-direct {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->checkPasswordHavePermission(I)V

    .line 1124
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    monitor-enter v0

    .line 1125
    :try_start_6
    invoke-direct {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->isSyntheticPasswordBasedCredentialLocked(I)Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 1126
    invoke-direct {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->getSyntheticPasswordHandleLocked(I)J

    move-result-wide v1

    .line 1127
    .local v1, "handle":J
    iget-object v3, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    invoke-virtual {v3, v1, v2, p1}, Lcom/android/server/locksettings/SyntheticPasswordManager;->getCredentialType(JI)I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1a

    goto :goto_1b

    :cond_1a
    const/4 v4, 0x0

    :goto_1b
    monitor-exit v0

    return v4

    .line 1129
    .end local v1  # "handle":J
    :cond_1d
    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_6 .. :try_end_1e} :catchall_25

    .line 1131
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    invoke-virtual {v0, p1}, Lcom/android/server/locksettings/LockSettingsStorage;->hasPattern(I)Z

    move-result v0

    return v0

    .line 1129
    :catchall_25
    move-exception v1

    :try_start_26
    monitor-exit v0
    :try_end_27
    .catchall {:try_start_26 .. :try_end_27} :catchall_25

    throw v1
.end method

.method public importKey(Ljava/lang/String;[B)Ljava/lang/String;
    .registers 4
    .param p1, "alias"  # Ljava/lang/String;
    .param p2, "keyBytes"  # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2333
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mRecoverableKeyStoreManager:Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->importKey(Ljava/lang/String;[B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public importKeyWithMetadata(Ljava/lang/String;[B[B)Ljava/lang/String;
    .registers 5
    .param p1, "alias"  # Ljava/lang/String;
    .param p2, "keyBytes"  # [B
    .param p3, "metadata"  # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2339
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mRecoverableKeyStoreManager:Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->importKeyWithMetadata(Ljava/lang/String;[B[B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public initRecoveryServiceWithSigFile(Ljava/lang/String;[B[B)V
    .registers 5
    .param p1, "rootCertificateAlias"  # Ljava/lang/String;
    .param p2, "recoveryServiceCertFile"  # [B
    .param p3, "recoveryServiceSigFile"  # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2247
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mRecoverableKeyStoreManager:Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->initRecoveryServiceWithSigFile(Ljava/lang/String;[B[B)V

    .line 2249
    return-void
.end method

.method protected initializeSyntheticPasswordLocked([B[BIII)Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;
    .registers 21
    .param p1, "credentialHash"  # [B
    .param p2, "credential"  # [B
    .param p3, "credentialType"  # I
    .param p4, "requestedQuality"  # I
    .param p5, "userId"  # I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mSpManager"
        }
    .end annotation

    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2527
    move-object v0, p0

    move-object/from16 v1, p1

    move-object/from16 v9, p2

    move/from16 v10, p5

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Initialize SyntheticPassword for user: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "LockSettingsService"

    invoke-static {v3, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2528
    iget-object v2, v0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    .line 2529
    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsService;->getGateKeeperService()Landroid/service/gatekeeper/IGateKeeperService;

    move-result-object v4

    .line 2528
    invoke-virtual {v2, v4, v1, v9, v10}, Lcom/android/server/locksettings/SyntheticPasswordManager;->newSyntheticPasswordAndSid(Landroid/service/gatekeeper/IGateKeeperService;[B[BI)Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;

    move-result-object v11

    .line 2530
    .local v11, "auth":Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;
    invoke-direct {p0, v10, v11}, Lcom/android/server/locksettings/LockSettingsService;->onAuthTokenKnownForUser(ILcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;)V

    .line 2531
    const/4 v12, 0x0

    if-nez v11, :cond_34

    .line 2532
    const-string/jumbo v2, "initializeSyntheticPasswordLocked returns null auth token"

    invoke-static {v3, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 2533
    return-object v12

    .line 2535
    :cond_34
    iget-object v2, v0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsService;->getGateKeeperService()Landroid/service/gatekeeper/IGateKeeperService;

    move-result-object v3

    move-object/from16 v4, p2

    move/from16 v5, p3

    move-object v6, v11

    move/from16 v7, p4

    move/from16 v8, p5

    invoke-virtual/range {v2 .. v8}, Lcom/android/server/locksettings/SyntheticPasswordManager;->createPasswordBasedSyntheticPassword(Landroid/service/gatekeeper/IGateKeeperService;[BILcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;II)J

    move-result-wide v13

    .line 2537
    .local v13, "handle":J
    if-eqz v9, :cond_71

    .line 2538
    if-nez v1, :cond_54

    .line 2541
    iget-object v2, v0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsService;->getGateKeeperService()Landroid/service/gatekeeper/IGateKeeperService;

    move-result-object v3

    invoke-virtual {v2, v3, v11, v10}, Lcom/android/server/locksettings/SyntheticPasswordManager;->newSidForUser(Landroid/service/gatekeeper/IGateKeeperService;Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;I)V

    .line 2543
    :cond_54
    iget-object v2, v0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsService;->getGateKeeperService()Landroid/service/gatekeeper/IGateKeeperService;

    move-result-object v3

    const-wide/16 v5, 0x0

    move-object v4, v11

    move/from16 v7, p5

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/locksettings/SyntheticPasswordManager;->verifyChallenge(Landroid/service/gatekeeper/IGateKeeperService;Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;JI)Lcom/android/internal/widget/VerifyCredentialResponse;

    .line 2544
    invoke-virtual {v11}, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->deriveDiskEncryptionKey()[B

    move-result-object v2

    invoke-direct {p0, v10, v2}, Lcom/android/server/locksettings/LockSettingsService;->setAuthlessUserKeyProtection(I[B)V

    .line 2545
    invoke-virtual {v11}, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->deriveKeyStorePassword()[B

    move-result-object v2

    invoke-direct {p0, v2, v10}, Lcom/android/server/locksettings/LockSettingsService;->setKeystorePassword([BI)V

    goto :goto_7e

    .line 2547
    :cond_71
    invoke-direct {p0, v10}, Lcom/android/server/locksettings/LockSettingsService;->clearUserKeyProtection(I)V

    .line 2548
    invoke-direct {p0, v12, v10}, Lcom/android/server/locksettings/LockSettingsService;->setKeystorePassword([BI)V

    .line 2549
    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsService;->getGateKeeperService()Landroid/service/gatekeeper/IGateKeeperService;

    move-result-object v2

    invoke-interface {v2, v10}, Landroid/service/gatekeeper/IGateKeeperService;->clearSecureUserId(I)V

    .line 2551
    :goto_7e
    invoke-direct {p0, v10}, Lcom/android/server/locksettings/LockSettingsService;->fixateNewestUserKeyAuth(I)V

    .line 2552
    const-string/jumbo v2, "sp-handle"

    invoke-virtual {p0, v2, v13, v14, v10}, Lcom/android/server/locksettings/LockSettingsService;->setLong(Ljava/lang/String;JI)V

    .line 2553
    return-object v11
.end method

.method public synthetic lambda$notifyActivePasswordMetricsAvailable$0$LockSettingsService(Landroid/app/admin/PasswordMetrics;I)V
    .registers 5
    .param p1, "metrics"  # Landroid/app/admin/PasswordMetrics;
    .param p2, "userId"  # I

    .line 2076
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mContext:Landroid/content/Context;

    .line 2077
    const-string v1, "device_policy"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    .line 2078
    .local v0, "dpm":Landroid/app/admin/DevicePolicyManager;
    invoke-virtual {v0, p1, p2}, Landroid/app/admin/DevicePolicyManager;->setActivePasswordState(Landroid/app/admin/PasswordMetrics;I)V

    .line 2079
    return-void
.end method

.method public synthetic lambda$notifyPasswordChanged$1$LockSettingsService(I)V
    .registers 4
    .param p1, "userId"  # I

    .line 2089
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mContext:Landroid/content/Context;

    .line 2090
    const-string v1, "device_policy"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    .line 2091
    .local v0, "dpm":Landroid/app/admin/DevicePolicyManager;
    invoke-virtual {v0, p1}, Landroid/app/admin/DevicePolicyManager;->reportPasswordChanged(I)V

    .line 2092
    const-class v1, Lcom/android/server/wm/WindowManagerInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowManagerInternal;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/WindowManagerInternal;->reportPasswordChanged(I)V

    .line 2093
    return-void
.end method

.method public synthetic lambda$setLockCredentialWithToken$3$LockSettingsService(I)V
    .registers 3
    .param p1, "userId"  # I

    .line 2972
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v0}, Lcom/android/server/locksettings/LockSettingsService;->unlockUser(I[B[B)V

    return-void
.end method

.method public synthetic lambda$tryRemoveUserFromSpCacheLater$2$LockSettingsService(I)V
    .registers 4
    .param p1, "userId"  # I

    .line 2452
    invoke-direct {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->shouldCacheSpForUser(I)Z

    move-result v0

    if-nez v0, :cond_29

    .line 2458
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Removing SP from cache for user "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LockSettingsService"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2459
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    monitor-enter v0

    .line 2460
    :try_start_1f
    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpCache:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 2461
    monitor-exit v0

    goto :goto_29

    :catchall_26
    move-exception v1

    monitor-exit v0
    :try_end_28
    .catchall {:try_start_1f .. :try_end_28} :catchall_26

    throw v1

    .line 2463
    :cond_29
    :goto_29
    return-void
.end method

.method public mzProcessLeftTimes(Z)I
    .registers 3
    .param p1, "reset"  # Z

    .line 3302
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mFindPhoneService:Lcom/meizu/findphone/FindPhoneService;

    invoke-virtual {v0, p1}, Lcom/meizu/findphone/FindPhoneService;->processLeftTimes(Z)I

    move-result v0

    return v0
.end method

.method public onCleanupUser(I)V
    .registers 3
    .param p1, "userId"  # I

    .line 581
    new-instance v0, Landroid/os/UserHandle;

    invoke-direct {v0, p1}, Landroid/os/UserHandle;-><init>(I)V

    invoke-direct {p0, v0}, Lcom/android/server/locksettings/LockSettingsService;->hideEncryptionNotification(Landroid/os/UserHandle;)V

    .line 585
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker;->getDefaultFlags(Landroid/content/Context;)I

    move-result v0

    .line 586
    .local v0, "strongAuthRequired":I
    invoke-virtual {p0, v0, p1}, Lcom/android/server/locksettings/LockSettingsService;->requireStrongAuth(II)V

    .line 587
    return-void
.end method

.method public onShellCommand(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)V
    .registers 19
    .param p1, "in"  # Ljava/io/FileDescriptor;
    .param p2, "out"  # Ljava/io/FileDescriptor;
    .param p3, "err"  # Ljava/io/FileDescriptor;
    .param p4, "args"  # [Ljava/lang/String;
    .param p5, "callback"  # Landroid/os/ShellCallback;
    .param p6, "resultReceiver"  # Landroid/os/ResultReceiver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2233
    invoke-direct {p0}, Lcom/android/server/locksettings/LockSettingsService;->enforceShell()V

    .line 2234
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 2236
    .local v1, "origId":J
    :try_start_7
    new-instance v3, Lcom/android/server/locksettings/LockSettingsShellCommand;

    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;
    :try_end_b
    .catchall {:try_start_7 .. :try_end_b} :catchall_28

    move-object v11, p0

    :try_start_c
    iget-object v4, v11, Lcom/android/server/locksettings/LockSettingsService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v4}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    invoke-direct {v3, v0}, Lcom/android/server/locksettings/LockSettingsShellCommand;-><init>(Lcom/android/internal/widget/LockPatternUtils;)V

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    move-object/from16 v8, p4

    move-object/from16 v9, p5

    move-object/from16 v10, p6

    invoke-virtual/range {v3 .. v10}, Lcom/android/server/locksettings/LockSettingsShellCommand;->exec(Landroid/os/Binder;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)I
    :try_end_21
    .catchall {:try_start_c .. :try_end_21} :catchall_26

    .line 2239
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2240
    nop

    .line 2241
    return-void

    .line 2239
    :catchall_26
    move-exception v0

    goto :goto_2a

    :catchall_28
    move-exception v0

    move-object v11, p0

    :goto_2a
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method public onStartUser(I)V
    .registers 2
    .param p1, "userId"  # I

    .line 590
    invoke-direct {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->maybeShowEncryptionNotificationForUser(I)V

    .line 591
    return-void
.end method

.method public onUnlockUser(I)V
    .registers 4
    .param p1, "userId"  # I

    .line 617
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/locksettings/LockSettingsService$1;

    invoke-direct {v1, p0, p1}, Lcom/android/server/locksettings/LockSettingsService$1;-><init>(Lcom/android/server/locksettings/LockSettingsService;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 637
    return-void
.end method

.method public recoverKeyChainSnapshot(Ljava/lang/String;[BLjava/util/List;)Ljava/util/Map;
    .registers 5
    .param p1, "sessionId"  # Ljava/lang/String;
    .param p2, "recoveryKeyBlob"  # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[B",
            "Ljava/util/List<",
            "Landroid/security/keystore/recovery/WrappedApplicationKey;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2305
    .local p3, "applicationKeys":Ljava/util/List;, "Ljava/util/List<Landroid/security/keystore/recovery/WrappedApplicationKey;>;"
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mRecoverableKeyStoreManager:Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->recoverKeyChainSnapshot(Ljava/lang/String;[BLjava/util/List;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public registerStrongAuthTracker(Landroid/app/trust/IStrongAuthTracker;)V
    .registers 3
    .param p1, "tracker"  # Landroid/app/trust/IStrongAuthTracker;

    .line 2190
    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lcom/android/server/locksettings/LockSettingsService;->checkPasswordReadPermission(I)V

    .line 2191
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mStrongAuth:Lcom/android/server/locksettings/LockSettingsStrongAuth;

    invoke-virtual {v0, p1}, Lcom/android/server/locksettings/LockSettingsStrongAuth;->registerStrongAuthTracker(Landroid/app/trust/IStrongAuthTracker;)V

    .line 2192
    return-void
.end method

.method public removeKey(Ljava/lang/String;)V
    .registers 3
    .param p1, "alias"  # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2316
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mRecoverableKeyStoreManager:Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;

    invoke-virtual {v0, p1}, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->removeKey(Ljava/lang/String;)V

    .line 2317
    return-void
.end method

.method public requireStrongAuth(II)V
    .registers 4
    .param p1, "strongAuthReason"  # I
    .param p2, "userId"  # I

    .line 2202
    invoke-direct {p0, p2}, Lcom/android/server/locksettings/LockSettingsService;->checkWritePermission(I)V

    .line 2203
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mStrongAuth:Lcom/android/server/locksettings/LockSettingsStrongAuth;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/locksettings/LockSettingsStrongAuth;->requireStrongAuth(II)V

    .line 2204
    return-void
.end method

.method public resetKeyStore(I)V
    .registers 18
    .param p1, "userId"  # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1775
    move-object/from16 v1, p0

    move/from16 v2, p1

    invoke-direct/range {p0 .. p1}, Lcom/android/server/locksettings/LockSettingsService;->checkWritePermission(I)V

    .line 1777
    const/4 v0, -0x1

    .line 1778
    .local v0, "managedUserId":I
    const/4 v3, 0x0

    .line 1779
    .local v3, "managedUserDecryptedPassword":[B
    iget-object v4, v1, Lcom/android/server/locksettings/LockSettingsService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v4, v2}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    move-result-object v4

    .line 1780
    .local v4, "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move-object v6, v3

    move v3, v0

    .end local v0  # "managedUserId":I
    .local v3, "managedUserId":I
    .local v6, "managedUserDecryptedPassword":[B
    :goto_15
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v7, -0x1

    if-eqz v0, :cond_73

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Landroid/content/pm/UserInfo;

    .line 1782
    .local v8, "pi":Landroid/content/pm/UserInfo;
    invoke-virtual {v8}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v0

    if-eqz v0, :cond_72

    iget-object v0, v1, Lcom/android/server/locksettings/LockSettingsService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v9, v8, Landroid/content/pm/UserInfo;->id:I

    .line 1783
    invoke-virtual {v0, v9}, Lcom/android/internal/widget/LockPatternUtils;->isSeparateProfileChallengeEnabled(I)Z

    move-result v0

    if-nez v0, :cond_72

    iget-object v0, v1, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    iget v9, v8, Landroid/content/pm/UserInfo;->id:I

    .line 1784
    invoke-virtual {v0, v9}, Lcom/android/server/locksettings/LockSettingsStorage;->hasChildProfileLock(I)Z

    move-result v0

    if-eqz v0, :cond_72

    .line 1786
    const-string v9, "LockSettingsService"

    if-ne v3, v7, :cond_4e

    .line 1787
    :try_start_41
    iget v0, v8, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v1, v0}, Lcom/android/server/locksettings/LockSettingsService;->getDecryptedPasswordForTiedProfile(I)[B

    move-result-object v0

    move-object v6, v0

    .line 1788
    iget v0, v8, Landroid/content/pm/UserInfo;->id:I

    move v3, v0

    goto :goto_6c

    .line 1794
    :catch_4c
    move-exception v0

    goto :goto_6d

    .line 1791
    :cond_4e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "More than one managed profile, uid1:"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", uid2:"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v8, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6c
    .catch Ljava/security/UnrecoverableKeyException; {:try_start_41 .. :try_end_6c} :catch_4c
    .catch Ljava/security/InvalidKeyException; {:try_start_41 .. :try_end_6c} :catch_4c
    .catch Ljava/security/KeyStoreException; {:try_start_41 .. :try_end_6c} :catch_4c
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_41 .. :try_end_6c} :catch_4c
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_41 .. :try_end_6c} :catch_4c
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_41 .. :try_end_6c} :catch_4c
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_41 .. :try_end_6c} :catch_4c
    .catch Ljavax/crypto/BadPaddingException; {:try_start_41 .. :try_end_6c} :catch_4c
    .catch Ljava/security/cert/CertificateException; {:try_start_41 .. :try_end_6c} :catch_4c
    .catch Ljava/io/IOException; {:try_start_41 .. :try_end_6c} :catch_4c

    .line 1799
    :goto_6c
    goto :goto_72

    .line 1798
    .local v0, "e":Ljava/lang/Exception;
    :goto_6d
    const-string v7, "Failed to decrypt child profile key"

    invoke-static {v9, v7, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1801
    .end local v0  # "e":Ljava/lang/Exception;
    .end local v8  # "pi":Landroid/content/pm/UserInfo;
    :cond_72
    :goto_72
    goto :goto_15

    .line 1804
    :cond_73
    :try_start_73
    iget-object v0, v1, Lcom/android/server/locksettings/LockSettingsService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0, v2}, Landroid/os/UserManager;->getProfileIdsWithDisabled(I)[I

    move-result-object v0

    array-length v5, v0

    const/4 v9, 0x0

    :goto_7b
    if-ge v9, v5, :cond_97

    aget v10, v0, v9

    .line 1805
    .local v10, "profileId":I
    sget-object v11, Lcom/android/server/locksettings/LockSettingsService;->SYSTEM_CREDENTIAL_UIDS:[I

    array-length v12, v11

    const/4 v13, 0x0

    :goto_83
    if-ge v13, v12, :cond_94

    aget v14, v11, v13

    .line 1806
    .local v14, "uid":I
    iget-object v15, v1, Lcom/android/server/locksettings/LockSettingsService;->mKeyStore:Landroid/security/KeyStore;

    invoke-static {v10, v14}, Landroid/os/UserHandle;->getUid(II)I

    move-result v8

    invoke-virtual {v15, v8}, Landroid/security/KeyStore;->clearUid(I)Z
    :try_end_90
    .catchall {:try_start_73 .. :try_end_90} :catchall_a8

    .line 1805
    nop

    .end local v14  # "uid":I
    add-int/lit8 v13, v13, 0x1

    goto :goto_83

    .line 1804
    .end local v10  # "profileId":I
    :cond_94
    add-int/lit8 v9, v9, 0x1

    goto :goto_7b

    .line 1810
    :cond_97
    if-eq v3, v7, :cond_9e

    if-eqz v6, :cond_9e

    .line 1812
    invoke-virtual {v1, v3, v6}, Lcom/android/server/locksettings/LockSettingsService;->tieProfileLockToParent(I[B)V

    .line 1815
    :cond_9e
    if-eqz v6, :cond_a7

    array-length v0, v6

    if-lez v0, :cond_a7

    .line 1816
    const/4 v0, 0x0

    invoke-static {v6, v0}, Ljava/util/Arrays;->fill([BB)V

    .line 1818
    :cond_a7
    return-void

    .line 1810
    :catchall_a8
    move-exception v0

    if-eq v3, v7, :cond_b0

    if-eqz v6, :cond_b0

    .line 1812
    invoke-virtual {v1, v3, v6}, Lcom/android/server/locksettings/LockSettingsService;->tieProfileLockToParent(I[B)V

    :cond_b0
    throw v0
.end method

.method public retainPassword(Ljava/lang/String;)V
    .registers 3
    .param p1, "password"  # Ljava/lang/String;

    .line 1145
    invoke-static {}, Lcom/android/internal/widget/LockPatternUtils;->isDeviceEncryptionEnabled()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 1146
    if-eqz p1, :cond_b

    .line 1147
    sput-object p1, Lcom/android/server/locksettings/LockSettingsService;->mSavePassword:Ljava/lang/String;

    goto :goto_f

    .line 1149
    :cond_b
    const-string v0, "default_password"

    sput-object v0, Lcom/android/server/locksettings/LockSettingsService;->mSavePassword:Ljava/lang/String;

    .line 1151
    :cond_f
    :goto_f
    return-void
.end method

.method public sanitizePassword()V
    .registers 2

    .line 1154
    invoke-static {}, Lcom/android/internal/widget/LockPatternUtils;->isDeviceEncryptionEnabled()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1155
    const-string v0, "default_password"

    sput-object v0, Lcom/android/server/locksettings/LockSettingsService;->mSavePassword:Ljava/lang/String;

    .line 1157
    :cond_a
    return-void
.end method

.method public setBoolean(Ljava/lang/String;ZI)V
    .registers 5
    .param p1, "key"  # Ljava/lang/String;
    .param p2, "value"  # Z
    .param p3, "userId"  # I

    .line 1030
    invoke-direct {p0, p3}, Lcom/android/server/locksettings/LockSettingsService;->checkWritePermission(I)V

    .line 1031
    if-eqz p2, :cond_8

    const-string v0, "1"

    goto :goto_a

    :cond_8
    const-string v0, "0"

    :goto_a
    invoke-direct {p0, p1, p3, v0}, Lcom/android/server/locksettings/LockSettingsService;->setStringUnchecked(Ljava/lang/String;ILjava/lang/String;)V

    .line 1032
    return-void
.end method

.method public setFlymePassword(ILjava/lang/String;I)Z
    .registers 5
    .param p1, "type"  # I
    .param p2, "password"  # Ljava/lang/String;
    .param p3, "userId"  # I

    .line 3242
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mFlymeLockSettingsServiceExt:Lcom/android/server/locksettings/FlymeLockSettingsServiceExt;

    if-eqz v0, :cond_9

    .line 3243
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/locksettings/FlymeLockSettingsServiceExt;->setPassword(ILjava/lang/String;I)Z

    move-result v0

    return v0

    .line 3245
    :cond_9
    const/4 v0, 0x0

    return v0
.end method

.method public setLockCredential([BI[BIIZ)V
    .registers 16
    .param p1, "credential"  # [B
    .param p2, "type"  # I
    .param p3, "savedCredential"  # [B
    .param p4, "requestedQuality"  # I
    .param p5, "userId"  # I
    .param p6, "allowUntrustedChange"  # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1480
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->hasSecureLockScreen()Z

    move-result v0

    if-eqz v0, :cond_38

    .line 1484
    invoke-direct {p0, p5}, Lcom/android/server/locksettings/LockSettingsService;->checkWritePermission(I)V

    .line 1485
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mSeparateChallengeLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1486
    const/4 v8, 0x0

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    :try_start_16
    invoke-direct/range {v1 .. v8}, Lcom/android/server/locksettings/LockSettingsService;->setLockCredentialInternal([BI[BIIZZ)V

    .line 1488
    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0, p5, v1, v2}, Lcom/android/server/locksettings/LockSettingsService;->setSeparateProfileChallengeEnabledLocked(IZ[B)V

    .line 1489
    invoke-direct {p0, p5}, Lcom/android/server/locksettings/LockSettingsService;->notifyPasswordChanged(I)V

    .line 1490
    monitor-exit v0
    :try_end_22
    .catchall {:try_start_16 .. :try_end_22} :catchall_35

    .line 1491
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0, p5}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v0

    if-eqz v0, :cond_31

    .line 1493
    invoke-direct {p0, p5}, Lcom/android/server/locksettings/LockSettingsService;->setDeviceUnlockedForUser(I)V

    .line 1495
    :cond_31
    invoke-direct {p0, p5}, Lcom/android/server/locksettings/LockSettingsService;->notifySeparateProfileChallengeChanged(I)V

    .line 1496
    return-void

    .line 1490
    :catchall_35
    move-exception v1

    :try_start_36
    monitor-exit v0
    :try_end_37
    .catchall {:try_start_36 .. :try_end_37} :catchall_35

    throw v1

    .line 1481
    :cond_38
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "This operation requires secure lock screen feature"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setLong(Ljava/lang/String;JI)V
    .registers 6
    .param p1, "key"  # Ljava/lang/String;
    .param p2, "value"  # J
    .param p4, "userId"  # I

    .line 1036
    invoke-direct {p0, p4}, Lcom/android/server/locksettings/LockSettingsService;->checkWritePermission(I)V

    .line 1037
    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, p4, v0}, Lcom/android/server/locksettings/LockSettingsService;->setStringUnchecked(Ljava/lang/String;ILjava/lang/String;)V

    .line 1038
    return-void
.end method

.method public setRecoverySecretTypes([I)V
    .registers 3
    .param p1, "secretTypes"  # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2280
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mRecoverableKeyStoreManager:Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;

    invoke-virtual {v0, p1}, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->setRecoverySecretTypes([I)V

    .line 2281
    return-void
.end method

.method public setRecoveryStatus(Ljava/lang/String;I)V
    .registers 4
    .param p1, "alias"  # Ljava/lang/String;
    .param p2, "status"  # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2269
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mRecoverableKeyStoreManager:Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->setRecoveryStatus(Ljava/lang/String;I)V

    .line 2270
    return-void
.end method

.method public setSeparateProfileChallengeEnabled(IZ[B)V
    .registers 6
    .param p1, "userId"  # I
    .param p2, "enabled"  # Z
    .param p3, "managedUserPassword"  # [B

    .line 991
    invoke-direct {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->checkWritePermission(I)V

    .line 992
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->hasSecureLockScreen()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 996
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mSeparateChallengeLock:Ljava/lang/Object;

    monitor-enter v0

    .line 997
    :try_start_e
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/locksettings/LockSettingsService;->setSeparateProfileChallengeEnabledLocked(IZ[B)V

    .line 998
    monitor-exit v0
    :try_end_12
    .catchall {:try_start_e .. :try_end_12} :catchall_16

    .line 999
    invoke-direct {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->notifySeparateProfileChallengeChanged(I)V

    .line 1000
    return-void

    .line 998
    :catchall_16
    move-exception v1

    :try_start_17
    monitor-exit v0
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_16

    throw v1

    .line 993
    :cond_19
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "This operation requires secure lock screen feature."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setServerParams([B)V
    .registers 3
    .param p1, "serverParams"  # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2264
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mRecoverableKeyStoreManager:Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;

    invoke-virtual {v0, p1}, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->setServerParams([B)V

    .line 2265
    return-void
.end method

.method public setSnapshotCreatedPendingIntent(Landroid/app/PendingIntent;)V
    .registers 3
    .param p1, "intent"  # Landroid/app/PendingIntent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2259
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mRecoverableKeyStoreManager:Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;

    invoke-virtual {v0, p1}, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->setSnapshotCreatedPendingIntent(Landroid/app/PendingIntent;)V

    .line 2260
    return-void
.end method

.method public setString(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 4
    .param p1, "key"  # Ljava/lang/String;
    .param p2, "value"  # Ljava/lang/String;
    .param p3, "userId"  # I

    .line 1042
    invoke-direct {p0, p3}, Lcom/android/server/locksettings/LockSettingsService;->checkWritePermission(I)V

    .line 1043
    invoke-direct {p0, p1, p3, p2}, Lcom/android/server/locksettings/LockSettingsService;->setStringUnchecked(Ljava/lang/String;ILjava/lang/String;)V

    .line 1044
    return-void
.end method

.method protected shouldMigrateToSyntheticPasswordLocked(I)Z
    .registers 10
    .param p1, "userId"  # I
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 2575
    invoke-direct {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->getSyntheticPasswordHandleLocked(I)J

    move-result-wide v0

    .line 2577
    .local v0, "handle":J
    const/4 v2, 0x0

    const-string v3, "enable-sp"

    const-wide/16 v4, 0x1

    invoke-virtual {p0, v3, v4, v5, v2}, Lcom/android/server/locksettings/LockSettingsService;->getLong(Ljava/lang/String;JI)J

    move-result-wide v3

    .line 2579
    .local v3, "enabled":J
    const-wide/16 v5, 0x0

    cmp-long v7, v3, v5

    if-eqz v7, :cond_18

    cmp-long v5, v0, v5

    if-nez v5, :cond_18

    const/4 v2, 0x1

    :cond_18
    return v2
.end method

.method public startRecoverySessionWithCertPath(Ljava/lang/String;Ljava/lang/String;Landroid/security/keystore/recovery/RecoveryCertPath;[B[BLjava/util/List;)[B
    .registers 14
    .param p1, "sessionId"  # Ljava/lang/String;
    .param p2, "rootCertificateAlias"  # Ljava/lang/String;
    .param p3, "verifierCertPath"  # Landroid/security/keystore/recovery/RecoveryCertPath;
    .param p4, "vaultParams"  # [B
    .param p5, "vaultChallenge"  # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Landroid/security/keystore/recovery/RecoveryCertPath;",
            "[B[B",
            "Ljava/util/List<",
            "Landroid/security/keystore/recovery/KeyChainProtectionParams;",
            ">;)[B"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2295
    .local p6, "secrets":Ljava/util/List;, "Ljava/util/List<Landroid/security/keystore/recovery/KeyChainProtectionParams;>;"
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mRecoverableKeyStoreManager:Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->startRecoverySessionWithCertPath(Ljava/lang/String;Ljava/lang/String;Landroid/security/keystore/recovery/RecoveryCertPath;[B[BLjava/util/List;)[B

    move-result-object v0

    return-object v0
.end method

.method public systemReady()V
    .registers 7

    .line 691
    const-string v0, "LockSettingsService"

    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.ACCESS_KEYGUARD_SECURE_STORAGE"

    invoke-virtual {v1, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2a

    .line 692
    const v1, 0x534e4554

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "28251513"

    aput-object v4, v3, v2

    const/4 v4, 0x1

    invoke-static {}, Lcom/android/server/locksettings/LockSettingsService;->getCallingUid()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const-string v5, ""

    aput-object v5, v3, v4

    invoke-static {v1, v3}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 694
    :cond_2a
    invoke-direct {p0, v2}, Lcom/android/server/locksettings/LockSettingsService;->checkWritePermission(I)V

    .line 695
    invoke-direct {p0}, Lcom/android/server/locksettings/LockSettingsService;->migrateOldData()V

    .line 697
    :try_start_30
    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsService;->getGateKeeperService()Landroid/service/gatekeeper/IGateKeeperService;

    .line 698
    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    invoke-virtual {v1}, Lcom/android/server/locksettings/SyntheticPasswordManager;->initWeaverService()V
    :try_end_38
    .catch Landroid/os/RemoteException; {:try_start_30 .. :try_end_38} :catch_39

    .line 701
    goto :goto_3f

    .line 699
    :catch_39
    move-exception v1

    .line 700
    .local v1, "e":Landroid/os/RemoteException;
    const-string v3, "Failure retrieving IGateKeeperService"

    invoke-static {v0, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 704
    .end local v1  # "e":Landroid/os/RemoteException;
    :goto_3f
    :try_start_3f
    invoke-static {}, Landroid/hardware/authsecret/V1_0/IAuthSecret;->getService()Landroid/hardware/authsecret/V1_0/IAuthSecret;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/locksettings/LockSettingsService;->mAuthSecretService:Landroid/hardware/authsecret/V1_0/IAuthSecret;
    :try_end_45
    .catch Ljava/util/NoSuchElementException; {:try_start_3f .. :try_end_45} :catch_4d
    .catch Landroid/os/RemoteException; {:try_start_3f .. :try_end_45} :catch_46

    goto :goto_53

    .line 707
    :catch_46
    move-exception v1

    .line 708
    .restart local v1  # "e":Landroid/os/RemoteException;
    const-string v3, "Failed to get AuthSecret HAL"

    invoke-static {v0, v3, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_54

    .line 705
    .end local v1  # "e":Landroid/os/RemoteException;
    :catch_4d
    move-exception v1

    .line 706
    .local v1, "e":Ljava/util/NoSuchElementException;
    const-string v3, "Device doesn\'t implement AuthSecret HAL"

    invoke-static {v0, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 709
    .end local v1  # "e":Ljava/util/NoSuchElementException;
    :goto_53
    nop

    .line 710
    :goto_54
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mDeviceProvisionedObserver:Lcom/android/server/locksettings/LockSettingsService$DeviceProvisionedObserver;

    invoke-virtual {v0}, Lcom/android/server/locksettings/LockSettingsService$DeviceProvisionedObserver;->onSystemReady()V

    .line 712
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    invoke-virtual {v0, v2}, Lcom/android/server/locksettings/LockSettingsStorage;->prefetchUser(I)V

    .line 715
    invoke-static {p0}, Lcom/android/server/locksettings/LockSettingsService$FindPhoneInjector;->systemReady(Lcom/android/server/locksettings/LockSettingsService;)V

    .line 717
    return-void
.end method

.method public tieManagedProfileLockIfNecessary(I[B)V
    .registers 20
    .param p1, "managedUserId"  # I
    .param p2, "managedUserPassword"  # [B

    .line 302
    move-object/from16 v9, p0

    move/from16 v10, p1

    const-string v11, "LockSettingsService"

    iget-object v0, v9, Lcom/android/server/locksettings/LockSettingsService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0, v10}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v0

    if-nez v0, :cond_13

    .line 303
    return-void

    .line 306
    :cond_13
    iget-object v0, v9, Lcom/android/server/locksettings/LockSettingsService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0, v10}, Lcom/android/internal/widget/LockPatternUtils;->isSeparateProfileChallengeEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 307
    return-void

    .line 310
    :cond_1c
    iget-object v0, v9, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    invoke-virtual {v0, v10}, Lcom/android/server/locksettings/LockSettingsStorage;->hasChildProfileLock(I)Z

    move-result v0

    if-eqz v0, :cond_25

    .line 311
    return-void

    .line 314
    :cond_25
    iget-object v0, v9, Lcom/android/server/locksettings/LockSettingsService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0, v10}, Landroid/os/UserManager;->getProfileParent(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    iget v12, v0, Landroid/content/pm/UserInfo;->id:I

    .line 315
    .local v12, "parentId":I
    invoke-direct {v9, v12}, Lcom/android/server/locksettings/LockSettingsService;->isUserSecure(I)Z

    move-result v0

    if-nez v0, :cond_34

    .line 317
    return-void

    .line 323
    :cond_34
    :try_start_34
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/locksettings/LockSettingsService;->getGateKeeperService()Landroid/service/gatekeeper/IGateKeeperService;

    move-result-object v0

    invoke-interface {v0, v12}, Landroid/service/gatekeeper/IGateKeeperService;->getSecureUserId(I)J

    move-result-wide v0
    :try_end_3c
    .catch Landroid/os/RemoteException; {:try_start_34 .. :try_end_3c} :catch_97

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_43

    .line 324
    return-void

    .line 329
    :cond_43
    nop

    .line 331
    const/4 v0, 0x0

    new-array v1, v0, [B

    .line 333
    .local v1, "randomLockSeed":[B
    :try_start_47
    const-string v2, "SHA1PRNG"

    invoke-static {v2}, Ljava/security/SecureRandom;->getInstance(Ljava/lang/String;)Ljava/security/SecureRandom;

    move-result-object v2

    const/16 v3, 0x28

    invoke-virtual {v2, v3}, Ljava/security/SecureRandom;->generateSeed(I)[B

    move-result-object v2
    :try_end_53
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_47 .. :try_end_53} :catch_8f
    .catch Landroid/os/RemoteException; {:try_start_47 .. :try_end_53} :catch_8f

    move-object v13, v2

    .line 334
    .end local v1  # "randomLockSeed":[B
    .local v13, "randomLockSeed":[B
    :try_start_54
    invoke-static {v13}, Llibcore/util/HexEncoding;->encode([B)[C

    move-result-object v1

    move-object v14, v1

    .line 335
    .local v14, "newPasswordChars":[C
    array-length v1, v14

    new-array v1, v1, [B

    move-object v15, v1

    .line 336
    .local v15, "newPassword":[B
    move v1, v0

    .local v1, "i":I
    :goto_5e
    array-length v2, v14

    if-ge v1, v2, :cond_69

    .line 337
    aget-char v2, v14, v1

    int-to-byte v2, v2

    aput-byte v2, v15, v1

    .line 336
    add-int/lit8 v1, v1, 0x1

    goto :goto_5e

    .line 339
    .end local v1  # "i":I
    :cond_69
    invoke-static {v14, v0}, Ljava/util/Arrays;->fill([CC)V

    .line 340
    const/high16 v16, 0x50000

    .line 341
    .local v16, "quality":I
    const/4 v3, 0x2

    const/high16 v5, 0x50000

    const/4 v7, 0x0

    const/4 v8, 0x1

    move-object/from16 v1, p0

    move-object v2, v15

    move-object/from16 v4, p2

    move/from16 v6, p1

    invoke-direct/range {v1 .. v8}, Lcom/android/server/locksettings/LockSettingsService;->setLockCredentialInternal([BI[BIIZZ)V

    .line 346
    const-string/jumbo v1, "lockscreen.password_type"

    const-wide/32 v2, 0x50000

    invoke-virtual {v9, v1, v2, v3, v10}, Lcom/android/server/locksettings/LockSettingsService;->setLong(Ljava/lang/String;JI)V

    .line 347
    invoke-virtual {v9, v10, v15}, Lcom/android/server/locksettings/LockSettingsService;->tieProfileLockToParent(I[B)V

    .line 348
    invoke-static {v15, v0}, Ljava/util/Arrays;->fill([BB)V
    :try_end_8c
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_54 .. :try_end_8c} :catch_8d
    .catch Landroid/os/RemoteException; {:try_start_54 .. :try_end_8c} :catch_8d

    .line 352
    .end local v14  # "newPasswordChars":[C
    .end local v15  # "newPassword":[B
    .end local v16  # "quality":I
    goto :goto_96

    .line 349
    :catch_8d
    move-exception v0

    goto :goto_91

    .end local v13  # "randomLockSeed":[B
    .local v1, "randomLockSeed":[B
    :catch_8f
    move-exception v0

    move-object v13, v1

    .line 350
    .end local v1  # "randomLockSeed":[B
    .local v0, "e":Ljava/lang/Exception;
    .restart local v13  # "randomLockSeed":[B
    :goto_91
    const-string v1, "Fail to tie managed profile"

    invoke-static {v11, v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 353
    .end local v0  # "e":Ljava/lang/Exception;
    :goto_96
    return-void

    .line 326
    .end local v13  # "randomLockSeed":[B
    :catch_97
    move-exception v0

    .line 327
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "Failed to talk to GateKeeper service"

    invoke-static {v11, v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 328
    return-void
.end method

.method protected tieProfileLockToParent(I[B)V
    .registers 15
    .param p1, "userId"  # I
    .param p2, "password"  # [B
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 1607
    const-string v0, "NoPadding"

    const-string v1, "GCM"

    const-string/jumbo v2, "profile_key_name_encrypt_"

    :try_start_7
    const-string v3, "AES"

    invoke-static {v3}, Ljavax/crypto/KeyGenerator;->getInstance(Ljava/lang/String;)Ljavax/crypto/KeyGenerator;

    move-result-object v3

    .line 1608
    .local v3, "keyGenerator":Ljavax/crypto/KeyGenerator;
    new-instance v4, Ljava/security/SecureRandom;

    invoke-direct {v4}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {v3, v4}, Ljavax/crypto/KeyGenerator;->init(Ljava/security/SecureRandom;)V

    .line 1609
    invoke-virtual {v3}, Ljavax/crypto/KeyGenerator;->generateKey()Ljavax/crypto/SecretKey;

    move-result-object v4

    .line 1610
    .local v4, "secretKey":Ljavax/crypto/SecretKey;
    const-string v5, "AndroidKeyStore"

    invoke-static {v5}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v5

    .line 1611
    .local v5, "keyStore":Ljava/security/KeyStore;
    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljava/security/KeyStore;->load(Ljava/security/KeyStore$LoadStoreParameter;)V
    :try_end_23
    .catch Ljava/security/cert/CertificateException; {:try_start_7 .. :try_end_23} :catch_121
    .catch Ljava/security/UnrecoverableKeyException; {:try_start_7 .. :try_end_23} :catch_121
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_23} :catch_121
    .catch Ljavax/crypto/BadPaddingException; {:try_start_7 .. :try_end_23} :catch_121
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_7 .. :try_end_23} :catch_121
    .catch Ljava/security/KeyStoreException; {:try_start_7 .. :try_end_23} :catch_121
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_7 .. :try_end_23} :catch_121
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_7 .. :try_end_23} :catch_121
    .catch Ljava/security/InvalidKeyException; {:try_start_7 .. :try_end_23} :catch_121

    .line 1613
    :try_start_23
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/security/KeyStore$SecretKeyEntry;

    invoke-direct {v8, v4}, Ljava/security/KeyStore$SecretKeyEntry;-><init>(Ljavax/crypto/SecretKey;)V

    new-instance v9, Landroid/security/keystore/KeyProtection$Builder;

    const/4 v10, 0x1

    invoke-direct {v9, v10}, Landroid/security/keystore/KeyProtection$Builder;-><init>(I)V

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v11

    .line 1617
    invoke-virtual {v9, v11}, Landroid/security/keystore/KeyProtection$Builder;->setBlockModes([Ljava/lang/String;)Landroid/security/keystore/KeyProtection$Builder;

    move-result-object v9

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v11

    .line 1618
    invoke-virtual {v9, v11}, Landroid/security/keystore/KeyProtection$Builder;->setEncryptionPaddings([Ljava/lang/String;)Landroid/security/keystore/KeyProtection$Builder;

    move-result-object v9

    .line 1619
    invoke-virtual {v9}, Landroid/security/keystore/KeyProtection$Builder;->build()Landroid/security/keystore/KeyProtection;

    move-result-object v9

    .line 1613
    invoke-virtual {v5, v7, v8, v9}, Ljava/security/KeyStore;->setEntry(Ljava/lang/String;Ljava/security/KeyStore$Entry;Ljava/security/KeyStore$ProtectionParameter;)V

    .line 1620
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "profile_key_name_decrypt_"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/security/KeyStore$SecretKeyEntry;

    invoke-direct {v8, v4}, Ljava/security/KeyStore$SecretKeyEntry;-><init>(Ljavax/crypto/SecretKey;)V

    new-instance v9, Landroid/security/keystore/KeyProtection$Builder;

    const/4 v11, 0x2

    invoke-direct {v9, v11}, Landroid/security/keystore/KeyProtection$Builder;-><init>(I)V

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    .line 1624
    invoke-virtual {v9, v1}, Landroid/security/keystore/KeyProtection$Builder;->setBlockModes([Ljava/lang/String;)Landroid/security/keystore/KeyProtection$Builder;

    move-result-object v1

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    .line 1625
    invoke-virtual {v1, v0}, Landroid/security/keystore/KeyProtection$Builder;->setEncryptionPaddings([Ljava/lang/String;)Landroid/security/keystore/KeyProtection$Builder;

    move-result-object v0

    .line 1626
    invoke-virtual {v0, v10}, Landroid/security/keystore/KeyProtection$Builder;->setUserAuthenticationRequired(Z)Landroid/security/keystore/KeyProtection$Builder;

    move-result-object v0

    const/16 v1, 0x1e

    .line 1627
    invoke-virtual {v0, v1}, Landroid/security/keystore/KeyProtection$Builder;->setUserAuthenticationValidityDurationSeconds(I)Landroid/security/keystore/KeyProtection$Builder;

    move-result-object v0

    .line 1628
    invoke-virtual {v0, v10}, Landroid/security/keystore/KeyProtection$Builder;->setCriticalToDeviceEncryption(Z)Landroid/security/keystore/KeyProtection$Builder;

    move-result-object v0

    .line 1629
    invoke-virtual {v0}, Landroid/security/keystore/KeyProtection$Builder;->build()Landroid/security/keystore/KeyProtection;

    move-result-object v0

    .line 1620
    invoke-virtual {v5, v7, v8, v0}, Ljava/security/KeyStore;->setEntry(Ljava/lang/String;Ljava/security/KeyStore$Entry;Ljava/security/KeyStore$ProtectionParameter;)V

    .line 1631
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0, v6}, Ljava/security/KeyStore;->getKey(Ljava/lang/String;[C)Ljava/security/Key;

    move-result-object v0

    check-cast v0, Ljavax/crypto/SecretKey;

    .line 1633
    .local v0, "keyStoreEncryptionKey":Ljavax/crypto/SecretKey;
    const-string v1, "AES/GCM/NoPadding"

    invoke-static {v1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v1

    .line 1636
    .local v1, "cipher":Ljavax/crypto/Cipher;
    invoke-virtual {v1, v10, v0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 1637
    invoke-virtual {v1, p2}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v6

    .line 1638
    .local v6, "encryptionResult":[B
    invoke-virtual {v1}, Ljavax/crypto/Cipher;->getIV()[B

    move-result-object v7
    :try_end_bc
    .catchall {:try_start_23 .. :try_end_bc} :catchall_10d

    move-object v0, v7

    .line 1641
    .end local v1  # "cipher":Ljavax/crypto/Cipher;
    .local v0, "iv":[B
    :try_start_bd
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/security/KeyStore;->deleteEntry(Ljava/lang/String;)V
    :try_end_cf
    .catch Ljava/security/cert/CertificateException; {:try_start_bd .. :try_end_cf} :catch_121
    .catch Ljava/security/UnrecoverableKeyException; {:try_start_bd .. :try_end_cf} :catch_121
    .catch Ljava/io/IOException; {:try_start_bd .. :try_end_cf} :catch_121
    .catch Ljavax/crypto/BadPaddingException; {:try_start_bd .. :try_end_cf} :catch_121
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_bd .. :try_end_cf} :catch_121
    .catch Ljava/security/KeyStoreException; {:try_start_bd .. :try_end_cf} :catch_121
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_bd .. :try_end_cf} :catch_121
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_bd .. :try_end_cf} :catch_121
    .catch Ljava/security/InvalidKeyException; {:try_start_bd .. :try_end_cf} :catch_121

    .line 1642
    nop

    .line 1647
    .end local v3  # "keyGenerator":Ljavax/crypto/KeyGenerator;
    .end local v4  # "secretKey":Ljavax/crypto/SecretKey;
    .end local v5  # "keyStore":Ljava/security/KeyStore;
    nop

    .line 1648
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1650
    .local v1, "outputStream":Ljava/io/ByteArrayOutputStream;
    :try_start_d6
    array-length v2, v0

    const/16 v3, 0xc

    if-ne v2, v3, :cond_ec

    .line 1653
    invoke-virtual {v1, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 1654
    invoke-virtual {v1, v6}, Ljava/io/ByteArrayOutputStream;->write([B)V
    :try_end_e1
    .catch Ljava/io/IOException; {:try_start_d6 .. :try_end_e1} :catch_104

    .line 1657
    nop

    .line 1658
    iget-object v2, p0, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    invoke-virtual {v2, p1, v3}, Lcom/android/server/locksettings/LockSettingsStorage;->writeChildProfileLock(I[B)V

    .line 1659
    return-void

    .line 1651
    :cond_ec
    :try_start_ec
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid iv length: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .end local v0  # "iv":[B
    .end local v1  # "outputStream":Ljava/io/ByteArrayOutputStream;
    .end local v6  # "encryptionResult":[B
    .end local p0  # "this":Lcom/android/server/locksettings/LockSettingsService;
    .end local p1  # "userId":I
    .end local p2  # "password":[B
    throw v2
    :try_end_104
    .catch Ljava/io/IOException; {:try_start_ec .. :try_end_104} :catch_104

    .line 1655
    .restart local v0  # "iv":[B
    .restart local v1  # "outputStream":Ljava/io/ByteArrayOutputStream;
    .restart local v6  # "encryptionResult":[B
    .restart local p0  # "this":Lcom/android/server/locksettings/LockSettingsService;
    .restart local p1  # "userId":I
    .restart local p2  # "password":[B
    :catch_104
    move-exception v2

    .line 1656
    .local v2, "e":Ljava/io/IOException;
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "Failed to concatenate byte arrays"

    invoke-direct {v3, v4, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 1641
    .end local v0  # "iv":[B
    .end local v1  # "outputStream":Ljava/io/ByteArrayOutputStream;
    .end local v2  # "e":Ljava/io/IOException;
    .end local v6  # "encryptionResult":[B
    .restart local v3  # "keyGenerator":Ljavax/crypto/KeyGenerator;
    .restart local v4  # "secretKey":Ljavax/crypto/SecretKey;
    .restart local v5  # "keyStore":Ljava/security/KeyStore;
    :catchall_10d
    move-exception v0

    :try_start_10e
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/security/KeyStore;->deleteEntry(Ljava/lang/String;)V

    .end local p0  # "this":Lcom/android/server/locksettings/LockSettingsService;
    .end local p1  # "userId":I
    .end local p2  # "password":[B
    throw v0
    :try_end_121
    .catch Ljava/security/cert/CertificateException; {:try_start_10e .. :try_end_121} :catch_121
    .catch Ljava/security/UnrecoverableKeyException; {:try_start_10e .. :try_end_121} :catch_121
    .catch Ljava/io/IOException; {:try_start_10e .. :try_end_121} :catch_121
    .catch Ljavax/crypto/BadPaddingException; {:try_start_10e .. :try_end_121} :catch_121
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_10e .. :try_end_121} :catch_121
    .catch Ljava/security/KeyStoreException; {:try_start_10e .. :try_end_121} :catch_121
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_10e .. :try_end_121} :catch_121
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_10e .. :try_end_121} :catch_121
    .catch Ljava/security/InvalidKeyException; {:try_start_10e .. :try_end_121} :catch_121

    .line 1643
    .end local v3  # "keyGenerator":Ljavax/crypto/KeyGenerator;
    .end local v4  # "secretKey":Ljavax/crypto/SecretKey;
    .end local v5  # "keyStore":Ljava/security/KeyStore;
    .restart local p0  # "this":Lcom/android/server/locksettings/LockSettingsService;
    .restart local p1  # "userId":I
    .restart local p2  # "password":[B
    :catch_121
    move-exception v0

    .line 1646
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Failed to encrypt key"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public unregisterStrongAuthTracker(Landroid/app/trust/IStrongAuthTracker;)V
    .registers 3
    .param p1, "tracker"  # Landroid/app/trust/IStrongAuthTracker;

    .line 2196
    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lcom/android/server/locksettings/LockSettingsService;->checkPasswordReadPermission(I)V

    .line 2197
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mStrongAuth:Lcom/android/server/locksettings/LockSettingsStrongAuth;

    invoke-virtual {v0, p1}, Lcom/android/server/locksettings/LockSettingsStrongAuth;->unregisterStrongAuthTracker(Landroid/app/trust/IStrongAuthTracker;)V

    .line 2198
    return-void
.end method

.method public userPresent(I)V
    .registers 3
    .param p1, "userId"  # I

    .line 2208
    invoke-direct {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->checkWritePermission(I)V

    .line 2209
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mStrongAuth:Lcom/android/server/locksettings/LockSettingsStrongAuth;

    invoke-virtual {v0, p1}, Lcom/android/server/locksettings/LockSettingsStrongAuth;->reportUnlock(I)V

    .line 2210
    return-void
.end method

.method public verifyCredential([BIJI)Lcom/android/internal/widget/VerifyCredentialResponse;
    .registers 14
    .param p1, "credential"  # [B
    .param p2, "type"  # I
    .param p3, "challenge"  # J
    .param p5, "userId"  # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1838
    invoke-direct {p0, p5}, Lcom/android/server/locksettings/LockSettingsService;->checkPasswordReadPermission(I)V

    .line 1839
    const/4 v3, 0x1

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-wide v4, p3

    move v6, p5

    invoke-direct/range {v0 .. v7}, Lcom/android/server/locksettings/LockSettingsService;->doVerifyCredential([BIZJILcom/android/internal/widget/ICheckCredentialProgressCallback;)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object v0

    return-object v0
.end method

.method public verifyTiedProfileChallenge([BIJI)Lcom/android/internal/widget/VerifyCredentialResponse;
    .registers 19
    .param p1, "credential"  # [B
    .param p2, "type"  # I
    .param p3, "challenge"  # J
    .param p5, "userId"  # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1916
    move-object v9, p0

    move/from16 v10, p5

    invoke-direct {p0, v10}, Lcom/android/server/locksettings/LockSettingsService;->checkPasswordReadPermission(I)V

    .line 1917
    invoke-direct {p0, v10}, Lcom/android/server/locksettings/LockSettingsService;->isManagedProfileWithUnifiedLock(I)Z

    move-result v0

    if-eqz v0, :cond_48

    .line 1920
    iget-object v0, v9, Lcom/android/server/locksettings/LockSettingsService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0, v10}, Landroid/os/UserManager;->getProfileParent(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    iget v11, v0, Landroid/content/pm/UserInfo;->id:I

    .line 1922
    .local v11, "parentProfileId":I
    const/4 v4, 0x1

    const/4 v8, 0x0

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-wide/from16 v5, p3

    move v7, v11

    invoke-direct/range {v1 .. v8}, Lcom/android/server/locksettings/LockSettingsService;->doVerifyCredential([BIZJILcom/android/internal/widget/ICheckCredentialProgressCallback;)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object v12

    .line 1929
    .local v12, "parentResponse":Lcom/android/internal/widget/VerifyCredentialResponse;
    invoke-virtual {v12}, Lcom/android/internal/widget/VerifyCredentialResponse;->getResponseCode()I

    move-result v0

    if-eqz v0, :cond_27

    .line 1931
    return-object v12

    .line 1936
    :cond_27
    :try_start_27
    invoke-virtual {p0, v10}, Lcom/android/server/locksettings/LockSettingsService;->getDecryptedPasswordForTiedProfile(I)[B

    move-result-object v2

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v8, 0x0

    move-object v1, p0

    move-wide/from16 v5, p3

    move/from16 v7, p5

    invoke-direct/range {v1 .. v8}, Lcom/android/server/locksettings/LockSettingsService;->doVerifyCredential([BIZJILcom/android/internal/widget/ICheckCredentialProgressCallback;)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object v0
    :try_end_37
    .catch Ljava/security/UnrecoverableKeyException; {:try_start_27 .. :try_end_37} :catch_38
    .catch Ljava/security/InvalidKeyException; {:try_start_27 .. :try_end_37} :catch_38
    .catch Ljava/security/KeyStoreException; {:try_start_27 .. :try_end_37} :catch_38
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_27 .. :try_end_37} :catch_38
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_27 .. :try_end_37} :catch_38
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_27 .. :try_end_37} :catch_38
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_27 .. :try_end_37} :catch_38
    .catch Ljavax/crypto/BadPaddingException; {:try_start_27 .. :try_end_37} :catch_38
    .catch Ljava/security/cert/CertificateException; {:try_start_27 .. :try_end_37} :catch_38
    .catch Ljava/io/IOException; {:try_start_27 .. :try_end_37} :catch_38

    return-object v0

    .line 1941
    :catch_38
    move-exception v0

    .line 1945
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "LockSettingsService"

    const-string v2, "Failed to decrypt child profile key"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1946
    new-instance v1, Landroid/os/RemoteException;

    const-string v2, "Unable to get tied profile token"

    invoke-direct {v1, v2}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1918
    .end local v0  # "e":Ljava/lang/Exception;
    .end local v11  # "parentProfileId":I
    .end local v12  # "parentResponse":Lcom/android/internal/widget/VerifyCredentialResponse;
    :cond_48
    new-instance v0, Landroid/os/RemoteException;

    const-string v1, "User id must be managed profile with unified lock"

    invoke-direct {v0, v1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
