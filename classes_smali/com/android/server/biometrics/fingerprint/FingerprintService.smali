.class public Lcom/android/server/biometrics/fingerprint/FingerprintService;
.super Lcom/android/server/biometrics/BiometricServiceBase;
.source "FingerprintService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/biometrics/fingerprint/FingerprintService$ServiceListenerImpl;,
        Lcom/android/server/biometrics/fingerprint/FingerprintService$BiometricPromptServiceListenerImpl;,
        Lcom/android/server/biometrics/fingerprint/FingerprintService$FingerprintServiceWrapper;,
        Lcom/android/server/biometrics/fingerprint/FingerprintService$FingerprintAuthClient;,
        Lcom/android/server/biometrics/fingerprint/FingerprintService$LockoutReceiver;,
        Lcom/android/server/biometrics/fingerprint/FingerprintService$ResetFailedAttemptsForUserRunnable;
    }
.end annotation


# static fields
.field private static final ACTION_LOCKOUT_RESET:Ljava/lang/String; = "com.android.server.biometrics.fingerprint.ACTION_LOCKOUT_RESET"

.field private static final DEBUG:Z = true

.field private static final FAIL_LOCKOUT_TIMEOUT_MS:J = 0xea60L

.field private static final FP_DATA_DIR:Ljava/lang/String; = "fpdata"

.field private static final KEY_LOCKOUT_RESET_USER:Ljava/lang/String; = "lockout_reset_user"

.field private static final MAX_FAILED_ATTEMPTS_LOCKOUT_PERMANENT:I = 0x14

.field private static final MAX_FAILED_ATTEMPTS_LOCKOUT_TIMED:I = 0x5

.field protected static final TAG:Ljava/lang/String; = "FingerprintService"


# instance fields
.field private final mAlarmManager:Landroid/app/AlarmManager;

.field private final mClientActiveCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Landroid/hardware/fingerprint/IFingerprintClientActiveCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mDaemon:Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "this"
        }
    .end annotation
.end field

.field private mDaemonCallback:Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprintClientCallback;

.field private final mDaemonWrapper:Lcom/android/server/biometrics/BiometricServiceBase$DaemonWrapper;

.field private final mFailedAttempts:Landroid/util/SparseIntArray;

.field private final mFingerprintConstants:Lcom/android/server/biometrics/fingerprint/FingerprintConstants;

.field private mFlymeFingerprintUtils:Lcom/android/server/biometrics/flymefingerprint/FlymeFingerprintUtils;

.field private final mIsUnderGlassFP:Z

.field private final mLockoutReceiver:Lcom/android/server/biometrics/fingerprint/FingerprintService$LockoutReceiver;

.field private mLockoutStartTime:J

.field protected final mResetFailedAttemptsForCurrentUserRunnable:Lcom/android/server/biometrics/fingerprint/FingerprintService$ResetFailedAttemptsForUserRunnable;

.field private final mTimedLockoutCleared:Landroid/util/SparseBooleanArray;

.field private mUnderglassFingerprintController:Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 6
    .param p1, "context"  # Landroid/content/Context;

    .line 883
    invoke-direct {p0, p1}, Lcom/android/server/biometrics/BiometricServiceBase;-><init>(Landroid/content/Context;)V

    .line 116
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService;->mLockoutStartTime:J

    .line 727
    new-instance v0, Lcom/android/server/biometrics/fingerprint/FingerprintConstants;

    invoke-direct {v0}, Lcom/android/server/biometrics/fingerprint/FingerprintConstants;-><init>()V

    iput-object v0, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService;->mFingerprintConstants:Lcom/android/server/biometrics/fingerprint/FingerprintConstants;

    .line 728
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService;->mClientActiveCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 736
    new-instance v0, Lcom/android/server/biometrics/fingerprint/FingerprintService$LockoutReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/biometrics/fingerprint/FingerprintService$LockoutReceiver;-><init>(Lcom/android/server/biometrics/fingerprint/FingerprintService;Lcom/android/server/biometrics/fingerprint/FingerprintService$1;)V

    iput-object v0, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService;->mLockoutReceiver:Lcom/android/server/biometrics/fingerprint/FingerprintService$LockoutReceiver;

    .line 737
    new-instance v0, Lcom/android/server/biometrics/fingerprint/FingerprintService$ResetFailedAttemptsForUserRunnable;

    invoke-direct {v0, p0, v1}, Lcom/android/server/biometrics/fingerprint/FingerprintService$ResetFailedAttemptsForUserRunnable;-><init>(Lcom/android/server/biometrics/fingerprint/FingerprintService;Lcom/android/server/biometrics/fingerprint/FingerprintService$1;)V

    iput-object v0, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService;->mResetFailedAttemptsForCurrentUserRunnable:Lcom/android/server/biometrics/fingerprint/FingerprintService$ResetFailedAttemptsForUserRunnable;

    .line 743
    new-instance v0, Lcom/android/server/biometrics/fingerprint/FingerprintService$1;

    invoke-direct {v0, p0}, Lcom/android/server/biometrics/fingerprint/FingerprintService$1;-><init>(Lcom/android/server/biometrics/fingerprint/FingerprintService;)V

    iput-object v0, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService;->mDaemonCallback:Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprintClientCallback;

    .line 822
    new-instance v0, Lcom/android/server/biometrics/fingerprint/FingerprintService$2;

    invoke-direct {v0, p0}, Lcom/android/server/biometrics/fingerprint/FingerprintService$2;-><init>(Lcom/android/server/biometrics/fingerprint/FingerprintService;)V

    iput-object v0, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService;->mDaemonWrapper:Lcom/android/server/biometrics/BiometricServiceBase$DaemonWrapper;

    .line 884
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService;->mTimedLockoutCleared:Landroid/util/SparseBooleanArray;

    .line 885
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService;->mFailedAttempts:Landroid/util/SparseIntArray;

    .line 886
    const-class v0, Landroid/app/AlarmManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    iput-object v0, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService;->mAlarmManager:Landroid/app/AlarmManager;

    .line 887
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService;->mLockoutReceiver:Lcom/android/server/biometrics/fingerprint/FingerprintService$LockoutReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    invoke-virtual {p0}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->getLockoutResetIntent()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 888
    invoke-virtual {p0}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->getLockoutBroadcastPermission()Ljava/lang/String;

    move-result-object v3

    .line 887
    invoke-virtual {p1, v0, v2, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 891
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService;->mIsUnderGlassFP:Z

    .line 892
    invoke-static {p1}, Lcom/android/server/biometrics/flymefingerprint/FlymeFingerprintUtils;->getInstance(Landroid/content/Context;)Lcom/android/server/biometrics/flymefingerprint/FlymeFingerprintUtils;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService;->mFlymeFingerprintUtils:Lcom/android/server/biometrics/flymefingerprint/FlymeFingerprintUtils;

    .line 893
    iget-boolean v0, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService;->mIsUnderGlassFP:Z

    if-eqz v0, :cond_70

    .line 894
    new-instance v0, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;

    invoke-direct {v0, p1}, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService;->mUnderglassFingerprintController:Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;

    .line 897
    :cond_70
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/biometrics/fingerprint/FingerprintService;ZI)V
    .registers 3
    .param p0, "x0"  # Lcom/android/server/biometrics/fingerprint/FingerprintService;
    .param p1, "x1"  # Z
    .param p2, "x2"  # I

    .line 101
    invoke-direct {p0, p1, p2}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->resetFailedAttemptsForUser(ZI)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/biometrics/fingerprint/FingerprintService;)Landroid/util/SparseIntArray;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/biometrics/fingerprint/FingerprintService;

    .line 101
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService;->mFailedAttempts:Landroid/util/SparseIntArray;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/server/biometrics/fingerprint/FingerprintService;)Lcom/android/server/biometrics/BiometricServiceBase$DaemonWrapper;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/biometrics/fingerprint/FingerprintService;

    .line 101
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService;->mDaemonWrapper:Lcom/android/server/biometrics/BiometricServiceBase$DaemonWrapper;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/server/biometrics/fingerprint/FingerprintService;)J
    .registers 3
    .param p0, "x0"  # Lcom/android/server/biometrics/fingerprint/FingerprintService;

    .line 101
    iget-wide v0, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService;->mHalDeviceId:J

    return-wide v0
.end method

.method static synthetic access$1200(Lcom/android/server/biometrics/fingerprint/FingerprintService;)I
    .registers 2
    .param p0, "x0"  # Lcom/android/server/biometrics/fingerprint/FingerprintService;

    .line 101
    iget v0, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService;->mCurrentUserId:I

    return v0
.end method

.method static synthetic access$1300(Lcom/android/server/biometrics/fingerprint/FingerprintService;Lcom/android/server/biometrics/BiometricServiceBase$EnrollClientImpl;I)V
    .registers 3
    .param p0, "x0"  # Lcom/android/server/biometrics/fingerprint/FingerprintService;
    .param p1, "x1"  # Lcom/android/server/biometrics/BiometricServiceBase$EnrollClientImpl;
    .param p2, "x2"  # I

    .line 101
    invoke-virtual {p0, p1, p2}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->enrollInternal(Lcom/android/server/biometrics/BiometricServiceBase$EnrollClientImpl;I)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/server/biometrics/fingerprint/FingerprintService;Ljava/lang/String;)V
    .registers 2
    .param p0, "x0"  # Lcom/android/server/biometrics/fingerprint/FingerprintService;
    .param p1, "x1"  # Ljava/lang/String;

    .line 101
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->checkPermission(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/server/biometrics/fingerprint/FingerprintService;Landroid/os/IBinder;)V
    .registers 2
    .param p0, "x0"  # Lcom/android/server/biometrics/fingerprint/FingerprintService;
    .param p1, "x1"  # Landroid/os/IBinder;

    .line 101
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->cancelEnrollmentInternal(Landroid/os/IBinder;)V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/server/biometrics/fingerprint/FingerprintService;)Lcom/android/server/biometrics/flymefingerprint/FlymeFingerprintUtils;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/biometrics/fingerprint/FingerprintService;

    .line 101
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService;->mFlymeFingerprintUtils:Lcom/android/server/biometrics/flymefingerprint/FlymeFingerprintUtils;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/server/biometrics/fingerprint/FingerprintService;)Z
    .registers 2
    .param p0, "x0"  # Lcom/android/server/biometrics/fingerprint/FingerprintService;

    .line 101
    invoke-virtual {p0}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->isRestricted()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1800(Lcom/android/server/biometrics/fingerprint/FingerprintService;)J
    .registers 3
    .param p0, "x0"  # Lcom/android/server/biometrics/fingerprint/FingerprintService;

    .line 101
    iget-wide v0, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService;->mHalDeviceId:J

    return-wide v0
.end method

.method static synthetic access$1900(Lcom/android/server/biometrics/fingerprint/FingerprintService;)I
    .registers 2
    .param p0, "x0"  # Lcom/android/server/biometrics/fingerprint/FingerprintService;

    .line 101
    iget v0, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService;->mCurrentUserId:I

    return v0
.end method

.method static synthetic access$200(Lcom/android/server/biometrics/fingerprint/FingerprintService;)Landroid/util/SparseBooleanArray;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/biometrics/fingerprint/FingerprintService;

    .line 101
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService;->mTimedLockoutCleared:Landroid/util/SparseBooleanArray;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/server/biometrics/fingerprint/FingerprintService;Lcom/android/server/biometrics/BiometricServiceBase$AuthenticationClientImpl;JLjava/lang/String;)V
    .registers 5
    .param p0, "x0"  # Lcom/android/server/biometrics/fingerprint/FingerprintService;
    .param p1, "x1"  # Lcom/android/server/biometrics/BiometricServiceBase$AuthenticationClientImpl;
    .param p2, "x2"  # J
    .param p4, "x3"  # Ljava/lang/String;

    .line 101
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->authenticateInternal(Lcom/android/server/biometrics/BiometricServiceBase$AuthenticationClientImpl;JLjava/lang/String;)V

    return-void
.end method

.method static synthetic access$2100(Lcom/android/server/biometrics/fingerprint/FingerprintService;Ljava/lang/String;)V
    .registers 2
    .param p0, "x0"  # Lcom/android/server/biometrics/fingerprint/FingerprintService;
    .param p1, "x1"  # Ljava/lang/String;

    .line 101
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->checkPermission(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2200(Lcom/android/server/biometrics/fingerprint/FingerprintService;)J
    .registers 3
    .param p0, "x0"  # Lcom/android/server/biometrics/fingerprint/FingerprintService;

    .line 101
    iget-wide v0, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService;->mHalDeviceId:J

    return-wide v0
.end method

.method static synthetic access$2300(Lcom/android/server/biometrics/fingerprint/FingerprintService;)I
    .registers 2
    .param p0, "x0"  # Lcom/android/server/biometrics/fingerprint/FingerprintService;

    .line 101
    iget v0, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService;->mCurrentUserId:I

    return v0
.end method

.method static synthetic access$2400(Lcom/android/server/biometrics/fingerprint/FingerprintService;Lcom/android/server/biometrics/BiometricServiceBase$AuthenticationClientImpl;JLjava/lang/String;III)V
    .registers 8
    .param p0, "x0"  # Lcom/android/server/biometrics/fingerprint/FingerprintService;
    .param p1, "x1"  # Lcom/android/server/biometrics/BiometricServiceBase$AuthenticationClientImpl;
    .param p2, "x2"  # J
    .param p4, "x3"  # Ljava/lang/String;
    .param p5, "x4"  # I
    .param p6, "x5"  # I
    .param p7, "x6"  # I

    .line 101
    invoke-virtual/range {p0 .. p7}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->authenticateInternal(Lcom/android/server/biometrics/BiometricServiceBase$AuthenticationClientImpl;JLjava/lang/String;III)V

    return-void
.end method

.method static synthetic access$2500(Lcom/android/server/biometrics/fingerprint/FingerprintService;Ljava/lang/String;)V
    .registers 2
    .param p0, "x0"  # Lcom/android/server/biometrics/fingerprint/FingerprintService;
    .param p1, "x1"  # Ljava/lang/String;

    .line 101
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->checkPermission(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2600(Lcom/android/server/biometrics/fingerprint/FingerprintService;I)V
    .registers 2
    .param p0, "x0"  # Lcom/android/server/biometrics/fingerprint/FingerprintService;
    .param p1, "x1"  # I

    .line 101
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->startCurrentClient(I)V

    return-void
.end method

.method static synthetic access$2700(Lcom/android/server/biometrics/fingerprint/FingerprintService;Landroid/os/IBinder;Ljava/lang/String;)V
    .registers 3
    .param p0, "x0"  # Lcom/android/server/biometrics/fingerprint/FingerprintService;
    .param p1, "x1"  # Landroid/os/IBinder;
    .param p2, "x2"  # Ljava/lang/String;

    .line 101
    invoke-virtual {p0, p1, p2}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->cancelAuthenticationInternal(Landroid/os/IBinder;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2800(Lcom/android/server/biometrics/fingerprint/FingerprintService;Ljava/lang/String;)V
    .registers 2
    .param p0, "x0"  # Lcom/android/server/biometrics/fingerprint/FingerprintService;
    .param p1, "x1"  # Ljava/lang/String;

    .line 101
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->checkPermission(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2900(Lcom/android/server/biometrics/fingerprint/FingerprintService;Landroid/os/IBinder;Ljava/lang/String;IIIZ)V
    .registers 7
    .param p0, "x0"  # Lcom/android/server/biometrics/fingerprint/FingerprintService;
    .param p1, "x1"  # Landroid/os/IBinder;
    .param p2, "x2"  # Ljava/lang/String;
    .param p3, "x3"  # I
    .param p4, "x4"  # I
    .param p5, "x5"  # I
    .param p6, "x6"  # Z

    .line 101
    invoke-virtual/range {p0 .. p6}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->cancelAuthenticationInternal(Landroid/os/IBinder;Ljava/lang/String;IIIZ)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/biometrics/fingerprint/FingerprintService;I)V
    .registers 2
    .param p0, "x0"  # Lcom/android/server/biometrics/fingerprint/FingerprintService;
    .param p1, "x1"  # I

    .line 101
    invoke-direct {p0, p1}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->scheduleLockoutResetForUser(I)V

    return-void
.end method

.method static synthetic access$3000(Lcom/android/server/biometrics/fingerprint/FingerprintService;Ljava/lang/String;)V
    .registers 2
    .param p0, "x0"  # Lcom/android/server/biometrics/fingerprint/FingerprintService;
    .param p1, "x1"  # Ljava/lang/String;

    .line 101
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->checkPermission(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3100(Lcom/android/server/biometrics/fingerprint/FingerprintService;I)V
    .registers 2
    .param p0, "x0"  # Lcom/android/server/biometrics/fingerprint/FingerprintService;
    .param p1, "x1"  # I

    .line 101
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->setActiveUserInternal(I)V

    return-void
.end method

.method static synthetic access$3200(Lcom/android/server/biometrics/fingerprint/FingerprintService;Ljava/lang/String;)V
    .registers 2
    .param p0, "x0"  # Lcom/android/server/biometrics/fingerprint/FingerprintService;
    .param p1, "x1"  # Ljava/lang/String;

    .line 101
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->checkPermission(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3300(Lcom/android/server/biometrics/fingerprint/FingerprintService;)Z
    .registers 2
    .param p0, "x0"  # Lcom/android/server/biometrics/fingerprint/FingerprintService;

    .line 101
    invoke-virtual {p0}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->isRestricted()Z

    move-result v0

    return v0
.end method

.method static synthetic access$3400(Lcom/android/server/biometrics/fingerprint/FingerprintService;)J
    .registers 3
    .param p0, "x0"  # Lcom/android/server/biometrics/fingerprint/FingerprintService;

    .line 101
    iget-wide v0, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService;->mHalDeviceId:J

    return-wide v0
.end method

.method static synthetic access$3500(Lcom/android/server/biometrics/fingerprint/FingerprintService;Lcom/android/server/biometrics/RemovalClient;)V
    .registers 2
    .param p0, "x0"  # Lcom/android/server/biometrics/fingerprint/FingerprintService;
    .param p1, "x1"  # Lcom/android/server/biometrics/RemovalClient;

    .line 101
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->removeInternal(Lcom/android/server/biometrics/RemovalClient;)V

    return-void
.end method

.method static synthetic access$3600(Lcom/android/server/biometrics/fingerprint/FingerprintService;Ljava/lang/String;)V
    .registers 2
    .param p0, "x0"  # Lcom/android/server/biometrics/fingerprint/FingerprintService;
    .param p1, "x1"  # Ljava/lang/String;

    .line 101
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->checkPermission(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3700(Lcom/android/server/biometrics/fingerprint/FingerprintService;)Z
    .registers 2
    .param p0, "x0"  # Lcom/android/server/biometrics/fingerprint/FingerprintService;

    .line 101
    invoke-virtual {p0}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->isRestricted()Z

    move-result v0

    return v0
.end method

.method static synthetic access$3800(Lcom/android/server/biometrics/fingerprint/FingerprintService;)J
    .registers 3
    .param p0, "x0"  # Lcom/android/server/biometrics/fingerprint/FingerprintService;

    .line 101
    iget-wide v0, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService;->mHalDeviceId:J

    return-wide v0
.end method

.method static synthetic access$3900(Lcom/android/server/biometrics/fingerprint/FingerprintService;Lcom/android/server/biometrics/EnumerateClient;)V
    .registers 2
    .param p0, "x0"  # Lcom/android/server/biometrics/fingerprint/FingerprintService;
    .param p1, "x1"  # Lcom/android/server/biometrics/EnumerateClient;

    .line 101
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->enumerateInternal(Lcom/android/server/biometrics/EnumerateClient;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/biometrics/fingerprint/FingerprintService;Ljava/lang/String;)V
    .registers 2
    .param p0, "x0"  # Lcom/android/server/biometrics/fingerprint/FingerprintService;
    .param p1, "x1"  # Ljava/lang/String;

    .line 101
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->checkPermission(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$4001(Lcom/android/server/biometrics/fingerprint/FingerprintService;Landroid/hardware/biometrics/IBiometricServiceLockoutResetCallback;)V
    .registers 2
    .param p0, "x0"  # Lcom/android/server/biometrics/fingerprint/FingerprintService;
    .param p1, "x1"  # Landroid/hardware/biometrics/IBiometricServiceLockoutResetCallback;

    .line 101
    invoke-super {p0, p1}, Lcom/android/server/biometrics/BiometricServiceBase;->addLockoutResetCallback(Landroid/hardware/biometrics/IBiometricServiceLockoutResetCallback;)V

    return-void
.end method

.method static synthetic access$4100(Lcom/android/server/biometrics/fingerprint/FingerprintService;Ljava/io/FileDescriptor;)V
    .registers 2
    .param p0, "x0"  # Lcom/android/server/biometrics/fingerprint/FingerprintService;
    .param p1, "x1"  # Ljava/io/FileDescriptor;

    .line 101
    invoke-direct {p0, p1}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->dumpProto(Ljava/io/FileDescriptor;)V

    return-void
.end method

.method static synthetic access$4200(Lcom/android/server/biometrics/fingerprint/FingerprintService;Ljava/io/PrintWriter;)V
    .registers 2
    .param p0, "x0"  # Lcom/android/server/biometrics/fingerprint/FingerprintService;
    .param p1, "x1"  # Ljava/io/PrintWriter;

    .line 101
    invoke-direct {p0, p1}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->dumpInternal(Ljava/io/PrintWriter;)V

    return-void
.end method

.method static synthetic access$4300(Lcom/android/server/biometrics/fingerprint/FingerprintService;Ljava/lang/String;ZIII)Z
    .registers 7
    .param p0, "x0"  # Lcom/android/server/biometrics/fingerprint/FingerprintService;
    .param p1, "x1"  # Ljava/lang/String;
    .param p2, "x2"  # Z
    .param p3, "x3"  # I
    .param p4, "x4"  # I
    .param p5, "x5"  # I

    .line 101
    invoke-virtual/range {p0 .. p5}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->canUseBiometric(Ljava/lang/String;ZIII)Z

    move-result v0

    return v0
.end method

.method static synthetic access$4400(Lcom/android/server/biometrics/fingerprint/FingerprintService;)Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/biometrics/fingerprint/FingerprintService;

    .line 101
    invoke-direct {p0}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->getFingerprintDaemon()Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$4500(Lcom/android/server/biometrics/fingerprint/FingerprintService;)J
    .registers 3
    .param p0, "x0"  # Lcom/android/server/biometrics/fingerprint/FingerprintService;

    .line 101
    iget-wide v0, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService;->mHalDeviceId:J

    return-wide v0
.end method

.method static synthetic access$4600(Lcom/android/server/biometrics/fingerprint/FingerprintService;Ljava/lang/String;)V
    .registers 2
    .param p0, "x0"  # Lcom/android/server/biometrics/fingerprint/FingerprintService;
    .param p1, "x1"  # Ljava/lang/String;

    .line 101
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->checkPermission(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$4700(Lcom/android/server/biometrics/fingerprint/FingerprintService;I)Z
    .registers 3
    .param p0, "x0"  # Lcom/android/server/biometrics/fingerprint/FingerprintService;
    .param p1, "x1"  # I

    .line 101
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->isCurrentUserOrProfile(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$4800(Lcom/android/server/biometrics/fingerprint/FingerprintService;)Lcom/android/server/biometrics/BiometricServiceBase$H;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/biometrics/fingerprint/FingerprintService;

    .line 101
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService;->mHandler:Lcom/android/server/biometrics/BiometricServiceBase$H;

    return-object v0
.end method

.method static synthetic access$4900(Lcom/android/server/biometrics/fingerprint/FingerprintService;Ljava/lang/String;ZIII)Z
    .registers 7
    .param p0, "x0"  # Lcom/android/server/biometrics/fingerprint/FingerprintService;
    .param p1, "x1"  # Ljava/lang/String;
    .param p2, "x2"  # Z
    .param p3, "x3"  # I
    .param p4, "x4"  # I
    .param p5, "x5"  # I

    .line 101
    invoke-virtual/range {p0 .. p5}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->canUseBiometric(Ljava/lang/String;ZIII)Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/android/server/biometrics/fingerprint/FingerprintService;Landroid/os/IBinder;)J
    .registers 4
    .param p0, "x0"  # Lcom/android/server/biometrics/fingerprint/FingerprintService;
    .param p1, "x1"  # Landroid/os/IBinder;

    .line 101
    invoke-direct {p0, p1}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->startPreEnroll(Landroid/os/IBinder;)J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$5000(Lcom/android/server/biometrics/fingerprint/FingerprintService;Ljava/lang/String;ZIII)Z
    .registers 7
    .param p0, "x0"  # Lcom/android/server/biometrics/fingerprint/FingerprintService;
    .param p1, "x1"  # Ljava/lang/String;
    .param p2, "x2"  # Z
    .param p3, "x3"  # I
    .param p4, "x4"  # I
    .param p5, "x5"  # I

    .line 101
    invoke-virtual/range {p0 .. p5}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->canUseBiometric(Ljava/lang/String;ZIII)Z

    move-result v0

    return v0
.end method

.method static synthetic access$5101(Lcom/android/server/biometrics/fingerprint/FingerprintService;Ljava/lang/String;)J
    .registers 4
    .param p0, "x0"  # Lcom/android/server/biometrics/fingerprint/FingerprintService;
    .param p1, "x1"  # Ljava/lang/String;

    .line 101
    invoke-super {p0, p1}, Lcom/android/server/biometrics/BiometricServiceBase;->getAuthenticatorId(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$5200(Lcom/android/server/biometrics/fingerprint/FingerprintService;Ljava/lang/String;)V
    .registers 2
    .param p0, "x0"  # Lcom/android/server/biometrics/fingerprint/FingerprintService;
    .param p1, "x1"  # Ljava/lang/String;

    .line 101
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->checkPermission(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$5300(Lcom/android/server/biometrics/fingerprint/FingerprintService;)I
    .registers 2
    .param p0, "x0"  # Lcom/android/server/biometrics/fingerprint/FingerprintService;

    .line 101
    iget v0, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService;->mCurrentUserId:I

    return v0
.end method

.method static synthetic access$5400(Lcom/android/server/biometrics/fingerprint/FingerprintService;)Lcom/android/server/biometrics/BiometricServiceBase$H;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/biometrics/fingerprint/FingerprintService;

    .line 101
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService;->mHandler:Lcom/android/server/biometrics/BiometricServiceBase$H;

    return-object v0
.end method

.method static synthetic access$5500(Lcom/android/server/biometrics/fingerprint/FingerprintService;Ljava/lang/String;)V
    .registers 2
    .param p0, "x0"  # Lcom/android/server/biometrics/fingerprint/FingerprintService;
    .param p1, "x1"  # Ljava/lang/String;

    .line 101
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->checkPermission(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$5600(Lcom/android/server/biometrics/fingerprint/FingerprintService;)Lcom/android/server/biometrics/ClientMonitor;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/biometrics/fingerprint/FingerprintService;

    .line 101
    invoke-virtual {p0}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->getCurrentClient()Lcom/android/server/biometrics/ClientMonitor;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$5700(Lcom/android/server/biometrics/fingerprint/FingerprintService;)Lcom/android/server/biometrics/ClientMonitor;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/biometrics/fingerprint/FingerprintService;

    .line 101
    invoke-virtual {p0}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->getPendingClient()Lcom/android/server/biometrics/ClientMonitor;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$5800(Lcom/android/server/biometrics/fingerprint/FingerprintService;Ljava/lang/String;)V
    .registers 2
    .param p0, "x0"  # Lcom/android/server/biometrics/fingerprint/FingerprintService;
    .param p1, "x1"  # Ljava/lang/String;

    .line 101
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->checkPermission(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$5900(Lcom/android/server/biometrics/fingerprint/FingerprintService;)Ljava/util/concurrent/CopyOnWriteArrayList;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/biometrics/fingerprint/FingerprintService;

    .line 101
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService;->mClientActiveCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/biometrics/fingerprint/FingerprintService;Ljava/lang/String;)V
    .registers 2
    .param p0, "x0"  # Lcom/android/server/biometrics/fingerprint/FingerprintService;
    .param p1, "x1"  # Ljava/lang/String;

    .line 101
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->checkPermission(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$6000(Lcom/android/server/biometrics/fingerprint/FingerprintService;Ljava/lang/String;)V
    .registers 2
    .param p0, "x0"  # Lcom/android/server/biometrics/fingerprint/FingerprintService;
    .param p1, "x1"  # Ljava/lang/String;

    .line 101
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->checkPermission(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$6100(Lcom/android/server/biometrics/fingerprint/FingerprintService;)J
    .registers 3
    .param p0, "x0"  # Lcom/android/server/biometrics/fingerprint/FingerprintService;

    .line 101
    iget-wide v0, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService;->mLockoutStartTime:J

    return-wide v0
.end method

.method static synthetic access$6200(Lcom/android/server/biometrics/fingerprint/FingerprintService;)I
    .registers 2
    .param p0, "x0"  # Lcom/android/server/biometrics/fingerprint/FingerprintService;

    .line 101
    iget v0, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService;->mCurrentUserId:I

    return v0
.end method

.method static synthetic access$6300(Lcom/android/server/biometrics/fingerprint/FingerprintService;)Lcom/android/server/biometrics/BiometricServiceBase$H;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/biometrics/fingerprint/FingerprintService;

    .line 101
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService;->mHandler:Lcom/android/server/biometrics/BiometricServiceBase$H;

    return-object v0
.end method

.method static synthetic access$6400(Lcom/android/server/biometrics/fingerprint/FingerprintService;Ljava/lang/String;)V
    .registers 2
    .param p0, "x0"  # Lcom/android/server/biometrics/fingerprint/FingerprintService;
    .param p1, "x1"  # Ljava/lang/String;

    .line 101
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->checkPermission(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$6500(Lcom/android/server/biometrics/fingerprint/FingerprintService;Ljava/lang/String;)V
    .registers 2
    .param p0, "x0"  # Lcom/android/server/biometrics/fingerprint/FingerprintService;
    .param p1, "x1"  # Ljava/lang/String;

    .line 101
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->checkPermission(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$6600(Lcom/android/server/biometrics/fingerprint/FingerprintService;)Z
    .registers 2
    .param p0, "x0"  # Lcom/android/server/biometrics/fingerprint/FingerprintService;

    .line 101
    iget-boolean v0, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService;->mIsUnderGlassFP:Z

    return v0
.end method

.method static synthetic access$6700(Lcom/android/server/biometrics/fingerprint/FingerprintService;)Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/biometrics/fingerprint/FingerprintService;

    .line 101
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService;->mUnderglassFingerprintController:Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;

    return-object v0
.end method

.method static synthetic access$6800(Lcom/android/server/biometrics/fingerprint/FingerprintService;Ljava/lang/String;)V
    .registers 2
    .param p0, "x0"  # Lcom/android/server/biometrics/fingerprint/FingerprintService;
    .param p1, "x1"  # Ljava/lang/String;

    .line 101
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->checkPermission(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$6900(Lcom/android/server/biometrics/fingerprint/FingerprintService;Ljava/lang/String;)V
    .registers 2
    .param p0, "x0"  # Lcom/android/server/biometrics/fingerprint/FingerprintService;
    .param p1, "x1"  # Ljava/lang/String;

    .line 101
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->checkPermission(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/server/biometrics/fingerprint/FingerprintService;Landroid/os/IBinder;)I
    .registers 3
    .param p0, "x0"  # Lcom/android/server/biometrics/fingerprint/FingerprintService;
    .param p1, "x1"  # Landroid/os/IBinder;

    .line 101
    invoke-direct {p0, p1}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->startPostEnroll(Landroid/os/IBinder;)I

    move-result v0

    return v0
.end method

.method static synthetic access$7000(Lcom/android/server/biometrics/fingerprint/FingerprintService;Ljava/lang/String;)V
    .registers 2
    .param p0, "x0"  # Lcom/android/server/biometrics/fingerprint/FingerprintService;
    .param p1, "x1"  # Ljava/lang/String;

    .line 101
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->checkPermission(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$7100(Lcom/android/server/biometrics/fingerprint/FingerprintService;Ljava/lang/String;)V
    .registers 2
    .param p0, "x0"  # Lcom/android/server/biometrics/fingerprint/FingerprintService;
    .param p1, "x1"  # Ljava/lang/String;

    .line 101
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->checkPermission(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$7200(Lcom/android/server/biometrics/fingerprint/FingerprintService;)Lcom/android/server/biometrics/ClientMonitor;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/biometrics/fingerprint/FingerprintService;

    .line 101
    invoke-virtual {p0}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->getCurrentClient()Lcom/android/server/biometrics/ClientMonitor;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$7300(Lcom/android/server/biometrics/fingerprint/FingerprintService;Ljava/lang/String;)V
    .registers 2
    .param p0, "x0"  # Lcom/android/server/biometrics/fingerprint/FingerprintService;
    .param p1, "x1"  # Ljava/lang/String;

    .line 101
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->checkPermission(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$7400(Lcom/android/server/biometrics/fingerprint/FingerprintService;Ljava/lang/String;)V
    .registers 2
    .param p0, "x0"  # Lcom/android/server/biometrics/fingerprint/FingerprintService;
    .param p1, "x1"  # Ljava/lang/String;

    .line 101
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->checkPermission(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$7700(Lcom/android/server/biometrics/fingerprint/FingerprintService;)Lcom/android/server/biometrics/BiometricServiceBase$H;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/biometrics/fingerprint/FingerprintService;

    .line 101
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService;->mHandler:Lcom/android/server/biometrics/BiometricServiceBase$H;

    return-object v0
.end method

.method static synthetic access$7800(Lcom/android/server/biometrics/fingerprint/FingerprintService;)Lcom/android/server/biometrics/BiometricServiceBase$H;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/biometrics/fingerprint/FingerprintService;

    .line 101
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService;->mHandler:Lcom/android/server/biometrics/BiometricServiceBase$H;

    return-object v0
.end method

.method static synthetic access$7900(Lcom/android/server/biometrics/fingerprint/FingerprintService;)Lcom/android/server/biometrics/BiometricServiceBase$H;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/biometrics/fingerprint/FingerprintService;

    .line 101
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService;->mHandler:Lcom/android/server/biometrics/BiometricServiceBase$H;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/server/biometrics/fingerprint/FingerprintService;Ljava/lang/String;)V
    .registers 2
    .param p0, "x0"  # Lcom/android/server/biometrics/fingerprint/FingerprintService;
    .param p1, "x1"  # Ljava/lang/String;

    .line 101
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->checkPermission(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$8000(Lcom/android/server/biometrics/fingerprint/FingerprintService;)Lcom/android/server/biometrics/BiometricServiceBase$H;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/biometrics/fingerprint/FingerprintService;

    .line 101
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService;->mHandler:Lcom/android/server/biometrics/BiometricServiceBase$H;

    return-object v0
.end method

.method static synthetic access$8100(Lcom/android/server/biometrics/fingerprint/FingerprintService;)Lcom/android/server/biometrics/BiometricServiceBase$H;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/biometrics/fingerprint/FingerprintService;

    .line 101
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService;->mHandler:Lcom/android/server/biometrics/BiometricServiceBase$H;

    return-object v0
.end method

.method static synthetic access$8200(Lcom/android/server/biometrics/fingerprint/FingerprintService;)Lcom/android/server/biometrics/BiometricServiceBase$H;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/biometrics/fingerprint/FingerprintService;

    .line 101
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService;->mHandler:Lcom/android/server/biometrics/BiometricServiceBase$H;

    return-object v0
.end method

.method static synthetic access$8301(Lcom/android/server/biometrics/fingerprint/FingerprintService;Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;I)V
    .registers 3
    .param p0, "x0"  # Lcom/android/server/biometrics/fingerprint/FingerprintService;
    .param p1, "x1"  # Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;
    .param p2, "x2"  # I

    .line 101
    invoke-super {p0, p1, p2}, Lcom/android/server/biometrics/BiometricServiceBase;->handleEnumerate(Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;I)V

    return-void
.end method

.method static synthetic access$8400(Lcom/android/server/biometrics/fingerprint/FingerprintService;)Lcom/android/server/biometrics/ClientMonitor;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/biometrics/fingerprint/FingerprintService;

    .line 101
    invoke-virtual {p0}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->getCurrentClient()Lcom/android/server/biometrics/ClientMonitor;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$8501(Lcom/android/server/biometrics/fingerprint/FingerprintService;Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;I)V
    .registers 3
    .param p0, "x0"  # Lcom/android/server/biometrics/fingerprint/FingerprintService;
    .param p1, "x1"  # Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;
    .param p2, "x2"  # I

    .line 101
    invoke-super {p0, p1, p2}, Lcom/android/server/biometrics/BiometricServiceBase;->handleRemoved(Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;I)V

    return-void
.end method

.method static synthetic access$8601(Lcom/android/server/biometrics/fingerprint/FingerprintService;JII)V
    .registers 5
    .param p0, "x0"  # Lcom/android/server/biometrics/fingerprint/FingerprintService;
    .param p1, "x1"  # J
    .param p3, "x2"  # I
    .param p4, "x3"  # I

    .line 101
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/server/biometrics/BiometricServiceBase;->handleError(JII)V

    return-void
.end method

.method static synthetic access$8702(Lcom/android/server/biometrics/fingerprint/FingerprintService;Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;)Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/biometrics/fingerprint/FingerprintService;
    .param p1, "x1"  # Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;

    .line 101
    iput-object p1, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService;->mDaemon:Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;

    return-object p1
.end method

.method static synthetic access$8802(Lcom/android/server/biometrics/fingerprint/FingerprintService;J)J
    .registers 3
    .param p0, "x0"  # Lcom/android/server/biometrics/fingerprint/FingerprintService;
    .param p1, "x1"  # J

    .line 101
    iput-wide p1, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService;->mHalDeviceId:J

    return-wide p1
.end method

.method static synthetic access$8902(Lcom/android/server/biometrics/fingerprint/FingerprintService;I)I
    .registers 2
    .param p0, "x0"  # Lcom/android/server/biometrics/fingerprint/FingerprintService;
    .param p1, "x1"  # I

    .line 101
    iput p1, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService;->mCurrentUserId:I

    return p1
.end method

.method static synthetic access$900(Lcom/android/server/biometrics/fingerprint/FingerprintService;)Z
    .registers 2
    .param p0, "x0"  # Lcom/android/server/biometrics/fingerprint/FingerprintService;

    .line 101
    invoke-virtual {p0}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->isRestricted()Z

    move-result v0

    return v0
.end method

.method static synthetic access$9001(Lcom/android/server/biometrics/fingerprint/FingerprintService;Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;Ljava/util/ArrayList;)V
    .registers 3
    .param p0, "x0"  # Lcom/android/server/biometrics/fingerprint/FingerprintService;
    .param p1, "x1"  # Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;
    .param p2, "x2"  # Ljava/util/ArrayList;

    .line 101
    invoke-super {p0, p1, p2}, Lcom/android/server/biometrics/BiometricServiceBase;->handleAuthenticated(Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;Ljava/util/ArrayList;)V

    return-void
.end method

.method static synthetic access$9101(Lcom/android/server/biometrics/fingerprint/FingerprintService;JII)V
    .registers 5
    .param p0, "x0"  # Lcom/android/server/biometrics/fingerprint/FingerprintService;
    .param p1, "x1"  # J
    .param p3, "x2"  # I
    .param p4, "x3"  # I

    .line 101
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/server/biometrics/BiometricServiceBase;->handleAcquired(JII)V

    return-void
.end method

.method static synthetic access$9201(Lcom/android/server/biometrics/fingerprint/FingerprintService;Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;I)V
    .registers 3
    .param p0, "x0"  # Lcom/android/server/biometrics/fingerprint/FingerprintService;
    .param p1, "x1"  # Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;
    .param p2, "x2"  # I

    .line 101
    invoke-super {p0, p1, p2}, Lcom/android/server/biometrics/BiometricServiceBase;->handleEnrollResult(Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;I)V

    return-void
.end method

.method private cancelLockoutResetForUser(I)V
    .registers 4
    .param p1, "userId"  # I

    .line 1189
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService;->mAlarmManager:Landroid/app/AlarmManager;

    invoke-direct {p0, p1}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->getLockoutResetIntentForUser(I)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 1190
    return-void
.end method

.method private dumpFOD(Ljava/io/PrintWriter;)V
    .registers 3
    .param p1, "pw"  # Ljava/io/PrintWriter;

    .line 1295
    iget-boolean v0, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService;->mIsUnderGlassFP:Z

    if-eqz v0, :cond_7

    .line 1296
    invoke-static {p1}, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;->dump(Ljava/io/PrintWriter;)V

    .line 1298
    :cond_7
    return-void
.end method

.method private dumpInternal(Ljava/io/PrintWriter;)V
    .registers 14
    .param p1, "pw"  # Ljava/io/PrintWriter;

    .line 1208
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 1210
    .local v0, "dump":Lorg/json/JSONObject;
    const/4 v1, 0x0

    :try_start_6
    const-string/jumbo v2, "service"

    const-string v3, "Fingerprint Manager"

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1212
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 1213
    .local v2, "sets":Lorg/json/JSONArray;
    invoke-virtual {p0}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_23
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_e9

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/UserInfo;

    .line 1214
    .local v4, "user":Landroid/content/pm/UserInfo;
    invoke-virtual {v4}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v5

    .line 1215
    .local v5, "userId":I
    invoke-virtual {p0}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->getBiometricUtils()Lcom/android/server/biometrics/BiometricUtils;

    move-result-object v6

    invoke-virtual {p0}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-interface {v6, v7, v5}, Lcom/android/server/biometrics/BiometricUtils;->getBiometricsForUser(Landroid/content/Context;I)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    .line 1216
    .local v6, "N":I
    iget-object v7, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService;->mPerformanceMap:Ljava/util/HashMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/biometrics/BiometricServiceBase$PerformanceStats;

    .line 1217
    .local v7, "stats":Lcom/android/server/biometrics/BiometricServiceBase$PerformanceStats;
    iget-object v8, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService;->mCryptoPerformanceMap:Ljava/util/HashMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/biometrics/BiometricServiceBase$PerformanceStats;

    .line 1218
    .local v8, "cryptoStats":Lcom/android/server/biometrics/BiometricServiceBase$PerformanceStats;
    new-instance v9, Lorg/json/JSONObject;

    invoke-direct {v9}, Lorg/json/JSONObject;-><init>()V

    .line 1219
    .local v9, "set":Lorg/json/JSONObject;
    const-string/jumbo v10, "id"

    invoke-virtual {v9, v10, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1220
    const-string v10, "count"

    invoke-virtual {v9, v10, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1221
    const-string v10, "accept"

    if-eqz v7, :cond_76

    iget v11, v7, Lcom/android/server/biometrics/BiometricServiceBase$PerformanceStats;->accept:I

    goto :goto_77

    :cond_76
    move v11, v1

    :goto_77
    invoke-virtual {v9, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1222
    const-string/jumbo v10, "reject"

    if-eqz v7, :cond_82

    iget v11, v7, Lcom/android/server/biometrics/BiometricServiceBase$PerformanceStats;->reject:I

    goto :goto_83

    :cond_82
    move v11, v1

    :goto_83
    invoke-virtual {v9, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1223
    const-string v10, "acquire"

    if-eqz v7, :cond_8d

    iget v11, v7, Lcom/android/server/biometrics/BiometricServiceBase$PerformanceStats;->acquire:I

    goto :goto_8e

    :cond_8d
    move v11, v1

    :goto_8e
    invoke-virtual {v9, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1224
    const-string/jumbo v10, "lockout"

    if-eqz v7, :cond_99

    iget v11, v7, Lcom/android/server/biometrics/BiometricServiceBase$PerformanceStats;->lockout:I

    goto :goto_9a

    :cond_99
    move v11, v1

    :goto_9a
    invoke-virtual {v9, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1225
    const-string/jumbo v10, "permanentLockout"

    if-eqz v7, :cond_a5

    iget v11, v7, Lcom/android/server/biometrics/BiometricServiceBase$PerformanceStats;->permanentLockout:I

    goto :goto_a6

    :cond_a5
    move v11, v1

    :goto_a6
    invoke-virtual {v9, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1228
    const-string v10, "acceptCrypto"

    if-eqz v8, :cond_b0

    iget v11, v8, Lcom/android/server/biometrics/BiometricServiceBase$PerformanceStats;->accept:I

    goto :goto_b1

    :cond_b0
    move v11, v1

    :goto_b1
    invoke-virtual {v9, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1229
    const-string/jumbo v10, "rejectCrypto"

    if-eqz v8, :cond_bc

    iget v11, v8, Lcom/android/server/biometrics/BiometricServiceBase$PerformanceStats;->reject:I

    goto :goto_bd

    :cond_bc
    move v11, v1

    :goto_bd
    invoke-virtual {v9, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1230
    const-string v10, "acquireCrypto"

    if-eqz v8, :cond_c7

    iget v11, v8, Lcom/android/server/biometrics/BiometricServiceBase$PerformanceStats;->acquire:I

    goto :goto_c8

    :cond_c7
    move v11, v1

    :goto_c8
    invoke-virtual {v9, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1231
    const-string/jumbo v10, "lockoutCrypto"

    if-eqz v8, :cond_d3

    iget v11, v8, Lcom/android/server/biometrics/BiometricServiceBase$PerformanceStats;->lockout:I

    goto :goto_d4

    :cond_d3
    move v11, v1

    :goto_d4
    invoke-virtual {v9, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1232
    const-string/jumbo v10, "permanentLockoutCrypto"

    .line 1233
    if-eqz v8, :cond_df

    iget v11, v8, Lcom/android/server/biometrics/BiometricServiceBase$PerformanceStats;->permanentLockout:I

    goto :goto_e0

    :cond_df
    move v11, v1

    .line 1232
    :goto_e0
    invoke-virtual {v9, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1234
    invoke-virtual {v2, v9}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 1235
    nop

    .end local v4  # "user":Landroid/content/pm/UserInfo;
    .end local v5  # "userId":I
    .end local v6  # "N":I
    .end local v7  # "stats":Lcom/android/server/biometrics/BiometricServiceBase$PerformanceStats;
    .end local v8  # "cryptoStats":Lcom/android/server/biometrics/BiometricServiceBase$PerformanceStats;
    .end local v9  # "set":Lorg/json/JSONObject;
    goto/16 :goto_23

    .line 1237
    :cond_e9
    const-string/jumbo v3, "prints"

    invoke-virtual {v0, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_ef
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_ef} :catch_f1

    .line 1240
    nop

    .end local v2  # "sets":Lorg/json/JSONArray;
    goto :goto_f9

    .line 1238
    :catch_f1
    move-exception v2

    .line 1239
    .local v2, "e":Lorg/json/JSONException;
    const-string v3, "FingerprintService"

    const-string v4, "dump formatting failure"

    invoke-static {v3, v4, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1241
    .end local v2  # "e":Lorg/json/JSONException;
    :goto_f9
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1242
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "HAL Deaths: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService;->mHALDeathCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1243
    iput v1, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService;->mHALDeathCount:I

    .line 1245
    invoke-direct {p0, p1}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->dumpFOD(Ljava/io/PrintWriter;)V

    .line 1247
    return-void
.end method

.method private dumpProto(Ljava/io/FileDescriptor;)V
    .registers 18
    .param p1, "fd"  # Ljava/io/FileDescriptor;

    .line 1250
    move-object/from16 v0, p0

    new-instance v1, Landroid/util/proto/ProtoOutputStream;

    move-object/from16 v2, p1

    invoke-direct {v1, v2}, Landroid/util/proto/ProtoOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 1251
    .local v1, "proto":Landroid/util/proto/ProtoOutputStream;
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_19
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_ea

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/UserInfo;

    .line 1252
    .local v4, "user":Landroid/content/pm/UserInfo;
    invoke-virtual {v4}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v5

    .line 1254
    .local v5, "userId":I
    const-wide v6, 0x20b00000001L

    invoke-virtual {v1, v6, v7}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v6

    .line 1256
    .local v6, "userToken":J
    const-wide v8, 0x10500000001L

    invoke-virtual {v1, v8, v9, v5}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1257
    nop

    .line 1258
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->getBiometricUtils()Lcom/android/server/biometrics/BiometricUtils;

    move-result-object v10

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-interface {v10, v11, v5}, Lcom/android/server/biometrics/BiometricUtils;->getBiometricsForUser(Landroid/content/Context;I)Ljava/util/List;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    .line 1257
    const-wide v11, 0x10500000002L

    invoke-virtual {v1, v11, v12, v10}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1261
    iget-object v10, v0, Lcom/android/server/biometrics/fingerprint/FingerprintService;->mPerformanceMap:Ljava/util/HashMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v10, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/biometrics/BiometricServiceBase$PerformanceStats;

    .line 1262
    .local v10, "normal":Lcom/android/server/biometrics/BiometricServiceBase$PerformanceStats;
    if-eqz v10, :cond_99

    .line 1263
    const-wide v13, 0x10b00000003L

    invoke-virtual {v1, v13, v14}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v13

    .line 1264
    .local v13, "countsToken":J
    iget v15, v10, Lcom/android/server/biometrics/BiometricServiceBase$PerformanceStats;->accept:I

    invoke-virtual {v1, v8, v9, v15}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1265
    iget v15, v10, Lcom/android/server/biometrics/BiometricServiceBase$PerformanceStats;->reject:I

    invoke-virtual {v1, v11, v12, v15}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1266
    iget v15, v10, Lcom/android/server/biometrics/BiometricServiceBase$PerformanceStats;->acquire:I

    const-wide v11, 0x10500000003L

    invoke-virtual {v1, v11, v12, v15}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1267
    iget v11, v10, Lcom/android/server/biometrics/BiometricServiceBase$PerformanceStats;->lockout:I

    const-wide v8, 0x10500000004L

    invoke-virtual {v1, v8, v9, v11}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1268
    iget v8, v10, Lcom/android/server/biometrics/BiometricServiceBase$PerformanceStats;->permanentLockout:I

    const-wide v11, 0x10500000005L

    invoke-virtual {v1, v11, v12, v8}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1269
    invoke-virtual {v1, v13, v14}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 1274
    .end local v13  # "countsToken":J
    :cond_99
    iget-object v8, v0, Lcom/android/server/biometrics/fingerprint/FingerprintService;->mCryptoPerformanceMap:Ljava/util/HashMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/biometrics/BiometricServiceBase$PerformanceStats;

    .line 1275
    .local v8, "crypto":Lcom/android/server/biometrics/BiometricServiceBase$PerformanceStats;
    if-eqz v8, :cond_e5

    .line 1276
    const-wide v11, 0x10b00000004L

    invoke-virtual {v1, v11, v12}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v11

    .line 1277
    .local v11, "countsToken":J
    iget v9, v8, Lcom/android/server/biometrics/BiometricServiceBase$PerformanceStats;->accept:I

    const-wide v13, 0x10500000001L

    invoke-virtual {v1, v13, v14, v9}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1278
    iget v9, v8, Lcom/android/server/biometrics/BiometricServiceBase$PerformanceStats;->reject:I

    const-wide v13, 0x10500000002L

    invoke-virtual {v1, v13, v14, v9}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1279
    iget v9, v8, Lcom/android/server/biometrics/BiometricServiceBase$PerformanceStats;->acquire:I

    const-wide v13, 0x10500000003L

    invoke-virtual {v1, v13, v14, v9}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1280
    iget v9, v8, Lcom/android/server/biometrics/BiometricServiceBase$PerformanceStats;->lockout:I

    const-wide v13, 0x10500000004L

    invoke-virtual {v1, v13, v14, v9}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1281
    iget v9, v8, Lcom/android/server/biometrics/BiometricServiceBase$PerformanceStats;->permanentLockout:I

    const-wide v13, 0x10500000005L

    invoke-virtual {v1, v13, v14, v9}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1282
    invoke-virtual {v1, v11, v12}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 1285
    .end local v11  # "countsToken":J
    :cond_e5
    invoke-virtual {v1, v6, v7}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 1286
    .end local v4  # "user":Landroid/content/pm/UserInfo;
    .end local v5  # "userId":I
    .end local v6  # "userToken":J
    .end local v8  # "crypto":Lcom/android/server/biometrics/BiometricServiceBase$PerformanceStats;
    .end local v10  # "normal":Lcom/android/server/biometrics/BiometricServiceBase$PerformanceStats;
    goto/16 :goto_19

    .line 1287
    :cond_ea
    invoke-virtual {v1}, Landroid/util/proto/ProtoOutputStream;->flush()V

    .line 1288
    iget-object v3, v0, Lcom/android/server/biometrics/fingerprint/FingerprintService;->mPerformanceMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    .line 1289
    iget-object v3, v0, Lcom/android/server/biometrics/fingerprint/FingerprintService;->mCryptoPerformanceMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    .line 1290
    return-void
.end method

.method private declared-synchronized getFingerprintDaemon()Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;
    .registers 8

    monitor-enter p0

    .line 1105
    :try_start_1
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService;->mDaemon:Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;

    if-nez v0, :cond_90

    .line 1106
    const-string v0, "FingerprintService"

    const-string/jumbo v1, "mDaemon was null, reconnect to fingerprint"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_94

    .line 1108
    :try_start_d
    invoke-static {}, Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;->getService()Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService;->mDaemon:Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;
    :try_end_13
    .catch Ljava/util/NoSuchElementException; {:try_start_d .. :try_end_13} :catch_1d
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_13} :catch_14
    .catchall {:try_start_d .. :try_end_13} :catchall_94

    .line 1113
    goto :goto_1f

    .line 1111
    .end local p0  # "this":Lcom/android/server/biometrics/fingerprint/FingerprintService;
    :catch_14
    move-exception v0

    .line 1112
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_15
    const-string v1, "FingerprintService"

    const-string v2, "Failed to get biometric interface"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1f

    .line 1109
    .end local v0  # "e":Landroid/os/RemoteException;
    :catch_1d
    move-exception v0

    .line 1113
    nop

    .line 1114
    :goto_1f
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService;->mDaemon:Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;

    const/4 v1, 0x0

    if-nez v0, :cond_2d

    .line 1115
    const-string v0, "FingerprintService"

    const-string v2, "fingerprint HIDL not available"

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2b
    .catchall {:try_start_15 .. :try_end_2b} :catchall_94

    .line 1116
    monitor-exit p0

    return-object v1

    .line 1119
    :cond_2d
    :try_start_2d
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService;->mDaemon:Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;

    invoke-interface {v0}, Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;->asBinder()Landroid/os/IHwBinder;

    move-result-object v0

    const-wide/16 v2, 0x0

    invoke-interface {v0, p0, v2, v3}, Landroid/os/IHwBinder;->linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
    :try_end_38
    .catchall {:try_start_2d .. :try_end_38} :catchall_94

    .line 1122
    :try_start_38
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService;->mDaemon:Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;

    iget-object v4, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService;->mDaemonCallback:Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprintClientCallback;

    invoke-interface {v0, v4}, Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;->setNotify(Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprintClientCallback;)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService;->mHalDeviceId:J
    :try_end_42
    .catch Landroid/os/RemoteException; {:try_start_38 .. :try_end_42} :catch_43
    .catchall {:try_start_38 .. :try_end_42} :catchall_94

    .line 1126
    goto :goto_4d

    .line 1123
    :catch_43
    move-exception v0

    .line 1124
    .restart local v0  # "e":Landroid/os/RemoteException;
    :try_start_44
    const-string v4, "FingerprintService"

    const-string v5, "Failed to open fingerprint HAL"

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1125
    iput-object v1, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService;->mDaemon:Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;

    .line 1128
    .end local v0  # "e":Landroid/os/RemoteException;
    :goto_4d
    const-string v0, "FingerprintService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Fingerprint HAL id: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v5, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService;->mHalDeviceId:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1129
    iget-wide v4, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService;->mHalDeviceId:J

    cmp-long v0, v4, v2

    if-eqz v0, :cond_7d

    .line 1130
    invoke-virtual {p0}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->loadAuthenticatorIds()V

    .line 1131
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    invoke-virtual {p0, v0, v1}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->updateActiveGroup(ILjava/lang/String;)V

    .line 1132
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->doTemplateCleanupForUser(I)V

    goto :goto_90

    .line 1134
    :cond_7d
    const-string v0, "FingerprintService"

    const-string v2, "Failed to open Fingerprint HAL!"

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1135
    invoke-virtual {p0}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "fingerprintd_openhal_error"

    const/4 v3, 0x1

    invoke-static {v0, v2, v3}, Lcom/android/internal/logging/MetricsLogger;->count(Landroid/content/Context;Ljava/lang/String;I)V

    .line 1136
    iput-object v1, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService;->mDaemon:Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;

    .line 1139
    :cond_90
    :goto_90
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService;->mDaemon:Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;
    :try_end_92
    .catchall {:try_start_44 .. :try_end_92} :catchall_94

    monitor-exit p0

    return-object v0

    .line 1104
    :catchall_94
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private getLockoutResetIntentForUser(I)Landroid/app/PendingIntent;
    .registers 5
    .param p1, "userId"  # I

    .line 1202
    invoke-virtual {p0}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    .line 1203
    invoke-virtual {p0}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->getLockoutResetIntent()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, "lockout_reset_user"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v1

    .line 1202
    const/high16 v2, 0x8000000

    invoke-static {v0, p1, v1, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic lambda$YOMIOLvco2SvXVeJIulOSVKdX7A(Lcom/android/server/biometrics/fingerprint/FingerprintService;)Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;
    .registers 1

    invoke-direct {p0}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->getFingerprintDaemon()Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;

    move-result-object p0

    return-object p0
.end method

.method private resetFailedAttemptsForUser(ZI)V
    .registers 6
    .param p1, "clearAttemptCounter"  # Z
    .param p2, "userId"  # I

    .line 1174
    invoke-virtual {p0}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->getLockoutMode()I

    move-result v0

    if-eqz v0, :cond_1e

    .line 1175
    invoke-virtual {p0}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->getTag()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Reset biometric lockout, clearAttemptCounter="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1177
    :cond_1e
    if-eqz p1, :cond_26

    .line 1178
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService;->mFailedAttempts:Landroid/util/SparseIntArray;

    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1180
    :cond_26
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService;->mTimedLockoutCleared:Landroid/util/SparseBooleanArray;

    const/4 v1, 0x1

    invoke-virtual {v0, p2, v1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 1183
    invoke-direct {p0, p2}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->cancelLockoutResetForUser(I)V

    .line 1184
    invoke-virtual {p0}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->notifyLockoutResetMonitors()V

    .line 1185
    return-void
.end method

.method private scheduleLockoutResetForUser(I)V
    .registers 7
    .param p1, "userId"  # I

    .line 1194
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService;->mLockoutStartTime:J

    .line 1196
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService;->mAlarmManager:Landroid/app/AlarmManager;

    .line 1197
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    const-wide/32 v3, 0xea60

    add-long/2addr v1, v3

    .line 1198
    invoke-direct {p0, p1}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->getLockoutResetIntentForUser(I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 1196
    const/4 v4, 0x2

    invoke-virtual {v0, v4, v1, v2, v3}, Landroid/app/AlarmManager;->setExact(IJLandroid/app/PendingIntent;)V

    .line 1199
    return-void
.end method

.method private startPostEnroll(Landroid/os/IBinder;)I
    .registers 7
    .param p1, "token"  # Landroid/os/IBinder;

    .line 1157
    invoke-direct {p0}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->getFingerprintDaemon()Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;

    move-result-object v0

    .line 1158
    .local v0, "daemon":Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;
    const/4 v1, 0x0

    const-string v2, "FingerprintService"

    if-nez v0, :cond_10

    .line 1159
    const-string/jumbo v3, "startPostEnroll: no fingerprint HAL!"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1160
    return v1

    .line 1163
    :cond_10
    :try_start_10
    invoke-interface {v0}, Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;->postEnroll()I

    move-result v1
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_14} :catch_15

    return v1

    .line 1164
    :catch_15
    move-exception v3

    .line 1165
    .local v3, "e":Landroid/os/RemoteException;
    const-string/jumbo v4, "startPostEnroll failed"

    invoke-static {v2, v4, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1167
    .end local v3  # "e":Landroid/os/RemoteException;
    return v1
.end method

.method private startPreEnroll(Landroid/os/IBinder;)J
    .registers 8
    .param p1, "token"  # Landroid/os/IBinder;

    .line 1143
    invoke-direct {p0}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->getFingerprintDaemon()Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;

    move-result-object v0

    .line 1144
    .local v0, "daemon":Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;
    const-wide/16 v1, 0x0

    const-string v3, "FingerprintService"

    if-nez v0, :cond_11

    .line 1145
    const-string/jumbo v4, "startPreEnroll: no fingerprint HAL!"

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1146
    return-wide v1

    .line 1149
    :cond_11
    :try_start_11
    invoke-interface {v0}, Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;->preEnroll()J

    move-result-wide v1
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_15} :catch_16

    return-wide v1

    .line 1150
    :catch_16
    move-exception v4

    .line 1151
    .local v4, "e":Landroid/os/RemoteException;
    const-string/jumbo v5, "startPreEnroll failed"

    invoke-static {v3, v5, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1153
    .end local v4  # "e":Landroid/os/RemoteException;
    return-wide v1
.end method


# virtual methods
.method protected checkAppOps(ILjava/lang/String;)Z
    .registers 6
    .param p1, "uid"  # I
    .param p2, "opPackageName"  # Ljava/lang/String;

    .line 1038
    const/4 v0, 0x0

    .line 1039
    .local v0, "appOpsOk":Z
    iget-object v1, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService;->mAppOps:Landroid/app/AppOpsManager;

    const/16 v2, 0x4e

    invoke-virtual {v1, v2, p1, p2}, Landroid/app/AppOpsManager;->noteOp(IILjava/lang/String;)I

    move-result v1

    if-nez v1, :cond_d

    .line 1041
    const/4 v0, 0x1

    goto :goto_18

    .line 1042
    :cond_d
    iget-object v1, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService;->mAppOps:Landroid/app/AppOpsManager;

    const/16 v2, 0x37

    invoke-virtual {v1, v2, p1, p2}, Landroid/app/AppOpsManager;->noteOp(IILjava/lang/String;)I

    move-result v1

    if-nez v1, :cond_18

    .line 1044
    const/4 v0, 0x1

    .line 1046
    :cond_18
    :goto_18
    return v0
.end method

.method protected checkUseBiometricPermission()V
    .registers 3

    .line 1030
    invoke-virtual {p0}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.USE_FINGERPRINT"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_11

    .line 1032
    const-string v0, "android.permission.USE_BIOMETRIC"

    invoke-virtual {p0, v0}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->checkPermission(Ljava/lang/String;)V

    .line 1034
    :cond_11
    return-void
.end method

.method protected getBiometricUtils()Lcom/android/server/biometrics/BiometricUtils;
    .registers 2

    .line 918
    invoke-static {}, Lcom/android/server/biometrics/fingerprint/FingerprintUtils;->getInstance()Lcom/android/server/biometrics/fingerprint/FingerprintUtils;

    move-result-object v0

    return-object v0
.end method

.method protected getConstants()Lcom/android/server/biometrics/Constants;
    .registers 2

    .line 923
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService;->mFingerprintConstants:Lcom/android/server/biometrics/fingerprint/FingerprintConstants;

    return-object v0
.end method

.method protected getDaemonWrapper()Lcom/android/server/biometrics/BiometricServiceBase$DaemonWrapper;
    .registers 2

    .line 913
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService;->mDaemonWrapper:Lcom/android/server/biometrics/BiometricServiceBase$DaemonWrapper;

    return-object v0
.end method

.method protected getEnrolledTemplates(I)Ljava/util/List;
    .registers 4
    .param p1, "userId"  # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/hardware/fingerprint/Fingerprint;",
            ">;"
        }
    .end annotation

    .line 1051
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    if-eq p1, v0, :cond_b

    .line 1052
    const-string v0, "android.permission.INTERACT_ACROSS_USERS"

    invoke-virtual {p0, v0}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->checkPermission(Ljava/lang/String;)V

    .line 1054
    :cond_b
    invoke-virtual {p0}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->getBiometricUtils()Lcom/android/server/biometrics/BiometricUtils;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lcom/android/server/biometrics/BiometricUtils;->getBiometricsForUser(Landroid/content/Context;I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected getHalDeviceId()J
    .registers 3

    .line 1008
    iget-wide v0, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService;->mHalDeviceId:J

    return-wide v0
.end method

.method protected getLockoutBroadcastPermission()Ljava/lang/String;
    .registers 2

    .line 1003
    const-string v0, "android.permission.RESET_FINGERPRINT_LOCKOUT"

    return-object v0
.end method

.method protected getLockoutMode()I
    .registers 5

    .line 1090
    iget v0, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService;->mCurrentUserId:I

    .line 1092
    .local v0, "currentUser":I
    iget-object v1, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService;->mFailedAttempts:Landroid/util/SparseIntArray;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v1

    .line 1093
    .local v1, "failedAttempts":I
    const/16 v3, 0x14

    if-lt v1, v3, :cond_f

    .line 1094
    const/4 v2, 0x2

    return v2

    .line 1095
    :cond_f
    if-lez v1, :cond_1f

    iget-object v3, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService;->mTimedLockoutCleared:Landroid/util/SparseBooleanArray;

    .line 1096
    invoke-virtual {v3, v0, v2}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v3

    if-nez v3, :cond_1f

    rem-int/lit8 v3, v1, 0x5

    if-nez v3, :cond_1f

    .line 1098
    const/4 v2, 0x1

    return v2

    .line 1100
    :cond_1f
    return v2
.end method

.method protected getLockoutResetIntent()Ljava/lang/String;
    .registers 2

    .line 998
    const-string v0, "com.android.server.biometrics.fingerprint.ACTION_LOCKOUT_RESET"

    return-object v0
.end method

.method protected getManageBiometricPermission()Ljava/lang/String;
    .registers 2

    .line 1025
    const-string v0, "android.permission.MANAGE_FINGERPRINT"

    return-object v0
.end method

.method protected getTag()Ljava/lang/String;
    .registers 2

    .line 908
    const-string v0, "FingerprintService"

    return-object v0
.end method

.method protected hasEnrolledBiometrics(I)Z
    .registers 4
    .param p1, "userId"  # I

    .line 1013
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    if-eq p1, v0, :cond_15

    .line 1015
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->isMultiOpenUserId(I)Z

    move-result v0

    if-nez v0, :cond_15

    .line 1016
    const-string v0, "android.permission.INTERACT_ACROSS_USERS"

    invoke-virtual {p0, v0}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->checkPermission(Ljava/lang/String;)V

    .line 1020
    :cond_15
    invoke-virtual {p0}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->getBiometricUtils()Lcom/android/server/biometrics/BiometricUtils;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lcom/android/server/biometrics/BiometricUtils;->getBiometricsForUser(Landroid/content/Context;I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_29

    const/4 v0, 0x1

    goto :goto_2a

    :cond_29
    const/4 v0, 0x0

    :goto_2a
    return v0
.end method

.method protected hasReachedEnrollmentLimit(I)Z
    .registers 6
    .param p1, "userId"  # I

    .line 928
    invoke-virtual {p0}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e005c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 930
    .local v0, "limit":I
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->getEnrolledTemplates(I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .line 931
    .local v1, "enrolled":I
    if-lt v1, v0, :cond_22

    .line 932
    const-string v2, "FingerprintService"

    const-string v3, "Too many fingerprints registered"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 933
    const/4 v2, 0x1

    return v2

    .line 935
    :cond_22
    const/4 v2, 0x0

    return v2
.end method

.method protected notifyClientActiveCallbacks(Z)V
    .registers 7
    .param p1, "isActive"  # Z

    .line 1060
    if-eqz p1, :cond_10

    .line 1061
    iget-boolean v0, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService;->mIsUnderGlassFP:Z

    if-eqz v0, :cond_19

    .line 1062
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService;->mUnderglassFingerprintController:Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;

    invoke-virtual {p0}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->getCurrentClient()Lcom/android/server/biometrics/ClientMonitor;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;->show(Lcom/android/server/biometrics/ClientMonitor;)V

    goto :goto_19

    .line 1065
    :cond_10
    iget-boolean v0, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService;->mIsUnderGlassFP:Z

    if-eqz v0, :cond_19

    .line 1066
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService;->mUnderglassFingerprintController:Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;

    invoke-virtual {v0}, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;->dismiss()V

    .line 1071
    :cond_19
    :goto_19
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService;->mClientActiveCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 1072
    .local v0, "callbacks":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/fingerprint/IFingerprintClientActiveCallback;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1c
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_39

    .line 1074
    :try_start_22
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/fingerprint/IFingerprintClientActiveCallback;

    invoke-interface {v2, p1}, Landroid/hardware/fingerprint/IFingerprintClientActiveCallback;->onClientActiveChanged(Z)V
    :try_end_2b
    .catch Landroid/os/RemoteException; {:try_start_22 .. :try_end_2b} :catch_2c

    .line 1078
    goto :goto_36

    .line 1075
    :catch_2c
    move-exception v2

    .line 1077
    .local v2, "re":Landroid/os/RemoteException;
    iget-object v3, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService;->mClientActiveCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 1072
    .end local v2  # "re":Landroid/os/RemoteException;
    :goto_36
    add-int/lit8 v1, v1, 0x1

    goto :goto_1c

    .line 1080
    .end local v1  # "i":I
    :cond_39
    return-void
.end method

.method public onStart()V
    .registers 4

    .line 901
    invoke-super {p0}, Lcom/android/server/biometrics/BiometricServiceBase;->onStart()V

    .line 902
    new-instance v0, Lcom/android/server/biometrics/fingerprint/FingerprintService$FingerprintServiceWrapper;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/biometrics/fingerprint/FingerprintService$FingerprintServiceWrapper;-><init>(Lcom/android/server/biometrics/fingerprint/FingerprintService;Lcom/android/server/biometrics/fingerprint/FingerprintService$1;)V

    const-string v1, "fingerprint"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 903
    invoke-static {}, Lcom/android/server/SystemServerInitThreadPool;->get()Lcom/android/server/SystemServerInitThreadPool;

    move-result-object v0

    new-instance v1, Lcom/android/server/biometrics/fingerprint/-$$Lambda$FingerprintService$YOMIOLvco2SvXVeJIulOSVKdX7A;

    invoke-direct {v1, p0}, Lcom/android/server/biometrics/fingerprint/-$$Lambda$FingerprintService$YOMIOLvco2SvXVeJIulOSVKdX7A;-><init>(Lcom/android/server/biometrics/fingerprint/FingerprintService;)V

    const-string v2, "FingerprintService.onStart"

    invoke-virtual {v0, v1, v2}, Lcom/android/server/SystemServerInitThreadPool;->submit(Ljava/lang/Runnable;Ljava/lang/String;)Ljava/util/concurrent/Future;

    .line 904
    return-void
.end method

.method public serviceDied(J)V
    .registers 4
    .param p1, "cookie"  # J

    .line 940
    invoke-super {p0, p1, p2}, Lcom/android/server/biometrics/BiometricServiceBase;->serviceDied(J)V

    .line 941
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService;->mDaemon:Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;

    .line 942
    return-void
.end method

.method protected statsModality()I
    .registers 2

    .line 1084
    const/4 v0, 0x1

    return v0
.end method

.method protected updateActiveGroup(ILjava/lang/String;)V
    .registers 10
    .param p1, "userId"  # I
    .param p2, "clientPackage"  # Ljava/lang/String;

    .line 946
    const-string v0, "FingerprintService"

    invoke-direct {p0}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->getFingerprintDaemon()Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;

    move-result-object v1

    .line 948
    .local v1, "daemon":Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;
    if-eqz v1, :cond_ac

    .line 950
    :try_start_8
    invoke-virtual {p0, p2, p1}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->getUserOrWorkProfileId(Ljava/lang/String;I)I

    move-result v2

    move p1, v2

    .line 951
    iget v2, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService;->mCurrentUserId:I

    if-eq p1, v2, :cond_84

    .line 953
    iget-object v2, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService;->mFlymeFingerprintUtils:Lcom/android/server/biometrics/flymefingerprint/FlymeFingerprintUtils;

    invoke-virtual {v2, p1}, Lcom/android/server/biometrics/flymefingerprint/FlymeFingerprintUtils;->checkIsFlymeParallelSpaceUserId(I)I

    move-result v2

    move p1, v2

    .line 955
    sget v2, Landroid/os/Build$VERSION;->FIRST_SDK_INT:I

    .line 956
    .local v2, "firstSdkInt":I
    const/4 v3, 0x1

    if-ge v2, v3, :cond_36

    .line 957
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "First SDK version "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " is invalid; must be at least VERSION_CODES.BASE"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 961
    :cond_36
    const/16 v3, 0x1b

    if-gt v2, v3, :cond_3f

    .line 962
    invoke-static {p1}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object v3

    .local v3, "baseDir":Ljava/io/File;
    goto :goto_43

    .line 964
    .end local v3  # "baseDir":Ljava/io/File;
    :cond_3f
    invoke-static {p1}, Landroid/os/Environment;->getDataVendorDeDirectory(I)Ljava/io/File;

    move-result-object v3

    .line 967
    .restart local v3  # "baseDir":Ljava/io/File;
    :goto_43
    new-instance v4, Ljava/io/File;

    const-string v5, "fpdata"

    invoke-direct {v4, v3, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 968
    .local v4, "fpDir":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_7b

    .line 969
    invoke-virtual {v4}, Ljava/io/File;->mkdir()Z

    move-result v5

    if-nez v5, :cond_6f

    .line 970
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Cannot make directory: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 971
    return-void

    .line 976
    :cond_6f
    invoke-static {v4}, Landroid/os/SELinux;->restorecon(Ljava/io/File;)Z

    move-result v5

    if-nez v5, :cond_7b

    .line 977
    const-string v5, "Restorecons failed. Directory will have wrong label."

    invoke-static {v0, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 978
    return-void

    .line 982
    :cond_7b
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, p1, v5}, Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;->setActiveGroup(ILjava/lang/String;)I

    .line 983
    iput p1, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService;->mCurrentUserId:I

    .line 986
    .end local v2  # "firstSdkInt":I
    .end local v3  # "baseDir":Ljava/io/File;
    .end local v4  # "fpDir":Ljava/io/File;
    :cond_84
    iget-object v2, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService;->mFlymeFingerprintUtils:Lcom/android/server/biometrics/flymefingerprint/FlymeFingerprintUtils;

    invoke-virtual {v2, p1}, Lcom/android/server/biometrics/flymefingerprint/FlymeFingerprintUtils;->checkIsFlymeParallelSpaceUserId(I)I

    move-result v2

    move p1, v2

    .line 988
    iget-object v2, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService;->mAuthenticatorIds:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 989
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->hasEnrolledBiometrics(I)Z

    move-result v4

    if-eqz v4, :cond_9c

    invoke-interface {v1}, Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;->getAuthenticatorId()J

    move-result-wide v4

    goto :goto_9e

    :cond_9c
    const-wide/16 v4, 0x0

    :goto_9e
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    .line 988
    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_a5
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_a5} :catch_a6

    .line 992
    goto :goto_ac

    .line 990
    :catch_a6
    move-exception v2

    .line 991
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "Failed to setActiveGroup():"

    invoke-static {v0, v3, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 994
    .end local v2  # "e":Landroid/os/RemoteException;
    :cond_ac
    :goto_ac
    return-void
.end method
