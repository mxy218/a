.class public abstract Lcom/android/keyguard/KeyguardAbsKeyInputView;
.super Landroid/widget/LinearLayout;
.source "KeyguardAbsKeyInputView.java"

# interfaces
.implements Lcom/android/keyguard/KeyguardSecurityView;
.implements Lcom/android/keyguard/EmergencyButton$EmergencyButtonCallback;


# static fields
.field private static final ACCOUNT_PROJECTION:Ljava/lang/String; = "account"

.field private static final ACCOUNT_TABLE_NEWEST_TIME_STRING:Ljava/lang/String; = "content://com.meizu.account/account"

.field private static final ACCOUNT_URI:Landroid/net/Uri;

.field protected static final DELAY_RESET_PASSWORD_TEXT:I = 0x64

.field private static final FAILED_ATTEMPTS_BEFORE_HIGH_TIMEOUT:I = 0xa

.field private static final FAILED_ATTEMPTS_BEFORE_TIMEOUT:I = 0x5

.field private static final FAILED_ATTEMPT_TIMEOUT_HIGH_MS:I = 0x493e0

.field private static final FAILED_ATTEMPT_TIMEOUT_LOW_MS:I = 0xea60

.field public static final FINDPHONE_ENABLED:I = 0x2

.field public static final FIND_PHONE_SETTING_KEY:Ljava/lang/String; = "com.meizu.flyme.FindPhone"

.field public static final INVALID_PASSWORD_LENGHT:I = -0x1

.field public static final MAX_PASSWORD_LENGHT:I = 0x11

.field protected static final MINIMUM_PASSWORD_LENGTH_BEFORE_REPORT:I = 0x3

.field private static final MSG_RECOGNISE_ERROR:I = 0x2

.field private static final MSG_RECOGNISE_ERROR_FREEZE:I = 0x4

.field private static final MSG_RECOGNISE_ERROR_TIMEOUT:I = 0x3

.field private static final MSG_RECOGNISE_FAIL:I = 0x1

.field private static final MSG_RECOGNISE_SUCCESS:I = 0x0

.field protected static final MSPACE_PRIVACY_PASSWORD_LENGHT:I = 0x4

.field public static final STATE_CLOSE:I = 0x0

.field public static final STATE_OPENED:I = 0x2

.field private static final TAG:Ljava/lang/String; = "KeyguardAbsInputView"

.field protected static mEnmergencyColor:I


# instance fields
.field private final SHAKE_ANIM_STATE_RECOGNIZE_FAIL:I

.field protected button:Lcom/android/keyguard/EmergencyButton;

.field protected mBouncerFrame:Landroid/graphics/drawable/Drawable;

.field protected mBouncerRl:Landroid/widget/RelativeLayout;

.field protected mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

.field protected mCancelKey:Landroid/widget/TextView;

.field protected mCancelKeyAlpha:F

.field protected mConfirmKey:Landroid/widget/TextView;

.field private mCountdownTimer:Landroid/os/CountDownTimer;

.field private mDeviceStateManager:Lmeizu/os/DeviceStateManager;

.field private mDismissing:Z

.field protected mEcaView:Landroid/view/View;

.field protected mEnableHaptics:Z

.field private mFPCountdownTimer:Landroid/os/CountDownTimer;

.field private mFPTimeOutFlag:Z

.field private mFindPhoneAbstract:Lcom/meizu/findphone/FindPhoneAbstract;

.field private mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

.field protected mGuestMode:Z

.field private mImm:Landroid/view/inputmethod/InputMethodManager;

.field protected mIsMaxLengthPassword:Z

.field protected mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mLockoutFlag:Z

.field private mMaxCountdownTimes:I

.field protected mMessageArea:Lcom/android/keyguard/KeyguardMessageArea;

.field protected mPasswordFreeze:Z

.field protected mPendingLockCheck:Landroid/os/AsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/AsyncTask<",
            "***>;"
        }
    .end annotation
.end field

.field protected mRecongnizeFail:Z

.field protected mResumed:Z

.field protected mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

.field private mSetFingerprintVisibleRunnable:Ljava/lang/Runnable;

.field private mShakeAnim:Landroid/animation/AnimatorSet;

.field private mShakeAnimState:I

.field protected mSystemModeUtils:Lcom/meizu/keyguard/SystemModeUtils;

.field private final mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field protected mUserFingerprint:Landroid/widget/TextView;

.field private mUserManager:Landroid/os/UserManager;

.field private mVibrator:Landroid/os/Vibrator;

.field switchGuestModeRunnable:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "content://com.meizu.account/account"

    .line 969
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->ACCOUNT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    .line 99
    invoke-direct {p0, p1, v0}, Lcom/android/keyguard/KeyguardAbsKeyInputView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5

    .line 103
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x0

    .line 92
    iput-object p2, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mCountdownTimer:Landroid/os/CountDownTimer;

    const/4 v0, 0x1

    .line 966
    iput v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->SHAKE_ANIM_STATE_RECOGNIZE_FAIL:I

    .line 979
    new-instance v0, Lcom/android/keyguard/KeyguardAbsKeyInputView$10;

    invoke-direct {v0, p0}, Lcom/android/keyguard/KeyguardAbsKeyInputView$10;-><init>(Lcom/android/keyguard/KeyguardAbsKeyInputView;)V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mSetFingerprintVisibleRunnable:Ljava/lang/Runnable;

    .line 986
    new-instance v0, Lcom/android/keyguard/KeyguardAbsKeyInputView$11;

    invoke-direct {v0, p0}, Lcom/android/keyguard/KeyguardAbsKeyInputView$11;-><init>(Lcom/android/keyguard/KeyguardAbsKeyInputView;)V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->switchGuestModeRunnable:Ljava/lang/Runnable;

    .line 997
    new-instance v0, Lcom/android/keyguard/KeyguardAbsKeyInputView$12;

    invoke-direct {v0, p0}, Lcom/android/keyguard/KeyguardAbsKeyInputView$12;-><init>(Lcom/android/keyguard/KeyguardAbsKeyInputView;)V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    const/4 v0, 0x0

    .line 1087
    iput v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mMaxCountdownTimes:I

    const/4 v1, -0x1

    .line 1090
    iput v1, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mShakeAnimState:I

    .line 1091
    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mRecongnizeFail:Z

    .line 1095
    iput-object p2, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mFPCountdownTimer:Landroid/os/CountDownTimer;

    .line 1102
    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mGuestMode:Z

    .line 105
    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->initFlymeFeature(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/keyguard/KeyguardAbsKeyInputView;)Landroid/content/Context;
    .registers 1

    .line 82
    iget-object p0, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/keyguard/KeyguardAbsKeyInputView;)Landroid/content/Context;
    .registers 1

    .line 82
    iget-object p0, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/android/keyguard/KeyguardAbsKeyInputView;)Z
    .registers 1

    .line 82
    iget-boolean p0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mLockoutFlag:Z

    return p0
.end method

.method static synthetic access$1002(Lcom/android/keyguard/KeyguardAbsKeyInputView;Z)Z
    .registers 2

    .line 82
    iput-boolean p1, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mLockoutFlag:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/android/keyguard/KeyguardAbsKeyInputView;)V
    .registers 1

    .line 82
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->updatePasswordText()V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/keyguard/KeyguardAbsKeyInputView;)I
    .registers 1

    .line 82
    iget p0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mShakeAnimState:I

    return p0
.end method

.method static synthetic access$1202(Lcom/android/keyguard/KeyguardAbsKeyInputView;I)I
    .registers 2

    .line 82
    iput p1, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mShakeAnimState:I

    return p1
.end method

.method static synthetic access$1300(Lcom/android/keyguard/KeyguardAbsKeyInputView;)Landroid/content/Context;
    .registers 1

    .line 82
    iget-object p0, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/android/keyguard/KeyguardAbsKeyInputView;)Landroid/content/Context;
    .registers 1

    .line 82
    iget-object p0, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$1500(Lcom/android/keyguard/KeyguardAbsKeyInputView;)Landroid/animation/AnimatorSet;
    .registers 1

    .line 82
    iget-object p0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mShakeAnim:Landroid/animation/AnimatorSet;

    return-object p0
.end method

.method static synthetic access$1600(Lcom/android/keyguard/KeyguardAbsKeyInputView;)Landroid/content/Context;
    .registers 1

    .line 82
    iget-object p0, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$1700(Lcom/android/keyguard/KeyguardAbsKeyInputView;)Landroid/os/CountDownTimer;
    .registers 1

    .line 82
    iget-object p0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mCountdownTimer:Landroid/os/CountDownTimer;

    return-object p0
.end method

.method static synthetic access$1702(Lcom/android/keyguard/KeyguardAbsKeyInputView;Landroid/os/CountDownTimer;)Landroid/os/CountDownTimer;
    .registers 2

    .line 82
    iput-object p1, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mCountdownTimer:Landroid/os/CountDownTimer;

    return-object p1
.end method

.method static synthetic access$1800(Lcom/android/keyguard/KeyguardAbsKeyInputView;)Landroid/os/CountDownTimer;
    .registers 1

    .line 82
    iget-object p0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mFPCountdownTimer:Landroid/os/CountDownTimer;

    return-object p0
.end method

.method static synthetic access$1802(Lcom/android/keyguard/KeyguardAbsKeyInputView;Landroid/os/CountDownTimer;)Landroid/os/CountDownTimer;
    .registers 2

    .line 82
    iput-object p1, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mFPCountdownTimer:Landroid/os/CountDownTimer;

    return-object p1
.end method

.method static synthetic access$1900(Lcom/android/keyguard/KeyguardAbsKeyInputView;)Landroid/content/Context;
    .registers 1

    .line 82
    iget-object p0, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/keyguard/KeyguardAbsKeyInputView;)Landroid/view/inputmethod/InputMethodManager;
    .registers 1

    .line 82
    iget-object p0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mImm:Landroid/view/inputmethod/InputMethodManager;

    return-object p0
.end method

.method static synthetic access$2000(Lcom/android/keyguard/KeyguardAbsKeyInputView;)Landroid/os/Vibrator;
    .registers 1

    .line 82
    iget-object p0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mVibrator:Landroid/os/Vibrator;

    return-object p0
.end method

.method static synthetic access$2100(Lcom/android/keyguard/KeyguardAbsKeyInputView;)Landroid/content/Context;
    .registers 1

    .line 82
    iget-object p0, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$2200(Lcom/android/keyguard/KeyguardAbsKeyInputView;)Landroid/content/Context;
    .registers 1

    .line 82
    iget-object p0, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$2300(Lcom/android/keyguard/KeyguardAbsKeyInputView;)Landroid/content/Context;
    .registers 1

    .line 82
    iget-object p0, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$2400(Lcom/android/keyguard/KeyguardAbsKeyInputView;)Landroid/hardware/fingerprint/FingerprintManager;
    .registers 1

    .line 82
    iget-object p0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    return-object p0
.end method

.method static synthetic access$300(Lcom/android/keyguard/KeyguardAbsKeyInputView;)Landroid/content/Context;
    .registers 1

    .line 82
    iget-object p0, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$400(Lcom/android/keyguard/KeyguardAbsKeyInputView;)Landroid/content/Context;
    .registers 1

    .line 82
    iget-object p0, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$500(Lcom/android/keyguard/KeyguardAbsKeyInputView;)Landroid/content/Context;
    .registers 1

    .line 82
    iget-object p0, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$600(Lcom/android/keyguard/KeyguardAbsKeyInputView;)V
    .registers 1

    .line 82
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->startConfirmActivity()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/keyguard/KeyguardAbsKeyInputView;)Ljava/lang/Runnable;
    .registers 1

    .line 82
    iget-object p0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mSetFingerprintVisibleRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$800(Lcom/android/keyguard/KeyguardAbsKeyInputView;)Z
    .registers 1

    .line 82
    iget-boolean p0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mFPTimeOutFlag:Z

    return p0
.end method

.method static synthetic access$802(Lcom/android/keyguard/KeyguardAbsKeyInputView;Z)Z
    .registers 2

    .line 82
    iput-boolean p1, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mFPTimeOutFlag:Z

    return p1
.end method

.method static synthetic access$900(Lcom/android/keyguard/KeyguardAbsKeyInputView;)Z
    .registers 1

    .line 82
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->shakeAnimNotRunning()Z

    move-result p0

    return p0
.end method

.method private getPasswordLimit(I)I
    .registers 6

    .line 605
    iget-object p0, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    .line 606
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "meizu_password_length"

    const/4 v1, 0x0

    .line 605
    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-nez p0, :cond_28

    const-string v1, "lock_settings"

    .line 611
    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    .line 610
    invoke-static {v1}, Lcom/android/internal/widget/ILockSettings$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/widget/ILockSettings;

    move-result-object v1

    int-to-long v2, p1

    .line 615
    :try_start_1a
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result p1

    .line 613
    invoke-interface {v1, v0, v2, v3, p1}, Lcom/android/internal/widget/ILockSettings;->getLong(Ljava/lang/String;JI)J

    move-result-wide p0
    :try_end_22
    .catch Landroid/os/RemoteException; {:try_start_1a .. :try_end_22} :catch_24

    long-to-int p0, p0

    goto :goto_28

    :catch_24
    move-exception p1

    .line 617
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_28
    :goto_28
    return p0
.end method

.method private handleRecogniseError(II)V
    .registers 5

    const-string v0, "KeyguardAbsInputView"

    const/4 v1, 0x7

    if-ne p1, v1, :cond_3e

    .line 873
    iget-object p1, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    if-eqz p1, :cond_d

    const/4 v1, 0x3

    .line 874
    invoke-interface {p1, v1}, Lcom/android/keyguard/KeyguardSecurityCallback;->onVerifyCallback(I)V

    .line 877
    :cond_d
    :try_start_d
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MSG_RECOGNISE_ERROR, timeout "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-lez p2, :cond_46

    int-to-long p1, p2

    .line 879
    invoke-virtual {p0, p1, p2}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->handleFPAttemptLockout(J)V
    :try_end_27
    .catch Ljava/lang/NumberFormatException; {:try_start_d .. :try_end_27} :catch_28

    goto :goto_46

    :catch_28
    move-exception p0

    .line 882
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "handle MSG_RECOGNISE_ERROR, format exception "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_46

    .line 886
    :cond_3e
    iget-object p0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    if-eqz p0, :cond_46

    const/4 p1, 0x2

    .line 887
    invoke-interface {p0, p1}, Lcom/android/keyguard/KeyguardSecurityCallback;->onVerifyCallback(I)V

    :cond_46
    :goto_46
    return-void
.end method

.method private initFlymeFeature(Landroid/content/Context;)V
    .registers 4

    .line 468
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "vibrator"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    iput-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mVibrator:Landroid/os/Vibrator;

    const-string v0, "device_states"

    .line 469
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmeizu/os/DeviceStateManager;

    iput-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mDeviceStateManager:Lmeizu/os/DeviceStateManager;

    .line 471
    invoke-static {}, Lcom/meizu/findphone/FindPhoneAbstract;->newFindphoneUtils()Lcom/meizu/findphone/FindPhoneAbstract;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mFindPhoneAbstract:Lcom/meizu/findphone/FindPhoneAbstract;

    .line 472
    iget-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mFindPhoneAbstract:Lcom/meizu/findphone/FindPhoneAbstract;

    invoke-virtual {v0, p1}, Lcom/meizu/findphone/FindPhoneAbstract;->init(Landroid/content/Context;)V

    .line 473
    new-instance p1, Lcom/meizu/keyguard/SystemModeUtils;

    iget-object v0, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    invoke-direct {p1, v0}, Lcom/meizu/keyguard/SystemModeUtils;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mSystemModeUtils:Lcom/meizu/keyguard/SystemModeUtils;

    .line 475
    new-instance p1, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v0, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    invoke-direct {p1, v0}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 476
    iget-object p1, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    const-string v0, "fingerprint"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/fingerprint/FingerprintManager;

    iput-object p1, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    return-void
.end method

.method private initFlymeView()V
    .registers 5

    .line 481
    invoke-static {p0}, Lcom/android/keyguard/KeyguardMessageArea;->findSecurityMessageDisplay(Landroid/view/View;)Lcom/android/keyguard/KeyguardMessageArea;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    .line 482
    iget-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/android/keyguard/SecurityMessageDisplay;->setTimeout(I)V

    .line 483
    iget-object v0, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/android/systemui/R$integer;->config_max_unlock_countdown_times:I

    .line 484
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mMaxCountdownTimes:I

    .line 486
    sget v0, Lcom/android/systemui/R$id;->cancel:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mCancelKey:Landroid/widget/TextView;

    .line 487
    iget-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mCancelKey:Landroid/widget/TextView;

    new-instance v2, Lcom/android/keyguard/KeyguardAbsKeyInputView$3;

    invoke-direct {v2, p0}, Lcom/android/keyguard/KeyguardAbsKeyInputView$3;-><init>(Lcom/android/keyguard/KeyguardAbsKeyInputView;)V

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 497
    iget-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mCancelKey:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getAlpha()F

    move-result v0

    iput v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mCancelKeyAlpha:F

    .line 498
    sget v0, Lcom/android/systemui/R$id;->keyguard_bouncer_frame:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_44

    .line 500
    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mBouncerFrame:Landroid/graphics/drawable/Drawable;

    .line 502
    :cond_44
    sget v0, Lcom/android/systemui/R$id;->confirm_password:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mConfirmKey:Landroid/widget/TextView;

    .line 503
    iget-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mConfirmKey:Landroid/widget/TextView;

    new-instance v2, Lcom/android/keyguard/KeyguardAbsKeyInputView$4;

    invoke-direct {v2, p0}, Lcom/android/keyguard/KeyguardAbsKeyInputView$4;-><init>(Lcom/android/keyguard/KeyguardAbsKeyInputView;)V

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 508
    sget v0, Lcom/android/systemui/R$id;->keyguard_message_area:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KeyguardMessageArea;

    iput-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mMessageArea:Lcom/android/keyguard/KeyguardMessageArea;

    .line 510
    iget-object v0, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isEasyMode()Z

    move-result v0

    if-eqz v0, :cond_80

    .line 511
    iget-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mMessageArea:Lcom/android/keyguard/KeyguardMessageArea;

    iget-object v2, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/systemui/R$dimen;->keyguard_easy_mode_textsize:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 513
    :cond_80
    iget-object v0, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "user"

    .line 514
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mUserManager:Landroid/os/UserManager;

    .line 515
    iget-object v0, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isGuestModeEnable()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mGuestMode:Z

    .line 517
    iget-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mEcaView:Landroid/view/View;

    sget v1, Lcom/android/systemui/R$id;->bouncer_emergency_call_button:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/EmergencyButton;

    iput-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->button:Lcom/android/keyguard/EmergencyButton;

    .line 519
    sget v0, Lcom/android/systemui/R$id;->keyguard_bouncer_rl:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mBouncerRl:Landroid/widget/RelativeLayout;

    .line 520
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iput-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mImm:Landroid/view/inputmethod/InputMethodManager;

    .line 521
    sget v0, Lcom/android/systemui/R$id;->use_fingerprint:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mUserFingerprint:Landroid/widget/TextView;

    .line 522
    iget-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mUserFingerprint:Landroid/widget/TextView;

    new-instance v1, Lcom/android/keyguard/KeyguardAbsKeyInputView$5;

    invoke-direct {v1, p0}, Lcom/android/keyguard/KeyguardAbsKeyInputView$5;-><init>(Lcom/android/keyguard/KeyguardAbsKeyInputView;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private prepareAndCancelAnim(Landroid/view/View;)V
    .registers 3

    .line 857
    iget-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mShakeAnim:Landroid/animation/AnimatorSet;

    if-nez v0, :cond_a

    .line 858
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->prepareShakeAnim()Landroid/animation/AnimatorSet;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mShakeAnim:Landroid/animation/AnimatorSet;

    .line 860
    :cond_a
    iget-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mShakeAnim:Landroid/animation/AnimatorSet;

    invoke-virtual {v0, p1}, Landroid/animation/AnimatorSet;->setTarget(Ljava/lang/Object;)V

    .line 861
    iget-object p0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mShakeAnim:Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->cancel()V

    return-void
.end method

.method private shakeAnimNotRunning()Z
    .registers 1

    .line 865
    iget-object p0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mShakeAnim:Landroid/animation/AnimatorSet;

    if-eqz p0, :cond_d

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result p0

    if-nez p0, :cond_b

    goto :goto_d

    :cond_b
    const/4 p0, 0x0

    goto :goto_e

    :cond_d
    :goto_d
    const/4 p0, 0x1

    :goto_e
    return p0
.end method

.method private startConfirmActivity()V
    .registers 4

    .line 910
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.meizu.account.VALIDATEPASSWORD"

    .line 911
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "source"

    const-string v2, "com.android.systemui"

    .line 912
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    .line 913
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 914
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1e} :catch_1f

    goto :goto_26

    .line 916
    :catch_1f
    iget-object p0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mConfirmKey:Landroid/widget/TextView;

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_26
    return-void
.end method

.method private updatePasswordText()V
    .registers 6

    .line 922
    iget-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mFindPhoneAbstract:Lcom/meizu/findphone/FindPhoneAbstract;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/meizu/findphone/FindPhoneAbstract;->processLeftTimes(Z)I

    move-result v0

    const/4 v2, 0x1

    const/4 v3, 0x3

    if-ge v0, v3, :cond_2e

    .line 923
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->isOpenFindLock()Z

    move-result v3

    if-eqz v3, :cond_2e

    .line 924
    iget-object v3, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    sget v4, Lcom/android/systemui/R$string;->lock_password_left_times:I

    .line 925
    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 926
    iget-object p0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    new-array v4, v2, [Ljava/lang/Object;

    if-gez v0, :cond_20

    move v0, v1

    :cond_20
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v1

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0, v2}, Lcom/android/keyguard/SecurityMessageDisplay;->setMessage(Ljava/lang/CharSequence;Z)V

    goto :goto_65

    .line 928
    :cond_2e
    iget-object v0, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFingerprintDetectionRunning()Z

    move-result v0

    if-eqz v0, :cond_4a

    sget-object v0, Landroid/os/BuildExt;->IS_SHOPDEMO:Ljava/lang/Boolean;

    .line 929
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_4a

    .line 930
    iget-object p0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    sget v0, Lcom/android/systemui/R$string;->demo_lock_enter_password:I

    invoke-interface {p0, v0, v2}, Lcom/android/keyguard/SecurityMessageDisplay;->setMessage(IZ)V

    goto :goto_65

    .line 931
    :cond_4a
    iget-object v0, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintController;->getInstance(Landroid/content/Context;)Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintController;->isFirstBootUnlock()Z

    move-result v0

    if-nez v0, :cond_5e

    .line 932
    iget-object p0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    sget v0, Lcom/android/systemui/R$string;->keyguard_fp_restart:I

    invoke-interface {p0, v0, v2}, Lcom/android/keyguard/SecurityMessageDisplay;->setMessage(IZ)V

    goto :goto_65

    .line 934
    :cond_5e
    iget-object p0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    sget v0, Lcom/android/systemui/R$string;->enter_password:I

    invoke-interface {p0, v0, v2}, Lcom/android/keyguard/SecurityMessageDisplay;->setMessage(IZ)V

    :goto_65
    return-void
.end method


# virtual methods
.method protected canGetPasswordLenght()Z
    .registers 2

    const/4 v0, -0x1

    .line 600
    invoke-direct {p0, v0}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->getPasswordLimit(I)I

    move-result p0

    if-lez p0, :cond_9

    const/4 p0, 0x1

    goto :goto_a

    :cond_9
    const/4 p0, 0x0

    :goto_a
    return p0
.end method

.method protected checkGuestModePassword(Ljava/lang/String;)Z
    .registers 3

    .line 720
    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mGuestMode:Z

    if-eqz v0, :cond_1e

    .line 721
    iget-object p0, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "mz_guest_mode_password"

    invoke-static {p0, v0}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 723
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1e

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1e

    const/4 p0, 0x1

    return p0

    :cond_1e
    const/4 p0, 0x0

    return p0
.end method

.method public doHapticKeyClick()V
    .registers 3

    .line 448
    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mEnableHaptics:Z

    if-eqz v0, :cond_9

    const/4 v0, 0x1

    const/4 v1, 0x3

    .line 449
    invoke-virtual {p0, v0, v1}, Landroid/widget/LinearLayout;->performHapticFeedback(II)Z

    :cond_9
    return-void
.end method

.method public getCallback()Lcom/android/keyguard/KeyguardSecurityCallback;
    .registers 1

    .line 423
    iget-object p0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    return-object p0
.end method

.method protected getGuestPwdLength()I
    .registers 2

    .line 590
    iget-object p0, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    .line 591
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "mz_guest_mode_password"

    .line 590
    invoke-static {p0, v0}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_13

    .line 594
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    return p0

    :cond_13
    const/4 p0, 0x4

    return p0
.end method

.method protected getPasswordLimit()I
    .registers 2

    const/16 v0, 0x11

    .line 585
    invoke-direct {p0, v0}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->getPasswordLimit(I)I

    move-result p0

    if-nez p0, :cond_9

    move p0, v0

    :cond_9
    return p0
.end method

.method protected abstract getPasswordText()[B
.end method

.method protected abstract getPasswordTextViewId()I
.end method

.method protected abstract getPromptReasonStringRes(I)I
.end method

.method protected getWrongPasswordStringId()I
    .registers 1

    .line 179
    sget p0, Lcom/android/systemui/R$string;->kg_wrong_password:I

    return p0
.end method

.method protected handleAttemptLockout(J)V
    .registers 10

    const/4 v0, 0x0

    .line 337
    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->setPasswordEntryEnabled(Z)V

    .line 338
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    sub-long/2addr p1, v0

    long-to-double p1, p1

    const-wide v0, 0x408f400000000000L  # 1000.0

    div-double/2addr p1, v0

    .line 339
    invoke-static {p1, p2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide p1

    double-to-long p1, p1

    .line 341
    new-instance v6, Lcom/android/keyguard/KeyguardAbsKeyInputView$2;

    const-wide/16 v0, 0x3e8

    mul-long v2, p1, v0

    const-wide/16 v4, 0x3e8

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/keyguard/KeyguardAbsKeyInputView$2;-><init>(Lcom/android/keyguard/KeyguardAbsKeyInputView;JJ)V

    .line 356
    invoke-virtual {v6}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    move-result-object p1

    iput-object p1, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mCountdownTimer:Landroid/os/CountDownTimer;

    return-void
.end method

.method protected handleFPAttemptLockout(J)V
    .registers 15

    .line 677
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleFPAttemptLockout timeout = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", mFPTimeOutFlag = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mFPTimeOutFlag:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KeyguardAbsInputView"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 678
    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mFPTimeOutFlag:Z

    if-eqz v0, :cond_25

    return-void

    .line 681
    :cond_25
    iget-object v0, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUnderFingerprint()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3b

    .line 682
    iget-object v0, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintController;->getInstance(Landroid/content/Context;)Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintController;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintController;->setFingerprintIconVisibile(Z)V

    :cond_3b
    const/4 v0, 0x1

    .line 684
    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mFPTimeOutFlag:Z

    .line 685
    iget-object v2, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    sget v3, Lcom/android/systemui/R$string;->kg_fp_too_many_failed_attempts_countdown:I

    new-array v4, v0, [Ljava/lang/Object;

    .line 687
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v4, v1

    .line 685
    invoke-interface {v2, v3, v0, v4}, Lcom/android/keyguard/SecurityMessageDisplay;->setMessage(IZ[Ljava/lang/Object;)V

    .line 688
    new-instance v0, Lcom/android/keyguard/KeyguardAbsKeyInputView$7;

    const-wide/16 v1, 0x3e8

    mul-long v8, p1, v1

    const-wide/16 v10, 0x3e8

    move-object v6, v0

    move-object v7, p0

    invoke-direct/range {v6 .. v11}, Lcom/android/keyguard/KeyguardAbsKeyInputView$7;-><init>(Lcom/android/keyguard/KeyguardAbsKeyInputView;JJ)V

    .line 716
    invoke-virtual {v0}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    move-result-object p1

    iput-object p1, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mFPCountdownTimer:Landroid/os/CountDownTimer;

    return-void
.end method

.method public hasFlymeAccount()Z
    .registers 2

    .line 900
    iget-object p0, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object p0

    const-string v0, "com.meizu.account"

    .line 901
    invoke-virtual {p0, v0}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object p0

    if-eqz p0, :cond_13

    .line 902
    array-length p0, p0

    if-lez p0, :cond_13

    const/4 p0, 0x1

    return p0

    :cond_13
    const/4 p0, 0x0

    return p0
.end method

.method protected initThemeValues()V
    .registers 1

    .line 662
    iget-object p0, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/meizu/keyguard/KeyguardThemeUtils;->getInstance(Landroid/content/Context;)Lcom/meizu/keyguard/KeyguardThemeUtils;

    move-result-object p0

    invoke-virtual {p0}, Lcom/meizu/keyguard/KeyguardThemeUtils;->getEmergencyColor()I

    move-result p0

    sput p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mEnmergencyColor:I

    return-void
.end method

.method public isFindPhoneEnabled()Z
    .registers 3

    .line 895
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "com.meizu.flyme.FindPhone"

    const/4 v1, -0x1

    .line 894
    invoke-static {p0, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    const/4 v0, 0x2

    if-ne p0, v0, :cond_14

    const/4 p0, 0x1

    goto :goto_15

    :cond_14
    const/4 p0, 0x0

    :goto_15
    return p0
.end method

.method public isOpenFindLock()Z
    .registers 3

    .line 645
    iget-object v0, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    const-string v1, "com.meizu.account"

    .line 646
    invoke-virtual {v0, v1}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_24

    .line 647
    array-length v0, v0

    if-nez v0, :cond_13

    goto :goto_24

    .line 651
    :cond_13
    iget-object p0, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    .line 652
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "com.meizu.flyme.FindPhone"

    .line 651
    invoke-static {p0, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    const/4 v0, 0x2

    if-ne p0, v0, :cond_24

    const/4 p0, 0x1

    return p0

    :cond_24
    :goto_24
    return v1
.end method

.method protected mzHandleAttemptLockout(J)V
    .registers 15

    .line 534
    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mLockoutFlag:Z

    if-eqz v0, :cond_5

    return-void

    .line 535
    :cond_5
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->hasFlymeAccount()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_11

    .line 536
    iget-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mConfirmKey:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_11
    const/4 v0, 0x1

    .line 538
    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mPasswordFreeze:Z

    .line 539
    invoke-virtual {p0, v1}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->setPasswordEntryEnabled(Z)V

    .line 540
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 541
    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mLockoutFlag:Z

    sub-long/2addr p1, v2

    long-to-double p1, p1

    const-wide v2, 0x408f400000000000L  # 1000.0

    div-double/2addr p1, v2

    .line 542
    invoke-static {p1, p2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide p1

    double-to-long p1, p1

    const-wide/16 v2, 0x3c

    cmp-long v4, p1, v2

    if-lez v4, :cond_4b

    .line 545
    iget-object v4, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    sget v5, Lcom/android/systemui/R$string;->kg_too_many_failed_high_attempts_countdown:I

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    div-long v7, p1, v2

    .line 547
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v6, v1

    rem-long v1, p1, v2

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v6, v0

    .line 545
    invoke-interface {v4, v5, v0, v6}, Lcom/android/keyguard/SecurityMessageDisplay;->setMessage(IZ[Ljava/lang/Object;)V

    goto :goto_5a

    .line 549
    :cond_4b
    iget-object v2, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    sget v3, Lcom/android/systemui/R$string;->kg_too_many_failed_attempts_countdown:I

    new-array v4, v0, [Ljava/lang/Object;

    .line 551
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v4, v1

    .line 549
    invoke-interface {v2, v3, v0, v4}, Lcom/android/keyguard/SecurityMessageDisplay;->setMessage(IZ[Ljava/lang/Object;)V

    .line 554
    :goto_5a
    new-instance v0, Lcom/android/keyguard/KeyguardAbsKeyInputView$6;

    const-wide/16 v1, 0x3e8

    mul-long v8, p1, v1

    const-wide/16 v10, 0x3e8

    move-object v6, v0

    move-object v7, p0

    invoke-direct/range {v6 .. v11}, Lcom/android/keyguard/KeyguardAbsKeyInputView$6;-><init>(Lcom/android/keyguard/KeyguardAbsKeyInputView;JJ)V

    .line 581
    invoke-virtual {v0}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    move-result-object p1

    iput-object p1, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mCountdownTimer:Landroid/os/CountDownTimer;

    return-void
.end method

.method public needsInput()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method protected onAttachedToWindow()V
    .registers 3

    .line 758
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 759
    iget-object v0, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isSaveMode()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 761
    iget-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mCancelKey:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 763
    :cond_15
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->initThemeValues()V

    .line 764
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->setThemeValues()V

    .line 765
    iget-object v0, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iget-object p0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .registers 4

    .line 771
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    const-string v0, "KeyguardAbsInputView"

    const-string v1, "onDetachedFromWindow"

    .line 772
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 773
    iget-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mShakeAnim:Landroid/animation/AnimatorSet;

    const/4 v1, 0x0

    if-eqz v0, :cond_19

    .line 774
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 775
    iget-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mShakeAnim:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->removeAllListeners()V

    .line 776
    iput-object v1, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mShakeAnim:Landroid/animation/AnimatorSet;

    :cond_19
    const/4 v0, 0x0

    .line 778
    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mIsMaxLengthPassword:Z

    .line 779
    iget-object v2, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mCountdownTimer:Landroid/os/CountDownTimer;

    if-eqz v2, :cond_25

    .line 780
    invoke-virtual {v2}, Landroid/os/CountDownTimer;->cancel()V

    .line 781
    iput-object v1, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mCountdownTimer:Landroid/os/CountDownTimer;

    .line 783
    :cond_25
    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mLockoutFlag:Z

    .line 784
    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mFPTimeOutFlag:Z

    const/4 v0, -0x1

    .line 785
    iput v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mShakeAnimState:I

    .line 786
    iget-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mFPCountdownTimer:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_35

    .line 787
    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 788
    iput-object v1, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mFPCountdownTimer:Landroid/os/CountDownTimer;

    .line 790
    :cond_35
    iget-object v0, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iget-object p0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->removeCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    return-void
.end method

.method public onEmergencyButtonClickedWhenInCall()V
    .registers 1

    .line 170
    iget-object p0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    invoke-interface {p0}, Lcom/android/keyguard/KeyguardSecurityCallback;->reset()V

    return-void
.end method

.method protected onFinishInflate()V
    .registers 3

    .line 148
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v1, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 149
    sget v0, Lcom/android/systemui/R$id;->keyguard_selector_fade_container:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mEcaView:Landroid/view/View;

    .line 153
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->initFlymeView()V

    .line 155
    iget-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->button:Lcom/android/keyguard/EmergencyButton;

    if-eqz v0, :cond_1b

    .line 156
    invoke-virtual {v0, p0}, Lcom/android/keyguard/EmergencyButton;->setCallback(Lcom/android/keyguard/EmergencyButton$EmergencyButtonCallback;)V

    :cond_1b
    return-void
.end method

.method protected onGuestMode()V
    .registers 4

    .line 624
    iget-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->switchGuestModeRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 625
    iget-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->switchGuestModeRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0x64

    invoke-virtual {p0, v0, v1, v2}, Landroid/widget/LinearLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 3

    if-eqz p1, :cond_5

    .line 373
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->onUserInput()V

    :cond_5
    const/4 p0, 0x0

    return p0
.end method

.method protected onPasswordChecked(IZIZ)V
    .registers 9

    .line 274
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, p1, :cond_a

    move v0, v2

    goto :goto_b

    :cond_a
    move v0, v1

    :goto_b
    if-eqz p2, :cond_24

    .line 277
    iput-boolean v1, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mPasswordFreeze:Z

    .line 279
    iget-object p3, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p3}, Lcom/android/internal/widget/LockPatternUtils;->sanitizePassword()V

    .line 280
    iget-object p3, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    invoke-interface {p3, p1, v2, v1}, Lcom/android/keyguard/KeyguardSecurityCallback;->reportUnlockAttempt(IZI)V

    if-eqz v0, :cond_95

    .line 282
    iput-boolean v2, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mDismissing:Z

    .line 283
    iget-object p3, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    invoke-interface {p3, v2, p1}, Lcom/android/keyguard/KeyguardSecurityCallback;->dismiss(ZI)V

    goto/16 :goto_95

    :cond_24
    if-eqz p4, :cond_8e

    .line 287
    iget-object p4, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    invoke-interface {p4, p1, v1, p3}, Lcom/android/keyguard/KeyguardSecurityCallback;->reportUnlockAttempt(IZI)V

    .line 289
    iget-object p4, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mFindPhoneAbstract:Lcom/meizu/findphone/FindPhoneAbstract;

    invoke-virtual {p4, v1}, Lcom/meizu/findphone/FindPhoneAbstract;->processLeftTimes(Z)I

    move-result p4

    .line 290
    invoke-static {}, Lcom/meizu/keyguard/auto_color/LogFileUtils;->getInstance()Lcom/meizu/keyguard/auto_color/LogFileUtils;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "verifyPasswordAndUnlock, processLeftTimes(false), leftTimes = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/meizu/keyguard/auto_color/LogFileUtils;->writeLog(Ljava/lang/String;)V

    const/4 v0, 0x5

    if-lt p4, v0, :cond_5e

    const/16 v1, 0xa

    if-gt p4, v1, :cond_5e

    .line 293
    iget-object p3, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    const p4, 0xea60

    invoke-virtual {p3, p1, p4}, Lcom/android/internal/widget/LockPatternUtils;->setLockoutAttemptDeadline(II)J

    move-result-wide p3

    .line 295
    invoke-virtual {p0, p3, p4}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mzHandleAttemptLockout(J)V

    goto :goto_8e

    :cond_5e
    if-ge p4, v0, :cond_6d

    .line 297
    iget-object p3, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    const p4, 0x493e0

    invoke-virtual {p3, p1, p4}, Lcom/android/internal/widget/LockPatternUtils;->setLockoutAttemptDeadline(II)J

    move-result-wide p3

    .line 299
    invoke-virtual {p0, p3, p4}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mzHandleAttemptLockout(J)V

    goto :goto_8e

    :cond_6d
    if-lez p3, :cond_85

    .line 300
    iget-object p4, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    invoke-static {p4}, Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintController;->getInstance(Landroid/content/Context;)Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintController;

    move-result-object p4

    invoke-virtual {p4}, Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintController;->isFirstBootUnlock()Z

    move-result p4

    if-nez p4, :cond_85

    .line 301
    iget-object p4, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p4, p1, p3}, Lcom/android/internal/widget/LockPatternUtils;->setLockoutAttemptDeadline(II)J

    move-result-wide p3

    .line 303
    invoke-virtual {p0, p3, p4}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mzHandleAttemptLockout(J)V

    goto :goto_8e

    .line 305
    :cond_85
    iget-object p1, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->getWrongPasswordStringId()I

    move-result p3

    invoke-interface {p1, p3}, Lcom/android/keyguard/SecurityMessageDisplay;->setMessage(I)V

    .line 322
    :cond_8e
    :goto_8e
    iget-object p1, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mMessageArea:Lcom/android/keyguard/KeyguardMessageArea;

    if-eqz p1, :cond_95

    .line 323
    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->showErrorPasswordAnim(Landroid/view/View;)V

    :cond_95
    :goto_95
    xor-int/lit8 p1, p2, 0x1

    .line 327
    invoke-virtual {p0, v2, p1}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->resetPasswordText(ZZ)V

    return-void
.end method

.method public onPause()V
    .registers 3

    const/4 v0, 0x0

    .line 385
    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mResumed:Z

    .line 392
    iget-object v1, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mPendingLockCheck:Landroid/os/AsyncTask;

    if-eqz v1, :cond_d

    .line 393
    invoke-virtual {v1, v0}, Landroid/os/AsyncTask;->cancel(Z)Z

    const/4 v1, 0x0

    .line 394
    iput-object v1, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mPendingLockCheck:Landroid/os/AsyncTask;

    .line 400
    :cond_d
    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mRecongnizeFail:Z

    const/4 v1, 0x1

    .line 401
    invoke-virtual {p0, v1, v0}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->resetPasswordText(ZZ)V

    .line 402
    iget-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 403
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v1

    .line 402
    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->getLockoutAttemptDeadline(I)J

    move-result-wide v0

    .line 404
    invoke-virtual {p0, v0, v1}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->shouldLockout(J)Z

    move-result v0

    if-nez v0, :cond_2e

    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mLockoutFlag:Z

    if-nez v0, :cond_2e

    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mFPTimeOutFlag:Z

    if-nez v0, :cond_2e

    .line 405
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->updatePasswordText()V

    :cond_2e
    return-void
.end method

.method public onResume(I)V
    .registers 2

    const/4 p1, 0x1

    .line 412
    iput-boolean p1, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mResumed:Z

    .line 414
    iget-boolean p1, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mLockoutFlag:Z

    if-nez p1, :cond_12

    iget-boolean p1, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mRecongnizeFail:Z

    if-nez p1, :cond_12

    iget-boolean p1, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mFPTimeOutFlag:Z

    if-nez p1, :cond_12

    .line 415
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->updatePasswordText()V

    .line 417
    :cond_12
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->reset()V

    return-void
.end method

.method protected onUserInput()V
    .registers 2

    .line 360
    iget-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    if-eqz v0, :cond_c

    .line 361
    invoke-interface {v0}, Lcom/android/keyguard/KeyguardSecurityCallback;->userActivity()V

    .line 362
    iget-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    invoke-interface {v0}, Lcom/android/keyguard/KeyguardSecurityCallback;->onUserInput()V

    .line 364
    :cond_c
    iget-object p0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    const-string v0, ""

    invoke-interface {p0, v0}, Lcom/android/keyguard/SecurityMessageDisplay;->setMessage(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .registers 4

    .line 630
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onWindowFocusChanged(Z)V

    .line 631
    iget-object v0, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->sendAbsWindowFocusChange(Z)V

    if-eqz p1, :cond_25

    .line 633
    iget-object p1, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 634
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v0

    .line 633
    invoke-virtual {p1, v0}, Lcom/android/internal/widget/LockPatternUtils;->getLockoutAttemptDeadline(I)J

    move-result-wide v0

    .line 635
    invoke-virtual {p0, v0, v1}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->shouldLockout(J)Z

    move-result p1

    if-nez p1, :cond_22

    iget-boolean p1, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mLockoutFlag:Z

    if-eqz p1, :cond_25

    .line 638
    :cond_22
    invoke-virtual {p0, v0, v1}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mzHandleAttemptLockout(J)V

    :cond_25
    return-void
.end method

.method public prepareShakeAnim()Landroid/animation/AnimatorSet;
    .registers 3

    .line 809
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 811
    iget-object p0, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/systemui/R$anim;->error_anim:I

    invoke-static {p0, v1}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object p0

    check-cast p0, Landroid/animation/AnimatorSet;

    .line 812
    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {p0, v1}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 813
    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->getChildAnimations()Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/animation/AnimatorSet;->playSequentially(Ljava/util/List;)V

    return-object v0
.end method

.method public reset()V
    .registers 4

    const/4 v0, 0x0

    .line 123
    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mDismissing:Z

    .line 124
    invoke-virtual {p0, v0, v0}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->resetPasswordText(ZZ)V

    .line 126
    iget-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 127
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v1

    .line 126
    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->getLockoutAttemptDeadline(I)J

    move-result-wide v0

    .line 128
    invoke-virtual {p0, v0, v1}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->shouldLockout(J)Z

    move-result v2

    if-nez v2, :cond_1f

    iget-boolean v2, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mLockoutFlag:Z

    if-eqz v2, :cond_1b

    goto :goto_1f

    .line 134
    :cond_1b
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->resetState()V

    goto :goto_22

    .line 131
    :cond_1f
    :goto_1f
    invoke-virtual {p0, v0, v1}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mzHandleAttemptLockout(J)V

    :goto_22
    return-void
.end method

.method protected abstract resetPasswordText(ZZ)V
.end method

.method protected abstract resetState()V
.end method

.method public setKeyguardCallback(Lcom/android/keyguard/KeyguardSecurityCallback;)V
    .registers 2

    .line 111
    iput-object p1, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    return-void
.end method

.method public setLockPatternUtils(Lcom/android/internal/widget/LockPatternUtils;)V
    .registers 2

    .line 116
    iput-object p1, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 117
    iget-object p1, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p1}, Lcom/android/internal/widget/LockPatternUtils;->isTactileFeedbackEnabled()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mEnableHaptics:Z

    return-void
.end method

.method public setMessageColor(I)V
    .registers 2

    .line 939
    iget-object p0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mMessageArea:Lcom/android/keyguard/KeyguardMessageArea;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method

.method protected abstract setPasswordEntryEnabled(Z)V
.end method

.method protected abstract setPasswordEntryInputEnabled(Z)V
.end method

.method protected setThemeValues()V
    .registers 4

    .line 666
    sget v0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mEnmergencyColor:I

    if-eqz v0, :cond_31

    iget v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mCancelKeyAlpha:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_31

    .line 667
    iget-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mEcaView:Landroid/view/View;

    instance-of v0, v0, Lcom/android/keyguard/EmergencyCarrierArea;

    if-eqz v0, :cond_23

    const-string v0, "KeyguardAbsInputView"

    const-string v1, "mEcaView instanceof EmergencyCarrierArea"

    .line 668
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 669
    iget-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mEcaView:Landroid/view/View;

    check-cast v0, Lcom/android/keyguard/EmergencyCarrierArea;

    sget v1, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mEnmergencyColor:I

    iget v2, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mCancelKeyAlpha:F

    invoke-virtual {v0, v1, v2}, Lcom/android/keyguard/EmergencyCarrierArea;->setCarrierColor(IF)V

    .line 671
    :cond_23
    iget-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mCancelKey:Landroid/widget/TextView;

    sget v1, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mEnmergencyColor:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 672
    iget-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mCancelKey:Landroid/widget/TextView;

    iget p0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mCancelKeyAlpha:F

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setAlpha(F)V

    :cond_31
    return-void
.end method

.method protected shouldLockout(J)Z
    .registers 5

    const-wide/16 v0, 0x0

    cmp-long p0, p1, v0

    if-eqz p0, :cond_8

    const/4 p0, 0x1

    goto :goto_9

    :cond_8
    const/4 p0, 0x0

    :goto_9
    return p0
.end method

.method protected showErrorPasswordAnim(Landroid/view/View;)V
    .registers 8

    .line 795
    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->prepareAndCancelAnim(Landroid/view/View;)V

    if-eqz p1, :cond_3c

    .line 797
    iget-object p1, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mShakeAnim:Landroid/animation/AnimatorSet;

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    .line 798
    iget-object p1, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual {p1}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result p1

    if-eqz p1, :cond_3c

    .line 799
    invoke-static {}, Lcom/meizu/keyguard/FlymeFeatureUtil;->getInstance()Lcom/meizu/keyguard/FlymeFeatureUtil;

    move-result-object p1

    invoke-virtual {p1}, Lcom/meizu/keyguard/FlymeFeatureUtil;->hasSupprot()Z

    move-result p1

    if-eqz p1, :cond_30

    .line 800
    iget-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mVibrator:Landroid/os/Vibrator;

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    const/16 p0, 0x791b

    invoke-static {p0}, Landroid/os/VibrationEffect;->get(I)Landroid/os/VibrationEffect;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string v2, "com.android.systemui"

    invoke-virtual/range {v0 .. v5}, Landroid/os/Vibrator;->vibrate(ILjava/lang/String;Landroid/os/VibrationEffect;Ljava/lang/String;Landroid/media/AudioAttributes;)V

    goto :goto_3c

    .line 802
    :cond_30
    iget-object p0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mVibrator:Landroid/os/Vibrator;

    const/4 p1, 0x3

    new-array p1, p1, [J

    fill-array-data p1, :array_3e

    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Landroid/os/Vibrator;->vibrate([JI)V

    :cond_3c
    :goto_3c
    return-void

    nop

    :array_3e
    .array-data 8
        0x64
        0x1e
        0x12c
    .end array-data
.end method

.method public showMessage(Ljava/lang/CharSequence;Landroid/content/res/ColorStateList;)V
    .registers 4

    if-eqz p2, :cond_7

    .line 439
    iget-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    invoke-interface {v0, p2}, Lcom/android/keyguard/SecurityMessageDisplay;->setNextMessageColor(Landroid/content/res/ColorStateList;)V

    .line 441
    :cond_7
    iget-object p0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    invoke-interface {p0, p1}, Lcom/android/keyguard/SecurityMessageDisplay;->setMessage(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public showPromptReason(I)V
    .registers 3

    if-eqz p1, :cond_e

    .line 429
    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->getPromptReasonStringRes(I)I

    move-result p1

    if-eqz p1, :cond_e

    .line 431
    iget-object p0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    const/4 v0, 0x1

    invoke-interface {p0, p1, v0}, Lcom/android/keyguard/SecurityMessageDisplay;->setMessage(IZ)V

    :cond_e
    return-void
.end method

.method protected showRecongnizeFailAnim(Landroid/view/View;)V
    .registers 8

    .line 818
    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->prepareAndCancelAnim(Landroid/view/View;)V

    .line 819
    iget-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mShakeAnim:Landroid/animation/AnimatorSet;

    new-instance v1, Lcom/android/keyguard/KeyguardAbsKeyInputView$9;

    invoke-direct {v1, p0}, Lcom/android/keyguard/KeyguardAbsKeyInputView$9;-><init>(Lcom/android/keyguard/KeyguardAbsKeyInputView;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    if-eqz p1, :cond_46

    .line 845
    iget-object p1, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mShakeAnim:Landroid/animation/AnimatorSet;

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    .line 846
    iget-object p1, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual {p1}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result p1

    if-eqz p1, :cond_46

    .line 847
    invoke-static {}, Lcom/meizu/keyguard/FlymeFeatureUtil;->getInstance()Lcom/meizu/keyguard/FlymeFeatureUtil;

    move-result-object p1

    invoke-virtual {p1}, Lcom/meizu/keyguard/FlymeFeatureUtil;->hasSupprot()Z

    move-result p1

    if-eqz p1, :cond_3a

    .line 848
    iget-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mVibrator:Landroid/os/Vibrator;

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    const/16 p0, 0x791b

    invoke-static {p0}, Landroid/os/VibrationEffect;->get(I)Landroid/os/VibrationEffect;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string v2, "com.android.systemui"

    invoke-virtual/range {v0 .. v5}, Landroid/os/Vibrator;->vibrate(ILjava/lang/String;Landroid/os/VibrationEffect;Ljava/lang/String;Landroid/media/AudioAttributes;)V

    goto :goto_46

    .line 850
    :cond_3a
    iget-object p0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mVibrator:Landroid/os/Vibrator;

    const/4 p1, 0x3

    new-array p1, p1, [J

    fill-array-data p1, :array_48

    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Landroid/os/Vibrator;->vibrate([JI)V

    :cond_46
    :goto_46
    return-void

    nop

    :array_48
    .array-data 8
        0x64
        0x1e
        0x12c
    .end array-data
.end method

.method public startDisappearAnimation(Ljava/lang/Runnable;)Z
    .registers 2

    const/4 p0, 0x0

    return p0
.end method

.method protected verifyPasswordAndUnlock()V
    .registers 6

    .line 183
    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mDismissing:Z

    if-eqz v0, :cond_5

    return-void

    .line 185
    :cond_5
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->getPasswordText()[B

    move-result-object v0

    const/4 v1, 0x0

    .line 186
    invoke-virtual {p0, v1}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->setPasswordEntryInputEnabled(Z)V

    .line 187
    iget-object v2, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mPendingLockCheck:Landroid/os/AsyncTask;

    if-eqz v2, :cond_14

    .line 188
    invoke-virtual {v2, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 191
    :cond_14
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v2

    .line 192
    array-length v3, v0

    const/4 v4, 0x3

    if-gt v3, v4, :cond_27

    const/4 v3, 0x1

    .line 195
    invoke-virtual {p0, v3}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->setPasswordEntryInputEnabled(Z)V

    .line 196
    invoke-virtual {p0, v2, v1, v1, v1}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->onPasswordChecked(IZIZ)V

    .line 197
    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([BB)V

    return-void

    .line 201
    :cond_27
    iget-object v1, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/internal/util/LatencyTracker;->isEnabled(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_42

    .line 202
    iget-object v1, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/internal/util/LatencyTracker;->getInstance(Landroid/content/Context;)Lcom/android/internal/util/LatencyTracker;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/android/internal/util/LatencyTracker;->onActionStart(I)V

    .line 203
    iget-object v1, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/internal/util/LatencyTracker;->getInstance(Landroid/content/Context;)Lcom/android/internal/util/LatencyTracker;

    move-result-object v1

    const/4 v3, 0x4

    invoke-virtual {v1, v3}, Lcom/android/internal/util/LatencyTracker;->onActionStart(I)V

    .line 205
    :cond_42
    iget-object v1, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    new-instance v3, Lcom/android/keyguard/KeyguardAbsKeyInputView$1;

    invoke-direct {v3, p0, v2, v0}, Lcom/android/keyguard/KeyguardAbsKeyInputView$1;-><init>(Lcom/android/keyguard/KeyguardAbsKeyInputView;I[B)V

    invoke-static {v1, v0, v2, v3}, Lcom/android/internal/widget/LockPatternChecker;->checkPassword(Lcom/android/internal/widget/LockPatternUtils;[BILcom/android/internal/widget/LockPatternChecker$OnCheckCallback;)Landroid/os/AsyncTask;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mPendingLockCheck:Landroid/os/AsyncTask;

    return-void
.end method

.method protected verifyPrivacyPasswordAndUnlock()Z
    .registers 6

    .line 732
    new-instance v0, Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->getPasswordText()[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    .line 733
    iget-object v1, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    const/4 v2, 0x2

    invoke-virtual {v1, v2, v0}, Lcom/android/internal/widget/LockPatternUtils;->checkFlymePassword(ILjava/lang/String;)Z

    move-result v1

    .line 734
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "match ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "KeyguardAbsInputView"

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v1, :cond_4f

    .line 737
    iget-object v2, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintController;->getInstance(Landroid/content/Context;)Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintController;->isFirstBootUnlock()Z

    move-result v2

    if-nez v2, :cond_45

    .line 738
    iget-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    sget v2, Lcom/android/systemui/R$string;->verify_nomal_password:I

    const/4 v3, 0x1

    invoke-interface {v0, v2, v3}, Lcom/android/keyguard/SecurityMessageDisplay;->setMessage(IZ)V

    .line 739
    iget-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mMessageArea:Lcom/android/keyguard/KeyguardMessageArea;

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->showErrorPasswordAnim(Landroid/view/View;)V

    return v1

    .line 744
    :cond_45
    new-instance v2, Lcom/android/keyguard/KeyguardAbsKeyInputView$8;

    invoke-direct {v2, p0, v1, v0}, Lcom/android/keyguard/KeyguardAbsKeyInputView$8;-><init>(Lcom/android/keyguard/KeyguardAbsKeyInputView;ZLjava/lang/String;)V

    const-wide/16 v3, 0x28

    invoke-virtual {p0, v2, v3, v4}, Landroid/widget/LinearLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_4f
    return v1
.end method
