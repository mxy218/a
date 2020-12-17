.class public Lcom/flyme/systemui/facerecognition/KeyguardFaceRecognitionImpl;
.super Ljava/lang/Object;
.source "KeyguardFaceRecognitionImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/flyme/systemui/facerecognition/KeyguardFaceRecognitionImpl$StartCameraPreviewCallback;
    }
.end annotation


# static fields
.field private static mFaceRecognitionImpl:Lcom/flyme/systemui/facerecognition/KeyguardFaceRecognitionImpl;


# instance fields
.field private compareCDRunnable:Ljava/lang/Runnable;

.field private mAuthenticationCallback:Lcom/meizu/facerecognition/manager/FlymeFaceRecognitionManager$AuthenticationCallback;

.field private mCancellationSignal:Landroid/os/CancellationSignal;

.field private mCompareCD:Z

.field private mCompareTimes:I

.field private mContext:Landroid/content/Context;

.field private mCreateTimes:I

.field private mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

.field private mFaceServiceDead:Z

.field private mFlymeFaceRecognitionManager:Lcom/meizu/facerecognition/manager/FlymeFaceRecognitionManager;

.field protected mHandler:Landroid/os/Handler;

.field private final mLockoutResetCallback:Lcom/meizu/facerecognition/manager/FlymeFaceRecognitionManager$LockoutResetCallback;

.field private mRecongnizeFailTime:I

.field private mService:Lcom/meizu/facerecognition/manager/IFaceRecognitionManagerService;

.field private mStartCameraPreviewCallback:Lcom/flyme/systemui/facerecognition/KeyguardFaceRecognitionImpl$StartCameraPreviewCallback;

.field private mUserId:I

.field private mWarmUpHardwareDeviceCallback:Lcom/meizu/facerecognition/manager/FlymeFaceRecognitionManager$WarmUpHardwareDeviceCallback;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILandroid/os/Handler;)V
    .registers 5

    .line 181
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    iput v0, p0, Lcom/flyme/systemui/facerecognition/KeyguardFaceRecognitionImpl;->mUserId:I

    const/4 v0, 0x0

    .line 47
    iput v0, p0, Lcom/flyme/systemui/facerecognition/KeyguardFaceRecognitionImpl;->mRecongnizeFailTime:I

    .line 48
    iput v0, p0, Lcom/flyme/systemui/facerecognition/KeyguardFaceRecognitionImpl;->mCompareTimes:I

    .line 49
    iput-boolean v0, p0, Lcom/flyme/systemui/facerecognition/KeyguardFaceRecognitionImpl;->mCompareCD:Z

    .line 52
    iput v0, p0, Lcom/flyme/systemui/facerecognition/KeyguardFaceRecognitionImpl;->mCreateTimes:I

    .line 55
    new-instance v0, Lcom/flyme/systemui/facerecognition/KeyguardFaceRecognitionImpl$1;

    invoke-direct {v0, p0}, Lcom/flyme/systemui/facerecognition/KeyguardFaceRecognitionImpl$1;-><init>(Lcom/flyme/systemui/facerecognition/KeyguardFaceRecognitionImpl;)V

    iput-object v0, p0, Lcom/flyme/systemui/facerecognition/KeyguardFaceRecognitionImpl;->compareCDRunnable:Ljava/lang/Runnable;

    .line 62
    new-instance v0, Lcom/flyme/systemui/facerecognition/KeyguardFaceRecognitionImpl$2;

    invoke-direct {v0, p0}, Lcom/flyme/systemui/facerecognition/KeyguardFaceRecognitionImpl$2;-><init>(Lcom/flyme/systemui/facerecognition/KeyguardFaceRecognitionImpl;)V

    iput-object v0, p0, Lcom/flyme/systemui/facerecognition/KeyguardFaceRecognitionImpl;->mAuthenticationCallback:Lcom/meizu/facerecognition/manager/FlymeFaceRecognitionManager$AuthenticationCallback;

    .line 143
    new-instance v0, Lcom/flyme/systemui/facerecognition/KeyguardFaceRecognitionImpl$3;

    invoke-direct {v0, p0}, Lcom/flyme/systemui/facerecognition/KeyguardFaceRecognitionImpl$3;-><init>(Lcom/flyme/systemui/facerecognition/KeyguardFaceRecognitionImpl;)V

    iput-object v0, p0, Lcom/flyme/systemui/facerecognition/KeyguardFaceRecognitionImpl;->mLockoutResetCallback:Lcom/meizu/facerecognition/manager/FlymeFaceRecognitionManager$LockoutResetCallback;

    .line 152
    new-instance v0, Lcom/flyme/systemui/facerecognition/KeyguardFaceRecognitionImpl$4;

    invoke-direct {v0, p0}, Lcom/flyme/systemui/facerecognition/KeyguardFaceRecognitionImpl$4;-><init>(Lcom/flyme/systemui/facerecognition/KeyguardFaceRecognitionImpl;)V

    iput-object v0, p0, Lcom/flyme/systemui/facerecognition/KeyguardFaceRecognitionImpl;->mWarmUpHardwareDeviceCallback:Lcom/meizu/facerecognition/manager/FlymeFaceRecognitionManager$WarmUpHardwareDeviceCallback;

    .line 334
    new-instance v0, Lcom/flyme/systemui/facerecognition/KeyguardFaceRecognitionImpl$10;

    invoke-direct {v0, p0}, Lcom/flyme/systemui/facerecognition/KeyguardFaceRecognitionImpl$10;-><init>(Lcom/flyme/systemui/facerecognition/KeyguardFaceRecognitionImpl;)V

    iput-object v0, p0, Lcom/flyme/systemui/facerecognition/KeyguardFaceRecognitionImpl;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    .line 182
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/flyme/systemui/facerecognition/KeyguardFaceRecognitionImpl;->mContext:Landroid/content/Context;

    .line 183
    iput p2, p0, Lcom/flyme/systemui/facerecognition/KeyguardFaceRecognitionImpl;->mUserId:I

    .line 184
    iput-object p3, p0, Lcom/flyme/systemui/facerecognition/KeyguardFaceRecognitionImpl;->mHandler:Landroid/os/Handler;

    const/4 p1, 0x0

    .line 185
    invoke-direct {p0, p1}, Lcom/flyme/systemui/facerecognition/KeyguardFaceRecognitionImpl;->createFlymeFaceRecognitionManager(Ljava/lang/Runnable;)V

    const-string p0, "KeyguardFaceRecognitionImpl"

    const-string p1, "KeyguardFaceRecognitionImpl: onCreate! "

    .line 186
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method static synthetic access$000(Lcom/flyme/systemui/facerecognition/KeyguardFaceRecognitionImpl;)Z
    .registers 1

    .line 30
    iget-boolean p0, p0, Lcom/flyme/systemui/facerecognition/KeyguardFaceRecognitionImpl;->mCompareCD:Z

    return p0
.end method

.method static synthetic access$002(Lcom/flyme/systemui/facerecognition/KeyguardFaceRecognitionImpl;Z)Z
    .registers 2

    .line 30
    iput-boolean p1, p0, Lcom/flyme/systemui/facerecognition/KeyguardFaceRecognitionImpl;->mCompareCD:Z

    return p1
.end method

.method static synthetic access$100(Lcom/flyme/systemui/facerecognition/KeyguardFaceRecognitionImpl;)I
    .registers 1

    .line 30
    iget p0, p0, Lcom/flyme/systemui/facerecognition/KeyguardFaceRecognitionImpl;->mRecongnizeFailTime:I

    return p0
.end method

.method static synthetic access$1002(Lcom/flyme/systemui/facerecognition/KeyguardFaceRecognitionImpl;Z)Z
    .registers 2

    .line 30
    iput-boolean p1, p0, Lcom/flyme/systemui/facerecognition/KeyguardFaceRecognitionImpl;->mFaceServiceDead:Z

    return p1
.end method

.method static synthetic access$102(Lcom/flyme/systemui/facerecognition/KeyguardFaceRecognitionImpl;I)I
    .registers 2

    .line 30
    iput p1, p0, Lcom/flyme/systemui/facerecognition/KeyguardFaceRecognitionImpl;->mRecongnizeFailTime:I

    return p1
.end method

.method static synthetic access$108(Lcom/flyme/systemui/facerecognition/KeyguardFaceRecognitionImpl;)I
    .registers 3

    .line 30
    iget v0, p0, Lcom/flyme/systemui/facerecognition/KeyguardFaceRecognitionImpl;->mRecongnizeFailTime:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/flyme/systemui/facerecognition/KeyguardFaceRecognitionImpl;->mRecongnizeFailTime:I

    return v0
.end method

.method static synthetic access$1102(Lcom/flyme/systemui/facerecognition/KeyguardFaceRecognitionImpl;I)I
    .registers 2

    .line 30
    iput p1, p0, Lcom/flyme/systemui/facerecognition/KeyguardFaceRecognitionImpl;->mCreateTimes:I

    return p1
.end method

.method static synthetic access$200(Lcom/flyme/systemui/facerecognition/KeyguardFaceRecognitionImpl;)Lcom/flyme/systemui/facerecognition/KeyguardFaceRecognitionImpl$StartCameraPreviewCallback;
    .registers 1

    .line 30
    iget-object p0, p0, Lcom/flyme/systemui/facerecognition/KeyguardFaceRecognitionImpl;->mStartCameraPreviewCallback:Lcom/flyme/systemui/facerecognition/KeyguardFaceRecognitionImpl$StartCameraPreviewCallback;

    return-object p0
.end method

.method static synthetic access$300(Lcom/flyme/systemui/facerecognition/KeyguardFaceRecognitionImpl;)Ljava/lang/Runnable;
    .registers 1

    .line 30
    iget-object p0, p0, Lcom/flyme/systemui/facerecognition/KeyguardFaceRecognitionImpl;->compareCDRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$400(Lcom/flyme/systemui/facerecognition/KeyguardFaceRecognitionImpl;)Landroid/content/Context;
    .registers 1

    .line 30
    iget-object p0, p0, Lcom/flyme/systemui/facerecognition/KeyguardFaceRecognitionImpl;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$500(Lcom/flyme/systemui/facerecognition/KeyguardFaceRecognitionImpl;)Lcom/meizu/facerecognition/manager/FlymeFaceRecognitionManager$WarmUpHardwareDeviceCallback;
    .registers 1

    .line 30
    iget-object p0, p0, Lcom/flyme/systemui/facerecognition/KeyguardFaceRecognitionImpl;->mWarmUpHardwareDeviceCallback:Lcom/meizu/facerecognition/manager/FlymeFaceRecognitionManager$WarmUpHardwareDeviceCallback;

    return-object p0
.end method

.method static synthetic access$600(Lcom/flyme/systemui/facerecognition/KeyguardFaceRecognitionImpl;)Lcom/meizu/facerecognition/manager/FlymeFaceRecognitionManager;
    .registers 1

    .line 30
    iget-object p0, p0, Lcom/flyme/systemui/facerecognition/KeyguardFaceRecognitionImpl;->mFlymeFaceRecognitionManager:Lcom/meizu/facerecognition/manager/FlymeFaceRecognitionManager;

    return-object p0
.end method

.method static synthetic access$700(Lcom/flyme/systemui/facerecognition/KeyguardFaceRecognitionImpl;)Landroid/os/CancellationSignal;
    .registers 1

    .line 30
    iget-object p0, p0, Lcom/flyme/systemui/facerecognition/KeyguardFaceRecognitionImpl;->mCancellationSignal:Landroid/os/CancellationSignal;

    return-object p0
.end method

.method static synthetic access$800(Lcom/flyme/systemui/facerecognition/KeyguardFaceRecognitionImpl;)Lcom/meizu/facerecognition/manager/FlymeFaceRecognitionManager$AuthenticationCallback;
    .registers 1

    .line 30
    iget-object p0, p0, Lcom/flyme/systemui/facerecognition/KeyguardFaceRecognitionImpl;->mAuthenticationCallback:Lcom/meizu/facerecognition/manager/FlymeFaceRecognitionManager$AuthenticationCallback;

    return-object p0
.end method

.method static synthetic access$900(Lcom/flyme/systemui/facerecognition/KeyguardFaceRecognitionImpl;Ljava/lang/Runnable;)V
    .registers 2

    .line 30
    invoke-direct {p0, p1}, Lcom/flyme/systemui/facerecognition/KeyguardFaceRecognitionImpl;->createFlymeFaceRecognitionManager(Ljava/lang/Runnable;)V

    return-void
.end method

.method private createFlymeFaceRecognitionManager(Ljava/lang/Runnable;)V
    .registers 6

    .line 294
    iget v0, p0, Lcom/flyme/systemui/facerecognition/KeyguardFaceRecognitionImpl;->mCreateTimes:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/flyme/systemui/facerecognition/KeyguardFaceRecognitionImpl;->mCreateTimes:I

    const-string v0, "face_recognition_server"

    .line 295
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    const-string v1, "KeyguardFaceRecognitionImpl"

    if-eqz v0, :cond_6f

    const/4 v2, 0x0

    .line 298
    :try_start_11
    iput v2, p0, Lcom/flyme/systemui/facerecognition/KeyguardFaceRecognitionImpl;->mCreateTimes:I

    .line 299
    iget-object v3, p0, Lcom/flyme/systemui/facerecognition/KeyguardFaceRecognitionImpl;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    invoke-interface {v0, v3, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 300
    invoke-static {v0}, Lcom/meizu/facerecognition/manager/IFaceRecognitionManagerService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/meizu/facerecognition/manager/IFaceRecognitionManagerService;

    move-result-object v0

    iput-object v0, p0, Lcom/flyme/systemui/facerecognition/KeyguardFaceRecognitionImpl;->mService:Lcom/meizu/facerecognition/manager/IFaceRecognitionManagerService;

    .line 301
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mService "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/flyme/systemui/facerecognition/KeyguardFaceRecognitionImpl;->mService:Lcom/meizu/facerecognition/manager/IFaceRecognitionManagerService;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    new-instance v0, Lcom/meizu/facerecognition/manager/FlymeFaceRecognitionManager;

    iget-object v1, p0, Lcom/flyme/systemui/facerecognition/KeyguardFaceRecognitionImpl;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/flyme/systemui/facerecognition/KeyguardFaceRecognitionImpl;->mService:Lcom/meizu/facerecognition/manager/IFaceRecognitionManagerService;

    invoke-direct {v0, v1, v3}, Lcom/meizu/facerecognition/manager/FlymeFaceRecognitionManager;-><init>(Landroid/content/Context;Lcom/meizu/facerecognition/manager/IFaceRecognitionManagerService;)V

    iput-object v0, p0, Lcom/flyme/systemui/facerecognition/KeyguardFaceRecognitionImpl;->mFlymeFaceRecognitionManager:Lcom/meizu/facerecognition/manager/FlymeFaceRecognitionManager;

    .line 303
    iget-object v0, p0, Lcom/flyme/systemui/facerecognition/KeyguardFaceRecognitionImpl;->mService:Lcom/meizu/facerecognition/manager/IFaceRecognitionManagerService;

    if-eqz v0, :cond_4a

    .line 304
    iget-object v0, p0, Lcom/flyme/systemui/facerecognition/KeyguardFaceRecognitionImpl;->mFlymeFaceRecognitionManager:Lcom/meizu/facerecognition/manager/FlymeFaceRecognitionManager;

    iget-object v1, p0, Lcom/flyme/systemui/facerecognition/KeyguardFaceRecognitionImpl;->mLockoutResetCallback:Lcom/meizu/facerecognition/manager/FlymeFaceRecognitionManager$LockoutResetCallback;

    invoke-virtual {v0, v1}, Lcom/meizu/facerecognition/manager/FlymeFaceRecognitionManager;->addLockoutResetCallback(Lcom/meizu/facerecognition/manager/FlymeFaceRecognitionManager$LockoutResetCallback;)V

    .line 306
    :cond_4a
    iget-boolean v0, p0, Lcom/flyme/systemui/facerecognition/KeyguardFaceRecognitionImpl;->mFaceServiceDead:Z

    if-eqz v0, :cond_64

    .line 307
    iput-boolean v2, p0, Lcom/flyme/systemui/facerecognition/KeyguardFaceRecognitionImpl;->mFaceServiceDead:Z

    .line 309
    iget-object p0, p0, Lcom/flyme/systemui/facerecognition/KeyguardFaceRecognitionImpl;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/flyme/systemui/facerecognition/FaceRecognitionController;->getInstance(Landroid/content/Context;)Lcom/flyme/systemui/facerecognition/FaceRecognitionController;

    move-result-object p0

    if-eqz p0, :cond_64

    .line 310
    invoke-virtual {p0}, Lcom/flyme/systemui/facerecognition/FaceRecognitionController;->isCameraPreviewStarting()Z

    move-result v0

    if-eqz v0, :cond_64

    .line 311
    invoke-virtual {p0}, Lcom/flyme/systemui/facerecognition/FaceRecognitionController;->postToStopCamera()V

    .line 312
    invoke-virtual {p0}, Lcom/flyme/systemui/facerecognition/FaceRecognitionController;->postToStartCamera()V

    :cond_64
    if-eqz p1, :cond_97

    .line 316
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V
    :try_end_69
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_69} :catch_6a

    goto :goto_97

    :catch_6a
    move-exception p0

    .line 319
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_97

    .line 322
    :cond_6f
    iget v0, p0, Lcom/flyme/systemui/facerecognition/KeyguardFaceRecognitionImpl;->mCreateTimes:I

    const/16 v2, 0xa

    if-gt v0, v2, :cond_97

    .line 323
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "face_recognition_server is null "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/flyme/systemui/facerecognition/KeyguardFaceRecognitionImpl;->mCreateTimes:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    iget-object v0, p0, Lcom/flyme/systemui/facerecognition/KeyguardFaceRecognitionImpl;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/flyme/systemui/facerecognition/KeyguardFaceRecognitionImpl$9;

    invoke-direct {v1, p0, p1}, Lcom/flyme/systemui/facerecognition/KeyguardFaceRecognitionImpl$9;-><init>(Lcom/flyme/systemui/facerecognition/KeyguardFaceRecognitionImpl;Ljava/lang/Runnable;)V

    const-wide/16 p0, 0x96

    invoke-virtual {v0, v1, p0, p1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_97
    :goto_97
    return-void
.end method

.method public static getInstance(Landroid/content/Context;ILandroid/os/Handler;)Lcom/flyme/systemui/facerecognition/KeyguardFaceRecognitionImpl;
    .registers 4

    .line 170
    sget-object v0, Lcom/flyme/systemui/facerecognition/KeyguardFaceRecognitionImpl;->mFaceRecognitionImpl:Lcom/flyme/systemui/facerecognition/KeyguardFaceRecognitionImpl;

    if-nez v0, :cond_b

    .line 171
    new-instance v0, Lcom/flyme/systemui/facerecognition/KeyguardFaceRecognitionImpl;

    invoke-direct {v0, p0, p1, p2}, Lcom/flyme/systemui/facerecognition/KeyguardFaceRecognitionImpl;-><init>(Landroid/content/Context;ILandroid/os/Handler;)V

    sput-object v0, Lcom/flyme/systemui/facerecognition/KeyguardFaceRecognitionImpl;->mFaceRecognitionImpl:Lcom/flyme/systemui/facerecognition/KeyguardFaceRecognitionImpl;

    .line 174
    :cond_b
    sget-object p0, Lcom/flyme/systemui/facerecognition/KeyguardFaceRecognitionImpl;->mFaceRecognitionImpl:Lcom/flyme/systemui/facerecognition/KeyguardFaceRecognitionImpl;

    return-object p0
.end method


# virtual methods
.method public closeHardwareDevice()V
    .registers 3

    const-string v0, "KeyguardFaceRecognitionImpl"

    const-string v1, "KeyguardFaceRecognitionImpl: closeHardwareDevice! "

    .line 257
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 258
    iput-boolean v0, p0, Lcom/flyme/systemui/facerecognition/KeyguardFaceRecognitionImpl;->mCompareCD:Z

    .line 259
    iget-boolean v0, p0, Lcom/flyme/systemui/facerecognition/KeyguardFaceRecognitionImpl;->mFaceServiceDead:Z

    if-eqz v0, :cond_17

    .line 260
    new-instance v0, Lcom/flyme/systemui/facerecognition/KeyguardFaceRecognitionImpl$7;

    invoke-direct {v0, p0}, Lcom/flyme/systemui/facerecognition/KeyguardFaceRecognitionImpl$7;-><init>(Lcom/flyme/systemui/facerecognition/KeyguardFaceRecognitionImpl;)V

    invoke-direct {p0, v0}, Lcom/flyme/systemui/facerecognition/KeyguardFaceRecognitionImpl;->createFlymeFaceRecognitionManager(Ljava/lang/Runnable;)V

    goto :goto_1e

    .line 267
    :cond_17
    iget-object p0, p0, Lcom/flyme/systemui/facerecognition/KeyguardFaceRecognitionImpl;->mFlymeFaceRecognitionManager:Lcom/meizu/facerecognition/manager/FlymeFaceRecognitionManager;

    if-eqz p0, :cond_1e

    .line 268
    invoke-virtual {p0}, Lcom/meizu/facerecognition/manager/FlymeFaceRecognitionManager;->closeHardwareDevice()Z

    :cond_1e
    :goto_1e
    return-void
.end method

.method public resetAuthUnlockAttempt()V
    .registers 4

    const-string v0, "KeyguardFaceRecognitionImpl"

    const-string v1, "KeyguardFaceRecognitionImpl: resetAuthUnlockAttempt! "

    .line 275
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    iget-object v0, p0, Lcom/flyme/systemui/facerecognition/KeyguardFaceRecognitionImpl;->mFlymeFaceRecognitionManager:Lcom/meizu/facerecognition/manager/FlymeFaceRecognitionManager;

    if-eqz v0, :cond_1e

    const/4 v1, 0x0

    .line 278
    iget-boolean v2, p0, Lcom/flyme/systemui/facerecognition/KeyguardFaceRecognitionImpl;->mFaceServiceDead:Z

    if-eqz v2, :cond_19

    .line 279
    new-instance v0, Lcom/flyme/systemui/facerecognition/KeyguardFaceRecognitionImpl$8;

    invoke-direct {v0, p0, v1}, Lcom/flyme/systemui/facerecognition/KeyguardFaceRecognitionImpl$8;-><init>(Lcom/flyme/systemui/facerecognition/KeyguardFaceRecognitionImpl;[B)V

    invoke-direct {p0, v0}, Lcom/flyme/systemui/facerecognition/KeyguardFaceRecognitionImpl;->createFlymeFaceRecognitionManager(Ljava/lang/Runnable;)V

    goto :goto_1e

    :cond_19
    if-eqz v0, :cond_1e

    .line 287
    invoke-virtual {v0, v1}, Lcom/meizu/facerecognition/manager/FlymeFaceRecognitionManager;->resetTimeout([B)V

    :cond_1e
    :goto_1e
    return-void
.end method

.method public setStartCameraPreviewCallback(Lcom/flyme/systemui/facerecognition/KeyguardFaceRecognitionImpl$StartCameraPreviewCallback;)V
    .registers 4

    const-string v0, "KeyguardFaceRecognitionImpl"

    const-string v1, "KeyguardFaceRecognitionImpl: setStartCameraPreviewCallback! "

    .line 190
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    iput-object p1, p0, Lcom/flyme/systemui/facerecognition/KeyguardFaceRecognitionImpl;->mStartCameraPreviewCallback:Lcom/flyme/systemui/facerecognition/KeyguardFaceRecognitionImpl$StartCameraPreviewCallback;

    return-void
.end method

.method public startListeningForFaceRecognition()V
    .registers 10

    const-string v0, "KeyguardFaceRecognitionImpl"

    const-string v1, "KeyguardFaceRecognitionImpl: startListeningForFaceRecognition! "

    .line 222
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v8

    .line 224
    iget-object v0, p0, Lcom/flyme/systemui/facerecognition/KeyguardFaceRecognitionImpl;->mCancellationSignal:Landroid/os/CancellationSignal;

    if-eqz v0, :cond_12

    .line 225
    invoke-virtual {v0}, Landroid/os/CancellationSignal;->cancel()V

    .line 227
    :cond_12
    new-instance v0, Landroid/os/CancellationSignal;

    invoke-direct {v0}, Landroid/os/CancellationSignal;-><init>()V

    iput-object v0, p0, Lcom/flyme/systemui/facerecognition/KeyguardFaceRecognitionImpl;->mCancellationSignal:Landroid/os/CancellationSignal;

    .line 228
    iget-boolean v0, p0, Lcom/flyme/systemui/facerecognition/KeyguardFaceRecognitionImpl;->mFaceServiceDead:Z

    if-eqz v0, :cond_26

    .line 229
    new-instance v0, Lcom/flyme/systemui/facerecognition/KeyguardFaceRecognitionImpl$6;

    invoke-direct {v0, p0, v8}, Lcom/flyme/systemui/facerecognition/KeyguardFaceRecognitionImpl$6;-><init>(Lcom/flyme/systemui/facerecognition/KeyguardFaceRecognitionImpl;I)V

    invoke-direct {p0, v0}, Lcom/flyme/systemui/facerecognition/KeyguardFaceRecognitionImpl;->createFlymeFaceRecognitionManager(Ljava/lang/Runnable;)V

    goto :goto_35

    .line 236
    :cond_26
    iget-object v2, p0, Lcom/flyme/systemui/facerecognition/KeyguardFaceRecognitionImpl;->mFlymeFaceRecognitionManager:Lcom/meizu/facerecognition/manager/FlymeFaceRecognitionManager;

    if-eqz v2, :cond_35

    const/4 v3, 0x0

    .line 237
    iget-object v4, p0, Lcom/flyme/systemui/facerecognition/KeyguardFaceRecognitionImpl;->mCancellationSignal:Landroid/os/CancellationSignal;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/flyme/systemui/facerecognition/KeyguardFaceRecognitionImpl;->mAuthenticationCallback:Lcom/meizu/facerecognition/manager/FlymeFaceRecognitionManager$AuthenticationCallback;

    iget-object v7, p0, Lcom/flyme/systemui/facerecognition/KeyguardFaceRecognitionImpl;->mHandler:Landroid/os/Handler;

    invoke-virtual/range {v2 .. v8}, Lcom/meizu/facerecognition/manager/FlymeFaceRecognitionManager;->authenticate(Lcom/meizu/facerecognition/manager/FlymeFaceRecognitionManager$CryptoObject;Landroid/os/CancellationSignal;ILcom/meizu/facerecognition/manager/FlymeFaceRecognitionManager$AuthenticationCallback;Landroid/os/Handler;I)V

    :cond_35
    :goto_35
    const/4 v0, 0x0

    .line 241
    iput-boolean v0, p0, Lcom/flyme/systemui/facerecognition/KeyguardFaceRecognitionImpl;->mCompareCD:Z

    return-void
.end method

.method public stopListeningForFaceRecognition()V
    .registers 3

    const-string v0, "KeyguardFaceRecognitionImpl"

    const-string v1, "KeyguardFaceRecognitionImpl: stopListeningForFaceRecognition! "

    .line 246
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    iget-object v0, p0, Lcom/flyme/systemui/facerecognition/KeyguardFaceRecognitionImpl;->mCancellationSignal:Landroid/os/CancellationSignal;

    if-eqz v0, :cond_11

    .line 248
    invoke-virtual {v0}, Landroid/os/CancellationSignal;->cancel()V

    const/4 v0, 0x0

    .line 249
    iput-object v0, p0, Lcom/flyme/systemui/facerecognition/KeyguardFaceRecognitionImpl;->mCancellationSignal:Landroid/os/CancellationSignal;

    :cond_11
    const/4 v0, 0x0

    .line 251
    iput-boolean v0, p0, Lcom/flyme/systemui/facerecognition/KeyguardFaceRecognitionImpl;->mCompareCD:Z

    return-void
.end method

.method public warmUpHardwareDevice()V
    .registers 3

    .line 201
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "KeyguardFaceRecognitionImpl: warmUpHardwareDevice! "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/flyme/systemui/facerecognition/KeyguardFaceRecognitionImpl;->mFaceServiceDead:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KeyguardFaceRecognitionImpl"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    iget-object v0, p0, Lcom/flyme/systemui/facerecognition/KeyguardFaceRecognitionImpl;->mStartCameraPreviewCallback:Lcom/flyme/systemui/facerecognition/KeyguardFaceRecognitionImpl$StartCameraPreviewCallback;

    if-eqz v0, :cond_1f

    .line 203
    invoke-virtual {v0}, Lcom/flyme/systemui/facerecognition/KeyguardFaceRecognitionImpl$StartCameraPreviewCallback;->onCameraPreviewLaunching()V

    :cond_1f
    const/4 v0, 0x0

    .line 205
    iput-boolean v0, p0, Lcom/flyme/systemui/facerecognition/KeyguardFaceRecognitionImpl;->mCompareCD:Z

    .line 206
    iget-boolean v0, p0, Lcom/flyme/systemui/facerecognition/KeyguardFaceRecognitionImpl;->mFaceServiceDead:Z

    if-eqz v0, :cond_2f

    .line 207
    new-instance v0, Lcom/flyme/systemui/facerecognition/KeyguardFaceRecognitionImpl$5;

    invoke-direct {v0, p0}, Lcom/flyme/systemui/facerecognition/KeyguardFaceRecognitionImpl$5;-><init>(Lcom/flyme/systemui/facerecognition/KeyguardFaceRecognitionImpl;)V

    invoke-direct {p0, v0}, Lcom/flyme/systemui/facerecognition/KeyguardFaceRecognitionImpl;->createFlymeFaceRecognitionManager(Ljava/lang/Runnable;)V

    goto :goto_38

    .line 214
    :cond_2f
    iget-object v0, p0, Lcom/flyme/systemui/facerecognition/KeyguardFaceRecognitionImpl;->mFlymeFaceRecognitionManager:Lcom/meizu/facerecognition/manager/FlymeFaceRecognitionManager;

    if-eqz v0, :cond_38

    .line 215
    iget-object p0, p0, Lcom/flyme/systemui/facerecognition/KeyguardFaceRecognitionImpl;->mWarmUpHardwareDeviceCallback:Lcom/meizu/facerecognition/manager/FlymeFaceRecognitionManager$WarmUpHardwareDeviceCallback;

    invoke-virtual {v0, p0}, Lcom/meizu/facerecognition/manager/FlymeFaceRecognitionManager;->warmUpHardwareDevice(Lcom/meizu/facerecognition/manager/FlymeFaceRecognitionManager$WarmUpHardwareDeviceCallback;)Z

    :cond_38
    :goto_38
    return-void
.end method
