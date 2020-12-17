.class public Lcom/android/server/biometrics/face/FaceService;
.super Lcom/android/server/biometrics/BiometricServiceBase;
.source "FaceService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/biometrics/face/FaceService$ServiceListenerImpl;,
        Lcom/android/server/biometrics/face/FaceService$BiometricPromptServiceListenerImpl;,
        Lcom/android/server/biometrics/face/FaceService$FaceServiceWrapper;,
        Lcom/android/server/biometrics/face/FaceService$FaceAuthClient;
    }
.end annotation


# static fields
.field private static final ACTION_LOCKOUT_RESET:Ljava/lang/String; = "com.android.server.biometrics.face.ACTION_LOCKOUT_RESET"

.field private static final CHALLENGE_TIMEOUT_SEC:I = 0x258

.field private static final DEBUG:Z = true

.field private static final FACE_DATA_DIR:Ljava/lang/String; = "facedata"

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


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"  # Landroid/content/Context;

    .line 879
    invoke-direct {p0, p1}, Lcom/android/server/biometrics/BiometricServiceBase;-><init>(Landroid/content/Context;)V

    .line 681
    new-instance v0, Lcom/android/server/biometrics/face/FaceConstants;

    invoke-direct {v0}, Lcom/android/server/biometrics/face/FaceConstants;-><init>()V

    iput-object v0, p0, Lcom/android/server/biometrics/face/FaceService;->mFaceConstants:Lcom/android/server/biometrics/face/FaceConstants;

    .line 698
    new-instance v0, Lcom/android/server/biometrics/face/FaceService$1;

    invoke-direct {v0, p0}, Lcom/android/server/biometrics/face/FaceService$1;-><init>(Lcom/android/server/biometrics/face/FaceService;)V

    iput-object v0, p0, Lcom/android/server/biometrics/face/FaceService;->mDaemonCallback:Landroid/hardware/biometrics/face/V1_0/IBiometricsFaceClientCallback;

    .line 806
    new-instance v0, Lcom/android/server/biometrics/face/FaceService$2;

    invoke-direct {v0, p0}, Lcom/android/server/biometrics/face/FaceService$2;-><init>(Lcom/android/server/biometrics/face/FaceService;)V

    iput-object v0, p0, Lcom/android/server/biometrics/face/FaceService;->mDaemonWrapper:Lcom/android/server/biometrics/BiometricServiceBase$DaemonWrapper;

    .line 881
    invoke-virtual {p0}, Lcom/android/server/biometrics/face/FaceService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 882
    const v1, 0x1070038

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/biometrics/face/FaceService;->mBiometricPromptIgnoreList:[I

    .line 883
    invoke-virtual {p0}, Lcom/android/server/biometrics/face/FaceService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 884
    const v1, 0x107003b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/biometrics/face/FaceService;->mBiometricPromptIgnoreListVendor:[I

    .line 885
    invoke-virtual {p0}, Lcom/android/server/biometrics/face/FaceService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 886
    const v1, 0x107003a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/biometrics/face/FaceService;->mKeyguardIgnoreList:[I

    .line 887
    invoke-virtual {p0}, Lcom/android/server/biometrics/face/FaceService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 888
    const v1, 0x107003d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/biometrics/face/FaceService;->mKeyguardIgnoreListVendor:[I

    .line 889
    invoke-virtual {p0}, Lcom/android/server/biometrics/face/FaceService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 890
    const v1, 0x1070039

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/biometrics/face/FaceService;->mEnrollIgnoreList:[I

    .line 891
    invoke-virtual {p0}, Lcom/android/server/biometrics/face/FaceService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 892
    const v1, 0x107003c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/biometrics/face/FaceService;->mEnrollIgnoreListVendor:[I

    .line 893
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/biometrics/face/FaceService;)[I
    .registers 2
    .param p0, "x0"  # Lcom/android/server/biometrics/face/FaceService;

    .line 91
    iget-object v0, p0, Lcom/android/server/biometrics/face/FaceService;->mBiometricPromptIgnoreList:[I

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/biometrics/face/FaceService;)[I
    .registers 2
    .param p0, "x0"  # Lcom/android/server/biometrics/face/FaceService;

    .line 91
    iget-object v0, p0, Lcom/android/server/biometrics/face/FaceService;->mKeyguardIgnoreList:[I

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/server/biometrics/face/FaceService;)Lcom/android/server/biometrics/BiometricServiceBase$DaemonWrapper;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/biometrics/face/FaceService;

    .line 91
    iget-object v0, p0, Lcom/android/server/biometrics/face/FaceService;->mDaemonWrapper:Lcom/android/server/biometrics/BiometricServiceBase$DaemonWrapper;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/server/biometrics/face/FaceService;)J
    .registers 3
    .param p0, "x0"  # Lcom/android/server/biometrics/face/FaceService;

    .line 91
    iget-wide v0, p0, Lcom/android/server/biometrics/face/FaceService;->mHalDeviceId:J

    return-wide v0
.end method

.method static synthetic access$1200(Lcom/android/server/biometrics/face/FaceService;)I
    .registers 2
    .param p0, "x0"  # Lcom/android/server/biometrics/face/FaceService;

    .line 91
    iget v0, p0, Lcom/android/server/biometrics/face/FaceService;->mCurrentUserId:I

    return v0
.end method

.method static synthetic access$1300(Lcom/android/server/biometrics/face/FaceService;)[I
    .registers 2
    .param p0, "x0"  # Lcom/android/server/biometrics/face/FaceService;

    .line 91
    iget-object v0, p0, Lcom/android/server/biometrics/face/FaceService;->mEnrollIgnoreList:[I

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/server/biometrics/face/FaceService;)[I
    .registers 2
    .param p0, "x0"  # Lcom/android/server/biometrics/face/FaceService;

    .line 91
    iget-object v0, p0, Lcom/android/server/biometrics/face/FaceService;->mEnrollIgnoreListVendor:[I

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/server/biometrics/face/FaceService;)I
    .registers 2
    .param p0, "x0"  # Lcom/android/server/biometrics/face/FaceService;

    .line 91
    iget v0, p0, Lcom/android/server/biometrics/face/FaceService;->mCurrentUserId:I

    return v0
.end method

.method static synthetic access$1600(Lcom/android/server/biometrics/face/FaceService;Lcom/android/server/biometrics/BiometricServiceBase$EnrollClientImpl;I)V
    .registers 3
    .param p0, "x0"  # Lcom/android/server/biometrics/face/FaceService;
    .param p1, "x1"  # Lcom/android/server/biometrics/BiometricServiceBase$EnrollClientImpl;
    .param p2, "x2"  # I

    .line 91
    invoke-virtual {p0, p1, p2}, Lcom/android/server/biometrics/face/FaceService;->enrollInternal(Lcom/android/server/biometrics/BiometricServiceBase$EnrollClientImpl;I)V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/server/biometrics/face/FaceService;Ljava/lang/String;)V
    .registers 2
    .param p0, "x0"  # Lcom/android/server/biometrics/face/FaceService;
    .param p1, "x1"  # Ljava/lang/String;

    .line 91
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/face/FaceService;->checkPermission(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/server/biometrics/face/FaceService;Landroid/os/IBinder;)V
    .registers 2
    .param p0, "x0"  # Lcom/android/server/biometrics/face/FaceService;
    .param p1, "x1"  # Landroid/os/IBinder;

    .line 91
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/face/FaceService;->cancelEnrollmentInternal(Landroid/os/IBinder;)V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/server/biometrics/face/FaceService;Ljava/lang/String;)V
    .registers 2
    .param p0, "x0"  # Lcom/android/server/biometrics/face/FaceService;
    .param p1, "x1"  # Ljava/lang/String;

    .line 91
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/face/FaceService;->checkPermission(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/biometrics/face/FaceService;)[I
    .registers 2
    .param p0, "x0"  # Lcom/android/server/biometrics/face/FaceService;

    .line 91
    iget-object v0, p0, Lcom/android/server/biometrics/face/FaceService;->mBiometricPromptIgnoreListVendor:[I

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/server/biometrics/face/FaceService;)Z
    .registers 2
    .param p0, "x0"  # Lcom/android/server/biometrics/face/FaceService;

    .line 91
    invoke-virtual {p0}, Lcom/android/server/biometrics/face/FaceService;->isRestricted()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2100(Lcom/android/server/biometrics/face/FaceService;)J
    .registers 3
    .param p0, "x0"  # Lcom/android/server/biometrics/face/FaceService;

    .line 91
    iget-wide v0, p0, Lcom/android/server/biometrics/face/FaceService;->mHalDeviceId:J

    return-wide v0
.end method

.method static synthetic access$2200(Lcom/android/server/biometrics/face/FaceService;)I
    .registers 2
    .param p0, "x0"  # Lcom/android/server/biometrics/face/FaceService;

    .line 91
    iget v0, p0, Lcom/android/server/biometrics/face/FaceService;->mCurrentUserId:I

    return v0
.end method

.method static synthetic access$2300(Lcom/android/server/biometrics/face/FaceService;Lcom/android/server/biometrics/BiometricServiceBase$AuthenticationClientImpl;JLjava/lang/String;)V
    .registers 5
    .param p0, "x0"  # Lcom/android/server/biometrics/face/FaceService;
    .param p1, "x1"  # Lcom/android/server/biometrics/BiometricServiceBase$AuthenticationClientImpl;
    .param p2, "x2"  # J
    .param p4, "x3"  # Ljava/lang/String;

    .line 91
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/biometrics/face/FaceService;->authenticateInternal(Lcom/android/server/biometrics/BiometricServiceBase$AuthenticationClientImpl;JLjava/lang/String;)V

    return-void
.end method

.method static synthetic access$2400(Lcom/android/server/biometrics/face/FaceService;Ljava/lang/String;)V
    .registers 2
    .param p0, "x0"  # Lcom/android/server/biometrics/face/FaceService;
    .param p1, "x1"  # Ljava/lang/String;

    .line 91
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/face/FaceService;->checkPermission(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2500(Lcom/android/server/biometrics/face/FaceService;)J
    .registers 3
    .param p0, "x0"  # Lcom/android/server/biometrics/face/FaceService;

    .line 91
    iget-wide v0, p0, Lcom/android/server/biometrics/face/FaceService;->mHalDeviceId:J

    return-wide v0
.end method

.method static synthetic access$2600(Lcom/android/server/biometrics/face/FaceService;)I
    .registers 2
    .param p0, "x0"  # Lcom/android/server/biometrics/face/FaceService;

    .line 91
    iget v0, p0, Lcom/android/server/biometrics/face/FaceService;->mCurrentUserId:I

    return v0
.end method

.method static synthetic access$2700(Lcom/android/server/biometrics/face/FaceService;Lcom/android/server/biometrics/BiometricServiceBase$AuthenticationClientImpl;JLjava/lang/String;III)V
    .registers 8
    .param p0, "x0"  # Lcom/android/server/biometrics/face/FaceService;
    .param p1, "x1"  # Lcom/android/server/biometrics/BiometricServiceBase$AuthenticationClientImpl;
    .param p2, "x2"  # J
    .param p4, "x3"  # Ljava/lang/String;
    .param p5, "x4"  # I
    .param p6, "x5"  # I
    .param p7, "x6"  # I

    .line 91
    invoke-virtual/range {p0 .. p7}, Lcom/android/server/biometrics/face/FaceService;->authenticateInternal(Lcom/android/server/biometrics/BiometricServiceBase$AuthenticationClientImpl;JLjava/lang/String;III)V

    return-void
.end method

.method static synthetic access$2800(Lcom/android/server/biometrics/face/FaceService;Ljava/lang/String;)V
    .registers 2
    .param p0, "x0"  # Lcom/android/server/biometrics/face/FaceService;
    .param p1, "x1"  # Ljava/lang/String;

    .line 91
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/face/FaceService;->checkPermission(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2900(Lcom/android/server/biometrics/face/FaceService;I)V
    .registers 2
    .param p0, "x0"  # Lcom/android/server/biometrics/face/FaceService;
    .param p1, "x1"  # I

    .line 91
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/face/FaceService;->startCurrentClient(I)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/biometrics/face/FaceService;)[I
    .registers 2
    .param p0, "x0"  # Lcom/android/server/biometrics/face/FaceService;

    .line 91
    iget-object v0, p0, Lcom/android/server/biometrics/face/FaceService;->mKeyguardIgnoreListVendor:[I

    return-object v0
.end method

.method static synthetic access$3000(Lcom/android/server/biometrics/face/FaceService;Ljava/lang/String;)V
    .registers 2
    .param p0, "x0"  # Lcom/android/server/biometrics/face/FaceService;
    .param p1, "x1"  # Ljava/lang/String;

    .line 91
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/face/FaceService;->checkPermission(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3100(Lcom/android/server/biometrics/face/FaceService;Landroid/os/IBinder;Ljava/lang/String;)V
    .registers 3
    .param p0, "x0"  # Lcom/android/server/biometrics/face/FaceService;
    .param p1, "x1"  # Landroid/os/IBinder;
    .param p2, "x2"  # Ljava/lang/String;

    .line 91
    invoke-virtual {p0, p1, p2}, Lcom/android/server/biometrics/face/FaceService;->cancelAuthenticationInternal(Landroid/os/IBinder;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3200(Lcom/android/server/biometrics/face/FaceService;Ljava/lang/String;)V
    .registers 2
    .param p0, "x0"  # Lcom/android/server/biometrics/face/FaceService;
    .param p1, "x1"  # Ljava/lang/String;

    .line 91
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/face/FaceService;->checkPermission(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3300(Lcom/android/server/biometrics/face/FaceService;Landroid/os/IBinder;Ljava/lang/String;IIIZ)V
    .registers 7
    .param p0, "x0"  # Lcom/android/server/biometrics/face/FaceService;
    .param p1, "x1"  # Landroid/os/IBinder;
    .param p2, "x2"  # Ljava/lang/String;
    .param p3, "x3"  # I
    .param p4, "x4"  # I
    .param p5, "x5"  # I
    .param p6, "x6"  # Z

    .line 91
    invoke-virtual/range {p0 .. p6}, Lcom/android/server/biometrics/face/FaceService;->cancelAuthenticationInternal(Landroid/os/IBinder;Ljava/lang/String;IIIZ)V

    return-void
.end method

.method static synthetic access$3400(Lcom/android/server/biometrics/face/FaceService;Ljava/lang/String;)V
    .registers 2
    .param p0, "x0"  # Lcom/android/server/biometrics/face/FaceService;
    .param p1, "x1"  # Ljava/lang/String;

    .line 91
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/face/FaceService;->checkPermission(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3500(Lcom/android/server/biometrics/face/FaceService;I)V
    .registers 2
    .param p0, "x0"  # Lcom/android/server/biometrics/face/FaceService;
    .param p1, "x1"  # I

    .line 91
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/face/FaceService;->setActiveUserInternal(I)V

    return-void
.end method

.method static synthetic access$3600(Lcom/android/server/biometrics/face/FaceService;Ljava/lang/String;)V
    .registers 2
    .param p0, "x0"  # Lcom/android/server/biometrics/face/FaceService;
    .param p1, "x1"  # Ljava/lang/String;

    .line 91
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/face/FaceService;->checkPermission(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3700(Lcom/android/server/biometrics/face/FaceService;)Z
    .registers 2
    .param p0, "x0"  # Lcom/android/server/biometrics/face/FaceService;

    .line 91
    invoke-virtual {p0}, Lcom/android/server/biometrics/face/FaceService;->isRestricted()Z

    move-result v0

    return v0
.end method

.method static synthetic access$3800(Lcom/android/server/biometrics/face/FaceService;)J
    .registers 3
    .param p0, "x0"  # Lcom/android/server/biometrics/face/FaceService;

    .line 91
    iget-wide v0, p0, Lcom/android/server/biometrics/face/FaceService;->mHalDeviceId:J

    return-wide v0
.end method

.method static synthetic access$3900(Lcom/android/server/biometrics/face/FaceService;Lcom/android/server/biometrics/RemovalClient;)V
    .registers 2
    .param p0, "x0"  # Lcom/android/server/biometrics/face/FaceService;
    .param p1, "x1"  # Lcom/android/server/biometrics/RemovalClient;

    .line 91
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/face/FaceService;->removeInternal(Lcom/android/server/biometrics/RemovalClient;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/biometrics/face/FaceService;Ljava/lang/String;)V
    .registers 2
    .param p0, "x0"  # Lcom/android/server/biometrics/face/FaceService;
    .param p1, "x1"  # Ljava/lang/String;

    .line 91
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/face/FaceService;->checkPermission(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$4000(Lcom/android/server/biometrics/face/FaceService;Ljava/lang/String;)V
    .registers 2
    .param p0, "x0"  # Lcom/android/server/biometrics/face/FaceService;
    .param p1, "x1"  # Ljava/lang/String;

    .line 91
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/face/FaceService;->checkPermission(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$4100(Lcom/android/server/biometrics/face/FaceService;)Z
    .registers 2
    .param p0, "x0"  # Lcom/android/server/biometrics/face/FaceService;

    .line 91
    invoke-virtual {p0}, Lcom/android/server/biometrics/face/FaceService;->isRestricted()Z

    move-result v0

    return v0
.end method

.method static synthetic access$4200(Lcom/android/server/biometrics/face/FaceService;)J
    .registers 3
    .param p0, "x0"  # Lcom/android/server/biometrics/face/FaceService;

    .line 91
    iget-wide v0, p0, Lcom/android/server/biometrics/face/FaceService;->mHalDeviceId:J

    return-wide v0
.end method

.method static synthetic access$4300(Lcom/android/server/biometrics/face/FaceService;Lcom/android/server/biometrics/EnumerateClient;)V
    .registers 2
    .param p0, "x0"  # Lcom/android/server/biometrics/face/FaceService;
    .param p1, "x1"  # Lcom/android/server/biometrics/EnumerateClient;

    .line 91
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/face/FaceService;->enumerateInternal(Lcom/android/server/biometrics/EnumerateClient;)V

    return-void
.end method

.method static synthetic access$4400(Lcom/android/server/biometrics/face/FaceService;Ljava/lang/String;)V
    .registers 2
    .param p0, "x0"  # Lcom/android/server/biometrics/face/FaceService;
    .param p1, "x1"  # Ljava/lang/String;

    .line 91
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/face/FaceService;->checkPermission(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$4501(Lcom/android/server/biometrics/face/FaceService;Landroid/hardware/biometrics/IBiometricServiceLockoutResetCallback;)V
    .registers 2
    .param p0, "x0"  # Lcom/android/server/biometrics/face/FaceService;
    .param p1, "x1"  # Landroid/hardware/biometrics/IBiometricServiceLockoutResetCallback;

    .line 91
    invoke-super {p0, p1}, Lcom/android/server/biometrics/BiometricServiceBase;->addLockoutResetCallback(Landroid/hardware/biometrics/IBiometricServiceLockoutResetCallback;)V

    return-void
.end method

.method static synthetic access$4600(Lcom/android/server/biometrics/face/FaceService;Ljava/io/FileDescriptor;[Ljava/lang/String;)V
    .registers 3
    .param p0, "x0"  # Lcom/android/server/biometrics/face/FaceService;
    .param p1, "x1"  # Ljava/io/FileDescriptor;
    .param p2, "x2"  # [Ljava/lang/String;

    .line 91
    invoke-direct {p0, p1, p2}, Lcom/android/server/biometrics/face/FaceService;->dumpHal(Ljava/io/FileDescriptor;[Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$4700(Lcom/android/server/biometrics/face/FaceService;Ljava/io/FileDescriptor;)V
    .registers 2
    .param p0, "x0"  # Lcom/android/server/biometrics/face/FaceService;
    .param p1, "x1"  # Ljava/io/FileDescriptor;

    .line 91
    invoke-direct {p0, p1}, Lcom/android/server/biometrics/face/FaceService;->dumpProto(Ljava/io/FileDescriptor;)V

    return-void
.end method

.method static synthetic access$4800(Lcom/android/server/biometrics/face/FaceService;Ljava/io/PrintWriter;)V
    .registers 2
    .param p0, "x0"  # Lcom/android/server/biometrics/face/FaceService;
    .param p1, "x1"  # Ljava/io/PrintWriter;

    .line 91
    invoke-direct {p0, p1}, Lcom/android/server/biometrics/face/FaceService;->dumpInternal(Ljava/io/PrintWriter;)V

    return-void
.end method

.method static synthetic access$4900(Lcom/android/server/biometrics/face/FaceService;Ljava/lang/String;)V
    .registers 2
    .param p0, "x0"  # Lcom/android/server/biometrics/face/FaceService;
    .param p1, "x1"  # Ljava/lang/String;

    .line 91
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/face/FaceService;->checkPermission(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/biometrics/face/FaceService;Landroid/os/IBinder;)J
    .registers 4
    .param p0, "x0"  # Lcom/android/server/biometrics/face/FaceService;
    .param p1, "x1"  # Landroid/os/IBinder;

    .line 91
    invoke-direct {p0, p1}, Lcom/android/server/biometrics/face/FaceService;->startGenerateChallenge(Landroid/os/IBinder;)J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$5000(Lcom/android/server/biometrics/face/FaceService;Ljava/lang/String;ZIII)Z
    .registers 7
    .param p0, "x0"  # Lcom/android/server/biometrics/face/FaceService;
    .param p1, "x1"  # Ljava/lang/String;
    .param p2, "x2"  # Z
    .param p3, "x3"  # I
    .param p4, "x4"  # I
    .param p5, "x5"  # I

    .line 91
    invoke-virtual/range {p0 .. p5}, Lcom/android/server/biometrics/face/FaceService;->canUseBiometric(Ljava/lang/String;ZIII)Z

    move-result v0

    return v0
.end method

.method static synthetic access$5100(Lcom/android/server/biometrics/face/FaceService;)Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/biometrics/face/FaceService;

    .line 91
    invoke-direct {p0}, Lcom/android/server/biometrics/face/FaceService;->getFaceDaemon()Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$5200(Lcom/android/server/biometrics/face/FaceService;)J
    .registers 3
    .param p0, "x0"  # Lcom/android/server/biometrics/face/FaceService;

    .line 91
    iget-wide v0, p0, Lcom/android/server/biometrics/face/FaceService;->mHalDeviceId:J

    return-wide v0
.end method

.method static synthetic access$5300(Lcom/android/server/biometrics/face/FaceService;Ljava/lang/String;)V
    .registers 2
    .param p0, "x0"  # Lcom/android/server/biometrics/face/FaceService;
    .param p1, "x1"  # Ljava/lang/String;

    .line 91
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/face/FaceService;->checkPermission(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$5400(Lcom/android/server/biometrics/face/FaceService;I)Z
    .registers 3
    .param p0, "x0"  # Lcom/android/server/biometrics/face/FaceService;
    .param p1, "x1"  # I

    .line 91
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/face/FaceService;->isCurrentUserOrProfile(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$5500(Lcom/android/server/biometrics/face/FaceService;)I
    .registers 2
    .param p0, "x0"  # Lcom/android/server/biometrics/face/FaceService;

    .line 91
    iget v0, p0, Lcom/android/server/biometrics/face/FaceService;->mCurrentUserId:I

    return v0
.end method

.method static synthetic access$5600(Lcom/android/server/biometrics/face/FaceService;)Lcom/android/server/biometrics/BiometricServiceBase$H;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/biometrics/face/FaceService;

    .line 91
    iget-object v0, p0, Lcom/android/server/biometrics/face/FaceService;->mHandler:Lcom/android/server/biometrics/BiometricServiceBase$H;

    return-object v0
.end method

.method static synthetic access$5700(Lcom/android/server/biometrics/face/FaceService;Ljava/lang/String;)V
    .registers 2
    .param p0, "x0"  # Lcom/android/server/biometrics/face/FaceService;
    .param p1, "x1"  # Ljava/lang/String;

    .line 91
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/face/FaceService;->checkPermission(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$5800(Lcom/android/server/biometrics/face/FaceService;Ljava/lang/String;ZIII)Z
    .registers 7
    .param p0, "x0"  # Lcom/android/server/biometrics/face/FaceService;
    .param p1, "x1"  # Ljava/lang/String;
    .param p2, "x2"  # Z
    .param p3, "x3"  # I
    .param p4, "x4"  # I
    .param p5, "x5"  # I

    .line 91
    invoke-virtual/range {p0 .. p5}, Lcom/android/server/biometrics/face/FaceService;->canUseBiometric(Ljava/lang/String;ZIII)Z

    move-result v0

    return v0
.end method

.method static synthetic access$5900(Lcom/android/server/biometrics/face/FaceService;Ljava/lang/String;)V
    .registers 2
    .param p0, "x0"  # Lcom/android/server/biometrics/face/FaceService;
    .param p1, "x1"  # Ljava/lang/String;

    .line 91
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/face/FaceService;->checkPermission(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/biometrics/face/FaceService;Ljava/lang/String;)V
    .registers 2
    .param p0, "x0"  # Lcom/android/server/biometrics/face/FaceService;
    .param p1, "x1"  # Ljava/lang/String;

    .line 91
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/face/FaceService;->checkPermission(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$6000(Lcom/android/server/biometrics/face/FaceService;Ljava/lang/String;ZIII)Z
    .registers 7
    .param p0, "x0"  # Lcom/android/server/biometrics/face/FaceService;
    .param p1, "x1"  # Ljava/lang/String;
    .param p2, "x2"  # Z
    .param p3, "x3"  # I
    .param p4, "x4"  # I
    .param p5, "x5"  # I

    .line 91
    invoke-virtual/range {p0 .. p5}, Lcom/android/server/biometrics/face/FaceService;->canUseBiometric(Ljava/lang/String;ZIII)Z

    move-result v0

    return v0
.end method

.method static synthetic access$6100(Lcom/android/server/biometrics/face/FaceService;Ljava/lang/String;)J
    .registers 4
    .param p0, "x0"  # Lcom/android/server/biometrics/face/FaceService;
    .param p1, "x1"  # Ljava/lang/String;

    .line 91
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/face/FaceService;->getAuthenticatorId(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$6200(Lcom/android/server/biometrics/face/FaceService;Ljava/lang/String;)V
    .registers 2
    .param p0, "x0"  # Lcom/android/server/biometrics/face/FaceService;
    .param p1, "x1"  # Ljava/lang/String;

    .line 91
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/face/FaceService;->checkPermission(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$6300(Lcom/android/server/biometrics/face/FaceService;)I
    .registers 2
    .param p0, "x0"  # Lcom/android/server/biometrics/face/FaceService;

    .line 91
    iget v0, p0, Lcom/android/server/biometrics/face/FaceService;->mCurrentUserId:I

    return v0
.end method

.method static synthetic access$6400(Lcom/android/server/biometrics/face/FaceService;Ljava/lang/String;)V
    .registers 2
    .param p0, "x0"  # Lcom/android/server/biometrics/face/FaceService;
    .param p1, "x1"  # Ljava/lang/String;

    .line 91
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/face/FaceService;->checkPermission(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$6500(Lcom/android/server/biometrics/face/FaceService;)Lcom/android/server/biometrics/BiometricServiceBase$H;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/biometrics/face/FaceService;

    .line 91
    iget-object v0, p0, Lcom/android/server/biometrics/face/FaceService;->mHandler:Lcom/android/server/biometrics/BiometricServiceBase$H;

    return-object v0
.end method

.method static synthetic access$6600(Lcom/android/server/biometrics/face/FaceService;Ljava/lang/String;)V
    .registers 2
    .param p0, "x0"  # Lcom/android/server/biometrics/face/FaceService;
    .param p1, "x1"  # Ljava/lang/String;

    .line 91
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/face/FaceService;->checkPermission(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$6700(Lcom/android/server/biometrics/face/FaceService;)Lcom/android/server/biometrics/BiometricServiceBase$H;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/biometrics/face/FaceService;

    .line 91
    iget-object v0, p0, Lcom/android/server/biometrics/face/FaceService;->mHandler:Lcom/android/server/biometrics/BiometricServiceBase$H;

    return-object v0
.end method

.method static synthetic access$6800(Lcom/android/server/biometrics/face/FaceService;Ljava/lang/String;)V
    .registers 2
    .param p0, "x0"  # Lcom/android/server/biometrics/face/FaceService;
    .param p1, "x1"  # Ljava/lang/String;

    .line 91
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/face/FaceService;->checkPermission(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$6900(Lcom/android/server/biometrics/face/FaceService;)Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/biometrics/face/FaceService;

    .line 91
    iget-object v0, p0, Lcom/android/server/biometrics/face/FaceService;->mDaemon:Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;

    return-object v0
.end method

.method static synthetic access$6902(Lcom/android/server/biometrics/face/FaceService;Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;)Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/biometrics/face/FaceService;
    .param p1, "x1"  # Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;

    .line 91
    iput-object p1, p0, Lcom/android/server/biometrics/face/FaceService;->mDaemon:Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;

    return-object p1
.end method

.method static synthetic access$700(Lcom/android/server/biometrics/face/FaceService;Landroid/os/IBinder;)I
    .registers 3
    .param p0, "x0"  # Lcom/android/server/biometrics/face/FaceService;
    .param p1, "x1"  # Landroid/os/IBinder;

    .line 91
    invoke-direct {p0, p1}, Lcom/android/server/biometrics/face/FaceService;->startRevokeChallenge(Landroid/os/IBinder;)I

    move-result v0

    return v0
.end method

.method static synthetic access$7000(Lcom/android/server/biometrics/face/FaceService;)I
    .registers 2
    .param p0, "x0"  # Lcom/android/server/biometrics/face/FaceService;

    .line 91
    iget v0, p0, Lcom/android/server/biometrics/face/FaceService;->mCurrentUserId:I

    return v0
.end method

.method static synthetic access$7100(Lcom/android/server/biometrics/face/FaceService;)I
    .registers 2
    .param p0, "x0"  # Lcom/android/server/biometrics/face/FaceService;

    .line 91
    iget v0, p0, Lcom/android/server/biometrics/face/FaceService;->mCurrentUserId:I

    return v0
.end method

.method static synthetic access$7200(Lcom/android/server/biometrics/face/FaceService;)I
    .registers 2
    .param p0, "x0"  # Lcom/android/server/biometrics/face/FaceService;

    .line 91
    iget v0, p0, Lcom/android/server/biometrics/face/FaceService;->mCurrentUserId:I

    return v0
.end method

.method static synthetic access$7300(Lcom/android/server/biometrics/face/FaceService;)I
    .registers 2
    .param p0, "x0"  # Lcom/android/server/biometrics/face/FaceService;

    .line 91
    iget v0, p0, Lcom/android/server/biometrics/face/FaceService;->mCurrentUserId:I

    return v0
.end method

.method static synthetic access$7400(Lcom/android/server/biometrics/face/FaceService;)Lcom/android/server/biometrics/BiometricServiceBase$H;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/biometrics/face/FaceService;

    .line 91
    iget-object v0, p0, Lcom/android/server/biometrics/face/FaceService;->mHandler:Lcom/android/server/biometrics/BiometricServiceBase$H;

    return-object v0
.end method

.method static synthetic access$7500(Lcom/android/server/biometrics/face/FaceService;)Lcom/android/server/biometrics/BiometricServiceBase$H;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/biometrics/face/FaceService;

    .line 91
    iget-object v0, p0, Lcom/android/server/biometrics/face/FaceService;->mHandler:Lcom/android/server/biometrics/BiometricServiceBase$H;

    return-object v0
.end method

.method static synthetic access$7600(Lcom/android/server/biometrics/face/FaceService;)Lcom/android/server/biometrics/BiometricServiceBase$H;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/biometrics/face/FaceService;

    .line 91
    iget-object v0, p0, Lcom/android/server/biometrics/face/FaceService;->mHandler:Lcom/android/server/biometrics/BiometricServiceBase$H;

    return-object v0
.end method

.method static synthetic access$7700(Lcom/android/server/biometrics/face/FaceService;)Lcom/android/server/biometrics/BiometricServiceBase$H;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/biometrics/face/FaceService;

    .line 91
    iget-object v0, p0, Lcom/android/server/biometrics/face/FaceService;->mHandler:Lcom/android/server/biometrics/BiometricServiceBase$H;

    return-object v0
.end method

.method static synthetic access$7800(Lcom/android/server/biometrics/face/FaceService;)Lcom/android/server/biometrics/BiometricServiceBase$H;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/biometrics/face/FaceService;

    .line 91
    iget-object v0, p0, Lcom/android/server/biometrics/face/FaceService;->mHandler:Lcom/android/server/biometrics/BiometricServiceBase$H;

    return-object v0
.end method

.method static synthetic access$7900(Lcom/android/server/biometrics/face/FaceService;)Lcom/android/server/biometrics/BiometricServiceBase$H;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/biometrics/face/FaceService;

    .line 91
    iget-object v0, p0, Lcom/android/server/biometrics/face/FaceService;->mHandler:Lcom/android/server/biometrics/BiometricServiceBase$H;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/server/biometrics/face/FaceService;Ljava/lang/String;)V
    .registers 2
    .param p0, "x0"  # Lcom/android/server/biometrics/face/FaceService;
    .param p1, "x1"  # Ljava/lang/String;

    .line 91
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/face/FaceService;->checkPermission(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$8002(Lcom/android/server/biometrics/face/FaceService;I)I
    .registers 2
    .param p0, "x0"  # Lcom/android/server/biometrics/face/FaceService;
    .param p1, "x1"  # I

    .line 91
    iput p1, p0, Lcom/android/server/biometrics/face/FaceService;->mCurrentUserLockoutMode:I

    return p1
.end method

.method static synthetic access$8100(Lcom/android/server/biometrics/face/FaceService;)Lcom/android/server/biometrics/BiometricServiceBase$H;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/biometrics/face/FaceService;

    .line 91
    iget-object v0, p0, Lcom/android/server/biometrics/face/FaceService;->mHandler:Lcom/android/server/biometrics/BiometricServiceBase$H;

    return-object v0
.end method

.method static synthetic access$8200(Lcom/android/server/biometrics/face/FaceService;)V
    .registers 1
    .param p0, "x0"  # Lcom/android/server/biometrics/face/FaceService;

    .line 91
    invoke-virtual {p0}, Lcom/android/server/biometrics/face/FaceService;->notifyLockoutResetMonitors()V

    return-void
.end method

.method static synthetic access$8301(Lcom/android/server/biometrics/face/FaceService;Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;I)V
    .registers 3
    .param p0, "x0"  # Lcom/android/server/biometrics/face/FaceService;
    .param p1, "x1"  # Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;
    .param p2, "x2"  # I

    .line 91
    invoke-super {p0, p1, p2}, Lcom/android/server/biometrics/BiometricServiceBase;->handleEnumerate(Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;I)V

    return-void
.end method

.method static synthetic access$8401(Lcom/android/server/biometrics/face/FaceService;Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;I)V
    .registers 3
    .param p0, "x0"  # Lcom/android/server/biometrics/face/FaceService;
    .param p1, "x1"  # Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;
    .param p2, "x2"  # I

    .line 91
    invoke-super {p0, p1, p2}, Lcom/android/server/biometrics/BiometricServiceBase;->handleEnumerate(Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;I)V

    return-void
.end method

.method static synthetic access$8501(Lcom/android/server/biometrics/face/FaceService;Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;I)V
    .registers 3
    .param p0, "x0"  # Lcom/android/server/biometrics/face/FaceService;
    .param p1, "x1"  # Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;
    .param p2, "x2"  # I

    .line 91
    invoke-super {p0, p1, p2}, Lcom/android/server/biometrics/BiometricServiceBase;->handleRemoved(Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;I)V

    return-void
.end method

.method static synthetic access$8601(Lcom/android/server/biometrics/face/FaceService;Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;I)V
    .registers 3
    .param p0, "x0"  # Lcom/android/server/biometrics/face/FaceService;
    .param p1, "x1"  # Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;
    .param p2, "x2"  # I

    .line 91
    invoke-super {p0, p1, p2}, Lcom/android/server/biometrics/BiometricServiceBase;->handleRemoved(Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;I)V

    return-void
.end method

.method static synthetic access$8701(Lcom/android/server/biometrics/face/FaceService;JII)V
    .registers 5
    .param p0, "x0"  # Lcom/android/server/biometrics/face/FaceService;
    .param p1, "x1"  # J
    .param p3, "x2"  # I
    .param p4, "x3"  # I

    .line 91
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/server/biometrics/BiometricServiceBase;->handleError(JII)V

    return-void
.end method

.method static synthetic access$8802(Lcom/android/server/biometrics/face/FaceService;J)J
    .registers 3
    .param p0, "x0"  # Lcom/android/server/biometrics/face/FaceService;
    .param p1, "x1"  # J

    .line 91
    iput-wide p1, p0, Lcom/android/server/biometrics/face/FaceService;->mHalDeviceId:J

    return-wide p1
.end method

.method static synthetic access$8902(Lcom/android/server/biometrics/face/FaceService;I)I
    .registers 2
    .param p0, "x0"  # Lcom/android/server/biometrics/face/FaceService;
    .param p1, "x1"  # I

    .line 91
    iput p1, p0, Lcom/android/server/biometrics/face/FaceService;->mCurrentUserId:I

    return p1
.end method

.method static synthetic access$900(Lcom/android/server/biometrics/face/FaceService;)Z
    .registers 2
    .param p0, "x0"  # Lcom/android/server/biometrics/face/FaceService;

    .line 91
    invoke-virtual {p0}, Lcom/android/server/biometrics/face/FaceService;->isRestricted()Z

    move-result v0

    return v0
.end method

.method static synthetic access$9001(Lcom/android/server/biometrics/face/FaceService;Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;Ljava/util/ArrayList;)V
    .registers 3
    .param p0, "x0"  # Lcom/android/server/biometrics/face/FaceService;
    .param p1, "x1"  # Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;
    .param p2, "x2"  # Ljava/util/ArrayList;

    .line 91
    invoke-super {p0, p1, p2}, Lcom/android/server/biometrics/BiometricServiceBase;->handleAuthenticated(Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;Ljava/util/ArrayList;)V

    return-void
.end method

.method static synthetic access$9101(Lcom/android/server/biometrics/face/FaceService;JII)V
    .registers 5
    .param p0, "x0"  # Lcom/android/server/biometrics/face/FaceService;
    .param p1, "x1"  # J
    .param p3, "x2"  # I
    .param p4, "x3"  # I

    .line 91
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/server/biometrics/BiometricServiceBase;->handleAcquired(JII)V

    return-void
.end method

.method static synthetic access$9201(Lcom/android/server/biometrics/face/FaceService;Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;I)V
    .registers 3
    .param p0, "x0"  # Lcom/android/server/biometrics/face/FaceService;
    .param p1, "x1"  # Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;
    .param p2, "x2"  # I

    .line 91
    invoke-super {p0, p1, p2}, Lcom/android/server/biometrics/BiometricServiceBase;->handleEnrollResult(Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;I)V

    return-void
.end method

.method private dumpHal(Ljava/io/FileDescriptor;[Ljava/lang/String;)V
    .registers 9
    .param p1, "fd"  # Ljava/io/FileDescriptor;
    .param p2, "args"  # [Ljava/lang/String;

    .line 1202
    sget-boolean v0, Landroid/os/Build;->IS_ENG:Z

    if-nez v0, :cond_9

    sget-boolean v0, Landroid/os/Build;->IS_USERDEBUG:Z

    if-nez v0, :cond_9

    .line 1203
    return-void

    .line 1208
    :cond_9
    const/4 v0, 0x0

    const-string/jumbo v1, "ro.face.disable_debug_data"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_6d

    .line 1209
    const-string/jumbo v1, "persist.face.disable_debug_data"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_1d

    goto :goto_6d

    .line 1216
    :cond_1d
    invoke-direct {p0}, Lcom/android/server/biometrics/face/FaceService;->getFaceDaemon()Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;

    move-result-object v1

    .line 1217
    .local v1, "daemon":Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;
    if-eqz v1, :cond_6c

    .line 1218
    const/4 v2, 0x0

    .line 1220
    .local v2, "devnull":Ljava/io/FileOutputStream;
    :try_start_24
    new-instance v3, Ljava/io/FileOutputStream;

    const-string v4, "/dev/null"

    invoke-direct {v3, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    move-object v2, v3

    .line 1221
    new-instance v3, Landroid/os/NativeHandle;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/io/FileDescriptor;

    .line 1222
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v5

    aput-object v5, v4, v0

    const/4 v5, 0x1

    aput-object p1, v4, v5

    new-array v5, v0, [I

    invoke-direct {v3, v4, v5, v0}, Landroid/os/NativeHandle;-><init>([Ljava/io/FileDescriptor;[IZ)V

    move-object v0, v3

    .line 1224
    .local v0, "handle":Landroid/os/NativeHandle;
    new-instance v3, Ljava/util/ArrayList;

    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {v1, v0, v3}, Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;->debug(Landroid/os/NativeHandle;Ljava/util/ArrayList;)V
    :try_end_4c
    .catch Ljava/io/IOException; {:try_start_24 .. :try_end_4c} :catch_53
    .catch Landroid/os/RemoteException; {:try_start_24 .. :try_end_4c} :catch_53
    .catchall {:try_start_24 .. :try_end_4c} :catchall_51

    .line 1228
    .end local v0  # "handle":Landroid/os/NativeHandle;
    nop

    .line 1230
    :try_start_4d
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_50
    .catch Ljava/io/IOException; {:try_start_4d .. :try_end_50} :catch_62

    goto :goto_61

    .line 1228
    :catchall_51
    move-exception v0

    goto :goto_64

    .line 1225
    :catch_53
    move-exception v0

    .line 1226
    .local v0, "ex":Ljava/lang/Exception;
    :try_start_54
    const-string v3, "FaceService"

    const-string v4, "error while reading face debugging data"

    invoke-static {v3, v4, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5b
    .catchall {:try_start_54 .. :try_end_5b} :catchall_51

    .line 1228
    nop

    .end local v0  # "ex":Ljava/lang/Exception;
    if-eqz v2, :cond_6c

    .line 1230
    :try_start_5e
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_61
    .catch Ljava/io/IOException; {:try_start_5e .. :try_end_61} :catch_62

    .line 1232
    :goto_61
    goto :goto_6c

    .line 1231
    :catch_62
    move-exception v0

    goto :goto_61

    .line 1228
    :goto_64
    if-eqz v2, :cond_6b

    .line 1230
    :try_start_66
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_69
    .catch Ljava/io/IOException; {:try_start_66 .. :try_end_69} :catch_6a

    .line 1232
    goto :goto_6b

    .line 1231
    :catch_6a
    move-exception v3

    .line 1232
    :cond_6b
    :goto_6b
    throw v0

    .line 1236
    .end local v2  # "devnull":Ljava/io/FileOutputStream;
    :cond_6c
    :goto_6c
    return-void

    .line 1210
    .end local v1  # "daemon":Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;
    :cond_6d
    :goto_6d
    return-void
.end method

.method private dumpInternal(Ljava/io/PrintWriter;)V
    .registers 14
    .param p1, "pw"  # Ljava/io/PrintWriter;

    .line 1111
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 1113
    .local v0, "dump":Lorg/json/JSONObject;
    const/4 v1, 0x0

    :try_start_6
    const-string/jumbo v2, "service"

    const-string v3, "Face Manager"

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1115
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 1116
    .local v2, "sets":Lorg/json/JSONArray;
    invoke-virtual {p0}, Lcom/android/server/biometrics/face/FaceService;->getContext()Landroid/content/Context;

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

    .line 1117
    .local v4, "user":Landroid/content/pm/UserInfo;
    invoke-virtual {v4}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v5

    .line 1118
    .local v5, "userId":I
    invoke-virtual {p0}, Lcom/android/server/biometrics/face/FaceService;->getBiometricUtils()Lcom/android/server/biometrics/BiometricUtils;

    move-result-object v6

    invoke-virtual {p0}, Lcom/android/server/biometrics/face/FaceService;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-interface {v6, v7, v5}, Lcom/android/server/biometrics/BiometricUtils;->getBiometricsForUser(Landroid/content/Context;I)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    .line 1119
    .local v6, "N":I
    iget-object v7, p0, Lcom/android/server/biometrics/face/FaceService;->mPerformanceMap:Ljava/util/HashMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/biometrics/BiometricServiceBase$PerformanceStats;

    .line 1120
    .local v7, "stats":Lcom/android/server/biometrics/BiometricServiceBase$PerformanceStats;
    iget-object v8, p0, Lcom/android/server/biometrics/face/FaceService;->mCryptoPerformanceMap:Ljava/util/HashMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/biometrics/BiometricServiceBase$PerformanceStats;

    .line 1121
    .local v8, "cryptoStats":Lcom/android/server/biometrics/BiometricServiceBase$PerformanceStats;
    new-instance v9, Lorg/json/JSONObject;

    invoke-direct {v9}, Lorg/json/JSONObject;-><init>()V

    .line 1122
    .local v9, "set":Lorg/json/JSONObject;
    const-string/jumbo v10, "id"

    invoke-virtual {v9, v10, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1123
    const-string v10, "count"

    invoke-virtual {v9, v10, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1124
    const-string v10, "accept"

    if-eqz v7, :cond_76

    iget v11, v7, Lcom/android/server/biometrics/BiometricServiceBase$PerformanceStats;->accept:I

    goto :goto_77

    :cond_76
    move v11, v1

    :goto_77
    invoke-virtual {v9, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1125
    const-string/jumbo v10, "reject"

    if-eqz v7, :cond_82

    iget v11, v7, Lcom/android/server/biometrics/BiometricServiceBase$PerformanceStats;->reject:I

    goto :goto_83

    :cond_82
    move v11, v1

    :goto_83
    invoke-virtual {v9, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1126
    const-string v10, "acquire"

    if-eqz v7, :cond_8d

    iget v11, v7, Lcom/android/server/biometrics/BiometricServiceBase$PerformanceStats;->acquire:I

    goto :goto_8e

    :cond_8d
    move v11, v1

    :goto_8e
    invoke-virtual {v9, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1127
    const-string/jumbo v10, "lockout"

    if-eqz v7, :cond_99

    iget v11, v7, Lcom/android/server/biometrics/BiometricServiceBase$PerformanceStats;->lockout:I

    goto :goto_9a

    :cond_99
    move v11, v1

    :goto_9a
    invoke-virtual {v9, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1128
    const-string/jumbo v10, "permanentLockout"

    if-eqz v7, :cond_a5

    iget v11, v7, Lcom/android/server/biometrics/BiometricServiceBase$PerformanceStats;->permanentLockout:I

    goto :goto_a6

    :cond_a5
    move v11, v1

    :goto_a6
    invoke-virtual {v9, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1131
    const-string v10, "acceptCrypto"

    if-eqz v8, :cond_b0

    iget v11, v8, Lcom/android/server/biometrics/BiometricServiceBase$PerformanceStats;->accept:I

    goto :goto_b1

    :cond_b0
    move v11, v1

    :goto_b1
    invoke-virtual {v9, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1132
    const-string/jumbo v10, "rejectCrypto"

    if-eqz v8, :cond_bc

    iget v11, v8, Lcom/android/server/biometrics/BiometricServiceBase$PerformanceStats;->reject:I

    goto :goto_bd

    :cond_bc
    move v11, v1

    :goto_bd
    invoke-virtual {v9, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1133
    const-string v10, "acquireCrypto"

    if-eqz v8, :cond_c7

    iget v11, v8, Lcom/android/server/biometrics/BiometricServiceBase$PerformanceStats;->acquire:I

    goto :goto_c8

    :cond_c7
    move v11, v1

    :goto_c8
    invoke-virtual {v9, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1134
    const-string/jumbo v10, "lockoutCrypto"

    if-eqz v8, :cond_d3

    iget v11, v8, Lcom/android/server/biometrics/BiometricServiceBase$PerformanceStats;->lockout:I

    goto :goto_d4

    :cond_d3
    move v11, v1

    :goto_d4
    invoke-virtual {v9, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1135
    const-string/jumbo v10, "permanentLockoutCrypto"

    .line 1136
    if-eqz v8, :cond_df

    iget v11, v8, Lcom/android/server/biometrics/BiometricServiceBase$PerformanceStats;->permanentLockout:I

    goto :goto_e0

    :cond_df
    move v11, v1

    .line 1135
    :goto_e0
    invoke-virtual {v9, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1137
    invoke-virtual {v2, v9}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 1138
    nop

    .end local v4  # "user":Landroid/content/pm/UserInfo;
    .end local v5  # "userId":I
    .end local v6  # "N":I
    .end local v7  # "stats":Lcom/android/server/biometrics/BiometricServiceBase$PerformanceStats;
    .end local v8  # "cryptoStats":Lcom/android/server/biometrics/BiometricServiceBase$PerformanceStats;
    .end local v9  # "set":Lorg/json/JSONObject;
    goto/16 :goto_23

    .line 1140
    :cond_e9
    const-string/jumbo v3, "prints"

    invoke-virtual {v0, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_ef
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_ef} :catch_f1

    .line 1143
    nop

    .end local v2  # "sets":Lorg/json/JSONArray;
    goto :goto_f9

    .line 1141
    :catch_f1
    move-exception v2

    .line 1142
    .local v2, "e":Lorg/json/JSONException;
    const-string v3, "FaceService"

    const-string v4, "dump formatting failure"

    invoke-static {v3, v4, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1144
    .end local v2  # "e":Lorg/json/JSONException;
    :goto_f9
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1145
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "HAL Deaths: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/biometrics/face/FaceService;->mHALDeathCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1146
    iput v1, p0, Lcom/android/server/biometrics/face/FaceService;->mHALDeathCount:I

    .line 1147
    return-void
.end method

.method private dumpProto(Ljava/io/FileDescriptor;)V
    .registers 18
    .param p1, "fd"  # Ljava/io/FileDescriptor;

    .line 1150
    move-object/from16 v0, p0

    new-instance v1, Landroid/util/proto/ProtoOutputStream;

    move-object/from16 v2, p1

    invoke-direct {v1, v2}, Landroid/util/proto/ProtoOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 1151
    .local v1, "proto":Landroid/util/proto/ProtoOutputStream;
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/biometrics/face/FaceService;->getContext()Landroid/content/Context;

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

    .line 1152
    .local v4, "user":Landroid/content/pm/UserInfo;
    invoke-virtual {v4}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v5

    .line 1154
    .local v5, "userId":I
    const-wide v6, 0x20b00000001L

    invoke-virtual {v1, v6, v7}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v6

    .line 1156
    .local v6, "userToken":J
    const-wide v8, 0x10500000001L

    invoke-virtual {v1, v8, v9, v5}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1157
    nop

    .line 1158
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/biometrics/face/FaceService;->getBiometricUtils()Lcom/android/server/biometrics/BiometricUtils;

    move-result-object v10

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/biometrics/face/FaceService;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-interface {v10, v11, v5}, Lcom/android/server/biometrics/BiometricUtils;->getBiometricsForUser(Landroid/content/Context;I)Ljava/util/List;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    .line 1157
    const-wide v11, 0x10500000002L

    invoke-virtual {v1, v11, v12, v10}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1161
    iget-object v10, v0, Lcom/android/server/biometrics/face/FaceService;->mPerformanceMap:Ljava/util/HashMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v10, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/biometrics/BiometricServiceBase$PerformanceStats;

    .line 1162
    .local v10, "normal":Lcom/android/server/biometrics/BiometricServiceBase$PerformanceStats;
    if-eqz v10, :cond_99

    .line 1163
    const-wide v13, 0x10b00000003L

    invoke-virtual {v1, v13, v14}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v13

    .line 1164
    .local v13, "countsToken":J
    iget v15, v10, Lcom/android/server/biometrics/BiometricServiceBase$PerformanceStats;->accept:I

    invoke-virtual {v1, v8, v9, v15}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1165
    iget v15, v10, Lcom/android/server/biometrics/BiometricServiceBase$PerformanceStats;->reject:I

    invoke-virtual {v1, v11, v12, v15}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1166
    iget v15, v10, Lcom/android/server/biometrics/BiometricServiceBase$PerformanceStats;->acquire:I

    const-wide v11, 0x10500000003L

    invoke-virtual {v1, v11, v12, v15}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1167
    iget v11, v10, Lcom/android/server/biometrics/BiometricServiceBase$PerformanceStats;->lockout:I

    const-wide v8, 0x10500000004L

    invoke-virtual {v1, v8, v9, v11}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1168
    iget v8, v10, Lcom/android/server/biometrics/BiometricServiceBase$PerformanceStats;->lockout:I

    const-wide v11, 0x10500000005L

    invoke-virtual {v1, v11, v12, v8}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1169
    invoke-virtual {v1, v13, v14}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 1174
    .end local v13  # "countsToken":J
    :cond_99
    iget-object v8, v0, Lcom/android/server/biometrics/face/FaceService;->mCryptoPerformanceMap:Ljava/util/HashMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/biometrics/BiometricServiceBase$PerformanceStats;

    .line 1175
    .local v8, "crypto":Lcom/android/server/biometrics/BiometricServiceBase$PerformanceStats;
    if-eqz v8, :cond_e5

    .line 1176
    const-wide v11, 0x10b00000004L

    invoke-virtual {v1, v11, v12}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v11

    .line 1177
    .local v11, "countsToken":J
    iget v9, v8, Lcom/android/server/biometrics/BiometricServiceBase$PerformanceStats;->accept:I

    const-wide v13, 0x10500000001L

    invoke-virtual {v1, v13, v14, v9}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1178
    iget v9, v8, Lcom/android/server/biometrics/BiometricServiceBase$PerformanceStats;->reject:I

    const-wide v13, 0x10500000002L

    invoke-virtual {v1, v13, v14, v9}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1179
    iget v9, v8, Lcom/android/server/biometrics/BiometricServiceBase$PerformanceStats;->acquire:I

    const-wide v13, 0x10500000003L

    invoke-virtual {v1, v13, v14, v9}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1180
    iget v9, v8, Lcom/android/server/biometrics/BiometricServiceBase$PerformanceStats;->lockout:I

    const-wide v13, 0x10500000004L

    invoke-virtual {v1, v13, v14, v9}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1181
    iget v9, v8, Lcom/android/server/biometrics/BiometricServiceBase$PerformanceStats;->lockout:I

    const-wide v13, 0x10500000005L

    invoke-virtual {v1, v13, v14, v9}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1182
    invoke-virtual {v1, v11, v12}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 1185
    .end local v11  # "countsToken":J
    :cond_e5
    invoke-virtual {v1, v6, v7}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 1186
    .end local v4  # "user":Landroid/content/pm/UserInfo;
    .end local v5  # "userId":I
    .end local v6  # "userToken":J
    .end local v8  # "crypto":Lcom/android/server/biometrics/BiometricServiceBase$PerformanceStats;
    .end local v10  # "normal":Lcom/android/server/biometrics/BiometricServiceBase$PerformanceStats;
    goto/16 :goto_19

    .line 1187
    :cond_ea
    invoke-virtual {v1}, Landroid/util/proto/ProtoOutputStream;->flush()V

    .line 1188
    iget-object v3, v0, Lcom/android/server/biometrics/face/FaceService;->mPerformanceMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    .line 1189
    iget-object v3, v0, Lcom/android/server/biometrics/face/FaceService;->mCryptoPerformanceMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    .line 1190
    return-void
.end method

.method private declared-synchronized getFaceDaemon()Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;
    .registers 8

    monitor-enter p0

    .line 1045
    :try_start_1
    iget-object v0, p0, Lcom/android/server/biometrics/face/FaceService;->mDaemon:Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;

    if-nez v0, :cond_92

    .line 1046
    const-string v0, "FaceService"

    const-string/jumbo v1, "mDaemon was null, reconnect to face"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_96

    .line 1048
    :try_start_d
    invoke-static {}, Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;->getService()Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/biometrics/face/FaceService;->mDaemon:Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;
    :try_end_13
    .catch Ljava/util/NoSuchElementException; {:try_start_d .. :try_end_13} :catch_1d
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_13} :catch_14
    .catchall {:try_start_d .. :try_end_13} :catchall_96

    .line 1053
    goto :goto_1f

    .line 1051
    .end local p0  # "this":Lcom/android/server/biometrics/face/FaceService;
    :catch_14
    move-exception v0

    .line 1052
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_15
    const-string v1, "FaceService"

    const-string v2, "Failed to get biometric interface"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1f

    .line 1049
    .end local v0  # "e":Landroid/os/RemoteException;
    :catch_1d
    move-exception v0

    .line 1053
    nop

    .line 1054
    :goto_1f
    iget-object v0, p0, Lcom/android/server/biometrics/face/FaceService;->mDaemon:Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;

    const/4 v1, 0x0

    if-nez v0, :cond_2d

    .line 1055
    const-string v0, "FaceService"

    const-string v2, "face HIDL not available"

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2b
    .catchall {:try_start_15 .. :try_end_2b} :catchall_96

    .line 1056
    monitor-exit p0

    return-object v1

    .line 1059
    :cond_2d
    :try_start_2d
    iget-object v0, p0, Lcom/android/server/biometrics/face/FaceService;->mDaemon:Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;

    invoke-interface {v0}, Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;->asBinder()Landroid/os/IHwBinder;

    move-result-object v0

    const-wide/16 v2, 0x0

    invoke-interface {v0, p0, v2, v3}, Landroid/os/IHwBinder;->linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
    :try_end_38
    .catchall {:try_start_2d .. :try_end_38} :catchall_96

    .line 1062
    :try_start_38
    iget-object v0, p0, Lcom/android/server/biometrics/face/FaceService;->mDaemon:Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;

    iget-object v4, p0, Lcom/android/server/biometrics/face/FaceService;->mDaemonCallback:Landroid/hardware/biometrics/face/V1_0/IBiometricsFaceClientCallback;

    invoke-interface {v0, v4}, Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;->setCallback(Landroid/hardware/biometrics/face/V1_0/IBiometricsFaceClientCallback;)Landroid/hardware/biometrics/face/V1_0/OptionalUint64;

    move-result-object v0

    iget-wide v4, v0, Landroid/hardware/biometrics/face/V1_0/OptionalUint64;->value:J

    iput-wide v4, p0, Lcom/android/server/biometrics/face/FaceService;->mHalDeviceId:J
    :try_end_44
    .catch Landroid/os/RemoteException; {:try_start_38 .. :try_end_44} :catch_45
    .catchall {:try_start_38 .. :try_end_44} :catchall_96

    .line 1066
    goto :goto_4f

    .line 1063
    :catch_45
    move-exception v0

    .line 1064
    .restart local v0  # "e":Landroid/os/RemoteException;
    :try_start_46
    const-string v4, "FaceService"

    const-string v5, "Failed to open face HAL"

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1065
    iput-object v1, p0, Lcom/android/server/biometrics/face/FaceService;->mDaemon:Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;

    .line 1068
    .end local v0  # "e":Landroid/os/RemoteException;
    :goto_4f
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

    .line 1069
    iget-wide v4, p0, Lcom/android/server/biometrics/face/FaceService;->mHalDeviceId:J

    cmp-long v0, v4, v2

    if-eqz v0, :cond_7f

    .line 1070
    invoke-virtual {p0}, Lcom/android/server/biometrics/face/FaceService;->loadAuthenticatorIds()V

    .line 1071
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    invoke-virtual {p0, v0, v1}, Lcom/android/server/biometrics/face/FaceService;->updateActiveGroup(ILjava/lang/String;)V

    .line 1072
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/biometrics/face/FaceService;->doTemplateCleanupForUser(I)V

    goto :goto_92

    .line 1074
    :cond_7f
    const-string v0, "FaceService"

    const-string v2, "Failed to open Face HAL!"

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1075
    invoke-virtual {p0}, Lcom/android/server/biometrics/face/FaceService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "faced_openhal_error"

    const/4 v3, 0x1

    invoke-static {v0, v2, v3}, Lcom/android/internal/logging/MetricsLogger;->count(Landroid/content/Context;Ljava/lang/String;I)V

    .line 1076
    iput-object v1, p0, Lcom/android/server/biometrics/face/FaceService;->mDaemon:Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;

    .line 1079
    :cond_92
    :goto_92
    iget-object v0, p0, Lcom/android/server/biometrics/face/FaceService;->mDaemon:Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;
    :try_end_94
    .catchall {:try_start_46 .. :try_end_94} :catchall_96

    monitor-exit p0

    return-object v0

    .line 1044
    :catchall_96
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
    .registers 8
    .param p1, "token"  # Landroid/os/IBinder;

    .line 1083
    invoke-direct {p0}, Lcom/android/server/biometrics/face/FaceService;->getFaceDaemon()Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;

    move-result-object v0

    .line 1084
    .local v0, "daemon":Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;
    const-wide/16 v1, 0x0

    const-string v3, "FaceService"

    if-nez v0, :cond_11

    .line 1085
    const-string/jumbo v4, "startGenerateChallenge: no face HAL!"

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1086
    return-wide v1

    .line 1089
    :cond_11
    const/16 v4, 0x258

    :try_start_13
    invoke-interface {v0, v4}, Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;->generateChallenge(I)Landroid/hardware/biometrics/face/V1_0/OptionalUint64;

    move-result-object v4

    iget-wide v1, v4, Landroid/hardware/biometrics/face/V1_0/OptionalUint64;->value:J
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_13 .. :try_end_19} :catch_1a

    return-wide v1

    .line 1090
    :catch_1a
    move-exception v4

    .line 1091
    .local v4, "e":Landroid/os/RemoteException;
    const-string/jumbo v5, "startGenerateChallenge failed"

    invoke-static {v3, v5, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1093
    .end local v4  # "e":Landroid/os/RemoteException;
    return-wide v1
.end method

.method private startRevokeChallenge(Landroid/os/IBinder;)I
    .registers 7
    .param p1, "token"  # Landroid/os/IBinder;

    .line 1097
    invoke-direct {p0}, Lcom/android/server/biometrics/face/FaceService;->getFaceDaemon()Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;

    move-result-object v0

    .line 1098
    .local v0, "daemon":Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;
    const/4 v1, 0x0

    const-string v2, "FaceService"

    if-nez v0, :cond_10

    .line 1099
    const-string/jumbo v3, "startRevokeChallenge: no face HAL!"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1100
    return v1

    .line 1103
    :cond_10
    :try_start_10
    invoke-interface {v0}, Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;->revokeChallenge()I

    move-result v1
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_14} :catch_15

    return v1

    .line 1104
    :catch_15
    move-exception v3

    .line 1105
    .local v3, "e":Landroid/os/RemoteException;
    const-string/jumbo v4, "startRevokeChallenge failed"

    invoke-static {v2, v4, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1107
    .end local v3  # "e":Landroid/os/RemoteException;
    return v1
.end method


# virtual methods
.method protected checkAppOps(ILjava/lang/String;)Z
    .registers 5
    .param p1, "uid"  # I
    .param p2, "opPackageName"  # Ljava/lang/String;

    .line 1019
    iget-object v0, p0, Lcom/android/server/biometrics/face/FaceService;->mAppOps:Landroid/app/AppOpsManager;

    const/16 v1, 0x4e

    invoke-virtual {v0, v1, p1, p2}, Landroid/app/AppOpsManager;->noteOp(IILjava/lang/String;)I

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method protected checkUseBiometricPermission()V
    .registers 1

    .line 1015
    return-void
.end method

.method protected getBiometricUtils()Lcom/android/server/biometrics/BiometricUtils;
    .registers 2

    .line 914
    invoke-static {}, Lcom/android/server/biometrics/face/FaceUtils;->getInstance()Lcom/android/server/biometrics/face/FaceUtils;

    move-result-object v0

    return-object v0
.end method

.method protected getConstants()Lcom/android/server/biometrics/Constants;
    .registers 2

    .line 919
    iget-object v0, p0, Lcom/android/server/biometrics/face/FaceService;->mFaceConstants:Lcom/android/server/biometrics/face/FaceConstants;

    return-object v0
.end method

.method protected getDaemonWrapper()Lcom/android/server/biometrics/BiometricServiceBase$DaemonWrapper;
    .registers 2

    .line 909
    iget-object v0, p0, Lcom/android/server/biometrics/face/FaceService;->mDaemonWrapper:Lcom/android/server/biometrics/BiometricServiceBase$DaemonWrapper;

    return-object v0
.end method

.method protected getEnrolledTemplates(I)Ljava/util/List;
    .registers 4
    .param p1, "userId"  # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/hardware/face/Face;",
            ">;"
        }
    .end annotation

    .line 1025
    invoke-virtual {p0}, Lcom/android/server/biometrics/face/FaceService;->getBiometricUtils()Lcom/android/server/biometrics/BiometricUtils;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/server/biometrics/face/FaceService;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lcom/android/server/biometrics/BiometricUtils;->getBiometricsForUser(Landroid/content/Context;I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected getHalDeviceId()J
    .registers 3

    .line 989
    iget-wide v0, p0, Lcom/android/server/biometrics/face/FaceService;->mHalDeviceId:J

    return-wide v0
.end method

.method protected getLockoutBroadcastPermission()Ljava/lang/String;
    .registers 2

    .line 984
    const-string v0, "android.permission.RESET_FACE_LOCKOUT"

    return-object v0
.end method

.method protected getLockoutMode()I
    .registers 2

    .line 1040
    iget v0, p0, Lcom/android/server/biometrics/face/FaceService;->mCurrentUserLockoutMode:I

    return v0
.end method

.method protected getLockoutResetIntent()Ljava/lang/String;
    .registers 2

    .line 979
    const-string v0, "com.android.server.biometrics.face.ACTION_LOCKOUT_RESET"

    return-object v0
.end method

.method protected getManageBiometricPermission()Ljava/lang/String;
    .registers 2

    .line 1009
    const-string v0, "android.permission.MANAGE_BIOMETRIC"

    return-object v0
.end method

.method public getTag()Ljava/lang/String;
    .registers 2

    .line 904
    const-string v0, "FaceService"

    return-object v0
.end method

.method protected handleUserSwitching(I)V
    .registers 3
    .param p1, "userId"  # I

    .line 994
    invoke-super {p0, p1}, Lcom/android/server/biometrics/BiometricServiceBase;->handleUserSwitching(I)V

    .line 996
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/biometrics/face/FaceService;->mCurrentUserLockoutMode:I

    .line 997
    return-void
.end method

.method protected hasEnrolledBiometrics(I)Z
    .registers 4
    .param p1, "userId"  # I

    .line 1001
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    if-eq p1, v0, :cond_b

    .line 1002
    const-string v0, "android.permission.INTERACT_ACROSS_USERS"

    invoke-virtual {p0, v0}, Lcom/android/server/biometrics/face/FaceService;->checkPermission(Ljava/lang/String;)V

    .line 1004
    :cond_b
    invoke-virtual {p0}, Lcom/android/server/biometrics/face/FaceService;->getBiometricUtils()Lcom/android/server/biometrics/BiometricUtils;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/server/biometrics/face/FaceService;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lcom/android/server/biometrics/BiometricUtils;->getBiometricsForUser(Landroid/content/Context;I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1f

    const/4 v0, 0x1

    goto :goto_20

    :cond_1f
    const/4 v0, 0x0

    :goto_20
    return v0
.end method

.method protected hasReachedEnrollmentLimit(I)Z
    .registers 6
    .param p1, "userId"  # I

    .line 924
    invoke-virtual {p0}, Lcom/android/server/biometrics/face/FaceService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e005b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 926
    .local v0, "limit":I
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/face/FaceService;->getEnrolledTemplates(I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .line 927
    .local v1, "enrolled":I
    if-lt v1, v0, :cond_31

    .line 928
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Too many faces registered, user: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "FaceService"

    invoke-static {v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 929
    const/4 v2, 0x1

    return v2

    .line 931
    :cond_31
    const/4 v2, 0x0

    return v2
.end method

.method protected notifyClientActiveCallbacks(Z)V
    .registers 2
    .param p1, "isActive"  # Z

    .line 1031
    return-void
.end method

.method public onStart()V
    .registers 4

    .line 897
    invoke-super {p0}, Lcom/android/server/biometrics/BiometricServiceBase;->onStart()V

    .line 898
    new-instance v0, Lcom/android/server/biometrics/face/FaceService$FaceServiceWrapper;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/biometrics/face/FaceService$FaceServiceWrapper;-><init>(Lcom/android/server/biometrics/face/FaceService;Lcom/android/server/biometrics/face/FaceService$1;)V

    const-string v1, "face"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/biometrics/face/FaceService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 899
    invoke-static {}, Lcom/android/server/SystemServerInitThreadPool;->get()Lcom/android/server/SystemServerInitThreadPool;

    move-result-object v0

    new-instance v1, Lcom/android/server/biometrics/face/-$$Lambda$FaceService$rveb67MoYJ0egfY6LL-l05KvUz8;

    invoke-direct {v1, p0}, Lcom/android/server/biometrics/face/-$$Lambda$FaceService$rveb67MoYJ0egfY6LL-l05KvUz8;-><init>(Lcom/android/server/biometrics/face/FaceService;)V

    const-string v2, "FaceService.onStart"

    invoke-virtual {v0, v1, v2}, Lcom/android/server/SystemServerInitThreadPool;->submit(Ljava/lang/Runnable;Ljava/lang/String;)Ljava/util/concurrent/Future;

    .line 900
    return-void
.end method

.method public serviceDied(J)V
    .registers 4
    .param p1, "cookie"  # J

    .line 936
    invoke-super {p0, p1, p2}, Lcom/android/server/biometrics/BiometricServiceBase;->serviceDied(J)V

    .line 937
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/biometrics/face/FaceService;->mDaemon:Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;

    .line 939
    const/16 v0, -0x2710

    iput v0, p0, Lcom/android/server/biometrics/face/FaceService;->mCurrentUserId:I

    .line 940
    return-void
.end method

.method protected statsModality()I
    .registers 2

    .line 1035
    const/4 v0, 0x4

    return v0
.end method

.method protected updateActiveGroup(ILjava/lang/String;)V
    .registers 9
    .param p1, "userId"  # I
    .param p2, "clientPackage"  # Ljava/lang/String;

    .line 944
    const-string v0, "FaceService"

    invoke-direct {p0}, Lcom/android/server/biometrics/face/FaceService;->getFaceDaemon()Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;

    move-result-object v1

    .line 946
    .local v1, "daemon":Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;
    if-eqz v1, :cond_79

    .line 948
    :try_start_8
    invoke-virtual {p0, p2, p1}, Lcom/android/server/biometrics/face/FaceService;->getUserOrWorkProfileId(Ljava/lang/String;I)I

    move-result v2

    move p1, v2

    .line 949
    iget v2, p0, Lcom/android/server/biometrics/face/FaceService;->mCurrentUserId:I

    if-eq p1, v2, :cond_56

    .line 950
    invoke-static {p1}, Landroid/os/Environment;->getDataVendorDeDirectory(I)Ljava/io/File;

    move-result-object v2

    .line 951
    .local v2, "baseDir":Ljava/io/File;
    new-instance v3, Ljava/io/File;

    const-string v4, "facedata"

    invoke-direct {v3, v2, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 952
    .local v3, "faceDir":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_4d

    .line 953
    invoke-virtual {v3}, Ljava/io/File;->mkdir()Z

    move-result v4

    if-nez v4, :cond_41

    .line 954
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Cannot make directory: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 955
    return-void

    .line 960
    :cond_41
    invoke-static {v3}, Landroid/os/SELinux;->restorecon(Ljava/io/File;)Z

    move-result v4

    if-nez v4, :cond_4d

    .line 961
    const-string v4, "Restorecons failed. Directory will have wrong label."

    invoke-static {v0, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 962
    return-void

    .line 966
    :cond_4d
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, p1, v4}, Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;->setActiveUser(ILjava/lang/String;)I

    .line 967
    iput p1, p0, Lcom/android/server/biometrics/face/FaceService;->mCurrentUserId:I

    .line 969
    .end local v2  # "baseDir":Ljava/io/File;
    .end local v3  # "faceDir":Ljava/io/File;
    :cond_56
    iget-object v2, p0, Lcom/android/server/biometrics/face/FaceService;->mAuthenticatorIds:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 970
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/face/FaceService;->hasEnrolledBiometrics(I)Z

    move-result v4

    if-eqz v4, :cond_69

    invoke-interface {v1}, Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;->getAuthenticatorId()Landroid/hardware/biometrics/face/V1_0/OptionalUint64;

    move-result-object v4

    iget-wide v4, v4, Landroid/hardware/biometrics/face/V1_0/OptionalUint64;->value:J

    goto :goto_6b

    :cond_69
    const-wide/16 v4, 0x0

    :goto_6b
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    .line 969
    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_72
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_72} :catch_73

    .line 973
    goto :goto_79

    .line 971
    :catch_73
    move-exception v2

    .line 972
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "Failed to setActiveUser():"

    invoke-static {v0, v3, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 975
    .end local v2  # "e":Landroid/os/RemoteException;
    :cond_79
    :goto_79
    return-void
.end method
