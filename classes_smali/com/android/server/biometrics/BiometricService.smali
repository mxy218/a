.class public Lcom/android/server/biometrics/BiometricService;
.super Lcom/android/server/SystemService;
.source "BiometricService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/biometrics/BiometricService$BiometricServiceWrapper;,
        Lcom/android/server/biometrics/BiometricService$EnabledOnKeyguardCallback;,
        Lcom/android/server/biometrics/BiometricService$SettingObserver;,
        Lcom/android/server/biometrics/BiometricService$Authenticator;,
        Lcom/android/server/biometrics/BiometricService$BiometricTaskStackListener;,
        Lcom/android/server/biometrics/BiometricService$AuthSession;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = true

.field private static final FEATURE_ID:[I

.field private static final MSG_AUTHENTICATE:I = 0x9

.field private static final MSG_CANCEL_AUTHENTICATION:I = 0xa

.field private static final MSG_ON_ACQUIRED:I = 0x5

.field private static final MSG_ON_AUTHENTICATION_FAILED:I = 0x3

.field private static final MSG_ON_AUTHENTICATION_SUCCEEDED:I = 0x2

.field private static final MSG_ON_CONFIRM_DEVICE_CREDENTIAL_ERROR:I = 0xc

.field private static final MSG_ON_CONFIRM_DEVICE_CREDENTIAL_SUCCESS:I = 0xb

.field private static final MSG_ON_DISMISSED:I = 0x6

.field private static final MSG_ON_ERROR:I = 0x4

.field private static final MSG_ON_READY_FOR_AUTHENTICATION:I = 0x8

.field private static final MSG_ON_TASK_STACK_CHANGED:I = 0x1

.field private static final MSG_ON_TRY_AGAIN_PRESSED:I = 0x7

.field private static final MSG_REGISTER_CANCELLATION_CALLBACK:I = 0xd

.field private static final STATE_AUTH_CALLED:I = 0x1

.field private static final STATE_AUTH_IDLE:I = 0x0

.field private static final STATE_AUTH_PAUSED:I = 0x3

.field private static final STATE_AUTH_PENDING_CONFIRM:I = 0x5

.field private static final STATE_AUTH_STARTED:I = 0x2

.field private static final STATE_BIOMETRIC_AUTH_CANCELED_SHOWING_CDC:I = 0x6

.field private static final TAG:Ljava/lang/String; = "BiometricService"


# instance fields
.field private mActivityTaskManager:Landroid/app/IActivityTaskManager;

.field private final mAppOps:Landroid/app/AppOpsManager;

.field final mAuthenticators:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/biometrics/BiometricService$Authenticator;",
            ">;"
        }
    .end annotation
.end field

.field private mConfirmDeviceCredentialReceiver:Landroid/hardware/biometrics/IBiometricServiceReceiver;

.field private mCurrentAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

.field private mCurrentModality:I

.field private final mEnabledOnKeyguardCallbacks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/biometrics/BiometricService$EnabledOnKeyguardCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mFaceService:Landroid/hardware/face/IFaceService;

.field private mFingerprintService:Landroid/hardware/fingerprint/IFingerprintService;

.field private final mHandler:Landroid/os/Handler;

.field private final mHasFeatureFace:Z

.field private final mHasFeatureFingerprint:Z

.field private final mHasFeatureIris:Z

.field private final mInternalReceiver:Landroid/hardware/biometrics/IBiometricServiceReceiverInternal;

.field private mPendingAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

.field private final mRandom:Ljava/util/Random;

.field private final mSettingObserver:Lcom/android/server/biometrics/BiometricService$SettingObserver;

.field private mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

.field private final mTaskStackListener:Lcom/android/server/biometrics/BiometricService$BiometricTaskStackListener;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 105
    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_a

    sput-object v0, Lcom/android/server/biometrics/BiometricService;->FEATURE_ID:[I

    return-void

    nop

    :array_a
    .array-data 4
        0x1
        0x2
        0x4
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 6
    .param p1, "context"  # Landroid/content/Context;

    .line 860
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 258
    new-instance v0, Lcom/android/server/biometrics/BiometricService$BiometricTaskStackListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/biometrics/BiometricService$BiometricTaskStackListener;-><init>(Lcom/android/server/biometrics/BiometricService;Lcom/android/server/biometrics/BiometricService$1;)V

    iput-object v0, p0, Lcom/android/server/biometrics/BiometricService;->mTaskStackListener:Lcom/android/server/biometrics/BiometricService$BiometricTaskStackListener;

    .line 259
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Lcom/android/server/biometrics/BiometricService;->mRandom:Ljava/util/Random;

    .line 268
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/biometrics/BiometricService;->mAuthenticators:Ljava/util/ArrayList;

    .line 290
    new-instance v0, Lcom/android/server/biometrics/BiometricService$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/biometrics/BiometricService$1;-><init>(Lcom/android/server/biometrics/BiometricService;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/biometrics/BiometricService;->mHandler:Landroid/os/Handler;

    .line 560
    new-instance v0, Lcom/android/server/biometrics/BiometricService$2;

    invoke-direct {v0, p0}, Lcom/android/server/biometrics/BiometricService$2;-><init>(Lcom/android/server/biometrics/BiometricService;)V

    iput-object v0, p0, Lcom/android/server/biometrics/BiometricService;->mInternalReceiver:Landroid/hardware/biometrics/IBiometricServiceReceiverInternal;

    .line 862
    const-class v0, Landroid/app/AppOpsManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    iput-object v0, p0, Lcom/android/server/biometrics/BiometricService;->mAppOps:Landroid/app/AppOpsManager;

    .line 863
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/biometrics/BiometricService;->mEnabledOnKeyguardCallbacks:Ljava/util/List;

    .line 864
    new-instance v0, Lcom/android/server/biometrics/BiometricService$SettingObserver;

    iget-object v1, p0, Lcom/android/server/biometrics/BiometricService;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/android/server/biometrics/BiometricService$SettingObserver;-><init>(Lcom/android/server/biometrics/BiometricService;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/biometrics/BiometricService;->mSettingObserver:Lcom/android/server/biometrics/BiometricService$SettingObserver;

    .line 866
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 867
    .local v0, "pm":Landroid/content/pm/PackageManager;
    const-string v1, "android.hardware.fingerprint"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/biometrics/BiometricService;->mHasFeatureFingerprint:Z

    .line 868
    const-string v1, "android.hardware.biometrics.iris"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/biometrics/BiometricService;->mHasFeatureIris:Z

    .line 869
    const-string v1, "android.hardware.biometrics.face"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/biometrics/BiometricService;->mHasFeatureFace:Z

    .line 872
    :try_start_61
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v1

    new-instance v2, Lcom/android/server/biometrics/BiometricService$3;

    invoke-direct {v2, p0}, Lcom/android/server/biometrics/BiometricService$3;-><init>(Lcom/android/server/biometrics/BiometricService;)V

    const-class v3, Lcom/android/server/biometrics/BiometricService;

    .line 879
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    .line 872
    invoke-interface {v1, v2, v3}, Landroid/app/IActivityManager;->registerUserSwitchObserver(Landroid/app/IUserSwitchObserver;Ljava/lang/String;)V
    :try_end_73
    .catch Landroid/os/RemoteException; {:try_start_61 .. :try_end_73} :catch_74

    .line 883
    goto :goto_7c

    .line 881
    :catch_74
    move-exception v1

    .line 882
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "BiometricService"

    const-string v3, "Failed to register user switch observer"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 884
    .end local v1  # "e":Landroid/os/RemoteException;
    :goto_7c
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/biometrics/BiometricService;)Landroid/os/Handler;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/biometrics/BiometricService;

    .line 86
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/server/biometrics/BiometricService;Landroid/os/IBinder;JILandroid/hardware/biometrics/IBiometricServiceReceiver;Ljava/lang/String;Landroid/os/Bundle;IIILandroid/hardware/biometrics/IBiometricConfirmDeviceCredentialCallback;)V
    .registers 12
    .param p0, "x0"  # Lcom/android/server/biometrics/BiometricService;
    .param p1, "x1"  # Landroid/os/IBinder;
    .param p2, "x2"  # J
    .param p4, "x3"  # I
    .param p5, "x4"  # Landroid/hardware/biometrics/IBiometricServiceReceiver;
    .param p6, "x5"  # Ljava/lang/String;
    .param p7, "x6"  # Landroid/os/Bundle;
    .param p8, "x7"  # I
    .param p9, "x8"  # I
    .param p10, "x9"  # I
    .param p11, "x10"  # Landroid/hardware/biometrics/IBiometricConfirmDeviceCredentialCallback;

    .line 86
    invoke-direct/range {p0 .. p11}, Lcom/android/server/biometrics/BiometricService;->handleAuthenticate(Landroid/os/IBinder;JILandroid/hardware/biometrics/IBiometricServiceReceiver;Ljava/lang/String;Landroid/os/Bundle;IIILandroid/hardware/biometrics/IBiometricConfirmDeviceCredentialCallback;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/server/biometrics/BiometricService;Landroid/os/IBinder;Ljava/lang/String;)V
    .registers 3
    .param p0, "x0"  # Lcom/android/server/biometrics/BiometricService;
    .param p1, "x1"  # Landroid/os/IBinder;
    .param p2, "x2"  # Ljava/lang/String;

    .line 86
    invoke-direct {p0, p1, p2}, Lcom/android/server/biometrics/BiometricService;->handleCancelAuthentication(Landroid/os/IBinder;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/server/biometrics/BiometricService;)V
    .registers 1
    .param p0, "x0"  # Lcom/android/server/biometrics/BiometricService;

    .line 86
    invoke-direct {p0}, Lcom/android/server/biometrics/BiometricService;->handleOnConfirmDeviceCredentialSuccess()V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/server/biometrics/BiometricService;ILjava/lang/String;)V
    .registers 3
    .param p0, "x0"  # Lcom/android/server/biometrics/BiometricService;
    .param p1, "x1"  # I
    .param p2, "x2"  # Ljava/lang/String;

    .line 86
    invoke-direct {p0, p1, p2}, Lcom/android/server/biometrics/BiometricService;->handleOnConfirmDeviceCredentialError(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/server/biometrics/BiometricService;Landroid/hardware/biometrics/IBiometricConfirmDeviceCredentialCallback;)V
    .registers 2
    .param p0, "x0"  # Lcom/android/server/biometrics/BiometricService;
    .param p1, "x1"  # Landroid/hardware/biometrics/IBiometricConfirmDeviceCredentialCallback;

    .line 86
    invoke-direct {p0, p1}, Lcom/android/server/biometrics/BiometricService;->handleRegisterCancellationCallback(Landroid/hardware/biometrics/IBiometricConfirmDeviceCredentialCallback;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/server/biometrics/BiometricService;)Ljava/util/List;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/biometrics/BiometricService;

    .line 86
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService;->mEnabledOnKeyguardCallbacks:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/server/biometrics/BiometricService;)V
    .registers 1
    .param p0, "x0"  # Lcom/android/server/biometrics/BiometricService;

    .line 86
    invoke-direct {p0}, Lcom/android/server/biometrics/BiometricService;->checkInternalPermission()V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/server/biometrics/BiometricService;)V
    .registers 1
    .param p0, "x0"  # Lcom/android/server/biometrics/BiometricService;

    .line 86
    invoke-direct {p0}, Lcom/android/server/biometrics/BiometricService;->checkPermission()V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/server/biometrics/BiometricService;I)Landroid/util/Pair;
    .registers 3
    .param p0, "x0"  # Lcom/android/server/biometrics/BiometricService;
    .param p1, "x1"  # I

    .line 86
    invoke-direct {p0, p1}, Lcom/android/server/biometrics/BiometricService;->checkAndGetBiometricModality(I)Landroid/util/Pair;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/server/biometrics/BiometricService;)Lcom/android/server/biometrics/BiometricService$SettingObserver;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/biometrics/BiometricService;

    .line 86
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService;->mSettingObserver:Lcom/android/server/biometrics/BiometricService$SettingObserver;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/biometrics/BiometricService;)V
    .registers 1
    .param p0, "x0"  # Lcom/android/server/biometrics/BiometricService;

    .line 86
    invoke-direct {p0}, Lcom/android/server/biometrics/BiometricService;->handleTaskStackChanged()V

    return-void
.end method

.method static synthetic access$2000(Lcom/android/server/biometrics/BiometricService;)Landroid/hardware/fingerprint/IFingerprintService;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/biometrics/BiometricService;

    .line 86
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService;->mFingerprintService:Landroid/hardware/fingerprint/IFingerprintService;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/android/server/biometrics/BiometricService;)Landroid/hardware/face/IFaceService;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/biometrics/BiometricService;

    .line 86
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService;->mFaceService:Landroid/hardware/face/IFaceService;

    return-object v0
.end method

.method static synthetic access$2202(Lcom/android/server/biometrics/BiometricService;Landroid/hardware/biometrics/IBiometricServiceReceiver;)Landroid/hardware/biometrics/IBiometricServiceReceiver;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/biometrics/BiometricService;
    .param p1, "x1"  # Landroid/hardware/biometrics/IBiometricServiceReceiver;

    .line 86
    iput-object p1, p0, Lcom/android/server/biometrics/BiometricService;->mConfirmDeviceCredentialReceiver:Landroid/hardware/biometrics/IBiometricServiceReceiver;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/server/biometrics/BiometricService;Z[B)V
    .registers 3
    .param p0, "x0"  # Lcom/android/server/biometrics/BiometricService;
    .param p1, "x1"  # Z
    .param p2, "x2"  # [B

    .line 86
    invoke-direct {p0, p1, p2}, Lcom/android/server/biometrics/BiometricService;->handleAuthenticationSucceeded(Z[B)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/biometrics/BiometricService;Ljava/lang/String;)V
    .registers 2
    .param p0, "x0"  # Lcom/android/server/biometrics/BiometricService;
    .param p1, "x1"  # Ljava/lang/String;

    .line 86
    invoke-direct {p0, p1}, Lcom/android/server/biometrics/BiometricService;->handleAuthenticationFailed(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/biometrics/BiometricService;IILjava/lang/String;)V
    .registers 4
    .param p0, "x0"  # Lcom/android/server/biometrics/BiometricService;
    .param p1, "x1"  # I
    .param p2, "x2"  # I
    .param p3, "x3"  # Ljava/lang/String;

    .line 86
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/biometrics/BiometricService;->handleOnError(IILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/biometrics/BiometricService;ILjava/lang/String;)V
    .registers 3
    .param p0, "x0"  # Lcom/android/server/biometrics/BiometricService;
    .param p1, "x1"  # I
    .param p2, "x2"  # Ljava/lang/String;

    .line 86
    invoke-direct {p0, p1, p2}, Lcom/android/server/biometrics/BiometricService;->handleOnAcquired(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/server/biometrics/BiometricService;I)V
    .registers 2
    .param p0, "x0"  # Lcom/android/server/biometrics/BiometricService;
    .param p1, "x1"  # I

    .line 86
    invoke-direct {p0, p1}, Lcom/android/server/biometrics/BiometricService;->handleOnDismissed(I)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/server/biometrics/BiometricService;)V
    .registers 1
    .param p0, "x0"  # Lcom/android/server/biometrics/BiometricService;

    .line 86
    invoke-direct {p0}, Lcom/android/server/biometrics/BiometricService;->handleOnTryAgainPressed()V

    return-void
.end method

.method static synthetic access$900(Lcom/android/server/biometrics/BiometricService;IZI)V
    .registers 4
    .param p0, "x0"  # Lcom/android/server/biometrics/BiometricService;
    .param p1, "x1"  # I
    .param p2, "x2"  # Z
    .param p3, "x3"  # I

    .line 86
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/biometrics/BiometricService;->handleOnReadyForAuthentication(IZI)V

    return-void
.end method

.method private authenticateInternal(Landroid/os/IBinder;JILandroid/hardware/biometrics/IBiometricServiceReceiver;Ljava/lang/String;Landroid/os/Bundle;IIIILandroid/hardware/biometrics/IBiometricConfirmDeviceCredentialCallback;)V
    .registers 43
    .param p1, "token"  # Landroid/os/IBinder;
    .param p2, "sessionId"  # J
    .param p4, "userId"  # I
    .param p5, "receiver"  # Landroid/hardware/biometrics/IBiometricServiceReceiver;
    .param p6, "opPackageName"  # Ljava/lang/String;
    .param p7, "bundle"  # Landroid/os/Bundle;
    .param p8, "callingUid"  # I
    .param p9, "callingPid"  # I
    .param p10, "callingUserId"  # I
    .param p11, "modality"  # I
    .param p12, "callback"  # Landroid/hardware/biometrics/IBiometricConfirmDeviceCredentialCallback;

    .line 1504
    move-object/from16 v15, p0

    move/from16 v14, p11

    const-string v13, "BiometricService"

    :try_start_6
    const-string/jumbo v0, "require_confirmation"

    const/4 v12, 0x1

    move-object/from16 v11, p7

    invoke-virtual {v11, v0, v12}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_10} :catch_f0

    .line 1506
    .local v0, "requireConfirmation":Z
    and-int/lit8 v1, v14, 0x4

    if-eqz v1, :cond_2d

    .line 1508
    if-nez v0, :cond_28

    :try_start_16
    iget-object v1, v15, Lcom/android/server/biometrics/BiometricService;->mSettingObserver:Lcom/android/server/biometrics/BiometricService$SettingObserver;
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_16 .. :try_end_18} :catch_23

    .line 1509
    move/from16 v10, p4

    :try_start_1a
    invoke-virtual {v1, v10}, Lcom/android/server/biometrics/BiometricService$SettingObserver;->getFaceAlwaysRequireConfirmation(I)Z

    move-result v1

    if-eqz v1, :cond_21

    goto :goto_2a

    :cond_21
    const/4 v1, 0x0

    goto :goto_2b

    .line 1538
    .end local v0  # "requireConfirmation":Z
    :catch_23
    move-exception v0

    move/from16 v10, p4

    goto/16 :goto_f1

    .line 1508
    .restart local v0  # "requireConfirmation":Z
    :cond_28
    move/from16 v10, p4

    .line 1509
    :goto_2a
    move v1, v12

    :goto_2b
    move v0, v1

    goto :goto_2f

    .line 1506
    :cond_2d
    move/from16 v10, p4

    .line 1515
    :goto_2f
    iget-object v1, v15, Lcom/android/server/biometrics/BiometricService;->mRandom:Ljava/util/Random;

    const v2, 0x7ffffffe

    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    add-int/lit8 v9, v1, 0x1

    .line 1516
    .local v9, "cookie":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Creating auth session. Modality: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", cookie: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v13, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1518
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    move-object v8, v1

    .line 1519
    .local v8, "authenticators":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    invoke-static/range {p11 .. p11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v8, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1520
    new-instance v7, Lcom/android/server/biometrics/BiometricService$AuthSession;
    :try_end_69
    .catch Landroid/os/RemoteException; {:try_start_1a .. :try_end_69} :catch_f0

    move-object v1, v7

    move-object/from16 v2, p0

    move-object v3, v8

    move-object/from16 v4, p1

    move-wide/from16 v5, p2

    move-object/from16 v26, v7

    move/from16 v7, p4

    move-object/from16 v27, v8

    .end local v8  # "authenticators":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    .local v27, "authenticators":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    move-object/from16 v8, p5

    move/from16 v28, v9

    .end local v9  # "cookie":I
    .local v28, "cookie":I
    move-object/from16 v9, p6

    move-object/from16 v10, p7

    move/from16 v11, p8

    move/from16 v12, p9

    move-object/from16 v29, v13

    move/from16 v13, p10

    move/from16 v14, p11

    move v15, v0

    move-object/from16 v16, p12

    :try_start_8c
    invoke-direct/range {v1 .. v16}, Lcom/android/server/biometrics/BiometricService$AuthSession;-><init>(Lcom/android/server/biometrics/BiometricService;Ljava/util/HashMap;Landroid/os/IBinder;JILandroid/hardware/biometrics/IBiometricServiceReceiver;Ljava/lang/String;Landroid/os/Bundle;IIIIZLandroid/hardware/biometrics/IBiometricConfirmDeviceCredentialCallback;)V
    :try_end_8f
    .catch Landroid/os/RemoteException; {:try_start_8c .. :try_end_8f} :catch_ea

    move-object/from16 v1, p0

    move-object/from16 v2, v26

    :try_start_93
    iput-object v2, v1, Lcom/android/server/biometrics/BiometricService;->mPendingAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

    .line 1523
    iget-object v2, v1, Lcom/android/server/biometrics/BiometricService;->mPendingAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/android/server/biometrics/BiometricService$AuthSession;->access$2502(Lcom/android/server/biometrics/BiometricService$AuthSession;I)I

    .line 1525
    and-int/lit8 v2, p11, 0x1

    if-eqz v2, :cond_b8

    .line 1526
    iget-object v14, v1, Lcom/android/server/biometrics/BiometricService;->mFingerprintService:Landroid/hardware/fingerprint/IFingerprintService;

    iget-object v2, v1, Lcom/android/server/biometrics/BiometricService;->mInternalReceiver:Landroid/hardware/biometrics/IBiometricServiceReceiverInternal;

    move-object/from16 v15, p1

    move-wide/from16 v16, p2

    move/from16 v18, p4

    move-object/from16 v19, v2

    move-object/from16 v20, p6

    move/from16 v21, v28

    move/from16 v22, p8

    move/from16 v23, p9

    move/from16 v24, p10

    invoke-interface/range {v14 .. v24}, Landroid/hardware/fingerprint/IFingerprintService;->prepareForAuthentication(Landroid/os/IBinder;JILandroid/hardware/biometrics/IBiometricServiceReceiverInternal;Ljava/lang/String;IIII)V

    .line 1530
    :cond_b8
    and-int/lit8 v2, p11, 0x2

    if-eqz v2, :cond_c4

    .line 1531
    const-string v2, "Iris unsupported"
    :try_end_be
    .catch Landroid/os/RemoteException; {:try_start_93 .. :try_end_be} :catch_e8

    move-object/from16 v3, v29

    :try_start_c0
    invoke-static {v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c6

    .line 1530
    :cond_c4
    move-object/from16 v3, v29

    .line 1533
    :goto_c6
    and-int/lit8 v2, p11, 0x4

    if-eqz v2, :cond_e7

    .line 1534
    iget-object v14, v1, Lcom/android/server/biometrics/BiometricService;->mFaceService:Landroid/hardware/face/IFaceService;

    iget-object v2, v1, Lcom/android/server/biometrics/BiometricService;->mInternalReceiver:Landroid/hardware/biometrics/IBiometricServiceReceiverInternal;

    move v15, v0

    move-object/from16 v16, p1

    move-wide/from16 v17, p2

    move/from16 v19, p4

    move-object/from16 v20, v2

    move-object/from16 v21, p6

    move/from16 v22, v28

    move/from16 v23, p8

    move/from16 v24, p9

    move/from16 v25, p10

    invoke-interface/range {v14 .. v25}, Landroid/hardware/face/IFaceService;->prepareForAuthentication(ZLandroid/os/IBinder;JILandroid/hardware/biometrics/IBiometricServiceReceiverInternal;Ljava/lang/String;IIII)V
    :try_end_e4
    .catch Landroid/os/RemoteException; {:try_start_c0 .. :try_end_e4} :catch_e5

    goto :goto_e7

    .line 1538
    .end local v0  # "requireConfirmation":Z
    .end local v27  # "authenticators":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    .end local v28  # "cookie":I
    :catch_e5
    move-exception v0

    goto :goto_f3

    .line 1540
    :cond_e7
    :goto_e7
    goto :goto_f8

    .line 1538
    :catch_e8
    move-exception v0

    goto :goto_ed

    :catch_ea
    move-exception v0

    move-object/from16 v1, p0

    :goto_ed
    move-object/from16 v3, v29

    goto :goto_f3

    :catch_f0
    move-exception v0

    :goto_f1
    move-object v3, v13

    move-object v1, v15

    .line 1539
    .local v0, "e":Landroid/os/RemoteException;
    :goto_f3
    const-string v2, "Unable to start authentication"

    invoke-static {v3, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1541
    .end local v0  # "e":Landroid/os/RemoteException;
    :goto_f8
    return-void
.end method

.method private checkAndGetBiometricModality(I)Landroid/util/Pair;
    .registers 11
    .param p1, "userId"  # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 927
    const/4 v0, 0x0

    .line 930
    .local v0, "modality":I
    iget-object v1, p0, Lcom/android/server/biometrics/BiometricService;->mAuthenticators:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    if-eqz v1, :cond_1a

    .line 931
    new-instance v1, Landroid/util/Pair;

    const/16 v3, 0xc

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v1

    .line 940
    :cond_1a
    const/4 v1, 0x0

    .line 941
    .local v1, "isHardwareDetected":Z
    const/4 v3, 0x0

    .line 942
    .local v3, "hasTemplatesEnrolled":Z
    const/4 v4, 0x0

    .line 944
    .local v4, "enabledForApps":Z
    const/4 v5, 0x0

    .line 945
    .local v5, "firstHwAvailable":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_1f
    iget-object v7, p0, Lcom/android/server/biometrics/BiometricService;->mAuthenticators:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v6, v7, :cond_5b

    .line 946
    iget-object v7, p0, Lcom/android/server/biometrics/BiometricService;->mAuthenticators:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/biometrics/BiometricService$Authenticator;

    invoke-virtual {v7}, Lcom/android/server/biometrics/BiometricService$Authenticator;->getType()I

    move-result v0

    .line 947
    iget-object v7, p0, Lcom/android/server/biometrics/BiometricService;->mAuthenticators:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/biometrics/BiometricService$Authenticator;

    invoke-virtual {v7}, Lcom/android/server/biometrics/BiometricService$Authenticator;->getAuthenticator()Landroid/hardware/biometrics/BiometricAuthenticator;

    move-result-object v7

    .line 948
    .local v7, "authenticator":Landroid/hardware/biometrics/BiometricAuthenticator;
    invoke-interface {v7}, Landroid/hardware/biometrics/BiometricAuthenticator;->isHardwareDetected()Z

    move-result v8

    if-eqz v8, :cond_58

    .line 949
    const/4 v1, 0x1

    .line 950
    if-nez v5, :cond_49

    .line 953
    move v5, v0

    .line 955
    :cond_49
    invoke-interface {v7, p1}, Landroid/hardware/biometrics/BiometricAuthenticator;->hasEnrolledTemplates(I)Z

    move-result v8

    if-eqz v8, :cond_58

    .line 956
    const/4 v3, 0x1

    .line 957
    invoke-direct {p0, v0, p1}, Lcom/android/server/biometrics/BiometricService;->isEnabledForApp(II)Z

    move-result v8

    if-eqz v8, :cond_58

    .line 961
    const/4 v4, 0x1

    .line 962
    goto :goto_5b

    .line 945
    .end local v7  # "authenticator":Landroid/hardware/biometrics/BiometricAuthenticator;
    :cond_58
    add-int/lit8 v6, v6, 0x1

    goto :goto_1f

    .line 969
    .end local v6  # "i":I
    :cond_5b
    :goto_5b
    const/4 v6, 0x1

    if-nez v1, :cond_68

    .line 970
    new-instance v7, Landroid/util/Pair;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-direct {v7, v2, v6}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v7

    .line 971
    :cond_68
    if-nez v3, :cond_7a

    .line 974
    new-instance v2, Landroid/util/Pair;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/16 v7, 0xb

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-direct {v2, v6, v7}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v2

    .line 975
    :cond_7a
    if-nez v4, :cond_86

    .line 976
    new-instance v7, Landroid/util/Pair;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-direct {v7, v2, v6}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v7

    .line 979
    :cond_86
    new-instance v6, Landroid/util/Pair;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-direct {v6, v7, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v6
.end method

.method private checkAppOp(Ljava/lang/String;I)V
    .registers 5
    .param p1, "opPackageName"  # Ljava/lang/String;
    .param p2, "callingUid"  # I

    .line 830
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService;->mAppOps:Landroid/app/AppOpsManager;

    const/16 v1, 0x4e

    invoke-virtual {v0, v1, p2, p1}, Landroid/app/AppOpsManager;->noteOp(IILjava/lang/String;)I

    move-result v0

    if-nez v0, :cond_b

    .line 835
    return-void

    .line 832
    :cond_b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Rejecting "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "; permission denied"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BiometricService"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 833
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Permission denied"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private checkInternalPermission()V
    .registers 4

    .line 838
    invoke-virtual {p0}, Lcom/android/server/biometrics/BiometricService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.USE_BIOMETRIC_INTERNAL"

    const-string v2, "Must have USE_BIOMETRIC_INTERNAL permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 840
    return-void
.end method

.method private checkPermission()V
    .registers 4

    .line 843
    invoke-virtual {p0}, Lcom/android/server/biometrics/BiometricService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.USE_FINGERPRINT"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_17

    .line 845
    invoke-virtual {p0}, Lcom/android/server/biometrics/BiometricService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.USE_BIOMETRIC"

    const-string v2, "Must have USE_BIOMETRIC permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 848
    :cond_17
    return-void
.end method

.method private getAuthenticator(I)Landroid/hardware/biometrics/BiometricAuthenticator;
    .registers 4
    .param p1, "type"  # I

    .line 1012
    const/4 v0, 0x1

    if-eq p1, v0, :cond_1a

    const/4 v0, 0x2

    const/4 v1, 0x0

    if-eq p1, v0, :cond_19

    const/4 v0, 0x4

    if-eq p1, v0, :cond_b

    .line 1022
    return-object v1

    .line 1019
    :cond_b
    nop

    .line 1020
    invoke-virtual {p0}, Lcom/android/server/biometrics/BiometricService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "face"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/face/FaceManager;

    .line 1019
    return-object v0

    .line 1017
    :cond_19
    return-object v1

    .line 1014
    :cond_1a
    nop

    .line 1015
    invoke-virtual {p0}, Lcom/android/server/biometrics/BiometricService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "fingerprint"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/fingerprint/FingerprintManager;

    .line 1014
    return-object v0
.end method

.method private getErrorString(III)Ljava/lang/String;
    .registers 8
    .param p1, "type"  # I
    .param p2, "error"  # I
    .param p3, "vendorCode"  # I

    .line 997
    const/4 v0, 0x1

    if-eq p1, v0, :cond_30

    const/4 v0, 0x2

    const/4 v1, 0x0

    const-string v2, "BiometricService"

    if-eq p1, v0, :cond_2a

    const/4 v0, 0x4

    if-eq p1, v0, :cond_21

    .line 1006
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to get error string for modality: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1007
    return-object v1

    .line 1004
    :cond_21
    invoke-virtual {p0}, Lcom/android/server/biometrics/BiometricService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p2, p3}, Landroid/hardware/face/FaceManager;->getErrorString(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1001
    :cond_2a
    const-string v0, "Modality not supported"

    invoke-static {v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1002
    return-object v1

    .line 999
    :cond_30
    invoke-virtual {p0}, Lcom/android/server/biometrics/BiometricService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p2, p3}, Landroid/hardware/fingerprint/FingerprintManager;->getErrorString(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private handleAuthenticate(Landroid/os/IBinder;JILandroid/hardware/biometrics/IBiometricServiceReceiver;Ljava/lang/String;Landroid/os/Bundle;IIILandroid/hardware/biometrics/IBiometricConfirmDeviceCredentialCallback;)V
    .registers 28
    .param p1, "token"  # Landroid/os/IBinder;
    .param p2, "sessionId"  # J
    .param p4, "userId"  # I
    .param p5, "receiver"  # Landroid/hardware/biometrics/IBiometricServiceReceiver;
    .param p6, "opPackageName"  # Ljava/lang/String;
    .param p7, "bundle"  # Landroid/os/Bundle;
    .param p8, "callingUid"  # I
    .param p9, "callingPid"  # I
    .param p10, "callingUserId"  # I
    .param p11, "callback"  # Landroid/hardware/biometrics/IBiometricConfirmDeviceCredentialCallback;

    .line 1450
    move-object/from16 v13, p0

    iget-object v14, v13, Lcom/android/server/biometrics/BiometricService;->mHandler:Landroid/os/Handler;

    new-instance v15, Lcom/android/server/biometrics/-$$Lambda$BiometricService$u838xLmNIeU4FVoszS6ZOdfG9A8;

    move-object v0, v15

    move-object/from16 v1, p0

    move/from16 v2, p4

    move-object/from16 v3, p5

    move-object/from16 v4, p1

    move-wide/from16 v5, p2

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    move/from16 v11, p10

    move-object/from16 v12, p11

    invoke-direct/range {v0 .. v12}, Lcom/android/server/biometrics/-$$Lambda$BiometricService$u838xLmNIeU4FVoszS6ZOdfG9A8;-><init>(Lcom/android/server/biometrics/BiometricService;ILandroid/hardware/biometrics/IBiometricServiceReceiver;Landroid/os/IBinder;JLjava/lang/String;Landroid/os/Bundle;IIILandroid/hardware/biometrics/IBiometricConfirmDeviceCredentialCallback;)V

    invoke-virtual {v14, v15}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1488
    return-void
.end method

.method private handleAuthenticationFailed(Ljava/lang/String;)V
    .registers 5
    .param p1, "failureReason"  # Ljava/lang/String;

    .line 1172
    const-string v0, "BiometricService"

    :try_start_2
    iget-object v1, p0, Lcom/android/server/biometrics/BiometricService;->mCurrentAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

    if-nez v1, :cond_d

    .line 1173
    const-string/jumbo v1, "onAuthenticationFailed(): Auth session is null"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1174
    return-void

    .line 1177
    :cond_d
    iget-object v1, p0, Lcom/android/server/biometrics/BiometricService;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    const/4 v2, 0x0

    invoke-interface {v1, v2, p1}, Lcom/android/internal/statusbar/IStatusBarService;->onBiometricAuthenticated(ZLjava/lang/String;)V

    .line 1180
    iget-object v1, p0, Lcom/android/server/biometrics/BiometricService;->mCurrentAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

    iget v1, v1, Lcom/android/server/biometrics/BiometricService$AuthSession;->mModality:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_21

    .line 1183
    iget-object v1, p0, Lcom/android/server/biometrics/BiometricService;->mCurrentAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

    const/4 v2, 0x3

    invoke-static {v1, v2}, Lcom/android/server/biometrics/BiometricService$AuthSession;->access$2502(Lcom/android/server/biometrics/BiometricService$AuthSession;I)I

    .line 1186
    :cond_21
    iget-object v1, p0, Lcom/android/server/biometrics/BiometricService;->mCurrentAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

    iget-object v1, v1, Lcom/android/server/biometrics/BiometricService$AuthSession;->mClientReceiver:Landroid/hardware/biometrics/IBiometricServiceReceiver;

    invoke-interface {v1}, Landroid/hardware/biometrics/IBiometricServiceReceiver;->onAuthenticationFailed()V
    :try_end_28
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_28} :catch_29

    .line 1189
    goto :goto_2f

    .line 1187
    :catch_29
    move-exception v1

    .line 1188
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "Remote exception"

    invoke-static {v0, v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1190
    .end local v1  # "e":Landroid/os/RemoteException;
    :goto_2f
    return-void
.end method

.method private handleAuthenticationSucceeded(Z[B)V
    .registers 8
    .param p1, "requireConfirmation"  # Z
    .param p2, "token"  # [B

    .line 1141
    const-string v0, "BiometricService"

    :try_start_2
    iget-object v1, p0, Lcom/android/server/biometrics/BiometricService;->mCurrentAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

    if-nez v1, :cond_d

    .line 1142
    const-string/jumbo v1, "onAuthenticationSucceeded(): Auth session is null"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1143
    return-void

    .line 1146
    :cond_d
    const/4 v1, 0x0

    if-nez p1, :cond_2e

    .line 1147
    iget-object v2, p0, Lcom/android/server/biometrics/BiometricService;->mActivityTaskManager:Landroid/app/IActivityTaskManager;

    iget-object v3, p0, Lcom/android/server/biometrics/BiometricService;->mTaskStackListener:Lcom/android/server/biometrics/BiometricService$BiometricTaskStackListener;

    invoke-interface {v2, v3}, Landroid/app/IActivityTaskManager;->unregisterTaskStackListener(Landroid/app/ITaskStackListener;)V

    .line 1148
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v2

    invoke-virtual {v2, p2}, Landroid/security/KeyStore;->addAuthToken([B)I

    .line 1149
    iget-object v2, p0, Lcom/android/server/biometrics/BiometricService;->mCurrentAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

    iget-object v2, v2, Lcom/android/server/biometrics/BiometricService$AuthSession;->mClientReceiver:Landroid/hardware/biometrics/IBiometricServiceReceiver;

    invoke-interface {v2}, Landroid/hardware/biometrics/IBiometricServiceReceiver;->onAuthenticationSucceeded()V

    .line 1150
    iget-object v2, p0, Lcom/android/server/biometrics/BiometricService;->mCurrentAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/android/server/biometrics/BiometricService$AuthSession;->access$2502(Lcom/android/server/biometrics/BiometricService$AuthSession;I)I

    .line 1151
    iput-object v1, p0, Lcom/android/server/biometrics/BiometricService;->mCurrentAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

    goto :goto_41

    .line 1153
    :cond_2e
    iget-object v2, p0, Lcom/android/server/biometrics/BiometricService;->mCurrentAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Lcom/android/server/biometrics/BiometricService$AuthSession;->access$2402(Lcom/android/server/biometrics/BiometricService$AuthSession;J)J

    .line 1156
    iget-object v2, p0, Lcom/android/server/biometrics/BiometricService;->mCurrentAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

    iput-object p2, v2, Lcom/android/server/biometrics/BiometricService$AuthSession;->mTokenEscrow:[B

    .line 1157
    iget-object v2, p0, Lcom/android/server/biometrics/BiometricService;->mCurrentAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

    const/4 v3, 0x5

    invoke-static {v2, v3}, Lcom/android/server/biometrics/BiometricService$AuthSession;->access$2502(Lcom/android/server/biometrics/BiometricService$AuthSession;I)I

    .line 1162
    :goto_41
    iget-object v2, p0, Lcom/android/server/biometrics/BiometricService;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    const/4 v3, 0x1

    invoke-interface {v2, v3, v1}, Lcom/android/internal/statusbar/IStatusBarService;->onBiometricAuthenticated(ZLjava/lang/String;)V
    :try_end_47
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_47} :catch_48

    .line 1165
    goto :goto_4e

    .line 1163
    :catch_48
    move-exception v1

    .line 1164
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "Remote exception"

    invoke-static {v0, v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1166
    .end local v1  # "e":Landroid/os/RemoteException;
    :goto_4e
    return-void
.end method

.method private handleCancelAuthentication(Landroid/os/IBinder;Ljava/lang/String;)V
    .registers 9
    .param p1, "token"  # Landroid/os/IBinder;
    .param p2, "opPackageName"  # Ljava/lang/String;

    .line 1544
    const-string v0, "BiometricService"

    if-eqz p1, :cond_89

    if-nez p2, :cond_8

    goto/16 :goto_89

    .line 1549
    :cond_8
    iget-object v1, p0, Lcom/android/server/biometrics/BiometricService;->mCurrentAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

    const/4 v2, 0x5

    if-eqz v1, :cond_39

    .line 1550
    invoke-static {v1}, Lcom/android/server/biometrics/BiometricService$AuthSession;->access$2500(Lcom/android/server/biometrics/BiometricService$AuthSession;)I

    move-result v1

    const/4 v3, 0x6

    if-ne v1, v3, :cond_39

    .line 1551
    const-string v1, "Cancel received while ConfirmDeviceCredential showing"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1553
    :try_start_19
    iget-object v1, p0, Lcom/android/server/biometrics/BiometricService;->mCurrentAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

    invoke-static {v1}, Lcom/android/server/biometrics/BiometricService$AuthSession;->access$2600(Lcom/android/server/biometrics/BiometricService$AuthSession;)Landroid/hardware/biometrics/IBiometricConfirmDeviceCredentialCallback;

    move-result-object v1

    invoke-interface {v1}, Landroid/hardware/biometrics/IBiometricConfirmDeviceCredentialCallback;->cancel()V
    :try_end_22
    .catch Landroid/os/RemoteException; {:try_start_19 .. :try_end_22} :catch_23

    .line 1556
    goto :goto_29

    .line 1554
    :catch_23
    move-exception v1

    .line 1555
    .local v1, "e":Landroid/os/RemoteException;
    const-string v3, "Unable to cancel ConfirmDeviceCredential"

    invoke-static {v0, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1559
    .end local v1  # "e":Landroid/os/RemoteException;
    :goto_29
    nop

    .line 1560
    invoke-virtual {p0}, Lcom/android/server/biometrics/BiometricService;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x10400fa

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1559
    invoke-direct {p0, v2, v0}, Lcom/android/server/biometrics/BiometricService;->handleOnConfirmDeviceCredentialError(ILjava/lang/String;)V

    goto :goto_88

    .line 1561
    :cond_39
    iget-object v1, p0, Lcom/android/server/biometrics/BiometricService;->mCurrentAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

    const/4 v3, 0x0

    if-eqz v1, :cond_6c

    .line 1562
    invoke-static {v1}, Lcom/android/server/biometrics/BiometricService$AuthSession;->access$2500(Lcom/android/server/biometrics/BiometricService$AuthSession;)I

    move-result v1

    const/4 v4, 0x2

    if-eq v1, v4, :cond_6c

    .line 1568
    :try_start_45
    iget-object v1, p0, Lcom/android/server/biometrics/BiometricService;->mCurrentAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

    iget-object v1, v1, Lcom/android/server/biometrics/BiometricService$AuthSession;->mClientReceiver:Landroid/hardware/biometrics/IBiometricServiceReceiver;

    .line 1570
    invoke-virtual {p0}, Lcom/android/server/biometrics/BiometricService;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x10400fd

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 1568
    invoke-interface {v1, v2, v4}, Landroid/hardware/biometrics/IBiometricServiceReceiver;->onError(ILjava/lang/String;)V

    .line 1574
    iget-object v1, p0, Lcom/android/server/biometrics/BiometricService;->mCurrentAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

    invoke-static {v1, v3}, Lcom/android/server/biometrics/BiometricService$AuthSession;->access$2502(Lcom/android/server/biometrics/BiometricService$AuthSession;I)I

    .line 1575
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/biometrics/BiometricService;->mCurrentAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

    .line 1576
    iget-object v1, p0, Lcom/android/server/biometrics/BiometricService;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    invoke-interface {v1}, Lcom/android/internal/statusbar/IStatusBarService;->hideBiometricDialog()V
    :try_end_64
    .catch Landroid/os/RemoteException; {:try_start_45 .. :try_end_64} :catch_65

    goto :goto_6b

    .line 1577
    :catch_65
    move-exception v1

    .line 1578
    .restart local v1  # "e":Landroid/os/RemoteException;
    const-string v2, "Remote exception"

    invoke-static {v0, v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1579
    .end local v1  # "e":Landroid/os/RemoteException;
    :goto_6b
    goto :goto_88

    .line 1581
    :cond_6c
    const/4 v1, 0x0

    .line 1582
    .local v1, "fromCDC":Z
    iget-object v2, p0, Lcom/android/server/biometrics/BiometricService;->mCurrentAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

    if-eqz v2, :cond_79

    .line 1583
    iget-object v2, v2, Lcom/android/server/biometrics/BiometricService$AuthSession;->mBundle:Landroid/os/Bundle;

    const-string v4, "from_confirm_device_credential"

    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 1587
    :cond_79
    if-eqz v1, :cond_84

    .line 1588
    const-string v2, "Cancelling from CDC"

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1589
    invoke-virtual {p0, p1, p2, v3}, Lcom/android/server/biometrics/BiometricService;->cancelInternal(Landroid/os/IBinder;Ljava/lang/String;Z)V

    goto :goto_88

    .line 1591
    :cond_84
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/biometrics/BiometricService;->cancelInternal(Landroid/os/IBinder;Ljava/lang/String;Z)V

    .line 1595
    .end local v1  # "fromCDC":Z
    :goto_88
    return-void

    .line 1545
    :cond_89
    :goto_89
    const-string v1, "Unable to cancel, one or more null arguments"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1546
    return-void
.end method

.method private handleOnAcquired(ILjava/lang/String;)V
    .registers 6
    .param p1, "acquiredInfo"  # I
    .param p2, "message"  # Ljava/lang/String;

    .line 1317
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService;->mCurrentAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

    const-string v1, "BiometricService"

    if-nez v0, :cond_d

    .line 1318
    const-string/jumbo v0, "onAcquired(): Auth session is null"

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1319
    return-void

    .line 1322
    :cond_d
    if-eqz p1, :cond_32

    .line 1323
    if-nez p2, :cond_26

    .line 1324
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Ignoring null message: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1325
    return-void

    .line 1328
    :cond_26
    :try_start_26
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    invoke-interface {v0, p2}, Lcom/android/internal/statusbar/IStatusBarService;->onBiometricHelp(Ljava/lang/String;)V
    :try_end_2b
    .catch Landroid/os/RemoteException; {:try_start_26 .. :try_end_2b} :catch_2c

    .line 1331
    goto :goto_32

    .line 1329
    :catch_2c
    move-exception v0

    .line 1330
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "Remote exception"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1333
    .end local v0  # "e":Landroid/os/RemoteException;
    :cond_32
    :goto_32
    return-void
.end method

.method private handleOnConfirmDeviceCredentialError(ILjava/lang/String;)V
    .registers 7
    .param p1, "error"  # I
    .param p2, "message"  # Ljava/lang/String;

    .line 1211
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService;->mConfirmDeviceCredentialReceiver:Landroid/hardware/biometrics/IBiometricServiceReceiver;

    const-string v1, "BiometricService"

    if-nez v0, :cond_24

    .line 1212
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onCDCAError null! Error: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1213
    return-void

    .line 1216
    :cond_24
    const/4 v0, 0x0

    :try_start_25
    iget-object v2, p0, Lcom/android/server/biometrics/BiometricService;->mActivityTaskManager:Landroid/app/IActivityTaskManager;

    iget-object v3, p0, Lcom/android/server/biometrics/BiometricService;->mTaskStackListener:Lcom/android/server/biometrics/BiometricService$BiometricTaskStackListener;

    invoke-interface {v2, v3}, Landroid/app/IActivityTaskManager;->unregisterTaskStackListener(Landroid/app/ITaskStackListener;)V

    .line 1217
    iget-object v2, p0, Lcom/android/server/biometrics/BiometricService;->mConfirmDeviceCredentialReceiver:Landroid/hardware/biometrics/IBiometricServiceReceiver;

    invoke-interface {v2, p1, p2}, Landroid/hardware/biometrics/IBiometricServiceReceiver;->onError(ILjava/lang/String;)V

    .line 1218
    iget-object v2, p0, Lcom/android/server/biometrics/BiometricService;->mCurrentAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

    if-eqz v2, :cond_3d

    .line 1219
    iget-object v2, p0, Lcom/android/server/biometrics/BiometricService;->mCurrentAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/android/server/biometrics/BiometricService$AuthSession;->access$2502(Lcom/android/server/biometrics/BiometricService$AuthSession;I)I

    .line 1220
    iput-object v0, p0, Lcom/android/server/biometrics/BiometricService;->mCurrentAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;
    :try_end_3d
    .catch Landroid/os/RemoteException; {:try_start_25 .. :try_end_3d} :catch_3e

    .line 1224
    :cond_3d
    goto :goto_44

    .line 1222
    :catch_3e
    move-exception v2

    .line 1223
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "RemoteException"

    invoke-static {v1, v3, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1225
    .end local v2  # "e":Landroid/os/RemoteException;
    :goto_44
    iput-object v0, p0, Lcom/android/server/biometrics/BiometricService;->mConfirmDeviceCredentialReceiver:Landroid/hardware/biometrics/IBiometricServiceReceiver;

    .line 1226
    return-void
.end method

.method private handleOnConfirmDeviceCredentialSuccess()V
    .registers 5

    .line 1193
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService;->mConfirmDeviceCredentialReceiver:Landroid/hardware/biometrics/IBiometricServiceReceiver;

    const-string v1, "BiometricService"

    if-nez v0, :cond_d

    .line 1194
    const-string/jumbo v0, "onCDCASuccess null!"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1195
    return-void

    .line 1198
    :cond_d
    const/4 v0, 0x0

    :try_start_e
    iget-object v2, p0, Lcom/android/server/biometrics/BiometricService;->mActivityTaskManager:Landroid/app/IActivityTaskManager;

    iget-object v3, p0, Lcom/android/server/biometrics/BiometricService;->mTaskStackListener:Lcom/android/server/biometrics/BiometricService$BiometricTaskStackListener;

    invoke-interface {v2, v3}, Landroid/app/IActivityTaskManager;->unregisterTaskStackListener(Landroid/app/ITaskStackListener;)V

    .line 1199
    iget-object v2, p0, Lcom/android/server/biometrics/BiometricService;->mConfirmDeviceCredentialReceiver:Landroid/hardware/biometrics/IBiometricServiceReceiver;

    invoke-interface {v2}, Landroid/hardware/biometrics/IBiometricServiceReceiver;->onAuthenticationSucceeded()V

    .line 1200
    iget-object v2, p0, Lcom/android/server/biometrics/BiometricService;->mCurrentAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

    if-eqz v2, :cond_26

    .line 1201
    iget-object v2, p0, Lcom/android/server/biometrics/BiometricService;->mCurrentAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/android/server/biometrics/BiometricService$AuthSession;->access$2502(Lcom/android/server/biometrics/BiometricService$AuthSession;I)I

    .line 1202
    iput-object v0, p0, Lcom/android/server/biometrics/BiometricService;->mCurrentAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;
    :try_end_26
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_26} :catch_27

    .line 1206
    :cond_26
    goto :goto_2d

    .line 1204
    :catch_27
    move-exception v2

    .line 1205
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "RemoteException"

    invoke-static {v1, v3, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1207
    .end local v2  # "e":Landroid/os/RemoteException;
    :goto_2d
    iput-object v0, p0, Lcom/android/server/biometrics/BiometricService;->mConfirmDeviceCredentialReceiver:Landroid/hardware/biometrics/IBiometricServiceReceiver;

    .line 1208
    return-void
.end method

.method private handleOnDismissed(I)V
    .registers 9
    .param p1, "reason"  # I

    .line 1336
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService;->mCurrentAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

    const-string v1, "BiometricService"

    if-nez v0, :cond_21

    .line 1337
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onDialogDismissed: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", auth session null"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1338
    return-void

    .line 1341
    :cond_21
    invoke-direct {p0, p1}, Lcom/android/server/biometrics/BiometricService;->logDialogDismissed(I)V

    .line 1344
    const/4 v0, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq p1, v2, :cond_36

    .line 1347
    :try_start_29
    iget-object v4, p0, Lcom/android/server/biometrics/BiometricService;->mCurrentAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

    iget-object v4, v4, Lcom/android/server/biometrics/BiometricService$AuthSession;->mClientReceiver:Landroid/hardware/biometrics/IBiometricServiceReceiver;

    invoke-interface {v4, p1}, Landroid/hardware/biometrics/IBiometricServiceReceiver;->onDialogDismissed(I)V

    .line 1350
    invoke-virtual {p0, v3, v3, v0}, Lcom/android/server/biometrics/BiometricService;->cancelInternal(Landroid/os/IBinder;Ljava/lang/String;Z)V

    goto :goto_36

    .line 1373
    :catch_34
    move-exception v0

    goto :goto_79

    .line 1352
    :cond_36
    :goto_36
    const/4 v4, 0x3

    if-ne p1, v4, :cond_4e

    .line 1353
    iget-object v2, p0, Lcom/android/server/biometrics/BiometricService;->mCurrentAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

    iget-object v2, v2, Lcom/android/server/biometrics/BiometricService$AuthSession;->mClientReceiver:Landroid/hardware/biometrics/IBiometricServiceReceiver;

    const/16 v4, 0xa

    .line 1355
    invoke-virtual {p0}, Lcom/android/server/biometrics/BiometricService;->getContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x10400fd

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 1353
    invoke-interface {v2, v4, v5}, Landroid/hardware/biometrics/IBiometricServiceReceiver;->onError(ILjava/lang/String;)V

    goto :goto_62

    .line 1357
    :cond_4e
    if-ne p1, v2, :cond_62

    .line 1360
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v2

    iget-object v4, p0, Lcom/android/server/biometrics/BiometricService;->mCurrentAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

    iget-object v4, v4, Lcom/android/server/biometrics/BiometricService$AuthSession;->mTokenEscrow:[B

    invoke-virtual {v2, v4}, Landroid/security/KeyStore;->addAuthToken([B)I

    .line 1361
    iget-object v2, p0, Lcom/android/server/biometrics/BiometricService;->mCurrentAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

    iget-object v2, v2, Lcom/android/server/biometrics/BiometricService$AuthSession;->mClientReceiver:Landroid/hardware/biometrics/IBiometricServiceReceiver;

    invoke-interface {v2}, Landroid/hardware/biometrics/IBiometricServiceReceiver;->onAuthenticationSucceeded()V

    .line 1368
    :cond_62
    :goto_62
    iget-object v2, p0, Lcom/android/server/biometrics/BiometricService;->mCurrentAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

    invoke-virtual {v2}, Lcom/android/server/biometrics/BiometricService$AuthSession;->isFromConfirmDeviceCredential()Z

    move-result v2

    if-nez v2, :cond_78

    .line 1369
    iget-object v2, p0, Lcom/android/server/biometrics/BiometricService;->mActivityTaskManager:Landroid/app/IActivityTaskManager;

    iget-object v4, p0, Lcom/android/server/biometrics/BiometricService;->mTaskStackListener:Lcom/android/server/biometrics/BiometricService$BiometricTaskStackListener;

    invoke-interface {v2, v4}, Landroid/app/IActivityTaskManager;->unregisterTaskStackListener(Landroid/app/ITaskStackListener;)V

    .line 1370
    iget-object v2, p0, Lcom/android/server/biometrics/BiometricService;->mCurrentAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

    invoke-static {v2, v0}, Lcom/android/server/biometrics/BiometricService$AuthSession;->access$2502(Lcom/android/server/biometrics/BiometricService$AuthSession;I)I

    .line 1371
    iput-object v3, p0, Lcom/android/server/biometrics/BiometricService;->mCurrentAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;
    :try_end_78
    .catch Landroid/os/RemoteException; {:try_start_29 .. :try_end_78} :catch_34

    .line 1375
    :cond_78
    goto :goto_7e

    .line 1374
    .local v0, "e":Landroid/os/RemoteException;
    :goto_79
    const-string v2, "Remote exception"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1376
    .end local v0  # "e":Landroid/os/RemoteException;
    :goto_7e
    return-void
.end method

.method private handleOnError(IILjava/lang/String;)V
    .registers 9
    .param p1, "cookie"  # I
    .param p2, "error"  # I
    .param p3, "message"  # Ljava/lang/String;

    .line 1239
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " cookie: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BiometricService"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1247
    :try_start_1e
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService;->mCurrentAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v0, :cond_c7

    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService;->mCurrentAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

    invoke-virtual {v0, p1}, Lcom/android/server/biometrics/BiometricService$AuthSession;->containsCookie(I)Z

    move-result v0

    if-eqz v0, :cond_c7

    .line 1249
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService;->mCurrentAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

    invoke-virtual {v0}, Lcom/android/server/biometrics/BiometricService$AuthSession;->isFromConfirmDeviceCredential()Z

    move-result v0

    if-eqz v0, :cond_4d

    .line 1252
    const-string v0, "From CDC, transition to CANCELED_SHOWING_CDC state"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1256
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService;->mCurrentAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

    iget-object v0, v0, Lcom/android/server/biometrics/BiometricService$AuthSession;->mClientReceiver:Landroid/hardware/biometrics/IBiometricServiceReceiver;

    invoke-interface {v0, p2, p3}, Landroid/hardware/biometrics/IBiometricServiceReceiver;->onError(ILjava/lang/String;)V

    .line 1257
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService;->mCurrentAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

    const/4 v2, 0x6

    invoke-static {v0, v2}, Lcom/android/server/biometrics/BiometricService$AuthSession;->access$2502(Lcom/android/server/biometrics/BiometricService$AuthSession;I)I

    .line 1258
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    invoke-interface {v0}, Lcom/android/internal/statusbar/IStatusBarService;->hideBiometricDialog()V

    goto/16 :goto_105

    .line 1259
    :cond_4d
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService;->mCurrentAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

    invoke-static {v0}, Lcom/android/server/biometrics/BiometricService$AuthSession;->access$2500(Lcom/android/server/biometrics/BiometricService$AuthSession;)I

    move-result v0

    const/4 v4, 0x2

    if-ne v0, v4, :cond_88

    .line 1260
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    invoke-interface {v0, p3}, Lcom/android/internal/statusbar/IStatusBarService;->onBiometricError(Ljava/lang/String;)V

    .line 1261
    const/4 v0, 0x5

    if-ne p2, v0, :cond_7a

    .line 1262
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService;->mActivityTaskManager:Landroid/app/IActivityTaskManager;

    iget-object v4, p0, Lcom/android/server/biometrics/BiometricService;->mTaskStackListener:Lcom/android/server/biometrics/BiometricService$BiometricTaskStackListener;

    invoke-interface {v0, v4}, Landroid/app/IActivityTaskManager;->unregisterTaskStackListener(Landroid/app/ITaskStackListener;)V

    .line 1264
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService;->mCurrentAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

    iget-object v0, v0, Lcom/android/server/biometrics/BiometricService$AuthSession;->mClientReceiver:Landroid/hardware/biometrics/IBiometricServiceReceiver;

    invoke-interface {v0, p2, p3}, Landroid/hardware/biometrics/IBiometricServiceReceiver;->onError(ILjava/lang/String;)V

    .line 1265
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService;->mCurrentAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

    invoke-static {v0, v3}, Lcom/android/server/biometrics/BiometricService$AuthSession;->access$2502(Lcom/android/server/biometrics/BiometricService$AuthSession;I)I

    .line 1266
    iput-object v2, p0, Lcom/android/server/biometrics/BiometricService;->mCurrentAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

    .line 1267
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    invoke-interface {v0}, Lcom/android/internal/statusbar/IStatusBarService;->hideBiometricDialog()V

    goto/16 :goto_105

    .line 1270
    :cond_7a
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/biometrics/-$$Lambda$BiometricService$QhCJhzC2Bjg3cY0zTVc1KBEEOuA;

    invoke-direct {v2, p0, p2, p3}, Lcom/android/server/biometrics/-$$Lambda$BiometricService$QhCJhzC2Bjg3cY0zTVc1KBEEOuA;-><init>(Lcom/android/server/biometrics/BiometricService;ILjava/lang/String;)V

    const-wide/16 v3, 0x7d0

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_105

    .line 1285
    :cond_88
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService;->mCurrentAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

    invoke-static {v0}, Lcom/android/server/biometrics/BiometricService$AuthSession;->access$2500(Lcom/android/server/biometrics/BiometricService$AuthSession;)I

    move-result v0

    const/4 v4, 0x3

    if-ne v0, v4, :cond_ac

    .line 1288
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService;->mCurrentAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

    iget-object v0, v0, Lcom/android/server/biometrics/BiometricService$AuthSession;->mClientReceiver:Landroid/hardware/biometrics/IBiometricServiceReceiver;

    invoke-interface {v0, p2, p3}, Landroid/hardware/biometrics/IBiometricServiceReceiver;->onError(ILjava/lang/String;)V

    .line 1289
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    invoke-interface {v0, p3}, Lcom/android/internal/statusbar/IStatusBarService;->onBiometricError(Ljava/lang/String;)V

    .line 1290
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService;->mActivityTaskManager:Landroid/app/IActivityTaskManager;

    iget-object v4, p0, Lcom/android/server/biometrics/BiometricService;->mTaskStackListener:Lcom/android/server/biometrics/BiometricService$BiometricTaskStackListener;

    invoke-interface {v0, v4}, Landroid/app/IActivityTaskManager;->unregisterTaskStackListener(Landroid/app/ITaskStackListener;)V

    .line 1292
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService;->mCurrentAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

    invoke-static {v0, v3}, Lcom/android/server/biometrics/BiometricService$AuthSession;->access$2502(Lcom/android/server/biometrics/BiometricService$AuthSession;I)I

    .line 1293
    iput-object v2, p0, Lcom/android/server/biometrics/BiometricService;->mCurrentAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

    goto :goto_105

    .line 1295
    :cond_ac
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Impossible session error state: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/biometrics/BiometricService;->mCurrentAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

    .line 1296
    invoke-static {v2}, Lcom/android/server/biometrics/BiometricService$AuthSession;->access$2500(Lcom/android/server/biometrics/BiometricService$AuthSession;)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1295
    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_105

    .line 1298
    :cond_c7
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService;->mPendingAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

    if-eqz v0, :cond_105

    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService;->mPendingAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

    .line 1299
    invoke-virtual {v0, p1}, Lcom/android/server/biometrics/BiometricService$AuthSession;->containsCookie(I)Z

    move-result v0

    if-eqz v0, :cond_105

    .line 1300
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService;->mPendingAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

    invoke-static {v0}, Lcom/android/server/biometrics/BiometricService$AuthSession;->access$2500(Lcom/android/server/biometrics/BiometricService$AuthSession;)I

    move-result v0

    const/4 v4, 0x1

    if-ne v0, v4, :cond_eb

    .line 1301
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService;->mPendingAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

    iget-object v0, v0, Lcom/android/server/biometrics/BiometricService$AuthSession;->mClientReceiver:Landroid/hardware/biometrics/IBiometricServiceReceiver;

    invoke-interface {v0, p2, p3}, Landroid/hardware/biometrics/IBiometricServiceReceiver;->onError(ILjava/lang/String;)V

    .line 1302
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService;->mPendingAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

    invoke-static {v0, v3}, Lcom/android/server/biometrics/BiometricService$AuthSession;->access$2502(Lcom/android/server/biometrics/BiometricService$AuthSession;I)I

    .line 1303
    iput-object v2, p0, Lcom/android/server/biometrics/BiometricService;->mPendingAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

    goto :goto_105

    .line 1305
    :cond_eb
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Impossible pending session error state: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/biometrics/BiometricService;->mPendingAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

    .line 1306
    invoke-static {v2}, Lcom/android/server/biometrics/BiometricService$AuthSession;->access$2500(Lcom/android/server/biometrics/BiometricService$AuthSession;)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1305
    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_105
    .catch Landroid/os/RemoteException; {:try_start_1e .. :try_end_105} :catch_106

    .line 1311
    :cond_105
    :goto_105
    goto :goto_10c

    .line 1309
    :catch_106
    move-exception v0

    .line 1310
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "Remote exception"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1312
    .end local v0  # "e":Landroid/os/RemoteException;
    :goto_10c
    return-void
.end method

.method private handleOnReadyForAuthentication(IZI)V
    .registers 16
    .param p1, "cookie"  # I
    .param p2, "requireConfirmation"  # Z
    .param p3, "userId"  # I

    .line 1397
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService;->mPendingAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

    iget-object v0, v0, Lcom/android/server/biometrics/BiometricService$AuthSession;->mModalitiesWaiting:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 1398
    .local v0, "it":Ljava/util/Iterator;
    :goto_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const-string v2, "BiometricService"

    if-eqz v1, :cond_6f

    .line 1399
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 1400
    .local v1, "pair":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v3, p1, :cond_6e

    .line 1401
    iget-object v3, p0, Lcom/android/server/biometrics/BiometricService;->mPendingAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

    iget-object v3, v3, Lcom/android/server/biometrics/BiometricService$AuthSession;->mModalitiesMatched:Ljava/util/HashMap;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1402
    iget-object v3, p0, Lcom/android/server/biometrics/BiometricService;->mPendingAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

    iget-object v3, v3, Lcom/android/server/biometrics/BiometricService$AuthSession;->mModalitiesWaiting:Ljava/util/HashMap;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1403
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Matched cookie: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/biometrics/BiometricService;->mPendingAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

    iget-object v4, v4, Lcom/android/server/biometrics/BiometricService$AuthSession;->mModalitiesWaiting:Ljava/util/HashMap;

    .line 1404
    invoke-virtual {v4}, Ljava/util/HashMap;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " remaining"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1403
    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1405
    goto :goto_6f

    .line 1407
    .end local v1  # "pair":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    :cond_6e
    goto :goto_c

    .line 1409
    :cond_6f
    :goto_6f
    iget-object v1, p0, Lcom/android/server/biometrics/BiometricService;->mPendingAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

    iget-object v1, v1, Lcom/android/server/biometrics/BiometricService$AuthSession;->mModalitiesWaiting:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_13c

    .line 1410
    iget-object v1, p0, Lcom/android/server/biometrics/BiometricService;->mCurrentAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

    const/4 v3, 0x1

    if-eqz v1, :cond_87

    .line 1411
    invoke-static {v1}, Lcom/android/server/biometrics/BiometricService$AuthSession;->access$2500(Lcom/android/server/biometrics/BiometricService$AuthSession;)I

    move-result v1

    const/4 v4, 0x3

    if-ne v1, v4, :cond_87

    move v1, v3

    goto :goto_88

    :cond_87
    const/4 v1, 0x0

    .line 1413
    .local v1, "continuing":Z
    :goto_88
    iget-object v4, p0, Lcom/android/server/biometrics/BiometricService;->mPendingAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

    iput-object v4, p0, Lcom/android/server/biometrics/BiometricService;->mCurrentAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

    .line 1414
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/server/biometrics/BiometricService;->mPendingAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

    .line 1416
    iget-object v4, p0, Lcom/android/server/biometrics/BiometricService;->mCurrentAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

    const/4 v5, 0x2

    invoke-static {v4, v5}, Lcom/android/server/biometrics/BiometricService$AuthSession;->access$2502(Lcom/android/server/biometrics/BiometricService$AuthSession;I)I

    .line 1418
    const/4 v4, 0x0

    .line 1419
    .local v4, "modality":I
    :try_start_96
    iget-object v6, p0, Lcom/android/server/biometrics/BiometricService;->mCurrentAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

    iget-object v6, v6, Lcom/android/server/biometrics/BiometricService$AuthSession;->mModalitiesMatched:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move-object v0, v6

    .line 1420
    :goto_a3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_11e

    .line 1421
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 1422
    .local v6, "pair":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-ne v7, v3, :cond_cb

    .line 1423
    iget-object v7, p0, Lcom/android/server/biometrics/BiometricService;->mFingerprintService:Landroid/hardware/fingerprint/IFingerprintService;

    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-interface {v7, v8}, Landroid/hardware/fingerprint/IFingerprintService;->startPreparedClient(I)V

    goto :goto_112

    .line 1424
    :cond_cb
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-ne v7, v5, :cond_dd

    .line 1425
    const-string v7, "Iris unsupported"

    invoke-static {v2, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_112

    .line 1426
    :cond_dd
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    const/4 v8, 0x4

    if-ne v7, v8, :cond_fa

    .line 1427
    iget-object v7, p0, Lcom/android/server/biometrics/BiometricService;->mFaceService:Landroid/hardware/face/IFaceService;

    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-interface {v7, v8}, Landroid/hardware/face/IFaceService;->startPreparedClient(I)V

    goto :goto_112

    .line 1429
    :cond_fa
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unknown modality: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1431
    :goto_112
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    or-int/2addr v4, v7

    .line 1432
    .end local v6  # "pair":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    goto :goto_a3

    .line 1434
    :cond_11e
    if-nez v1, :cond_135

    .line 1435
    iget-object v6, p0, Lcom/android/server/biometrics/BiometricService;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    iget-object v3, p0, Lcom/android/server/biometrics/BiometricService;->mCurrentAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

    iget-object v7, v3, Lcom/android/server/biometrics/BiometricService$AuthSession;->mBundle:Landroid/os/Bundle;

    iget-object v8, p0, Lcom/android/server/biometrics/BiometricService;->mInternalReceiver:Landroid/hardware/biometrics/IBiometricServiceReceiverInternal;

    move v9, v4

    move v10, p2

    move v11, p3

    invoke-interface/range {v6 .. v11}, Lcom/android/internal/statusbar/IStatusBarService;->showBiometricDialog(Landroid/os/Bundle;Landroid/hardware/biometrics/IBiometricServiceReceiverInternal;IZI)V

    .line 1437
    iget-object v3, p0, Lcom/android/server/biometrics/BiometricService;->mActivityTaskManager:Landroid/app/IActivityTaskManager;

    iget-object v5, p0, Lcom/android/server/biometrics/BiometricService;->mTaskStackListener:Lcom/android/server/biometrics/BiometricService$BiometricTaskStackListener;

    invoke-interface {v3, v5}, Landroid/app/IActivityTaskManager;->registerTaskStackListener(Landroid/app/ITaskStackListener;)V
    :try_end_135
    .catch Landroid/os/RemoteException; {:try_start_96 .. :try_end_135} :catch_136

    .line 1441
    .end local v4  # "modality":I
    :cond_135
    goto :goto_13c

    .line 1439
    :catch_136
    move-exception v3

    .line 1440
    .local v3, "e":Landroid/os/RemoteException;
    const-string v4, "Remote exception"

    invoke-static {v2, v4, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1443
    .end local v1  # "continuing":Z
    .end local v3  # "e":Landroid/os/RemoteException;
    :cond_13c
    :goto_13c
    return-void
.end method

.method private handleOnTryAgainPressed()V
    .registers 15

    .line 1379
    const-string v0, "BiometricService"

    const-string/jumbo v1, "onTryAgainPressed"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1382
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService;->mCurrentAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

    iget-object v2, v0, Lcom/android/server/biometrics/BiometricService$AuthSession;->mToken:Landroid/os/IBinder;

    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService;->mCurrentAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

    iget-wide v3, v0, Lcom/android/server/biometrics/BiometricService$AuthSession;->mSessionId:J

    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService;->mCurrentAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

    iget v5, v0, Lcom/android/server/biometrics/BiometricService$AuthSession;->mUserId:I

    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService;->mCurrentAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

    iget-object v6, v0, Lcom/android/server/biometrics/BiometricService$AuthSession;->mClientReceiver:Landroid/hardware/biometrics/IBiometricServiceReceiver;

    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService;->mCurrentAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

    iget-object v7, v0, Lcom/android/server/biometrics/BiometricService$AuthSession;->mOpPackageName:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService;->mCurrentAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

    iget-object v8, v0, Lcom/android/server/biometrics/BiometricService$AuthSession;->mBundle:Landroid/os/Bundle;

    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService;->mCurrentAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

    iget v9, v0, Lcom/android/server/biometrics/BiometricService$AuthSession;->mCallingUid:I

    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService;->mCurrentAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

    iget v10, v0, Lcom/android/server/biometrics/BiometricService$AuthSession;->mCallingPid:I

    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService;->mCurrentAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

    iget v11, v0, Lcom/android/server/biometrics/BiometricService$AuthSession;->mCallingUserId:I

    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService;->mCurrentAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

    iget v12, v0, Lcom/android/server/biometrics/BiometricService$AuthSession;->mModality:I

    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService;->mCurrentAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

    .line 1392
    invoke-static {v0}, Lcom/android/server/biometrics/BiometricService$AuthSession;->access$2600(Lcom/android/server/biometrics/BiometricService$AuthSession;)Landroid/hardware/biometrics/IBiometricConfirmDeviceCredentialCallback;

    move-result-object v13

    .line 1382
    move-object v1, p0

    invoke-direct/range {v1 .. v13}, Lcom/android/server/biometrics/BiometricService;->authenticateInternal(Landroid/os/IBinder;JILandroid/hardware/biometrics/IBiometricServiceReceiver;Ljava/lang/String;Landroid/os/Bundle;IIIILandroid/hardware/biometrics/IBiometricConfirmDeviceCredentialCallback;)V

    .line 1393
    return-void
.end method

.method private handleRegisterCancellationCallback(Landroid/hardware/biometrics/IBiometricConfirmDeviceCredentialCallback;)V
    .registers 4
    .param p1, "callback"  # Landroid/hardware/biometrics/IBiometricConfirmDeviceCredentialCallback;

    .line 1230
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService;->mCurrentAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

    const-string v1, "BiometricService"

    if-nez v0, :cond_c

    .line 1231
    const-string v0, "Current auth session null"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1232
    return-void

    .line 1234
    :cond_c
    const-string v0, "Updating cancel callback"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1235
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService;->mCurrentAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

    invoke-static {v0, p1}, Lcom/android/server/biometrics/BiometricService$AuthSession;->access$2602(Lcom/android/server/biometrics/BiometricService$AuthSession;Landroid/hardware/biometrics/IBiometricConfirmDeviceCredentialCallback;)Landroid/hardware/biometrics/IBiometricConfirmDeviceCredentialCallback;

    .line 1236
    return-void
.end method

.method private handleTaskStackChanged()V
    .registers 8

    .line 1114
    :try_start_0
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService;->mActivityTaskManager:Landroid/app/IActivityTaskManager;

    const/4 v1, 0x1

    .line 1115
    invoke-interface {v0, v1}, Landroid/app/IActivityTaskManager;->getTasks(I)Ljava/util/List;

    move-result-object v0

    .line 1116
    .local v0, "runningTasks":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4f

    .line 1117
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v2, v2, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 1118
    .local v2, "topPackage":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/biometrics/BiometricService;->mCurrentAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

    if-eqz v3, :cond_4f

    iget-object v3, p0, Lcom/android/server/biometrics/BiometricService;->mCurrentAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

    iget-object v3, v3, Lcom/android/server/biometrics/BiometricService$AuthSession;->mOpPackageName:Ljava/lang/String;

    .line 1119
    invoke-virtual {v2, v3}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4f

    .line 1120
    iget-object v3, p0, Lcom/android/server/biometrics/BiometricService;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    invoke-interface {v3}, Lcom/android/internal/statusbar/IStatusBarService;->hideBiometricDialog()V

    .line 1121
    iget-object v3, p0, Lcom/android/server/biometrics/BiometricService;->mActivityTaskManager:Landroid/app/IActivityTaskManager;

    iget-object v4, p0, Lcom/android/server/biometrics/BiometricService;->mTaskStackListener:Lcom/android/server/biometrics/BiometricService$BiometricTaskStackListener;

    invoke-interface {v3, v4}, Landroid/app/IActivityTaskManager;->unregisterTaskStackListener(Landroid/app/ITaskStackListener;)V

    .line 1122
    iget-object v3, p0, Lcom/android/server/biometrics/BiometricService;->mCurrentAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

    iget-object v3, v3, Lcom/android/server/biometrics/BiometricService$AuthSession;->mClientReceiver:Landroid/hardware/biometrics/IBiometricServiceReceiver;

    const/4 v4, 0x5

    .line 1124
    invoke-virtual {p0}, Lcom/android/server/biometrics/BiometricService;->getContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x10400fa

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 1122
    invoke-interface {v3, v4, v5}, Landroid/hardware/biometrics/IBiometricServiceReceiver;->onError(ILjava/lang/String;)V

    .line 1127
    iget-object v3, p0, Lcom/android/server/biometrics/BiometricService;->mCurrentAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

    invoke-static {v3, v1}, Lcom/android/server/biometrics/BiometricService$AuthSession;->access$2502(Lcom/android/server/biometrics/BiometricService$AuthSession;I)I

    .line 1128
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/biometrics/BiometricService;->mCurrentAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;
    :try_end_4f
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_4f} :catch_50

    .line 1133
    .end local v0  # "runningTasks":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    .end local v2  # "topPackage":Ljava/lang/String;
    :cond_4f
    goto :goto_58

    .line 1131
    :catch_50
    move-exception v0

    .line 1132
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "BiometricService"

    const-string v2, "Unable to get running tasks"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1134
    .end local v0  # "e":Landroid/os/RemoteException;
    :goto_58
    return-void
.end method

.method private hasFeature(I)Z
    .registers 3
    .param p1, "type"  # I

    .line 1027
    const/4 v0, 0x1

    if-eq p1, v0, :cond_11

    const/4 v0, 0x2

    if-eq p1, v0, :cond_e

    const/4 v0, 0x4

    if-eq p1, v0, :cond_b

    .line 1035
    const/4 v0, 0x0

    return v0

    .line 1033
    :cond_b
    iget-boolean v0, p0, Lcom/android/server/biometrics/BiometricService;->mHasFeatureFace:Z

    return v0

    .line 1031
    :cond_e
    iget-boolean v0, p0, Lcom/android/server/biometrics/BiometricService;->mHasFeatureIris:Z

    return v0

    .line 1029
    :cond_11
    iget-boolean v0, p0, Lcom/android/server/biometrics/BiometricService;->mHasFeatureFingerprint:Z

    return v0
.end method

.method private isEnabledForApp(II)Z
    .registers 5
    .param p1, "modality"  # I
    .param p2, "userId"  # I

    .line 983
    const/4 v0, 0x1

    if-eq p1, v0, :cond_29

    const/4 v1, 0x2

    if-eq p1, v1, :cond_28

    const/4 v0, 0x4

    if-eq p1, v0, :cond_21

    .line 991
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unsupported modality: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BiometricService"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 992
    const/4 v0, 0x0

    return v0

    .line 989
    :cond_21
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService;->mSettingObserver:Lcom/android/server/biometrics/BiometricService$SettingObserver;

    invoke-virtual {v0, p2}, Lcom/android/server/biometrics/BiometricService$SettingObserver;->getFaceEnabledForApps(I)Z

    move-result v0

    return v0

    .line 987
    :cond_28
    return v0

    .line 985
    :cond_29
    return v0
.end method

.method private logDialogDismissed(I)V
    .registers 16
    .param p1, "reason"  # I

    .line 1040
    const/4 v0, 0x1

    if-ne p1, v0, :cond_35

    .line 1044
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/server/biometrics/BiometricService;->mCurrentAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

    .line 1045
    invoke-static {v2}, Lcom/android/server/biometrics/BiometricService$AuthSession;->access$2400(Lcom/android/server/biometrics/BiometricService$AuthSession;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    .line 1058
    .local v0, "latency":J
    const/16 v4, 0x58

    .line 1059
    invoke-direct {p0}, Lcom/android/server/biometrics/BiometricService;->statsModality()I

    move-result v5

    iget-object v2, p0, Lcom/android/server/biometrics/BiometricService;->mCurrentAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

    iget v6, v2, Lcom/android/server/biometrics/BiometricService$AuthSession;->mUserId:I

    iget-object v2, p0, Lcom/android/server/biometrics/BiometricService;->mCurrentAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

    .line 1061
    invoke-virtual {v2}, Lcom/android/server/biometrics/BiometricService$AuthSession;->isCrypto()Z

    move-result v7

    const/4 v8, 0x2

    iget-object v2, p0, Lcom/android/server/biometrics/BiometricService;->mCurrentAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

    iget-boolean v9, v2, Lcom/android/server/biometrics/BiometricService$AuthSession;->mRequireConfirmation:Z

    const/4 v10, 0x3

    .line 1066
    invoke-virtual {p0}, Lcom/android/server/biometrics/BiometricService;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/biometrics/BiometricService;->mCurrentAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

    iget v3, v3, Lcom/android/server/biometrics/BiometricService$AuthSession;->mUserId:I

    invoke-static {v2, v3}, Lcom/android/server/biometrics/Utils;->isDebugEnabled(Landroid/content/Context;I)Z

    move-result v13

    .line 1058
    move-wide v11, v0

    invoke-static/range {v4 .. v13}, Landroid/util/StatsLog;->write(IIIZIZIJZ)I

    .line 1067
    .end local v0  # "latency":J
    goto :goto_68

    .line 1068
    :cond_35
    const/4 v0, 0x2

    if-ne p1, v0, :cond_3c

    .line 1069
    const/16 v0, 0xd

    move v7, v0

    goto :goto_45

    .line 1070
    :cond_3c
    const/4 v0, 0x3

    if-ne p1, v0, :cond_43

    .line 1071
    const/16 v0, 0xa

    move v7, v0

    goto :goto_45

    .line 1072
    :cond_43
    const/4 v0, 0x0

    move v7, v0

    :goto_45
    nop

    .line 1082
    .local v7, "error":I
    const/16 v1, 0x59

    .line 1083
    invoke-direct {p0}, Lcom/android/server/biometrics/BiometricService;->statsModality()I

    move-result v2

    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService;->mCurrentAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

    iget v3, v0, Lcom/android/server/biometrics/BiometricService$AuthSession;->mUserId:I

    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService;->mCurrentAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

    .line 1085
    invoke-virtual {v0}, Lcom/android/server/biometrics/BiometricService$AuthSession;->isCrypto()Z

    move-result v4

    const/4 v5, 0x2

    const/4 v6, 0x2

    const/4 v8, 0x0

    .line 1090
    invoke-virtual {p0}, Lcom/android/server/biometrics/BiometricService;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v9, p0, Lcom/android/server/biometrics/BiometricService;->mCurrentAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

    iget v9, v9, Lcom/android/server/biometrics/BiometricService$AuthSession;->mUserId:I

    invoke-static {v0, v9}, Lcom/android/server/biometrics/Utils;->isDebugEnabled(Landroid/content/Context;I)Z

    move-result v9

    .line 1082
    invoke-static/range {v1 .. v9}, Landroid/util/StatsLog;->write(IIIZIIIIZ)I

    .line 1092
    .end local v7  # "error":I
    :goto_68
    return-void
.end method

.method private statsModality()I
    .registers 3

    .line 1095
    const/4 v0, 0x0

    .line 1096
    .local v0, "modality":I
    iget-object v1, p0, Lcom/android/server/biometrics/BiometricService;->mCurrentAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

    if-nez v1, :cond_7

    .line 1097
    const/4 v1, 0x0

    return v1

    .line 1099
    :cond_7
    iget v1, v1, Lcom/android/server/biometrics/BiometricService$AuthSession;->mModality:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_f

    .line 1101
    or-int/lit8 v0, v0, 0x1

    .line 1103
    :cond_f
    iget-object v1, p0, Lcom/android/server/biometrics/BiometricService;->mCurrentAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

    iget v1, v1, Lcom/android/server/biometrics/BiometricService$AuthSession;->mModality:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_19

    .line 1104
    or-int/lit8 v0, v0, 0x2

    .line 1106
    :cond_19
    iget-object v1, p0, Lcom/android/server/biometrics/BiometricService;->mCurrentAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

    iget v1, v1, Lcom/android/server/biometrics/BiometricService$AuthSession;->mModality:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_23

    .line 1107
    or-int/lit8 v0, v0, 0x4

    .line 1109
    :cond_23
    return v0
.end method


# virtual methods
.method cancelInternal(Landroid/os/IBinder;Ljava/lang/String;Z)V
    .registers 18
    .param p1, "token"  # Landroid/os/IBinder;
    .param p2, "opPackageName"  # Ljava/lang/String;
    .param p3, "fromClient"  # Z

    .line 1598
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v8

    .line 1599
    .local v8, "callingUid":I
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v9

    .line 1600
    .local v9, "callingPid":I
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v10

    .line 1601
    .local v10, "callingUserId":I
    move-object v11, p0

    iget-object v12, v11, Lcom/android/server/biometrics/BiometricService;->mHandler:Landroid/os/Handler;

    new-instance v13, Lcom/android/server/biometrics/-$$Lambda$BiometricService$_uy2KOpZAFuLlEdqD9ofDZtdKeQ;

    move-object v0, v13

    move-object v1, p0

    move-object v2, p1

    move-object/from16 v3, p2

    move v4, v8

    move v5, v9

    move v6, v10

    move/from16 v7, p3

    invoke-direct/range {v0 .. v7}, Lcom/android/server/biometrics/-$$Lambda$BiometricService$_uy2KOpZAFuLlEdqD9ofDZtdKeQ;-><init>(Lcom/android/server/biometrics/BiometricService;Landroid/os/IBinder;Ljava/lang/String;IIIZ)V

    invoke-virtual {v12, v13}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1620
    return-void
.end method

.method public synthetic lambda$cancelInternal$2$BiometricService(Landroid/os/IBinder;Ljava/lang/String;IIIZ)V
    .registers 16
    .param p1, "token"  # Landroid/os/IBinder;
    .param p2, "opPackageName"  # Ljava/lang/String;
    .param p3, "callingUid"  # I
    .param p4, "callingPid"  # I
    .param p5, "callingUserId"  # I
    .param p6, "fromClient"  # Z

    .line 1605
    const-string v0, "BiometricService"

    :try_start_2
    iget v1, p0, Lcom/android/server/biometrics/BiometricService;->mCurrentModality:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_13

    .line 1606
    iget-object v2, p0, Lcom/android/server/biometrics/BiometricService;->mFingerprintService:Landroid/hardware/fingerprint/IFingerprintService;

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    move v8, p6

    invoke-interface/range {v2 .. v8}, Landroid/hardware/fingerprint/IFingerprintService;->cancelAuthenticationFromService(Landroid/os/IBinder;Ljava/lang/String;IIIZ)V

    .line 1609
    :cond_13
    iget v1, p0, Lcom/android/server/biometrics/BiometricService;->mCurrentModality:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1e

    .line 1610
    const-string v1, "Iris unsupported"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1612
    :cond_1e
    iget v1, p0, Lcom/android/server/biometrics/BiometricService;->mCurrentModality:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_2f

    .line 1613
    iget-object v2, p0, Lcom/android/server/biometrics/BiometricService;->mFaceService:Landroid/hardware/face/IFaceService;

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    move v8, p6

    invoke-interface/range {v2 .. v8}, Landroid/hardware/face/IFaceService;->cancelAuthenticationFromService(Landroid/os/IBinder;Ljava/lang/String;IIIZ)V
    :try_end_2f
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2f} :catch_30

    .line 1618
    :cond_2f
    goto :goto_36

    .line 1616
    :catch_30
    move-exception v1

    .line 1617
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "Unable to cancel authentication"

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1619
    .end local v1  # "e":Landroid/os/RemoteException;
    :goto_36
    return-void
.end method

.method public synthetic lambda$handleAuthenticate$1$BiometricService(ILandroid/hardware/biometrics/IBiometricServiceReceiver;Landroid/os/IBinder;JLjava/lang/String;Landroid/os/Bundle;IIILandroid/hardware/biometrics/IBiometricConfirmDeviceCredentialCallback;)V
    .registers 31
    .param p1, "userId"  # I
    .param p2, "receiver"  # Landroid/hardware/biometrics/IBiometricServiceReceiver;
    .param p3, "token"  # Landroid/os/IBinder;
    .param p4, "sessionId"  # J
    .param p6, "opPackageName"  # Ljava/lang/String;
    .param p7, "bundle"  # Landroid/os/Bundle;
    .param p8, "callingUid"  # I
    .param p9, "callingPid"  # I
    .param p10, "callingUserId"  # I
    .param p11, "callback"  # Landroid/hardware/biometrics/IBiometricConfirmDeviceCredentialCallback;

    .line 1451
    move-object/from16 v14, p0

    move-object/from16 v15, p2

    const-string v1, "BiometricService"

    invoke-direct/range {p0 .. p1}, Lcom/android/server/biometrics/BiometricService;->checkAndGetBiometricModality(I)Landroid/util/Pair;

    move-result-object v13

    .line 1452
    .local v13, "result":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    iget-object v0, v13, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v12

    .line 1453
    .local v12, "modality":I
    iget-object v0, v13, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v11

    .line 1456
    .local v11, "error":I
    if-eqz v11, :cond_52

    .line 1458
    nop

    .line 1459
    :try_start_1d
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/biometrics/BiometricService;->getContext()Landroid/content/Context;

    move-result-object v0

    const v2, 0x10400fc

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1460
    .local v0, "hardwareUnavailable":Ljava/lang/String;
    const/4 v2, 0x1

    if-eq v11, v2, :cond_46

    const/16 v2, 0xb

    if-eq v11, v2, :cond_3d

    const/16 v2, 0xc

    if-eq v11, v2, :cond_39

    .line 1472
    const-string v2, "Unhandled error"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4a

    .line 1462
    :cond_39
    invoke-interface {v15, v11, v0}, Landroid/hardware/biometrics/IBiometricServiceReceiver;->onError(ILjava/lang/String;)V

    .line 1463
    goto :goto_4a

    .line 1468
    :cond_3d
    const/4 v2, 0x0

    .line 1469
    invoke-direct {v14, v12, v11, v2}, Lcom/android/server/biometrics/BiometricService;->getErrorString(III)Ljava/lang/String;

    move-result-object v2

    .line 1468
    invoke-interface {v15, v11, v2}, Landroid/hardware/biometrics/IBiometricServiceReceiver;->onError(ILjava/lang/String;)V

    .line 1470
    goto :goto_4a

    .line 1465
    :cond_46
    invoke-interface {v15, v11, v0}, Landroid/hardware/biometrics/IBiometricServiceReceiver;->onError(ILjava/lang/String;)V
    :try_end_49
    .catch Landroid/os/RemoteException; {:try_start_1d .. :try_end_49} :catch_4b

    .line 1466
    nop

    .line 1477
    .end local v0  # "hardwareUnavailable":Ljava/lang/String;
    :goto_4a
    goto :goto_51

    .line 1475
    :catch_4b
    move-exception v0

    .line 1476
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "Unable to send error"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1478
    .end local v0  # "e":Landroid/os/RemoteException;
    :goto_51
    return-void

    .line 1481
    :cond_52
    iput v12, v14, Lcom/android/server/biometrics/BiometricService;->mCurrentModality:I

    .line 1485
    move-object/from16 v1, p0

    move-object/from16 v2, p3

    move-wide/from16 v3, p4

    move/from16 v5, p1

    move-object/from16 v6, p2

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    move/from16 v16, v11

    .end local v11  # "error":I
    .local v16, "error":I
    move/from16 v11, p10

    move/from16 v17, v12

    .end local v12  # "modality":I
    .local v17, "modality":I
    move-object/from16 v18, v13

    .end local v13  # "result":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    .local v18, "result":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    move-object/from16 v13, p11

    invoke-direct/range {v1 .. v13}, Lcom/android/server/biometrics/BiometricService;->authenticateInternal(Landroid/os/IBinder;JILandroid/hardware/biometrics/IBiometricServiceReceiver;Ljava/lang/String;Landroid/os/Bundle;IIIILandroid/hardware/biometrics/IBiometricConfirmDeviceCredentialCallback;)V

    .line 1487
    return-void
.end method

.method public synthetic lambda$handleOnError$0$BiometricService(ILjava/lang/String;)V
    .registers 6
    .param p1, "error"  # I
    .param p2, "message"  # Ljava/lang/String;

    .line 1272
    :try_start_0
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService;->mCurrentAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

    if-eqz v0, :cond_1b

    .line 1273
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService;->mActivityTaskManager:Landroid/app/IActivityTaskManager;

    iget-object v1, p0, Lcom/android/server/biometrics/BiometricService;->mTaskStackListener:Lcom/android/server/biometrics/BiometricService$BiometricTaskStackListener;

    invoke-interface {v0, v1}, Landroid/app/IActivityTaskManager;->unregisterTaskStackListener(Landroid/app/ITaskStackListener;)V

    .line 1275
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService;->mCurrentAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

    iget-object v0, v0, Lcom/android/server/biometrics/BiometricService$AuthSession;->mClientReceiver:Landroid/hardware/biometrics/IBiometricServiceReceiver;

    invoke-interface {v0, p1, p2}, Landroid/hardware/biometrics/IBiometricServiceReceiver;->onError(ILjava/lang/String;)V

    .line 1277
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService;->mCurrentAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/server/biometrics/BiometricService$AuthSession;->access$2502(Lcom/android/server/biometrics/BiometricService$AuthSession;I)I

    .line 1278
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/biometrics/BiometricService;->mCurrentAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;
    :try_end_1b
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_1b} :catch_1c

    .line 1282
    :cond_1b
    goto :goto_24

    .line 1280
    :catch_1c
    move-exception v0

    .line 1281
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "BiometricService"

    const-string v2, "Remote exception"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1283
    .end local v0  # "e":Landroid/os/RemoteException;
    :goto_24
    return-void
.end method

.method public onStart()V
    .registers 5

    .line 889
    iget-boolean v0, p0, Lcom/android/server/biometrics/BiometricService;->mHasFeatureFingerprint:Z

    if-eqz v0, :cond_11

    .line 890
    nop

    .line 891
    const-string v0, "fingerprint"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 890
    invoke-static {v0}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/fingerprint/IFingerprintService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/biometrics/BiometricService;->mFingerprintService:Landroid/hardware/fingerprint/IFingerprintService;

    .line 893
    :cond_11
    iget-boolean v0, p0, Lcom/android/server/biometrics/BiometricService;->mHasFeatureFace:Z

    if-eqz v0, :cond_22

    .line 894
    nop

    .line 895
    const-string v0, "face"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 894
    invoke-static {v0}, Landroid/hardware/face/IFaceService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/face/IFaceService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/biometrics/BiometricService;->mFaceService:Landroid/hardware/face/IFaceService;

    .line 898
    :cond_22
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/biometrics/BiometricService;->mActivityTaskManager:Landroid/app/IActivityTaskManager;

    .line 899
    nop

    .line 900
    const-string/jumbo v0, "statusbar"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 899
    invoke-static {v0}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/biometrics/BiometricService;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    .line 903
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_37
    sget-object v1, Lcom/android/server/biometrics/BiometricService;->FEATURE_ID:[I

    array-length v2, v1

    if-ge v0, v2, :cond_5b

    .line 904
    aget v1, v1, v0

    invoke-direct {p0, v1}, Lcom/android/server/biometrics/BiometricService;->hasFeature(I)Z

    move-result v1

    if-eqz v1, :cond_58

    .line 905
    new-instance v1, Lcom/android/server/biometrics/BiometricService$Authenticator;

    sget-object v2, Lcom/android/server/biometrics/BiometricService;->FEATURE_ID:[I

    aget v3, v2, v0

    aget v2, v2, v0

    .line 906
    invoke-direct {p0, v2}, Lcom/android/server/biometrics/BiometricService;->getAuthenticator(I)Landroid/hardware/biometrics/BiometricAuthenticator;

    move-result-object v2

    invoke-direct {v1, p0, v3, v2}, Lcom/android/server/biometrics/BiometricService$Authenticator;-><init>(Lcom/android/server/biometrics/BiometricService;ILandroid/hardware/biometrics/BiometricAuthenticator;)V

    .line 907
    .local v1, "authenticator":Lcom/android/server/biometrics/BiometricService$Authenticator;
    iget-object v2, p0, Lcom/android/server/biometrics/BiometricService;->mAuthenticators:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 903
    .end local v1  # "authenticator":Lcom/android/server/biometrics/BiometricService$Authenticator;
    :cond_58
    add-int/lit8 v0, v0, 0x1

    goto :goto_37

    .line 911
    .end local v0  # "i":I
    :cond_5b
    new-instance v0, Lcom/android/server/biometrics/BiometricService$BiometricServiceWrapper;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/biometrics/BiometricService$BiometricServiceWrapper;-><init>(Lcom/android/server/biometrics/BiometricService;Lcom/android/server/biometrics/BiometricService$1;)V

    const-string v1, "biometric"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/biometrics/BiometricService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 912
    return-void
.end method
