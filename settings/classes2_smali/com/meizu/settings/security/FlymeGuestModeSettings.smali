.class public Lcom/meizu/settings/security/FlymeGuestModeSettings;
.super Lcom/meizu/settings/SettingsPreferenceFragment;
.source "FlymeGuestModeSettings.java"


# instance fields
.field private mAllowCallAndSMSCheckBoxPreference:Landroid/preference/CheckBoxPreference;

.field private mAllowInstallAppCheckBoxPreference:Landroid/preference/CheckBoxPreference;

.field private mCloseGuestModeWarningDialog:Landroid/app/AlertDialog;

.field private mDefaultGuestRestrictions:Landroid/os/Bundle;

.field private mEnterPasswordDialog:Landroid/app/AlertDialog;

.field private mFlymeIFingerPrint:Lcom/meizu/settings/fingerprint/FlymeIFingerPrint;

.field private mFlymeLockPasswordUtils:Lcom/meizu/settings/security/FlymeLockPasswordUtils;

.field private mGuestFingerprintSwitchPreference:Lcom/meizu/common/preference/SwitchPreference;

.field private mGuestModePasswordPreference:Landroid/preference/Preference;

.field private mGuestModeSwitchPreference:Lcom/meizu/common/preference/SwitchPreference;

.field private mGuestPassword:Ljava/lang/String;

.field private mGuestUserHandle:Landroid/os/UserHandle;

.field private mLoadingDialog:Lcom/meizu/common/app/LoadingDialog;

.field private mNeedRestoreSwitchState:Z

.field private mPasswordEditText:Landroid/widget/EditText;

.field private mPermissionCategory:Landroid/preference/PreferenceCategory;

.field private mProgressDialogPreference:Lcom/meizu/settings/widget/ProgressDialogPreference;

.field private mUsageStatsProxy:Lcom/meizu/settings/datareport/UsageStatsProxy;

.field private mUseFpPreferenceEnabled:Z

.field private mUserManager:Landroid/os/UserManager;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 57
    invoke-direct {p0}, Lcom/meizu/settings/SettingsPreferenceFragment;-><init>()V

    const/4 v0, 0x0

    .line 82
    iput-object v0, p0, Lcom/meizu/settings/security/FlymeGuestModeSettings;->mEnterPasswordDialog:Landroid/app/AlertDialog;

    const/4 v0, 0x1

    .line 93
    iput-boolean v0, p0, Lcom/meizu/settings/security/FlymeGuestModeSettings;->mUseFpPreferenceEnabled:Z

    return-void
.end method

.method static synthetic access$000(Lcom/meizu/settings/security/FlymeGuestModeSettings;)Lcom/meizu/common/preference/SwitchPreference;
    .registers 1

    .line 57
    iget-object p0, p0, Lcom/meizu/settings/security/FlymeGuestModeSettings;->mGuestModeSwitchPreference:Lcom/meizu/common/preference/SwitchPreference;

    return-object p0
.end method

.method static synthetic access$100(Lcom/meizu/settings/security/FlymeGuestModeSettings;)Z
    .registers 1

    .line 57
    iget-boolean p0, p0, Lcom/meizu/settings/security/FlymeGuestModeSettings;->mNeedRestoreSwitchState:Z

    return p0
.end method

.method static synthetic access$1000(Lcom/meizu/settings/security/FlymeGuestModeSettings;)V
    .registers 1

    .line 57
    invoke-direct {p0}, Lcom/meizu/settings/security/FlymeGuestModeSettings;->updatePreferenceStatus()V

    return-void
.end method

.method static synthetic access$102(Lcom/meizu/settings/security/FlymeGuestModeSettings;Z)Z
    .registers 2

    .line 57
    iput-boolean p1, p0, Lcom/meizu/settings/security/FlymeGuestModeSettings;->mNeedRestoreSwitchState:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/meizu/settings/security/FlymeGuestModeSettings;Ljava/lang/String;)V
    .registers 2

    .line 57
    invoke-direct {p0, p1}, Lcom/meizu/settings/security/FlymeGuestModeSettings;->reportGuestModeSwitchState(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/meizu/settings/security/FlymeGuestModeSettings;)V
    .registers 1

    .line 57
    invoke-direct {p0}, Lcom/meizu/settings/security/FlymeGuestModeSettings;->deleteGuestUser()V

    return-void
.end method

.method static synthetic access$1300(Lcom/meizu/settings/security/FlymeGuestModeSettings;)Lcom/meizu/common/preference/SwitchPreference;
    .registers 1

    .line 57
    iget-object p0, p0, Lcom/meizu/settings/security/FlymeGuestModeSettings;->mGuestFingerprintSwitchPreference:Lcom/meizu/common/preference/SwitchPreference;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/meizu/settings/security/FlymeGuestModeSettings;)V
    .registers 1

    .line 57
    invoke-direct {p0}, Lcom/meizu/settings/security/FlymeGuestModeSettings;->initGuestUseRestrictions()V

    return-void
.end method

.method static synthetic access$1500(Lcom/meizu/settings/security/FlymeGuestModeSettings;)Landroid/widget/EditText;
    .registers 1

    .line 57
    iget-object p0, p0, Lcom/meizu/settings/security/FlymeGuestModeSettings;->mPasswordEditText:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic access$1600(Lcom/meizu/settings/security/FlymeGuestModeSettings;)Landroid/app/AlertDialog;
    .registers 1

    .line 57
    iget-object p0, p0, Lcom/meizu/settings/security/FlymeGuestModeSettings;->mEnterPasswordDialog:Landroid/app/AlertDialog;

    return-object p0
.end method

.method static synthetic access$1700(Lcom/meizu/settings/security/FlymeGuestModeSettings;)Landroid/preference/Preference;
    .registers 1

    .line 57
    iget-object p0, p0, Lcom/meizu/settings/security/FlymeGuestModeSettings;->mGuestModePasswordPreference:Landroid/preference/Preference;

    return-object p0
.end method

.method static synthetic access$1802(Lcom/meizu/settings/security/FlymeGuestModeSettings;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 57
    iput-object p1, p0, Lcom/meizu/settings/security/FlymeGuestModeSettings;->mGuestPassword:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$200(Lcom/meizu/settings/security/FlymeGuestModeSettings;)Lcom/meizu/settings/security/FlymeLockPasswordUtils;
    .registers 1

    .line 57
    iget-object p0, p0, Lcom/meizu/settings/security/FlymeGuestModeSettings;->mFlymeLockPasswordUtils:Lcom/meizu/settings/security/FlymeLockPasswordUtils;

    return-object p0
.end method

.method static synthetic access$302(Lcom/meizu/settings/security/FlymeGuestModeSettings;Landroid/os/Bundle;)Landroid/os/Bundle;
    .registers 2

    .line 57
    iput-object p1, p0, Lcom/meizu/settings/security/FlymeGuestModeSettings;->mDefaultGuestRestrictions:Landroid/os/Bundle;

    return-object p1
.end method

.method static synthetic access$400(Lcom/meizu/settings/security/FlymeGuestModeSettings;)Landroid/os/UserHandle;
    .registers 1

    .line 57
    iget-object p0, p0, Lcom/meizu/settings/security/FlymeGuestModeSettings;->mGuestUserHandle:Landroid/os/UserHandle;

    return-object p0
.end method

.method static synthetic access$402(Lcom/meizu/settings/security/FlymeGuestModeSettings;Landroid/os/UserHandle;)Landroid/os/UserHandle;
    .registers 2

    .line 57
    iput-object p1, p0, Lcom/meizu/settings/security/FlymeGuestModeSettings;->mGuestUserHandle:Landroid/os/UserHandle;

    return-object p1
.end method

.method static synthetic access$500(Lcom/meizu/settings/security/FlymeGuestModeSettings;)Landroid/os/UserManager;
    .registers 1

    .line 57
    iget-object p0, p0, Lcom/meizu/settings/security/FlymeGuestModeSettings;->mUserManager:Landroid/os/UserManager;

    return-object p0
.end method

.method static synthetic access$600(Lcom/meizu/settings/security/FlymeGuestModeSettings;)V
    .registers 1

    .line 57
    invoke-direct {p0}, Lcom/meizu/settings/security/FlymeGuestModeSettings;->createGuest()V

    return-void
.end method

.method static synthetic access$700(Lcom/meizu/settings/security/FlymeGuestModeSettings;)V
    .registers 1

    .line 57
    invoke-direct {p0}, Lcom/meizu/settings/security/FlymeGuestModeSettings;->showClearDataFailedDlg()V

    return-void
.end method

.method static synthetic access$800(Lcom/meizu/settings/security/FlymeGuestModeSettings;Ljava/lang/String;)V
    .registers 2

    .line 57
    invoke-direct {p0, p1}, Lcom/meizu/settings/security/FlymeGuestModeSettings;->reportClearGuestModeData(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$900(Lcom/meizu/settings/security/FlymeGuestModeSettings;)Lcom/meizu/common/app/LoadingDialog;
    .registers 1

    .line 57
    iget-object p0, p0, Lcom/meizu/settings/security/FlymeGuestModeSettings;->mLoadingDialog:Lcom/meizu/common/app/LoadingDialog;

    return-object p0
.end method

.method static synthetic access$902(Lcom/meizu/settings/security/FlymeGuestModeSettings;Lcom/meizu/common/app/LoadingDialog;)Lcom/meizu/common/app/LoadingDialog;
    .registers 2

    .line 57
    iput-object p1, p0, Lcom/meizu/settings/security/FlymeGuestModeSettings;->mLoadingDialog:Lcom/meizu/common/app/LoadingDialog;

    return-object p1
.end method

.method private createGuest()V
    .registers 2

    .line 534
    new-instance v0, Lcom/meizu/settings/security/FlymeGuestModeSettings$8;

    invoke-direct {v0, p0}, Lcom/meizu/settings/security/FlymeGuestModeSettings$8;-><init>(Lcom/meizu/settings/security/FlymeGuestModeSettings;)V

    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/Void;

    .line 555
    invoke-virtual {v0, p0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method private createGuestPassword()Ljava/lang/String;
    .registers 9

    .line 671
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    const-string v1, "1234"

    .line 674
    :goto_7
    iget-object v2, p0, Lcom/meizu/settings/security/FlymeGuestModeSettings;->mFlymeLockPasswordUtils:Lcom/meizu/settings/security/FlymeLockPasswordUtils;

    const/4 v3, 0x3

    invoke-virtual {v2, v1, v3}, Lcom/meizu/settings/security/FlymeLockPasswordUtils;->checkPasswordLegal(Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_2e

    const/4 v3, 0x2

    if-ne v2, v3, :cond_14

    goto :goto_2e

    .line 680
    :cond_14
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0xa

    invoke-virtual {v0, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    add-int/lit16 v2, v2, 0x3e8

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_7

    .line 684
    :cond_2e
    :goto_2e
    iget-object v2, p0, Lcom/meizu/settings/security/FlymeGuestModeSettings;->mFlymeLockPasswordUtils:Lcom/meizu/settings/security/FlymeLockPasswordUtils;

    const/4 v3, 0x3

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v5, v1

    invoke-virtual/range {v2 .. v7}, Lcom/meizu/settings/security/FlymeLockPasswordUtils;->savePassword(IILjava/lang/String;Ljava/lang/String;Z)V

    return-object v1
.end method

.method private deleteGuestUser()V
    .registers 2

    .line 326
    new-instance v0, Lcom/meizu/settings/security/FlymeGuestModeSettings$3;

    invoke-direct {v0, p0}, Lcom/meizu/settings/security/FlymeGuestModeSettings$3;-><init>(Lcom/meizu/settings/security/FlymeGuestModeSettings;)V

    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/Void;

    .line 366
    invoke-virtual {v0, p0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method private handleGuestModeSwitchClick(Z)V
    .registers 3

    if-eqz p1, :cond_1a

    .line 312
    iget-object p1, p0, Lcom/meizu/settings/security/FlymeGuestModeSettings;->mGuestUserHandle:Landroid/os/UserHandle;

    if-eqz p1, :cond_10

    .line 314
    iget-object p1, p0, Lcom/meizu/settings/security/FlymeGuestModeSettings;->mFlymeLockPasswordUtils:Lcom/meizu/settings/security/FlymeLockPasswordUtils;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/meizu/settings/security/FlymeLockPasswordUtils;->setGuestModeEnalbed(Z)V

    .line 315
    invoke-direct {p0}, Lcom/meizu/settings/security/FlymeGuestModeSettings;->updatePreferenceStatus()V

    goto :goto_1d

    .line 317
    :cond_10
    iget-object p1, p0, Lcom/meizu/settings/security/FlymeGuestModeSettings;->mGuestModeSwitchPreference:Lcom/meizu/common/preference/SwitchPreference;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/preference/TwoStatePreference;->setEnabled(Z)V

    .line 318
    invoke-direct {p0}, Lcom/meizu/settings/security/FlymeGuestModeSettings;->createGuest()V

    goto :goto_1d

    .line 321
    :cond_1a
    invoke-direct {p0}, Lcom/meizu/settings/security/FlymeGuestModeSettings;->showWarningDialog()V

    :goto_1d
    return-void
.end method

.method private handleUseFp()V
    .registers 4

    .line 494
    iget-object v0, p0, Lcom/meizu/settings/security/FlymeGuestModeSettings;->mGuestFingerprintSwitchPreference:Lcom/meizu/common/preference/SwitchPreference;

    invoke-virtual {v0}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_3d

    .line 495
    iget-object v0, p0, Lcom/meizu/settings/security/FlymeGuestModeSettings;->mFlymeIFingerPrint:Lcom/meizu/settings/fingerprint/FlymeIFingerPrint;

    invoke-interface {v0}, Lcom/meizu/settings/fingerprint/FlymeIFingerPrint;->getIds()[I

    move-result-object v0

    if-eqz v0, :cond_39

    .line 497
    array-length v1, v0

    const/4 v2, 0x1

    if-le v1, v2, :cond_39

    array-length v0, v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_25

    iget-object v0, p0, Lcom/meizu/settings/security/FlymeGuestModeSettings;->mFlymeLockPasswordUtils:Lcom/meizu/settings/security/FlymeLockPasswordUtils;

    .line 498
    invoke-virtual {v0}, Lcom/meizu/settings/security/FlymeLockPasswordUtils;->getSecreteModeFingerprintId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_25

    goto :goto_39

    .line 502
    :cond_25
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 503
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lcom/meizu/settings/fingerprint/FlymeChooseFpDialog;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const/16 v1, 0x3e9

    .line 504
    invoke-virtual {p0, v0, v1}, Landroid/preference/PreferenceFragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_44

    .line 499
    :cond_39
    :goto_39
    invoke-direct {p0}, Lcom/meizu/settings/security/FlymeGuestModeSettings;->showEnrollFingerprintDialog()V

    goto :goto_44

    .line 508
    :cond_3d
    iget-object p0, p0, Lcom/meizu/settings/security/FlymeGuestModeSettings;->mFlymeLockPasswordUtils:Lcom/meizu/settings/security/FlymeLockPasswordUtils;

    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/meizu/settings/security/FlymeLockPasswordUtils;->saveGuestModeFingerprintId(Ljava/lang/String;)V

    :goto_44
    return-void
.end method

.method private init()V
    .registers 3

    .line 107
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "user"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, p0, Lcom/meizu/settings/security/FlymeGuestModeSettings;->mUserManager:Landroid/os/UserManager;

    .line 108
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/meizu/settings/security/FlymeLockPasswordUtils;->getInstance(Landroid/content/Context;)Lcom/meizu/settings/security/FlymeLockPasswordUtils;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/settings/security/FlymeGuestModeSettings;->mFlymeLockPasswordUtils:Lcom/meizu/settings/security/FlymeLockPasswordUtils;

    .line 109
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/meizu/settings/datareport/UsageStatsProxy;->getInstance(Landroid/content/Context;)Lcom/meizu/settings/datareport/UsageStatsProxy;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/settings/security/FlymeGuestModeSettings;->mUsageStatsProxy:Lcom/meizu/settings/datareport/UsageStatsProxy;

    .line 111
    invoke-direct {p0}, Lcom/meizu/settings/security/FlymeGuestModeSettings;->initGuestUser()V

    .line 112
    invoke-direct {p0}, Lcom/meizu/settings/security/FlymeGuestModeSettings;->initPreference()V

    .line 114
    iget-object v0, p0, Lcom/meizu/settings/security/FlymeGuestModeSettings;->mFlymeLockPasswordUtils:Lcom/meizu/settings/security/FlymeLockPasswordUtils;

    invoke-virtual {v0}, Lcom/meizu/settings/security/FlymeLockPasswordUtils;->isScreenPasswordEnalbed()Z

    move-result v0

    if-nez v0, :cond_33

    .line 115
    invoke-direct {p0}, Lcom/meizu/settings/security/FlymeGuestModeSettings;->startEnterPasswordFragment()V

    :cond_33
    return-void
.end method

.method private initClearGuestDataPreference()V
    .registers 11

    const-string v0, "clear_guest_data"

    .line 225
    invoke-virtual {p0, v0}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/meizu/settings/widget/ProgressDialogPreference;

    iput-object v0, p0, Lcom/meizu/settings/security/FlymeGuestModeSettings;->mProgressDialogPreference:Lcom/meizu/settings/widget/ProgressDialogPreference;

    .line 226
    iget-object v1, p0, Lcom/meizu/settings/security/FlymeGuestModeSettings;->mProgressDialogPreference:Lcom/meizu/settings/widget/ProgressDialogPreference;

    const/4 v2, -0x1

    const v3, 0x7f1204e7

    const v4, 0x7f1204de

    const v5, 0x7f120442

    const v6, 0x7f121376

    const/4 v7, -0x1

    const/4 v8, -0x1

    const/4 v9, 0x0

    invoke-virtual/range {v1 .. v9}, Lcom/meizu/settings/widget/ProgressDialogPreference;->init(IIIIIIIZ)V

    .line 229
    iget-object v0, p0, Lcom/meizu/settings/security/FlymeGuestModeSettings;->mProgressDialogPreference:Lcom/meizu/settings/widget/ProgressDialogPreference;

    new-instance v1, Lcom/meizu/settings/security/FlymeGuestModeSettings$1;

    invoke-direct {v1, p0}, Lcom/meizu/settings/security/FlymeGuestModeSettings$1;-><init>(Lcom/meizu/settings/security/FlymeGuestModeSettings;)V

    invoke-virtual {v0, v1}, Lcom/meizu/settings/widget/ProgressDialogPreference;->setOnProgressListener(Lcom/meizu/settings/widget/ProgressDialogPreference$OnProgressListener;)V

    .line 268
    iget-object v0, p0, Lcom/meizu/settings/security/FlymeGuestModeSettings;->mProgressDialogPreference:Lcom/meizu/settings/widget/ProgressDialogPreference;

    new-instance v1, Lcom/meizu/settings/security/FlymeGuestModeSettings$2;

    invoke-direct {v1, p0}, Lcom/meizu/settings/security/FlymeGuestModeSettings$2;-><init>(Lcom/meizu/settings/security/FlymeGuestModeSettings;)V

    invoke-virtual {v0, v1}, Lcom/meizu/settings/widget/ProgressDialogPreference;->setOnDialogStateListener(Lcom/meizu/settings/widget/ProgressDialogPreference$OnDialogStateListener;)V

    return-void
.end method

.method private initGuestUseRestrictions()V
    .registers 6

    .line 559
    iget-object v0, p0, Lcom/meizu/settings/security/FlymeGuestModeSettings;->mDefaultGuestRestrictions:Landroid/os/Bundle;

    if-nez v0, :cond_e

    .line 560
    iget-object v0, p0, Lcom/meizu/settings/security/FlymeGuestModeSettings;->mFlymeLockPasswordUtils:Lcom/meizu/settings/security/FlymeLockPasswordUtils;

    iget-object v1, p0, Lcom/meizu/settings/security/FlymeGuestModeSettings;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0, v1}, Lcom/meizu/settings/security/FlymeLockPasswordUtils;->getGuestRestrictions(Landroid/os/UserManager;)Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/settings/security/FlymeGuestModeSettings;->mDefaultGuestRestrictions:Landroid/os/Bundle;

    .line 562
    :cond_e
    iget-object v0, p0, Lcom/meizu/settings/security/FlymeGuestModeSettings;->mDefaultGuestRestrictions:Landroid/os/Bundle;

    invoke-virtual {v0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 563
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_18
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_33

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 564
    iget-object v2, p0, Lcom/meizu/settings/security/FlymeGuestModeSettings;->mUserManager:Landroid/os/UserManager;

    iget-object v3, p0, Lcom/meizu/settings/security/FlymeGuestModeSettings;->mDefaultGuestRestrictions:Landroid/os/Bundle;

    const/4 v4, 0x0

    invoke-virtual {v3, v1, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    iget-object v4, p0, Lcom/meizu/settings/security/FlymeGuestModeSettings;->mGuestUserHandle:Landroid/os/UserHandle;

    invoke-virtual {v2, v1, v3, v4}, Landroid/os/UserManager;->setUserRestriction(Ljava/lang/String;ZLandroid/os/UserHandle;)V

    goto :goto_18

    :cond_33
    return-void
.end method

.method private initGuestUser()V
    .registers 5

    .line 514
    iget-object v0, p0, Lcom/meizu/settings/security/FlymeGuestModeSettings;->mUserManager:Landroid/os/UserManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->getUsers(Z)Ljava/util/List;

    move-result-object v0

    .line 515
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_42

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/UserInfo;

    .line 516
    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->isGuest()Z

    move-result v3

    if-eqz v3, :cond_b

    .line 517
    new-instance v0, Landroid/os/UserHandle;

    iget v2, v2, Landroid/content/pm/UserInfo;->id:I

    invoke-direct {v0, v2}, Landroid/os/UserHandle;-><init>(I)V

    iput-object v0, p0, Lcom/meizu/settings/security/FlymeGuestModeSettings;->mGuestUserHandle:Landroid/os/UserHandle;

    .line 518
    iget-object v0, p0, Lcom/meizu/settings/security/FlymeGuestModeSettings;->mUserManager:Landroid/os/UserManager;

    iget-object v2, p0, Lcom/meizu/settings/security/FlymeGuestModeSettings;->mGuestUserHandle:Landroid/os/UserHandle;

    invoke-virtual {v0, v2}, Landroid/os/UserManager;->getUserRestrictions(Landroid/os/UserHandle;)Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/settings/security/FlymeGuestModeSettings;->mDefaultGuestRestrictions:Landroid/os/Bundle;

    .line 519
    iget-object v0, p0, Lcom/meizu/settings/security/FlymeGuestModeSettings;->mDefaultGuestRestrictions:Landroid/os/Bundle;

    const-string v2, "no_config_credentials"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_41

    .line 520
    iget-object v0, p0, Lcom/meizu/settings/security/FlymeGuestModeSettings;->mUserManager:Landroid/os/UserManager;

    iget-object v3, p0, Lcom/meizu/settings/security/FlymeGuestModeSettings;->mGuestUserHandle:Landroid/os/UserHandle;

    invoke-virtual {v0, v2, v1, v3}, Landroid/os/UserManager;->setUserRestriction(Ljava/lang/String;ZLandroid/os/UserHandle;)V

    :cond_41
    const/4 v1, 0x0

    :cond_42
    if-eqz v1, :cond_4e

    .line 528
    iget-object v0, p0, Lcom/meizu/settings/security/FlymeGuestModeSettings;->mFlymeLockPasswordUtils:Lcom/meizu/settings/security/FlymeLockPasswordUtils;

    iget-object v1, p0, Lcom/meizu/settings/security/FlymeGuestModeSettings;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0, v1}, Lcom/meizu/settings/security/FlymeLockPasswordUtils;->getGuestRestrictions(Landroid/os/UserManager;)Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/settings/security/FlymeGuestModeSettings;->mDefaultGuestRestrictions:Landroid/os/Bundle;

    :cond_4e
    return-void
.end method

.method private initPreference()V
    .registers 6

    .line 120
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string v1, "permission_category"

    .line 121
    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceCategory;

    iput-object v1, p0, Lcom/meizu/settings/security/FlymeGuestModeSettings;->mPermissionCategory:Landroid/preference/PreferenceCategory;

    const-string v1, "guest_mode_switch"

    .line 122
    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/meizu/common/preference/SwitchPreference;

    iput-object v1, p0, Lcom/meizu/settings/security/FlymeGuestModeSettings;->mGuestModeSwitchPreference:Lcom/meizu/common/preference/SwitchPreference;

    .line 123
    iget-object v1, p0, Lcom/meizu/settings/security/FlymeGuestModeSettings;->mFlymeLockPasswordUtils:Lcom/meizu/settings/security/FlymeLockPasswordUtils;

    invoke-virtual {v1}, Lcom/meizu/settings/security/FlymeLockPasswordUtils;->isGuestModeEnabled()Z

    move-result v1

    .line 124
    iget-object v2, p0, Lcom/meizu/settings/security/FlymeGuestModeSettings;->mGuestModeSwitchPreference:Lcom/meizu/common/preference/SwitchPreference;

    invoke-virtual {v2, v1}, Lcom/meizu/common/preference/SwitchPreference;->setChecked(Z)V

    const-string v1, "guest_password"

    .line 126
    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/meizu/settings/security/FlymeGuestModeSettings;->mGuestModePasswordPreference:Landroid/preference/Preference;

    .line 127
    invoke-virtual {p0}, Lcom/meizu/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "mz_guest_mode_password"

    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/meizu/settings/security/FlymeGuestModeSettings;->mGuestPassword:Ljava/lang/String;

    .line 129
    iget-object v1, p0, Lcom/meizu/settings/security/FlymeGuestModeSettings;->mGuestPassword:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_45

    .line 130
    invoke-direct {p0}, Lcom/meizu/settings/security/FlymeGuestModeSettings;->createGuestPassword()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/meizu/settings/security/FlymeGuestModeSettings;->mGuestPassword:Ljava/lang/String;

    .line 132
    :cond_45
    iget-object v1, p0, Lcom/meizu/settings/security/FlymeGuestModeSettings;->mGuestModePasswordPreference:Landroid/preference/Preference;

    iget-object v2, p0, Lcom/meizu/settings/security/FlymeGuestModeSettings;->mGuestPassword:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    const-string v1, "allow_call_and_sms"

    .line 135
    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/meizu/settings/security/FlymeGuestModeSettings;->mAllowCallAndSMSCheckBoxPreference:Landroid/preference/CheckBoxPreference;

    .line 136
    iget-object v1, p0, Lcom/meizu/settings/security/FlymeGuestModeSettings;->mAllowCallAndSMSCheckBoxPreference:Landroid/preference/CheckBoxPreference;

    iget-object v2, p0, Lcom/meizu/settings/security/FlymeGuestModeSettings;->mDefaultGuestRestrictions:Landroid/os/Bundle;

    const-string v3, "no_outgoing_calls"

    .line 137
    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_6f

    iget-object v2, p0, Lcom/meizu/settings/security/FlymeGuestModeSettings;->mDefaultGuestRestrictions:Landroid/os/Bundle;

    const-string v4, "no_sms"

    .line 138
    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_6f

    move v2, v3

    goto :goto_70

    :cond_6f
    const/4 v2, 0x0

    .line 136
    :goto_70
    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    const-string v1, "allow_install_app"

    .line 141
    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/meizu/settings/security/FlymeGuestModeSettings;->mAllowInstallAppCheckBoxPreference:Landroid/preference/CheckBoxPreference;

    .line 142
    iget-object v1, p0, Lcom/meizu/settings/security/FlymeGuestModeSettings;->mAllowInstallAppCheckBoxPreference:Landroid/preference/CheckBoxPreference;

    iget-object v2, p0, Lcom/meizu/settings/security/FlymeGuestModeSettings;->mDefaultGuestRestrictions:Landroid/os/Bundle;

    const-string v4, "no_install_apps"

    .line 143
    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    xor-int/2addr v2, v3

    .line 142
    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 145
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "com.meizu.mstore"

    invoke-static {v1, v2}, Lcom/meizu/settings/utils/MzUtils;->isPackageExist(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_9e

    .line 146
    iget-object v1, p0, Lcom/meizu/settings/security/FlymeGuestModeSettings;->mPermissionCategory:Landroid/preference/PreferenceCategory;

    iget-object v2, p0, Lcom/meizu/settings/security/FlymeGuestModeSettings;->mAllowInstallAppCheckBoxPreference:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    :cond_9e
    const-string v1, "guest_mode_fingerprint"

    .line 149
    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/meizu/common/preference/SwitchPreference;

    iput-object v0, p0, Lcom/meizu/settings/security/FlymeGuestModeSettings;->mGuestFingerprintSwitchPreference:Lcom/meizu/common/preference/SwitchPreference;

    .line 159
    invoke-direct {p0}, Lcom/meizu/settings/security/FlymeGuestModeSettings;->initClearGuestDataPreference()V

    return-void
.end method

.method private reportClearGuestModeData(Ljava/lang/String;)V
    .registers 4

    .line 737
    iget-object p0, p0, Lcom/meizu/settings/security/FlymeGuestModeSettings;->mUsageStatsProxy:Lcom/meizu/settings/datareport/UsageStatsProxy;

    const-string v0, "guest_mode_cleardata"

    const-string v1, "FlymeGuestModeSettings"

    invoke-virtual {p0, v0, v1, p1}, Lcom/meizu/settings/datareport/UsageStatsProxy;->reportData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private reportData()V
    .registers 7

    .line 723
    iget-object v0, p0, Lcom/meizu/settings/security/FlymeGuestModeSettings;->mGuestModeSwitchPreference:Lcom/meizu/common/preference/SwitchPreference;

    invoke-virtual {v0}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v0

    const-string v1, "1"

    const-string v2, "0"

    if-eqz v0, :cond_e

    move-object v0, v1

    goto :goto_f

    :cond_e
    move-object v0, v2

    :goto_f
    invoke-direct {p0, v0}, Lcom/meizu/settings/security/FlymeGuestModeSettings;->reportGuestModeSwitchState(Ljava/lang/String;)V

    .line 724
    iget-object v0, p0, Lcom/meizu/settings/security/FlymeGuestModeSettings;->mUsageStatsProxy:Lcom/meizu/settings/datareport/UsageStatsProxy;

    .line 725
    iget-object v3, p0, Lcom/meizu/settings/security/FlymeGuestModeSettings;->mGuestFingerprintSwitchPreference:Lcom/meizu/common/preference/SwitchPreference;

    invoke-virtual {v3}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_1e

    move-object v3, v1

    goto :goto_1f

    :cond_1e
    move-object v3, v2

    :goto_1f
    const-string v4, "FlymeGuestModeSettings"

    const-string v5, "guest_mode_fingerprint"

    .line 724
    invoke-virtual {v0, v5, v4, v3}, Lcom/meizu/settings/datareport/UsageStatsProxy;->reportData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 726
    iget-object v0, p0, Lcom/meizu/settings/security/FlymeGuestModeSettings;->mUsageStatsProxy:Lcom/meizu/settings/datareport/UsageStatsProxy;

    .line 727
    iget-object v3, p0, Lcom/meizu/settings/security/FlymeGuestModeSettings;->mAllowCallAndSMSCheckBoxPreference:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_32

    move-object v3, v1

    goto :goto_33

    :cond_32
    move-object v3, v2

    :goto_33
    const-string v5, "guest_mode_phone"

    .line 726
    invoke-virtual {v0, v5, v4, v3}, Lcom/meizu/settings/datareport/UsageStatsProxy;->reportData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 728
    iget-object v0, p0, Lcom/meizu/settings/security/FlymeGuestModeSettings;->mUsageStatsProxy:Lcom/meizu/settings/datareport/UsageStatsProxy;

    .line 729
    iget-object p0, p0, Lcom/meizu/settings/security/FlymeGuestModeSettings;->mAllowInstallAppCheckBoxPreference:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result p0

    if-eqz p0, :cond_43

    goto :goto_44

    :cond_43
    move-object v1, v2

    :goto_44
    const-string p0, "guest_mode_install_app"

    .line 728
    invoke-virtual {v0, p0, v4, v1}, Lcom/meizu/settings/datareport/UsageStatsProxy;->reportData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private reportGuestModeSwitchState(Ljava/lang/String;)V
    .registers 4

    .line 733
    iget-object p0, p0, Lcom/meizu/settings/security/FlymeGuestModeSettings;->mUsageStatsProxy:Lcom/meizu/settings/datareport/UsageStatsProxy;

    const-string v0, "guest_mode_enable"

    const-string v1, "FlymeGuestModeSettings"

    invoke-virtual {p0, v0, v1, p1}, Lcom/meizu/settings/datareport/UsageStatsProxy;->reportData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private showClearDataFailedDlg()V
    .registers 3

    .line 285
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object p0

    if-eqz p0, :cond_26

    .line 286
    invoke-virtual {p0}, Landroid/app/Activity;->isResumed()Z

    move-result v0

    if-eqz v0, :cond_26

    .line 287
    new-instance v0, Landroid/app/AlertDialog$Builder;

    const/4 v1, 0x5

    invoke-direct {v0, p0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    const p0, 0x7f1204e8

    .line 288
    invoke-virtual {v0, p0}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    const p0, 0x7f120f9e

    const/4 v1, 0x0

    .line 289
    invoke-virtual {v0, p0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 291
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/AlertDialog;->show()V

    :cond_26
    return-void
.end method

.method private showEnrollFingerprintDialog()V
    .registers 4

    .line 466
    new-instance v0, Lflyme/support/v7/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lflyme/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f120937

    invoke-virtual {v0, v1}, Lflyme/support/v7/app/AlertDialog$Builder;->setMessage(I)Lflyme/support/v7/app/AlertDialog$Builder;

    new-instance v1, Lcom/meizu/settings/security/FlymeGuestModeSettings$7;

    invoke-direct {v1, p0}, Lcom/meizu/settings/security/FlymeGuestModeSettings$7;-><init>(Lcom/meizu/settings/security/FlymeGuestModeSettings;)V

    const v2, 0x7f1207fa

    .line 467
    invoke-virtual {v0, v2, v1}, Lflyme/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lflyme/support/v7/app/AlertDialog$Builder;

    const v1, 0x7f120442

    const/4 v2, 0x0

    .line 482
    invoke-virtual {v0, v1, v2}, Lflyme/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lflyme/support/v7/app/AlertDialog$Builder;

    new-instance v1, Lcom/meizu/settings/security/FlymeGuestModeSettings$6;

    invoke-direct {v1, p0}, Lcom/meizu/settings/security/FlymeGuestModeSettings$6;-><init>(Lcom/meizu/settings/security/FlymeGuestModeSettings;)V

    .line 483
    invoke-virtual {v0, v1}, Lflyme/support/v7/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Lflyme/support/v7/app/AlertDialog$Builder;

    .line 489
    invoke-virtual {v0}, Lflyme/support/v7/app/AlertDialog$Builder;->create()Lflyme/support/v7/app/AlertDialog;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method private showEnterGuestModePasswordDialog()V
    .registers 10

    .line 569
    iget-object v0, p0, Lcom/meizu/settings/security/FlymeGuestModeSettings;->mEnterPasswordDialog:Landroid/app/AlertDialog;

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    .line 570
    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 571
    iput-object v1, p0, Lcom/meizu/settings/security/FlymeGuestModeSettings;->mEnterPasswordDialog:Landroid/app/AlertDialog;

    .line 573
    :cond_a
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v2, 0x7f0d00dc

    invoke-static {v0, v2, v1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v2, 0x7f0a0736

    .line 574
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/meizu/textinputlayout/TextInputLayout;

    const/4 v3, 0x0

    .line 575
    invoke-virtual {v2, v3}, Lcom/meizu/textinputlayout/TextInputLayout;->setErrorEnabled(Z)V

    const v4, 0x7f0a04c3

    .line 576
    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    iput-object v4, p0, Lcom/meizu/settings/security/FlymeGuestModeSettings;->mPasswordEditText:Landroid/widget/EditText;

    .line 577
    iget-object v4, p0, Lcom/meizu/settings/security/FlymeGuestModeSettings;->mPasswordEditText:Landroid/widget/EditText;

    const v5, 0x7f12093f

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setHint(I)V

    .line 578
    iget-object v4, p0, Lcom/meizu/settings/security/FlymeGuestModeSettings;->mPasswordEditText:Landroid/widget/EditText;

    invoke-virtual {v4, v3}, Landroid/widget/EditText;->setLongClickable(Z)V

    .line 580
    iget-object v4, p0, Lcom/meizu/settings/security/FlymeGuestModeSettings;->mPasswordEditText:Landroid/widget/EditText;

    new-instance v5, Lcom/meizu/settings/security/FlymeGuestModeSettings$9;

    invoke-direct {v5, p0}, Lcom/meizu/settings/security/FlymeGuestModeSettings$9;-><init>(Lcom/meizu/settings/security/FlymeGuestModeSettings;)V

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setCustomSelectionActionModeCallback(Landroid/view/ActionMode$Callback;)V

    .line 601
    iget-object v4, p0, Lcom/meizu/settings/security/FlymeGuestModeSettings;->mPasswordEditText:Landroid/widget/EditText;

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setInputType(I)V

    .line 602
    iget-object v4, p0, Lcom/meizu/settings/security/FlymeGuestModeSettings;->mPasswordEditText:Landroid/widget/EditText;

    const/4 v5, 0x1

    new-array v6, v5, [Landroid/text/InputFilter;

    new-instance v7, Landroid/text/InputFilter$LengthFilter;

    const/4 v8, 0x4

    invoke-direct {v7, v8}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v7, v6, v3

    invoke-virtual {v4, v6}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 605
    iget-object v4, p0, Lcom/meizu/settings/security/FlymeGuestModeSettings;->mPasswordEditText:Landroid/widget/EditText;

    iget-object v6, p0, Lcom/meizu/settings/security/FlymeGuestModeSettings;->mGuestPassword:Ljava/lang/String;

    invoke-virtual {v4, v6}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 606
    iget-object v4, p0, Lcom/meizu/settings/security/FlymeGuestModeSettings;->mPasswordEditText:Landroid/widget/EditText;

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setSelectAllOnFocus(Z)V

    .line 608
    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    const/4 v7, 0x5

    invoke-direct {v4, v6, v7}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    const v6, 0x104000a

    .line 609
    invoke-virtual {v4, v6, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const/high16 v6, 0x1040000

    .line 610
    invoke-virtual {v4, v6, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 611
    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/meizu/settings/security/FlymeGuestModeSettings;->mEnterPasswordDialog:Landroid/app/AlertDialog;

    .line 612
    iget-object v1, p0, Lcom/meizu/settings/security/FlymeGuestModeSettings;->mEnterPasswordDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog;->setView(Landroid/view/View;)V

    .line 613
    iget-object v0, p0, Lcom/meizu/settings/security/FlymeGuestModeSettings;->mEnterPasswordDialog:Landroid/app/AlertDialog;

    const v1, 0x7f12093a

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setTitle(I)V

    .line 614
    iget-object v0, p0, Lcom/meizu/settings/security/FlymeGuestModeSettings;->mEnterPasswordDialog:Landroid/app/AlertDialog;

    new-instance v1, Lcom/meizu/settings/security/FlymeGuestModeSettings$10;

    invoke-direct {v1, p0}, Lcom/meizu/settings/security/FlymeGuestModeSettings$10;-><init>(Lcom/meizu/settings/security/FlymeGuestModeSettings;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 622
    iget-object v0, p0, Lcom/meizu/settings/security/FlymeGuestModeSettings;->mEnterPasswordDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 623
    iget-object v0, p0, Lcom/meizu/settings/security/FlymeGuestModeSettings;->mEnterPasswordDialog:Landroid/app/AlertDialog;

    const v1, 0x1020019

    .line 624
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 626
    iget-object v1, p0, Lcom/meizu/settings/security/FlymeGuestModeSettings;->mPasswordEditText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_bd

    goto :goto_be

    :cond_bd
    move v3, v5

    :goto_be
    invoke-virtual {v0, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 628
    new-instance v1, Lcom/meizu/settings/security/FlymeGuestModeSettings$11;

    invoke-direct {v1, p0, v2}, Lcom/meizu/settings/security/FlymeGuestModeSettings$11;-><init>(Lcom/meizu/settings/security/FlymeGuestModeSettings;Lcom/meizu/textinputlayout/TextInputLayout;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 647
    iget-object v1, p0, Lcom/meizu/settings/security/FlymeGuestModeSettings;->mPasswordEditText:Landroid/widget/EditText;

    new-instance v3, Lcom/meizu/settings/security/FlymeGuestModeSettings$12;

    invoke-direct {v3, p0, v0, v2}, Lcom/meizu/settings/security/FlymeGuestModeSettings$12;-><init>(Lcom/meizu/settings/security/FlymeGuestModeSettings;Landroid/widget/Button;Lcom/meizu/textinputlayout/TextInputLayout;)V

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    return-void
.end method

.method private showWarningDialog()V
    .registers 4

    .line 370
    iget-object v0, p0, Lcom/meizu/settings/security/FlymeGuestModeSettings;->mCloseGuestModeWarningDialog:Landroid/app/AlertDialog;

    if-nez v0, :cond_38

    .line 371
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    const v1, 0x7f120730

    .line 372
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f120726

    new-instance v2, Lcom/meizu/settings/security/FlymeGuestModeSettings$5;

    invoke-direct {v2, p0}, Lcom/meizu/settings/security/FlymeGuestModeSettings$5;-><init>(Lcom/meizu/settings/security/FlymeGuestModeSettings;)V

    .line 373
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f120731

    new-instance v2, Lcom/meizu/settings/security/FlymeGuestModeSettings$4;

    invoke-direct {v2, p0}, Lcom/meizu/settings/security/FlymeGuestModeSettings$4;-><init>(Lcom/meizu/settings/security/FlymeGuestModeSettings;)V

    .line 382
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x0

    .line 390
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 391
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/settings/security/FlymeGuestModeSettings;->mCloseGuestModeWarningDialog:Landroid/app/AlertDialog;

    .line 394
    :cond_38
    iget-object v0, p0, Lcom/meizu/settings/security/FlymeGuestModeSettings;->mCloseGuestModeWarningDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_45

    .line 395
    iget-object p0, p0, Lcom/meizu/settings/security/FlymeGuestModeSettings;->mCloseGuestModeWarningDialog:Landroid/app/AlertDialog;

    invoke-virtual {p0}, Landroid/app/AlertDialog;->show()V

    :cond_45
    return-void
.end method

.method private startEnterPasswordFragment()V
    .registers 7

    .line 690
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    const-string v0, "password_from"

    const/4 v1, 0x0

    .line 691
    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 693
    const-class v0, Lcom/meizu/settings/security/FlymeEnterPasswordFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f120ff3

    const/4 v4, 0x1

    move-object v0, p0

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lcom/meizu/settings/SettingsPreferenceFragment;->startFragment(Landroid/app/Fragment;Ljava/lang/String;IILandroid/os/Bundle;)Z

    return-void
.end method

.method private updateFpSwitchPreference(ILandroid/content/Intent;)V
    .registers 6

    const/4 v0, 0x0

    const/4 v1, -0x1

    if-ne p1, v1, :cond_25

    if-eqz p2, :cond_25

    const-string p1, "extra_binded_fp_id"

    .line 700
    invoke-virtual {p2, p1, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    if-eq p1, v1, :cond_25

    .line 702
    iget-object p2, p0, Lcom/meizu/settings/security/FlymeGuestModeSettings;->mFlymeLockPasswordUtils:Lcom/meizu/settings/security/FlymeLockPasswordUtils;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x3

    invoke-virtual {p2, p1, v1}, Lcom/meizu/settings/security/FlymeLockPasswordUtils;->saveBindFingerprintId(Ljava/lang/String;I)V

    const/4 p1, 0x1

    .line 705
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object p2

    const/4 v1, 0x0

    const v2, 0x7f1208eb

    invoke-static {p2, v1, v2, v0}, Lcom/meizu/settings/utils/MzUtils;->showFlymeToast(Landroid/content/Context;Ljava/lang/String;II)V

    goto :goto_26

    :cond_25
    move p1, v0

    .line 708
    :goto_26
    iget-object p0, p0, Lcom/meizu/settings/security/FlymeGuestModeSettings;->mGuestFingerprintSwitchPreference:Lcom/meizu/common/preference/SwitchPreference;

    invoke-virtual {p0, p1}, Lcom/meizu/common/preference/SwitchPreference;->setChecked(Z)V

    return-void
.end method

.method private updatePreferenceStatus()V
    .registers 4

    .line 163
    iget-object v0, p0, Lcom/meizu/settings/security/FlymeGuestModeSettings;->mGuestModeSwitchPreference:Lcom/meizu/common/preference/SwitchPreference;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/preference/TwoStatePreference;->setEnabled(Z)V

    .line 164
    iget-object v0, p0, Lcom/meizu/settings/security/FlymeGuestModeSettings;->mGuestModeSwitchPreference:Lcom/meizu/common/preference/SwitchPreference;

    invoke-virtual {v0}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v0

    .line 165
    iget-object v2, p0, Lcom/meizu/settings/security/FlymeGuestModeSettings;->mGuestModePasswordPreference:Landroid/preference/Preference;

    invoke-virtual {v2, v0}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 166
    iget-object v2, p0, Lcom/meizu/settings/security/FlymeGuestModeSettings;->mPermissionCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v2, v0}, Landroid/preference/PreferenceCategory;->setEnabled(Z)V

    .line 167
    iget-object v2, p0, Lcom/meizu/settings/security/FlymeGuestModeSettings;->mProgressDialogPreference:Lcom/meizu/settings/widget/ProgressDialogPreference;

    invoke-virtual {v2, v0}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 168
    iget-object v2, p0, Lcom/meizu/settings/security/FlymeGuestModeSettings;->mGuestFingerprintSwitchPreference:Lcom/meizu/common/preference/SwitchPreference;

    iget-boolean p0, p0, Lcom/meizu/settings/security/FlymeGuestModeSettings;->mUseFpPreferenceEnabled:Z

    if-eqz p0, :cond_24

    if-eqz v0, :cond_24

    goto :goto_25

    :cond_24
    const/4 v1, 0x0

    :goto_25
    invoke-virtual {v2, v1}, Landroid/preference/TwoStatePreference;->setEnabled(Z)V

    return-void
.end method

.method private updateUseFingerprintPreference()V
    .registers 5

    .line 196
    new-instance v0, Lcom/meizu/settings/fingerprint/FlymeFingerPrintImpl;

    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/meizu/settings/fingerprint/FlymeFingerPrintImpl;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/meizu/settings/security/FlymeGuestModeSettings;->mFlymeIFingerPrint:Lcom/meizu/settings/fingerprint/FlymeIFingerPrint;

    .line 198
    iget-object v0, p0, Lcom/meizu/settings/security/FlymeGuestModeSettings;->mFlymeIFingerPrint:Lcom/meizu/settings/fingerprint/FlymeIFingerPrint;

    invoke-interface {v0}, Lcom/meizu/settings/fingerprint/FlymeIFingerPrint;->getIds()[I

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_21

    .line 199
    array-length v2, v0

    if-lez v2, :cond_21

    iget-object v2, p0, Lcom/meizu/settings/security/FlymeGuestModeSettings;->mFlymeIFingerPrint:Lcom/meizu/settings/fingerprint/FlymeIFingerPrint;

    invoke-interface {v2}, Lcom/meizu/settings/fingerprint/FlymeIFingerPrint;->isScreenUnlockWithFingerprintEnabled()Z

    move-result v2

    if-nez v2, :cond_21

    .line 200
    iput-boolean v1, p0, Lcom/meizu/settings/security/FlymeGuestModeSettings;->mUseFpPreferenceEnabled:Z

    .line 203
    :cond_21
    iget-object v2, p0, Lcom/meizu/settings/security/FlymeGuestModeSettings;->mFlymeLockPasswordUtils:Lcom/meizu/settings/security/FlymeLockPasswordUtils;

    invoke-virtual {v2}, Lcom/meizu/settings/security/FlymeLockPasswordUtils;->getGuestModeFingerprintId()Ljava/lang/String;

    move-result-object v2

    .line 205
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_44

    .line 207
    :try_start_2d
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-eqz v0, :cond_44

    .line 208
    invoke-static {v0, v2}, Lcom/android/internal/util/ArrayUtils;->contains([II)Z

    move-result v0
    :try_end_3b
    .catch Ljava/lang/NumberFormatException; {:try_start_2d .. :try_end_3b} :catch_40

    if-eqz v0, :cond_44

    const/4 v0, 0x1

    move v1, v0

    goto :goto_44

    :catch_40
    move-exception v0

    .line 214
    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    .line 218
    :cond_44
    :goto_44
    iget-object v0, p0, Lcom/meizu/settings/security/FlymeGuestModeSettings;->mGuestFingerprintSwitchPreference:Lcom/meizu/common/preference/SwitchPreference;

    invoke-virtual {v0, v1}, Lcom/meizu/common/preference/SwitchPreference;->setChecked(Z)V

    if-nez v1, :cond_52

    .line 220
    iget-object p0, p0, Lcom/meizu/settings/security/FlymeGuestModeSettings;->mFlymeLockPasswordUtils:Lcom/meizu/settings/security/FlymeLockPasswordUtils;

    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/meizu/settings/security/FlymeLockPasswordUtils;->saveGuestModeFingerprintId(Ljava/lang/String;)V

    :cond_52
    return-void
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 5

    const/4 v0, 0x1

    if-ne p1, v0, :cond_d

    const/4 v0, -0x1

    if-ne p2, v0, :cond_d

    .line 715
    invoke-direct {p0}, Lcom/meizu/settings/security/FlymeGuestModeSettings;->initGuestUser()V

    .line 716
    invoke-direct {p0}, Lcom/meizu/settings/security/FlymeGuestModeSettings;->initPreference()V

    goto :goto_14

    :cond_d
    const/16 v0, 0x3e9

    if-ne p1, v0, :cond_14

    .line 718
    invoke-direct {p0, p2, p3}, Lcom/meizu/settings/security/FlymeGuestModeSettings;->updateFpSwitchPreference(ILandroid/content/Intent;)V

    :cond_14
    :goto_14
    return-void
.end method

.method public onBackPressed()Z
    .registers 1

    .line 187
    iget-object p0, p0, Lcom/meizu/settings/security/FlymeGuestModeSettings;->mCloseGuestModeWarningDialog:Landroid/app/AlertDialog;

    if-eqz p0, :cond_c

    invoke-virtual {p0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result p0

    if-eqz p0, :cond_c

    const/4 p0, 0x1

    return p0

    :cond_c
    const/4 p0, 0x0

    return p0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 2

    .line 100
    invoke-super {p0, p1}, Lcom/meizu/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f160077

    .line 101
    invoke-virtual {p0, p1}, Landroid/preference/PreferenceFragment;->addPreferencesFromResource(I)V

    .line 103
    invoke-direct {p0}, Lcom/meizu/settings/security/FlymeGuestModeSettings;->init()V

    return-void
.end method

.method public onPause()V
    .registers 1

    .line 180
    invoke-super {p0}, Lcom/meizu/settings/InstrumentedPreferenceFragment;->onPause()V

    .line 182
    iget-object p0, p0, Lcom/meizu/settings/security/FlymeGuestModeSettings;->mFlymeIFingerPrint:Lcom/meizu/settings/fingerprint/FlymeIFingerPrint;

    invoke-interface {p0}, Lcom/meizu/settings/fingerprint/FlymeIFingerPrint;->release()V

    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .registers 7

    .line 415
    iget-object v0, p0, Lcom/meizu/settings/security/FlymeGuestModeSettings;->mFlymeLockPasswordUtils:Lcom/meizu/settings/security/FlymeLockPasswordUtils;

    invoke-virtual {v0}, Lcom/meizu/settings/security/FlymeLockPasswordUtils;->isGuestModeEnabled()Z

    move-result v0

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/meizu/settings/security/FlymeGuestModeSettings;->mGuestUserHandle:Landroid/os/UserHandle;

    if-nez v0, :cond_e

    const/4 p0, 0x0

    return p0

    .line 419
    :cond_e
    iget-object v0, p0, Lcom/meizu/settings/security/FlymeGuestModeSettings;->mGuestModeSwitchPreference:Lcom/meizu/common/preference/SwitchPreference;

    const/4 v1, 0x1

    if-ne p2, v0, :cond_1b

    .line 420
    invoke-virtual {v0}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result p1

    invoke-direct {p0, p1}, Lcom/meizu/settings/security/FlymeGuestModeSettings;->handleGuestModeSwitchClick(Z)V

    return v1

    .line 422
    :cond_1b
    iget-object v0, p0, Lcom/meizu/settings/security/FlymeGuestModeSettings;->mGuestModePasswordPreference:Landroid/preference/Preference;

    if-ne p2, v0, :cond_23

    .line 423
    invoke-direct {p0}, Lcom/meizu/settings/security/FlymeGuestModeSettings;->showEnterGuestModePasswordDialog()V

    return v1

    .line 425
    :cond_23
    iget-object v0, p0, Lcom/meizu/settings/security/FlymeGuestModeSettings;->mAllowCallAndSMSCheckBoxPreference:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_46

    .line 426
    iget-object p1, p0, Lcom/meizu/settings/security/FlymeGuestModeSettings;->mUserManager:Landroid/os/UserManager;

    .line 427
    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result p2

    xor-int/2addr p2, v1

    iget-object v0, p0, Lcom/meizu/settings/security/FlymeGuestModeSettings;->mGuestUserHandle:Landroid/os/UserHandle;

    const-string v2, "no_outgoing_calls"

    .line 426
    invoke-virtual {p1, v2, p2, v0}, Landroid/os/UserManager;->setUserRestriction(Ljava/lang/String;ZLandroid/os/UserHandle;)V

    .line 428
    iget-object p1, p0, Lcom/meizu/settings/security/FlymeGuestModeSettings;->mUserManager:Landroid/os/UserManager;

    iget-object p2, p0, Lcom/meizu/settings/security/FlymeGuestModeSettings;->mAllowCallAndSMSCheckBoxPreference:Landroid/preference/CheckBoxPreference;

    .line 429
    invoke-virtual {p2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result p2

    xor-int/2addr p2, v1

    iget-object p0, p0, Lcom/meizu/settings/security/FlymeGuestModeSettings;->mGuestUserHandle:Landroid/os/UserHandle;

    const-string v0, "no_sms"

    .line 428
    invoke-virtual {p1, v0, p2, p0}, Landroid/os/UserManager;->setUserRestriction(Ljava/lang/String;ZLandroid/os/UserHandle;)V

    return v1

    .line 431
    :cond_46
    iget-object v0, p0, Lcom/meizu/settings/security/FlymeGuestModeSettings;->mAllowInstallAppCheckBoxPreference:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_65

    .line 432
    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result p1

    .line 433
    iget-object p2, p0, Lcom/meizu/settings/security/FlymeGuestModeSettings;->mUserManager:Landroid/os/UserManager;

    xor-int/lit8 v0, p1, 0x1

    iget-object v2, p0, Lcom/meizu/settings/security/FlymeGuestModeSettings;->mGuestUserHandle:Landroid/os/UserHandle;

    const-string v3, "no_install_apps"

    invoke-virtual {p2, v3, v0, v2}, Landroid/os/UserManager;->setUserRestriction(Ljava/lang/String;ZLandroid/os/UserHandle;)V

    if-eqz p1, :cond_64

    .line 436
    iget-object p1, p0, Lcom/meizu/settings/security/FlymeGuestModeSettings;->mUserManager:Landroid/os/UserManager;

    iget-object p0, p0, Lcom/meizu/settings/security/FlymeGuestModeSettings;->mGuestUserHandle:Landroid/os/UserHandle;

    const-string p2, "no_install_unknown_sources"

    invoke-virtual {p1, p2, v1, p0}, Landroid/os/UserManager;->setUserRestriction(Ljava/lang/String;ZLandroid/os/UserHandle;)V

    :cond_64
    return v1

    .line 440
    :cond_65
    invoke-virtual {p2}, Landroid/preference/Preference;->hasKey()Z

    move-result v0

    if-eqz v0, :cond_a2

    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v2, "remove_user"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a2

    .line 441
    iget-object p1, p0, Lcom/meizu/settings/security/FlymeGuestModeSettings;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {p1, v1}, Landroid/os/UserManager;->getUsers(Z)Ljava/util/List;

    move-result-object p1

    .line 442
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_81
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_a1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/content/pm/UserInfo;

    .line 443
    invoke-virtual {p2}, Landroid/content/pm/UserInfo;->isGuest()Z

    move-result v0

    if-eqz v0, :cond_81

    .line 444
    iget-object p0, p0, Lcom/meizu/settings/security/FlymeGuestModeSettings;->mUserManager:Landroid/os/UserManager;

    iget p1, p2, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p0, p1}, Landroid/os/UserManager;->removeUser(I)Z

    const-string p0, "FlymeGuestModeSettings"

    const-string p1, "rm guest!"

    .line 445
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a1
    return v1

    .line 450
    :cond_a2
    invoke-virtual {p2}, Landroid/preference/Preference;->hasKey()Z

    move-result v0

    if-eqz v0, :cond_c3

    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v2, "switch_user"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c3

    .line 452
    :try_start_b4
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object p0

    const/16 p1, 0xa

    invoke-interface {p0, p1}, Landroid/app/IActivityManager;->switchUser(I)Z
    :try_end_bd
    .catch Ljava/lang/Exception; {:try_start_b4 .. :try_end_bd} :catch_be

    goto :goto_c2

    :catch_be
    move-exception p0

    .line 454
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_c2
    return v1

    .line 457
    :cond_c3
    iget-object v0, p0, Lcom/meizu/settings/security/FlymeGuestModeSettings;->mGuestFingerprintSwitchPreference:Lcom/meizu/common/preference/SwitchPreference;

    if-eqz v0, :cond_cd

    if-ne v0, p2, :cond_cd

    .line 458
    invoke-direct {p0}, Lcom/meizu/settings/security/FlymeGuestModeSettings;->handleUseFp()V

    return v1

    .line 462
    :cond_cd
    invoke-super {p0, p1, p2}, Lcom/meizu/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result p0

    return p0
.end method

.method public onResume()V
    .registers 1

    .line 173
    invoke-super {p0}, Lcom/meizu/settings/SettingsPreferenceFragment;->onResume()V

    .line 174
    invoke-direct {p0}, Lcom/meizu/settings/security/FlymeGuestModeSettings;->updateUseFingerprintPreference()V

    .line 175
    invoke-direct {p0}, Lcom/meizu/settings/security/FlymeGuestModeSettings;->updatePreferenceStatus()V

    return-void
.end method

.method public onStop()V
    .registers 2

    .line 402
    invoke-super {p0}, Lcom/meizu/settings/SettingsPreferenceFragment;->onStop()V

    .line 404
    iget-object v0, p0, Lcom/meizu/settings/security/FlymeGuestModeSettings;->mCloseGuestModeWarningDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_12

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 405
    iget-object v0, p0, Lcom/meizu/settings/security/FlymeGuestModeSettings;->mCloseGuestModeWarningDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 408
    :cond_12
    invoke-direct {p0}, Lcom/meizu/settings/security/FlymeGuestModeSettings;->reportData()V

    return-void
.end method
