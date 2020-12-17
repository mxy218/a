.class public Lcom/meizu/settings/face/FlymeFaceRecognitionImpl;
.super Ljava/lang/Object;
.source "FlymeFaceRecognitionImpl.java"

# interfaces
.implements Lcom/meizu/settings/face/FlymeIFaceRecognition;


# instance fields
.field private mAuthenticationCallback:Lcom/meizu/facerecognition/manager/FlymeFaceRecognitionManager$AuthenticationCallback;

.field private mCancellationSignal:Landroid/os/CancellationSignal;

.field private mContext:Landroid/content/Context;

.field private mCreateTimes:I

.field private mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

.field private mDone:Z

.field private mEnrolling:Z

.field private mEnrollmentCallback:Lcom/meizu/facerecognition/manager/FlymeFaceRecognitionManager$EnrollmentCallback;

.field private mFaceRecognitionFailedCounts:I

.field private mFaceRecognitionTotalFailedCounts:I

.field private mFaceServiceDead:Z

.field private mFlymeFaceRecognitionManager:Lcom/meizu/facerecognition/manager/FlymeFaceRecognitionManager;

.field private mHandler:Landroid/os/Handler;

.field private mNoticeString:Ljava/lang/CharSequence;

.field private mPowerManager:Landroid/os/PowerManager;

.field private mRemovalCallback:Lcom/meizu/facerecognition/manager/FlymeFaceRecognitionManager$RemovalCallback;

.field private mService:Lcom/meizu/facerecognition/manager/IFaceRecognitionManagerService;

.field private mTargetRecognitionFaiedCount:I

.field private mUserId:I

.field private mVibrator:Landroid/os/Vibrator;

.field private mWarmUpHardwareDeviceCallback:Lcom/meizu/facerecognition/manager/FlymeFaceRecognitionManager$WarmUpHardwareDeviceCallback;

.field private onFaceSaveErrorNum:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    .line 302
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/meizu/settings/face/FlymeFaceRecognitionImpl;-><init>(Landroid/content/Context;ILandroid/os/Handler;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILandroid/os/Handler;)V
    .registers 6

    .line 305
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 45
    iput v0, p0, Lcom/meizu/settings/face/FlymeFaceRecognitionImpl;->mFaceRecognitionTotalFailedCounts:I

    .line 46
    iput v0, p0, Lcom/meizu/settings/face/FlymeFaceRecognitionImpl;->mFaceRecognitionFailedCounts:I

    .line 50
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    iput v1, p0, Lcom/meizu/settings/face/FlymeFaceRecognitionImpl;->mUserId:I

    .line 51
    iput v0, p0, Lcom/meizu/settings/face/FlymeFaceRecognitionImpl;->onFaceSaveErrorNum:I

    const-string v1, ""

    .line 52
    iput-object v1, p0, Lcom/meizu/settings/face/FlymeFaceRecognitionImpl;->mNoticeString:Ljava/lang/CharSequence;

    .line 54
    iput v0, p0, Lcom/meizu/settings/face/FlymeFaceRecognitionImpl;->mCreateTimes:I

    .line 59
    new-instance v0, Lcom/meizu/settings/face/FlymeFaceRecognitionImpl$1;

    invoke-direct {v0, p0}, Lcom/meizu/settings/face/FlymeFaceRecognitionImpl$1;-><init>(Lcom/meizu/settings/face/FlymeFaceRecognitionImpl;)V

    iput-object v0, p0, Lcom/meizu/settings/face/FlymeFaceRecognitionImpl;->mWarmUpHardwareDeviceCallback:Lcom/meizu/facerecognition/manager/FlymeFaceRecognitionManager$WarmUpHardwareDeviceCallback;

    .line 77
    new-instance v0, Lcom/meizu/settings/face/FlymeFaceRecognitionImpl$2;

    invoke-direct {v0, p0}, Lcom/meizu/settings/face/FlymeFaceRecognitionImpl$2;-><init>(Lcom/meizu/settings/face/FlymeFaceRecognitionImpl;)V

    iput-object v0, p0, Lcom/meizu/settings/face/FlymeFaceRecognitionImpl;->mEnrollmentCallback:Lcom/meizu/facerecognition/manager/FlymeFaceRecognitionManager$EnrollmentCallback;

    .line 123
    new-instance v0, Lcom/meizu/settings/face/FlymeFaceRecognitionImpl$3;

    invoke-direct {v0, p0}, Lcom/meizu/settings/face/FlymeFaceRecognitionImpl$3;-><init>(Lcom/meizu/settings/face/FlymeFaceRecognitionImpl;)V

    iput-object v0, p0, Lcom/meizu/settings/face/FlymeFaceRecognitionImpl;->mRemovalCallback:Lcom/meizu/facerecognition/manager/FlymeFaceRecognitionManager$RemovalCallback;

    .line 143
    new-instance v0, Lcom/meizu/settings/face/FlymeFaceRecognitionImpl$4;

    invoke-direct {v0, p0}, Lcom/meizu/settings/face/FlymeFaceRecognitionImpl$4;-><init>(Lcom/meizu/settings/face/FlymeFaceRecognitionImpl;)V

    iput-object v0, p0, Lcom/meizu/settings/face/FlymeFaceRecognitionImpl;->mAuthenticationCallback:Lcom/meizu/facerecognition/manager/FlymeFaceRecognitionManager$AuthenticationCallback;

    .line 287
    new-instance v0, Lcom/meizu/settings/face/FlymeFaceRecognitionImpl$6;

    invoke-direct {v0, p0}, Lcom/meizu/settings/face/FlymeFaceRecognitionImpl$6;-><init>(Lcom/meizu/settings/face/FlymeFaceRecognitionImpl;)V

    iput-object v0, p0, Lcom/meizu/settings/face/FlymeFaceRecognitionImpl;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    .line 306
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/settings/face/FlymeFaceRecognitionImpl;->mContext:Landroid/content/Context;

    .line 307
    iput p2, p0, Lcom/meizu/settings/face/FlymeFaceRecognitionImpl;->mUserId:I

    .line 308
    iput-object p3, p0, Lcom/meizu/settings/face/FlymeFaceRecognitionImpl;->mHandler:Landroid/os/Handler;

    const-string p2, "vibrator"

    .line 309
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Vibrator;

    iput-object p1, p0, Lcom/meizu/settings/face/FlymeFaceRecognitionImpl;->mVibrator:Landroid/os/Vibrator;

    const/4 p1, 0x0

    .line 310
    invoke-direct {p0, p1}, Lcom/meizu/settings/face/FlymeFaceRecognitionImpl;->createFlymeFaceRecognitionManager(Ljava/lang/Runnable;)V

    .line 311
    iget-object p1, p0, Lcom/meizu/settings/face/FlymeFaceRecognitionImpl;->mContext:Landroid/content/Context;

    const-string p2, "power"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/PowerManager;

    iput-object p1, p0, Lcom/meizu/settings/face/FlymeFaceRecognitionImpl;->mPowerManager:Landroid/os/PowerManager;

    const-string p0, "FaceRecognitionImpl"

    const-string p1, "FlymeFaceRecognitionImpl: onCreate! "

    .line 312
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .registers 4

    .line 298
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-direct {p0, p1, v0, p2}, Lcom/meizu/settings/face/FlymeFaceRecognitionImpl;-><init>(Landroid/content/Context;ILandroid/os/Handler;)V

    return-void
.end method

.method static synthetic access$000(Lcom/meizu/settings/face/FlymeFaceRecognitionImpl;)Landroid/os/Handler;
    .registers 1

    .line 28
    iget-object p0, p0, Lcom/meizu/settings/face/FlymeFaceRecognitionImpl;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$100(Lcom/meizu/settings/face/FlymeFaceRecognitionImpl;)I
    .registers 1

    .line 28
    iget p0, p0, Lcom/meizu/settings/face/FlymeFaceRecognitionImpl;->onFaceSaveErrorNum:I

    return p0
.end method

.method static synthetic access$1000(Lcom/meizu/settings/face/FlymeFaceRecognitionImpl;Ljava/lang/Runnable;)V
    .registers 2

    .line 28
    invoke-direct {p0, p1}, Lcom/meizu/settings/face/FlymeFaceRecognitionImpl;->createFlymeFaceRecognitionManager(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic access$102(Lcom/meizu/settings/face/FlymeFaceRecognitionImpl;I)I
    .registers 2

    .line 28
    iput p1, p0, Lcom/meizu/settings/face/FlymeFaceRecognitionImpl;->onFaceSaveErrorNum:I

    return p1
.end method

.method static synthetic access$108(Lcom/meizu/settings/face/FlymeFaceRecognitionImpl;)I
    .registers 3

    .line 28
    iget v0, p0, Lcom/meizu/settings/face/FlymeFaceRecognitionImpl;->onFaceSaveErrorNum:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/meizu/settings/face/FlymeFaceRecognitionImpl;->onFaceSaveErrorNum:I

    return v0
.end method

.method static synthetic access$1102(Lcom/meizu/settings/face/FlymeFaceRecognitionImpl;Z)Z
    .registers 2

    .line 28
    iput-boolean p1, p0, Lcom/meizu/settings/face/FlymeFaceRecognitionImpl;->mFaceServiceDead:Z

    return p1
.end method

.method static synthetic access$1202(Lcom/meizu/settings/face/FlymeFaceRecognitionImpl;I)I
    .registers 2

    .line 28
    iput p1, p0, Lcom/meizu/settings/face/FlymeFaceRecognitionImpl;->mCreateTimes:I

    return p1
.end method

.method static synthetic access$1300(Lcom/meizu/settings/face/FlymeFaceRecognitionImpl;)Landroid/os/CancellationSignal;
    .registers 1

    .line 28
    iget-object p0, p0, Lcom/meizu/settings/face/FlymeFaceRecognitionImpl;->mCancellationSignal:Landroid/os/CancellationSignal;

    return-object p0
.end method

.method static synthetic access$1302(Lcom/meizu/settings/face/FlymeFaceRecognitionImpl;Landroid/os/CancellationSignal;)Landroid/os/CancellationSignal;
    .registers 2

    .line 28
    iput-object p1, p0, Lcom/meizu/settings/face/FlymeFaceRecognitionImpl;->mCancellationSignal:Landroid/os/CancellationSignal;

    return-object p1
.end method

.method static synthetic access$1400(Lcom/meizu/settings/face/FlymeFaceRecognitionImpl;)Lcom/meizu/facerecognition/manager/FlymeFaceRecognitionManager$AuthenticationCallback;
    .registers 1

    .line 28
    iget-object p0, p0, Lcom/meizu/settings/face/FlymeFaceRecognitionImpl;->mAuthenticationCallback:Lcom/meizu/facerecognition/manager/FlymeFaceRecognitionManager$AuthenticationCallback;

    return-object p0
.end method

.method static synthetic access$1500(Lcom/meizu/settings/face/FlymeFaceRecognitionImpl;)I
    .registers 1

    .line 28
    iget p0, p0, Lcom/meizu/settings/face/FlymeFaceRecognitionImpl;->mUserId:I

    return p0
.end method

.method static synthetic access$1600(Lcom/meizu/settings/face/FlymeFaceRecognitionImpl;)Lcom/meizu/facerecognition/manager/FlymeFaceRecognitionManager;
    .registers 1

    .line 28
    iget-object p0, p0, Lcom/meizu/settings/face/FlymeFaceRecognitionImpl;->mFlymeFaceRecognitionManager:Lcom/meizu/facerecognition/manager/FlymeFaceRecognitionManager;

    return-object p0
.end method

.method static synthetic access$1700(Lcom/meizu/settings/face/FlymeFaceRecognitionImpl;)Lcom/meizu/facerecognition/manager/FlymeFaceRecognitionManager$WarmUpHardwareDeviceCallback;
    .registers 1

    .line 28
    iget-object p0, p0, Lcom/meizu/settings/face/FlymeFaceRecognitionImpl;->mWarmUpHardwareDeviceCallback:Lcom/meizu/facerecognition/manager/FlymeFaceRecognitionManager$WarmUpHardwareDeviceCallback;

    return-object p0
.end method

.method static synthetic access$1800(Lcom/meizu/settings/face/FlymeFaceRecognitionImpl;)Lcom/meizu/facerecognition/manager/FlymeFaceRecognitionManager$EnrollmentCallback;
    .registers 1

    .line 28
    iget-object p0, p0, Lcom/meizu/settings/face/FlymeFaceRecognitionImpl;->mEnrollmentCallback:Lcom/meizu/facerecognition/manager/FlymeFaceRecognitionManager$EnrollmentCallback;

    return-object p0
.end method

.method static synthetic access$1900(Lcom/meizu/settings/face/FlymeFaceRecognitionImpl;)Lcom/meizu/facerecognition/manager/FlymeFaceRecognitionManager$RemovalCallback;
    .registers 1

    .line 28
    iget-object p0, p0, Lcom/meizu/settings/face/FlymeFaceRecognitionImpl;->mRemovalCallback:Lcom/meizu/facerecognition/manager/FlymeFaceRecognitionManager$RemovalCallback;

    return-object p0
.end method

.method static synthetic access$200(Lcom/meizu/settings/face/FlymeFaceRecognitionImpl;)Ljava/lang/CharSequence;
    .registers 1

    .line 28
    iget-object p0, p0, Lcom/meizu/settings/face/FlymeFaceRecognitionImpl;->mNoticeString:Ljava/lang/CharSequence;

    return-object p0
.end method

.method static synthetic access$202(Lcom/meizu/settings/face/FlymeFaceRecognitionImpl;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .registers 2

    .line 28
    iput-object p1, p0, Lcom/meizu/settings/face/FlymeFaceRecognitionImpl;->mNoticeString:Ljava/lang/CharSequence;

    return-object p1
.end method

.method static synthetic access$300(Lcom/meizu/settings/face/FlymeFaceRecognitionImpl;)Z
    .registers 1

    .line 28
    iget-boolean p0, p0, Lcom/meizu/settings/face/FlymeFaceRecognitionImpl;->mDone:Z

    return p0
.end method

.method static synthetic access$302(Lcom/meizu/settings/face/FlymeFaceRecognitionImpl;Z)Z
    .registers 2

    .line 28
    iput-boolean p1, p0, Lcom/meizu/settings/face/FlymeFaceRecognitionImpl;->mDone:Z

    return p1
.end method

.method static synthetic access$400(Lcom/meizu/settings/face/FlymeFaceRecognitionImpl;)Landroid/content/Context;
    .registers 1

    .line 28
    iget-object p0, p0, Lcom/meizu/settings/face/FlymeFaceRecognitionImpl;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$500(Lcom/meizu/settings/face/FlymeFaceRecognitionImpl;ILjava/lang/CharSequence;)V
    .registers 3

    .line 28
    invoke-direct {p0, p1, p2}, Lcom/meizu/settings/face/FlymeFaceRecognitionImpl;->updateSaveFeatureProgress(ILjava/lang/CharSequence;)V

    return-void
.end method

.method static synthetic access$600(Lcom/meizu/settings/face/FlymeFaceRecognitionImpl;)I
    .registers 1

    .line 28
    iget p0, p0, Lcom/meizu/settings/face/FlymeFaceRecognitionImpl;->mFaceRecognitionFailedCounts:I

    return p0
.end method

.method static synthetic access$608(Lcom/meizu/settings/face/FlymeFaceRecognitionImpl;)I
    .registers 3

    .line 28
    iget v0, p0, Lcom/meizu/settings/face/FlymeFaceRecognitionImpl;->mFaceRecognitionFailedCounts:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/meizu/settings/face/FlymeFaceRecognitionImpl;->mFaceRecognitionFailedCounts:I

    return v0
.end method

.method static synthetic access$700(Lcom/meizu/settings/face/FlymeFaceRecognitionImpl;)I
    .registers 1

    .line 28
    iget p0, p0, Lcom/meizu/settings/face/FlymeFaceRecognitionImpl;->mTargetRecognitionFaiedCount:I

    return p0
.end method

.method static synthetic access$800(Lcom/meizu/settings/face/FlymeFaceRecognitionImpl;)I
    .registers 1

    .line 28
    iget p0, p0, Lcom/meizu/settings/face/FlymeFaceRecognitionImpl;->mFaceRecognitionTotalFailedCounts:I

    return p0
.end method

.method static synthetic access$808(Lcom/meizu/settings/face/FlymeFaceRecognitionImpl;)I
    .registers 3

    .line 28
    iget v0, p0, Lcom/meizu/settings/face/FlymeFaceRecognitionImpl;->mFaceRecognitionTotalFailedCounts:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/meizu/settings/face/FlymeFaceRecognitionImpl;->mFaceRecognitionTotalFailedCounts:I

    return v0
.end method

.method static synthetic access$900(Lcom/meizu/settings/face/FlymeFaceRecognitionImpl;)V
    .registers 1

    .line 28
    invoke-direct {p0}, Lcom/meizu/settings/face/FlymeFaceRecognitionImpl;->vibrate()V

    return-void
.end method

.method private cancelEnrollment()V
    .registers 2

    .line 438
    iget-boolean v0, p0, Lcom/meizu/settings/face/FlymeFaceRecognitionImpl;->mEnrolling:Z

    if-eqz v0, :cond_c

    .line 439
    iget-object v0, p0, Lcom/meizu/settings/face/FlymeFaceRecognitionImpl;->mCancellationSignal:Landroid/os/CancellationSignal;

    invoke-virtual {v0}, Landroid/os/CancellationSignal;->cancel()V

    const/4 v0, 0x0

    .line 440
    iput-boolean v0, p0, Lcom/meizu/settings/face/FlymeFaceRecognitionImpl;->mEnrolling:Z

    :cond_c
    return-void
.end method

.method private createFlymeFaceRecognitionManager(Ljava/lang/Runnable;)V
    .registers 6

    .line 254
    iget v0, p0, Lcom/meizu/settings/face/FlymeFaceRecognitionImpl;->mCreateTimes:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/meizu/settings/face/FlymeFaceRecognitionImpl;->mCreateTimes:I

    const-string v0, "face_recognition_server"

    .line 255
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    const-string v1, "FaceRecognitionImpl"

    if-eqz v0, :cond_50

    const/4 v2, 0x0

    .line 258
    :try_start_11
    iput v2, p0, Lcom/meizu/settings/face/FlymeFaceRecognitionImpl;->mCreateTimes:I

    .line 259
    iget-object v3, p0, Lcom/meizu/settings/face/FlymeFaceRecognitionImpl;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    invoke-interface {v0, v3, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 260
    invoke-static {v0}, Lcom/meizu/facerecognition/manager/IFaceRecognitionManagerService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/meizu/facerecognition/manager/IFaceRecognitionManagerService;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/settings/face/FlymeFaceRecognitionImpl;->mService:Lcom/meizu/facerecognition/manager/IFaceRecognitionManagerService;

    .line 261
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mService "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/meizu/settings/face/FlymeFaceRecognitionImpl;->mService:Lcom/meizu/facerecognition/manager/IFaceRecognitionManagerService;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    new-instance v0, Lcom/meizu/facerecognition/manager/FlymeFaceRecognitionManager;

    iget-object v1, p0, Lcom/meizu/settings/face/FlymeFaceRecognitionImpl;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/meizu/settings/face/FlymeFaceRecognitionImpl;->mService:Lcom/meizu/facerecognition/manager/IFaceRecognitionManagerService;

    invoke-direct {v0, v1, v3}, Lcom/meizu/facerecognition/manager/FlymeFaceRecognitionManager;-><init>(Landroid/content/Context;Lcom/meizu/facerecognition/manager/IFaceRecognitionManagerService;)V

    iput-object v0, p0, Lcom/meizu/settings/face/FlymeFaceRecognitionImpl;->mFlymeFaceRecognitionManager:Lcom/meizu/facerecognition/manager/FlymeFaceRecognitionManager;

    .line 263
    iget-boolean v0, p0, Lcom/meizu/settings/face/FlymeFaceRecognitionImpl;->mFaceServiceDead:Z

    if-eqz v0, :cond_45

    .line 264
    iput-boolean v2, p0, Lcom/meizu/settings/face/FlymeFaceRecognitionImpl;->mFaceServiceDead:Z

    :cond_45
    if-eqz p1, :cond_7c

    .line 267
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V
    :try_end_4a
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_4a} :catch_4b

    goto :goto_7c

    :catch_4b
    move-exception p0

    .line 270
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_7c

    .line 273
    :cond_50
    iget-object v0, p0, Lcom/meizu/settings/face/FlymeFaceRecognitionImpl;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_7c

    .line 274
    iget v0, p0, Lcom/meizu/settings/face/FlymeFaceRecognitionImpl;->mCreateTimes:I

    const/16 v2, 0xa

    if-gt v0, v2, :cond_7c

    .line 275
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "face_recognition_server is null "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/meizu/settings/face/FlymeFaceRecognitionImpl;->mCreateTimes:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    iget-object v0, p0, Lcom/meizu/settings/face/FlymeFaceRecognitionImpl;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/meizu/settings/face/FlymeFaceRecognitionImpl$5;

    invoke-direct {v1, p0, p1}, Lcom/meizu/settings/face/FlymeFaceRecognitionImpl$5;-><init>(Lcom/meizu/settings/face/FlymeFaceRecognitionImpl;Ljava/lang/Runnable;)V

    const-wide/16 p0, 0x78

    invoke-virtual {v0, v1, p0, p1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_7c
    :goto_7c
    return-void
.end method

.method private updateSaveFeatureProgress(ILjava/lang/CharSequence;)V
    .registers 5

    .line 522
    iget-object v0, p0, Lcom/meizu/settings/face/FlymeFaceRecognitionImpl;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_2d

    .line 523
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/4 v1, 0x7

    .line 524
    iput v1, v0, Landroid/os/Message;->what:I

    .line 525
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 526
    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 527
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "updateSaveFeatureProgress msg.arg1:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "FaceRecognitionImpl"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 528
    iget-object p0, p0, Lcom/meizu/settings/face/FlymeFaceRecognitionImpl;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_2d
    return-void
.end method

.method private vibrate()V
    .registers 3

    .line 235
    iget-object p0, p0, Lcom/meizu/settings/face/FlymeFaceRecognitionImpl;->mVibrator:Landroid/os/Vibrator;

    const/4 v0, 0x3

    new-array v0, v0, [J

    fill-array-data v0, :array_e

    const/4 v1, -0x1

    invoke-virtual {p0, v0, v1}, Landroid/os/Vibrator;->vibrate([JI)V

    return-void

    nop

    :array_e
    .array-data 8
        0x64
        0x1e
        0x12c
    .end array-data
.end method


# virtual methods
.method public closeHardwareDevice()Z
    .registers 2

    .line 447
    iget-boolean v0, p0, Lcom/meizu/settings/face/FlymeFaceRecognitionImpl;->mFaceServiceDead:Z

    if-eqz v0, :cond_d

    .line 448
    new-instance v0, Lcom/meizu/settings/face/FlymeFaceRecognitionImpl$11;

    invoke-direct {v0, p0}, Lcom/meizu/settings/face/FlymeFaceRecognitionImpl$11;-><init>(Lcom/meizu/settings/face/FlymeFaceRecognitionImpl;)V

    invoke-direct {p0, v0}, Lcom/meizu/settings/face/FlymeFaceRecognitionImpl;->createFlymeFaceRecognitionManager(Ljava/lang/Runnable;)V

    goto :goto_12

    .line 455
    :cond_d
    iget-object p0, p0, Lcom/meizu/settings/face/FlymeFaceRecognitionImpl;->mFlymeFaceRecognitionManager:Lcom/meizu/facerecognition/manager/FlymeFaceRecognitionManager;

    invoke-virtual {p0}, Lcom/meizu/facerecognition/manager/FlymeFaceRecognitionManager;->closeHardwareDevice()Z

    :goto_12
    const/4 p0, 0x1

    return p0
.end method

.method public deleteFaceMetadatas()V
    .registers 3

    .line 495
    iget-boolean v0, p0, Lcom/meizu/settings/face/FlymeFaceRecognitionImpl;->mFaceServiceDead:Z

    if-eqz v0, :cond_d

    .line 496
    new-instance v0, Lcom/meizu/settings/face/FlymeFaceRecognitionImpl$12;

    invoke-direct {v0, p0}, Lcom/meizu/settings/face/FlymeFaceRecognitionImpl$12;-><init>(Lcom/meizu/settings/face/FlymeFaceRecognitionImpl;)V

    invoke-direct {p0, v0}, Lcom/meizu/settings/face/FlymeFaceRecognitionImpl;->createFlymeFaceRecognitionManager(Ljava/lang/Runnable;)V

    goto :goto_16

    .line 503
    :cond_d
    iget-object v0, p0, Lcom/meizu/settings/face/FlymeFaceRecognitionImpl;->mFlymeFaceRecognitionManager:Lcom/meizu/facerecognition/manager/FlymeFaceRecognitionManager;

    iget v1, p0, Lcom/meizu/settings/face/FlymeFaceRecognitionImpl;->mUserId:I

    iget-object p0, p0, Lcom/meizu/settings/face/FlymeFaceRecognitionImpl;->mRemovalCallback:Lcom/meizu/facerecognition/manager/FlymeFaceRecognitionManager$RemovalCallback;

    invoke-virtual {v0, v1, p0}, Lcom/meizu/facerecognition/manager/FlymeFaceRecognitionManager;->removeAllFaceMetadata(ILcom/meizu/facerecognition/manager/FlymeFaceRecognitionManager$RemovalCallback;)V

    :goto_16
    return-void
.end method

.method public endEnroll()V
    .registers 2

    .line 431
    invoke-direct {p0}, Lcom/meizu/settings/face/FlymeFaceRecognitionImpl;->cancelEnrollment()V

    const/4 v0, 0x0

    .line 432
    iput-object v0, p0, Lcom/meizu/settings/face/FlymeFaceRecognitionImpl;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x0

    .line 433
    iput v0, p0, Lcom/meizu/settings/face/FlymeFaceRecognitionImpl;->onFaceSaveErrorNum:I

    const-string p0, "FaceRecognitionImpl"

    const-string v0, "endEnroll......"

    .line 434
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public endVerify()V
    .registers 3

    .line 367
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "end verify. mCancellationSignal:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/meizu/settings/face/FlymeFaceRecognitionImpl;->mCancellationSignal:Landroid/os/CancellationSignal;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FaceRecognitionImpl"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 368
    invoke-virtual {p0}, Lcom/meizu/settings/face/FlymeFaceRecognitionImpl;->closeHardwareDevice()Z

    .line 369
    iget-object v0, p0, Lcom/meizu/settings/face/FlymeFaceRecognitionImpl;->mCancellationSignal:Landroid/os/CancellationSignal;

    if-nez v0, :cond_20

    return-void

    .line 373
    :cond_20
    invoke-virtual {v0}, Landroid/os/CancellationSignal;->cancel()V

    const/4 v0, 0x0

    .line 374
    iput-object v0, p0, Lcom/meizu/settings/face/FlymeFaceRecognitionImpl;->mCancellationSignal:Landroid/os/CancellationSignal;

    const/4 v1, 0x0

    .line 375
    iput v1, p0, Lcom/meizu/settings/face/FlymeFaceRecognitionImpl;->mFaceRecognitionFailedCounts:I

    .line 376
    iput v1, p0, Lcom/meizu/settings/face/FlymeFaceRecognitionImpl;->mTargetRecognitionFaiedCount:I

    .line 377
    iput v1, p0, Lcom/meizu/settings/face/FlymeFaceRecognitionImpl;->mFaceRecognitionTotalFailedCounts:I

    .line 379
    iput-object v0, p0, Lcom/meizu/settings/face/FlymeFaceRecognitionImpl;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method public isFaceRecognitionServiceEnabled()Z
    .registers 1

    .line 534
    iget-object p0, p0, Lcom/meizu/settings/face/FlymeFaceRecognitionImpl;->mFlymeFaceRecognitionManager:Lcom/meizu/facerecognition/manager/FlymeFaceRecognitionManager;

    if-eqz p0, :cond_6

    const/4 p0, 0x1

    goto :goto_7

    :cond_6
    const/4 p0, 0x0

    :goto_7
    return p0
.end method

.method public resetTimeout([B)V
    .registers 3

    .line 509
    iget-boolean v0, p0, Lcom/meizu/settings/face/FlymeFaceRecognitionImpl;->mFaceServiceDead:Z

    if-eqz v0, :cond_d

    .line 510
    new-instance v0, Lcom/meizu/settings/face/FlymeFaceRecognitionImpl$13;

    invoke-direct {v0, p0, p1}, Lcom/meizu/settings/face/FlymeFaceRecognitionImpl$13;-><init>(Lcom/meizu/settings/face/FlymeFaceRecognitionImpl;[B)V

    invoke-direct {p0, v0}, Lcom/meizu/settings/face/FlymeFaceRecognitionImpl;->createFlymeFaceRecognitionManager(Ljava/lang/Runnable;)V

    goto :goto_12

    .line 517
    :cond_d
    iget-object p0, p0, Lcom/meizu/settings/face/FlymeFaceRecognitionImpl;->mFlymeFaceRecognitionManager:Lcom/meizu/facerecognition/manager/FlymeFaceRecognitionManager;

    invoke-virtual {p0, p1}, Lcom/meizu/facerecognition/manager/FlymeFaceRecognitionManager;->resetTimeout([B)V

    :goto_12
    return-void
.end method

.method public startEnroll(Landroid/os/Handler;[BLandroid/graphics/Rect;)V
    .registers 11

    .line 402
    iput-object p1, p0, Lcom/meizu/settings/face/FlymeFaceRecognitionImpl;->mHandler:Landroid/os/Handler;

    const/4 p1, 0x0

    .line 404
    iput p1, p0, Lcom/meizu/settings/face/FlymeFaceRecognitionImpl;->onFaceSaveErrorNum:I

    .line 405
    iput-boolean p1, p0, Lcom/meizu/settings/face/FlymeFaceRecognitionImpl;->mDone:Z

    .line 406
    new-instance p1, Landroid/os/CancellationSignal;

    invoke-direct {p1}, Landroid/os/CancellationSignal;-><init>()V

    iput-object p1, p0, Lcom/meizu/settings/face/FlymeFaceRecognitionImpl;->mCancellationSignal:Landroid/os/CancellationSignal;

    .line 407
    iget-boolean p1, p0, Lcom/meizu/settings/face/FlymeFaceRecognitionImpl;->mFaceServiceDead:Z

    if-eqz p1, :cond_1b

    .line 408
    new-instance p1, Lcom/meizu/settings/face/FlymeFaceRecognitionImpl$10;

    invoke-direct {p1, p0, p2, p3}, Lcom/meizu/settings/face/FlymeFaceRecognitionImpl$10;-><init>(Lcom/meizu/settings/face/FlymeFaceRecognitionImpl;[BLandroid/graphics/Rect;)V

    invoke-direct {p0, p1}, Lcom/meizu/settings/face/FlymeFaceRecognitionImpl;->createFlymeFaceRecognitionManager(Ljava/lang/Runnable;)V

    goto :goto_29

    .line 416
    :cond_1b
    iget-object v0, p0, Lcom/meizu/settings/face/FlymeFaceRecognitionImpl;->mFlymeFaceRecognitionManager:Lcom/meizu/facerecognition/manager/FlymeFaceRecognitionManager;

    iget-object v2, p0, Lcom/meizu/settings/face/FlymeFaceRecognitionImpl;->mCancellationSignal:Landroid/os/CancellationSignal;

    const/4 v3, 0x0

    iget v4, p0, Lcom/meizu/settings/face/FlymeFaceRecognitionImpl;->mUserId:I

    iget-object v5, p0, Lcom/meizu/settings/face/FlymeFaceRecognitionImpl;->mEnrollmentCallback:Lcom/meizu/facerecognition/manager/FlymeFaceRecognitionManager$EnrollmentCallback;

    move-object v1, p2

    move-object v6, p3

    invoke-virtual/range {v0 .. v6}, Lcom/meizu/facerecognition/manager/FlymeFaceRecognitionManager;->enroll([BLandroid/os/CancellationSignal;IILcom/meizu/facerecognition/manager/FlymeFaceRecognitionManager$EnrollmentCallback;Landroid/graphics/Rect;)V

    :goto_29
    const/4 p1, 0x1

    .line 420
    iput-boolean p1, p0, Lcom/meizu/settings/face/FlymeFaceRecognitionImpl;->mEnrolling:Z

    const-string p0, "FaceRecognitionImpl"

    const-string p1, "startEnroll......"

    .line 421
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public startVerify(Landroid/os/Handler;I)V
    .registers 5

    .line 318
    iget-object v0, p0, Lcom/meizu/settings/face/FlymeFaceRecognitionImpl;->mPowerManager:Landroid/os/PowerManager;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v0

    goto :goto_a

    :cond_9
    const/4 v0, 0x1

    :goto_a
    const-string v1, "FaceRecognitionImpl"

    if-nez v0, :cond_23

    .line 320
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "startVerify faied isInteractive:"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 324
    :cond_23
    iput p2, p0, Lcom/meizu/settings/face/FlymeFaceRecognitionImpl;->mTargetRecognitionFaiedCount:I

    .line 325
    iget p2, p0, Lcom/meizu/settings/face/FlymeFaceRecognitionImpl;->mTargetRecognitionFaiedCount:I

    if-gtz p2, :cond_2c

    const/4 p2, 0x5

    .line 326
    iput p2, p0, Lcom/meizu/settings/face/FlymeFaceRecognitionImpl;->mTargetRecognitionFaiedCount:I

    :cond_2c
    const-string p2, "start face compare.."

    .line 328
    invoke-static {v1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    iput-object p1, p0, Lcom/meizu/settings/face/FlymeFaceRecognitionImpl;->mHandler:Landroid/os/Handler;

    .line 331
    new-instance p1, Lcom/meizu/settings/face/FlymeFaceRecognitionImpl$7;

    invoke-direct {p1, p0}, Lcom/meizu/settings/face/FlymeFaceRecognitionImpl$7;-><init>(Lcom/meizu/settings/face/FlymeFaceRecognitionImpl;)V

    .line 353
    iget-boolean p2, p0, Lcom/meizu/settings/face/FlymeFaceRecognitionImpl;->mFaceServiceDead:Z

    if-eqz p2, :cond_45

    .line 354
    new-instance p2, Lcom/meizu/settings/face/FlymeFaceRecognitionImpl$8;

    invoke-direct {p2, p0, p1}, Lcom/meizu/settings/face/FlymeFaceRecognitionImpl$8;-><init>(Lcom/meizu/settings/face/FlymeFaceRecognitionImpl;Lcom/meizu/facerecognition/manager/FlymeFaceRecognitionManager$WarmUpHardwareDeviceCallback;)V

    invoke-direct {p0, p2}, Lcom/meizu/settings/face/FlymeFaceRecognitionImpl;->createFlymeFaceRecognitionManager(Ljava/lang/Runnable;)V

    goto :goto_4a

    .line 361
    :cond_45
    iget-object p0, p0, Lcom/meizu/settings/face/FlymeFaceRecognitionImpl;->mFlymeFaceRecognitionManager:Lcom/meizu/facerecognition/manager/FlymeFaceRecognitionManager;

    invoke-virtual {p0, p1}, Lcom/meizu/facerecognition/manager/FlymeFaceRecognitionManager;->warmUpHardwareDevice(Lcom/meizu/facerecognition/manager/FlymeFaceRecognitionManager$WarmUpHardwareDeviceCallback;)Z

    :goto_4a
    return-void
.end method

.method public warmUpHardwareDeviceForPreview(Landroid/view/Surface;Landroid/os/Handler;II)Z
    .registers 6

    .line 384
    iput-object p2, p0, Lcom/meizu/settings/face/FlymeFaceRecognitionImpl;->mHandler:Landroid/os/Handler;

    .line 385
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "warm up device...... mHandler:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/meizu/settings/face/FlymeFaceRecognitionImpl;->mHandler:Landroid/os/Handler;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ",surface:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "FaceRecognitionImpl"

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 387
    iget-boolean p2, p0, Lcom/meizu/settings/face/FlymeFaceRecognitionImpl;->mFaceServiceDead:Z

    if-eqz p2, :cond_2f

    .line 388
    new-instance p2, Lcom/meizu/settings/face/FlymeFaceRecognitionImpl$9;

    invoke-direct {p2, p0, p1, p3, p4}, Lcom/meizu/settings/face/FlymeFaceRecognitionImpl$9;-><init>(Lcom/meizu/settings/face/FlymeFaceRecognitionImpl;Landroid/view/Surface;II)V

    invoke-direct {p0, p2}, Lcom/meizu/settings/face/FlymeFaceRecognitionImpl;->createFlymeFaceRecognitionManager(Ljava/lang/Runnable;)V

    goto :goto_36

    .line 395
    :cond_2f
    iget-object p2, p0, Lcom/meizu/settings/face/FlymeFaceRecognitionImpl;->mFlymeFaceRecognitionManager:Lcom/meizu/facerecognition/manager/FlymeFaceRecognitionManager;

    iget-object p0, p0, Lcom/meizu/settings/face/FlymeFaceRecognitionImpl;->mWarmUpHardwareDeviceCallback:Lcom/meizu/facerecognition/manager/FlymeFaceRecognitionManager$WarmUpHardwareDeviceCallback;

    invoke-virtual {p2, p0, p1, p3, p4}, Lcom/meizu/facerecognition/manager/FlymeFaceRecognitionManager;->warmUpHardwareDeviceForPreview(Lcom/meizu/facerecognition/manager/FlymeFaceRecognitionManager$WarmUpHardwareDeviceCallback;Landroid/view/Surface;II)Z

    :goto_36
    const/4 p0, 0x1

    return p0
.end method
