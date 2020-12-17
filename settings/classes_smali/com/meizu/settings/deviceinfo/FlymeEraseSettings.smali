.class public Lcom/meizu/settings/deviceinfo/FlymeEraseSettings;
.super Lcom/meizu/settings/SettingsPreferenceFragment;
.source "FlymeEraseSettings.java"


# instance fields
.field private mAccountHelper:Lcom/meizu/settings/utils/FlymeAccountHelper;

.field private mBusinessStateChangeListenner:Lcom/meizu/settings/utils/FlymeAccountHelper$BusinessStateChangeListenner;

.field private mContext:Landroid/content/Context;

.field private mCurrentCleanAction:Ljava/lang/String;

.field private mCurrentDoAction:I

.field private mFactoryReset:Landroid/preference/Preference;

.field private mFlymeLockPasswordUtils:Lcom/meizu/settings/security/FlymeLockPasswordUtils;

.field private mFormatStorage:Landroid/preference/Preference;

.field private mFormatSystem:Landroid/preference/Preference;

.field private mLoadingDialog:Lcom/meizu/common/app/LoadingDialog;

.field private mMsg:Ljava/lang/String;

.field private mResetAppSettings:Landroid/preference/Preference;

.field private mResetNetworkSettings:Landroid/preference/Preference;

.field private mTitle:Ljava/lang/String;

.field private mUserManager:Landroid/os/UserManager;

.field private mVerifyFlymePwdDlgTitle:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 72
    invoke-direct {p0}, Lcom/meizu/settings/SettingsPreferenceFragment;-><init>()V

    .line 117
    new-instance v0, Lcom/meizu/settings/deviceinfo/FlymeEraseSettings$1;

    invoke-direct {v0, p0}, Lcom/meizu/settings/deviceinfo/FlymeEraseSettings$1;-><init>(Lcom/meizu/settings/deviceinfo/FlymeEraseSettings;)V

    iput-object v0, p0, Lcom/meizu/settings/deviceinfo/FlymeEraseSettings;->mBusinessStateChangeListenner:Lcom/meizu/settings/utils/FlymeAccountHelper$BusinessStateChangeListenner;

    return-void
.end method

.method static synthetic access$000(Lcom/meizu/settings/deviceinfo/FlymeEraseSettings;)Ljava/lang/String;
    .registers 1

    .line 72
    iget-object p0, p0, Lcom/meizu/settings/deviceinfo/FlymeEraseSettings;->mTitle:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$100(Lcom/meizu/settings/deviceinfo/FlymeEraseSettings;)Ljava/lang/String;
    .registers 1

    .line 72
    iget-object p0, p0, Lcom/meizu/settings/deviceinfo/FlymeEraseSettings;->mMsg:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1002(Lcom/meizu/settings/deviceinfo/FlymeEraseSettings;Lcom/meizu/common/app/LoadingDialog;)Lcom/meizu/common/app/LoadingDialog;
    .registers 2

    .line 72
    iput-object p1, p0, Lcom/meizu/settings/deviceinfo/FlymeEraseSettings;->mLoadingDialog:Lcom/meizu/common/app/LoadingDialog;

    return-object p1
.end method

.method static synthetic access$200(Lcom/meizu/settings/deviceinfo/FlymeEraseSettings;)I
    .registers 1

    .line 72
    iget p0, p0, Lcom/meizu/settings/deviceinfo/FlymeEraseSettings;->mCurrentDoAction:I

    return p0
.end method

.method static synthetic access$300(Lcom/meizu/settings/deviceinfo/FlymeEraseSettings;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 4

    .line 72
    invoke-direct {p0, p1, p2, p3}, Lcom/meizu/settings/deviceinfo/FlymeEraseSettings;->showDialog(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$400(Lcom/meizu/settings/deviceinfo/FlymeEraseSettings;)Landroid/content/Context;
    .registers 1

    .line 72
    iget-object p0, p0, Lcom/meizu/settings/deviceinfo/FlymeEraseSettings;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$500(Lcom/meizu/settings/deviceinfo/FlymeEraseSettings;Ljava/lang/String;)Z
    .registers 2

    .line 72
    invoke-direct {p0, p1}, Lcom/meizu/settings/deviceinfo/FlymeEraseSettings;->isNonEnableableFallback(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$600(Lcom/meizu/settings/deviceinfo/FlymeEraseSettings;)V
    .registers 1

    .line 72
    invoke-direct {p0}, Lcom/meizu/settings/deviceinfo/FlymeEraseSettings;->dismissDialog()V

    return-void
.end method

.method static synthetic access$700(Lcom/meizu/settings/deviceinfo/FlymeEraseSettings;I)V
    .registers 2

    .line 72
    invoke-direct {p0, p1}, Lcom/meizu/settings/deviceinfo/FlymeEraseSettings;->handleAction(I)V

    return-void
.end method

.method static synthetic access$800(Lcom/meizu/settings/deviceinfo/FlymeEraseSettings;Ljava/lang/String;)V
    .registers 2

    .line 72
    invoke-direct {p0, p1}, Lcom/meizu/settings/deviceinfo/FlymeEraseSettings;->doMasterClear(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$900(Lcom/meizu/settings/deviceinfo/FlymeEraseSettings;)Landroid/app/ProgressDialog;
    .registers 1

    .line 72
    invoke-direct {p0}, Lcom/meizu/settings/deviceinfo/FlymeEraseSettings;->getProgressDialog()Landroid/app/ProgressDialog;

    move-result-object p0

    return-object p0
.end method

.method private dismissDialog()V
    .registers 2

    .line 590
    iget-object v0, p0, Lcom/meizu/settings/deviceinfo/FlymeEraseSettings;->mLoadingDialog:Lcom/meizu/common/app/LoadingDialog;

    if-eqz v0, :cond_12

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 591
    iget-object v0, p0, Lcom/meizu/settings/deviceinfo/FlymeEraseSettings;->mLoadingDialog:Lcom/meizu/common/app/LoadingDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    const/4 v0, 0x0

    .line 592
    iput-object v0, p0, Lcom/meizu/settings/deviceinfo/FlymeEraseSettings;->mLoadingDialog:Lcom/meizu/common/app/LoadingDialog;

    :cond_12
    return-void
.end method

.method private doMasterClear(Ljava/lang/String;)V
    .registers 3

    .line 451
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string p1, "android"

    .line 452
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 p1, 0x10000000

    .line 453
    invoke-virtual {v0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 454
    iget-object p0, p0, Lcom/meizu/settings/deviceinfo/FlymeEraseSettings;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method private getProgressDialog()Landroid/app/ProgressDialog;
    .registers 4

    .line 505
    new-instance v0, Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/meizu/settings/deviceinfo/FlymeEraseSettings;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    .line 506
    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    const/4 v1, 0x0

    .line 507
    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 508
    iget-object v1, p0, Lcom/meizu/settings/deviceinfo/FlymeEraseSettings;->mContext:Landroid/content/Context;

    const v2, 0x7f120bf2

    .line 509
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 508
    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 510
    iget-object p0, p0, Lcom/meizu/settings/deviceinfo/FlymeEraseSettings;->mContext:Landroid/content/Context;

    const v1, 0x7f120bf1

    .line 511
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    .line 510
    invoke-virtual {v0, p0}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    return-object v0
.end method

.method private handleAction(I)V
    .registers 3

    .line 192
    iput p1, p0, Lcom/meizu/settings/deviceinfo/FlymeEraseSettings;->mCurrentDoAction:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_25

    const/4 v0, 0x2

    if-eq p1, v0, :cond_21

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1b

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1b

    const/4 v0, 0x5

    if-eq p1, v0, :cond_1b

    packed-switch p1, :pswitch_data_40

    goto :goto_3e

    .line 212
    :pswitch_15  #0x3e9, 0x3ea, 0x3eb
    iget-object p1, p0, Lcom/meizu/settings/deviceinfo/FlymeEraseSettings;->mCurrentCleanAction:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/meizu/settings/deviceinfo/FlymeEraseSettings;->startClean(Ljava/lang/String;)V

    goto :goto_3e

    .line 207
    :cond_1b
    iget p1, p0, Lcom/meizu/settings/deviceinfo/FlymeEraseSettings;->mCurrentDoAction:I

    invoke-direct {p0, p1}, Lcom/meizu/settings/deviceinfo/FlymeEraseSettings;->handleCleanAction(I)V

    goto :goto_3e

    .line 202
    :cond_21
    invoke-direct {p0}, Lcom/meizu/settings/deviceinfo/FlymeEraseSettings;->startAppsReset()V

    goto :goto_3e

    .line 195
    :cond_25
    iget-object p1, p0, Lcom/meizu/settings/deviceinfo/FlymeEraseSettings;->mFlymeLockPasswordUtils:Lcom/meizu/settings/security/FlymeLockPasswordUtils;

    invoke-virtual {p1}, Lcom/meizu/settings/security/FlymeLockPasswordUtils;->isScreenPasswordEnalbed()Z

    move-result p1

    if-eqz p1, :cond_31

    .line 196
    invoke-direct {p0}, Lcom/meizu/settings/deviceinfo/FlymeEraseSettings;->startConfirmPassword()V

    goto :goto_3e

    .line 198
    :cond_31
    new-instance p1, Ljava/lang/Thread;

    new-instance v0, Lcom/meizu/settings/deviceinfo/-$$Lambda$FlymeEraseSettings$vm3jn9xaUz6IfHw9D6lZR60CVTg;

    invoke-direct {v0, p0}, Lcom/meizu/settings/deviceinfo/-$$Lambda$FlymeEraseSettings$vm3jn9xaUz6IfHw9D6lZR60CVTg;-><init>(Lcom/meizu/settings/deviceinfo/FlymeEraseSettings;)V

    invoke-direct {p1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    :goto_3e
    return-void

    nop

    :pswitch_data_40
    .packed-switch 0x3e9
        :pswitch_15  #000003e9
        :pswitch_15  #000003ea
        :pswitch_15  #000003eb
    .end packed-switch
.end method

.method private handleCleanAction(I)V
    .registers 9

    .line 546
    iget-object v0, p0, Lcom/meizu/settings/deviceinfo/FlymeEraseSettings;->mAccountHelper:Lcom/meizu/settings/utils/FlymeAccountHelper;

    invoke-virtual {v0}, Lcom/meizu/settings/utils/FlymeAccountHelper;->mzAccountAppInstalled()Z

    move-result v0

    .line 548
    iget-object v1, p0, Lcom/meizu/settings/deviceinfo/FlymeEraseSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 549
    iget-object v2, p0, Lcom/meizu/settings/deviceinfo/FlymeEraseSettings;->mAccountHelper:Lcom/meizu/settings/utils/FlymeAccountHelper;

    invoke-virtual {v2}, Lcom/meizu/settings/utils/FlymeAccountHelper;->getFlymeName()Ljava/lang/String;

    move-result-object v2

    .line 550
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1e

    .line 551
    iget-object v2, p0, Lcom/meizu/settings/deviceinfo/FlymeEraseSettings;->mAccountHelper:Lcom/meizu/settings/utils/FlymeAccountHelper;

    invoke-virtual {v2}, Lcom/meizu/settings/utils/FlymeAccountHelper;->getPhoneNumber()Ljava/lang/String;

    move-result-object v2

    :cond_1e
    const/4 v3, 0x5

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-ne p1, v3, :cond_3d

    const p1, 0x7f1212a5

    .line 554
    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/meizu/settings/deviceinfo/FlymeEraseSettings;->mTitle:Ljava/lang/String;

    const p1, 0x7f1212a4

    .line 555
    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/meizu/settings/deviceinfo/FlymeEraseSettings;->mMsg:Ljava/lang/String;

    const-string p1, "flyme.intent.action.MZ_WIPE_ALL"

    .line 556
    iput-object p1, p0, Lcom/meizu/settings/deviceinfo/FlymeEraseSettings;->mCurrentCleanAction:Ljava/lang/String;

    const/16 p1, 0x3eb

    move v1, v4

    goto :goto_6f

    :cond_3d
    const/4 v3, 0x3

    const v6, 0x7f1212a7

    if-ne p1, v3, :cond_59

    const p1, 0x7f1212a8

    .line 566
    invoke-virtual {p0, p1}, Landroid/preference/PreferenceFragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/meizu/settings/deviceinfo/FlymeEraseSettings;->mTitle:Ljava/lang/String;

    .line 567
    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/meizu/settings/deviceinfo/FlymeEraseSettings;->mMsg:Ljava/lang/String;

    const-string p1, "android.intent.action.MASTER_CLEAR"

    .line 568
    iput-object p1, p0, Lcom/meizu/settings/deviceinfo/FlymeEraseSettings;->mCurrentCleanAction:Ljava/lang/String;

    const/16 p1, 0x3e9

    goto :goto_6e

    :cond_59
    const p1, 0x7f1212a6

    .line 571
    invoke-virtual {p0, p1}, Landroid/preference/PreferenceFragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/meizu/settings/deviceinfo/FlymeEraseSettings;->mTitle:Ljava/lang/String;

    .line 572
    invoke-virtual {p0, v6}, Landroid/preference/PreferenceFragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/meizu/settings/deviceinfo/FlymeEraseSettings;->mMsg:Ljava/lang/String;

    const-string p1, "flyme.intent.action.MZ_WIPE_SDCARD"

    .line 573
    iput-object p1, p0, Lcom/meizu/settings/deviceinfo/FlymeEraseSettings;->mCurrentCleanAction:Ljava/lang/String;

    const/16 p1, 0x3ea

    :goto_6e
    move v1, v5

    .line 576
    :goto_6f
    iput p1, p0, Lcom/meizu/settings/deviceinfo/FlymeEraseSettings;->mCurrentDoAction:I

    if-eqz v0, :cond_9f

    const p1, 0x7f121759

    .line 578
    invoke-virtual {p0, p1}, Landroid/preference/PreferenceFragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/meizu/settings/deviceinfo/FlymeEraseSettings;->mVerifyFlymePwdDlgTitle:Ljava/lang/String;

    const p1, 0x7f121758

    new-array v0, v4, [Ljava/lang/Object;

    aput-object v2, v0, v5

    .line 579
    invoke-virtual {p0, p1, v0}, Landroid/preference/PreferenceFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, ""

    if-eqz v1, :cond_95

    .line 581
    iget-object v1, p0, Lcom/meizu/settings/deviceinfo/FlymeEraseSettings;->mAccountHelper:Lcom/meizu/settings/utils/FlymeAccountHelper;

    iget-object v2, p0, Lcom/meizu/settings/deviceinfo/FlymeEraseSettings;->mBusinessStateChangeListenner:Lcom/meizu/settings/utils/FlymeAccountHelper$BusinessStateChangeListenner;

    iget-object p0, p0, Lcom/meizu/settings/deviceinfo/FlymeEraseSettings;->mVerifyFlymePwdDlgTitle:Ljava/lang/String;

    invoke-virtual {v1, v2, p0, p1, v0}, Lcom/meizu/settings/utils/FlymeAccountHelper;->logout(Lcom/meizu/settings/utils/FlymeAccountHelper$BusinessStateChangeListenner;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_a8

    .line 583
    :cond_95
    iget-object v1, p0, Lcom/meizu/settings/deviceinfo/FlymeEraseSettings;->mAccountHelper:Lcom/meizu/settings/utils/FlymeAccountHelper;

    iget-object v2, p0, Lcom/meizu/settings/deviceinfo/FlymeEraseSettings;->mBusinessStateChangeListenner:Lcom/meizu/settings/utils/FlymeAccountHelper$BusinessStateChangeListenner;

    iget-object p0, p0, Lcom/meizu/settings/deviceinfo/FlymeEraseSettings;->mVerifyFlymePwdDlgTitle:Ljava/lang/String;

    invoke-virtual {v1, v2, p0, p1, v0}, Lcom/meizu/settings/utils/FlymeAccountHelper;->validatePassword(Lcom/meizu/settings/utils/FlymeAccountHelper$BusinessStateChangeListenner;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_a8

    .line 586
    :cond_9f
    iget-object p1, p0, Lcom/meizu/settings/deviceinfo/FlymeEraseSettings;->mTitle:Ljava/lang/String;

    iget-object v0, p0, Lcom/meizu/settings/deviceinfo/FlymeEraseSettings;->mMsg:Ljava/lang/String;

    iget v1, p0, Lcom/meizu/settings/deviceinfo/FlymeEraseSettings;->mCurrentDoAction:I

    invoke-direct {p0, p1, v0, v1}, Lcom/meizu/settings/deviceinfo/FlymeEraseSettings;->showDialog(Ljava/lang/String;Ljava/lang/String;I)V

    :goto_a8
    return-void
.end method

.method private initPreference()V
    .registers 3

    .line 171
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string/jumbo v1, "reset_network_settings"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/settings/deviceinfo/FlymeEraseSettings;->mResetNetworkSettings:Landroid/preference/Preference;

    .line 172
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string/jumbo v1, "reset_app_settings"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/settings/deviceinfo/FlymeEraseSettings;->mResetAppSettings:Landroid/preference/Preference;

    .line 173
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string v1, "format_system"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/settings/deviceinfo/FlymeEraseSettings;->mFormatSystem:Landroid/preference/Preference;

    .line 174
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string v1, "format_storage"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/settings/deviceinfo/FlymeEraseSettings;->mFormatStorage:Landroid/preference/Preference;

    .line 175
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string v1, "factory_reset"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/settings/deviceinfo/FlymeEraseSettings;->mFactoryReset:Landroid/preference/Preference;

    .line 177
    invoke-static {}, Landroid/os/BuildExt;->isShopDemoVersion()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4a

    .line 178
    iget-object v0, p0, Lcom/meizu/settings/deviceinfo/FlymeEraseSettings;->mFormatStorage:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 188
    :cond_4a
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object p0

    invoke-static {p0, v1}, Lcom/meizu/settings/utils/MzUtils;->showPreferenceScreenBottomDivider(Landroid/preference/PreferenceScreen;Z)V

    return-void
.end method

.method private isNonEnableableFallback(Ljava/lang/String;)Z
    .registers 2

    const/4 p0, 0x0

    return p0
.end method

.method private showDialog(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 6

    .line 308
    new-instance v0, Lcom/meizu/settings/deviceinfo/FlymeEraseSettings$3;

    invoke-direct {v0, p0, p3}, Lcom/meizu/settings/deviceinfo/FlymeEraseSettings$3;-><init>(Lcom/meizu/settings/deviceinfo/FlymeEraseSettings;I)V

    .line 313
    new-instance p3, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/meizu/settings/deviceinfo/FlymeEraseSettings;->mContext:Landroid/content/Context;

    invoke-direct {p3, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 314
    invoke-virtual {p3, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 315
    invoke-virtual {p3, p2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 316
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f120f9e

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 317
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f120442

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p3, p0, p1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 318
    invoke-virtual {p3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p0

    .line 319
    invoke-virtual {p0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method private showResetDialog()V
    .registers 3

    .line 597
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/meizu/settings/deviceinfo/FlymeEraseSettings$6;

    invoke-direct {v1, p0}, Lcom/meizu/settings/deviceinfo/FlymeEraseSettings$6;-><init>(Lcom/meizu/settings/deviceinfo/FlymeEraseSettings;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private startAppsReset()V
    .registers 2

    .line 230
    invoke-direct {p0}, Lcom/meizu/settings/deviceinfo/FlymeEraseSettings;->showResetDialog()V

    .line 231
    new-instance v0, Lcom/meizu/settings/deviceinfo/FlymeEraseSettings$2;

    invoke-direct {v0, p0}, Lcom/meizu/settings/deviceinfo/FlymeEraseSettings$2;-><init>(Lcom/meizu/settings/deviceinfo/FlymeEraseSettings;)V

    invoke-static {v0}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private startClean(Ljava/lang/String;)V
    .registers 3

    .line 436
    invoke-static {}, Lcom/android/settings/Utils;->isMonkeyRunning()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 440
    :cond_7
    invoke-static {}, Landroid/os/BuildExt;->isProductInternational()Z

    move-result v0

    if-eqz v0, :cond_21

    const-string v0, "flyme.intent.action.MZ_WIPE_ALL"

    .line 441
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1d

    const-string v0, "android.intent.action.MASTER_CLEAR"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 442
    :cond_1d
    invoke-direct {p0, p1}, Lcom/meizu/settings/deviceinfo/FlymeEraseSettings;->wipeFrp(Ljava/lang/String;)V

    return-void

    .line 447
    :cond_21
    invoke-direct {p0, p1}, Lcom/meizu/settings/deviceinfo/FlymeEraseSettings;->doMasterClear(Ljava/lang/String;)V

    return-void
.end method

.method private startConfirmPassword()V
    .registers 8

    .line 303
    const-class v0, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    const/4 v4, -0x1

    const/4 v5, 0x2

    move-object v1, p0

    move-object v2, p0

    invoke-virtual/range {v1 .. v6}, Lcom/meizu/settings/SettingsPreferenceFragment;->startFragment(Landroid/app/Fragment;Ljava/lang/String;IILandroid/os/Bundle;)Z

    return-void
.end method

.method private startNetworkReset()V
    .registers 7

    .line 323
    invoke-static {}, Lcom/android/settings/Utils;->isMonkeyRunning()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 326
    :cond_7
    invoke-direct {p0}, Lcom/meizu/settings/deviceinfo/FlymeEraseSettings;->showResetDialog()V

    .line 329
    iget-object v0, p0, Lcom/meizu/settings/deviceinfo/FlymeEraseSettings;->mContext:Landroid/content/Context;

    const-string v1, "connectivity"

    .line 332
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    if-eqz v1, :cond_19

    .line 334
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->factoryReset()V

    :cond_19
    const-string/jumbo v1, "wifi"

    .line 338
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    if-eqz v1, :cond_27

    .line 340
    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->factoryReset()V

    .line 343
    :cond_27
    iget-object v1, p0, Lcom/meizu/settings/deviceinfo/FlymeEraseSettings;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoList()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_a8

    .line 344
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_a8

    .line 345
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/SubscriptionInfo;

    .line 346
    invoke-virtual {v2}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v2

    const-string/jumbo v3, "phone"

    .line 348
    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/TelephonyManager;

    if-eqz v3, :cond_5b

    .line 350
    invoke-virtual {v3, v2}, Landroid/telephony/TelephonyManager;->factoryReset(I)V

    .line 353
    :cond_5b
    invoke-static {v2}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v4

    .line 352
    invoke-static {v0, v4}, Lcom/android/ims/ImsManager;->getInstance(Landroid/content/Context;I)Lcom/android/ims/ImsManager;

    move-result-object v4

    .line 353
    invoke-virtual {v4}, Lcom/android/ims/ImsManager;->factoryReset()V

    const-string v4, "netpolicy"

    .line 356
    invoke-virtual {v0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/NetworkPolicyManager;

    if-eqz v4, :cond_77

    .line 358
    invoke-virtual {v3, v2}, Landroid/telephony/TelephonyManager;->getSubscriberId(I)Ljava/lang/String;

    move-result-object v3

    .line 359
    invoke-virtual {v4, v3}, Landroid/net/NetworkPolicyManager;->factoryReset(Ljava/lang/String;)V

    :cond_77
    const-string v3, "content://telephony/carriers/restore"

    .line 362
    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 364
    invoke-static {v2}, Landroid/telephony/SubscriptionManager;->isUsableSubIdValue(I)Z

    move-result v4

    if-eqz v4, :cond_9d

    .line 365
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "subId/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 368
    :cond_9d
    iget-object v2, p0, Lcom/meizu/settings/deviceinfo/FlymeEraseSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v4, 0x0

    .line 369
    invoke-virtual {v2, v3, v4, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_3d

    .line 373
    :cond_a8
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    if-eqz v1, :cond_ba

    .line 374
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    new-instance v2, Lcom/meizu/settings/deviceinfo/FlymeEraseSettings$4;

    invoke-direct {v2, p0, v0}, Lcom/meizu/settings/deviceinfo/FlymeEraseSettings$4;-><init>(Lcom/meizu/settings/deviceinfo/FlymeEraseSettings;Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_ba
    return-void
.end method

.method private wipeFrp(Ljava/lang/String;)V
    .registers 5

    .line 459
    iget-object v0, p0, Lcom/meizu/settings/deviceinfo/FlymeEraseSettings;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "persistent_data_block"

    .line 460
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/service/persistentdata/PersistentDataBlockManager;

    .line 461
    iget-object v1, p0, Lcom/meizu/settings/deviceinfo/FlymeEraseSettings;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "oem_lock"

    .line 462
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/service/oemlock/OemLockManager;

    if-eqz v0, :cond_32

    .line 464
    invoke-virtual {v1}, Landroid/service/oemlock/OemLockManager;->isOemUnlockAllowed()Z

    move-result v1

    if-nez v1, :cond_32

    iget-object v1, p0, Lcom/meizu/settings/deviceinfo/FlymeEraseSettings;->mContext:Landroid/content/Context;

    .line 465
    invoke-static {v1}, Lcom/android/settings/Utils;->isDeviceProvisioned(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_32

    .line 469
    new-instance v1, Lcom/meizu/settings/deviceinfo/FlymeEraseSettings$5;

    invoke-direct {v1, p0, v0, p1}, Lcom/meizu/settings/deviceinfo/FlymeEraseSettings$5;-><init>(Lcom/meizu/settings/deviceinfo/FlymeEraseSettings;Landroid/service/persistentdata/PersistentDataBlockManager;Ljava/lang/String;)V

    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/Void;

    .line 498
    invoke-virtual {v1, p0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_35

    .line 500
    :cond_32
    invoke-direct {p0, p1}, Lcom/meizu/settings/deviceinfo/FlymeEraseSettings;->doMasterClear(Ljava/lang/String;)V

    :goto_35
    return-void
.end method


# virtual methods
.method public synthetic lambda$handleAction$0$FlymeEraseSettings()V
    .registers 1

    .line 198
    invoke-direct {p0}, Lcom/meizu/settings/deviceinfo/FlymeEraseSettings;->startNetworkReset()V

    return-void
.end method

.method public synthetic lambda$onActivityResult$1$FlymeEraseSettings()V
    .registers 1

    .line 419
    invoke-direct {p0}, Lcom/meizu/settings/deviceinfo/FlymeEraseSettings;->startNetworkReset()V

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 5

    .line 406
    invoke-super {p0, p1, p2, p3}, Landroid/preference/PreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 407
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "requestCode = "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " resultCode = "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string v0, "FlymeEraseSettings"

    invoke-static {v0, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p3, -0x1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_2e

    if-ne p2, p3, :cond_2e

    .line 416
    iget-object p1, p0, Lcom/meizu/settings/deviceinfo/FlymeEraseSettings;->mCurrentCleanAction:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/meizu/settings/deviceinfo/FlymeEraseSettings;->startClean(Ljava/lang/String;)V

    return-void

    :cond_2e
    const/4 v0, 0x2

    if-ne p1, v0, :cond_40

    if-ne p2, p3, :cond_40

    .line 419
    new-instance p1, Ljava/lang/Thread;

    new-instance p2, Lcom/meizu/settings/deviceinfo/-$$Lambda$FlymeEraseSettings$9q7zprv1LiFnZKHVgHdNzIO15xY;

    invoke-direct {p2, p0}, Lcom/meizu/settings/deviceinfo/-$$Lambda$FlymeEraseSettings$9q7zprv1LiFnZKHVgHdNzIO15xY;-><init>(Lcom/meizu/settings/deviceinfo/FlymeEraseSettings;)V

    invoke-direct {p1, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    :cond_40
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 3

    .line 158
    invoke-super {p0, p1}, Lcom/meizu/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    .line 159
    invoke-virtual {p0, p1}, Lcom/meizu/settings/SettingsPreferenceFragment;->setHasWhiteNavigationbar(Z)V

    const p1, 0x7f160066

    .line 160
    invoke-virtual {p0, p1}, Landroid/preference/PreferenceFragment;->addPreferencesFromResource(I)V

    .line 161
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    iput-object p1, p0, Lcom/meizu/settings/deviceinfo/FlymeEraseSettings;->mContext:Landroid/content/Context;

    .line 163
    iget-object p1, p0, Lcom/meizu/settings/deviceinfo/FlymeEraseSettings;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/meizu/settings/utils/FlymeAccountHelper;->getInstance(Landroid/content/Context;)Lcom/meizu/settings/utils/FlymeAccountHelper;

    move-result-object p1

    iput-object p1, p0, Lcom/meizu/settings/deviceinfo/FlymeEraseSettings;->mAccountHelper:Lcom/meizu/settings/utils/FlymeAccountHelper;

    .line 164
    iget-object p1, p0, Lcom/meizu/settings/deviceinfo/FlymeEraseSettings;->mContext:Landroid/content/Context;

    const-string/jumbo v0, "user"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/UserManager;

    iput-object p1, p0, Lcom/meizu/settings/deviceinfo/FlymeEraseSettings;->mUserManager:Landroid/os/UserManager;

    .line 165
    invoke-virtual {p0}, Lcom/meizu/settings/SettingsPreferenceFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/meizu/settings/security/FlymeLockPasswordUtils;->getInstance(Landroid/content/Context;)Lcom/meizu/settings/security/FlymeLockPasswordUtils;

    move-result-object p1

    iput-object p1, p0, Lcom/meizu/settings/deviceinfo/FlymeEraseSettings;->mFlymeLockPasswordUtils:Lcom/meizu/settings/security/FlymeLockPasswordUtils;

    .line 167
    invoke-direct {p0}, Lcom/meizu/settings/deviceinfo/FlymeEraseSettings;->initPreference()V

    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .registers 5

    .line 518
    iget-object v0, p0, Lcom/meizu/settings/deviceinfo/FlymeEraseSettings;->mResetNetworkSettings:Landroid/preference/Preference;

    const/4 v1, 0x1

    if-ne p2, v0, :cond_17

    const p1, 0x7f1211ae

    .line 519
    invoke-virtual {p0, p1}, Landroid/preference/PreferenceFragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    const p2, 0x7f1211a8

    .line 520
    invoke-virtual {p0, p2}, Landroid/preference/PreferenceFragment;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 519
    invoke-direct {p0, p1, p2, v1}, Lcom/meizu/settings/deviceinfo/FlymeEraseSettings;->showDialog(Ljava/lang/String;Ljava/lang/String;I)V

    return v1

    .line 522
    :cond_17
    iget-object v0, p0, Lcom/meizu/settings/deviceinfo/FlymeEraseSettings;->mResetAppSettings:Landroid/preference/Preference;

    if-ne p2, v0, :cond_2e

    const p1, 0x7f121194

    .line 523
    invoke-virtual {p0, p1}, Landroid/preference/PreferenceFragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    const p2, 0x7f121195

    .line 524
    invoke-virtual {p0, p2}, Landroid/preference/PreferenceFragment;->getString(I)Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x2

    .line 523
    invoke-direct {p0, p1, p2, v0}, Lcom/meizu/settings/deviceinfo/FlymeEraseSettings;->showDialog(Ljava/lang/String;Ljava/lang/String;I)V

    return v1

    .line 526
    :cond_2e
    iget-object v0, p0, Lcom/meizu/settings/deviceinfo/FlymeEraseSettings;->mFormatSystem:Landroid/preference/Preference;

    if-ne p2, v0, :cond_49

    const p1, 0x7f1204dc

    .line 527
    invoke-virtual {p0, p1}, Landroid/preference/PreferenceFragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/meizu/settings/deviceinfo/FlymeEraseSettings;->mVerifyFlymePwdDlgTitle:Ljava/lang/String;

    .line 528
    iget-object p1, p0, Lcom/meizu/settings/deviceinfo/FlymeEraseSettings;->mVerifyFlymePwdDlgTitle:Ljava/lang/String;

    const p2, 0x7f1208e8

    .line 529
    invoke-virtual {p0, p2}, Landroid/preference/PreferenceFragment;->getString(I)Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x3

    .line 528
    invoke-direct {p0, p1, p2, v0}, Lcom/meizu/settings/deviceinfo/FlymeEraseSettings;->showDialog(Ljava/lang/String;Ljava/lang/String;I)V

    return v1

    .line 531
    :cond_49
    iget-object v0, p0, Lcom/meizu/settings/deviceinfo/FlymeEraseSettings;->mFormatStorage:Landroid/preference/Preference;

    if-ne p2, v0, :cond_64

    const p1, 0x7f12127d

    .line 532
    invoke-virtual {p0, p1}, Landroid/preference/PreferenceFragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/meizu/settings/deviceinfo/FlymeEraseSettings;->mVerifyFlymePwdDlgTitle:Ljava/lang/String;

    .line 533
    iget-object p1, p0, Lcom/meizu/settings/deviceinfo/FlymeEraseSettings;->mVerifyFlymePwdDlgTitle:Ljava/lang/String;

    const p2, 0x7f1208e7

    .line 534
    invoke-virtual {p0, p2}, Landroid/preference/PreferenceFragment;->getString(I)Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x4

    .line 533
    invoke-direct {p0, p1, p2, v0}, Lcom/meizu/settings/deviceinfo/FlymeEraseSettings;->showDialog(Ljava/lang/String;Ljava/lang/String;I)V

    return v1

    .line 536
    :cond_64
    iget-object v0, p0, Lcom/meizu/settings/deviceinfo/FlymeEraseSettings;->mFactoryReset:Landroid/preference/Preference;

    if-ne p2, v0, :cond_7f

    const p1, 0x7f12085d

    .line 537
    invoke-virtual {p0, p1}, Landroid/preference/PreferenceFragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/meizu/settings/deviceinfo/FlymeEraseSettings;->mVerifyFlymePwdDlgTitle:Ljava/lang/String;

    .line 538
    iget-object p1, p0, Lcom/meizu/settings/deviceinfo/FlymeEraseSettings;->mVerifyFlymePwdDlgTitle:Ljava/lang/String;

    const p2, 0x7f12085b

    .line 539
    invoke-virtual {p0, p2}, Landroid/preference/PreferenceFragment;->getString(I)Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x5

    .line 538
    invoke-direct {p0, p1, p2, v0}, Lcom/meizu/settings/deviceinfo/FlymeEraseSettings;->showDialog(Ljava/lang/String;Ljava/lang/String;I)V

    return v1

    .line 542
    :cond_7f
    invoke-super {p0, p1, p2}, Lcom/meizu/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result p0

    return p0
.end method

.method public onResume()V
    .registers 3

    .line 425
    invoke-super {p0}, Lcom/meizu/settings/SettingsPreferenceFragment;->onResume()V

    .line 426
    iget-object v0, p0, Lcom/meizu/settings/deviceinfo/FlymeEraseSettings;->mUserManager:Landroid/os/UserManager;

    const-string v1, "no_factory_reset"

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12

    const-string v0, "format_system"

    .line 427
    invoke-virtual {p0, v0}, Lcom/meizu/settings/SettingsPreferenceFragment;->removePreference(Ljava/lang/String;)V

    :cond_12
    return-void
.end method
