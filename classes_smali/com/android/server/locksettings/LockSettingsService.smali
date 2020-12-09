.class public Lcom/android/server/locksettings/LockSettingsService;
.super Lcom/android/internal/widget/ILockSettings$Stub;
.source "LockSettingsService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/locksettings/LockSettingsService$LocalService;,
        Lcom/android/server/locksettings/LockSettingsService$DeviceProvisionedObserver;,
        Lcom/android/server/locksettings/LockSettingsService$GateKeeperDiedRecipient;,
        Lcom/android/server/locksettings/LockSettingsService$Injector;,
        Lcom/android/server/locksettings/LockSettingsService$PendingResetLockout;,
        Lcom/android/server/locksettings/LockSettingsService$SynchronizedStrongAuthTracker;,
        Lcom/android/server/locksettings/LockSettingsService$Lifecycle;,
        Lcom/android/server/locksettings/LockSettingsService$ChallengeType;
    }
.end annotation


# static fields
.field private static final CHALLENGE_FROM_CALLER:I = 0x1

.field private static final CHALLENGE_INTERNAL:I = 0x2

.field private static final CHALLENGE_NONE:I = 0x0

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

.field private mFirstCallToVold:Z

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
    .registers 20

    .line 214
    const-string v0, "default_password"

    sput-object v0, Lcom/android/server/locksettings/LockSettingsService;->mSavePassword:Ljava/lang/String;

    .line 227
    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_5c

    sput-object v0, Lcom/android/server/locksettings/LockSettingsService;->SYSTEM_CREDENTIAL_UIDS:[I

    .line 2384
    const-string v1, "lockscreen.lockedoutpermanently"

    const-string v2, "lockscreen.patterneverchosen"

    const-string v3, "lockscreen.password_type"

    const-string v4, "lockscreen.password_type_alternate"

    const-string v5, "lockscreen.password_salt"

    const-string v6, "lockscreen.disabled"

    const-string v7, "lockscreen.options"

    const-string v8, "lockscreen.biometric_weak_fallback"

    const-string v9, "lockscreen.biometricweakeverchosen"

    const-string v10, "lockscreen.power_button_instantly_locks"

    const-string v11, "lockscreen.passwordhistory"

    const-string v12, "lock_pattern_autolock"

    const-string v13, "lock_biometric_weak_flags"

    const-string v14, "lock_pattern_visible_pattern"

    const-string v15, "lock_pattern_tactile_feedback_enabled"

    const-string v16, "lock_screen_pass_to_security_view"

    const-string v17, "lock_pattern_size"

    const-string v18, "lock_pattern_dotsvisible"

    const-string v19, "lock_pattern_show_error_path"

    filled-new-array/range {v1 .. v19}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/locksettings/LockSettingsService;->VALID_SETTINGS:[Ljava/lang/String;

    .line 2407
    const-string v0, "lock_screen_owner_info"

    const-string v1, "lock_screen_owner_info_enabled"

    filled-new-array {v1, v0}, [Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/android/server/locksettings/LockSettingsService;->READ_CONTACTS_PROTECTED_SETTINGS:[Ljava/lang/String;

    .line 2413
    const-string v2, "lockscreen.password_salt"

    const-string v3, "lockscreen.passwordhistory"

    const-string v4, "lockscreen.password_type"

    const-string v5, "lockscreen.profilechallenge"

    filled-new-array {v2, v3, v4, v5}, [Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/android/server/locksettings/LockSettingsService;->READ_PASSWORD_PROTECTED_SETTINGS:[Ljava/lang/String;

    .line 2420
    const-string v2, "lock_pattern_visible_pattern"

    const-string v3, "lockscreen.power_button_instantly_locks"

    filled-new-array {v1, v0, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/locksettings/LockSettingsService;->SETTINGS_TO_BACKUP:[Ljava/lang/String;

    return-void

    nop

    :array_5c
    .array-data 4
        0x3f2
        0x3f8
        0x0
        0x3e8
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 466
    new-instance v0, Lcom/android/server/locksettings/LockSettingsService$Injector;

    invoke-direct {v0, p1}, Lcom/android/server/locksettings/LockSettingsService$Injector;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, v0}, Lcom/android/server/locksettings/LockSettingsService;-><init>(Lcom/android/server/locksettings/LockSettingsService$Injector;)V

    .line 467
    return-void
.end method

.method protected constructor <init>(Lcom/android/server/locksettings/LockSettingsService$Injector;)V
    .registers 9
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 470
    invoke-direct {p0}, Lcom/android/internal/widget/ILockSettings$Stub;-><init>()V

    .line 191
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mSeparateChallengeLock:Ljava/lang/Object;

    .line 194
    new-instance v0, Lcom/android/server/locksettings/LockSettingsService$DeviceProvisionedObserver;

    invoke-direct {v0, p0}, Lcom/android/server/locksettings/LockSettingsService$DeviceProvisionedObserver;-><init>(Lcom/android/server/locksettings/LockSettingsService;)V

    iput-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mDeviceProvisionedObserver:Lcom/android/server/locksettings/LockSettingsService$DeviceProvisionedObserver;

    .line 673
    new-instance v0, Lcom/android/server/locksettings/LockSettingsService$2;

    invoke-direct {v0, p0}, Lcom/android/server/locksettings/LockSettingsService$2;-><init>(Lcom/android/server/locksettings/LockSettingsService;)V

    iput-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 2460
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpCache:Landroid/util/SparseArray;

    .line 471
    iput-object p1, p0, Lcom/android/server/locksettings/LockSettingsService;->mInjector:Lcom/android/server/locksettings/LockSettingsService$Injector;

    .line 472
    invoke-virtual {p1}, Lcom/android/server/locksettings/LockSettingsService$Injector;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mContext:Landroid/content/Context;

    .line 473
    invoke-virtual {p1}, Lcom/android/server/locksettings/LockSettingsService$Injector;->getKeyStore()Landroid/security/KeyStore;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mKeyStore:Landroid/security/KeyStore;

    .line 474
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mKeyStore:Landroid/security/KeyStore;

    invoke-virtual {p1, v0}, Lcom/android/server/locksettings/LockSettingsService$Injector;->getRecoverableKeyStoreManager(Landroid/security/KeyStore;)Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mRecoverableKeyStoreManager:Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;

    .line 475
    invoke-virtual {p1}, Lcom/android/server/locksettings/LockSettingsService$Injector;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mHandler:Landroid/os/Handler;

    .line 476
    invoke-virtual {p1}, Lcom/android/server/locksettings/LockSettingsService$Injector;->getStrongAuth()Lcom/android/server/locksettings/LockSettingsStrongAuth;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mStrongAuth:Lcom/android/server/locksettings/LockSettingsStrongAuth;

    .line 477
    invoke-virtual {p1}, Lcom/android/server/locksettings/LockSettingsService$Injector;->getActivityManager()Landroid/app/IActivityManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mActivityManager:Landroid/app/IActivityManager;

    .line 479
    invoke-virtual {p1}, Lcom/android/server/locksettings/LockSettingsService$Injector;->getLockPatternUtils()Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 480
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mFirstCallToVold:Z

    .line 482
    new-instance v4, Landroid/content/IntentFilter;

    invoke-direct {v4}, Landroid/content/IntentFilter;-><init>()V

    .line 483
    const-string v0, "android.intent.action.USER_ADDED"

    invoke-virtual {v4, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 484
    const-string v0, "android.intent.action.USER_STARTING"

    invoke-virtual {v4, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 485
    const-string v0, "android.intent.action.USER_REMOVED"

    invoke-virtual {v4, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 486
    invoke-virtual {p1}, Lcom/android/server/locksettings/LockSettingsService$Injector;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/locksettings/LockSettingsService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 489
    invoke-virtual {p1}, Lcom/android/server/locksettings/LockSettingsService$Injector;->getStorage()Lcom/android/server/locksettings/LockSettingsStorage;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    .line 490
    invoke-virtual {p1}, Lcom/android/server/locksettings/LockSettingsService$Injector;->getNotificationManager()Landroid/app/NotificationManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mNotificationManager:Landroid/app/NotificationManager;

    .line 491
    invoke-virtual {p1}, Lcom/android/server/locksettings/LockSettingsService$Injector;->getUserManager()Landroid/os/UserManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mUserManager:Landroid/os/UserManager;

    .line 492
    invoke-virtual {p1}, Lcom/android/server/locksettings/LockSettingsService$Injector;->getStorageManager()Landroid/os/storage/IStorageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mStorageManager:Landroid/os/storage/IStorageManager;

    .line 493
    invoke-virtual {p1}, Lcom/android/server/locksettings/LockSettingsService$Injector;->getStrongAuthTracker()Lcom/android/server/locksettings/LockSettingsService$SynchronizedStrongAuthTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mStrongAuthTracker:Lcom/android/server/locksettings/LockSettingsService$SynchronizedStrongAuthTracker;

    .line 494
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mStrongAuthTracker:Lcom/android/server/locksettings/LockSettingsService$SynchronizedStrongAuthTracker;

    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsService;->mStrongAuth:Lcom/android/server/locksettings/LockSettingsStrongAuth;

    invoke-virtual {v0, v1}, Lcom/android/server/locksettings/LockSettingsService$SynchronizedStrongAuthTracker;->register(Lcom/android/server/locksettings/LockSettingsStrongAuth;)V

    .line 496
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    invoke-virtual {p1, v0}, Lcom/android/server/locksettings/LockSettingsService$Injector;->getSyntheticPasswordManager(Lcom/android/server/locksettings/LockSettingsStorage;)Lcom/android/server/locksettings/SyntheticPasswordManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    .line 498
    const-class p1, Lcom/android/internal/widget/LockSettingsInternal;

    new-instance v0, Lcom/android/server/locksettings/LockSettingsService$LocalService;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/locksettings/LockSettingsService$LocalService;-><init>(Lcom/android/server/locksettings/LockSettingsService;Lcom/android/server/locksettings/LockSettingsService$1;)V

    invoke-static {p1, v0}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 499
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/locksettings/LockSettingsService;)V
    .registers 1

    .line 166
    invoke-direct {p0}, Lcom/android/server/locksettings/LockSettingsService;->migrateOldDataAfterSystemReady()V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/server/locksettings/LockSettingsService;)Landroid/content/Context;
    .registers 1

    .line 166
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/android/server/locksettings/LockSettingsService;[BILcom/android/internal/widget/LockPatternUtils$EscrowTokenStateChangeCallback;)J
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 166
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/locksettings/LockSettingsService;->addEscrowToken([BILcom/android/internal/widget/LockPatternUtils$EscrowTokenStateChangeCallback;)J

    move-result-wide p0

    return-wide p0
.end method

.method static synthetic access$1200(Lcom/android/server/locksettings/LockSettingsService;JI)Z
    .registers 4

    .line 166
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/locksettings/LockSettingsService;->removeEscrowToken(JI)Z

    move-result p0

    return p0
.end method

.method static synthetic access$1300(Lcom/android/server/locksettings/LockSettingsService;JI)Z
    .registers 4

    .line 166
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/locksettings/LockSettingsService;->isEscrowTokenActive(JI)Z

    move-result p0

    return p0
.end method

.method static synthetic access$1400(Lcom/android/server/locksettings/LockSettingsService;)Lcom/android/internal/widget/LockPatternUtils;
    .registers 1

    .line 166
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    return-object p0
.end method

.method static synthetic access$1500(Lcom/android/server/locksettings/LockSettingsService;[BIJ[BII)Z
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 166
    invoke-direct/range {p0 .. p7}, Lcom/android/server/locksettings/LockSettingsService;->setLockCredentialWithToken([BIJ[BII)Z

    move-result p0

    return p0
.end method

.method static synthetic access$1600(Lcom/android/server/locksettings/LockSettingsService;J[BI)Z
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 166
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/locksettings/LockSettingsService;->unlockUserWithToken(J[BI)Z

    move-result p0

    return p0
.end method

.method static synthetic access$200(Lcom/android/server/locksettings/LockSettingsService;I)V
    .registers 2

    .line 166
    invoke-direct {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->ensureProfileKeystoreUnlocked(I)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/locksettings/LockSettingsService;Landroid/os/UserHandle;)V
    .registers 2

    .line 166
    invoke-direct {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->hideEncryptionNotification(Landroid/os/UserHandle;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/locksettings/LockSettingsService;)Landroid/os/UserManager;
    .registers 1

    .line 166
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService;->mUserManager:Landroid/os/UserManager;

    return-object p0
.end method

.method static synthetic access$500(Lcom/android/server/locksettings/LockSettingsService;I)Z
    .registers 2

    .line 166
    invoke-direct {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->isUserSecure(I)Z

    move-result p0

    return p0
.end method

.method static synthetic access$600(Lcom/android/server/locksettings/LockSettingsService;I)V
    .registers 2

    .line 166
    invoke-direct {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->tryDeriveAuthTokenForUnsecuredPrimaryUser(I)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/server/locksettings/LockSettingsService;IZ)V
    .registers 3

    .line 166
    invoke-direct {p0, p1, p2}, Lcom/android/server/locksettings/LockSettingsService;->removeUser(IZ)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/server/locksettings/LockSettingsService;I)V
    .registers 2

    .line 166
    invoke-direct {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->tryRemoveUserFromSpCacheLater(I)V

    return-void
.end method

.method private activateEscrowTokens(Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;I)V
    .registers 12

    .line 2936
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    monitor-enter v0

    .line 2937
    :try_start_3
    invoke-direct {p0, p2}, Lcom/android/server/locksettings/LockSettingsService;->disableEscrowTokenOnNonManagedDevicesIfNeeded(I)V

    .line 2938
    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    invoke-virtual {v1, p2}, Lcom/android/server/locksettings/SyntheticPasswordManager;->getPendingTokensForUser(I)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_10
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_42

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 2939
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

    .line 2940
    iget-object v4, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    invoke-virtual {v4, v2, v3, p1, p2}, Lcom/android/server/locksettings/SyntheticPasswordManager;->activateTokenBasedSyntheticPassword(JLcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;I)Z

    .line 2941
    goto :goto_10

    .line 2942
    :cond_42
    monitor-exit v0

    .line 2943
    return-void

    .line 2942
    :catchall_44
    move-exception p1

    monitor-exit v0
    :try_end_46
    .catchall {:try_start_3 .. :try_end_46} :catchall_44

    throw p1
.end method

.method private addEscrowToken([BILcom/android/internal/widget/LockPatternUtils$EscrowTokenStateChangeCallback;)J
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2904
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    monitor-enter v0

    .line 2905
    :try_start_3
    invoke-direct {p0}, Lcom/android/server/locksettings/LockSettingsService;->enableSyntheticPasswordLocked()V

    .line 2908
    const/4 v1, 0x0

    .line 2909
    invoke-direct {p0, p2}, Lcom/android/server/locksettings/LockSettingsService;->isUserSecure(I)Z

    move-result v2

    if-nez v2, :cond_31

    .line 2910
    invoke-virtual {p0, p2}, Lcom/android/server/locksettings/LockSettingsService;->shouldMigrateToSyntheticPasswordLocked(I)Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 2911
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, -0x1

    const/4 v6, 0x0

    move-object v2, p0

    move v7, p2

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/locksettings/LockSettingsService;->initializeSyntheticPasswordLocked([B[BIII)Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;

    move-result-object v1

    goto :goto_31

    .line 2915
    :cond_1e
    invoke-direct {p0, p2}, Lcom/android/server/locksettings/LockSettingsService;->getSyntheticPasswordHandleLocked(I)J

    move-result-wide v3

    .line 2916
    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsService;->getGateKeeperService()Landroid/service/gatekeeper/IGateKeeperService;

    move-result-object v2

    const/4 v5, 0x0

    const/4 v7, 0x0

    move v6, p2

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/locksettings/SyntheticPasswordManager;->unwrapPasswordBasedSyntheticPassword(Landroid/service/gatekeeper/IGateKeeperService;J[BILcom/android/internal/widget/ICheckCredentialProgressCallback;)Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;->authToken:Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;

    .line 2920
    :cond_31
    :goto_31
    invoke-direct {p0, p2}, Lcom/android/server/locksettings/LockSettingsService;->isSyntheticPasswordBasedCredentialLocked(I)Z

    move-result v2

    if-eqz v2, :cond_4b

    .line 2921
    invoke-direct {p0, p2}, Lcom/android/server/locksettings/LockSettingsService;->disableEscrowTokenOnNonManagedDevicesIfNeeded(I)V

    .line 2922
    iget-object v2, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    invoke-virtual {v2, p2}, Lcom/android/server/locksettings/SyntheticPasswordManager;->hasEscrowData(I)Z

    move-result v2

    if-eqz v2, :cond_43

    goto :goto_4b

    .line 2923
    :cond_43
    new-instance p1, Ljava/lang/SecurityException;

    const-string p2, "Escrow token is disabled on the current user"

    invoke-direct {p1, p2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 2926
    :cond_4b
    :goto_4b
    iget-object v2, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    invoke-virtual {v2, p1, p2, p3}, Lcom/android/server/locksettings/SyntheticPasswordManager;->createTokenBasedSyntheticPassword([BILcom/android/internal/widget/LockPatternUtils$EscrowTokenStateChangeCallback;)J

    move-result-wide v2

    .line 2927
    if-eqz v1, :cond_58

    .line 2928
    iget-object p1, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    invoke-virtual {p1, v2, v3, v1, p2}, Lcom/android/server/locksettings/SyntheticPasswordManager;->activateTokenBasedSyntheticPassword(JLcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;I)Z

    .line 2930
    :cond_58
    monitor-exit v0

    return-wide v2

    .line 2931
    :catchall_5a
    move-exception p1

    monitor-exit v0
    :try_end_5c
    .catchall {:try_start_3 .. :try_end_5c} :catchall_5a

    throw p1
.end method

.method private addUserKeyAuth(I[B[B)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1787
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    .line 1788
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 1790
    :try_start_a
    iget-object v3, p0, Lcom/android/server/locksettings/LockSettingsService;->mStorageManager:Landroid/os/storage/IStorageManager;

    iget v0, v0, Landroid/content/pm/UserInfo;->serialNumber:I

    invoke-interface {v3, p1, v0, p2, p3}, Landroid/os/storage/IStorageManager;->addUserKeyAuth(II[B[B)V
    :try_end_11
    .catchall {:try_start_a .. :try_end_11} :catchall_16

    .line 1792
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1793
    nop

    .line 1794
    return-void

    .line 1792
    :catchall_16
    move-exception p1

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1
.end method

.method private checkCryptKeeperPermissions()Z
    .registers 4

    .line 1165
    nop

    .line 1167
    :try_start_1
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CRYPT_KEEPER"

    const-string/jumbo v2, "no permission to get the password"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_b
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_b} :catch_d

    .line 1172
    const/4 v0, 0x0

    goto :goto_f

    .line 1170
    :catch_d
    move-exception v0

    .line 1171
    const/4 v0, 0x1

    .line 1173
    :goto_f
    return v0
.end method

.method private final checkPasswordHavePermission(I)V
    .registers 6

    .line 955
    iget-object p1, p0, Lcom/android/server/locksettings/LockSettingsService;->mContext:Landroid/content/Context;

    const-string v0, "android.permission.ACCESS_KEYGUARD_SECURE_STORAGE"

    invoke-virtual {p1, v0}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result p1

    if-eqz p1, :cond_28

    .line 956
    const p1, 0x534e4554

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "28251513"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {}, Lcom/android/server/locksettings/LockSettingsService;->getCallingUid()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, ""

    aput-object v3, v1, v2

    invoke-static {p1, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 958
    :cond_28
    iget-object p1, p0, Lcom/android/server/locksettings/LockSettingsService;->mContext:Landroid/content/Context;

    const-string v1, "LockSettingsHave"

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 959
    return-void
.end method

.method private final checkPasswordReadPermission(I)V
    .registers 4

    .line 951
    iget-object p1, p0, Lcom/android/server/locksettings/LockSettingsService;->mContext:Landroid/content/Context;

    const-string v0, "android.permission.ACCESS_KEYGUARD_SECURE_STORAGE"

    const-string v1, "LockSettingsRead"

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 952
    return-void
.end method

.method private final checkReadPermission(Ljava/lang/String;I)V
    .registers 12

    .line 962
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 964
    const/4 v1, 0x0

    move v2, v1

    :goto_6
    sget-object v3, Lcom/android/server/locksettings/LockSettingsService;->READ_CONTACTS_PROTECTED_SETTINGS:[Ljava/lang/String;

    array-length v4, v3

    const-string v5, " for user "

    const-string v6, " to read "

    const-string v7, " needs permission "

    const-string/jumbo v8, "uid="

    if-ge v2, v4, :cond_51

    .line 965
    aget-object v3, v3, v2

    .line 966
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4e

    iget-object v3, p0, Lcom/android/server/locksettings/LockSettingsService;->mContext:Landroid/content/Context;

    const-string v4, "android.permission.READ_CONTACTS"

    invoke-virtual {v3, v4}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_27

    goto :goto_4e

    .line 968
    :cond_27
    new-instance v1, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 964
    :cond_4e
    :goto_4e
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 974
    :cond_51
    nop

    :goto_52
    sget-object v2, Lcom/android/server/locksettings/LockSettingsService;->READ_PASSWORD_PROTECTED_SETTINGS:[Ljava/lang/String;

    array-length v3, v2

    if-ge v1, v3, :cond_94

    .line 975
    aget-object v2, v2, v1

    .line 976
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_91

    iget-object v2, p0, Lcom/android/server/locksettings/LockSettingsService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.ACCESS_KEYGUARD_SECURE_STORAGE"

    invoke-virtual {v2, v3}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_6a

    goto :goto_91

    .line 978
    :cond_6a
    new-instance v1, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 974
    :cond_91
    :goto_91
    add-int/lit8 v1, v1, 0x1

    goto :goto_52

    .line 983
    :cond_94
    return-void
.end method

.method private final checkWritePermission(I)V
    .registers 4

    .line 947
    iget-object p1, p0, Lcom/android/server/locksettings/LockSettingsService;->mContext:Landroid/content/Context;

    const-string v0, "android.permission.ACCESS_KEYGUARD_SECURE_STORAGE"

    const-string v1, "LockSettingsWrite"

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 948
    return-void
.end method

.method private clearUserKeyAuth(I[B[B)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1745
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    .line 1746
    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsService;->mInjector:Lcom/android/server/locksettings/LockSettingsService$Injector;

    invoke-virtual {v1}, Lcom/android/server/locksettings/LockSettingsService$Injector;->getStorageManager()Landroid/os/storage/IStorageManager;

    move-result-object v1

    .line 1747
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1749
    :try_start_10
    iget v0, v0, Landroid/content/pm/UserInfo;->serialNumber:I

    invoke-interface {v1, p1, v0, p2, p3}, Landroid/os/storage/IStorageManager;->clearUserKeyAuth(II[B[B)V
    :try_end_15
    .catchall {:try_start_10 .. :try_end_15} :catchall_1a

    .line 1751
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1752
    nop

    .line 1753
    return-void

    .line 1751
    :catchall_1a
    move-exception p1

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1
.end method

.method private clearUserKeyProtection(I)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1740
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v0}, Lcom/android/server/locksettings/LockSettingsService;->addUserKeyAuth(I[B[B)V

    .line 1741
    return-void
.end method

.method private convertResponse(Landroid/service/gatekeeper/GateKeeperResponse;)Lcom/android/internal/widget/VerifyCredentialResponse;
    .registers 2

    .line 1632
    invoke-static {p1}, Lcom/android/internal/widget/VerifyCredentialResponse;->fromGateKeeperResponse(Landroid/service/gatekeeper/GateKeeperResponse;)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object p1

    return-object p1
.end method

.method private disableEscrowTokenOnNonManagedDevicesIfNeeded(I)V
    .registers 7

    .line 3077
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 3080
    :try_start_4
    iget-object v2, p0, Lcom/android/server/locksettings/LockSettingsService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v2, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v2
    :try_end_e
    .catchall {:try_start_4 .. :try_end_e} :catchall_84

    const-string v3, "LockSettingsService"

    if-eqz v2, :cond_1b

    .line 3081
    :try_start_12
    const-string p1, "Managed profile can have escrow token"

    invoke-static {v3, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_17
    .catchall {:try_start_12 .. :try_end_17} :catchall_84

    .line 3114
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3082
    return-void

    .line 3084
    :cond_1b
    :try_start_1b
    iget-object v2, p0, Lcom/android/server/locksettings/LockSettingsService;->mInjector:Lcom/android/server/locksettings/LockSettingsService$Injector;

    invoke-virtual {v2}, Lcom/android/server/locksettings/LockSettingsService$Injector;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v2

    .line 3086
    invoke-virtual {v2}, Landroid/app/admin/DevicePolicyManager;->getDeviceOwnerComponentOnAnyUser()Landroid/content/ComponentName;

    move-result-object v4

    if-eqz v4, :cond_30

    .line 3087
    const-string p1, "Corp-owned device can have escrow token"

    invoke-static {v3, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2c
    .catchall {:try_start_1b .. :try_end_2c} :catchall_84

    .line 3114
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3088
    return-void

    .line 3091
    :cond_30
    :try_start_30
    invoke-virtual {v2, p1}, Landroid/app/admin/DevicePolicyManager;->getProfileOwnerAsUser(I)Landroid/content/ComponentName;

    move-result-object v4

    if-eqz v4, :cond_3f

    .line 3092
    const-string p1, "User with profile owner can have escrow token"

    invoke-static {v3, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3b
    .catchall {:try_start_30 .. :try_end_3b} :catchall_84

    .line 3114
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3093
    return-void

    .line 3098
    :cond_3f
    :try_start_3f
    invoke-virtual {v2}, Landroid/app/admin/DevicePolicyManager;->isDeviceProvisioned()Z

    move-result v2

    if-nez v2, :cond_4e

    .line 3099
    const-string p1, "Postpone disabling escrow tokens until device is provisioned"

    invoke-static {v3, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4a
    .catchall {:try_start_3f .. :try_end_4a} :catchall_84

    .line 3114
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3100
    return-void

    .line 3104
    :cond_4e
    :try_start_4e
    iget-object v2, p0, Lcom/android/server/locksettings/LockSettingsService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string v4, "android.hardware.type.automotive"

    invoke-virtual {v2, v4}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v2
    :try_end_5a
    .catchall {:try_start_4e .. :try_end_5a} :catchall_84

    if-eqz v2, :cond_60

    .line 3114
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3105
    return-void

    .line 3109
    :cond_60
    :try_start_60
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Disabling escrow token on user "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3110
    invoke-direct {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->isSyntheticPasswordBasedCredentialLocked(I)Z

    move-result v2

    if-eqz v2, :cond_7f

    .line 3111
    iget-object v2, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    invoke-virtual {v2, p1}, Lcom/android/server/locksettings/SyntheticPasswordManager;->destroyEscrowData(I)V
    :try_end_7f
    .catchall {:try_start_60 .. :try_end_7f} :catchall_84

    .line 3114
    :cond_7f
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3115
    nop

    .line 3116
    return-void

    .line 3114
    :catchall_84
    move-exception p1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1
.end method

.method private doVerifyCredential([BIIJILcom/android/internal/widget/ICheckCredentialProgressCallback;)Lcom/android/internal/widget/VerifyCredentialResponse;
    .registers 17
    .param p3  # I
        .annotation build Lcom/android/server/locksettings/LockSettingsService$ChallengeType;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1880
    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-wide v4, p4

    move v6, p6

    move-object/from16 v7, p7

    invoke-direct/range {v0 .. v8}, Lcom/android/server/locksettings/LockSettingsService;->doVerifyCredential([BIIJILcom/android/internal/widget/ICheckCredentialProgressCallback;Ljava/util/ArrayList;)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object v0

    return-object v0
.end method

.method private doVerifyCredential([BIIJILcom/android/internal/widget/ICheckCredentialProgressCallback;Ljava/util/ArrayList;)Lcom/android/internal/widget/VerifyCredentialResponse;
    .registers 24
    .param p3  # I
        .annotation build Lcom/android/server/locksettings/LockSettingsService$ChallengeType;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BIIJI",
            "Lcom/android/internal/widget/ICheckCredentialProgressCallback;",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/locksettings/LockSettingsService$PendingResetLockout;",
            ">;)",
            "Lcom/android/internal/widget/VerifyCredentialResponse;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1892
    move-object v8, p0

    move-object/from16 v9, p1

    move/from16 v0, p2

    move/from16 v10, p6

    if-eqz v9, :cond_b0

    array-length v1, v9

    if-eqz v1, :cond_b0

    .line 1895
    const/4 v1, 0x0

    const/16 v2, -0x270f

    const-string v3, "LockSettingsService"

    if-ne v10, v2, :cond_29

    iget-object v4, v8, Lcom/android/server/locksettings/LockSettingsService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "device_provisioned"

    invoke-static {v4, v5, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_29

    .line 1897
    const-string v0, "FRP credential can only be verified prior to provisioning."

    invoke-static {v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1898
    sget-object v0, Lcom/android/internal/widget/VerifyCredentialResponse;->ERROR:Lcom/android/internal/widget/VerifyCredentialResponse;

    return-object v0

    .line 1900
    :cond_29
    nop

    .line 1901
    invoke-direct/range {p0 .. p8}, Lcom/android/server/locksettings/LockSettingsService;->spBasedDoVerifyCredential([BIIJILcom/android/internal/widget/ICheckCredentialProgressCallback;Ljava/util/ArrayList;)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object v4

    .line 1904
    if-eqz v4, :cond_3a

    .line 1905
    invoke-virtual {v4}, Lcom/android/internal/widget/VerifyCredentialResponse;->getResponseCode()I

    move-result v1

    if-nez v1, :cond_39

    .line 1906
    invoke-direct {p0, v0, v9, v10}, Lcom/android/server/locksettings/LockSettingsService;->sendCredentialsOnUnlockIfRequired(I[BI)V

    .line 1908
    :cond_39
    return-object v4

    .line 1911
    :cond_3a
    if-ne v10, v2, :cond_44

    .line 1912
    const-string v0, "Unexpected FRP credential type, should be SP based."

    invoke-static {v3, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 1913
    sget-object v0, Lcom/android/internal/widget/VerifyCredentialResponse;->ERROR:Lcom/android/internal/widget/VerifyCredentialResponse;

    return-object v0

    .line 1916
    :cond_44
    iget-object v2, v8, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    invoke-virtual {v2, v10}, Lcom/android/server/locksettings/LockSettingsStorage;->readCredentialHash(I)Lcom/android/server/locksettings/LockSettingsStorage$CredentialHash;

    move-result-object v11

    .line 1917
    iget v2, v11, Lcom/android/server/locksettings/LockSettingsStorage$CredentialHash;->type:I

    if-eq v2, v0, :cond_6f

    .line 1918
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "doVerifyCredential type mismatch with stored credential?? stored: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v11, Lcom/android/server/locksettings/LockSettingsStorage$CredentialHash;->type:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " passed in: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 1920
    sget-object v0, Lcom/android/internal/widget/VerifyCredentialResponse;->ERROR:Lcom/android/internal/widget/VerifyCredentialResponse;

    return-object v0

    .line 1923
    :cond_6f
    iget v0, v11, Lcom/android/server/locksettings/LockSettingsStorage$CredentialHash;->type:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_7a

    iget-boolean v0, v11, Lcom/android/server/locksettings/LockSettingsStorage$CredentialHash;->isBaseZeroPattern:Z

    if-eqz v0, :cond_7a

    move v12, v2

    goto :goto_7b

    :cond_7a
    move v12, v1

    .line 1927
    :goto_7b
    if-eqz v12, :cond_83

    .line 1928
    invoke-static/range {p1 .. p1}, Lcom/android/internal/widget/LockPatternUtils;->patternByteArrayToBaseZero([B)[B

    move-result-object v0

    move-object v13, v0

    goto :goto_84

    .line 1930
    :cond_83
    move-object v13, v9

    .line 1933
    :goto_84
    move-object v0, p0

    move/from16 v1, p6

    move-object v2, v11

    move-object v3, v13

    move/from16 v4, p3

    move-wide/from16 v5, p4

    move-object/from16 v7, p7

    invoke-direct/range {v0 .. v7}, Lcom/android/server/locksettings/LockSettingsService;->verifyCredential(ILcom/android/server/locksettings/LockSettingsStorage$CredentialHash;[BIJLcom/android/internal/widget/ICheckCredentialProgressCallback;)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object v14

    .line 1936
    invoke-virtual {v14}, Lcom/android/internal/widget/VerifyCredentialResponse;->getResponseCode()I

    move-result v0

    if-nez v0, :cond_af

    .line 1937
    iget-object v0, v8, Lcom/android/server/locksettings/LockSettingsService;->mStrongAuth:Lcom/android/server/locksettings/LockSettingsStrongAuth;

    invoke-virtual {v0, v10}, Lcom/android/server/locksettings/LockSettingsStrongAuth;->reportSuccessfulStrongAuthUnlock(I)V

    .line 1938
    if-eqz v12, :cond_af

    .line 1939
    iget v2, v11, Lcom/android/server/locksettings/LockSettingsStorage$CredentialHash;->type:I

    const/high16 v4, 0x10000

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object/from16 v1, p1

    move-object v3, v13

    move/from16 v5, p6

    invoke-direct/range {v0 .. v7}, Lcom/android/server/locksettings/LockSettingsService;->setLockCredentialInternal([BI[BIIZZ)V

    .line 1945
    :cond_af
    return-object v14

    .line 1893
    :cond_b0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Credential can\'t be null or empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private enableSyntheticPasswordLocked()V
    .registers 5

    .line 2624
    const-string v0, "enable-sp"

    const-wide/16 v1, 0x1

    const/4 v3, 0x0

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/server/locksettings/LockSettingsService;->setLong(Ljava/lang/String;JI)V

    .line 2625
    return-void
.end method

.method private enforceShell()V
    .registers 3

    .line 2261
    invoke-direct {p0}, Lcom/android/server/locksettings/LockSettingsService;->isCallerShell()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 2264
    return-void

    .line 2262
    :cond_7
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Caller must be shell"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private enrollCredential([B[B[BI)[B
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1698
    invoke-direct {p0, p4}, Lcom/android/server/locksettings/LockSettingsService;->checkWritePermission(I)V

    .line 1699
    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsService;->getGateKeeperService()Landroid/service/gatekeeper/IGateKeeperService;

    move-result-object v0

    invoke-interface {v0, p4, p1, p2, p3}, Landroid/service/gatekeeper/IGateKeeperService;->enroll(I[B[B[B)Landroid/service/gatekeeper/GateKeeperResponse;

    move-result-object p1

    .line 1702
    if-nez p1, :cond_f

    .line 1703
    const/4 p1, 0x0

    return-object p1

    .line 1706
    :cond_f
    invoke-virtual {p1}, Landroid/service/gatekeeper/GateKeeperResponse;->getPayload()[B

    move-result-object p1

    .line 1707
    if-eqz p1, :cond_19

    .line 1708
    invoke-direct {p0, p3, p4}, Lcom/android/server/locksettings/LockSettingsService;->setKeystorePassword([BI)V

    goto :goto_20

    .line 1711
    :cond_19
    const-string p2, "LockSettingsService"

    const-string p3, "Throttled while enrolling a password"

    invoke-static {p2, p3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1713
    :goto_20
    return-object p1
.end method

.method private ensureProfileKeystoreUnlocked(I)V
    .registers 11

    .line 607
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v0

    .line 608
    invoke-virtual {v0, p1}, Landroid/security/KeyStore;->state(I)Landroid/security/KeyStore$State;

    move-result-object v0

    sget-object v1, Landroid/security/KeyStore$State;->LOCKED:Landroid/security/KeyStore$State;

    if-ne v0, v1, :cond_30

    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mUserManager:Landroid/os/UserManager;

    .line 609
    invoke-virtual {v0, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/locksettings/LockSettingsService;->tiedManagedProfileReadyToUnlock(Landroid/content/pm/UserInfo;)Z

    move-result v0

    if-eqz v0, :cond_30

    .line 610
    const-string v0, "LockSettingsService"

    const-string v1, "Managed profile got unlocked, will unlock its keystore"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 615
    const/4 v4, 0x1

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    move-object v2, p0

    move v3, p1

    :try_start_26
    invoke-direct/range {v2 .. v8}, Lcom/android/server/locksettings/LockSettingsService;->unlockChildProfile(IZIJLjava/util/ArrayList;)V
    :try_end_29
    .catch Landroid/os/RemoteException; {:try_start_26 .. :try_end_29} :catch_2a

    .line 619
    goto :goto_30

    .line 617
    :catch_2a
    move-exception p1

    .line 618
    const-string p1, "Failed to unlock child profile"

    invoke-static {v0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 621
    :cond_30
    :goto_30
    return-void
.end method

.method private fixateNewestUserKeyAuth(I)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1799
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1801
    :try_start_4
    iget-object v2, p0, Lcom/android/server/locksettings/LockSettingsService;->mStorageManager:Landroid/os/storage/IStorageManager;

    invoke-interface {v2, p1}, Landroid/os/storage/IStorageManager;->fixateNewestUserKeyAuth(I)V
    :try_end_9
    .catchall {:try_start_4 .. :try_end_9} :catchall_e

    .line 1803
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1804
    nop

    .line 1805
    return-void

    .line 1803
    :catchall_e
    move-exception p1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1
.end method

.method private getDecryptedPasswordsForAllTiedProfiles(I)Ljava/util/Map;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "[B>;"
        }
    .end annotation

    .line 1355
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 1356
    const/4 p1, 0x0

    return-object p1

    .line 1358
    :cond_e
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 1359
    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v1, p1}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    move-result-object p1

    .line 1360
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    .line 1361
    const/4 v2, 0x0

    :goto_1e
    if-ge v2, v1, :cond_5e

    .line 1362
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/UserInfo;

    .line 1363
    invoke-virtual {v3}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v4

    if-nez v4, :cond_2d

    .line 1364
    goto :goto_5b

    .line 1366
    :cond_2d
    iget v3, v3, Landroid/content/pm/UserInfo;->id:I

    .line 1367
    iget-object v4, p0, Lcom/android/server/locksettings/LockSettingsService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v4, v3}, Lcom/android/internal/widget/LockPatternUtils;->isSeparateProfileChallengeEnabled(I)Z

    move-result v4

    if-eqz v4, :cond_38

    .line 1368
    goto :goto_5b

    .line 1371
    :cond_38
    :try_start_38
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p0, v3}, Lcom/android/server/locksettings/LockSettingsService;->getDecryptedPasswordForTiedProfile(I)[B

    move-result-object v5

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
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

    .line 1378
    goto :goto_5b

    .line 1372
    :catch_44
    move-exception v4

    .line 1376
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getDecryptedPasswordsForAllTiedProfiles failed for user "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v5, "LockSettingsService"

    invoke-static {v5, v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1361
    :goto_5b
    add-int/lit8 v2, v2, 0x1

    goto :goto_1e

    .line 1380
    :cond_5e
    return-object v0
.end method

.method private getFrpStringUnchecked(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 1103
    const-string v0, "lockscreen.password_type"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_11

    .line 1104
    invoke-direct {p0}, Lcom/android/server/locksettings/LockSettingsService;->readFrpPasswordQuality()I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 1106
    :cond_11
    const/4 p1, 0x0

    return-object p1
.end method

.method private getProfilesWithSameLockScreen(I)Ljava/util/Set;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1498
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 1499
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

    .line 1500
    iget v3, v2, Landroid/content/pm/UserInfo;->id:I

    if-eq v3, p1, :cond_2b

    iget v3, v2, Landroid/content/pm/UserInfo;->profileGroupId:I

    if-ne v3, p1, :cond_34

    iget v3, v2, Landroid/content/pm/UserInfo;->id:I

    .line 1502
    invoke-direct {p0, v3}, Lcom/android/server/locksettings/LockSettingsService;->isManagedProfileWithUnifiedLock(I)Z

    move-result v3

    if-eqz v3, :cond_34

    .line 1503
    :cond_2b
    iget v2, v2, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1505
    :cond_34
    goto :goto_f

    .line 1506
    :cond_35
    return-object v0
.end method

.method private getSyntheticPasswordHandleLocked(I)J
    .registers 5

    .line 2598
    const-string/jumbo v0, "sp-handle"

    const-wide/16 v1, 0x0

    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/android/server/locksettings/LockSettingsService;->getLong(Ljava/lang/String;JI)J

    move-result-wide v0

    return-wide v0
.end method

.method private hideEncryptionNotification(Landroid/os/UserHandle;)V
    .registers 5

    .line 584
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mNotificationManager:Landroid/app/NotificationManager;

    const/4 v1, 0x0

    const/16 v2, 0x9

    invoke-virtual {v0, v1, v2, p1}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    .line 586
    return-void
.end method

.method private isCallerShell()Z
    .registers 3

    .line 2256
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 2257
    const/16 v1, 0x7d0

    if-eq v0, v1, :cond_d

    if-nez v0, :cond_b

    goto :goto_d

    :cond_b
    const/4 v0, 0x0

    goto :goto_e

    :cond_d
    :goto_d
    const/4 v0, 0x1

    :goto_e
    return v0
.end method

.method private isEscrowTokenActive(JI)Z
    .registers 6

    .line 2946
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    monitor-enter v0

    .line 2947
    :try_start_3
    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/server/locksettings/SyntheticPasswordManager;->existsHandle(JI)Z

    move-result p1

    monitor-exit v0

    return p1

    .line 2948
    :catchall_b
    move-exception p1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw p1
.end method

.method private isManagedProfileWithSeparatedLock(I)Z
    .registers 3

    .line 1440
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v0

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 1441
    invoke-virtual {v0, p1}, Lcom/android/internal/widget/LockPatternUtils;->isSeparateProfileChallengeEnabled(I)Z

    move-result p1

    if-eqz p1, :cond_16

    const/4 p1, 0x1

    goto :goto_17

    :cond_16
    const/4 p1, 0x0

    .line 1440
    :goto_17
    return p1
.end method

.method private isManagedProfileWithUnifiedLock(I)Z
    .registers 3

    .line 1435
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v0

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 1436
    invoke-virtual {v0, p1}, Lcom/android/internal/widget/LockPatternUtils;->isSeparateProfileChallengeEnabled(I)Z

    move-result p1

    if-nez p1, :cond_16

    const/4 p1, 0x1

    goto :goto_17

    :cond_16
    const/4 p1, 0x0

    .line 1435
    :goto_17
    return p1
.end method

.method private isSyntheticPasswordBasedCredentialLocked(I)Z
    .registers 10

    .line 2603
    const/4 v0, 0x1

    const/4 v1, 0x0

    const/16 v2, -0x270f

    if-ne p1, v2, :cond_16

    .line 2604
    iget-object p1, p0, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    invoke-virtual {p1}, Lcom/android/server/locksettings/LockSettingsStorage;->readPersistentDataBlock()Lcom/android/server/locksettings/LockSettingsStorage$PersistentData;

    move-result-object p1

    iget p1, p1, Lcom/android/server/locksettings/LockSettingsStorage$PersistentData;->type:I

    .line 2605
    if-eq p1, v0, :cond_15

    const/4 v2, 0x2

    if-ne p1, v2, :cond_14

    goto :goto_15

    :cond_14
    move v0, v1

    :cond_15
    :goto_15
    return v0

    .line 2607
    :cond_16
    invoke-direct {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->getSyntheticPasswordHandleLocked(I)J

    move-result-wide v2

    .line 2609
    const-wide/16 v4, 0x1

    const-string p1, "enable-sp"

    invoke-virtual {p0, p1, v4, v5, v1}, Lcom/android/server/locksettings/LockSettingsService;->getLong(Ljava/lang/String;JI)J

    move-result-wide v4

    .line 2611
    const-wide/16 v6, 0x0

    cmp-long p1, v4, v6

    if-eqz p1, :cond_2d

    cmp-long p1, v2, v6

    if-eqz p1, :cond_2d

    goto :goto_2e

    :cond_2d
    move v0, v1

    :goto_2e
    return v0
.end method

.method private isUserKeyUnlocked(I)Z
    .registers 4

    .line 1772
    :try_start_0
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mStorageManager:Landroid/os/storage/IStorageManager;

    invoke-interface {v0, p1}, Landroid/os/storage/IStorageManager;->isUserKeyUnlocked(I)Z

    move-result p1
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return p1

    .line 1773
    :catch_7
    move-exception p1

    .line 1774
    const-string v0, "LockSettingsService"

    const-string v1, "failed to check user key locked state"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1775
    const/4 p1, 0x0

    return p1
.end method

.method private isUserSecure(I)Z
    .registers 6

    .line 1140
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    monitor-enter v0

    .line 1141
    :try_start_3
    invoke-direct {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->isSyntheticPasswordBasedCredentialLocked(I)Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 1142
    invoke-direct {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->getSyntheticPasswordHandleLocked(I)J

    move-result-wide v1

    .line 1143
    iget-object v3, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    invoke-virtual {v3, v1, v2, p1}, Lcom/android/server/locksettings/SyntheticPasswordManager;->getCredentialType(JI)I

    move-result p1

    const/4 v1, -0x1

    if-eq p1, v1, :cond_18

    const/4 p1, 0x1

    goto :goto_19

    :cond_18
    const/4 p1, 0x0

    :goto_19
    monitor-exit v0

    return p1

    .line 1145
    :cond_1b
    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_3 .. :try_end_1c} :catchall_23

    .line 1146
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    invoke-virtual {v0, p1}, Lcom/android/server/locksettings/LockSettingsStorage;->hasCredential(I)Z

    move-result p1

    return p1

    .line 1145
    :catchall_23
    move-exception p1

    :try_start_24
    monitor-exit v0
    :try_end_25
    .catchall {:try_start_24 .. :try_end_25} :catchall_23

    throw p1
.end method

.method private maybeShowEncryptionNotificationForUser(I)V
    .registers 4

    .line 506
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    .line 507
    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v1

    if-nez v1, :cond_d

    .line 511
    return-void

    .line 514
    :cond_d
    invoke-direct {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->isUserKeyUnlocked(I)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 517
    return-void

    .line 520
    :cond_14
    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    .line 521
    invoke-direct {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->isUserSecure(I)Z

    move-result v1

    .line 522
    if-eqz v1, :cond_45

    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v1, v0}, Landroid/os/UserManager;->isUserUnlockingOrUnlocked(Landroid/os/UserHandle;)Z

    move-result v1

    if-nez v1, :cond_45

    .line 523
    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v1, p1}, Landroid/os/UserManager;->getProfileParent(I)Landroid/content/pm/UserInfo;

    move-result-object p1

    .line 524
    if-eqz p1, :cond_45

    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsService;->mUserManager:Landroid/os/UserManager;

    .line 525
    invoke-virtual {p1}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/os/UserManager;->isUserUnlockingOrUnlocked(Landroid/os/UserHandle;)Z

    move-result p1

    if-eqz p1, :cond_45

    iget-object p1, p0, Lcom/android/server/locksettings/LockSettingsService;->mUserManager:Landroid/os/UserManager;

    .line 526
    invoke-virtual {p1, v0}, Landroid/os/UserManager;->isQuietModeEnabled(Landroid/os/UserHandle;)Z

    move-result p1

    if-nez p1, :cond_45

    .line 529
    invoke-direct {p0, v0}, Lcom/android/server/locksettings/LockSettingsService;->showEncryptionNotificationForProfile(Landroid/os/UserHandle;)V

    .line 532
    :cond_45
    return-void
.end method

.method private migrateFrpCredential()V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 899
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    invoke-virtual {v0}, Lcom/android/server/locksettings/LockSettingsStorage;->readPersistentDataBlock()Lcom/android/server/locksettings/LockSettingsStorage$PersistentData;

    move-result-object v0

    sget-object v1, Lcom/android/server/locksettings/LockSettingsStorage$PersistentData;->NONE:Lcom/android/server/locksettings/LockSettingsStorage$PersistentData;

    if-eq v0, v1, :cond_b

    .line 900
    return-void

    .line 902
    :cond_b
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_15
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/UserInfo;

    .line 903
    iget-object v2, p0, Lcom/android/server/locksettings/LockSettingsService;->mContext:Landroid/content/Context;

    invoke-static {v2, v1}, Lcom/android/internal/widget/LockPatternUtils;->userOwnsFrpCredential(Landroid/content/Context;Landroid/content/pm/UserInfo;)Z

    move-result v2

    if-eqz v2, :cond_5b

    iget v2, v1, Landroid/content/pm/UserInfo;->id:I

    invoke-direct {p0, v2}, Lcom/android/server/locksettings/LockSettingsService;->isUserSecure(I)Z

    move-result v2

    if-eqz v2, :cond_5b

    .line 904
    iget-object v2, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    monitor-enter v2

    .line 905
    :try_start_34
    iget v0, v1, Landroid/content/pm/UserInfo;->id:I

    invoke-direct {p0, v0}, Lcom/android/server/locksettings/LockSettingsService;->isSyntheticPasswordBasedCredentialLocked(I)Z

    move-result v0

    if-eqz v0, :cond_56

    .line 906
    const-string v0, "lockscreen.password_type"

    const-wide/16 v3, 0x0

    iget v5, v1, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p0, v0, v3, v4, v5}, Lcom/android/server/locksettings/LockSettingsService;->getLong(Ljava/lang/String;JI)J

    move-result-wide v3

    long-to-int v0, v3

    .line 909
    iget-object v3, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    iget v4, v1, Landroid/content/pm/UserInfo;->id:I

    .line 910
    invoke-direct {p0, v4}, Lcom/android/server/locksettings/LockSettingsService;->getSyntheticPasswordHandleLocked(I)J

    move-result-wide v4

    .line 912
    invoke-direct {p0, v0}, Lcom/android/server/locksettings/LockSettingsService;->redactActualQualityToMostLenientEquivalentQuality(I)I

    move-result v0

    .line 909
    invoke-virtual {v3, v4, v5, v1, v0}, Lcom/android/server/locksettings/SyntheticPasswordManager;->migrateFrpPasswordLocked(JLandroid/content/pm/UserInfo;I)V

    .line 914
    :cond_56
    monitor-exit v2

    .line 915
    return-void

    .line 914
    :catchall_58
    move-exception v0

    monitor-exit v2
    :try_end_5a
    .catchall {:try_start_34 .. :try_end_5a} :catchall_58

    throw v0

    .line 917
    :cond_5b
    goto :goto_15

    .line 918
    :cond_5c
    return-void
.end method

.method private migrateOldData()V
    .registers 20

    .line 727
    move-object/from16 v1, p0

    const-string v2, "lock_screen_owner_info_enabled"

    const-string v0, "migrated"

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v0, v3, v4}, Lcom/android/server/locksettings/LockSettingsService;->getString(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "true"

    const-string v7, "LockSettingsService"

    if-nez v5, :cond_35

    .line 728
    iget-object v5, v1, Lcom/android/server/locksettings/LockSettingsService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    .line 729
    sget-object v8, Lcom/android/server/locksettings/LockSettingsService;->VALID_SETTINGS:[Ljava/lang/String;

    array-length v9, v8

    move v10, v4

    :goto_1d
    if-ge v10, v9, :cond_2d

    aget-object v11, v8, v10

    .line 730
    invoke-static {v5, v11}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 731
    if-eqz v12, :cond_2a

    .line 732
    invoke-virtual {v1, v11, v12, v4}, Lcom/android/server/locksettings/LockSettingsService;->setString(Ljava/lang/String;Ljava/lang/String;I)V

    .line 729
    :cond_2a
    add-int/lit8 v10, v10, 0x1

    goto :goto_1d

    .line 736
    :cond_2d
    invoke-virtual {v1, v0, v6, v4}, Lcom/android/server/locksettings/LockSettingsService;->setString(Ljava/lang/String;Ljava/lang/String;I)V

    .line 737
    const-string v0, "Migrated lock settings to new location"

    invoke-static {v7, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 741
    :cond_35
    const-string v5, "migrated_user_specific"

    invoke-virtual {v1, v5, v3, v4}, Lcom/android/server/locksettings/LockSettingsService;->getString(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_9c

    .line 742
    iget-object v0, v1, Lcom/android/server/locksettings/LockSettingsService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    .line 743
    iget-object v0, v1, Lcom/android/server/locksettings/LockSettingsService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v12

    .line 744
    move v13, v4

    :goto_4a
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v0

    if-ge v13, v0, :cond_94

    .line 746
    invoke-interface {v12, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/UserInfo;

    iget v14, v0, Landroid/content/pm/UserInfo;->id:I

    .line 748
    const-string v0, "lock_screen_owner_info"

    invoke-static {v11, v0, v14}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v15

    .line 749
    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v16

    if-nez v16, :cond_6c

    .line 750
    invoke-virtual {v1, v0, v15, v14}, Lcom/android/server/locksettings/LockSettingsService;->setString(Ljava/lang/String;Ljava/lang/String;I)V

    .line 751
    const-string v10, ""

    invoke-static {v11, v0, v10, v14}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 760
    :cond_6c
    :try_start_6c
    invoke-static {v11, v2, v14}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 761
    if-eqz v0, :cond_74

    const/4 v0, 0x1

    goto :goto_75

    :cond_74
    move v0, v4

    .line 762
    :goto_75
    if-eqz v0, :cond_7c

    const-wide/16 v17, 0x1

    move-wide/from16 v8, v17

    goto :goto_7e

    :cond_7c
    const-wide/16 v8, 0x0

    :goto_7e
    invoke-virtual {v1, v2, v8, v9, v14}, Lcom/android/server/locksettings/LockSettingsService;->setLong(Ljava/lang/String;JI)V
    :try_end_81
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_6c .. :try_end_81} :catch_82

    .line 768
    goto :goto_8e

    .line 763
    :catch_82
    move-exception v0

    .line 765
    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8e

    .line 766
    const-wide/16 v8, 0x1

    invoke-virtual {v1, v2, v8, v9, v14}, Lcom/android/server/locksettings/LockSettingsService;->setLong(Ljava/lang/String;JI)V

    .line 769
    :cond_8e
    :goto_8e
    invoke-static {v11, v2, v4, v14}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 744
    add-int/lit8 v13, v13, 0x1

    goto :goto_4a

    .line 772
    :cond_94
    invoke-virtual {v1, v5, v6, v4}, Lcom/android/server/locksettings/LockSettingsService;->setString(Ljava/lang/String;Ljava/lang/String;I)V

    .line 773
    const-string v0, "Migrated per-user lock settings to new location"

    invoke-static {v7, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 777
    :cond_9c
    const-string v0, "migrated_biometric_weak"

    invoke-virtual {v1, v0, v3, v4}, Lcom/android/server/locksettings/LockSettingsService;->getString(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    const-string v5, "lockscreen.password_type"

    if-nez v2, :cond_e3

    .line 778
    iget-object v2, v1, Lcom/android/server/locksettings/LockSettingsService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v2}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v2

    .line 779
    move v8, v4

    :goto_ad
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v9

    if-ge v8, v9, :cond_d9

    .line 780
    invoke-interface {v2, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/pm/UserInfo;

    iget v9, v9, Landroid/content/pm/UserInfo;->id:I

    .line 781
    const-wide/16 v10, 0x0

    invoke-virtual {v1, v5, v10, v11, v9}, Lcom/android/server/locksettings/LockSettingsService;->getLong(Ljava/lang/String;JI)J

    move-result-wide v12

    .line 784
    const-string v14, "lockscreen.password_type_alternate"

    invoke-virtual {v1, v14, v10, v11, v9}, Lcom/android/server/locksettings/LockSettingsService;->getLong(Ljava/lang/String;JI)J

    move-result-wide v3

    .line 787
    const-wide/32 v17, 0x8000

    cmp-long v12, v12, v17

    if-nez v12, :cond_d1

    .line 788
    invoke-virtual {v1, v5, v3, v4, v9}, Lcom/android/server/locksettings/LockSettingsService;->setLong(Ljava/lang/String;JI)V

    .line 792
    :cond_d1
    invoke-virtual {v1, v14, v10, v11, v9}, Lcom/android/server/locksettings/LockSettingsService;->setLong(Ljava/lang/String;JI)V

    .line 779
    add-int/lit8 v8, v8, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    goto :goto_ad

    .line 796
    :cond_d9
    const/4 v2, 0x0

    invoke-virtual {v1, v0, v6, v2}, Lcom/android/server/locksettings/LockSettingsService;->setString(Ljava/lang/String;Ljava/lang/String;I)V

    .line 797
    const-string v0, "Migrated biometric weak to use the fallback instead"

    invoke-static {v7, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e4

    .line 777
    :cond_e3
    move v2, v4

    .line 803
    :goto_e4
    const-string v0, "migrated_lockscreen_disabled"

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v3, v2}, Lcom/android/server/locksettings/LockSettingsService;->getString(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    const-string v2, "lockscreen.disabled"

    if-nez v4, :cond_133

    .line 804
    iget-object v3, v1, Lcom/android/server/locksettings/LockSettingsService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v3}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v3

    .line 805
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    .line 806
    nop

    .line 807
    const/4 v8, 0x0

    const/4 v9, 0x0

    :goto_fc
    if-ge v8, v4, :cond_10f

    .line 808
    invoke-interface {v3, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/content/pm/UserInfo;

    invoke-virtual {v10}, Landroid/content/pm/UserInfo;->supportsSwitchTo()Z

    move-result v10

    if-eqz v10, :cond_10c

    .line 809
    add-int/lit8 v9, v9, 0x1

    .line 807
    :cond_10c
    add-int/lit8 v8, v8, 0x1

    goto :goto_fc

    .line 813
    :cond_10f
    const/4 v8, 0x1

    if-le v9, v8, :cond_12a

    .line 814
    const/4 v8, 0x0

    :goto_113
    if-ge v8, v4, :cond_12a

    .line 815
    invoke-interface {v3, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/pm/UserInfo;

    iget v9, v9, Landroid/content/pm/UserInfo;->id:I

    .line 817
    const/4 v10, 0x0

    invoke-virtual {v1, v2, v10, v9}, Lcom/android/server/locksettings/LockSettingsService;->getBoolean(Ljava/lang/String;ZI)Z

    move-result v11

    if-eqz v11, :cond_127

    .line 818
    invoke-virtual {v1, v2, v10, v9}, Lcom/android/server/locksettings/LockSettingsService;->setBoolean(Ljava/lang/String;ZI)V

    .line 814
    :cond_127
    add-int/lit8 v8, v8, 0x1

    goto :goto_113

    .line 823
    :cond_12a
    const/4 v3, 0x0

    invoke-virtual {v1, v0, v6, v3}, Lcom/android/server/locksettings/LockSettingsService;->setString(Ljava/lang/String;Ljava/lang/String;I)V

    .line 824
    const-string v0, "Migrated lockscreen disabled flag"

    invoke-static {v7, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 827
    :cond_133
    iget-object v0, v1, Lcom/android/server/locksettings/LockSettingsService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v3

    .line 828
    const/4 v4, 0x0

    :goto_13a
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-ge v4, v0, :cond_1c0

    .line 829
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/UserInfo;

    .line 830
    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v8

    if-eqz v8, :cond_18c

    iget-object v8, v1, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    iget v9, v0, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v8, v9}, Lcom/android/server/locksettings/LockSettingsStorage;->hasChildProfileLock(I)Z

    move-result v8

    if-eqz v8, :cond_18c

    .line 837
    iget v8, v0, Landroid/content/pm/UserInfo;->id:I

    const-wide/16 v9, 0x0

    invoke-virtual {v1, v5, v9, v10, v8}, Lcom/android/server/locksettings/LockSettingsService;->getLong(Ljava/lang/String;JI)J

    move-result-wide v11

    .line 839
    cmp-long v8, v11, v9

    if-nez v8, :cond_170

    .line 841
    const-string v8, "Migrated tied profile lock type"

    invoke-static {v7, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 842
    const-wide/32 v11, 0x50000

    iget v8, v0, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v1, v5, v11, v12, v8}, Lcom/android/server/locksettings/LockSettingsService;->setLong(Ljava/lang/String;JI)V

    goto :goto_18e

    .line 844
    :cond_170
    const-wide/32 v13, 0x50000

    cmp-long v8, v11, v13

    if-eqz v8, :cond_18e

    .line 846
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Invalid tied profile lock type: "

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_18e

    .line 830
    :cond_18c
    const-wide/16 v9, 0x0

    .line 850
    :cond_18e
    :goto_18e
    :try_start_18e
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "profile_key_name_encrypt_"

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 851
    const-string v8, "AndroidKeyStore"

    .line 852
    invoke-static {v8}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v8

    .line 853
    const/4 v11, 0x0

    invoke-virtual {v8, v11}, Ljava/security/KeyStore;->load(Ljava/security/KeyStore$LoadStoreParameter;)V

    .line 854
    invoke-virtual {v8, v0}, Ljava/security/KeyStore;->containsAlias(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_1b5

    .line 855
    invoke-virtual {v8, v0}, Ljava/security/KeyStore;->deleteEntry(Ljava/lang/String;)V
    :try_end_1b5
    .catch Ljava/security/KeyStoreException; {:try_start_18e .. :try_end_1b5} :catch_1b6
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_18e .. :try_end_1b5} :catch_1b6
    .catch Ljava/security/cert/CertificateException; {:try_start_18e .. :try_end_1b5} :catch_1b6
    .catch Ljava/io/IOException; {:try_start_18e .. :try_end_1b5} :catch_1b6

    .line 860
    :cond_1b5
    goto :goto_1bc

    .line 857
    :catch_1b6
    move-exception v0

    .line 859
    const-string v8, "Unable to remove tied profile key"

    invoke-static {v7, v8, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 828
    :goto_1bc
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_13a

    .line 863
    :cond_1c0
    iget-object v0, v1, Lcom/android/server/locksettings/LockSettingsService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v4, "android.hardware.type.watch"

    invoke-virtual {v0, v4}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    .line 867
    if-eqz v0, :cond_1f9

    const-string v0, "migrated_wear_lockscreen_disabled"

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v1, v0, v4, v5}, Lcom/android/server/locksettings/LockSettingsService;->getString(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1f9

    .line 868
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    .line 869
    const/4 v4, 0x0

    :goto_1dd
    if-ge v4, v0, :cond_1ee

    .line 870
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/UserInfo;

    iget v5, v5, Landroid/content/pm/UserInfo;->id:I

    .line 871
    const/4 v8, 0x0

    invoke-virtual {v1, v2, v8, v5}, Lcom/android/server/locksettings/LockSettingsService;->setBoolean(Ljava/lang/String;ZI)V

    .line 869
    add-int/lit8 v4, v4, 0x1

    goto :goto_1dd

    .line 873
    :cond_1ee
    const/4 v8, 0x0

    const-string v0, "migrated_wear_lockscreen_disabled"

    invoke-virtual {v1, v0, v6, v8}, Lcom/android/server/locksettings/LockSettingsService;->setString(Ljava/lang/String;Ljava/lang/String;I)V

    .line 874
    const-string v0, "Migrated lockscreen_disabled for Wear devices"

    invoke-static {v7, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 876
    :cond_1f9
    return-void
.end method

.method private migrateOldDataAfterSystemReady()V
    .registers 5

    .line 881
    const-string v0, "migrated_frp"

    const-string v1, "LockSettingsService"

    :try_start_4
    iget-object v2, p0, Lcom/android/server/locksettings/LockSettingsService;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/internal/widget/LockPatternUtils;->frpCredentialEnabled(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 882
    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2, v2}, Lcom/android/server/locksettings/LockSettingsService;->getBoolean(Ljava/lang/String;ZI)Z

    move-result v3

    if-nez v3, :cond_1f

    .line 883
    invoke-direct {p0}, Lcom/android/server/locksettings/LockSettingsService;->migrateFrpCredential()V

    .line 884
    const/4 v3, 0x1

    invoke-virtual {p0, v0, v3, v2}, Lcom/android/server/locksettings/LockSettingsService;->setBoolean(Ljava/lang/String;ZI)V

    .line 885
    const-string v0, "Migrated migrated_frp."

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1f
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_1f} :catch_20

    .line 889
    :cond_1f
    goto :goto_26

    .line 887
    :catch_20
    move-exception v0

    .line 888
    const-string v2, "Unable to migrateOldDataAfterSystemReady"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 890
    :goto_26
    return-void
.end method

.method private notifyActivePasswordMetricsAvailable(I[BI)V
    .registers 5

    .line 2108
    nop

    .line 2109
    invoke-static {p1, p2}, Landroid/app/admin/PasswordMetrics;->computeForCredential(I[B)Landroid/app/admin/PasswordMetrics;

    move-result-object p1

    .line 2112
    iget-object p2, p0, Lcom/android/server/locksettings/LockSettingsService;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/server/locksettings/-$$Lambda$LockSettingsService$QBoYkqRgslYmc5oBM_ZZV6ktQWg;

    invoke-direct {v0, p0, p1, p3}, Lcom/android/server/locksettings/-$$Lambda$LockSettingsService$QBoYkqRgslYmc5oBM_ZZV6ktQWg;-><init>(Lcom/android/server/locksettings/LockSettingsService;Landroid/app/admin/PasswordMetrics;I)V

    invoke-virtual {p2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2117
    return-void
.end method

.method private notifyPasswordChanged(I)V
    .registers 4

    .line 2125
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/locksettings/-$$Lambda$LockSettingsService$uLUdo5pAFhnR0hn-L5FUgWTjl70;

    invoke-direct {v1, p0, p1}, Lcom/android/server/locksettings/-$$Lambda$LockSettingsService$uLUdo5pAFhnR0hn-L5FUgWTjl70;-><init>(Lcom/android/server/locksettings/LockSettingsService;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2131
    return-void
.end method

.method private notifySeparateProfileChallengeChanged(I)V
    .registers 3

    .line 1026
    const-class v0, Landroid/app/admin/DevicePolicyManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManagerInternal;

    .line 1028
    if-eqz v0, :cond_d

    .line 1029
    invoke-virtual {v0, p1}, Landroid/app/admin/DevicePolicyManagerInternal;->reportSeparateProfileChallengeChanged(I)V

    .line 1031
    :cond_d
    return-void
.end method

.method private onAuthTokenKnownForUser(ILcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;)V
    .registers 5

    .line 2465
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Caching SP for user "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LockSettingsService"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2466
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    monitor-enter v0

    .line 2467
    :try_start_19
    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpCache:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2468
    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_19 .. :try_end_1f} :catchall_6b

    .line 2469
    invoke-direct {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->tryRemoveUserFromSpCacheLater(I)V

    .line 2471
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mInjector:Lcom/android/server/locksettings/LockSettingsService$Injector;

    invoke-virtual {v0}, Lcom/android/server/locksettings/LockSettingsService$Injector;->isGsiRunning()Z

    move-result v0

    if-eqz v0, :cond_32

    .line 2472
    const-string p1, "LockSettingsService"

    const-string p2, "AuthSecret disabled in GSI"

    invoke-static {p1, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2473
    return-void

    .line 2477
    :cond_32
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mAuthSecretService:Landroid/hardware/authsecret/V1_0/IAuthSecret;

    if-eqz v0, :cond_6a

    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/pm/UserInfo;->isPrimary()Z

    move-result p1

    if-eqz p1, :cond_6a

    .line 2479
    :try_start_42
    invoke-virtual {p2}, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->deriveVendorAuthSecret()[B

    move-result-object p1

    .line 2480
    new-instance p2, Ljava/util/ArrayList;

    array-length v0, p1

    invoke-direct {p2, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 2481
    const/4 v0, 0x0

    :goto_4d
    array-length v1, p1

    if-ge v0, v1, :cond_5c

    .line 2482
    aget-byte v1, p1, v0

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2481
    add-int/lit8 v0, v0, 0x1

    goto :goto_4d

    .line 2484
    :cond_5c
    iget-object p1, p0, Lcom/android/server/locksettings/LockSettingsService;->mAuthSecretService:Landroid/hardware/authsecret/V1_0/IAuthSecret;

    invoke-interface {p1, p2}, Landroid/hardware/authsecret/V1_0/IAuthSecret;->primaryUserCredential(Ljava/util/ArrayList;)V
    :try_end_61
    .catch Landroid/os/RemoteException; {:try_start_42 .. :try_end_61} :catch_62

    .line 2487
    goto :goto_6a

    .line 2485
    :catch_62
    move-exception p1

    .line 2486
    const-string p2, "LockSettingsService"

    const-string v0, "Failed to pass primary user secret to AuthSecret HAL"

    invoke-static {p2, v0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2489
    :cond_6a
    :goto_6a
    return-void

    .line 2468
    :catchall_6b
    move-exception p1

    :try_start_6c
    monitor-exit v0
    :try_end_6d
    .catchall {:try_start_6c .. :try_end_6d} :catchall_6b

    throw p1
.end method

.method private readFrpPasswordQuality()I
    .registers 2

    .line 1110
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    invoke-virtual {v0}, Lcom/android/server/locksettings/LockSettingsStorage;->readPersistentDataBlock()Lcom/android/server/locksettings/LockSettingsStorage$PersistentData;

    move-result-object v0

    iget v0, v0, Lcom/android/server/locksettings/LockSettingsStorage$PersistentData;->qualityForUi:I

    return v0
.end method

.method private redactActualQualityToMostLenientEquivalentQuality(I)I
    .registers 4

    .line 929
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

    .line 942
    return p1

    .line 933
    :cond_15
    return v0

    .line 936
    :cond_16
    return v0
.end method

.method private removeEscrowToken(JI)Z
    .registers 8

    .line 2960
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    monitor-enter v0

    .line 2961
    :try_start_3
    invoke-direct {p0, p3}, Lcom/android/server/locksettings/LockSettingsService;->getSyntheticPasswordHandleLocked(I)J

    move-result-wide v1

    cmp-long v1, p1, v1

    const/4 v2, 0x0

    if-nez v1, :cond_15

    .line 2962
    const-string p1, "LockSettingsService"

    const-string p2, "Cannot remove password handle"

    invoke-static {p1, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2963
    monitor-exit v0

    return v2

    .line 2965
    :cond_15
    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/server/locksettings/SyntheticPasswordManager;->removePendingToken(JI)Z

    move-result v1

    const/4 v3, 0x1

    if-eqz v1, :cond_20

    .line 2966
    monitor-exit v0

    return v3

    .line 2968
    :cond_20
    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/server/locksettings/SyntheticPasswordManager;->existsHandle(JI)Z

    move-result v1

    if-eqz v1, :cond_2f

    .line 2969
    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/server/locksettings/SyntheticPasswordManager;->destroyTokenBasedSyntheticPassword(JI)V

    .line 2970
    monitor-exit v0

    return v3

    .line 2972
    :cond_2f
    monitor-exit v0

    return v2

    .line 2974
    :catchall_31
    move-exception p1

    monitor-exit v0
    :try_end_33
    .catchall {:try_start_3 .. :try_end_33} :catchall_31

    throw p1
.end method

.method private removeKeystoreProfileKey(I)V
    .registers 5

    .line 2214
    :try_start_0
    const-string v0, "AndroidKeyStore"

    invoke-static {v0}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v0

    .line 2215
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/security/KeyStore;->load(Ljava/security/KeyStore$LoadStoreParameter;)V

    .line 2216
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "profile_key_name_encrypt_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/security/KeyStore;->deleteEntry(Ljava/lang/String;)V

    .line 2217
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

    .line 2222
    goto :goto_4c

    .line 2218
    :catch_35
    move-exception v0

    .line 2221
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to remove keystore profile key for user:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "LockSettingsService"

    invoke-static {v1, p1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2223
    :goto_4c
    return-void
.end method

.method private removeUser(IZ)V
    .registers 5

    .line 2190
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    invoke-virtual {v0, p1}, Lcom/android/server/locksettings/SyntheticPasswordManager;->removeUser(I)V

    .line 2191
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    invoke-virtual {v0, p1}, Lcom/android/server/locksettings/LockSettingsStorage;->removeUser(I)V

    .line 2192
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mStrongAuth:Lcom/android/server/locksettings/LockSettingsStrongAuth;

    invoke-virtual {v0, p1}, Lcom/android/server/locksettings/LockSettingsStrongAuth;->removeUser(I)V

    .line 2193
    invoke-direct {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->tryRemoveUserFromSpCacheLater(I)V

    .line 2195
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v0

    .line 2196
    invoke-virtual {v0, p1}, Landroid/security/KeyStore;->onUserRemoved(I)V

    .line 2199
    :try_start_19
    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsService;->getGateKeeperService()Landroid/service/gatekeeper/IGateKeeperService;

    move-result-object v0

    .line 2200
    if-eqz v0, :cond_22

    .line 2201
    invoke-interface {v0, p1}, Landroid/service/gatekeeper/IGateKeeperService;->clearSecureUserId(I)V
    :try_end_22
    .catch Landroid/os/RemoteException; {:try_start_19 .. :try_end_22} :catch_23

    .line 2205
    :cond_22
    goto :goto_2c

    .line 2203
    :catch_23
    move-exception v0

    .line 2204
    const-string v0, "LockSettingsService"

    const-string/jumbo v1, "unable to clear GK secure user id"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2206
    :goto_2c
    if-nez p2, :cond_3a

    iget-object p2, p0, Lcom/android/server/locksettings/LockSettingsService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {p2, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result p2

    if-eqz p2, :cond_3d

    .line 2207
    :cond_3a
    invoke-direct {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->removeKeystoreProfileKey(I)V

    .line 2209
    :cond_3d
    return-void
.end method

.method private static secretFromCredential([B)[B
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1757
    :try_start_0
    const-string v0, "SHA-512"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 1759
    const-string v1, "Android FBE credential hash"

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    .line 1761
    const/16 v2, 0x80

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v1

    .line 1762
    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->update([B)V

    .line 1763
    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->update([B)V

    .line 1764
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p0
    :try_end_1c
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_1c} :catch_1d

    return-object p0

    .line 1765
    :catch_1d
    move-exception p0

    .line 1766
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "NoSuchAlgorithmException for SHA-512"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private sendCredentialsOnChangeIfRequired(I[BIZ)V
    .registers 6

    .line 1482
    if-eqz p4, :cond_3

    .line 1483
    return-void

    .line 1487
    :cond_3
    invoke-direct {p0, p3}, Lcom/android/server/locksettings/LockSettingsService;->getProfilesWithSameLockScreen(I)Ljava/util/Set;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_b
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_21

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/Integer;

    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result p4

    .line 1488
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mRecoverableKeyStoreManager:Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;

    invoke-virtual {v0, p1, p2, p4}, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->lockScreenSecretChanged(I[BI)V

    .line 1490
    goto :goto_b

    .line 1491
    :cond_21
    return-void
.end method

.method private sendCredentialsOnUnlockIfRequired(I[BI)V
    .registers 6

    .line 1455
    const/16 v0, -0x270f

    if-ne p3, v0, :cond_5

    .line 1456
    return-void

    .line 1462
    :cond_5
    invoke-direct {p0, p3}, Lcom/android/server/locksettings/LockSettingsService;->isManagedProfileWithUnifiedLock(I)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 1463
    return-void

    .line 1467
    :cond_c
    invoke-direct {p0, p3}, Lcom/android/server/locksettings/LockSettingsService;->getProfilesWithSameLockScreen(I)Ljava/util/Set;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_14
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2a

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1468
    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsService;->mRecoverableKeyStoreManager:Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;

    invoke-virtual {v1, p1, p2, v0}, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->lockScreenSecretAvailable(I[BI)V

    .line 1470
    goto :goto_14

    .line 1471
    :cond_2a
    return-void
.end method

.method private setAuthlessUserKeyProtection(I[B)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1718
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lcom/android/server/locksettings/LockSettingsService;->addUserKeyAuth(I[B[B)V

    .line 1719
    return-void
.end method

.method private setDeviceUnlockedForUser(I)V
    .registers 4

    .line 2721
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mContext:Landroid/content/Context;

    const-class v1, Landroid/app/trust/TrustManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/trust/TrustManager;

    .line 2722
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/app/trust/TrustManager;->setDeviceLockedForUser(IZ)V

    .line 2723
    return-void
.end method

.method private setKeystorePassword([BI)V
    .registers 5

    .line 1189
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v0

    .line 1191
    if-nez p1, :cond_8

    const/4 p1, 0x0

    goto :goto_e

    :cond_8
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p1}, Ljava/lang/String;-><init>([B)V

    move-object p1, v1

    .line 1192
    :goto_e
    invoke-virtual {v0, p2, p1}, Landroid/security/KeyStore;->onUserPasswordChanged(ILjava/lang/String;)Z

    .line 1193
    return-void
.end method

.method private setLockCredentialInternal([BI[BIIZZ)V
    .registers 24
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1543
    move-object/from16 v9, p0

    move-object/from16 v0, p1

    move/from16 v10, p2

    move-object/from16 v1, p3

    move/from16 v11, p5

    move/from16 v12, p7

    const/4 v13, 0x0

    if-eqz v1, :cond_15

    array-length v2, v1

    if-nez v2, :cond_13

    goto :goto_15

    :cond_13
    move-object v4, v1

    goto :goto_16

    .line 1544
    :cond_15
    :goto_15
    move-object v4, v13

    .line 1546
    :goto_16
    if-eqz v0, :cond_1e

    array-length v1, v0

    if-nez v1, :cond_1c

    goto :goto_1e

    :cond_1c
    move-object v14, v0

    goto :goto_1f

    .line 1547
    :cond_1e
    :goto_1e
    move-object v14, v13

    .line 1549
    :goto_1f
    iget-object v15, v9, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    monitor-enter v15

    .line 1550
    :try_start_22
    invoke-direct {v9, v11}, Lcom/android/server/locksettings/LockSettingsService;->isSyntheticPasswordBasedCredentialLocked(I)Z

    move-result v0

    if-eqz v0, :cond_3a

    .line 1551
    move-object/from16 v1, p0

    move-object v2, v14

    move/from16 v3, p2

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    invoke-direct/range {v1 .. v8}, Lcom/android/server/locksettings/LockSettingsService;->spBasedSetLockCredentialInternalLocked([BI[BIIZZ)V

    .line 1553
    monitor-exit v15

    return-void

    .line 1555
    :cond_3a
    monitor-exit v15
    :try_end_3b
    .catchall {:try_start_22 .. :try_end_3b} :catchall_139

    .line 1557
    const/4 v0, -0x1

    if-ne v10, v0, :cond_6a

    .line 1558
    if-eqz v14, :cond_47

    .line 1559
    const-string v1, "LockSettingsService"

    const-string v2, "CredentialType is none, but credential is non-null."

    invoke-static {v1, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 1561
    :cond_47
    invoke-direct {v9, v11}, Lcom/android/server/locksettings/LockSettingsService;->clearUserKeyProtection(I)V

    .line 1562
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/locksettings/LockSettingsService;->getGateKeeperService()Landroid/service/gatekeeper/IGateKeeperService;

    move-result-object v1

    invoke-interface {v1, v11}, Landroid/service/gatekeeper/IGateKeeperService;->clearSecureUserId(I)V

    .line 1563
    iget-object v1, v9, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    invoke-static {}, Lcom/android/server/locksettings/LockSettingsStorage$CredentialHash;->createEmptyHash()Lcom/android/server/locksettings/LockSettingsStorage$CredentialHash;

    move-result-object v2

    invoke-virtual {v1, v2, v11}, Lcom/android/server/locksettings/LockSettingsStorage;->writeCredentialHash(Lcom/android/server/locksettings/LockSettingsStorage$CredentialHash;I)V

    .line 1564
    invoke-direct {v9, v13, v11}, Lcom/android/server/locksettings/LockSettingsService;->setKeystorePassword([BI)V

    .line 1565
    invoke-direct {v9, v11}, Lcom/android/server/locksettings/LockSettingsService;->fixateNewestUserKeyAuth(I)V

    .line 1566
    invoke-direct {v9, v11, v13}, Lcom/android/server/locksettings/LockSettingsService;->synchronizeUnifiedWorkChallengeForProfiles(ILjava/util/Map;)V

    .line 1567
    invoke-direct {v9, v0, v13, v11}, Lcom/android/server/locksettings/LockSettingsService;->notifyActivePasswordMetricsAvailable(I[BI)V

    .line 1568
    invoke-direct {v9, v10, v14, v11, v12}, Lcom/android/server/locksettings/LockSettingsService;->sendCredentialsOnChangeIfRequired(I[BIZ)V

    .line 1570
    return-void

    .line 1572
    :cond_6a
    if-eqz v14, :cond_131

    .line 1576
    iget-object v0, v9, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    invoke-virtual {v0, v11}, Lcom/android/server/locksettings/LockSettingsStorage;->readCredentialHash(I)Lcom/android/server/locksettings/LockSettingsStorage$CredentialHash;

    move-result-object v1

    .line 1577
    invoke-direct {v9, v11}, Lcom/android/server/locksettings/LockSettingsService;->isManagedProfileWithUnifiedLock(I)Z

    move-result v0

    if-eqz v0, :cond_91

    .line 1579
    if-nez v4, :cond_a0

    .line 1581
    :try_start_7a
    invoke-virtual {v9, v11}, Lcom/android/server/locksettings/LockSettingsService;->getDecryptedPasswordForTiedProfile(I)[B

    move-result-object v0
    :try_end_7e
    .catch Ljava/io/FileNotFoundException; {:try_start_7a .. :try_end_7e} :catch_88
    .catch Ljava/security/UnrecoverableKeyException; {:try_start_7a .. :try_end_7e} :catch_7f
    .catch Ljava/security/InvalidKeyException; {:try_start_7a .. :try_end_7e} :catch_7f
    .catch Ljava/security/KeyStoreException; {:try_start_7a .. :try_end_7e} :catch_7f
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_7a .. :try_end_7e} :catch_7f
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_7a .. :try_end_7e} :catch_7f
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_7a .. :try_end_7e} :catch_7f
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_7a .. :try_end_7e} :catch_7f
    .catch Ljavax/crypto/BadPaddingException; {:try_start_7a .. :try_end_7e} :catch_7f
    .catch Ljava/security/cert/CertificateException; {:try_start_7a .. :try_end_7e} :catch_7f
    .catch Ljava/io/IOException; {:try_start_7a .. :try_end_7e} :catch_7f

    .line 1589
    goto :goto_a1

    .line 1584
    :catch_7f
    move-exception v0

    .line 1588
    const-string v2, "LockSettingsService"

    const-string v3, "Failed to decrypt child profile key"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_90

    .line 1582
    :catch_88
    move-exception v0

    .line 1583
    const-string v0, "LockSettingsService"

    const-string v2, "Child profile key not found"

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1589
    :goto_90
    goto :goto_a0

    .line 1592
    :cond_91
    iget-object v0, v1, Lcom/android/server/locksettings/LockSettingsStorage$CredentialHash;->hash:[B

    if-nez v0, :cond_a0

    .line 1593
    if-eqz v4, :cond_9e

    .line 1594
    const-string v0, "LockSettingsService"

    const-string v2, "Saved credential provided, but none stored"

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1596
    :cond_9e
    move-object v0, v13

    goto :goto_a1

    .line 1599
    :cond_a0
    :goto_a0
    move-object v0, v4

    :goto_a1
    iget-object v15, v9, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    monitor-enter v15

    .line 1600
    :try_start_a4
    invoke-virtual {v9, v11}, Lcom/android/server/locksettings/LockSettingsService;->shouldMigrateToSyntheticPasswordLocked(I)Z

    move-result v2

    if-eqz v2, :cond_cb

    .line 1601
    iget-object v2, v1, Lcom/android/server/locksettings/LockSettingsStorage$CredentialHash;->hash:[B

    iget v4, v1, Lcom/android/server/locksettings/LockSettingsStorage$CredentialHash;->type:I

    move-object/from16 v1, p0

    move-object v3, v0

    move/from16 v5, p4

    move/from16 v6, p5

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/locksettings/LockSettingsService;->initializeSyntheticPasswordLocked([B[BIII)Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;

    .line 1603
    move-object/from16 v1, p0

    move-object v2, v14

    move/from16 v3, p2

    move-object v4, v0

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    invoke-direct/range {v1 .. v8}, Lcom/android/server/locksettings/LockSettingsService;->spBasedSetLockCredentialInternalLocked([BI[BIIZZ)V

    .line 1605
    monitor-exit v15

    return-void

    .line 1607
    :cond_cb
    monitor-exit v15
    :try_end_cc
    .catchall {:try_start_a4 .. :try_end_cc} :catchall_12e

    .line 1609
    iget-object v1, v1, Lcom/android/server/locksettings/LockSettingsStorage$CredentialHash;->hash:[B

    invoke-direct {v9, v1, v0, v14, v11}, Lcom/android/server/locksettings/LockSettingsService;->enrollCredential([B[B[BI)[B

    move-result-object v0

    .line 1611
    if-eqz v0, :cond_10d

    .line 1612
    invoke-static {v0, v10}, Lcom/android/server/locksettings/LockSettingsStorage$CredentialHash;->create([BI)Lcom/android/server/locksettings/LockSettingsStorage$CredentialHash;

    move-result-object v0

    .line 1613
    iget-object v1, v9, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    invoke-virtual {v1, v0, v11}, Lcom/android/server/locksettings/LockSettingsStorage;->writeCredentialHash(Lcom/android/server/locksettings/LockSettingsStorage$CredentialHash;I)V

    .line 1615
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/locksettings/LockSettingsService;->getGateKeeperService()Landroid/service/gatekeeper/IGateKeeperService;

    move-result-object v1

    const-wide/16 v2, 0x0

    iget-object v4, v0, Lcom/android/server/locksettings/LockSettingsStorage$CredentialHash;->hash:[B

    .line 1616
    move-object v0, v1

    move/from16 v1, p5

    move-object v5, v14

    invoke-interface/range {v0 .. v5}, Landroid/service/gatekeeper/IGateKeeperService;->verifyChallenge(IJ[B[B)Landroid/service/gatekeeper/GateKeeperResponse;

    move-result-object v0

    .line 1617
    invoke-direct {v9, v0}, Lcom/android/server/locksettings/LockSettingsService;->convertResponse(Landroid/service/gatekeeper/GateKeeperResponse;)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object v0

    invoke-direct {v9, v11, v14, v0}, Lcom/android/server/locksettings/LockSettingsService;->setUserKeyProtection(I[BLcom/android/internal/widget/VerifyCredentialResponse;)V

    .line 1618
    invoke-direct {v9, v11}, Lcom/android/server/locksettings/LockSettingsService;->fixateNewestUserKeyAuth(I)V

    .line 1620
    const/4 v4, 0x1

    const-wide/16 v5, 0x0

    const/4 v8, 0x0

    move-object/from16 v1, p0

    move-object v2, v14

    move/from16 v3, p2

    move/from16 v7, p5

    invoke-direct/range {v1 .. v8}, Lcom/android/server/locksettings/LockSettingsService;->doVerifyCredential([BIIJILcom/android/internal/widget/ICheckCredentialProgressCallback;)Lcom/android/internal/widget/VerifyCredentialResponse;

    .line 1622
    invoke-direct {v9, v11, v13}, Lcom/android/server/locksettings/LockSettingsService;->synchronizeUnifiedWorkChallengeForProfiles(ILjava/util/Map;)V

    .line 1623
    invoke-direct {v9, v10, v14, v11, v12}, Lcom/android/server/locksettings/LockSettingsService;->sendCredentialsOnChangeIfRequired(I[BIZ)V

    .line 1625
    nop

    .line 1629
    return-void

    .line 1626
    :cond_10d
    new-instance v0, Landroid/os/RemoteException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to enroll "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1627
    const/4 v2, 0x2

    if-ne v10, v2, :cond_120

    const-string/jumbo v2, "password"

    goto :goto_123

    :cond_120
    const-string/jumbo v2, "pattern"

    :goto_123
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1607
    :catchall_12e
    move-exception v0

    :try_start_12f
    monitor-exit v15
    :try_end_130
    .catchall {:try_start_12f .. :try_end_130} :catchall_12e

    throw v0

    .line 1573
    :cond_131
    new-instance v0, Landroid/os/RemoteException;

    const-string v1, "Null credential with mismatched credential type"

    invoke-direct {v0, v1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1555
    :catchall_139
    move-exception v0

    :try_start_13a
    monitor-exit v15
    :try_end_13b
    .catchall {:try_start_13a .. :try_end_13b} :catchall_139

    throw v0
.end method

.method private setLockCredentialWithAuthTokenLocked([BILcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;II)J
    .registers 16
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

    .line 2739
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsService;->getGateKeeperService()Landroid/service/gatekeeper/IGateKeeperService;

    move-result-object v1

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    move v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/locksettings/SyntheticPasswordManager;->createPasswordBasedSyntheticPassword(Landroid/service/gatekeeper/IGateKeeperService;[BILcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;II)J

    move-result-wide v0

    .line 2742
    const/4 p4, 0x0

    if-eqz p1, :cond_51

    .line 2744
    nop

    .line 2746
    iget-object v2, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    invoke-virtual {v2, p5}, Lcom/android/server/locksettings/SyntheticPasswordManager;->hasSidForUser(I)Z

    move-result v2

    if-eqz v2, :cond_29

    .line 2752
    iget-object v3, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsService;->getGateKeeperService()Landroid/service/gatekeeper/IGateKeeperService;

    move-result-object v4

    const-wide/16 v6, 0x0

    move-object v5, p3

    move v8, p5

    invoke-virtual/range {v3 .. v8}, Lcom/android/server/locksettings/SyntheticPasswordManager;->verifyChallenge(Landroid/service/gatekeeper/IGateKeeperService;Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;JI)Lcom/android/internal/widget/VerifyCredentialResponse;

    goto :goto_7d

    .line 2756
    :cond_29
    iget-object v2, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsService;->getGateKeeperService()Landroid/service/gatekeeper/IGateKeeperService;

    move-result-object v3

    invoke-virtual {v2, v3, p3, p5}, Lcom/android/server/locksettings/SyntheticPasswordManager;->newSidForUser(Landroid/service/gatekeeper/IGateKeeperService;Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;I)V

    .line 2757
    iget-object v4, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsService;->getGateKeeperService()Landroid/service/gatekeeper/IGateKeeperService;

    move-result-object v5

    const-wide/16 v7, 0x0

    move-object v6, p3

    move v9, p5

    invoke-virtual/range {v4 .. v9}, Lcom/android/server/locksettings/SyntheticPasswordManager;->verifyChallenge(Landroid/service/gatekeeper/IGateKeeperService;Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;JI)Lcom/android/internal/widget/VerifyCredentialResponse;

    .line 2758
    invoke-virtual {p3}, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->deriveDiskEncryptionKey()[B

    move-result-object v2

    invoke-direct {p0, p5, v2}, Lcom/android/server/locksettings/LockSettingsService;->setAuthlessUserKeyProtection(I[B)V

    .line 2759
    invoke-direct {p0, p5}, Lcom/android/server/locksettings/LockSettingsService;->fixateNewestUserKeyAuth(I)V

    .line 2760
    invoke-virtual {p3}, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->deriveKeyStorePassword()[B

    move-result-object p3

    invoke-direct {p0, p3, p5}, Lcom/android/server/locksettings/LockSettingsService;->setKeystorePassword([BI)V

    goto :goto_7d

    .line 2765
    :cond_51
    invoke-direct {p0, p5}, Lcom/android/server/locksettings/LockSettingsService;->getDecryptedPasswordsForAllTiedProfiles(I)Ljava/util/Map;

    move-result-object v2

    .line 2768
    iget-object v3, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    invoke-virtual {v3, p5}, Lcom/android/server/locksettings/SyntheticPasswordManager;->clearSidForUser(I)V

    .line 2769
    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsService;->getGateKeeperService()Landroid/service/gatekeeper/IGateKeeperService;

    move-result-object v3

    invoke-interface {v3, p5}, Landroid/service/gatekeeper/IGateKeeperService;->clearSecureUserId(I)V

    .line 2773
    invoke-virtual {p3}, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->deriveDiskEncryptionKey()[B

    move-result-object v3

    invoke-direct {p0, p5, p4, v3}, Lcom/android/server/locksettings/LockSettingsService;->unlockUserKey(I[B[B)V

    .line 2774
    invoke-virtual {p3}, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->deriveDiskEncryptionKey()[B

    move-result-object v3

    invoke-direct {p0, p5, p4, v3}, Lcom/android/server/locksettings/LockSettingsService;->clearUserKeyAuth(I[B[B)V

    .line 2775
    invoke-direct {p0, p5}, Lcom/android/server/locksettings/LockSettingsService;->fixateNewestUserKeyAuth(I)V

    .line 2776
    invoke-virtual {p3}, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->deriveKeyStorePassword()[B

    move-result-object p3

    invoke-direct {p0, p3, p5}, Lcom/android/server/locksettings/LockSettingsService;->unlockKeystore([BI)V

    .line 2777
    invoke-direct {p0, p4, p5}, Lcom/android/server/locksettings/LockSettingsService;->setKeystorePassword([BI)V

    move-object p4, v2

    .line 2779
    :goto_7d
    const-string/jumbo p3, "sp-handle"

    invoke-virtual {p0, p3, v0, v1, p5}, Lcom/android/server/locksettings/LockSettingsService;->setLong(Ljava/lang/String;JI)V

    .line 2780
    invoke-direct {p0, p5, p4}, Lcom/android/server/locksettings/LockSettingsService;->synchronizeUnifiedWorkChallengeForProfiles(ILjava/util/Map;)V

    .line 2782
    invoke-direct {p0, p2, p1, p5}, Lcom/android/server/locksettings/LockSettingsService;->notifyActivePasswordMetricsAvailable(I[BI)V

    .line 2784
    if-eqz p4, :cond_aa

    .line 2785
    invoke-interface {p4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_93
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_aa

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map$Entry;

    .line 2786
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [B

    const/4 p3, 0x0

    invoke-static {p2, p3}, Ljava/util/Arrays;->fill([BB)V

    .line 2787
    goto :goto_93

    .line 2790
    :cond_aa
    return-wide v0
.end method

.method private setLockCredentialWithToken([BIJ[BII)Z
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2980
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    monitor-enter v0

    .line 2981
    :try_start_3
    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    invoke-virtual {v1, p7}, Lcom/android/server/locksettings/SyntheticPasswordManager;->hasEscrowData(I)Z

    move-result v1

    if-eqz v1, :cond_32

    .line 2984
    invoke-direct/range {p0 .. p7}, Lcom/android/server/locksettings/LockSettingsService;->setLockCredentialWithTokenInternalLocked([BIJ[BII)Z

    move-result p2

    .line 2986
    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_3a

    .line 2987
    if-eqz p2, :cond_31

    .line 2988
    iget-object p3, p0, Lcom/android/server/locksettings/LockSettingsService;->mSeparateChallengeLock:Ljava/lang/Object;

    monitor-enter p3

    .line 2989
    const/4 p4, 0x1

    const/4 p5, 0x0

    :try_start_17
    invoke-direct {p0, p7, p4, p5}, Lcom/android/server/locksettings/LockSettingsService;->setSeparateProfileChallengeEnabledLocked(IZ[B)V

    .line 2990
    monitor-exit p3
    :try_end_1b
    .catchall {:try_start_17 .. :try_end_1b} :catchall_2e

    .line 2991
    if-nez p1, :cond_27

    .line 2995
    iget-object p1, p0, Lcom/android/server/locksettings/LockSettingsService;->mHandler:Landroid/os/Handler;

    new-instance p3, Lcom/android/server/locksettings/-$$Lambda$LockSettingsService$gO9oFCXC4cllN2vDJyEnqnNPMMw;

    invoke-direct {p3, p0, p7}, Lcom/android/server/locksettings/-$$Lambda$LockSettingsService$gO9oFCXC4cllN2vDJyEnqnNPMMw;-><init>(Lcom/android/server/locksettings/LockSettingsService;I)V

    invoke-virtual {p1, p3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2997
    :cond_27
    invoke-direct {p0, p7}, Lcom/android/server/locksettings/LockSettingsService;->notifyPasswordChanged(I)V

    .line 2998
    invoke-direct {p0, p7}, Lcom/android/server/locksettings/LockSettingsService;->notifySeparateProfileChallengeChanged(I)V

    goto :goto_31

    .line 2990
    :catchall_2e
    move-exception p1

    :try_start_2f
    monitor-exit p3
    :try_end_30
    .catchall {:try_start_2f .. :try_end_30} :catchall_2e

    throw p1

    .line 3000
    :cond_31
    :goto_31
    return p2

    .line 2982
    :cond_32
    :try_start_32
    new-instance p1, Ljava/lang/SecurityException;

    const-string p2, "Escrow token is disabled on the current user"

    invoke-direct {p1, p2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 2986
    :catchall_3a
    move-exception p1

    monitor-exit v0
    :try_end_3c
    .catchall {:try_start_32 .. :try_end_3c} :catchall_3a

    throw p1
.end method

.method private setLockCredentialWithTokenInternalLocked([BIJ[BII)Z
    .registers 14
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

    .line 3008
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    .line 3009
    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsService;->getGateKeeperService()Landroid/service/gatekeeper/IGateKeeperService;

    move-result-object v1

    .line 3008
    move-wide v2, p3

    move-object v4, p5

    move v5, p7

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/locksettings/SyntheticPasswordManager;->unwrapTokenBasedSyntheticPassword(Landroid/service/gatekeeper/IGateKeeperService;J[BI)Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;

    move-result-object p3

    .line 3010
    iget-object p4, p3, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;->authToken:Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;

    const/4 p5, 0x0

    const-string v0, "LockSettingsService"

    if-nez p4, :cond_1a

    .line 3011
    const-string p1, "Invalid escrow token supplied"

    invoke-static {v0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3012
    return p5

    .line 3014
    :cond_1a
    iget-object p4, p3, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;->gkResponse:Lcom/android/internal/widget/VerifyCredentialResponse;

    invoke-virtual {p4}, Lcom/android/internal/widget/VerifyCredentialResponse;->getResponseCode()I

    move-result p4

    if-eqz p4, :cond_28

    .line 3017
    const-string p1, "Obsolete token: synthetic password derived but it fails GK verification."

    invoke-static {v0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3019
    return p5

    .line 3022
    :cond_28
    int-to-long p4, p6

    const-string v0, "lockscreen.password_type"

    invoke-virtual {p0, v0, p4, p5, p7}, Lcom/android/server/locksettings/LockSettingsService;->setLong(Ljava/lang/String;JI)V

    .line 3023
    invoke-direct {p0, p7}, Lcom/android/server/locksettings/LockSettingsService;->getSyntheticPasswordHandleLocked(I)J

    move-result-wide p4

    .line 3024
    iget-object v3, p3, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;->authToken:Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v4, p6

    move v5, p7

    invoke-direct/range {v0 .. v5}, Lcom/android/server/locksettings/LockSettingsService;->setLockCredentialWithAuthTokenLocked([BILcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;II)J

    .line 3026
    iget-object p1, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    invoke-virtual {p1, p4, p5, p7}, Lcom/android/server/locksettings/SyntheticPasswordManager;->destroyPasswordBasedSyntheticPassword(JI)V

    .line 3028
    iget-object p1, p3, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;->authToken:Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;

    invoke-direct {p0, p7, p1}, Lcom/android/server/locksettings/LockSettingsService;->onAuthTokenKnownForUser(ILcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;)V

    .line 3029
    const/4 p1, 0x1

    return p1
.end method

.method private setSeparateProfileChallengeEnabledLocked(IZ[B)V
    .registers 6
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mSeparateChallengeLock"
        }
    .end annotation

    .line 1010
    const-string v0, "lockscreen.profilechallenge"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, p1}, Lcom/android/server/locksettings/LockSettingsService;->getBoolean(Ljava/lang/String;ZI)Z

    move-result v1

    .line 1011
    invoke-virtual {p0, v0, p2, p1}, Lcom/android/server/locksettings/LockSettingsService;->setBoolean(Ljava/lang/String;ZI)V

    .line 1013
    if-eqz p2, :cond_15

    .line 1014
    :try_start_c
    iget-object p2, p0, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    invoke-virtual {p2, p1}, Lcom/android/server/locksettings/LockSettingsStorage;->removeChildProfileLock(I)V

    .line 1015
    invoke-direct {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->removeKeystoreProfileKey(I)V

    goto :goto_18

    .line 1017
    :cond_15
    invoke-virtual {p0, p1, p3}, Lcom/android/server/locksettings/LockSettingsService;->tieManagedProfileLockIfNecessary(I[B)V
    :try_end_18
    .catch Ljava/lang/IllegalStateException; {:try_start_c .. :try_end_18} :catch_1a

    .line 1022
    :goto_18
    nop

    .line 1023
    return-void

    .line 1019
    :catch_1a
    move-exception p2

    .line 1020
    invoke-virtual {p0, v0, v1, p1}, Lcom/android/server/locksettings/LockSettingsService;->setBoolean(Ljava/lang/String;ZI)V

    .line 1021
    throw p2
.end method

.method private setStringUnchecked(Ljava/lang/String;ILjava/lang/String;)V
    .registers 6

    .line 1052
    const/16 v0, -0x270f

    if-eq p2, v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    const-string v1, "cannot store lock settings for FRP user"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 1054
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    invoke-virtual {v0, p1, p3, p2}, Lcom/android/server/locksettings/LockSettingsStorage;->writeKeyValue(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1055
    sget-object p2, Lcom/android/server/locksettings/LockSettingsService;->SETTINGS_TO_BACKUP:[Ljava/lang/String;

    invoke-static {p2, p1}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1e

    .line 1056
    const-string p1, "com.android.providers.settings"

    invoke-static {p1}, Landroid/app/backup/BackupManager;->dataChanged(Ljava/lang/String;)V

    .line 1058
    :cond_1e
    return-void
.end method

.method private setUserKeyProtection(I[BLcom/android/internal/widget/VerifyCredentialResponse;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1724
    if-eqz p3, :cond_39

    .line 1727
    invoke-virtual {p3}, Lcom/android/internal/widget/VerifyCredentialResponse;->getResponseCode()I

    move-result v0

    if-nez v0, :cond_1e

    .line 1731
    invoke-virtual {p3}, Lcom/android/internal/widget/VerifyCredentialResponse;->getPayload()[B

    move-result-object p3

    .line 1732
    if-eqz p3, :cond_16

    .line 1735
    invoke-static {p2}, Lcom/android/server/locksettings/LockSettingsService;->secretFromCredential([B)[B

    move-result-object p2

    invoke-direct {p0, p1, p3, p2}, Lcom/android/server/locksettings/LockSettingsService;->addUserKeyAuth(I[B[B)V

    .line 1736
    return-void

    .line 1733
    :cond_16
    new-instance p1, Landroid/os/RemoteException;

    const-string p2, "Empty payload verifying a credential we just set"

    invoke-direct {p1, p2}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1728
    :cond_1e
    new-instance p1, Landroid/os/RemoteException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Non-OK response verifying a credential we just set: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1729
    invoke-virtual {p3}, Lcom/android/internal/widget/VerifyCredentialResponse;->getResponseCode()I

    move-result p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1725
    :cond_39
    new-instance p1, Landroid/os/RemoteException;

    const-string p2, "Null response verifying a credential we just set"

    invoke-direct {p1, p2}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private shouldCacheSpForUser(I)Z
    .registers 5

    .line 2511
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    const-string/jumbo v2, "user_setup_complete"

    invoke-static {v0, v2, v1, p1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-nez v0, :cond_12

    .line 2513
    const/4 p1, 0x1

    return p1

    .line 2519
    :cond_12
    const-class v0, Landroid/app/admin/DevicePolicyManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManagerInternal;

    .line 2521
    if-nez v0, :cond_1d

    .line 2522
    return v1

    .line 2524
    :cond_1d
    invoke-virtual {v0, p1}, Landroid/app/admin/DevicePolicyManagerInternal;->canUserHaveUntrustedCredentialReset(I)Z

    move-result p1

    return p1
.end method

.method private showEncryptionNotification(Landroid/os/UserHandle;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V
    .registers 10

    .line 562
    invoke-static {}, Landroid/os/storage/StorageManager;->isFileEncryptedNativeOrEmulated()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 564
    :cond_7
    new-instance v0, Landroid/app/Notification$Builder;

    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsService;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/android/internal/notification/SystemNotificationChannels;->DEVICE_ADMIN:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const v1, 0x1080532

    .line 566
    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v0

    const-wide/16 v1, 0x0

    .line 567
    invoke-virtual {v0, v1, v2}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 568
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 569
    invoke-virtual {v0, p2}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/locksettings/LockSettingsService;->mContext:Landroid/content/Context;

    const v3, 0x106001c

    .line 570
    invoke-virtual {v2, v3}, Landroid/content/Context;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 572
    invoke-virtual {v0, p2}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object p2

    .line 573
    invoke-virtual {p2, p3}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object p2

    .line 574
    invoke-virtual {p2, p4}, Landroid/app/Notification$Builder;->setSubText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object p2

    .line 575
    invoke-virtual {p2, v1}, Landroid/app/Notification$Builder;->setVisibility(I)Landroid/app/Notification$Builder;

    move-result-object p2

    .line 576
    invoke-virtual {p2, p5}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object p2

    .line 577
    invoke-virtual {p2}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object p2

    .line 578
    iget-object p3, p0, Lcom/android/server/locksettings/LockSettingsService;->mNotificationManager:Landroid/app/NotificationManager;

    const/4 p4, 0x0

    const/16 p5, 0x9

    invoke-virtual {p3, p4, p5, p2, p1}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    .line 580
    return-void
.end method

.method private showEncryptionNotificationForProfile(Landroid/os/UserHandle;)V
    .registers 10

    .line 535
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 536
    const v1, 0x1040603

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    .line 538
    const v1, 0x1040602

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    .line 540
    const v1, 0x1040601

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    .line 543
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mContext:Landroid/content/Context;

    const-string v1, "keyguard"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    .line 544
    nop

    .line 545
    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    .line 544
    const/4 v2, 0x0

    invoke-virtual {v0, v2, v2, v1}, Landroid/app/KeyguardManager;->createConfirmDeviceCredentialIntent(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)Landroid/content/Intent;

    move-result-object v0

    .line 546
    if-nez v0, :cond_32

    .line 547
    return-void

    .line 549
    :cond_32
    const/high16 v1, 0x10800000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 551
    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsService;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    const/high16 v3, 0x8000000

    invoke-static {v1, v2, v0, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v7

    .line 554
    move-object v2, p0

    move-object v3, p1

    invoke-direct/range {v2 .. v7}, Lcom/android/server/locksettings/LockSettingsService;->showEncryptionNotification(Landroid/os/UserHandle;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 555
    return-void
.end method

.method private spBasedDoVerifyCredential([BIIJILcom/android/internal/widget/ICheckCredentialProgressCallback;Ljava/util/ArrayList;)Lcom/android/internal/widget/VerifyCredentialResponse;
    .registers 26
    .param p3  # I
        .annotation build Lcom/android/server/locksettings/LockSettingsService$ChallengeType;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BIIJI",
            "Lcom/android/internal/widget/ICheckCredentialProgressCallback;",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/locksettings/LockSettingsService$PendingResetLockout;",
            ">;)",
            "Lcom/android/internal/widget/VerifyCredentialResponse;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2632
    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p3

    move/from16 v9, p6

    iget-object v3, v0, Lcom/android/server/locksettings/LockSettingsService;->mInjector:Lcom/android/server/locksettings/LockSettingsService$Injector;

    invoke-virtual {v3, v9}, Lcom/android/server/locksettings/LockSettingsService$Injector;->hasEnrolledBiometrics(I)Z

    move-result v10

    .line 2634
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "spBasedDoVerifyCredential: user="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " challengeType="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " hasEnrolledBiometrics="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "LockSettingsService"

    invoke-static {v4, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2636
    const/4 v3, 0x0

    const/4 v4, -0x1

    if-ne v1, v4, :cond_3b

    .line 2637
    move-object v11, v3

    goto :goto_3d

    .line 2636
    :cond_3b
    move-object/from16 v11, p1

    .line 2640
    :goto_3d
    iget-object v4, v0, Lcom/android/server/locksettings/LockSettingsService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 2644
    if-nez v2, :cond_61

    const-string v5, "android.hardware.biometrics.face"

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_61

    if-eqz v10, :cond_61

    .line 2648
    const/4 v2, 0x2

    .line 2649
    iget-object v4, v0, Lcom/android/server/locksettings/LockSettingsService;->mContext:Landroid/content/Context;

    const-class v5, Landroid/hardware/face/FaceManager;

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/face/FaceManager;

    invoke-virtual {v4}, Landroid/hardware/face/FaceManager;->generateChallenge()J

    move-result-wide v4

    move v14, v2

    move-wide v12, v4

    goto :goto_64

    .line 2654
    :cond_61
    move-wide/from16 v12, p4

    move v14, v2

    :goto_64
    iget-object v15, v0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    monitor-enter v15

    .line 2655
    :try_start_67
    invoke-direct {v0, v9}, Lcom/android/server/locksettings/LockSettingsService;->isSyntheticPasswordBasedCredentialLocked(I)Z

    move-result v2

    if-nez v2, :cond_6f

    .line 2656
    monitor-exit v15

    return-object v3

    .line 2658
    :cond_6f
    const/16 v2, -0x270f

    if-ne v9, v2, :cond_81

    .line 2659
    iget-object v2, v0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/locksettings/LockSettingsService;->getGateKeeperService()Landroid/service/gatekeeper/IGateKeeperService;

    move-result-object v0

    move-object/from16 v8, p7

    invoke-virtual {v2, v0, v11, v1, v8}, Lcom/android/server/locksettings/SyntheticPasswordManager;->verifyFrpCredential(Landroid/service/gatekeeper/IGateKeeperService;[BILcom/android/internal/widget/ICheckCredentialProgressCallback;)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object v0

    monitor-exit v15

    return-object v0

    .line 2663
    :cond_81
    move-object/from16 v8, p7

    invoke-direct {v0, v9}, Lcom/android/server/locksettings/LockSettingsService;->getSyntheticPasswordHandleLocked(I)J

    move-result-wide v4

    .line 2664
    iget-object v2, v0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    .line 2665
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/locksettings/LockSettingsService;->getGateKeeperService()Landroid/service/gatekeeper/IGateKeeperService;

    move-result-object v3

    .line 2664
    move-object v6, v11

    move/from16 v7, p6

    move-object/from16 v8, p7

    invoke-virtual/range {v2 .. v8}, Lcom/android/server/locksettings/SyntheticPasswordManager;->unwrapPasswordBasedSyntheticPassword(Landroid/service/gatekeeper/IGateKeeperService;J[BILcom/android/internal/widget/ICheckCredentialProgressCallback;)Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;

    move-result-object v8

    .line 2667
    iget v2, v8, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;->credentialType:I

    if-eq v2, v1, :cond_a5

    .line 2668
    const-string v0, "LockSettingsService"

    const-string v1, "Credential type mismatch."

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2669
    sget-object v0, Lcom/android/internal/widget/VerifyCredentialResponse;->ERROR:Lcom/android/internal/widget/VerifyCredentialResponse;

    monitor-exit v15

    return-object v0

    .line 2671
    :cond_a5
    iget-object v2, v8, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;->gkResponse:Lcom/android/internal/widget/VerifyCredentialResponse;

    .line 2673
    invoke-virtual {v2}, Lcom/android/internal/widget/VerifyCredentialResponse;->getResponseCode()I

    move-result v3

    if-nez v3, :cond_d1

    .line 2676
    iget-object v2, v0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/locksettings/LockSettingsService;->getGateKeeperService()Landroid/service/gatekeeper/IGateKeeperService;

    move-result-object v3

    iget-object v4, v8, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;->authToken:Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;

    move-wide v5, v12

    move/from16 v7, p6

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/locksettings/SyntheticPasswordManager;->verifyChallenge(Landroid/service/gatekeeper/IGateKeeperService;Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;JI)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object v2

    .line 2678
    invoke-virtual {v2}, Lcom/android/internal/widget/VerifyCredentialResponse;->getResponseCode()I

    move-result v3

    if-eqz v3, :cond_ce

    .line 2681
    const-string v0, "LockSettingsService"

    const-string/jumbo v1, "verifyChallenge with SP failed."

    invoke-static {v0, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 2682
    sget-object v0, Lcom/android/internal/widget/VerifyCredentialResponse;->ERROR:Lcom/android/internal/widget/VerifyCredentialResponse;

    monitor-exit v15

    return-object v0

    .line 2678
    :cond_ce
    move-object/from16 v16, v2

    goto :goto_d3

    .line 2673
    :cond_d1
    move-object/from16 v16, v2

    .line 2685
    :goto_d3
    monitor-exit v15
    :try_end_d4
    .catchall {:try_start_67 .. :try_end_d4} :catchall_161

    .line 2687
    invoke-virtual/range {v16 .. v16}, Lcom/android/internal/widget/VerifyCredentialResponse;->getResponseCode()I

    move-result v2

    if-nez v2, :cond_14c

    .line 2688
    invoke-direct {v0, v1, v11, v9}, Lcom/android/server/locksettings/LockSettingsService;->notifyActivePasswordMetricsAvailable(I[BI)V

    .line 2689
    iget-object v1, v8, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;->authToken:Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;

    invoke-virtual {v1}, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->deriveKeyStorePassword()[B

    move-result-object v1

    invoke-direct {v0, v1, v9}, Lcom/android/server/locksettings/LockSettingsService;->unlockKeystore([BI)V

    .line 2692
    if-eqz v10, :cond_100

    .line 2693
    if-nez p8, :cond_f0

    .line 2694
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    goto :goto_f2

    .line 2693
    :cond_f0
    move-object/from16 v1, p8

    .line 2696
    :goto_f2
    new-instance v2, Lcom/android/server/locksettings/LockSettingsService$PendingResetLockout;

    invoke-virtual/range {v16 .. v16}, Lcom/android/internal/widget/VerifyCredentialResponse;->getPayload()[B

    move-result-object v3

    invoke-direct {v2, v0, v9, v3}, Lcom/android/server/locksettings/LockSettingsService$PendingResetLockout;-><init>(Lcom/android/server/locksettings/LockSettingsService;I[B)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v10, v1

    goto :goto_102

    .line 2692
    :cond_100
    move-object/from16 v10, p8

    .line 2699
    :goto_102
    iget-object v1, v8, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;->authToken:Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;

    invoke-virtual {v1}, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->deriveDiskEncryptionKey()[B

    move-result-object v4

    .line 2700
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unlocking user "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " with secret only, length "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v2, v4

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "LockSettingsService"

    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2701
    const/4 v3, 0x0

    move-object/from16 v1, p0

    move/from16 v2, p6

    move v5, v14

    move-wide v6, v12

    move-object v11, v8

    move-object v8, v10

    invoke-direct/range {v1 .. v8}, Lcom/android/server/locksettings/LockSettingsService;->unlockUser(I[B[BIJLjava/util/ArrayList;)V

    .line 2703
    iget-object v1, v11, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;->authToken:Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;

    invoke-direct {v0, v1, v9}, Lcom/android/server/locksettings/LockSettingsService;->activateEscrowTokens(Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;I)V

    .line 2705
    invoke-direct {v0, v9}, Lcom/android/server/locksettings/LockSettingsService;->isManagedProfileWithSeparatedLock(I)Z

    move-result v1

    if-eqz v1, :cond_141

    .line 2706
    invoke-direct {v0, v9}, Lcom/android/server/locksettings/LockSettingsService;->setDeviceUnlockedForUser(I)V

    .line 2708
    :cond_141
    iget-object v1, v0, Lcom/android/server/locksettings/LockSettingsService;->mStrongAuth:Lcom/android/server/locksettings/LockSettingsStrongAuth;

    invoke-virtual {v1, v9}, Lcom/android/server/locksettings/LockSettingsStrongAuth;->reportSuccessfulStrongAuthUnlock(I)V

    .line 2710
    iget-object v1, v11, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;->authToken:Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;

    invoke-direct {v0, v9, v1}, Lcom/android/server/locksettings/LockSettingsService;->onAuthTokenKnownForUser(ILcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;)V

    goto :goto_15f

    .line 2711
    :cond_14c
    invoke-virtual/range {v16 .. v16}, Lcom/android/internal/widget/VerifyCredentialResponse;->getResponseCode()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_15f

    .line 2712
    invoke-virtual/range {v16 .. v16}, Lcom/android/internal/widget/VerifyCredentialResponse;->getTimeout()I

    move-result v1

    if-lez v1, :cond_160

    .line 2713
    const/16 v1, 0x8

    invoke-virtual {v0, v1, v9}, Lcom/android/server/locksettings/LockSettingsService;->requireStrongAuth(II)V

    goto :goto_160

    .line 2711
    :cond_15f
    :goto_15f
    nop

    .line 2717
    :cond_160
    :goto_160
    return-object v16

    .line 2685
    :catchall_161
    move-exception v0

    :try_start_162
    monitor-exit v15
    :try_end_163
    .catchall {:try_start_162 .. :try_end_163} :catchall_161

    throw v0
.end method

.method private spBasedSetLockCredentialInternalLocked([BI[BIIZZ)V
    .registers 24
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

    .line 2798
    move-object/from16 v7, p0

    move/from16 v8, p2

    move/from16 v6, p5

    invoke-direct {v7, v6}, Lcom/android/server/locksettings/LockSettingsService;->isManagedProfileWithUnifiedLock(I)Z

    move-result v0

    const-string v1, "LockSettingsService"

    if-eqz v0, :cond_20

    .line 2801
    :try_start_e
    invoke-virtual {v7, v6}, Lcom/android/server/locksettings/LockSettingsService;->getDecryptedPasswordForTiedProfile(I)[B

    move-result-object v0
    :try_end_12
    .catch Ljava/io/FileNotFoundException; {:try_start_e .. :try_end_12} :catch_1a
    .catch Ljava/security/UnrecoverableKeyException; {:try_start_e .. :try_end_12} :catch_13
    .catch Ljava/security/InvalidKeyException; {:try_start_e .. :try_end_12} :catch_13
    .catch Ljava/security/KeyStoreException; {:try_start_e .. :try_end_12} :catch_13
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_e .. :try_end_12} :catch_13
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_e .. :try_end_12} :catch_13
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_e .. :try_end_12} :catch_13
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_e .. :try_end_12} :catch_13
    .catch Ljavax/crypto/BadPaddingException; {:try_start_e .. :try_end_12} :catch_13
    .catch Ljava/security/cert/CertificateException; {:try_start_e .. :try_end_12} :catch_13
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_12} :catch_13

    .line 2809
    goto :goto_22

    .line 2804
    :catch_13
    move-exception v0

    .line 2808
    const-string v2, "Failed to decrypt child profile key"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_20

    .line 2802
    :catch_1a
    move-exception v0

    .line 2803
    const-string v0, "Child profile key not found"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2811
    :cond_20
    :goto_20
    move-object/from16 v0, p3

    :goto_22
    invoke-direct {v7, v6}, Lcom/android/server/locksettings/LockSettingsService;->getSyntheticPasswordHandleLocked(I)J

    move-result-wide v4

    .line 2812
    iget-object v9, v7, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    .line 2813
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/locksettings/LockSettingsService;->getGateKeeperService()Landroid/service/gatekeeper/IGateKeeperService;

    move-result-object v10

    const/4 v15, 0x0

    .line 2812
    move-wide v11, v4

    move-object v13, v0

    move/from16 v14, p5

    invoke-virtual/range {v9 .. v15}, Lcom/android/server/locksettings/SyntheticPasswordManager;->unwrapPasswordBasedSyntheticPassword(Landroid/service/gatekeeper/IGateKeeperService;J[BILcom/android/internal/widget/ICheckCredentialProgressCallback;)Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;

    move-result-object v2

    .line 2814
    iget-object v3, v2, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;->gkResponse:Lcom/android/internal/widget/VerifyCredentialResponse;

    .line 2815
    iget-object v2, v2, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;->authToken:Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;

    .line 2818
    if-eqz v0, :cond_5e

    if-nez v2, :cond_5e

    .line 2819
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to enroll "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2820
    const/4 v2, 0x2

    if-ne v8, v2, :cond_50

    .line 2821
    const-string/jumbo v2, "password"

    goto :goto_53

    :cond_50
    const-string/jumbo v2, "pattern"

    :goto_53
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2823
    :cond_5e
    nop

    .line 2824
    const/4 v0, 0x1

    const/4 v9, 0x0

    if-eqz v2, :cond_68

    .line 2825
    invoke-direct {v7, v6, v2}, Lcom/android/server/locksettings/LockSettingsService;->onAuthTokenKnownForUser(ILcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;)V

    move-object v0, v2

    goto :goto_a0

    .line 2826
    :cond_68
    if-eqz v3, :cond_da

    .line 2828
    invoke-virtual {v3}, Lcom/android/internal/widget/VerifyCredentialResponse;->getResponseCode()I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_d2

    .line 2831
    const-string v2, "Untrusted credential change invoked"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2833
    iget-object v1, v7, Lcom/android/server/locksettings/LockSettingsService;->mSpCache:Landroid/util/SparseArray;

    invoke-virtual {v1, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;

    .line 2834
    if-nez p6, :cond_9e

    .line 2835
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Untrusted credential change was invoked but it was not allowed. This is likely a bug. Auth token is null: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v1, :cond_8f

    move v9, v0

    .line 2837
    :cond_8f
    invoke-static {v9}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 2839
    :cond_9e
    move v9, v0

    move-object v0, v1

    .line 2844
    :goto_a0
    if-eqz v0, :cond_ca

    .line 2845
    if-eqz v9, :cond_ad

    .line 2850
    iget-object v1, v7, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/locksettings/LockSettingsService;->getGateKeeperService()Landroid/service/gatekeeper/IGateKeeperService;

    move-result-object v2

    invoke-virtual {v1, v2, v0, v6}, Lcom/android/server/locksettings/SyntheticPasswordManager;->newSidForUser(Landroid/service/gatekeeper/IGateKeeperService;Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;I)V

    .line 2852
    :cond_ad
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    move-wide v9, v4

    move-object v4, v0

    move/from16 v5, p4

    move v11, v6

    move/from16 v6, p5

    invoke-direct/range {v1 .. v6}, Lcom/android/server/locksettings/LockSettingsService;->setLockCredentialWithAuthTokenLocked([BILcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;II)J

    .line 2854
    iget-object v0, v7, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    invoke-virtual {v0, v9, v10, v11}, Lcom/android/server/locksettings/SyntheticPasswordManager;->destroyPasswordBasedSyntheticPassword(JI)V

    .line 2862
    move-object/from16 v1, p1

    move/from16 v2, p7

    invoke-direct {v7, v8, v1, v11, v2}, Lcom/android/server/locksettings/LockSettingsService;->sendCredentialsOnChangeIfRequired(I[BIZ)V

    .line 2863
    return-void

    .line 2856
    :cond_ca
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Untrusted credential reset not possible without cached SP"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2841
    :cond_d2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Rate limit exceeded, so password was not changed."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2827
    :cond_da
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Password change failed."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private synchronizeUnifiedWorkChallengeForProfiles(ILjava/util/Map;)V
    .registers 16
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

    .line 1397
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1398
    return-void

    .line 1400
    :cond_d
    invoke-direct {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->isUserSecure(I)Z

    move-result v0

    .line 1401
    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v1, p1}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    move-result-object p1

    .line 1402
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    .line 1403
    const/4 v2, 0x0

    :goto_1c
    if-ge v2, v1, :cond_7b

    .line 1404
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/UserInfo;

    .line 1405
    invoke-virtual {v3}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v4

    if-eqz v4, :cond_78

    .line 1406
    iget v3, v3, Landroid/content/pm/UserInfo;->id:I

    .line 1407
    iget-object v4, p0, Lcom/android/server/locksettings/LockSettingsService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v4, v3}, Lcom/android/internal/widget/LockPatternUtils;->isSeparateProfileChallengeEnabled(I)Z

    move-result v4

    if-eqz v4, :cond_35

    .line 1408
    goto :goto_78

    .line 1410
    :cond_35
    if-eqz v0, :cond_3c

    .line 1411
    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, Lcom/android/server/locksettings/LockSettingsService;->tieManagedProfileLockIfNecessary(I[B)V

    goto :goto_78

    .line 1415
    :cond_3c
    if-eqz p2, :cond_5e

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {p2, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5e

    .line 1416
    const/4 v6, 0x0

    const/4 v7, -0x1

    .line 1417
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {p2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v8, v4

    check-cast v8, [B

    const/4 v9, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x1

    .line 1416
    move-object v5, p0

    move v10, v3

    invoke-direct/range {v5 .. v12}, Lcom/android/server/locksettings/LockSettingsService;->setLockCredentialInternal([BI[BIIZZ)V

    goto :goto_70

    .line 1421
    :cond_5e
    const-string v4, "LockSettingsService"

    const-string v5, "clear tied profile challenges, but no password supplied."

    invoke-static {v4, v5}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 1423
    const/4 v6, 0x0

    const/4 v7, -0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v11, 0x1

    const/4 v12, 0x1

    move-object v5, p0

    move v10, v3

    invoke-direct/range {v5 .. v12}, Lcom/android/server/locksettings/LockSettingsService;->setLockCredentialInternal([BI[BIIZZ)V

    .line 1427
    :goto_70
    iget-object v4, p0, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    invoke-virtual {v4, v3}, Lcom/android/server/locksettings/LockSettingsStorage;->removeChildProfileLock(I)V

    .line 1428
    invoke-direct {p0, v3}, Lcom/android/server/locksettings/LockSettingsService;->removeKeystoreProfileKey(I)V

    .line 1403
    :cond_78
    :goto_78
    add-int/lit8 v2, v2, 0x1

    goto :goto_1c

    .line 1432
    :cond_7b
    return-void
.end method

.method private tiedManagedProfileReadyToUnlock(Landroid/content/pm/UserInfo;)Z
    .registers 4

    .line 1348
    invoke-virtual {p1}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v0

    if-eqz v0, :cond_26

    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v1, p1, Landroid/content/pm/UserInfo;->id:I

    .line 1349
    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->isSeparateProfileChallengeEnabled(I)Z

    move-result v0

    if-nez v0, :cond_26

    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    iget v1, p1, Landroid/content/pm/UserInfo;->id:I

    .line 1350
    invoke-virtual {v0, v1}, Lcom/android/server/locksettings/LockSettingsStorage;->hasChildProfileLock(I)Z

    move-result v0

    if-eqz v0, :cond_26

    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mUserManager:Landroid/os/UserManager;

    iget p1, p1, Landroid/content/pm/UserInfo;->id:I

    .line 1351
    invoke-virtual {v0, p1}, Landroid/os/UserManager;->isUserRunning(I)Z

    move-result p1

    if-eqz p1, :cond_26

    const/4 p1, 0x1

    goto :goto_27

    :cond_26
    const/4 p1, 0x0

    .line 1348
    :goto_27
    return p1
.end method

.method private tryDeriveAuthTokenForUnsecuredPrimaryUser(I)V
    .registers 10

    .line 649
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    monitor-enter v0

    .line 651
    :try_start_3
    invoke-direct {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->isSyntheticPasswordBasedCredentialLocked(I)Z

    move-result v1

    if-nez v1, :cond_b

    .line 652
    monitor-exit v0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_5d

    return-void

    .line 656
    :cond_b
    :try_start_b
    invoke-direct {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->getSyntheticPasswordHandleLocked(I)J

    move-result-wide v3

    .line 657
    const/4 v5, 0x0

    .line 658
    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    .line 660
    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsService;->getGateKeeperService()Landroid/service/gatekeeper/IGateKeeperService;

    move-result-object v2

    const/4 v7, 0x0

    .line 659
    move v6, p1

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/locksettings/SyntheticPasswordManager;->unwrapPasswordBasedSyntheticPassword(Landroid/service/gatekeeper/IGateKeeperService;J[BILcom/android/internal/widget/ICheckCredentialProgressCallback;)Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;

    move-result-object v1

    .line 661
    iget-object v2, v1, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;->authToken:Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;

    if-eqz v2, :cond_3c

    .line 662
    const-string v2, "LockSettingsService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Retrieved auth token for user "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 663
    iget-object v1, v1, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;->authToken:Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;

    invoke-direct {p0, p1, v1}, Lcom/android/server/locksettings/LockSettingsService;->onAuthTokenKnownForUser(ILcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;)V

    goto :goto_52

    .line 665
    :cond_3c
    const-string v1, "LockSettingsService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Auth token not available for user "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_52
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_52} :catch_53
    .catchall {:try_start_b .. :try_end_52} :catchall_5d

    .line 669
    :goto_52
    goto :goto_5b

    .line 667
    :catch_53
    move-exception p1

    .line 668
    :try_start_54
    const-string v1, "LockSettingsService"

    const-string v2, "Failure retrieving auth token"

    invoke-static {v1, v2, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 670
    :goto_5b
    monitor-exit v0

    .line 671
    return-void

    .line 670
    :catchall_5d
    move-exception p1

    monitor-exit v0
    :try_end_5f
    .catchall {:try_start_54 .. :try_end_5f} :catchall_5d

    throw p1
.end method

.method private tryRemoveUserFromSpCacheLater(I)V
    .registers 4

    .line 2492
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/locksettings/-$$Lambda$LockSettingsService$TCZYHfmf32xFYZ8VXhgwaf00Ndo;

    invoke-direct {v1, p0, p1}, Lcom/android/server/locksettings/-$$Lambda$LockSettingsService$TCZYHfmf32xFYZ8VXhgwaf00Ndo;-><init>(Lcom/android/server/locksettings/LockSettingsService;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2505
    return-void
.end method

.method private unlockChildProfile(IZIJLjava/util/ArrayList;)V
    .registers 16
    .param p3  # I
        .annotation build Lcom/android/server/locksettings/LockSettingsService$ChallengeType;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZIJ",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/locksettings/LockSettingsService$PendingResetLockout;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1236
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->getDecryptedPasswordForTiedProfile(I)[B

    move-result-object v1

    const/4 v2, 0x2

    const/4 v7, 0x0

    move-object v0, p0

    move v3, p3

    move-wide v4, p4

    move v6, p1

    move-object v8, p6

    invoke-direct/range {v0 .. v8}, Lcom/android/server/locksettings/LockSettingsService;->doVerifyCredential([BIIJILcom/android/internal/widget/ICheckCredentialProgressCallback;Ljava/util/ArrayList;)Lcom/android/internal/widget/VerifyCredentialResponse;
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

    .line 1251
    goto :goto_2d

    .line 1240
    :catch_f
    move-exception p1

    .line 1244
    instance-of p3, p1, Ljava/io/FileNotFoundException;

    const-string p4, "LockSettingsService"

    if-eqz p3, :cond_1c

    .line 1245
    const-string p1, "Child profile key not found"

    invoke-static {p4, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2d

    .line 1246
    :cond_1c
    if-eqz p2, :cond_28

    instance-of p2, p1, Landroid/security/keystore/UserNotAuthenticatedException;

    if-eqz p2, :cond_28

    .line 1247
    const-string p1, "Parent keystore seems locked, ignoring"

    invoke-static {p4, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2d

    .line 1249
    :cond_28
    const-string p2, "Failed to decrypt child profile key"

    invoke-static {p4, p2, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1252
    :goto_2d
    return-void
.end method

.method private unlockKeystore([BI)V
    .registers 4

    .line 1198
    if-nez p1, :cond_4

    const/4 p1, 0x0

    goto :goto_a

    :cond_4
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>([B)V

    move-object p1, v0

    .line 1199
    :goto_a
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v0

    .line 1200
    invoke-virtual {v0, p2, p1}, Landroid/security/KeyStore;->unlock(ILjava/lang/String;)Z

    .line 1201
    return-void
.end method

.method private unlockUser(I[B[B)V
    .registers 12

    .line 1255
    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v7}, Lcom/android/server/locksettings/LockSettingsService;->unlockUser(I[B[BIJLjava/util/ArrayList;)V

    .line 1256
    return-void
.end method

.method private unlockUser(I[B[BIJLjava/util/ArrayList;)V
    .registers 16
    .param p4  # I
        .annotation build Lcom/android/server/locksettings/LockSettingsService$ChallengeType;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[B[BIJ",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/locksettings/LockSettingsService$PendingResetLockout;",
            ">;)V"
        }
    .end annotation

    .line 1270
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0, p1}, Landroid/os/UserManager;->isUserUnlockingOrUnlocked(I)Z

    move-result v0

    .line 1271
    new-instance v1, Ljava/util/concurrent/CountDownLatch;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 1272
    new-instance v2, Lcom/android/server/locksettings/LockSettingsService$3;

    invoke-direct {v2, p0, v1}, Lcom/android/server/locksettings/LockSettingsService$3;-><init>(Lcom/android/server/locksettings/LockSettingsService;Ljava/util/concurrent/CountDownLatch;)V

    .line 1291
    :try_start_11
    iget-object v3, p0, Lcom/android/server/locksettings/LockSettingsService;->mActivityManager:Landroid/app/IActivityManager;

    invoke-interface {v3, p1, p2, p3, v2}, Landroid/app/IActivityManager;->unlockUser(I[B[BLandroid/os/IProgressListener;)Z
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_16} :catch_8b

    .line 1294
    nop

    .line 1297
    const-wide/16 p2, 0xf

    :try_start_19
    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, p2, p3, v2}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_1e
    .catch Ljava/lang/InterruptedException; {:try_start_19 .. :try_end_1e} :catch_1f

    .line 1300
    goto :goto_27

    .line 1298
    :catch_1f
    move-exception p2

    .line 1299
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Thread;->interrupt()V

    .line 1302
    :goto_27
    iget-object p2, p0, Lcom/android/server/locksettings/LockSettingsService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {p2, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result p2

    if-eqz p2, :cond_34

    .line 1303
    return-void

    .line 1306
    :cond_34
    iget-object p2, p0, Lcom/android/server/locksettings/LockSettingsService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {p2, p1}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_3e
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_78

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/content/pm/UserInfo;

    .line 1308
    invoke-direct {p0, p2}, Lcom/android/server/locksettings/LockSettingsService;->tiedManagedProfileReadyToUnlock(Landroid/content/pm/UserInfo;)Z

    move-result p3

    if-eqz p3, :cond_63

    .line 1312
    :try_start_50
    iget v2, p2, Landroid/content/pm/UserInfo;->id:I

    const/4 v3, 0x0

    move-object v1, p0

    move v4, p4

    move-wide v5, p5

    move-object v7, p7

    invoke-direct/range {v1 .. v7}, Lcom/android/server/locksettings/LockSettingsService;->unlockChildProfile(IZIJLjava/util/ArrayList;)V
    :try_end_5a
    .catch Landroid/os/RemoteException; {:try_start_50 .. :try_end_5a} :catch_5b

    .line 1316
    goto :goto_63

    .line 1314
    :catch_5b
    move-exception p3

    .line 1315
    const-string v1, "LockSettingsService"

    const-string v2, "Failed to unlock child profile"

    invoke-static {v1, v2, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1320
    :cond_63
    :goto_63
    if-nez v0, :cond_77

    .line 1321
    invoke-static {}, Lcom/android/server/locksettings/LockSettingsService;->clearCallingIdentity()J

    move-result-wide v1

    .line 1323
    :try_start_69
    iget p2, p2, Landroid/content/pm/UserInfo;->id:I

    invoke-direct {p0, p2}, Lcom/android/server/locksettings/LockSettingsService;->maybeShowEncryptionNotificationForUser(I)V
    :try_end_6e
    .catchall {:try_start_69 .. :try_end_6e} :catchall_72

    .line 1325
    invoke-static {v1, v2}, Lcom/android/server/locksettings/LockSettingsService;->restoreCallingIdentity(J)V

    .line 1326
    goto :goto_77

    .line 1325
    :catchall_72
    move-exception p1

    invoke-static {v1, v2}, Lcom/android/server/locksettings/LockSettingsService;->restoreCallingIdentity(J)V

    throw p1

    .line 1329
    :cond_77
    :goto_77
    goto :goto_3e

    .line 1331
    :cond_78
    if-eqz p7, :cond_8a

    invoke-virtual {p7}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_8a

    .line 1332
    iget-object p1, p0, Lcom/android/server/locksettings/LockSettingsService;->mHandler:Landroid/os/Handler;

    new-instance p2, Lcom/android/server/locksettings/-$$Lambda$LockSettingsService$AUVBZ9-CG1pE2tUZGYyBunk-llo;

    invoke-direct {p2, p0, p7, p4}, Lcom/android/server/locksettings/-$$Lambda$LockSettingsService$AUVBZ9-CG1pE2tUZGYyBunk-llo;-><init>(Lcom/android/server/locksettings/LockSettingsService;Ljava/util/ArrayList;I)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1345
    :cond_8a
    return-void

    .line 1292
    :catch_8b
    move-exception p1

    .line 1293
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method private unlockUserKey(I[B[B)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1781
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    .line 1782
    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsService;->mStorageManager:Landroid/os/storage/IStorageManager;

    iget v0, v0, Landroid/content/pm/UserInfo;->serialNumber:I

    invoke-interface {v1, p1, v0, p2, p3}, Landroid/os/storage/IStorageManager;->unlockUserKey(II[B[B)V

    .line 1783
    return-void
.end method

.method private unlockUserWithToken(J[BI)Z
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3035
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    monitor-enter v0

    .line 3036
    :try_start_3
    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    invoke-virtual {v1, p4}, Lcom/android/server/locksettings/SyntheticPasswordManager;->hasEscrowData(I)Z

    move-result v1

    if-eqz v1, :cond_38

    .line 3039
    iget-object v2, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsService;->getGateKeeperService()Landroid/service/gatekeeper/IGateKeeperService;

    move-result-object v3

    move-wide v4, p1

    move-object v6, p3

    move v7, p4

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/locksettings/SyntheticPasswordManager;->unwrapTokenBasedSyntheticPassword(Landroid/service/gatekeeper/IGateKeeperService;J[BI)Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;

    move-result-object p1

    .line 3041
    iget-object p2, p1, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;->authToken:Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;

    if-nez p2, :cond_26

    .line 3042
    const-string p1, "LockSettingsService"

    const-string p2, "Invalid escrow token supplied"

    invoke-static {p1, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3043
    const/4 p1, 0x0

    monitor-exit v0

    return p1

    .line 3045
    :cond_26
    monitor-exit v0
    :try_end_27
    .catchall {:try_start_3 .. :try_end_27} :catchall_40

    .line 3046
    const/4 p2, 0x0

    iget-object p3, p1, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;->authToken:Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;

    invoke-virtual {p3}, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->deriveDiskEncryptionKey()[B

    move-result-object p3

    invoke-direct {p0, p4, p2, p3}, Lcom/android/server/locksettings/LockSettingsService;->unlockUser(I[B[B)V

    .line 3047
    iget-object p1, p1, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;->authToken:Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;

    invoke-direct {p0, p4, p1}, Lcom/android/server/locksettings/LockSettingsService;->onAuthTokenKnownForUser(ILcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;)V

    .line 3048
    const/4 p1, 0x1

    return p1

    .line 3037
    :cond_38
    :try_start_38
    new-instance p1, Ljava/lang/SecurityException;

    const-string p2, "Escrow token is disabled on the current user"

    invoke-direct {p1, p2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3045
    :catchall_40
    move-exception p1

    monitor-exit v0
    :try_end_42
    .catchall {:try_start_38 .. :try_end_42} :catchall_40

    throw p1
.end method

.method private verifyCredential(ILcom/android/server/locksettings/LockSettingsStorage$CredentialHash;[BIJLcom/android/internal/widget/ICheckCredentialProgressCallback;)Lcom/android/internal/widget/VerifyCredentialResponse;
    .registers 24
    .param p4  # I
        .annotation build Lcom/android/server/locksettings/LockSettingsService$ChallengeType;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1993
    move-object/from16 v0, p0

    move/from16 v9, p1

    move-object/from16 v10, p2

    move-object/from16 v11, p3

    if-eqz v10, :cond_f

    iget-object v1, v10, Lcom/android/server/locksettings/LockSettingsStorage$CredentialHash;->hash:[B

    array-length v1, v1

    if-nez v1, :cond_16

    :cond_f
    if-eqz v11, :cond_15d

    array-length v1, v11

    if-nez v1, :cond_16

    goto/16 :goto_15d

    .line 1999
    :cond_16
    if-eqz v10, :cond_15a

    if-eqz v11, :cond_15a

    array-length v1, v11

    if-nez v1, :cond_1f

    goto/16 :goto_15a

    .line 2005
    :cond_1f
    invoke-static {}, Landroid/os/StrictMode;->noteDiskRead()V

    .line 2007
    iget v1, v10, Lcom/android/server/locksettings/LockSettingsStorage$CredentialHash;->version:I

    const/high16 v12, 0x10000

    const/high16 v13, 0x50000

    const/4 v14, 0x1

    if-nez v1, :cond_a7

    .line 2009
    iget v1, v10, Lcom/android/server/locksettings/LockSettingsStorage$CredentialHash;->type:I

    if-ne v1, v14, :cond_3d

    .line 2010
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/locksettings/LockSettingsService;->getLockPatternSize(I)B

    move-result v1

    .line 2011
    nop

    .line 2012
    invoke-static {v11, v1}, Lcom/android/internal/widget/LockPatternUtils;->byteArrayToPattern([BB)Ljava/util/List;

    move-result-object v2

    .line 2011
    invoke-static {v2, v1}, Lcom/android/internal/widget/LockPatternUtils;->patternToHash(Ljava/util/List;B)[B

    move-result-object v1

    .line 2014
    goto :goto_47

    .line 2015
    :cond_3d
    iget-object v1, v0, Lcom/android/server/locksettings/LockSettingsService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1, v11, v9}, Lcom/android/internal/widget/LockPatternUtils;->legacyPasswordToHash([BI)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    .line 2017
    :goto_47
    iget-object v2, v10, Lcom/android/server/locksettings/LockSettingsStorage$CredentialHash;->hash:[B

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-eqz v1, :cond_a4

    .line 2018
    iget v1, v10, Lcom/android/server/locksettings/LockSettingsStorage$CredentialHash;->type:I

    if-ne v1, v14, :cond_5b

    .line 2019
    invoke-static/range {p3 .. p3}, Lcom/android/internal/widget/LockPatternUtils;->patternByteArrayToBaseZero([B)[B

    move-result-object v1

    invoke-direct {v0, v1, v9}, Lcom/android/server/locksettings/LockSettingsService;->unlockKeystore([BI)V

    goto :goto_5e

    .line 2021
    :cond_5b
    invoke-direct {v0, v11, v9}, Lcom/android/server/locksettings/LockSettingsService;->unlockKeystore([BI)V

    .line 2025
    :goto_5e
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unlocking user with fake token: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "LockSettingsService"

    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2026
    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    .line 2027
    invoke-direct {v0, v9, v1, v1}, Lcom/android/server/locksettings/LockSettingsService;->unlockUser(I[B[B)V

    .line 2030
    iget v3, v10, Lcom/android/server/locksettings/LockSettingsStorage$CredentialHash;->type:I

    const/4 v4, 0x0

    .line 2031
    iget v1, v10, Lcom/android/server/locksettings/LockSettingsStorage$CredentialHash;->type:I

    if-ne v1, v14, :cond_88

    .line 2032
    move v5, v12

    goto :goto_89

    .line 2033
    :cond_88
    move v5, v13

    :goto_89
    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 2030
    move-object/from16 v1, p0

    move-object/from16 v2, p3

    move/from16 v6, p1

    invoke-direct/range {v1 .. v8}, Lcom/android/server/locksettings/LockSettingsService;->setLockCredentialInternal([BI[BIIZZ)V

    .line 2036
    if-nez p4, :cond_a3

    .line 2037
    iget v1, v10, Lcom/android/server/locksettings/LockSettingsStorage$CredentialHash;->type:I

    invoke-direct {v0, v1, v11, v9}, Lcom/android/server/locksettings/LockSettingsService;->notifyActivePasswordMetricsAvailable(I[BI)V

    .line 2039
    iget v1, v10, Lcom/android/server/locksettings/LockSettingsStorage$CredentialHash;->type:I

    invoke-direct {v0, v1, v11, v9}, Lcom/android/server/locksettings/LockSettingsService;->sendCredentialsOnUnlockIfRequired(I[BI)V

    .line 2040
    sget-object v0, Lcom/android/internal/widget/VerifyCredentialResponse;->OK:Lcom/android/internal/widget/VerifyCredentialResponse;

    return-object v0

    .line 2045
    :cond_a3
    goto :goto_a7

    .line 2046
    :cond_a4
    sget-object v0, Lcom/android/internal/widget/VerifyCredentialResponse;->ERROR:Lcom/android/internal/widget/VerifyCredentialResponse;

    return-object v0

    .line 2049
    :cond_a7
    :goto_a7
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/locksettings/LockSettingsService;->getGateKeeperService()Landroid/service/gatekeeper/IGateKeeperService;

    move-result-object v1

    iget-object v5, v10, Lcom/android/server/locksettings/LockSettingsStorage$CredentialHash;->hash:[B

    .line 2050
    move/from16 v2, p1

    move-wide/from16 v3, p5

    move-object/from16 v6, p3

    invoke-interface/range {v1 .. v6}, Landroid/service/gatekeeper/IGateKeeperService;->verifyChallenge(IJ[B[B)Landroid/service/gatekeeper/GateKeeperResponse;

    move-result-object v1

    .line 2051
    invoke-direct {v0, v1}, Lcom/android/server/locksettings/LockSettingsService;->convertResponse(Landroid/service/gatekeeper/GateKeeperResponse;)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object v15

    .line 2052
    invoke-virtual {v1}, Landroid/service/gatekeeper/GateKeeperResponse;->getShouldReEnroll()Z

    move-result v1

    .line 2054
    invoke-virtual {v15}, Lcom/android/internal/widget/VerifyCredentialResponse;->getResponseCode()I

    move-result v2

    if-nez v2, :cond_146

    .line 2058
    if-eqz p7, :cond_ca

    .line 2059
    invoke-interface/range {p7 .. p7}, Lcom/android/internal/widget/ICheckCredentialProgressCallback;->onCredentialVerified()V

    .line 2061
    :cond_ca
    iget v2, v10, Lcom/android/server/locksettings/LockSettingsStorage$CredentialHash;->type:I

    invoke-direct {v0, v2, v11, v9}, Lcom/android/server/locksettings/LockSettingsService;->notifyActivePasswordMetricsAvailable(I[BI)V

    .line 2062
    invoke-direct {v0, v11, v9}, Lcom/android/server/locksettings/LockSettingsService;->unlockKeystore([BI)V

    .line 2064
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unlocking user "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " with token length "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2065
    invoke-virtual {v15}, Lcom/android/internal/widget/VerifyCredentialResponse;->getPayload()[B

    move-result-object v3

    array-length v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2064
    const-string v3, "LockSettingsService"

    invoke-static {v3, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2066
    invoke-virtual {v15}, Lcom/android/internal/widget/VerifyCredentialResponse;->getPayload()[B

    move-result-object v2

    invoke-static/range {p3 .. p3}, Lcom/android/server/locksettings/LockSettingsService;->secretFromCredential([B)[B

    move-result-object v3

    invoke-direct {v0, v9, v2, v3}, Lcom/android/server/locksettings/LockSettingsService;->unlockUser(I[B[B)V

    .line 2068
    invoke-direct/range {p0 .. p1}, Lcom/android/server/locksettings/LockSettingsService;->isManagedProfileWithSeparatedLock(I)Z

    move-result v2

    if-eqz v2, :cond_109

    .line 2069
    invoke-direct/range {p0 .. p1}, Lcom/android/server/locksettings/LockSettingsService;->setDeviceUnlockedForUser(I)V

    .line 2071
    :cond_109
    iget v2, v10, Lcom/android/server/locksettings/LockSettingsStorage$CredentialHash;->type:I

    if-ne v2, v14, :cond_10f

    .line 2072
    move v5, v12

    goto :goto_110

    .line 2073
    :cond_10f
    move v5, v13

    .line 2075
    :goto_110
    if-eqz v1, :cond_122

    .line 2076
    iget v3, v10, Lcom/android/server/locksettings/LockSettingsStorage$CredentialHash;->type:I

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p3

    move-object/from16 v4, p3

    move/from16 v6, p1

    invoke-direct/range {v1 .. v8}, Lcom/android/server/locksettings/LockSettingsService;->setLockCredentialInternal([BI[BIIZZ)V

    goto :goto_13d

    .line 2081
    :cond_122
    iget-object v7, v0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    monitor-enter v7

    .line 2082
    :try_start_125
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/locksettings/LockSettingsService;->shouldMigrateToSyntheticPasswordLocked(I)Z

    move-result v1

    if-eqz v1, :cond_13c

    .line 2083
    iget-object v2, v10, Lcom/android/server/locksettings/LockSettingsStorage$CredentialHash;->hash:[B

    iget v4, v10, Lcom/android/server/locksettings/LockSettingsStorage$CredentialHash;->type:I

    move-object/from16 v1, p0

    move-object/from16 v3, p3

    move/from16 v6, p1

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/locksettings/LockSettingsService;->initializeSyntheticPasswordLocked([B[BIII)Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;

    move-result-object v1

    .line 2086
    invoke-direct {v0, v1, v9}, Lcom/android/server/locksettings/LockSettingsService;->activateEscrowTokens(Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;I)V

    .line 2088
    :cond_13c
    monitor-exit v7
    :try_end_13d
    .catchall {:try_start_125 .. :try_end_13d} :catchall_143

    .line 2091
    :goto_13d
    iget v1, v10, Lcom/android/server/locksettings/LockSettingsStorage$CredentialHash;->type:I

    invoke-direct {v0, v1, v11, v9}, Lcom/android/server/locksettings/LockSettingsService;->sendCredentialsOnUnlockIfRequired(I[BI)V

    goto :goto_158

    .line 2088
    :catchall_143
    move-exception v0

    :try_start_144
    monitor-exit v7
    :try_end_145
    .catchall {:try_start_144 .. :try_end_145} :catchall_143

    throw v0

    .line 2093
    :cond_146
    invoke-virtual {v15}, Lcom/android/internal/widget/VerifyCredentialResponse;->getResponseCode()I

    move-result v1

    if-ne v1, v14, :cond_158

    .line 2094
    invoke-virtual {v15}, Lcom/android/internal/widget/VerifyCredentialResponse;->getTimeout()I

    move-result v1

    if-lez v1, :cond_159

    .line 2095
    const/16 v1, 0x8

    invoke-virtual {v0, v1, v9}, Lcom/android/server/locksettings/LockSettingsService;->requireStrongAuth(II)V

    goto :goto_159

    .line 2093
    :cond_158
    :goto_158
    nop

    .line 2099
    :cond_159
    :goto_159
    return-object v15

    .line 2000
    :cond_15a
    :goto_15a
    sget-object v0, Lcom/android/internal/widget/VerifyCredentialResponse;->ERROR:Lcom/android/internal/widget/VerifyCredentialResponse;

    return-object v0

    .line 1996
    :cond_15d
    :goto_15d
    sget-object v0, Lcom/android/internal/widget/VerifyCredentialResponse;->OK:Lcom/android/internal/widget/VerifyCredentialResponse;

    return-object v0
.end method


# virtual methods
.method public checkCredential([BIILcom/android/internal/widget/ICheckCredentialProgressCallback;)Lcom/android/internal/widget/VerifyCredentialResponse;
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1857
    invoke-direct {p0, p3}, Lcom/android/server/locksettings/LockSettingsService;->checkPasswordReadPermission(I)V

    .line 1858
    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v6, p3

    move-object v7, p4

    invoke-direct/range {v0 .. v7}, Lcom/android/server/locksettings/LockSettingsService;->doVerifyCredential([BIIJILcom/android/internal/widget/ICheckCredentialProgressCallback;)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object p2

    .line 1860
    invoke-virtual {p2}, Lcom/android/internal/widget/VerifyCredentialResponse;->getResponseCode()I

    move-result p4

    if-nez p4, :cond_24

    if-nez p3, :cond_24

    .line 1863
    if-nez p1, :cond_1b

    const/4 p1, 0x0

    goto :goto_21

    :cond_1b
    new-instance p3, Ljava/lang/String;

    invoke-direct {p3, p1}, Ljava/lang/String;-><init>([B)V

    move-object p1, p3

    .line 1864
    :goto_21
    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->retainPassword(Ljava/lang/String;)V

    .line 1866
    :cond_24
    return-object p2
.end method

.method public checkVoldPassword(I)Z
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2135
    iget-boolean v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mFirstCallToVold:Z

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 2136
    return v1

    .line 2138
    :cond_6
    iput-boolean v1, p0, Lcom/android/server/locksettings/LockSettingsService;->mFirstCallToVold:Z

    .line 2140
    invoke-direct {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->checkPasswordReadPermission(I)V

    .line 2150
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mInjector:Lcom/android/server/locksettings/LockSettingsService$Injector;

    invoke-virtual {v0}, Lcom/android/server/locksettings/LockSettingsService$Injector;->getStorageManager()Landroid/os/storage/IStorageManager;

    move-result-object v0

    .line 2153
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 2155
    :try_start_15
    invoke-interface {v0}, Landroid/os/storage/IStorageManager;->getPassword()Ljava/lang/String;

    move-result-object v4

    .line 2156
    invoke-interface {v0}, Landroid/os/storage/IStorageManager;->clearPassword()V
    :try_end_1c
    .catchall {:try_start_15 .. :try_end_1c} :catchall_59

    .line 2158
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2159
    nop

    .line 2160
    if-nez v4, :cond_23

    .line 2161
    return v1

    .line 2165
    :cond_23
    const/4 v0, 0x0

    const/4 v2, 0x1

    :try_start_25
    iget-object v3, p0, Lcom/android/server/locksettings/LockSettingsService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v3, p1}, Lcom/android/internal/widget/LockPatternUtils;->isLockPatternEnabled(I)Z

    move-result v3

    if-eqz v3, :cond_3c

    .line 2166
    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {p0, v3, v2, p1, v0}, Lcom/android/server/locksettings/LockSettingsService;->checkCredential([BIILcom/android/internal/widget/ICheckCredentialProgressCallback;)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object v3

    .line 2168
    invoke-virtual {v3}, Lcom/android/internal/widget/VerifyCredentialResponse;->getResponseCode()I

    move-result v3
    :try_end_39
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_39} :catch_3d

    if-nez v3, :cond_3c

    .line 2169
    return v2

    .line 2173
    :cond_3c
    goto :goto_3e

    .line 2172
    :catch_3d
    move-exception v3

    .line 2176
    :goto_3e
    :try_start_3e
    iget-object v3, p0, Lcom/android/server/locksettings/LockSettingsService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v3, p1}, Lcom/android/internal/widget/LockPatternUtils;->isLockPasswordEnabled(I)Z

    move-result v3

    if-eqz v3, :cond_56

    .line 2177
    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    const/4 v4, 0x2

    invoke-virtual {p0, v3, v4, p1, v0}, Lcom/android/server/locksettings/LockSettingsService;->checkCredential([BIILcom/android/internal/widget/ICheckCredentialProgressCallback;)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object p1

    .line 2179
    invoke-virtual {p1}, Lcom/android/internal/widget/VerifyCredentialResponse;->getResponseCode()I

    move-result p1
    :try_end_53
    .catch Ljava/lang/Exception; {:try_start_3e .. :try_end_53} :catch_57

    if-nez p1, :cond_56

    .line 2180
    return v2

    .line 2184
    :cond_56
    goto :goto_58

    .line 2183
    :catch_57
    move-exception p1

    .line 2186
    :goto_58
    return v1

    .line 2158
    :catchall_59
    move-exception p1

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1
.end method

.method public closeSession(Ljava/lang/String;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2348
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mRecoverableKeyStoreManager:Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;

    invoke-virtual {v0, p1}, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->closeSession(Ljava/lang/String;)V

    .line 2349
    return-void
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 12

    .line 3053
    iget-object p1, p0, Lcom/android/server/locksettings/LockSettingsService;->mContext:Landroid/content/Context;

    const-string p3, "LockSettingsService"

    invoke-static {p1, p3, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result p1

    if-nez p1, :cond_b

    return-void

    .line 3055
    :cond_b
    const-string p1, "Current lock settings service state:"

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3056
    const/4 p1, 0x1

    new-array p3, p1, [Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 3057
    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->isSyntheticPasswordEnabled()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const/4 v1, 0x0

    aput-object v0, p3, v1

    .line 3056
    const-string v0, "SP Enabled = %b"

    invoke-static {v0, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3059
    iget-object p3, p0, Lcom/android/server/locksettings/LockSettingsService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {p3}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object p3

    .line 3060
    move v0, v1

    :goto_30
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_8c

    .line 3061
    invoke-interface {p3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/UserInfo;

    iget v2, v2, Landroid/content/pm/UserInfo;->id:I

    .line 3062
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "    User "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3063
    iget-object v3, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    monitor-enter v3

    .line 3064
    :try_start_55
    const-string v4, "        SP Handle = %x"

    new-array v5, p1, [Ljava/lang/Object;

    .line 3065
    invoke-direct {p0, v2}, Lcom/android/server/locksettings/LockSettingsService;->getSyntheticPasswordHandleLocked(I)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v5, v1

    .line 3064
    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3066
    monitor-exit v3
    :try_end_6b
    .catchall {:try_start_55 .. :try_end_6b} :catchall_89

    .line 3068
    :try_start_6b
    const-string v3, "        SID = %x"

    new-array v4, p1, [Ljava/lang/Object;

    .line 3069
    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsService;->getGateKeeperService()Landroid/service/gatekeeper/IGateKeeperService;

    move-result-object v5

    invoke-interface {v5, v2}, Landroid/service/gatekeeper/IGateKeeperService;->getSecureUserId(I)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v4, v1

    .line 3068
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_84
    .catch Landroid/os/RemoteException; {:try_start_6b .. :try_end_84} :catch_85

    .line 3072
    goto :goto_86

    .line 3070
    :catch_85
    move-exception v2

    .line 3060
    :goto_86
    add-int/lit8 v0, v0, 0x1

    goto :goto_30

    .line 3066
    :catchall_89
    move-exception p1

    :try_start_8a
    monitor-exit v3
    :try_end_8b
    .catchall {:try_start_8a .. :try_end_8b} :catchall_89

    throw p1

    .line 3074
    :cond_8c
    return-void
.end method

.method public generateKey(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2358
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mRecoverableKeyStoreManager:Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;

    invoke-virtual {v0, p1}, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->generateKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public generateKeyWithMetadata(Ljava/lang/String;[B)Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2364
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mRecoverableKeyStoreManager:Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->generateKeyWithMetadata(Ljava/lang/String;[B)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getBoolean(Ljava/lang/String;ZI)Z
    .registers 5

    .line 1062
    invoke-direct {p0, p1, p3}, Lcom/android/server/locksettings/LockSettingsService;->checkReadPermission(Ljava/lang/String;I)V

    .line 1063
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p3}, Lcom/android/server/locksettings/LockSettingsService;->getStringUnchecked(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    .line 1064
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_f

    .line 1065
    goto :goto_24

    :cond_f
    const-string p2, "1"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_23

    const-string/jumbo p2, "true"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_21

    goto :goto_23

    :cond_21
    const/4 p2, 0x0

    goto :goto_24

    :cond_23
    :goto_23
    const/4 p2, 0x1

    .line 1064
    :goto_24
    return p2
.end method

.method protected getDecryptedPasswordForTiedProfile(I)[B
    .registers 8
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

    .line 1210
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    invoke-virtual {v0, p1}, Lcom/android/server/locksettings/LockSettingsStorage;->readChildProfileLock(I)[B

    move-result-object v0

    .line 1211
    if-eqz v0, :cond_4c

    .line 1214
    const/4 v1, 0x0

    const/16 v2, 0xc

    invoke-static {v0, v1, v2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v1

    .line 1215
    array-length v3, v0

    invoke-static {v0, v2, v3}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v0

    .line 1218
    const-string v2, "AndroidKeyStore"

    invoke-static {v2}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v2

    .line 1219
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/security/KeyStore;->load(Ljava/security/KeyStore$LoadStoreParameter;)V

    .line 1220
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "profile_key_name_decrypt_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1, v3}, Ljava/security/KeyStore;->getKey(Ljava/lang/String;[C)Ljava/security/Key;

    move-result-object p1

    check-cast p1, Ljavax/crypto/SecretKey;

    .line 1223
    const-string v2, "AES/GCM/NoPadding"

    invoke-static {v2}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v2

    .line 1226
    const/4 v3, 0x2

    new-instance v4, Ljavax/crypto/spec/GCMParameterSpec;

    const/16 v5, 0x80

    invoke-direct {v4, v5, v1}, Ljavax/crypto/spec/GCMParameterSpec;-><init>(I[B)V

    invoke-virtual {v2, v3, p1, v4}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 1227
    invoke-virtual {v2, v0}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p1

    .line 1228
    return-object p1

    .line 1212
    :cond_4c
    new-instance p1, Ljava/io/FileNotFoundException;

    const-string v0, "Child profile lock file not found"

    invoke-direct {p1, v0}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected declared-synchronized getGateKeeperService()Landroid/service/gatekeeper/IGateKeeperService;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    monitor-enter p0

    .line 2437
    :try_start_1
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mGateKeeperService:Landroid/service/gatekeeper/IGateKeeperService;

    if-eqz v0, :cond_9

    .line 2438
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mGateKeeperService:Landroid/service/gatekeeper/IGateKeeperService;
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_2e

    monitor-exit p0

    return-object v0

    .line 2441
    :cond_9
    :try_start_9
    const-string v0, "android.service.gatekeeper.IGateKeeperService"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 2442
    const/4 v1, 0x0

    if-eqz v0, :cond_25

    .line 2443
    new-instance v2, Lcom/android/server/locksettings/LockSettingsService$GateKeeperDiedRecipient;

    invoke-direct {v2, p0, v1}, Lcom/android/server/locksettings/LockSettingsService$GateKeeperDiedRecipient;-><init>(Lcom/android/server/locksettings/LockSettingsService;Lcom/android/server/locksettings/LockSettingsService$1;)V

    const/4 v1, 0x0

    invoke-interface {v0, v2, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 2444
    invoke-static {v0}, Landroid/service/gatekeeper/IGateKeeperService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/gatekeeper/IGateKeeperService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mGateKeeperService:Landroid/service/gatekeeper/IGateKeeperService;

    .line 2445
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mGateKeeperService:Landroid/service/gatekeeper/IGateKeeperService;
    :try_end_23
    .catchall {:try_start_9 .. :try_end_23} :catchall_2e

    monitor-exit p0

    return-object v0

    .line 2448
    :cond_25
    :try_start_25
    const-string v0, "LockSettingsService"

    const-string v2, "Unable to acquire GateKeeperService"

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2c
    .catchall {:try_start_25 .. :try_end_2c} :catchall_2e

    .line 2449
    monitor-exit p0

    return-object v1

    .line 2436
    :catchall_2e
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getHashFactor([BI)[B
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2873
    invoke-direct {p0, p2}, Lcom/android/server/locksettings/LockSettingsService;->checkPasswordReadPermission(I)V

    .line 2874
    const/4 v0, 0x0

    if-eqz p1, :cond_9

    array-length v1, p1

    if-nez v1, :cond_a

    .line 2875
    :cond_9
    move-object p1, v0

    .line 2877
    :cond_a
    invoke-direct {p0, p2}, Lcom/android/server/locksettings/LockSettingsService;->isManagedProfileWithUnifiedLock(I)Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 2879
    :try_start_10
    invoke-virtual {p0, p2}, Lcom/android/server/locksettings/LockSettingsService;->getDecryptedPasswordForTiedProfile(I)[B

    move-result-object p1
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_14} :catch_16

    .line 2883
    move-object v6, p1

    goto :goto_20

    .line 2880
    :catch_16
    move-exception p1

    .line 2881
    const-string p2, "LockSettingsService"

    const-string v1, "Failed to get work profile credential"

    invoke-static {p2, v1, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2882
    return-object v0

    .line 2877
    :cond_1f
    move-object v6, p1

    .line 2885
    :goto_20
    iget-object p1, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    monitor-enter p1

    .line 2886
    :try_start_23
    invoke-direct {p0, p2}, Lcom/android/server/locksettings/LockSettingsService;->isSyntheticPasswordBasedCredentialLocked(I)Z

    move-result v1

    if-nez v1, :cond_32

    .line 2887
    const-string p2, "LockSettingsService"

    const-string v1, "Synthetic password not enabled"

    invoke-static {p2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2888
    monitor-exit p1

    return-object v0

    .line 2890
    :cond_32
    invoke-direct {p0, p2}, Lcom/android/server/locksettings/LockSettingsService;->getSyntheticPasswordHandleLocked(I)J

    move-result-wide v4

    .line 2891
    iget-object v2, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    .line 2892
    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsService;->getGateKeeperService()Landroid/service/gatekeeper/IGateKeeperService;

    move-result-object v3

    const/4 v8, 0x0

    .line 2891
    move v7, p2

    invoke-virtual/range {v2 .. v8}, Lcom/android/server/locksettings/SyntheticPasswordManager;->unwrapPasswordBasedSyntheticPassword(Landroid/service/gatekeeper/IGateKeeperService;J[BILcom/android/internal/widget/ICheckCredentialProgressCallback;)Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;

    move-result-object p2

    .line 2893
    iget-object v1, p2, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;->authToken:Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;

    if-nez v1, :cond_4f

    .line 2894
    const-string p2, "LockSettingsService"

    const-string v1, "Current credential is incorrect"

    invoke-static {p2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2895
    monitor-exit p1

    return-object v0

    .line 2897
    :cond_4f
    iget-object p2, p2, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;->authToken:Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;

    invoke-virtual {p2}, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->derivePasswordHashFactor()[B

    move-result-object p2

    monitor-exit p1

    return-object p2

    .line 2898
    :catchall_57
    move-exception p2

    monitor-exit p1
    :try_end_59
    .catchall {:try_start_23 .. :try_end_59} :catchall_57

    throw p2
.end method

.method public getKey(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2381
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mRecoverableKeyStoreManager:Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;

    invoke-virtual {v0, p1}, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->getKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getKeyChainSnapshot()Landroid/security/keystore/recovery/KeyChainSnapshot;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2290
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mRecoverableKeyStoreManager:Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;

    invoke-virtual {v0}, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->getKeyChainSnapshot()Landroid/security/keystore/recovery/KeyChainSnapshot;

    move-result-object v0

    return-object v0
.end method

.method public getLockPatternSize(I)B
    .registers 3

    .line 1445
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    invoke-virtual {v0, p1}, Lcom/android/server/locksettings/LockSettingsStorage;->getLockPatternSize(I)B

    move-result p1

    return p1
.end method

.method public getLong(Ljava/lang/String;JI)J
    .registers 6

    .line 1070
    invoke-direct {p0, p1, p4}, Lcom/android/server/locksettings/LockSettingsService;->checkReadPermission(Ljava/lang/String;I)V

    .line 1071
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p4}, Lcom/android/server/locksettings/LockSettingsService;->getStringUnchecked(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    .line 1072
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p4

    if-eqz p4, :cond_f

    goto :goto_13

    :cond_f
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p2

    :goto_13
    return-wide p2
.end method

.method public getPassword()Ljava/lang/String;
    .registers 4

    .line 1180
    invoke-direct {p0}, Lcom/android/server/locksettings/LockSettingsService;->checkCryptKeeperPermissions()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 1181
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.ACCESS_KEYGUARD_SECURE_STORAGE"

    const-string/jumbo v2, "no crypt_keeper or admin permission to get the password"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1185
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

    .line 2322
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

    .line 2311
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mRecoverableKeyStoreManager:Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;

    invoke-virtual {v0}, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->getRecoveryStatus()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getSeparateProfileChallengeEnabled(I)Z
    .registers 5

    .line 987
    const-string v0, "lockscreen.profilechallenge"

    invoke-direct {p0, v0, p1}, Lcom/android/server/locksettings/LockSettingsService;->checkReadPermission(Ljava/lang/String;I)V

    .line 988
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mSeparateChallengeLock:Ljava/lang/Object;

    monitor-enter v0

    .line 989
    :try_start_8
    const-string v1, "lockscreen.profilechallenge"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2, p1}, Lcom/android/server/locksettings/LockSettingsService;->getBoolean(Ljava/lang/String;ZI)Z

    move-result p1

    monitor-exit v0

    return p1

    .line 990
    :catchall_11
    move-exception p1

    monitor-exit v0
    :try_end_13
    .catchall {:try_start_8 .. :try_end_13} :catchall_11

    throw p1
.end method

.method public getString(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .registers 4

    .line 1077
    invoke-direct {p0, p1, p3}, Lcom/android/server/locksettings/LockSettingsService;->checkReadPermission(Ljava/lang/String;I)V

    .line 1078
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/locksettings/LockSettingsService;->getStringUnchecked(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getStringUnchecked(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .registers 6

    .line 1082
    const-string v0, "lock_pattern_autolock"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_22

    .line 1083
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide p1

    .line 1085
    :try_start_c
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0, p3}, Lcom/android/internal/widget/LockPatternUtils;->isLockPatternEnabled(I)Z

    move-result p3

    if-eqz p3, :cond_17

    const-string p3, "1"

    goto :goto_19

    :cond_17
    const-string p3, "0"
    :try_end_19
    .catchall {:try_start_c .. :try_end_19} :catchall_1d

    .line 1087
    :goto_19
    invoke-static {p1, p2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1085
    return-object p3

    .line 1087
    :catchall_1d
    move-exception p3

    invoke-static {p1, p2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p3

    .line 1091
    :cond_22
    const/16 v1, -0x270f

    if-ne p3, v1, :cond_2b

    .line 1092
    invoke-direct {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->getFrpStringUnchecked(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 1095
    :cond_2b
    const-string v1, "legacy_lock_pattern_enabled"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_34

    .line 1096
    move-object p1, v0

    .line 1099
    :cond_34
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/locksettings/LockSettingsStorage;->readKeyValue(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getStrongAuthForUser(I)I
    .registers 3

    .line 2251
    invoke-direct {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->checkPasswordReadPermission(I)V

    .line 2252
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mStrongAuthTracker:Lcom/android/server/locksettings/LockSettingsService$SynchronizedStrongAuthTracker;

    invoke-virtual {v0, p1}, Lcom/android/server/locksettings/LockSettingsService$SynchronizedStrongAuthTracker;->getStrongAuthForUser(I)I

    move-result p1

    return p1
.end method

.method public hasPendingEscrowToken(I)Z
    .registers 4

    .line 2953
    invoke-direct {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->checkPasswordReadPermission(I)V

    .line 2954
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    monitor-enter v0

    .line 2955
    :try_start_6
    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    invoke-virtual {v1, p1}, Lcom/android/server/locksettings/SyntheticPasswordManager;->getPendingTokensForUser(I)Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_14

    const/4 p1, 0x1

    goto :goto_15

    :cond_14
    const/4 p1, 0x0

    :goto_15
    monitor-exit v0

    return p1

    .line 2956
    :catchall_17
    move-exception p1

    monitor-exit v0
    :try_end_19
    .catchall {:try_start_6 .. :try_end_19} :catchall_17

    throw p1
.end method

.method public havePassword(I)Z
    .registers 6

    .line 1115
    invoke-direct {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->checkPasswordHavePermission(I)V

    .line 1116
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    monitor-enter v0

    .line 1117
    :try_start_6
    invoke-direct {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->isSyntheticPasswordBasedCredentialLocked(I)Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 1118
    invoke-direct {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->getSyntheticPasswordHandleLocked(I)J

    move-result-wide v1

    .line 1119
    iget-object v3, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    invoke-virtual {v3, v1, v2, p1}, Lcom/android/server/locksettings/SyntheticPasswordManager;->getCredentialType(JI)I

    move-result p1

    const/4 v1, 0x2

    if-ne p1, v1, :cond_1b

    const/4 p1, 0x1

    goto :goto_1c

    :cond_1b
    const/4 p1, 0x0

    :goto_1c
    monitor-exit v0

    return p1

    .line 1121
    :cond_1e
    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_6 .. :try_end_1f} :catchall_26

    .line 1123
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    invoke-virtual {v0, p1}, Lcom/android/server/locksettings/LockSettingsStorage;->hasPassword(I)Z

    move-result p1

    return p1

    .line 1121
    :catchall_26
    move-exception p1

    :try_start_27
    monitor-exit v0
    :try_end_28
    .catchall {:try_start_27 .. :try_end_28} :catchall_26

    throw p1
.end method

.method public havePattern(I)Z
    .registers 6

    .line 1128
    invoke-direct {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->checkPasswordHavePermission(I)V

    .line 1129
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    monitor-enter v0

    .line 1130
    :try_start_6
    invoke-direct {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->isSyntheticPasswordBasedCredentialLocked(I)Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 1131
    invoke-direct {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->getSyntheticPasswordHandleLocked(I)J

    move-result-wide v1

    .line 1132
    iget-object v3, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    invoke-virtual {v3, v1, v2, p1}, Lcom/android/server/locksettings/SyntheticPasswordManager;->getCredentialType(JI)I

    move-result p1

    const/4 v1, 0x1

    if-ne p1, v1, :cond_1a

    goto :goto_1b

    :cond_1a
    const/4 v1, 0x0

    :goto_1b
    monitor-exit v0

    return v1

    .line 1134
    :cond_1d
    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_6 .. :try_end_1e} :catchall_25

    .line 1136
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    invoke-virtual {v0, p1}, Lcom/android/server/locksettings/LockSettingsStorage;->hasPattern(I)Z

    move-result p1

    return p1

    .line 1134
    :catchall_25
    move-exception p1

    :try_start_26
    monitor-exit v0
    :try_end_27
    .catchall {:try_start_26 .. :try_end_27} :catchall_25

    throw p1
.end method

.method public importKey(Ljava/lang/String;[B)Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2370
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mRecoverableKeyStoreManager:Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->importKey(Ljava/lang/String;[B)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public importKeyWithMetadata(Ljava/lang/String;[B[B)Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2376
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mRecoverableKeyStoreManager:Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->importKeyWithMetadata(Ljava/lang/String;[B[B)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public initRecoveryServiceWithSigFile(Ljava/lang/String;[B[B)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2284
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mRecoverableKeyStoreManager:Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->initRecoveryServiceWithSigFile(Ljava/lang/String;[B[B)V

    .line 2286
    return-void
.end method

.method protected initializeSyntheticPasswordLocked([B[BIII)Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;
    .registers 16
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

    .line 2568
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Initialize SyntheticPassword for user: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LockSettingsService"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2569
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    .line 2570
    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsService;->getGateKeeperService()Landroid/service/gatekeeper/IGateKeeperService;

    move-result-object v2

    .line 2569
    invoke-virtual {v0, v2, p1, p2, p5}, Lcom/android/server/locksettings/SyntheticPasswordManager;->newSyntheticPasswordAndSid(Landroid/service/gatekeeper/IGateKeeperService;[B[BI)Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;

    move-result-object v0

    .line 2571
    invoke-direct {p0, p5, v0}, Lcom/android/server/locksettings/LockSettingsService;->onAuthTokenKnownForUser(ILcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;)V

    .line 2572
    const/4 v2, 0x0

    if-nez v0, :cond_2c

    .line 2573
    const-string p1, "initializeSyntheticPasswordLocked returns null auth token"

    invoke-static {v1, p1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 2574
    return-object v2

    .line 2576
    :cond_2c
    iget-object v3, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsService;->getGateKeeperService()Landroid/service/gatekeeper/IGateKeeperService;

    move-result-object v4

    move-object v5, p2

    move v6, p3

    move-object v7, v0

    move v8, p4

    move v9, p5

    invoke-virtual/range {v3 .. v9}, Lcom/android/server/locksettings/SyntheticPasswordManager;->createPasswordBasedSyntheticPassword(Landroid/service/gatekeeper/IGateKeeperService;[BILcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;II)J

    move-result-wide p3

    .line 2578
    if-eqz p2, :cond_64

    .line 2579
    if-nez p1, :cond_48

    .line 2582
    iget-object p1, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsService;->getGateKeeperService()Landroid/service/gatekeeper/IGateKeeperService;

    move-result-object p2

    invoke-virtual {p1, p2, v0, p5}, Lcom/android/server/locksettings/SyntheticPasswordManager;->newSidForUser(Landroid/service/gatekeeper/IGateKeeperService;Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;I)V

    .line 2584
    :cond_48
    iget-object v3, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsService;->getGateKeeperService()Landroid/service/gatekeeper/IGateKeeperService;

    move-result-object v4

    const-wide/16 v6, 0x0

    move-object v5, v0

    move v8, p5

    invoke-virtual/range {v3 .. v8}, Lcom/android/server/locksettings/SyntheticPasswordManager;->verifyChallenge(Landroid/service/gatekeeper/IGateKeeperService;Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;JI)Lcom/android/internal/widget/VerifyCredentialResponse;

    .line 2585
    invoke-virtual {v0}, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->deriveDiskEncryptionKey()[B

    move-result-object p1

    invoke-direct {p0, p5, p1}, Lcom/android/server/locksettings/LockSettingsService;->setAuthlessUserKeyProtection(I[B)V

    .line 2586
    invoke-virtual {v0}, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->deriveKeyStorePassword()[B

    move-result-object p1

    invoke-direct {p0, p1, p5}, Lcom/android/server/locksettings/LockSettingsService;->setKeystorePassword([BI)V

    goto :goto_71

    .line 2588
    :cond_64
    invoke-direct {p0, p5}, Lcom/android/server/locksettings/LockSettingsService;->clearUserKeyProtection(I)V

    .line 2589
    invoke-direct {p0, v2, p5}, Lcom/android/server/locksettings/LockSettingsService;->setKeystorePassword([BI)V

    .line 2590
    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsService;->getGateKeeperService()Landroid/service/gatekeeper/IGateKeeperService;

    move-result-object p1

    invoke-interface {p1, p5}, Landroid/service/gatekeeper/IGateKeeperService;->clearSecureUserId(I)V

    .line 2592
    :goto_71
    invoke-direct {p0, p5}, Lcom/android/server/locksettings/LockSettingsService;->fixateNewestUserKeyAuth(I)V

    .line 2593
    const-string/jumbo p1, "sp-handle"

    invoke-virtual {p0, p1, p3, p4, p5}, Lcom/android/server/locksettings/LockSettingsService;->setLong(Ljava/lang/String;JI)V

    .line 2594
    return-object v0
.end method

.method public synthetic lambda$notifyActivePasswordMetricsAvailable$1$LockSettingsService(Landroid/app/admin/PasswordMetrics;I)V
    .registers 5

    .line 2113
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mContext:Landroid/content/Context;

    .line 2114
    const-string v1, "device_policy"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    .line 2115
    invoke-virtual {v0, p1, p2}, Landroid/app/admin/DevicePolicyManager;->setActivePasswordState(Landroid/app/admin/PasswordMetrics;I)V

    .line 2116
    return-void
.end method

.method public synthetic lambda$notifyPasswordChanged$2$LockSettingsService(I)V
    .registers 4

    .line 2126
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mContext:Landroid/content/Context;

    .line 2127
    const-string v1, "device_policy"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    .line 2128
    invoke-virtual {v0, p1}, Landroid/app/admin/DevicePolicyManager;->reportPasswordChanged(I)V

    .line 2129
    const-class v0, Lcom/android/server/wm/WindowManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/WindowManagerInternal;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/WindowManagerInternal;->reportPasswordChanged(I)V

    .line 2130
    return-void
.end method

.method public synthetic lambda$setLockCredentialWithToken$4$LockSettingsService(I)V
    .registers 3

    .line 2995
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v0}, Lcom/android/server/locksettings/LockSettingsService;->unlockUser(I[B[B)V

    return-void
.end method

.method public synthetic lambda$tryRemoveUserFromSpCacheLater$3$LockSettingsService(I)V
    .registers 4

    .line 2493
    invoke-direct {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->shouldCacheSpForUser(I)Z

    move-result v0

    if-nez v0, :cond_29

    .line 2499
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Removing SP from cache for user "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LockSettingsService"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2500
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    monitor-enter v0

    .line 2501
    :try_start_1f
    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpCache:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 2502
    monitor-exit v0

    goto :goto_29

    :catchall_26
    move-exception p1

    monitor-exit v0
    :try_end_28
    .catchall {:try_start_1f .. :try_end_28} :catchall_26

    throw p1

    .line 2504
    :cond_29
    :goto_29
    return-void
.end method

.method public synthetic lambda$unlockUser$0$LockSettingsService(Ljava/util/ArrayList;I)V
    .registers 7

    .line 1333
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mContext:Landroid/content/Context;

    const-class v1, Landroid/hardware/biometrics/BiometricManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/biometrics/BiometricManager;

    .line 1334
    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 1335
    const/4 v2, 0x0

    :goto_11
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_30

    .line 1336
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/locksettings/LockSettingsService$PendingResetLockout;

    iget v3, v3, Lcom/android/server/locksettings/LockSettingsService$PendingResetLockout;->mUserId:I

    invoke-virtual {v0, v3}, Landroid/hardware/biometrics/BiometricManager;->setActiveUser(I)V

    .line 1337
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/locksettings/LockSettingsService$PendingResetLockout;

    iget-object v3, v3, Lcom/android/server/locksettings/LockSettingsService$PendingResetLockout;->mHAT:[B

    invoke-virtual {v0, v3}, Landroid/hardware/biometrics/BiometricManager;->resetLockout([B)V

    .line 1335
    add-int/lit8 v2, v2, 0x1

    goto :goto_11

    .line 1339
    :cond_30
    const/4 p1, 0x2

    if-ne p2, p1, :cond_48

    .line 1340
    const-string p1, "android.hardware.biometrics.face"

    invoke-virtual {v1, p1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_48

    .line 1341
    iget-object p1, p0, Lcom/android/server/locksettings/LockSettingsService;->mContext:Landroid/content/Context;

    const-class p2, Landroid/hardware/face/FaceManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/face/FaceManager;

    invoke-virtual {p1}, Landroid/hardware/face/FaceManager;->revokeChallenge()I

    .line 1343
    :cond_48
    return-void
.end method

.method public onCleanupUser(I)V
    .registers 3

    .line 589
    new-instance v0, Landroid/os/UserHandle;

    invoke-direct {v0, p1}, Landroid/os/UserHandle;-><init>(I)V

    invoke-direct {p0, v0}, Lcom/android/server/locksettings/LockSettingsService;->hideEncryptionNotification(Landroid/os/UserHandle;)V

    .line 593
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker;->getDefaultFlags(Landroid/content/Context;)I

    move-result v0

    .line 594
    invoke-virtual {p0, v0, p1}, Lcom/android/server/locksettings/LockSettingsService;->requireStrongAuth(II)V

    .line 595
    return-void
.end method

.method public onShellCommand(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)V
    .registers 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2270
    invoke-direct {p0}, Lcom/android/server/locksettings/LockSettingsService;->enforceShell()V

    .line 2271
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 2273
    :try_start_7
    new-instance v3, Lcom/android/server/locksettings/LockSettingsShellCommand;

    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    move-object v4, p0

    iget-object v5, v4, Lcom/android/server/locksettings/LockSettingsService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v5}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    invoke-direct {v3, v0}, Lcom/android/server/locksettings/LockSettingsShellCommand;-><init>(Lcom/android/internal/widget/LockPatternUtils;)V

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    move-object v8, p4

    move-object/from16 v9, p5

    move-object/from16 v10, p6

    invoke-virtual/range {v3 .. v10}, Lcom/android/server/locksettings/LockSettingsShellCommand;->exec(Landroid/os/Binder;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)I
    :try_end_20
    .catchall {:try_start_7 .. :try_end_20} :catchall_25

    .line 2276
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2277
    nop

    .line 2278
    return-void

    .line 2276
    :catchall_25
    move-exception v0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method public onStartUser(I)V
    .registers 2

    .line 598
    invoke-direct {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->maybeShowEncryptionNotificationForUser(I)V

    .line 599
    return-void
.end method

.method public onUnlockUser(I)V
    .registers 4

    .line 626
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/locksettings/LockSettingsService$1;

    invoke-direct {v1, p0, p1}, Lcom/android/server/locksettings/LockSettingsService$1;-><init>(Lcom/android/server/locksettings/LockSettingsService;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 646
    return-void
.end method

.method public recoverKeyChainSnapshot(Ljava/lang/String;[BLjava/util/List;)Ljava/util/Map;
    .registers 5
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

    .line 2342
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mRecoverableKeyStoreManager:Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->recoverKeyChainSnapshot(Ljava/lang/String;[BLjava/util/List;)Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method

.method public registerStrongAuthTracker(Landroid/app/trust/IStrongAuthTracker;)V
    .registers 3

    .line 2227
    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lcom/android/server/locksettings/LockSettingsService;->checkPasswordReadPermission(I)V

    .line 2228
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mStrongAuth:Lcom/android/server/locksettings/LockSettingsStrongAuth;

    invoke-virtual {v0, p1}, Lcom/android/server/locksettings/LockSettingsStrongAuth;->registerStrongAuthTracker(Landroid/app/trust/IStrongAuthTracker;)V

    .line 2229
    return-void
.end method

.method public removeKey(Ljava/lang/String;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2353
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mRecoverableKeyStoreManager:Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;

    invoke-virtual {v0, p1}, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->removeKey(Ljava/lang/String;)V

    .line 2354
    return-void
.end method

.method public requireStrongAuth(II)V
    .registers 4

    .line 2239
    invoke-direct {p0, p2}, Lcom/android/server/locksettings/LockSettingsService;->checkWritePermission(I)V

    .line 2240
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mStrongAuth:Lcom/android/server/locksettings/LockSettingsStrongAuth;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/locksettings/LockSettingsStrongAuth;->requireStrongAuth(II)V

    .line 2241
    return-void
.end method

.method public resetKeyStore(I)V
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1809
    invoke-direct {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->checkWritePermission(I)V

    .line 1811
    nop

    .line 1812
    nop

    .line 1813
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0, p1}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    move-result-object v0

    .line 1814
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, -0x1

    const/4 v2, 0x0

    move-object v3, v2

    move v2, v1

    :goto_13
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/UserInfo;

    .line 1816
    invoke-virtual {v4}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v5

    if-eqz v5, :cond_6c

    iget-object v5, p0, Lcom/android/server/locksettings/LockSettingsService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v6, v4, Landroid/content/pm/UserInfo;->id:I

    .line 1817
    invoke-virtual {v5, v6}, Lcom/android/internal/widget/LockPatternUtils;->isSeparateProfileChallengeEnabled(I)Z

    move-result v5

    if-nez v5, :cond_6c

    iget-object v5, p0, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    iget v6, v4, Landroid/content/pm/UserInfo;->id:I

    .line 1818
    invoke-virtual {v5, v6}, Lcom/android/server/locksettings/LockSettingsStorage;->hasChildProfileLock(I)Z

    move-result v5

    if-eqz v5, :cond_6c

    .line 1820
    const-string v5, "LockSettingsService"

    if-ne v2, v1, :cond_48

    .line 1821
    :try_start_3d
    iget v6, v4, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p0, v6}, Lcom/android/server/locksettings/LockSettingsService;->getDecryptedPasswordForTiedProfile(I)[B

    move-result-object v3

    .line 1822
    iget v2, v4, Landroid/content/pm/UserInfo;->id:I

    goto :goto_66

    .line 1828
    :catch_46
    move-exception v4

    goto :goto_67

    .line 1825
    :cond_48
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "More than one managed profile, uid1:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", uid2:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v4, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_66
    .catch Ljava/security/UnrecoverableKeyException; {:try_start_3d .. :try_end_66} :catch_46
    .catch Ljava/security/InvalidKeyException; {:try_start_3d .. :try_end_66} :catch_46
    .catch Ljava/security/KeyStoreException; {:try_start_3d .. :try_end_66} :catch_46
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_3d .. :try_end_66} :catch_46
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_3d .. :try_end_66} :catch_46
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_3d .. :try_end_66} :catch_46
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_3d .. :try_end_66} :catch_46
    .catch Ljavax/crypto/BadPaddingException; {:try_start_3d .. :try_end_66} :catch_46
    .catch Ljava/security/cert/CertificateException; {:try_start_3d .. :try_end_66} :catch_46
    .catch Ljava/io/IOException; {:try_start_3d .. :try_end_66} :catch_46

    .line 1833
    :goto_66
    goto :goto_6c

    .line 1832
    :goto_67
    const-string v6, "Failed to decrypt child profile key"

    invoke-static {v5, v6, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1835
    :cond_6c
    :goto_6c
    goto :goto_13

    .line 1838
    :cond_6d
    :try_start_6d
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0, p1}, Landroid/os/UserManager;->getProfileIdsWithDisabled(I)[I

    move-result-object p1

    array-length v0, p1

    const/4 v4, 0x0

    move v5, v4

    :goto_76
    if-ge v5, v0, :cond_91

    aget v6, p1, v5

    .line 1839
    sget-object v7, Lcom/android/server/locksettings/LockSettingsService;->SYSTEM_CREDENTIAL_UIDS:[I

    array-length v8, v7

    move v9, v4

    :goto_7e
    if-ge v9, v8, :cond_8e

    aget v10, v7, v9

    .line 1840
    iget-object v11, p0, Lcom/android/server/locksettings/LockSettingsService;->mKeyStore:Landroid/security/KeyStore;

    invoke-static {v6, v10}, Landroid/os/UserHandle;->getUid(II)I

    move-result v10

    invoke-virtual {v11, v10}, Landroid/security/KeyStore;->clearUid(I)Z
    :try_end_8b
    .catchall {:try_start_6d .. :try_end_8b} :catchall_a1

    .line 1839
    add-int/lit8 v9, v9, 0x1

    goto :goto_7e

    .line 1838
    :cond_8e
    add-int/lit8 v5, v5, 0x1

    goto :goto_76

    .line 1844
    :cond_91
    if-eq v2, v1, :cond_98

    if-eqz v3, :cond_98

    .line 1846
    invoke-virtual {p0, v2, v3}, Lcom/android/server/locksettings/LockSettingsService;->tieProfileLockToParent(I[B)V

    .line 1849
    :cond_98
    if-eqz v3, :cond_a0

    array-length p1, v3

    if-lez p1, :cond_a0

    .line 1850
    invoke-static {v3, v4}, Ljava/util/Arrays;->fill([BB)V

    .line 1852
    :cond_a0
    return-void

    .line 1844
    :catchall_a1
    move-exception p1

    if-eq v2, v1, :cond_a9

    if-eqz v3, :cond_a9

    .line 1846
    invoke-virtual {p0, v2, v3}, Lcom/android/server/locksettings/LockSettingsService;->tieProfileLockToParent(I[B)V

    :cond_a9
    throw p1
.end method

.method public retainPassword(Ljava/lang/String;)V
    .registers 3

    .line 1150
    invoke-static {}, Lcom/android/internal/widget/LockPatternUtils;->isDeviceEncryptionEnabled()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 1151
    if-eqz p1, :cond_b

    .line 1152
    sput-object p1, Lcom/android/server/locksettings/LockSettingsService;->mSavePassword:Ljava/lang/String;

    goto :goto_f

    .line 1154
    :cond_b
    const-string p1, "default_password"

    sput-object p1, Lcom/android/server/locksettings/LockSettingsService;->mSavePassword:Ljava/lang/String;

    .line 1156
    :cond_f
    :goto_f
    return-void
.end method

.method public sanitizePassword()V
    .registers 2

    .line 1159
    invoke-static {}, Lcom/android/internal/widget/LockPatternUtils;->isDeviceEncryptionEnabled()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1160
    const-string v0, "default_password"

    sput-object v0, Lcom/android/server/locksettings/LockSettingsService;->mSavePassword:Ljava/lang/String;

    .line 1162
    :cond_a
    return-void
.end method

.method public setBoolean(Ljava/lang/String;ZI)V
    .registers 4

    .line 1035
    invoke-direct {p0, p3}, Lcom/android/server/locksettings/LockSettingsService;->checkWritePermission(I)V

    .line 1036
    if-eqz p2, :cond_8

    const-string p2, "1"

    goto :goto_a

    :cond_8
    const-string p2, "0"

    :goto_a
    invoke-direct {p0, p1, p3, p2}, Lcom/android/server/locksettings/LockSettingsService;->setStringUnchecked(Ljava/lang/String;ILjava/lang/String;)V

    .line 1037
    return-void
.end method

.method public setLockCredential([BI[BIIZ)V
    .registers 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1516
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->hasSecureLockScreen()Z

    move-result v0

    if-eqz v0, :cond_38

    .line 1520
    invoke-direct {p0, p5}, Lcom/android/server/locksettings/LockSettingsService;->checkWritePermission(I)V

    .line 1521
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mSeparateChallengeLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1522
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

    .line 1524
    const/4 p1, 0x1

    const/4 p2, 0x0

    invoke-direct {p0, p5, p1, p2}, Lcom/android/server/locksettings/LockSettingsService;->setSeparateProfileChallengeEnabledLocked(IZ[B)V

    .line 1525
    invoke-direct {p0, p5}, Lcom/android/server/locksettings/LockSettingsService;->notifyPasswordChanged(I)V

    .line 1526
    monitor-exit v0
    :try_end_22
    .catchall {:try_start_16 .. :try_end_22} :catchall_35

    .line 1527
    iget-object p1, p0, Lcom/android/server/locksettings/LockSettingsService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {p1, p5}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result p1

    if-eqz p1, :cond_31

    .line 1529
    invoke-direct {p0, p5}, Lcom/android/server/locksettings/LockSettingsService;->setDeviceUnlockedForUser(I)V

    .line 1531
    :cond_31
    invoke-direct {p0, p5}, Lcom/android/server/locksettings/LockSettingsService;->notifySeparateProfileChallengeChanged(I)V

    .line 1532
    return-void

    .line 1526
    :catchall_35
    move-exception p1

    :try_start_36
    monitor-exit v0
    :try_end_37
    .catchall {:try_start_36 .. :try_end_37} :catchall_35

    throw p1

    .line 1517
    :cond_38
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "This operation requires secure lock screen feature"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setLong(Ljava/lang/String;JI)V
    .registers 5

    .line 1041
    invoke-direct {p0, p4}, Lcom/android/server/locksettings/LockSettingsService;->checkWritePermission(I)V

    .line 1042
    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p4, p2}, Lcom/android/server/locksettings/LockSettingsService;->setStringUnchecked(Ljava/lang/String;ILjava/lang/String;)V

    .line 1043
    return-void
.end method

.method public setRecoverySecretTypes([I)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2317
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mRecoverableKeyStoreManager:Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;

    invoke-virtual {v0, p1}, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->setRecoverySecretTypes([I)V

    .line 2318
    return-void
.end method

.method public setRecoveryStatus(Ljava/lang/String;I)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2306
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mRecoverableKeyStoreManager:Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->setRecoveryStatus(Ljava/lang/String;I)V

    .line 2307
    return-void
.end method

.method public setSeparateProfileChallengeEnabled(IZ[B)V
    .registers 5

    .line 996
    invoke-direct {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->checkWritePermission(I)V

    .line 997
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->hasSecureLockScreen()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 1001
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mSeparateChallengeLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1002
    :try_start_e
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/locksettings/LockSettingsService;->setSeparateProfileChallengeEnabledLocked(IZ[B)V

    .line 1003
    monitor-exit v0
    :try_end_12
    .catchall {:try_start_e .. :try_end_12} :catchall_16

    .line 1004
    invoke-direct {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->notifySeparateProfileChallengeChanged(I)V

    .line 1005
    return-void

    .line 1003
    :catchall_16
    move-exception p1

    :try_start_17
    monitor-exit v0
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_16

    throw p1

    .line 998
    :cond_19
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "This operation requires secure lock screen feature."

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setServerParams([B)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2301
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mRecoverableKeyStoreManager:Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;

    invoke-virtual {v0, p1}, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->setServerParams([B)V

    .line 2302
    return-void
.end method

.method public setSnapshotCreatedPendingIntent(Landroid/app/PendingIntent;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2296
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mRecoverableKeyStoreManager:Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;

    invoke-virtual {v0, p1}, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->setSnapshotCreatedPendingIntent(Landroid/app/PendingIntent;)V

    .line 2297
    return-void
.end method

.method public setString(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 4

    .line 1047
    invoke-direct {p0, p3}, Lcom/android/server/locksettings/LockSettingsService;->checkWritePermission(I)V

    .line 1048
    invoke-direct {p0, p1, p3, p2}, Lcom/android/server/locksettings/LockSettingsService;->setStringUnchecked(Ljava/lang/String;ILjava/lang/String;)V

    .line 1049
    return-void
.end method

.method protected shouldMigrateToSyntheticPasswordLocked(I)Z
    .registers 8
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 2616
    invoke-direct {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->getSyntheticPasswordHandleLocked(I)J

    move-result-wide v0

    .line 2618
    const/4 p1, 0x0

    const-string v2, "enable-sp"

    const-wide/16 v3, 0x1

    invoke-virtual {p0, v2, v3, v4, p1}, Lcom/android/server/locksettings/LockSettingsService;->getLong(Ljava/lang/String;JI)J

    move-result-wide v2

    .line 2620
    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_18

    cmp-long v0, v0, v4

    if-nez v0, :cond_18

    const/4 p1, 0x1

    :cond_18
    return p1
.end method

.method public startRecoverySessionWithCertPath(Ljava/lang/String;Ljava/lang/String;Landroid/security/keystore/recovery/RecoveryCertPath;[B[BLjava/util/List;)[B
    .registers 14
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

    .line 2332
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mRecoverableKeyStoreManager:Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->startRecoverySessionWithCertPath(Ljava/lang/String;Ljava/lang/String;Landroid/security/keystore/recovery/RecoveryCertPath;[B[BLjava/util/List;)[B

    move-result-object p1

    return-object p1
.end method

.method public systemReady()V
    .registers 7

    .line 700
    const-string v0, "LockSettingsService"

    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.ACCESS_KEYGUARD_SECURE_STORAGE"

    invoke-virtual {v1, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2a

    .line 701
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

    .line 703
    :cond_2a
    invoke-direct {p0, v2}, Lcom/android/server/locksettings/LockSettingsService;->checkWritePermission(I)V

    .line 704
    invoke-direct {p0}, Lcom/android/server/locksettings/LockSettingsService;->migrateOldData()V

    .line 706
    :try_start_30
    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsService;->getGateKeeperService()Landroid/service/gatekeeper/IGateKeeperService;

    .line 707
    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    invoke-virtual {v1}, Lcom/android/server/locksettings/SyntheticPasswordManager;->initWeaverService()V
    :try_end_38
    .catch Landroid/os/RemoteException; {:try_start_30 .. :try_end_38} :catch_39

    .line 710
    goto :goto_3f

    .line 708
    :catch_39
    move-exception v1

    .line 709
    const-string v3, "Failure retrieving IGateKeeperService"

    invoke-static {v0, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 713
    :goto_3f
    :try_start_3f
    invoke-static {}, Landroid/hardware/authsecret/V1_0/IAuthSecret;->getService()Landroid/hardware/authsecret/V1_0/IAuthSecret;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/locksettings/LockSettingsService;->mAuthSecretService:Landroid/hardware/authsecret/V1_0/IAuthSecret;
    :try_end_45
    .catch Ljava/util/NoSuchElementException; {:try_start_3f .. :try_end_45} :catch_4d
    .catch Landroid/os/RemoteException; {:try_start_3f .. :try_end_45} :catch_46

    goto :goto_53

    .line 716
    :catch_46
    move-exception v1

    .line 717
    const-string v3, "Failed to get AuthSecret HAL"

    invoke-static {v0, v3, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_54

    .line 714
    :catch_4d
    move-exception v1

    .line 715
    const-string v1, "Device doesn\'t implement AuthSecret HAL"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 718
    :goto_53
    nop

    .line 719
    :goto_54
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mDeviceProvisionedObserver:Lcom/android/server/locksettings/LockSettingsService$DeviceProvisionedObserver;

    invoke-virtual {v0}, Lcom/android/server/locksettings/LockSettingsService$DeviceProvisionedObserver;->onSystemReady()V

    .line 721
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    invoke-virtual {v0, v2}, Lcom/android/server/locksettings/LockSettingsStorage;->prefetchUser(I)V

    .line 722
    return-void
.end method

.method public tieManagedProfileLockIfNecessary(I[B)V
    .registers 15

    .line 317
    const-string v0, "LockSettingsService"

    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v1, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v1

    if-nez v1, :cond_f

    .line 318
    return-void

    .line 321
    :cond_f
    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1, p1}, Lcom/android/internal/widget/LockPatternUtils;->isSeparateProfileChallengeEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 322
    return-void

    .line 325
    :cond_18
    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    invoke-virtual {v1, p1}, Lcom/android/server/locksettings/LockSettingsStorage;->hasChildProfileLock(I)Z

    move-result v1

    if-eqz v1, :cond_21

    .line 326
    return-void

    .line 329
    :cond_21
    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v1, p1}, Landroid/os/UserManager;->getProfileParent(I)Landroid/content/pm/UserInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/UserInfo;->id:I

    .line 330
    invoke-direct {p0, v1}, Lcom/android/server/locksettings/LockSettingsService;->isUserSecure(I)Z

    move-result v2

    if-nez v2, :cond_30

    .line 332
    return-void

    .line 338
    :cond_30
    :try_start_30
    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsService;->getGateKeeperService()Landroid/service/gatekeeper/IGateKeeperService;

    move-result-object v2

    invoke-interface {v2, v1}, Landroid/service/gatekeeper/IGateKeeperService;->getSecureUserId(I)J

    move-result-wide v1
    :try_end_38
    .catch Landroid/os/RemoteException; {:try_start_30 .. :try_end_38} :catch_86

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_3f

    .line 339
    return-void

    .line 344
    :cond_3f
    nop

    .line 346
    nop

    .line 348
    :try_start_41
    const-string v1, "SHA1PRNG"

    invoke-static {v1}, Ljava/security/SecureRandom;->getInstance(Ljava/lang/String;)Ljava/security/SecureRandom;

    move-result-object v1

    const/16 v2, 0x28

    invoke-virtual {v1, v2}, Ljava/security/SecureRandom;->generateSeed(I)[B

    move-result-object v1

    .line 349
    invoke-static {v1}, Llibcore/util/HexEncoding;->encode([B)[C

    move-result-object v1

    .line 350
    array-length v2, v1

    new-array v2, v2, [B

    .line 351
    const/4 v11, 0x0

    move v3, v11

    :goto_56
    array-length v4, v1

    if-ge v3, v4, :cond_61

    .line 352
    aget-char v4, v1, v3

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    .line 351
    add-int/lit8 v3, v3, 0x1

    goto :goto_56

    .line 354
    :cond_61
    invoke-static {v1, v11}, Ljava/util/Arrays;->fill([CC)V

    .line 356
    const/4 v5, 0x2

    const/high16 v7, 0x50000

    const/4 v9, 0x0

    const/4 v10, 0x1

    move-object v3, p0

    move-object v4, v2

    move-object v6, p2

    move v8, p1

    invoke-direct/range {v3 .. v10}, Lcom/android/server/locksettings/LockSettingsService;->setLockCredentialInternal([BI[BIIZZ)V

    .line 361
    const-string p2, "lockscreen.password_type"

    const-wide/32 v3, 0x50000

    invoke-virtual {p0, p2, v3, v4, p1}, Lcom/android/server/locksettings/LockSettingsService;->setLong(Ljava/lang/String;JI)V

    .line 362
    invoke-virtual {p0, p1, v2}, Lcom/android/server/locksettings/LockSettingsService;->tieProfileLockToParent(I[B)V

    .line 363
    invoke-static {v2, v11}, Ljava/util/Arrays;->fill([BB)V
    :try_end_7e
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_41 .. :try_end_7e} :catch_7f
    .catch Landroid/os/RemoteException; {:try_start_41 .. :try_end_7e} :catch_7f

    .line 367
    goto :goto_85

    .line 364
    :catch_7f
    move-exception p1

    .line 365
    const-string p2, "Fail to tie managed profile"

    invoke-static {v0, p2, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 368
    :goto_85
    return-void

    .line 341
    :catch_86
    move-exception p1

    .line 342
    const-string p2, "Failed to talk to GateKeeper service"

    invoke-static {v0, p2, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 343
    return-void
.end method

.method protected tieProfileLockToParent(I[B)V
    .registers 14
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 1641
    const-string v0, "NoPadding"

    const-string v1, "GCM"

    const-string/jumbo v2, "profile_key_name_encrypt_"

    :try_start_7
    const-string v3, "AES"

    invoke-static {v3}, Ljavax/crypto/KeyGenerator;->getInstance(Ljava/lang/String;)Ljavax/crypto/KeyGenerator;

    move-result-object v3

    .line 1642
    new-instance v4, Ljava/security/SecureRandom;

    invoke-direct {v4}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {v3, v4}, Ljavax/crypto/KeyGenerator;->init(Ljava/security/SecureRandom;)V

    .line 1643
    invoke-virtual {v3}, Ljavax/crypto/KeyGenerator;->generateKey()Ljavax/crypto/SecretKey;

    move-result-object v3

    .line 1644
    const-string v4, "AndroidKeyStore"

    invoke-static {v4}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v4

    .line 1645
    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/security/KeyStore;->load(Ljava/security/KeyStore$LoadStoreParameter;)V
    :try_end_23
    .catch Ljava/security/cert/CertificateException; {:try_start_7 .. :try_end_23} :catch_120
    .catch Ljava/security/UnrecoverableKeyException; {:try_start_7 .. :try_end_23} :catch_120
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_23} :catch_120
    .catch Ljavax/crypto/BadPaddingException; {:try_start_7 .. :try_end_23} :catch_120
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_7 .. :try_end_23} :catch_120
    .catch Ljava/security/KeyStoreException; {:try_start_7 .. :try_end_23} :catch_120
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_7 .. :try_end_23} :catch_120
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_7 .. :try_end_23} :catch_120
    .catch Ljava/security/InvalidKeyException; {:try_start_7 .. :try_end_23} :catch_120

    .line 1647
    :try_start_23
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/security/KeyStore$SecretKeyEntry;

    invoke-direct {v7, v3}, Ljava/security/KeyStore$SecretKeyEntry;-><init>(Ljavax/crypto/SecretKey;)V

    new-instance v8, Landroid/security/keystore/KeyProtection$Builder;

    const/4 v9, 0x1

    invoke-direct {v8, v9}, Landroid/security/keystore/KeyProtection$Builder;-><init>(I)V

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v10

    .line 1651
    invoke-virtual {v8, v10}, Landroid/security/keystore/KeyProtection$Builder;->setBlockModes([Ljava/lang/String;)Landroid/security/keystore/KeyProtection$Builder;

    move-result-object v8

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v10

    .line 1652
    invoke-virtual {v8, v10}, Landroid/security/keystore/KeyProtection$Builder;->setEncryptionPaddings([Ljava/lang/String;)Landroid/security/keystore/KeyProtection$Builder;

    move-result-object v8

    .line 1653
    invoke-virtual {v8}, Landroid/security/keystore/KeyProtection$Builder;->build()Landroid/security/keystore/KeyProtection;

    move-result-object v8

    .line 1647
    invoke-virtual {v4, v6, v7, v8}, Ljava/security/KeyStore;->setEntry(Ljava/lang/String;Ljava/security/KeyStore$Entry;Ljava/security/KeyStore$ProtectionParameter;)V

    .line 1654
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "profile_key_name_decrypt_"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/security/KeyStore$SecretKeyEntry;

    invoke-direct {v7, v3}, Ljava/security/KeyStore$SecretKeyEntry;-><init>(Ljavax/crypto/SecretKey;)V

    new-instance v3, Landroid/security/keystore/KeyProtection$Builder;

    const/4 v8, 0x2

    invoke-direct {v3, v8}, Landroid/security/keystore/KeyProtection$Builder;-><init>(I)V

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    .line 1658
    invoke-virtual {v3, v1}, Landroid/security/keystore/KeyProtection$Builder;->setBlockModes([Ljava/lang/String;)Landroid/security/keystore/KeyProtection$Builder;

    move-result-object v1

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    .line 1659
    invoke-virtual {v1, v0}, Landroid/security/keystore/KeyProtection$Builder;->setEncryptionPaddings([Ljava/lang/String;)Landroid/security/keystore/KeyProtection$Builder;

    move-result-object v0

    .line 1660
    invoke-virtual {v0, v9}, Landroid/security/keystore/KeyProtection$Builder;->setUserAuthenticationRequired(Z)Landroid/security/keystore/KeyProtection$Builder;

    move-result-object v0

    const/16 v1, 0x1e

    .line 1661
    invoke-virtual {v0, v1}, Landroid/security/keystore/KeyProtection$Builder;->setUserAuthenticationValidityDurationSeconds(I)Landroid/security/keystore/KeyProtection$Builder;

    move-result-object v0

    .line 1662
    invoke-virtual {v0, v9}, Landroid/security/keystore/KeyProtection$Builder;->setCriticalToDeviceEncryption(Z)Landroid/security/keystore/KeyProtection$Builder;

    move-result-object v0

    .line 1663
    invoke-virtual {v0}, Landroid/security/keystore/KeyProtection$Builder;->build()Landroid/security/keystore/KeyProtection;

    move-result-object v0

    .line 1654
    invoke-virtual {v4, v6, v7, v0}, Ljava/security/KeyStore;->setEntry(Ljava/lang/String;Ljava/security/KeyStore$Entry;Ljava/security/KeyStore$ProtectionParameter;)V

    .line 1665
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0, v5}, Ljava/security/KeyStore;->getKey(Ljava/lang/String;[C)Ljava/security/Key;

    move-result-object v0

    check-cast v0, Ljavax/crypto/SecretKey;

    .line 1667
    const-string v1, "AES/GCM/NoPadding"

    invoke-static {v1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v1

    .line 1670
    invoke-virtual {v1, v9, v0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 1671
    invoke-virtual {v1, p2}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p2

    .line 1672
    invoke-virtual {v1}, Ljavax/crypto/Cipher;->getIV()[B

    move-result-object v0
    :try_end_bc
    .catchall {:try_start_23 .. :try_end_bc} :catchall_10c

    .line 1675
    :try_start_bc
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/security/KeyStore;->deleteEntry(Ljava/lang/String;)V
    :try_end_ce
    .catch Ljava/security/cert/CertificateException; {:try_start_bc .. :try_end_ce} :catch_120
    .catch Ljava/security/UnrecoverableKeyException; {:try_start_bc .. :try_end_ce} :catch_120
    .catch Ljava/io/IOException; {:try_start_bc .. :try_end_ce} :catch_120
    .catch Ljavax/crypto/BadPaddingException; {:try_start_bc .. :try_end_ce} :catch_120
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_bc .. :try_end_ce} :catch_120
    .catch Ljava/security/KeyStoreException; {:try_start_bc .. :try_end_ce} :catch_120
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_bc .. :try_end_ce} :catch_120
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_bc .. :try_end_ce} :catch_120
    .catch Ljava/security/InvalidKeyException; {:try_start_bc .. :try_end_ce} :catch_120

    .line 1676
    nop

    .line 1681
    nop

    .line 1682
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1684
    :try_start_d5
    array-length v2, v0

    const/16 v3, 0xc

    if-ne v2, v3, :cond_eb

    .line 1687
    invoke-virtual {v1, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 1688
    invoke-virtual {v1, p2}, Ljava/io/ByteArrayOutputStream;->write([B)V
    :try_end_e0
    .catch Ljava/io/IOException; {:try_start_d5 .. :try_end_e0} :catch_103

    .line 1691
    nop

    .line 1692
    iget-object p2, p0, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-virtual {p2, p1, v0}, Lcom/android/server/locksettings/LockSettingsStorage;->writeChildProfileLock(I[B)V

    .line 1693
    return-void

    .line 1685
    :cond_eb
    :try_start_eb
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid iv length: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v0, v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_103
    .catch Ljava/io/IOException; {:try_start_eb .. :try_end_103} :catch_103

    .line 1689
    :catch_103
    move-exception p1

    .line 1690
    new-instance p2, Ljava/lang/RuntimeException;

    const-string v0, "Failed to concatenate byte arrays"

    invoke-direct {p2, v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    .line 1675
    :catchall_10c
    move-exception p2

    :try_start_10d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p1}, Ljava/security/KeyStore;->deleteEntry(Ljava/lang/String;)V

    throw p2
    :try_end_120
    .catch Ljava/security/cert/CertificateException; {:try_start_10d .. :try_end_120} :catch_120
    .catch Ljava/security/UnrecoverableKeyException; {:try_start_10d .. :try_end_120} :catch_120
    .catch Ljava/io/IOException; {:try_start_10d .. :try_end_120} :catch_120
    .catch Ljavax/crypto/BadPaddingException; {:try_start_10d .. :try_end_120} :catch_120
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_10d .. :try_end_120} :catch_120
    .catch Ljava/security/KeyStoreException; {:try_start_10d .. :try_end_120} :catch_120
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_10d .. :try_end_120} :catch_120
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_10d .. :try_end_120} :catch_120
    .catch Ljava/security/InvalidKeyException; {:try_start_10d .. :try_end_120} :catch_120

    .line 1677
    :catch_120
    move-exception p1

    .line 1680
    new-instance p2, Ljava/lang/RuntimeException;

    const-string v0, "Failed to encrypt key"

    invoke-direct {p2, v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method public unregisterStrongAuthTracker(Landroid/app/trust/IStrongAuthTracker;)V
    .registers 3

    .line 2233
    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lcom/android/server/locksettings/LockSettingsService;->checkPasswordReadPermission(I)V

    .line 2234
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mStrongAuth:Lcom/android/server/locksettings/LockSettingsStrongAuth;

    invoke-virtual {v0, p1}, Lcom/android/server/locksettings/LockSettingsStrongAuth;->unregisterStrongAuthTracker(Landroid/app/trust/IStrongAuthTracker;)V

    .line 2235
    return-void
.end method

.method public userPresent(I)V
    .registers 3

    .line 2245
    invoke-direct {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->checkWritePermission(I)V

    .line 2246
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mStrongAuth:Lcom/android/server/locksettings/LockSettingsStrongAuth;

    invoke-virtual {v0, p1}, Lcom/android/server/locksettings/LockSettingsStrongAuth;->reportUnlock(I)V

    .line 2247
    return-void
.end method

.method public verifyCredential([BIJI)Lcom/android/internal/widget/VerifyCredentialResponse;
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1872
    invoke-direct {p0, p5}, Lcom/android/server/locksettings/LockSettingsService;->checkPasswordReadPermission(I)V

    .line 1873
    const/4 v3, 0x1

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-wide v4, p3

    move v6, p5

    invoke-direct/range {v0 .. v7}, Lcom/android/server/locksettings/LockSettingsService;->doVerifyCredential([BIIJILcom/android/internal/widget/ICheckCredentialProgressCallback;)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object p1

    return-object p1
.end method

.method public verifyTiedProfileChallenge([BIJI)Lcom/android/internal/widget/VerifyCredentialResponse;
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1951
    invoke-direct {p0, p5}, Lcom/android/server/locksettings/LockSettingsService;->checkPasswordReadPermission(I)V

    .line 1952
    invoke-direct {p0, p5}, Lcom/android/server/locksettings/LockSettingsService;->isManagedProfileWithUnifiedLock(I)Z

    move-result v0

    if-eqz v0, :cond_41

    .line 1955
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0, p5}, Landroid/os/UserManager;->getProfileParent(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    iget v7, v0, Landroid/content/pm/UserInfo;->id:I

    .line 1957
    const/4 v4, 0x1

    const/4 v8, 0x0

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-wide v5, p3

    invoke-direct/range {v1 .. v8}, Lcom/android/server/locksettings/LockSettingsService;->doVerifyCredential([BIIJILcom/android/internal/widget/ICheckCredentialProgressCallback;)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object p1

    .line 1964
    invoke-virtual {p1}, Lcom/android/internal/widget/VerifyCredentialResponse;->getResponseCode()I

    move-result p2

    if-eqz p2, :cond_22

    .line 1966
    return-object p1

    .line 1971
    :cond_22
    :try_start_22
    invoke-virtual {p0, p5}, Lcom/android/server/locksettings/LockSettingsService;->getDecryptedPasswordForTiedProfile(I)[B

    move-result-object v1

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v7, 0x0

    move-object v0, p0

    move-wide v4, p3

    move v6, p5

    invoke-direct/range {v0 .. v7}, Lcom/android/server/locksettings/LockSettingsService;->doVerifyCredential([BIIJILcom/android/internal/widget/ICheckCredentialProgressCallback;)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object p1
    :try_end_30
    .catch Ljava/security/UnrecoverableKeyException; {:try_start_22 .. :try_end_30} :catch_31
    .catch Ljava/security/InvalidKeyException; {:try_start_22 .. :try_end_30} :catch_31
    .catch Ljava/security/KeyStoreException; {:try_start_22 .. :try_end_30} :catch_31
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_22 .. :try_end_30} :catch_31
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_22 .. :try_end_30} :catch_31
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_22 .. :try_end_30} :catch_31
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_22 .. :try_end_30} :catch_31
    .catch Ljavax/crypto/BadPaddingException; {:try_start_22 .. :try_end_30} :catch_31
    .catch Ljava/security/cert/CertificateException; {:try_start_22 .. :try_end_30} :catch_31
    .catch Ljava/io/IOException; {:try_start_22 .. :try_end_30} :catch_31

    return-object p1

    .line 1976
    :catch_31
    move-exception p1

    .line 1980
    const-string p2, "LockSettingsService"

    const-string p3, "Failed to decrypt child profile key"

    invoke-static {p2, p3, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1981
    new-instance p1, Landroid/os/RemoteException;

    const-string p2, "Unable to get tied profile token"

    invoke-direct {p1, p2}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1953
    :cond_41
    new-instance p1, Landroid/os/RemoteException;

    const-string p2, "User id must be managed profile with unified lock"

    invoke-direct {p1, p2}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
