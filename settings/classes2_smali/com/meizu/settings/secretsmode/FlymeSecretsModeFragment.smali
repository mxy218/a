.class public Lcom/meizu/settings/secretsmode/FlymeSecretsModeFragment;
.super Lcom/meizu/settings/security/FlymeBasePasswordFragment;
.source "FlymeSecretsModeFragment.java"


# instance fields
.field private isLocked:Z

.field private mCallback:Lcom/meizu/settings/secretsmode/FlymeSecretsControlHelper$FlymeSecretsControlCallback;

.field private mClearPrivatesDataWhenDisable:Z

.field private mContentObserver:Landroid/database/ContentObserver;

.field private mContext:Landroid/content/Context;

.field private mFlymeLockPasswordUtils:Lcom/meizu/settings/security/FlymeLockPasswordUtils;

.field private mFromPrivacyShopDemo:Z

.field private mLoadingDialog:Lcom/meizu/common/app/LoadingDialog;

.field private mModifyPasswordPref:Landroid/preference/Preference;

.field private mScecretsCleanPref:Landroid/preference/Preference;

.field private mSecretAppPref:Landroid/preference/Preference;

.field private mSecretContactPref:Landroid/preference/Preference;

.field private mSecretFilePref:Landroid/preference/Preference;

.field private mSecretPhotoPref:Landroid/preference/Preference;

.field private mSecretVideoPref:Landroid/preference/Preference;

.field private mSecretsControlHelper:Lcom/meizu/settings/secretsmode/FlymeSecretsControlHelper;

.field private mSecretsDataCategory:Landroid/preference/PreferenceCategory;

.field private mSecretsModeBrowserClean:Lcom/meizu/common/preference/SwitchPreference;

.field private mSecretsModeCamera:Lcom/meizu/common/preference/SwitchPreference;

.field private mSecretsModeEnable:Lcom/meizu/settings/widget/GuideTipsSwitchPreference;

.field private mSecretsOtherCategory:Landroid/preference/PreferenceCategory;

.field private mUsageStatsProxy:Lcom/meizu/settings/datareport/UsageStatsProxy;

.field private mUseFingerprintPref:Lcom/meizu/common/preference/SwitchPreference;

.field private mUserManager:Landroid/os/UserManager;

.field private mWarnClosePasswordDialog:Lflyme/support/v7/app/AlertDialog;


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 50
    invoke-direct {p0}, Lcom/meizu/settings/security/FlymeBasePasswordFragment;-><init>()V

    .line 109
    new-instance v0, Lcom/meizu/settings/secretsmode/FlymeSecretsModeFragment$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/meizu/settings/secretsmode/FlymeSecretsModeFragment$1;-><init>(Lcom/meizu/settings/secretsmode/FlymeSecretsModeFragment;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/meizu/settings/secretsmode/FlymeSecretsModeFragment;->mContentObserver:Landroid/database/ContentObserver;

    .line 119
    new-instance v0, Lcom/meizu/settings/secretsmode/FlymeSecretsModeFragment$2;

    invoke-direct {v0, p0}, Lcom/meizu/settings/secretsmode/FlymeSecretsModeFragment$2;-><init>(Lcom/meizu/settings/secretsmode/FlymeSecretsModeFragment;)V

    iput-object v0, p0, Lcom/meizu/settings/secretsmode/FlymeSecretsModeFragment;->mCallback:Lcom/meizu/settings/secretsmode/FlymeSecretsControlHelper$FlymeSecretsControlCallback;

    return-void
.end method

.method static synthetic access$000(Lcom/meizu/settings/secretsmode/FlymeSecretsModeFragment;)V
    .registers 1

    .line 50
    invoke-direct {p0}, Lcom/meizu/settings/secretsmode/FlymeSecretsModeFragment;->checkIfNeedFinish()V

    return-void
.end method

.method static synthetic access$100(Lcom/meizu/settings/secretsmode/FlymeSecretsModeFragment;)Lcom/meizu/settings/secretsmode/FlymeSecretsControlHelper;
    .registers 1

    .line 50
    iget-object p0, p0, Lcom/meizu/settings/secretsmode/FlymeSecretsModeFragment;->mSecretsControlHelper:Lcom/meizu/settings/secretsmode/FlymeSecretsControlHelper;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/meizu/settings/secretsmode/FlymeSecretsModeFragment;I)V
    .registers 2

    .line 50
    invoke-direct {p0, p1}, Lcom/meizu/settings/secretsmode/FlymeSecretsModeFragment;->startConfirmPassword(I)V

    return-void
.end method

.method static synthetic access$1100(Lcom/meizu/settings/secretsmode/FlymeSecretsModeFragment;)Lcom/meizu/settings/widget/GuideTipsSwitchPreference;
    .registers 1

    .line 50
    iget-object p0, p0, Lcom/meizu/settings/secretsmode/FlymeSecretsModeFragment;->mSecretsModeEnable:Lcom/meizu/settings/widget/GuideTipsSwitchPreference;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/meizu/settings/secretsmode/FlymeSecretsModeFragment;I)V
    .registers 2

    .line 50
    invoke-direct {p0, p1}, Lcom/meizu/settings/secretsmode/FlymeSecretsModeFragment;->checkAndEnableSecretMode(I)V

    return-void
.end method

.method static synthetic access$1400(Lcom/meizu/settings/secretsmode/FlymeSecretsModeFragment;)Lcom/meizu/common/preference/SwitchPreference;
    .registers 1

    .line 50
    iget-object p0, p0, Lcom/meizu/settings/secretsmode/FlymeSecretsModeFragment;->mUseFingerprintPref:Lcom/meizu/common/preference/SwitchPreference;

    return-object p0
.end method

.method static synthetic access$200(Lcom/meizu/settings/secretsmode/FlymeSecretsModeFragment;)Lcom/meizu/settings/security/FlymeLockPasswordUtils;
    .registers 1

    .line 50
    iget-object p0, p0, Lcom/meizu/settings/secretsmode/FlymeSecretsModeFragment;->mFlymeLockPasswordUtils:Lcom/meizu/settings/security/FlymeLockPasswordUtils;

    return-object p0
.end method

.method static synthetic access$300(Lcom/meizu/settings/secretsmode/FlymeSecretsModeFragment;)Lcom/meizu/settings/datareport/UsageStatsProxy;
    .registers 1

    .line 50
    iget-object p0, p0, Lcom/meizu/settings/secretsmode/FlymeSecretsModeFragment;->mUsageStatsProxy:Lcom/meizu/settings/datareport/UsageStatsProxy;

    return-object p0
.end method

.method static synthetic access$400(Lcom/meizu/settings/secretsmode/FlymeSecretsModeFragment;I)V
    .registers 2

    .line 50
    invoke-direct {p0, p1}, Lcom/meizu/settings/secretsmode/FlymeSecretsModeFragment;->handleManageDataDone(I)V

    return-void
.end method

.method static synthetic access$500(Lcom/meizu/settings/secretsmode/FlymeSecretsModeFragment;)Lcom/meizu/common/app/LoadingDialog;
    .registers 1

    .line 50
    iget-object p0, p0, Lcom/meizu/settings/secretsmode/FlymeSecretsModeFragment;->mLoadingDialog:Lcom/meizu/common/app/LoadingDialog;

    return-object p0
.end method

.method static synthetic access$502(Lcom/meizu/settings/secretsmode/FlymeSecretsModeFragment;Lcom/meizu/common/app/LoadingDialog;)Lcom/meizu/common/app/LoadingDialog;
    .registers 2

    .line 50
    iput-object p1, p0, Lcom/meizu/settings/secretsmode/FlymeSecretsModeFragment;->mLoadingDialog:Lcom/meizu/common/app/LoadingDialog;

    return-object p1
.end method

.method static synthetic access$600(Lcom/meizu/settings/secretsmode/FlymeSecretsModeFragment;)Landroid/content/Context;
    .registers 1

    .line 50
    iget-object p0, p0, Lcom/meizu/settings/secretsmode/FlymeSecretsModeFragment;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$702(Lcom/meizu/settings/secretsmode/FlymeSecretsModeFragment;Z)Z
    .registers 2

    .line 50
    iput-boolean p1, p0, Lcom/meizu/settings/secretsmode/FlymeSecretsModeFragment;->isLocked:Z

    return p1
.end method

.method static synthetic access$800(Lcom/meizu/settings/secretsmode/FlymeSecretsModeFragment;)V
    .registers 1

    .line 50
    invoke-direct {p0}, Lcom/meizu/settings/secretsmode/FlymeSecretsModeFragment;->updatePreference()V

    return-void
.end method

.method static synthetic access$902(Lcom/meizu/settings/secretsmode/FlymeSecretsModeFragment;Z)Z
    .registers 2

    .line 50
    iput-boolean p1, p0, Lcom/meizu/settings/secretsmode/FlymeSecretsModeFragment;->mClearPrivatesDataWhenDisable:Z

    return p1
.end method

.method private checkAndEnableSecretMode(I)V
    .registers 6

    const/4 v0, 0x1

    const/4 v1, 0x4

    const-string v2, "FlymeSecretsModeFragment"

    if-eq p1, v0, :cond_f

    const/4 v0, 0x2

    if-eq p1, v0, :cond_f

    const/4 v0, 0x3

    if-eq p1, v0, :cond_2f

    if-eq p1, v1, :cond_4f

    goto :goto_6f

    .line 476
    :cond_f
    iget-object p1, p0, Lcom/meizu/settings/secretsmode/FlymeSecretsModeFragment;->mFlymeLockPasswordUtils:Lcom/meizu/settings/security/FlymeLockPasswordUtils;

    invoke-virtual {p1}, Lcom/meizu/settings/security/FlymeLockPasswordUtils;->isScreenPasswordEnalbed()Z

    move-result p1

    .line 477
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkCondition hasDevicePassword = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_2f

    .line 479
    invoke-direct {p0}, Lcom/meizu/settings/secretsmode/FlymeSecretsModeFragment;->startDevicePasswordGuide()V

    return-void

    .line 483
    :cond_2f
    iget-object p1, p0, Lcom/meizu/settings/secretsmode/FlymeSecretsModeFragment;->mFlymeLockPasswordUtils:Lcom/meizu/settings/security/FlymeLockPasswordUtils;

    invoke-virtual {p1}, Lcom/meizu/settings/security/FlymeLockPasswordUtils;->isScreenLockEnabled()Z

    move-result p1

    .line 484
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkCondition keyguradLockEnable = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_4f

    .line 486
    invoke-direct {p0}, Lcom/meizu/settings/secretsmode/FlymeSecretsModeFragment;->showEnableKeyguardLock()V

    return-void

    .line 490
    :cond_4f
    iget-object p1, p0, Lcom/meizu/settings/secretsmode/FlymeSecretsModeFragment;->mFlymeLockPasswordUtils:Lcom/meizu/settings/security/FlymeLockPasswordUtils;

    .line 491
    invoke-virtual {p1}, Lcom/meizu/settings/security/FlymeLockPasswordUtils;->isSecretsModePasswordFileExist()Z

    move-result p1

    .line 492
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkCondition isSecretModePasswordExist = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_6f

    .line 495
    invoke-direct {p0}, Lcom/meizu/settings/secretsmode/FlymeSecretsModeFragment;->startSecretPasswordGuide()V

    return-void

    .line 499
    :cond_6f
    :goto_6f
    invoke-direct {p0, v1}, Lcom/meizu/settings/secretsmode/FlymeSecretsModeFragment;->startConfirmPassword(I)V

    return-void
.end method

.method private checkIfNeedFinish()V
    .registers 3

    .line 269
    iget-object v0, p0, Lcom/meizu/settings/secretsmode/FlymeSecretsModeFragment;->mFlymeLockPasswordUtils:Lcom/meizu/settings/security/FlymeLockPasswordUtils;

    const/4 v1, 0x4

    .line 270
    invoke-virtual {v0, v1}, Lcom/meizu/settings/security/FlymeLockPasswordUtils;->isPasswordEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/meizu/settings/secretsmode/FlymeSecretsModeFragment;->mFlymeLockPasswordUtils:Lcom/meizu/settings/security/FlymeLockPasswordUtils;

    .line 271
    invoke-virtual {v0}, Lcom/meizu/settings/security/FlymeLockPasswordUtils;->isInSecretsMode()Z

    move-result v0

    if-nez v0, :cond_13

    const/4 v0, 0x1

    goto :goto_14

    :cond_13
    const/4 v0, 0x0

    .line 272
    :goto_14
    iget-object v1, p0, Lcom/meizu/settings/secretsmode/FlymeSecretsModeFragment;->mWarnClosePasswordDialog:Lflyme/support/v7/app/AlertDialog;

    if-eqz v1, :cond_25

    invoke-virtual {v1}, Landroid/app/Dialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_25

    if-eqz v0, :cond_25

    .line 274
    iget-object v1, p0, Lcom/meizu/settings/secretsmode/FlymeSecretsModeFragment;->mWarnClosePasswordDialog:Lflyme/support/v7/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    .line 276
    :cond_25
    iget-object v1, p0, Lcom/meizu/settings/secretsmode/FlymeSecretsModeFragment;->mLoadingDialog:Lcom/meizu/common/app/LoadingDialog;

    if-eqz v1, :cond_36

    invoke-virtual {v1}, Landroid/app/Dialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_36

    if-eqz v0, :cond_36

    .line 277
    iget-object v1, p0, Lcom/meizu/settings/secretsmode/FlymeSecretsModeFragment;->mLoadingDialog:Lcom/meizu/common/app/LoadingDialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    :cond_36
    if-eqz v0, :cond_41

    .line 280
    iget-object p0, p0, Lcom/meizu/settings/secretsmode/FlymeSecretsModeFragment;->mContext:Landroid/content/Context;

    if-eqz p0, :cond_41

    .line 281
    check-cast p0, Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_41
    return-void
.end method

.method private handleEnableSecretMode()V
    .registers 3

    .line 452
    iget-object v0, p0, Lcom/meizu/settings/secretsmode/FlymeSecretsModeFragment;->mSecretsModeEnable:Lcom/meizu/settings/widget/GuideTipsSwitchPreference;

    if-nez v0, :cond_5

    return-void

    .line 456
    :cond_5
    iget-boolean v1, p0, Lcom/meizu/settings/secretsmode/FlymeSecretsModeFragment;->mFromPrivacyShopDemo:Z

    if-eqz v1, :cond_c

    .line 457
    invoke-virtual {v0}, Lcom/meizu/settings/widget/GuideTipsSwitchPreference;->hideGuideTips()V

    .line 460
    :cond_c
    iget-object v0, p0, Lcom/meizu/settings/secretsmode/FlymeSecretsModeFragment;->mSecretsModeEnable:Lcom/meizu/settings/widget/GuideTipsSwitchPreference;

    invoke-virtual {v0}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_19

    const/4 v0, 0x1

    .line 461
    invoke-direct {p0, v0}, Lcom/meizu/settings/secretsmode/FlymeSecretsModeFragment;->checkAndEnableSecretMode(I)V

    goto :goto_20

    .line 462
    :cond_19
    iget-boolean v0, p0, Lcom/meizu/settings/secretsmode/FlymeSecretsModeFragment;->isLocked:Z

    if-eqz v0, :cond_20

    .line 463
    invoke-direct {p0}, Lcom/meizu/settings/secretsmode/FlymeSecretsModeFragment;->showClosePasswordWarningDialog()V

    :cond_20
    :goto_20
    return-void
.end method

.method private handleManageDataDone(I)V
    .registers 4

    .line 227
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_e

    const-string p0, "FlymeSecretsModeFragment"

    const-string p1, "handleManageDataDone failed"

    .line 228
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 232
    :cond_e
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/meizu/settings/secretsmode/FlymeSecretsModeFragment$3;

    invoke-direct {v1, p0, p1}, Lcom/meizu/settings/secretsmode/FlymeSecretsModeFragment$3;-><init>(Lcom/meizu/settings/secretsmode/FlymeSecretsModeFragment;I)V

    const-wide/16 p0, 0x3e8

    invoke-virtual {v0, v1, p0, p1}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private handleUseFp()V
    .registers 4

    .line 631
    iget-object v0, p0, Lcom/meizu/settings/secretsmode/FlymeSecretsModeFragment;->mUseFingerprintPref:Lcom/meizu/common/preference/SwitchPreference;

    if-nez v0, :cond_5

    return-void

    .line 634
    :cond_5
    invoke-virtual {v0}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_43

    .line 635
    new-instance v0, Lcom/meizu/settings/fingerprint/FlymeFingerPrintImpl;

    iget-object v1, p0, Lcom/meizu/settings/secretsmode/FlymeSecretsModeFragment;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/meizu/settings/fingerprint/FlymeFingerPrintImpl;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/meizu/settings/fingerprint/FlymeFingerPrintImpl;->getIds()[I

    move-result-object v0

    if-eqz v0, :cond_3f

    .line 637
    array-length v1, v0

    const/4 v2, 0x1

    if-le v1, v2, :cond_3f

    array-length v0, v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2d

    iget-object v0, p0, Lcom/meizu/settings/secretsmode/FlymeSecretsModeFragment;->mFlymeLockPasswordUtils:Lcom/meizu/settings/security/FlymeLockPasswordUtils;

    .line 638
    invoke-virtual {v0}, Lcom/meizu/settings/security/FlymeLockPasswordUtils;->getGuestModeFingerprintId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2d

    goto :goto_3f

    .line 642
    :cond_2d
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 643
    iget-object v1, p0, Lcom/meizu/settings/secretsmode/FlymeSecretsModeFragment;->mContext:Landroid/content/Context;

    const-class v2, Lcom/meizu/settings/fingerprint/FlymeChooseFpDialog;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const/16 v1, 0x3e9

    .line 644
    invoke-virtual {p0, v0, v1}, Landroid/preference/PreferenceFragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_48

    .line 639
    :cond_3f
    :goto_3f
    invoke-direct {p0}, Lcom/meizu/settings/secretsmode/FlymeSecretsModeFragment;->showEnrollFingerprintDialog()V

    goto :goto_48

    :cond_43
    const/16 v0, 0x3e8

    .line 649
    invoke-direct {p0, v0}, Lcom/meizu/settings/secretsmode/FlymeSecretsModeFragment;->startConfirmPassword(I)V

    :goto_48
    return-void
.end method

.method private init()V
    .registers 6

    .line 176
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/settings/secretsmode/FlymeSecretsModeFragment;->mContext:Landroid/content/Context;

    .line 178
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "extra_from_shopdemo"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/meizu/settings/secretsmode/FlymeSecretsModeFragment;->mFromPrivacyShopDemo:Z

    .line 180
    iget-object v0, p0, Lcom/meizu/settings/secretsmode/FlymeSecretsModeFragment;->mContext:Landroid/content/Context;

    .line 181
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/meizu/settings/security/FlymeLockPasswordUtils;->getInstance(Landroid/content/Context;)Lcom/meizu/settings/security/FlymeLockPasswordUtils;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/settings/secretsmode/FlymeSecretsModeFragment;->mFlymeLockPasswordUtils:Lcom/meizu/settings/security/FlymeLockPasswordUtils;

    const-string v0, "secrets_mode_enable"

    .line 183
    invoke-virtual {p0, v0}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/meizu/settings/widget/GuideTipsSwitchPreference;

    iput-object v0, p0, Lcom/meizu/settings/secretsmode/FlymeSecretsModeFragment;->mSecretsModeEnable:Lcom/meizu/settings/widget/GuideTipsSwitchPreference;

    const-string v0, "modify_secrets_mode_pwd"

    .line 185
    invoke-virtual {p0, v0}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/settings/secretsmode/FlymeSecretsModeFragment;->mModifyPasswordPref:Landroid/preference/Preference;

    const-string v0, "use_fingerprint"

    .line 186
    invoke-virtual {p0, v0}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/meizu/common/preference/SwitchPreference;

    iput-object v0, p0, Lcom/meizu/settings/secretsmode/FlymeSecretsModeFragment;->mUseFingerprintPref:Lcom/meizu/common/preference/SwitchPreference;

    const-string v0, "secrets_data_category"

    .line 192
    invoke-virtual {p0, v0}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/meizu/settings/secretsmode/FlymeSecretsModeFragment;->mSecretsDataCategory:Landroid/preference/PreferenceCategory;

    const-string v0, "secrets_data_contact"

    .line 193
    invoke-virtual {p0, v0}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/settings/secretsmode/FlymeSecretsModeFragment;->mSecretContactPref:Landroid/preference/Preference;

    const-string v0, "secrets_data_app"

    .line 194
    invoke-virtual {p0, v0}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/settings/secretsmode/FlymeSecretsModeFragment;->mSecretAppPref:Landroid/preference/Preference;

    const-string v0, "secrets_data_photo"

    .line 195
    invoke-virtual {p0, v0}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/settings/secretsmode/FlymeSecretsModeFragment;->mSecretPhotoPref:Landroid/preference/Preference;

    const-string v0, "secrets_data_video"

    .line 196
    invoke-virtual {p0, v0}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/settings/secretsmode/FlymeSecretsModeFragment;->mSecretVideoPref:Landroid/preference/Preference;

    const-string v0, "secrets_data_file"

    .line 197
    invoke-virtual {p0, v0}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/settings/secretsmode/FlymeSecretsModeFragment;->mSecretFilePref:Landroid/preference/Preference;

    const-string v0, "secrets_other_category"

    .line 199
    invoke-virtual {p0, v0}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/meizu/settings/secretsmode/FlymeSecretsModeFragment;->mSecretsOtherCategory:Landroid/preference/PreferenceCategory;

    const-string v0, "secrets_space_secrets_camera"

    .line 201
    invoke-virtual {p0, v0}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/meizu/common/preference/SwitchPreference;

    iput-object v0, p0, Lcom/meizu/settings/secretsmode/FlymeSecretsModeFragment;->mSecretsModeCamera:Lcom/meizu/common/preference/SwitchPreference;

    const-string v0, "secrets_space_browser_clean_use"

    .line 202
    invoke-virtual {p0, v0}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/meizu/common/preference/SwitchPreference;

    iput-object v0, p0, Lcom/meizu/settings/secretsmode/FlymeSecretsModeFragment;->mSecretsModeBrowserClean:Lcom/meizu/common/preference/SwitchPreference;

    .line 204
    iget-object v0, p0, Lcom/meizu/settings/secretsmode/FlymeSecretsModeFragment;->mSecretsModeCamera:Lcom/meizu/common/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/meizu/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v3, 0x1

    const-string v4, "mz_private_camera_mode"

    invoke-static {v2, v4, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v3, :cond_9c

    move v2, v3

    goto :goto_9d

    :cond_9c
    move v2, v1

    :goto_9d
    invoke-virtual {v0, v2}, Lcom/meizu/common/preference/SwitchPreference;->setChecked(Z)V

    .line 206
    iget-object v0, p0, Lcom/meizu/settings/secretsmode/FlymeSecretsModeFragment;->mSecretsModeBrowserClean:Lcom/meizu/common/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/meizu/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v4, "mz_private_browser_mode"

    invoke-static {v2, v4, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v3, :cond_af

    move v1, v3

    :cond_af
    invoke-virtual {v0, v1}, Lcom/meizu/common/preference/SwitchPreference;->setChecked(Z)V

    const-string v0, "secrets_space_clean_data"

    .line 208
    invoke-virtual {p0, v0}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/settings/secretsmode/FlymeSecretsModeFragment;->mScecretsCleanPref:Landroid/preference/Preference;

    .line 210
    iget-object v0, p0, Lcom/meizu/settings/secretsmode/FlymeSecretsModeFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/settings/secretsmode/FlymeSecretsModeFragment;->mUserManager:Landroid/os/UserManager;

    .line 211
    invoke-direct {p0}, Lcom/meizu/settings/secretsmode/FlymeSecretsModeFragment;->registerContentObserver()V

    .line 212
    iget-object v0, p0, Lcom/meizu/settings/secretsmode/FlymeSecretsModeFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/meizu/settings/secretsmode/FlymeSecretsControlHelper;->getInstance(Landroid/content/Context;)Lcom/meizu/settings/secretsmode/FlymeSecretsControlHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/settings/secretsmode/FlymeSecretsModeFragment;->mSecretsControlHelper:Lcom/meizu/settings/secretsmode/FlymeSecretsControlHelper;

    .line 213
    iget-object v0, p0, Lcom/meizu/settings/secretsmode/FlymeSecretsModeFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/meizu/settings/datareport/UsageStatsProxy;->getInstance(Landroid/content/Context;)Lcom/meizu/settings/datareport/UsageStatsProxy;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/settings/secretsmode/FlymeSecretsModeFragment;->mUsageStatsProxy:Lcom/meizu/settings/datareport/UsageStatsProxy;

    return-void
.end method

.method private initResetPasswordPreference()V
    .registers 3

    .line 344
    iget-object v0, p0, Lcom/meizu/settings/secretsmode/FlymeSecretsModeFragment;->mFlymeLockPasswordUtils:Lcom/meizu/settings/security/FlymeLockPasswordUtils;

    invoke-virtual {v0}, Lcom/meizu/settings/security/FlymeLockPasswordUtils;->isSecretsModePasswordFileExist()Z

    move-result v0

    const-string v1, "modify_secrets_mode_pwd"

    if-eqz v0, :cond_1a

    .line 346
    invoke-virtual {p0, v1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    if-nez v0, :cond_29

    .line 347
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/meizu/settings/secretsmode/FlymeSecretsModeFragment;->mModifyPasswordPref:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_29

    .line 350
    :cond_1a
    invoke-virtual {p0, v1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_29

    .line 351
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/meizu/settings/secretsmode/FlymeSecretsModeFragment;->mModifyPasswordPref:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 354
    :cond_29
    :goto_29
    iget-object v0, p0, Lcom/meizu/settings/secretsmode/FlymeSecretsModeFragment;->mModifyPasswordPref:Landroid/preference/Preference;

    iget-boolean p0, p0, Lcom/meizu/settings/secretsmode/FlymeSecretsModeFragment;->isLocked:Z

    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setEnabled(Z)V

    return-void
.end method

.method private registerContentObserver()V
    .registers 2

    .line 218
    invoke-virtual {p0}, Lcom/meizu/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object p0, p0, Lcom/meizu/settings/secretsmode/FlymeSecretsModeFragment;->mContentObserver:Landroid/database/ContentObserver;

    .line 217
    invoke-static {v0, p0}, Lcom/meizu/settings/security/FlymeLockPasswordUtils;->registerSecretsModeRunningObserver(Landroid/content/ContentResolver;Landroid/database/ContentObserver;)V

    return-void
.end method

.method private showClosePasswordWarningDialog()V
    .registers 4

    .line 358
    iget-object v0, p0, Lcom/meizu/settings/secretsmode/FlymeSecretsModeFragment;->mWarnClosePasswordDialog:Lflyme/support/v7/app/AlertDialog;

    if-eqz v0, :cond_8

    .line 359
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void

    .line 362
    :cond_8
    new-instance v0, Lflyme/support/v7/app/AlertDialog$Builder;

    .line 363
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f13032b

    invoke-direct {v0, v1, v2}, Lflyme/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    const v1, 0x7f1204f1

    .line 365
    invoke-virtual {v0, v1}, Lflyme/support/v7/app/AlertDialog$Builder;->setMessage(I)Lflyme/support/v7/app/AlertDialog$Builder;

    const v1, 0x7f120442

    const/4 v2, 0x0

    .line 366
    invoke-virtual {v0, v1, v2}, Lflyme/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lflyme/support/v7/app/AlertDialog$Builder;

    const v1, 0x7f1212cb

    .line 367
    new-instance v2, Lcom/meizu/settings/secretsmode/FlymeSecretsModeFragment$4;

    invoke-direct {v2, p0}, Lcom/meizu/settings/secretsmode/FlymeSecretsModeFragment$4;-><init>(Lcom/meizu/settings/secretsmode/FlymeSecretsModeFragment;)V

    invoke-virtual {v0, v1, v2}, Lflyme/support/v7/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Lflyme/support/v7/app/AlertDialog$Builder;

    const v1, 0x7f1212b7

    .line 377
    new-instance v2, Lcom/meizu/settings/secretsmode/FlymeSecretsModeFragment$5;

    invoke-direct {v2, p0}, Lcom/meizu/settings/secretsmode/FlymeSecretsModeFragment$5;-><init>(Lcom/meizu/settings/secretsmode/FlymeSecretsModeFragment;)V

    invoke-virtual {v0, v1, v2}, Lflyme/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lflyme/support/v7/app/AlertDialog$Builder;

    .line 387
    new-instance v1, Lcom/meizu/settings/secretsmode/FlymeSecretsModeFragment$6;

    invoke-direct {v1, p0}, Lcom/meizu/settings/secretsmode/FlymeSecretsModeFragment$6;-><init>(Lcom/meizu/settings/secretsmode/FlymeSecretsModeFragment;)V

    invoke-virtual {v0, v1}, Lflyme/support/v7/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Lflyme/support/v7/app/AlertDialog$Builder;

    .line 393
    invoke-virtual {v0}, Lflyme/support/v7/app/AlertDialog$Builder;->create()Lflyme/support/v7/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/settings/secretsmode/FlymeSecretsModeFragment;->mWarnClosePasswordDialog:Lflyme/support/v7/app/AlertDialog;

    .line 394
    iget-object p0, p0, Lcom/meizu/settings/secretsmode/FlymeSecretsModeFragment;->mWarnClosePasswordDialog:Lflyme/support/v7/app/AlertDialog;

    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method private showEnableKeyguardLock()V
    .registers 4

    .line 568
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/meizu/settings/secretsmode/FlymeSecretsModeFragment;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f1212d2

    .line 569
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 570
    new-instance v1, Lcom/meizu/settings/secretsmode/FlymeSecretsModeFragment$10;

    invoke-direct {v1, p0}, Lcom/meizu/settings/secretsmode/FlymeSecretsModeFragment$10;-><init>(Lcom/meizu/settings/secretsmode/FlymeSecretsModeFragment;)V

    const v2, 0x7f1212cf

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 578
    new-instance v1, Lcom/meizu/settings/secretsmode/FlymeSecretsModeFragment$11;

    invoke-direct {v1, p0}, Lcom/meizu/settings/secretsmode/FlymeSecretsModeFragment$11;-><init>(Lcom/meizu/settings/secretsmode/FlymeSecretsModeFragment;)V

    const v2, 0x7f120bfb

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 584
    new-instance v1, Lcom/meizu/settings/secretsmode/FlymeSecretsModeFragment$12;

    invoke-direct {v1, p0}, Lcom/meizu/settings/secretsmode/FlymeSecretsModeFragment$12;-><init>(Lcom/meizu/settings/secretsmode/FlymeSecretsModeFragment;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 590
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p0

    .line 591
    invoke-virtual {p0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method private showEnrollFingerprintDialog()V
    .registers 4

    .line 603
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/meizu/settings/secretsmode/FlymeSecretsModeFragment;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f1212aa

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/meizu/settings/secretsmode/FlymeSecretsModeFragment$14;

    invoke-direct {v1, p0}, Lcom/meizu/settings/secretsmode/FlymeSecretsModeFragment$14;-><init>(Lcom/meizu/settings/secretsmode/FlymeSecretsModeFragment;)V

    const v2, 0x7f1207fa

    .line 604
    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f120442

    const/4 v2, 0x0

    .line 619
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/meizu/settings/secretsmode/FlymeSecretsModeFragment$13;

    invoke-direct {v1, p0}, Lcom/meizu/settings/secretsmode/FlymeSecretsModeFragment$13;-><init>(Lcom/meizu/settings/secretsmode/FlymeSecretsModeFragment;)V

    .line 620
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    .line 626
    invoke-virtual {p0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method private startAppPage()V
    .registers 10

    .line 734
    invoke-virtual {p0}, Lcom/meizu/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "private_pkg_list"

    invoke-static {v0, v1}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 735
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "FlymeSecretsModeFragment"

    const-string v2, "secrets_data_app"

    if-eqz v0, :cond_2f

    .line 737
    const-class v0, Lcom/meizu/settings/secretsmode/FlymeSecretAppGuideFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    const v6, 0x7f1212c0

    const/4 v7, -0x1

    const/4 v8, 0x0

    move-object v3, p0

    move-object v4, p0

    invoke-virtual/range {v3 .. v8}, Lcom/meizu/settings/SettingsPreferenceFragment;->startFragment(Landroid/app/Fragment;Ljava/lang/String;IILandroid/os/Bundle;)Z

    .line 739
    iget-object p0, p0, Lcom/meizu/settings/secretsmode/FlymeSecretsModeFragment;->mUsageStatsProxy:Lcom/meizu/settings/datareport/UsageStatsProxy;

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v2, v1, v0}, Lcom/meizu/settings/datareport/UsageStatsProxy;->reportData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_49

    .line 741
    :cond_2f
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-class v4, Lcom/meizu/settings/secretsmode/FlymeSecretAppsPicker;

    invoke-direct {v0, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/16 v3, 0x7d3

    .line 742
    invoke-virtual {p0, v0, v3}, Landroid/preference/PreferenceFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 743
    iget-object p0, p0, Lcom/meizu/settings/secretsmode/FlymeSecretsModeFragment;->mUsageStatsProxy:Lcom/meizu/settings/datareport/UsageStatsProxy;

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v2, v1, v0}, Lcom/meizu/settings/datareport/UsageStatsProxy;->reportData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_49
    return-void
.end method

.method private startConfirmPassword(I)V
    .registers 8

    .line 443
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    const-string v0, "password_from"

    const/4 v1, 0x4

    .line 444
    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 446
    iget-object v0, p0, Lcom/meizu/settings/secretsmode/FlymeSecretsModeFragment;->mFlymeLockPasswordUtils:Lcom/meizu/settings/security/FlymeLockPasswordUtils;

    .line 447
    invoke-virtual {v0}, Lcom/meizu/settings/security/FlymeLockPasswordUtils;->getSecreteModeFingerprintId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    const-string v1, "extra_key_fingerprint_support"

    .line 446
    invoke-virtual {v5, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 448
    const-class v0, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, -0x1

    move-object v0, p0

    move-object v1, p0

    move v4, p1

    invoke-virtual/range {v0 .. v5}, Lcom/meizu/settings/SettingsPreferenceFragment;->startFragment(Landroid/app/Fragment;Ljava/lang/String;IILandroid/os/Bundle;)Z

    return-void
.end method

.method private startContactPage()V
    .registers 5

    const-string v0, "FlymeSecretsModeFragment"

    .line 724
    new-instance v1, Landroid/content/Intent;

    const-string v2, "meizu.intent.action.LIST_ALL_PRIVACY_CONTACTS"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 726
    :try_start_9
    invoke-virtual {p0, v1}, Landroid/preference/PreferenceFragment;->startActivity(Landroid/content/Intent;)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_c} :catch_d

    goto :goto_26

    :catch_d
    move-exception v1

    .line 728
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "startContactPage e = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 730
    :goto_26
    iget-object p0, p0, Lcom/meizu/settings/secretsmode/FlymeSecretsModeFragment;->mUsageStatsProxy:Lcom/meizu/settings/datareport/UsageStatsProxy;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "secrets_data_contact"

    invoke-virtual {p0, v2, v0, v1}, Lcom/meizu/settings/datareport/UsageStatsProxy;->reportData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private startCreatePassword()V
    .registers 9

    .line 432
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/meizu/settings/security/FlymeLockPasswordUtils;->getInstance(Landroid/content/Context;)Lcom/meizu/settings/security/FlymeLockPasswordUtils;

    move-result-object v0

    const/4 v1, 0x4

    .line 433
    invoke-virtual {v0, v1}, Lcom/meizu/settings/security/FlymeLockPasswordUtils;->getPasswordType(I)I

    move-result v0

    .line 434
    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    const-string v2, "password_from"

    .line 435
    invoke-virtual {v7, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "extra_key_password_type"

    .line 437
    invoke-virtual {v7, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 438
    const-class v0, Lcom/meizu/settings/security/FlymeEnterPasswordFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    const v5, 0x7f1212d4

    const/4 v6, -0x1

    move-object v2, p0

    move-object v3, p0

    invoke-virtual/range {v2 .. v7}, Lcom/meizu/settings/SettingsPreferenceFragment;->startFragment(Landroid/app/Fragment;Ljava/lang/String;IILandroid/os/Bundle;)Z

    return-void
.end method

.method private startDevicePasswordGuide()V
    .registers 7

    .line 560
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    const-string v0, "guide_type"

    const/4 v1, 0x0

    .line 561
    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 563
    const-class v0, Lcom/meizu/settings/secretsmode/FlymeSecretsModeGuideFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, -0x1

    const/16 v4, 0x7d0

    move-object v0, p0

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lcom/meizu/settings/SettingsPreferenceFragment;->startFragment(Landroid/app/Fragment;Ljava/lang/String;IILandroid/os/Bundle;)Z

    return-void
.end method

.method private startFilePage()V
    .registers 5

    const-string v0, "FlymeSecretsModeFragment"

    .line 769
    invoke-virtual {p0}, Lcom/meizu/settings/SettingsPreferenceFragment;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "com.meizu.filemanager"

    .line 770
    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 772
    :try_start_c
    invoke-virtual {p0, v1}, Landroid/preference/PreferenceFragment;->startActivity(Landroid/content/Intent;)V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_f} :catch_10

    goto :goto_29

    :catch_10
    move-exception v1

    .line 774
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "startFilePage = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 776
    :goto_29
    iget-object p0, p0, Lcom/meizu/settings/secretsmode/FlymeSecretsModeFragment;->mUsageStatsProxy:Lcom/meizu/settings/datareport/UsageStatsProxy;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "secrets_data_file"

    invoke-virtual {p0, v2, v0, v1}, Lcom/meizu/settings/datareport/UsageStatsProxy;->reportData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private startPicPage()V
    .registers 5

    const-string v0, "FlymeSecretsModeFragment"

    .line 748
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.meizu.media.gallery.action.PRIVACY_PHOTO_LIST"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 750
    :try_start_9
    invoke-virtual {p0, v1}, Landroid/preference/PreferenceFragment;->startActivity(Landroid/content/Intent;)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_c} :catch_d

    goto :goto_26

    :catch_d
    move-exception v1

    .line 752
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "startPicPage e = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 754
    :goto_26
    iget-object p0, p0, Lcom/meizu/settings/secretsmode/FlymeSecretsModeFragment;->mUsageStatsProxy:Lcom/meizu/settings/datareport/UsageStatsProxy;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "secrets_data_pic"

    invoke-virtual {p0, v2, v0, v1}, Lcom/meizu/settings/datareport/UsageStatsProxy;->reportData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private startSecretPasswordGuide()V
    .registers 7

    .line 595
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    const-string v0, "guide_type"

    const/4 v1, 0x1

    .line 596
    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 598
    const-class v0, Lcom/meizu/settings/secretsmode/FlymeSecretsModeGuideFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, -0x1

    const/16 v4, 0x7d1

    move-object v0, p0

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lcom/meizu/settings/SettingsPreferenceFragment;->startFragment(Landroid/app/Fragment;Ljava/lang/String;IILandroid/os/Bundle;)Z

    return-void
.end method

.method private startVideoPage()V
    .registers 5

    const-string v0, "FlymeSecretsModeFragment"

    .line 758
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.meizu.media.video.action.local"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "local"

    const/4 v3, 0x1

    .line 759
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 761
    :try_start_f
    invoke-virtual {p0, v1}, Landroid/preference/PreferenceFragment;->startActivity(Landroid/content/Intent;)V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_12} :catch_13

    goto :goto_2c

    :catch_13
    move-exception v1

    .line 763
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "startVideoPage e = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 765
    :goto_2c
    iget-object p0, p0, Lcom/meizu/settings/secretsmode/FlymeSecretsModeFragment;->mUsageStatsProxy:Lcom/meizu/settings/datareport/UsageStatsProxy;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "secrets_data_video"

    invoke-virtual {p0, v2, v0, v1}, Lcom/meizu/settings/datareport/UsageStatsProxy;->reportData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private unregisterCotentObserver()V
    .registers 2

    .line 223
    invoke-virtual {p0}, Lcom/meizu/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object p0, p0, Lcom/meizu/settings/secretsmode/FlymeSecretsModeFragment;->mContentObserver:Landroid/database/ContentObserver;

    .line 222
    invoke-static {v0, p0}, Lcom/meizu/settings/security/FlymeLockPasswordUtils;->unregisterSecretsModeRunningObserver(Landroid/content/ContentResolver;Landroid/database/ContentObserver;)V

    return-void
.end method

.method private updateCategory()V
    .registers 3

    .line 303
    iget-object v0, p0, Lcom/meizu/settings/secretsmode/FlymeSecretsModeFragment;->mSecretsDataCategory:Landroid/preference/PreferenceCategory;

    iget-boolean v1, p0, Lcom/meizu/settings/secretsmode/FlymeSecretsModeFragment;->isLocked:Z

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->setEnabled(Z)V

    .line 304
    iget-object v0, p0, Lcom/meizu/settings/secretsmode/FlymeSecretsModeFragment;->mSecretsOtherCategory:Landroid/preference/PreferenceCategory;

    iget-boolean p0, p0, Lcom/meizu/settings/secretsmode/FlymeSecretsModeFragment;->isLocked:Z

    invoke-virtual {v0, p0}, Landroid/preference/PreferenceCategory;->setEnabled(Z)V

    return-void
.end method

.method private updateFpSwitchPreference(ILandroid/content/Intent;)V
    .registers 6

    const/4 v0, 0x1

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-ne p1, v1, :cond_40

    if-eqz p2, :cond_40

    const-string p1, "extra_binded_fp_id"

    .line 656
    invoke-virtual {p2, p1, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    if-eq p1, v1, :cond_40

    if-nez p1, :cond_1e

    .line 660
    new-instance p1, Lcom/meizu/settings/fingerprint/FlymeFingerPrintImpl;

    iget-object p2, p0, Lcom/meizu/settings/secretsmode/FlymeSecretsModeFragment;->mContext:Landroid/content/Context;

    invoke-direct {p1, p2}, Lcom/meizu/settings/fingerprint/FlymeFingerPrintImpl;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1}, Lcom/meizu/settings/fingerprint/FlymeFingerPrintImpl;->getIds()[I

    move-result-object p1

    aget p1, p1, v2

    .line 662
    :cond_1e
    iget-object p2, p0, Lcom/meizu/settings/secretsmode/FlymeSecretsModeFragment;->mFlymeLockPasswordUtils:Lcom/meizu/settings/security/FlymeLockPasswordUtils;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1, v0}, Lcom/meizu/settings/security/FlymeLockPasswordUtils;->saveBindFingerprintId(Ljava/lang/String;I)V

    .line 665
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    const/4 p2, 0x0

    const v1, 0x7f1208eb

    invoke-static {p1, p2, v1, v2}, Lcom/meizu/settings/utils/MzUtils;->showFlymeToast(Landroid/content/Context;Ljava/lang/String;II)V

    .line 667
    iget-object p1, p0, Lcom/meizu/settings/secretsmode/FlymeSecretsModeFragment;->mUsageStatsProxy:Lcom/meizu/settings/datareport/UsageStatsProxy;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    const-string v1, "use_fingerprint"

    const-string v2, "FlymeSecretsModeFragment"

    invoke-virtual {p1, v1, v2, p2}, Lcom/meizu/settings/datareport/UsageStatsProxy;->reportData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_41

    :cond_40
    move v0, v2

    .line 670
    :goto_41
    iget-object p0, p0, Lcom/meizu/settings/secretsmode/FlymeSecretsModeFragment;->mUseFingerprintPref:Lcom/meizu/common/preference/SwitchPreference;

    invoke-virtual {p0, v0}, Lcom/meizu/common/preference/SwitchPreference;->setChecked(Z)V

    return-void
.end method

.method private updatePreference()V
    .registers 1

    .line 296
    invoke-direct {p0}, Lcom/meizu/settings/secretsmode/FlymeSecretsModeFragment;->updateScretsModeSwitchPref()V

    .line 297
    invoke-direct {p0}, Lcom/meizu/settings/secretsmode/FlymeSecretsModeFragment;->initResetPasswordPreference()V

    .line 298
    invoke-direct {p0}, Lcom/meizu/settings/secretsmode/FlymeSecretsModeFragment;->updateUseFingerprintPreference()V

    .line 299
    invoke-direct {p0}, Lcom/meizu/settings/secretsmode/FlymeSecretsModeFragment;->updateCategory()V

    return-void
.end method

.method private updateScretsModeSwitchPref()V
    .registers 3

    .line 287
    iget-object v0, p0, Lcom/meizu/settings/secretsmode/FlymeSecretsModeFragment;->mSecretsModeEnable:Lcom/meizu/settings/widget/GuideTipsSwitchPreference;

    iget-boolean v1, p0, Lcom/meizu/settings/secretsmode/FlymeSecretsModeFragment;->isLocked:Z

    invoke-virtual {v0, v1}, Lcom/meizu/common/preference/SwitchPreference;->setChecked(Z)V

    .line 289
    iget-boolean v0, p0, Lcom/meizu/settings/secretsmode/FlymeSecretsModeFragment;->mFromPrivacyShopDemo:Z

    if-eqz v0, :cond_21

    iget-boolean v0, p0, Lcom/meizu/settings/secretsmode/FlymeSecretsModeFragment;->isLocked:Z

    if-nez v0, :cond_21

    .line 290
    iget-object v0, p0, Lcom/meizu/settings/secretsmode/FlymeSecretsModeFragment;->mSecretsModeEnable:Lcom/meizu/settings/widget/GuideTipsSwitchPreference;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/meizu/settings/widget/GuideTipsSwitchPreference;->setGuideTipsVisiable(Z)V

    .line 291
    iget-object v0, p0, Lcom/meizu/settings/secretsmode/FlymeSecretsModeFragment;->mSecretsModeEnable:Lcom/meizu/settings/widget/GuideTipsSwitchPreference;

    const v1, 0x7f1206ac

    invoke-virtual {p0, v1}, Landroid/preference/PreferenceFragment;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/meizu/settings/widget/GuideTipsSwitchPreference;->setMessage(Ljava/lang/String;)V

    :cond_21
    return-void
.end method

.method private updateUseFingerprintPreference()V
    .registers 7

    .line 308
    iget-object v0, p0, Lcom/meizu/settings/secretsmode/FlymeSecretsModeFragment;->mUseFingerprintPref:Lcom/meizu/common/preference/SwitchPreference;

    if-nez v0, :cond_5

    return-void

    .line 312
    :cond_5
    new-instance v0, Lcom/meizu/settings/fingerprint/FlymeFingerPrintImpl;

    iget-object v1, p0, Lcom/meizu/settings/secretsmode/FlymeSecretsModeFragment;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/meizu/settings/fingerprint/FlymeFingerPrintImpl;-><init>(Landroid/content/Context;)V

    .line 313
    iget-object v1, p0, Lcom/meizu/settings/secretsmode/FlymeSecretsModeFragment;->mFlymeLockPasswordUtils:Lcom/meizu/settings/security/FlymeLockPasswordUtils;

    invoke-virtual {v1}, Lcom/meizu/settings/security/FlymeLockPasswordUtils;->getSecreteModeFingerprintId()Ljava/lang/String;

    move-result-object v1

    .line 314
    invoke-interface {v0}, Lcom/meizu/settings/fingerprint/FlymeIFingerPrint;->getIds()[I

    move-result-object v2

    .line 316
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v3, :cond_20

    :cond_1e
    :goto_1e
    move v1, v5

    goto :goto_37

    .line 320
    :cond_20
    :try_start_20
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eqz v2, :cond_1e

    .line 321
    invoke-static {v2, v1}, Lcom/android/internal/util/ArrayUtils;->contains([II)Z

    move-result v1
    :try_end_2e
    .catch Ljava/lang/NumberFormatException; {:try_start_20 .. :try_end_2e} :catch_32

    if-eqz v1, :cond_1e

    move v1, v4

    goto :goto_37

    :catch_32
    move-exception v1

    .line 327
    invoke-virtual {v1}, Ljava/lang/NumberFormatException;->printStackTrace()V

    goto :goto_1e

    .line 330
    :goto_37
    iget-object v3, p0, Lcom/meizu/settings/secretsmode/FlymeSecretsModeFragment;->mUseFingerprintPref:Lcom/meizu/common/preference/SwitchPreference;

    invoke-virtual {v3, v1}, Lcom/meizu/common/preference/SwitchPreference;->setChecked(Z)V

    if-nez v1, :cond_45

    .line 332
    iget-object v1, p0, Lcom/meizu/settings/secretsmode/FlymeSecretsModeFragment;->mFlymeLockPasswordUtils:Lcom/meizu/settings/security/FlymeLockPasswordUtils;

    const-string v3, ""

    invoke-virtual {v1, v3}, Lcom/meizu/settings/security/FlymeLockPasswordUtils;->saveSecreteModeFingerprintId(Ljava/lang/String;)V

    :cond_45
    if-eqz v2, :cond_52

    .line 336
    array-length v1, v2

    if-lez v1, :cond_52

    invoke-interface {v0}, Lcom/meizu/settings/fingerprint/FlymeIFingerPrint;->isScreenUnlockWithFingerprintEnabled()Z

    move-result v1

    if-nez v1, :cond_52

    move v1, v5

    goto :goto_53

    :cond_52
    move v1, v4

    .line 339
    :goto_53
    invoke-interface {v0}, Lcom/meizu/settings/fingerprint/FlymeIFingerPrint;->release()V

    .line 340
    iget-object v0, p0, Lcom/meizu/settings/secretsmode/FlymeSecretsModeFragment;->mUseFingerprintPref:Lcom/meizu/common/preference/SwitchPreference;

    iget-boolean p0, p0, Lcom/meizu/settings/secretsmode/FlymeSecretsModeFragment;->isLocked:Z

    if-eqz p0, :cond_5f

    if-eqz v1, :cond_5f

    goto :goto_60

    :cond_5f
    move v4, v5

    :goto_60
    invoke-virtual {v0, v4}, Landroid/preference/TwoStatePreference;->setEnabled(Z)V

    return-void
.end method


# virtual methods
.method public addPreferencesFromResource()V
    .registers 2

    const v0, 0x7f160070

    .line 172
    invoke-virtual {p0, v0}, Landroid/preference/PreferenceFragment;->addPreferencesFromResource(I)V

    return-void
.end method

.method public getPasswordFrom()I
    .registers 1

    const/4 p0, 0x4

    return p0
.end method

.method public isPasswordEnabled()Z
    .registers 3

    .line 781
    iget-object v0, p0, Lcom/meizu/settings/secretsmode/FlymeSecretsModeFragment;->mFlymeLockPasswordUtils:Lcom/meizu/settings/security/FlymeLockPasswordUtils;

    const/4 v1, 0x4

    .line 782
    invoke-virtual {v0, v1}, Lcom/meizu/settings/security/FlymeLockPasswordUtils;->isPasswordEnabled(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/meizu/settings/secretsmode/FlymeSecretsModeFragment;->isLocked:Z

    .line 783
    iget-boolean p0, p0, Lcom/meizu/settings/secretsmode/FlymeSecretsModeFragment;->isLocked:Z

    return p0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 11

    .line 675
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "requestCode:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "resultCode:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",data:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FlymeSecretsModeFragment"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x1

    if-nez p1, :cond_6f

    if-ne p2, v0, :cond_f4

    .line 678
    iget-boolean p1, p0, Lcom/meizu/settings/secretsmode/FlymeSecretsModeFragment;->mClearPrivatesDataWhenDisable:Z

    if-eqz p1, :cond_4f

    .line 679
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, -0x1

    const/4 v3, 0x0

    const v4, 0x7f1212be

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lcom/meizu/settings/utils/MzUtils;->showLoadingDialog(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;IZLandroid/content/DialogInterface$OnCancelListener;)Lcom/meizu/common/app/LoadingDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/meizu/settings/secretsmode/FlymeSecretsModeFragment;->mLoadingDialog:Lcom/meizu/common/app/LoadingDialog;

    .line 681
    iget-object p1, p0, Lcom/meizu/settings/secretsmode/FlymeSecretsModeFragment;->mSecretsControlHelper:Lcom/meizu/settings/secretsmode/FlymeSecretsControlHelper;

    iget-object p2, p0, Lcom/meizu/settings/secretsmode/FlymeSecretsModeFragment;->mCallback:Lcom/meizu/settings/secretsmode/FlymeSecretsControlHelper$FlymeSecretsControlCallback;

    invoke-virtual {p1, p2}, Lcom/meizu/settings/secretsmode/FlymeSecretsControlHelper;->setFlymeSecretsControlCallback(Lcom/meizu/settings/secretsmode/FlymeSecretsControlHelper$FlymeSecretsControlCallback;)V

    .line 682
    iget-object p0, p0, Lcom/meizu/settings/secretsmode/FlymeSecretsModeFragment;->mSecretsControlHelper:Lcom/meizu/settings/secretsmode/FlymeSecretsControlHelper;

    invoke-virtual {p0}, Lcom/meizu/settings/secretsmode/FlymeSecretsControlHelper;->clearSecrets()V

    goto/16 :goto_f4

    .line 684
    :cond_4f
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, -0x1

    const/4 v3, 0x0

    const v4, 0x7f1212cc

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lcom/meizu/settings/utils/MzUtils;->showLoadingDialog(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;IZLandroid/content/DialogInterface$OnCancelListener;)Lcom/meizu/common/app/LoadingDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/meizu/settings/secretsmode/FlymeSecretsModeFragment;->mLoadingDialog:Lcom/meizu/common/app/LoadingDialog;

    .line 686
    iget-object p1, p0, Lcom/meizu/settings/secretsmode/FlymeSecretsModeFragment;->mSecretsControlHelper:Lcom/meizu/settings/secretsmode/FlymeSecretsControlHelper;

    iget-object p2, p0, Lcom/meizu/settings/secretsmode/FlymeSecretsModeFragment;->mCallback:Lcom/meizu/settings/secretsmode/FlymeSecretsControlHelper$FlymeSecretsControlCallback;

    invoke-virtual {p1, p2}, Lcom/meizu/settings/secretsmode/FlymeSecretsControlHelper;->setFlymeSecretsControlCallback(Lcom/meizu/settings/secretsmode/FlymeSecretsControlHelper$FlymeSecretsControlCallback;)V

    .line 687
    iget-object p0, p0, Lcom/meizu/settings/secretsmode/FlymeSecretsModeFragment;->mSecretsControlHelper:Lcom/meizu/settings/secretsmode/FlymeSecretsControlHelper;

    invoke-virtual {p0}, Lcom/meizu/settings/secretsmode/FlymeSecretsControlHelper;->exportSecrets()V

    goto/16 :goto_f4

    :cond_6f
    const/4 v2, 0x1

    if-ne p1, v2, :cond_79

    if-ne p2, v0, :cond_79

    .line 692
    invoke-direct {p0}, Lcom/meizu/settings/secretsmode/FlymeSecretsModeFragment;->startCreatePassword()V

    goto/16 :goto_f4

    :cond_79
    const/16 v3, 0x3e8

    if-ne p1, v3, :cond_93

    if-ne p2, v0, :cond_93

    .line 695
    iget-object p1, p0, Lcom/meizu/settings/secretsmode/FlymeSecretsModeFragment;->mFlymeLockPasswordUtils:Lcom/meizu/settings/security/FlymeLockPasswordUtils;

    const-string p2, ""

    invoke-virtual {p1, p2}, Lcom/meizu/settings/security/FlymeLockPasswordUtils;->saveSecreteModeFingerprintId(Ljava/lang/String;)V

    .line 696
    iget-object p0, p0, Lcom/meizu/settings/secretsmode/FlymeSecretsModeFragment;->mUsageStatsProxy:Lcom/meizu/settings/datareport/UsageStatsProxy;

    const/4 p1, 0x0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string p2, "use_fingerprint"

    invoke-virtual {p0, p2, v1, p1}, Lcom/meizu/settings/datareport/UsageStatsProxy;->reportData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_f4

    :cond_93
    const-string v3, "secrets_mode_enable"

    const/4 v4, 0x3

    if-ne p1, v4, :cond_b6

    if-ne p2, v0, :cond_ae

    .line 699
    iget-object p1, p0, Lcom/meizu/settings/secretsmode/FlymeSecretsModeFragment;->mFlymeLockPasswordUtils:Lcom/meizu/settings/security/FlymeLockPasswordUtils;

    invoke-virtual {p1, v2}, Lcom/meizu/settings/security/FlymeLockPasswordUtils;->setSecretsModeEnabled(Z)V

    .line 700
    iget-object p1, p0, Lcom/meizu/settings/secretsmode/FlymeSecretsModeFragment;->mSecretsControlHelper:Lcom/meizu/settings/secretsmode/FlymeSecretsControlHelper;

    invoke-virtual {p1}, Lcom/meizu/settings/secretsmode/FlymeSecretsControlHelper;->startService()V

    .line 701
    iget-object p0, p0, Lcom/meizu/settings/secretsmode/FlymeSecretsModeFragment;->mUsageStatsProxy:Lcom/meizu/settings/datareport/UsageStatsProxy;

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v3, v1, p1}, Lcom/meizu/settings/datareport/UsageStatsProxy;->reportData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_f4

    .line 703
    :cond_ae
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_f4

    :cond_b6
    const/4 v5, 0x4

    if-ne p1, v5, :cond_cf

    if-ne p2, v0, :cond_cf

    .line 707
    iget-object p1, p0, Lcom/meizu/settings/secretsmode/FlymeSecretsModeFragment;->mFlymeLockPasswordUtils:Lcom/meizu/settings/security/FlymeLockPasswordUtils;

    invoke-virtual {p1, v2}, Lcom/meizu/settings/security/FlymeLockPasswordUtils;->setSecretsModeEnabled(Z)V

    .line 708
    iget-object p1, p0, Lcom/meizu/settings/secretsmode/FlymeSecretsModeFragment;->mSecretsControlHelper:Lcom/meizu/settings/secretsmode/FlymeSecretsControlHelper;

    invoke-virtual {p1}, Lcom/meizu/settings/secretsmode/FlymeSecretsControlHelper;->startService()V

    .line 709
    iget-object p0, p0, Lcom/meizu/settings/secretsmode/FlymeSecretsModeFragment;->mUsageStatsProxy:Lcom/meizu/settings/datareport/UsageStatsProxy;

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v3, v1, p1}, Lcom/meizu/settings/datareport/UsageStatsProxy;->reportData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_f4

    :cond_cf
    const/16 v1, 0x3e9

    if-ne p1, v1, :cond_d7

    .line 711
    invoke-direct {p0, p2, p3}, Lcom/meizu/settings/secretsmode/FlymeSecretsModeFragment;->updateFpSwitchPreference(ILandroid/content/Intent;)V

    goto :goto_f4

    :cond_d7
    const/16 v1, 0x7d0

    if-ne p1, v1, :cond_e1

    if-ne p2, v0, :cond_e1

    .line 714
    invoke-direct {p0, v4}, Lcom/meizu/settings/secretsmode/FlymeSecretsModeFragment;->checkAndEnableSecretMode(I)V

    goto :goto_f4

    :cond_e1
    const/16 v1, 0x7d3

    if-ne p1, v1, :cond_f4

    if-ne p2, v0, :cond_f4

    if-eqz p3, :cond_f4

    const-string p1, "pick_result_extra"

    .line 718
    invoke-virtual {p3, p1}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    .line 719
    iget-object p0, p0, Lcom/meizu/settings/secretsmode/FlymeSecretsModeFragment;->mSecretsControlHelper:Lcom/meizu/settings/secretsmode/FlymeSecretsControlHelper;

    invoke-virtual {p0, p1}, Lcom/meizu/settings/secretsmode/FlymeSecretsControlHelper;->initSecretApps(Ljava/util/ArrayList;)V

    :cond_f4
    :goto_f4
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 2

    .line 160
    invoke-super {p0, p1}, Lcom/meizu/settings/security/FlymeBasePasswordFragment;->onCreate(Landroid/os/Bundle;)V

    .line 161
    invoke-direct {p0}, Lcom/meizu/settings/secretsmode/FlymeSecretsModeFragment;->init()V

    return-void
.end method

.method public onDestroy()V
    .registers 2

    .line 255
    invoke-super {p0}, Lcom/meizu/settings/SettingsPreferenceFragment;->onDestroy()V

    .line 256
    invoke-direct {p0}, Lcom/meizu/settings/secretsmode/FlymeSecretsModeFragment;->unregisterCotentObserver()V

    .line 257
    iget-object p0, p0, Lcom/meizu/settings/secretsmode/FlymeSecretsModeFragment;->mSecretsControlHelper:Lcom/meizu/settings/secretsmode/FlymeSecretsControlHelper;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/meizu/settings/secretsmode/FlymeSecretsControlHelper;->setFlymeSecretsControlCallback(Lcom/meizu/settings/secretsmode/FlymeSecretsControlHelper$FlymeSecretsControlCallback;)V

    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .registers 7

    .line 399
    iget-object v0, p0, Lcom/meizu/settings/secretsmode/FlymeSecretsModeFragment;->mSecretsModeEnable:Lcom/meizu/settings/widget/GuideTipsSwitchPreference;

    if-ne p2, v0, :cond_9

    .line 400
    invoke-direct {p0}, Lcom/meizu/settings/secretsmode/FlymeSecretsModeFragment;->handleEnableSecretMode()V

    goto/16 :goto_88

    .line 401
    :cond_9
    iget-object v0, p0, Lcom/meizu/settings/secretsmode/FlymeSecretsModeFragment;->mModifyPasswordPref:Landroid/preference/Preference;

    const/4 v1, 0x1

    if-ne p2, v0, :cond_13

    .line 402
    invoke-direct {p0, v1}, Lcom/meizu/settings/secretsmode/FlymeSecretsModeFragment;->startConfirmPassword(I)V

    goto/16 :goto_88

    .line 403
    :cond_13
    iget-object v0, p0, Lcom/meizu/settings/secretsmode/FlymeSecretsModeFragment;->mUseFingerprintPref:Lcom/meizu/common/preference/SwitchPreference;

    if-ne p2, v0, :cond_1c

    .line 404
    invoke-direct {p0}, Lcom/meizu/settings/secretsmode/FlymeSecretsModeFragment;->handleUseFp()V

    goto/16 :goto_88

    .line 405
    :cond_1c
    iget-object v0, p0, Lcom/meizu/settings/secretsmode/FlymeSecretsModeFragment;->mSecretsModeCamera:Lcom/meizu/common/preference/SwitchPreference;

    const-string v2, "FlymeSecretsModeFragment"

    const/4 v3, 0x0

    if-ne p2, v0, :cond_40

    .line 406
    invoke-virtual {v0}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_2a

    goto :goto_2b

    :cond_2a
    move v1, v3

    .line 407
    :goto_2b
    invoke-virtual {p0}, Lcom/meizu/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "mz_private_camera_mode"

    invoke-static {v0, v3, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 409
    iget-object v0, p0, Lcom/meizu/settings/secretsmode/FlymeSecretsModeFragment;->mUsageStatsProxy:Lcom/meizu/settings/datareport/UsageStatsProxy;

    .line 410
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v3, "secrets_space_secrets_camera"

    .line 409
    invoke-virtual {v0, v3, v2, v1}, Lcom/meizu/settings/datareport/UsageStatsProxy;->reportData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_88

    .line 411
    :cond_40
    iget-object v0, p0, Lcom/meizu/settings/secretsmode/FlymeSecretsModeFragment;->mSecretsModeBrowserClean:Lcom/meizu/common/preference/SwitchPreference;

    if-ne p2, v0, :cond_61

    .line 412
    invoke-virtual {v0}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_4b

    goto :goto_4c

    :cond_4b
    move v1, v3

    .line 413
    :goto_4c
    invoke-virtual {p0}, Lcom/meizu/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "mz_private_browser_mode"

    invoke-static {v0, v3, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 415
    iget-object v0, p0, Lcom/meizu/settings/secretsmode/FlymeSecretsModeFragment;->mUsageStatsProxy:Lcom/meizu/settings/datareport/UsageStatsProxy;

    .line 416
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v3, "secrets_space_browser"

    .line 415
    invoke-virtual {v0, v3, v2, v1}, Lcom/meizu/settings/datareport/UsageStatsProxy;->reportData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_88

    .line 417
    :cond_61
    iget-object v0, p0, Lcom/meizu/settings/secretsmode/FlymeSecretsModeFragment;->mSecretContactPref:Landroid/preference/Preference;

    if-ne p2, v0, :cond_69

    .line 418
    invoke-direct {p0}, Lcom/meizu/settings/secretsmode/FlymeSecretsModeFragment;->startContactPage()V

    goto :goto_88

    .line 419
    :cond_69
    iget-object v0, p0, Lcom/meizu/settings/secretsmode/FlymeSecretsModeFragment;->mSecretAppPref:Landroid/preference/Preference;

    if-ne p2, v0, :cond_71

    .line 420
    invoke-direct {p0}, Lcom/meizu/settings/secretsmode/FlymeSecretsModeFragment;->startAppPage()V

    goto :goto_88

    .line 421
    :cond_71
    iget-object v0, p0, Lcom/meizu/settings/secretsmode/FlymeSecretsModeFragment;->mSecretPhotoPref:Landroid/preference/Preference;

    if-ne p2, v0, :cond_79

    .line 422
    invoke-direct {p0}, Lcom/meizu/settings/secretsmode/FlymeSecretsModeFragment;->startPicPage()V

    goto :goto_88

    .line 423
    :cond_79
    iget-object v0, p0, Lcom/meizu/settings/secretsmode/FlymeSecretsModeFragment;->mSecretVideoPref:Landroid/preference/Preference;

    if-ne p2, v0, :cond_81

    .line 424
    invoke-direct {p0}, Lcom/meizu/settings/secretsmode/FlymeSecretsModeFragment;->startVideoPage()V

    goto :goto_88

    .line 425
    :cond_81
    iget-object v0, p0, Lcom/meizu/settings/secretsmode/FlymeSecretsModeFragment;->mSecretFilePref:Landroid/preference/Preference;

    if-ne p2, v0, :cond_88

    .line 426
    invoke-direct {p0}, Lcom/meizu/settings/secretsmode/FlymeSecretsModeFragment;->startFilePage()V

    .line 428
    :cond_88
    :goto_88
    invoke-super {p0, p1, p2}, Lcom/meizu/settings/security/FlymeBasePasswordFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result p0

    return p0
.end method

.method public onResume()V
    .registers 1

    .line 262
    invoke-super {p0}, Lcom/meizu/settings/security/FlymeBasePasswordFragment;->onResume()V

    .line 263
    invoke-direct {p0}, Lcom/meizu/settings/secretsmode/FlymeSecretsModeFragment;->updatePreference()V

    .line 265
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object p0

    invoke-static {p0}, Lcom/meizu/settings/utils/MzUtils;->finishActivityInGuestMode(Landroid/app/Activity;)V

    return-void
.end method

.method public onStart()V
    .registers 2

    .line 166
    invoke-super {p0}, Lcom/meizu/settings/core/lifecycle/ObservablePreferenceFragment;->onStart()V

    .line 167
    iget-object p0, p0, Lcom/meizu/settings/secretsmode/FlymeSecretsModeFragment;->mUsageStatsProxy:Lcom/meizu/settings/datareport/UsageStatsProxy;

    const-string v0, "secret_mode"

    invoke-virtual {p0, v0}, Lcom/meizu/settings/datareport/UsageStatsProxy;->onPageStart(Ljava/lang/String;)V

    return-void
.end method

.method public onStop()V
    .registers 2

    .line 249
    invoke-super {p0}, Lcom/meizu/settings/SettingsPreferenceFragment;->onStop()V

    .line 250
    iget-object p0, p0, Lcom/meizu/settings/secretsmode/FlymeSecretsModeFragment;->mUsageStatsProxy:Lcom/meizu/settings/datareport/UsageStatsProxy;

    const-string v0, "secret_mode"

    invoke-virtual {p0, v0}, Lcom/meizu/settings/datareport/UsageStatsProxy;->onPageStop(Ljava/lang/String;)V

    return-void
.end method

.method public supportAssociateAccount()Z
    .registers 1

    const/4 p0, 0x1

    return p0
.end method
