.class public abstract Lcom/android/server/biometrics/BiometricServiceBase;
.super Lcom/android/server/SystemService;
.source "BiometricServiceBase.java"

# interfaces
.implements Landroid/os/IHwBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/biometrics/BiometricServiceBase$UserTemplate;,
        Lcom/android/server/biometrics/BiometricServiceBase$LockoutResetMonitor;,
        Lcom/android/server/biometrics/BiometricServiceBase$ResetClientStateRunnable;,
        Lcom/android/server/biometrics/BiometricServiceBase$BiometricTaskStackListener;,
        Lcom/android/server/biometrics/BiometricServiceBase$H;,
        Lcom/android/server/biometrics/BiometricServiceBase$DaemonWrapper;,
        Lcom/android/server/biometrics/BiometricServiceBase$BiometricServiceListener;,
        Lcom/android/server/biometrics/BiometricServiceBase$ServiceListener;,
        Lcom/android/server/biometrics/BiometricServiceBase$InternalEnumerateClient;,
        Lcom/android/server/biometrics/BiometricServiceBase$InternalRemovalClient;,
        Lcom/android/server/biometrics/BiometricServiceBase$EnrollClientImpl;,
        Lcom/android/server/biometrics/BiometricServiceBase$AuthenticationClientImpl;,
        Lcom/android/server/biometrics/BiometricServiceBase$PerformanceStats;
    }
.end annotation


# static fields
.field private static final CANCEL_TIMEOUT_LIMIT:J = 0xbb8L

.field protected static final DEBUG:Z = true

.field private static final KEY_LOCKOUT_RESET_USER:Ljava/lang/String; = "lockout_reset_user"

.field private static final MSG_USER_SWITCHING:I = 0xa


# instance fields
.field private final mActivityTaskManager:Landroid/app/IActivityTaskManager;

.field protected final mAppOps:Landroid/app/AppOpsManager;

.field protected final mAuthenticatorIds:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mBiometricService:Landroid/hardware/biometrics/IBiometricService;

.field private final mCleanupUnusedFingerprints:Z

.field private final mContext:Landroid/content/Context;

.field protected mCryptoPerformanceMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/android/server/biometrics/BiometricServiceBase$PerformanceStats;",
            ">;"
        }
    .end annotation
.end field

.field private mCurrentClient:Lcom/android/server/biometrics/ClientMonitor;

.field protected mCurrentUserId:I

.field protected mHALDeathCount:I

.field protected mHalDeviceId:J

.field protected final mHandler:Lcom/android/server/biometrics/BiometricServiceBase$H;

.field protected mIsCrypto:Z

.field private final mKeyguardPackage:Ljava/lang/String;

.field private final mLockoutMonitors:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/biometrics/BiometricServiceBase$LockoutResetMonitor;",
            ">;"
        }
    .end annotation
.end field

.field private final mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

.field private final mOnTaskStackChangedRunnable:Ljava/lang/Runnable;

.field private mPendingClient:Lcom/android/server/biometrics/ClientMonitor;

.field protected mPerformanceMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/android/server/biometrics/BiometricServiceBase$PerformanceStats;",
            ">;"
        }
    .end annotation
.end field

.field private mPerformanceStats:Lcom/android/server/biometrics/BiometricServiceBase$PerformanceStats;

.field private final mPostResetRunnableForAllClients:Z

.field private final mPowerManager:Landroid/os/PowerManager;

.field private final mResetClientState:Lcom/android/server/biometrics/BiometricServiceBase$ResetClientStateRunnable;

.field protected final mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

.field private final mTaskStackListener:Lcom/android/server/biometrics/BiometricServiceBase$BiometricTaskStackListener;

.field private final mToken:Landroid/os/IBinder;

.field private final mUnknownHALTemplates:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/biometrics/BiometricServiceBase$UserTemplate;",
            ">;"
        }
    .end annotation
.end field

.field private final mUserManager:Landroid/os/UserManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    .line 646
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 88
    new-instance v0, Lcom/android/server/biometrics/BiometricServiceBase$BiometricTaskStackListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/biometrics/BiometricServiceBase$BiometricTaskStackListener;-><init>(Lcom/android/server/biometrics/BiometricServiceBase;Lcom/android/server/biometrics/BiometricServiceBase$1;)V

    iput-object v0, p0, Lcom/android/server/biometrics/BiometricServiceBase;->mTaskStackListener:Lcom/android/server/biometrics/BiometricServiceBase$BiometricTaskStackListener;

    .line 89
    new-instance v0, Lcom/android/server/biometrics/BiometricServiceBase$ResetClientStateRunnable;

    invoke-direct {v0, p0, v1}, Lcom/android/server/biometrics/BiometricServiceBase$ResetClientStateRunnable;-><init>(Lcom/android/server/biometrics/BiometricServiceBase;Lcom/android/server/biometrics/BiometricServiceBase$1;)V

    iput-object v0, p0, Lcom/android/server/biometrics/BiometricServiceBase;->mResetClientState:Lcom/android/server/biometrics/BiometricServiceBase$ResetClientStateRunnable;

    .line 90
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/biometrics/BiometricServiceBase;->mLockoutMonitors:Ljava/util/ArrayList;

    .line 93
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 94
    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/biometrics/BiometricServiceBase;->mAuthenticatorIds:Ljava/util/Map;

    .line 96
    new-instance v0, Lcom/android/server/biometrics/BiometricServiceBase$H;

    invoke-direct {v0, p0}, Lcom/android/server/biometrics/BiometricServiceBase$H;-><init>(Lcom/android/server/biometrics/BiometricServiceBase;)V

    iput-object v0, p0, Lcom/android/server/biometrics/BiometricServiceBase;->mHandler:Lcom/android/server/biometrics/BiometricServiceBase$H;

    .line 98
    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, p0, Lcom/android/server/biometrics/BiometricServiceBase;->mToken:Landroid/os/IBinder;

    .line 99
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/biometrics/BiometricServiceBase;->mUnknownHALTemplates:Ljava/util/ArrayList;

    .line 105
    const/16 v0, -0x2710

    iput v0, p0, Lcom/android/server/biometrics/BiometricServiceBase;->mCurrentUserId:I

    .line 110
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/biometrics/BiometricServiceBase;->mPerformanceMap:Ljava/util/HashMap;

    .line 112
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/biometrics/BiometricServiceBase;->mCryptoPerformanceMap:Ljava/util/HashMap;

    .line 503
    new-instance v0, Lcom/android/server/biometrics/BiometricServiceBase$1;

    invoke-direct {v0, p0}, Lcom/android/server/biometrics/BiometricServiceBase$1;-><init>(Lcom/android/server/biometrics/BiometricServiceBase;)V

    iput-object v0, p0, Lcom/android/server/biometrics/BiometricServiceBase;->mOnTaskStackChangedRunnable:Ljava/lang/Runnable;

    .line 647
    iput-object p1, p0, Lcom/android/server/biometrics/BiometricServiceBase;->mContext:Landroid/content/Context;

    .line 648
    nop

    .line 649
    const-string/jumbo v0, "statusbar"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 648
    invoke-static {v0}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/biometrics/BiometricServiceBase;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    .line 650
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x104018a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    .line 651
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/biometrics/BiometricServiceBase;->mKeyguardPackage:Ljava/lang/String;

    .line 652
    const-class v0, Landroid/app/AppOpsManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    iput-object v0, p0, Lcom/android/server/biometrics/BiometricServiceBase;->mAppOps:Landroid/app/AppOpsManager;

    .line 653
    const-string v0, "activity_task"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/ActivityTaskManager;

    .line 654
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/biometrics/BiometricServiceBase;->mActivityTaskManager:Landroid/app/IActivityTaskManager;

    .line 655
    iget-object p1, p0, Lcom/android/server/biometrics/BiometricServiceBase;->mContext:Landroid/content/Context;

    const-class v0, Landroid/os/PowerManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/PowerManager;

    iput-object p1, p0, Lcom/android/server/biometrics/BiometricServiceBase;->mPowerManager:Landroid/os/PowerManager;

    .line 656
    iget-object p1, p0, Lcom/android/server/biometrics/BiometricServiceBase;->mContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/biometrics/BiometricServiceBase;->mUserManager:Landroid/os/UserManager;

    .line 657
    new-instance p1, Lcom/android/internal/logging/MetricsLogger;

    invoke-direct {p1}, Lcom/android/internal/logging/MetricsLogger;-><init>()V

    iput-object p1, p0, Lcom/android/server/biometrics/BiometricServiceBase;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    .line 658
    iget-object p1, p0, Lcom/android/server/biometrics/BiometricServiceBase;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x1110085

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/server/biometrics/BiometricServiceBase;->mPostResetRunnableForAllClients:Z

    .line 660
    iget-object p1, p0, Lcom/android/server/biometrics/BiometricServiceBase;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x1110044

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/server/biometrics/BiometricServiceBase;->mCleanupUnusedFingerprints:Z

    .line 662
    return-void
.end method

.method static synthetic access$1000(Lcom/android/server/biometrics/BiometricServiceBase;)Landroid/os/PowerManager;
    .registers 1

    .line 71
    iget-object p0, p0, Lcom/android/server/biometrics/BiometricServiceBase;->mPowerManager:Landroid/os/PowerManager;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/android/server/biometrics/BiometricServiceBase;Lcom/android/server/biometrics/BiometricServiceBase$LockoutResetMonitor;)V
    .registers 2

    .line 71
    invoke-direct {p0, p1}, Lcom/android/server/biometrics/BiometricServiceBase;->removeLockoutResetCallback(Lcom/android/server/biometrics/BiometricServiceBase$LockoutResetMonitor;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/biometrics/BiometricServiceBase;)Lcom/android/server/biometrics/BiometricServiceBase$BiometricTaskStackListener;
    .registers 1

    .line 71
    iget-object p0, p0, Lcom/android/server/biometrics/BiometricServiceBase;->mTaskStackListener:Lcom/android/server/biometrics/BiometricServiceBase$BiometricTaskStackListener;

    return-object p0
.end method

.method static synthetic access$300(Lcom/android/server/biometrics/BiometricServiceBase;)Landroid/app/IActivityTaskManager;
    .registers 1

    .line 71
    iget-object p0, p0, Lcom/android/server/biometrics/BiometricServiceBase;->mActivityTaskManager:Landroid/app/IActivityTaskManager;

    return-object p0
.end method

.method static synthetic access$400(Lcom/android/server/biometrics/BiometricServiceBase;)V
    .registers 1

    .line 71
    invoke-direct {p0}, Lcom/android/server/biometrics/BiometricServiceBase;->userActivity()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/biometrics/BiometricServiceBase;)Lcom/android/server/biometrics/BiometricServiceBase$PerformanceStats;
    .registers 1

    .line 71
    iget-object p0, p0, Lcom/android/server/biometrics/BiometricServiceBase;->mPerformanceStats:Lcom/android/server/biometrics/BiometricServiceBase$PerformanceStats;

    return-object p0
.end method

.method static synthetic access$600(Lcom/android/server/biometrics/BiometricServiceBase;)Lcom/android/server/biometrics/ClientMonitor;
    .registers 1

    .line 71
    iget-object p0, p0, Lcom/android/server/biometrics/BiometricServiceBase;->mCurrentClient:Lcom/android/server/biometrics/ClientMonitor;

    return-object p0
.end method

.method static synthetic access$602(Lcom/android/server/biometrics/BiometricServiceBase;Lcom/android/server/biometrics/ClientMonitor;)Lcom/android/server/biometrics/ClientMonitor;
    .registers 2

    .line 71
    iput-object p1, p0, Lcom/android/server/biometrics/BiometricServiceBase;->mCurrentClient:Lcom/android/server/biometrics/ClientMonitor;

    return-object p1
.end method

.method static synthetic access$700(Lcom/android/server/biometrics/BiometricServiceBase;)Ljava/lang/Runnable;
    .registers 1

    .line 71
    iget-object p0, p0, Lcom/android/server/biometrics/BiometricServiceBase;->mOnTaskStackChangedRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$800(Lcom/android/server/biometrics/BiometricServiceBase;)Lcom/android/server/biometrics/ClientMonitor;
    .registers 1

    .line 71
    iget-object p0, p0, Lcom/android/server/biometrics/BiometricServiceBase;->mPendingClient:Lcom/android/server/biometrics/ClientMonitor;

    return-object p0
.end method

.method static synthetic access$900(Lcom/android/server/biometrics/BiometricServiceBase;Lcom/android/server/biometrics/ClientMonitor;Z)V
    .registers 3

    .line 71
    invoke-direct {p0, p1, p2}, Lcom/android/server/biometrics/BiometricServiceBase;->startClient(Lcom/android/server/biometrics/ClientMonitor;Z)V

    return-void
.end method

.method private clearEnumerateState()V
    .registers 3

    .line 1237
    invoke-virtual {p0}, Lcom/android/server/biometrics/BiometricServiceBase;->getTag()Ljava/lang/String;

    move-result-object v0

    const-string v1, "clearEnumerateState()"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1238
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricServiceBase;->mUnknownHALTemplates:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1239
    return-void
.end method

.method private enumerateUser(I)V
    .registers 18

    .line 1268
    move-object/from16 v14, p0

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/biometrics/BiometricServiceBase;->getTag()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Enumerating user("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v9, p1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1270
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/biometrics/BiometricServiceBase;->getManageBiometricPermission()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v14, v0}, Lcom/android/server/biometrics/BiometricServiceBase;->hasPermission(Ljava/lang/String;)Z

    move-result v0

    .line 1271
    xor-int/lit8 v10, v0, 0x1

    .line 1272
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/biometrics/BiometricServiceBase;->getEnrolledTemplates(I)Ljava/util/List;

    move-result-object v12

    .line 1274
    new-instance v15, Lcom/android/server/biometrics/BiometricServiceBase$InternalEnumerateClient;

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/biometrics/BiometricServiceBase;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 1275
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/biometrics/BiometricServiceBase;->getDaemonWrapper()Lcom/android/server/biometrics/BiometricServiceBase$DaemonWrapper;

    move-result-object v3

    iget-wide v4, v14, Lcom/android/server/biometrics/BiometricServiceBase;->mHalDeviceId:J

    iget-object v6, v14, Lcom/android/server/biometrics/BiometricServiceBase;->mToken:Landroid/os/IBinder;

    const/4 v7, 0x0

    .line 1276
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/biometrics/BiometricServiceBase;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v11

    .line 1277
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/biometrics/BiometricServiceBase;->getBiometricUtils()Lcom/android/server/biometrics/BiometricUtils;

    move-result-object v13

    move-object v0, v15

    move-object/from16 v1, p0

    move/from16 v8, p1

    move/from16 v9, p1

    invoke-direct/range {v0 .. v13}, Lcom/android/server/biometrics/BiometricServiceBase$InternalEnumerateClient;-><init>(Lcom/android/server/biometrics/BiometricServiceBase;Landroid/content/Context;Lcom/android/server/biometrics/BiometricServiceBase$DaemonWrapper;JLandroid/os/IBinder;Lcom/android/server/biometrics/BiometricServiceBase$ServiceListener;IIZLjava/lang/String;Ljava/util/List;Lcom/android/server/biometrics/BiometricUtils;)V

    .line 1278
    invoke-virtual {v14, v15}, Lcom/android/server/biometrics/BiometricServiceBase;->enumerateInternal(Lcom/android/server/biometrics/EnumerateClient;)V

    .line 1279
    return-void
.end method

.method private getEffectiveUserId(I)I
    .registers 5

    .line 1322
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricServiceBase;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v0

    .line 1323
    if-eqz v0, :cond_14

    .line 1324
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 1325
    invoke-virtual {v0, p1}, Landroid/os/UserManager;->getCredentialOwnerProfile(I)I

    move-result p1

    .line 1326
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1327
    goto :goto_1d

    .line 1328
    :cond_14
    invoke-virtual {p0}, Lcom/android/server/biometrics/BiometricServiceBase;->getTag()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Unable to acquire UserManager"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1330
    :goto_1d
    return p1
.end method

.method private isCurrentClient(Ljava/lang/String;)Z
    .registers 3

    .line 1013
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricServiceBase;->mCurrentClient:Lcom/android/server/biometrics/ClientMonitor;

    if-eqz v0, :cond_10

    invoke-virtual {v0}, Lcom/android/server/biometrics/ClientMonitor;->getOwnerString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_10

    const/4 p1, 0x1

    goto :goto_11

    :cond_10
    const/4 p1, 0x0

    :goto_11
    return p1
.end method

.method private isForegroundActivity(II)Z
    .registers 9

    .line 1026
    const/4 v0, 0x0

    :try_start_1
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/app/IActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v1

    .line 1027
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    .line 1028
    move v3, v0

    :goto_e
    if-ge v3, v2, :cond_29

    .line 1029
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 1030
    iget v5, v4, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    if-ne v5, p2, :cond_26

    iget v5, v4, Landroid/app/ActivityManager$RunningAppProcessInfo;->uid:I

    if-ne v5, p1, :cond_26

    iget v4, v4, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I
    :try_end_20
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_20} :catch_2a

    const/16 v5, 0x7d

    if-gt v4, v5, :cond_26

    .line 1032
    const/4 p1, 0x1

    return p1

    .line 1028
    :cond_26
    add-int/lit8 v3, v3, 0x1

    goto :goto_e

    .line 1037
    :cond_29
    goto :goto_34

    .line 1035
    :catch_2a
    move-exception p1

    .line 1036
    invoke-virtual {p0}, Lcom/android/server/biometrics/BiometricServiceBase;->getTag()Ljava/lang/String;

    move-result-object p1

    const-string p2, "am.getRunningAppProcesses() failed"

    invoke-static {p1, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1038
    :goto_34
    return v0
.end method

.method private isWorkProfile(I)Z
    .registers 5

    .line 1310
    nop

    .line 1311
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1313
    :try_start_5
    iget-object v2, p0, Lcom/android/server/biometrics/BiometricServiceBase;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v2, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object p1
    :try_end_b
    .catchall {:try_start_5 .. :try_end_b} :catchall_1b

    .line 1315
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1316
    nop

    .line 1317
    if-eqz p1, :cond_19

    invoke-virtual {p1}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result p1

    if-eqz p1, :cond_19

    const/4 p1, 0x1

    goto :goto_1a

    :cond_19
    const/4 p1, 0x0

    :goto_1a
    return p1

    .line 1315
    :catchall_1b
    move-exception p1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1
.end method

.method private listenForUserSwitches()V
    .registers 4

    .line 1336
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    new-instance v1, Lcom/android/server/biometrics/BiometricServiceBase$2;

    invoke-direct {v1, p0}, Lcom/android/server/biometrics/BiometricServiceBase$2;-><init>(Lcom/android/server/biometrics/BiometricServiceBase;)V

    .line 1343
    invoke-virtual {p0}, Lcom/android/server/biometrics/BiometricServiceBase;->getTag()Ljava/lang/String;

    move-result-object v2

    .line 1336
    invoke-interface {v0, v1, v2}, Landroid/app/IActivityManager;->registerUserSwitchObserver(Landroid/app/IUserSwitchObserver;Ljava/lang/String;)V
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_10} :catch_11

    .line 1346
    goto :goto_1b

    .line 1344
    :catch_11
    move-exception v0

    .line 1345
    invoke-virtual {p0}, Lcom/android/server/biometrics/BiometricServiceBase;->getTag()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Failed to listen for user switching event"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1347
    :goto_1b
    return-void
.end method

.method private removeLockoutResetCallback(Lcom/android/server/biometrics/BiometricServiceBase$LockoutResetMonitor;)V
    .registers 3

    .line 1351
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricServiceBase;->mLockoutMonitors:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1352
    return-void
.end method

.method private startAuthentication(Lcom/android/server/biometrics/BiometricServiceBase$AuthenticationClientImpl;Ljava/lang/String;)V
    .registers 7

    .line 946
    invoke-virtual {p0}, Lcom/android/server/biometrics/BiometricServiceBase;->getTag()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "startAuthentication("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ")"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 948
    invoke-virtual {p0}, Lcom/android/server/biometrics/BiometricServiceBase;->getLockoutMode()I

    move-result p2

    .line 949
    const/4 v0, 0x1

    if-eqz p2, :cond_5d

    .line 950
    invoke-virtual {p0}, Lcom/android/server/biometrics/BiometricServiceBase;->getTag()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "In lockout mode("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ") ; disallowing authentication"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 951
    if-ne p2, v0, :cond_46

    .line 952
    const/4 p2, 0x7

    goto :goto_48

    .line 953
    :cond_46
    const/16 p2, 0x9

    .line 954
    :goto_48
    invoke-virtual {p0}, Lcom/android/server/biometrics/BiometricServiceBase;->getHalDeviceId()J

    move-result-wide v0

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, p2, v2}, Lcom/android/server/biometrics/BiometricServiceBase$AuthenticationClientImpl;->onError(JII)Z

    move-result p1

    if-nez p1, :cond_5c

    .line 955
    invoke-virtual {p0}, Lcom/android/server/biometrics/BiometricServiceBase;->getTag()Ljava/lang/String;

    move-result-object p1

    const-string p2, "Cannot send permanent lockout message to client"

    invoke-static {p1, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 957
    :cond_5c
    return-void

    .line 959
    :cond_5d
    invoke-direct {p0, p1, v0}, Lcom/android/server/biometrics/BiometricServiceBase;->startClient(Lcom/android/server/biometrics/ClientMonitor;Z)V

    .line 960
    return-void
.end method

.method private startCleanupUnknownHALTemplates()V
    .registers 16

    .line 1245
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricServiceBase;->mUnknownHALTemplates:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_53

    .line 1246
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricServiceBase;->mUnknownHALTemplates:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/biometrics/BiometricServiceBase$UserTemplate;

    .line 1247
    iget-object v1, p0, Lcom/android/server/biometrics/BiometricServiceBase;->mUnknownHALTemplates:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1248
    invoke-virtual {p0}, Lcom/android/server/biometrics/BiometricServiceBase;->getManageBiometricPermission()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/biometrics/BiometricServiceBase;->hasPermission(Ljava/lang/String;)Z

    move-result v1

    .line 1249
    xor-int/lit8 v13, v1, 0x1

    new-instance v1, Lcom/android/server/biometrics/BiometricServiceBase$InternalRemovalClient;

    invoke-virtual {p0}, Lcom/android/server/biometrics/BiometricServiceBase;->getContext()Landroid/content/Context;

    move-result-object v4

    .line 1250
    invoke-virtual {p0}, Lcom/android/server/biometrics/BiometricServiceBase;->getDaemonWrapper()Lcom/android/server/biometrics/BiometricServiceBase$DaemonWrapper;

    move-result-object v5

    iget-wide v6, p0, Lcom/android/server/biometrics/BiometricServiceBase;->mHalDeviceId:J

    iget-object v8, p0, Lcom/android/server/biometrics/BiometricServiceBase;->mToken:Landroid/os/IBinder;

    const/4 v9, 0x0

    iget-object v2, v0, Lcom/android/server/biometrics/BiometricServiceBase$UserTemplate;->mIdentifier:Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;

    .line 1251
    invoke-virtual {v2}, Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;->getBiometricId()I

    move-result v10

    const/4 v11, 0x0

    iget v12, v0, Lcom/android/server/biometrics/BiometricServiceBase$UserTemplate;->mUserId:I

    .line 1252
    invoke-virtual {p0}, Lcom/android/server/biometrics/BiometricServiceBase;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v14

    move-object v2, v1

    move-object v3, p0

    invoke-direct/range {v2 .. v14}, Lcom/android/server/biometrics/BiometricServiceBase$InternalRemovalClient;-><init>(Lcom/android/server/biometrics/BiometricServiceBase;Landroid/content/Context;Lcom/android/server/biometrics/BiometricServiceBase$DaemonWrapper;JLandroid/os/IBinder;Lcom/android/server/biometrics/BiometricServiceBase$ServiceListener;IIIZLjava/lang/String;)V

    .line 1253
    invoke-virtual {p0, v1}, Lcom/android/server/biometrics/BiometricServiceBase;->removeInternal(Lcom/android/server/biometrics/RemovalClient;)V

    .line 1254
    const/16 v0, 0x94

    .line 1255
    invoke-virtual {p0}, Lcom/android/server/biometrics/BiometricServiceBase;->statsModality()I

    move-result v1

    const/4 v2, 0x3

    .line 1254
    invoke-static {v0, v1, v2}, Landroid/util/StatsLog;->write(III)I

    .line 1257
    goto :goto_6b

    .line 1258
    :cond_53
    invoke-direct {p0}, Lcom/android/server/biometrics/BiometricServiceBase;->clearEnumerateState()V

    .line 1259
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricServiceBase;->mPendingClient:Lcom/android/server/biometrics/ClientMonitor;

    if-eqz v0, :cond_6b

    .line 1260
    invoke-virtual {p0}, Lcom/android/server/biometrics/BiometricServiceBase;->getTag()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Enumerate finished, starting pending client"

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1261
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricServiceBase;->mPendingClient:Lcom/android/server/biometrics/ClientMonitor;

    invoke-direct {p0, v0, v1}, Lcom/android/server/biometrics/BiometricServiceBase;->startClient(Lcom/android/server/biometrics/ClientMonitor;Z)V

    .line 1262
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/biometrics/BiometricServiceBase;->mPendingClient:Lcom/android/server/biometrics/ClientMonitor;

    .line 1265
    :cond_6b
    :goto_6b
    return-void
.end method

.method private startClient(Lcom/android/server/biometrics/ClientMonitor;Z)V
    .registers 8

    .line 1050
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricServiceBase;->mCurrentClient:Lcom/android/server/biometrics/ClientMonitor;

    .line 1051
    if-eqz v0, :cond_8d

    .line 1052
    invoke-virtual {p0}, Lcom/android/server/biometrics/BiometricServiceBase;->getTag()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "request stop current client "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1053
    invoke-virtual {v0}, Lcom/android/server/biometrics/ClientMonitor;->getOwnerString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1052
    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1056
    instance-of v1, v0, Lcom/android/server/biometrics/BiometricServiceBase$InternalEnumerateClient;

    const-wide/16 v2, 0xbb8

    if-nez v1, :cond_3e

    instance-of v1, v0, Lcom/android/server/biometrics/BiometricServiceBase$InternalRemovalClient;

    if-eqz v1, :cond_2c

    goto :goto_3e

    .line 1072
    :cond_2c
    invoke-virtual {v0, p2}, Lcom/android/server/biometrics/ClientMonitor;->stop(Z)I

    .line 1078
    iget-object p2, p0, Lcom/android/server/biometrics/BiometricServiceBase;->mHandler:Lcom/android/server/biometrics/BiometricServiceBase$H;

    iget-object v0, p0, Lcom/android/server/biometrics/BiometricServiceBase;->mResetClientState:Lcom/android/server/biometrics/BiometricServiceBase$ResetClientStateRunnable;

    invoke-virtual {p2, v0}, Lcom/android/server/biometrics/BiometricServiceBase$H;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1079
    iget-object p2, p0, Lcom/android/server/biometrics/BiometricServiceBase;->mHandler:Lcom/android/server/biometrics/BiometricServiceBase$H;

    iget-object v0, p0, Lcom/android/server/biometrics/BiometricServiceBase;->mResetClientState:Lcom/android/server/biometrics/BiometricServiceBase$ResetClientStateRunnable;

    invoke-virtual {p2, v0, v2, v3}, Lcom/android/server/biometrics/BiometricServiceBase$H;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_8a

    .line 1061
    :cond_3e
    :goto_3e
    if-eqz p1, :cond_78

    .line 1062
    invoke-virtual {p0}, Lcom/android/server/biometrics/BiometricServiceBase;->getTag()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Internal cleanup in progress but trying to start client "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1063
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "("

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1064
    invoke-virtual {p1}, Lcom/android/server/biometrics/ClientMonitor;->getOwnerString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "), initiatedByClient = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 1062
    invoke-static {v0, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1067
    :cond_78
    iget-boolean p2, p0, Lcom/android/server/biometrics/BiometricServiceBase;->mPostResetRunnableForAllClients:Z

    if-eqz p2, :cond_8a

    .line 1068
    iget-object p2, p0, Lcom/android/server/biometrics/BiometricServiceBase;->mHandler:Lcom/android/server/biometrics/BiometricServiceBase$H;

    iget-object v0, p0, Lcom/android/server/biometrics/BiometricServiceBase;->mResetClientState:Lcom/android/server/biometrics/BiometricServiceBase$ResetClientStateRunnable;

    invoke-virtual {p2, v0}, Lcom/android/server/biometrics/BiometricServiceBase$H;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1069
    iget-object p2, p0, Lcom/android/server/biometrics/BiometricServiceBase;->mHandler:Lcom/android/server/biometrics/BiometricServiceBase$H;

    iget-object v0, p0, Lcom/android/server/biometrics/BiometricServiceBase;->mResetClientState:Lcom/android/server/biometrics/BiometricServiceBase$ResetClientStateRunnable;

    invoke-virtual {p2, v0, v2, v3}, Lcom/android/server/biometrics/BiometricServiceBase$H;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1081
    :cond_8a
    :goto_8a
    iput-object p1, p0, Lcom/android/server/biometrics/BiometricServiceBase;->mPendingClient:Lcom/android/server/biometrics/ClientMonitor;

    goto :goto_f3

    .line 1082
    :cond_8d
    if-eqz p1, :cond_f3

    .line 1086
    instance-of p2, p1, Lcom/android/server/biometrics/AuthenticationClient;

    if-eqz p2, :cond_e8

    .line 1087
    move-object p2, p1

    check-cast p2, Lcom/android/server/biometrics/AuthenticationClient;

    .line 1088
    invoke-virtual {p2}, Lcom/android/server/biometrics/AuthenticationClient;->isBiometricPrompt()Z

    move-result v0

    if-eqz v0, :cond_e8

    .line 1089
    invoke-virtual {p0}, Lcom/android/server/biometrics/BiometricServiceBase;->getTag()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Returning cookie: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/android/server/biometrics/AuthenticationClient;->getCookie()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1090
    iput-object p1, p0, Lcom/android/server/biometrics/BiometricServiceBase;->mCurrentClient:Lcom/android/server/biometrics/ClientMonitor;

    .line 1091
    iget-object p1, p0, Lcom/android/server/biometrics/BiometricServiceBase;->mBiometricService:Landroid/hardware/biometrics/IBiometricService;

    if-nez p1, :cond_cb

    .line 1092
    nop

    .line 1093
    const-string p1, "biometric"

    invoke-static {p1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p1

    .line 1092
    invoke-static {p1}, Landroid/hardware/biometrics/IBiometricService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/biometrics/IBiometricService;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/biometrics/BiometricServiceBase;->mBiometricService:Landroid/hardware/biometrics/IBiometricService;

    .line 1096
    :cond_cb
    :try_start_cb
    iget-object p1, p0, Lcom/android/server/biometrics/BiometricServiceBase;->mBiometricService:Landroid/hardware/biometrics/IBiometricService;

    invoke-virtual {p2}, Lcom/android/server/biometrics/AuthenticationClient;->getCookie()I

    move-result v0

    .line 1097
    invoke-virtual {p2}, Lcom/android/server/biometrics/AuthenticationClient;->getRequireConfirmation()Z

    move-result v1

    invoke-virtual {p2}, Lcom/android/server/biometrics/AuthenticationClient;->getTargetUserId()I

    move-result p2

    .line 1096
    invoke-interface {p1, v0, v1, p2}, Landroid/hardware/biometrics/IBiometricService;->onReadyForAuthentication(IZI)V
    :try_end_dc
    .catch Landroid/os/RemoteException; {:try_start_cb .. :try_end_dc} :catch_dd

    .line 1100
    goto :goto_e7

    .line 1098
    :catch_dd
    move-exception p1

    .line 1099
    invoke-virtual {p0}, Lcom/android/server/biometrics/BiometricServiceBase;->getTag()Ljava/lang/String;

    move-result-object p2

    const-string v0, "Remote exception"

    invoke-static {p2, v0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1101
    :goto_e7
    return-void

    .line 1106
    :cond_e8
    iput-object p1, p0, Lcom/android/server/biometrics/BiometricServiceBase;->mCurrentClient:Lcom/android/server/biometrics/ClientMonitor;

    .line 1107
    iget-object p1, p0, Lcom/android/server/biometrics/BiometricServiceBase;->mCurrentClient:Lcom/android/server/biometrics/ClientMonitor;

    invoke-virtual {p1}, Lcom/android/server/biometrics/ClientMonitor;->getCookie()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/BiometricServiceBase;->startCurrentClient(I)V

    .line 1109
    :cond_f3
    :goto_f3
    return-void
.end method

.method private userActivity()V
    .registers 6

    .line 1301
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 1302
    iget-object v2, p0, Lcom/android/server/biometrics/BiometricServiceBase;->mPowerManager:Landroid/os/PowerManager;

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-virtual {v2, v0, v1, v3, v4}, Landroid/os/PowerManager;->userActivity(JII)V

    .line 1303
    return-void
.end method


# virtual methods
.method protected addLockoutResetCallback(Landroid/hardware/biometrics/IBiometricServiceLockoutResetCallback;)V
    .registers 4

    .line 963
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricServiceBase;->mHandler:Lcom/android/server/biometrics/BiometricServiceBase$H;

    new-instance v1, Lcom/android/server/biometrics/-$$Lambda$BiometricServiceBase$5zE_f-JKSpUWsfwvdtw36YktZZ0;

    invoke-direct {v1, p0, p1}, Lcom/android/server/biometrics/-$$Lambda$BiometricServiceBase$5zE_f-JKSpUWsfwvdtw36YktZZ0;-><init>(Lcom/android/server/biometrics/BiometricServiceBase;Landroid/hardware/biometrics/IBiometricServiceLockoutResetCallback;)V

    invoke-virtual {v0, v1}, Lcom/android/server/biometrics/BiometricServiceBase$H;->post(Ljava/lang/Runnable;)Z

    .line 969
    return-void
.end method

.method protected authenticateInternal(Lcom/android/server/biometrics/BiometricServiceBase$AuthenticationClientImpl;JLjava/lang/String;)V
    .registers 13

    .line 851
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    .line 852
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v6

    .line 853
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v7

    .line 854
    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-object v4, p4

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/biometrics/BiometricServiceBase;->authenticateInternal(Lcom/android/server/biometrics/BiometricServiceBase$AuthenticationClientImpl;JLjava/lang/String;III)V

    .line 855
    return-void
.end method

.method protected authenticateInternal(Lcom/android/server/biometrics/BiometricServiceBase$AuthenticationClientImpl;JLjava/lang/String;III)V
    .registers 14

    .line 859
    const/4 v2, 0x1

    move-object v0, p0

    move-object v1, p4

    move v3, p5

    move v4, p6

    move v5, p7

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/biometrics/BiometricServiceBase;->canUseBiometric(Ljava/lang/String;ZIII)Z

    move-result p5

    if-nez p5, :cond_25

    .line 861
    invoke-virtual {p0}, Lcom/android/server/biometrics/BiometricServiceBase;->getTag()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "authenticate(): reject "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 862
    return-void

    .line 865
    :cond_25
    iget-object p5, p0, Lcom/android/server/biometrics/BiometricServiceBase;->mHandler:Lcom/android/server/biometrics/BiometricServiceBase$H;

    new-instance p6, Lcom/android/server/biometrics/-$$Lambda$BiometricServiceBase$VFT8WmkESkAnonaxJDq_GS_vB4E;

    move-object v0, p6

    move-object v1, p0

    move-wide v2, p2

    move-object v4, p1

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/server/biometrics/-$$Lambda$BiometricServiceBase$VFT8WmkESkAnonaxJDq_GS_vB4E;-><init>(Lcom/android/server/biometrics/BiometricServiceBase;JLcom/android/server/biometrics/BiometricServiceBase$AuthenticationClientImpl;Ljava/lang/String;)V

    invoke-virtual {p5, p6}, Lcom/android/server/biometrics/BiometricServiceBase$H;->post(Ljava/lang/Runnable;)Z

    .line 881
    return-void
.end method

.method protected canUseBiometric(Ljava/lang/String;ZIII)Z
    .registers 9

    .line 982
    invoke-virtual {p0}, Lcom/android/server/biometrics/BiometricServiceBase;->checkUseBiometricPermission()V

    .line 985
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/4 v1, 0x1

    const/16 v2, 0x3e8

    if-ne v0, v2, :cond_d

    .line 986
    return v1

    .line 988
    :cond_d
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/BiometricServiceBase;->isKeyguard(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 989
    return v1

    .line 991
    :cond_14
    invoke-virtual {p0, p5}, Lcom/android/server/biometrics/BiometricServiceBase;->isCurrentUserOrProfile(I)Z

    move-result p5

    const/4 v0, 0x0

    const-string v2, "Rejecting "

    if-nez p5, :cond_39

    .line 992
    invoke-virtual {p0}, Lcom/android/server/biometrics/BiometricServiceBase;->getTag()Ljava/lang/String;

    move-result-object p2

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "; not a current user or profile"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 993
    return v0

    .line 995
    :cond_39
    invoke-virtual {p0, p3, p1}, Lcom/android/server/biometrics/BiometricServiceBase;->checkAppOps(ILjava/lang/String;)Z

    move-result p5

    if-nez p5, :cond_5b

    .line 996
    invoke-virtual {p0}, Lcom/android/server/biometrics/BiometricServiceBase;->getTag()Ljava/lang/String;

    move-result-object p2

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "; permission denied"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 997
    return v0

    .line 1000
    :cond_5b
    if-eqz p2, :cond_85

    invoke-direct {p0, p3, p4}, Lcom/android/server/biometrics/BiometricServiceBase;->isForegroundActivity(II)Z

    move-result p2

    if-nez p2, :cond_85

    invoke-direct {p0, p1}, Lcom/android/server/biometrics/BiometricServiceBase;->isCurrentClient(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_85

    .line 1002
    invoke-virtual {p0}, Lcom/android/server/biometrics/BiometricServiceBase;->getTag()Ljava/lang/String;

    move-result-object p2

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "; not in foreground"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1003
    return v0

    .line 1005
    :cond_85
    return v1
.end method

.method protected cancelAuthenticationInternal(Landroid/os/IBinder;Ljava/lang/String;)V
    .registers 10

    .line 884
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    .line 885
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    .line 886
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v5

    .line 887
    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/biometrics/BiometricServiceBase;->cancelAuthenticationInternal(Landroid/os/IBinder;Ljava/lang/String;IIIZ)V

    .line 889
    return-void
.end method

.method protected cancelAuthenticationInternal(Landroid/os/IBinder;Ljava/lang/String;IIIZ)V
    .registers 13

    .line 893
    if-eqz p6, :cond_27

    .line 896
    const/4 v2, 0x1

    move-object v0, p0

    move-object v1, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/biometrics/BiometricServiceBase;->canUseBiometric(Ljava/lang/String;ZIII)Z

    move-result p3

    if-nez p3, :cond_27

    .line 898
    invoke-virtual {p0}, Lcom/android/server/biometrics/BiometricServiceBase;->getTag()Ljava/lang/String;

    move-result-object p1

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "cancelAuthentication(): reject "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 899
    return-void

    .line 903
    :cond_27
    iget-object p2, p0, Lcom/android/server/biometrics/BiometricServiceBase;->mHandler:Lcom/android/server/biometrics/BiometricServiceBase$H;

    new-instance p3, Lcom/android/server/biometrics/-$$Lambda$BiometricServiceBase$B1PDNz5plOtQUbeZgXMkI_dh_yQ;

    invoke-direct {p3, p0, p1, p6}, Lcom/android/server/biometrics/-$$Lambda$BiometricServiceBase$B1PDNz5plOtQUbeZgXMkI_dh_yQ;-><init>(Lcom/android/server/biometrics/BiometricServiceBase;Landroid/os/IBinder;Z)V

    invoke-virtual {p2, p3}, Lcom/android/server/biometrics/BiometricServiceBase$H;->post(Ljava/lang/Runnable;)Z

    .line 921
    return-void
.end method

.method protected cancelEnrollmentInternal(Landroid/os/IBinder;)V
    .registers 4

    .line 840
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricServiceBase;->mHandler:Lcom/android/server/biometrics/BiometricServiceBase$H;

    new-instance v1, Lcom/android/server/biometrics/-$$Lambda$BiometricServiceBase$yj0NG4umGnnyUerNM_EKxeka05A;

    invoke-direct {v1, p0, p1}, Lcom/android/server/biometrics/-$$Lambda$BiometricServiceBase$yj0NG4umGnnyUerNM_EKxeka05A;-><init>(Lcom/android/server/biometrics/BiometricServiceBase;Landroid/os/IBinder;)V

    invoke-virtual {v0, v1}, Lcom/android/server/biometrics/BiometricServiceBase$H;->post(Ljava/lang/Runnable;)Z

    .line 847
    return-void
.end method

.method protected abstract checkAppOps(ILjava/lang/String;)Z
.end method

.method protected checkPermission(Ljava/lang/String;)V
    .registers 5

    .line 1191
    invoke-virtual {p0}, Lcom/android/server/biometrics/BiometricServiceBase;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Must have "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " permission."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1193
    return-void
.end method

.method protected abstract checkUseBiometricPermission()V
.end method

.method protected doTemplateCleanupForUser(I)V
    .registers 3

    .line 1231
    iget-boolean v0, p0, Lcom/android/server/biometrics/BiometricServiceBase;->mCleanupUnusedFingerprints:Z

    if-eqz v0, :cond_7

    .line 1232
    invoke-direct {p0, p1}, Lcom/android/server/biometrics/BiometricServiceBase;->enumerateUser(I)V

    .line 1234
    :cond_7
    return-void
.end method

.method protected enrollInternal(Lcom/android/server/biometrics/BiometricServiceBase$EnrollClientImpl;I)V
    .registers 4

    .line 824
    invoke-virtual {p0, p2}, Lcom/android/server/biometrics/BiometricServiceBase;->hasReachedEnrollmentLimit(I)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 825
    return-void

    .line 830
    :cond_7
    invoke-virtual {p0, p2}, Lcom/android/server/biometrics/BiometricServiceBase;->isCurrentUserOrProfile(I)Z

    move-result p2

    if-nez p2, :cond_e

    .line 831
    return-void

    .line 834
    :cond_e
    iget-object p2, p0, Lcom/android/server/biometrics/BiometricServiceBase;->mHandler:Lcom/android/server/biometrics/BiometricServiceBase$H;

    new-instance v0, Lcom/android/server/biometrics/-$$Lambda$BiometricServiceBase$Zy4OXo3HMpNNxU1x5VMDe_5Q3vI;

    invoke-direct {v0, p0, p1}, Lcom/android/server/biometrics/-$$Lambda$BiometricServiceBase$Zy4OXo3HMpNNxU1x5VMDe_5Q3vI;-><init>(Lcom/android/server/biometrics/BiometricServiceBase;Lcom/android/server/biometrics/BiometricServiceBase$EnrollClientImpl;)V

    invoke-virtual {p2, v0}, Lcom/android/server/biometrics/BiometricServiceBase$H;->post(Ljava/lang/Runnable;)Z

    .line 837
    return-void
.end method

.method protected enumerateInternal(Lcom/android/server/biometrics/EnumerateClient;)V
    .registers 4

    .line 939
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricServiceBase;->mHandler:Lcom/android/server/biometrics/BiometricServiceBase$H;

    new-instance v1, Lcom/android/server/biometrics/-$$Lambda$BiometricServiceBase$lM-Gght_XjLuQG2iY0xHchO8Xgk;

    invoke-direct {v1, p0, p1}, Lcom/android/server/biometrics/-$$Lambda$BiometricServiceBase$lM-Gght_XjLuQG2iY0xHchO8Xgk;-><init>(Lcom/android/server/biometrics/BiometricServiceBase;Lcom/android/server/biometrics/EnumerateClient;)V

    invoke-virtual {v0, v1}, Lcom/android/server/biometrics/BiometricServiceBase$H;->post(Ljava/lang/Runnable;)Z

    .line 942
    return-void
.end method

.method protected getAuthenticatorId(Ljava/lang/String;)J
    .registers 5

    .line 1222
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/biometrics/BiometricServiceBase;->getUserOrWorkProfileId(Ljava/lang/String;I)I

    move-result p1

    .line 1223
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricServiceBase;->mAuthenticatorIds:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-wide/16 v1, 0x0

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method protected abstract getBiometricUtils()Lcom/android/server/biometrics/BiometricUtils;
.end method

.method protected abstract getConstants()Lcom/android/server/biometrics/Constants;
.end method

.method protected getCurrentClient()Lcom/android/server/biometrics/ClientMonitor;
    .registers 2

    .line 687
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricServiceBase;->mCurrentClient:Lcom/android/server/biometrics/ClientMonitor;

    return-object v0
.end method

.method protected abstract getDaemonWrapper()Lcom/android/server/biometrics/BiometricServiceBase$DaemonWrapper;
.end method

.method protected abstract getEnrolledTemplates(I)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "+",
            "Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;",
            ">;"
        }
    .end annotation
.end method

.method protected abstract getHalDeviceId()J
.end method

.method protected abstract getLockoutBroadcastPermission()Ljava/lang/String;
.end method

.method protected abstract getLockoutMode()I
.end method

.method protected abstract getLockoutResetIntent()Ljava/lang/String;
.end method

.method protected abstract getManageBiometricPermission()Ljava/lang/String;
.end method

.method protected getPendingClient()Lcom/android/server/biometrics/ClientMonitor;
    .registers 2

    .line 691
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricServiceBase;->mPendingClient:Lcom/android/server/biometrics/ClientMonitor;

    return-object v0
.end method

.method protected abstract getTag()Ljava/lang/String;
.end method

.method protected getUserOrWorkProfileId(Ljava/lang/String;I)I
    .registers 3

    .line 1173
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/BiometricServiceBase;->isKeyguard(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_d

    invoke-direct {p0, p2}, Lcom/android/server/biometrics/BiometricServiceBase;->isWorkProfile(I)Z

    move-result p1

    if-eqz p1, :cond_d

    .line 1174
    return p2

    .line 1176
    :cond_d
    invoke-direct {p0, p2}, Lcom/android/server/biometrics/BiometricServiceBase;->getEffectiveUserId(I)I

    move-result p1

    return p1
.end method

.method protected handleAcquired(JII)V
    .registers 5

    .line 699
    iget-object p1, p0, Lcom/android/server/biometrics/BiometricServiceBase;->mCurrentClient:Lcom/android/server/biometrics/ClientMonitor;

    .line 700
    if-eqz p1, :cond_d

    invoke-virtual {p1, p3, p4}, Lcom/android/server/biometrics/ClientMonitor;->onAcquired(II)Z

    move-result p2

    if-eqz p2, :cond_d

    .line 701
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/BiometricServiceBase;->removeClient(Lcom/android/server/biometrics/ClientMonitor;)V

    .line 703
    :cond_d
    iget-object p2, p0, Lcom/android/server/biometrics/BiometricServiceBase;->mPerformanceStats:Lcom/android/server/biometrics/BiometricServiceBase$PerformanceStats;

    if-eqz p2, :cond_23

    invoke-virtual {p0}, Lcom/android/server/biometrics/BiometricServiceBase;->getLockoutMode()I

    move-result p2

    if-nez p2, :cond_23

    instance-of p1, p1, Lcom/android/server/biometrics/AuthenticationClient;

    if-eqz p1, :cond_23

    .line 706
    iget-object p1, p0, Lcom/android/server/biometrics/BiometricServiceBase;->mPerformanceStats:Lcom/android/server/biometrics/BiometricServiceBase$PerformanceStats;

    iget p2, p1, Lcom/android/server/biometrics/BiometricServiceBase$PerformanceStats;->acquire:I

    add-int/lit8 p2, p2, 0x1

    iput p2, p1, Lcom/android/server/biometrics/BiometricServiceBase$PerformanceStats;->acquire:I

    .line 708
    :cond_23
    return-void
.end method

.method protected handleAuthenticated(Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;Ljava/util/ArrayList;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Byte;",
            ">;)V"
        }
    .end annotation

    .line 712
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricServiceBase;->mCurrentClient:Lcom/android/server/biometrics/ClientMonitor;

    .line 713
    invoke-virtual {p1}, Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;->getBiometricId()I

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_b

    move v1, v2

    goto :goto_c

    :cond_b
    const/4 v1, 0x0

    .line 715
    :goto_c
    if-eqz v0, :cond_17

    invoke-virtual {v0, p1, v1, p2}, Lcom/android/server/biometrics/ClientMonitor;->onAuthenticated(Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;ZLjava/util/ArrayList;)Z

    move-result p1

    if-eqz p1, :cond_17

    .line 716
    invoke-virtual {p0, v0}, Lcom/android/server/biometrics/BiometricServiceBase;->removeClient(Lcom/android/server/biometrics/ClientMonitor;)V

    .line 718
    :cond_17
    iget-object p1, p0, Lcom/android/server/biometrics/BiometricServiceBase;->mPerformanceStats:Lcom/android/server/biometrics/BiometricServiceBase$PerformanceStats;

    if-eqz p1, :cond_28

    .line 719
    if-eqz v1, :cond_23

    .line 720
    iget p2, p1, Lcom/android/server/biometrics/BiometricServiceBase$PerformanceStats;->accept:I

    add-int/2addr p2, v2

    iput p2, p1, Lcom/android/server/biometrics/BiometricServiceBase$PerformanceStats;->accept:I

    goto :goto_28

    .line 722
    :cond_23
    iget p2, p1, Lcom/android/server/biometrics/BiometricServiceBase$PerformanceStats;->reject:I

    add-int/2addr p2, v2

    iput p2, p1, Lcom/android/server/biometrics/BiometricServiceBase$PerformanceStats;->reject:I

    .line 725
    :cond_28
    :goto_28
    return-void
.end method

.method protected handleEnrollResult(Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;I)V
    .registers 4

    .line 729
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricServiceBase;->mCurrentClient:Lcom/android/server/biometrics/ClientMonitor;

    .line 730
    if-eqz v0, :cond_1b

    invoke-virtual {v0, p1, p2}, Lcom/android/server/biometrics/ClientMonitor;->onEnrollResult(Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;I)Z

    move-result p2

    if-eqz p2, :cond_1b

    .line 731
    invoke-virtual {p0, v0}, Lcom/android/server/biometrics/BiometricServiceBase;->removeClient(Lcom/android/server/biometrics/ClientMonitor;)V

    .line 734
    instance-of p2, p1, Landroid/hardware/fingerprint/Fingerprint;

    if-eqz p2, :cond_1b

    .line 735
    check-cast p1, Landroid/hardware/fingerprint/Fingerprint;

    invoke-virtual {p1}, Landroid/hardware/fingerprint/Fingerprint;->getGroupId()I

    move-result p1

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Lcom/android/server/biometrics/BiometricServiceBase;->updateActiveGroup(ILjava/lang/String;)V

    .line 738
    :cond_1b
    return-void
.end method

.method protected handleEnumerate(Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;I)V
    .registers 8

    .line 793
    invoke-virtual {p0}, Lcom/android/server/biometrics/BiometricServiceBase;->getCurrentClient()Lcom/android/server/biometrics/ClientMonitor;

    move-result-object v0

    .line 795
    invoke-virtual {v0, p1, p2}, Lcom/android/server/biometrics/ClientMonitor;->onEnumerationResult(Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;I)Z

    .line 798
    if-nez p2, :cond_63

    .line 799
    instance-of p1, v0, Lcom/android/server/biometrics/BiometricServiceBase$InternalEnumerateClient;

    if-eqz p1, :cond_60

    .line 800
    move-object p1, v0

    check-cast p1, Lcom/android/server/biometrics/BiometricServiceBase$InternalEnumerateClient;

    .line 801
    invoke-virtual {p1}, Lcom/android/server/biometrics/BiometricServiceBase$InternalEnumerateClient;->getUnknownHALTemplates()Ljava/util/List;

    move-result-object p1

    .line 803
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_3b

    .line 804
    invoke-virtual {p0}, Lcom/android/server/biometrics/BiometricServiceBase;->getTag()Ljava/lang/String;

    move-result-object p2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Adding "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " templates for deletion"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 807
    :cond_3b
    const/4 p2, 0x0

    :goto_3c
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge p2, v1, :cond_59

    .line 808
    iget-object v1, p0, Lcom/android/server/biometrics/BiometricServiceBase;->mUnknownHALTemplates:Ljava/util/ArrayList;

    new-instance v2, Lcom/android/server/biometrics/BiometricServiceBase$UserTemplate;

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;

    .line 809
    invoke-virtual {v0}, Lcom/android/server/biometrics/ClientMonitor;->getTargetUserId()I

    move-result v4

    invoke-direct {v2, p0, v3, v4}, Lcom/android/server/biometrics/BiometricServiceBase$UserTemplate;-><init>(Lcom/android/server/biometrics/BiometricServiceBase;Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;I)V

    .line 808
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 807
    add-int/lit8 p2, p2, 0x1

    goto :goto_3c

    .line 811
    :cond_59
    invoke-virtual {p0, v0}, Lcom/android/server/biometrics/BiometricServiceBase;->removeClient(Lcom/android/server/biometrics/ClientMonitor;)V

    .line 812
    invoke-direct {p0}, Lcom/android/server/biometrics/BiometricServiceBase;->startCleanupUnknownHALTemplates()V

    .line 813
    goto :goto_63

    .line 814
    :cond_60
    invoke-virtual {p0, v0}, Lcom/android/server/biometrics/BiometricServiceBase;->removeClient(Lcom/android/server/biometrics/ClientMonitor;)V

    .line 817
    :cond_63
    :goto_63
    return-void
.end method

.method protected handleError(JII)V
    .registers 9

    .line 741
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricServiceBase;->mCurrentClient:Lcom/android/server/biometrics/ClientMonitor;

    .line 743
    invoke-virtual {p0}, Lcom/android/server/biometrics/BiometricServiceBase;->getTag()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleError(client="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 744
    if-eqz v0, :cond_17

    invoke-virtual {v0}, Lcom/android/server/biometrics/ClientMonitor;->getOwnerString()Ljava/lang/String;

    move-result-object v3

    goto :goto_1a

    :cond_17
    const-string/jumbo v3, "null"

    :goto_1a
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", error = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 743
    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 746
    instance-of v1, v0, Lcom/android/server/biometrics/BiometricServiceBase$InternalRemovalClient;

    if-nez v1, :cond_39

    instance-of v1, v0, Lcom/android/server/biometrics/BiometricServiceBase$InternalEnumerateClient;

    if-eqz v1, :cond_3c

    .line 748
    :cond_39
    invoke-direct {p0}, Lcom/android/server/biometrics/BiometricServiceBase;->clearEnumerateState()V

    .line 751
    :cond_3c
    if-eqz v0, :cond_47

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/server/biometrics/ClientMonitor;->onError(JII)Z

    move-result p1

    if-eqz p1, :cond_47

    .line 752
    invoke-virtual {p0, v0}, Lcom/android/server/biometrics/BiometricServiceBase;->removeClient(Lcom/android/server/biometrics/ClientMonitor;)V

    .line 755
    :cond_47
    const/4 p1, 0x5

    if-ne p3, p1, :cond_7d

    .line 756
    iget-object p1, p0, Lcom/android/server/biometrics/BiometricServiceBase;->mHandler:Lcom/android/server/biometrics/BiometricServiceBase$H;

    iget-object p2, p0, Lcom/android/server/biometrics/BiometricServiceBase;->mResetClientState:Lcom/android/server/biometrics/BiometricServiceBase$ResetClientStateRunnable;

    invoke-virtual {p1, p2}, Lcom/android/server/biometrics/BiometricServiceBase$H;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 757
    iget-object p1, p0, Lcom/android/server/biometrics/BiometricServiceBase;->mPendingClient:Lcom/android/server/biometrics/ClientMonitor;

    if-eqz p1, :cond_7d

    .line 758
    invoke-virtual {p0}, Lcom/android/server/biometrics/BiometricServiceBase;->getTag()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p3, "start pending client "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/android/server/biometrics/BiometricServiceBase;->mPendingClient:Lcom/android/server/biometrics/ClientMonitor;

    .line 759
    invoke-virtual {p3}, Lcom/android/server/biometrics/ClientMonitor;->getOwnerString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 758
    invoke-static {p1, p2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 760
    iget-object p1, p0, Lcom/android/server/biometrics/BiometricServiceBase;->mPendingClient:Lcom/android/server/biometrics/ClientMonitor;

    const/4 p2, 0x0

    invoke-direct {p0, p1, p2}, Lcom/android/server/biometrics/BiometricServiceBase;->startClient(Lcom/android/server/biometrics/ClientMonitor;Z)V

    .line 761
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/server/biometrics/BiometricServiceBase;->mPendingClient:Lcom/android/server/biometrics/ClientMonitor;

    .line 764
    :cond_7d
    return-void
.end method

.method protected handleRemoved(Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;I)V
    .registers 7

    .line 768
    invoke-virtual {p0}, Lcom/android/server/biometrics/BiometricServiceBase;->getTag()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Removed: fid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;->getBiometricId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", dev="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 769
    invoke-virtual {p1}, Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;->getDeviceId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", rem="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 768
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 772
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricServiceBase;->mCurrentClient:Lcom/android/server/biometrics/ClientMonitor;

    .line 773
    if-eqz v0, :cond_53

    invoke-virtual {v0, p1, p2}, Lcom/android/server/biometrics/ClientMonitor;->onRemoved(Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;I)Z

    move-result p2

    if-eqz p2, :cond_53

    .line 774
    invoke-virtual {p0, v0}, Lcom/android/server/biometrics/BiometricServiceBase;->removeClient(Lcom/android/server/biometrics/ClientMonitor;)V

    .line 776
    iget p2, p0, Lcom/android/server/biometrics/BiometricServiceBase;->mCurrentUserId:I

    .line 777
    instance-of v1, p1, Landroid/hardware/fingerprint/Fingerprint;

    if-eqz v1, :cond_49

    .line 778
    check-cast p1, Landroid/hardware/fingerprint/Fingerprint;

    invoke-virtual {p1}, Landroid/hardware/fingerprint/Fingerprint;->getGroupId()I

    move-result p2

    .line 780
    :cond_49
    invoke-virtual {p0, p2}, Lcom/android/server/biometrics/BiometricServiceBase;->hasEnrolledBiometrics(I)Z

    move-result p1

    if-nez p1, :cond_53

    .line 781
    const/4 p1, 0x0

    invoke-virtual {p0, p2, p1}, Lcom/android/server/biometrics/BiometricServiceBase;->updateActiveGroup(ILjava/lang/String;)V

    .line 785
    :cond_53
    instance-of p1, v0, Lcom/android/server/biometrics/BiometricServiceBase$InternalRemovalClient;

    if-eqz p1, :cond_63

    iget-object p2, p0, Lcom/android/server/biometrics/BiometricServiceBase;->mUnknownHALTemplates:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_63

    .line 786
    invoke-direct {p0}, Lcom/android/server/biometrics/BiometricServiceBase;->startCleanupUnknownHALTemplates()V

    goto :goto_68

    .line 787
    :cond_63
    if-eqz p1, :cond_68

    .line 788
    invoke-direct {p0}, Lcom/android/server/biometrics/BiometricServiceBase;->clearEnumerateState()V

    .line 790
    :cond_68
    :goto_68
    return-void
.end method

.method protected handleUserSwitching(I)V
    .registers 4

    .line 1286
    invoke-virtual {p0}, Lcom/android/server/biometrics/BiometricServiceBase;->getCurrentClient()Lcom/android/server/biometrics/ClientMonitor;

    move-result-object v0

    instance-of v0, v0, Lcom/android/server/biometrics/BiometricServiceBase$InternalRemovalClient;

    if-nez v0, :cond_10

    .line 1287
    invoke-virtual {p0}, Lcom/android/server/biometrics/BiometricServiceBase;->getCurrentClient()Lcom/android/server/biometrics/ClientMonitor;

    move-result-object v0

    instance-of v0, v0, Lcom/android/server/biometrics/BiometricServiceBase$InternalEnumerateClient;

    if-eqz v0, :cond_19

    .line 1288
    :cond_10
    invoke-virtual {p0}, Lcom/android/server/biometrics/BiometricServiceBase;->getTag()Ljava/lang/String;

    move-result-object v0

    const-string v1, "User switched while performing cleanup"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1290
    :cond_19
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/biometrics/BiometricServiceBase;->updateActiveGroup(ILjava/lang/String;)V

    .line 1291
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/BiometricServiceBase;->doTemplateCleanupForUser(I)V

    .line 1292
    return-void
.end method

.method protected abstract hasEnrolledBiometrics(I)Z
.end method

.method protected hasPermission(Ljava/lang/String;)Z
    .registers 3

    .line 1186
    invoke-virtual {p0}, Lcom/android/server/biometrics/BiometricServiceBase;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_c

    const/4 p1, 0x1

    goto :goto_d

    :cond_c
    const/4 p1, 0x0

    :goto_d
    return p1
.end method

.method protected abstract hasReachedEnrollmentLimit(I)Z
.end method

.method protected isCurrentUserOrProfile(I)Z
    .registers 9

    .line 1196
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricServiceBase;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v0

    .line 1197
    const/4 v1, 0x0

    if-nez v0, :cond_13

    .line 1198
    invoke-virtual {p0}, Lcom/android/server/biometrics/BiometricServiceBase;->getTag()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Unable to acquire UserManager"

    invoke-static {p1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1199
    return v1

    .line 1202
    :cond_13
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1205
    :try_start_17
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/os/UserManager;->getEnabledProfileIds(I)[I

    move-result-object v0

    array-length v4, v0

    move v5, v1

    :goto_21
    if-ge v5, v4, :cond_30

    aget v6, v0, v5
    :try_end_25
    .catchall {:try_start_17 .. :try_end_25} :catchall_35

    .line 1206
    if-ne v6, p1, :cond_2d

    .line 1207
    nop

    .line 1211
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1207
    const/4 p1, 0x1

    return p1

    .line 1205
    :cond_2d
    add-int/lit8 v5, v5, 0x1

    goto :goto_21

    .line 1211
    :cond_30
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1212
    nop

    .line 1214
    return v1

    .line 1211
    :catchall_35
    move-exception p1

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1
.end method

.method protected isKeyguard(Ljava/lang/String;)Z
    .registers 3

    .line 1020
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricServiceBase;->mKeyguardPackage:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method protected isRestricted()Z
    .registers 2

    .line 1181
    invoke-virtual {p0}, Lcom/android/server/biometrics/BiometricServiceBase;->getManageBiometricPermission()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/biometrics/BiometricServiceBase;->hasPermission(Ljava/lang/String;)Z

    move-result v0

    .line 1182
    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public synthetic lambda$addLockoutResetCallback$8$BiometricServiceBase(Landroid/hardware/biometrics/IBiometricServiceLockoutResetCallback;)V
    .registers 3

    .line 964
    new-instance v0, Lcom/android/server/biometrics/BiometricServiceBase$LockoutResetMonitor;

    invoke-direct {v0, p0, p1}, Lcom/android/server/biometrics/BiometricServiceBase$LockoutResetMonitor;-><init>(Lcom/android/server/biometrics/BiometricServiceBase;Landroid/hardware/biometrics/IBiometricServiceLockoutResetCallback;)V

    .line 965
    iget-object p1, p0, Lcom/android/server/biometrics/BiometricServiceBase;->mLockoutMonitors:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_12

    .line 966
    iget-object p1, p0, Lcom/android/server/biometrics/BiometricServiceBase;->mLockoutMonitors:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 968
    :cond_12
    return-void
.end method

.method public synthetic lambda$authenticateInternal$3$BiometricServiceBase(JLcom/android/server/biometrics/BiometricServiceBase$AuthenticationClientImpl;Ljava/lang/String;)V
    .registers 9

    .line 866
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricServiceBase;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    invoke-virtual {p0}, Lcom/android/server/biometrics/BiometricServiceBase;->getConstants()Lcom/android/server/biometrics/Constants;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/server/biometrics/Constants;->tagAuthToken()Ljava/lang/String;

    move-result-object v1

    const-wide/16 v2, 0x0

    cmp-long p1, p1, v2

    const/4 p2, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_14

    move v3, p2

    goto :goto_15

    :cond_14
    move v3, v2

    :goto_15
    invoke-virtual {v0, v1, v3}, Lcom/android/internal/logging/MetricsLogger;->histogram(Ljava/lang/String;I)V

    .line 870
    if-nez p1, :cond_1d

    iget-object v0, p0, Lcom/android/server/biometrics/BiometricServiceBase;->mPerformanceMap:Ljava/util/HashMap;

    goto :goto_1f

    :cond_1d
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricServiceBase;->mCryptoPerformanceMap:Ljava/util/HashMap;

    .line 871
    :goto_1f
    iget v1, p0, Lcom/android/server/biometrics/BiometricServiceBase;->mCurrentUserId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/biometrics/BiometricServiceBase$PerformanceStats;

    .line 872
    if-nez v1, :cond_3b

    .line 873
    new-instance v1, Lcom/android/server/biometrics/BiometricServiceBase$PerformanceStats;

    invoke-direct {v1, p0}, Lcom/android/server/biometrics/BiometricServiceBase$PerformanceStats;-><init>(Lcom/android/server/biometrics/BiometricServiceBase;)V

    .line 874
    iget v3, p0, Lcom/android/server/biometrics/BiometricServiceBase;->mCurrentUserId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 876
    :cond_3b
    iput-object v1, p0, Lcom/android/server/biometrics/BiometricServiceBase;->mPerformanceStats:Lcom/android/server/biometrics/BiometricServiceBase$PerformanceStats;

    .line 877
    if-eqz p1, :cond_40

    goto :goto_41

    :cond_40
    move p2, v2

    :goto_41
    iput-boolean p2, p0, Lcom/android/server/biometrics/BiometricServiceBase;->mIsCrypto:Z

    .line 879
    invoke-direct {p0, p3, p4}, Lcom/android/server/biometrics/BiometricServiceBase;->startAuthentication(Lcom/android/server/biometrics/BiometricServiceBase$AuthenticationClientImpl;Ljava/lang/String;)V

    .line 880
    return-void
.end method

.method public synthetic lambda$cancelAuthenticationInternal$4$BiometricServiceBase(Landroid/os/IBinder;Z)V
    .registers 7

    .line 904
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricServiceBase;->mCurrentClient:Lcom/android/server/biometrics/ClientMonitor;

    .line 905
    instance-of v1, v0, Lcom/android/server/biometrics/AuthenticationClient;

    if-eqz v1, :cond_65

    .line 906
    invoke-virtual {v0}, Lcom/android/server/biometrics/ClientMonitor;->getToken()Landroid/os/IBinder;

    move-result-object v1

    if-eq v1, p1, :cond_34

    if-nez p2, :cond_f

    goto :goto_34

    .line 913
    :cond_f
    invoke-virtual {p0}, Lcom/android/server/biometrics/BiometricServiceBase;->getTag()Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t stop client "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/android/server/biometrics/ClientMonitor;->getOwnerString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " since tokens don\'t match. fromClient: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_83

    .line 907
    :cond_34
    :goto_34
    invoke-virtual {p0}, Lcom/android/server/biometrics/BiometricServiceBase;->getTag()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Stopping client "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/android/server/biometrics/ClientMonitor;->getOwnerString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", fromClient: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 911
    invoke-virtual {v0}, Lcom/android/server/biometrics/ClientMonitor;->getToken()Landroid/os/IBinder;

    move-result-object p2

    if-ne p2, p1, :cond_60

    const/4 p1, 0x1

    goto :goto_61

    :cond_60
    const/4 p1, 0x0

    :goto_61
    invoke-virtual {v0, p1}, Lcom/android/server/biometrics/ClientMonitor;->stop(Z)I

    goto :goto_83

    .line 916
    :cond_65
    if-eqz v0, :cond_83

    .line 917
    invoke-virtual {p0}, Lcom/android/server/biometrics/BiometricServiceBase;->getTag()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Can\'t cancel non-authenticating client "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 918
    invoke-virtual {v0}, Lcom/android/server/biometrics/ClientMonitor;->getOwnerString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 917
    invoke-static {p1, p2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 920
    :cond_83
    :goto_83
    return-void
.end method

.method public synthetic lambda$cancelEnrollmentInternal$2$BiometricServiceBase(Landroid/os/IBinder;)V
    .registers 5

    .line 841
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricServiceBase;->mCurrentClient:Lcom/android/server/biometrics/ClientMonitor;

    .line 842
    instance-of v1, v0, Lcom/android/server/biometrics/EnrollClient;

    if-eqz v1, :cond_21

    invoke-virtual {v0}, Lcom/android/server/biometrics/ClientMonitor;->getToken()Landroid/os/IBinder;

    move-result-object v1

    if-ne v1, p1, :cond_21

    .line 843
    invoke-virtual {p0}, Lcom/android/server/biometrics/BiometricServiceBase;->getTag()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Cancelling enrollment"

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 844
    invoke-virtual {v0}, Lcom/android/server/biometrics/ClientMonitor;->getToken()Landroid/os/IBinder;

    move-result-object v1

    if-ne v1, p1, :cond_1d

    const/4 p1, 0x1

    goto :goto_1e

    :cond_1d
    const/4 p1, 0x0

    :goto_1e
    invoke-virtual {v0, p1}, Lcom/android/server/biometrics/ClientMonitor;->stop(Z)I

    .line 846
    :cond_21
    return-void
.end method

.method public synthetic lambda$enrollInternal$1$BiometricServiceBase(Lcom/android/server/biometrics/BiometricServiceBase$EnrollClientImpl;)V
    .registers 3

    .line 835
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/server/biometrics/BiometricServiceBase;->startClient(Lcom/android/server/biometrics/ClientMonitor;Z)V

    .line 836
    return-void
.end method

.method public synthetic lambda$enumerateInternal$7$BiometricServiceBase(Lcom/android/server/biometrics/EnumerateClient;)V
    .registers 3

    .line 940
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/server/biometrics/BiometricServiceBase;->startClient(Lcom/android/server/biometrics/ClientMonitor;Z)V

    .line 941
    return-void
.end method

.method public synthetic lambda$removeInternal$6$BiometricServiceBase(Lcom/android/server/biometrics/RemovalClient;)V
    .registers 3

    .line 934
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/server/biometrics/BiometricServiceBase;->startClient(Lcom/android/server/biometrics/ClientMonitor;Z)V

    .line 935
    return-void
.end method

.method public synthetic lambda$serviceDied$0$BiometricServiceBase()V
    .registers 5

    .line 678
    invoke-virtual {p0}, Lcom/android/server/biometrics/BiometricServiceBase;->getHalDeviceId()J

    move-result-wide v0

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/server/biometrics/BiometricServiceBase;->handleError(JII)V

    .line 680
    return-void
.end method

.method public synthetic lambda$setActiveUserInternal$5$BiometricServiceBase(I)V
    .registers 5

    .line 926
    invoke-virtual {p0}, Lcom/android/server/biometrics/BiometricServiceBase;->getTag()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setActiveUser("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 928
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/biometrics/BiometricServiceBase;->updateActiveGroup(ILjava/lang/String;)V

    .line 929
    return-void
.end method

.method protected loadAuthenticatorIds()V
    .registers 8

    .line 1153
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 1154
    iget-object v2, p0, Lcom/android/server/biometrics/BiometricServiceBase;->mAuthenticatorIds:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->clear()V

    .line 1155
    invoke-virtual {p0}, Lcom/android/server/biometrics/BiometricServiceBase;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/os/UserManager;->getUsers(Z)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/UserInfo;

    .line 1156
    iget v3, v3, Landroid/content/pm/UserInfo;->id:I

    const/4 v4, 0x0

    invoke-virtual {p0, v4, v3}, Lcom/android/server/biometrics/BiometricServiceBase;->getUserOrWorkProfileId(Ljava/lang/String;I)I

    move-result v3

    .line 1157
    iget-object v5, p0, Lcom/android/server/biometrics/BiometricServiceBase;->mAuthenticatorIds:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3c

    .line 1158
    invoke-virtual {p0, v3, v4}, Lcom/android/server/biometrics/BiometricServiceBase;->updateActiveGroup(ILjava/lang/String;)V

    .line 1160
    :cond_3c
    goto :goto_1a

    .line 1162
    :cond_3d
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    .line 1163
    const-wide/16 v0, 0x3e8

    cmp-long v0, v2, v0

    if-lez v0, :cond_66

    .line 1164
    invoke-virtual {p0}, Lcom/android/server/biometrics/BiometricServiceBase;->getTag()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "loadAuthenticatorIds() taking too long: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "ms"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1166
    :cond_66
    return-void
.end method

.method protected notifyClientActiveCallbacks(Z)V
    .registers 2

    .line 204
    return-void
.end method

.method protected notifyLockoutResetMonitors()V
    .registers 3

    .line 1295
    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lcom/android/server/biometrics/BiometricServiceBase;->mLockoutMonitors:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_17

    .line 1296
    iget-object v1, p0, Lcom/android/server/biometrics/BiometricServiceBase;->mLockoutMonitors:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/biometrics/BiometricServiceBase$LockoutResetMonitor;

    invoke-virtual {v1}, Lcom/android/server/biometrics/BiometricServiceBase$LockoutResetMonitor;->sendLockoutReset()V

    .line 1295
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1298
    :cond_17
    return-void
.end method

.method public onStart()V
    .registers 1

    .line 666
    invoke-direct {p0}, Lcom/android/server/biometrics/BiometricServiceBase;->listenForUserSwitches()V

    .line 667
    return-void
.end method

.method protected removeClient(Lcom/android/server/biometrics/ClientMonitor;)V
    .registers 5

    .line 1131
    if-eqz p1, :cond_35

    .line 1132
    invoke-virtual {p1}, Lcom/android/server/biometrics/ClientMonitor;->destroy()V

    .line 1133
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricServiceBase;->mCurrentClient:Lcom/android/server/biometrics/ClientMonitor;

    if-eq p1, v0, :cond_35

    if-eqz v0, :cond_35

    .line 1134
    invoke-virtual {p0}, Lcom/android/server/biometrics/BiometricServiceBase;->getTag()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected client: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/server/biometrics/ClientMonitor;->getOwnerString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "expected: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/biometrics/BiometricServiceBase;->mCurrentClient:Lcom/android/server/biometrics/ClientMonitor;

    .line 1135
    invoke-virtual {v2}, Lcom/android/server/biometrics/ClientMonitor;->getOwnerString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1134
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1138
    :cond_35
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricServiceBase;->mCurrentClient:Lcom/android/server/biometrics/ClientMonitor;

    if-eqz v0, :cond_58

    .line 1139
    invoke-virtual {p0}, Lcom/android/server/biometrics/BiometricServiceBase;->getTag()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Done with client: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/server/biometrics/ClientMonitor;->getOwnerString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1140
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/server/biometrics/BiometricServiceBase;->mCurrentClient:Lcom/android/server/biometrics/ClientMonitor;

    .line 1142
    :cond_58
    iget-object p1, p0, Lcom/android/server/biometrics/BiometricServiceBase;->mPendingClient:Lcom/android/server/biometrics/ClientMonitor;

    if-nez p1, :cond_60

    .line 1143
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/BiometricServiceBase;->notifyClientActiveCallbacks(Z)V

    .line 1145
    :cond_60
    return-void
.end method

.method protected removeInternal(Lcom/android/server/biometrics/RemovalClient;)V
    .registers 4

    .line 933
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricServiceBase;->mHandler:Lcom/android/server/biometrics/BiometricServiceBase$H;

    new-instance v1, Lcom/android/server/biometrics/-$$Lambda$BiometricServiceBase$8-hCNL3jMZVMKItY0KyN7TBk6u8;

    invoke-direct {v1, p0, p1}, Lcom/android/server/biometrics/-$$Lambda$BiometricServiceBase$8-hCNL3jMZVMKItY0KyN7TBk6u8;-><init>(Lcom/android/server/biometrics/BiometricServiceBase;Lcom/android/server/biometrics/RemovalClient;)V

    invoke-virtual {v0, v1}, Lcom/android/server/biometrics/BiometricServiceBase$H;->post(Ljava/lang/Runnable;)Z

    .line 936
    return-void
.end method

.method public serviceDied(J)V
    .registers 4

    .line 671
    invoke-virtual {p0}, Lcom/android/server/biometrics/BiometricServiceBase;->getTag()Ljava/lang/String;

    move-result-object p1

    const-string p2, "HAL died"

    invoke-static {p1, p2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 672
    iget-object p1, p0, Lcom/android/server/biometrics/BiometricServiceBase;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    invoke-virtual {p0}, Lcom/android/server/biometrics/BiometricServiceBase;->getConstants()Lcom/android/server/biometrics/Constants;

    move-result-object p2

    invoke-interface {p2}, Lcom/android/server/biometrics/Constants;->tagHalDied()Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x1

    invoke-virtual {p1, p2, v0}, Lcom/android/internal/logging/MetricsLogger;->count(Ljava/lang/String;I)V

    .line 673
    iget p1, p0, Lcom/android/server/biometrics/BiometricServiceBase;->mHALDeathCount:I

    add-int/2addr p1, v0

    iput p1, p0, Lcom/android/server/biometrics/BiometricServiceBase;->mHALDeathCount:I

    .line 674
    const/16 p1, -0x2710

    iput p1, p0, Lcom/android/server/biometrics/BiometricServiceBase;->mCurrentUserId:I

    .line 677
    iget-object p1, p0, Lcom/android/server/biometrics/BiometricServiceBase;->mHandler:Lcom/android/server/biometrics/BiometricServiceBase$H;

    new-instance p2, Lcom/android/server/biometrics/-$$Lambda$BiometricServiceBase$iRNlDOJhMpMFOTQxuHjuZ0z5dlY;

    invoke-direct {p2, p0}, Lcom/android/server/biometrics/-$$Lambda$BiometricServiceBase$iRNlDOJhMpMFOTQxuHjuZ0z5dlY;-><init>(Lcom/android/server/biometrics/BiometricServiceBase;)V

    invoke-virtual {p1, p2}, Lcom/android/server/biometrics/BiometricServiceBase$H;->post(Ljava/lang/Runnable;)Z

    .line 682
    invoke-virtual {p0}, Lcom/android/server/biometrics/BiometricServiceBase;->statsModality()I

    move-result p1

    const/16 p2, 0x94

    invoke-static {p2, p1, v0}, Landroid/util/StatsLog;->write(III)I

    .line 684
    return-void
.end method

.method protected setActiveUserInternal(I)V
    .registers 4

    .line 924
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricServiceBase;->mHandler:Lcom/android/server/biometrics/BiometricServiceBase$H;

    new-instance v1, Lcom/android/server/biometrics/-$$Lambda$BiometricServiceBase$rf3hjPI_nf4EvVsQV7gFCF1-HpI;

    invoke-direct {v1, p0, p1}, Lcom/android/server/biometrics/-$$Lambda$BiometricServiceBase$rf3hjPI_nf4EvVsQV7gFCF1-HpI;-><init>(Lcom/android/server/biometrics/BiometricServiceBase;I)V

    invoke-virtual {v0, v1}, Lcom/android/server/biometrics/BiometricServiceBase$H;->post(Ljava/lang/Runnable;)Z

    .line 930
    return-void
.end method

.method protected startCurrentClient(I)V
    .registers 5

    .line 1112
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricServiceBase;->mCurrentClient:Lcom/android/server/biometrics/ClientMonitor;

    if-nez v0, :cond_e

    .line 1113
    invoke-virtual {p0}, Lcom/android/server/biometrics/BiometricServiceBase;->getTag()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Trying to start null client!"

    invoke-static {p1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1114
    return-void

    .line 1116
    :cond_e
    invoke-virtual {p0}, Lcom/android/server/biometrics/BiometricServiceBase;->getTag()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "starting client "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/biometrics/BiometricServiceBase;->mCurrentClient:Lcom/android/server/biometrics/ClientMonitor;

    .line 1117
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/biometrics/BiometricServiceBase;->mCurrentClient:Lcom/android/server/biometrics/ClientMonitor;

    .line 1118
    invoke-virtual {v2}, Lcom/android/server/biometrics/ClientMonitor;->getOwnerString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ") targetUserId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/biometrics/BiometricServiceBase;->mCurrentClient:Lcom/android/server/biometrics/ClientMonitor;

    .line 1119
    invoke-virtual {v2}, Lcom/android/server/biometrics/ClientMonitor;->getTargetUserId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " currentUserId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/biometrics/BiometricServiceBase;->mCurrentUserId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " cookie: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/biometrics/BiometricServiceBase;->mCurrentClient:Lcom/android/server/biometrics/ClientMonitor;

    .line 1121
    invoke-virtual {v2}, Lcom/android/server/biometrics/ClientMonitor;->getCookie()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1116
    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1122
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricServiceBase;->mCurrentClient:Lcom/android/server/biometrics/ClientMonitor;

    invoke-virtual {v0}, Lcom/android/server/biometrics/ClientMonitor;->getCookie()I

    move-result v0

    if-eq p1, v0, :cond_83

    .line 1123
    invoke-virtual {p0}, Lcom/android/server/biometrics/BiometricServiceBase;->getTag()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Mismatched cookie"

    invoke-static {p1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1124
    return-void

    .line 1126
    :cond_83
    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/BiometricServiceBase;->notifyClientActiveCallbacks(Z)V

    .line 1127
    iget-object p1, p0, Lcom/android/server/biometrics/BiometricServiceBase;->mCurrentClient:Lcom/android/server/biometrics/ClientMonitor;

    invoke-virtual {p1}, Lcom/android/server/biometrics/ClientMonitor;->start()I

    .line 1128
    return-void
.end method

.method protected abstract statsModality()I
.end method

.method protected abstract updateActiveGroup(ILjava/lang/String;)V
.end method
