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
    .registers 4

    .line 886
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 260
    new-instance v0, Lcom/android/server/biometrics/BiometricService$BiometricTaskStackListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/biometrics/BiometricService$BiometricTaskStackListener;-><init>(Lcom/android/server/biometrics/BiometricService;Lcom/android/server/biometrics/BiometricService$1;)V

    iput-object v0, p0, Lcom/android/server/biometrics/BiometricService;->mTaskStackListener:Lcom/android/server/biometrics/BiometricService$BiometricTaskStackListener;

    .line 261
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Lcom/android/server/biometrics/BiometricService;->mRandom:Ljava/util/Random;

    .line 270
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/biometrics/BiometricService;->mAuthenticators:Ljava/util/ArrayList;

    .line 292
    new-instance v0, Lcom/android/server/biometrics/BiometricService$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/biometrics/BiometricService$1;-><init>(Lcom/android/server/biometrics/BiometricService;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/biometrics/BiometricService;->mHandler:Landroid/os/Handler;

    .line 562
    new-instance v0, Lcom/android/server/biometrics/BiometricService$2;

    invoke-direct {v0, p0}, Lcom/android/server/biometrics/BiometricService$2;-><init>(Lcom/android/server/biometrics/BiometricService;)V

    iput-object v0, p0, Lcom/android/server/biometrics/BiometricService;->mInternalReceiver:Landroid/hardware/biometrics/IBiometricServiceReceiverInternal;

    .line 888
    const-class v0, Landroid/app/AppOpsManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    iput-object v0, p0, Lcom/android/server/biometrics/BiometricService;->mAppOps:Landroid/app/AppOpsManager;

    .line 889
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/biometrics/BiometricService;->mEnabledOnKeyguardCallbacks:Ljava/util/List;

    .line 890
    new-instance v0, Lcom/android/server/biometrics/BiometricService$SettingObserver;

    iget-object v1, p0, Lcom/android/server/biometrics/BiometricService;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/android/server/biometrics/BiometricService$SettingObserver;-><init>(Lcom/android/server/biometrics/BiometricService;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/biometrics/BiometricService;->mSettingObserver:Lcom/android/server/biometrics/BiometricService$SettingObserver;

    .line 892
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    .line 893
    const-string v0, "android.hardware.fingerprint"

    invoke-virtual {p1, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/biometrics/BiometricService;->mHasFeatureFingerprint:Z

    .line 894
    const-string v0, "android.hardware.biometrics.iris"

    invoke-virtual {p1, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/biometrics/BiometricService;->mHasFeatureIris:Z

    .line 895
    const-string v0, "android.hardware.biometrics.face"

    invoke-virtual {p1, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/server/biometrics/BiometricService;->mHasFeatureFace:Z

    .line 898
    :try_start_61
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object p1

    new-instance v0, Lcom/android/server/biometrics/BiometricService$3;

    invoke-direct {v0, p0}, Lcom/android/server/biometrics/BiometricService$3;-><init>(Lcom/android/server/biometrics/BiometricService;)V

    const-class v1, Lcom/android/server/biometrics/BiometricService;

    .line 905
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 898
    invoke-interface {p1, v0, v1}, Landroid/app/IActivityManager;->registerUserSwitchObserver(Landroid/app/IUserSwitchObserver;Ljava/lang/String;)V
    :try_end_73
    .catch Landroid/os/RemoteException; {:try_start_61 .. :try_end_73} :catch_74

    .line 909
    goto :goto_7c

    .line 907
    :catch_74
    move-exception p1

    .line 908
    const-string v0, "BiometricService"

    const-string v1, "Failed to register user switch observer"

    invoke-static {v0, v1, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 910
    :goto_7c
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/biometrics/BiometricService;)Landroid/os/Handler;
    .registers 1

    .line 86
    iget-object p0, p0, Lcom/android/server/biometrics/BiometricService;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/android/server/biometrics/BiometricService;Landroid/os/IBinder;JILandroid/hardware/biometrics/IBiometricServiceReceiver;Ljava/lang/String;Landroid/os/Bundle;IIILandroid/hardware/biometrics/IBiometricConfirmDeviceCredentialCallback;)V
    .registers 12

    .line 86
    invoke-direct/range {p0 .. p11}, Lcom/android/server/biometrics/BiometricService;->handleAuthenticate(Landroid/os/IBinder;JILandroid/hardware/biometrics/IBiometricServiceReceiver;Ljava/lang/String;Landroid/os/Bundle;IIILandroid/hardware/biometrics/IBiometricConfirmDeviceCredentialCallback;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/server/biometrics/BiometricService;Landroid/os/IBinder;Ljava/lang/String;)V
    .registers 3

    .line 86
    invoke-direct {p0, p1, p2}, Lcom/android/server/biometrics/BiometricService;->handleCancelAuthentication(Landroid/os/IBinder;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/server/biometrics/BiometricService;)V
    .registers 1

    .line 86
    invoke-direct {p0}, Lcom/android/server/biometrics/BiometricService;->handleOnConfirmDeviceCredentialSuccess()V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/server/biometrics/BiometricService;ILjava/lang/String;)V
    .registers 3

    .line 86
    invoke-direct {p0, p1, p2}, Lcom/android/server/biometrics/BiometricService;->handleOnConfirmDeviceCredentialError(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/server/biometrics/BiometricService;Landroid/hardware/biometrics/IBiometricConfirmDeviceCredentialCallback;)V
    .registers 2

    .line 86
    invoke-direct {p0, p1}, Lcom/android/server/biometrics/BiometricService;->handleRegisterCancellationCallback(Landroid/hardware/biometrics/IBiometricConfirmDeviceCredentialCallback;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/server/biometrics/BiometricService;)Ljava/util/List;
    .registers 1

    .line 86
    iget-object p0, p0, Lcom/android/server/biometrics/BiometricService;->mEnabledOnKeyguardCallbacks:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$1600(Lcom/android/server/biometrics/BiometricService;)V
    .registers 1

    .line 86
    invoke-direct {p0}, Lcom/android/server/biometrics/BiometricService;->checkInternalPermission()V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/server/biometrics/BiometricService;)V
    .registers 1

    .line 86
    invoke-direct {p0}, Lcom/android/server/biometrics/BiometricService;->checkPermission()V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/server/biometrics/BiometricService;I)Landroid/util/Pair;
    .registers 2

    .line 86
    invoke-direct {p0, p1}, Lcom/android/server/biometrics/BiometricService;->checkAndGetBiometricModality(I)Landroid/util/Pair;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1900(Lcom/android/server/biometrics/BiometricService;)Lcom/android/server/biometrics/BiometricService$SettingObserver;
    .registers 1

    .line 86
    iget-object p0, p0, Lcom/android/server/biometrics/BiometricService;->mSettingObserver:Lcom/android/server/biometrics/BiometricService$SettingObserver;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/server/biometrics/BiometricService;)V
    .registers 1

    .line 86
    invoke-direct {p0}, Lcom/android/server/biometrics/BiometricService;->handleTaskStackChanged()V

    return-void
.end method

.method static synthetic access$2000(Lcom/android/server/biometrics/BiometricService;)Landroid/hardware/fingerprint/IFingerprintService;
    .registers 1

    .line 86
    iget-object p0, p0, Lcom/android/server/biometrics/BiometricService;->mFingerprintService:Landroid/hardware/fingerprint/IFingerprintService;

    return-object p0
.end method

.method static synthetic access$2100(Lcom/android/server/biometrics/BiometricService;)Landroid/hardware/face/IFaceService;
    .registers 1

    .line 86
    iget-object p0, p0, Lcom/android/server/biometrics/BiometricService;->mFaceService:Landroid/hardware/face/IFaceService;

    return-object p0
.end method

.method static synthetic access$2202(Lcom/android/server/biometrics/BiometricService;Landroid/hardware/biometrics/IBiometricServiceReceiver;)Landroid/hardware/biometrics/IBiometricServiceReceiver;
    .registers 2

    .line 86
    iput-object p1, p0, Lcom/android/server/biometrics/BiometricService;->mConfirmDeviceCredentialReceiver:Landroid/hardware/biometrics/IBiometricServiceReceiver;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/server/biometrics/BiometricService;Z[B)V
    .registers 3

    .line 86
    invoke-direct {p0, p1, p2}, Lcom/android/server/biometrics/BiometricService;->handleAuthenticationSucceeded(Z[B)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/biometrics/BiometricService;Ljava/lang/String;)V
    .registers 2

    .line 86
    invoke-direct {p0, p1}, Lcom/android/server/biometrics/BiometricService;->handleAuthenticationFailed(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/biometrics/BiometricService;IILjava/lang/String;)V
    .registers 4

    .line 86
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/biometrics/BiometricService;->handleOnError(IILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/biometrics/BiometricService;ILjava/lang/String;)V
    .registers 3

    .line 86
    invoke-direct {p0, p1, p2}, Lcom/android/server/biometrics/BiometricService;->handleOnAcquired(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/server/biometrics/BiometricService;I)V
    .registers 2

    .line 86
    invoke-direct {p0, p1}, Lcom/android/server/biometrics/BiometricService;->handleOnDismissed(I)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/server/biometrics/BiometricService;)V
    .registers 1

    .line 86
    invoke-direct {p0}, Lcom/android/server/biometrics/BiometricService;->handleOnTryAgainPressed()V

    return-void
.end method

.method static synthetic access$900(Lcom/android/server/biometrics/BiometricService;IZI)V
    .registers 4

    .line 86
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/biometrics/BiometricService;->handleOnReadyForAuthentication(IZI)V

    return-void
.end method

.method private authenticateInternal(Landroid/os/IBinder;JILandroid/hardware/biometrics/IBiometricServiceReceiver;Ljava/lang/String;Landroid/os/Bundle;IIIILandroid/hardware/biometrics/IBiometricConfirmDeviceCredentialCallback;)V
    .registers 44

    .line 1543
    move-object/from16 v0, p0

    move/from16 v15, p11

    const-string v14, "BiometricService"

    :try_start_6
    const-string/jumbo v1, "require_confirmation"

    const/4 v13, 0x1

    move-object/from16 v10, p7

    invoke-virtual {v10, v1, v13}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 1545
    and-int/lit8 v17, v15, 0x4

    if-eqz v17, :cond_29

    .line 1547
    if-nez v1, :cond_23

    iget-object v1, v0, Lcom/android/server/biometrics/BiometricService;->mSettingObserver:Lcom/android/server/biometrics/BiometricService$SettingObserver;

    .line 1548
    move/from16 v12, p4

    invoke-virtual {v1, v12}, Lcom/android/server/biometrics/BiometricService$SettingObserver;->getFaceAlwaysRequireConfirmation(I)Z

    move-result v1

    if-eqz v1, :cond_21

    goto :goto_25

    :cond_21
    const/4 v1, 0x0

    goto :goto_26

    .line 1547
    :cond_23
    move/from16 v12, p4

    .line 1548
    :goto_25
    move v1, v13

    :goto_26
    move/from16 v19, v1

    goto :goto_2d

    .line 1545
    :cond_29
    move/from16 v12, p4

    move/from16 v19, v1

    .line 1554
    :goto_2d
    iget-object v1, v0, Lcom/android/server/biometrics/BiometricService;->mRandom:Ljava/util/Random;

    const v2, 0x7ffffffe

    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    add-int/lit8 v11, v1, 0x1

    .line 1555
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Creating auth session. Modality: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", cookie: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v14, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1557
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 1558
    invoke-static/range {p11 .. p11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v3, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1559
    new-instance v9, Lcom/android/server/biometrics/BiometricService$AuthSession;
    :try_end_66
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_66} :catch_e3

    move-object v1, v9

    move-object/from16 v2, p0

    move-object/from16 v4, p1

    move-wide/from16 v5, p2

    move/from16 v7, p4

    move-object/from16 v8, p5

    move-object v0, v9

    move-object/from16 v9, p6

    move-object/from16 v10, p7

    move/from16 v26, v11

    move/from16 v11, p8

    move/from16 v12, p9

    move-object/from16 p5, v0

    move v0, v13

    move/from16 v13, p10

    move-object/from16 v30, v14

    move/from16 v14, p11

    move/from16 v15, v19

    move-object/from16 v16, p12

    :try_start_89
    invoke-direct/range {v1 .. v16}, Lcom/android/server/biometrics/BiometricService$AuthSession;-><init>(Lcom/android/server/biometrics/BiometricService;Ljava/util/HashMap;Landroid/os/IBinder;JILandroid/hardware/biometrics/IBiometricServiceReceiver;Ljava/lang/String;Landroid/os/Bundle;IIIIZLandroid/hardware/biometrics/IBiometricConfirmDeviceCredentialCallback;)V

    move-object/from16 v1, p0

    move-object/from16 v2, p5

    iput-object v2, v1, Lcom/android/server/biometrics/BiometricService;->mPendingAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

    .line 1562
    iget-object v2, v1, Lcom/android/server/biometrics/BiometricService;->mPendingAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

    invoke-static {v2, v0}, Lcom/android/server/biometrics/BiometricService$AuthSession;->access$2602(Lcom/android/server/biometrics/BiometricService$AuthSession;I)I

    .line 1564
    and-int/lit8 v0, p11, 0x1

    if-eqz v0, :cond_b2

    .line 1565
    iget-object v2, v1, Lcom/android/server/biometrics/BiometricService;->mFingerprintService:Landroid/hardware/fingerprint/IFingerprintService;

    iget-object v7, v1, Lcom/android/server/biometrics/BiometricService;->mInternalReceiver:Landroid/hardware/biometrics/IBiometricServiceReceiverInternal;

    move-object/from16 v3, p1

    move-wide/from16 v4, p2

    move/from16 v6, p4

    move-object/from16 v8, p6

    move/from16 v9, v26

    move/from16 v10, p8

    move/from16 v11, p9

    move/from16 v12, p10

    invoke-interface/range {v2 .. v12}, Landroid/hardware/fingerprint/IFingerprintService;->prepareForAuthentication(Landroid/os/IBinder;JILandroid/hardware/biometrics/IBiometricServiceReceiverInternal;Ljava/lang/String;IIII)V

    .line 1569
    :cond_b2
    and-int/lit8 v0, p11, 0x2

    if-eqz v0, :cond_be

    .line 1570
    const-string v0, "Iris unsupported"
    :try_end_b8
    .catch Landroid/os/RemoteException; {:try_start_89 .. :try_end_b8} :catch_df

    move-object/from16 v2, v30

    :try_start_ba
    invoke-static {v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c0

    .line 1569
    :cond_be
    move-object/from16 v2, v30

    .line 1572
    :goto_c0
    if-eqz v17, :cond_de

    .line 1573
    iget-object v0, v1, Lcom/android/server/biometrics/BiometricService;->mFaceService:Landroid/hardware/face/IFaceService;

    iget-object v1, v1, Lcom/android/server/biometrics/BiometricService;->mInternalReceiver:Landroid/hardware/biometrics/IBiometricServiceReceiverInternal;

    move-object/from16 v18, v0

    move-object/from16 v20, p1

    move-wide/from16 v21, p2

    move/from16 v23, p4

    move-object/from16 v24, v1

    move-object/from16 v25, p6

    move/from16 v27, p8

    move/from16 v28, p9

    move/from16 v29, p10

    invoke-interface/range {v18 .. v29}, Landroid/hardware/face/IFaceService;->prepareForAuthentication(ZLandroid/os/IBinder;JILandroid/hardware/biometrics/IBiometricServiceReceiverInternal;Ljava/lang/String;IIII)V
    :try_end_db
    .catch Landroid/os/RemoteException; {:try_start_ba .. :try_end_db} :catch_dc

    goto :goto_de

    .line 1577
    :catch_dc
    move-exception v0

    goto :goto_e5

    .line 1579
    :cond_de
    :goto_de
    goto :goto_ea

    .line 1577
    :catch_df
    move-exception v0

    move-object/from16 v2, v30

    goto :goto_e5

    :catch_e3
    move-exception v0

    move-object v2, v14

    .line 1578
    :goto_e5
    const-string v1, "Unable to start authentication"

    invoke-static {v2, v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1580
    :goto_ea
    return-void
.end method

.method private checkAndGetBiometricModality(I)Landroid/util/Pair;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 953
    nop

    .line 956
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService;->mAuthenticators:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    if-eqz v0, :cond_1a

    .line 957
    new-instance p1, Landroid/util/Pair;

    const/16 v0, 0xc

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {p1, v2, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1

    .line 966
    :cond_1a
    nop

    .line 967
    nop

    .line 968
    nop

    .line 970
    nop

    .line 971
    move v0, v1

    move v3, v0

    move v4, v3

    move v5, v4

    move v6, v5

    :goto_23
    iget-object v7, p0, Lcom/android/server/biometrics/BiometricService;->mAuthenticators:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    const/4 v8, 0x1

    if-ge v0, v7, :cond_67

    .line 972
    iget-object v4, p0, Lcom/android/server/biometrics/BiometricService;->mAuthenticators:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/biometrics/BiometricService$Authenticator;

    invoke-virtual {v4}, Lcom/android/server/biometrics/BiometricService$Authenticator;->getType()I

    move-result v4

    .line 973
    iget-object v7, p0, Lcom/android/server/biometrics/BiometricService;->mAuthenticators:Ljava/util/ArrayList;

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/biometrics/BiometricService$Authenticator;

    invoke-virtual {v7}, Lcom/android/server/biometrics/BiometricService$Authenticator;->getAuthenticator()Landroid/hardware/biometrics/BiometricAuthenticator;

    move-result-object v7

    .line 974
    invoke-interface {v7}, Landroid/hardware/biometrics/BiometricAuthenticator;->isHardwareDetected()Z

    move-result v9

    if-eqz v9, :cond_64

    .line 975
    nop

    .line 976
    if-nez v3, :cond_4e

    .line 979
    move v3, v4

    .line 981
    :cond_4e
    invoke-interface {v7, p1}, Landroid/hardware/biometrics/BiometricAuthenticator;->hasEnrolledTemplates(I)Z

    move-result v5

    if-eqz v5, :cond_63

    .line 982
    nop

    .line 983
    invoke-direct {p0, v4, p1}, Lcom/android/server/biometrics/BiometricService;->isEnabledForApp(II)Z

    move-result v5

    if-eqz v5, :cond_60

    .line 987
    nop

    .line 988
    move v1, v8

    move v5, v1

    move v6, v5

    goto :goto_67

    .line 983
    :cond_60
    move v5, v8

    move v6, v5

    goto :goto_64

    .line 981
    :cond_63
    move v5, v8

    .line 971
    :cond_64
    :goto_64
    add-int/lit8 v0, v0, 0x1

    goto :goto_23

    .line 994
    :cond_67
    :goto_67
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "checkAndGetBiometricModality: user="

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " isHardwareDetected="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, " hasTemplatesEnrolled="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, " enabledForApps="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "BiometricService"

    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1000
    if-nez v5, :cond_a1

    .line 1001
    new-instance p1, Landroid/util/Pair;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {p1, v2, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1

    .line 1002
    :cond_a1
    if-nez v6, :cond_b3

    .line 1005
    new-instance p1, Landroid/util/Pair;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v1, 0xb

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1

    .line 1006
    :cond_b3
    if-nez v1, :cond_bf

    .line 1007
    new-instance p1, Landroid/util/Pair;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {p1, v2, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1

    .line 1010
    :cond_bf
    new-instance p1, Landroid/util/Pair;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {p1, v0, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1
.end method

.method private checkAppOp(Ljava/lang/String;I)V
    .registers 5

    .line 856
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService;->mAppOps:Landroid/app/AppOpsManager;

    const/16 v1, 0x4e

    invoke-virtual {v0, v1, p2, p1}, Landroid/app/AppOpsManager;->noteOp(IILjava/lang/String;)I

    move-result p2

    if-nez p2, :cond_b

    .line 861
    return-void

    .line 858
    :cond_b
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Rejecting "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "; permission denied"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "BiometricService"

    invoke-static {p2, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 859
    new-instance p1, Ljava/lang/SecurityException;

    const-string p2, "Permission denied"

    invoke-direct {p1, p2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private checkInternalPermission()V
    .registers 4

    .line 864
    invoke-virtual {p0}, Lcom/android/server/biometrics/BiometricService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.USE_BIOMETRIC_INTERNAL"

    const-string v2, "Must have USE_BIOMETRIC_INTERNAL permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 866
    return-void
.end method

.method private checkPermission()V
    .registers 4

    .line 869
    invoke-virtual {p0}, Lcom/android/server/biometrics/BiometricService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.USE_FINGERPRINT"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_17

    .line 871
    invoke-virtual {p0}, Lcom/android/server/biometrics/BiometricService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.USE_BIOMETRIC"

    const-string v2, "Must have USE_BIOMETRIC permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 874
    :cond_17
    return-void
.end method

.method private getAuthenticator(I)Landroid/hardware/biometrics/BiometricAuthenticator;
    .registers 4

    .line 1043
    const/4 v0, 0x1

    if-eq p1, v0, :cond_1a

    const/4 v0, 0x2

    const/4 v1, 0x0

    if-eq p1, v0, :cond_19

    const/4 v0, 0x4

    if-eq p1, v0, :cond_b

    .line 1053
    return-object v1

    .line 1050
    :cond_b
    nop

    .line 1051
    invoke-virtual {p0}, Lcom/android/server/biometrics/BiometricService;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "face"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/face/FaceManager;

    .line 1050
    return-object p1

    .line 1048
    :cond_19
    return-object v1

    .line 1045
    :cond_1a
    nop

    .line 1046
    invoke-virtual {p0}, Lcom/android/server/biometrics/BiometricService;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "fingerprint"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/fingerprint/FingerprintManager;

    .line 1045
    return-object p1
.end method

.method private getErrorString(III)Ljava/lang/String;
    .registers 7

    .line 1028
    const/4 v0, 0x1

    if-eq p1, v0, :cond_30

    const/4 v0, 0x2

    const/4 v1, 0x0

    const-string v2, "BiometricService"

    if-eq p1, v0, :cond_2a

    const/4 v0, 0x4

    if-eq p1, v0, :cond_21

    .line 1037
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Unable to get error string for modality: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1038
    return-object v1

    .line 1035
    :cond_21
    invoke-virtual {p0}, Lcom/android/server/biometrics/BiometricService;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, p2, p3}, Landroid/hardware/face/FaceManager;->getErrorString(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 1032
    :cond_2a
    const-string p1, "Modality not supported"

    invoke-static {v2, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1033
    return-object v1

    .line 1030
    :cond_30
    invoke-virtual {p0}, Lcom/android/server/biometrics/BiometricService;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, p2, p3}, Landroid/hardware/fingerprint/FingerprintManager;->getErrorString(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private handleAuthenticate(Landroid/os/IBinder;JILandroid/hardware/biometrics/IBiometricServiceReceiver;Ljava/lang/String;Landroid/os/Bundle;IIILandroid/hardware/biometrics/IBiometricConfirmDeviceCredentialCallback;)V
    .registers 27

    .line 1489
    move-object v1, p0

    iget-object v13, v1, Lcom/android/server/biometrics/BiometricService;->mHandler:Landroid/os/Handler;

    new-instance v14, Lcom/android/server/biometrics/-$$Lambda$BiometricService$u838xLmNIeU4FVoszS6ZOdfG9A8;

    move-object v0, v14

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

    invoke-virtual {v13, v14}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1527
    return-void
.end method

.method private handleAuthenticationFailed(Ljava/lang/String;)V
    .registers 5

    .line 1208
    const-string v0, "BiometricService"

    :try_start_2
    iget-object v1, p0, Lcom/android/server/biometrics/BiometricService;->mCurrentAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

    if-nez v1, :cond_d

    .line 1209
    const-string/jumbo p1, "onAuthenticationFailed(): Auth session is null"

    invoke-static {v0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1210
    return-void

    .line 1213
    :cond_d
    iget-object v1, p0, Lcom/android/server/biometrics/BiometricService;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    const/4 v2, 0x0

    invoke-interface {v1, v2, p1}, Lcom/android/internal/statusbar/IStatusBarService;->onBiometricAuthenticated(ZLjava/lang/String;)V

    .line 1216
    iget-object p1, p0, Lcom/android/server/biometrics/BiometricService;->mCurrentAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

    iget p1, p1, Lcom/android/server/biometrics/BiometricService$AuthSession;->mModality:I

    and-int/lit8 p1, p1, 0x4

    if-eqz p1, :cond_21

    .line 1219
    iget-object p1, p0, Lcom/android/server/biometrics/BiometricService;->mCurrentAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

    const/4 v1, 0x3

    invoke-static {p1, v1}, Lcom/android/server/biometrics/BiometricService$AuthSession;->access$2602(Lcom/android/server/biometrics/BiometricService$AuthSession;I)I

    .line 1222
    :cond_21
    iget-object p1, p0, Lcom/android/server/biometrics/BiometricService;->mCurrentAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

    iget-object p1, p1, Lcom/android/server/biometrics/BiometricService$AuthSession;->mClientReceiver:Landroid/hardware/biometrics/IBiometricServiceReceiver;

    invoke-interface {p1}, Landroid/hardware/biometrics/IBiometricServiceReceiver;->onAuthenticationFailed()V
    :try_end_28
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_28} :catch_29

    .line 1225
    goto :goto_2f

    .line 1223
    :catch_29
    move-exception p1

    .line 1224
    const-string v1, "Remote exception"

    invoke-static {v0, v1, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1226
    :goto_2f
    return-void
.end method

.method private handleAuthenticationSucceeded(Z[B)V
    .registers 7

    .line 1177
    const-string v0, "BiometricService"

    :try_start_2
    iget-object v1, p0, Lcom/android/server/biometrics/BiometricService;->mCurrentAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

    if-nez v1, :cond_d

    .line 1178
    const-string/jumbo p1, "onAuthenticationSucceeded(): Auth session is null"

    invoke-static {v0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1179
    return-void

    .line 1182
    :cond_d
    const/4 v1, 0x0

    if-nez p1, :cond_2e

    .line 1183
    iget-object p1, p0, Lcom/android/server/biometrics/BiometricService;->mActivityTaskManager:Landroid/app/IActivityTaskManager;

    iget-object v2, p0, Lcom/android/server/biometrics/BiometricService;->mTaskStackListener:Lcom/android/server/biometrics/BiometricService$BiometricTaskStackListener;

    invoke-interface {p1, v2}, Landroid/app/IActivityTaskManager;->unregisterTaskStackListener(Landroid/app/ITaskStackListener;)V

    .line 1184
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/security/KeyStore;->addAuthToken([B)I

    .line 1185
    iget-object p1, p0, Lcom/android/server/biometrics/BiometricService;->mCurrentAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

    iget-object p1, p1, Lcom/android/server/biometrics/BiometricService$AuthSession;->mClientReceiver:Landroid/hardware/biometrics/IBiometricServiceReceiver;

    invoke-interface {p1}, Landroid/hardware/biometrics/IBiometricServiceReceiver;->onAuthenticationSucceeded()V

    .line 1186
    iget-object p1, p0, Lcom/android/server/biometrics/BiometricService;->mCurrentAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/android/server/biometrics/BiometricService$AuthSession;->access$2602(Lcom/android/server/biometrics/BiometricService$AuthSession;I)I

    .line 1187
    iput-object v1, p0, Lcom/android/server/biometrics/BiometricService;->mCurrentAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

    goto :goto_41

    .line 1189
    :cond_2e
    iget-object p1, p0, Lcom/android/server/biometrics/BiometricService;->mCurrentAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {p1, v2, v3}, Lcom/android/server/biometrics/BiometricService$AuthSession;->access$2402(Lcom/android/server/biometrics/BiometricService$AuthSession;J)J

    .line 1192
    iget-object p1, p0, Lcom/android/server/biometrics/BiometricService;->mCurrentAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

    iput-object p2, p1, Lcom/android/server/biometrics/BiometricService$AuthSession;->mTokenEscrow:[B

    .line 1193
    iget-object p1, p0, Lcom/android/server/biometrics/BiometricService;->mCurrentAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

    const/4 p2, 0x5

    invoke-static {p1, p2}, Lcom/android/server/biometrics/BiometricService$AuthSession;->access$2602(Lcom/android/server/biometrics/BiometricService$AuthSession;I)I

    .line 1198
    :goto_41
    iget-object p1, p0, Lcom/android/server/biometrics/BiometricService;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    const/4 p2, 0x1

    invoke-interface {p1, p2, v1}, Lcom/android/internal/statusbar/IStatusBarService;->onBiometricAuthenticated(ZLjava/lang/String;)V
    :try_end_47
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_47} :catch_48

    .line 1201
    goto :goto_4e

    .line 1199
    :catch_48
    move-exception p1

    .line 1200
    const-string p2, "Remote exception"

    invoke-static {v0, p2, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1202
    :goto_4e
    return-void
.end method

.method private handleCancelAuthentication(Landroid/os/IBinder;Ljava/lang/String;)V
    .registers 8

    .line 1583
    const-string v0, "BiometricService"

    if-eqz p1, :cond_8b

    if-nez p2, :cond_8

    goto/16 :goto_8b

    .line 1588
    :cond_8
    iget-object v1, p0, Lcom/android/server/biometrics/BiometricService;->mCurrentAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

    const/4 v2, 0x5

    if-eqz v1, :cond_39

    .line 1589
    invoke-static {v1}, Lcom/android/server/biometrics/BiometricService$AuthSession;->access$2600(Lcom/android/server/biometrics/BiometricService$AuthSession;)I

    move-result v1

    const/4 v3, 0x6

    if-ne v1, v3, :cond_39

    .line 1590
    const-string p1, "Cancel received while ConfirmDeviceCredential showing"

    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1592
    :try_start_19
    iget-object p1, p0, Lcom/android/server/biometrics/BiometricService;->mCurrentAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

    invoke-static {p1}, Lcom/android/server/biometrics/BiometricService$AuthSession;->access$2700(Lcom/android/server/biometrics/BiometricService$AuthSession;)Landroid/hardware/biometrics/IBiometricConfirmDeviceCredentialCallback;

    move-result-object p1

    invoke-interface {p1}, Landroid/hardware/biometrics/IBiometricConfirmDeviceCredentialCallback;->cancel()V
    :try_end_22
    .catch Landroid/os/RemoteException; {:try_start_19 .. :try_end_22} :catch_23

    .line 1595
    goto :goto_29

    .line 1593
    :catch_23
    move-exception p1

    .line 1594
    const-string p2, "Unable to cancel ConfirmDeviceCredential"

    invoke-static {v0, p2, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1598
    :goto_29
    nop

    .line 1599
    invoke-virtual {p0}, Lcom/android/server/biometrics/BiometricService;->getContext()Landroid/content/Context;

    move-result-object p1

    const p2, 0x10400fd

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 1598
    invoke-direct {p0, v2, p1}, Lcom/android/server/biometrics/BiometricService;->handleOnConfirmDeviceCredentialError(ILjava/lang/String;)V

    goto :goto_8a

    .line 1600
    :cond_39
    iget-object v1, p0, Lcom/android/server/biometrics/BiometricService;->mCurrentAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

    const/4 v3, 0x0

    if-eqz v1, :cond_6c

    .line 1601
    invoke-static {v1}, Lcom/android/server/biometrics/BiometricService$AuthSession;->access$2600(Lcom/android/server/biometrics/BiometricService$AuthSession;)I

    move-result v1

    const/4 v4, 0x2

    if-eq v1, v4, :cond_6c

    .line 1607
    :try_start_45
    iget-object p1, p0, Lcom/android/server/biometrics/BiometricService;->mCurrentAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

    iget-object p1, p1, Lcom/android/server/biometrics/BiometricService$AuthSession;->mClientReceiver:Landroid/hardware/biometrics/IBiometricServiceReceiver;

    .line 1609
    invoke-virtual {p0}, Lcom/android/server/biometrics/BiometricService;->getContext()Landroid/content/Context;

    move-result-object p2

    const v1, 0x1040100

    invoke-virtual {p2, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 1607
    invoke-interface {p1, v2, p2}, Landroid/hardware/biometrics/IBiometricServiceReceiver;->onError(ILjava/lang/String;)V

    .line 1613
    iget-object p1, p0, Lcom/android/server/biometrics/BiometricService;->mCurrentAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

    invoke-static {p1, v3}, Lcom/android/server/biometrics/BiometricService$AuthSession;->access$2602(Lcom/android/server/biometrics/BiometricService$AuthSession;I)I

    .line 1614
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/server/biometrics/BiometricService;->mCurrentAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

    .line 1615
    iget-object p1, p0, Lcom/android/server/biometrics/BiometricService;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    invoke-interface {p1}, Lcom/android/internal/statusbar/IStatusBarService;->hideBiometricDialog()V
    :try_end_64
    .catch Landroid/os/RemoteException; {:try_start_45 .. :try_end_64} :catch_65

    goto :goto_6b

    .line 1616
    :catch_65
    move-exception p1

    .line 1617
    const-string p2, "Remote exception"

    invoke-static {v0, p2, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1618
    :goto_6b
    goto :goto_8a

    .line 1620
    :cond_6c
    nop

    .line 1621
    iget-object v1, p0, Lcom/android/server/biometrics/BiometricService;->mCurrentAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

    if-eqz v1, :cond_7a

    .line 1622
    iget-object v1, v1, Lcom/android/server/biometrics/BiometricService$AuthSession;->mBundle:Landroid/os/Bundle;

    const-string v2, "from_confirm_device_credential"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    goto :goto_7b

    .line 1621
    :cond_7a
    move v1, v3

    .line 1626
    :goto_7b
    if-eqz v1, :cond_86

    .line 1627
    const-string v1, "Cancelling from CDC"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1628
    invoke-virtual {p0, p1, p2, v3}, Lcom/android/server/biometrics/BiometricService;->cancelInternal(Landroid/os/IBinder;Ljava/lang/String;Z)V

    goto :goto_8a

    .line 1630
    :cond_86
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/biometrics/BiometricService;->cancelInternal(Landroid/os/IBinder;Ljava/lang/String;Z)V

    .line 1634
    :goto_8a
    return-void

    .line 1584
    :cond_8b
    :goto_8b
    const-string p1, "Unable to cancel, one or more null arguments"

    invoke-static {v0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1585
    return-void
.end method

.method private handleOnAcquired(ILjava/lang/String;)V
    .registers 5

    .line 1353
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService;->mCurrentAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

    const-string v1, "BiometricService"

    if-nez v0, :cond_d

    .line 1354
    const-string/jumbo p1, "onAcquired(): Auth session is null"

    invoke-static {v1, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1355
    return-void

    .line 1358
    :cond_d
    if-eqz p1, :cond_32

    .line 1359
    if-nez p2, :cond_26

    .line 1360
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Ignoring null message: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1361
    return-void

    .line 1364
    :cond_26
    :try_start_26
    iget-object p1, p0, Lcom/android/server/biometrics/BiometricService;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    invoke-interface {p1, p2}, Lcom/android/internal/statusbar/IStatusBarService;->onBiometricHelp(Ljava/lang/String;)V
    :try_end_2b
    .catch Landroid/os/RemoteException; {:try_start_26 .. :try_end_2b} :catch_2c

    .line 1367
    goto :goto_32

    .line 1365
    :catch_2c
    move-exception p1

    .line 1366
    const-string p2, "Remote exception"

    invoke-static {v1, p2, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1369
    :cond_32
    :goto_32
    return-void
.end method

.method private handleOnConfirmDeviceCredentialError(ILjava/lang/String;)V
    .registers 7

    .line 1247
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService;->mConfirmDeviceCredentialReceiver:Landroid/hardware/biometrics/IBiometricServiceReceiver;

    const-string v1, "BiometricService"

    if-nez v0, :cond_24

    .line 1248
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onCDCAError null! Error: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1249
    return-void

    .line 1252
    :cond_24
    const/4 v0, 0x0

    :try_start_25
    iget-object v2, p0, Lcom/android/server/biometrics/BiometricService;->mActivityTaskManager:Landroid/app/IActivityTaskManager;

    iget-object v3, p0, Lcom/android/server/biometrics/BiometricService;->mTaskStackListener:Lcom/android/server/biometrics/BiometricService$BiometricTaskStackListener;

    invoke-interface {v2, v3}, Landroid/app/IActivityTaskManager;->unregisterTaskStackListener(Landroid/app/ITaskStackListener;)V

    .line 1253
    iget-object v2, p0, Lcom/android/server/biometrics/BiometricService;->mConfirmDeviceCredentialReceiver:Landroid/hardware/biometrics/IBiometricServiceReceiver;

    invoke-interface {v2, p1, p2}, Landroid/hardware/biometrics/IBiometricServiceReceiver;->onError(ILjava/lang/String;)V

    .line 1254
    iget-object p1, p0, Lcom/android/server/biometrics/BiometricService;->mCurrentAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

    if-eqz p1, :cond_3d

    .line 1255
    iget-object p1, p0, Lcom/android/server/biometrics/BiometricService;->mCurrentAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/android/server/biometrics/BiometricService$AuthSession;->access$2602(Lcom/android/server/biometrics/BiometricService$AuthSession;I)I

    .line 1256
    iput-object v0, p0, Lcom/android/server/biometrics/BiometricService;->mCurrentAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;
    :try_end_3d
    .catch Landroid/os/RemoteException; {:try_start_25 .. :try_end_3d} :catch_3e

    .line 1260
    :cond_3d
    goto :goto_44

    .line 1258
    :catch_3e
    move-exception p1

    .line 1259
    const-string p2, "RemoteException"

    invoke-static {v1, p2, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1261
    :goto_44
    iput-object v0, p0, Lcom/android/server/biometrics/BiometricService;->mConfirmDeviceCredentialReceiver:Landroid/hardware/biometrics/IBiometricServiceReceiver;

    .line 1262
    return-void
.end method

.method private handleOnConfirmDeviceCredentialSuccess()V
    .registers 5

    .line 1229
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService;->mConfirmDeviceCredentialReceiver:Landroid/hardware/biometrics/IBiometricServiceReceiver;

    const-string v1, "BiometricService"

    if-nez v0, :cond_d

    .line 1230
    const-string/jumbo v0, "onCDCASuccess null!"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1231
    return-void

    .line 1234
    :cond_d
    const/4 v0, 0x0

    :try_start_e
    iget-object v2, p0, Lcom/android/server/biometrics/BiometricService;->mActivityTaskManager:Landroid/app/IActivityTaskManager;

    iget-object v3, p0, Lcom/android/server/biometrics/BiometricService;->mTaskStackListener:Lcom/android/server/biometrics/BiometricService$BiometricTaskStackListener;

    invoke-interface {v2, v3}, Landroid/app/IActivityTaskManager;->unregisterTaskStackListener(Landroid/app/ITaskStackListener;)V

    .line 1235
    iget-object v2, p0, Lcom/android/server/biometrics/BiometricService;->mConfirmDeviceCredentialReceiver:Landroid/hardware/biometrics/IBiometricServiceReceiver;

    invoke-interface {v2}, Landroid/hardware/biometrics/IBiometricServiceReceiver;->onAuthenticationSucceeded()V

    .line 1236
    iget-object v2, p0, Lcom/android/server/biometrics/BiometricService;->mCurrentAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

    if-eqz v2, :cond_26

    .line 1237
    iget-object v2, p0, Lcom/android/server/biometrics/BiometricService;->mCurrentAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/android/server/biometrics/BiometricService$AuthSession;->access$2602(Lcom/android/server/biometrics/BiometricService$AuthSession;I)I

    .line 1238
    iput-object v0, p0, Lcom/android/server/biometrics/BiometricService;->mCurrentAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;
    :try_end_26
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_26} :catch_27

    .line 1242
    :cond_26
    goto :goto_2d

    .line 1240
    :catch_27
    move-exception v2

    .line 1241
    const-string v3, "RemoteException"

    invoke-static {v1, v3, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1243
    :goto_2d
    iput-object v0, p0, Lcom/android/server/biometrics/BiometricService;->mConfirmDeviceCredentialReceiver:Landroid/hardware/biometrics/IBiometricServiceReceiver;

    .line 1244
    return-void
.end method

.method private handleOnDismissed(I)V
    .registers 8

    .line 1372
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService;->mCurrentAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

    const-string v1, "BiometricService"

    if-nez v0, :cond_21

    .line 1373
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onDialogDismissed: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", auth session null"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1374
    return-void

    .line 1377
    :cond_21
    invoke-direct {p0, p1}, Lcom/android/server/biometrics/BiometricService;->logDialogDismissed(I)V

    .line 1380
    const/4 v0, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq p1, v2, :cond_36

    .line 1383
    :try_start_29
    iget-object v4, p0, Lcom/android/server/biometrics/BiometricService;->mCurrentAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

    iget-object v4, v4, Lcom/android/server/biometrics/BiometricService$AuthSession;->mClientReceiver:Landroid/hardware/biometrics/IBiometricServiceReceiver;

    invoke-interface {v4, p1}, Landroid/hardware/biometrics/IBiometricServiceReceiver;->onDialogDismissed(I)V

    .line 1386
    invoke-virtual {p0, v3, v3, v0}, Lcom/android/server/biometrics/BiometricService;->cancelInternal(Landroid/os/IBinder;Ljava/lang/String;Z)V

    goto :goto_36

    .line 1409
    :catch_34
    move-exception p1

    goto :goto_79

    .line 1388
    :cond_36
    :goto_36
    const/4 v4, 0x3

    if-ne p1, v4, :cond_4e

    .line 1389
    iget-object p1, p0, Lcom/android/server/biometrics/BiometricService;->mCurrentAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

    iget-object p1, p1, Lcom/android/server/biometrics/BiometricService$AuthSession;->mClientReceiver:Landroid/hardware/biometrics/IBiometricServiceReceiver;

    const/16 v2, 0xa

    .line 1391
    invoke-virtual {p0}, Lcom/android/server/biometrics/BiometricService;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x1040100

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 1389
    invoke-interface {p1, v2, v4}, Landroid/hardware/biometrics/IBiometricServiceReceiver;->onError(ILjava/lang/String;)V

    goto :goto_62

    .line 1393
    :cond_4e
    if-ne p1, v2, :cond_62

    .line 1396
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object p1

    iget-object v2, p0, Lcom/android/server/biometrics/BiometricService;->mCurrentAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

    iget-object v2, v2, Lcom/android/server/biometrics/BiometricService$AuthSession;->mTokenEscrow:[B

    invoke-virtual {p1, v2}, Landroid/security/KeyStore;->addAuthToken([B)I

    .line 1397
    iget-object p1, p0, Lcom/android/server/biometrics/BiometricService;->mCurrentAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

    iget-object p1, p1, Lcom/android/server/biometrics/BiometricService$AuthSession;->mClientReceiver:Landroid/hardware/biometrics/IBiometricServiceReceiver;

    invoke-interface {p1}, Landroid/hardware/biometrics/IBiometricServiceReceiver;->onAuthenticationSucceeded()V

    .line 1404
    :cond_62
    :goto_62
    iget-object p1, p0, Lcom/android/server/biometrics/BiometricService;->mCurrentAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

    invoke-virtual {p1}, Lcom/android/server/biometrics/BiometricService$AuthSession;->isFromConfirmDeviceCredential()Z

    move-result p1

    if-nez p1, :cond_78

    .line 1405
    iget-object p1, p0, Lcom/android/server/biometrics/BiometricService;->mActivityTaskManager:Landroid/app/IActivityTaskManager;

    iget-object v2, p0, Lcom/android/server/biometrics/BiometricService;->mTaskStackListener:Lcom/android/server/biometrics/BiometricService$BiometricTaskStackListener;

    invoke-interface {p1, v2}, Landroid/app/IActivityTaskManager;->unregisterTaskStackListener(Landroid/app/ITaskStackListener;)V

    .line 1406
    iget-object p1, p0, Lcom/android/server/biometrics/BiometricService;->mCurrentAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

    invoke-static {p1, v0}, Lcom/android/server/biometrics/BiometricService$AuthSession;->access$2602(Lcom/android/server/biometrics/BiometricService$AuthSession;I)I

    .line 1407
    iput-object v3, p0, Lcom/android/server/biometrics/BiometricService;->mCurrentAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;
    :try_end_78
    .catch Landroid/os/RemoteException; {:try_start_29 .. :try_end_78} :catch_34

    .line 1411
    :cond_78
    goto :goto_7e

    .line 1410
    :goto_79
    const-string v0, "Remote exception"

    invoke-static {v1, v0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1412
    :goto_7e
    return-void
.end method

.method private handleOnError(IILjava/lang/String;)V
    .registers 8

    .line 1275
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

    .line 1283
    :try_start_1e
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService;->mCurrentAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v0, :cond_c7

    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService;->mCurrentAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

    invoke-virtual {v0, p1}, Lcom/android/server/biometrics/BiometricService$AuthSession;->containsCookie(I)Z

    move-result v0

    if-eqz v0, :cond_c7

    .line 1285
    iget-object p1, p0, Lcom/android/server/biometrics/BiometricService;->mCurrentAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

    invoke-virtual {p1}, Lcom/android/server/biometrics/BiometricService$AuthSession;->isFromConfirmDeviceCredential()Z

    move-result p1

    if-eqz p1, :cond_4d

    .line 1288
    const-string p1, "From CDC, transition to CANCELED_SHOWING_CDC state"

    invoke-static {v1, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1292
    iget-object p1, p0, Lcom/android/server/biometrics/BiometricService;->mCurrentAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

    iget-object p1, p1, Lcom/android/server/biometrics/BiometricService$AuthSession;->mClientReceiver:Landroid/hardware/biometrics/IBiometricServiceReceiver;

    invoke-interface {p1, p2, p3}, Landroid/hardware/biometrics/IBiometricServiceReceiver;->onError(ILjava/lang/String;)V

    .line 1293
    iget-object p1, p0, Lcom/android/server/biometrics/BiometricService;->mCurrentAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

    const/4 p2, 0x6

    invoke-static {p1, p2}, Lcom/android/server/biometrics/BiometricService$AuthSession;->access$2602(Lcom/android/server/biometrics/BiometricService$AuthSession;I)I

    .line 1294
    iget-object p1, p0, Lcom/android/server/biometrics/BiometricService;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    invoke-interface {p1}, Lcom/android/internal/statusbar/IStatusBarService;->hideBiometricDialog()V

    goto/16 :goto_105

    .line 1295
    :cond_4d
    iget-object p1, p0, Lcom/android/server/biometrics/BiometricService;->mCurrentAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

    invoke-static {p1}, Lcom/android/server/biometrics/BiometricService$AuthSession;->access$2600(Lcom/android/server/biometrics/BiometricService$AuthSession;)I

    move-result p1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_88

    .line 1296
    iget-object p1, p0, Lcom/android/server/biometrics/BiometricService;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    invoke-interface {p1, p3}, Lcom/android/internal/statusbar/IStatusBarService;->onBiometricError(Ljava/lang/String;)V

    .line 1297
    const/4 p1, 0x5

    if-ne p2, p1, :cond_7a

    .line 1298
    iget-object p1, p0, Lcom/android/server/biometrics/BiometricService;->mActivityTaskManager:Landroid/app/IActivityTaskManager;

    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService;->mTaskStackListener:Lcom/android/server/biometrics/BiometricService$BiometricTaskStackListener;

    invoke-interface {p1, v0}, Landroid/app/IActivityTaskManager;->unregisterTaskStackListener(Landroid/app/ITaskStackListener;)V

    .line 1300
    iget-object p1, p0, Lcom/android/server/biometrics/BiometricService;->mCurrentAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

    iget-object p1, p1, Lcom/android/server/biometrics/BiometricService$AuthSession;->mClientReceiver:Landroid/hardware/biometrics/IBiometricServiceReceiver;

    invoke-interface {p1, p2, p3}, Landroid/hardware/biometrics/IBiometricServiceReceiver;->onError(ILjava/lang/String;)V

    .line 1301
    iget-object p1, p0, Lcom/android/server/biometrics/BiometricService;->mCurrentAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

    invoke-static {p1, v3}, Lcom/android/server/biometrics/BiometricService$AuthSession;->access$2602(Lcom/android/server/biometrics/BiometricService$AuthSession;I)I

    .line 1302
    iput-object v2, p0, Lcom/android/server/biometrics/BiometricService;->mCurrentAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

    .line 1303
    iget-object p1, p0, Lcom/android/server/biometrics/BiometricService;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    invoke-interface {p1}, Lcom/android/internal/statusbar/IStatusBarService;->hideBiometricDialog()V

    goto/16 :goto_105

    .line 1306
    :cond_7a
    iget-object p1, p0, Lcom/android/server/biometrics/BiometricService;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/server/biometrics/-$$Lambda$BiometricService$QhCJhzC2Bjg3cY0zTVc1KBEEOuA;

    invoke-direct {v0, p0, p2, p3}, Lcom/android/server/biometrics/-$$Lambda$BiometricService$QhCJhzC2Bjg3cY0zTVc1KBEEOuA;-><init>(Lcom/android/server/biometrics/BiometricService;ILjava/lang/String;)V

    const-wide/16 p2, 0x7d0

    invoke-virtual {p1, v0, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_105

    .line 1321
    :cond_88
    iget-object p1, p0, Lcom/android/server/biometrics/BiometricService;->mCurrentAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

    invoke-static {p1}, Lcom/android/server/biometrics/BiometricService$AuthSession;->access$2600(Lcom/android/server/biometrics/BiometricService$AuthSession;)I

    move-result p1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_ac

    .line 1324
    iget-object p1, p0, Lcom/android/server/biometrics/BiometricService;->mCurrentAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

    iget-object p1, p1, Lcom/android/server/biometrics/BiometricService$AuthSession;->mClientReceiver:Landroid/hardware/biometrics/IBiometricServiceReceiver;

    invoke-interface {p1, p2, p3}, Landroid/hardware/biometrics/IBiometricServiceReceiver;->onError(ILjava/lang/String;)V

    .line 1325
    iget-object p1, p0, Lcom/android/server/biometrics/BiometricService;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    invoke-interface {p1, p3}, Lcom/android/internal/statusbar/IStatusBarService;->onBiometricError(Ljava/lang/String;)V

    .line 1326
    iget-object p1, p0, Lcom/android/server/biometrics/BiometricService;->mActivityTaskManager:Landroid/app/IActivityTaskManager;

    iget-object p2, p0, Lcom/android/server/biometrics/BiometricService;->mTaskStackListener:Lcom/android/server/biometrics/BiometricService$BiometricTaskStackListener;

    invoke-interface {p1, p2}, Landroid/app/IActivityTaskManager;->unregisterTaskStackListener(Landroid/app/ITaskStackListener;)V

    .line 1328
    iget-object p1, p0, Lcom/android/server/biometrics/BiometricService;->mCurrentAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

    invoke-static {p1, v3}, Lcom/android/server/biometrics/BiometricService$AuthSession;->access$2602(Lcom/android/server/biometrics/BiometricService$AuthSession;I)I

    .line 1329
    iput-object v2, p0, Lcom/android/server/biometrics/BiometricService;->mCurrentAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

    goto :goto_105

    .line 1331
    :cond_ac
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Impossible session error state: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/android/server/biometrics/BiometricService;->mCurrentAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

    .line 1332
    invoke-static {p2}, Lcom/android/server/biometrics/BiometricService$AuthSession;->access$2600(Lcom/android/server/biometrics/BiometricService$AuthSession;)I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1331
    invoke-static {v1, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_105

    .line 1334
    :cond_c7
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService;->mPendingAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

    if-eqz v0, :cond_105

    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService;->mPendingAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

    .line 1335
    invoke-virtual {v0, p1}, Lcom/android/server/biometrics/BiometricService$AuthSession;->containsCookie(I)Z

    move-result p1

    if-eqz p1, :cond_105

    .line 1336
    iget-object p1, p0, Lcom/android/server/biometrics/BiometricService;->mPendingAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

    invoke-static {p1}, Lcom/android/server/biometrics/BiometricService$AuthSession;->access$2600(Lcom/android/server/biometrics/BiometricService$AuthSession;)I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_eb

    .line 1337
    iget-object p1, p0, Lcom/android/server/biometrics/BiometricService;->mPendingAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

    iget-object p1, p1, Lcom/android/server/biometrics/BiometricService$AuthSession;->mClientReceiver:Landroid/hardware/biometrics/IBiometricServiceReceiver;

    invoke-interface {p1, p2, p3}, Landroid/hardware/biometrics/IBiometricServiceReceiver;->onError(ILjava/lang/String;)V

    .line 1338
    iget-object p1, p0, Lcom/android/server/biometrics/BiometricService;->mPendingAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

    invoke-static {p1, v3}, Lcom/android/server/biometrics/BiometricService$AuthSession;->access$2602(Lcom/android/server/biometrics/BiometricService$AuthSession;I)I

    .line 1339
    iput-object v2, p0, Lcom/android/server/biometrics/BiometricService;->mPendingAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

    goto :goto_105

    .line 1341
    :cond_eb
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Impossible pending session error state: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/android/server/biometrics/BiometricService;->mPendingAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

    .line 1342
    invoke-static {p2}, Lcom/android/server/biometrics/BiometricService$AuthSession;->access$2600(Lcom/android/server/biometrics/BiometricService$AuthSession;)I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1341
    invoke-static {v1, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_105
    .catch Landroid/os/RemoteException; {:try_start_1e .. :try_end_105} :catch_106

    .line 1347
    :cond_105
    :goto_105
    goto :goto_10c

    .line 1345
    :catch_106
    move-exception p1

    .line 1346
    const-string p2, "Remote exception"

    invoke-static {v1, p2, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1348
    :goto_10c
    return-void
.end method

.method private handleOnReadyForAuthentication(IZI)V
    .registers 15

    .line 1433
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService;->mPendingAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

    iget-object v0, v0, Lcom/android/server/biometrics/BiometricService$AuthSession;->mModalitiesWaiting:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 1434
    :goto_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const-string v2, "BiometricService"

    if-eqz v1, :cond_6f

    .line 1435
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 1436
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v3, p1, :cond_6e

    .line 1437
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService;->mPendingAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

    iget-object v0, v0, Lcom/android/server/biometrics/BiometricService$AuthSession;->mModalitiesMatched:Ljava/util/HashMap;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1438
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService;->mPendingAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

    iget-object v0, v0, Lcom/android/server/biometrics/BiometricService$AuthSession;->mModalitiesWaiting:Ljava/util/HashMap;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1439
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Matched cookie: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/android/server/biometrics/BiometricService;->mPendingAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

    iget-object p1, p1, Lcom/android/server/biometrics/BiometricService$AuthSession;->mModalitiesWaiting:Ljava/util/HashMap;

    .line 1440
    invoke-virtual {p1}, Ljava/util/HashMap;->size()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " remaining"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1439
    invoke-static {v2, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1441
    goto :goto_6f

    .line 1443
    :cond_6e
    goto :goto_c

    .line 1445
    :cond_6f
    :goto_6f
    iget-object p1, p0, Lcom/android/server/biometrics/BiometricService;->mPendingAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

    iget-object p1, p1, Lcom/android/server/biometrics/BiometricService$AuthSession;->mModalitiesWaiting:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_145

    .line 1446
    iget-object p1, p0, Lcom/android/server/biometrics/BiometricService;->mCurrentAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_88

    .line 1447
    invoke-static {p1}, Lcom/android/server/biometrics/BiometricService$AuthSession;->access$2600(Lcom/android/server/biometrics/BiometricService$AuthSession;)I

    move-result p1

    const/4 v3, 0x3

    if-ne p1, v3, :cond_88

    move p1, v0

    goto :goto_89

    :cond_88
    move p1, v1

    .line 1449
    :goto_89
    iget-object v3, p0, Lcom/android/server/biometrics/BiometricService;->mPendingAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

    iput-object v3, p0, Lcom/android/server/biometrics/BiometricService;->mCurrentAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

    .line 1452
    iget-object v3, p0, Lcom/android/server/biometrics/BiometricService;->mCurrentAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v3, v4, v5}, Lcom/android/server/biometrics/BiometricService$AuthSession;->access$2502(Lcom/android/server/biometrics/BiometricService$AuthSession;J)J

    .line 1453
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/server/biometrics/BiometricService;->mPendingAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

    .line 1455
    iget-object v3, p0, Lcom/android/server/biometrics/BiometricService;->mCurrentAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

    const/4 v4, 0x2

    invoke-static {v3, v4}, Lcom/android/server/biometrics/BiometricService$AuthSession;->access$2602(Lcom/android/server/biometrics/BiometricService$AuthSession;I)I

    .line 1457
    nop

    .line 1458
    :try_start_a0
    iget-object v3, p0, Lcom/android/server/biometrics/BiometricService;->mCurrentAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

    iget-object v3, v3, Lcom/android/server/biometrics/BiometricService$AuthSession;->mModalitiesMatched:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v8, v1

    .line 1459
    :goto_ad
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_128

    .line 1460
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 1461
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-ne v5, v0, :cond_d5

    .line 1462
    iget-object v5, p0, Lcom/android/server/biometrics/BiometricService;->mFingerprintService:Landroid/hardware/fingerprint/IFingerprintService;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-interface {v5, v6}, Landroid/hardware/fingerprint/IFingerprintService;->startPreparedClient(I)V

    goto :goto_11c

    .line 1463
    :cond_d5
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-ne v5, v4, :cond_e7

    .line 1464
    const-string v5, "Iris unsupported"

    invoke-static {v2, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_11c

    .line 1465
    :cond_e7
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/4 v6, 0x4

    if-ne v5, v6, :cond_104

    .line 1466
    iget-object v5, p0, Lcom/android/server/biometrics/BiometricService;->mFaceService:Landroid/hardware/face/IFaceService;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-interface {v5, v6}, Landroid/hardware/face/IFaceService;->startPreparedClient(I)V

    goto :goto_11c

    .line 1468
    :cond_104
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown modality: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1470
    :goto_11c
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    or-int/2addr v8, v1

    .line 1471
    goto :goto_ad

    .line 1473
    :cond_128
    if-nez p1, :cond_13e

    .line 1474
    iget-object v5, p0, Lcom/android/server/biometrics/BiometricService;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    iget-object p1, p0, Lcom/android/server/biometrics/BiometricService;->mCurrentAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

    iget-object v6, p1, Lcom/android/server/biometrics/BiometricService$AuthSession;->mBundle:Landroid/os/Bundle;

    iget-object v7, p0, Lcom/android/server/biometrics/BiometricService;->mInternalReceiver:Landroid/hardware/biometrics/IBiometricServiceReceiverInternal;

    move v9, p2

    move v10, p3

    invoke-interface/range {v5 .. v10}, Lcom/android/internal/statusbar/IStatusBarService;->showBiometricDialog(Landroid/os/Bundle;Landroid/hardware/biometrics/IBiometricServiceReceiverInternal;IZI)V

    .line 1476
    iget-object p1, p0, Lcom/android/server/biometrics/BiometricService;->mActivityTaskManager:Landroid/app/IActivityTaskManager;

    iget-object p2, p0, Lcom/android/server/biometrics/BiometricService;->mTaskStackListener:Lcom/android/server/biometrics/BiometricService$BiometricTaskStackListener;

    invoke-interface {p1, p2}, Landroid/app/IActivityTaskManager;->registerTaskStackListener(Landroid/app/ITaskStackListener;)V
    :try_end_13e
    .catch Landroid/os/RemoteException; {:try_start_a0 .. :try_end_13e} :catch_13f

    .line 1480
    :cond_13e
    goto :goto_145

    .line 1478
    :catch_13f
    move-exception p1

    .line 1479
    const-string p2, "Remote exception"

    invoke-static {v2, p2, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1482
    :cond_145
    :goto_145
    return-void
.end method

.method private handleOnTryAgainPressed()V
    .registers 15

    .line 1415
    const-string v0, "BiometricService"

    const-string/jumbo v1, "onTryAgainPressed"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1418
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

    .line 1428
    invoke-static {v0}, Lcom/android/server/biometrics/BiometricService$AuthSession;->access$2700(Lcom/android/server/biometrics/BiometricService$AuthSession;)Landroid/hardware/biometrics/IBiometricConfirmDeviceCredentialCallback;

    move-result-object v13

    .line 1418
    move-object v1, p0

    invoke-direct/range {v1 .. v13}, Lcom/android/server/biometrics/BiometricService;->authenticateInternal(Landroid/os/IBinder;JILandroid/hardware/biometrics/IBiometricServiceReceiver;Ljava/lang/String;Landroid/os/Bundle;IIIILandroid/hardware/biometrics/IBiometricConfirmDeviceCredentialCallback;)V

    .line 1429
    return-void
.end method

.method private handleRegisterCancellationCallback(Landroid/hardware/biometrics/IBiometricConfirmDeviceCredentialCallback;)V
    .registers 4

    .line 1266
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService;->mCurrentAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

    const-string v1, "BiometricService"

    if-nez v0, :cond_c

    .line 1267
    const-string p1, "Current auth session null"

    invoke-static {v1, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1268
    return-void

    .line 1270
    :cond_c
    const-string v0, "Updating cancel callback"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1271
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService;->mCurrentAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

    invoke-static {v0, p1}, Lcom/android/server/biometrics/BiometricService$AuthSession;->access$2702(Lcom/android/server/biometrics/BiometricService$AuthSession;Landroid/hardware/biometrics/IBiometricConfirmDeviceCredentialCallback;)Landroid/hardware/biometrics/IBiometricConfirmDeviceCredentialCallback;

    .line 1272
    return-void
.end method

.method private handleTaskStackChanged()V
    .registers 6

    .line 1150
    :try_start_0
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService;->mActivityTaskManager:Landroid/app/IActivityTaskManager;

    const/4 v1, 0x1

    .line 1151
    invoke-interface {v0, v1}, Landroid/app/IActivityTaskManager;->getTasks(I)Ljava/util/List;

    move-result-object v0

    .line 1152
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4f

    .line 1153
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 1154
    iget-object v2, p0, Lcom/android/server/biometrics/BiometricService;->mCurrentAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

    if-eqz v2, :cond_4f

    iget-object v2, p0, Lcom/android/server/biometrics/BiometricService;->mCurrentAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

    iget-object v2, v2, Lcom/android/server/biometrics/BiometricService$AuthSession;->mOpPackageName:Ljava/lang/String;

    .line 1155
    invoke-virtual {v0, v2}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4f

    .line 1156
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    invoke-interface {v0}, Lcom/android/internal/statusbar/IStatusBarService;->hideBiometricDialog()V

    .line 1157
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService;->mActivityTaskManager:Landroid/app/IActivityTaskManager;

    iget-object v2, p0, Lcom/android/server/biometrics/BiometricService;->mTaskStackListener:Lcom/android/server/biometrics/BiometricService$BiometricTaskStackListener;

    invoke-interface {v0, v2}, Landroid/app/IActivityTaskManager;->unregisterTaskStackListener(Landroid/app/ITaskStackListener;)V

    .line 1158
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService;->mCurrentAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

    iget-object v0, v0, Lcom/android/server/biometrics/BiometricService$AuthSession;->mClientReceiver:Landroid/hardware/biometrics/IBiometricServiceReceiver;

    const/4 v2, 0x5

    .line 1160
    invoke-virtual {p0}, Lcom/android/server/biometrics/BiometricService;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x10400fd

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1158
    invoke-interface {v0, v2, v3}, Landroid/hardware/biometrics/IBiometricServiceReceiver;->onError(ILjava/lang/String;)V

    .line 1163
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService;->mCurrentAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

    invoke-static {v0, v1}, Lcom/android/server/biometrics/BiometricService$AuthSession;->access$2602(Lcom/android/server/biometrics/BiometricService$AuthSession;I)I

    .line 1164
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/biometrics/BiometricService;->mCurrentAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;
    :try_end_4f
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_4f} :catch_50

    .line 1169
    :cond_4f
    goto :goto_58

    .line 1167
    :catch_50
    move-exception v0

    .line 1168
    const-string v1, "BiometricService"

    const-string v2, "Unable to get running tasks"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1170
    :goto_58
    return-void
.end method

.method private hasFeature(I)Z
    .registers 3

    .line 1058
    const/4 v0, 0x1

    if-eq p1, v0, :cond_11

    const/4 v0, 0x2

    if-eq p1, v0, :cond_e

    const/4 v0, 0x4

    if-eq p1, v0, :cond_b

    .line 1066
    const/4 p1, 0x0

    return p1

    .line 1064
    :cond_b
    iget-boolean p1, p0, Lcom/android/server/biometrics/BiometricService;->mHasFeatureFace:Z

    return p1

    .line 1062
    :cond_e
    iget-boolean p1, p0, Lcom/android/server/biometrics/BiometricService;->mHasFeatureIris:Z

    return p1

    .line 1060
    :cond_11
    iget-boolean p1, p0, Lcom/android/server/biometrics/BiometricService;->mHasFeatureFingerprint:Z

    return p1
.end method

.method private isEnabledForApp(II)Z
    .registers 5

    .line 1014
    const/4 v0, 0x1

    if-eq p1, v0, :cond_29

    const/4 v1, 0x2

    if-eq p1, v1, :cond_28

    const/4 v0, 0x4

    if-eq p1, v0, :cond_21

    .line 1022
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unsupported modality: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "BiometricService"

    invoke-static {p2, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1023
    const/4 p1, 0x0

    return p1

    .line 1020
    :cond_21
    iget-object p1, p0, Lcom/android/server/biometrics/BiometricService;->mSettingObserver:Lcom/android/server/biometrics/BiometricService$SettingObserver;

    invoke-virtual {p1, p2}, Lcom/android/server/biometrics/BiometricService$SettingObserver;->getFaceEnabledForApps(I)Z

    move-result p1

    return p1

    .line 1018
    :cond_28
    return v0

    .line 1016
    :cond_29
    return v0
.end method

.method private logDialogDismissed(I)V
    .registers 19

    .line 1071
    move-object/from16 v0, p0

    move/from16 v1, p1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_39

    .line 1075
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-object v3, v0, Lcom/android/server/biometrics/BiometricService;->mCurrentAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

    .line 1076
    invoke-static {v3}, Lcom/android/server/biometrics/BiometricService$AuthSession;->access$2400(Lcom/android/server/biometrics/BiometricService$AuthSession;)J

    move-result-wide v3

    sub-long v12, v1, v3

    .line 1089
    const/16 v5, 0x58

    .line 1090
    invoke-direct/range {p0 .. p0}, Lcom/android/server/biometrics/BiometricService;->statsModality()I

    move-result v6

    iget-object v1, v0, Lcom/android/server/biometrics/BiometricService;->mCurrentAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

    iget v7, v1, Lcom/android/server/biometrics/BiometricService$AuthSession;->mUserId:I

    iget-object v1, v0, Lcom/android/server/biometrics/BiometricService;->mCurrentAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

    .line 1092
    invoke-virtual {v1}, Lcom/android/server/biometrics/BiometricService$AuthSession;->isCrypto()Z

    move-result v8

    const/4 v9, 0x2

    iget-object v1, v0, Lcom/android/server/biometrics/BiometricService;->mCurrentAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

    iget-boolean v10, v1, Lcom/android/server/biometrics/BiometricService$AuthSession;->mRequireConfirmation:Z

    const/4 v11, 0x3

    .line 1097
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/biometrics/BiometricService;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v0, v0, Lcom/android/server/biometrics/BiometricService;->mCurrentAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

    iget v0, v0, Lcom/android/server/biometrics/BiometricService$AuthSession;->mUserId:I

    invoke-static {v1, v0}, Lcom/android/server/biometrics/Utils;->isDebugEnabled(Landroid/content/Context;I)Z

    move-result v14

    .line 1089
    invoke-static/range {v5 .. v14}, Landroid/util/StatsLog;->write(IIIZIZIJZ)I

    .line 1098
    goto :goto_77

    .line 1100
    :cond_39
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v4, v0, Lcom/android/server/biometrics/BiometricService;->mCurrentAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

    invoke-static {v4}, Lcom/android/server/biometrics/BiometricService$AuthSession;->access$2500(Lcom/android/server/biometrics/BiometricService$AuthSession;)J

    move-result-wide v4

    sub-long v15, v2, v4

    .line 1102
    const/4 v2, 0x2

    if-ne v1, v2, :cond_4c

    .line 1103
    const/16 v1, 0xd

    move v12, v1

    goto :goto_55

    .line 1104
    :cond_4c
    const/4 v2, 0x3

    if-ne v1, v2, :cond_53

    .line 1105
    const/16 v1, 0xa

    move v12, v1

    goto :goto_55

    .line 1106
    :cond_53
    const/4 v1, 0x0

    move v12, v1

    .line 1117
    :goto_55
    const/16 v6, 0x59

    .line 1118
    invoke-direct/range {p0 .. p0}, Lcom/android/server/biometrics/BiometricService;->statsModality()I

    move-result v7

    iget-object v1, v0, Lcom/android/server/biometrics/BiometricService;->mCurrentAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

    iget v8, v1, Lcom/android/server/biometrics/BiometricService$AuthSession;->mUserId:I

    iget-object v1, v0, Lcom/android/server/biometrics/BiometricService;->mCurrentAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

    .line 1120
    invoke-virtual {v1}, Lcom/android/server/biometrics/BiometricService$AuthSession;->isCrypto()Z

    move-result v9

    const/4 v10, 0x2

    const/4 v11, 0x2

    const/4 v13, 0x0

    .line 1125
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/biometrics/BiometricService;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v0, v0, Lcom/android/server/biometrics/BiometricService;->mCurrentAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

    iget v0, v0, Lcom/android/server/biometrics/BiometricService$AuthSession;->mUserId:I

    invoke-static {v1, v0}, Lcom/android/server/biometrics/Utils;->isDebugEnabled(Landroid/content/Context;I)Z

    move-result v14

    .line 1117
    invoke-static/range {v6 .. v16}, Landroid/util/StatsLog;->write(IIIZIIIIZJ)I

    .line 1128
    :goto_77
    return-void
.end method

.method private statsModality()I
    .registers 4

    .line 1131
    nop

    .line 1132
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService;->mCurrentAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

    const/4 v1, 0x0

    if-nez v0, :cond_7

    .line 1133
    return v1

    .line 1135
    :cond_7
    iget v0, v0, Lcom/android/server/biometrics/BiometricService$AuthSession;->mModality:I

    const/4 v2, 0x1

    and-int/2addr v0, v2

    if-eqz v0, :cond_e

    .line 1137
    move v1, v2

    .line 1139
    :cond_e
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService;->mCurrentAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

    iget v0, v0, Lcom/android/server/biometrics/BiometricService$AuthSession;->mModality:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_18

    .line 1140
    or-int/lit8 v1, v1, 0x2

    .line 1142
    :cond_18
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService;->mCurrentAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

    iget v0, v0, Lcom/android/server/biometrics/BiometricService$AuthSession;->mModality:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_22

    .line 1143
    or-int/lit8 v1, v1, 0x4

    .line 1145
    :cond_22
    return v1
.end method


# virtual methods
.method cancelInternal(Landroid/os/IBinder;Ljava/lang/String;Z)V
    .registers 14

    .line 1637
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    .line 1638
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v5

    .line 1639
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v6

    .line 1640
    iget-object v8, p0, Lcom/android/server/biometrics/BiometricService;->mHandler:Landroid/os/Handler;

    new-instance v9, Lcom/android/server/biometrics/-$$Lambda$BiometricService$_uy2KOpZAFuLlEdqD9ofDZtdKeQ;

    move-object v0, v9

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v7, p3

    invoke-direct/range {v0 .. v7}, Lcom/android/server/biometrics/-$$Lambda$BiometricService$_uy2KOpZAFuLlEdqD9ofDZtdKeQ;-><init>(Lcom/android/server/biometrics/BiometricService;Landroid/os/IBinder;Ljava/lang/String;IIIZ)V

    invoke-virtual {v8, v9}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1659
    return-void
.end method

.method public synthetic lambda$cancelInternal$2$BiometricService(Landroid/os/IBinder;Ljava/lang/String;IIIZ)V
    .registers 16

    .line 1644
    const-string v0, "BiometricService"

    :try_start_2
    iget v1, p0, Lcom/android/server/biometrics/BiometricService;->mCurrentModality:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_13

    .line 1645
    iget-object v2, p0, Lcom/android/server/biometrics/BiometricService;->mFingerprintService:Landroid/hardware/fingerprint/IFingerprintService;

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    move v8, p6

    invoke-interface/range {v2 .. v8}, Landroid/hardware/fingerprint/IFingerprintService;->cancelAuthenticationFromService(Landroid/os/IBinder;Ljava/lang/String;IIIZ)V

    .line 1648
    :cond_13
    iget v1, p0, Lcom/android/server/biometrics/BiometricService;->mCurrentModality:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1e

    .line 1649
    const-string v1, "Iris unsupported"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1651
    :cond_1e
    iget v1, p0, Lcom/android/server/biometrics/BiometricService;->mCurrentModality:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_2f

    .line 1652
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

    .line 1657
    :cond_2f
    goto :goto_36

    .line 1655
    :catch_30
    move-exception p1

    .line 1656
    const-string p1, "Unable to cancel authentication"

    invoke-static {v0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1658
    :goto_36
    return-void
.end method

.method public synthetic lambda$handleAuthenticate$1$BiometricService(ILandroid/hardware/biometrics/IBiometricServiceReceiver;Landroid/os/IBinder;JLjava/lang/String;Landroid/os/Bundle;IIILandroid/hardware/biometrics/IBiometricConfirmDeviceCredentialCallback;)V
    .registers 26

    .line 1490
    move-object v0, p0

    move-object/from16 v6, p2

    const-string v1, "BiometricService"

    invoke-direct {p0, p1}, Lcom/android/server/biometrics/BiometricService;->checkAndGetBiometricModality(I)Landroid/util/Pair;

    move-result-object v2

    .line 1491
    iget-object v3, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v12

    .line 1492
    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 1495
    if-eqz v2, :cond_51

    .line 1497
    nop

    .line 1498
    :try_start_1c
    invoke-virtual {p0}, Lcom/android/server/biometrics/BiometricService;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x10400ff

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1499
    const/4 v4, 0x1

    if-eq v2, v4, :cond_45

    const/16 v4, 0xb

    if-eq v2, v4, :cond_3c

    const/16 v0, 0xc

    if-eq v2, v0, :cond_38

    .line 1511
    const-string v0, "Unhandled error"

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_49

    .line 1501
    :cond_38
    invoke-interface {v6, v2, v3}, Landroid/hardware/biometrics/IBiometricServiceReceiver;->onError(ILjava/lang/String;)V

    .line 1502
    goto :goto_49

    .line 1507
    :cond_3c
    const/4 v3, 0x0

    .line 1508
    invoke-direct {p0, v12, v2, v3}, Lcom/android/server/biometrics/BiometricService;->getErrorString(III)Ljava/lang/String;

    move-result-object v0

    .line 1507
    invoke-interface {v6, v2, v0}, Landroid/hardware/biometrics/IBiometricServiceReceiver;->onError(ILjava/lang/String;)V

    .line 1509
    goto :goto_49

    .line 1504
    :cond_45
    invoke-interface {v6, v2, v3}, Landroid/hardware/biometrics/IBiometricServiceReceiver;->onError(ILjava/lang/String;)V
    :try_end_48
    .catch Landroid/os/RemoteException; {:try_start_1c .. :try_end_48} :catch_4a

    .line 1505
    nop

    .line 1516
    :goto_49
    goto :goto_50

    .line 1514
    :catch_4a
    move-exception v0

    .line 1515
    const-string v2, "Unable to send error"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1517
    :goto_50
    return-void

    .line 1520
    :cond_51
    iput v12, v0, Lcom/android/server/biometrics/BiometricService;->mCurrentModality:I

    .line 1524
    move-object v1, p0

    move-object/from16 v2, p3

    move-wide/from16 v3, p4

    move v5, p1

    move-object/from16 v6, p2

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    move/from16 v11, p10

    move-object/from16 v13, p11

    invoke-direct/range {v1 .. v13}, Lcom/android/server/biometrics/BiometricService;->authenticateInternal(Landroid/os/IBinder;JILandroid/hardware/biometrics/IBiometricServiceReceiver;Ljava/lang/String;Landroid/os/Bundle;IIIILandroid/hardware/biometrics/IBiometricConfirmDeviceCredentialCallback;)V

    .line 1526
    return-void
.end method

.method public synthetic lambda$handleOnError$0$BiometricService(ILjava/lang/String;)V
    .registers 5

    .line 1308
    :try_start_0
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService;->mCurrentAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

    if-eqz v0, :cond_1b

    .line 1309
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService;->mActivityTaskManager:Landroid/app/IActivityTaskManager;

    iget-object v1, p0, Lcom/android/server/biometrics/BiometricService;->mTaskStackListener:Lcom/android/server/biometrics/BiometricService$BiometricTaskStackListener;

    invoke-interface {v0, v1}, Landroid/app/IActivityTaskManager;->unregisterTaskStackListener(Landroid/app/ITaskStackListener;)V

    .line 1311
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService;->mCurrentAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

    iget-object v0, v0, Lcom/android/server/biometrics/BiometricService$AuthSession;->mClientReceiver:Landroid/hardware/biometrics/IBiometricServiceReceiver;

    invoke-interface {v0, p1, p2}, Landroid/hardware/biometrics/IBiometricServiceReceiver;->onError(ILjava/lang/String;)V

    .line 1313
    iget-object p1, p0, Lcom/android/server/biometrics/BiometricService;->mCurrentAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/android/server/biometrics/BiometricService$AuthSession;->access$2602(Lcom/android/server/biometrics/BiometricService$AuthSession;I)I

    .line 1314
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/server/biometrics/BiometricService;->mCurrentAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;
    :try_end_1b
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_1b} :catch_1c

    .line 1318
    :cond_1b
    goto :goto_24

    .line 1316
    :catch_1c
    move-exception p1

    .line 1317
    const-string p2, "BiometricService"

    const-string v0, "Remote exception"

    invoke-static {p2, v0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1319
    :goto_24
    return-void
.end method

.method public onStart()V
    .registers 5

    .line 915
    iget-boolean v0, p0, Lcom/android/server/biometrics/BiometricService;->mHasFeatureFingerprint:Z

    if-eqz v0, :cond_11

    .line 916
    nop

    .line 917
    const-string v0, "fingerprint"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 916
    invoke-static {v0}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/fingerprint/IFingerprintService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/biometrics/BiometricService;->mFingerprintService:Landroid/hardware/fingerprint/IFingerprintService;

    .line 919
    :cond_11
    iget-boolean v0, p0, Lcom/android/server/biometrics/BiometricService;->mHasFeatureFace:Z

    if-eqz v0, :cond_22

    .line 920
    nop

    .line 921
    const-string v0, "face"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 920
    invoke-static {v0}, Landroid/hardware/face/IFaceService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/face/IFaceService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/biometrics/BiometricService;->mFaceService:Landroid/hardware/face/IFaceService;

    .line 924
    :cond_22
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/biometrics/BiometricService;->mActivityTaskManager:Landroid/app/IActivityTaskManager;

    .line 925
    nop

    .line 926
    const-string/jumbo v0, "statusbar"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 925
    invoke-static {v0}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/biometrics/BiometricService;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    .line 929
    const/4 v0, 0x0

    :goto_37
    sget-object v1, Lcom/android/server/biometrics/BiometricService;->FEATURE_ID:[I

    array-length v2, v1

    if-ge v0, v2, :cond_5b

    .line 930
    aget v1, v1, v0

    invoke-direct {p0, v1}, Lcom/android/server/biometrics/BiometricService;->hasFeature(I)Z

    move-result v1

    if-eqz v1, :cond_58

    .line 931
    new-instance v1, Lcom/android/server/biometrics/BiometricService$Authenticator;

    sget-object v2, Lcom/android/server/biometrics/BiometricService;->FEATURE_ID:[I

    aget v3, v2, v0

    aget v2, v2, v0

    .line 932
    invoke-direct {p0, v2}, Lcom/android/server/biometrics/BiometricService;->getAuthenticator(I)Landroid/hardware/biometrics/BiometricAuthenticator;

    move-result-object v2

    invoke-direct {v1, p0, v3, v2}, Lcom/android/server/biometrics/BiometricService$Authenticator;-><init>(Lcom/android/server/biometrics/BiometricService;ILandroid/hardware/biometrics/BiometricAuthenticator;)V

    .line 933
    iget-object v2, p0, Lcom/android/server/biometrics/BiometricService;->mAuthenticators:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 929
    :cond_58
    add-int/lit8 v0, v0, 0x1

    goto :goto_37

    .line 937
    :cond_5b
    new-instance v0, Lcom/android/server/biometrics/BiometricService$BiometricServiceWrapper;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/biometrics/BiometricService$BiometricServiceWrapper;-><init>(Lcom/android/server/biometrics/BiometricService;Lcom/android/server/biometrics/BiometricService$1;)V

    const-string v1, "biometric"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/biometrics/BiometricService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 938
    return-void
.end method
