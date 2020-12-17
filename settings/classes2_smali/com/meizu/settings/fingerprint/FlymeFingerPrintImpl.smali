.class public Lcom/meizu/settings/fingerprint/FlymeFingerPrintImpl;
.super Ljava/lang/Object;
.source "FlymeFingerPrintImpl.java"

# interfaces
.implements Lcom/meizu/settings/fingerprint/FlymeIFingerPrint;


# instance fields
.field private mAuthCallback:Landroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;

.field private mCancellationSignal:Landroid/os/CancellationSignal;

.field private mContext:Landroid/content/Context;

.field private mDeleteFingerPrintCounts:Ljava/lang/Integer;

.field private mDeleteFingerprints:[I

.field private mDone:Z

.field private mEnrolling:Z

.field private mEnrollmentCallback:Landroid/hardware/fingerprint/FingerprintManager$EnrollmentCallback;

.field private mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

.field private mFingerprints:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/hardware/fingerprint/Fingerprint;",
            ">;"
        }
    .end annotation
.end field

.field protected mHandler:Landroid/os/Handler;

.field private mIsFirstEnrollProgress:Z

.field private mIsVerifying:Z

.field private mMaxFingerprintEnrollCounts:I

.field private mMaxFingerprintSupport:I

.field private mOnDeleteFingerpirntResult:Lcom/meizu/settings/fingerprint/FlymeIFingerPrint$OnDeleteFingerpirntResult;

.field private mPercent:I

.field private mTimeoutCount:I

.field private mTimer:Ljava/util/Timer;

.field private mTimerTask:Ljava/util/TimerTask;

.field private mTipsFingerSideCount:I

.field private mUserId:I

.field private mVibrator:Landroid/os/Vibrator;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 56
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/meizu/settings/fingerprint/FlymeFingerPrintImpl;-><init>(Landroid/content/Context;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .registers 5

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 38
    iput-object v0, p0, Lcom/meizu/settings/fingerprint/FlymeFingerPrintImpl;->mTimer:Ljava/util/Timer;

    .line 39
    iput-object v0, p0, Lcom/meizu/settings/fingerprint/FlymeFingerPrintImpl;->mTimerTask:Ljava/util/TimerTask;

    .line 47
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    iput v0, p0, Lcom/meizu/settings/fingerprint/FlymeFingerPrintImpl;->mUserId:I

    const v0, 0x7fffffff

    .line 50
    iput v0, p0, Lcom/meizu/settings/fingerprint/FlymeFingerPrintImpl;->mTipsFingerSideCount:I

    .line 249
    new-instance v0, Lcom/meizu/settings/fingerprint/FlymeFingerPrintImpl$1;

    invoke-direct {v0, p0}, Lcom/meizu/settings/fingerprint/FlymeFingerPrintImpl$1;-><init>(Lcom/meizu/settings/fingerprint/FlymeFingerPrintImpl;)V

    iput-object v0, p0, Lcom/meizu/settings/fingerprint/FlymeFingerPrintImpl;->mEnrollmentCallback:Landroid/hardware/fingerprint/FingerprintManager$EnrollmentCallback;

    .line 364
    new-instance v0, Lcom/meizu/settings/fingerprint/FlymeFingerPrintImpl$2;

    invoke-direct {v0, p0}, Lcom/meizu/settings/fingerprint/FlymeFingerPrintImpl$2;-><init>(Lcom/meizu/settings/fingerprint/FlymeFingerPrintImpl;)V

    iput-object v0, p0, Lcom/meizu/settings/fingerprint/FlymeFingerPrintImpl;->mAuthCallback:Landroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;

    .line 60
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/settings/fingerprint/FlymeFingerPrintImpl;->mContext:Landroid/content/Context;

    .line 61
    iget-object v0, p0, Lcom/meizu/settings/fingerprint/FlymeFingerPrintImpl;->mContext:Landroid/content/Context;

    const-string v1, "fingerprint"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/fingerprint/FingerprintManager;

    iput-object v0, p0, Lcom/meizu/settings/fingerprint/FlymeFingerPrintImpl;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    .line 63
    iput p2, p0, Lcom/meizu/settings/fingerprint/FlymeFingerPrintImpl;->mUserId:I

    .line 64
    iget-object p2, p0, Lcom/meizu/settings/fingerprint/FlymeFingerPrintImpl;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x10e005c

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p2

    iput p2, p0, Lcom/meizu/settings/fingerprint/FlymeFingerPrintImpl;->mMaxFingerprintSupport:I

    const-string p2, "vibrator"

    .line 66
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Vibrator;

    iput-object p1, p0, Lcom/meizu/settings/fingerprint/FlymeFingerPrintImpl;->mVibrator:Landroid/os/Vibrator;

    .line 67
    iget-object p1, p0, Lcom/meizu/settings/fingerprint/FlymeFingerPrintImpl;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    iget p0, p0, Lcom/meizu/settings/fingerprint/FlymeFingerPrintImpl;->mUserId:I

    invoke-virtual {p1, p0}, Landroid/hardware/fingerprint/FingerprintManager;->setActiveUser(I)V

    return-void
.end method

.method static synthetic access$000(Lcom/meizu/settings/fingerprint/FlymeFingerPrintImpl;)Z
    .registers 1

    .line 26
    iget-boolean p0, p0, Lcom/meizu/settings/fingerprint/FlymeFingerPrintImpl;->mIsFirstEnrollProgress:Z

    return p0
.end method

.method static synthetic access$002(Lcom/meizu/settings/fingerprint/FlymeFingerPrintImpl;Z)Z
    .registers 2

    .line 26
    iput-boolean p1, p0, Lcom/meizu/settings/fingerprint/FlymeFingerPrintImpl;->mIsFirstEnrollProgress:Z

    return p1
.end method

.method static synthetic access$100(Lcom/meizu/settings/fingerprint/FlymeFingerPrintImpl;)I
    .registers 1

    .line 26
    iget p0, p0, Lcom/meizu/settings/fingerprint/FlymeFingerPrintImpl;->mMaxFingerprintEnrollCounts:I

    return p0
.end method

.method static synthetic access$1000(Lcom/meizu/settings/fingerprint/FlymeFingerPrintImpl;I)V
    .registers 2

    .line 26
    invoke-direct {p0, p1}, Lcom/meizu/settings/fingerprint/FlymeFingerPrintImpl;->sendAuthenticationLockoutMessage(I)V

    return-void
.end method

.method static synthetic access$102(Lcom/meizu/settings/fingerprint/FlymeFingerPrintImpl;I)I
    .registers 2

    .line 26
    iput p1, p0, Lcom/meizu/settings/fingerprint/FlymeFingerPrintImpl;->mMaxFingerprintEnrollCounts:I

    return p1
.end method

.method static synthetic access$1100(Lcom/meizu/settings/fingerprint/FlymeFingerPrintImpl;)V
    .registers 1

    .line 26
    invoke-direct {p0}, Lcom/meizu/settings/fingerprint/FlymeFingerPrintImpl;->sendAuthenticationPermanentLockoutMessage()V

    return-void
.end method

.method static synthetic access$1200(Lcom/meizu/settings/fingerprint/FlymeFingerPrintImpl;)V
    .registers 1

    .line 26
    invoke-direct {p0}, Lcom/meizu/settings/fingerprint/FlymeFingerPrintImpl;->cancelTimer()V

    return-void
.end method

.method static synthetic access$1300(Lcom/meizu/settings/fingerprint/FlymeFingerPrintImpl;)Ljava/lang/Integer;
    .registers 1

    .line 26
    iget-object p0, p0, Lcom/meizu/settings/fingerprint/FlymeFingerPrintImpl;->mDeleteFingerPrintCounts:Ljava/lang/Integer;

    return-object p0
.end method

.method static synthetic access$1302(Lcom/meizu/settings/fingerprint/FlymeFingerPrintImpl;Ljava/lang/Integer;)Ljava/lang/Integer;
    .registers 2

    .line 26
    iput-object p1, p0, Lcom/meizu/settings/fingerprint/FlymeFingerPrintImpl;->mDeleteFingerPrintCounts:Ljava/lang/Integer;

    return-object p1
.end method

.method static synthetic access$1400(Lcom/meizu/settings/fingerprint/FlymeFingerPrintImpl;)Lcom/meizu/settings/fingerprint/FlymeIFingerPrint$OnDeleteFingerpirntResult;
    .registers 1

    .line 26
    iget-object p0, p0, Lcom/meizu/settings/fingerprint/FlymeFingerPrintImpl;->mOnDeleteFingerpirntResult:Lcom/meizu/settings/fingerprint/FlymeIFingerPrint$OnDeleteFingerpirntResult;

    return-object p0
.end method

.method static synthetic access$1500(Lcom/meizu/settings/fingerprint/FlymeFingerPrintImpl;)[I
    .registers 1

    .line 26
    iget-object p0, p0, Lcom/meizu/settings/fingerprint/FlymeFingerPrintImpl;->mDeleteFingerprints:[I

    return-object p0
.end method

.method static synthetic access$1600(Lcom/meizu/settings/fingerprint/FlymeFingerPrintImpl;I)V
    .registers 2

    .line 26
    invoke-direct {p0, p1}, Lcom/meizu/settings/fingerprint/FlymeFingerPrintImpl;->deleteFingerPrint(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/meizu/settings/fingerprint/FlymeFingerPrintImpl;)I
    .registers 1

    .line 26
    iget p0, p0, Lcom/meizu/settings/fingerprint/FlymeFingerPrintImpl;->mTipsFingerSideCount:I

    return p0
.end method

.method static synthetic access$202(Lcom/meizu/settings/fingerprint/FlymeFingerPrintImpl;I)I
    .registers 2

    .line 26
    iput p1, p0, Lcom/meizu/settings/fingerprint/FlymeFingerPrintImpl;->mTipsFingerSideCount:I

    return p1
.end method

.method static synthetic access$300(Lcom/meizu/settings/fingerprint/FlymeFingerPrintImpl;)I
    .registers 1

    .line 26
    iget p0, p0, Lcom/meizu/settings/fingerprint/FlymeFingerPrintImpl;->mPercent:I

    return p0
.end method

.method static synthetic access$302(Lcom/meizu/settings/fingerprint/FlymeFingerPrintImpl;I)I
    .registers 2

    .line 26
    iput p1, p0, Lcom/meizu/settings/fingerprint/FlymeFingerPrintImpl;->mPercent:I

    return p1
.end method

.method static synthetic access$400(Lcom/meizu/settings/fingerprint/FlymeFingerPrintImpl;)Z
    .registers 1

    .line 26
    iget-boolean p0, p0, Lcom/meizu/settings/fingerprint/FlymeFingerPrintImpl;->mDone:Z

    return p0
.end method

.method static synthetic access$402(Lcom/meizu/settings/fingerprint/FlymeFingerPrintImpl;Z)Z
    .registers 2

    .line 26
    iput-boolean p1, p0, Lcom/meizu/settings/fingerprint/FlymeFingerPrintImpl;->mDone:Z

    return p1
.end method

.method static synthetic access$500(Lcom/meizu/settings/fingerprint/FlymeFingerPrintImpl;I)Z
    .registers 2

    .line 26
    invoke-direct {p0, p1}, Lcom/meizu/settings/fingerprint/FlymeFingerPrintImpl;->isMessageNeedToHandled(I)Z

    move-result p0

    return p0
.end method

.method static synthetic access$600(Lcom/meizu/settings/fingerprint/FlymeFingerPrintImpl;)V
    .registers 1

    .line 26
    invoke-direct {p0}, Lcom/meizu/settings/fingerprint/FlymeFingerPrintImpl;->cancelEnrollment()V

    return-void
.end method

.method static synthetic access$700(Lcom/meizu/settings/fingerprint/FlymeFingerPrintImpl;)V
    .registers 1

    .line 26
    invoke-direct {p0}, Lcom/meizu/settings/fingerprint/FlymeFingerPrintImpl;->sendAuthenticationFailedMessage()V

    return-void
.end method

.method static synthetic access$800(Lcom/meizu/settings/fingerprint/FlymeFingerPrintImpl;)I
    .registers 1

    .line 26
    iget p0, p0, Lcom/meizu/settings/fingerprint/FlymeFingerPrintImpl;->mTimeoutCount:I

    return p0
.end method

.method static synthetic access$802(Lcom/meizu/settings/fingerprint/FlymeFingerPrintImpl;I)I
    .registers 2

    .line 26
    iput p1, p0, Lcom/meizu/settings/fingerprint/FlymeFingerPrintImpl;->mTimeoutCount:I

    return p1
.end method

.method static synthetic access$810(Lcom/meizu/settings/fingerprint/FlymeFingerPrintImpl;)I
    .registers 3

    .line 26
    iget v0, p0, Lcom/meizu/settings/fingerprint/FlymeFingerPrintImpl;->mTimeoutCount:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/meizu/settings/fingerprint/FlymeFingerPrintImpl;->mTimeoutCount:I

    return v0
.end method

.method static synthetic access$900(Lcom/meizu/settings/fingerprint/FlymeFingerPrintImpl;)Landroid/hardware/fingerprint/FingerprintManager;
    .registers 1

    .line 26
    iget-object p0, p0, Lcom/meizu/settings/fingerprint/FlymeFingerPrintImpl;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    return-object p0
.end method

.method private cancelEnrollment()V
    .registers 2

    .line 226
    iget-boolean v0, p0, Lcom/meizu/settings/fingerprint/FlymeFingerPrintImpl;->mEnrolling:Z

    if-eqz v0, :cond_c

    .line 227
    iget-object v0, p0, Lcom/meizu/settings/fingerprint/FlymeFingerPrintImpl;->mCancellationSignal:Landroid/os/CancellationSignal;

    invoke-virtual {v0}, Landroid/os/CancellationSignal;->cancel()V

    const/4 v0, 0x0

    .line 228
    iput-boolean v0, p0, Lcom/meizu/settings/fingerprint/FlymeFingerPrintImpl;->mEnrolling:Z

    :cond_c
    return-void
.end method

.method private cancelTimer()V
    .registers 3

    const-string v0, "FlymeFingerPrintImpl"

    const-string v1, "cancelTimer."

    .line 441
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 443
    iget-object v0, p0, Lcom/meizu/settings/fingerprint/FlymeFingerPrintImpl;->mTimer:Ljava/util/Timer;

    const/4 v1, 0x0

    if-eqz v0, :cond_11

    .line 444
    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 445
    iput-object v1, p0, Lcom/meizu/settings/fingerprint/FlymeFingerPrintImpl;->mTimer:Ljava/util/Timer;

    .line 447
    :cond_11
    iget-object v0, p0, Lcom/meizu/settings/fingerprint/FlymeFingerPrintImpl;->mTimerTask:Ljava/util/TimerTask;

    if-eqz v0, :cond_1a

    .line 448
    invoke-virtual {v0}, Ljava/util/TimerTask;->cancel()Z

    .line 449
    iput-object v1, p0, Lcom/meizu/settings/fingerprint/FlymeFingerPrintImpl;->mTimerTask:Ljava/util/TimerTask;

    :cond_1a
    return-void
.end method

.method private createRemovalCallback()Landroid/hardware/fingerprint/FingerprintManager$RemovalCallback;
    .registers 2

    .line 483
    new-instance v0, Lcom/meizu/settings/fingerprint/FlymeFingerPrintImpl$4;

    invoke-direct {v0, p0}, Lcom/meizu/settings/fingerprint/FlymeFingerPrintImpl$4;-><init>(Lcom/meizu/settings/fingerprint/FlymeFingerPrintImpl;)V

    return-object v0
.end method

.method private deleteFingerPrint(I)V
    .registers 4

    .line 192
    invoke-direct {p0, p1}, Lcom/meizu/settings/fingerprint/FlymeFingerPrintImpl;->getFingerprintById(I)Landroid/hardware/fingerprint/Fingerprint;

    move-result-object v0

    if-eqz v0, :cond_15

    .line 193
    iget-object v0, p0, Lcom/meizu/settings/fingerprint/FlymeFingerPrintImpl;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-direct {p0, p1}, Lcom/meizu/settings/fingerprint/FlymeFingerPrintImpl;->getFingerprintById(I)Landroid/hardware/fingerprint/Fingerprint;

    move-result-object p1

    iget v1, p0, Lcom/meizu/settings/fingerprint/FlymeFingerPrintImpl;->mUserId:I

    invoke-direct {p0}, Lcom/meizu/settings/fingerprint/FlymeFingerPrintImpl;->createRemovalCallback()Landroid/hardware/fingerprint/FingerprintManager$RemovalCallback;

    move-result-object p0

    invoke-virtual {v0, p1, v1, p0}, Landroid/hardware/fingerprint/FingerprintManager;->remove(Landroid/hardware/fingerprint/Fingerprint;ILandroid/hardware/fingerprint/FingerprintManager$RemovalCallback;)V

    :cond_15
    return-void
.end method

.method private getFingerprintById(I)Landroid/hardware/fingerprint/Fingerprint;
    .registers 4

    .line 182
    iget-object p0, p0, Lcom/meizu/settings/fingerprint/FlymeFingerPrintImpl;->mFingerprints:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_6
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_19

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/fingerprint/Fingerprint;

    .line 183
    invoke-virtual {v0}, Landroid/hardware/fingerprint/Fingerprint;->getBiometricId()I

    move-result v1

    if-ne v1, p1, :cond_6

    goto :goto_1a

    :cond_19
    const/4 v0, 0x0

    :goto_1a
    return-object v0
.end method

.method private isMessageNeedToHandled(I)Z
    .registers 2

    const/16 p0, 0x3e9

    if-eq p1, p0, :cond_e

    const/16 p0, 0x3ea

    if-eq p1, p0, :cond_e

    const/16 p0, 0x3eb

    if-eq p1, p0, :cond_e

    const/4 p0, 0x1

    goto :goto_f

    :cond_e
    const/4 p0, 0x0

    :goto_f
    return p0
.end method

.method private sendAuthenticationFailedMessage()V
    .registers 4

    .line 470
    iget-object v0, p0, Lcom/meizu/settings/fingerprint/FlymeFingerPrintImpl;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_5

    return-void

    .line 475
    :cond_5
    iget-object v0, p0, Lcom/meizu/settings/fingerprint/FlymeFingerPrintImpl;->mVibrator:Landroid/os/Vibrator;

    const/4 v1, 0x3

    new-array v1, v1, [J

    fill-array-data v1, :array_1e

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate([JI)V

    .line 477
    iget-object p0, p0, Lcom/meizu/settings/fingerprint/FlymeFingerPrintImpl;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x1

    const/16 v1, 0x103

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    :array_1e
    .array-data 8
        0x64
        0x1e
        0x12c
    .end array-data
.end method

.method private sendAuthenticationLockoutMessage(I)V
    .registers 5

    .line 454
    iget-object v0, p0, Lcom/meizu/settings/fingerprint/FlymeFingerPrintImpl;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_5

    return-void

    :cond_5
    const/4 v1, 0x1

    const/16 v2, 0x104

    .line 456
    invoke-virtual {v0, v1, v2, p1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 459
    invoke-direct {p0}, Lcom/meizu/settings/fingerprint/FlymeFingerPrintImpl;->startCountDownTimer()V

    return-void
.end method

.method private sendAuthenticationPermanentLockoutMessage()V
    .registers 4

    .line 463
    iget-object p0, p0, Lcom/meizu/settings/fingerprint/FlymeFingerPrintImpl;->mHandler:Landroid/os/Handler;

    if-nez p0, :cond_5

    return-void

    :cond_5
    const/4 v0, 0x1

    const/16 v1, 0x9

    const/4 v2, 0x0

    .line 465
    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method private startAuthenticate()V
    .registers 9

    .line 337
    new-instance v0, Landroid/os/CancellationSignal;

    invoke-direct {v0}, Landroid/os/CancellationSignal;-><init>()V

    iput-object v0, p0, Lcom/meizu/settings/fingerprint/FlymeFingerPrintImpl;->mCancellationSignal:Landroid/os/CancellationSignal;

    .line 338
    iget-object v1, p0, Lcom/meizu/settings/fingerprint/FlymeFingerPrintImpl;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    iget-object v3, p0, Lcom/meizu/settings/fingerprint/FlymeFingerPrintImpl;->mCancellationSignal:Landroid/os/CancellationSignal;

    iget-object v5, p0, Lcom/meizu/settings/fingerprint/FlymeFingerPrintImpl;->mAuthCallback:Landroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;

    iget v7, p0, Lcom/meizu/settings/fingerprint/FlymeFingerPrintImpl;->mUserId:I

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v7}, Landroid/hardware/fingerprint/FingerprintManager;->authenticate(Landroid/hardware/fingerprint/FingerprintManager$CryptoObject;Landroid/os/CancellationSignal;ILandroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;Landroid/os/Handler;I)V

    return-void
.end method

.method private startCountDownTimer()V
    .registers 8

    .line 419
    iget-object v0, p0, Lcom/meizu/settings/fingerprint/FlymeFingerPrintImpl;->mTimer:Ljava/util/Timer;

    if-nez v0, :cond_b

    .line 420
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/meizu/settings/fingerprint/FlymeFingerPrintImpl;->mTimer:Ljava/util/Timer;

    .line 421
    :cond_b
    iget-object v0, p0, Lcom/meizu/settings/fingerprint/FlymeFingerPrintImpl;->mTimerTask:Ljava/util/TimerTask;

    if-nez v0, :cond_21

    .line 422
    new-instance v0, Lcom/meizu/settings/fingerprint/FlymeFingerPrintImpl$3;

    invoke-direct {v0, p0}, Lcom/meizu/settings/fingerprint/FlymeFingerPrintImpl$3;-><init>(Lcom/meizu/settings/fingerprint/FlymeFingerPrintImpl;)V

    iput-object v0, p0, Lcom/meizu/settings/fingerprint/FlymeFingerPrintImpl;->mTimerTask:Ljava/util/TimerTask;

    .line 436
    iget-object v1, p0, Lcom/meizu/settings/fingerprint/FlymeFingerPrintImpl;->mTimer:Ljava/util/Timer;

    iget-object v2, p0, Lcom/meizu/settings/fingerprint/FlymeFingerPrintImpl;->mTimerTask:Ljava/util/TimerTask;

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x3e8

    invoke-virtual/range {v1 .. v6}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    :cond_21
    return-void
.end method


# virtual methods
.method public deleteFingerPrints(Lcom/meizu/settings/fingerprint/FlymeIFingerPrint$OnDeleteFingerpirntResult;[I)V
    .registers 5

    .line 199
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " deleteFingerPrints, ids.length: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FlymeFingerPrintImpl"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    iput-object p1, p0, Lcom/meizu/settings/fingerprint/FlymeFingerPrintImpl;->mOnDeleteFingerpirntResult:Lcom/meizu/settings/fingerprint/FlymeIFingerPrint$OnDeleteFingerpirntResult;

    .line 202
    iput-object p2, p0, Lcom/meizu/settings/fingerprint/FlymeFingerPrintImpl;->mDeleteFingerprints:[I

    .line 203
    array-length p1, p2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/meizu/settings/fingerprint/FlymeFingerPrintImpl;->mDeleteFingerPrintCounts:Ljava/lang/Integer;

    .line 204
    iget-object p1, p0, Lcom/meizu/settings/fingerprint/FlymeFingerPrintImpl;->mDeleteFingerPrintCounts:Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/meizu/settings/fingerprint/FlymeFingerPrintImpl;->mDeleteFingerPrintCounts:Ljava/lang/Integer;

    .line 205
    iget-object p1, p0, Lcom/meizu/settings/fingerprint/FlymeFingerPrintImpl;->mDeleteFingerprints:[I

    iget-object v0, p0, Lcom/meizu/settings/fingerprint/FlymeFingerPrintImpl;->mDeleteFingerPrintCounts:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    aget p1, p1, v0

    invoke-direct {p0, p1}, Lcom/meizu/settings/fingerprint/FlymeFingerPrintImpl;->deleteFingerPrint(I)V

    .line 206
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, " deleteFingerPrints  id  "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/meizu/settings/fingerprint/FlymeFingerPrintImpl;->mDeleteFingerPrintCounts:Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    aget p0, p2, p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public endEnroll()V
    .registers 2

    .line 136
    invoke-direct {p0}, Lcom/meizu/settings/fingerprint/FlymeFingerPrintImpl;->cancelEnrollment()V

    const/4 v0, 0x0

    .line 137
    iput-object v0, p0, Lcom/meizu/settings/fingerprint/FlymeFingerPrintImpl;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x0

    .line 138
    iput-boolean v0, p0, Lcom/meizu/settings/fingerprint/FlymeFingerPrintImpl;->mIsFirstEnrollProgress:Z

    return-void
.end method

.method public endVerify()V
    .registers 3

    .line 155
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "endVerify...., mIsVerifying:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/meizu/settings/fingerprint/FlymeFingerPrintImpl;->mIsVerifying:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FlymeFingerPrintImpl"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    iget-boolean v0, p0, Lcom/meizu/settings/fingerprint/FlymeFingerPrintImpl;->mIsVerifying:Z

    if-nez v0, :cond_1d

    return-void

    :cond_1d
    const/4 v0, 0x0

    .line 159
    iput-boolean v0, p0, Lcom/meizu/settings/fingerprint/FlymeFingerPrintImpl;->mIsVerifying:Z

    .line 160
    iget-object v0, p0, Lcom/meizu/settings/fingerprint/FlymeFingerPrintImpl;->mCancellationSignal:Landroid/os/CancellationSignal;

    invoke-virtual {v0}, Landroid/os/CancellationSignal;->cancel()V

    const/4 v0, 0x0

    .line 161
    iput-object v0, p0, Lcom/meizu/settings/fingerprint/FlymeFingerPrintImpl;->mHandler:Landroid/os/Handler;

    .line 162
    invoke-direct {p0}, Lcom/meizu/settings/fingerprint/FlymeFingerPrintImpl;->cancelTimer()V

    return-void
.end method

.method public getEnrollChallenge()J
    .registers 3

    .line 131
    iget-object p0, p0, Lcom/meizu/settings/fingerprint/FlymeFingerPrintImpl;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {p0}, Landroid/hardware/fingerprint/FingerprintManager;->preEnroll()J

    move-result-wide v0

    return-wide v0
.end method

.method public getFingerPrintCount()I
    .registers 1

    .line 211
    invoke-virtual {p0}, Lcom/meizu/settings/fingerprint/FlymeFingerPrintImpl;->getIds()[I

    move-result-object p0

    array-length p0, p0

    return p0
.end method

.method public getFingerPrintName(I)Ljava/lang/String;
    .registers 2

    .line 222
    invoke-direct {p0, p1}, Lcom/meizu/settings/fingerprint/FlymeFingerPrintImpl;->getFingerprintById(I)Landroid/hardware/fingerprint/Fingerprint;

    move-result-object p0

    invoke-virtual {p0}, Landroid/hardware/fingerprint/Fingerprint;->getName()Ljava/lang/CharSequence;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getIds()[I
    .registers 6

    .line 167
    iget-object v0, p0, Lcom/meizu/settings/fingerprint/FlymeFingerPrintImpl;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    iget v1, p0, Lcom/meizu/settings/fingerprint/FlymeFingerPrintImpl;->mUserId:I

    invoke-virtual {v0, v1}, Landroid/hardware/fingerprint/FingerprintManager;->getEnrolledFingerprints(I)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/settings/fingerprint/FlymeFingerPrintImpl;->mFingerprints:Ljava/util/List;

    .line 168
    iget-object v0, p0, Lcom/meizu/settings/fingerprint/FlymeFingerPrintImpl;->mFingerprints:Ljava/util/List;

    const/4 v1, 0x0

    if-nez v0, :cond_12

    new-array p0, v1, [I

    return-object p0

    .line 170
    :cond_12
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 171
    new-array v2, v0, [I

    :goto_18
    if-ge v1, v0, :cond_43

    .line 173
    iget-object v3, p0, Lcom/meizu/settings/fingerprint/FlymeFingerPrintImpl;->mFingerprints:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/fingerprint/Fingerprint;

    invoke-virtual {v3}, Landroid/hardware/fingerprint/Fingerprint;->getBiometricId()I

    move-result v3

    aput v3, v2, v1

    .line 174
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "fp id:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v4, v2, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "FlymeFingerPrintImpl"

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v1, v1, 0x1

    goto :goto_18

    :cond_43
    return-object v2
.end method

.method public getMaxFingerprintSupport()I
    .registers 1

    .line 234
    iget p0, p0, Lcom/meizu/settings/fingerprint/FlymeFingerPrintImpl;->mMaxFingerprintSupport:I

    return p0
.end method

.method public getTipsEnrollFingerSideCount()I
    .registers 1

    .line 239
    iget p0, p0, Lcom/meizu/settings/fingerprint/FlymeFingerPrintImpl;->mTipsFingerSideCount:I

    return p0
.end method

.method public isAppUnlockWithFingerprintEnabled()Z
    .registers 4

    .line 78
    iget-object v0, p0, Lcom/meizu/settings/fingerprint/FlymeFingerPrintImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget p0, p0, Lcom/meizu/settings/fingerprint/FlymeFingerPrintImpl;->mUserId:I

    const/4 v1, 0x0

    const-string v2, "mz_fingerprint_use_app_unlock"

    invoke-static {v0, v2, v1, p0}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_13

    goto :goto_14

    :cond_13
    move v0, v1

    :goto_14
    return v0
.end method

.method public isDocumentUnlockWithFingerprintEnabled()Z
    .registers 4

    .line 84
    iget-object v0, p0, Lcom/meizu/settings/fingerprint/FlymeFingerPrintImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget p0, p0, Lcom/meizu/settings/fingerprint/FlymeFingerPrintImpl;->mUserId:I

    const/4 v1, 0x0

    const-string v2, "mz_fingerprint_use_document_unlock"

    invoke-static {v0, v2, v1, p0}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_13

    goto :goto_14

    :cond_13
    move v0, v1

    :goto_14
    return v0
.end method

.method public isScreenUnlockWithFingerprintEnabled()Z
    .registers 4

    .line 72
    iget-object v0, p0, Lcom/meizu/settings/fingerprint/FlymeFingerPrintImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget p0, p0, Lcom/meizu/settings/fingerprint/FlymeFingerPrintImpl;->mUserId:I

    const/4 v1, 0x0

    const-string v2, "mz_fingerprint_use_unlock"

    invoke-static {v0, v2, v1, p0}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_13

    goto :goto_14

    :cond_13
    move v0, v1

    :goto_14
    return v0
.end method

.method public isVerifying()Z
    .registers 1

    .line 524
    iget-boolean p0, p0, Lcom/meizu/settings/fingerprint/FlymeFingerPrintImpl;->mIsVerifying:Z

    return p0
.end method

.method public modifyFingerPrintName(ILjava/lang/String;)Z
    .registers 4

    .line 216
    iget-object v0, p0, Lcom/meizu/settings/fingerprint/FlymeFingerPrintImpl;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    iget p0, p0, Lcom/meizu/settings/fingerprint/FlymeFingerPrintImpl;->mUserId:I

    invoke-virtual {v0, p1, p0, p2}, Landroid/hardware/fingerprint/FingerprintManager;->rename(IILjava/lang/String;)V

    const/4 p0, 0x1

    return p0
.end method

.method public release()V
    .registers 1

    return-void
.end method

.method public releaseFingerprintLockout([B)V
    .registers 4

    const-string v0, "FlymeFingerPrintImpl"

    if-eqz p1, :cond_d

    .line 351
    array-length v1, p1

    if-lez v1, :cond_d

    .line 352
    iget-object p0, p0, Lcom/meizu/settings/fingerprint/FlymeFingerPrintImpl;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {p0, p1}, Landroid/hardware/fingerprint/FingerprintManager;->resetTimeout([B)V

    goto :goto_21

    .line 354
    :cond_d
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "verifyToken:"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_21
    const-string p0, "releaseFingerprintLockout!"

    .line 357
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setAppUnlockWithFingerprintEnable(Z)V
    .registers 4

    .line 101
    iget-object v0, p0, Lcom/meizu/settings/fingerprint/FlymeFingerPrintImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 102
    iget p0, p0, Lcom/meizu/settings/fingerprint/FlymeFingerPrintImpl;->mUserId:I

    const-string v1, "mz_fingerprint_use_app_unlock"

    .line 101
    invoke-static {v0, v1, p1, p0}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    return-void
.end method

.method public setDocumentUnlockWithFingerprintEnable(Z)V
    .registers 4

    .line 107
    iget-object v0, p0, Lcom/meizu/settings/fingerprint/FlymeFingerPrintImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 108
    iget p0, p0, Lcom/meizu/settings/fingerprint/FlymeFingerPrintImpl;->mUserId:I

    const-string v1, "mz_fingerprint_use_document_unlock"

    .line 107
    invoke-static {v0, v1, p1, p0}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    return-void
.end method

.method public setFODIconVisiable(Z)V
    .registers 2

    .line 245
    iget-object p0, p0, Lcom/meizu/settings/fingerprint/FlymeFingerPrintImpl;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {p0, p1}, Landroid/hardware/fingerprint/FingerprintManager;->setFingerprintIconVisible(Z)V

    return-void
.end method

.method public setScreenUnlockWithFingerprintEnable(Z)V
    .registers 4

    .line 90
    iget-object v0, p0, Lcom/meizu/settings/fingerprint/FlymeFingerPrintImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 91
    iget p0, p0, Lcom/meizu/settings/fingerprint/FlymeFingerPrintImpl;->mUserId:I

    const-string v1, "mz_fingerprint_use_unlock"

    .line 90
    invoke-static {v0, v1, p1, p0}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 92
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, " setScreenUnlockWithFingerprintEnable  opend "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "FlymeFingerPrintImpl"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_28

    const-string p0, "1"

    goto :goto_2a

    :cond_28
    const-string p0, "0"

    :goto_2a
    const-string p1, "persist.sys.meizu.fingerprint"

    .line 95
    invoke-static {p1, p0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public startEnroll(Landroid/os/Handler;[B)V
    .registers 11

    .line 113
    iput-object p1, p0, Lcom/meizu/settings/fingerprint/FlymeFingerPrintImpl;->mHandler:Landroid/os/Handler;

    .line 114
    iget-boolean p1, p0, Lcom/meizu/settings/fingerprint/FlymeFingerPrintImpl;->mEnrolling:Z

    const-string v0, "FlymeFingerPrintImpl"

    if-nez p1, :cond_3b

    if-eqz p2, :cond_3b

    array-length p1, p2

    if-nez p1, :cond_e

    goto :goto_3b

    :cond_e
    const/4 p1, 0x1

    .line 119
    iput-boolean p1, p0, Lcom/meizu/settings/fingerprint/FlymeFingerPrintImpl;->mIsFirstEnrollProgress:Z

    const/4 v1, 0x0

    .line 120
    iput v1, p0, Lcom/meizu/settings/fingerprint/FlymeFingerPrintImpl;->mPercent:I

    .line 121
    iput-boolean v1, p0, Lcom/meizu/settings/fingerprint/FlymeFingerPrintImpl;->mDone:Z

    .line 122
    new-instance v1, Landroid/os/CancellationSignal;

    invoke-direct {v1}, Landroid/os/CancellationSignal;-><init>()V

    iput-object v1, p0, Lcom/meizu/settings/fingerprint/FlymeFingerPrintImpl;->mCancellationSignal:Landroid/os/CancellationSignal;

    .line 123
    iget-object v1, p0, Lcom/meizu/settings/fingerprint/FlymeFingerPrintImpl;->mContext:Landroid/content/Context;

    const-class v2, Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Landroid/hardware/fingerprint/FingerprintManager;

    iget-object v4, p0, Lcom/meizu/settings/fingerprint/FlymeFingerPrintImpl;->mCancellationSignal:Landroid/os/CancellationSignal;

    const/4 v5, 0x0

    iget v6, p0, Lcom/meizu/settings/fingerprint/FlymeFingerPrintImpl;->mUserId:I

    iget-object v7, p0, Lcom/meizu/settings/fingerprint/FlymeFingerPrintImpl;->mEnrollmentCallback:Landroid/hardware/fingerprint/FingerprintManager$EnrollmentCallback;

    move-object v3, p2

    invoke-virtual/range {v2 .. v7}, Landroid/hardware/fingerprint/FingerprintManager;->enroll([BLandroid/os/CancellationSignal;IILandroid/hardware/fingerprint/FingerprintManager$EnrollmentCallback;)V

    .line 125
    iput-boolean p1, p0, Lcom/meizu/settings/fingerprint/FlymeFingerPrintImpl;->mEnrolling:Z

    const-string p0, "startEnroll......"

    .line 126
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 115
    :cond_3b
    :goto_3b
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mEnrolling:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/meizu/settings/fingerprint/FlymeFingerPrintImpl;->mEnrolling:Z

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, ", verifyToken:"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public startVerify(Landroid/os/Handler;)V
    .registers 4

    .line 143
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "startVerify...., mIsVerifying:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/meizu/settings/fingerprint/FlymeFingerPrintImpl;->mIsVerifying:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FlymeFingerPrintImpl"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    iget-boolean v0, p0, Lcom/meizu/settings/fingerprint/FlymeFingerPrintImpl;->mIsVerifying:Z

    if-eqz v0, :cond_1d

    return-void

    .line 148
    :cond_1d
    iput-object p1, p0, Lcom/meizu/settings/fingerprint/FlymeFingerPrintImpl;->mHandler:Landroid/os/Handler;

    .line 149
    invoke-direct {p0}, Lcom/meizu/settings/fingerprint/FlymeFingerPrintImpl;->startAuthenticate()V

    const/4 p1, 0x1

    .line 150
    iput-boolean p1, p0, Lcom/meizu/settings/fingerprint/FlymeFingerPrintImpl;->mIsVerifying:Z

    return-void
.end method
