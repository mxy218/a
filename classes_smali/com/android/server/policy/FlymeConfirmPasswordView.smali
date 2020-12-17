.class public final Lcom/android/server/policy/FlymeConfirmPasswordView;
.super Landroid/widget/FrameLayout;
.source "FlymeConfirmPasswordView.java"

# interfaces
.implements Lcom/meizu/widget/ShutdownLockView$OnPanelListener;


# static fields
.field private static final FAILED_ATTEMPTS_BEFORE_HIGH_TIMEOUT:I = 0xa

.field private static final FAILED_ATTEMPTS_BEFORE_TIMEOUT:I = 0x5

.field private static final FAILED_ATTEMPT_TIMEOUT_HIGH_MS:I = 0x493e0

.field private static final FAILED_ATTEMPT_TIMEOUT_LOW_MS:I = 0xea60

.field public static final FINDPHONE_ENABLED:I = 0x2

.field public static final FIND_PHONE_SETTING_KEY:Ljava/lang/String; = "com.meizu.flyme.FindPhone"

.field private static final LOCK_SETTINGS_KEY_PASSWORD_TYPE_BACKUP:Ljava/lang/String; = "lockscreen.password_type_mz_backup"

.field public static final PASSWORD_FROM_SCREEN_LOCK:I = 0x0

.field public static final PASSWORD_MIN_LENGTH_SIMPLE:I = 0x4

.field public static final PASSWORD_TYPE_COMPLEX:I = 0x1

.field public static final PASSWORD_TYPE_SIMPLE:I = 0x0

.field private static final TAG:Ljava/lang/String; = "ConfirmPasswordView"


# instance fields
.field private mAuthenticationCallback:Landroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;

.field private mCancelButton:Landroid/widget/TextView;

.field private mContext:Landroid/content/Context;

.field private mCountdownTimer:Landroid/os/CountDownTimer;

.field private mDismissRunnable:Ljava/lang/Runnable;

.field private mEndRunnable:Ljava/lang/Runnable;

.field private mFindPhoneAbstract:Lcom/meizu/findphone/FindPhoneAbstract;

.field private mFingerprintCancelSignal:Landroid/os/CancellationSignal;

.field private mFingerprintDetectionRunning:Z

.field private mFingerprintLockout:Z

.field private mFingerprintUsedAsUnlock:Z

.field private mFpm:Landroid/hardware/fingerprint/FingerprintManager;

.field private mLockDigitPanel:Lcom/meizu/widget/ShutdownLockView;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mLockSettingsService:Lcom/android/internal/widget/ILockSettings;

.field private mLockoutFlag:Z

.field private mMaxNum:I

.field private mPasswordType:I

.field private mScheduledExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

.field private mShowButtonsRunnable:Ljava/lang/Runnable;

.field private mTimeoutCount:I

.field private mTimerTask:Ljava/util/TimerTask;

.field private mVerifyTips:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1, "context"  # Landroid/content/Context;
    .param p2, "attrs"  # Landroid/util/AttributeSet;

    .line 72
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/policy/FlymeConfirmPasswordView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 73
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 6
    .param p1, "context"  # Landroid/content/Context;
    .param p2, "attrs"  # Landroid/util/AttributeSet;
    .param p3, "defStyle"  # I

    .line 76
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 46
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/policy/FlymeConfirmPasswordView;->mEndRunnable:Ljava/lang/Runnable;

    .line 47
    iput-object v0, p0, Lcom/android/server/policy/FlymeConfirmPasswordView;->mShowButtonsRunnable:Ljava/lang/Runnable;

    .line 48
    iput-object v0, p0, Lcom/android/server/policy/FlymeConfirmPasswordView;->mDismissRunnable:Ljava/lang/Runnable;

    .line 57
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/server/policy/FlymeConfirmPasswordView;->mPasswordType:I

    .line 59
    iput-object v0, p0, Lcom/android/server/policy/FlymeConfirmPasswordView;->mScheduledExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    .line 60
    iput-object v0, p0, Lcom/android/server/policy/FlymeConfirmPasswordView;->mTimerTask:Ljava/util/TimerTask;

    .line 64
    iput-object v0, p0, Lcom/android/server/policy/FlymeConfirmPasswordView;->mCountdownTimer:Landroid/os/CountDownTimer;

    .line 428
    new-instance v0, Lcom/android/server/policy/FlymeConfirmPasswordView$6;

    invoke-direct {v0, p0}, Lcom/android/server/policy/FlymeConfirmPasswordView$6;-><init>(Lcom/android/server/policy/FlymeConfirmPasswordView;)V

    iput-object v0, p0, Lcom/android/server/policy/FlymeConfirmPasswordView;->mAuthenticationCallback:Landroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;

    .line 77
    iput-object p1, p0, Lcom/android/server/policy/FlymeConfirmPasswordView;->mContext:Landroid/content/Context;

    .line 78
    invoke-direct {p0}, Lcom/android/server/policy/FlymeConfirmPasswordView;->initViews()V

    .line 79
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/policy/FlymeConfirmPasswordView;)Ljava/lang/Runnable;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/policy/FlymeConfirmPasswordView;

    .line 37
    iget-object v0, p0, Lcom/android/server/policy/FlymeConfirmPasswordView;->mDismissRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/policy/FlymeConfirmPasswordView;)Lcom/meizu/widget/ShutdownLockView;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/policy/FlymeConfirmPasswordView;

    .line 37
    iget-object v0, p0, Lcom/android/server/policy/FlymeConfirmPasswordView;->mLockDigitPanel:Lcom/meizu/widget/ShutdownLockView;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/server/policy/FlymeConfirmPasswordView;)V
    .registers 1
    .param p0, "x0"  # Lcom/android/server/policy/FlymeConfirmPasswordView;

    .line 37
    invoke-direct {p0}, Lcom/android/server/policy/FlymeConfirmPasswordView;->handleFingerprintAuthFailed()V

    return-void
.end method

.method static synthetic access$1102(Lcom/android/server/policy/FlymeConfirmPasswordView;Z)Z
    .registers 2
    .param p0, "x0"  # Lcom/android/server/policy/FlymeConfirmPasswordView;
    .param p1, "x1"  # Z

    .line 37
    iput-boolean p1, p0, Lcom/android/server/policy/FlymeConfirmPasswordView;->mLockoutFlag:Z

    return p1
.end method

.method static synthetic access$1200(Lcom/android/server/policy/FlymeConfirmPasswordView;Landroid/hardware/fingerprint/FingerprintManager$AuthenticationResult;)V
    .registers 2
    .param p0, "x0"  # Lcom/android/server/policy/FlymeConfirmPasswordView;
    .param p1, "x1"  # Landroid/hardware/fingerprint/FingerprintManager$AuthenticationResult;

    .line 37
    invoke-direct {p0, p1}, Lcom/android/server/policy/FlymeConfirmPasswordView;->handleFingerprintAuthenticated(Landroid/hardware/fingerprint/FingerprintManager$AuthenticationResult;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/server/policy/FlymeConfirmPasswordView;ILjava/lang/String;)V
    .registers 3
    .param p0, "x0"  # Lcom/android/server/policy/FlymeConfirmPasswordView;
    .param p1, "x1"  # I
    .param p2, "x2"  # Ljava/lang/String;

    .line 37
    invoke-direct {p0, p1, p2}, Lcom/android/server/policy/FlymeConfirmPasswordView;->handleFingerprintHelp(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/server/policy/FlymeConfirmPasswordView;ILjava/lang/String;)V
    .registers 3
    .param p0, "x0"  # Lcom/android/server/policy/FlymeConfirmPasswordView;
    .param p1, "x1"  # I
    .param p2, "x2"  # Ljava/lang/String;

    .line 37
    invoke-direct {p0, p1, p2}, Lcom/android/server/policy/FlymeConfirmPasswordView;->handleFingerprintError(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/server/policy/FlymeConfirmPasswordView;I)V
    .registers 2
    .param p0, "x0"  # Lcom/android/server/policy/FlymeConfirmPasswordView;
    .param p1, "x1"  # I

    .line 37
    invoke-direct {p0, p1}, Lcom/android/server/policy/FlymeConfirmPasswordView;->handleFingerprintAcquired(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/policy/FlymeConfirmPasswordView;Landroid/widget/EditText;)V
    .registers 2
    .param p0, "x0"  # Lcom/android/server/policy/FlymeConfirmPasswordView;
    .param p1, "x1"  # Landroid/widget/EditText;

    .line 37
    invoke-direct {p0, p1}, Lcom/android/server/policy/FlymeConfirmPasswordView;->showComplexKeypad(Landroid/widget/EditText;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/policy/FlymeConfirmPasswordView;)Ljava/lang/Runnable;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/policy/FlymeConfirmPasswordView;

    .line 37
    iget-object v0, p0, Lcom/android/server/policy/FlymeConfirmPasswordView;->mEndRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/policy/FlymeConfirmPasswordView;)Lcom/meizu/findphone/FindPhoneAbstract;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/policy/FlymeConfirmPasswordView;

    .line 37
    iget-object v0, p0, Lcom/android/server/policy/FlymeConfirmPasswordView;->mFindPhoneAbstract:Lcom/meizu/findphone/FindPhoneAbstract;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/policy/FlymeConfirmPasswordView;)Lcom/android/internal/widget/LockPatternUtils;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/policy/FlymeConfirmPasswordView;

    .line 37
    iget-object v0, p0, Lcom/android/server/policy/FlymeConfirmPasswordView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/policy/FlymeConfirmPasswordView;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/policy/FlymeConfirmPasswordView;

    .line 37
    iget-object v0, p0, Lcom/android/server/policy/FlymeConfirmPasswordView;->mVerifyTips:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$602(Lcom/android/server/policy/FlymeConfirmPasswordView;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/policy/FlymeConfirmPasswordView;
    .param p1, "x1"  # Ljava/lang/String;

    .line 37
    iput-object p1, p0, Lcom/android/server/policy/FlymeConfirmPasswordView;->mVerifyTips:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$700(Lcom/android/server/policy/FlymeConfirmPasswordView;)I
    .registers 2
    .param p0, "x0"  # Lcom/android/server/policy/FlymeConfirmPasswordView;

    .line 37
    iget v0, p0, Lcom/android/server/policy/FlymeConfirmPasswordView;->mTimeoutCount:I

    return v0
.end method

.method static synthetic access$710(Lcom/android/server/policy/FlymeConfirmPasswordView;)I
    .registers 3
    .param p0, "x0"  # Lcom/android/server/policy/FlymeConfirmPasswordView;

    .line 37
    iget v0, p0, Lcom/android/server/policy/FlymeConfirmPasswordView;->mTimeoutCount:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/android/server/policy/FlymeConfirmPasswordView;->mTimeoutCount:I

    return v0
.end method

.method static synthetic access$802(Lcom/android/server/policy/FlymeConfirmPasswordView;Z)Z
    .registers 2
    .param p0, "x0"  # Lcom/android/server/policy/FlymeConfirmPasswordView;
    .param p1, "x1"  # Z

    .line 37
    iput-boolean p1, p0, Lcom/android/server/policy/FlymeConfirmPasswordView;->mFingerprintLockout:Z

    return p1
.end method

.method static synthetic access$900(Lcom/android/server/policy/FlymeConfirmPasswordView;)V
    .registers 1
    .param p0, "x0"  # Lcom/android/server/policy/FlymeConfirmPasswordView;

    .line 37
    invoke-direct {p0}, Lcom/android/server/policy/FlymeConfirmPasswordView;->cancelTimer()V

    return-void
.end method

.method private cancelTimer()V
    .registers 3

    .line 389
    iget-object v0, p0, Lcom/android/server/policy/FlymeConfirmPasswordView;->mTimerTask:Ljava/util/TimerTask;

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    .line 390
    invoke-virtual {v0}, Ljava/util/TimerTask;->cancel()Z

    .line 391
    iput-object v1, p0, Lcom/android/server/policy/FlymeConfirmPasswordView;->mTimerTask:Ljava/util/TimerTask;

    .line 393
    :cond_a
    iget-object v0, p0, Lcom/android/server/policy/FlymeConfirmPasswordView;->mScheduledExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    if-eqz v0, :cond_13

    .line 394
    invoke-interface {v0}, Ljava/util/concurrent/ScheduledExecutorService;->shutdownNow()Ljava/util/List;

    .line 395
    iput-object v1, p0, Lcom/android/server/policy/FlymeConfirmPasswordView;->mScheduledExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    .line 397
    :cond_13
    return-void
.end method

.method private getLocksSettingsValue(Ljava/lang/String;I)I
    .registers 8
    .param p1, "key"  # Ljava/lang/String;
    .param p2, "defalutValue"  # I

    .line 253
    move v0, p2

    .line 255
    .local v0, "value":I
    :try_start_1
    iget-object v1, p0, Lcom/android/server/policy/FlymeConfirmPasswordView;->mLockSettingsService:Lcom/android/internal/widget/ILockSettings;

    int-to-long v2, p2

    .line 256
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v4

    .line 255
    invoke-interface {v1, p1, v2, v3, v4}, Lcom/android/internal/widget/ILockSettings;->getLong(Ljava/lang/String;JI)J

    move-result-wide v1
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_c} :catch_e

    long-to-int v0, v1

    .line 259
    goto :goto_12

    .line 257
    :catch_e
    move-exception v1

    .line 258
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 260
    .end local v1  # "e":Landroid/os/RemoteException;
    :goto_12
    return v0
.end method

.method private handleFingerprintAcquired(I)V
    .registers 2
    .param p1, "acquireInfo"  # I

    .line 322
    if-eqz p1, :cond_3

    .line 323
    return-void

    .line 325
    :cond_3
    return-void
.end method

.method private handleFingerprintAuthFailed()V
    .registers 3

    .line 317
    invoke-virtual {p0}, Lcom/android/server/policy/FlymeConfirmPasswordView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0xa10008e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/policy/FlymeConfirmPasswordView;->mVerifyTips:Ljava/lang/String;

    .line 318
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/policy/FlymeConfirmPasswordView;->onResult(Z)V

    .line 319
    return-void
.end method

.method private handleFingerprintAuthenticated(Landroid/hardware/fingerprint/FingerprintManager$AuthenticationResult;)V
    .registers 3
    .param p1, "result"  # Landroid/hardware/fingerprint/FingerprintManager$AuthenticationResult;

    .line 425
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/server/policy/FlymeConfirmPasswordView;->onResult(Z)V

    .line 426
    return-void
.end method

.method private handleFingerprintError(ILjava/lang/String;)V
    .registers 4
    .param p1, "msgId"  # I
    .param p2, "errString"  # Ljava/lang/String;

    .line 333
    :try_start_0
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 334
    .local v0, "timeout":I
    invoke-direct {p0, p1, v0}, Lcom/android/server/policy/FlymeConfirmPasswordView;->handleRecogniseError(II)V
    :try_end_7
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_7} :catch_8

    .line 337
    .end local v0  # "timeout":I
    goto :goto_c

    .line 335
    :catch_8
    move-exception v0

    .line 336
    .local v0, "e":Ljava/lang/NumberFormatException;
    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    .line 338
    .end local v0  # "e":Ljava/lang/NumberFormatException;
    :goto_c
    return-void
.end method

.method private handleFingerprintHelp(ILjava/lang/String;)V
    .registers 3
    .param p1, "msgId"  # I
    .param p2, "helpString"  # Ljava/lang/String;

    .line 329
    return-void
.end method

.method private handleRecogniseError(II)V
    .registers 4
    .param p1, "lockout"  # I
    .param p2, "timeout"  # I

    .line 341
    const/4 v0, 0x7

    if-ne p1, v0, :cond_8

    .line 342
    iput p2, p0, Lcom/android/server/policy/FlymeConfirmPasswordView;->mTimeoutCount:I

    .line 343
    invoke-direct {p0}, Lcom/android/server/policy/FlymeConfirmPasswordView;->startCountDownTimer()V

    .line 345
    :cond_8
    return-void
.end method

.method private initFingerPrint()V
    .registers 4

    .line 264
    iget-object v0, p0, Lcom/android/server/policy/FlymeConfirmPasswordView;->mContext:Landroid/content/Context;

    const-string v1, "fingerprint"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/fingerprint/FingerprintManager;

    iput-object v0, p0, Lcom/android/server/policy/FlymeConfirmPasswordView;->mFpm:Landroid/hardware/fingerprint/FingerprintManager;

    .line 265
    iget-object v0, p0, Lcom/android/server/policy/FlymeConfirmPasswordView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    const-string/jumbo v2, "mz_fingerprint_use_unlock"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1e

    move v1, v2

    :cond_1e
    iput-boolean v1, p0, Lcom/android/server/policy/FlymeConfirmPasswordView;->mFingerprintUsedAsUnlock:Z

    .line 267
    invoke-direct {p0}, Lcom/android/server/policy/FlymeConfirmPasswordView;->updateFingerprintListeningState()V

    .line 268
    return-void
.end method

.method private initViews()V
    .registers 5

    .line 91
    invoke-static {}, Lcom/meizu/findphone/FindPhoneAbstract;->newFindphoneUtils()Lcom/meizu/findphone/FindPhoneAbstract;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/policy/FlymeConfirmPasswordView;->mFindPhoneAbstract:Lcom/meizu/findphone/FindPhoneAbstract;

    .line 92
    nop

    .line 93
    const-string/jumbo v0, "lock_settings"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 92
    invoke-static {v0}, Lcom/android/internal/widget/ILockSettings$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/widget/ILockSettings;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/policy/FlymeConfirmPasswordView;->mLockSettingsService:Lcom/android/internal/widget/ILockSettings;

    .line 94
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v1, p0, Lcom/android/server/policy/FlymeConfirmPasswordView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/policy/FlymeConfirmPasswordView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 95
    iget-object v0, p0, Lcom/android/server/policy/FlymeConfirmPasswordView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 96
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const v1, 0xa0d0043

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 97
    .local v1, "layout":Landroid/view/View;
    const v2, 0xa0a004a

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/meizu/widget/ShutdownLockView;

    iput-object v2, p0, Lcom/android/server/policy/FlymeConfirmPasswordView;->mLockDigitPanel:Lcom/meizu/widget/ShutdownLockView;

    .line 98
    iget-object v2, p0, Lcom/android/server/policy/FlymeConfirmPasswordView;->mLockDigitPanel:Lcom/meizu/widget/ShutdownLockView;

    invoke-virtual {v2}, Lcom/meizu/widget/ShutdownLockView;->getCancelText()Landroid/widget/TextView;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/policy/FlymeConfirmPasswordView;->mCancelButton:Landroid/widget/TextView;

    .line 99
    invoke-virtual {p0, v1}, Lcom/android/server/policy/FlymeConfirmPasswordView;->addView(Landroid/view/View;)V

    .line 102
    iget-object v2, p0, Lcom/android/server/policy/FlymeConfirmPasswordView;->mLockDigitPanel:Lcom/meizu/widget/ShutdownLockView;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/meizu/widget/ShutdownLockView;->setInputTextButtonVisibility(Z)V

    .line 103
    iget-object v2, p0, Lcom/android/server/policy/FlymeConfirmPasswordView;->mLockDigitPanel:Lcom/meizu/widget/ShutdownLockView;

    invoke-virtual {v2, p0}, Lcom/meizu/widget/ShutdownLockView;->setPanelListener(Lcom/meizu/widget/ShutdownLockView$OnPanelListener;)V

    .line 104
    iget-object v2, p0, Lcom/android/server/policy/FlymeConfirmPasswordView;->mCancelButton:Landroid/widget/TextView;

    new-instance v3, Lcom/android/server/policy/FlymeConfirmPasswordView$1;

    invoke-direct {v3, p0}, Lcom/android/server/policy/FlymeConfirmPasswordView$1;-><init>(Lcom/android/server/policy/FlymeConfirmPasswordView;)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 110
    invoke-direct {p0}, Lcom/android/server/policy/FlymeConfirmPasswordView;->refreshViews()V

    .line 111
    return-void
.end method

.method private notifyFingerprintRunningStateChanged()V
    .registers 1

    .line 418
    return-void
.end method

.method private onFingerprintAuthenticated(IZ)V
    .registers 3
    .param p1, "userId"  # I
    .param p2, "wakeAndUnlocking"  # Z

    .line 314
    return-void
.end method

.method private onResult(Z)V
    .registers 3
    .param p1, "result"  # Z

    .line 180
    new-instance v0, Lcom/android/server/policy/FlymeConfirmPasswordView$3;

    invoke-direct {v0, p0, p1}, Lcom/android/server/policy/FlymeConfirmPasswordView$3;-><init>(Lcom/android/server/policy/FlymeConfirmPasswordView;Z)V

    invoke-virtual {p0, v0}, Lcom/android/server/policy/FlymeConfirmPasswordView;->post(Ljava/lang/Runnable;)Z

    .line 210
    return-void
.end method

.method private refreshViews()V
    .registers 5

    .line 113
    invoke-virtual {p0}, Lcom/android/server/policy/FlymeConfirmPasswordView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0xa10002b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/policy/FlymeConfirmPasswordView;->mVerifyTips:Ljava/lang/String;

    .line 114
    invoke-virtual {p0}, Lcom/android/server/policy/FlymeConfirmPasswordView;->getPasswordType()I

    move-result v0

    iput v0, p0, Lcom/android/server/policy/FlymeConfirmPasswordView;->mPasswordType:I

    .line 115
    iget-object v0, p0, Lcom/android/server/policy/FlymeConfirmPasswordView;->mLockDigitPanel:Lcom/meizu/widget/ShutdownLockView;

    iget v1, p0, Lcom/android/server/policy/FlymeConfirmPasswordView;->mPasswordType:I

    invoke-virtual {v0, v1}, Lcom/meizu/widget/ShutdownLockView;->setKeyPadType(I)V

    .line 116
    iget-object v0, p0, Lcom/android/server/policy/FlymeConfirmPasswordView;->mFindPhoneAbstract:Lcom/meizu/findphone/FindPhoneAbstract;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/meizu/findphone/FindPhoneAbstract;->processLeftTimes(Z)I

    move-result v0

    .line 117
    .local v0, "leftTimes":I
    const/4 v2, 0x3

    if-ge v0, v2, :cond_30

    invoke-virtual {p0}, Lcom/android/server/policy/FlymeConfirmPasswordView;->hasFlymeAccount()Z

    move-result v2

    if-eqz v2, :cond_30

    invoke-virtual {p0}, Lcom/android/server/policy/FlymeConfirmPasswordView;->isFindPhoneEnabled()Z

    move-result v2

    if-nez v2, :cond_37

    .line 118
    :cond_30
    iget-object v2, p0, Lcom/android/server/policy/FlymeConfirmPasswordView;->mLockDigitPanel:Lcom/meizu/widget/ShutdownLockView;

    iget-object v3, p0, Lcom/android/server/policy/FlymeConfirmPasswordView;->mVerifyTips:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/meizu/widget/ShutdownLockView;->setTip(Ljava/lang/String;)V

    .line 120
    :cond_37
    const/4 v2, 0x4

    const-string/jumbo v3, "meizu_password_length"

    invoke-direct {p0, v3, v2}, Lcom/android/server/policy/FlymeConfirmPasswordView;->getLocksSettingsValue(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/android/server/policy/FlymeConfirmPasswordView;->mMaxNum:I

    .line 121
    iget-object v2, p0, Lcom/android/server/policy/FlymeConfirmPasswordView;->mLockDigitPanel:Lcom/meizu/widget/ShutdownLockView;

    iget v3, p0, Lcom/android/server/policy/FlymeConfirmPasswordView;->mMaxNum:I

    invoke-virtual {v2, v3}, Lcom/meizu/widget/ShutdownLockView;->setMaxLen(I)V

    .line 122
    iget v2, p0, Lcom/android/server/policy/FlymeConfirmPasswordView;->mPasswordType:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_58

    .line 123
    iget-object v2, p0, Lcom/android/server/policy/FlymeConfirmPasswordView;->mLockDigitPanel:Lcom/meizu/widget/ShutdownLockView;

    invoke-virtual {v2, v1}, Lcom/meizu/widget/ShutdownLockView;->setHollowVisible(Z)V

    .line 124
    iget-object v2, p0, Lcom/android/server/policy/FlymeConfirmPasswordView;->mLockDigitPanel:Lcom/meizu/widget/ShutdownLockView;

    invoke-virtual {v2, v1}, Lcom/meizu/widget/ShutdownLockView;->setInputTextButtonVisibility(Z)V

    goto :goto_5d

    .line 126
    :cond_58
    iget-object v1, p0, Lcom/android/server/policy/FlymeConfirmPasswordView;->mLockDigitPanel:Lcom/meizu/widget/ShutdownLockView;

    invoke-virtual {v1, v3}, Lcom/meizu/widget/ShutdownLockView;->setHollowVisible(Z)V

    .line 129
    :goto_5d
    return-void
.end method

.method private setFingerprintRunningDetectionRunning(Z)V
    .registers 3
    .param p1, "running"  # Z

    .line 400
    iget-boolean v0, p0, Lcom/android/server/policy/FlymeConfirmPasswordView;->mFingerprintDetectionRunning:Z

    if-eq p1, v0, :cond_9

    .line 401
    iput-boolean p1, p0, Lcom/android/server/policy/FlymeConfirmPasswordView;->mFingerprintDetectionRunning:Z

    .line 402
    invoke-direct {p0}, Lcom/android/server/policy/FlymeConfirmPasswordView;->notifyFingerprintRunningStateChanged()V

    .line 404
    :cond_9
    return-void
.end method

.method private shouldListenForFingerprint()Z
    .registers 2

    .line 281
    invoke-virtual {p0}, Lcom/android/server/policy/FlymeConfirmPasswordView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    .line 282
    .local v0, "shouldFPVisible":Z
    :goto_9
    return v0
.end method

.method private showComplexKeypad(Landroid/widget/EditText;)V
    .registers 4
    .param p1, "editText"  # Landroid/widget/EditText;

    .line 407
    if-eqz p1, :cond_23

    invoke-virtual {p1}, Landroid/widget/EditText;->getVisibility()I

    move-result v0

    if-nez v0, :cond_23

    .line 408
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 409
    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setFocusableInTouchMode(Z)V

    .line 410
    invoke-virtual {p1}, Landroid/widget/EditText;->requestFocus()Z

    .line 411
    invoke-virtual {p1}, Landroid/widget/EditText;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 412
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    const/4 v1, 0x2

    invoke-virtual {v0, p1, v1}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 414
    .end local v0  # "imm":Landroid/view/inputmethod/InputMethodManager;
    :cond_23
    return-void
.end method

.method private startCountDownTimer()V
    .registers 6

    .line 348
    iget-object v0, p0, Lcom/android/server/policy/FlymeConfirmPasswordView;->mScheduledExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    if-nez v0, :cond_11

    .line 349
    new-instance v0, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    const/4 v1, 0x1

    new-instance v2, Lcom/android/server/policy/FlymeConfirmPasswordView$4;

    invoke-direct {v2, p0}, Lcom/android/server/policy/FlymeConfirmPasswordView$4;-><init>(Lcom/android/server/policy/FlymeConfirmPasswordView;)V

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;-><init>(ILjava/util/concurrent/ThreadFactory;)V

    iput-object v0, p0, Lcom/android/server/policy/FlymeConfirmPasswordView;->mScheduledExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    .line 359
    :cond_11
    iget-object v0, p0, Lcom/android/server/policy/FlymeConfirmPasswordView;->mTimerTask:Ljava/util/TimerTask;

    if-nez v0, :cond_27

    .line 360
    new-instance v0, Lcom/android/server/policy/FlymeConfirmPasswordView$5;

    invoke-direct {v0, p0}, Lcom/android/server/policy/FlymeConfirmPasswordView$5;-><init>(Lcom/android/server/policy/FlymeConfirmPasswordView;)V

    iput-object v0, p0, Lcom/android/server/policy/FlymeConfirmPasswordView;->mTimerTask:Ljava/util/TimerTask;

    .line 384
    iget-object v0, p0, Lcom/android/server/policy/FlymeConfirmPasswordView;->mScheduledExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    iget-object v1, p0, Lcom/android/server/policy/FlymeConfirmPasswordView;->mTimerTask:Ljava/util/TimerTask;

    const-wide/16 v2, 0x1

    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v1, v2, v3, v4}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 386
    :cond_27
    return-void
.end method

.method private startListeningForFingerprint()V
    .registers 3

    .line 286
    const-string v0, "ConfirmPasswordView"

    const-string/jumbo v1, "startListeningForFingerprint()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    .line 288
    .local v0, "userId":I
    invoke-virtual {p0, v0}, Lcom/android/server/policy/FlymeConfirmPasswordView;->isUnlockWithFingerPrintPossible(I)Z

    move-result v1

    if-eqz v1, :cond_24

    .line 289
    iget-object v1, p0, Lcom/android/server/policy/FlymeConfirmPasswordView;->mFingerprintCancelSignal:Landroid/os/CancellationSignal;

    if-eqz v1, :cond_19

    .line 290
    invoke-virtual {v1}, Landroid/os/CancellationSignal;->cancel()V

    .line 292
    :cond_19
    new-instance v1, Landroid/os/CancellationSignal;

    invoke-direct {v1}, Landroid/os/CancellationSignal;-><init>()V

    iput-object v1, p0, Lcom/android/server/policy/FlymeConfirmPasswordView;->mFingerprintCancelSignal:Landroid/os/CancellationSignal;

    .line 295
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/android/server/policy/FlymeConfirmPasswordView;->setFingerprintRunningDetectionRunning(Z)V

    .line 297
    :cond_24
    return-void
.end method

.method private stopListeningForFingerprint()V
    .registers 2

    .line 305
    invoke-virtual {p0}, Lcom/android/server/policy/FlymeConfirmPasswordView;->isFingerprintDetectionRunning()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 306
    iget-object v0, p0, Lcom/android/server/policy/FlymeConfirmPasswordView;->mFingerprintCancelSignal:Landroid/os/CancellationSignal;

    invoke-virtual {v0}, Landroid/os/CancellationSignal;->cancel()V

    .line 307
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/policy/FlymeConfirmPasswordView;->mFingerprintCancelSignal:Landroid/os/CancellationSignal;

    .line 309
    :cond_e
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/policy/FlymeConfirmPasswordView;->setFingerprintRunningDetectionRunning(Z)V

    .line 310
    return-void
.end method

.method private updateFingerprintListeningState()V
    .registers 3

    .line 272
    invoke-direct {p0}, Lcom/android/server/policy/FlymeConfirmPasswordView;->shouldListenForFingerprint()Z

    move-result v0

    .line 273
    .local v0, "shouldListenForFingerprint":Z
    iget-boolean v1, p0, Lcom/android/server/policy/FlymeConfirmPasswordView;->mFingerprintDetectionRunning:Z

    if-eqz v1, :cond_e

    if-nez v0, :cond_e

    .line 274
    invoke-direct {p0}, Lcom/android/server/policy/FlymeConfirmPasswordView;->stopListeningForFingerprint()V

    goto :goto_17

    .line 275
    :cond_e
    iget-boolean v1, p0, Lcom/android/server/policy/FlymeConfirmPasswordView;->mFingerprintDetectionRunning:Z

    if-nez v1, :cond_17

    if-eqz v0, :cond_17

    .line 276
    invoke-direct {p0}, Lcom/android/server/policy/FlymeConfirmPasswordView;->startListeningForFingerprint()V

    .line 278
    :cond_17
    :goto_17
    return-void
.end method

.method private verifyThePassword(Ljava/lang/String;)V
    .registers 5
    .param p1, "password"  # Ljava/lang/String;

    .line 171
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/android/server/policy/FlymeConfirmPasswordView;->checkPassword(ILjava/lang/String;)Z

    move-result v0

    .line 172
    .local v0, "result":Z
    if-nez v0, :cond_14

    .line 173
    invoke-virtual {p0}, Lcom/android/server/policy/FlymeConfirmPasswordView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0xa10002c

    .line 174
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/policy/FlymeConfirmPasswordView;->mVerifyTips:Ljava/lang/String;

    .line 176
    :cond_14
    invoke-direct {p0, v0}, Lcom/android/server/policy/FlymeConfirmPasswordView;->onResult(Z)V

    .line 177
    return-void
.end method


# virtual methods
.method public checkPassword(ILjava/lang/String;)Z
    .registers 6
    .param p1, "passwordFrom"  # I
    .param p2, "password"  # Ljava/lang/String;

    .line 213
    const/4 v0, 0x0

    .line 216
    .local v0, "ret":Z
    :try_start_1
    iget-object v1, p0, Lcom/android/server/policy/FlymeConfirmPasswordView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v2

    invoke-virtual {v1, p2, v2}, Lcom/android/internal/widget/LockPatternUtils;->checkPassword(Ljava/lang/String;I)Z

    move-result v1

    if-nez v1, :cond_19

    iget-object v1, p0, Lcom/android/server/policy/FlymeConfirmPasswordView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    const/4 v2, 0x2

    .line 218
    invoke-virtual {v1, v2, p2}, Lcom/android/internal/widget/LockPatternUtils;->checkFlymePassword(ILjava/lang/String;)Z

    move-result v1
    :try_end_14
    .catch Lcom/android/internal/widget/LockPatternUtils$RequestThrottledException; {:try_start_1 .. :try_end_14} :catch_1c

    if-eqz v1, :cond_17

    goto :goto_19

    :cond_17
    const/4 v1, 0x0

    goto :goto_1a

    :cond_19
    :goto_19
    const/4 v1, 0x1

    :goto_1a
    move v0, v1

    .line 221
    goto :goto_20

    .line 219
    :catch_1c
    move-exception v1

    .line 220
    .local v1, "e":Lcom/android/internal/widget/LockPatternUtils$RequestThrottledException;
    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternUtils$RequestThrottledException;->printStackTrace()V

    .line 222
    .end local v1  # "e":Lcom/android/internal/widget/LockPatternUtils$RequestThrottledException;
    :goto_20
    return v0
.end method

.method public fingerprintUsedAsUnlock()Z
    .registers 2

    .line 461
    iget-boolean v0, p0, Lcom/android/server/policy/FlymeConfirmPasswordView;->mFingerprintUsedAsUnlock:Z

    return v0
.end method

.method public forceShowInputMethod()V
    .registers 4

    .line 143
    new-instance v0, Lcom/android/server/policy/FlymeConfirmPasswordView$2;

    invoke-direct {v0, p0}, Lcom/android/server/policy/FlymeConfirmPasswordView$2;-><init>(Lcom/android/server/policy/FlymeConfirmPasswordView;)V

    const-wide/16 v1, 0xc8

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/policy/FlymeConfirmPasswordView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 149
    return-void
.end method

.method public getPasswordType()I
    .registers 4

    .line 226
    iget-object v0, p0, Lcom/android/server/policy/FlymeConfirmPasswordView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality(I)I

    move-result v0

    .line 227
    .local v0, "type":I
    const-string/jumbo v1, "lockscreen.password_type_mz_backup"

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/android/server/policy/FlymeConfirmPasswordView;->getLocksSettingsValue(Ljava/lang/String;I)I

    move-result v1

    .line 229
    .local v1, "bakupType":I
    if-eqz v1, :cond_15

    .line 230
    move v0, v1

    .line 233
    :cond_15
    invoke-virtual {p0, v0}, Lcom/android/server/policy/FlymeConfirmPasswordView;->isSimplePassword(I)Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 234
    const/4 v0, 0x0

    goto :goto_1e

    .line 236
    :cond_1d
    const/4 v0, 0x1

    .line 239
    :goto_1e
    return v0
.end method

.method public getType()I
    .registers 2

    .line 139
    iget v0, p0, Lcom/android/server/policy/FlymeConfirmPasswordView;->mPasswordType:I

    return v0
.end method

.method protected handleAttemptLockout(J)V
    .registers 13
    .param p1, "elapsedRealtimeDeadline"  # J

    .line 520
    iget-boolean v0, p0, Lcom/android/server/policy/FlymeConfirmPasswordView;->mLockoutFlag:Z

    if-eqz v0, :cond_5

    return-void

    .line 522
    :cond_5
    iget-object v0, p0, Lcom/android/server/policy/FlymeConfirmPasswordView;->mLockDigitPanel:Lcom/meizu/widget/ShutdownLockView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/meizu/widget/ShutdownLockView;->setEable(Z)V

    .line 523
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    .line 524
    .local v6, "elapsedRealtime":J
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/policy/FlymeConfirmPasswordView;->mLockoutFlag:Z

    .line 525
    sub-long v2, p1, v6

    long-to-int v2, v2

    div-int/lit16 v8, v2, 0x3e8

    .line 526
    .local v8, "secondRemain":I
    const/16 v2, 0x3c

    if-le v8, v2, :cond_37

    .line 527
    iget-object v2, p0, Lcom/android/server/policy/FlymeConfirmPasswordView;->mLockDigitPanel:Lcom/meizu/widget/ShutdownLockView;

    const v3, 0xa100078

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    div-int/lit8 v5, v8, 0x3c

    .line 528
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    rem-int/lit8 v1, v8, 0x3c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v4, v0

    .line 527
    invoke-virtual {v2, v3, v4}, Lcom/meizu/widget/ShutdownLockView;->setTip(I[Ljava/lang/Object;)V

    goto :goto_47

    .line 530
    :cond_37
    iget-object v2, p0, Lcom/android/server/policy/FlymeConfirmPasswordView;->mLockDigitPanel:Lcom/meizu/widget/ShutdownLockView;

    const v3, 0xa100077

    new-array v0, v0, [Ljava/lang/Object;

    .line 531
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v0, v1

    .line 530
    invoke-virtual {v2, v3, v0}, Lcom/meizu/widget/ShutdownLockView;->setTip(I[Ljava/lang/Object;)V

    .line 533
    :goto_47
    new-instance v9, Lcom/android/server/policy/FlymeConfirmPasswordView$7;

    sub-long v2, p1, v6

    const-wide/16 v4, 0x3e8

    move-object v0, v9

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/server/policy/FlymeConfirmPasswordView$7;-><init>(Lcom/android/server/policy/FlymeConfirmPasswordView;JJ)V

    .line 563
    invoke-virtual {v9}, Lcom/android/server/policy/FlymeConfirmPasswordView$7;->start()Landroid/os/CountDownTimer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/policy/FlymeConfirmPasswordView;->mCountdownTimer:Landroid/os/CountDownTimer;

    .line 564
    return-void
.end method

.method public hasFlymeAccount()Z
    .registers 4

    .line 161
    invoke-virtual {p0}, Lcom/android/server/policy/FlymeConfirmPasswordView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    .line 162
    .local v0, "am":Landroid/accounts/AccountManager;
    const-string v1, "com.meizu.account"

    invoke-virtual {v0, v1}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v1

    .line 163
    .local v1, "accounts":[Landroid/accounts/Account;
    if-eqz v1, :cond_16

    array-length v2, v1

    if-nez v2, :cond_14

    goto :goto_16

    .line 167
    :cond_14
    const/4 v2, 0x1

    return v2

    .line 164
    :cond_16
    :goto_16
    const/4 v2, 0x0

    return v2
.end method

.method public initValues()V
    .registers 5

    .line 82
    iget-object v0, p0, Lcom/android/server/policy/FlymeConfirmPasswordView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 83
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v1

    .line 82
    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->getLockoutAttemptDeadline(I)J

    move-result-wide v0

    .line 84
    .local v0, "deadline":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_14

    iget-boolean v2, p0, Lcom/android/server/policy/FlymeConfirmPasswordView;->mLockoutFlag:Z

    if-eqz v2, :cond_17

    .line 85
    :cond_14
    invoke-virtual {p0, v0, v1}, Lcom/android/server/policy/FlymeConfirmPasswordView;->handleAttemptLockout(J)V

    .line 87
    :cond_17
    invoke-direct {p0}, Lcom/android/server/policy/FlymeConfirmPasswordView;->initFingerPrint()V

    .line 88
    return-void
.end method

.method public isFindPhoneEnabled()Z
    .registers 4

    .line 155
    nop

    .line 156
    invoke-virtual {p0}, Lcom/android/server/policy/FlymeConfirmPasswordView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 155
    const-string v1, "com.meizu.flyme.FindPhone"

    const/4 v2, -0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_15

    const/4 v0, 0x1

    goto :goto_16

    :cond_15
    const/4 v0, 0x0

    :goto_16
    return v0
.end method

.method public isFingerprintDetectionRunning()Z
    .registers 2

    .line 421
    iget-boolean v0, p0, Lcom/android/server/policy/FlymeConfirmPasswordView;->mFingerprintDetectionRunning:Z

    return v0
.end method

.method public isKeyguardSecure()Z
    .registers 3

    .line 243
    iget-object v0, p0, Lcom/android/server/policy/FlymeConfirmPasswordView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v0

    .line 244
    .local v0, "secure":Z
    return v0
.end method

.method public isSimplePassword(I)Z
    .registers 3
    .param p1, "passwordQuality"  # I

    .line 248
    const/high16 v0, 0x20000

    if-eq p1, v0, :cond_b

    const/high16 v0, 0x30000

    if-ne p1, v0, :cond_9

    goto :goto_b

    :cond_9
    const/4 v0, 0x0

    goto :goto_c

    :cond_b
    :goto_b
    const/4 v0, 0x1

    :goto_c
    return v0
.end method

.method public isUnlockWithFingerPrintPossible(I)Z
    .registers 3
    .param p1, "userId"  # I

    .line 300
    iget-object v0, p0, Lcom/android/server/policy/FlymeConfirmPasswordView;->mFpm:Landroid/hardware/fingerprint/FingerprintManager;

    if-eqz v0, :cond_1e

    invoke-virtual {v0}, Landroid/hardware/fingerprint/FingerprintManager;->isHardwareDetected()Z

    move-result v0

    if-eqz v0, :cond_1e

    invoke-virtual {p0}, Lcom/android/server/policy/FlymeConfirmPasswordView;->fingerprintUsedAsUnlock()Z

    move-result v0

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/android/server/policy/FlymeConfirmPasswordView;->mFpm:Landroid/hardware/fingerprint/FingerprintManager;

    .line 301
    invoke-virtual {v0, p1}, Landroid/hardware/fingerprint/FingerprintManager;->getEnrolledFingerprints(I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1e

    const/4 v0, 0x1

    goto :goto_1f

    :cond_1e
    const/4 v0, 0x0

    .line 300
    :goto_1f
    return v0
.end method

.method public onCellAdded(Ljava/lang/String;)V
    .registers 4
    .param p1, "password"  # Ljava/lang/String;

    .line 478
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    iget v1, p0, Lcom/android/server/policy/FlymeConfirmPasswordView;->mMaxNum:I

    if-ne v0, v1, :cond_b

    .line 479
    invoke-direct {p0, p1}, Lcom/android/server/policy/FlymeConfirmPasswordView;->verifyThePassword(Ljava/lang/String;)V

    .line 481
    :cond_b
    return-void
.end method

.method public onCellCleared(Ljava/lang/String;)V
    .registers 2
    .param p1, "password"  # Ljava/lang/String;

    .line 486
    return-void
.end method

.method public onCellFhish(Ljava/lang/String;)V
    .registers 2
    .param p1, "password"  # Ljava/lang/String;

    .line 491
    return-void
.end method

.method public onInputTextButtonClick(Ljava/lang/String;)V
    .registers 2
    .param p1, "password"  # Ljava/lang/String;

    .line 506
    return-void
.end method

.method public onKeyLeftButtonClick(Ljava/lang/String;)V
    .registers 2
    .param p1, "password"  # Ljava/lang/String;

    .line 496
    return-void
.end method

.method public onKeyRightButtonClick(Ljava/lang/String;)V
    .registers 2
    .param p1, "password"  # Ljava/lang/String;

    .line 501
    return-void
.end method

.method public onLeftButtonClick(Ljava/lang/String;)V
    .registers 2
    .param p1, "password"  # Ljava/lang/String;

    .line 511
    return-void
.end method

.method public onRightButtonClick(Ljava/lang/String;)V
    .registers 2
    .param p1, "password"  # Ljava/lang/String;

    .line 516
    return-void
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .registers 5
    .param p1, "changedView"  # Landroid/view/View;
    .param p2, "visibility"  # I

    .line 471
    invoke-direct {p0}, Lcom/android/server/policy/FlymeConfirmPasswordView;->updateFingerprintListeningState()V

    .line 472
    iget-object v0, p0, Lcom/android/server/policy/FlymeConfirmPasswordView;->mLockDigitPanel:Lcom/meizu/widget/ShutdownLockView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/meizu/widget/ShutdownLockView;->clearCell(Z)V

    .line 473
    return-void
.end method

.method public show(Ljava/lang/Runnable;Ljava/lang/Runnable;Ljava/lang/Runnable;Z)V
    .registers 7
    .param p1, "endRunnable"  # Ljava/lang/Runnable;
    .param p2, "showButtons"  # Ljava/lang/Runnable;
    .param p3, "dismiss"  # Ljava/lang/Runnable;
    .param p4, "withAnim"  # Z

    .line 131
    iput-object p1, p0, Lcom/android/server/policy/FlymeConfirmPasswordView;->mEndRunnable:Ljava/lang/Runnable;

    .line 132
    iput-object p3, p0, Lcom/android/server/policy/FlymeConfirmPasswordView;->mDismissRunnable:Ljava/lang/Runnable;

    .line 133
    invoke-direct {p0}, Lcom/android/server/policy/FlymeConfirmPasswordView;->refreshViews()V

    .line 134
    iget v0, p0, Lcom/android/server/policy/FlymeConfirmPasswordView;->mPasswordType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_f

    .line 135
    invoke-virtual {p0}, Lcom/android/server/policy/FlymeConfirmPasswordView;->forceShowInputMethod()V

    .line 137
    :cond_f
    return-void
.end method
