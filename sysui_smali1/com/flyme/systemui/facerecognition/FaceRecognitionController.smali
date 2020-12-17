.class public Lcom/flyme/systemui/facerecognition/FaceRecognitionController;
.super Ljava/lang/Object;
.source "FaceRecognitionController.java"

# interfaces
.implements Lcom/android/keyguard/KeyguardUpdateMonitor$FaceRecognitionCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/flyme/systemui/facerecognition/FaceRecognitionController$CreateFaceStartCameraPerviewCallback;
    }
.end annotation


# static fields
.field private static mFaceRecognitionController:Lcom/flyme/systemui/facerecognition/FaceRecognitionController;


# instance fields
.field private final mCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/flyme/systemui/facerecognition/IFaceRecognitionAnimationCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mCameraPerviewView:Landroid/view/ViewGroup;

.field private mCameraWorkThreadManager:Lcom/flyme/systemui/facerecognition/manager/CameraWorkThreadManager;

.field private mContext:Landroid/content/Context;

.field private mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

.field private mFaceRecognitionHandler:Landroid/os/Handler;

.field private mFaceRecognitionHandlerThread:Landroid/os/HandlerThread;

.field private mFaceRecognitionService:Lcom/meizu/facerecognition/manager/IFaceRecognitionManagerService;

.field private mFaceRecognitionServiceConnection:Landroid/content/ServiceConnection;

.field private mFrozenMode:Z

.field private mHandler:Landroid/os/Handler;

.field private mIsStartedCameraPerview:Z

.field private mIsStartingCamera:Z

.field private mIsbindSerivce:Z

.field private mKeyguardFaceRecognitionImpl:Lcom/flyme/systemui/facerecognition/KeyguardFaceRecognitionImpl;

.field private mKeyguardUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field private mLinkToDeadSuccess:Z

.field private mPM:Landroid/os/PowerManager;

.field private mResetFaceImageRunnable:Ljava/lang/Runnable;

.field private mScreenOn:Z

.field private mStartCameraPerviewCallback:Lcom/flyme/systemui/facerecognition/FaceRecognitionController$CreateFaceStartCameraPerviewCallback;

.field private mStartCamerePerviewRunnable:Ljava/lang/Runnable;

.field private mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

.field private mStopCamerePerviewRunnable:Ljava/lang/Runnable;

.field mSystemModeUtils:Lcom/meizu/keyguard/SystemModeUtils;

.field private mTryCount:I

.field private mVibrator:Landroid/os/Vibrator;

.field private mWindowManager:Landroid/view/WindowManager;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .registers 4

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 70
    iput-boolean v0, p0, Lcom/flyme/systemui/facerecognition/FaceRecognitionController;->mIsbindSerivce:Z

    const/4 v1, 0x0

    .line 71
    iput-object v1, p0, Lcom/flyme/systemui/facerecognition/FaceRecognitionController;->mCameraPerviewView:Landroid/view/ViewGroup;

    .line 73
    iput-boolean v0, p0, Lcom/flyme/systemui/facerecognition/FaceRecognitionController;->mIsStartedCameraPerview:Z

    .line 74
    iput-boolean v0, p0, Lcom/flyme/systemui/facerecognition/FaceRecognitionController;->mIsStartingCamera:Z

    const/4 v0, 0x1

    .line 75
    iput-boolean v0, p0, Lcom/flyme/systemui/facerecognition/FaceRecognitionController;->mScreenOn:Z

    .line 77
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/flyme/systemui/facerecognition/FaceRecognitionController;->mHandler:Landroid/os/Handler;

    .line 90
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/flyme/systemui/facerecognition/FaceRecognitionController;->mCallbacks:Ljava/util/ArrayList;

    .line 147
    new-instance v0, Lcom/flyme/systemui/facerecognition/FaceRecognitionController$2;

    invoke-direct {v0, p0}, Lcom/flyme/systemui/facerecognition/FaceRecognitionController$2;-><init>(Lcom/flyme/systemui/facerecognition/FaceRecognitionController;)V

    iput-object v0, p0, Lcom/flyme/systemui/facerecognition/FaceRecognitionController;->mStartCamerePerviewRunnable:Ljava/lang/Runnable;

    .line 160
    new-instance v0, Lcom/flyme/systemui/facerecognition/FaceRecognitionController$3;

    invoke-direct {v0, p0}, Lcom/flyme/systemui/facerecognition/FaceRecognitionController$3;-><init>(Lcom/flyme/systemui/facerecognition/FaceRecognitionController;)V

    iput-object v0, p0, Lcom/flyme/systemui/facerecognition/FaceRecognitionController;->mStopCamerePerviewRunnable:Ljava/lang/Runnable;

    .line 335
    new-instance v0, Lcom/flyme/systemui/facerecognition/FaceRecognitionController$CreateFaceStartCameraPerviewCallback;

    invoke-direct {v0, p0, v1}, Lcom/flyme/systemui/facerecognition/FaceRecognitionController$CreateFaceStartCameraPerviewCallback;-><init>(Lcom/flyme/systemui/facerecognition/FaceRecognitionController;Lcom/flyme/systemui/facerecognition/FaceRecognitionController$1;)V

    iput-object v0, p0, Lcom/flyme/systemui/facerecognition/FaceRecognitionController;->mStartCameraPerviewCallback:Lcom/flyme/systemui/facerecognition/FaceRecognitionController$CreateFaceStartCameraPerviewCallback;

    .line 337
    new-instance v0, Lcom/flyme/systemui/facerecognition/FaceRecognitionController$4;

    invoke-direct {v0, p0}, Lcom/flyme/systemui/facerecognition/FaceRecognitionController$4;-><init>(Lcom/flyme/systemui/facerecognition/FaceRecognitionController;)V

    iput-object v0, p0, Lcom/flyme/systemui/facerecognition/FaceRecognitionController;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    .line 346
    new-instance v0, Lcom/flyme/systemui/facerecognition/FaceRecognitionController$5;

    invoke-direct {v0, p0}, Lcom/flyme/systemui/facerecognition/FaceRecognitionController$5;-><init>(Lcom/flyme/systemui/facerecognition/FaceRecognitionController;)V

    iput-object v0, p0, Lcom/flyme/systemui/facerecognition/FaceRecognitionController;->mFaceRecognitionServiceConnection:Landroid/content/ServiceConnection;

    .line 477
    new-instance v0, Lcom/flyme/systemui/facerecognition/FaceRecognitionController$6;

    invoke-direct {v0, p0}, Lcom/flyme/systemui/facerecognition/FaceRecognitionController$6;-><init>(Lcom/flyme/systemui/facerecognition/FaceRecognitionController;)V

    iput-object v0, p0, Lcom/flyme/systemui/facerecognition/FaceRecognitionController;->mResetFaceImageRunnable:Ljava/lang/Runnable;

    .line 99
    iput-object p1, p0, Lcom/flyme/systemui/facerecognition/FaceRecognitionController;->mContext:Landroid/content/Context;

    .line 101
    new-instance p1, Lcom/meizu/keyguard/SystemModeUtils;

    iget-object v0, p0, Lcom/flyme/systemui/facerecognition/FaceRecognitionController;->mContext:Landroid/content/Context;

    invoke-direct {p1, v0}, Lcom/meizu/keyguard/SystemModeUtils;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/flyme/systemui/facerecognition/FaceRecognitionController;->mSystemModeUtils:Lcom/meizu/keyguard/SystemModeUtils;

    .line 102
    iget-object p1, p0, Lcom/flyme/systemui/facerecognition/FaceRecognitionController;->mContext:Landroid/content/Context;

    const-string/jumbo v0, "vibrator"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Vibrator;

    iput-object p1, p0, Lcom/flyme/systemui/facerecognition/FaceRecognitionController;->mVibrator:Landroid/os/Vibrator;

    .line 103
    iget-object p1, p0, Lcom/flyme/systemui/facerecognition/FaceRecognitionController;->mContext:Landroid/content/Context;

    const-string v0, "power"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/PowerManager;

    iput-object p1, p0, Lcom/flyme/systemui/facerecognition/FaceRecognitionController;->mPM:Landroid/os/PowerManager;

    .line 104
    iget-object p1, p0, Lcom/flyme/systemui/facerecognition/FaceRecognitionController;->mPM:Landroid/os/PowerManager;

    invoke-virtual {p1}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result p1

    iput-boolean p1, p0, Lcom/flyme/systemui/facerecognition/FaceRecognitionController;->mScreenOn:Z

    .line 105
    iget-object p1, p0, Lcom/flyme/systemui/facerecognition/FaceRecognitionController;->mContext:Landroid/content/Context;

    const-string/jumbo v0, "window"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    iput-object p1, p0, Lcom/flyme/systemui/facerecognition/FaceRecognitionController;->mWindowManager:Landroid/view/WindowManager;

    .line 106
    new-instance p1, Lcom/flyme/systemui/facerecognition/manager/CameraWorkThreadManager;

    iget-object v0, p0, Lcom/flyme/systemui/facerecognition/FaceRecognitionController;->mStopCamerePerviewRunnable:Ljava/lang/Runnable;

    iget-object v1, p0, Lcom/flyme/systemui/facerecognition/FaceRecognitionController;->mStartCamerePerviewRunnable:Ljava/lang/Runnable;

    invoke-direct {p1, v0, v1}, Lcom/flyme/systemui/facerecognition/manager/CameraWorkThreadManager;-><init>(Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    iput-object p1, p0, Lcom/flyme/systemui/facerecognition/FaceRecognitionController;->mCameraWorkThreadManager:Lcom/flyme/systemui/facerecognition/manager/CameraWorkThreadManager;

    .line 107
    new-instance p1, Lcom/flyme/systemui/facerecognition/FaceRecognitionController$1;

    invoke-direct {p1, p0}, Lcom/flyme/systemui/facerecognition/FaceRecognitionController$1;-><init>(Lcom/flyme/systemui/facerecognition/FaceRecognitionController;)V

    iput-object p1, p0, Lcom/flyme/systemui/facerecognition/FaceRecognitionController;->mKeyguardUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 127
    new-instance p1, Landroid/os/HandlerThread;

    const-string v0, "KeyguardFaceRecognitionHandlerThread"

    invoke-direct {p1, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/flyme/systemui/facerecognition/FaceRecognitionController;->mFaceRecognitionHandlerThread:Landroid/os/HandlerThread;

    .line 128
    iget-object p1, p0, Lcom/flyme/systemui/facerecognition/FaceRecognitionController;->mFaceRecognitionHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    .line 129
    new-instance p1, Landroid/os/Handler;

    iget-object v0, p0, Lcom/flyme/systemui/facerecognition/FaceRecognitionController;->mFaceRecognitionHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/flyme/systemui/facerecognition/FaceRecognitionController;->mFaceRecognitionHandler:Landroid/os/Handler;

    .line 131
    iget-object p1, p0, Lcom/flyme/systemui/facerecognition/FaceRecognitionController;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object p1

    iget-object p0, p0, Lcom/flyme/systemui/facerecognition/FaceRecognitionController;->mKeyguardUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {p1, p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    return-void
.end method

.method static synthetic access$000(Lcom/flyme/systemui/facerecognition/FaceRecognitionController;)Landroid/content/Context;
    .registers 1

    .line 61
    iget-object p0, p0, Lcom/flyme/systemui/facerecognition/FaceRecognitionController;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$100(Lcom/flyme/systemui/facerecognition/FaceRecognitionController;)Lcom/flyme/systemui/facerecognition/KeyguardFaceRecognitionImpl;
    .registers 1

    .line 61
    iget-object p0, p0, Lcom/flyme/systemui/facerecognition/FaceRecognitionController;->mKeyguardFaceRecognitionImpl:Lcom/flyme/systemui/facerecognition/KeyguardFaceRecognitionImpl;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/flyme/systemui/facerecognition/FaceRecognitionController;)Z
    .registers 1

    .line 61
    iget-boolean p0, p0, Lcom/flyme/systemui/facerecognition/FaceRecognitionController;->mLinkToDeadSuccess:Z

    return p0
.end method

.method static synthetic access$1002(Lcom/flyme/systemui/facerecognition/FaceRecognitionController;Z)Z
    .registers 2

    .line 61
    iput-boolean p1, p0, Lcom/flyme/systemui/facerecognition/FaceRecognitionController;->mLinkToDeadSuccess:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/flyme/systemui/facerecognition/FaceRecognitionController;)Landroid/os/IBinder$DeathRecipient;
    .registers 1

    .line 61
    iget-object p0, p0, Lcom/flyme/systemui/facerecognition/FaceRecognitionController;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/flyme/systemui/facerecognition/FaceRecognitionController;)Lcom/meizu/facerecognition/manager/IFaceRecognitionManagerService;
    .registers 1

    .line 61
    iget-object p0, p0, Lcom/flyme/systemui/facerecognition/FaceRecognitionController;->mFaceRecognitionService:Lcom/meizu/facerecognition/manager/IFaceRecognitionManagerService;

    return-object p0
.end method

.method static synthetic access$1202(Lcom/flyme/systemui/facerecognition/FaceRecognitionController;Lcom/meizu/facerecognition/manager/IFaceRecognitionManagerService;)Lcom/meizu/facerecognition/manager/IFaceRecognitionManagerService;
    .registers 2

    .line 61
    iput-object p1, p0, Lcom/flyme/systemui/facerecognition/FaceRecognitionController;->mFaceRecognitionService:Lcom/meizu/facerecognition/manager/IFaceRecognitionManagerService;

    return-object p1
.end method

.method static synthetic access$1300(Lcom/flyme/systemui/facerecognition/FaceRecognitionController;)Lcom/flyme/systemui/facerecognition/manager/CameraWorkThreadManager;
    .registers 1

    .line 61
    iget-object p0, p0, Lcom/flyme/systemui/facerecognition/FaceRecognitionController;->mCameraWorkThreadManager:Lcom/flyme/systemui/facerecognition/manager/CameraWorkThreadManager;

    return-object p0
.end method

.method static synthetic access$200(Lcom/flyme/systemui/facerecognition/FaceRecognitionController;I)V
    .registers 2

    .line 61
    invoke-direct {p0, p1}, Lcom/flyme/systemui/facerecognition/FaceRecognitionController;->updateScreenBrightnessWhileLowLuminance(I)V

    return-void
.end method

.method static synthetic access$300(Lcom/flyme/systemui/facerecognition/FaceRecognitionController;)Z
    .registers 1

    .line 61
    iget-boolean p0, p0, Lcom/flyme/systemui/facerecognition/FaceRecognitionController;->mIsStartingCamera:Z

    return p0
.end method

.method static synthetic access$400(Lcom/flyme/systemui/facerecognition/FaceRecognitionController;)I
    .registers 1

    .line 61
    iget p0, p0, Lcom/flyme/systemui/facerecognition/FaceRecognitionController;->mTryCount:I

    return p0
.end method

.method static synthetic access$402(Lcom/flyme/systemui/facerecognition/FaceRecognitionController;I)I
    .registers 2

    .line 61
    iput p1, p0, Lcom/flyme/systemui/facerecognition/FaceRecognitionController;->mTryCount:I

    return p1
.end method

.method static synthetic access$408(Lcom/flyme/systemui/facerecognition/FaceRecognitionController;)I
    .registers 3

    .line 61
    iget v0, p0, Lcom/flyme/systemui/facerecognition/FaceRecognitionController;->mTryCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/flyme/systemui/facerecognition/FaceRecognitionController;->mTryCount:I

    return v0
.end method

.method static synthetic access$500(Lcom/flyme/systemui/facerecognition/FaceRecognitionController;)Landroid/os/Handler;
    .registers 1

    .line 61
    iget-object p0, p0, Lcom/flyme/systemui/facerecognition/FaceRecognitionController;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$600(Lcom/flyme/systemui/facerecognition/FaceRecognitionController;)V
    .registers 1

    .line 61
    invoke-direct {p0}, Lcom/flyme/systemui/facerecognition/FaceRecognitionController;->vibrate()V

    return-void
.end method

.method static synthetic access$702(Lcom/flyme/systemui/facerecognition/FaceRecognitionController;Z)Z
    .registers 2

    .line 61
    iput-boolean p1, p0, Lcom/flyme/systemui/facerecognition/FaceRecognitionController;->mFrozenMode:Z

    return p1
.end method

.method static synthetic access$800(Lcom/flyme/systemui/facerecognition/FaceRecognitionController;)Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;
    .registers 1

    .line 61
    iget-object p0, p0, Lcom/flyme/systemui/facerecognition/FaceRecognitionController;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    return-object p0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/flyme/systemui/facerecognition/FaceRecognitionController;
    .registers 2

    .line 135
    sget-object v0, Lcom/flyme/systemui/facerecognition/FaceRecognitionController;->mFaceRecognitionController:Lcom/flyme/systemui/facerecognition/FaceRecognitionController;

    if-nez v0, :cond_b

    .line 136
    new-instance v0, Lcom/flyme/systemui/facerecognition/FaceRecognitionController;

    invoke-direct {v0, p0}, Lcom/flyme/systemui/facerecognition/FaceRecognitionController;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/flyme/systemui/facerecognition/FaceRecognitionController;->mFaceRecognitionController:Lcom/flyme/systemui/facerecognition/FaceRecognitionController;

    .line 138
    :cond_b
    sget-object p0, Lcom/flyme/systemui/facerecognition/FaceRecognitionController;->mFaceRecognitionController:Lcom/flyme/systemui/facerecognition/FaceRecognitionController;

    return-object p0
.end method

.method private isFrozenMode()Z
    .registers 1

    .line 553
    iget-boolean p0, p0, Lcom/flyme/systemui/facerecognition/FaceRecognitionController;->mFrozenMode:Z

    return p0
.end method

.method private registerPowerManagerListener()V
    .registers 1

    return-void
.end method

.method private updateScreenBrightnessWhileLowLuminance(I)V
    .registers 4

    .line 588
    iget-object v0, p0, Lcom/flyme/systemui/facerecognition/FaceRecognitionController;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/flyme/systemui/facerecognition/FaceRecognitionController$7;

    invoke-direct {v1, p0, p1}, Lcom/flyme/systemui/facerecognition/FaceRecognitionController$7;-><init>(Lcom/flyme/systemui/facerecognition/FaceRecognitionController;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private vibrate()V
    .registers 8

    .line 323
    iget-object v0, p0, Lcom/flyme/systemui/facerecognition/FaceRecognitionController;->mVibrator:Landroid/os/Vibrator;

    if-nez v0, :cond_11

    .line 324
    iget-object v0, p0, Lcom/flyme/systemui/facerecognition/FaceRecognitionController;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "vibrator"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    iput-object v0, p0, Lcom/flyme/systemui/facerecognition/FaceRecognitionController;->mVibrator:Landroid/os/Vibrator;

    .line 326
    :cond_11
    iget-object v0, p0, Lcom/flyme/systemui/facerecognition/FaceRecognitionController;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual {v0}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result v0

    if-eqz v0, :cond_43

    .line 327
    invoke-static {}, Lcom/meizu/keyguard/FlymeFeatureUtil;->getInstance()Lcom/meizu/keyguard/FlymeFeatureUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/meizu/keyguard/FlymeFeatureUtil;->hasSupprot()Z

    move-result v0

    if-eqz v0, :cond_37

    .line 328
    iget-object v1, p0, Lcom/flyme/systemui/facerecognition/FaceRecognitionController;->mVibrator:Landroid/os/Vibrator;

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v2

    const/16 p0, 0x791b

    invoke-static {p0}, Landroid/os/VibrationEffect;->get(I)Landroid/os/VibrationEffect;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v3, "com.android.systemui"

    invoke-virtual/range {v1 .. v6}, Landroid/os/Vibrator;->vibrate(ILjava/lang/String;Landroid/os/VibrationEffect;Ljava/lang/String;Landroid/media/AudioAttributes;)V

    goto :goto_43

    .line 330
    :cond_37
    iget-object p0, p0, Lcom/flyme/systemui/facerecognition/FaceRecognitionController;->mVibrator:Landroid/os/Vibrator;

    const/4 v0, 0x3

    new-array v0, v0, [J

    fill-array-data v0, :array_44

    const/4 v1, -0x1

    invoke-virtual {p0, v0, v1}, Landroid/os/Vibrator;->vibrate([JI)V

    :cond_43
    :goto_43
    return-void

    :array_44
    .array-data 8
        0x64
        0x1e
        0x12c
    .end array-data
.end method


# virtual methods
.method public initKeyguardFaceRecognition()V
    .registers 4

    .line 142
    iget-object v0, p0, Lcom/flyme/systemui/facerecognition/FaceRecognitionController;->mContext:Landroid/content/Context;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    iget-object v2, p0, Lcom/flyme/systemui/facerecognition/FaceRecognitionController;->mFaceRecognitionHandler:Landroid/os/Handler;

    invoke-static {v0, v1, v2}, Lcom/flyme/systemui/facerecognition/KeyguardFaceRecognitionImpl;->getInstance(Landroid/content/Context;ILandroid/os/Handler;)Lcom/flyme/systemui/facerecognition/KeyguardFaceRecognitionImpl;

    move-result-object v0

    iput-object v0, p0, Lcom/flyme/systemui/facerecognition/FaceRecognitionController;->mKeyguardFaceRecognitionImpl:Lcom/flyme/systemui/facerecognition/KeyguardFaceRecognitionImpl;

    .line 143
    iget-object v0, p0, Lcom/flyme/systemui/facerecognition/FaceRecognitionController;->mKeyguardFaceRecognitionImpl:Lcom/flyme/systemui/facerecognition/KeyguardFaceRecognitionImpl;

    iget-object v1, p0, Lcom/flyme/systemui/facerecognition/FaceRecognitionController;->mStartCameraPerviewCallback:Lcom/flyme/systemui/facerecognition/FaceRecognitionController$CreateFaceStartCameraPerviewCallback;

    invoke-virtual {v0, v1}, Lcom/flyme/systemui/facerecognition/KeyguardFaceRecognitionImpl;->setStartCameraPreviewCallback(Lcom/flyme/systemui/facerecognition/KeyguardFaceRecognitionImpl$StartCameraPreviewCallback;)V

    .line 144
    invoke-direct {p0}, Lcom/flyme/systemui/facerecognition/FaceRecognitionController;->registerPowerManagerListener()V

    return-void
.end method

.method public isCameraPreviewStarting()Z
    .registers 1

    .line 486
    iget-boolean p0, p0, Lcom/flyme/systemui/facerecognition/FaceRecognitionController;->mIsStartingCamera:Z

    return p0
.end method

.method public onFaceAuthenticationTimeout()V
    .registers 3

    const/4 v0, 0x0

    .line 538
    :goto_1
    iget-object v1, p0, Lcom/flyme/systemui/facerecognition/FaceRecognitionController;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_17

    .line 539
    iget-object v1, p0, Lcom/flyme/systemui/facerecognition/FaceRecognitionController;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/flyme/systemui/facerecognition/IFaceRecognitionAnimationCallback;

    invoke-interface {v1}, Lcom/flyme/systemui/facerecognition/IFaceRecognitionAnimationCallback;->onFaceAuthenticationTimeout()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_17
    return-void
.end method

.method public pauseCameraPreview(Z)V
    .registers 2

    return-void
.end method

.method public postToStartCamera()V
    .registers 4

    .line 439
    iget-boolean v0, p0, Lcom/flyme/systemui/facerecognition/FaceRecognitionController;->mIsStartingCamera:Z

    const-string v1, "FaceRecognitionController"

    if-nez v0, :cond_1d

    iget-boolean v0, p0, Lcom/flyme/systemui/facerecognition/FaceRecognitionController;->mScreenOn:Z

    if-eqz v0, :cond_1d

    invoke-direct {p0}, Lcom/flyme/systemui/facerecognition/FaceRecognitionController;->isFrozenMode()Z

    move-result v0

    if-eqz v0, :cond_11

    goto :goto_1d

    :cond_11
    const/4 v0, 0x1

    .line 445
    iput-boolean v0, p0, Lcom/flyme/systemui/facerecognition/FaceRecognitionController;->mIsStartingCamera:Z

    const-string v0, "postToStartCamera "

    .line 446
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 447
    invoke-virtual {p0}, Lcom/flyme/systemui/facerecognition/FaceRecognitionController;->startCameraPreview()V

    return-void

    .line 440
    :cond_1d
    :goto_1d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not match to start camera, mIsStartingCamera"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/flyme/systemui/facerecognition/FaceRecognitionController;->mIsStartingCamera:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", screenOn "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/flyme/systemui/facerecognition/FaceRecognitionController;->mScreenOn:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", frozonmode "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/flyme/systemui/facerecognition/FaceRecognitionController;->mFrozenMode:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public postToStopCamera()V
    .registers 3

    .line 452
    iget-boolean v0, p0, Lcom/flyme/systemui/facerecognition/FaceRecognitionController;->mIsStartingCamera:Z

    if-nez v0, :cond_5

    return-void

    :cond_5
    const/4 v0, 0x0

    .line 455
    iput-boolean v0, p0, Lcom/flyme/systemui/facerecognition/FaceRecognitionController;->mIsStartingCamera:Z

    const-string v0, "FaceRecognitionController"

    const-string v1, "postToStopCamera"

    .line 456
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 457
    invoke-virtual {p0}, Lcom/flyme/systemui/facerecognition/FaceRecognitionController;->stopCameraPreview()V

    return-void
.end method

.method public registerCallback(Lcom/flyme/systemui/facerecognition/IFaceRecognitionAnimationCallback;)V
    .registers 4

    const/4 v0, 0x0

    .line 490
    :goto_1
    iget-object v1, p0, Lcom/flyme/systemui/facerecognition/FaceRecognitionController;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_23

    .line 491
    iget-object v1, p0, Lcom/flyme/systemui/facerecognition/FaceRecognitionController;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, p1, :cond_20

    .line 492
    new-instance p0, Ljava/lang/Exception;

    const-string p1, "Called by"

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    const-string p1, "FaceRecognitionController"

    const-string v0, "Object tried to add another callback"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void

    :cond_20
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 497
    :cond_23
    iget-object p0, p0, Lcom/flyme/systemui/facerecognition/FaceRecognitionController;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public removeCallback(Lcom/flyme/systemui/facerecognition/IFaceRecognitionAnimationCallback;)V
    .registers 2

    .line 557
    iget-object p0, p0, Lcom/flyme/systemui/facerecognition/FaceRecognitionController;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public resetAuthUnlockAttempt()V
    .registers 1

    .line 376
    iget-object p0, p0, Lcom/flyme/systemui/facerecognition/FaceRecognitionController;->mKeyguardFaceRecognitionImpl:Lcom/flyme/systemui/facerecognition/KeyguardFaceRecognitionImpl;

    if-eqz p0, :cond_7

    .line 377
    invoke-virtual {p0}, Lcom/flyme/systemui/facerecognition/KeyguardFaceRecognitionImpl;->resetAuthUnlockAttempt()V

    :cond_7
    return-void
.end method

.method public resetFaceImage()V
    .registers 3

    .line 528
    invoke-direct {p0}, Lcom/flyme/systemui/facerecognition/FaceRecognitionController;->isFrozenMode()Z

    move-result v0

    if-eqz v0, :cond_e

    const-string p0, "FaceRecognitionController"

    const-string v0, "isFrozenMode not reset face image"

    .line 529
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_e
    const/4 v0, 0x0

    .line 532
    :goto_f
    iget-object v1, p0, Lcom/flyme/systemui/facerecognition/FaceRecognitionController;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_25

    .line 533
    iget-object v1, p0, Lcom/flyme/systemui/facerecognition/FaceRecognitionController;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/flyme/systemui/facerecognition/IFaceRecognitionAnimationCallback;

    invoke-interface {v1}, Lcom/flyme/systemui/facerecognition/IFaceRecognitionAnimationCallback;->resetFaceImage()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_f

    :cond_25
    return-void
.end method

.method public setScreenOn(Z)V
    .registers 5

    .line 468
    iput-boolean p1, p0, Lcom/flyme/systemui/facerecognition/FaceRecognitionController;->mScreenOn:Z

    if-nez p1, :cond_28

    .line 470
    iget-object p1, p0, Lcom/flyme/systemui/facerecognition/FaceRecognitionController;->mHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/flyme/systemui/facerecognition/FaceRecognitionController;->mResetFaceImageRunnable:Ljava/lang/Runnable;

    iget-object v1, p0, Lcom/flyme/systemui/facerecognition/FaceRecognitionController;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/meizu/keyguard/livewallpaper/LiveWallpaperController;->getInstance(Landroid/content/Context;)Lcom/meizu/keyguard/livewallpaper/LiveWallpaperController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/meizu/keyguard/livewallpaper/LiveWallpaperController;->hasMeizuLiveWallpaper()Z

    move-result v1

    if-eqz v1, :cond_22

    .line 471
    iget-object p0, p0, Lcom/flyme/systemui/facerecognition/FaceRecognitionController;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/meizu/keyguard/livewallpaper/LiveWallpaperController;->getInstance(Landroid/content/Context;)Lcom/meizu/keyguard/livewallpaper/LiveWallpaperController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/meizu/keyguard/livewallpaper/LiveWallpaperController;->getLiveWallpaperAnimationTime()I

    move-result p0

    add-int/lit16 p0, p0, 0x96

    int-to-long v1, p0

    goto :goto_24

    :cond_22
    const-wide/16 v1, 0x0

    .line 470
    :goto_24
    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_2f

    .line 473
    :cond_28
    iget-object p1, p0, Lcom/flyme/systemui/facerecognition/FaceRecognitionController;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/flyme/systemui/facerecognition/FaceRecognitionController;->mResetFaceImageRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :goto_2f
    return-void
.end method

.method public setStatusBarKeyguardViewManager(Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;)V
    .registers 2

    .line 545
    iput-object p1, p0, Lcom/flyme/systemui/facerecognition/FaceRecognitionController;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    return-void
.end method

.method public startCameraPreview()V
    .registers 3

    .line 427
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "startCameraPerview Turn on! mIsStartCameraPerview :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/flyme/systemui/facerecognition/FaceRecognitionController;->mIsStartedCameraPerview:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FaceRecognitionController"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 428
    iget-object p0, p0, Lcom/flyme/systemui/facerecognition/FaceRecognitionController;->mCameraWorkThreadManager:Lcom/flyme/systemui/facerecognition/manager/CameraWorkThreadManager;

    invoke-virtual {p0}, Lcom/flyme/systemui/facerecognition/manager/CameraWorkThreadManager;->startCamera()V

    return-void
.end method

.method public startFailureAnimation()V
    .registers 3

    .line 501
    invoke-virtual {p0}, Lcom/flyme/systemui/facerecognition/FaceRecognitionController;->userActivity()V

    const/4 v0, 0x0

    .line 502
    :goto_4
    iget-object v1, p0, Lcom/flyme/systemui/facerecognition/FaceRecognitionController;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1a

    .line 503
    iget-object v1, p0, Lcom/flyme/systemui/facerecognition/FaceRecognitionController;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/flyme/systemui/facerecognition/IFaceRecognitionAnimationCallback;

    invoke-interface {v1}, Lcom/flyme/systemui/facerecognition/IFaceRecognitionAnimationCallback;->startFailureAnimation()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_1a
    return-void
.end method

.method public startFreezeAnimation()V
    .registers 3

    .line 508
    invoke-virtual {p0}, Lcom/flyme/systemui/facerecognition/FaceRecognitionController;->userActivity()V

    const/4 v0, 0x0

    .line 509
    :goto_4
    iget-object v1, p0, Lcom/flyme/systemui/facerecognition/FaceRecognitionController;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1a

    .line 510
    iget-object v1, p0, Lcom/flyme/systemui/facerecognition/FaceRecognitionController;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/flyme/systemui/facerecognition/IFaceRecognitionAnimationCallback;

    invoke-interface {v1}, Lcom/flyme/systemui/facerecognition/IFaceRecognitionAnimationCallback;->startFreezeAnimation()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_1a
    return-void
.end method

.method public startLoadingAnimation()V
    .registers 3

    const/4 v0, 0x0

    .line 522
    :goto_1
    iget-object v1, p0, Lcom/flyme/systemui/facerecognition/FaceRecognitionController;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_17

    .line 523
    iget-object v1, p0, Lcom/flyme/systemui/facerecognition/FaceRecognitionController;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/flyme/systemui/facerecognition/IFaceRecognitionAnimationCallback;

    invoke-interface {v1}, Lcom/flyme/systemui/facerecognition/IFaceRecognitionAnimationCallback;->startLoadingAnimation()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_17
    return-void
.end method

.method public startSuccessAnimation()V
    .registers 3

    .line 515
    invoke-virtual {p0}, Lcom/flyme/systemui/facerecognition/FaceRecognitionController;->userActivity()V

    const/4 v0, 0x0

    .line 516
    :goto_4
    iget-object v1, p0, Lcom/flyme/systemui/facerecognition/FaceRecognitionController;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1a

    .line 517
    iget-object v1, p0, Lcom/flyme/systemui/facerecognition/FaceRecognitionController;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/flyme/systemui/facerecognition/IFaceRecognitionAnimationCallback;

    invoke-interface {v1}, Lcom/flyme/systemui/facerecognition/IFaceRecognitionAnimationCallback;->startSuccessAnimation()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_1a
    return-void
.end method

.method public stopCameraPreview()V
    .registers 3

    const/4 v0, 0x1

    .line 432
    invoke-virtual {p0, v0}, Lcom/flyme/systemui/facerecognition/FaceRecognitionController;->pauseCameraPreview(Z)V

    .line 433
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "stopCameraPerview Turn off!mIsStartCameraPerview:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/flyme/systemui/facerecognition/FaceRecognitionController;->mIsStartedCameraPerview:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FaceRecognitionController"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 434
    iget-object p0, p0, Lcom/flyme/systemui/facerecognition/FaceRecognitionController;->mCameraWorkThreadManager:Lcom/flyme/systemui/facerecognition/manager/CameraWorkThreadManager;

    invoke-virtual {p0}, Lcom/flyme/systemui/facerecognition/manager/CameraWorkThreadManager;->stopCamera()V

    return-void
.end method

.method public userActivity()V
    .registers 4

    .line 549
    iget-object p0, p0, Lcom/flyme/systemui/facerecognition/FaceRecognitionController;->mPM:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/PowerManager;->userActivity(JZ)V

    return-void
.end method
