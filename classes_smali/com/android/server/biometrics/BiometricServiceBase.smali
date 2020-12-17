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

.field private static final CLEANUP_UNKNOWN_TEMPLATES:Z = true

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
    .param p1, "context"  # Landroid/content/Context;

    .line 640
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 91
    new-instance v0, Lcom/android/server/biometrics/BiometricServiceBase$BiometricTaskStackListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/biometrics/BiometricServiceBase$BiometricTaskStackListener;-><init>(Lcom/android/server/biometrics/BiometricServiceBase;Lcom/android/server/biometrics/BiometricServiceBase$1;)V

    iput-object v0, p0, Lcom/android/server/biometrics/BiometricServiceBase;->mTaskStackListener:Lcom/android/server/biometrics/BiometricServiceBase$BiometricTaskStackListener;

    .line 92
    new-instance v0, Lcom/android/server/biometrics/BiometricServiceBase$ResetClientStateRunnable;

    invoke-direct {v0, p0, v1}, Lcom/android/server/biometrics/BiometricServiceBase$ResetClientStateRunnable;-><init>(Lcom/android/server/biometrics/BiometricServiceBase;Lcom/android/server/biometrics/BiometricServiceBase$1;)V

    iput-object v0, p0, Lcom/android/server/biometrics/BiometricServiceBase;->mResetClientState:Lcom/android/server/biometrics/BiometricServiceBase$ResetClientStateRunnable;

    .line 93
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/biometrics/BiometricServiceBase;->mLockoutMonitors:Ljava/util/ArrayList;

    .line 96
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 97
    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/biometrics/BiometricServiceBase;->mAuthenticatorIds:Ljava/util/Map;

    .line 99
    new-instance v0, Lcom/android/server/biometrics/BiometricServiceBase$H;

    invoke-direct {v0, p0}, Lcom/android/server/biometrics/BiometricServiceBase$H;-><init>(Lcom/android/server/biometrics/BiometricServiceBase;)V

    iput-object v0, p0, Lcom/android/server/biometrics/BiometricServiceBase;->mHandler:Lcom/android/server/biometrics/BiometricServiceBase$H;

    .line 101
    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, p0, Lcom/android/server/biometrics/BiometricServiceBase;->mToken:Landroid/os/IBinder;

    .line 102
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/biometrics/BiometricServiceBase;->mUnknownHALTemplates:Ljava/util/ArrayList;

    .line 108
    const/16 v0, -0x2710

    iput v0, p0, Lcom/android/server/biometrics/BiometricServiceBase;->mCurrentUserId:I

    .line 113
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/biometrics/BiometricServiceBase;->mPerformanceMap:Ljava/util/HashMap;

    .line 115
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/biometrics/BiometricServiceBase;->mCryptoPerformanceMap:Ljava/util/HashMap;

    .line 641
    iput-object p1, p0, Lcom/android/server/biometrics/BiometricServiceBase;->mContext:Landroid/content/Context;

    .line 642
    nop

    .line 643
    const-string/jumbo v0, "statusbar"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 642
    invoke-static {v0}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/biometrics/BiometricServiceBase;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    .line 644
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1040184

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    .line 645
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/biometrics/BiometricServiceBase;->mKeyguardPackage:Ljava/lang/String;

    .line 646
    const-class v0, Landroid/app/AppOpsManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    iput-object v0, p0, Lcom/android/server/biometrics/BiometricServiceBase;->mAppOps:Landroid/app/AppOpsManager;

    .line 647
    const-string v0, "activity_task"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityTaskManager;

    .line 648
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/biometrics/BiometricServiceBase;->mActivityTaskManager:Landroid/app/IActivityTaskManager;

    .line 649
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricServiceBase;->mContext:Landroid/content/Context;

    const-class v1, Landroid/os/PowerManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/android/server/biometrics/BiometricServiceBase;->mPowerManager:Landroid/os/PowerManager;

    .line 650
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricServiceBase;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/biometrics/BiometricServiceBase;->mUserManager:Landroid/os/UserManager;

    .line 651
    new-instance v0, Lcom/android/internal/logging/MetricsLogger;

    invoke-direct {v0}, Lcom/android/internal/logging/MetricsLogger;-><init>()V

    iput-object v0, p0, Lcom/android/server/biometrics/BiometricServiceBase;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    .line 652
    return-void
.end method

.method static synthetic access$1000(Lcom/android/server/biometrics/BiometricServiceBase;)Landroid/os/PowerManager;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/biometrics/BiometricServiceBase;

    .line 75
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricServiceBase;->mPowerManager:Landroid/os/PowerManager;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/server/biometrics/BiometricServiceBase;Lcom/android/server/biometrics/BiometricServiceBase$LockoutResetMonitor;)V
    .registers 2
    .param p0, "x0"  # Lcom/android/server/biometrics/BiometricServiceBase;
    .param p1, "x1"  # Lcom/android/server/biometrics/BiometricServiceBase$LockoutResetMonitor;

    .line 75
    invoke-direct {p0, p1}, Lcom/android/server/biometrics/BiometricServiceBase;->removeLockoutResetCallback(Lcom/android/server/biometrics/BiometricServiceBase$LockoutResetMonitor;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/biometrics/BiometricServiceBase;Ljava/lang/String;)Z
    .registers 3
    .param p0, "x0"  # Lcom/android/server/biometrics/BiometricServiceBase;
    .param p1, "x1"  # Ljava/lang/String;

    .line 75
    invoke-direct {p0, p1}, Lcom/android/server/biometrics/BiometricServiceBase;->isKeyguard(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/android/server/biometrics/BiometricServiceBase;)Lcom/android/server/biometrics/BiometricServiceBase$BiometricTaskStackListener;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/biometrics/BiometricServiceBase;

    .line 75
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricServiceBase;->mTaskStackListener:Lcom/android/server/biometrics/BiometricServiceBase$BiometricTaskStackListener;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/biometrics/BiometricServiceBase;)Landroid/app/IActivityTaskManager;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/biometrics/BiometricServiceBase;

    .line 75
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricServiceBase;->mActivityTaskManager:Landroid/app/IActivityTaskManager;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/biometrics/BiometricServiceBase;)V
    .registers 1
    .param p0, "x0"  # Lcom/android/server/biometrics/BiometricServiceBase;

    .line 75
    invoke-direct {p0}, Lcom/android/server/biometrics/BiometricServiceBase;->userActivity()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/biometrics/BiometricServiceBase;)Lcom/android/server/biometrics/BiometricServiceBase$PerformanceStats;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/biometrics/BiometricServiceBase;

    .line 75
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricServiceBase;->mPerformanceStats:Lcom/android/server/biometrics/BiometricServiceBase$PerformanceStats;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/server/biometrics/BiometricServiceBase;)Lcom/android/server/biometrics/ClientMonitor;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/biometrics/BiometricServiceBase;

    .line 75
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricServiceBase;->mCurrentClient:Lcom/android/server/biometrics/ClientMonitor;

    return-object v0
.end method

.method static synthetic access$702(Lcom/android/server/biometrics/BiometricServiceBase;Lcom/android/server/biometrics/ClientMonitor;)Lcom/android/server/biometrics/ClientMonitor;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/biometrics/BiometricServiceBase;
    .param p1, "x1"  # Lcom/android/server/biometrics/ClientMonitor;

    .line 75
    iput-object p1, p0, Lcom/android/server/biometrics/BiometricServiceBase;->mCurrentClient:Lcom/android/server/biometrics/ClientMonitor;

    return-object p1
.end method

.method static synthetic access$800(Lcom/android/server/biometrics/BiometricServiceBase;)Lcom/android/server/biometrics/ClientMonitor;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/biometrics/BiometricServiceBase;

    .line 75
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricServiceBase;->mPendingClient:Lcom/android/server/biometrics/ClientMonitor;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/server/biometrics/BiometricServiceBase;Lcom/android/server/biometrics/ClientMonitor;Z)V
    .registers 3
    .param p0, "x0"  # Lcom/android/server/biometrics/BiometricServiceBase;
    .param p1, "x1"  # Lcom/android/server/biometrics/ClientMonitor;
    .param p2, "x2"  # Z

    .line 75
    invoke-direct {p0, p1, p2}, Lcom/android/server/biometrics/BiometricServiceBase;->startClient(Lcom/android/server/biometrics/ClientMonitor;Z)V

    return-void
.end method

.method private clearEnumerateState()V
    .registers 3

    .line 1226
    invoke-virtual {p0}, Lcom/android/server/biometrics/BiometricServiceBase;->getTag()Ljava/lang/String;

    move-result-object v0

    const-string v1, "clearEnumerateState()"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1227
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricServiceBase;->mUnknownHALTemplates:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1228
    return-void
.end method

.method private enumerateUser(I)V
    .registers 20
    .param p1, "userId"  # I

    .line 1257
    move-object/from16 v14, p0

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/biometrics/BiometricServiceBase;->getTag()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Enumerating user("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v15, p1

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1259
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/biometrics/BiometricServiceBase;->getManageBiometricPermission()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v14, v0}, Lcom/android/server/biometrics/BiometricServiceBase;->hasPermission(Ljava/lang/String;)Z

    move-result v0

    xor-int/lit8 v10, v0, 0x1

    .line 1260
    .local v10, "restricted":Z
    nop

    .line 1261
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/biometrics/BiometricServiceBase;->getEnrolledTemplates(I)Ljava/util/List;

    move-result-object v16

    .line 1263
    .local v16, "enrolledList":Ljava/util/List;, "Ljava/util/List<+Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;>;"
    new-instance v17, Lcom/android/server/biometrics/BiometricServiceBase$InternalEnumerateClient;

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/biometrics/BiometricServiceBase;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 1264
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/biometrics/BiometricServiceBase;->getDaemonWrapper()Lcom/android/server/biometrics/BiometricServiceBase$DaemonWrapper;

    move-result-object v3

    iget-wide v4, v14, Lcom/android/server/biometrics/BiometricServiceBase;->mHalDeviceId:J

    iget-object v6, v14, Lcom/android/server/biometrics/BiometricServiceBase;->mToken:Landroid/os/IBinder;

    const/4 v7, 0x0

    .line 1265
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/biometrics/BiometricServiceBase;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v11

    .line 1266
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/biometrics/BiometricServiceBase;->getBiometricUtils()Lcom/android/server/biometrics/BiometricUtils;

    move-result-object v13

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move/from16 v8, p1

    move/from16 v9, p1

    move-object/from16 v12, v16

    invoke-direct/range {v0 .. v13}, Lcom/android/server/biometrics/BiometricServiceBase$InternalEnumerateClient;-><init>(Lcom/android/server/biometrics/BiometricServiceBase;Landroid/content/Context;Lcom/android/server/biometrics/BiometricServiceBase$DaemonWrapper;JLandroid/os/IBinder;Lcom/android/server/biometrics/BiometricServiceBase$ServiceListener;IIZLjava/lang/String;Ljava/util/List;Lcom/android/server/biometrics/BiometricUtils;)V

    .line 1267
    .local v0, "client":Lcom/android/server/biometrics/BiometricServiceBase$InternalEnumerateClient;
    invoke-virtual {v14, v0}, Lcom/android/server/biometrics/BiometricServiceBase;->enumerateInternal(Lcom/android/server/biometrics/EnumerateClient;)V

    .line 1268
    return-void
.end method

.method private getEffectiveUserId(I)I
    .registers 5
    .param p1, "userId"  # I

    .line 1311
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricServiceBase;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v0

    .line 1312
    .local v0, "um":Landroid/os/UserManager;
    if-eqz v0, :cond_14

    .line 1313
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 1314
    .local v1, "callingIdentity":J
    invoke-virtual {v0, p1}, Landroid/os/UserManager;->getCredentialOwnerProfile(I)I

    move-result p1

    .line 1315
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1316
    .end local v1  # "callingIdentity":J
    goto :goto_1d

    .line 1317
    :cond_14
    invoke-virtual {p0}, Lcom/android/server/biometrics/BiometricServiceBase;->getTag()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Unable to acquire UserManager"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1319
    :goto_1d
    return p1
.end method

.method private isCurrentClient(Ljava/lang/String;)Z
    .registers 3
    .param p1, "opPackageName"  # Ljava/lang/String;

    .line 1006
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricServiceBase;->mCurrentClient:Lcom/android/server/biometrics/ClientMonitor;

    if-eqz v0, :cond_10

    invoke-virtual {v0}, Lcom/android/server/biometrics/ClientMonitor;->getOwnerString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    return v0
.end method

.method private isForegroundActivity(II)Z
    .registers 9
    .param p1, "uid"  # I
    .param p2, "pid"  # I

    .line 1019
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/app/IActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v0

    .line 1020
    .local v0, "procs":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .line 1021
    .local v1, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_d
    if-ge v2, v1, :cond_28

    .line 1022
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 1023
    .local v3, "proc":Landroid/app/ActivityManager$RunningAppProcessInfo;
    iget v4, v3, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    if-ne v4, p2, :cond_25

    iget v4, v3, Landroid/app/ActivityManager$RunningAppProcessInfo;->uid:I

    if-ne v4, p1, :cond_25

    iget v4, v3, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I
    :try_end_1f
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_1f} :catch_29

    const/16 v5, 0x7d

    if-gt v4, v5, :cond_25

    .line 1025
    const/4 v4, 0x1

    return v4

    .line 1021
    .end local v3  # "proc":Landroid/app/ActivityManager$RunningAppProcessInfo;
    :cond_25
    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    .line 1030
    .end local v0  # "procs":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    .end local v1  # "N":I
    .end local v2  # "i":I
    :cond_28
    goto :goto_33

    .line 1028
    :catch_29
    move-exception v0

    .line 1029
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {p0}, Lcom/android/server/biometrics/BiometricServiceBase;->getTag()Ljava/lang/String;

    move-result-object v1

    const-string v2, "am.getRunningAppProcesses() failed"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1031
    .end local v0  # "e":Landroid/os/RemoteException;
    :goto_33
    const/4 v0, 0x0

    return v0
.end method

.method private isKeyguard(Ljava/lang/String;)Z
    .registers 3
    .param p1, "clientPackage"  # Ljava/lang/String;

    .line 1013
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricServiceBase;->mKeyguardPackage:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private isWorkProfile(I)Z
    .registers 6
    .param p1, "userId"  # I

    .line 1299
    const/4 v0, 0x0

    .line 1300
    .local v0, "userInfo":Landroid/content/pm/UserInfo;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 1302
    .local v1, "token":J
    :try_start_5
    iget-object v3, p0, Lcom/android/server/biometrics/BiometricServiceBase;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v3, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v3
    :try_end_b
    .catchall {:try_start_5 .. :try_end_b} :catchall_1c

    move-object v0, v3

    .line 1304
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1305
    nop

    .line 1306
    if-eqz v0, :cond_1a

    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v3

    if-eqz v3, :cond_1a

    const/4 v3, 0x1

    goto :goto_1b

    :cond_1a
    const/4 v3, 0x0

    :goto_1b
    return v3

    .line 1304
    :catchall_1c
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method private listenForUserSwitches()V
    .registers 4

    .line 1325
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    new-instance v1, Lcom/android/server/biometrics/BiometricServiceBase$1;

    invoke-direct {v1, p0}, Lcom/android/server/biometrics/BiometricServiceBase$1;-><init>(Lcom/android/server/biometrics/BiometricServiceBase;)V

    .line 1332
    invoke-virtual {p0}, Lcom/android/server/biometrics/BiometricServiceBase;->getTag()Ljava/lang/String;

    move-result-object v2

    .line 1325
    invoke-interface {v0, v1, v2}, Landroid/app/IActivityManager;->registerUserSwitchObserver(Landroid/app/IUserSwitchObserver;Ljava/lang/String;)V
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_10} :catch_11

    .line 1335
    goto :goto_1b

    .line 1333
    :catch_11
    move-exception v0

    .line 1334
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {p0}, Lcom/android/server/biometrics/BiometricServiceBase;->getTag()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Failed to listen for user switching event"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1336
    .end local v0  # "e":Landroid/os/RemoteException;
    :goto_1b
    return-void
.end method

.method private removeLockoutResetCallback(Lcom/android/server/biometrics/BiometricServiceBase$LockoutResetMonitor;)V
    .registers 3
    .param p1, "monitor"  # Lcom/android/server/biometrics/BiometricServiceBase$LockoutResetMonitor;

    .line 1340
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricServiceBase;->mLockoutMonitors:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1341
    return-void
.end method

.method private startAuthentication(Lcom/android/server/biometrics/BiometricServiceBase$AuthenticationClientImpl;Ljava/lang/String;)V
    .registers 8
    .param p1, "client"  # Lcom/android/server/biometrics/BiometricServiceBase$AuthenticationClientImpl;
    .param p2, "opPackageName"  # Ljava/lang/String;

    .line 934
    invoke-virtual {p0}, Lcom/android/server/biometrics/BiometricServiceBase;->getTag()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "startAuthentication("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 936
    invoke-virtual {p0}, Lcom/android/server/biometrics/BiometricServiceBase;->getLockoutMode()I

    move-result v0

    .line 937
    .local v0, "lockoutMode":I
    const/4 v1, 0x1

    if-eqz v0, :cond_5e

    .line 938
    invoke-virtual {p0}, Lcom/android/server/biometrics/BiometricServiceBase;->getTag()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "In lockout mode("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ") ; disallowing authentication"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 939
    if-ne v0, v1, :cond_46

    .line 940
    const/4 v1, 0x7

    goto :goto_48

    .line 941
    :cond_46
    const/16 v1, 0x9

    :goto_48
    nop

    .line 942
    .local v1, "errorCode":I
    invoke-virtual {p0}, Lcom/android/server/biometrics/BiometricServiceBase;->getHalDeviceId()J

    move-result-wide v2

    const/4 v4, 0x0

    invoke-virtual {p1, v2, v3, v1, v4}, Lcom/android/server/biometrics/BiometricServiceBase$AuthenticationClientImpl;->onError(JII)Z

    move-result v2

    if-nez v2, :cond_5d

    .line 943
    invoke-virtual {p0}, Lcom/android/server/biometrics/BiometricServiceBase;->getTag()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Cannot send permanent lockout message to client"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 945
    :cond_5d
    return-void

    .line 947
    .end local v1  # "errorCode":I
    :cond_5e
    invoke-direct {p0, p1, v1}, Lcom/android/server/biometrics/BiometricServiceBase;->startClient(Lcom/android/server/biometrics/ClientMonitor;Z)V

    .line 948
    return-void
.end method

.method private startCleanupUnknownHALTemplates()V
    .registers 16

    .line 1234
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricServiceBase;->mUnknownHALTemplates:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_53

    .line 1235
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricServiceBase;->mUnknownHALTemplates:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/biometrics/BiometricServiceBase$UserTemplate;

    .line 1236
    .local v0, "template":Lcom/android/server/biometrics/BiometricServiceBase$UserTemplate;
    iget-object v1, p0, Lcom/android/server/biometrics/BiometricServiceBase;->mUnknownHALTemplates:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1237
    invoke-virtual {p0}, Lcom/android/server/biometrics/BiometricServiceBase;->getManageBiometricPermission()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/biometrics/BiometricServiceBase;->hasPermission(Ljava/lang/String;)Z

    move-result v1

    xor-int/lit8 v13, v1, 0x1

    .line 1238
    .local v13, "restricted":Z
    new-instance v1, Lcom/android/server/biometrics/BiometricServiceBase$InternalRemovalClient;

    invoke-virtual {p0}, Lcom/android/server/biometrics/BiometricServiceBase;->getContext()Landroid/content/Context;

    move-result-object v4

    .line 1239
    invoke-virtual {p0}, Lcom/android/server/biometrics/BiometricServiceBase;->getDaemonWrapper()Lcom/android/server/biometrics/BiometricServiceBase$DaemonWrapper;

    move-result-object v5

    iget-wide v6, p0, Lcom/android/server/biometrics/BiometricServiceBase;->mHalDeviceId:J

    iget-object v8, p0, Lcom/android/server/biometrics/BiometricServiceBase;->mToken:Landroid/os/IBinder;

    const/4 v9, 0x0

    iget-object v2, v0, Lcom/android/server/biometrics/BiometricServiceBase$UserTemplate;->mIdentifier:Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;

    .line 1240
    invoke-virtual {v2}, Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;->getBiometricId()I

    move-result v10

    const/4 v11, 0x0

    iget v12, v0, Lcom/android/server/biometrics/BiometricServiceBase$UserTemplate;->mUserId:I

    .line 1241
    invoke-virtual {p0}, Lcom/android/server/biometrics/BiometricServiceBase;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v14

    move-object v2, v1

    move-object v3, p0

    invoke-direct/range {v2 .. v14}, Lcom/android/server/biometrics/BiometricServiceBase$InternalRemovalClient;-><init>(Lcom/android/server/biometrics/BiometricServiceBase;Landroid/content/Context;Lcom/android/server/biometrics/BiometricServiceBase$DaemonWrapper;JLandroid/os/IBinder;Lcom/android/server/biometrics/BiometricServiceBase$ServiceListener;IIIZLjava/lang/String;)V

    .line 1242
    .local v1, "client":Lcom/android/server/biometrics/BiometricServiceBase$InternalRemovalClient;
    invoke-virtual {p0, v1}, Lcom/android/server/biometrics/BiometricServiceBase;->removeInternal(Lcom/android/server/biometrics/RemovalClient;)V

    .line 1243
    const/16 v2, 0x94

    .line 1244
    invoke-virtual {p0}, Lcom/android/server/biometrics/BiometricServiceBase;->statsModality()I

    move-result v3

    const/4 v4, 0x3

    .line 1243
    invoke-static {v2, v3, v4}, Landroid/util/StatsLog;->write(III)I

    .line 1246
    .end local v0  # "template":Lcom/android/server/biometrics/BiometricServiceBase$UserTemplate;
    .end local v1  # "client":Lcom/android/server/biometrics/BiometricServiceBase$InternalRemovalClient;
    .end local v13  # "restricted":Z
    goto :goto_6b

    .line 1247
    :cond_53
    invoke-direct {p0}, Lcom/android/server/biometrics/BiometricServiceBase;->clearEnumerateState()V

    .line 1248
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricServiceBase;->mPendingClient:Lcom/android/server/biometrics/ClientMonitor;

    if-eqz v0, :cond_6b

    .line 1249
    invoke-virtual {p0}, Lcom/android/server/biometrics/BiometricServiceBase;->getTag()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Enumerate finished, starting pending client"

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1250
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricServiceBase;->mPendingClient:Lcom/android/server/biometrics/ClientMonitor;

    invoke-direct {p0, v0, v1}, Lcom/android/server/biometrics/BiometricServiceBase;->startClient(Lcom/android/server/biometrics/ClientMonitor;Z)V

    .line 1251
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/biometrics/BiometricServiceBase;->mPendingClient:Lcom/android/server/biometrics/ClientMonitor;

    .line 1254
    :cond_6b
    :goto_6b
    return-void
.end method

.method private startClient(Lcom/android/server/biometrics/ClientMonitor;Z)V
    .registers 9
    .param p1, "newClient"  # Lcom/android/server/biometrics/ClientMonitor;
    .param p2, "initiatedByClient"  # Z

    .line 1043
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricServiceBase;->mCurrentClient:Lcom/android/server/biometrics/ClientMonitor;

    .line 1044
    .local v0, "currentClient":Lcom/android/server/biometrics/ClientMonitor;
    if-eqz v0, :cond_7b

    .line 1045
    invoke-virtual {p0}, Lcom/android/server/biometrics/BiometricServiceBase;->getTag()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "request stop current client "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1046
    invoke-virtual {v0}, Lcom/android/server/biometrics/ClientMonitor;->getOwnerString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1045
    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1049
    instance-of v1, v0, Lcom/android/server/biometrics/BiometricServiceBase$InternalEnumerateClient;

    if-nez v1, :cond_3e

    instance-of v1, v0, Lcom/android/server/biometrics/BiometricServiceBase$InternalRemovalClient;

    if-eqz v1, :cond_2a

    goto :goto_3e

    .line 1061
    :cond_2a
    invoke-virtual {v0, p2}, Lcom/android/server/biometrics/ClientMonitor;->stop(Z)I

    .line 1067
    iget-object v1, p0, Lcom/android/server/biometrics/BiometricServiceBase;->mHandler:Lcom/android/server/biometrics/BiometricServiceBase$H;

    iget-object v2, p0, Lcom/android/server/biometrics/BiometricServiceBase;->mResetClientState:Lcom/android/server/biometrics/BiometricServiceBase$ResetClientStateRunnable;

    invoke-virtual {v1, v2}, Lcom/android/server/biometrics/BiometricServiceBase$H;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1068
    iget-object v1, p0, Lcom/android/server/biometrics/BiometricServiceBase;->mHandler:Lcom/android/server/biometrics/BiometricServiceBase$H;

    iget-object v2, p0, Lcom/android/server/biometrics/BiometricServiceBase;->mResetClientState:Lcom/android/server/biometrics/BiometricServiceBase$ResetClientStateRunnable;

    const-wide/16 v3, 0xbb8

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/server/biometrics/BiometricServiceBase$H;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_78

    .line 1054
    :cond_3e
    :goto_3e
    if-eqz p1, :cond_78

    .line 1055
    invoke-virtual {p0}, Lcom/android/server/biometrics/BiometricServiceBase;->getTag()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Internal cleanup in progress but trying to start client "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1056
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1057
    invoke-virtual {p1}, Lcom/android/server/biometrics/ClientMonitor;->getOwnerString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "), initiatedByClient = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1055
    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1070
    :cond_78
    :goto_78
    iput-object p1, p0, Lcom/android/server/biometrics/BiometricServiceBase;->mPendingClient:Lcom/android/server/biometrics/ClientMonitor;

    goto :goto_e1

    .line 1071
    :cond_7b
    if-eqz p1, :cond_e1

    .line 1075
    instance-of v1, p1, Lcom/android/server/biometrics/AuthenticationClient;

    if-eqz v1, :cond_d6

    .line 1076
    move-object v1, p1

    check-cast v1, Lcom/android/server/biometrics/AuthenticationClient;

    .line 1077
    .local v1, "client":Lcom/android/server/biometrics/AuthenticationClient;
    invoke-virtual {v1}, Lcom/android/server/biometrics/AuthenticationClient;->isBiometricPrompt()Z

    move-result v2

    if-eqz v2, :cond_d6

    .line 1078
    invoke-virtual {p0}, Lcom/android/server/biometrics/BiometricServiceBase;->getTag()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Returning cookie: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/android/server/biometrics/AuthenticationClient;->getCookie()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1079
    iput-object p1, p0, Lcom/android/server/biometrics/BiometricServiceBase;->mCurrentClient:Lcom/android/server/biometrics/ClientMonitor;

    .line 1080
    iget-object v2, p0, Lcom/android/server/biometrics/BiometricServiceBase;->mBiometricService:Landroid/hardware/biometrics/IBiometricService;

    if-nez v2, :cond_b9

    .line 1081
    nop

    .line 1082
    const-string v2, "biometric"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    .line 1081
    invoke-static {v2}, Landroid/hardware/biometrics/IBiometricService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/biometrics/IBiometricService;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/biometrics/BiometricServiceBase;->mBiometricService:Landroid/hardware/biometrics/IBiometricService;

    .line 1085
    :cond_b9
    :try_start_b9
    iget-object v2, p0, Lcom/android/server/biometrics/BiometricServiceBase;->mBiometricService:Landroid/hardware/biometrics/IBiometricService;

    invoke-virtual {v1}, Lcom/android/server/biometrics/AuthenticationClient;->getCookie()I

    move-result v3

    .line 1086
    invoke-virtual {v1}, Lcom/android/server/biometrics/AuthenticationClient;->getRequireConfirmation()Z

    move-result v4

    invoke-virtual {v1}, Lcom/android/server/biometrics/AuthenticationClient;->getTargetUserId()I

    move-result v5

    .line 1085
    invoke-interface {v2, v3, v4, v5}, Landroid/hardware/biometrics/IBiometricService;->onReadyForAuthentication(IZI)V
    :try_end_ca
    .catch Landroid/os/RemoteException; {:try_start_b9 .. :try_end_ca} :catch_cb

    .line 1089
    goto :goto_d5

    .line 1087
    :catch_cb
    move-exception v2

    .line 1088
    .local v2, "e":Landroid/os/RemoteException;
    invoke-virtual {p0}, Lcom/android/server/biometrics/BiometricServiceBase;->getTag()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Remote exception"

    invoke-static {v3, v4, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1090
    .end local v2  # "e":Landroid/os/RemoteException;
    :goto_d5
    return-void

    .line 1095
    .end local v1  # "client":Lcom/android/server/biometrics/AuthenticationClient;
    :cond_d6
    iput-object p1, p0, Lcom/android/server/biometrics/BiometricServiceBase;->mCurrentClient:Lcom/android/server/biometrics/ClientMonitor;

    .line 1096
    iget-object v1, p0, Lcom/android/server/biometrics/BiometricServiceBase;->mCurrentClient:Lcom/android/server/biometrics/ClientMonitor;

    invoke-virtual {v1}, Lcom/android/server/biometrics/ClientMonitor;->getCookie()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/server/biometrics/BiometricServiceBase;->startCurrentClient(I)V

    .line 1098
    :cond_e1
    :goto_e1
    return-void
.end method

.method private userActivity()V
    .registers 6

    .line 1290
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 1291
    .local v0, "now":J
    iget-object v2, p0, Lcom/android/server/biometrics/BiometricServiceBase;->mPowerManager:Landroid/os/PowerManager;

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-virtual {v2, v0, v1, v3, v4}, Landroid/os/PowerManager;->userActivity(JII)V

    .line 1292
    return-void
.end method


# virtual methods
.method protected addLockoutResetCallback(Landroid/hardware/biometrics/IBiometricServiceLockoutResetCallback;)V
    .registers 4
    .param p1, "callback"  # Landroid/hardware/biometrics/IBiometricServiceLockoutResetCallback;

    .line 951
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricServiceBase;->mHandler:Lcom/android/server/biometrics/BiometricServiceBase$H;

    new-instance v1, Lcom/android/server/biometrics/-$$Lambda$BiometricServiceBase$XAcKFVHrxFAE_DeiO9UcSMHwbi4;

    invoke-direct {v1, p0, p1}, Lcom/android/server/biometrics/-$$Lambda$BiometricServiceBase$XAcKFVHrxFAE_DeiO9UcSMHwbi4;-><init>(Lcom/android/server/biometrics/BiometricServiceBase;Landroid/hardware/biometrics/IBiometricServiceLockoutResetCallback;)V

    invoke-virtual {v0, v1}, Lcom/android/server/biometrics/BiometricServiceBase$H;->post(Ljava/lang/Runnable;)Z

    .line 957
    return-void
.end method

.method protected authenticateInternal(Lcom/android/server/biometrics/BiometricServiceBase$AuthenticationClientImpl;JLjava/lang/String;)V
    .registers 16
    .param p1, "client"  # Lcom/android/server/biometrics/BiometricServiceBase$AuthenticationClientImpl;
    .param p2, "opId"  # J
    .param p4, "opPackageName"  # Ljava/lang/String;

    .line 843
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v8

    .line 844
    .local v8, "callingUid":I
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v9

    .line 845
    .local v9, "callingPid":I
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v10

    .line 846
    .local v10, "callingUserId":I
    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-object v4, p4

    move v5, v8

    move v6, v9

    move v7, v10

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/biometrics/BiometricServiceBase;->authenticateInternal(Lcom/android/server/biometrics/BiometricServiceBase$AuthenticationClientImpl;JLjava/lang/String;III)V

    .line 847
    return-void
.end method

.method protected authenticateInternal(Lcom/android/server/biometrics/BiometricServiceBase$AuthenticationClientImpl;JLjava/lang/String;III)V
    .registers 16
    .param p1, "client"  # Lcom/android/server/biometrics/BiometricServiceBase$AuthenticationClientImpl;
    .param p2, "opId"  # J
    .param p4, "opPackageName"  # Ljava/lang/String;
    .param p5, "callingUid"  # I
    .param p6, "callingPid"  # I
    .param p7, "callingUserId"  # I

    .line 851
    const/4 v2, 0x1

    move-object v0, p0

    move-object v1, p4

    move v3, p5

    move v4, p6

    move v5, p7

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/biometrics/BiometricServiceBase;->canUseBiometric(Ljava/lang/String;ZIII)Z

    move-result v0

    if-nez v0, :cond_25

    .line 853
    invoke-virtual {p0}, Lcom/android/server/biometrics/BiometricServiceBase;->getTag()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "authenticate(): reject "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 854
    return-void

    .line 857
    :cond_25
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricServiceBase;->mHandler:Lcom/android/server/biometrics/BiometricServiceBase$H;

    new-instance v7, Lcom/android/server/biometrics/-$$Lambda$BiometricServiceBase$HtA60PD2POS70xjo2Wkv9Ds3iIM;

    move-object v1, v7

    move-object v2, p0

    move-wide v3, p2

    move-object v5, p1

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/android/server/biometrics/-$$Lambda$BiometricServiceBase$HtA60PD2POS70xjo2Wkv9Ds3iIM;-><init>(Lcom/android/server/biometrics/BiometricServiceBase;JLcom/android/server/biometrics/BiometricServiceBase$AuthenticationClientImpl;Ljava/lang/String;)V

    invoke-virtual {v0, v7}, Lcom/android/server/biometrics/BiometricServiceBase$H;->post(Ljava/lang/Runnable;)Z

    .line 873
    return-void
.end method

.method protected canUseBiometric(Ljava/lang/String;ZIII)Z
    .registers 10
    .param p1, "opPackageName"  # Ljava/lang/String;
    .param p2, "requireForeground"  # Z
    .param p3, "uid"  # I
    .param p4, "pid"  # I
    .param p5, "userId"  # I

    .line 970
    invoke-virtual {p0}, Lcom/android/server/biometrics/BiometricServiceBase;->checkUseBiometricPermission()V

    .line 973
    invoke-virtual {p0}, Lcom/android/server/biometrics/BiometricServiceBase;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/biometrics/flymefingerprint/FlymeFingerprintUtils;->getInstance(Landroid/content/Context;)Lcom/android/server/biometrics/flymefingerprint/FlymeFingerprintUtils;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/biometrics/flymefingerprint/FlymeFingerprintUtils;->isPackageAlwaysAllow(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_13

    .line 974
    return v1

    .line 978
    :cond_13
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v2, 0x3e8

    if-ne v0, v2, :cond_1c

    .line 979
    return v1

    .line 981
    :cond_1c
    invoke-direct {p0, p1}, Lcom/android/server/biometrics/BiometricServiceBase;->isKeyguard(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 982
    return v1

    .line 984
    :cond_23
    invoke-virtual {p0, p5}, Lcom/android/server/biometrics/BiometricServiceBase;->isCurrentUserOrProfile(I)Z

    move-result v0

    const/4 v2, 0x0

    const-string v3, "Rejecting "

    if-nez v0, :cond_48

    .line 985
    invoke-virtual {p0}, Lcom/android/server/biometrics/BiometricServiceBase;->getTag()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "; not a current user or profile"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 986
    return v2

    .line 988
    :cond_48
    invoke-virtual {p0, p3, p1}, Lcom/android/server/biometrics/BiometricServiceBase;->checkAppOps(ILjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6a

    .line 989
    invoke-virtual {p0}, Lcom/android/server/biometrics/BiometricServiceBase;->getTag()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "; permission denied"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 990
    return v2

    .line 993
    :cond_6a
    if-eqz p2, :cond_94

    invoke-direct {p0, p3, p4}, Lcom/android/server/biometrics/BiometricServiceBase;->isForegroundActivity(II)Z

    move-result v0

    if-nez v0, :cond_94

    invoke-direct {p0, p1}, Lcom/android/server/biometrics/BiometricServiceBase;->isCurrentClient(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_94

    .line 995
    invoke-virtual {p0}, Lcom/android/server/biometrics/BiometricServiceBase;->getTag()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "; not in foreground"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 996
    return v2

    .line 998
    :cond_94
    return v1
.end method

.method protected cancelAuthenticationInternal(Landroid/os/IBinder;Ljava/lang/String;)V
    .registers 13
    .param p1, "token"  # Landroid/os/IBinder;
    .param p2, "opPackageName"  # Ljava/lang/String;

    .line 876
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v7

    .line 877
    .local v7, "callingUid":I
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v8

    .line 878
    .local v8, "callingPid":I
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v9

    .line 879
    .local v9, "callingUserId":I
    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, v7

    move v4, v8

    move v5, v9

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/biometrics/BiometricServiceBase;->cancelAuthenticationInternal(Landroid/os/IBinder;Ljava/lang/String;IIIZ)V

    .line 881
    return-void
.end method

.method protected cancelAuthenticationInternal(Landroid/os/IBinder;Ljava/lang/String;IIIZ)V
    .registers 13
    .param p1, "token"  # Landroid/os/IBinder;
    .param p2, "opPackageName"  # Ljava/lang/String;
    .param p3, "callingUid"  # I
    .param p4, "callingPid"  # I
    .param p5, "callingUserId"  # I
    .param p6, "fromClient"  # Z

    .line 885
    if-eqz p6, :cond_27

    .line 888
    const/4 v2, 0x1

    move-object v0, p0

    move-object v1, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/biometrics/BiometricServiceBase;->canUseBiometric(Ljava/lang/String;ZIII)Z

    move-result v0

    if-nez v0, :cond_27

    .line 890
    invoke-virtual {p0}, Lcom/android/server/biometrics/BiometricServiceBase;->getTag()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cancelAuthentication(): reject "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 891
    return-void

    .line 895
    :cond_27
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricServiceBase;->mHandler:Lcom/android/server/biometrics/BiometricServiceBase$H;

    new-instance v1, Lcom/android/server/biometrics/-$$Lambda$BiometricServiceBase$aivpKkOumO0Y5eW-DasbcdjcN4o;

    invoke-direct {v1, p0, p1, p6}, Lcom/android/server/biometrics/-$$Lambda$BiometricServiceBase$aivpKkOumO0Y5eW-DasbcdjcN4o;-><init>(Lcom/android/server/biometrics/BiometricServiceBase;Landroid/os/IBinder;Z)V

    invoke-virtual {v0, v1}, Lcom/android/server/biometrics/BiometricServiceBase$H;->post(Ljava/lang/Runnable;)Z

    .line 913
    return-void
.end method

.method protected cancelEnrollmentInternal(Landroid/os/IBinder;)V
    .registers 4
    .param p1, "token"  # Landroid/os/IBinder;

    .line 832
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricServiceBase;->mHandler:Lcom/android/server/biometrics/BiometricServiceBase$H;

    new-instance v1, Lcom/android/server/biometrics/-$$Lambda$BiometricServiceBase$9h-u9AqPquTEJ3xQKI_ONPZaSfE;

    invoke-direct {v1, p0, p1}, Lcom/android/server/biometrics/-$$Lambda$BiometricServiceBase$9h-u9AqPquTEJ3xQKI_ONPZaSfE;-><init>(Lcom/android/server/biometrics/BiometricServiceBase;Landroid/os/IBinder;)V

    invoke-virtual {v0, v1}, Lcom/android/server/biometrics/BiometricServiceBase$H;->post(Ljava/lang/Runnable;)Z

    .line 839
    return-void
.end method

.method protected abstract checkAppOps(ILjava/lang/String;)Z
.end method

.method protected checkPermission(Ljava/lang/String;)V
    .registers 5
    .param p1, "permission"  # Ljava/lang/String;

    .line 1180
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

    .line 1182
    return-void
.end method

.method protected abstract checkUseBiometricPermission()V
.end method

.method protected doTemplateCleanupForUser(I)V
    .registers 2
    .param p1, "userId"  # I

    .line 1221
    .line 1223
    return-void
.end method

.method protected enrollInternal(Lcom/android/server/biometrics/BiometricServiceBase$EnrollClientImpl;I)V
    .registers 5
    .param p1, "client"  # Lcom/android/server/biometrics/BiometricServiceBase$EnrollClientImpl;
    .param p2, "userId"  # I

    .line 816
    invoke-virtual {p0, p2}, Lcom/android/server/biometrics/BiometricServiceBase;->hasReachedEnrollmentLimit(I)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 817
    return-void

    .line 822
    :cond_7
    invoke-virtual {p0, p2}, Lcom/android/server/biometrics/BiometricServiceBase;->isCurrentUserOrProfile(I)Z

    move-result v0

    if-nez v0, :cond_e

    .line 823
    return-void

    .line 826
    :cond_e
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricServiceBase;->mHandler:Lcom/android/server/biometrics/BiometricServiceBase$H;

    new-instance v1, Lcom/android/server/biometrics/-$$Lambda$BiometricServiceBase$fmXvpYbcyw65Q8mBLfnQvCCMoK4;

    invoke-direct {v1, p0, p1}, Lcom/android/server/biometrics/-$$Lambda$BiometricServiceBase$fmXvpYbcyw65Q8mBLfnQvCCMoK4;-><init>(Lcom/android/server/biometrics/BiometricServiceBase;Lcom/android/server/biometrics/BiometricServiceBase$EnrollClientImpl;)V

    invoke-virtual {v0, v1}, Lcom/android/server/biometrics/BiometricServiceBase$H;->post(Ljava/lang/Runnable;)Z

    .line 829
    return-void
.end method

.method protected enumerateInternal(Lcom/android/server/biometrics/EnumerateClient;)V
    .registers 4
    .param p1, "client"  # Lcom/android/server/biometrics/EnumerateClient;

    .line 927
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricServiceBase;->mHandler:Lcom/android/server/biometrics/BiometricServiceBase$H;

    new-instance v1, Lcom/android/server/biometrics/-$$Lambda$BiometricServiceBase$YYfr_b-4RQIPNHGbIvwrGKgGEsY;

    invoke-direct {v1, p0, p1}, Lcom/android/server/biometrics/-$$Lambda$BiometricServiceBase$YYfr_b-4RQIPNHGbIvwrGKgGEsY;-><init>(Lcom/android/server/biometrics/BiometricServiceBase;Lcom/android/server/biometrics/EnumerateClient;)V

    invoke-virtual {v0, v1}, Lcom/android/server/biometrics/BiometricServiceBase$H;->post(Ljava/lang/Runnable;)Z

    .line 930
    return-void
.end method

.method protected getAuthenticatorId(Ljava/lang/String;)J
    .registers 7
    .param p1, "opPackageName"  # Ljava/lang/String;

    .line 1211
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/biometrics/BiometricServiceBase;->getUserOrWorkProfileId(Ljava/lang/String;I)I

    move-result v0

    .line 1212
    .local v0, "userId":I
    iget-object v1, p0, Lcom/android/server/biometrics/BiometricServiceBase;->mAuthenticatorIds:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-wide/16 v3, 0x0

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    return-wide v1
.end method

.method protected abstract getBiometricUtils()Lcom/android/server/biometrics/BiometricUtils;
.end method

.method protected abstract getConstants()Lcom/android/server/biometrics/Constants;
.end method

.method protected getCurrentClient()Lcom/android/server/biometrics/ClientMonitor;
    .registers 2

    .line 673
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

    .line 677
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricServiceBase;->mPendingClient:Lcom/android/server/biometrics/ClientMonitor;

    return-object v0
.end method

.method protected abstract getTag()Ljava/lang/String;
.end method

.method protected getUserOrWorkProfileId(Ljava/lang/String;I)I
    .registers 4
    .param p1, "clientPackage"  # Ljava/lang/String;
    .param p2, "userId"  # I

    .line 1162
    invoke-direct {p0, p1}, Lcom/android/server/biometrics/BiometricServiceBase;->isKeyguard(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_d

    invoke-direct {p0, p2}, Lcom/android/server/biometrics/BiometricServiceBase;->isWorkProfile(I)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1163
    return p2

    .line 1165
    :cond_d
    invoke-direct {p0, p2}, Lcom/android/server/biometrics/BiometricServiceBase;->getEffectiveUserId(I)I

    move-result v0

    return v0
.end method

.method protected handleAcquired(JII)V
    .registers 8
    .param p1, "deviceId"  # J
    .param p3, "acquiredInfo"  # I
    .param p4, "vendorCode"  # I

    .line 685
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricServiceBase;->mCurrentClient:Lcom/android/server/biometrics/ClientMonitor;

    .line 686
    .local v0, "client":Lcom/android/server/biometrics/ClientMonitor;
    if-eqz v0, :cond_d

    invoke-virtual {v0, p3, p4}, Lcom/android/server/biometrics/ClientMonitor;->onAcquired(II)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 687
    invoke-virtual {p0, v0}, Lcom/android/server/biometrics/BiometricServiceBase;->removeClient(Lcom/android/server/biometrics/ClientMonitor;)V

    .line 689
    :cond_d
    iget-object v1, p0, Lcom/android/server/biometrics/BiometricServiceBase;->mPerformanceStats:Lcom/android/server/biometrics/BiometricServiceBase$PerformanceStats;

    if-eqz v1, :cond_23

    invoke-virtual {p0}, Lcom/android/server/biometrics/BiometricServiceBase;->getLockoutMode()I

    move-result v1

    if-nez v1, :cond_23

    instance-of v1, v0, Lcom/android/server/biometrics/AuthenticationClient;

    if-eqz v1, :cond_23

    .line 692
    iget-object v1, p0, Lcom/android/server/biometrics/BiometricServiceBase;->mPerformanceStats:Lcom/android/server/biometrics/BiometricServiceBase$PerformanceStats;

    iget v2, v1, Lcom/android/server/biometrics/BiometricServiceBase$PerformanceStats;->acquire:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lcom/android/server/biometrics/BiometricServiceBase$PerformanceStats;->acquire:I

    .line 694
    :cond_23
    return-void
.end method

.method protected handleAuthenticated(Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;Ljava/util/ArrayList;)V
    .registers 8
    .param p1, "identifier"  # Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Byte;",
            ">;)V"
        }
    .end annotation

    .line 698
    .local p2, "token":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricServiceBase;->mCurrentClient:Lcom/android/server/biometrics/ClientMonitor;

    .line 699
    .local v0, "client":Lcom/android/server/biometrics/ClientMonitor;
    invoke-virtual {p1}, Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;->getBiometricId()I

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_b

    move v1, v2

    goto :goto_c

    :cond_b
    const/4 v1, 0x0

    .line 701
    .local v1, "authenticated":Z
    :goto_c
    if-eqz v0, :cond_17

    invoke-virtual {v0, p1, v1, p2}, Lcom/android/server/biometrics/ClientMonitor;->onAuthenticated(Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;ZLjava/util/ArrayList;)Z

    move-result v3

    if-eqz v3, :cond_17

    .line 702
    invoke-virtual {p0, v0}, Lcom/android/server/biometrics/BiometricServiceBase;->removeClient(Lcom/android/server/biometrics/ClientMonitor;)V

    .line 704
    :cond_17
    if-eqz v1, :cond_21

    .line 705
    iget-object v3, p0, Lcom/android/server/biometrics/BiometricServiceBase;->mPerformanceStats:Lcom/android/server/biometrics/BiometricServiceBase$PerformanceStats;

    iget v4, v3, Lcom/android/server/biometrics/BiometricServiceBase$PerformanceStats;->accept:I

    add-int/2addr v4, v2

    iput v4, v3, Lcom/android/server/biometrics/BiometricServiceBase$PerformanceStats;->accept:I

    goto :goto_28

    .line 707
    :cond_21
    iget-object v3, p0, Lcom/android/server/biometrics/BiometricServiceBase;->mPerformanceStats:Lcom/android/server/biometrics/BiometricServiceBase$PerformanceStats;

    iget v4, v3, Lcom/android/server/biometrics/BiometricServiceBase$PerformanceStats;->reject:I

    add-int/2addr v4, v2

    iput v4, v3, Lcom/android/server/biometrics/BiometricServiceBase$PerformanceStats;->reject:I

    .line 709
    :goto_28
    return-void
.end method

.method protected handleEnrollResult(Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;I)V
    .registers 6
    .param p1, "identifier"  # Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;
    .param p2, "remaining"  # I

    .line 713
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricServiceBase;->mCurrentClient:Lcom/android/server/biometrics/ClientMonitor;

    .line 714
    .local v0, "client":Lcom/android/server/biometrics/ClientMonitor;
    if-eqz v0, :cond_22

    invoke-virtual {v0, p1, p2}, Lcom/android/server/biometrics/ClientMonitor;->onEnrollResult(Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;I)Z

    move-result v1

    if-eqz v1, :cond_22

    .line 715
    invoke-virtual {p0, v0}, Lcom/android/server/biometrics/BiometricServiceBase;->removeClient(Lcom/android/server/biometrics/ClientMonitor;)V

    .line 718
    instance-of v1, p1, Landroid/hardware/fingerprint/Fingerprint;

    const/4 v2, 0x0

    if-eqz v1, :cond_1d

    .line 719
    move-object v1, p1

    check-cast v1, Landroid/hardware/fingerprint/Fingerprint;

    invoke-virtual {v1}, Landroid/hardware/fingerprint/Fingerprint;->getGroupId()I

    move-result v1

    invoke-virtual {p0, v1, v2}, Lcom/android/server/biometrics/BiometricServiceBase;->updateActiveGroup(ILjava/lang/String;)V

    goto :goto_22

    .line 721
    :cond_1d
    iget v1, p0, Lcom/android/server/biometrics/BiometricServiceBase;->mCurrentUserId:I

    invoke-virtual {p0, v1, v2}, Lcom/android/server/biometrics/BiometricServiceBase;->updateActiveGroup(ILjava/lang/String;)V

    .line 724
    :cond_22
    :goto_22
    return-void
.end method

.method protected handleEnumerate(Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;I)V
    .registers 10
    .param p1, "identifier"  # Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;
    .param p2, "remaining"  # I

    .line 779
    invoke-virtual {p0}, Lcom/android/server/biometrics/BiometricServiceBase;->getCurrentClient()Lcom/android/server/biometrics/ClientMonitor;

    move-result-object v0

    .line 782
    .local v0, "client":Lcom/android/server/biometrics/ClientMonitor;
    if-nez v0, :cond_7

    .line 783
    return-void

    .line 787
    :cond_7
    invoke-virtual {v0, p1, p2}, Lcom/android/server/biometrics/ClientMonitor;->onEnumerationResult(Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;I)Z

    .line 790
    if-nez p2, :cond_66

    .line 791
    instance-of v1, v0, Lcom/android/server/biometrics/BiometricServiceBase$InternalEnumerateClient;

    if-eqz v1, :cond_63

    .line 792
    move-object v1, v0

    check-cast v1, Lcom/android/server/biometrics/BiometricServiceBase$InternalEnumerateClient;

    .line 793
    invoke-virtual {v1}, Lcom/android/server/biometrics/BiometricServiceBase$InternalEnumerateClient;->getUnknownHALTemplates()Ljava/util/List;

    move-result-object v1

    .line 795
    .local v1, "unknownHALTemplates":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;>;"
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3e

    .line 796
    invoke-virtual {p0}, Lcom/android/server/biometrics/BiometricServiceBase;->getTag()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Adding "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " templates for deletion"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 799
    :cond_3e
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_3f
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_5c

    .line 800
    iget-object v3, p0, Lcom/android/server/biometrics/BiometricServiceBase;->mUnknownHALTemplates:Ljava/util/ArrayList;

    new-instance v4, Lcom/android/server/biometrics/BiometricServiceBase$UserTemplate;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;

    .line 801
    invoke-virtual {v0}, Lcom/android/server/biometrics/ClientMonitor;->getTargetUserId()I

    move-result v6

    invoke-direct {v4, p0, v5, v6}, Lcom/android/server/biometrics/BiometricServiceBase$UserTemplate;-><init>(Lcom/android/server/biometrics/BiometricServiceBase;Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;I)V

    .line 800
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 799
    add-int/lit8 v2, v2, 0x1

    goto :goto_3f

    .line 803
    .end local v2  # "i":I
    :cond_5c
    invoke-virtual {p0, v0}, Lcom/android/server/biometrics/BiometricServiceBase;->removeClient(Lcom/android/server/biometrics/ClientMonitor;)V

    .line 804
    invoke-direct {p0}, Lcom/android/server/biometrics/BiometricServiceBase;->startCleanupUnknownHALTemplates()V

    .line 805
    .end local v1  # "unknownHALTemplates":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;>;"
    goto :goto_66

    .line 806
    :cond_63
    invoke-virtual {p0, v0}, Lcom/android/server/biometrics/BiometricServiceBase;->removeClient(Lcom/android/server/biometrics/ClientMonitor;)V

    .line 809
    :cond_66
    :goto_66
    return-void
.end method

.method protected handleError(JII)V
    .registers 9
    .param p1, "deviceId"  # J
    .param p3, "error"  # I
    .param p4, "vendorCode"  # I

    .line 727
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricServiceBase;->mCurrentClient:Lcom/android/server/biometrics/ClientMonitor;

    .line 729
    .local v0, "client":Lcom/android/server/biometrics/ClientMonitor;
    invoke-virtual {p0}, Lcom/android/server/biometrics/BiometricServiceBase;->getTag()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleError(client="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 730
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

    .line 729
    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 732
    instance-of v1, v0, Lcom/android/server/biometrics/BiometricServiceBase$InternalRemovalClient;

    if-nez v1, :cond_39

    instance-of v1, v0, Lcom/android/server/biometrics/BiometricServiceBase$InternalEnumerateClient;

    if-eqz v1, :cond_3c

    .line 734
    :cond_39
    invoke-direct {p0}, Lcom/android/server/biometrics/BiometricServiceBase;->clearEnumerateState()V

    .line 737
    :cond_3c
    if-eqz v0, :cond_47

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/server/biometrics/ClientMonitor;->onError(JII)Z

    move-result v1

    if-eqz v1, :cond_47

    .line 738
    invoke-virtual {p0, v0}, Lcom/android/server/biometrics/BiometricServiceBase;->removeClient(Lcom/android/server/biometrics/ClientMonitor;)V

    .line 741
    :cond_47
    const/4 v1, 0x5

    if-ne p3, v1, :cond_7d

    .line 742
    iget-object v1, p0, Lcom/android/server/biometrics/BiometricServiceBase;->mHandler:Lcom/android/server/biometrics/BiometricServiceBase$H;

    iget-object v2, p0, Lcom/android/server/biometrics/BiometricServiceBase;->mResetClientState:Lcom/android/server/biometrics/BiometricServiceBase$ResetClientStateRunnable;

    invoke-virtual {v1, v2}, Lcom/android/server/biometrics/BiometricServiceBase$H;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 743
    iget-object v1, p0, Lcom/android/server/biometrics/BiometricServiceBase;->mPendingClient:Lcom/android/server/biometrics/ClientMonitor;

    if-eqz v1, :cond_7d

    .line 744
    invoke-virtual {p0}, Lcom/android/server/biometrics/BiometricServiceBase;->getTag()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "start pending client "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/biometrics/BiometricServiceBase;->mPendingClient:Lcom/android/server/biometrics/ClientMonitor;

    .line 745
    invoke-virtual {v3}, Lcom/android/server/biometrics/ClientMonitor;->getOwnerString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 744
    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 746
    iget-object v1, p0, Lcom/android/server/biometrics/BiometricServiceBase;->mPendingClient:Lcom/android/server/biometrics/ClientMonitor;

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/android/server/biometrics/BiometricServiceBase;->startClient(Lcom/android/server/biometrics/ClientMonitor;Z)V

    .line 747
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/biometrics/BiometricServiceBase;->mPendingClient:Lcom/android/server/biometrics/ClientMonitor;

    .line 750
    :cond_7d
    return-void
.end method

.method protected handleRemoved(Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;I)V
    .registers 7
    .param p1, "identifier"  # Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;
    .param p2, "remaining"  # I

    .line 754
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

    .line 755
    invoke-virtual {p1}, Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;->getDeviceId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", rem="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 754
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 758
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricServiceBase;->mCurrentClient:Lcom/android/server/biometrics/ClientMonitor;

    .line 759
    .local v0, "client":Lcom/android/server/biometrics/ClientMonitor;
    if-eqz v0, :cond_54

    invoke-virtual {v0, p1, p2}, Lcom/android/server/biometrics/ClientMonitor;->onRemoved(Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;I)Z

    move-result v1

    if-eqz v1, :cond_54

    .line 760
    invoke-virtual {p0, v0}, Lcom/android/server/biometrics/BiometricServiceBase;->removeClient(Lcom/android/server/biometrics/ClientMonitor;)V

    .line 762
    iget v1, p0, Lcom/android/server/biometrics/BiometricServiceBase;->mCurrentUserId:I

    .line 763
    .local v1, "userId":I
    instance-of v2, p1, Landroid/hardware/fingerprint/Fingerprint;

    if-eqz v2, :cond_4a

    .line 764
    move-object v2, p1

    check-cast v2, Landroid/hardware/fingerprint/Fingerprint;

    invoke-virtual {v2}, Landroid/hardware/fingerprint/Fingerprint;->getGroupId()I

    move-result v1

    .line 766
    :cond_4a
    invoke-virtual {p0, v1}, Lcom/android/server/biometrics/BiometricServiceBase;->hasEnrolledBiometrics(I)Z

    move-result v2

    if-nez v2, :cond_54

    .line 767
    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/android/server/biometrics/BiometricServiceBase;->updateActiveGroup(ILjava/lang/String;)V

    .line 771
    .end local v1  # "userId":I
    :cond_54
    instance-of v1, v0, Lcom/android/server/biometrics/BiometricServiceBase$InternalRemovalClient;

    if-eqz v1, :cond_64

    iget-object v1, p0, Lcom/android/server/biometrics/BiometricServiceBase;->mUnknownHALTemplates:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_64

    .line 772
    invoke-direct {p0}, Lcom/android/server/biometrics/BiometricServiceBase;->startCleanupUnknownHALTemplates()V

    goto :goto_6b

    .line 773
    :cond_64
    instance-of v1, v0, Lcom/android/server/biometrics/BiometricServiceBase$InternalRemovalClient;

    if-eqz v1, :cond_6b

    .line 774
    invoke-direct {p0}, Lcom/android/server/biometrics/BiometricServiceBase;->clearEnumerateState()V

    .line 776
    :cond_6b
    :goto_6b
    return-void
.end method

.method protected handleUserSwitching(I)V
    .registers 4
    .param p1, "userId"  # I

    .line 1275
    invoke-virtual {p0}, Lcom/android/server/biometrics/BiometricServiceBase;->getCurrentClient()Lcom/android/server/biometrics/ClientMonitor;

    move-result-object v0

    instance-of v0, v0, Lcom/android/server/biometrics/BiometricServiceBase$InternalRemovalClient;

    if-nez v0, :cond_10

    .line 1276
    invoke-virtual {p0}, Lcom/android/server/biometrics/BiometricServiceBase;->getCurrentClient()Lcom/android/server/biometrics/ClientMonitor;

    move-result-object v0

    instance-of v0, v0, Lcom/android/server/biometrics/BiometricServiceBase$InternalEnumerateClient;

    if-eqz v0, :cond_19

    .line 1277
    :cond_10
    invoke-virtual {p0}, Lcom/android/server/biometrics/BiometricServiceBase;->getTag()Ljava/lang/String;

    move-result-object v0

    const-string v1, "User switched while performing cleanup"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1279
    :cond_19
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/biometrics/BiometricServiceBase;->updateActiveGroup(ILjava/lang/String;)V

    .line 1280
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/BiometricServiceBase;->doTemplateCleanupForUser(I)V

    .line 1281
    return-void
.end method

.method protected abstract hasEnrolledBiometrics(I)Z
.end method

.method protected hasPermission(Ljava/lang/String;)Z
    .registers 3
    .param p1, "permission"  # Ljava/lang/String;

    .line 1175
    invoke-virtual {p0}, Lcom/android/server/biometrics/BiometricServiceBase;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method protected abstract hasReachedEnrollmentLimit(I)Z
.end method

.method protected isCurrentUserOrProfile(I)Z
    .registers 10
    .param p1, "userId"  # I

    .line 1185
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricServiceBase;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v0

    .line 1186
    .local v0, "um":Landroid/os/UserManager;
    const/4 v1, 0x0

    if-nez v0, :cond_13

    .line 1187
    invoke-virtual {p0}, Lcom/android/server/biometrics/BiometricServiceBase;->getTag()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Unable to acquire UserManager"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1188
    return v1

    .line 1191
    :cond_13
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1194
    .local v2, "token":J
    :try_start_17
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/os/UserManager;->getEnabledProfileIds(I)[I

    move-result-object v4

    array-length v5, v4

    move v6, v1

    :goto_21
    if-ge v6, v5, :cond_30

    aget v7, v4, v6
    :try_end_25
    .catchall {:try_start_17 .. :try_end_25} :catchall_35

    .line 1195
    .local v7, "profileId":I
    if-ne v7, p1, :cond_2d

    .line 1196
    nop

    .line 1200
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1196
    const/4 v1, 0x1

    return v1

    .line 1194
    .end local v7  # "profileId":I
    :cond_2d
    add-int/lit8 v6, v6, 0x1

    goto :goto_21

    .line 1200
    :cond_30
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1201
    nop

    .line 1203
    return v1

    .line 1200
    :catchall_35
    move-exception v1

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v1
.end method

.method protected isRestricted()Z
    .registers 2

    .line 1170
    invoke-virtual {p0}, Lcom/android/server/biometrics/BiometricServiceBase;->getManageBiometricPermission()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/biometrics/BiometricServiceBase;->hasPermission(Ljava/lang/String;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 1171
    .local v0, "restricted":Z
    return v0
.end method

.method public synthetic lambda$addLockoutResetCallback$6$BiometricServiceBase(Landroid/hardware/biometrics/IBiometricServiceLockoutResetCallback;)V
    .registers 4
    .param p1, "callback"  # Landroid/hardware/biometrics/IBiometricServiceLockoutResetCallback;

    .line 952
    new-instance v0, Lcom/android/server/biometrics/BiometricServiceBase$LockoutResetMonitor;

    invoke-direct {v0, p0, p1}, Lcom/android/server/biometrics/BiometricServiceBase$LockoutResetMonitor;-><init>(Lcom/android/server/biometrics/BiometricServiceBase;Landroid/hardware/biometrics/IBiometricServiceLockoutResetCallback;)V

    .line 953
    .local v0, "monitor":Lcom/android/server/biometrics/BiometricServiceBase$LockoutResetMonitor;
    iget-object v1, p0, Lcom/android/server/biometrics/BiometricServiceBase;->mLockoutMonitors:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_12

    .line 954
    iget-object v1, p0, Lcom/android/server/biometrics/BiometricServiceBase;->mLockoutMonitors:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 956
    :cond_12
    return-void
.end method

.method public synthetic lambda$authenticateInternal$2$BiometricServiceBase(JLcom/android/server/biometrics/BiometricServiceBase$AuthenticationClientImpl;Ljava/lang/String;)V
    .registers 12
    .param p1, "opId"  # J
    .param p3, "client"  # Lcom/android/server/biometrics/BiometricServiceBase$AuthenticationClientImpl;
    .param p4, "opPackageName"  # Ljava/lang/String;

    .line 858
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricServiceBase;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    invoke-virtual {p0}, Lcom/android/server/biometrics/BiometricServiceBase;->getConstants()Lcom/android/server/biometrics/Constants;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/server/biometrics/Constants;->tagAuthToken()Ljava/lang/String;

    move-result-object v1

    const-wide/16 v2, 0x0

    cmp-long v4, p1, v2

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v4, :cond_14

    move v4, v5

    goto :goto_15

    :cond_14
    move v4, v6

    :goto_15
    invoke-virtual {v0, v1, v4}, Lcom/android/internal/logging/MetricsLogger;->histogram(Ljava/lang/String;I)V

    .line 862
    cmp-long v0, p1, v2

    if-nez v0, :cond_1f

    iget-object v0, p0, Lcom/android/server/biometrics/BiometricServiceBase;->mPerformanceMap:Ljava/util/HashMap;

    goto :goto_21

    :cond_1f
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricServiceBase;->mCryptoPerformanceMap:Ljava/util/HashMap;

    .line 863
    .local v0, "pmap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lcom/android/server/biometrics/BiometricServiceBase$PerformanceStats;>;"
    :goto_21
    iget v1, p0, Lcom/android/server/biometrics/BiometricServiceBase;->mCurrentUserId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/biometrics/BiometricServiceBase$PerformanceStats;

    .line 864
    .local v1, "stats":Lcom/android/server/biometrics/BiometricServiceBase$PerformanceStats;
    if-nez v1, :cond_3e

    .line 865
    new-instance v4, Lcom/android/server/biometrics/BiometricServiceBase$PerformanceStats;

    invoke-direct {v4, p0}, Lcom/android/server/biometrics/BiometricServiceBase$PerformanceStats;-><init>(Lcom/android/server/biometrics/BiometricServiceBase;)V

    move-object v1, v4

    .line 866
    iget v4, p0, Lcom/android/server/biometrics/BiometricServiceBase;->mCurrentUserId:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 868
    :cond_3e
    iput-object v1, p0, Lcom/android/server/biometrics/BiometricServiceBase;->mPerformanceStats:Lcom/android/server/biometrics/BiometricServiceBase$PerformanceStats;

    .line 869
    cmp-long v2, p1, v2

    if-eqz v2, :cond_45

    goto :goto_46

    :cond_45
    move v5, v6

    :goto_46
    iput-boolean v5, p0, Lcom/android/server/biometrics/BiometricServiceBase;->mIsCrypto:Z

    .line 871
    invoke-direct {p0, p3, p4}, Lcom/android/server/biometrics/BiometricServiceBase;->startAuthentication(Lcom/android/server/biometrics/BiometricServiceBase$AuthenticationClientImpl;Ljava/lang/String;)V

    .line 872
    return-void
.end method

.method public synthetic lambda$cancelAuthenticationInternal$3$BiometricServiceBase(Landroid/os/IBinder;Z)V
    .registers 7
    .param p1, "token"  # Landroid/os/IBinder;
    .param p2, "fromClient"  # Z

    .line 896
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricServiceBase;->mCurrentClient:Lcom/android/server/biometrics/ClientMonitor;

    .line 897
    .local v0, "client":Lcom/android/server/biometrics/ClientMonitor;
    instance-of v1, v0, Lcom/android/server/biometrics/AuthenticationClient;

    if-eqz v1, :cond_65

    .line 898
    invoke-virtual {v0}, Lcom/android/server/biometrics/ClientMonitor;->getToken()Landroid/os/IBinder;

    move-result-object v1

    if-eq v1, p1, :cond_34

    if-nez p2, :cond_f

    goto :goto_34

    .line 905
    :cond_f
    invoke-virtual {p0}, Lcom/android/server/biometrics/BiometricServiceBase;->getTag()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can\'t stop client "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/android/server/biometrics/ClientMonitor;->getOwnerString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " since tokens don\'t match. fromClient: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_83

    .line 899
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

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 903
    invoke-virtual {v0}, Lcom/android/server/biometrics/ClientMonitor;->getToken()Landroid/os/IBinder;

    move-result-object v1

    if-ne v1, p1, :cond_60

    const/4 v1, 0x1

    goto :goto_61

    :cond_60
    const/4 v1, 0x0

    :goto_61
    invoke-virtual {v0, v1}, Lcom/android/server/biometrics/ClientMonitor;->stop(Z)I

    goto :goto_83

    .line 908
    :cond_65
    if-eqz v0, :cond_83

    .line 909
    invoke-virtual {p0}, Lcom/android/server/biometrics/BiometricServiceBase;->getTag()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can\'t cancel non-authenticating client "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 910
    invoke-virtual {v0}, Lcom/android/server/biometrics/ClientMonitor;->getOwnerString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 909
    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 912
    :cond_83
    :goto_83
    return-void
.end method

.method public synthetic lambda$cancelEnrollmentInternal$1$BiometricServiceBase(Landroid/os/IBinder;)V
    .registers 5
    .param p1, "token"  # Landroid/os/IBinder;

    .line 833
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricServiceBase;->mCurrentClient:Lcom/android/server/biometrics/ClientMonitor;

    .line 834
    .local v0, "client":Lcom/android/server/biometrics/ClientMonitor;
    instance-of v1, v0, Lcom/android/server/biometrics/EnrollClient;

    if-eqz v1, :cond_21

    invoke-virtual {v0}, Lcom/android/server/biometrics/ClientMonitor;->getToken()Landroid/os/IBinder;

    move-result-object v1

    if-ne v1, p1, :cond_21

    .line 835
    invoke-virtual {p0}, Lcom/android/server/biometrics/BiometricServiceBase;->getTag()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Cancelling enrollment"

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 836
    invoke-virtual {v0}, Lcom/android/server/biometrics/ClientMonitor;->getToken()Landroid/os/IBinder;

    move-result-object v1

    if-ne v1, p1, :cond_1d

    const/4 v1, 0x1

    goto :goto_1e

    :cond_1d
    const/4 v1, 0x0

    :goto_1e
    invoke-virtual {v0, v1}, Lcom/android/server/biometrics/ClientMonitor;->stop(Z)I

    .line 838
    :cond_21
    return-void
.end method

.method public synthetic lambda$enrollInternal$0$BiometricServiceBase(Lcom/android/server/biometrics/BiometricServiceBase$EnrollClientImpl;)V
    .registers 3
    .param p1, "client"  # Lcom/android/server/biometrics/BiometricServiceBase$EnrollClientImpl;

    .line 827
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/server/biometrics/BiometricServiceBase;->startClient(Lcom/android/server/biometrics/ClientMonitor;Z)V

    .line 828
    return-void
.end method

.method public synthetic lambda$enumerateInternal$5$BiometricServiceBase(Lcom/android/server/biometrics/EnumerateClient;)V
    .registers 3
    .param p1, "client"  # Lcom/android/server/biometrics/EnumerateClient;

    .line 928
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/server/biometrics/BiometricServiceBase;->startClient(Lcom/android/server/biometrics/ClientMonitor;Z)V

    .line 929
    return-void
.end method

.method public synthetic lambda$removeInternal$4$BiometricServiceBase(Lcom/android/server/biometrics/RemovalClient;)V
    .registers 3
    .param p1, "client"  # Lcom/android/server/biometrics/RemovalClient;

    .line 922
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/server/biometrics/BiometricServiceBase;->startClient(Lcom/android/server/biometrics/ClientMonitor;Z)V

    .line 923
    return-void
.end method

.method protected loadAuthenticatorIds()V
    .registers 9

    .line 1142
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 1143
    .local v0, "t":J
    iget-object v2, p0, Lcom/android/server/biometrics/BiometricServiceBase;->mAuthenticatorIds:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->clear()V

    .line 1144
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

    .line 1145
    .local v3, "user":Landroid/content/pm/UserInfo;
    iget v4, v3, Landroid/content/pm/UserInfo;->id:I

    const/4 v5, 0x0

    invoke-virtual {p0, v5, v4}, Lcom/android/server/biometrics/BiometricServiceBase;->getUserOrWorkProfileId(Ljava/lang/String;I)I

    move-result v4

    .line 1146
    .local v4, "userId":I
    iget-object v6, p0, Lcom/android/server/biometrics/BiometricServiceBase;->mAuthenticatorIds:Ljava/util/Map;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3c

    .line 1147
    invoke-virtual {p0, v4, v5}, Lcom/android/server/biometrics/BiometricServiceBase;->updateActiveGroup(ILjava/lang/String;)V

    .line 1149
    .end local v3  # "user":Landroid/content/pm/UserInfo;
    .end local v4  # "userId":I
    :cond_3c
    goto :goto_1a

    .line 1151
    :cond_3d
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    .line 1152
    .end local v0  # "t":J
    .local v2, "t":J
    const-wide/16 v0, 0x3e8

    cmp-long v0, v2, v0

    if-lez v0, :cond_67

    .line 1153
    invoke-virtual {p0}, Lcom/android/server/biometrics/BiometricServiceBase;->getTag()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "loadAuthenticatorIds() taking too long: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v4, "ms"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1155
    :cond_67
    return-void
.end method

.method protected notifyClientActiveCallbacks(Z)V
    .registers 2
    .param p1, "isActive"  # Z

    .line 207
    return-void
.end method

.method protected notifyLockoutResetMonitors()V
    .registers 3

    .line 1284
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lcom/android/server/biometrics/BiometricServiceBase;->mLockoutMonitors:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_17

    .line 1285
    iget-object v1, p0, Lcom/android/server/biometrics/BiometricServiceBase;->mLockoutMonitors:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/biometrics/BiometricServiceBase$LockoutResetMonitor;

    invoke-virtual {v1}, Lcom/android/server/biometrics/BiometricServiceBase$LockoutResetMonitor;->sendLockoutReset()V

    .line 1284
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1287
    .end local v0  # "i":I
    :cond_17
    return-void
.end method

.method public onStart()V
    .registers 1

    .line 656
    invoke-direct {p0}, Lcom/android/server/biometrics/BiometricServiceBase;->listenForUserSwitches()V

    .line 657
    return-void
.end method

.method protected removeClient(Lcom/android/server/biometrics/ClientMonitor;)V
    .registers 5
    .param p1, "client"  # Lcom/android/server/biometrics/ClientMonitor;

    .line 1118
    if-eqz p1, :cond_35

    .line 1119
    invoke-virtual {p1}, Lcom/android/server/biometrics/ClientMonitor;->destroy()V

    .line 1120
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricServiceBase;->mCurrentClient:Lcom/android/server/biometrics/ClientMonitor;

    if-eq p1, v0, :cond_35

    if-eqz v0, :cond_35

    .line 1121
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

    .line 1122
    invoke-virtual {v2}, Lcom/android/server/biometrics/ClientMonitor;->getOwnerString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1121
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1125
    :cond_35
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricServiceBase;->mCurrentClient:Lcom/android/server/biometrics/ClientMonitor;

    if-eqz v0, :cond_58

    .line 1126
    invoke-virtual {p0}, Lcom/android/server/biometrics/BiometricServiceBase;->getTag()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Done with client: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/server/biometrics/ClientMonitor;->getOwnerString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1127
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/biometrics/BiometricServiceBase;->mCurrentClient:Lcom/android/server/biometrics/ClientMonitor;

    .line 1131
    :cond_58
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/biometrics/BiometricServiceBase;->notifyClientActiveCallbacks(Z)V

    .line 1134
    return-void
.end method

.method protected removeInternal(Lcom/android/server/biometrics/RemovalClient;)V
    .registers 4
    .param p1, "client"  # Lcom/android/server/biometrics/RemovalClient;

    .line 921
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricServiceBase;->mHandler:Lcom/android/server/biometrics/BiometricServiceBase$H;

    new-instance v1, Lcom/android/server/biometrics/-$$Lambda$BiometricServiceBase$Ryp20xWMQfJ1Uis2FSiepWAsEHg;

    invoke-direct {v1, p0, p1}, Lcom/android/server/biometrics/-$$Lambda$BiometricServiceBase$Ryp20xWMQfJ1Uis2FSiepWAsEHg;-><init>(Lcom/android/server/biometrics/BiometricServiceBase;Lcom/android/server/biometrics/RemovalClient;)V

    invoke-virtual {v0, v1}, Lcom/android/server/biometrics/BiometricServiceBase$H;->post(Ljava/lang/Runnable;)Z

    .line 924
    return-void
.end method

.method public serviceDied(J)V
    .registers 7
    .param p1, "cookie"  # J

    .line 661
    invoke-virtual {p0}, Lcom/android/server/biometrics/BiometricServiceBase;->getTag()Ljava/lang/String;

    move-result-object v0

    const-string v1, "HAL died"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 662
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricServiceBase;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    invoke-virtual {p0}, Lcom/android/server/biometrics/BiometricServiceBase;->getConstants()Lcom/android/server/biometrics/Constants;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/server/biometrics/Constants;->tagHalDied()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/logging/MetricsLogger;->count(Ljava/lang/String;I)V

    .line 663
    iget v0, p0, Lcom/android/server/biometrics/BiometricServiceBase;->mHALDeathCount:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/android/server/biometrics/BiometricServiceBase;->mHALDeathCount:I

    .line 664
    const/16 v0, -0x2710

    iput v0, p0, Lcom/android/server/biometrics/BiometricServiceBase;->mCurrentUserId:I

    .line 665
    invoke-virtual {p0}, Lcom/android/server/biometrics/BiometricServiceBase;->getHalDeviceId()J

    move-result-wide v0

    const/4 v3, 0x0

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/server/biometrics/BiometricServiceBase;->handleError(JII)V

    .line 668
    invoke-virtual {p0}, Lcom/android/server/biometrics/BiometricServiceBase;->statsModality()I

    move-result v0

    const/16 v1, 0x94

    invoke-static {v1, v0, v2}, Landroid/util/StatsLog;->write(III)I

    .line 670
    return-void
.end method

.method protected setActiveUserInternal(I)V
    .registers 3
    .param p1, "userId"  # I

    .line 917
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/biometrics/BiometricServiceBase;->updateActiveGroup(ILjava/lang/String;)V

    .line 918
    return-void
.end method

.method protected startCurrentClient(I)V
    .registers 5
    .param p1, "cookie"  # I

    .line 1101
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricServiceBase;->mCurrentClient:Lcom/android/server/biometrics/ClientMonitor;

    if-nez v0, :cond_e

    .line 1102
    invoke-virtual {p0}, Lcom/android/server/biometrics/BiometricServiceBase;->getTag()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Trying to start null client!"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1103
    return-void

    .line 1105
    :cond_e
    invoke-virtual {p0}, Lcom/android/server/biometrics/BiometricServiceBase;->getTag()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "starting client "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/biometrics/BiometricServiceBase;->mCurrentClient:Lcom/android/server/biometrics/ClientMonitor;

    .line 1106
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

    .line 1107
    invoke-virtual {v2}, Lcom/android/server/biometrics/ClientMonitor;->getOwnerString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ") cookie: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/biometrics/BiometricServiceBase;->mCurrentClient:Lcom/android/server/biometrics/ClientMonitor;

    .line 1108
    invoke-virtual {v2}, Lcom/android/server/biometrics/ClientMonitor;->getCookie()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1105
    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1109
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricServiceBase;->mCurrentClient:Lcom/android/server/biometrics/ClientMonitor;

    invoke-virtual {v0}, Lcom/android/server/biometrics/ClientMonitor;->getCookie()I

    move-result v0

    if-eq p1, v0, :cond_6b

    .line 1110
    invoke-virtual {p0}, Lcom/android/server/biometrics/BiometricServiceBase;->getTag()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Mismatched cookie"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1111
    return-void

    .line 1113
    :cond_6b
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/biometrics/BiometricServiceBase;->notifyClientActiveCallbacks(Z)V

    .line 1114
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricServiceBase;->mCurrentClient:Lcom/android/server/biometrics/ClientMonitor;

    invoke-virtual {v0}, Lcom/android/server/biometrics/ClientMonitor;->start()I

    .line 1115
    return-void
.end method

.method protected abstract statsModality()I
.end method

.method protected abstract updateActiveGroup(ILjava/lang/String;)V
.end method
