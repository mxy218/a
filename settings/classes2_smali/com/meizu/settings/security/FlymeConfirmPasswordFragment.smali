.class public Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;
.super Lcom/meizu/settings/SettingsPreferenceFragment;
.source "FlymeConfirmPasswordFragment.java"

# interfaces
.implements Lcom/meizu/settings/widget/SystemLockView$OnPanelListener;


# instance fields
.field private isFPEnabled:Z

.field private isFPSupported:Z

.field private mAccessControlManager:Lmeizu/security/AccessControlManager;

.field private mActivity:Landroid/app/Activity;

.field private mBiometricManager:Landroid/hardware/biometrics/BiometricManager;

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mCanVerifyPassword:Z

.field private mCancelView:Landroid/view/View;

.field private mComfirmPasswordFrom:I

.field private mComplexPasswordView:Landroid/widget/EditText;

.field private mContext:Landroid/content/Context;

.field private mDelayShowFingerprintLockoutTip:Z

.field private mErrorPwdCount:I

.field private mExtras:Landroid/os/Bundle;

.field private mFaceRecognitionAnimationView:Lcom/meizu/settings/face/FaceRecognitionAnimationView;

.field private mFingerPrintDefaultPathView:Lcom/eftimoff/androipathview/PathView;

.field private mFingerPrintPathView:Lcom/eftimoff/androipathview/PathView;

.field private mFingerprintLockout:Z

.field private mFingerprintPathInterpolator:Landroid/view/animation/PathInterpolator;

.field private mFlymeIFaceRecognition:Lcom/meizu/settings/face/FlymeIFaceRecognition;

.field private mFlymeIFingerPrint:Lcom/meizu/settings/fingerprint/FlymeIFingerPrint;

.field private mForgetPasswordLayout:Landroid/view/View;

.field private mForgetPasswordTV:Landroid/widget/TextView;

.field private mFromSetupwizard:Z

.field private mHandler:Landroid/os/Handler;

.field private mInTouchMode:Z

.field private mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

.field private mInputPassword:Ljava/lang/String;

.field private mIsFaceRecognitionEnable:Z

.field private mIsInMultiWindowMode:Z

.field private mIsInputMethodActive:Z

.field private mIsKeyguardLocked:Z

.field private mIsOnPause:Z

.field private mIsPasswordVerifying:Z

.field private mLayoutInflater:Landroid/view/LayoutInflater;

.field private mLockDigitPanel:Lcom/meizu/settings/widget/SystemLockView;

.field private mMZLockUtils:Lcom/meizu/settings/security/FlymeLockPasswordUtils;

.field private mMainRelativeLayout:Landroid/widget/RelativeLayout;

.field private mNeedShowFingerprintIcon:Z

.field private mOnKeyPressListener:Lcom/meizu/settings/MzSettingsActivity$OnKeyListener;

.field private mPasswordLockout:Z

.field private mPasswordType:I

.field private mProtectedPkgName:Ljava/lang/String;

.field private mShowUrgencyCall:Z

.field private mSimplePasswordView:Lcom/meizu/settings/widget/LockDigitView;

.field private mSpecialLockPasswordView:Lcom/meizu/settings/widget/LockPasswordView;

.field private mTestAlphaValue:I

.field private mTestDimlayerAlphaValue:Z

.field private mTipTextView:Landroid/widget/TextView;

.field private mTipTextView2:Landroid/widget/TextView;

.field private mUsageStatsProxy:Lcom/meizu/settings/datareport/UsageStatsProxy;

.field private mUserFingerprintTextView:Landroid/widget/TextView;

.field private mUserId:I

.field private mVerifyFromCreateBiometric:Z

.field private mVerifyFromCreateFp:Z

.field private mVerifyState:I

.field private mVerifyTips:Ljava/lang/String;

.field private mView:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 82
    invoke-direct {p0}, Lcom/meizu/settings/SettingsPreferenceFragment;-><init>()V

    const/4 v0, -0x1

    .line 113
    iput v0, p0, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;->mPasswordType:I

    const/4 v0, 0x0

    .line 115
    iput-boolean v0, p0, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;->isFPEnabled:Z

    const/4 v1, 0x1

    .line 116
    iput-boolean v1, p0, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;->isFPSupported:Z

    .line 117
    iput v0, p0, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;->mErrorPwdCount:I

    .line 139
    iput-boolean v1, p0, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;->mInTouchMode:Z

    .line 142
    iput v0, p0, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;->mVerifyState:I

    .line 143
    iput-boolean v0, p0, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;->mCanVerifyPassword:Z

    .line 144
    iput-boolean v0, p0, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;->mIsKeyguardLocked:Z

    const/4 v1, 0x0

    .line 171
    iput-object v1, p0, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;->mProtectedPkgName:Ljava/lang/String;

    .line 173
    iput-boolean v0, p0, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;->mShowUrgencyCall:Z

    .line 187
    new-instance v0, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment$1;

    invoke-direct {v0, p0}, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment$1;-><init>(Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;)V

    iput-object v0, p0, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;->mOnKeyPressListener:Lcom/meizu/settings/MzSettingsActivity$OnKeyListener;

    .line 1342
    new-instance v0, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment$17;

    invoke-direct {v0, p0}, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment$17;-><init>(Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;)V

    iput-object v0, p0, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;)Lcom/meizu/settings/widget/LockDigitView;
    .registers 1

    .line 82
    iget-object p0, p0, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;->mSimplePasswordView:Lcom/meizu/settings/widget/LockDigitView;

    return-object p0
.end method

.method static synthetic access$100(Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;)Z
    .registers 1

    .line 82
    iget-boolean p0, p0, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;->mInTouchMode:Z

    return p0
.end method

.method static synthetic access$1000(Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;)V
    .registers 1

    .line 82
    invoke-direct {p0}, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;->startDrawGrayLineAnimation()V

    return-void
.end method

.method static synthetic access$102(Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;Z)Z
    .registers 2

    .line 82
    iput-boolean p1, p0, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;->mInTouchMode:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;)Landroid/app/Activity;
    .registers 1

    .line 82
    iget-object p0, p0, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;->mActivity:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;)Z
    .registers 1

    .line 82
    iget-boolean p0, p0, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;->mFromSetupwizard:Z

    return p0
.end method

.method static synthetic access$1300(Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;)I
    .registers 1

    .line 82
    iget p0, p0, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;->mComfirmPasswordFrom:I

    return p0
.end method

.method static synthetic access$1400(Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;)Z
    .registers 1

    .line 82
    iget-boolean p0, p0, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;->mShowUrgencyCall:Z

    return p0
.end method

.method static synthetic access$1500(Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;)Z
    .registers 1

    .line 82
    iget-boolean p0, p0, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;->mIsFaceRecognitionEnable:Z

    return p0
.end method

.method static synthetic access$1600(Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;Z)V
    .registers 2

    .line 82
    invoke-direct {p0, p1}, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;->handlWindowFocusChange(Z)V

    return-void
.end method

.method static synthetic access$1700(Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;)Z
    .registers 1

    .line 82
    iget-boolean p0, p0, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;->mVerifyFromCreateFp:Z

    return p0
.end method

.method static synthetic access$1800(Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;)Lcom/meizu/settings/fingerprint/FlymeIFingerPrint;
    .registers 1

    .line 82
    iget-object p0, p0, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;->mFlymeIFingerPrint:Lcom/meizu/settings/fingerprint/FlymeIFingerPrint;

    return-object p0
.end method

.method static synthetic access$1900(Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;Ljava/lang/String;[B)V
    .registers 3

    .line 82
    invoke-direct {p0, p1, p2}, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;->handleVerifyPasswordSuccess(Ljava/lang/String;[B)V

    return-void
.end method

.method static synthetic access$200(Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;)Landroid/content/Context;
    .registers 1

    .line 82
    iget-object p0, p0, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$2000(Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;)Lcom/meizu/settings/security/FlymeLockPasswordUtils;
    .registers 1

    .line 82
    iget-object p0, p0, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;->mMZLockUtils:Lcom/meizu/settings/security/FlymeLockPasswordUtils;

    return-object p0
.end method

.method static synthetic access$2100(Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;)I
    .registers 1

    .line 82
    iget p0, p0, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;->mVerifyState:I

    return p0
.end method

.method static synthetic access$2102(Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;I)I
    .registers 2

    .line 82
    iput p1, p0, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;->mVerifyState:I

    return p1
.end method

.method static synthetic access$2202(Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;Z)Z
    .registers 2

    .line 82
    iput-boolean p1, p0, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;->mPasswordLockout:Z

    return p1
.end method

.method static synthetic access$2308(Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;)I
    .registers 3

    .line 82
    iget v0, p0, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;->mErrorPwdCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;->mErrorPwdCount:I

    return v0
.end method

.method static synthetic access$2400(Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;)V
    .registers 1

    .line 82
    invoke-direct {p0}, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;->handleForgetPassword()V

    return-void
.end method

.method static synthetic access$2502(Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;Z)Z
    .registers 2

    .line 82
    iput-boolean p1, p0, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;->mDelayShowFingerprintLockoutTip:Z

    return p1
.end method

.method static synthetic access$2600(Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;)Lcom/meizu/settings/widget/SystemLockView;
    .registers 1

    .line 82
    iget-object p0, p0, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;->mLockDigitPanel:Lcom/meizu/settings/widget/SystemLockView;

    return-object p0
.end method

.method static synthetic access$2700(Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;)Z
    .registers 1

    .line 82
    iget-boolean p0, p0, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;->mFingerprintLockout:Z

    return p0
.end method

.method static synthetic access$2800(Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;)Ljava/lang/String;
    .registers 1

    .line 82
    iget-object p0, p0, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;->mVerifyTips:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$2900(Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;)Landroid/widget/EditText;
    .registers 1

    .line 82
    iget-object p0, p0, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;->mComplexPasswordView:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic access$300(Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;)Ljava/lang/String;
    .registers 1

    .line 82
    iget-object p0, p0, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;->mInputPassword:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$3000(Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;)V
    .registers 1

    .line 82
    invoke-direct {p0}, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;->verifyFPSuccess()V

    return-void
.end method

.method static synthetic access$3100(Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;I)V
    .registers 2

    .line 82
    invoke-direct {p0, p1}, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;->setVerifyErrorTip(I)V

    return-void
.end method

.method static synthetic access$3200(Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;II)V
    .registers 3

    .line 82
    invoke-direct {p0, p1, p2}, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;->updateFingerprintTimeoutTips(II)V

    return-void
.end method

.method static synthetic access$3300(Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;II)V
    .registers 3

    .line 82
    invoke-direct {p0, p1, p2}, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;->setTip(II)V

    return-void
.end method

.method static synthetic access$3400(Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;I)V
    .registers 2

    .line 82
    invoke-direct {p0, p1}, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;->updateThrottleTimeoutTips(I)V

    return-void
.end method

.method static synthetic access$3500(Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;)Lcom/meizu/settings/face/FaceRecognitionAnimationView;
    .registers 1

    .line 82
    iget-object p0, p0, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;->mFaceRecognitionAnimationView:Lcom/meizu/settings/face/FaceRecognitionAnimationView;

    return-object p0
.end method

.method static synthetic access$3600(Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;I)V
    .registers 2

    .line 82
    invoke-direct {p0, p1}, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;->reportUnlockEvent(I)V

    return-void
.end method

.method static synthetic access$3700(Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;I)V
    .registers 2

    .line 82
    invoke-direct {p0, p1}, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;->updateScreenBrightnessWhileLowLuminance(I)V

    return-void
.end method

.method static synthetic access$3800(Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;Z)V
    .registers 2

    .line 82
    invoke-direct {p0, p1}, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;->verifySuccess(Z)V

    return-void
.end method

.method static synthetic access$3900(Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;)Lcom/meizu/settings/face/FlymeIFaceRecognition;
    .registers 1

    .line 82
    iget-object p0, p0, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;->mFlymeIFaceRecognition:Lcom/meizu/settings/face/FlymeIFaceRecognition;

    return-object p0
.end method

.method static synthetic access$400(Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;)Z
    .registers 1

    .line 82
    iget-boolean p0, p0, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;->mIsPasswordVerifying:Z

    return p0
.end method

.method static synthetic access$402(Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;Z)Z
    .registers 2

    .line 82
    iput-boolean p1, p0, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;->mIsPasswordVerifying:Z

    return p1
.end method

.method static synthetic access$500(Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;Ljava/lang/String;)V
    .registers 2

    .line 82
    invoke-direct {p0, p1}, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;->verifyThePassword(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$600(Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;)Landroid/os/Handler;
    .registers 1

    .line 82
    iget-object p0, p0, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$700(Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;)I
    .registers 1

    .line 82
    iget p0, p0, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;->mTestAlphaValue:I

    return p0
.end method

.method static synthetic access$702(Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;I)I
    .registers 2

    .line 82
    iput p1, p0, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;->mTestAlphaValue:I

    return p1
.end method

.method static synthetic access$712(Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;I)I
    .registers 3

    .line 82
    iget v0, p0, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;->mTestAlphaValue:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;->mTestAlphaValue:I

    return v0
.end method

.method static synthetic access$720(Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;I)I
    .registers 3

    .line 82
    iget v0, p0, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;->mTestAlphaValue:I

    sub-int/2addr v0, p1

    iput v0, p0, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;->mTestAlphaValue:I

    return v0
.end method

.method static synthetic access$800(Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;)Z
    .registers 1

    .line 82
    iget-boolean p0, p0, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;->isFPEnabled:Z

    return p0
.end method

.method static synthetic access$900(Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;)V
    .registers 1

    .line 82
    invoke-direct {p0}, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;->startDrawRedLineAnimation()V

    return-void
.end method

.method private checkForPendingIntent()V
    .registers 9

    .line 1153
    iget-object v0, p0, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const/4 v1, -0x1

    const-string v2, "android.intent.extra.TASK_ID"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    if-eq v0, v1, :cond_1f

    .line 1156
    :try_start_f
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    .line 1157
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object v2

    .line 1158
    invoke-virtual {v2}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Landroid/app/IActivityManager;->startActivityFromRecents(ILandroid/os/Bundle;)I
    :try_end_1e
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_1e} :catch_1f

    return-void

    .line 1164
    :catch_1f
    :cond_1f
    iget-object v0, p0, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "android.intent.extra.INTENT"

    .line 1165
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/content/IntentSender;

    if-eqz v2, :cond_3a

    .line 1168
    :try_start_30
    iget-object v1, p0, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;->mActivity:Landroid/app/Activity;

    const/4 v3, -0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v1 .. v7}, Landroid/app/Activity;->startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;III)V
    :try_end_3a
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_30 .. :try_end_3a} :catch_3a

    :catch_3a
    :cond_3a
    return-void
.end method

.method private drawLineAnimation(IIZ)V
    .registers 10

    .line 400
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 402
    :cond_7
    iget-object v0, p0, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;->mFingerPrintDefaultPathView:Lcom/eftimoff/androipathview/PathView;

    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/eftimoff/androipathview/PathView;->setPathColor(I)V

    .line 403
    iget-object p1, p0, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;->mFingerPrintDefaultPathView:Lcom/eftimoff/androipathview/PathView;

    const/high16 v0, 0x3f800000  # 1.0f

    invoke-virtual {p1, v0}, Lcom/eftimoff/androipathview/PathView;->setPercentage(F)V

    .line 405
    iget-object p1, p0, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;->mFingerPrintPathView:Lcom/eftimoff/androipathview/PathView;

    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/eftimoff/androipathview/PathView;->setPathColor(I)V

    .line 406
    iget-object v0, p0, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;->mFingerPrintPathView:Lcom/eftimoff/androipathview/PathView;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000  # 1.0f

    const/16 v3, 0x3e8

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;->mFingerprintPathInterpolator:Landroid/view/animation/PathInterpolator;

    invoke-static/range {v0 .. v5}, Lcom/meizu/settings/utils/MzUtils;->startPathViewAnimation(Lcom/eftimoff/androipathview/PathView;FFIILandroid/view/animation/PathInterpolator;)V

    .line 408
    iget-object p1, p0, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;->mHandler:Landroid/os/Handler;

    new-instance p2, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment$5;

    invoke-direct {p2, p0, p3}, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment$5;-><init>(Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;Z)V

    const-wide/16 v0, 0x488

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private handlWindowFocusChange(Z)V
    .registers 4

    if-eqz p1, :cond_30

    .line 704
    iget-boolean p1, p0, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;->isFPEnabled:Z

    if-eqz p1, :cond_17

    .line 706
    iget-object p1, p0, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;->mFlymeIFingerPrint:Lcom/meizu/settings/fingerprint/FlymeIFingerPrint;

    iget-object v0, p0, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;->mHandler:Landroid/os/Handler;

    invoke-interface {p1, v0}, Lcom/meizu/settings/fingerprint/FlymeIFingerPrint;->startVerify(Landroid/os/Handler;)V

    .line 707
    iget-object p1, p0, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;->mUserFingerprintTextView:Landroid/widget/TextView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 708
    invoke-direct {p0}, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;->hideInputMethod()V

    .line 711
    :cond_17
    iget-boolean p1, p0, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;->mIsFaceRecognitionEnable:Z

    if-eqz p1, :cond_46

    .line 712
    iget-object p1, p0, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;->mFlymeIFaceRecognition:Lcom/meizu/settings/face/FlymeIFaceRecognition;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/meizu/settings/face/FlymeIFaceRecognition;->resetTimeout([B)V

    .line 713
    iget-object p1, p0, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;->mFlymeIFaceRecognition:Lcom/meizu/settings/face/FlymeIFaceRecognition;

    iget-object v0, p0, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x5

    invoke-interface {p1, v0, v1}, Lcom/meizu/settings/face/FlymeIFaceRecognition;->startVerify(Landroid/os/Handler;I)V

    .line 714
    iget-object p0, p0, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;->mFaceRecognitionAnimationView:Lcom/meizu/settings/face/FaceRecognitionAnimationView;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/meizu/settings/face/FaceRecognitionAnimationView;->setVisible(Z)V

    goto :goto_46

    .line 717
    :cond_30
    iget-boolean p1, p0, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;->isFPEnabled:Z

    if-eqz p1, :cond_39

    .line 718
    iget-object p1, p0, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;->mFlymeIFingerPrint:Lcom/meizu/settings/fingerprint/FlymeIFingerPrint;

    invoke-interface {p1}, Lcom/meizu/settings/fingerprint/FlymeIFingerPrint;->endVerify()V

    .line 720
    :cond_39
    iget-boolean p1, p0, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;->mIsFaceRecognitionEnable:Z

    if-eqz p1, :cond_46

    const/4 p1, -0x1

    .line 721
    invoke-direct {p0, p1}, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;->updateScreenBrightnessWhileLowLuminance(I)V

    .line 722
    iget-object p0, p0, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;->mFlymeIFaceRecognition:Lcom/meizu/settings/face/FlymeIFaceRecognition;

    invoke-interface {p0}, Lcom/meizu/settings/face/FlymeIFaceRecognition;->endVerify()V

    :cond_46
    :goto_46
    return-void
.end method

.method private handleForgetPassword()V
    .registers 3

    .line 1122
    iget-object v0, p0, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;->mMZLockUtils:Lcom/meizu/settings/security/FlymeLockPasswordUtils;

    iget v1, p0, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;->mComfirmPasswordFrom:I

    invoke-virtual {v0, v1}, Lcom/meizu/settings/security/FlymeLockPasswordUtils;->isAssociateFlymeAccountOpened(I)Z

    move-result v0

    if-nez v0, :cond_b

    return-void

    .line 1124
    :cond_b
    iget v0, p0, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;->mComfirmPasswordFrom:I

    if-nez v0, :cond_11

    const/4 v0, 0x5

    goto :goto_12

    :cond_11
    const/4 v0, 0x3

    .line 1127
    :goto_12
    iget v1, p0, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;->mErrorPwdCount:I

    if-lt v1, v0, :cond_19

    .line 1128
    invoke-direct {p0}, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;->showForgetPasswordView()V

    :cond_19
    return-void
.end method

.method private handleVerifyPasswordSuccess(Ljava/lang/String;[B)V
    .registers 6

    .line 1176
    invoke-direct {p0}, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;->hideInputMethod()V

    .line 1177
    invoke-direct {p0}, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;->reportSuccessfullAttempt()V

    .line 1178
    iget-object v0, p0, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;->mBiometricManager:Landroid/hardware/biometrics/BiometricManager;

    invoke-virtual {v0}, Landroid/hardware/biometrics/BiometricManager;->onConfirmDeviceCredentialSuccess()V

    .line 1180
    iget-object v0, p0, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;->mProtectedPkgName:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;->updateAppLockStatus(Ljava/lang/String;)V

    const/4 v0, 0x3

    .line 1182
    invoke-direct {p0, v0}, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;->reportUnlockEvent(I)V

    .line 1183
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "flyme_password"

    .line 1184
    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1187
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    const-string v2, "password"

    .line 1186
    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    const-string p1, "confirm_password_type"

    .line 1189
    invoke-virtual {v1, p1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p1, "hw_auth_token"

    .line 1191
    invoke-virtual {v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 1193
    iget-object p1, p0, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;->mActivity:Landroid/app/Activity;

    const/4 p2, -0x1

    invoke-virtual {p1, p2, v1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 1194
    iget-object p1, p0, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    .line 1195
    iget-boolean p1, p0, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;->mFromSetupwizard:Z

    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/meizu/settings/utils/MzUtils;->doFromSetupwizardAnimation(ZLandroid/app/Activity;)V

    .line 1196
    invoke-direct {p0}, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;->checkForPendingIntent()V

    return-void
.end method

.method private handleViewInWorkProfile(Landroid/view/View;)V
    .registers 4

    .line 340
    iget-object v0, p0, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;->mActivity:Landroid/app/Activity;

    .line 344
    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 342
    invoke-static {v0, v1}, Lcom/android/settings/Utils;->getUserIdFromBundle(Landroid/content/Context;Landroid/os/Bundle;)I

    move-result v1

    .line 340
    invoke-static {v0, v1}, Lcom/android/settings/Utils;->getCredentialOwnerUserId(Landroid/content/Context;I)I

    move-result v0

    .line 345
    iget-object v1, p0, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v1}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/meizu/settings/utils/MzUtils;->isManagedProfile(Landroid/os/UserManager;I)Z

    move-result v1

    if-eqz v1, :cond_54

    .line 346
    invoke-direct {p0, p1, v0}, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;->setWorkChallengeBackground(Landroid/view/View;I)V

    .line 347
    iget-object v0, p0, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;->mLockDigitPanel:Lcom/meizu/settings/widget/SystemLockView;

    const v1, 0x7f0a0363

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/4 v1, -0x1

    .line 349
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 351
    iget-object p0, p0, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p0

    if-eqz p0, :cond_54

    const-string v0, "com.android.settings.ConfirmCredentials.header"

    .line 353
    invoke-virtual {p0, v0}, Landroid/content/Intent;->getCharSequenceExtra(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object p0

    const v0, 0x7f0a0319

    .line 355
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    const/4 v0, 0x0

    .line 356
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 357
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_54

    .line 358
    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_54
    return-void
.end method

.method private hideInputMethod()V
    .registers 3

    .line 1115
    iget-object v0, p0, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 1116
    instance-of v1, v0, Landroid/widget/EditText;

    if-eqz v1, :cond_13

    .line 1117
    iget-object p0, p0, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;->mActivity:Landroid/app/Activity;

    check-cast v0, Landroid/widget/EditText;

    invoke-static {p0, v0}, Lcom/meizu/settings/utils/MzUtils;->hideInputMethod(Landroid/content/Context;Landroid/widget/EditText;)V

    :cond_13
    return-void
.end method

.method private init(Landroid/os/Bundle;)V
    .registers 4

    .line 582
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;->mActivity:Landroid/app/Activity;

    .line 583
    iget-object v0, p0, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;->mActivity:Landroid/app/Activity;

    const/4 v1, 0x1

    invoke-static {v0, v1, v1}, Lcom/meizu/flyme/sdk/ContextBuilder;->build(Landroid/content/Context;ZZ)Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;->mContext:Landroid/content/Context;

    .line 584
    iget-object v0, p0, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;->mLayoutInflater:Landroid/view/LayoutInflater;

    const-string v0, "input_method"

    .line 585
    invoke-virtual {p0, v0}, Lcom/meizu/settings/SettingsPreferenceFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iput-object v0, p0, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    .line 588
    iget-object v0, p0, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/meizu/settings/datareport/UsageStatsProxy;->getInstance(Landroid/content/Context;)Lcom/meizu/settings/datareport/UsageStatsProxy;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;->mUsageStatsProxy:Lcom/meizu/settings/datareport/UsageStatsProxy;

    const/4 v0, 0x0

    if-nez p1, :cond_3b

    .line 590
    iget-object p1, p0, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;->mActivity:Landroid/app/Activity;

    const-class v1, Landroid/app/KeyguardManager;

    invoke-virtual {p1, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/KeyguardManager;

    invoke-virtual {p1}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result p1

    goto :goto_41

    :cond_3b
    const-string v1, "STATE_IS_KEYGUARD_LOCKED"

    .line 591
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    :goto_41
    iput-boolean p1, p0, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;->mIsKeyguardLocked:Z

    .line 593
    iget-boolean p1, p0, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;->mIsKeyguardLocked:Z

    if-eqz p1, :cond_60

    iget-object p1, p0, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v1, "com.android.settings.ConfirmCredentials.showWhenLocked"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_60

    .line 595
    iget-object p0, p0, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    const/high16 p1, 0x80000

    invoke-virtual {p0, p1}, Landroid/view/Window;->addFlags(I)V

    :cond_60
    return-void
.end method

.method private initBottomLayout(Landroid/view/View;)V
    .registers 9

    .line 462
    iget-boolean v0, p0, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;->isFPEnabled:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_f

    iget-boolean v0, p0, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;->isFPSupported:Z

    if-eqz v0, :cond_f

    iget-boolean v0, p0, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;->mNeedShowFingerprintIcon:Z

    if-eqz v0, :cond_f

    const/4 v0, 0x1

    goto :goto_10

    :cond_f
    move v0, v1

    .line 463
    :goto_10
    iget-object v2, p0, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;->mFingerPrintDefaultPathView:Lcom/eftimoff/androipathview/PathView;

    const/16 v3, 0x8

    if-nez v2, :cond_53

    const v2, 0x7f0a02b3

    .line 464
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/eftimoff/androipathview/PathView;

    iput-object v2, p0, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;->mFingerPrintDefaultPathView:Lcom/eftimoff/androipathview/PathView;

    const v2, 0x7f0a02b2

    .line 465
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/eftimoff/androipathview/PathView;

    iput-object v2, p0, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;->mFingerPrintPathView:Lcom/eftimoff/androipathview/PathView;

    if-eqz v0, :cond_49

    .line 467
    new-instance v2, Landroid/view/animation/PathInterpolator;

    const/4 v4, 0x0

    const/high16 v5, 0x3f800000  # 1.0f

    const v6, 0x3ea8f5c3  # 0.33f

    invoke-direct {v2, v6, v4, v6, v5}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v2, p0, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;->mFingerprintPathInterpolator:Landroid/view/animation/PathInterpolator;

    .line 468
    iget-object v2, p0, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;->mFingerPrintDefaultPathView:Lcom/eftimoff/androipathview/PathView;

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 469
    iget-object v2, p0, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;->mFingerPrintPathView:Lcom/eftimoff/androipathview/PathView;

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 470
    invoke-direct {p0}, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;->startDrawRedLineAnimation()V

    goto :goto_53

    .line 472
    :cond_49
    iget-object v2, p0, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;->mFingerPrintDefaultPathView:Lcom/eftimoff/androipathview/PathView;

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 473
    iget-object v2, p0, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;->mFingerPrintPathView:Lcom/eftimoff/androipathview/PathView;

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_53
    :goto_53
    if-eqz v0, :cond_60

    .line 477
    iget-object v0, p0, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;->mFingerPrintDefaultPathView:Lcom/eftimoff/androipathview/PathView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 478
    iget-object v0, p0, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;->mFingerPrintPathView:Lcom/eftimoff/androipathview/PathView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_6a

    .line 480
    :cond_60
    iget-object v0, p0, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;->mFingerPrintDefaultPathView:Lcom/eftimoff/androipathview/PathView;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 481
    iget-object v0, p0, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;->mFingerPrintPathView:Lcom/eftimoff/androipathview/PathView;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 484
    :goto_6a
    iget-boolean v0, p0, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;->mFromSetupwizard:Z

    const v1, 0x7f0a0145

    const v2, 0x7f0a00e0

    if-nez v0, :cond_82

    .line 485
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;->mCancelView:Landroid/view/View;

    .line 486
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_8f

    .line 488
    :cond_82
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;->mCancelView:Landroid/view/View;

    .line 489
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 491
    :goto_8f
    iget-object v0, p0, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;->mCancelView:Landroid/view/View;

    new-instance v1, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment$6;

    invoke-direct {v1, p0}, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment$6;-><init>(Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a0149

    .line 507
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment$7;

    invoke-direct {v1, p0}, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment$7;-><init>(Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a02da

    .line 523
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;->mForgetPasswordLayout:Landroid/view/View;

    const v0, 0x7f0a02d9

    .line 525
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;->mForgetPasswordTV:Landroid/widget/TextView;

    .line 527
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance v0, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment$8;

    invoke-direct {v0, p0}, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment$8;-><init>(Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private initFaceRecognition()V
    .registers 7

    .line 652
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/meizu/settings/face/FaceUtil;->isFaceRecognitionEnableForAppLock(Landroid/content/Context;)Z

    move-result v0

    .line 653
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/meizu/settings/face/FaceUtil;->isFaceRecognitionEnableForDocumentLock(Landroid/content/Context;)Z

    move-result v1

    .line 654
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/meizu/settings/face/FaceUtil;->supportFaceRecognition(Landroid/content/Context;)Z

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_30

    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/meizu/settings/face/FaceUtil;->isFaceDataExist(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_30

    iget-object v2, p0, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;->mMZLockUtils:Lcom/meizu/settings/security/FlymeLockPasswordUtils;

    .line 655
    invoke-virtual {v2}, Lcom/meizu/settings/security/FlymeLockPasswordUtils;->isScreenPasswordEnalbed()Z

    move-result v2

    if-eqz v2, :cond_30

    move v2, v3

    goto :goto_31

    :cond_30
    move v2, v4

    :goto_31
    if-eqz v2, :cond_45

    .line 656
    iget v2, p0, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;->mComfirmPasswordFrom:I

    const/4 v5, 0x2

    if-ne v2, v5, :cond_3a

    if-nez v0, :cond_40

    :cond_3a
    iget v0, p0, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;->mComfirmPasswordFrom:I

    if-ne v0, v3, :cond_45

    if-eqz v1, :cond_45

    .line 660
    :cond_40
    iput-boolean v3, p0, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;->mIsFaceRecognitionEnable:Z

    .line 661
    iput-boolean v4, p0, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;->mNeedShowFingerprintIcon:Z

    goto :goto_47

    .line 663
    :cond_45
    iput-boolean v4, p0, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;->mIsFaceRecognitionEnable:Z

    .line 666
    :goto_47
    iget-boolean v0, p0, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;->mIsFaceRecognitionEnable:Z

    if-nez v0, :cond_4c

    return-void

    .line 670
    :cond_4c
    iget-object v0, p0, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;->mFlymeIFaceRecognition:Lcom/meizu/settings/face/FlymeIFaceRecognition;

    if-nez v0, :cond_67

    .line 671
    new-instance v0, Lcom/meizu/settings/face/FlymeFaceRecognitionImpl;

    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, v1, v2}, Lcom/meizu/settings/face/FlymeFaceRecognitionImpl;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;->mFlymeIFaceRecognition:Lcom/meizu/settings/face/FlymeIFaceRecognition;

    .line 672
    iget-object v0, p0, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;->mFlymeIFaceRecognition:Lcom/meizu/settings/face/FlymeIFaceRecognition;

    invoke-interface {v0}, Lcom/meizu/settings/face/FlymeIFaceRecognition;->isFaceRecognitionServiceEnabled()Z

    move-result v0

    if-nez v0, :cond_67

    .line 673
    iput-boolean v4, p0, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;->mIsFaceRecognitionEnable:Z

    :cond_67
    return-void
.end method

.method private initFingerPrint()V
    .registers 6

    .line 758
    iget-object v0, p0, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;->mExtras:Landroid/os/Bundle;

    const/4 v1, 0x1

    const-string v2, "extra_key_fingerprint_support"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;->isFPSupported:Z

    .line 761
    iget-object v0, p0, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;->mExtras:Landroid/os/Bundle;

    const/4 v2, 0x0

    const-string v3, "create_fingerprint"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;->mVerifyFromCreateFp:Z

    .line 764
    iget-object v0, p0, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;->mExtras:Landroid/os/Bundle;

    const-string v3, "create_biometric"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;->mVerifyFromCreateBiometric:Z

    .line 768
    iget-object v0, p0, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;->mFlymeIFingerPrint:Lcom/meizu/settings/fingerprint/FlymeIFingerPrint;

    if-nez v0, :cond_2f

    .line 769
    new-instance v0, Lcom/meizu/settings/fingerprint/FlymeFingerPrintImpl;

    iget-object v3, p0, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;->mActivity:Landroid/app/Activity;

    iget v4, p0, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;->mUserId:I

    invoke-direct {v0, v3, v4}, Lcom/meizu/settings/fingerprint/FlymeFingerPrintImpl;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;->mFlymeIFingerPrint:Lcom/meizu/settings/fingerprint/FlymeIFingerPrint;

    .line 772
    :cond_2f
    iget-object v0, p0, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;->mContext:Landroid/content/Context;

    const-class v3, Landroid/hardware/biometrics/BiometricManager;

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/biometrics/BiometricManager;

    iput-object v0, p0, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;->mBiometricManager:Landroid/hardware/biometrics/BiometricManager;

    .line 774
    iget v0, p0, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;->mVerifyState:I

    if-nez v0, :cond_54

    .line 775
    iget-object v0, p0, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;->mExtras:Landroid/os/Bundle;

    .line 776
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f120559

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "verify_password_tips"

    .line 775
    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;->mVerifyTips:Ljava/lang/String;

    .line 778
    :cond_54
    iget-object v0, p0, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;->mFlymeIFingerPrint:Lcom/meizu/settings/fingerprint/FlymeIFingerPrint;

    invoke-interface {v0}, Lcom/meizu/settings/fingerprint/FlymeIFingerPrint;->getIds()[I

    move-result-object v0

    array-length v0, v0

    if-lez v0, :cond_5f

    move v0, v1

    goto :goto_60

    :cond_5f
    move v0, v2

    :goto_60
    if-eqz v0, :cond_a0

    .line 780
    iget-boolean v0, p0, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;->mVerifyFromCreateFp:Z

    if-nez v0, :cond_a0

    iget-boolean v0, p0, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;->isFPSupported:Z

    if-eqz v0, :cond_a0

    iget v0, p0, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;->mComfirmPasswordFrom:I

    if-eqz v0, :cond_a0

    const/4 v3, 0x2

    if-ne v0, v3, :cond_79

    iget-object v0, p0, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;->mFlymeIFingerPrint:Lcom/meizu/settings/fingerprint/FlymeIFingerPrint;

    .line 783
    invoke-interface {v0}, Lcom/meizu/settings/fingerprint/FlymeIFingerPrint;->isAppUnlockWithFingerprintEnabled()Z

    move-result v0

    if-eqz v0, :cond_a0

    :cond_79
    iget v0, p0, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;->mComfirmPasswordFrom:I

    if-ne v0, v1, :cond_85

    iget-object v0, p0, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;->mFlymeIFingerPrint:Lcom/meizu/settings/fingerprint/FlymeIFingerPrint;

    .line 785
    invoke-interface {v0}, Lcom/meizu/settings/fingerprint/FlymeIFingerPrint;->isDocumentUnlockWithFingerprintEnabled()Z

    move-result v0

    if-eqz v0, :cond_a0

    :cond_85
    iget-boolean v0, p0, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;->mIsInMultiWindowMode:Z

    if-eqz v0, :cond_8a

    goto :goto_a0

    .line 790
    :cond_8a
    iput-boolean v1, p0, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;->isFPEnabled:Z

    .line 791
    iput-boolean v1, p0, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;->mNeedShowFingerprintIcon:Z

    .line 792
    iget v0, p0, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;->mVerifyState:I

    if-nez v0, :cond_a7

    .line 793
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f12175e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;->mVerifyTips:Ljava/lang/String;

    goto :goto_a7

    .line 787
    :cond_a0
    :goto_a0
    iput-boolean v2, p0, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;->isFPEnabled:Z

    .line 788
    iget-object p0, p0, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;->mFlymeIFingerPrint:Lcom/meizu/settings/fingerprint/FlymeIFingerPrint;

    invoke-interface {p0}, Lcom/meizu/settings/fingerprint/FlymeIFingerPrint;->release()V

    :cond_a7
    :goto_a7
    return-void
.end method

.method private initLockDigitalPanel(Landroid/view/View;)V
    .registers 8

    const v0, 0x7f0a038a

    .line 799
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/meizu/settings/widget/SystemLockView;

    iput-object p1, p0, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;->mLockDigitPanel:Lcom/meizu/settings/widget/SystemLockView;

    .line 800
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-static {p1}, Lcom/meizu/settings/utils/MzUtils;->hasNavigationBar(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_38

    .line 805
    iget-object p1, p0, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;->mLockDigitPanel:Lcom/meizu/settings/widget/SystemLockView;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getPaddingStart()I

    move-result v0

    iget-object v1, p0, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;->mContext:Landroid/content/Context;

    .line 806
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07071a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iget-object v2, p0, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;->mLockDigitPanel:Lcom/meizu/settings/widget/SystemLockView;

    .line 807
    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getPaddingEnd()I

    move-result v2

    iget-object v3, p0, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;->mLockDigitPanel:Lcom/meizu/settings/widget/SystemLockView;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getPaddingBottom()I

    move-result v3

    .line 805
    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    goto :goto_5a

    .line 801
    :cond_38
    iget-object p1, p0, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;->mLockDigitPanel:Lcom/meizu/settings/widget/SystemLockView;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getPaddingStart()I

    move-result v0

    iget-object v1, p0, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;->mContext:Landroid/content/Context;

    .line 802
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07071b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iget-object v2, p0, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;->mLockDigitPanel:Lcom/meizu/settings/widget/SystemLockView;

    .line 803
    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getPaddingEnd()I

    move-result v2

    iget-object v3, p0, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;->mLockDigitPanel:Lcom/meizu/settings/widget/SystemLockView;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getPaddingBottom()I

    move-result v3

    .line 801
    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 810
    :goto_5a
    iget-object p1, p0, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;->mLockDigitPanel:Lcom/meizu/settings/widget/SystemLockView;

    const v0, 0x7f0a0388

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/meizu/settings/widget/LockDigitView;

    iput-object p1, p0, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;->mSimplePasswordView:Lcom/meizu/settings/widget/LockDigitView;

    .line 811
    iget-object p1, p0, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;->mLockDigitPanel:Lcom/meizu/settings/widget/SystemLockView;

    invoke-virtual {p1}, Lcom/meizu/settings/widget/SystemLockView;->getEditText()Landroid/widget/EditText;

    move-result-object p1

    iput-object p1, p0, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;->mComplexPasswordView:Landroid/widget/EditText;

    .line 812
    iget-object p1, p0, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;->mLockDigitPanel:Lcom/meizu/settings/widget/SystemLockView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 813
    iget-object p1, p0, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;->mLockDigitPanel:Lcom/meizu/settings/widget/SystemLockView;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/meizu/settings/widget/SystemLockView;->setInputTextButtonVisibility(Z)V

    .line 814
    iget-object p1, p0, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;->mLockDigitPanel:Lcom/meizu/settings/widget/SystemLockView;

    invoke-virtual {p1, p0}, Lcom/meizu/settings/widget/SystemLockView;->setPanelListener(Lcom/meizu/settings/widget/SystemLockView$OnPanelListener;)V

    .line 815
    iget-object p1, p0, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;->mLockDigitPanel:Lcom/meizu/settings/widget/SystemLockView;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcom/meizu/settings/widget/SystemLockView;->setWidgetLayoutVisibility(Z)V

    .line 816
    iget-object p1, p0, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;->mSimplePasswordView:Lcom/meizu/settings/widget/LockDigitView;

    invoke-virtual {p1, v1}, Lcom/meizu/settings/widget/LockDigitView;->setPressedAnimation(Z)V

    .line 817
    iget p1, p0, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;->mVerifyState:I

    if-nez p1, :cond_96

    .line 818
    iget-object p1, p0, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;->mLockDigitPanel:Lcom/meizu/settings/widget/SystemLockView;

    iget-object v2, p0, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;->mVerifyTips:Ljava/lang/String;

    invoke-virtual {p1, v2}, Lcom/meizu/settings/widget/SystemLockView;->setTip(Ljava/lang/String;)V

    .line 822
    :cond_96
    iget-object p1, p0, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;->mLockDigitPanel:Lcom/meizu/settings/widget/SystemLockView;

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setFocusable(Z)V

    .line 823
    iget-object p1, p0, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;->mSimplePasswordView:Lcom/meizu/settings/widget/LockDigitView;

    invoke-virtual {p1, v1}, Landroid/view/View;->setFocusable(Z)V

    .line 826
    iget-object p1, p0, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iget v2, p0, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;->mUserId:I

    const-string v3, "mz_fingerprint_use_unlock"

    invoke-static {p1, v3, v1, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p1

    .line 837
    iget p1, p0, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;->mVerifyState:I

    if-nez p1, :cond_e5

    iget p1, p0, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;->mComfirmPasswordFrom:I

    if-nez p1, :cond_e5

    .line 839
    iget-object p1, p0, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;->mMZLockUtils:Lcom/meizu/settings/security/FlymeLockPasswordUtils;

    .line 840
    invoke-virtual {p1, v1}, Lcom/meizu/settings/security/FlymeLockPasswordUtils;->getFindPhoneLeftTimes(Z)I

    move-result p1

    rsub-int/lit8 p1, p1, 0xf

    iput p1, p0, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;->mErrorPwdCount:I

    .line 841
    iget-object p1, p0, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;->mMZLockUtils:Lcom/meizu/settings/security/FlymeLockPasswordUtils;

    invoke-virtual {p1}, Lcom/meizu/settings/security/FlymeLockPasswordUtils;->getPasswordLockoutLeftTimeInMills()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long p1, v1, v3

    if-lez p1, :cond_e5

    .line 843
    iput v0, p0, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;->mVerifyState:I

    .line 844
    iget-object p1, p0, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x40

    const-wide/16 v4, 0x3e8

    div-long/2addr v1, v4

    .line 845
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 844
    invoke-virtual {p1, v3, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 846
    iput-boolean v0, p0, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;->mPasswordLockout:Z

    .line 847
    invoke-direct {p0}, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;->handleForgetPassword()V

    :cond_e5
    return-void
.end method

.method private initValue()V
    .registers 7

    .line 601
    invoke-virtual {p0}, Lcom/meizu/settings/SettingsPreferenceFragment;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_23

    .line 602
    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    if-eqz v1, :cond_23

    .line 603
    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.meizu.settings.MzSettingsActivity$MzConfirmPasswordActivity"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_23

    .line 604
    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;->mExtras:Landroid/os/Bundle;

    goto :goto_29

    .line 606
    :cond_23
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;->mExtras:Landroid/os/Bundle;

    .line 609
    :goto_29
    iget-object v0, p0, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;->mExtras:Landroid/os/Bundle;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    const-string v2, "android.intent.extra.USER_ID"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;->mUserId:I

    .line 611
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Intent.EXTRA_USER_ID, mUserId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;->mUserId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ConfirmPasswordMeizu"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 613
    iget-object v0, p0, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v0

    iget v2, p0, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;->mUserId:I

    invoke-virtual {v0, v2}, Landroid/os/UserManager;->getCredentialOwnerProfile(I)I

    move-result v0

    iput v0, p0, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;->mUserId:I

    .line 615
    iget v0, p0, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;->mUserId:I

    const/16 v2, -0x270f

    const/4 v3, 0x0

    if-ne v0, v2, :cond_b3

    .line 616
    iget-object v0, p0, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;->mView:Landroid/view/View;

    const v4, 0x7f0a07a2

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 617
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "useGoogleAccountInstead:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_8e

    .line 619
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 620
    new-instance v4, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment$9;

    invoke-direct {v4, p0}, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment$9;-><init>(Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;)V

    invoke-virtual {v0, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 630
    :cond_8e
    iget-object v0, p0, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v0, v2}, Lcom/meizu/settings/security/FlymeLockPasswordUtils;->getInstance(Landroid/content/Context;I)Lcom/meizu/settings/security/FlymeLockPasswordUtils;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;->mMZLockUtils:Lcom/meizu/settings/security/FlymeLockPasswordUtils;

    .line 631
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    iput v0, p0, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;->mUserId:I

    .line 632
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "userid is USER_FRP, set it to UserHandle.myUserId(): "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;->mUserId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_bb

    .line 634
    :cond_b3
    iget-object v2, p0, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v2, v0}, Lcom/meizu/settings/security/FlymeLockPasswordUtils;->getInstance(Landroid/content/Context;I)Lcom/meizu/settings/security/FlymeLockPasswordUtils;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;->mMZLockUtils:Lcom/meizu/settings/security/FlymeLockPasswordUtils;

    .line 637
    :goto_bb
    iget-object v0, p0, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;->mExtras:Landroid/os/Bundle;

    const-string v2, "password_from"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;->mComfirmPasswordFrom:I

    .line 639
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "init mComfirmPasswordFrom = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;->mComfirmPasswordFrom:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 640
    iget-object v0, p0, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;->mExtras:Landroid/os/Bundle;

    const-string v1, "from_setupwizard"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;->mFromSetupwizard:Z

    .line 643
    iget-object v0, p0, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "test_dimlayer_alpha_value"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_f5

    goto :goto_f6

    :cond_f5
    move v1, v3

    :goto_f6
    iput-boolean v1, p0, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;->mTestDimlayerAlphaValue:Z

    .line 646
    invoke-direct {p0}, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;->initFingerPrint()V

    .line 647
    invoke-direct {p0}, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;->initFaceRecognition()V

    .line 648
    invoke-direct {p0}, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;->setOnWindowFocusChangedListener()V

    return-void
.end method

.method private initViews(Landroid/view/View;)V
    .registers 4

    const v0, 0x7f0a0285

    .line 252
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/meizu/settings/face/FaceRecognitionAnimationView;

    iput-object v0, p0, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;->mFaceRecognitionAnimationView:Lcom/meizu/settings/face/FaceRecognitionAnimationView;

    .line 253
    iget-boolean v0, p0, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;->mIsFaceRecognitionEnable:Z

    if-eqz v0, :cond_1d

    .line 254
    iget-object v0, p0, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;->mFaceRecognitionAnimationView:Lcom/meizu/settings/face/FaceRecognitionAnimationView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/meizu/settings/face/FaceRecognitionAnimationView;->setVisible(Z)V

    .line 255
    iget-object v0, p0, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;->mFaceRecognitionAnimationView:Lcom/meizu/settings/face/FaceRecognitionAnimationView;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Lcom/meizu/settings/face/FaceRecognitionAnimationView;->setFaceColorFilter(I)V

    goto :goto_23

    .line 257
    :cond_1d
    iget-object v0, p0, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;->mFaceRecognitionAnimationView:Lcom/meizu/settings/face/FaceRecognitionAnimationView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/meizu/settings/face/FaceRecognitionAnimationView;->setVisible(Z)V

    :goto_23
    const v0, 0x7f0a07a1

    .line 260
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;->mUserFingerprintTextView:Landroid/widget/TextView;

    const v0, 0x7f0a03d9

    .line 261
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;->mMainRelativeLayout:Landroid/widget/RelativeLayout;

    const v0, 0x7f0a0363

    .line 262
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;->mTipTextView:Landroid/widget/TextView;

    const v0, 0x7f0a0364

    .line 263
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;->mTipTextView2:Landroid/widget/TextView;

    const v0, 0x7f0a06a4

    .line 264
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/meizu/settings/widget/LockPasswordView;

    iput-object v0, p0, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;->mSpecialLockPasswordView:Lcom/meizu/settings/widget/LockPasswordView;

    .line 265
    iget-object v0, p0, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/meizu/settings/utils/MzUtils;->setDecorViewBackground(Landroid/app/Activity;)V

    .line 267
    invoke-direct {p0, p1}, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;->initBottomLayout(Landroid/view/View;)V

    .line 268
    invoke-direct {p0, p1}, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;->initLockDigitalPanel(Landroid/view/View;)V

    .line 271
    iget-boolean p1, p0, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;->mFromSetupwizard:Z

    if-eqz p1, :cond_7a

    .line 272
    iget-object p1, p0, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    iget-object v0, p0, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;->mActivity:Landroid/app/Activity;

    check-cast v0, Lcom/android/settings/SettingsActivity;

    .line 273
    invoke-virtual {v0}, Lflyme/support/v7/app/AppCompatActivity;->getSupportActionBar()Lflyme/support/v7/app/ActionBar;

    move-result-object v0

    .line 272
    invoke-static {p1, v0}, Lcom/meizu/settings/utils/MzUtils;->hideNavigationBar(Landroid/view/Window;Lflyme/support/v7/app/ActionBar;)V

    .line 277
    :cond_7a
    invoke-direct {p0}, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;->testAlpha()V

    return-void
.end method

.method private initWindowMode()V
    .registers 2

    .line 1525
    iget-object v0, p0, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isInMultiWindowMode()Z

    move-result v0

    iput-boolean v0, p0, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;->mIsInMultiWindowMode:Z

    return-void
.end method

.method private isDialer(Ljava/lang/String;)Z
    .registers 2

    const-string p0, "com.android.dialer"

    .line 175
    invoke-static {p0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_a

    const/4 p0, 0x1

    return p0

    :cond_a
    const/4 p0, 0x0

    return p0
.end method

.method private needFinish()Z
    .registers 5

    .line 1029
    iget-object v0, p0, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    return v1

    .line 1032
    :cond_a
    iget v0, p0, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;->mComfirmPasswordFrom:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-ne v0, v2, :cond_2b

    .line 1033
    iget-object v0, p0, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;->mMZLockUtils:Lcom/meizu/settings/security/FlymeLockPasswordUtils;

    invoke-virtual {v0}, Lcom/meizu/settings/security/FlymeLockPasswordUtils;->isAppLockEnable()Z

    move-result v0

    if-eqz v0, :cond_2a

    iget-object v0, p0, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;->mProtectedPkgName:Ljava/lang/String;

    .line 1034
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_36

    iget-object v0, p0, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;->mMZLockUtils:Lcom/meizu/settings/security/FlymeLockPasswordUtils;

    iget-object p0, p0, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;->mProtectedPkgName:Ljava/lang/String;

    invoke-virtual {v0, p0}, Lcom/meizu/settings/security/FlymeLockPasswordUtils;->isPackageLockedByAppLock(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_36

    :cond_2a
    return v3

    :cond_2b
    if-ne v0, v3, :cond_36

    .line 1037
    iget-object p0, p0, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;->mMZLockUtils:Lcom/meizu/settings/security/FlymeLockPasswordUtils;

    .line 1038
    invoke-virtual {p0}, Lcom/meizu/settings/security/FlymeLockPasswordUtils;->isDocumentLockEnable()Z

    move-result p0

    if-nez p0, :cond_36

    return v3

    :cond_36
    return v1
.end method

.method private registerReceiver()V
    .registers 5

    .line 728
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "meizu.intent.action.FLYME_FINDPHONE_UNLOCK"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v1, "com.android.systemui.recents.action.SHOW_GESTURE_VIEW"

    .line 731
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "com.android.systemui.recents.action.CANCEL_GESTURE_VIEW"

    .line 732
    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 733
    new-instance v3, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment$11;

    invoke-direct {v3, p0, v1, v2}, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment$11;-><init>(Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v3, p0, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 752
    iget-object v1, p0, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v1, :cond_21

    .line 753
    iget-object p0, p0, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0, v1, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_21
    return-void
.end method

.method private reportSuccessfullAttempt()V
    .registers 3

    .line 1144
    iget-object v0, p0, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v0

    iget v1, p0, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;->mUserId:I

    invoke-static {v0, v1}, Lcom/meizu/settings/utils/MzUtils;->isManagedProfile(Landroid/os/UserManager;I)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 1145
    iget-object v0, p0, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;->mMZLockUtils:Lcom/meizu/settings/security/FlymeLockPasswordUtils;

    invoke-virtual {v0}, Lcom/meizu/settings/security/FlymeLockPasswordUtils;->getLockPatternUtils()Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v0

    iget v1, p0, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;->mUserId:I

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->reportSuccessfulPasswordAttempt(I)V

    .line 1148
    iget-object v0, p0, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;->mMZLockUtils:Lcom/meizu/settings/security/FlymeLockPasswordUtils;

    invoke-virtual {v0}, Lcom/meizu/settings/security/FlymeLockPasswordUtils;->getLockPatternUtils()Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v0

    iget p0, p0, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;->mUserId:I

    invoke-virtual {v0, p0}, Lcom/android/internal/widget/LockPatternUtils;->userPresent(I)V

    :cond_24
    return-void
.end method

.method private reportUnlockEvent(I)V
    .registers 5

    .line 1087
    iget v0, p0, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;->mComfirmPasswordFrom:I

    const-string v1, "ConfirmPasswordMeizu"

    const/4 v2, 0x2

    if-ne v0, v2, :cond_1b

    iget-object v0, p0, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;->mProtectedPkgName:Ljava/lang/String;

    .line 1088
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1b

    .line 1089
    iget-object p0, p0, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;->mUsageStatsProxy:Lcom/meizu/settings/datareport/UsageStatsProxy;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "entering_app"

    invoke-virtual {p0, v0, v1, p1}, Lcom/meizu/settings/datareport/UsageStatsProxy;->reportData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2b

    .line 1090
    :cond_1b
    iget v0, p0, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;->mComfirmPasswordFrom:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_2b

    .line 1091
    iget-object p0, p0, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;->mUsageStatsProxy:Lcom/meizu/settings/datareport/UsageStatsProxy;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "entering_doc"

    invoke-virtual {p0, v0, v1, p1}, Lcom/meizu/settings/datareport/UsageStatsProxy;->reportData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2b
    :goto_2b
    return-void
.end method

.method private resetPasswordView()V
    .registers 6

    .line 853
    iget-object v0, p0, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;->mMZLockUtils:Lcom/meizu/settings/security/FlymeLockPasswordUtils;

    iget v1, p0, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;->mComfirmPasswordFrom:I

    invoke-virtual {v0, v1}, Lcom/meizu/settings/security/FlymeLockPasswordUtils;->getPasswordType(I)I

    move-result v0

    .line 854
    iget v1, p0, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;->mPasswordType:I

    if-ne v0, v1, :cond_d

    return-void

    .line 858
    :cond_d
    iput v0, p0, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;->mPasswordType:I

    .line 859
    iget-object v0, p0, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;->mLockDigitPanel:Lcom/meizu/settings/widget/SystemLockView;

    iget v1, p0, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;->mPasswordType:I

    invoke-virtual {v0, v1}, Lcom/meizu/settings/widget/SystemLockView;->setKeyPadType(I)V

    .line 860
    iget v0, p0, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;->mPasswordType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_20

    .line 862
    iget-object v0, p0, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/meizu/settings/utils/MzUtils;->forceShowInputMethod(Landroid/app/Activity;)V

    .line 865
    :cond_20
    iget-object v0, p0, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;->mMZLockUtils:Lcom/meizu/settings/security/FlymeLockPasswordUtils;

    iget v2, p0, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;->mComfirmPasswordFrom:I

    invoke-virtual {v0, v2}, Lcom/meizu/settings/security/FlymeLockPasswordUtils;->getPasswordLength(I)I

    move-result v0

    .line 866
    iget-object v2, p0, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;->mLockDigitPanel:Lcom/meizu/settings/widget/SystemLockView;

    invoke-virtual {v2, v0}, Lcom/meizu/settings/widget/SystemLockView;->setMaxLen(I)V

    .line 867
    iget-object v2, p0, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;->mComplexPasswordView:Landroid/widget/EditText;

    new-array v3, v1, [Landroid/text/InputFilter;

    new-instance v4, Landroid/text/InputFilter$LengthFilter;

    invoke-direct {v4, v0}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    const/4 v0, 0x0

    aput-object v4, v3, v0

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 870
    iget v2, p0, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;->mPasswordType:I

    if-ne v2, v1, :cond_54

    .line 871
    iget-object v2, p0, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;->mLockDigitPanel:Lcom/meizu/settings/widget/SystemLockView;

    invoke-virtual {v2, v0}, Lcom/meizu/settings/widget/SystemLockView;->setHollowVisible(Z)V

    .line 872
    iget-object v2, p0, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;->mLockDigitPanel:Lcom/meizu/settings/widget/SystemLockView;

    invoke-virtual {v2, v0}, Lcom/meizu/settings/widget/SystemLockView;->setInputTextButtonVisibility(Z)V

    .line 873
    iget-object v0, p0, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;->mSimplePasswordView:Lcom/meizu/settings/widget/LockDigitView;

    if-eqz v0, :cond_59

    const/16 v2, 0x8

    .line 874
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_59

    .line 877
    :cond_54
    iget-object v0, p0, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;->mLockDigitPanel:Lcom/meizu/settings/widget/SystemLockView;

    invoke-virtual {v0, v1}, Lcom/meizu/settings/widget/SystemLockView;->setHollowVisible(Z)V

    .line 880
    :cond_59
    :goto_59
    invoke-direct {p0, v1}, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;->setPaswordViewEnable(Z)V

    return-void
.end method

.method private setBlackBackgroundInUnderglassFP(Landroid/view/View;)V
    .registers 5

    .line 421
    iget-boolean p1, p0, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;->mTestDimlayerAlphaValue:Z

    if-eqz p1, :cond_5

    return-void

    .line 443
    :cond_5
    iget-object p1, p0, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 444
    iget-object p1, p0, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;->mActivity:Landroid/app/Activity;

    const/4 v1, 0x1

    invoke-static {p1, v1}, Lcom/meizu/settings/utils/StatusbarColorUtils;->setStatusBarDarkIcon(Landroid/app/Activity;Z)V

    .line 445
    iget-object p1, p0, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/4 v2, 0x0

    invoke-static {p1, v0, v2}, Lcom/meizu/common/util/NavigationBarUtils;->setNavigationBarColor(Landroid/view/Window;IZ)V

    .line 446
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-static {p1, v1}, Lcom/meizu/settings/utils/MzUtils;->setNavigationBarDarIcon(Landroid/app/Activity;Z)V

    .line 448
    iget-object p1, p0, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;->mMainRelativeLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 449
    iget-object p1, p0, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;->mTipTextView:Landroid/widget/TextView;

    const/high16 v0, -0x1000000

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 450
    iget-object p1, p0, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;->mTipTextView2:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 451
    iget-object p1, p0, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;->mSpecialLockPasswordView:Lcom/meizu/settings/widget/LockPasswordView;

    iget-object v1, p0, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080292

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/meizu/settings/widget/LockPasswordView;->setCircleSolidDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 452
    iget-object p1, p0, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;->mSpecialLockPasswordView:Lcom/meizu/settings/widget/LockPasswordView;

    iget-object v1, p0, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080294

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/meizu/settings/widget/LockPasswordView;->setCircleHollowDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 453
    iget-object p1, p0, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;->mSimplePasswordView:Lcom/meizu/settings/widget/LockDigitView;

    iget-object v1, p0, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080343

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/meizu/settings/widget/LockDigitView;->setCellBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 454
    iget-object p1, p0, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;->mFaceRecognitionAnimationView:Lcom/meizu/settings/face/FaceRecognitionAnimationView;

    invoke-virtual {p1, v0}, Lcom/meizu/settings/face/FaceRecognitionAnimationView;->setFaceColorFilter(I)V

    .line 455
    iget-object p1, p0, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;->mComplexPasswordView:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080105

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/EditText;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 456
    iget-object p1, p0, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;->mComplexPasswordView:Landroid/widget/EditText;

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setTextColor(I)V

    .line 457
    iget-object p0, p0, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;->mLockDigitPanel:Lcom/meizu/settings/widget/SystemLockView;

    const/4 p1, 0x2

    const v0, 0x7f08034c

    invoke-virtual {p0, p1, v0}, Lcom/meizu/settings/widget/SystemLockView;->setInputTextButtonStat(II)V

    return-void
.end method

.method private setOnWindowFocusChangedListener()V
    .registers 3

    .line 686
    iget-object v0, p0, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;->mActivity:Landroid/app/Activity;

    if-eqz v0, :cond_14

    .line 688
    check-cast v0, Lcom/android/settings/SettingsActivity;

    invoke-virtual {v0}, Lcom/android/settings/SettingsActivity;->getMzSettingsActivity()Lcom/meizu/settings/MzSettingsActivity;

    move-result-object v0

    if-eqz v0, :cond_14

    .line 690
    new-instance v1, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment$10;

    invoke-direct {v1, p0}, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment$10;-><init>(Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;)V

    .line 691
    invoke-virtual {v0, v1}, Lcom/meizu/settings/MzSettingsActivity;->setOnWindowFocusChangedListener(Lcom/meizu/settings/MzSettingsActivity$OnWindowFocusChangedListener;)V

    :cond_14
    return-void
.end method

.method private setPaswordViewEnable(Z)V
    .registers 5

    .line 1317
    iget v0, p0, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;->mPasswordType:I

    const/4 v1, 0x1

    if-nez v0, :cond_10

    .line 1318
    iget-object v0, p0, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;->mLockDigitPanel:Lcom/meizu/settings/widget/SystemLockView;

    invoke-virtual {v0, v1}, Lcom/meizu/settings/widget/SystemLockView;->clearCell(Z)V

    .line 1319
    iget-object p0, p0, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;->mSimplePasswordView:Lcom/meizu/settings/widget/LockDigitView;

    invoke-virtual {p0, p1}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_30

    :cond_10
    if-ne v0, v1, :cond_30

    .line 1325
    iget-object v0, p0, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;->mComplexPasswordView:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setEnabled(Z)V

    if-eqz p1, :cond_2b

    .line 1327
    iget-object p1, p0, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;->mComplexPasswordView:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->requestFocus()Z

    .line 1328
    iget-object p1, p0, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment$16;

    invoke-direct {v0, p0}, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment$16;-><init>(Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;)V

    const-wide/16 v1, 0x64

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_30

    .line 1335
    :cond_2b
    iget-object p0, p0, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;->mComplexPasswordView:Landroid/widget/EditText;

    invoke-virtual {p0}, Landroid/widget/EditText;->clearFocus()V

    :cond_30
    :goto_30
    return-void
.end method

.method private setSoftInputMode()V
    .registers 2

    .line 576
    iget v0, p0, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;->mPasswordType:I

    if-nez v0, :cond_f

    .line 577
    iget-object p0, p0, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    const/16 v0, 0x20

    invoke-virtual {p0, v0}, Landroid/view/Window;->setSoftInputMode(I)V

    :cond_f
    return-void
.end method

.method private setTip(II)V
    .registers 9

    if-eqz p1, :cond_96

    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq p1, v2, :cond_36

    if-eq p1, v0, :cond_1e

    const/4 p2, 0x3

    if-eq p1, p2, :cond_e

    goto/16 :goto_b7

    .line 1518
    :cond_e
    iget-object p1, p0, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;->mLockDigitPanel:Lcom/meizu/settings/widget/SystemLockView;

    iget-object p0, p0, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;->mActivity:Landroid/app/Activity;

    const p2, 0x7f120daa

    invoke-virtual {p0, p2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/meizu/settings/widget/SystemLockView;->setTip(Ljava/lang/String;)V

    goto/16 :goto_b7

    .line 1515
    :cond_1e
    iget-object p1, p0, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;->mLockDigitPanel:Lcom/meizu/settings/widget/SystemLockView;

    iget-object p0, p0, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;->mActivity:Landroid/app/Activity;

    const v0, 0x7f120da5

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v2, v1

    invoke-virtual {p0, v0, v2}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/meizu/settings/widget/SystemLockView;->setTip(Ljava/lang/String;)V

    goto/16 :goto_b7

    .line 1496
    :cond_36
    div-int/lit8 p1, p2, 0x3c

    const v3, 0x7f12175c

    if-lez p1, :cond_82

    .line 1498
    rem-int/lit8 v4, p2, 0x3c

    const v5, 0x7f12175b

    if-nez v4, :cond_6d

    if-ne p1, v2, :cond_55

    .line 1501
    iget-object p1, p0, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;->mActivity:Landroid/app/Activity;

    new-array v0, v2, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v0, v1

    invoke-virtual {p1, v3, v0}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_90

    .line 1503
    :cond_55
    iget-object p2, p0, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;->mActivity:Landroid/app/Activity;

    new-array v0, v0, [Ljava/lang/Object;

    sub-int/2addr p1, v2

    .line 1504
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v0, v1

    const/16 p1, 0x3c

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v0, v2

    .line 1503
    invoke-virtual {p2, v5, v0}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_90

    .line 1507
    :cond_6d
    iget-object p2, p0, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;->mActivity:Landroid/app/Activity;

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v0, v1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v0, v2

    invoke-virtual {p2, v5, v0}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_90

    .line 1510
    :cond_82
    iget-object p1, p0, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;->mActivity:Landroid/app/Activity;

    new-array v0, v2, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v0, v1

    invoke-virtual {p1, v3, v0}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 1512
    :goto_90
    iget-object p0, p0, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;->mLockDigitPanel:Lcom/meizu/settings/widget/SystemLockView;

    invoke-virtual {p0, p1}, Lcom/meizu/settings/widget/SystemLockView;->setTip(Ljava/lang/String;)V

    goto :goto_b7

    .line 1488
    :cond_96
    iget-boolean p1, p0, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;->isFPEnabled:Z

    if-eqz p1, :cond_a9

    .line 1489
    iget-object p1, p0, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;->mLockDigitPanel:Lcom/meizu/settings/widget/SystemLockView;

    iget-object p0, p0, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;->mActivity:Landroid/app/Activity;

    const p2, 0x7f12175e

    invoke-virtual {p0, p2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/meizu/settings/widget/SystemLockView;->setTip(Ljava/lang/String;)V

    goto :goto_b7

    .line 1491
    :cond_a9
    iget-object p1, p0, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;->mLockDigitPanel:Lcom/meizu/settings/widget/SystemLockView;

    iget-object p0, p0, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;->mActivity:Landroid/app/Activity;

    const p2, 0x7f120559

    invoke-virtual {p0, p2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/meizu/settings/widget/SystemLockView;->setTip(Ljava/lang/String;)V

    :goto_b7
    return-void
.end method

.method private setVerifyErrorTip(I)V
    .registers 5

    .line 1278
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 1280
    :cond_7
    iget-object v0, p0, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;->mLockDigitPanel:Lcom/meizu/settings/widget/SystemLockView;

    iget-object v1, p0, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/meizu/settings/widget/SystemLockView;->setTip(Ljava/lang/String;)V

    .line 1281
    iget-object p1, p0, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;->mLockDigitPanel:Lcom/meizu/settings/widget/SystemLockView;

    const v0, 0x7f0a0363

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-static {p1}, Lcom/meizu/settings/utils/MzUtils;->startShakeAnim(Landroid/view/View;)V

    .line 1283
    iget-object p1, p0, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment$15;

    invoke-direct {v0, p0}, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment$15;-><init>(Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;)V

    const-wide/16 v1, 0x1388

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private setWorkChallengeBackground(Landroid/view/View;I)V
    .registers 6

    .line 366
    iget-object v0, p0, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;->mActivity:Landroid/app/Activity;

    const v1, 0x7f0a03da

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_f

    .line 369
    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/view/View;->setPadding(IIII)V

    .line 372
    :cond_f
    iget-object v0, p0, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;->mActivity:Landroid/app/Activity;

    const-string v2, "device_policy"

    invoke-virtual {v0, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    .line 374
    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {v0, p2}, Landroid/app/admin/DevicePolicyManager;->getOrganizationColorForUser(I)I

    move-result p2

    invoke-direct {v2, p2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p1, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const p2, 0x7f0a00e2

    .line 375
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    if-eqz p1, :cond_6e

    .line 377
    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 378
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f0807c8

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    .line 380
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f060069

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->DARKEN:Landroid/graphics/PorterDuff$Mode;

    .line 379
    invoke-virtual {p2, v0, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 382
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 383
    new-instance p2, Landroid/graphics/Point;

    invoke-direct {p2}, Landroid/graphics/Point;-><init>()V

    .line 384
    iget-object p0, p0, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object p0

    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p0

    invoke-virtual {p0, p2}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 385
    new-instance p0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v0, -0x1

    iget p2, p2, Landroid/graphics/Point;->y:I

    invoke-direct {p0, v0, p2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_6e
    return-void
.end method

.method private showForgetPasswordView()V
    .registers 4

    .line 1133
    iget-object v0, p0, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;->mForgetPasswordLayout:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1134
    iget-object v0, p0, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;->mCancelView:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1136
    iget v0, p0, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;->mComfirmPasswordFrom:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_1c

    .line 1137
    iput-boolean v1, p0, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;->mShowUrgencyCall:Z

    .line 1138
    iget-object p0, p0, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;->mForgetPasswordTV:Landroid/widget/TextView;

    const v0, 0x7f1208e1

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(I)V

    :cond_1c
    return-void
.end method

.method private startDrawGrayLineAnimation()V
    .registers 4

    const v0, 0x7f0602ce

    const v1, 0x7f0602cf

    const/4 v2, 0x1

    .line 396
    invoke-direct {p0, v0, v1, v2}, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;->drawLineAnimation(IIZ)V

    return-void
.end method

.method private startDrawRedLineAnimation()V
    .registers 4

    const v0, 0x7f06003f

    const v1, 0x7f0602ce

    const/4 v2, 0x0

    .line 392
    invoke-direct {p0, v0, v1, v2}, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;->drawLineAnimation(IIZ)V

    return-void
.end method

.method private testAlpha()V
    .registers 5

    .line 281
    iget-boolean v0, p0, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;->mTestDimlayerAlphaValue:Z

    if-nez v0, :cond_5

    return-void

    :cond_5
    const/4 v0, 0x0

    .line 285
    invoke-direct {p0, v0}, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;->setPaswordViewEnable(Z)V

    .line 286
    iget-object v1, p0, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;->mView:Landroid/view/View;

    const v2, 0x7f0a008c

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 287
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 288
    iget-object v2, p0, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;->mView:Landroid/view/View;

    const v3, 0x7f0a008a

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 290
    iget-object v0, p0, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;->mView:Landroid/view/View;

    const v2, 0x7f0a008b

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    .line 291
    sget v2, Landroid/os/PowerManager;->BRIGHTNESS_ON:I

    invoke-virtual {v0, v2}, Landroid/widget/SeekBar;->setMax(I)V

    const/4 v2, 0x1

    .line 292
    invoke-virtual {v0, v2}, Landroid/widget/SeekBar;->setKeyProgressIncrement(I)V

    .line 294
    new-instance v2, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment$2;

    invoke-direct {v2, p0, v1}, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment$2;-><init>(Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;Landroid/widget/TextView;)V

    invoke-virtual {v0, v2}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 322
    iget-object v1, p0, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;->mView:Landroid/view/View;

    const v2, 0x7f0a01ec

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment$3;

    invoke-direct {v2, p0, v0}, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment$3;-><init>(Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;Landroid/widget/SeekBar;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 330
    iget-object v1, p0, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;->mView:Landroid/view/View;

    const v2, 0x7f0a0355

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment$4;

    invoke-direct {v2, p0, v0}, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment$4;-><init>(Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;Landroid/widget/SeekBar;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private updateAppLockStatus(Ljava/lang/String;)V
    .registers 4

    .line 181
    iget v0, p0, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;->mComfirmPasswordFrom:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_a

    .line 182
    iget-object p0, p0, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;->mAccessControlManager:Lmeizu/security/AccessControlManager;

    invoke-virtual {p0, p1}, Lmeizu/security/AccessControlManager;->updateStatus(Ljava/lang/String;)Z

    :cond_a
    return-void
.end method

.method private updateFingerprintTimeoutTips(II)V
    .registers 6

    const/4 v0, 0x0

    if-gtz p2, :cond_32

    .line 1444
    iput-boolean v0, p0, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;->mFingerprintLockout:Z

    .line 1445
    iget-boolean p1, p0, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;->mPasswordLockout:Z

    if-nez p1, :cond_23

    iget-boolean p1, p0, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;->mFingerprintLockout:Z

    if-nez p1, :cond_23

    .line 1446
    iput v0, p0, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;->mVerifyState:I

    .line 1447
    iget p1, p0, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;->mVerifyState:I

    invoke-direct {p0, p1, p2}, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;->setTip(II)V

    if-nez p2, :cond_5a

    .line 1449
    iget-object p1, p0, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;->mFlymeIFingerPrint:Lcom/meizu/settings/fingerprint/FlymeIFingerPrint;

    invoke-interface {p1}, Lcom/meizu/settings/fingerprint/FlymeIFingerPrint;->endVerify()V

    .line 1450
    iget-object p1, p0, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;->mFlymeIFingerPrint:Lcom/meizu/settings/fingerprint/FlymeIFingerPrint;

    iget-object p0, p0, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;->mHandler:Landroid/os/Handler;

    invoke-interface {p1, p0}, Lcom/meizu/settings/fingerprint/FlymeIFingerPrint;->startVerify(Landroid/os/Handler;)V

    goto :goto_5a

    .line 1453
    :cond_23
    iget-object p1, p0, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;->mLockDigitPanel:Lcom/meizu/settings/widget/SystemLockView;

    iget-object p0, p0, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;->mActivity:Landroid/app/Activity;

    const p2, 0x7f120556

    invoke-virtual {p0, p2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/meizu/settings/widget/SystemLockView;->setTip(Ljava/lang/String;)V

    goto :goto_5a

    :cond_32
    const/4 v1, 0x1

    .line 1460
    iput-boolean v1, p0, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;->mFingerprintLockout:Z

    const/16 v1, 0x104

    const/4 v2, 0x2

    if-ne p1, v1, :cond_3e

    .line 1462
    iput v2, p0, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;->mVerifyState:I

    .line 1463
    iput-boolean v0, p0, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;->mCanVerifyPassword:Z

    .line 1465
    :cond_3e
    iget-boolean p1, p0, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;->mDelayShowFingerprintLockoutTip:Z

    if-eqz p1, :cond_4f

    .line 1466
    iget-object p1, p0, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment$18;

    invoke-direct {v0, p0, p2}, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment$18;-><init>(Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;I)V

    const-wide/16 v1, 0x3e8

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_5a

    .line 1478
    :cond_4f
    iget p1, p0, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;->mVerifyState:I

    if-ne p1, v2, :cond_5a

    iget-boolean v0, p0, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;->mCanVerifyPassword:Z

    if-nez v0, :cond_5a

    .line 1479
    invoke-direct {p0, p1, p2}, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;->setTip(II)V

    :cond_5a
    :goto_5a
    return-void
.end method

.method private updateScreenBrightnessWhileLowLuminance(I)V
    .registers 7

    .line 1414
    iget-object v0, p0, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;->mActivity:Landroid/app/Activity;

    const-string v1, "ConfirmPasswordMeizu"

    if-nez v0, :cond_c

    const-string p0, "updateScreenBrightnessWhileLowLuminance mActivity is null!"

    .line 1415
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1419
    :cond_c
    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x0

    const-string v3, "mz_face_screen_brightness"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v3, 0x1

    if-ne v0, v3, :cond_1b

    move v2, v3

    :cond_1b
    const/4 v0, -0x1

    if-nez v2, :cond_1f

    move p1, v0

    .line 1426
    :cond_1f
    iget-object v3, p0, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    if-ne p1, v0, :cond_30

    const/high16 p1, -0x40800000  # -1.0f

    .line 1428
    iput p1, v3, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    goto :goto_41

    :cond_30
    const/16 v0, 0x50

    if-gtz p1, :cond_35

    goto :goto_3b

    :cond_35
    const/16 v4, 0xff

    if-le p1, v4, :cond_3a

    goto :goto_3b

    :cond_3a
    move v0, p1

    :goto_3b
    int-to-float p1, v0

    const/high16 v0, 0x437f0000  # 255.0f

    div-float/2addr p1, v0

    .line 1436
    iput p1, v3, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    .line 1438
    :goto_41
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "updateScreenBrightnessWhileLowLuminance layoutParams.screenBrightness:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v3, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, ",face screen enable:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1439
    iget-object p0, p0, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0, v3}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    return-void
.end method

.method private updateThrottleTimeoutTips(I)V
    .registers 5

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p1, :cond_2a

    .line 1296
    iput-boolean v0, p0, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;->mPasswordLockout:Z

    .line 1297
    invoke-direct {p0, v1}, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;->setPaswordViewEnable(Z)V

    .line 1298
    iput-boolean v1, p0, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;->mCanVerifyPassword:Z

    .line 1299
    iget-boolean v1, p0, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;->mPasswordLockout:Z

    if-nez v1, :cond_1b

    iget-boolean v1, p0, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;->mFingerprintLockout:Z

    if-nez v1, :cond_1b

    .line 1300
    iput v0, p0, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;->mVerifyState:I

    .line 1301
    iget v0, p0, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;->mVerifyState:I

    invoke-direct {p0, v0, p1}, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;->setTip(II)V

    goto :goto_47

    .line 1303
    :cond_1b
    iget-object p1, p0, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;->mLockDigitPanel:Lcom/meizu/settings/widget/SystemLockView;

    iget-object p0, p0, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;->mActivity:Landroid/app/Activity;

    const v0, 0x7f120559

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/meizu/settings/widget/SystemLockView;->setTip(Ljava/lang/String;)V

    goto :goto_47

    .line 1306
    :cond_2a
    iget v2, p0, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;->mVerifyState:I

    if-ne v2, v1, :cond_31

    .line 1307
    invoke-direct {p0, v2, p1}, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;->setTip(II)V

    .line 1309
    :cond_31
    invoke-direct {p0, v0}, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;->setPaswordViewEnable(Z)V

    add-int/lit8 p1, p1, -0x1

    .line 1311
    iget-object p0, p0, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;->mHandler:Landroid/os/Handler;

    const/16 v0, 0x40

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    const-wide/16 v0, 0x3e8

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :goto_47
    return-void
.end method

.method private verifyFPSuccess()V
    .registers 2

    const/4 v0, 0x2

    .line 1096
    invoke-direct {p0, v0}, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;->reportUnlockEvent(I)V

    const/4 v0, 0x1

    .line 1098
    invoke-direct {p0, v0}, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;->verifySuccess(Z)V

    return-void
.end method

.method private verifySuccess(Z)V
    .registers 5

    .line 1103
    iget-object v0, p0, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;->mProtectedPkgName:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;->updateAppLockStatus(Ljava/lang/String;)V

    .line 1105
    invoke-direct {p0}, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;->hideInputMethod()V

    .line 1106
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "flyme_password"

    const-string v2, ""

    .line 1108
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1110
    iget-object v1, p0, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;->mActivity:Landroid/app/Activity;

    if-eqz p1, :cond_1a

    const/4 p1, -0x1

    goto :goto_1b

    :cond_1a
    const/4 p1, 0x0

    :goto_1b
    invoke-virtual {v1, p1, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 1111
    iget-object p0, p0, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method private verifyThePassword(Ljava/lang/String;)V
    .registers 5

    const/4 v0, 0x1

    .line 1200
    iput-boolean v0, p0, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;->mIsPasswordVerifying:Z

    .line 1201
    iget-object v0, p0, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;->mMZLockUtils:Lcom/meizu/settings/security/FlymeLockPasswordUtils;

    iget v1, p0, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;->mComfirmPasswordFrom:I

    new-instance v2, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment$14;

    invoke-direct {v2, p0, p1}, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment$14;-><init>(Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;Ljava/lang/String;)V

    invoke-virtual {v0, v1, p1, v2}, Lcom/meizu/settings/security/FlymeLockPasswordUtils;->checkPassword(ILjava/lang/String;Lcom/meizu/settings/security/FlymeLockPasswordUtils$LockPasswordCheckCallback;)Z

    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .registers 2

    .line 240
    invoke-super {p0, p1}, Lcom/meizu/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 241
    iget-object p0, p0, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;->mActivity:Landroid/app/Activity;

    invoke-static {p0}, Lcom/meizu/settings/utils/MzUtils;->hideActionbar(Landroid/content/Context;)V

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 6

    const/16 v0, 0x64

    if-ne p1, v0, :cond_51

    const/4 p1, -0x1

    const/4 v0, 0x1

    if-ne p2, p1, :cond_3d

    .line 550
    iget p1, p0, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;->mComfirmPasswordFrom:I

    const/4 p2, 0x2

    const/4 p3, 0x4

    const/4 v1, 0x0

    if-ne p1, p2, :cond_15

    .line 551
    iget-object p1, p0, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;->mMZLockUtils:Lcom/meizu/settings/security/FlymeLockPasswordUtils;

    invoke-virtual {p1, v1}, Lcom/meizu/settings/security/FlymeLockPasswordUtils;->setAppLockEnable(Z)V

    goto :goto_2c

    :cond_15
    if-ne p1, v0, :cond_1d

    .line 553
    iget-object p1, p0, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;->mMZLockUtils:Lcom/meizu/settings/security/FlymeLockPasswordUtils;

    invoke-virtual {p1, v1}, Lcom/meizu/settings/security/FlymeLockPasswordUtils;->setDocumentLockEnable(Z)V

    goto :goto_2c

    :cond_1d
    if-ne p1, p3, :cond_25

    .line 555
    iget-object p2, p0, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;->mMZLockUtils:Lcom/meizu/settings/security/FlymeLockPasswordUtils;

    invoke-virtual {p2, p1, v0}, Lcom/meizu/settings/security/FlymeLockPasswordUtils;->clearPassword(IZ)V

    goto :goto_2c

    :cond_25
    if-nez p1, :cond_2c

    .line 557
    iget-object p1, p0, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;->mMZLockUtils:Lcom/meizu/settings/security/FlymeLockPasswordUtils;

    invoke-virtual {p1, v1}, Lcom/meizu/settings/security/FlymeLockPasswordUtils;->clearScreenPassword(Z)V

    .line 559
    :cond_2c
    :goto_2c
    invoke-direct {p0, p3}, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;->reportUnlockEvent(I)V

    .line 561
    iget p1, p0, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;->mComfirmPasswordFrom:I

    if-eq p1, p3, :cond_38

    iget-boolean p1, p0, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;->mVerifyFromCreateBiometric:Z

    if-nez p1, :cond_38

    goto :goto_39

    :cond_38
    move v0, v1

    .line 563
    :goto_39
    invoke-direct {p0, v0}, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;->verifySuccess(Z)V

    goto :goto_51

    .line 565
    :cond_3d
    iget p1, p0, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;->mPasswordType:I

    if-ne p1, v0, :cond_4c

    .line 566
    iget-object p1, p0, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v0, 0x10

    invoke-virtual {p1, v0}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 569
    :cond_4c
    iget-object p0, p0, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;->mActivity:Landroid/app/Activity;

    invoke-static {p0, p2, p3}, Lcom/meizu/settings/utils/FlymeAccountHelper;->handleValidatePasswordError(Landroid/content/Context;ILandroid/content/Intent;)V

    :cond_51
    :goto_51
    return-void
.end method

.method public onCellAdded(Ljava/lang/String;)V
    .registers 2

    return-void
.end method

.method public onCellCleared(Ljava/lang/String;)V
    .registers 2

    return-void
.end method

.method public onCellFhish(Ljava/lang/String;)V
    .registers 3

    .line 1079
    iput-object p1, p0, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;->mInputPassword:Ljava/lang/String;

    .line 1081
    iget-boolean v0, p0, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;->mInTouchMode:Z

    if-eqz v0, :cond_9

    .line 1082
    invoke-direct {p0, p1}, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;->verifyThePassword(Ljava/lang/String;)V

    :cond_9
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 4

    .line 937
    iget-object v0, p0, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/meizu/settings/utils/MzUtils;->getDisplayMetrics(Landroid/app/Activity;)[I

    move-result-object v0

    const/4 v1, 0x1

    aget v0, v0, v1

    .line 946
    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 3

    .line 229
    invoke-super {p0, p1}, Lcom/meizu/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const-string v0, "access_control"

    .line 231
    invoke-virtual {p0, v0}, Lcom/meizu/settings/SettingsPreferenceFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmeizu/security/AccessControlManager;

    iput-object v0, p0, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;->mAccessControlManager:Lmeizu/security/AccessControlManager;

    .line 233
    invoke-direct {p0, p1}, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;->init(Landroid/os/Bundle;)V

    .line 235
    iget-object p0, p0, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;->mActivity:Landroid/app/Activity;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 5

    .line 246
    iget-object p1, p0, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;->mLayoutInflater:Landroid/view/LayoutInflater;

    const p3, 0x7f0d036f

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;->mView:Landroid/view/View;

    .line 248
    iget-object p0, p0, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;->mView:Landroid/view/View;

    return-object p0
.end method

.method public onDestroy()V
    .registers 2

    .line 979
    invoke-super {p0}, Lcom/meizu/settings/SettingsPreferenceFragment;->onDestroy()V

    .line 980
    iget-boolean v0, p0, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;->mIsFaceRecognitionEnable:Z

    if-eqz v0, :cond_b

    const/4 v0, -0x1

    .line 981
    invoke-direct {p0, v0}, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;->updateScreenBrightnessWhileLowLuminance(I)V

    .line 984
    :cond_b
    iget-object p0, p0, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;->mHandler:Landroid/os/Handler;

    const/16 v0, 0x40

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    const-string p0, "ConfirmPasswordMeizu"

    const-string v0, "onDestroy"

    .line 985
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onInputTextButtonClick(Ljava/lang/String;)V
    .registers 2

    return-void
.end method

.method public onKeyLeftButtonClick(Ljava/lang/String;)V
    .registers 2

    .line 1267
    iget-object p0, p0, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->onBackPressed()V

    return-void
.end method

.method public onKeyRightButtonClick(Ljava/lang/String;)V
    .registers 4

    .line 1272
    iget v0, p0, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;->mPasswordType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_8

    .line 1273
    invoke-direct {p0, p1}, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;->verifyThePassword(Ljava/lang/String;)V

    :cond_8
    return-void
.end method

.method public onLeftButtonClick(Ljava/lang/String;)V
    .registers 2

    return-void
.end method

.method public onPause()V
    .registers 3

    .line 1046
    invoke-super {p0}, Lcom/meizu/settings/InstrumentedPreferenceFragment;->onPause()V

    const/4 v0, 0x1

    .line 1048
    iput-boolean v0, p0, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;->mIsOnPause:Z

    .line 1050
    iget v0, p0, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;->mPasswordType:I

    if-nez v0, :cond_15

    .line 1051
    iget-object v0, p0, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;->mActivity:Landroid/app/Activity;

    check-cast v0, Lcom/android/settings/SettingsActivity;

    invoke-virtual {v0}, Lcom/android/settings/SettingsActivity;->getMzSettingsActivity()Lcom/meizu/settings/MzSettingsActivity;

    move-result-object v0

    .line 1052
    invoke-virtual {v0}, Lcom/meizu/settings/MzSettingsActivity;->releaseOnKeyListener()V

    .line 1055
    :cond_15
    iget-boolean v0, p0, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;->mIsFaceRecognitionEnable:Z

    if-eqz v0, :cond_32

    const/4 v0, -0x1

    .line 1056
    invoke-direct {p0, v0}, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;->updateScreenBrightnessWhileLowLuminance(I)V

    .line 1057
    iget-object v0, p0, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;->mActivity:Landroid/app/Activity;

    const-class v1, Landroid/app/KeyguardManager;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    invoke-virtual {v0}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v0

    if-nez v0, :cond_32

    .line 1059
    iget-object v0, p0, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;->mFlymeIFaceRecognition:Lcom/meizu/settings/face/FlymeIFaceRecognition;

    invoke-interface {v0}, Lcom/meizu/settings/face/FlymeIFaceRecognition;->endVerify()V

    .line 1062
    :cond_32
    iget-object v0, p0, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_3e

    .line 1063
    iget-object v1, p0, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    .line 1064
    iput-object v0, p0, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    :cond_3e
    const-string p0, "ConfirmPasswordMeizu"

    const-string v0, "onPause"

    .line 1066
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onResume()V
    .registers 6

    .line 990
    invoke-super {p0}, Lcom/meizu/settings/SettingsPreferenceFragment;->onResume()V

    .line 991
    invoke-direct {p0}, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;->needFinish()Z

    move-result v0

    const-string v1, "ConfirmPasswordMeizu"

    if-eqz v0, :cond_16

    .line 992
    iget-object p0, p0, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    const-string p0, "onResume finished for no need confirm password"

    .line 993
    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_16
    const/4 v0, 0x0

    .line 996
    iput-boolean v0, p0, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;->mIsOnPause:Z

    .line 997
    iget-object v2, p0, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;->mLockDigitPanel:Lcom/meizu/settings/widget/SystemLockView;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setFitsSystemWindows(Z)V

    .line 998
    iget v2, p0, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;->mPasswordType:I

    if-nez v2, :cond_30

    .line 999
    iget-object v2, p0, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;->mActivity:Landroid/app/Activity;

    check-cast v2, Lcom/android/settings/SettingsActivity;

    invoke-virtual {v2}, Lcom/android/settings/SettingsActivity;->getMzSettingsActivity()Lcom/meizu/settings/MzSettingsActivity;

    move-result-object v2

    iget-object v4, p0, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;->mOnKeyPressListener:Lcom/meizu/settings/MzSettingsActivity$OnKeyListener;

    .line 1000
    invoke-virtual {v2, v4}, Lcom/meizu/settings/MzSettingsActivity;->setOnKeyListener(Lcom/meizu/settings/MzSettingsActivity$OnKeyListener;)V

    .line 1002
    :cond_30
    iput-boolean v3, p0, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;->mInTouchMode:Z

    .line 1004
    iget v2, p0, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;->mComfirmPasswordFrom:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_67

    .line 1005
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "meizu.security:access.package"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;->mProtectedPkgName:Ljava/lang/String;

    .line 1006
    iget-object v2, p0, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;->mProtectedPkgName:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;->isDialer(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;->mShowUrgencyCall:Z

    .line 1007
    iget-boolean v2, p0, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;->mShowUrgencyCall:Z

    if-eqz v2, :cond_67

    .line 1008
    iget-object v2, p0, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;->mCancelView:Landroid/view/View;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1009
    iget-object v2, p0, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;->mForgetPasswordLayout:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1010
    iget-object v0, p0, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;->mForgetPasswordTV:Landroid/widget/TextView;

    const v2, 0x7f121683

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 1015
    :cond_67
    iget-boolean v0, p0, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;->mIsFaceRecognitionEnable:Z

    if-eqz v0, :cond_89

    .line 1016
    iget-object v0, p0, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;->mFlymeIFaceRecognition:Lcom/meizu/settings/face/FlymeIFaceRecognition;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Lcom/meizu/settings/face/FlymeIFaceRecognition;->resetTimeout([B)V

    .line 1017
    iget-object v0, p0, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;->mActivity:Landroid/app/Activity;

    const-class v2, Landroid/app/KeyguardManager;

    invoke-virtual {v0, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    invoke-virtual {v0}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v0

    if-nez v0, :cond_89

    .line 1019
    iget-object v0, p0, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;->mFlymeIFaceRecognition:Lcom/meizu/settings/face/FlymeIFaceRecognition;

    iget-object v2, p0, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x5

    invoke-interface {v0, v2, v3}, Lcom/meizu/settings/face/FlymeIFaceRecognition;->startVerify(Landroid/os/Handler;I)V

    .line 1023
    :cond_89
    invoke-direct {p0}, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;->registerReceiver()V

    const-string p0, "onResume"

    .line 1025
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onRightButtonClick(Ljava/lang/String;)V
    .registers 2

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 3

    .line 681
    invoke-super {p0, p1}, Lcom/meizu/settings/SettingsPreferenceFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 682
    iget-boolean p0, p0, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;->mIsKeyguardLocked:Z

    const-string v0, "STATE_IS_KEYGUARD_LOCKED"

    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public onStart()V
    .registers 2

    .line 951
    invoke-super {p0}, Lcom/meizu/settings/core/lifecycle/ObservablePreferenceFragment;->onStart()V

    .line 952
    invoke-direct {p0}, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;->initWindowMode()V

    .line 953
    invoke-direct {p0}, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;->initValue()V

    .line 954
    iget-object v0, p0, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;->mView:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;->initViews(Landroid/view/View;)V

    .line 955
    invoke-direct {p0}, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;->resetPasswordView()V

    .line 956
    invoke-direct {p0}, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;->setSoftInputMode()V

    .line 957
    iget-object v0, p0, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;->mView:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;->setBlackBackgroundInUnderglassFP(Landroid/view/View;)V

    .line 958
    iget-object v0, p0, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;->mView:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;->handleViewInWorkProfile(Landroid/view/View;)V

    return-void
.end method

.method public onStop()V
    .registers 3

    .line 963
    invoke-super {p0}, Lcom/meizu/settings/SettingsPreferenceFragment;->onStop()V

    .line 971
    iget-object v0, p0, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;->mComplexPasswordView:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;->mIsInputMethodActive:Z

    const/4 v0, -0x1

    .line 973
    iput v0, p0, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;->mPasswordType:I

    const-string p0, "ConfirmPasswordMeizu"

    const-string v0, "onStop"

    .line 974
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
