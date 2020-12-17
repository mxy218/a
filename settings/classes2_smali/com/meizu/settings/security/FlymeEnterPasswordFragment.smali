.class public Lcom/meizu/settings/security/FlymeEnterPasswordFragment;
.super Lcom/meizu/settings/SettingsPreferenceFragment;
.source "FlymeEnterPasswordFragment.java"

# interfaces
.implements Lcom/meizu/settings/widget/SystemLockView$OnPanelListener;


# static fields
.field private static final PASSWORD_FIXED_LENGTH:[I


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mBottomButtonView:Landroid/widget/LinearLayout;

.field private mCancel:Lcom/meizu/settings/widget/TextAlphaAnimView;

.field private mComplexPasswordView:Landroid/widget/EditText;

.field private mConfirmPassword:Z

.field private mCreateForEnrollFingerprint:Z

.field private mFinishButton:Landroid/widget/TextView;

.field private mFlymeLockPasswordUtils:Lcom/meizu/settings/security/FlymeLockPasswordUtils;

.field private mFromSetupwizard:Z

.field private mFromWhickSwichKey:Ljava/lang/String;

.field private mHandler:Landroid/os/Handler;

.field private mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

.field private mInputShownChangeListener:Landroid/view/inputmethod/InputMethodManager$InputShownChangeListener;

.field private mLayoutInflater:Landroid/view/LayoutInflater;

.field private mLockDigitPanel:Lcom/meizu/settings/widget/SystemLockView;

.field private mLockDigitView:Lcom/meizu/settings/widget/LockDigitView;

.field private mModfiySystemPassword:Z

.field private mOldPassword:Ljava/lang/String;

.field private mOnKeyPressListener:Lcom/meizu/settings/MzSettingsActivity$OnKeyListener;

.field private mPasswordAtFirstTime:Ljava/lang/String;

.field private mPasswordFixedLength:Z

.field private mPasswordLength:I

.field private mPasswordType:I

.field private mRequirePwdWhenDeviceBoot:Z

.field private mSetPasswordFrom:I

.field private mShowSwitchPasswordType:Z

.field private mStartSaving:Z

.field private mUseComplexPassWord:Lcom/meizu/settings/widget/TextAlphaAnimView;

.field private mUserId:I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/4 v2, 0x4

    aput v2, v0, v1

    .line 59
    sput-object v0, Lcom/meizu/settings/security/FlymeEnterPasswordFragment;->PASSWORD_FIXED_LENGTH:[I

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .line 49
    invoke-direct {p0}, Lcom/meizu/settings/SettingsPreferenceFragment;-><init>()V

    const/4 v0, 0x0

    .line 69
    iput-boolean v0, p0, Lcom/meizu/settings/security/FlymeEnterPasswordFragment;->mConfirmPassword:Z

    const-string v1, ""

    .line 70
    iput-object v1, p0, Lcom/meizu/settings/security/FlymeEnterPasswordFragment;->mPasswordAtFirstTime:Ljava/lang/String;

    .line 71
    iput-boolean v0, p0, Lcom/meizu/settings/security/FlymeEnterPasswordFragment;->mModfiySystemPassword:Z

    .line 84
    iput v0, p0, Lcom/meizu/settings/security/FlymeEnterPasswordFragment;->mPasswordType:I

    .line 93
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/meizu/settings/security/FlymeEnterPasswordFragment;->mHandler:Landroid/os/Handler;

    .line 99
    iput-boolean v0, p0, Lcom/meizu/settings/security/FlymeEnterPasswordFragment;->mStartSaving:Z

    const/4 v0, 0x1

    .line 100
    iput-boolean v0, p0, Lcom/meizu/settings/security/FlymeEnterPasswordFragment;->mShowSwitchPasswordType:Z

    .line 105
    new-instance v0, Lcom/meizu/settings/security/FlymeEnterPasswordFragment$1;

    invoke-direct {v0, p0}, Lcom/meizu/settings/security/FlymeEnterPasswordFragment$1;-><init>(Lcom/meizu/settings/security/FlymeEnterPasswordFragment;)V

    iput-object v0, p0, Lcom/meizu/settings/security/FlymeEnterPasswordFragment;->mInputShownChangeListener:Landroid/view/inputmethod/InputMethodManager$InputShownChangeListener;

    .line 113
    new-instance v0, Lcom/meizu/settings/security/FlymeEnterPasswordFragment$2;

    invoke-direct {v0, p0}, Lcom/meizu/settings/security/FlymeEnterPasswordFragment$2;-><init>(Lcom/meizu/settings/security/FlymeEnterPasswordFragment;)V

    iput-object v0, p0, Lcom/meizu/settings/security/FlymeEnterPasswordFragment;->mOnKeyPressListener:Lcom/meizu/settings/MzSettingsActivity$OnKeyListener;

    return-void
.end method

.method static synthetic access$000(Lcom/meizu/settings/security/FlymeEnterPasswordFragment;)Landroid/widget/TextView;
    .registers 1

    .line 49
    iget-object p0, p0, Lcom/meizu/settings/security/FlymeEnterPasswordFragment;->mFinishButton:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$100(Lcom/meizu/settings/security/FlymeEnterPasswordFragment;)Lcom/meizu/settings/widget/SystemLockView;
    .registers 1

    .line 49
    iget-object p0, p0, Lcom/meizu/settings/security/FlymeEnterPasswordFragment;->mLockDigitPanel:Lcom/meizu/settings/widget/SystemLockView;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/meizu/settings/security/FlymeEnterPasswordFragment;)I
    .registers 1

    .line 49
    iget p0, p0, Lcom/meizu/settings/security/FlymeEnterPasswordFragment;->mSetPasswordFrom:I

    return p0
.end method

.method static synthetic access$1100(Lcom/meizu/settings/security/FlymeEnterPasswordFragment;)Ljava/lang/String;
    .registers 1

    .line 49
    iget-object p0, p0, Lcom/meizu/settings/security/FlymeEnterPasswordFragment;->mOldPassword:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/meizu/settings/security/FlymeEnterPasswordFragment;)Z
    .registers 1

    .line 49
    iget-boolean p0, p0, Lcom/meizu/settings/security/FlymeEnterPasswordFragment;->mRequirePwdWhenDeviceBoot:Z

    return p0
.end method

.method static synthetic access$1300(Lcom/meizu/settings/security/FlymeEnterPasswordFragment;)Lcom/meizu/settings/security/FlymeLockPasswordUtils;
    .registers 1

    .line 49
    iget-object p0, p0, Lcom/meizu/settings/security/FlymeEnterPasswordFragment;->mFlymeLockPasswordUtils:Lcom/meizu/settings/security/FlymeLockPasswordUtils;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/meizu/settings/security/FlymeEnterPasswordFragment;)V
    .registers 1

    .line 49
    invoke-direct {p0}, Lcom/meizu/settings/security/FlymeEnterPasswordFragment;->sendAccessControlChangeBroadcast()V

    return-void
.end method

.method static synthetic access$1500(Lcom/meizu/settings/security/FlymeEnterPasswordFragment;)Z
    .registers 1

    .line 49
    iget-boolean p0, p0, Lcom/meizu/settings/security/FlymeEnterPasswordFragment;->mCreateForEnrollFingerprint:Z

    return p0
.end method

.method static synthetic access$1600(Lcom/meizu/settings/security/FlymeEnterPasswordFragment;Landroid/content/Intent;)V
    .registers 2

    .line 49
    invoke-direct {p0, p1}, Lcom/meizu/settings/security/FlymeEnterPasswordFragment;->finishActivity(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$1700(Lcom/meizu/settings/security/FlymeEnterPasswordFragment;)Z
    .registers 1

    .line 49
    iget-boolean p0, p0, Lcom/meizu/settings/security/FlymeEnterPasswordFragment;->mModfiySystemPassword:Z

    return p0
.end method

.method static synthetic access$200(Lcom/meizu/settings/security/FlymeEnterPasswordFragment;)Lcom/meizu/settings/widget/LockDigitView;
    .registers 1

    .line 49
    iget-object p0, p0, Lcom/meizu/settings/security/FlymeEnterPasswordFragment;->mLockDigitView:Lcom/meizu/settings/widget/LockDigitView;

    return-object p0
.end method

.method static synthetic access$300(Lcom/meizu/settings/security/FlymeEnterPasswordFragment;)Landroid/app/Activity;
    .registers 1

    .line 49
    iget-object p0, p0, Lcom/meizu/settings/security/FlymeEnterPasswordFragment;->mActivity:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic access$400(Lcom/meizu/settings/security/FlymeEnterPasswordFragment;)V
    .registers 1

    .line 49
    invoke-direct {p0}, Lcom/meizu/settings/security/FlymeEnterPasswordFragment;->updateViewToComplexPassword()V

    return-void
.end method

.method static synthetic access$500(Lcom/meizu/settings/security/FlymeEnterPasswordFragment;)I
    .registers 1

    .line 49
    iget p0, p0, Lcom/meizu/settings/security/FlymeEnterPasswordFragment;->mPasswordType:I

    return p0
.end method

.method static synthetic access$600(Lcom/meizu/settings/security/FlymeEnterPasswordFragment;)V
    .registers 1

    .line 49
    invoke-direct {p0}, Lcom/meizu/settings/security/FlymeEnterPasswordFragment;->initLockViewTip()V

    return-void
.end method

.method static synthetic access$700(Lcom/meizu/settings/security/FlymeEnterPasswordFragment;)Ljava/lang/String;
    .registers 1

    .line 49
    iget-object p0, p0, Lcom/meizu/settings/security/FlymeEnterPasswordFragment;->mFromWhickSwichKey:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$800(Lcom/meizu/settings/security/FlymeEnterPasswordFragment;)Z
    .registers 1

    .line 49
    iget-boolean p0, p0, Lcom/meizu/settings/security/FlymeEnterPasswordFragment;->mFromSetupwizard:Z

    return p0
.end method

.method static synthetic access$902(Lcom/meizu/settings/security/FlymeEnterPasswordFragment;Z)Z
    .registers 2

    .line 49
    iput-boolean p1, p0, Lcom/meizu/settings/security/FlymeEnterPasswordFragment;->mStartSaving:Z

    return p1
.end method

.method private createChangPasswordType()Landroid/view/View$OnClickListener;
    .registers 2

    .line 300
    new-instance v0, Lcom/meizu/settings/security/FlymeEnterPasswordFragment$4;

    invoke-direct {v0, p0}, Lcom/meizu/settings/security/FlymeEnterPasswordFragment$4;-><init>(Lcom/meizu/settings/security/FlymeEnterPasswordFragment;)V

    return-object v0
.end method

.method private finishActivity(Landroid/content/Intent;)V
    .registers 4

    .line 515
    iget-object v0, p0, Lcom/meizu/settings/security/FlymeEnterPasswordFragment;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/meizu/settings/security/FlymeEnterPasswordFragment$7;

    invoke-direct {v1, p0, p1}, Lcom/meizu/settings/security/FlymeEnterPasswordFragment$7;-><init>(Lcom/meizu/settings/security/FlymeEnterPasswordFragment;Landroid/content/Intent;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private initData()V
    .registers 5

    .line 182
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/settings/security/FlymeEnterPasswordFragment;->mActivity:Landroid/app/Activity;

    .line 183
    iget-object v0, p0, Lcom/meizu/settings/security/FlymeEnterPasswordFragment;->mActivity:Landroid/app/Activity;

    const/4 v1, 0x1

    invoke-static {v0, v1, v1}, Lcom/meizu/flyme/sdk/ContextBuilder;->build(Landroid/content/Context;ZZ)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/settings/security/FlymeEnterPasswordFragment;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 185
    iget-object v0, p0, Lcom/meizu/settings/security/FlymeEnterPasswordFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_28

    const-string v2, "create_password_bundle"

    .line 187
    invoke-virtual {v0, v2}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    if-eqz v3, :cond_28

    .line 188
    invoke-virtual {v0, v2}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    goto :goto_2c

    .line 190
    :cond_28
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 192
    :goto_2c
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    const-string v3, "android.intent.extra.USER_ID"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/meizu/settings/security/FlymeEnterPasswordFragment;->mUserId:I

    .line 193
    iget-object v2, p0, Lcom/meizu/settings/security/FlymeEnterPasswordFragment;->mActivity:Landroid/app/Activity;

    iget v3, p0, Lcom/meizu/settings/security/FlymeEnterPasswordFragment;->mUserId:I

    invoke-static {v2, v3}, Lcom/meizu/settings/security/FlymeLockPasswordUtils;->getInstance(Landroid/content/Context;I)Lcom/meizu/settings/security/FlymeLockPasswordUtils;

    move-result-object v2

    iput-object v2, p0, Lcom/meizu/settings/security/FlymeEnterPasswordFragment;->mFlymeLockPasswordUtils:Lcom/meizu/settings/security/FlymeLockPasswordUtils;

    const/4 v2, 0x0

    const-string v3, "modfiySystemPassword"

    .line 194
    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/meizu/settings/security/FlymeEnterPasswordFragment;->mModfiySystemPassword:Z

    const-string v3, "mz_create_fp_extra"

    .line 196
    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/meizu/settings/security/FlymeEnterPasswordFragment;->mFromWhickSwichKey:Ljava/lang/String;

    const-string v3, "password_from"

    .line 197
    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/meizu/settings/security/FlymeEnterPasswordFragment;->mSetPasswordFrom:I

    const-string v3, "extra_key_password_type"

    .line 199
    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/meizu/settings/security/FlymeEnterPasswordFragment;->mPasswordType:I

    .line 201
    iget-object v0, p0, Lcom/meizu/settings/security/FlymeEnterPasswordFragment;->mFlymeLockPasswordUtils:Lcom/meizu/settings/security/FlymeLockPasswordUtils;

    iget v3, p0, Lcom/meizu/settings/security/FlymeEnterPasswordFragment;->mSetPasswordFrom:I

    invoke-virtual {v0, v3}, Lcom/meizu/settings/security/FlymeLockPasswordUtils;->getPasswordLength(I)I

    move-result v0

    iput v0, p0, Lcom/meizu/settings/security/FlymeEnterPasswordFragment;->mPasswordLength:I

    .line 202
    sget-object v0, Lcom/meizu/settings/security/FlymeEnterPasswordFragment;->PASSWORD_FIXED_LENGTH:[I

    iget v3, p0, Lcom/meizu/settings/security/FlymeEnterPasswordFragment;->mSetPasswordFrom:I

    invoke-static {v0, v3}, Lcom/android/internal/util/ArrayUtils;->contains([II)Z

    move-result v0

    iput-boolean v0, p0, Lcom/meizu/settings/security/FlymeEnterPasswordFragment;->mPasswordFixedLength:Z

    .line 205
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v3, "flyme_password"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/settings/security/FlymeEnterPasswordFragment;->mOldPassword:Ljava/lang/String;

    .line 207
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v3, "from_setupwizard"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/meizu/settings/security/FlymeEnterPasswordFragment;->mFromSetupwizard:Z

    .line 208
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v3, "create_fingerprint"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/meizu/settings/security/FlymeEnterPasswordFragment;->mCreateForEnrollFingerprint:Z

    const-string v0, "input_method"

    .line 210
    invoke-virtual {p0, v0}, Lcom/meizu/settings/SettingsPreferenceFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iput-object v0, p0, Lcom/meizu/settings/security/FlymeEnterPasswordFragment;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    .line 212
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v3, "show_switch_password_type"

    .line 213
    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/meizu/settings/security/FlymeEnterPasswordFragment;->mShowSwitchPasswordType:Z

    .line 214
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "require_pwd_when_device_boot"

    .line 215
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/meizu/settings/security/FlymeEnterPasswordFragment;->mRequirePwdWhenDeviceBoot:Z

    return-void
.end method

.method private initLockDigitalPanel(Landroid/view/View;)V
    .registers 5

    const v0, 0x7f0a038a

    .line 270
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/meizu/settings/widget/SystemLockView;

    iput-object p1, p0, Lcom/meizu/settings/security/FlymeEnterPasswordFragment;->mLockDigitPanel:Lcom/meizu/settings/widget/SystemLockView;

    .line 271
    iget-object p1, p0, Lcom/meizu/settings/security/FlymeEnterPasswordFragment;->mLockDigitPanel:Lcom/meizu/settings/widget/SystemLockView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/meizu/settings/widget/SystemLockView;->setWidgetLayoutVisibility(Z)V

    .line 272
    iget-object p1, p0, Lcom/meizu/settings/security/FlymeEnterPasswordFragment;->mLockDigitPanel:Lcom/meizu/settings/widget/SystemLockView;

    iget v1, p0, Lcom/meizu/settings/security/FlymeEnterPasswordFragment;->mPasswordType:I

    invoke-virtual {p1, v1}, Lcom/meizu/settings/widget/SystemLockView;->setKeyPadType(I)V

    .line 273
    iget-object p1, p0, Lcom/meizu/settings/security/FlymeEnterPasswordFragment;->mLockDigitPanel:Lcom/meizu/settings/widget/SystemLockView;

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1}, Lcom/meizu/settings/widget/SystemLockView;->setInputTextButtonStat(II)V

    .line 274
    iget-object p1, p0, Lcom/meizu/settings/security/FlymeEnterPasswordFragment;->mLockDigitPanel:Lcom/meizu/settings/widget/SystemLockView;

    invoke-virtual {p1, v0}, Lcom/meizu/settings/widget/SystemLockView;->setInputTextButtonVisibility(Z)V

    .line 275
    iget-object p1, p0, Lcom/meizu/settings/security/FlymeEnterPasswordFragment;->mLockDigitPanel:Lcom/meizu/settings/widget/SystemLockView;

    const v1, 0x7f0a0388

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/meizu/settings/widget/LockDigitView;

    iput-object p1, p0, Lcom/meizu/settings/security/FlymeEnterPasswordFragment;->mLockDigitView:Lcom/meizu/settings/widget/LockDigitView;

    .line 276
    iget-object p1, p0, Lcom/meizu/settings/security/FlymeEnterPasswordFragment;->mLockDigitView:Lcom/meizu/settings/widget/LockDigitView;

    invoke-virtual {p1, v0}, Lcom/meizu/settings/widget/LockDigitView;->setPressedAnimation(Z)V

    .line 277
    iget-object p1, p0, Lcom/meizu/settings/security/FlymeEnterPasswordFragment;->mLockDigitPanel:Lcom/meizu/settings/widget/SystemLockView;

    invoke-virtual {p1, p0}, Lcom/meizu/settings/widget/SystemLockView;->setPanelListener(Lcom/meizu/settings/widget/SystemLockView$OnPanelListener;)V

    .line 278
    iget p1, p0, Lcom/meizu/settings/security/FlymeEnterPasswordFragment;->mPasswordType:I

    const/16 v1, 0x11

    if-nez p1, :cond_4c

    .line 279
    iget-object p1, p0, Lcom/meizu/settings/security/FlymeEnterPasswordFragment;->mLockDigitPanel:Lcom/meizu/settings/widget/SystemLockView;

    const/4 v2, 0x6

    invoke-virtual {p1, v2}, Lcom/meizu/settings/widget/SystemLockView;->setMaxLen(I)V

    .line 280
    iget-object p1, p0, Lcom/meizu/settings/security/FlymeEnterPasswordFragment;->mLockDigitPanel:Lcom/meizu/settings/widget/SystemLockView;

    invoke-virtual {p1, v0}, Lcom/meizu/settings/widget/SystemLockView;->setHollowVisible(Z)V

    goto :goto_51

    .line 282
    :cond_4c
    iget-object p1, p0, Lcom/meizu/settings/security/FlymeEnterPasswordFragment;->mLockDigitPanel:Lcom/meizu/settings/widget/SystemLockView;

    invoke-virtual {p1, v1}, Lcom/meizu/settings/widget/SystemLockView;->setMaxLen(I)V

    .line 284
    :goto_51
    iget-boolean p1, p0, Lcom/meizu/settings/security/FlymeEnterPasswordFragment;->mPasswordFixedLength:Z

    if-eqz p1, :cond_5c

    .line 285
    iget-object p1, p0, Lcom/meizu/settings/security/FlymeEnterPasswordFragment;->mLockDigitPanel:Lcom/meizu/settings/widget/SystemLockView;

    iget v2, p0, Lcom/meizu/settings/security/FlymeEnterPasswordFragment;->mPasswordLength:I

    invoke-virtual {p1, v2}, Lcom/meizu/settings/widget/SystemLockView;->setMaxLen(I)V

    .line 288
    :cond_5c
    invoke-direct {p0}, Lcom/meizu/settings/security/FlymeEnterPasswordFragment;->initLockViewTip()V

    .line 290
    iget-object p1, p0, Lcom/meizu/settings/security/FlymeEnterPasswordFragment;->mLockDigitPanel:Lcom/meizu/settings/widget/SystemLockView;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setFocusable(Z)V

    .line 291
    iget-object p1, p0, Lcom/meizu/settings/security/FlymeEnterPasswordFragment;->mLockDigitView:Lcom/meizu/settings/widget/LockDigitView;

    invoke-virtual {p1, v0}, Landroid/view/View;->setFocusable(Z)V

    .line 292
    iget-object p1, p0, Lcom/meizu/settings/security/FlymeEnterPasswordFragment;->mLockDigitPanel:Lcom/meizu/settings/widget/SystemLockView;

    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Lcom/meizu/settings/widget/SystemLockView;->setHideTheNorInput(Z)V

    .line 293
    iget-object p1, p0, Lcom/meizu/settings/security/FlymeEnterPasswordFragment;->mLockDigitPanel:Lcom/meizu/settings/widget/SystemLockView;

    invoke-virtual {p1}, Lcom/meizu/settings/widget/SystemLockView;->getEditText()Landroid/widget/EditText;

    move-result-object p1

    iput-object p1, p0, Lcom/meizu/settings/security/FlymeEnterPasswordFragment;->mComplexPasswordView:Landroid/widget/EditText;

    .line 294
    iget-object p0, p0, Lcom/meizu/settings/security/FlymeEnterPasswordFragment;->mComplexPasswordView:Landroid/widget/EditText;

    new-array p1, v2, [Landroid/text/InputFilter;

    new-instance v2, Landroid/text/InputFilter$LengthFilter;

    invoke-direct {v2, v1}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v2, p1, v0

    invoke-virtual {p0, p1}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    return-void
.end method

.method private initLockViewTip()V
    .registers 7

    .line 242
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 246
    :cond_7
    iget v0, p0, Lcom/meizu/settings/security/FlymeEnterPasswordFragment;->mPasswordType:I

    const/4 v1, 0x1

    const-string v2, ""

    if-nez v0, :cond_3c

    .line 247
    iget-boolean v0, p0, Lcom/meizu/settings/security/FlymeEnterPasswordFragment;->mFromSetupwizard:Z

    if-eqz v0, :cond_30

    .line 248
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f120801

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 249
    iget-object v3, p0, Lcom/meizu/settings/security/FlymeEnterPasswordFragment;->mLockDigitPanel:Lcom/meizu/settings/widget/SystemLockView;

    const v4, 0x7f0a0363

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 250
    invoke-static {}, Lcom/meizu/settings/utils/MzUtils;->getMediumTypeface()Landroid/graphics/Typeface;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    goto :goto_64

    .line 252
    :cond_30
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f120800

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_64

    :cond_3c
    if-ne v0, v1, :cond_63

    .line 255
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f1207fe

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 257
    iget-object v3, p0, Lcom/meizu/settings/security/FlymeEnterPasswordFragment;->mLockDigitPanel:Lcom/meizu/settings/widget/SystemLockView;

    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f120fd0

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/meizu/settings/widget/SystemLockView;->setTip2(Ljava/lang/String;)V

    .line 259
    iget-object v3, p0, Lcom/meizu/settings/security/FlymeEnterPasswordFragment;->mLockDigitView:Lcom/meizu/settings/widget/LockDigitView;

    if-eqz v3, :cond_64

    const/16 v4, 0x8

    .line 260
    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_64

    :cond_63
    move-object v0, v2

    .line 263
    :cond_64
    :goto_64
    iget-boolean v3, p0, Lcom/meizu/settings/security/FlymeEnterPasswordFragment;->mPasswordFixedLength:Z

    if-eqz v3, :cond_85

    const v0, 0x7f120a17

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 264
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget v5, p0, Lcom/meizu/settings/security/FlymeEnterPasswordFragment;->mPasswordLength:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-virtual {p0, v0, v1}, Landroid/preference/PreferenceFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 266
    :cond_85
    iget-object p0, p0, Lcom/meizu/settings/security/FlymeEnterPasswordFragment;->mLockDigitPanel:Lcom/meizu/settings/widget/SystemLockView;

    invoke-virtual {p0, v0}, Lcom/meizu/settings/widget/SystemLockView;->setTip(Ljava/lang/String;)V

    return-void
.end method

.method private initTextView(Landroid/view/View;)V
    .registers 4

    const v0, 0x7f0a077b

    .line 325
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/meizu/settings/widget/TextAlphaAnimView;

    iput-object v0, p0, Lcom/meizu/settings/security/FlymeEnterPasswordFragment;->mCancel:Lcom/meizu/settings/widget/TextAlphaAnimView;

    const v0, 0x7f0a077d

    .line 326
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/meizu/settings/widget/TextAlphaAnimView;

    iput-object v0, p0, Lcom/meizu/settings/security/FlymeEnterPasswordFragment;->mUseComplexPassWord:Lcom/meizu/settings/widget/TextAlphaAnimView;

    .line 327
    iget-object v0, p0, Lcom/meizu/settings/security/FlymeEnterPasswordFragment;->mCancel:Lcom/meizu/settings/widget/TextAlphaAnimView;

    invoke-direct {p0}, Lcom/meizu/settings/security/FlymeEnterPasswordFragment;->onTextViewCLickListener()Landroid/view/View$OnClickListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 328
    iget-object v0, p0, Lcom/meizu/settings/security/FlymeEnterPasswordFragment;->mUseComplexPassWord:Lcom/meizu/settings/widget/TextAlphaAnimView;

    invoke-direct {p0}, Lcom/meizu/settings/security/FlymeEnterPasswordFragment;->onTextViewCLickListener()Landroid/view/View$OnClickListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 329
    iget-object v0, p0, Lcom/meizu/settings/security/FlymeEnterPasswordFragment;->mUseComplexPassWord:Lcom/meizu/settings/widget/TextAlphaAnimView;

    iget v1, p0, Lcom/meizu/settings/security/FlymeEnterPasswordFragment;->mPasswordType:I

    if-nez v1, :cond_32

    const v1, 0x7f1216e6

    goto :goto_35

    :cond_32
    const v1, 0x7f1216f2

    :goto_35
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    const v0, 0x7f0a0115

    .line 332
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/meizu/settings/security/FlymeEnterPasswordFragment;->mBottomButtonView:Landroid/widget/LinearLayout;

    const v0, 0x7f0a02b4

    .line 333
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/meizu/settings/security/FlymeEnterPasswordFragment;->mFinishButton:Landroid/widget/TextView;

    .line 334
    iget-object p1, p0, Lcom/meizu/settings/security/FlymeEnterPasswordFragment;->mFinishButton:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/meizu/settings/security/FlymeEnterPasswordFragment;->createChangPasswordType()Landroid/view/View$OnClickListener;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 p1, 0x0

    .line 335
    invoke-direct {p0, p1}, Lcom/meizu/settings/security/FlymeEnterPasswordFragment;->setFinishButtonEnable(Z)V

    .line 337
    iget p1, p0, Lcom/meizu/settings/security/FlymeEnterPasswordFragment;->mSetPasswordFrom:I

    const/4 v0, 0x4

    const/16 v1, 0x8

    if-ne p1, v0, :cond_67

    .line 338
    iget-object p1, p0, Lcom/meizu/settings/security/FlymeEnterPasswordFragment;->mBottomButtonView:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 341
    :cond_67
    iget-boolean p1, p0, Lcom/meizu/settings/security/FlymeEnterPasswordFragment;->mPasswordFixedLength:Z

    if-nez p1, :cond_6f

    iget-boolean p1, p0, Lcom/meizu/settings/security/FlymeEnterPasswordFragment;->mShowSwitchPasswordType:Z

    if-nez p1, :cond_74

    .line 343
    :cond_6f
    iget-object p0, p0, Lcom/meizu/settings/security/FlymeEnterPasswordFragment;->mUseComplexPassWord:Lcom/meizu/settings/widget/TextAlphaAnimView;

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_74
    return-void
.end method

.method private initWindow()V
    .registers 3

    .line 173
    iget-object v0, p0, Lcom/meizu/settings/security/FlymeEnterPasswordFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 175
    iget-object v0, p0, Lcom/meizu/settings/security/FlymeEnterPasswordFragment;->mActivity:Landroid/app/Activity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 176
    iget-boolean v0, p0, Lcom/meizu/settings/security/FlymeEnterPasswordFragment;->mFromSetupwizard:Z

    if-eqz v0, :cond_1e

    .line 177
    iget-object p0, p0, Lcom/meizu/settings/security/FlymeEnterPasswordFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-static {p0}, Lcom/meizu/settings/utils/MzUtils;->disableHomeKey(Landroid/view/Window;)V

    :cond_1e
    return-void
.end method

.method private isPasswordIllegal(Ljava/lang/String;)I
    .registers 5

    .line 436
    iget v0, p0, Lcom/meizu/settings/security/FlymeEnterPasswordFragment;->mSetPasswordFrom:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_18

    const/4 v2, 0x2

    if-ne v0, v2, :cond_a

    goto :goto_18

    .line 441
    :cond_a
    iget-object v0, p0, Lcom/meizu/settings/security/FlymeEnterPasswordFragment;->mFlymeLockPasswordUtils:Lcom/meizu/settings/security/FlymeLockPasswordUtils;

    const/4 v2, 0x4

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    iget p0, p0, Lcom/meizu/settings/security/FlymeEnterPasswordFragment;->mSetPasswordFrom:I

    invoke-virtual {v0, p1, p0}, Lcom/meizu/settings/security/FlymeLockPasswordUtils;->checkPasswordLegal(Ljava/lang/String;I)I

    move-result p0

    return p0

    :cond_18
    :goto_18
    return v1
.end method

.method private onTextViewCLickListener()Landroid/view/View$OnClickListener;
    .registers 2

    .line 312
    new-instance v0, Lcom/meizu/settings/security/FlymeEnterPasswordFragment$5;

    invoke-direct {v0, p0}, Lcom/meizu/settings/security/FlymeEnterPasswordFragment$5;-><init>(Lcom/meizu/settings/security/FlymeEnterPasswordFragment;)V

    return-object v0
.end method

.method private sendAccessControlChangeBroadcast()V
    .registers 3

    .line 509
    new-instance v0, Landroid/content/Intent;

    const-string v1, "flyme.intent.action.ACCESS_CONTROL_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 511
    iget-object p0, p0, Lcom/meizu/settings/security/FlymeEnterPasswordFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method private setFinishButtonEnable(Z)V
    .registers 2

    .line 349
    iget-object p0, p0, Lcom/meizu/settings/security/FlymeEnterPasswordFragment;->mFinishButton:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    return-void
.end method

.method private updateViewToComplexPassword()V
    .registers 8

    .line 354
    iget v0, p0, Lcom/meizu/settings/security/FlymeEnterPasswordFragment;->mPasswordType:I

    const/16 v1, 0x11

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v0, :cond_25

    .line 355
    iput v2, p0, Lcom/meizu/settings/security/FlymeEnterPasswordFragment;->mPasswordType:I

    .line 356
    iget-object v0, p0, Lcom/meizu/settings/security/FlymeEnterPasswordFragment;->mUseComplexPassWord:Lcom/meizu/settings/widget/TextAlphaAnimView;

    const v4, 0x7f1216f2

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(I)V

    .line 357
    iget-object v0, p0, Lcom/meizu/settings/security/FlymeEnterPasswordFragment;->mLockDigitPanel:Lcom/meizu/settings/widget/SystemLockView;

    invoke-virtual {v0, v1}, Lcom/meizu/settings/widget/SystemLockView;->setMaxLen(I)V

    .line 358
    iget-object v0, p0, Lcom/meizu/settings/security/FlymeEnterPasswordFragment;->mActivity:Landroid/app/Activity;

    check-cast v0, Lcom/android/settings/SettingsActivity;

    invoke-virtual {v0}, Lcom/android/settings/SettingsActivity;->getMzSettingsActivity()Lcom/meizu/settings/MzSettingsActivity;

    move-result-object v0

    .line 359
    invoke-virtual {v0}, Lcom/meizu/settings/MzSettingsActivity;->releaseOnKeyListener()V

    const-wide/16 v4, 0x0

    goto :goto_6d

    .line 361
    :cond_25
    iput v3, p0, Lcom/meizu/settings/security/FlymeEnterPasswordFragment;->mPasswordType:I

    .line 362
    iget-object v0, p0, Lcom/meizu/settings/security/FlymeEnterPasswordFragment;->mLockDigitPanel:Lcom/meizu/settings/widget/SystemLockView;

    invoke-virtual {v0, v3}, Lcom/meizu/settings/widget/SystemLockView;->setHollowVisible(Z)V

    .line 363
    iget-object v0, p0, Lcom/meizu/settings/security/FlymeEnterPasswordFragment;->mLockDigitPanel:Lcom/meizu/settings/widget/SystemLockView;

    const/4 v4, 0x6

    invoke-virtual {v0, v4}, Lcom/meizu/settings/widget/SystemLockView;->setMaxLen(I)V

    .line 364
    iget-object v0, p0, Lcom/meizu/settings/security/FlymeEnterPasswordFragment;->mUseComplexPassWord:Lcom/meizu/settings/widget/TextAlphaAnimView;

    const v4, 0x7f1216e6

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(I)V

    .line 365
    iget-object v0, p0, Lcom/meizu/settings/security/FlymeEnterPasswordFragment;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    iget-object v4, p0, Lcom/meizu/settings/security/FlymeEnterPasswordFragment;->mLockDigitPanel:Lcom/meizu/settings/widget/SystemLockView;

    invoke-virtual {v4}, Lcom/meizu/settings/widget/SystemLockView;->getEditText()Landroid/widget/EditText;

    move-result-object v4

    .line 366
    invoke-virtual {v4}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v4

    .line 365
    invoke-virtual {v0, v4, v3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    const-wide/16 v4, 0xc8

    .line 368
    iget-object v0, p0, Lcom/meizu/settings/security/FlymeEnterPasswordFragment;->mActivity:Landroid/app/Activity;

    check-cast v0, Lcom/android/settings/SettingsActivity;

    invoke-virtual {v0}, Lcom/android/settings/SettingsActivity;->getMzSettingsActivity()Lcom/meizu/settings/MzSettingsActivity;

    move-result-object v0

    iget-object v6, p0, Lcom/meizu/settings/security/FlymeEnterPasswordFragment;->mOnKeyPressListener:Lcom/meizu/settings/MzSettingsActivity$OnKeyListener;

    .line 369
    invoke-virtual {v0, v6}, Lcom/meizu/settings/MzSettingsActivity;->setOnKeyListener(Lcom/meizu/settings/MzSettingsActivity$OnKeyListener;)V

    .line 371
    iget-boolean v0, p0, Lcom/meizu/settings/security/FlymeEnterPasswordFragment;->mFromSetupwizard:Z

    if-eqz v0, :cond_6d

    .line 372
    iget-object v0, p0, Lcom/meizu/settings/security/FlymeEnterPasswordFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    iget-object v6, p0, Lcom/meizu/settings/security/FlymeEnterPasswordFragment;->mActivity:Landroid/app/Activity;

    check-cast v6, Lcom/android/settings/SettingsActivity;

    .line 373
    invoke-virtual {v6}, Lflyme/support/v7/app/AppCompatActivity;->getSupportActionBar()Lflyme/support/v7/app/ActionBar;

    move-result-object v6

    .line 372
    invoke-static {v0, v6}, Lcom/meizu/settings/utils/MzUtils;->hideNavigationBar(Landroid/view/Window;Lflyme/support/v7/app/ActionBar;)V

    .line 377
    :cond_6d
    :goto_6d
    iget-object v0, p0, Lcom/meizu/settings/security/FlymeEnterPasswordFragment;->mFinishButton:Landroid/widget/TextView;

    const v6, 0x7f1207e4

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(I)V

    .line 378
    iget-object v0, p0, Lcom/meizu/settings/security/FlymeEnterPasswordFragment;->mBottomButtonView:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 379
    iget-object v0, p0, Lcom/meizu/settings/security/FlymeEnterPasswordFragment;->mFinishButton:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 380
    iput-boolean v3, p0, Lcom/meizu/settings/security/FlymeEnterPasswordFragment;->mConfirmPassword:Z

    .line 381
    iget-object v0, p0, Lcom/meizu/settings/security/FlymeEnterPasswordFragment;->mLockDigitPanel:Lcom/meizu/settings/widget/SystemLockView;

    invoke-virtual {v0, v2}, Lcom/meizu/settings/widget/SystemLockView;->clearCell(Z)V

    .line 382
    iget-object v0, p0, Lcom/meizu/settings/security/FlymeEnterPasswordFragment;->mComplexPasswordView:Landroid/widget/EditText;

    new-array v2, v2, [Landroid/text/InputFilter;

    new-instance v6, Landroid/text/InputFilter$LengthFilter;

    invoke-direct {v6, v1}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v6, v2, v3

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 385
    iget-object v0, p0, Lcom/meizu/settings/security/FlymeEnterPasswordFragment;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/meizu/settings/security/FlymeEnterPasswordFragment$6;

    invoke-direct {v1, p0}, Lcom/meizu/settings/security/FlymeEnterPasswordFragment$6;-><init>(Lcom/meizu/settings/security/FlymeEnterPasswordFragment;)V

    invoke-virtual {v0, v1, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private verifyAndSaveLockPassword(Ljava/lang/String;)V
    .registers 4

    .line 532
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 534
    :cond_7
    iget-boolean v0, p0, Lcom/meizu/settings/security/FlymeEnterPasswordFragment;->mConfirmPassword:Z

    if-eqz v0, :cond_30

    .line 535
    iget-boolean v0, p0, Lcom/meizu/settings/security/FlymeEnterPasswordFragment;->mStartSaving:Z

    if-eqz v0, :cond_10

    return-void

    .line 537
    :cond_10
    iget-object v0, p0, Lcom/meizu/settings/security/FlymeEnterPasswordFragment;->mPasswordAtFirstTime:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_26

    .line 538
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/meizu/settings/security/FlymeEnterPasswordFragment$8;

    invoke-direct {v1, p0, p1}, Lcom/meizu/settings/security/FlymeEnterPasswordFragment$8;-><init>(Lcom/meizu/settings/security/FlymeEnterPasswordFragment;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 579
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_30

    .line 581
    :cond_26
    iget-object p1, p0, Lcom/meizu/settings/security/FlymeEnterPasswordFragment;->mLockDigitPanel:Lcom/meizu/settings/widget/SystemLockView;

    new-instance v0, Lcom/meizu/settings/security/FlymeEnterPasswordFragment$9;

    invoke-direct {v0, p0}, Lcom/meizu/settings/security/FlymeEnterPasswordFragment$9;-><init>(Lcom/meizu/settings/security/FlymeEnterPasswordFragment;)V

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->post(Ljava/lang/Runnable;)Z

    :cond_30
    :goto_30
    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .registers 2

    .line 161
    invoke-super {p0, p1}, Lcom/meizu/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 162
    iget-object p1, p0, Lcom/meizu/settings/security/FlymeEnterPasswordFragment;->mActivity:Landroid/app/Activity;

    invoke-static {p1}, Lcom/meizu/settings/utils/MzUtils;->hideActionbar(Landroid/content/Context;)V

    .line 164
    iget-boolean p1, p0, Lcom/meizu/settings/security/FlymeEnterPasswordFragment;->mFromSetupwizard:Z

    if-eqz p1, :cond_1d

    .line 166
    iget-object p1, p0, Lcom/meizu/settings/security/FlymeEnterPasswordFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    iget-object p0, p0, Lcom/meizu/settings/security/FlymeEnterPasswordFragment;->mActivity:Landroid/app/Activity;

    check-cast p0, Lcom/android/settings/SettingsActivity;

    .line 167
    invoke-virtual {p0}, Lflyme/support/v7/app/AppCompatActivity;->getSupportActionBar()Lflyme/support/v7/app/ActionBar;

    move-result-object p0

    .line 166
    invoke-static {p1, p0}, Lcom/meizu/settings/utils/MzUtils;->hideNavigationBar(Landroid/view/Window;Lflyme/support/v7/app/ActionBar;)V

    :cond_1d
    return-void
.end method

.method public onCellAdded(Ljava/lang/String;)V
    .registers 6

    .line 446
    iget-boolean v0, p0, Lcom/meizu/settings/security/FlymeEnterPasswordFragment;->mConfirmPassword:Z

    const/4 v1, 0x1

    if-nez v0, :cond_b3

    .line 447
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_a3

    .line 448
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    .line 449
    iget v0, p0, Lcom/meizu/settings/security/FlymeEnterPasswordFragment;->mPasswordType:I

    const/4 v3, 0x4

    if-ne v0, v1, :cond_75

    .line 450
    iget-object v0, p0, Lcom/meizu/settings/security/FlymeEnterPasswordFragment;->mLockDigitPanel:Lcom/meizu/settings/widget/SystemLockView;

    invoke-virtual {v0}, Lcom/meizu/settings/widget/SystemLockView;->checkIllegal()Z

    move-result v0

    if-eqz v0, :cond_4d

    .line 451
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "checkIllegal:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/meizu/settings/security/FlymeEnterPasswordFragment;->mLockDigitPanel:Lcom/meizu/settings/widget/SystemLockView;

    invoke-virtual {v0}, Lcom/meizu/settings/widget/SystemLockView;->checkIllegal()Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "test"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 452
    iget-object p1, p0, Lcom/meizu/settings/security/FlymeEnterPasswordFragment;->mLockDigitPanel:Lcom/meizu/settings/widget/SystemLockView;

    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f120fd1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/meizu/settings/widget/SystemLockView;->setTip(Ljava/lang/String;)V

    .line 454
    invoke-direct {p0, v2}, Lcom/meizu/settings/security/FlymeEnterPasswordFragment;->setFinishButtonEnable(Z)V

    return-void

    .line 457
    :cond_4d
    invoke-direct {p0}, Lcom/meizu/settings/security/FlymeEnterPasswordFragment;->initLockViewTip()V

    .line 458
    iget-object v0, p0, Lcom/meizu/settings/security/FlymeEnterPasswordFragment;->mLockDigitPanel:Lcom/meizu/settings/widget/SystemLockView;

    invoke-virtual {v0}, Lcom/meizu/settings/widget/SystemLockView;->checkChar()Z

    move-result v0

    if-nez v0, :cond_5c

    .line 459
    invoke-direct {p0, v2}, Lcom/meizu/settings/security/FlymeEnterPasswordFragment;->setFinishButtonEnable(Z)V

    return-void

    :cond_5c
    if-ge p1, v3, :cond_62

    .line 462
    invoke-direct {p0, v2}, Lcom/meizu/settings/security/FlymeEnterPasswordFragment;->setFinishButtonEnable(Z)V

    return-void

    :cond_62
    const/4 v0, 0x3

    if-le p1, v0, :cond_c2

    .line 468
    iget-boolean v0, p0, Lcom/meizu/settings/security/FlymeEnterPasswordFragment;->mPasswordFixedLength:Z

    if-eqz v0, :cond_71

    .line 469
    iget v0, p0, Lcom/meizu/settings/security/FlymeEnterPasswordFragment;->mPasswordLength:I

    if-ne p1, v0, :cond_c2

    .line 470
    invoke-direct {p0, v1}, Lcom/meizu/settings/security/FlymeEnterPasswordFragment;->setFinishButtonEnable(Z)V

    goto :goto_c2

    .line 473
    :cond_71
    invoke-direct {p0, v1}, Lcom/meizu/settings/security/FlymeEnterPasswordFragment;->setFinishButtonEnable(Z)V

    goto :goto_c2

    :cond_75
    if-nez v0, :cond_c2

    .line 477
    iget-object v0, p0, Lcom/meizu/settings/security/FlymeEnterPasswordFragment;->mLockDigitPanel:Lcom/meizu/settings/widget/SystemLockView;

    invoke-virtual {v0, v1}, Lcom/meizu/settings/widget/SystemLockView;->setInputTextButtonVisibility(Z)V

    if-ne p1, v3, :cond_8d

    .line 479
    iget-boolean v0, p0, Lcom/meizu/settings/security/FlymeEnterPasswordFragment;->mPasswordFixedLength:Z

    if-eqz v0, :cond_8a

    .line 480
    iget v0, p0, Lcom/meizu/settings/security/FlymeEnterPasswordFragment;->mPasswordLength:I

    if-ne p1, v0, :cond_8d

    .line 481
    invoke-direct {p0, v1}, Lcom/meizu/settings/security/FlymeEnterPasswordFragment;->setFinishButtonEnable(Z)V

    goto :goto_8d

    .line 484
    :cond_8a
    invoke-direct {p0, v1}, Lcom/meizu/settings/security/FlymeEnterPasswordFragment;->setFinishButtonEnable(Z)V

    :cond_8d
    :goto_8d
    const/4 v0, 0x6

    if-eq p1, v0, :cond_98

    .line 487
    iget-boolean v0, p0, Lcom/meizu/settings/security/FlymeEnterPasswordFragment;->mPasswordFixedLength:Z

    if-eqz v0, :cond_c2

    iget v0, p0, Lcom/meizu/settings/security/FlymeEnterPasswordFragment;->mPasswordLength:I

    if-ne p1, v0, :cond_c2

    .line 489
    :cond_98
    iget-object p1, p0, Lcom/meizu/settings/security/FlymeEnterPasswordFragment;->mLockDigitPanel:Lcom/meizu/settings/widget/SystemLockView;

    invoke-virtual {p1, v2}, Lcom/meizu/settings/widget/SystemLockView;->setHideTheNorInput(Z)V

    .line 490
    iget-object p0, p0, Lcom/meizu/settings/security/FlymeEnterPasswordFragment;->mLockDigitPanel:Lcom/meizu/settings/widget/SystemLockView;

    invoke-virtual {p0}, Lcom/meizu/settings/widget/SystemLockView;->getEnteredPassword()V

    goto :goto_c2

    .line 494
    :cond_a3
    invoke-direct {p0, v2}, Lcom/meizu/settings/security/FlymeEnterPasswordFragment;->setFinishButtonEnable(Z)V

    .line 495
    iget-object p1, p0, Lcom/meizu/settings/security/FlymeEnterPasswordFragment;->mLockDigitPanel:Lcom/meizu/settings/widget/SystemLockView;

    invoke-virtual {p1, v2}, Lcom/meizu/settings/widget/SystemLockView;->setInputTextButtonVisibility(Z)V

    .line 496
    iget p1, p0, Lcom/meizu/settings/security/FlymeEnterPasswordFragment;->mPasswordType:I

    if-ne p1, v1, :cond_c2

    .line 497
    invoke-direct {p0}, Lcom/meizu/settings/security/FlymeEnterPasswordFragment;->initLockViewTip()V

    goto :goto_c2

    .line 501
    :cond_b3
    iget v0, p0, Lcom/meizu/settings/security/FlymeEnterPasswordFragment;->mPasswordType:I

    if-nez v0, :cond_c2

    .line 502
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_c2

    .line 503
    iget-object p0, p0, Lcom/meizu/settings/security/FlymeEnterPasswordFragment;->mLockDigitPanel:Lcom/meizu/settings/widget/SystemLockView;

    invoke-virtual {p0, v1}, Lcom/meizu/settings/widget/SystemLockView;->setInputTextButtonVisibility(Z)V

    :cond_c2
    :goto_c2
    return-void
.end method

.method public onCellCleared(Ljava/lang/String;)V
    .registers 3

    .line 422
    iget-boolean v0, p0, Lcom/meizu/settings/security/FlymeEnterPasswordFragment;->mConfirmPassword:Z

    if-nez v0, :cond_20

    const/4 v0, 0x0

    .line 423
    invoke-direct {p0, v0}, Lcom/meizu/settings/security/FlymeEnterPasswordFragment;->setFinishButtonEnable(Z)V

    if-eqz p1, :cond_1b

    .line 425
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-lez p1, :cond_1b

    iget p1, p0, Lcom/meizu/settings/security/FlymeEnterPasswordFragment;->mPasswordType:I

    if-nez p1, :cond_1b

    .line 427
    iget-object p0, p0, Lcom/meizu/settings/security/FlymeEnterPasswordFragment;->mLockDigitPanel:Lcom/meizu/settings/widget/SystemLockView;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/meizu/settings/widget/SystemLockView;->setInputTextButtonVisibility(Z)V

    goto :goto_20

    .line 429
    :cond_1b
    iget-object p0, p0, Lcom/meizu/settings/security/FlymeEnterPasswordFragment;->mLockDigitPanel:Lcom/meizu/settings/widget/SystemLockView;

    invoke-virtual {p0, v0}, Lcom/meizu/settings/widget/SystemLockView;->setInputTextButtonVisibility(Z)V

    :cond_20
    :goto_20
    return-void
.end method

.method public onCellFhish(Ljava/lang/String;)V
    .registers 2

    .line 595
    invoke-direct {p0, p1}, Lcom/meizu/settings/security/FlymeEnterPasswordFragment;->verifyAndSaveLockPassword(Ljava/lang/String;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 2

    .line 140
    invoke-super {p0, p1}, Lcom/meizu/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    .line 142
    invoke-virtual {p0, p1}, Landroid/preference/PreferenceFragment;->setHasOptionsMenu(Z)V

    .line 143
    invoke-virtual {p0, p1}, Lcom/meizu/settings/SettingsPreferenceFragment;->setHasWhiteNavigationbar(Z)V

    .line 145
    invoke-direct {p0}, Lcom/meizu/settings/security/FlymeEnterPasswordFragment;->initData()V

    .line 146
    invoke-direct {p0}, Lcom/meizu/settings/security/FlymeEnterPasswordFragment;->initWindow()V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 5

    .line 152
    iget-object p1, p0, Lcom/meizu/settings/security/FlymeEnterPasswordFragment;->mLayoutInflater:Landroid/view/LayoutInflater;

    const p3, 0x7f0d00dd

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 154
    invoke-direct {p0, p1}, Lcom/meizu/settings/security/FlymeEnterPasswordFragment;->initTextView(Landroid/view/View;)V

    .line 155
    invoke-direct {p0, p1}, Lcom/meizu/settings/security/FlymeEnterPasswordFragment;->initLockDigitalPanel(Landroid/view/View;)V

    return-object p1
.end method

.method public onInputTextButtonClick(Ljava/lang/String;)V
    .registers 2

    return-void
.end method

.method public onKeyLeftButtonClick(Ljava/lang/String;)V
    .registers 2

    .line 614
    iget-object p0, p0, Lcom/meizu/settings/security/FlymeEnterPasswordFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->onBackPressed()V

    return-void
.end method

.method public onKeyRightButtonClick(Ljava/lang/String;)V
    .registers 7

    .line 619
    iget-boolean v0, p0, Lcom/meizu/settings/security/FlymeEnterPasswordFragment;->mConfirmPassword:Z

    const/4 v1, 0x1

    if-nez v0, :cond_b2

    .line 620
    invoke-direct {p0, p1}, Lcom/meizu/settings/security/FlymeEnterPasswordFragment;->isPasswordIllegal(Ljava/lang/String;)I

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_36

    .line 622
    iget-object p1, p0, Lcom/meizu/settings/security/FlymeEnterPasswordFragment;->mLockDigitPanel:Lcom/meizu/settings/widget/SystemLockView;

    invoke-virtual {p1, v1}, Lcom/meizu/settings/widget/SystemLockView;->clearCell(Z)V

    .line 623
    iget-object p1, p0, Lcom/meizu/settings/security/FlymeEnterPasswordFragment;->mLockDigitPanel:Lcom/meizu/settings/widget/SystemLockView;

    invoke-virtual {p1, v2}, Lcom/meizu/settings/widget/SystemLockView;->setInputTextButtonVisibility(Z)V

    .line 624
    invoke-direct {p0, v2}, Lcom/meizu/settings/security/FlymeEnterPasswordFragment;->setFinishButtonEnable(Z)V

    .line 625
    iget-object p1, p0, Lcom/meizu/settings/security/FlymeEnterPasswordFragment;->mLockDigitPanel:Lcom/meizu/settings/widget/SystemLockView;

    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1210ed

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/meizu/settings/widget/SystemLockView;->setTip(Ljava/lang/String;)V

    .line 627
    iget-object p0, p0, Lcom/meizu/settings/security/FlymeEnterPasswordFragment;->mLockDigitPanel:Lcom/meizu/settings/widget/SystemLockView;

    const p1, 0x7f0a0363

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p0

    invoke-static {p0}, Lcom/meizu/settings/utils/MzUtils;->startShakeAnim(Landroid/view/View;)V

    return-void

    .line 632
    :cond_36
    iget v0, p0, Lcom/meizu/settings/security/FlymeEnterPasswordFragment;->mPasswordType:I

    const/16 v3, 0x8

    if-nez v0, :cond_4d

    .line 633
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v4, 0x6

    if-le v0, v4, :cond_47

    .line 634
    invoke-virtual {p1, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 637
    :cond_47
    iget-object v0, p0, Lcom/meizu/settings/security/FlymeEnterPasswordFragment;->mBottomButtonView:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_6a

    :cond_4d
    if-ne v0, v1, :cond_6a

    .line 639
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v4, 0x11

    if-le v0, v4, :cond_5b

    .line 640
    invoke-virtual {p1, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 642
    :cond_5b
    iget-object v0, p0, Lcom/meizu/settings/security/FlymeEnterPasswordFragment;->mLockDigitPanel:Lcom/meizu/settings/widget/SystemLockView;

    invoke-virtual {v0, v2}, Lcom/meizu/settings/widget/SystemLockView;->setHollowVisible(Z)V

    .line 643
    iget-object v0, p0, Lcom/meizu/settings/security/FlymeEnterPasswordFragment;->mLockDigitPanel:Lcom/meizu/settings/widget/SystemLockView;

    invoke-virtual {v0, v2}, Lcom/meizu/settings/widget/SystemLockView;->setTip2_Visibility(Z)V

    .line 644
    iget-object v0, p0, Lcom/meizu/settings/security/FlymeEnterPasswordFragment;->mBottomButtonView:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 647
    :cond_6a
    :goto_6a
    iput-boolean v1, p0, Lcom/meizu/settings/security/FlymeEnterPasswordFragment;->mConfirmPassword:Z

    .line 648
    iput-object p1, p0, Lcom/meizu/settings/security/FlymeEnterPasswordFragment;->mPasswordAtFirstTime:Ljava/lang/String;

    .line 649
    iget-object p1, p0, Lcom/meizu/settings/security/FlymeEnterPasswordFragment;->mLockDigitPanel:Lcom/meizu/settings/widget/SystemLockView;

    invoke-virtual {p1, v1}, Lcom/meizu/settings/widget/SystemLockView;->clearCell(Z)V

    .line 650
    iget-object p1, p0, Lcom/meizu/settings/security/FlymeEnterPasswordFragment;->mLockDigitPanel:Lcom/meizu/settings/widget/SystemLockView;

    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v4, 0x7f120eb7

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/meizu/settings/widget/SystemLockView;->setTipAnim(Ljava/lang/String;)V

    .line 653
    iget-object p1, p0, Lcom/meizu/settings/security/FlymeEnterPasswordFragment;->mUseComplexPassWord:Lcom/meizu/settings/widget/TextAlphaAnimView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 654
    iget-object p1, p0, Lcom/meizu/settings/security/FlymeEnterPasswordFragment;->mUseComplexPassWord:Lcom/meizu/settings/widget/TextAlphaAnimView;

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 655
    iget-object p1, p0, Lcom/meizu/settings/security/FlymeEnterPasswordFragment;->mLockDigitPanel:Lcom/meizu/settings/widget/SystemLockView;

    iget-object v0, p0, Lcom/meizu/settings/security/FlymeEnterPasswordFragment;->mPasswordAtFirstTime:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/meizu/settings/widget/SystemLockView;->setMaxLen(I)V

    .line 656
    iget-object p1, p0, Lcom/meizu/settings/security/FlymeEnterPasswordFragment;->mComplexPasswordView:Landroid/widget/EditText;

    new-array v0, v1, [Landroid/text/InputFilter;

    new-instance v3, Landroid/text/InputFilter$LengthFilter;

    iget-object v4, p0, Lcom/meizu/settings/security/FlymeEnterPasswordFragment;->mPasswordAtFirstTime:Ljava/lang/String;

    .line 657
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-direct {v3, v4}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v3, v0, v2

    .line 656
    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 659
    iget-object p0, p0, Lcom/meizu/settings/security/FlymeEnterPasswordFragment;->mLockDigitPanel:Lcom/meizu/settings/widget/SystemLockView;

    invoke-virtual {p0, v1}, Lcom/meizu/settings/widget/SystemLockView;->setHollowVisible(Z)V

    goto :goto_b9

    .line 661
    :cond_b2
    iget v0, p0, Lcom/meizu/settings/security/FlymeEnterPasswordFragment;->mPasswordType:I

    if-ne v0, v1, :cond_b9

    .line 662
    invoke-direct {p0, p1}, Lcom/meizu/settings/security/FlymeEnterPasswordFragment;->verifyAndSaveLockPassword(Ljava/lang/String;)V

    :cond_b9
    :goto_b9
    return-void
.end method

.method public onLeftButtonClick(Ljava/lang/String;)V
    .registers 2

    .line 600
    invoke-virtual {p0}, Lcom/meizu/settings/SettingsPreferenceFragment;->finish()V

    .line 601
    iget-boolean p1, p0, Lcom/meizu/settings/security/FlymeEnterPasswordFragment;->mFromSetupwizard:Z

    iget-object p0, p0, Lcom/meizu/settings/security/FlymeEnterPasswordFragment;->mActivity:Landroid/app/Activity;

    invoke-static {p1, p0}, Lcom/meizu/settings/utils/MzUtils;->doFromSetupwizardAnimation(ZLandroid/app/Activity;)V

    return-void
.end method

.method public onPause()V
    .registers 3

    .line 412
    invoke-super {p0}, Lcom/meizu/settings/InstrumentedPreferenceFragment;->onPause()V

    .line 413
    iget-object v0, p0, Lcom/meizu/settings/security/FlymeEnterPasswordFragment;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/meizu/settings/security/FlymeEnterPasswordFragment;->mInputShownChangeListener:Landroid/view/inputmethod/InputMethodManager$InputShownChangeListener;

    invoke-virtual {v0, v1}, Landroid/view/inputmethod/InputMethodManager;->removeInputShownChangeListener(Landroid/view/inputmethod/InputMethodManager$InputShownChangeListener;)V

    .line 414
    iget v0, p0, Lcom/meizu/settings/security/FlymeEnterPasswordFragment;->mPasswordType:I

    if-nez v0, :cond_19

    .line 415
    iget-object p0, p0, Lcom/meizu/settings/security/FlymeEnterPasswordFragment;->mActivity:Landroid/app/Activity;

    check-cast p0, Lcom/android/settings/SettingsActivity;

    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->getMzSettingsActivity()Lcom/meizu/settings/MzSettingsActivity;

    move-result-object p0

    .line 416
    invoke-virtual {p0}, Lcom/meizu/settings/MzSettingsActivity;->releaseOnKeyListener()V

    :cond_19
    return-void
.end method

.method public onResume()V
    .registers 3

    .line 396
    invoke-super {p0}, Lcom/meizu/settings/SettingsPreferenceFragment;->onResume()V

    .line 397
    iget-object v0, p0, Lcom/meizu/settings/security/FlymeEnterPasswordFragment;->mLockDigitPanel:Lcom/meizu/settings/widget/SystemLockView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setFitsSystemWindows(Z)V

    .line 398
    iget-object v0, p0, Lcom/meizu/settings/security/FlymeEnterPasswordFragment;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/meizu/settings/security/FlymeEnterPasswordFragment;->mInputShownChangeListener:Landroid/view/inputmethod/InputMethodManager$InputShownChangeListener;

    invoke-virtual {v0, v1}, Landroid/view/inputmethod/InputMethodManager;->addInputShownChangeListener(Landroid/view/inputmethod/InputMethodManager$InputShownChangeListener;)V

    .line 400
    iget-object v0, p0, Lcom/meizu/settings/security/FlymeEnterPasswordFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/meizu/settings/utils/MzUtils;->isGuestUser(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 401
    iget-object v0, p0, Lcom/meizu/settings/security/FlymeEnterPasswordFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 404
    :cond_1d
    iget v0, p0, Lcom/meizu/settings/security/FlymeEnterPasswordFragment;->mPasswordType:I

    if-nez v0, :cond_2e

    .line 405
    iget-object v0, p0, Lcom/meizu/settings/security/FlymeEnterPasswordFragment;->mActivity:Landroid/app/Activity;

    check-cast v0, Lcom/android/settings/SettingsActivity;

    invoke-virtual {v0}, Lcom/android/settings/SettingsActivity;->getMzSettingsActivity()Lcom/meizu/settings/MzSettingsActivity;

    move-result-object v0

    iget-object p0, p0, Lcom/meizu/settings/security/FlymeEnterPasswordFragment;->mOnKeyPressListener:Lcom/meizu/settings/MzSettingsActivity$OnKeyListener;

    .line 406
    invoke-virtual {v0, p0}, Lcom/meizu/settings/MzSettingsActivity;->setOnKeyListener(Lcom/meizu/settings/MzSettingsActivity$OnKeyListener;)V

    :cond_2e
    return-void
.end method

.method public onRightButtonClick(Ljava/lang/String;)V
    .registers 2

    return-void
.end method
