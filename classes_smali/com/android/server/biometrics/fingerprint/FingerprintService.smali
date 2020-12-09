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

.field private static final FAIL_LOCKOUT_TIMEOUT_MS:J = 0x7530L

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

.field private mFingerprintInscreenDaemon:Lvendor/lineage/biometrics/fingerprint/inscreen/V1_0/IFingerprintInscreen;

.field private final mHasFod:Z

.field private mIsKeyguard:Z

.field private final mLockoutReceiver:Lcom/android/server/biometrics/fingerprint/FingerprintService$LockoutReceiver;

.field protected final mResetFailedAttemptsForCurrentUserRunnable:Lcom/android/server/biometrics/fingerprint/FingerprintService$ResetFailedAttemptsForUserRunnable;

.field private final mTimedLockoutCleared:Landroid/util/SparseBooleanArray;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 6

    .line 804
    invoke-direct {p0, p1}, Lcom/android/server/biometrics/BiometricServiceBase;-><init>(Landroid/content/Context;)V

    .line 576
    new-instance v0, Lcom/android/server/biometrics/fingerprint/FingerprintConstants;

    invoke-direct {v0}, Lcom/android/server/biometrics/fingerprint/FingerprintConstants;-><init>()V

    iput-object v0, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService;->mFingerprintConstants:Lcom/android/server/biometrics/fingerprint/FingerprintConstants;

    .line 577
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService;->mClientActiveCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 586
    new-instance v0, Lcom/android/server/biometrics/fingerprint/FingerprintService$LockoutReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/biometrics/fingerprint/FingerprintService$LockoutReceiver;-><init>(Lcom/android/server/biometrics/fingerprint/FingerprintService;Lcom/android/server/biometrics/fingerprint/FingerprintService$1;)V

    iput-object v0, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService;->mLockoutReceiver:Lcom/android/server/biometrics/fingerprint/FingerprintService$LockoutReceiver;

    .line 587
    new-instance v0, Lcom/android/server/biometrics/fingerprint/FingerprintService$ResetFailedAttemptsForUserRunnable;

    invoke-direct {v0, p0, v1}, Lcom/android/server/biometrics/fingerprint/FingerprintService$ResetFailedAttemptsForUserRunnable;-><init>(Lcom/android/server/biometrics/fingerprint/FingerprintService;Lcom/android/server/biometrics/fingerprint/FingerprintService$1;)V

    iput-object v0, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService;->mResetFailedAttemptsForCurrentUserRunnable:Lcom/android/server/biometrics/fingerprint/FingerprintService$ResetFailedAttemptsForUserRunnable;

    .line 593
    new-instance v0, Lcom/android/server/biometrics/fingerprint/FingerprintService$1;

    invoke-direct {v0, p0}, Lcom/android/server/biometrics/fingerprint/FingerprintService$1;-><init>(Lcom/android/server/biometrics/fingerprint/FingerprintService;)V

    iput-object v0, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService;->mDaemonCallback:Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprintClientCallback;

    .line 706
    new-instance v0, Lcom/android/server/biometrics/fingerprint/FingerprintService$2;

    invoke-direct {v0, p0}, Lcom/android/server/biometrics/fingerprint/FingerprintService$2;-><init>(Lcom/android/server/biometrics/fingerprint/FingerprintService;)V

    iput-object v0, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService;->mDaemonWrapper:Lcom/android/server/biometrics/BiometricServiceBase$DaemonWrapper;

    .line 805
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService;->mTimedLockoutCleared:Landroid/util/SparseBooleanArray;

    .line 806
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService;->mFailedAttempts:Landroid/util/SparseIntArray;

    .line 807
    const-class v0, Landroid/app/AlarmManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    iput-object v0, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService;->mAlarmManager:Landroid/app/AlarmManager;

    .line 808
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService;->mLockoutReceiver:Lcom/android/server/biometrics/fingerprint/FingerprintService$LockoutReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    invoke-virtual {p0}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->getLockoutResetIntent()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 809
    invoke-virtual {p0}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->getLockoutBroadcastPermission()Ljava/lang/String;

    move-result-object v3

    .line 808
    invoke-virtual {p1, v0, v2, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 811
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    .line 812
    const-string/jumbo v0, "vendor.lineage.biometrics.fingerprint.inscreen"

    invoke-virtual {p1, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService;->mHasFod:Z

    .line 813
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/biometrics/fingerprint/FingerprintService;ZI)V
    .registers 3

    .line 98
    invoke-direct {p0, p1, p2}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->resetFailedAttemptsForUser(ZI)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/biometrics/fingerprint/FingerprintService;)Landroid/util/SparseIntArray;
    .registers 1

    .line 98
    iget-object p0, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService;->mFailedAttempts:Landroid/util/SparseIntArray;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/android/server/biometrics/fingerprint/FingerprintService;)Lcom/android/server/biometrics/BiometricServiceBase$DaemonWrapper;
    .registers 1

    .line 98
    iget-object p0, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService;->mDaemonWrapper:Lcom/android/server/biometrics/BiometricServiceBase$DaemonWrapper;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/android/server/biometrics/fingerprint/FingerprintService;)J
    .registers 3

    .line 98
    iget-wide v0, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService;->mHalDeviceId:J

    return-wide v0
.end method

.method static synthetic access$1200(Lcom/android/server/biometrics/fingerprint/FingerprintService;)I
    .registers 1

    .line 98
    iget p0, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService;->mCurrentUserId:I

    return p0
.end method

.method static synthetic access$1300(Lcom/android/server/biometrics/fingerprint/FingerprintService;Lcom/android/server/biometrics/BiometricServiceBase$EnrollClientImpl;I)V
    .registers 3

    .line 98
    invoke-virtual {p0, p1, p2}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->enrollInternal(Lcom/android/server/biometrics/BiometricServiceBase$EnrollClientImpl;I)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/server/biometrics/fingerprint/FingerprintService;Ljava/lang/String;)V
    .registers 2

    .line 98
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->checkPermission(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/server/biometrics/fingerprint/FingerprintService;Landroid/os/IBinder;)V
    .registers 2

    .line 98
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->cancelEnrollmentInternal(Landroid/os/IBinder;)V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/server/biometrics/fingerprint/FingerprintService;)Z
    .registers 1

    .line 98
    invoke-virtual {p0}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->isRestricted()Z

    move-result p0

    return p0
.end method

.method static synthetic access$1700(Lcom/android/server/biometrics/fingerprint/FingerprintService;)J
    .registers 3

    .line 98
    iget-wide v0, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService;->mHalDeviceId:J

    return-wide v0
.end method

.method static synthetic access$1800(Lcom/android/server/biometrics/fingerprint/FingerprintService;)I
    .registers 1

    .line 98
    iget p0, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService;->mCurrentUserId:I

    return p0
.end method

.method static synthetic access$1900(Lcom/android/server/biometrics/fingerprint/FingerprintService;Lcom/android/server/biometrics/BiometricServiceBase$AuthenticationClientImpl;JLjava/lang/String;)V
    .registers 5

    .line 98
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->authenticateInternal(Lcom/android/server/biometrics/BiometricServiceBase$AuthenticationClientImpl;JLjava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/biometrics/fingerprint/FingerprintService;)Landroid/util/SparseBooleanArray;
    .registers 1

    .line 98
    iget-object p0, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService;->mTimedLockoutCleared:Landroid/util/SparseBooleanArray;

    return-object p0
.end method

.method static synthetic access$2000(Lcom/android/server/biometrics/fingerprint/FingerprintService;Ljava/lang/String;)V
    .registers 2

    .line 98
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->checkPermission(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2100(Lcom/android/server/biometrics/fingerprint/FingerprintService;)J
    .registers 3

    .line 98
    iget-wide v0, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService;->mHalDeviceId:J

    return-wide v0
.end method

.method static synthetic access$2200(Lcom/android/server/biometrics/fingerprint/FingerprintService;)I
    .registers 1

    .line 98
    iget p0, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService;->mCurrentUserId:I

    return p0
.end method

.method static synthetic access$2300(Lcom/android/server/biometrics/fingerprint/FingerprintService;Lcom/android/server/biometrics/BiometricServiceBase$AuthenticationClientImpl;JLjava/lang/String;III)V
    .registers 8

    .line 98
    invoke-virtual/range {p0 .. p7}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->authenticateInternal(Lcom/android/server/biometrics/BiometricServiceBase$AuthenticationClientImpl;JLjava/lang/String;III)V

    return-void
.end method

.method static synthetic access$2400(Lcom/android/server/biometrics/fingerprint/FingerprintService;Ljava/lang/String;)V
    .registers 2

    .line 98
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->checkPermission(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2500(Lcom/android/server/biometrics/fingerprint/FingerprintService;I)V
    .registers 2

    .line 98
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->startCurrentClient(I)V

    return-void
.end method

.method static synthetic access$2600(Lcom/android/server/biometrics/fingerprint/FingerprintService;Landroid/os/IBinder;Ljava/lang/String;)V
    .registers 3

    .line 98
    invoke-virtual {p0, p1, p2}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->cancelAuthenticationInternal(Landroid/os/IBinder;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2700(Lcom/android/server/biometrics/fingerprint/FingerprintService;Ljava/lang/String;)V
    .registers 2

    .line 98
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->checkPermission(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2800(Lcom/android/server/biometrics/fingerprint/FingerprintService;Landroid/os/IBinder;Ljava/lang/String;IIIZ)V
    .registers 7

    .line 98
    invoke-virtual/range {p0 .. p6}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->cancelAuthenticationInternal(Landroid/os/IBinder;Ljava/lang/String;IIIZ)V

    return-void
.end method

.method static synthetic access$2900(Lcom/android/server/biometrics/fingerprint/FingerprintService;Ljava/lang/String;)V
    .registers 2

    .line 98
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->checkPermission(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/biometrics/fingerprint/FingerprintService;I)V
    .registers 2

    .line 98
    invoke-direct {p0, p1}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->scheduleLockoutResetForUser(I)V

    return-void
.end method

.method static synthetic access$3000(Lcom/android/server/biometrics/fingerprint/FingerprintService;I)V
    .registers 2

    .line 98
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->setActiveUserInternal(I)V

    return-void
.end method

.method static synthetic access$3100(Lcom/android/server/biometrics/fingerprint/FingerprintService;Ljava/lang/String;)V
    .registers 2

    .line 98
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->checkPermission(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3200(Lcom/android/server/biometrics/fingerprint/FingerprintService;)Z
    .registers 1

    .line 98
    invoke-virtual {p0}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->isRestricted()Z

    move-result p0

    return p0
.end method

.method static synthetic access$3300(Lcom/android/server/biometrics/fingerprint/FingerprintService;)J
    .registers 3

    .line 98
    iget-wide v0, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService;->mHalDeviceId:J

    return-wide v0
.end method

.method static synthetic access$3400(Lcom/android/server/biometrics/fingerprint/FingerprintService;Lcom/android/server/biometrics/RemovalClient;)V
    .registers 2

    .line 98
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->removeInternal(Lcom/android/server/biometrics/RemovalClient;)V

    return-void
.end method

.method static synthetic access$3500(Lcom/android/server/biometrics/fingerprint/FingerprintService;Ljava/lang/String;)V
    .registers 2

    .line 98
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->checkPermission(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3600(Lcom/android/server/biometrics/fingerprint/FingerprintService;)Z
    .registers 1

    .line 98
    invoke-virtual {p0}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->isRestricted()Z

    move-result p0

    return p0
.end method

.method static synthetic access$3700(Lcom/android/server/biometrics/fingerprint/FingerprintService;)J
    .registers 3

    .line 98
    iget-wide v0, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService;->mHalDeviceId:J

    return-wide v0
.end method

.method static synthetic access$3800(Lcom/android/server/biometrics/fingerprint/FingerprintService;Lcom/android/server/biometrics/EnumerateClient;)V
    .registers 2

    .line 98
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->enumerateInternal(Lcom/android/server/biometrics/EnumerateClient;)V

    return-void
.end method

.method static synthetic access$3901(Lcom/android/server/biometrics/fingerprint/FingerprintService;Landroid/hardware/biometrics/IBiometricServiceLockoutResetCallback;)V
    .registers 2

    .line 98
    invoke-super {p0, p1}, Lcom/android/server/biometrics/BiometricServiceBase;->addLockoutResetCallback(Landroid/hardware/biometrics/IBiometricServiceLockoutResetCallback;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/biometrics/fingerprint/FingerprintService;Ljava/lang/String;)V
    .registers 2

    .line 98
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->checkPermission(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$4000(Lcom/android/server/biometrics/fingerprint/FingerprintService;Ljava/io/FileDescriptor;)V
    .registers 2

    .line 98
    invoke-direct {p0, p1}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->dumpProto(Ljava/io/FileDescriptor;)V

    return-void
.end method

.method static synthetic access$4100(Lcom/android/server/biometrics/fingerprint/FingerprintService;Ljava/io/PrintWriter;)V
    .registers 2

    .line 98
    invoke-direct {p0, p1}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->dumpInternal(Ljava/io/PrintWriter;)V

    return-void
.end method

.method static synthetic access$4200(Lcom/android/server/biometrics/fingerprint/FingerprintService;Ljava/lang/String;ZIII)Z
    .registers 6

    .line 98
    invoke-virtual/range {p0 .. p5}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->canUseBiometric(Ljava/lang/String;ZIII)Z

    move-result p0

    return p0
.end method

.method static synthetic access$4300(Lcom/android/server/biometrics/fingerprint/FingerprintService;)Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;
    .registers 1

    .line 98
    invoke-direct {p0}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->getFingerprintDaemon()Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$4400(Lcom/android/server/biometrics/fingerprint/FingerprintService;)J
    .registers 3

    .line 98
    iget-wide v0, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService;->mHalDeviceId:J

    return-wide v0
.end method

.method static synthetic access$4500(Lcom/android/server/biometrics/fingerprint/FingerprintService;Ljava/lang/String;)V
    .registers 2

    .line 98
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->checkPermission(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$4600(Lcom/android/server/biometrics/fingerprint/FingerprintService;I)Z
    .registers 2

    .line 98
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->isCurrentUserOrProfile(I)Z

    move-result p0

    return p0
.end method

.method static synthetic access$4700(Lcom/android/server/biometrics/fingerprint/FingerprintService;)Lcom/android/server/biometrics/BiometricServiceBase$H;
    .registers 1

    .line 98
    iget-object p0, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService;->mHandler:Lcom/android/server/biometrics/BiometricServiceBase$H;

    return-object p0
.end method

.method static synthetic access$4800(Lcom/android/server/biometrics/fingerprint/FingerprintService;Ljava/lang/String;ZIII)Z
    .registers 6

    .line 98
    invoke-virtual/range {p0 .. p5}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->canUseBiometric(Ljava/lang/String;ZIII)Z

    move-result p0

    return p0
.end method

.method static synthetic access$4900(Lcom/android/server/biometrics/fingerprint/FingerprintService;Ljava/lang/String;ZIII)Z
    .registers 6

    .line 98
    invoke-virtual/range {p0 .. p5}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->canUseBiometric(Ljava/lang/String;ZIII)Z

    move-result p0

    return p0
.end method

.method static synthetic access$500(Lcom/android/server/biometrics/fingerprint/FingerprintService;Landroid/os/IBinder;)J
    .registers 2

    .line 98
    invoke-direct {p0, p1}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->startPreEnroll(Landroid/os/IBinder;)J

    move-result-wide p0

    return-wide p0
.end method

.method static synthetic access$5001(Lcom/android/server/biometrics/fingerprint/FingerprintService;Ljava/lang/String;)J
    .registers 2

    .line 98
    invoke-super {p0, p1}, Lcom/android/server/biometrics/BiometricServiceBase;->getAuthenticatorId(Ljava/lang/String;)J

    move-result-wide p0

    return-wide p0
.end method

.method static synthetic access$5100(Lcom/android/server/biometrics/fingerprint/FingerprintService;Ljava/lang/String;)V
    .registers 2

    .line 98
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->checkPermission(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$5200(Lcom/android/server/biometrics/fingerprint/FingerprintService;)I
    .registers 1

    .line 98
    iget p0, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService;->mCurrentUserId:I

    return p0
.end method

.method static synthetic access$5300(Lcom/android/server/biometrics/fingerprint/FingerprintService;)Lcom/android/server/biometrics/BiometricServiceBase$H;
    .registers 1

    .line 98
    iget-object p0, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService;->mHandler:Lcom/android/server/biometrics/BiometricServiceBase$H;

    return-object p0
.end method

.method static synthetic access$5400(Lcom/android/server/biometrics/fingerprint/FingerprintService;Ljava/lang/String;)V
    .registers 2

    .line 98
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->checkPermission(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$5500(Lcom/android/server/biometrics/fingerprint/FingerprintService;)Lcom/android/server/biometrics/ClientMonitor;
    .registers 1

    .line 98
    invoke-virtual {p0}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->getCurrentClient()Lcom/android/server/biometrics/ClientMonitor;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$5600(Lcom/android/server/biometrics/fingerprint/FingerprintService;)Lcom/android/server/biometrics/ClientMonitor;
    .registers 1

    .line 98
    invoke-virtual {p0}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->getPendingClient()Lcom/android/server/biometrics/ClientMonitor;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$5700(Lcom/android/server/biometrics/fingerprint/FingerprintService;Ljava/lang/String;)V
    .registers 2

    .line 98
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->checkPermission(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$5800(Lcom/android/server/biometrics/fingerprint/FingerprintService;)Ljava/util/concurrent/CopyOnWriteArrayList;
    .registers 1

    .line 98
    iget-object p0, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService;->mClientActiveCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-object p0
.end method

.method static synthetic access$5900(Lcom/android/server/biometrics/fingerprint/FingerprintService;Ljava/lang/String;)V
    .registers 2

    .line 98
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->checkPermission(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/biometrics/fingerprint/FingerprintService;Ljava/lang/String;)V
    .registers 2

    .line 98
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->checkPermission(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$6200(Lcom/android/server/biometrics/fingerprint/FingerprintService;)Lcom/android/server/biometrics/BiometricServiceBase$H;
    .registers 1

    .line 98
    iget-object p0, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService;->mHandler:Lcom/android/server/biometrics/BiometricServiceBase$H;

    return-object p0
.end method

.method static synthetic access$6300(Lcom/android/server/biometrics/fingerprint/FingerprintService;)Lcom/android/server/biometrics/BiometricServiceBase$H;
    .registers 1

    .line 98
    iget-object p0, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService;->mHandler:Lcom/android/server/biometrics/BiometricServiceBase$H;

    return-object p0
.end method

.method static synthetic access$6400(Lcom/android/server/biometrics/fingerprint/FingerprintService;)Lcom/android/server/biometrics/BiometricServiceBase$H;
    .registers 1

    .line 98
    iget-object p0, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService;->mHandler:Lcom/android/server/biometrics/BiometricServiceBase$H;

    return-object p0
.end method

.method static synthetic access$6500(Lcom/android/server/biometrics/fingerprint/FingerprintService;)Lcom/android/server/biometrics/BiometricServiceBase$H;
    .registers 1

    .line 98
    iget-object p0, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService;->mHandler:Lcom/android/server/biometrics/BiometricServiceBase$H;

    return-object p0
.end method

.method static synthetic access$6600(Lcom/android/server/biometrics/fingerprint/FingerprintService;)Lcom/android/server/biometrics/BiometricServiceBase$H;
    .registers 1

    .line 98
    iget-object p0, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService;->mHandler:Lcom/android/server/biometrics/BiometricServiceBase$H;

    return-object p0
.end method

.method static synthetic access$6700(Lcom/android/server/biometrics/fingerprint/FingerprintService;)Lcom/android/server/biometrics/BiometricServiceBase$H;
    .registers 1

    .line 98
    iget-object p0, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService;->mHandler:Lcom/android/server/biometrics/BiometricServiceBase$H;

    return-object p0
.end method

.method static synthetic access$6801(Lcom/android/server/biometrics/fingerprint/FingerprintService;Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;I)V
    .registers 3

    .line 98
    invoke-super {p0, p1, p2}, Lcom/android/server/biometrics/BiometricServiceBase;->handleEnumerate(Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;I)V

    return-void
.end method

.method static synthetic access$6900(Lcom/android/server/biometrics/fingerprint/FingerprintService;)Lcom/android/server/biometrics/ClientMonitor;
    .registers 1

    .line 98
    invoke-virtual {p0}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->getCurrentClient()Lcom/android/server/biometrics/ClientMonitor;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$700(Lcom/android/server/biometrics/fingerprint/FingerprintService;Landroid/os/IBinder;)I
    .registers 2

    .line 98
    invoke-direct {p0, p1}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->startPostEnroll(Landroid/os/IBinder;)I

    move-result p0

    return p0
.end method

.method static synthetic access$7001(Lcom/android/server/biometrics/fingerprint/FingerprintService;Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;I)V
    .registers 3

    .line 98
    invoke-super {p0, p1, p2}, Lcom/android/server/biometrics/BiometricServiceBase;->handleRemoved(Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;I)V

    return-void
.end method

.method static synthetic access$7100(Lcom/android/server/biometrics/fingerprint/FingerprintService;)Lvendor/lineage/biometrics/fingerprint/inscreen/V1_0/IFingerprintInscreen;
    .registers 1

    .line 98
    invoke-direct {p0}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->getFingerprintInScreenDaemon()Lvendor/lineage/biometrics/fingerprint/inscreen/V1_0/IFingerprintInscreen;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$7201(Lcom/android/server/biometrics/fingerprint/FingerprintService;JII)V
    .registers 5

    .line 98
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/server/biometrics/BiometricServiceBase;->handleError(JII)V

    return-void
.end method

.method static synthetic access$7302(Lcom/android/server/biometrics/fingerprint/FingerprintService;Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;)Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;
    .registers 2

    .line 98
    iput-object p1, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService;->mDaemon:Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;

    return-object p1
.end method

.method static synthetic access$7402(Lcom/android/server/biometrics/fingerprint/FingerprintService;J)J
    .registers 3

    .line 98
    iput-wide p1, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService;->mHalDeviceId:J

    return-wide p1
.end method

.method static synthetic access$7502(Lcom/android/server/biometrics/fingerprint/FingerprintService;I)I
    .registers 2

    .line 98
    iput p1, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService;->mCurrentUserId:I

    return p1
.end method

.method static synthetic access$7601(Lcom/android/server/biometrics/fingerprint/FingerprintService;Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;Ljava/util/ArrayList;)V
    .registers 3

    .line 98
    invoke-super {p0, p1, p2}, Lcom/android/server/biometrics/BiometricServiceBase;->handleAuthenticated(Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;Ljava/util/ArrayList;)V

    return-void
.end method

.method static synthetic access$7700(Lcom/android/server/biometrics/fingerprint/FingerprintService;)Z
    .registers 1

    .line 98
    iget-boolean p0, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService;->mHasFod:Z

    return p0
.end method

.method static synthetic access$7800(Lcom/android/server/biometrics/fingerprint/FingerprintService;)Lcom/android/internal/statusbar/IStatusBarService;
    .registers 1

    .line 98
    iget-object p0, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    return-object p0
.end method

.method static synthetic access$7901(Lcom/android/server/biometrics/fingerprint/FingerprintService;JII)V
    .registers 5

    .line 98
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/server/biometrics/BiometricServiceBase;->handleAcquired(JII)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/server/biometrics/fingerprint/FingerprintService;Ljava/lang/String;)V
    .registers 2

    .line 98
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->checkPermission(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$8001(Lcom/android/server/biometrics/fingerprint/FingerprintService;Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;I)V
    .registers 3

    .line 98
    invoke-super {p0, p1, p2}, Lcom/android/server/biometrics/BiometricServiceBase;->handleEnrollResult(Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;I)V

    return-void
.end method

.method static synthetic access$8100(Lcom/android/server/biometrics/fingerprint/FingerprintService;)Lcom/android/internal/statusbar/IStatusBarService;
    .registers 1

    .line 98
    iget-object p0, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    return-object p0
.end method

.method static synthetic access$8200(Lcom/android/server/biometrics/fingerprint/FingerprintService;)Z
    .registers 1

    .line 98
    iget-boolean p0, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService;->mIsKeyguard:Z

    return p0
.end method

.method static synthetic access$8300(Lcom/android/server/biometrics/fingerprint/FingerprintService;)Lcom/android/internal/statusbar/IStatusBarService;
    .registers 1

    .line 98
    iget-object p0, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    return-object p0
.end method

.method static synthetic access$8400(Lcom/android/server/biometrics/fingerprint/FingerprintService;)Lcom/android/internal/statusbar/IStatusBarService;
    .registers 1

    .line 98
    iget-object p0, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    return-object p0
.end method

.method static synthetic access$8500(Lcom/android/server/biometrics/fingerprint/FingerprintService;)Lcom/android/internal/statusbar/IStatusBarService;
    .registers 1

    .line 98
    iget-object p0, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    return-object p0
.end method

.method static synthetic access$900(Lcom/android/server/biometrics/fingerprint/FingerprintService;)Z
    .registers 1

    .line 98
    invoke-virtual {p0}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->isRestricted()Z

    move-result p0

    return p0
.end method

.method private cancelLockoutResetForUser(I)V
    .registers 3

    .line 1102
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService;->mAlarmManager:Landroid/app/AlarmManager;

    invoke-direct {p0, p1}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->getLockoutResetIntentForUser(I)Landroid/app/PendingIntent;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 1103
    return-void
.end method

.method private dumpInternal(Ljava/io/PrintWriter;)V
    .registers 11

    .line 1118
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 1120
    :try_start_5
    const-string/jumbo v1, "service"

    const-string v2, "Fingerprint Manager"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1122
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 1123
    invoke-virtual {p0}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_22
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_e3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/UserInfo;

    .line 1124
    invoke-virtual {v3}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v3

    .line 1125
    invoke-virtual {p0}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->getBiometricUtils()Lcom/android/server/biometrics/BiometricUtils;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-interface {v4, v5, v3}, Lcom/android/server/biometrics/BiometricUtils;->getBiometricsForUser(Landroid/content/Context;I)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    .line 1126
    iget-object v5, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService;->mPerformanceMap:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/biometrics/BiometricServiceBase$PerformanceStats;

    .line 1127
    iget-object v6, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService;->mCryptoPerformanceMap:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/biometrics/BiometricServiceBase$PerformanceStats;

    .line 1128
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7}, Lorg/json/JSONObject;-><init>()V

    .line 1129
    const-string v8, "id"

    invoke-virtual {v7, v8, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1130
    const-string v3, "count"

    invoke-virtual {v7, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1131
    const-string v3, "accept"

    const/4 v4, 0x0

    if-eqz v5, :cond_75

    iget v8, v5, Lcom/android/server/biometrics/BiometricServiceBase$PerformanceStats;->accept:I

    goto :goto_76

    :cond_75
    move v8, v4

    :goto_76
    invoke-virtual {v7, v3, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1132
    const-string/jumbo v3, "reject"

    if-eqz v5, :cond_81

    iget v8, v5, Lcom/android/server/biometrics/BiometricServiceBase$PerformanceStats;->reject:I

    goto :goto_82

    :cond_81
    move v8, v4

    :goto_82
    invoke-virtual {v7, v3, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1133
    const-string v3, "acquire"

    if-eqz v5, :cond_8c

    iget v8, v5, Lcom/android/server/biometrics/BiometricServiceBase$PerformanceStats;->acquire:I

    goto :goto_8d

    :cond_8c
    move v8, v4

    :goto_8d
    invoke-virtual {v7, v3, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1134
    const-string v3, "lockout"

    if-eqz v5, :cond_97

    iget v8, v5, Lcom/android/server/biometrics/BiometricServiceBase$PerformanceStats;->lockout:I

    goto :goto_98

    :cond_97
    move v8, v4

    :goto_98
    invoke-virtual {v7, v3, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1135
    const-string/jumbo v3, "permanentLockout"

    if-eqz v5, :cond_a3

    iget v5, v5, Lcom/android/server/biometrics/BiometricServiceBase$PerformanceStats;->permanentLockout:I

    goto :goto_a4

    :cond_a3
    move v5, v4

    :goto_a4
    invoke-virtual {v7, v3, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1138
    const-string v3, "acceptCrypto"

    if-eqz v6, :cond_ae

    iget v5, v6, Lcom/android/server/biometrics/BiometricServiceBase$PerformanceStats;->accept:I

    goto :goto_af

    :cond_ae
    move v5, v4

    :goto_af
    invoke-virtual {v7, v3, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1139
    const-string/jumbo v3, "rejectCrypto"

    if-eqz v6, :cond_ba

    iget v5, v6, Lcom/android/server/biometrics/BiometricServiceBase$PerformanceStats;->reject:I

    goto :goto_bb

    :cond_ba
    move v5, v4

    :goto_bb
    invoke-virtual {v7, v3, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1140
    const-string v3, "acquireCrypto"

    if-eqz v6, :cond_c5

    iget v5, v6, Lcom/android/server/biometrics/BiometricServiceBase$PerformanceStats;->acquire:I

    goto :goto_c6

    :cond_c5
    move v5, v4

    :goto_c6
    invoke-virtual {v7, v3, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1141
    const-string v3, "lockoutCrypto"

    if-eqz v6, :cond_d0

    iget v5, v6, Lcom/android/server/biometrics/BiometricServiceBase$PerformanceStats;->lockout:I

    goto :goto_d1

    :cond_d0
    move v5, v4

    :goto_d1
    invoke-virtual {v7, v3, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1142
    const-string/jumbo v3, "permanentLockoutCrypto"

    .line 1143
    if-eqz v6, :cond_db

    iget v4, v6, Lcom/android/server/biometrics/BiometricServiceBase$PerformanceStats;->permanentLockout:I

    .line 1142
    :cond_db
    invoke-virtual {v7, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1144
    invoke-virtual {v1, v7}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 1145
    goto/16 :goto_22

    .line 1147
    :cond_e3
    const-string/jumbo v2, "prints"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_e9
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_e9} :catch_ea

    .line 1150
    goto :goto_f2

    .line 1148
    :catch_ea
    move-exception v1

    .line 1149
    const-string v2, "FingerprintService"

    const-string v3, "dump formatting failure"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1151
    :goto_f2
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1152
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HAL deaths since last reboot: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService;->mHALDeathCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1153
    return-void
.end method

.method private dumpProto(Ljava/io/FileDescriptor;)V
    .registers 18

    .line 1156
    move-object/from16 v0, p0

    new-instance v1, Landroid/util/proto/ProtoOutputStream;

    move-object/from16 v2, p1

    invoke-direct {v1, v2}, Landroid/util/proto/ProtoOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 1157
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_19
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_e0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/UserInfo;

    .line 1158
    invoke-virtual {v3}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v3

    .line 1160
    const-wide v4, 0x20b00000001L

    invoke-virtual {v1, v4, v5}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v4

    .line 1162
    const-wide v6, 0x10500000001L

    invoke-virtual {v1, v6, v7, v3}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1163
    nop

    .line 1164
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->getBiometricUtils()Lcom/android/server/biometrics/BiometricUtils;

    move-result-object v8

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-interface {v8, v9, v3}, Lcom/android/server/biometrics/BiometricUtils;->getBiometricsForUser(Landroid/content/Context;I)Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    .line 1163
    const-wide v9, 0x10500000002L

    invoke-virtual {v1, v9, v10, v8}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1167
    iget-object v8, v0, Lcom/android/server/biometrics/fingerprint/FingerprintService;->mPerformanceMap:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v8, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/biometrics/BiometricServiceBase$PerformanceStats;

    .line 1168
    const-wide v11, 0x10500000003L

    if-eqz v8, :cond_99

    .line 1169
    const-wide v13, 0x10b00000003L

    invoke-virtual {v1, v13, v14}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v13

    .line 1170
    iget v15, v8, Lcom/android/server/biometrics/BiometricServiceBase$PerformanceStats;->accept:I

    invoke-virtual {v1, v6, v7, v15}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1171
    iget v15, v8, Lcom/android/server/biometrics/BiometricServiceBase$PerformanceStats;->reject:I

    invoke-virtual {v1, v9, v10, v15}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1172
    iget v15, v8, Lcom/android/server/biometrics/BiometricServiceBase$PerformanceStats;->acquire:I

    invoke-virtual {v1, v11, v12, v15}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1173
    iget v15, v8, Lcom/android/server/biometrics/BiometricServiceBase$PerformanceStats;->lockout:I

    const-wide v11, 0x10500000004L

    invoke-virtual {v1, v11, v12, v15}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1174
    iget v8, v8, Lcom/android/server/biometrics/BiometricServiceBase$PerformanceStats;->permanentLockout:I

    const-wide v11, 0x10500000005L

    invoke-virtual {v1, v11, v12, v8}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1175
    invoke-virtual {v1, v13, v14}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 1180
    :cond_99
    iget-object v8, v0, Lcom/android/server/biometrics/fingerprint/FingerprintService;->mCryptoPerformanceMap:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v8, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/biometrics/BiometricServiceBase$PerformanceStats;

    .line 1181
    if-eqz v3, :cond_db

    .line 1182
    const-wide v11, 0x10b00000004L

    invoke-virtual {v1, v11, v12}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v11

    .line 1183
    iget v8, v3, Lcom/android/server/biometrics/BiometricServiceBase$PerformanceStats;->accept:I

    invoke-virtual {v1, v6, v7, v8}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1184
    iget v6, v3, Lcom/android/server/biometrics/BiometricServiceBase$PerformanceStats;->reject:I

    invoke-virtual {v1, v9, v10, v6}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1185
    iget v6, v3, Lcom/android/server/biometrics/BiometricServiceBase$PerformanceStats;->acquire:I

    const-wide v7, 0x10500000003L

    invoke-virtual {v1, v7, v8, v6}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1186
    iget v6, v3, Lcom/android/server/biometrics/BiometricServiceBase$PerformanceStats;->lockout:I

    const-wide v7, 0x10500000004L

    invoke-virtual {v1, v7, v8, v6}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1187
    iget v3, v3, Lcom/android/server/biometrics/BiometricServiceBase$PerformanceStats;->permanentLockout:I

    const-wide v6, 0x10500000005L

    invoke-virtual {v1, v6, v7, v3}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1188
    invoke-virtual {v1, v11, v12}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 1191
    :cond_db
    invoke-virtual {v1, v4, v5}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 1192
    goto/16 :goto_19

    .line 1193
    :cond_e0
    invoke-virtual {v1}, Landroid/util/proto/ProtoOutputStream;->flush()V

    .line 1194
    iget-object v1, v0, Lcom/android/server/biometrics/fingerprint/FingerprintService;->mPerformanceMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 1195
    iget-object v0, v0, Lcom/android/server/biometrics/fingerprint/FingerprintService;->mCryptoPerformanceMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 1196
    return-void
.end method

.method private declared-synchronized getFingerprintDaemon()Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;
    .registers 8

    monitor-enter p0

    .line 998
    :try_start_1
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService;->mDaemon:Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;

    if-nez v0, :cond_8f

    .line 999
    const-string v0, "FingerprintService"

    const-string v1, "mDaemon was null, reconnect to fingerprint"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_93

    .line 1001
    :try_start_c
    invoke-static {}, Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;->getService()Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService;->mDaemon:Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;
    :try_end_12
    .catch Ljava/util/NoSuchElementException; {:try_start_c .. :try_end_12} :catch_1c
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_12} :catch_13
    .catchall {:try_start_c .. :try_end_12} :catchall_93

    goto :goto_1d

    .line 1004
    :catch_13
    move-exception v0

    .line 1005
    :try_start_14
    const-string v1, "FingerprintService"

    const-string v2, "Failed to get biometric interface"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1e

    .line 1002
    :catch_1c
    move-exception v0

    .line 1006
    :goto_1d
    nop

    .line 1007
    :goto_1e
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService;->mDaemon:Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;

    const/4 v1, 0x0

    if-nez v0, :cond_2c

    .line 1008
    const-string v0, "FingerprintService"

    const-string v2, "fingerprint HIDL not available"

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2a
    .catchall {:try_start_14 .. :try_end_2a} :catchall_93

    .line 1009
    monitor-exit p0

    return-object v1

    .line 1012
    :cond_2c
    :try_start_2c
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService;->mDaemon:Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;

    invoke-interface {v0}, Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;->asBinder()Landroid/os/IHwBinder;

    move-result-object v0

    const-wide/16 v2, 0x0

    invoke-interface {v0, p0, v2, v3}, Landroid/os/IHwBinder;->linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
    :try_end_37
    .catchall {:try_start_2c .. :try_end_37} :catchall_93

    .line 1015
    :try_start_37
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService;->mDaemon:Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;

    iget-object v4, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService;->mDaemonCallback:Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprintClientCallback;

    invoke-interface {v0, v4}, Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;->setNotify(Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprintClientCallback;)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService;->mHalDeviceId:J
    :try_end_41
    .catch Landroid/os/RemoteException; {:try_start_37 .. :try_end_41} :catch_42
    .catchall {:try_start_37 .. :try_end_41} :catchall_93

    .line 1019
    goto :goto_4c

    .line 1016
    :catch_42
    move-exception v0

    .line 1017
    :try_start_43
    const-string v4, "FingerprintService"

    const-string v5, "Failed to open fingerprint HAL"

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1018
    iput-object v1, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService;->mDaemon:Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;

    .line 1021
    :goto_4c
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

    .line 1022
    iget-wide v4, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService;->mHalDeviceId:J

    cmp-long v0, v4, v2

    if-eqz v0, :cond_7c

    .line 1023
    invoke-virtual {p0}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->loadAuthenticatorIds()V

    .line 1024
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    invoke-virtual {p0, v0, v1}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->updateActiveGroup(ILjava/lang/String;)V

    .line 1025
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->doTemplateCleanupForUser(I)V

    goto :goto_8f

    .line 1027
    :cond_7c
    const-string v0, "FingerprintService"

    const-string v2, "Failed to open Fingerprint HAL!"

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1028
    invoke-virtual {p0}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "fingerprintd_openhal_error"

    const/4 v3, 0x1

    invoke-static {v0, v2, v3}, Lcom/android/internal/logging/MetricsLogger;->count(Landroid/content/Context;Ljava/lang/String;I)V

    .line 1029
    iput-object v1, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService;->mDaemon:Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;

    .line 1032
    :cond_8f
    :goto_8f
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService;->mDaemon:Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;
    :try_end_91
    .catchall {:try_start_43 .. :try_end_91} :catchall_93

    monitor-exit p0

    return-object v0

    .line 997
    :catchall_93
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized getFingerprintInScreenDaemon()Lvendor/lineage/biometrics/fingerprint/inscreen/V1_0/IFingerprintInscreen;
    .registers 5

    monitor-enter p0

    .line 1036
    :try_start_1
    iget-boolean v0, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService;->mHasFod:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_33

    if-nez v0, :cond_8

    .line 1037
    const/4 v0, 0x0

    monitor-exit p0

    return-object v0

    .line 1040
    :cond_8
    :try_start_8
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService;->mFingerprintInscreenDaemon:Lvendor/lineage/biometrics/fingerprint/inscreen/V1_0/IFingerprintInscreen;
    :try_end_a
    .catchall {:try_start_8 .. :try_end_a} :catchall_33

    if-nez v0, :cond_2f

    .line 1042
    :try_start_c
    invoke-static {}, Lvendor/lineage/biometrics/fingerprint/inscreen/V1_0/IFingerprintInscreen;->getService()Lvendor/lineage/biometrics/fingerprint/inscreen/V1_0/IFingerprintInscreen;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService;->mFingerprintInscreenDaemon:Lvendor/lineage/biometrics/fingerprint/inscreen/V1_0/IFingerprintInscreen;

    .line 1043
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService;->mFingerprintInscreenDaemon:Lvendor/lineage/biometrics/fingerprint/inscreen/V1_0/IFingerprintInscreen;

    if-eqz v0, :cond_26

    .line 1044
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService;->mFingerprintInscreenDaemon:Lvendor/lineage/biometrics/fingerprint/inscreen/V1_0/IFingerprintInscreen;

    invoke-interface {v0}, Lvendor/lineage/biometrics/fingerprint/inscreen/V1_0/IFingerprintInscreen;->asBinder()Landroid/os/IHwBinder;

    move-result-object v0

    new-instance v1, Lcom/android/server/biometrics/fingerprint/-$$Lambda$FingerprintService$8MytJsBBEpRfuLa8XnmJDOsZIC0;

    invoke-direct {v1, p0}, Lcom/android/server/biometrics/fingerprint/-$$Lambda$FingerprintService$8MytJsBBEpRfuLa8XnmJDOsZIC0;-><init>(Lcom/android/server/biometrics/fingerprint/FingerprintService;)V

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/os/IHwBinder;->linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
    :try_end_26
    .catch Ljava/util/NoSuchElementException; {:try_start_c .. :try_end_26} :catch_27
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_26} :catch_27
    .catchall {:try_start_c .. :try_end_26} :catchall_33

    .line 1050
    :cond_26
    goto :goto_2f

    .line 1048
    :catch_27
    move-exception v0

    .line 1049
    :try_start_28
    const-string v1, "FingerprintService"

    const-string v2, "Failed to get IFingerprintInscreen interface"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1052
    :cond_2f
    :goto_2f
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService;->mFingerprintInscreenDaemon:Lvendor/lineage/biometrics/fingerprint/inscreen/V1_0/IFingerprintInscreen;
    :try_end_31
    .catchall {:try_start_28 .. :try_end_31} :catchall_33

    monitor-exit p0

    return-object v0

    .line 1035
    :catchall_33
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private getLockoutResetIntentForUser(I)Landroid/app/PendingIntent;
    .registers 5

    .line 1112
    invoke-virtual {p0}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    .line 1113
    invoke-virtual {p0}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->getLockoutResetIntent()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "lockout_reset_user"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v1

    .line 1112
    const/high16 v2, 0x8000000

    invoke-static {v0, p1, v1, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    return-object p1
.end method

.method public static synthetic lambda$YOMIOLvco2SvXVeJIulOSVKdX7A(Lcom/android/server/biometrics/fingerprint/FingerprintService;)Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;
    .registers 1

    invoke-direct {p0}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->getFingerprintDaemon()Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;

    move-result-object p0

    return-object p0
.end method

.method private resetFailedAttemptsForUser(ZI)V
    .registers 6

    .line 1087
    invoke-virtual {p0}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->getLockoutMode()I

    move-result v0

    if-eqz v0, :cond_1e

    .line 1088
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

    .line 1090
    :cond_1e
    if-eqz p1, :cond_26

    .line 1091
    iget-object p1, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService;->mFailedAttempts:Landroid/util/SparseIntArray;

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 1093
    :cond_26
    iget-object p1, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService;->mTimedLockoutCleared:Landroid/util/SparseBooleanArray;

    const/4 v0, 0x1

    invoke-virtual {p1, p2, v0}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 1096
    invoke-direct {p0, p2}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->cancelLockoutResetForUser(I)V

    .line 1097
    invoke-virtual {p0}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->notifyLockoutResetMonitors()V

    .line 1098
    return-void
.end method

.method private scheduleLockoutResetForUser(I)V
    .registers 7

    .line 1106
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService;->mAlarmManager:Landroid/app/AlarmManager;

    .line 1107
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    const-wide/16 v3, 0x7530

    add-long/2addr v1, v3

    .line 1108
    invoke-direct {p0, p1}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->getLockoutResetIntentForUser(I)Landroid/app/PendingIntent;

    move-result-object p1

    .line 1106
    const/4 v3, 0x2

    invoke-virtual {v0, v3, v1, v2, p1}, Landroid/app/AlarmManager;->setExact(IJLandroid/app/PendingIntent;)V

    .line 1109
    return-void
.end method

.method private startPostEnroll(Landroid/os/IBinder;)I
    .registers 5

    .line 1070
    invoke-direct {p0}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->getFingerprintDaemon()Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;

    move-result-object p1

    .line 1071
    const/4 v0, 0x0

    const-string v1, "FingerprintService"

    if-nez p1, :cond_10

    .line 1072
    const-string/jumbo p1, "startPostEnroll: no fingerprint HAL!"

    invoke-static {v1, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1073
    return v0

    .line 1076
    :cond_10
    :try_start_10
    invoke-interface {p1}, Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;->postEnroll()I

    move-result p1
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_14} :catch_15

    return p1

    .line 1077
    :catch_15
    move-exception p1

    .line 1078
    const-string/jumbo v2, "startPostEnroll failed"

    invoke-static {v1, v2, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1080
    return v0
.end method

.method private startPreEnroll(Landroid/os/IBinder;)J
    .registers 6

    .line 1056
    invoke-direct {p0}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->getFingerprintDaemon()Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;

    move-result-object p1

    .line 1057
    const-wide/16 v0, 0x0

    const-string v2, "FingerprintService"

    if-nez p1, :cond_11

    .line 1058
    const-string/jumbo p1, "startPreEnroll: no fingerprint HAL!"

    invoke-static {v2, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1059
    return-wide v0

    .line 1062
    :cond_11
    :try_start_11
    invoke-interface {p1}, Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;->preEnroll()J

    move-result-wide v0
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_15} :catch_16

    return-wide v0

    .line 1063
    :catch_16
    move-exception p1

    .line 1064
    const-string/jumbo v3, "startPreEnroll failed"

    invoke-static {v2, v3, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1066
    return-wide v0
.end method


# virtual methods
.method protected checkAppOps(ILjava/lang/String;)Z
    .registers 6

    .line 945
    nop

    .line 946
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService;->mAppOps:Landroid/app/AppOpsManager;

    const/16 v1, 0x4e

    invoke-virtual {v0, v1, p1, p2}, Landroid/app/AppOpsManager;->noteOp(IILjava/lang/String;)I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_d

    .line 948
    goto :goto_19

    .line 949
    :cond_d
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService;->mAppOps:Landroid/app/AppOpsManager;

    const/16 v2, 0x37

    invoke-virtual {v0, v2, p1, p2}, Landroid/app/AppOpsManager;->noteOp(IILjava/lang/String;)I

    move-result p1

    if-nez p1, :cond_18

    .line 951
    goto :goto_19

    .line 949
    :cond_18
    const/4 v1, 0x0

    .line 953
    :goto_19
    return v1
.end method

.method protected checkUseBiometricPermission()V
    .registers 3

    .line 937
    invoke-virtual {p0}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.USE_FINGERPRINT"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_11

    .line 939
    const-string v0, "android.permission.USE_BIOMETRIC"

    invoke-virtual {p0, v0}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->checkPermission(Ljava/lang/String;)V

    .line 941
    :cond_11
    return-void
.end method

.method protected getBiometricUtils()Lcom/android/server/biometrics/BiometricUtils;
    .registers 2

    .line 834
    invoke-static {}, Lcom/android/server/biometrics/fingerprint/FingerprintUtils;->getInstance()Lcom/android/server/biometrics/fingerprint/FingerprintUtils;

    move-result-object v0

    return-object v0
.end method

.method protected getConstants()Lcom/android/server/biometrics/Constants;
    .registers 2

    .line 839
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService;->mFingerprintConstants:Lcom/android/server/biometrics/fingerprint/FingerprintConstants;

    return-object v0
.end method

.method protected getDaemonWrapper()Lcom/android/server/biometrics/BiometricServiceBase$DaemonWrapper;
    .registers 2

    .line 829
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService;->mDaemonWrapper:Lcom/android/server/biometrics/BiometricServiceBase$DaemonWrapper;

    return-object v0
.end method

.method protected getEnrolledTemplates(I)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/hardware/fingerprint/Fingerprint;",
            ">;"
        }
    .end annotation

    .line 958
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    if-eq p1, v0, :cond_b

    .line 959
    const-string v0, "android.permission.INTERACT_ACROSS_USERS"

    invoke-virtual {p0, v0}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->checkPermission(Ljava/lang/String;)V

    .line 961
    :cond_b
    invoke-virtual {p0}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->getBiometricUtils()Lcom/android/server/biometrics/BiometricUtils;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lcom/android/server/biometrics/BiometricUtils;->getBiometricsForUser(Landroid/content/Context;I)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method protected getHalDeviceId()J
    .registers 3

    .line 919
    iget-wide v0, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService;->mHalDeviceId:J

    return-wide v0
.end method

.method protected getLockoutBroadcastPermission()Ljava/lang/String;
    .registers 2

    .line 914
    const-string v0, "android.permission.RESET_FINGERPRINT_LOCKOUT"

    return-object v0
.end method

.method protected getLockoutMode()I
    .registers 5

    .line 984
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    .line 985
    iget-object v1, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService;->mFailedAttempts:Landroid/util/SparseIntArray;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v1

    .line 986
    const/16 v3, 0x14

    if-lt v1, v3, :cond_11

    .line 987
    const/4 v0, 0x2

    return v0

    .line 988
    :cond_11
    if-lez v1, :cond_21

    iget-object v3, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService;->mTimedLockoutCleared:Landroid/util/SparseBooleanArray;

    .line 989
    invoke-virtual {v3, v0, v2}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v0

    if-nez v0, :cond_21

    rem-int/lit8 v1, v1, 0x5

    if-nez v1, :cond_21

    .line 991
    const/4 v0, 0x1

    return v0

    .line 993
    :cond_21
    return v2
.end method

.method protected getLockoutResetIntent()Ljava/lang/String;
    .registers 2

    .line 909
    const-string v0, "com.android.server.biometrics.fingerprint.ACTION_LOCKOUT_RESET"

    return-object v0
.end method

.method protected getManageBiometricPermission()Ljava/lang/String;
    .registers 2

    .line 932
    const-string v0, "android.permission.MANAGE_FINGERPRINT"

    return-object v0
.end method

.method protected getTag()Ljava/lang/String;
    .registers 2

    .line 824
    const-string v0, "FingerprintService"

    return-object v0
.end method

.method protected hasEnrolledBiometrics(I)Z
    .registers 4

    .line 924
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    if-eq p1, v0, :cond_b

    .line 925
    const-string v0, "android.permission.INTERACT_ACROSS_USERS"

    invoke-virtual {p0, v0}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->checkPermission(Ljava/lang/String;)V

    .line 927
    :cond_b
    invoke-virtual {p0}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->getBiometricUtils()Lcom/android/server/biometrics/BiometricUtils;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lcom/android/server/biometrics/BiometricUtils;->getBiometricsForUser(Landroid/content/Context;I)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_1f

    const/4 p1, 0x1

    goto :goto_20

    :cond_1f
    const/4 p1, 0x0

    :goto_20
    return p1
.end method

.method protected hasReachedEnrollmentLimit(I)Z
    .registers 4

    .line 844
    invoke-virtual {p0}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e005d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 846
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->getEnrolledTemplates(I)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    .line 847
    if-lt p1, v0, :cond_22

    .line 848
    const-string p1, "FingerprintService"

    const-string v0, "Too many fingerprints registered"

    invoke-static {p1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 849
    const/4 p1, 0x1

    return p1

    .line 851
    :cond_22
    const/4 p1, 0x0

    return p1
.end method

.method public synthetic lambda$getFingerprintInScreenDaemon$0$FingerprintService(J)V
    .registers 3

    .line 1045
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService;->mFingerprintInscreenDaemon:Lvendor/lineage/biometrics/fingerprint/inscreen/V1_0/IFingerprintInscreen;

    .line 1046
    return-void
.end method

.method protected notifyClientActiveCallbacks(Z)V
    .registers 6

    .line 966
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService;->mClientActiveCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 967
    const/4 v1, 0x0

    :goto_3
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_20

    .line 969
    :try_start_9
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/fingerprint/IFingerprintClientActiveCallback;

    invoke-interface {v2, p1}, Landroid/hardware/fingerprint/IFingerprintClientActiveCallback;->onClientActiveChanged(Z)V
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_12} :catch_13

    .line 973
    goto :goto_1d

    .line 970
    :catch_13
    move-exception v2

    .line 972
    iget-object v2, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService;->mClientActiveCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 967
    :goto_1d
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 975
    :cond_20
    return-void
.end method

.method public onStart()V
    .registers 4

    .line 817
    invoke-super {p0}, Lcom/android/server/biometrics/BiometricServiceBase;->onStart()V

    .line 818
    new-instance v0, Lcom/android/server/biometrics/fingerprint/FingerprintService$FingerprintServiceWrapper;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/biometrics/fingerprint/FingerprintService$FingerprintServiceWrapper;-><init>(Lcom/android/server/biometrics/fingerprint/FingerprintService;Lcom/android/server/biometrics/fingerprint/FingerprintService$1;)V

    const-string v1, "fingerprint"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 819
    invoke-static {}, Lcom/android/server/SystemServerInitThreadPool;->get()Lcom/android/server/SystemServerInitThreadPool;

    move-result-object v0

    new-instance v1, Lcom/android/server/biometrics/fingerprint/-$$Lambda$FingerprintService$YOMIOLvco2SvXVeJIulOSVKdX7A;

    invoke-direct {v1, p0}, Lcom/android/server/biometrics/fingerprint/-$$Lambda$FingerprintService$YOMIOLvco2SvXVeJIulOSVKdX7A;-><init>(Lcom/android/server/biometrics/fingerprint/FingerprintService;)V

    const-string v2, "FingerprintService.onStart"

    invoke-virtual {v0, v1, v2}, Lcom/android/server/SystemServerInitThreadPool;->submit(Ljava/lang/Runnable;Ljava/lang/String;)Ljava/util/concurrent/Future;

    .line 820
    return-void
.end method

.method public serviceDied(J)V
    .registers 3

    .line 856
    invoke-super {p0, p1, p2}, Lcom/android/server/biometrics/BiometricServiceBase;->serviceDied(J)V

    .line 857
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService;->mDaemon:Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;

    .line 858
    return-void
.end method

.method protected statsModality()I
    .registers 2

    .line 979
    const/4 v0, 0x1

    return v0
.end method

.method protected updateActiveGroup(ILjava/lang/String;)V
    .registers 8

    .line 862
    const-string v0, "FingerprintService"

    invoke-direct {p0}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->getFingerprintDaemon()Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;

    move-result-object v1

    .line 864
    if-eqz v1, :cond_a3

    .line 866
    :try_start_8
    invoke-virtual {p0, p2, p1}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->getUserOrWorkProfileId(Ljava/lang/String;I)I

    move-result p1

    .line 867
    iget v2, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService;->mCurrentUserId:I

    if-eq p1, v2, :cond_82

    .line 868
    sget v2, Landroid/os/Build$VERSION;->FIRST_SDK_INT:I

    .line 869
    const/4 v3, 0x1

    if-ge v2, v3, :cond_2e

    .line 870
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

    .line 874
    :cond_2e
    const/16 v3, 0x1b

    if-gt v2, v3, :cond_37

    .line 875
    invoke-static {p1}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object v2

    goto :goto_3b

    .line 877
    :cond_37
    invoke-static {p1}, Landroid/os/Environment;->getDataVendorDeDirectory(I)Ljava/io/File;

    move-result-object v2

    .line 880
    :goto_3b
    new-instance v3, Ljava/io/File;

    const-string v4, "fpdata"

    invoke-direct {v3, v2, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 881
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_73

    .line 882
    invoke-virtual {v3}, Ljava/io/File;->mkdir()Z

    move-result v2

    if-nez v2, :cond_67

    .line 883
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Cannot make directory: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 884
    return-void

    .line 889
    :cond_67
    invoke-static {v3}, Landroid/os/SELinux;->restorecon(Ljava/io/File;)Z

    move-result v2

    if-nez v2, :cond_73

    .line 890
    const-string p1, "Restorecons failed. Directory will have wrong label."

    invoke-static {v0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 891
    return-void

    .line 895
    :cond_73
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;->setActiveGroup(ILjava/lang/String;)I

    .line 896
    iput p1, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService;->mCurrentUserId:I

    .line 897
    invoke-virtual {p0, p2}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->isKeyguard(Ljava/lang/String;)Z

    move-result p2

    iput-boolean p2, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService;->mIsKeyguard:Z

    .line 899
    :cond_82
    iget-object p2, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService;->mAuthenticatorIds:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 900
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->hasEnrolledBiometrics(I)Z

    move-result p1

    if-eqz p1, :cond_93

    invoke-interface {v1}, Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;->getAuthenticatorId()J

    move-result-wide v3

    goto :goto_95

    :cond_93
    const-wide/16 v3, 0x0

    :goto_95
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    .line 899
    invoke-interface {p2, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_9c
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_9c} :catch_9d

    .line 903
    goto :goto_a3

    .line 901
    :catch_9d
    move-exception p1

    .line 902
    const-string p2, "Failed to setActiveGroup():"

    invoke-static {v0, p2, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 905
    :cond_a3
    :goto_a3
    return-void
.end method
