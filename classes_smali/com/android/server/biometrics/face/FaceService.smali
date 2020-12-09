.class public Lcom/android/server/biometrics/face/FaceService;
.super Lcom/android/server/biometrics/BiometricServiceBase;
.source "FaceService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/biometrics/face/FaceService$ServiceListenerImpl;,
        Lcom/android/server/biometrics/face/FaceService$BiometricPromptServiceListenerImpl;,
        Lcom/android/server/biometrics/face/FaceService$FaceServiceWrapper;,
        Lcom/android/server/biometrics/face/FaceService$FaceAuthClient;,
        Lcom/android/server/biometrics/face/FaceService$UsageStats;,
        Lcom/android/server/biometrics/face/FaceService$AuthenticationEvent;
    }
.end annotation


# static fields
.field private static final ACTION_LOCKOUT_RESET:Ljava/lang/String; = "com.android.server.biometrics.face.ACTION_LOCKOUT_RESET"

.field private static final CHALLENGE_TIMEOUT_SEC:I = 0x258

.field private static final DEBUG:Z = true

.field private static final FACE_DATA_DIR:Ljava/lang/String; = "facedata"

.field private static final NOTIFICATION_ID:I = 0x1

.field private static final NOTIFICATION_TAG:Ljava/lang/String; = "FaceService"

.field protected static final TAG:Ljava/lang/String; = "FaceService"


# instance fields
.field private mBiometricPromptIgnoreList:[I

.field private mBiometricPromptIgnoreListVendor:[I

.field private mCurrentUserLockoutMode:I

.field private mDaemon:Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "this"
        }
    .end annotation
.end field

.field private mDaemonCallback:Landroid/hardware/biometrics/face/V1_0/IBiometricsFaceClientCallback;

.field private final mDaemonWrapper:Lcom/android/server/biometrics/BiometricServiceBase$DaemonWrapper;

.field private mEnrollIgnoreList:[I

.field private mEnrollIgnoreListVendor:[I

.field private final mFaceConstants:Lcom/android/server/biometrics/face/FaceConstants;

.field private mKeyguardIgnoreList:[I

.field private mKeyguardIgnoreListVendor:[I

.field private mNotificationManager:Landroid/app/NotificationManager;

.field private mRevokeChallengePending:Z

.field private mUsageStats:Lcom/android/server/biometrics/face/FaceService$UsageStats;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 1050
    invoke-direct {p0, p1}, Lcom/android/server/biometrics/BiometricServiceBase;-><init>(Landroid/content/Context;)V

    .line 835
    new-instance v0, Lcom/android/server/biometrics/face/FaceConstants;

    invoke-direct {v0}, Lcom/android/server/biometrics/face/FaceConstants;-><init>()V

    iput-object v0, p0, Lcom/android/server/biometrics/face/FaceService;->mFaceConstants:Lcom/android/server/biometrics/face/FaceConstants;

    .line 840
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/biometrics/face/FaceService;->mRevokeChallengePending:Z

    .line 856
    new-instance v0, Lcom/android/server/biometrics/face/FaceService$1;

    invoke-direct {v0, p0}, Lcom/android/server/biometrics/face/FaceService$1;-><init>(Lcom/android/server/biometrics/face/FaceService;)V

    iput-object v0, p0, Lcom/android/server/biometrics/face/FaceService;->mDaemonCallback:Landroid/hardware/biometrics/face/V1_0/IBiometricsFaceClientCallback;

    .line 977
    new-instance v0, Lcom/android/server/biometrics/face/FaceService$2;

    invoke-direct {v0, p0}, Lcom/android/server/biometrics/face/FaceService$2;-><init>(Lcom/android/server/biometrics/face/FaceService;)V

    iput-object v0, p0, Lcom/android/server/biometrics/face/FaceService;->mDaemonWrapper:Lcom/android/server/biometrics/BiometricServiceBase$DaemonWrapper;

    .line 1052
    new-instance v0, Lcom/android/server/biometrics/face/FaceService$UsageStats;

    invoke-direct {v0, p0, p1}, Lcom/android/server/biometrics/face/FaceService$UsageStats;-><init>(Lcom/android/server/biometrics/face/FaceService;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/biometrics/face/FaceService;->mUsageStats:Lcom/android/server/biometrics/face/FaceService$UsageStats;

    .line 1054
    invoke-virtual {p0}, Lcom/android/server/biometrics/face/FaceService;->getContext()Landroid/content/Context;

    move-result-object p1

    const-class v0, Landroid/app/NotificationManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/NotificationManager;

    iput-object p1, p0, Lcom/android/server/biometrics/face/FaceService;->mNotificationManager:Landroid/app/NotificationManager;

    .line 1056
    invoke-virtual {p0}, Lcom/android/server/biometrics/face/FaceService;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 1057
    const v0, 0x1070040

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/biometrics/face/FaceService;->mBiometricPromptIgnoreList:[I

    .line 1058
    invoke-virtual {p0}, Lcom/android/server/biometrics/face/FaceService;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 1059
    const v0, 0x1070043

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/biometrics/face/FaceService;->mBiometricPromptIgnoreListVendor:[I

    .line 1060
    invoke-virtual {p0}, Lcom/android/server/biometrics/face/FaceService;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 1061
    const v0, 0x1070042

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/biometrics/face/FaceService;->mKeyguardIgnoreList:[I

    .line 1062
    invoke-virtual {p0}, Lcom/android/server/biometrics/face/FaceService;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 1063
    const v0, 0x1070045

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/biometrics/face/FaceService;->mKeyguardIgnoreListVendor:[I

    .line 1064
    invoke-virtual {p0}, Lcom/android/server/biometrics/face/FaceService;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 1065
    const v0, 0x1070041

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/biometrics/face/FaceService;->mEnrollIgnoreList:[I

    .line 1066
    invoke-virtual {p0}, Lcom/android/server/biometrics/face/FaceService;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 1067
    const v0, 0x1070044

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/biometrics/face/FaceService;->mEnrollIgnoreListVendor:[I

    .line 1068
    return-void
.end method

.method static synthetic access$1000(Lcom/android/server/biometrics/face/FaceService;Landroid/os/IBinder;)J
    .registers 2

    .line 94
    invoke-direct {p0, p1}, Lcom/android/server/biometrics/face/FaceService;->startGenerateChallenge(Landroid/os/IBinder;)J

    move-result-wide p0

    return-wide p0
.end method

.method static synthetic access$10001(Lcom/android/server/biometrics/face/FaceService;JII)V
    .registers 5

    .line 94
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/server/biometrics/BiometricServiceBase;->handleAcquired(JII)V

    return-void
.end method

.method static synthetic access$10101(Lcom/android/server/biometrics/face/FaceService;Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;I)V
    .registers 3

    .line 94
    invoke-super {p0, p1, p2}, Lcom/android/server/biometrics/BiometricServiceBase;->handleEnrollResult(Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;I)V

    return-void
.end method

.method static synthetic access$10200(Lcom/android/server/biometrics/face/FaceService;)Ljava/util/Map;
    .registers 1

    .line 94
    iget-object p0, p0, Lcom/android/server/biometrics/face/FaceService;->mAuthenticatorIds:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/android/server/biometrics/face/FaceService;Ljava/lang/String;)V
    .registers 2

    .line 94
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/face/FaceService;->checkPermission(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/server/biometrics/face/FaceService;)Lcom/android/server/biometrics/BiometricServiceBase$H;
    .registers 1

    .line 94
    iget-object p0, p0, Lcom/android/server/biometrics/face/FaceService;->mHandler:Lcom/android/server/biometrics/BiometricServiceBase$H;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/android/server/biometrics/face/FaceService;Ljava/lang/String;)V
    .registers 2

    .line 94
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/face/FaceService;->checkPermission(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/server/biometrics/face/FaceService;)Z
    .registers 1

    .line 94
    invoke-virtual {p0}, Lcom/android/server/biometrics/face/FaceService;->isRestricted()Z

    move-result p0

    return p0
.end method

.method static synthetic access$1500(Lcom/android/server/biometrics/face/FaceService;)Lcom/android/server/biometrics/BiometricServiceBase$DaemonWrapper;
    .registers 1

    .line 94
    iget-object p0, p0, Lcom/android/server/biometrics/face/FaceService;->mDaemonWrapper:Lcom/android/server/biometrics/BiometricServiceBase$DaemonWrapper;

    return-object p0
.end method

.method static synthetic access$1600(Lcom/android/server/biometrics/face/FaceService;)J
    .registers 3

    .line 94
    iget-wide v0, p0, Lcom/android/server/biometrics/face/FaceService;->mHalDeviceId:J

    return-wide v0
.end method

.method static synthetic access$1700(Lcom/android/server/biometrics/face/FaceService;)I
    .registers 1

    .line 94
    iget p0, p0, Lcom/android/server/biometrics/face/FaceService;->mCurrentUserId:I

    return p0
.end method

.method static synthetic access$1800(Lcom/android/server/biometrics/face/FaceService;)[I
    .registers 1

    .line 94
    iget-object p0, p0, Lcom/android/server/biometrics/face/FaceService;->mEnrollIgnoreList:[I

    return-object p0
.end method

.method static synthetic access$1900(Lcom/android/server/biometrics/face/FaceService;)[I
    .registers 1

    .line 94
    iget-object p0, p0, Lcom/android/server/biometrics/face/FaceService;->mEnrollIgnoreListVendor:[I

    return-object p0
.end method

.method static synthetic access$2000(Lcom/android/server/biometrics/face/FaceService;)I
    .registers 1

    .line 94
    iget p0, p0, Lcom/android/server/biometrics/face/FaceService;->mCurrentUserId:I

    return p0
.end method

.method static synthetic access$2100(Lcom/android/server/biometrics/face/FaceService;Lcom/android/server/biometrics/BiometricServiceBase$EnrollClientImpl;I)V
    .registers 3

    .line 94
    invoke-virtual {p0, p1, p2}, Lcom/android/server/biometrics/face/FaceService;->enrollInternal(Lcom/android/server/biometrics/BiometricServiceBase$EnrollClientImpl;I)V

    return-void
.end method

.method static synthetic access$2200(Lcom/android/server/biometrics/face/FaceService;Ljava/lang/String;)V
    .registers 2

    .line 94
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/face/FaceService;->checkPermission(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2300(Lcom/android/server/biometrics/face/FaceService;Landroid/os/IBinder;)V
    .registers 2

    .line 94
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/face/FaceService;->cancelEnrollmentInternal(Landroid/os/IBinder;)V

    return-void
.end method

.method static synthetic access$2400(Lcom/android/server/biometrics/face/FaceService;Ljava/lang/String;)V
    .registers 2

    .line 94
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/face/FaceService;->checkPermission(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2500(Lcom/android/server/biometrics/face/FaceService;)Z
    .registers 1

    .line 94
    invoke-virtual {p0}, Lcom/android/server/biometrics/face/FaceService;->isRestricted()Z

    move-result p0

    return p0
.end method

.method static synthetic access$2600(Lcom/android/server/biometrics/face/FaceService;)J
    .registers 3

    .line 94
    iget-wide v0, p0, Lcom/android/server/biometrics/face/FaceService;->mHalDeviceId:J

    return-wide v0
.end method

.method static synthetic access$2700(Lcom/android/server/biometrics/face/FaceService;)I
    .registers 1

    .line 94
    iget p0, p0, Lcom/android/server/biometrics/face/FaceService;->mCurrentUserId:I

    return p0
.end method

.method static synthetic access$2800(Lcom/android/server/biometrics/face/FaceService;Lcom/android/server/biometrics/BiometricServiceBase$AuthenticationClientImpl;JLjava/lang/String;)V
    .registers 5

    .line 94
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/biometrics/face/FaceService;->authenticateInternal(Lcom/android/server/biometrics/BiometricServiceBase$AuthenticationClientImpl;JLjava/lang/String;)V

    return-void
.end method

.method static synthetic access$2900(Lcom/android/server/biometrics/face/FaceService;Ljava/lang/String;)V
    .registers 2

    .line 94
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/face/FaceService;->checkPermission(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/biometrics/face/FaceService;)Lcom/android/server/biometrics/face/FaceService$UsageStats;
    .registers 1

    .line 94
    iget-object p0, p0, Lcom/android/server/biometrics/face/FaceService;->mUsageStats:Lcom/android/server/biometrics/face/FaceService$UsageStats;

    return-object p0
.end method

.method static synthetic access$3000(Lcom/android/server/biometrics/face/FaceService;)J
    .registers 3

    .line 94
    iget-wide v0, p0, Lcom/android/server/biometrics/face/FaceService;->mHalDeviceId:J

    return-wide v0
.end method

.method static synthetic access$3100(Lcom/android/server/biometrics/face/FaceService;)I
    .registers 1

    .line 94
    iget p0, p0, Lcom/android/server/biometrics/face/FaceService;->mCurrentUserId:I

    return p0
.end method

.method static synthetic access$3200(Lcom/android/server/biometrics/face/FaceService;Lcom/android/server/biometrics/BiometricServiceBase$AuthenticationClientImpl;JLjava/lang/String;III)V
    .registers 8

    .line 94
    invoke-virtual/range {p0 .. p7}, Lcom/android/server/biometrics/face/FaceService;->authenticateInternal(Lcom/android/server/biometrics/BiometricServiceBase$AuthenticationClientImpl;JLjava/lang/String;III)V

    return-void
.end method

.method static synthetic access$3300(Lcom/android/server/biometrics/face/FaceService;Ljava/lang/String;)V
    .registers 2

    .line 94
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/face/FaceService;->checkPermission(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3400(Lcom/android/server/biometrics/face/FaceService;I)V
    .registers 2

    .line 94
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/face/FaceService;->startCurrentClient(I)V

    return-void
.end method

.method static synthetic access$3500(Lcom/android/server/biometrics/face/FaceService;Ljava/lang/String;)V
    .registers 2

    .line 94
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/face/FaceService;->checkPermission(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3600(Lcom/android/server/biometrics/face/FaceService;Landroid/os/IBinder;Ljava/lang/String;)V
    .registers 3

    .line 94
    invoke-virtual {p0, p1, p2}, Lcom/android/server/biometrics/face/FaceService;->cancelAuthenticationInternal(Landroid/os/IBinder;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3700(Lcom/android/server/biometrics/face/FaceService;Ljava/lang/String;)V
    .registers 2

    .line 94
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/face/FaceService;->checkPermission(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3800(Lcom/android/server/biometrics/face/FaceService;Landroid/os/IBinder;Ljava/lang/String;IIIZ)V
    .registers 7

    .line 94
    invoke-virtual/range {p0 .. p6}, Lcom/android/server/biometrics/face/FaceService;->cancelAuthenticationInternal(Landroid/os/IBinder;Ljava/lang/String;IIIZ)V

    return-void
.end method

.method static synthetic access$3900(Lcom/android/server/biometrics/face/FaceService;Ljava/lang/String;)V
    .registers 2

    .line 94
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/face/FaceService;->checkPermission(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/biometrics/face/FaceService;)[I
    .registers 1

    .line 94
    iget-object p0, p0, Lcom/android/server/biometrics/face/FaceService;->mBiometricPromptIgnoreList:[I

    return-object p0
.end method

.method static synthetic access$4000(Lcom/android/server/biometrics/face/FaceService;I)V
    .registers 2

    .line 94
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/face/FaceService;->setActiveUserInternal(I)V

    return-void
.end method

.method static synthetic access$4100(Lcom/android/server/biometrics/face/FaceService;Ljava/lang/String;)V
    .registers 2

    .line 94
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/face/FaceService;->checkPermission(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$4200(Lcom/android/server/biometrics/face/FaceService;)Z
    .registers 1

    .line 94
    invoke-virtual {p0}, Lcom/android/server/biometrics/face/FaceService;->isRestricted()Z

    move-result p0

    return p0
.end method

.method static synthetic access$4300(Lcom/android/server/biometrics/face/FaceService;)J
    .registers 3

    .line 94
    iget-wide v0, p0, Lcom/android/server/biometrics/face/FaceService;->mHalDeviceId:J

    return-wide v0
.end method

.method static synthetic access$4400(Lcom/android/server/biometrics/face/FaceService;Lcom/android/server/biometrics/RemovalClient;)V
    .registers 2

    .line 94
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/face/FaceService;->removeInternal(Lcom/android/server/biometrics/RemovalClient;)V

    return-void
.end method

.method static synthetic access$4500(Lcom/android/server/biometrics/face/FaceService;Ljava/lang/String;)V
    .registers 2

    .line 94
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/face/FaceService;->checkPermission(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$4600(Lcom/android/server/biometrics/face/FaceService;)Z
    .registers 1

    .line 94
    invoke-virtual {p0}, Lcom/android/server/biometrics/face/FaceService;->isRestricted()Z

    move-result p0

    return p0
.end method

.method static synthetic access$4700(Lcom/android/server/biometrics/face/FaceService;)J
    .registers 3

    .line 94
    iget-wide v0, p0, Lcom/android/server/biometrics/face/FaceService;->mHalDeviceId:J

    return-wide v0
.end method

.method static synthetic access$4800(Lcom/android/server/biometrics/face/FaceService;Lcom/android/server/biometrics/EnumerateClient;)V
    .registers 2

    .line 94
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/face/FaceService;->enumerateInternal(Lcom/android/server/biometrics/EnumerateClient;)V

    return-void
.end method

.method static synthetic access$4900(Lcom/android/server/biometrics/face/FaceService;Ljava/lang/String;)V
    .registers 2

    .line 94
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/face/FaceService;->checkPermission(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/biometrics/face/FaceService;)[I
    .registers 1

    .line 94
    iget-object p0, p0, Lcom/android/server/biometrics/face/FaceService;->mKeyguardIgnoreList:[I

    return-object p0
.end method

.method static synthetic access$5001(Lcom/android/server/biometrics/face/FaceService;Landroid/hardware/biometrics/IBiometricServiceLockoutResetCallback;)V
    .registers 2

    .line 94
    invoke-super {p0, p1}, Lcom/android/server/biometrics/BiometricServiceBase;->addLockoutResetCallback(Landroid/hardware/biometrics/IBiometricServiceLockoutResetCallback;)V

    return-void
.end method

.method static synthetic access$5100(Lcom/android/server/biometrics/face/FaceService;Ljava/io/FileDescriptor;[Ljava/lang/String;)V
    .registers 3

    .line 94
    invoke-direct {p0, p1, p2}, Lcom/android/server/biometrics/face/FaceService;->dumpHal(Ljava/io/FileDescriptor;[Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$5200(Lcom/android/server/biometrics/face/FaceService;Ljava/io/PrintWriter;)V
    .registers 2

    .line 94
    invoke-direct {p0, p1}, Lcom/android/server/biometrics/face/FaceService;->dumpInternal(Ljava/io/PrintWriter;)V

    return-void
.end method

.method static synthetic access$5300(Lcom/android/server/biometrics/face/FaceService;Ljava/lang/String;)V
    .registers 2

    .line 94
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/face/FaceService;->checkPermission(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$5400(Lcom/android/server/biometrics/face/FaceService;Ljava/lang/String;ZIII)Z
    .registers 6

    .line 94
    invoke-virtual/range {p0 .. p5}, Lcom/android/server/biometrics/face/FaceService;->canUseBiometric(Ljava/lang/String;ZIII)Z

    move-result p0

    return p0
.end method

.method static synthetic access$5500(Lcom/android/server/biometrics/face/FaceService;)Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;
    .registers 1

    .line 94
    invoke-direct {p0}, Lcom/android/server/biometrics/face/FaceService;->getFaceDaemon()Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$5600(Lcom/android/server/biometrics/face/FaceService;)J
    .registers 3

    .line 94
    iget-wide v0, p0, Lcom/android/server/biometrics/face/FaceService;->mHalDeviceId:J

    return-wide v0
.end method

.method static synthetic access$5700(Lcom/android/server/biometrics/face/FaceService;Ljava/lang/String;)V
    .registers 2

    .line 94
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/face/FaceService;->checkPermission(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$5800(Lcom/android/server/biometrics/face/FaceService;I)Z
    .registers 2

    .line 94
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/face/FaceService;->isCurrentUserOrProfile(I)Z

    move-result p0

    return p0
.end method

.method static synthetic access$5900(Lcom/android/server/biometrics/face/FaceService;)I
    .registers 1

    .line 94
    iget p0, p0, Lcom/android/server/biometrics/face/FaceService;->mCurrentUserId:I

    return p0
.end method

.method static synthetic access$600(Lcom/android/server/biometrics/face/FaceService;)[I
    .registers 1

    .line 94
    iget-object p0, p0, Lcom/android/server/biometrics/face/FaceService;->mBiometricPromptIgnoreListVendor:[I

    return-object p0
.end method

.method static synthetic access$6000(Lcom/android/server/biometrics/face/FaceService;)Lcom/android/server/biometrics/BiometricServiceBase$H;
    .registers 1

    .line 94
    iget-object p0, p0, Lcom/android/server/biometrics/face/FaceService;->mHandler:Lcom/android/server/biometrics/BiometricServiceBase$H;

    return-object p0
.end method

.method static synthetic access$6100(Lcom/android/server/biometrics/face/FaceService;Ljava/lang/String;)V
    .registers 2

    .line 94
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/face/FaceService;->checkPermission(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$6200(Lcom/android/server/biometrics/face/FaceService;Ljava/lang/String;ZIII)Z
    .registers 6

    .line 94
    invoke-virtual/range {p0 .. p5}, Lcom/android/server/biometrics/face/FaceService;->canUseBiometric(Ljava/lang/String;ZIII)Z

    move-result p0

    return p0
.end method

.method static synthetic access$6300(Lcom/android/server/biometrics/face/FaceService;Ljava/lang/String;)V
    .registers 2

    .line 94
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/face/FaceService;->checkPermission(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$6400(Lcom/android/server/biometrics/face/FaceService;Ljava/lang/String;ZIII)Z
    .registers 6

    .line 94
    invoke-virtual/range {p0 .. p5}, Lcom/android/server/biometrics/face/FaceService;->canUseBiometric(Ljava/lang/String;ZIII)Z

    move-result p0

    return p0
.end method

.method static synthetic access$6500(Lcom/android/server/biometrics/face/FaceService;Ljava/lang/String;)J
    .registers 2

    .line 94
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/face/FaceService;->getAuthenticatorId(Ljava/lang/String;)J

    move-result-wide p0

    return-wide p0
.end method

.method static synthetic access$6600(Lcom/android/server/biometrics/face/FaceService;Ljava/lang/String;)V
    .registers 2

    .line 94
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/face/FaceService;->checkPermission(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$6700(Lcom/android/server/biometrics/face/FaceService;)Lcom/android/server/biometrics/BiometricServiceBase$H;
    .registers 1

    .line 94
    iget-object p0, p0, Lcom/android/server/biometrics/face/FaceService;->mHandler:Lcom/android/server/biometrics/BiometricServiceBase$H;

    return-object p0
.end method

.method static synthetic access$6800(Lcom/android/server/biometrics/face/FaceService;Ljava/lang/String;)V
    .registers 2

    .line 94
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/face/FaceService;->checkPermission(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$6900(Lcom/android/server/biometrics/face/FaceService;)Lcom/android/server/biometrics/BiometricServiceBase$H;
    .registers 1

    .line 94
    iget-object p0, p0, Lcom/android/server/biometrics/face/FaceService;->mHandler:Lcom/android/server/biometrics/BiometricServiceBase$H;

    return-object p0
.end method

.method static synthetic access$700(Lcom/android/server/biometrics/face/FaceService;)[I
    .registers 1

    .line 94
    iget-object p0, p0, Lcom/android/server/biometrics/face/FaceService;->mKeyguardIgnoreListVendor:[I

    return-object p0
.end method

.method static synthetic access$7000(Lcom/android/server/biometrics/face/FaceService;Ljava/lang/String;)V
    .registers 2

    .line 94
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/face/FaceService;->checkPermission(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$7100(Lcom/android/server/biometrics/face/FaceService;)Lcom/android/server/biometrics/BiometricServiceBase$H;
    .registers 1

    .line 94
    iget-object p0, p0, Lcom/android/server/biometrics/face/FaceService;->mHandler:Lcom/android/server/biometrics/BiometricServiceBase$H;

    return-object p0
.end method

.method static synthetic access$7200(Lcom/android/server/biometrics/face/FaceService;Ljava/lang/String;)V
    .registers 2

    .line 94
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/face/FaceService;->checkPermission(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$7300(Lcom/android/server/biometrics/face/FaceService;)Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;
    .registers 1

    .line 94
    iget-object p0, p0, Lcom/android/server/biometrics/face/FaceService;->mDaemon:Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;

    return-object p0
.end method

.method static synthetic access$7302(Lcom/android/server/biometrics/face/FaceService;Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;)Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;
    .registers 2

    .line 94
    iput-object p1, p0, Lcom/android/server/biometrics/face/FaceService;->mDaemon:Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;

    return-object p1
.end method

.method static synthetic access$7400(Lcom/android/server/biometrics/face/FaceService;)I
    .registers 1

    .line 94
    iget p0, p0, Lcom/android/server/biometrics/face/FaceService;->mCurrentUserId:I

    return p0
.end method

.method static synthetic access$7500(Lcom/android/server/biometrics/face/FaceService;)I
    .registers 1

    .line 94
    iget p0, p0, Lcom/android/server/biometrics/face/FaceService;->mCurrentUserId:I

    return p0
.end method

.method static synthetic access$7600(Lcom/android/server/biometrics/face/FaceService;)I
    .registers 1

    .line 94
    iget p0, p0, Lcom/android/server/biometrics/face/FaceService;->mCurrentUserId:I

    return p0
.end method

.method static synthetic access$7700(Lcom/android/server/biometrics/face/FaceService;)I
    .registers 1

    .line 94
    iget p0, p0, Lcom/android/server/biometrics/face/FaceService;->mCurrentUserId:I

    return p0
.end method

.method static synthetic access$7800(Lcom/android/server/biometrics/face/FaceService;)I
    .registers 1

    .line 94
    iget p0, p0, Lcom/android/server/biometrics/face/FaceService;->mCurrentUserId:I

    return p0
.end method

.method static synthetic access$7900(Lcom/android/server/biometrics/face/FaceService;)I
    .registers 1

    .line 94
    iget p0, p0, Lcom/android/server/biometrics/face/FaceService;->mCurrentUserId:I

    return p0
.end method

.method static synthetic access$800(Lcom/android/server/biometrics/face/FaceService;)Landroid/app/NotificationManager;
    .registers 1

    .line 94
    iget-object p0, p0, Lcom/android/server/biometrics/face/FaceService;->mNotificationManager:Landroid/app/NotificationManager;

    return-object p0
.end method

.method static synthetic access$8000(Lcom/android/server/biometrics/face/FaceService;)Lcom/android/server/biometrics/ClientMonitor;
    .registers 1

    .line 94
    invoke-virtual {p0}, Lcom/android/server/biometrics/face/FaceService;->getCurrentClient()Lcom/android/server/biometrics/ClientMonitor;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$8100(Lcom/android/server/biometrics/face/FaceService;Landroid/os/IBinder;)I
    .registers 2

    .line 94
    invoke-direct {p0, p1}, Lcom/android/server/biometrics/face/FaceService;->startRevokeChallenge(Landroid/os/IBinder;)I

    move-result p0

    return p0
.end method

.method static synthetic access$8202(Lcom/android/server/biometrics/face/FaceService;Z)Z
    .registers 2

    .line 94
    iput-boolean p1, p0, Lcom/android/server/biometrics/face/FaceService;->mRevokeChallengePending:Z

    return p1
.end method

.method static synthetic access$8300(Lcom/android/server/biometrics/face/FaceService;)Lcom/android/server/biometrics/BiometricServiceBase$H;
    .registers 1

    .line 94
    iget-object p0, p0, Lcom/android/server/biometrics/face/FaceService;->mHandler:Lcom/android/server/biometrics/BiometricServiceBase$H;

    return-object p0
.end method

.method static synthetic access$8400(Lcom/android/server/biometrics/face/FaceService;)Lcom/android/server/biometrics/BiometricServiceBase$H;
    .registers 1

    .line 94
    iget-object p0, p0, Lcom/android/server/biometrics/face/FaceService;->mHandler:Lcom/android/server/biometrics/BiometricServiceBase$H;

    return-object p0
.end method

.method static synthetic access$8500(Lcom/android/server/biometrics/face/FaceService;)Lcom/android/server/biometrics/BiometricServiceBase$H;
    .registers 1

    .line 94
    iget-object p0, p0, Lcom/android/server/biometrics/face/FaceService;->mHandler:Lcom/android/server/biometrics/BiometricServiceBase$H;

    return-object p0
.end method

.method static synthetic access$8600(Lcom/android/server/biometrics/face/FaceService;)Lcom/android/server/biometrics/BiometricServiceBase$H;
    .registers 1

    .line 94
    iget-object p0, p0, Lcom/android/server/biometrics/face/FaceService;->mHandler:Lcom/android/server/biometrics/BiometricServiceBase$H;

    return-object p0
.end method

.method static synthetic access$8700(Lcom/android/server/biometrics/face/FaceService;)Lcom/android/server/biometrics/BiometricServiceBase$H;
    .registers 1

    .line 94
    iget-object p0, p0, Lcom/android/server/biometrics/face/FaceService;->mHandler:Lcom/android/server/biometrics/BiometricServiceBase$H;

    return-object p0
.end method

.method static synthetic access$8800(Lcom/android/server/biometrics/face/FaceService;)Lcom/android/server/biometrics/BiometricServiceBase$H;
    .registers 1

    .line 94
    iget-object p0, p0, Lcom/android/server/biometrics/face/FaceService;->mHandler:Lcom/android/server/biometrics/BiometricServiceBase$H;

    return-object p0
.end method

.method static synthetic access$8902(Lcom/android/server/biometrics/face/FaceService;I)I
    .registers 2

    .line 94
    iput p1, p0, Lcom/android/server/biometrics/face/FaceService;->mCurrentUserLockoutMode:I

    return p1
.end method

.method static synthetic access$900(Lcom/android/server/biometrics/face/FaceService;Ljava/lang/String;)V
    .registers 2

    .line 94
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/face/FaceService;->checkPermission(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$9000(Lcom/android/server/biometrics/face/FaceService;)Lcom/android/server/biometrics/BiometricServiceBase$H;
    .registers 1

    .line 94
    iget-object p0, p0, Lcom/android/server/biometrics/face/FaceService;->mHandler:Lcom/android/server/biometrics/BiometricServiceBase$H;

    return-object p0
.end method

.method static synthetic access$9100(Lcom/android/server/biometrics/face/FaceService;)V
    .registers 1

    .line 94
    invoke-virtual {p0}, Lcom/android/server/biometrics/face/FaceService;->notifyLockoutResetMonitors()V

    return-void
.end method

.method static synthetic access$9201(Lcom/android/server/biometrics/face/FaceService;Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;I)V
    .registers 3

    .line 94
    invoke-super {p0, p1, p2}, Lcom/android/server/biometrics/BiometricServiceBase;->handleEnumerate(Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;I)V

    return-void
.end method

.method static synthetic access$9301(Lcom/android/server/biometrics/face/FaceService;Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;I)V
    .registers 3

    .line 94
    invoke-super {p0, p1, p2}, Lcom/android/server/biometrics/BiometricServiceBase;->handleEnumerate(Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;I)V

    return-void
.end method

.method static synthetic access$9401(Lcom/android/server/biometrics/face/FaceService;Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;I)V
    .registers 3

    .line 94
    invoke-super {p0, p1, p2}, Lcom/android/server/biometrics/BiometricServiceBase;->handleRemoved(Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;I)V

    return-void
.end method

.method static synthetic access$9501(Lcom/android/server/biometrics/face/FaceService;Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;I)V
    .registers 3

    .line 94
    invoke-super {p0, p1, p2}, Lcom/android/server/biometrics/BiometricServiceBase;->handleRemoved(Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;I)V

    return-void
.end method

.method static synthetic access$9601(Lcom/android/server/biometrics/face/FaceService;JII)V
    .registers 5

    .line 94
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/server/biometrics/BiometricServiceBase;->handleError(JII)V

    return-void
.end method

.method static synthetic access$9702(Lcom/android/server/biometrics/face/FaceService;J)J
    .registers 3

    .line 94
    iput-wide p1, p0, Lcom/android/server/biometrics/face/FaceService;->mHalDeviceId:J

    return-wide p1
.end method

.method static synthetic access$9802(Lcom/android/server/biometrics/face/FaceService;I)I
    .registers 2

    .line 94
    iput p1, p0, Lcom/android/server/biometrics/face/FaceService;->mCurrentUserId:I

    return p1
.end method

.method static synthetic access$9901(Lcom/android/server/biometrics/face/FaceService;Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;Ljava/util/ArrayList;)V
    .registers 3

    .line 94
    invoke-super {p0, p1, p2}, Lcom/android/server/biometrics/BiometricServiceBase;->handleAuthenticated(Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;Ljava/util/ArrayList;)V

    return-void
.end method

.method private dumpHal(Ljava/io/FileDescriptor;[Ljava/lang/String;)V
    .registers 9

    .line 1351
    sget-boolean v0, Landroid/os/Build;->IS_ENG:Z

    if-nez v0, :cond_9

    sget-boolean v0, Landroid/os/Build;->IS_USERDEBUG:Z

    if-nez v0, :cond_9

    .line 1352
    return-void

    .line 1357
    :cond_9
    const/4 v0, 0x0

    const-string/jumbo v1, "ro.face.disable_debug_data"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_70

    .line 1358
    const-string/jumbo v1, "persist.face.disable_debug_data"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_1d

    goto :goto_70

    .line 1365
    :cond_1d
    invoke-direct {p0}, Lcom/android/server/biometrics/face/FaceService;->getFaceDaemon()Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;

    move-result-object v1

    .line 1366
    if-eqz v1, :cond_6f

    .line 1367
    const/4 v2, 0x0

    .line 1369
    :try_start_24
    new-instance v3, Ljava/io/FileOutputStream;

    const-string v4, "/dev/null"

    invoke-direct {v3, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_2b
    .catch Ljava/io/IOException; {:try_start_24 .. :try_end_2b} :catch_57
    .catch Landroid/os/RemoteException; {:try_start_24 .. :try_end_2b} :catch_57
    .catchall {:try_start_24 .. :try_end_2b} :catchall_54

    .line 1370
    :try_start_2b
    new-instance v2, Landroid/os/NativeHandle;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/io/FileDescriptor;

    .line 1371
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v5

    aput-object v5, v4, v0

    const/4 v5, 0x1

    aput-object p1, v4, v5

    new-array p1, v0, [I

    invoke-direct {v2, v4, p1, v0}, Landroid/os/NativeHandle;-><init>([Ljava/io/FileDescriptor;[IZ)V

    .line 1373
    new-instance p1, Ljava/util/ArrayList;

    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {v1, v2, p1}, Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;->debug(Landroid/os/NativeHandle;Ljava/util/ArrayList;)V
    :try_end_4a
    .catch Ljava/io/IOException; {:try_start_2b .. :try_end_4a} :catch_51
    .catch Landroid/os/RemoteException; {:try_start_2b .. :try_end_4a} :catch_51
    .catchall {:try_start_2b .. :try_end_4a} :catchall_4f

    .line 1377
    nop

    .line 1379
    :try_start_4b
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_4e
    .catch Ljava/io/IOException; {:try_start_4b .. :try_end_4e} :catch_65

    goto :goto_64

    .line 1377
    :catchall_4f
    move-exception p1

    goto :goto_67

    .line 1374
    :catch_51
    move-exception p1

    move-object v2, v3

    goto :goto_58

    .line 1377
    :catchall_54
    move-exception p1

    move-object v3, v2

    goto :goto_67

    .line 1374
    :catch_57
    move-exception p1

    .line 1375
    :goto_58
    :try_start_58
    const-string p2, "FaceService"

    const-string v0, "error while reading face debugging data"

    invoke-static {p2, v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5f
    .catchall {:try_start_58 .. :try_end_5f} :catchall_54

    .line 1377
    if-eqz v2, :cond_6f

    .line 1379
    :try_start_61
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_64
    .catch Ljava/io/IOException; {:try_start_61 .. :try_end_64} :catch_65

    .line 1381
    :goto_64
    goto :goto_6f

    .line 1380
    :catch_65
    move-exception p1

    goto :goto_64

    .line 1377
    :goto_67
    if-eqz v3, :cond_6e

    .line 1379
    :try_start_69
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_6c
    .catch Ljava/io/IOException; {:try_start_69 .. :try_end_6c} :catch_6d

    .line 1381
    goto :goto_6e

    .line 1380
    :catch_6d
    move-exception p2

    .line 1381
    :cond_6e
    :goto_6e
    throw p1

    .line 1385
    :cond_6f
    :goto_6f
    return-void

    .line 1359
    :cond_70
    :goto_70
    return-void
.end method

.method private dumpInternal(Ljava/io/PrintWriter;)V
    .registers 11

    .line 1302
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 1304
    :try_start_5
    const-string/jumbo v1, "service"

    const-string v2, "Face Manager"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1306
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 1307
    invoke-virtual {p0}, Lcom/android/server/biometrics/face/FaceService;->getContext()Landroid/content/Context;

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

    .line 1308
    invoke-virtual {v3}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v3

    .line 1309
    invoke-virtual {p0}, Lcom/android/server/biometrics/face/FaceService;->getBiometricUtils()Lcom/android/server/biometrics/BiometricUtils;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/server/biometrics/face/FaceService;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-interface {v4, v5, v3}, Lcom/android/server/biometrics/BiometricUtils;->getBiometricsForUser(Landroid/content/Context;I)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    .line 1310
    iget-object v5, p0, Lcom/android/server/biometrics/face/FaceService;->mPerformanceMap:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/biometrics/BiometricServiceBase$PerformanceStats;

    .line 1311
    iget-object v6, p0, Lcom/android/server/biometrics/face/FaceService;->mCryptoPerformanceMap:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/biometrics/BiometricServiceBase$PerformanceStats;

    .line 1312
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7}, Lorg/json/JSONObject;-><init>()V

    .line 1313
    const-string v8, "id"

    invoke-virtual {v7, v8, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1314
    const-string v3, "count"

    invoke-virtual {v7, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1315
    const-string v3, "accept"

    const/4 v4, 0x0

    if-eqz v5, :cond_75

    iget v8, v5, Lcom/android/server/biometrics/BiometricServiceBase$PerformanceStats;->accept:I

    goto :goto_76

    :cond_75
    move v8, v4

    :goto_76
    invoke-virtual {v7, v3, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1316
    const-string/jumbo v3, "reject"

    if-eqz v5, :cond_81

    iget v8, v5, Lcom/android/server/biometrics/BiometricServiceBase$PerformanceStats;->reject:I

    goto :goto_82

    :cond_81
    move v8, v4

    :goto_82
    invoke-virtual {v7, v3, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1317
    const-string v3, "acquire"

    if-eqz v5, :cond_8c

    iget v8, v5, Lcom/android/server/biometrics/BiometricServiceBase$PerformanceStats;->acquire:I

    goto :goto_8d

    :cond_8c
    move v8, v4

    :goto_8d
    invoke-virtual {v7, v3, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1318
    const-string v3, "lockout"

    if-eqz v5, :cond_97

    iget v8, v5, Lcom/android/server/biometrics/BiometricServiceBase$PerformanceStats;->lockout:I

    goto :goto_98

    :cond_97
    move v8, v4

    :goto_98
    invoke-virtual {v7, v3, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1319
    const-string/jumbo v3, "permanentLockout"

    if-eqz v5, :cond_a3

    iget v5, v5, Lcom/android/server/biometrics/BiometricServiceBase$PerformanceStats;->permanentLockout:I

    goto :goto_a4

    :cond_a3
    move v5, v4

    :goto_a4
    invoke-virtual {v7, v3, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1322
    const-string v3, "acceptCrypto"

    if-eqz v6, :cond_ae

    iget v5, v6, Lcom/android/server/biometrics/BiometricServiceBase$PerformanceStats;->accept:I

    goto :goto_af

    :cond_ae
    move v5, v4

    :goto_af
    invoke-virtual {v7, v3, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1323
    const-string/jumbo v3, "rejectCrypto"

    if-eqz v6, :cond_ba

    iget v5, v6, Lcom/android/server/biometrics/BiometricServiceBase$PerformanceStats;->reject:I

    goto :goto_bb

    :cond_ba
    move v5, v4

    :goto_bb
    invoke-virtual {v7, v3, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1324
    const-string v3, "acquireCrypto"

    if-eqz v6, :cond_c5

    iget v5, v6, Lcom/android/server/biometrics/BiometricServiceBase$PerformanceStats;->acquire:I

    goto :goto_c6

    :cond_c5
    move v5, v4

    :goto_c6
    invoke-virtual {v7, v3, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1325
    const-string v3, "lockoutCrypto"

    if-eqz v6, :cond_d0

    iget v5, v6, Lcom/android/server/biometrics/BiometricServiceBase$PerformanceStats;->lockout:I

    goto :goto_d1

    :cond_d0
    move v5, v4

    :goto_d1
    invoke-virtual {v7, v3, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1326
    const-string/jumbo v3, "permanentLockoutCrypto"

    .line 1327
    if-eqz v6, :cond_db

    iget v4, v6, Lcom/android/server/biometrics/BiometricServiceBase$PerformanceStats;->permanentLockout:I

    .line 1326
    :cond_db
    invoke-virtual {v7, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1328
    invoke-virtual {v1, v7}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 1329
    goto/16 :goto_22

    .line 1331
    :cond_e3
    const-string/jumbo v2, "prints"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_e9
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_e9} :catch_ea

    .line 1334
    goto :goto_f2

    .line 1332
    :catch_ea
    move-exception v1

    .line 1333
    const-string v2, "FaceService"

    const-string v3, "dump formatting failure"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1335
    :goto_f2
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1336
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HAL deaths since last reboot: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/biometrics/face/FaceService;->mHALDeathCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1338
    iget-object v0, p0, Lcom/android/server/biometrics/face/FaceService;->mUsageStats:Lcom/android/server/biometrics/face/FaceService$UsageStats;

    invoke-virtual {v0, p1}, Lcom/android/server/biometrics/face/FaceService$UsageStats;->print(Ljava/io/PrintWriter;)V

    .line 1339
    return-void
.end method

.method private declared-synchronized getFaceDaemon()Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;
    .registers 8

    monitor-enter p0

    .line 1232
    :try_start_1
    iget-object v0, p0, Lcom/android/server/biometrics/face/FaceService;->mDaemon:Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;

    if-nez v0, :cond_91

    .line 1233
    const-string v0, "FaceService"

    const-string v1, "mDaemon was null, reconnect to face"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_95

    .line 1235
    :try_start_c
    invoke-static {}, Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;->getService()Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/biometrics/face/FaceService;->mDaemon:Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;
    :try_end_12
    .catch Ljava/util/NoSuchElementException; {:try_start_c .. :try_end_12} :catch_1c
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_12} :catch_13
    .catchall {:try_start_c .. :try_end_12} :catchall_95

    goto :goto_1d

    .line 1238
    :catch_13
    move-exception v0

    .line 1239
    :try_start_14
    const-string v1, "FaceService"

    const-string v2, "Failed to get biometric interface"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1e

    .line 1236
    :catch_1c
    move-exception v0

    .line 1240
    :goto_1d
    nop

    .line 1241
    :goto_1e
    iget-object v0, p0, Lcom/android/server/biometrics/face/FaceService;->mDaemon:Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;

    const/4 v1, 0x0

    if-nez v0, :cond_2c

    .line 1242
    const-string v0, "FaceService"

    const-string v2, "face HIDL not available"

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2a
    .catchall {:try_start_14 .. :try_end_2a} :catchall_95

    .line 1243
    monitor-exit p0

    return-object v1

    .line 1246
    :cond_2c
    :try_start_2c
    iget-object v0, p0, Lcom/android/server/biometrics/face/FaceService;->mDaemon:Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;

    invoke-interface {v0}, Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;->asBinder()Landroid/os/IHwBinder;

    move-result-object v0

    const-wide/16 v2, 0x0

    invoke-interface {v0, p0, v2, v3}, Landroid/os/IHwBinder;->linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
    :try_end_37
    .catchall {:try_start_2c .. :try_end_37} :catchall_95

    .line 1249
    :try_start_37
    iget-object v0, p0, Lcom/android/server/biometrics/face/FaceService;->mDaemon:Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;

    iget-object v4, p0, Lcom/android/server/biometrics/face/FaceService;->mDaemonCallback:Landroid/hardware/biometrics/face/V1_0/IBiometricsFaceClientCallback;

    invoke-interface {v0, v4}, Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;->setCallback(Landroid/hardware/biometrics/face/V1_0/IBiometricsFaceClientCallback;)Landroid/hardware/biometrics/face/V1_0/OptionalUint64;

    move-result-object v0

    iget-wide v4, v0, Landroid/hardware/biometrics/face/V1_0/OptionalUint64;->value:J

    iput-wide v4, p0, Lcom/android/server/biometrics/face/FaceService;->mHalDeviceId:J
    :try_end_43
    .catch Landroid/os/RemoteException; {:try_start_37 .. :try_end_43} :catch_44
    .catchall {:try_start_37 .. :try_end_43} :catchall_95

    .line 1253
    goto :goto_4e

    .line 1250
    :catch_44
    move-exception v0

    .line 1251
    :try_start_45
    const-string v4, "FaceService"

    const-string v5, "Failed to open face HAL"

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1252
    iput-object v1, p0, Lcom/android/server/biometrics/face/FaceService;->mDaemon:Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;

    .line 1255
    :goto_4e
    const-string v0, "FaceService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Face HAL id: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v5, p0, Lcom/android/server/biometrics/face/FaceService;->mHalDeviceId:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1256
    iget-wide v4, p0, Lcom/android/server/biometrics/face/FaceService;->mHalDeviceId:J

    cmp-long v0, v4, v2

    if-eqz v0, :cond_7e

    .line 1257
    invoke-virtual {p0}, Lcom/android/server/biometrics/face/FaceService;->loadAuthenticatorIds()V

    .line 1258
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    invoke-virtual {p0, v0, v1}, Lcom/android/server/biometrics/face/FaceService;->updateActiveGroup(ILjava/lang/String;)V

    .line 1259
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/biometrics/face/FaceService;->doTemplateCleanupForUser(I)V

    goto :goto_91

    .line 1261
    :cond_7e
    const-string v0, "FaceService"

    const-string v2, "Failed to open Face HAL!"

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1262
    invoke-virtual {p0}, Lcom/android/server/biometrics/face/FaceService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "faced_openhal_error"

    const/4 v3, 0x1

    invoke-static {v0, v2, v3}, Lcom/android/internal/logging/MetricsLogger;->count(Landroid/content/Context;Ljava/lang/String;I)V

    .line 1263
    iput-object v1, p0, Lcom/android/server/biometrics/face/FaceService;->mDaemon:Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;

    .line 1266
    :cond_91
    :goto_91
    iget-object v0, p0, Lcom/android/server/biometrics/face/FaceService;->mDaemon:Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;
    :try_end_93
    .catchall {:try_start_45 .. :try_end_93} :catchall_95

    monitor-exit p0

    return-object v0

    .line 1231
    :catchall_95
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static synthetic lambda$rveb67MoYJ0egfY6LL-l05KvUz8(Lcom/android/server/biometrics/face/FaceService;)Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;
    .registers 1

    invoke-direct {p0}, Lcom/android/server/biometrics/face/FaceService;->getFaceDaemon()Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;

    move-result-object p0

    return-object p0
.end method

.method private startGenerateChallenge(Landroid/os/IBinder;)J
    .registers 6

    .line 1270
    invoke-direct {p0}, Lcom/android/server/biometrics/face/FaceService;->getFaceDaemon()Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;

    move-result-object p1

    .line 1271
    const-wide/16 v0, 0x0

    const-string v2, "FaceService"

    if-nez p1, :cond_11

    .line 1272
    const-string/jumbo p1, "startGenerateChallenge: no face HAL!"

    invoke-static {v2, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1273
    return-wide v0

    .line 1276
    :cond_11
    const/16 v3, 0x258

    :try_start_13
    invoke-interface {p1, v3}, Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;->generateChallenge(I)Landroid/hardware/biometrics/face/V1_0/OptionalUint64;

    move-result-object p1

    iget-wide v0, p1, Landroid/hardware/biometrics/face/V1_0/OptionalUint64;->value:J
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_13 .. :try_end_19} :catch_1a

    return-wide v0

    .line 1277
    :catch_1a
    move-exception p1

    .line 1278
    const-string/jumbo v3, "startGenerateChallenge failed"

    invoke-static {v2, v3, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1280
    return-wide v0
.end method

.method private startRevokeChallenge(Landroid/os/IBinder;)I
    .registers 6

    .line 1284
    invoke-direct {p0}, Lcom/android/server/biometrics/face/FaceService;->getFaceDaemon()Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;

    move-result-object p1

    .line 1285
    const/4 v0, 0x0

    const-string v1, "FaceService"

    if-nez p1, :cond_10

    .line 1286
    const-string/jumbo p1, "startRevokeChallenge: no face HAL!"

    invoke-static {v1, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1287
    return v0

    .line 1290
    :cond_10
    :try_start_10
    invoke-interface {p1}, Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;->revokeChallenge()I

    move-result p1

    .line 1291
    if-eqz p1, :cond_2b

    .line 1292
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "revokeChallenge returned "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2b
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_2b} :catch_2c

    .line 1294
    :cond_2b
    return p1

    .line 1295
    :catch_2c
    move-exception p1

    .line 1296
    const-string/jumbo v2, "startRevokeChallenge failed"

    invoke-static {v1, v2, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1298
    return v0
.end method


# virtual methods
.method protected checkAppOps(ILjava/lang/String;)Z
    .registers 5

    .line 1206
    iget-object v0, p0, Lcom/android/server/biometrics/face/FaceService;->mAppOps:Landroid/app/AppOpsManager;

    const/16 v1, 0x4e

    invoke-virtual {v0, v1, p1, p2}, Landroid/app/AppOpsManager;->noteOp(IILjava/lang/String;)I

    move-result p1

    if-nez p1, :cond_c

    const/4 p1, 0x1

    goto :goto_d

    :cond_c
    const/4 p1, 0x0

    :goto_d
    return p1
.end method

.method protected checkUseBiometricPermission()V
    .registers 1

    .line 1202
    return-void
.end method

.method protected getBiometricUtils()Lcom/android/server/biometrics/BiometricUtils;
    .registers 2

    .line 1101
    invoke-static {}, Lcom/android/server/biometrics/face/FaceUtils;->getInstance()Lcom/android/server/biometrics/face/FaceUtils;

    move-result-object v0

    return-object v0
.end method

.method protected getConstants()Lcom/android/server/biometrics/Constants;
    .registers 2

    .line 1106
    iget-object v0, p0, Lcom/android/server/biometrics/face/FaceService;->mFaceConstants:Lcom/android/server/biometrics/face/FaceConstants;

    return-object v0
.end method

.method protected getDaemonWrapper()Lcom/android/server/biometrics/BiometricServiceBase$DaemonWrapper;
    .registers 2

    .line 1096
    iget-object v0, p0, Lcom/android/server/biometrics/face/FaceService;->mDaemonWrapper:Lcom/android/server/biometrics/BiometricServiceBase$DaemonWrapper;

    return-object v0
.end method

.method protected getEnrolledTemplates(I)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/hardware/face/Face;",
            ">;"
        }
    .end annotation

    .line 1212
    invoke-virtual {p0}, Lcom/android/server/biometrics/face/FaceService;->getBiometricUtils()Lcom/android/server/biometrics/BiometricUtils;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/server/biometrics/face/FaceService;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lcom/android/server/biometrics/BiometricUtils;->getBiometricsForUser(Landroid/content/Context;I)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method protected getHalDeviceId()J
    .registers 3

    .line 1176
    iget-wide v0, p0, Lcom/android/server/biometrics/face/FaceService;->mHalDeviceId:J

    return-wide v0
.end method

.method protected getLockoutBroadcastPermission()Ljava/lang/String;
    .registers 2

    .line 1171
    const-string v0, "android.permission.RESET_FACE_LOCKOUT"

    return-object v0
.end method

.method protected getLockoutMode()I
    .registers 2

    .line 1227
    iget v0, p0, Lcom/android/server/biometrics/face/FaceService;->mCurrentUserLockoutMode:I

    return v0
.end method

.method protected getLockoutResetIntent()Ljava/lang/String;
    .registers 2

    .line 1166
    const-string v0, "com.android.server.biometrics.face.ACTION_LOCKOUT_RESET"

    return-object v0
.end method

.method protected getManageBiometricPermission()Ljava/lang/String;
    .registers 2

    .line 1196
    const-string v0, "android.permission.MANAGE_BIOMETRIC"

    return-object v0
.end method

.method public getTag()Ljava/lang/String;
    .registers 2

    .line 1091
    const-string v0, "FaceService"

    return-object v0
.end method

.method protected handleUserSwitching(I)V
    .registers 2

    .line 1181
    invoke-super {p0, p1}, Lcom/android/server/biometrics/BiometricServiceBase;->handleUserSwitching(I)V

    .line 1183
    const/4 p1, 0x0

    iput p1, p0, Lcom/android/server/biometrics/face/FaceService;->mCurrentUserLockoutMode:I

    .line 1184
    return-void
.end method

.method protected hasEnrolledBiometrics(I)Z
    .registers 4

    .line 1188
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    if-eq p1, v0, :cond_b

    .line 1189
    const-string v0, "android.permission.INTERACT_ACROSS_USERS"

    invoke-virtual {p0, v0}, Lcom/android/server/biometrics/face/FaceService;->checkPermission(Ljava/lang/String;)V

    .line 1191
    :cond_b
    invoke-virtual {p0}, Lcom/android/server/biometrics/face/FaceService;->getBiometricUtils()Lcom/android/server/biometrics/BiometricUtils;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/server/biometrics/face/FaceService;->getContext()Landroid/content/Context;

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

    .line 1111
    invoke-virtual {p0}, Lcom/android/server/biometrics/face/FaceService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e005c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 1113
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/face/FaceService;->getEnrolledTemplates(I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .line 1114
    if-lt v1, v0, :cond_31

    .line 1115
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Too many faces registered, user: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "FaceService"

    invoke-static {v0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1116
    const/4 p1, 0x1

    return p1

    .line 1118
    :cond_31
    const/4 p1, 0x0

    return p1
.end method

.method public synthetic lambda$onStart$0$FaceService()V
    .registers 3

    .line 1085
    iget-object v0, p0, Lcom/android/server/biometrics/face/FaceService;->mHandler:Lcom/android/server/biometrics/BiometricServiceBase$H;

    new-instance v1, Lcom/android/server/biometrics/face/-$$Lambda$FaceService$rveb67MoYJ0egfY6LL-l05KvUz8;

    invoke-direct {v1, p0}, Lcom/android/server/biometrics/face/-$$Lambda$FaceService$rveb67MoYJ0egfY6LL-l05KvUz8;-><init>(Lcom/android/server/biometrics/face/FaceService;)V

    invoke-virtual {v0, v1}, Lcom/android/server/biometrics/BiometricServiceBase$H;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method protected notifyClientActiveCallbacks(Z)V
    .registers 2

    .line 1218
    return-void
.end method

.method public onStart()V
    .registers 4

    .line 1081
    invoke-super {p0}, Lcom/android/server/biometrics/BiometricServiceBase;->onStart()V

    .line 1082
    new-instance v0, Lcom/android/server/biometrics/face/FaceService$FaceServiceWrapper;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/biometrics/face/FaceService$FaceServiceWrapper;-><init>(Lcom/android/server/biometrics/face/FaceService;Lcom/android/server/biometrics/face/FaceService$1;)V

    const-string v1, "face"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/biometrics/face/FaceService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 1085
    invoke-static {}, Lcom/android/server/SystemServerInitThreadPool;->get()Lcom/android/server/SystemServerInitThreadPool;

    move-result-object v0

    new-instance v1, Lcom/android/server/biometrics/face/-$$Lambda$FaceService$A0dfsVDvPu3BDJsON7widXUriSs;

    invoke-direct {v1, p0}, Lcom/android/server/biometrics/face/-$$Lambda$FaceService$A0dfsVDvPu3BDJsON7widXUriSs;-><init>(Lcom/android/server/biometrics/face/FaceService;)V

    const-string v2, "FaceService.onStart"

    invoke-virtual {v0, v1, v2}, Lcom/android/server/SystemServerInitThreadPool;->submit(Ljava/lang/Runnable;Ljava/lang/String;)Ljava/util/concurrent/Future;

    .line 1087
    return-void
.end method

.method protected removeClient(Lcom/android/server/biometrics/ClientMonitor;)V
    .registers 2

    .line 1072
    invoke-super {p0, p1}, Lcom/android/server/biometrics/BiometricServiceBase;->removeClient(Lcom/android/server/biometrics/ClientMonitor;)V

    .line 1073
    iget-boolean p1, p0, Lcom/android/server/biometrics/face/FaceService;->mRevokeChallengePending:Z

    if-eqz p1, :cond_e

    .line 1074
    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/android/server/biometrics/face/FaceService;->startRevokeChallenge(Landroid/os/IBinder;)I

    .line 1075
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/server/biometrics/face/FaceService;->mRevokeChallengePending:Z

    .line 1077
    :cond_e
    return-void
.end method

.method public serviceDied(J)V
    .registers 3

    .line 1123
    invoke-super {p0, p1, p2}, Lcom/android/server/biometrics/BiometricServiceBase;->serviceDied(J)V

    .line 1124
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/server/biometrics/face/FaceService;->mDaemon:Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;

    .line 1126
    const/16 p1, -0x2710

    iput p1, p0, Lcom/android/server/biometrics/face/FaceService;->mCurrentUserId:I

    .line 1127
    return-void
.end method

.method protected statsModality()I
    .registers 2

    .line 1222
    const/4 v0, 0x4

    return v0
.end method

.method protected updateActiveGroup(ILjava/lang/String;)V
    .registers 8

    .line 1131
    const-string v0, "FaceService"

    invoke-direct {p0}, Lcom/android/server/biometrics/face/FaceService;->getFaceDaemon()Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;

    move-result-object v1

    .line 1133
    if-eqz v1, :cond_78

    .line 1135
    :try_start_8
    invoke-virtual {p0, p2, p1}, Lcom/android/server/biometrics/face/FaceService;->getUserOrWorkProfileId(Ljava/lang/String;I)I

    move-result p1

    .line 1136
    iget p2, p0, Lcom/android/server/biometrics/face/FaceService;->mCurrentUserId:I

    if-eq p1, p2, :cond_71

    .line 1137
    invoke-static {p1}, Landroid/os/Environment;->getDataVendorDeDirectory(I)Ljava/io/File;

    move-result-object p2

    .line 1138
    new-instance v2, Ljava/io/File;

    const-string v3, "facedata"

    invoke-direct {v2, p2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1139
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result p2

    if-nez p2, :cond_4c

    .line 1140
    invoke-virtual {v2}, Ljava/io/File;->mkdir()Z

    move-result p2

    if-nez p2, :cond_40

    .line 1141
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Cannot make directory: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1142
    return-void

    .line 1147
    :cond_40
    invoke-static {v2}, Landroid/os/SELinux;->restorecon(Ljava/io/File;)Z

    move-result p2

    if-nez p2, :cond_4c

    .line 1148
    const-string p1, "Restorecons failed. Directory will have wrong label."

    invoke-static {v0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1149
    return-void

    .line 1153
    :cond_4c
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p2

    invoke-interface {v1, p1, p2}, Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;->setActiveUser(ILjava/lang/String;)I

    .line 1154
    iput p1, p0, Lcom/android/server/biometrics/face/FaceService;->mCurrentUserId:I

    .line 1155
    iget-object p2, p0, Lcom/android/server/biometrics/face/FaceService;->mAuthenticatorIds:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 1156
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/face/FaceService;->hasEnrolledBiometrics(I)Z

    move-result p1

    if-eqz p1, :cond_68

    invoke-interface {v1}, Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;->getAuthenticatorId()Landroid/hardware/biometrics/face/V1_0/OptionalUint64;

    move-result-object p1

    iget-wide v3, p1, Landroid/hardware/biometrics/face/V1_0/OptionalUint64;->value:J

    goto :goto_6a

    :cond_68
    const-wide/16 v3, 0x0

    :goto_6a
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    .line 1155
    invoke-interface {p2, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_71
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_71} :catch_72

    .line 1160
    :cond_71
    goto :goto_78

    .line 1158
    :catch_72
    move-exception p1

    .line 1159
    const-string p2, "Failed to setActiveUser():"

    invoke-static {v0, p2, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1162
    :cond_78
    :goto_78
    return-void
.end method
