.class public Lcom/meizu/settings/secretsmode/FlymeSecreteModeDataManage;
.super Lcom/meizu/settings/SettingsPreferenceFragment;
.source "FlymeSecreteModeDataManage.java"


# instance fields
.field private mCallback:Lcom/meizu/settings/secretsmode/FlymeSecretsControlHelper$FlymeSecretsControlCallback;

.field private mClearDataDialog:Landroid/app/AlertDialog;

.field private mClearPref:Landroid/preference/Preference;

.field private mContentObserver:Landroid/database/ContentObserver;

.field private mContext:Landroid/content/Context;

.field private mExportDataDialog:Landroid/app/AlertDialog;

.field private mExportPef:Landroid/preference/Preference;

.field private mFlymeLockPasswordUtils:Lcom/meizu/settings/security/FlymeLockPasswordUtils;

.field private mLoadingDialog:Lcom/meizu/common/app/LoadingDialog;

.field private mSecretsControlHelper:Lcom/meizu/settings/secretsmode/FlymeSecretsControlHelper;

.field private mUsageStatsProxy:Lcom/meizu/settings/datareport/UsageStatsProxy;


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 31
    invoke-direct {p0}, Lcom/meizu/settings/SettingsPreferenceFragment;-><init>()V

    .line 47
    new-instance v0, Lcom/meizu/settings/secretsmode/FlymeSecreteModeDataManage$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/meizu/settings/secretsmode/FlymeSecreteModeDataManage$1;-><init>(Lcom/meizu/settings/secretsmode/FlymeSecreteModeDataManage;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/meizu/settings/secretsmode/FlymeSecreteModeDataManage;->mContentObserver:Landroid/database/ContentObserver;

    .line 57
    new-instance v0, Lcom/meizu/settings/secretsmode/FlymeSecreteModeDataManage$2;

    invoke-direct {v0, p0}, Lcom/meizu/settings/secretsmode/FlymeSecreteModeDataManage$2;-><init>(Lcom/meizu/settings/secretsmode/FlymeSecreteModeDataManage;)V

    iput-object v0, p0, Lcom/meizu/settings/secretsmode/FlymeSecreteModeDataManage;->mCallback:Lcom/meizu/settings/secretsmode/FlymeSecretsControlHelper$FlymeSecretsControlCallback;

    return-void
.end method

.method static synthetic access$000(Lcom/meizu/settings/secretsmode/FlymeSecreteModeDataManage;)V
    .registers 1

    .line 31
    invoke-direct {p0}, Lcom/meizu/settings/secretsmode/FlymeSecreteModeDataManage;->checkIfNeedFinish()V

    return-void
.end method

.method static synthetic access$100(Lcom/meizu/settings/secretsmode/FlymeSecreteModeDataManage;)Lcom/meizu/settings/secretsmode/FlymeSecretsControlHelper;
    .registers 1

    .line 31
    iget-object p0, p0, Lcom/meizu/settings/secretsmode/FlymeSecreteModeDataManage;->mSecretsControlHelper:Lcom/meizu/settings/secretsmode/FlymeSecretsControlHelper;

    return-object p0
.end method

.method static synthetic access$200(Lcom/meizu/settings/secretsmode/FlymeSecreteModeDataManage;I)V
    .registers 2

    .line 31
    invoke-direct {p0, p1}, Lcom/meizu/settings/secretsmode/FlymeSecreteModeDataManage;->handleManageDataDone(I)V

    return-void
.end method

.method static synthetic access$300(Lcom/meizu/settings/secretsmode/FlymeSecreteModeDataManage;)Lcom/meizu/settings/datareport/UsageStatsProxy;
    .registers 1

    .line 31
    iget-object p0, p0, Lcom/meizu/settings/secretsmode/FlymeSecreteModeDataManage;->mUsageStatsProxy:Lcom/meizu/settings/datareport/UsageStatsProxy;

    return-object p0
.end method

.method static synthetic access$400(Lcom/meizu/settings/secretsmode/FlymeSecreteModeDataManage;)Lcom/meizu/common/app/LoadingDialog;
    .registers 1

    .line 31
    iget-object p0, p0, Lcom/meizu/settings/secretsmode/FlymeSecreteModeDataManage;->mLoadingDialog:Lcom/meizu/common/app/LoadingDialog;

    return-object p0
.end method

.method static synthetic access$402(Lcom/meizu/settings/secretsmode/FlymeSecreteModeDataManage;Lcom/meizu/common/app/LoadingDialog;)Lcom/meizu/common/app/LoadingDialog;
    .registers 2

    .line 31
    iput-object p1, p0, Lcom/meizu/settings/secretsmode/FlymeSecreteModeDataManage;->mLoadingDialog:Lcom/meizu/common/app/LoadingDialog;

    return-object p1
.end method

.method static synthetic access$500(Lcom/meizu/settings/secretsmode/FlymeSecreteModeDataManage;)Landroid/content/Context;
    .registers 1

    .line 31
    iget-object p0, p0, Lcom/meizu/settings/secretsmode/FlymeSecreteModeDataManage;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$600(Lcom/meizu/settings/secretsmode/FlymeSecreteModeDataManage;)Lcom/meizu/settings/secretsmode/FlymeSecretsControlHelper$FlymeSecretsControlCallback;
    .registers 1

    .line 31
    iget-object p0, p0, Lcom/meizu/settings/secretsmode/FlymeSecreteModeDataManage;->mCallback:Lcom/meizu/settings/secretsmode/FlymeSecretsControlHelper$FlymeSecretsControlCallback;

    return-object p0
.end method

.method private checkIfNeedFinish()V
    .registers 3

    .line 92
    iget-object v0, p0, Lcom/meizu/settings/secretsmode/FlymeSecreteModeDataManage;->mFlymeLockPasswordUtils:Lcom/meizu/settings/security/FlymeLockPasswordUtils;

    const/4 v1, 0x4

    .line 93
    invoke-virtual {v0, v1}, Lcom/meizu/settings/security/FlymeLockPasswordUtils;->isPasswordEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/meizu/settings/secretsmode/FlymeSecreteModeDataManage;->mFlymeLockPasswordUtils:Lcom/meizu/settings/security/FlymeLockPasswordUtils;

    .line 94
    invoke-virtual {v0}, Lcom/meizu/settings/security/FlymeLockPasswordUtils;->isInSecretsMode()Z

    move-result v0

    if-nez v0, :cond_13

    const/4 v0, 0x1

    goto :goto_14

    :cond_13
    const/4 v0, 0x0

    :goto_14
    if-nez v0, :cond_17

    return-void

    .line 98
    :cond_17
    iget-object v0, p0, Lcom/meizu/settings/secretsmode/FlymeSecreteModeDataManage;->mClearDataDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_26

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_26

    .line 99
    iget-object v0, p0, Lcom/meizu/settings/secretsmode/FlymeSecreteModeDataManage;->mClearDataDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 101
    :cond_26
    iget-object v0, p0, Lcom/meizu/settings/secretsmode/FlymeSecreteModeDataManage;->mExportDataDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_35

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_35

    .line 102
    iget-object v0, p0, Lcom/meizu/settings/secretsmode/FlymeSecreteModeDataManage;->mExportDataDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 104
    :cond_35
    iget-object v0, p0, Lcom/meizu/settings/secretsmode/FlymeSecreteModeDataManage;->mLoadingDialog:Lcom/meizu/common/app/LoadingDialog;

    if-eqz v0, :cond_44

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_44

    .line 105
    iget-object v0, p0, Lcom/meizu/settings/secretsmode/FlymeSecreteModeDataManage;->mLoadingDialog:Lcom/meizu/common/app/LoadingDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 107
    :cond_44
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_51

    .line 108
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_51
    return-void
.end method

.method private handleManageDataDone(I)V
    .registers 4

    .line 129
    iget-object v0, p0, Lcom/meizu/settings/secretsmode/FlymeSecreteModeDataManage;->mContext:Landroid/content/Context;

    if-nez v0, :cond_5

    return-void

    .line 133
    :cond_5
    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/meizu/settings/secretsmode/FlymeSecreteModeDataManage$3;

    invoke-direct {v1, p0, p1}, Lcom/meizu/settings/secretsmode/FlymeSecreteModeDataManage$3;-><init>(Lcom/meizu/settings/secretsmode/FlymeSecreteModeDataManage;I)V

    const-wide/16 p0, 0x3e8

    invoke-virtual {v0, v1, p0, p1}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private showClearDataWarningDialog()V
    .registers 4

    .line 155
    iget-object v0, p0, Lcom/meizu/settings/secretsmode/FlymeSecreteModeDataManage;->mClearDataDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_8

    .line 156
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void

    .line 160
    :cond_8
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    const v1, 0x7f1212bb

    .line 162
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    const v1, 0x7f120442

    const/4 v2, 0x0

    .line 163
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const v1, 0x7f1212ba

    .line 164
    new-instance v2, Lcom/meizu/settings/secretsmode/FlymeSecreteModeDataManage$4;

    invoke-direct {v2, p0}, Lcom/meizu/settings/secretsmode/FlymeSecreteModeDataManage$4;-><init>(Lcom/meizu/settings/secretsmode/FlymeSecreteModeDataManage;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 176
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/settings/secretsmode/FlymeSecreteModeDataManage;->mClearDataDialog:Landroid/app/AlertDialog;

    .line 177
    iget-object p0, p0, Lcom/meizu/settings/secretsmode/FlymeSecreteModeDataManage;->mClearDataDialog:Landroid/app/AlertDialog;

    invoke-virtual {p0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method private showExportDataWarningDialog()V
    .registers 4

    .line 181
    iget-object v0, p0, Lcom/meizu/settings/secretsmode/FlymeSecreteModeDataManage;->mExportDataDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_8

    .line 182
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void

    .line 185
    :cond_8
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    const v1, 0x7f1212c8

    .line 187
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    const v1, 0x7f120442

    const/4 v2, 0x0

    .line 188
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const v1, 0x7f1212c7

    .line 189
    new-instance v2, Lcom/meizu/settings/secretsmode/FlymeSecreteModeDataManage$5;

    invoke-direct {v2, p0}, Lcom/meizu/settings/secretsmode/FlymeSecreteModeDataManage$5;-><init>(Lcom/meizu/settings/secretsmode/FlymeSecreteModeDataManage;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 201
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/settings/secretsmode/FlymeSecreteModeDataManage;->mExportDataDialog:Landroid/app/AlertDialog;

    .line 202
    iget-object p0, p0, Lcom/meizu/settings/secretsmode/FlymeSecreteModeDataManage;->mExportDataDialog:Landroid/app/AlertDialog;

    invoke-virtual {p0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 3

    .line 114
    invoke-super {p0, p1}, Lcom/meizu/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f16006f

    .line 115
    invoke-virtual {p0, p1}, Landroid/preference/PreferenceFragment;->addPreferencesFromResource(I)V

    const-string p1, "secrets_space_clean_data"

    .line 116
    invoke-virtual {p0, p1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p1

    iput-object p1, p0, Lcom/meizu/settings/secretsmode/FlymeSecreteModeDataManage;->mClearPref:Landroid/preference/Preference;

    const-string p1, "secrets_space_export_data"

    .line 117
    invoke-virtual {p0, p1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p1

    iput-object p1, p0, Lcom/meizu/settings/secretsmode/FlymeSecreteModeDataManage;->mExportPef:Landroid/preference/Preference;

    .line 118
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    iput-object p1, p0, Lcom/meizu/settings/secretsmode/FlymeSecreteModeDataManage;->mContext:Landroid/content/Context;

    .line 120
    iget-object p1, p0, Lcom/meizu/settings/secretsmode/FlymeSecreteModeDataManage;->mContext:Landroid/content/Context;

    .line 121
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/meizu/settings/security/FlymeLockPasswordUtils;->getInstance(Landroid/content/Context;)Lcom/meizu/settings/security/FlymeLockPasswordUtils;

    move-result-object p1

    iput-object p1, p0, Lcom/meizu/settings/secretsmode/FlymeSecreteModeDataManage;->mFlymeLockPasswordUtils:Lcom/meizu/settings/security/FlymeLockPasswordUtils;

    .line 123
    invoke-virtual {p0}, Lcom/meizu/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iget-object v0, p0, Lcom/meizu/settings/secretsmode/FlymeSecreteModeDataManage;->mContentObserver:Landroid/database/ContentObserver;

    .line 122
    invoke-static {p1, v0}, Lcom/meizu/settings/security/FlymeLockPasswordUtils;->registerSecretsModeRunningObserver(Landroid/content/ContentResolver;Landroid/database/ContentObserver;)V

    .line 124
    iget-object p1, p0, Lcom/meizu/settings/secretsmode/FlymeSecreteModeDataManage;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/meizu/settings/secretsmode/FlymeSecretsControlHelper;->getInstance(Landroid/content/Context;)Lcom/meizu/settings/secretsmode/FlymeSecretsControlHelper;

    move-result-object p1

    iput-object p1, p0, Lcom/meizu/settings/secretsmode/FlymeSecreteModeDataManage;->mSecretsControlHelper:Lcom/meizu/settings/secretsmode/FlymeSecretsControlHelper;

    .line 125
    iget-object p1, p0, Lcom/meizu/settings/secretsmode/FlymeSecreteModeDataManage;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/meizu/settings/datareport/UsageStatsProxy;->getInstance(Landroid/content/Context;)Lcom/meizu/settings/datareport/UsageStatsProxy;

    move-result-object p1

    iput-object p1, p0, Lcom/meizu/settings/secretsmode/FlymeSecreteModeDataManage;->mUsageStatsProxy:Lcom/meizu/settings/datareport/UsageStatsProxy;

    return-void
.end method

.method public onDestroy()V
    .registers 3

    .line 207
    invoke-super {p0}, Lcom/meizu/settings/SettingsPreferenceFragment;->onDestroy()V

    .line 209
    invoke-virtual {p0}, Lcom/meizu/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/meizu/settings/secretsmode/FlymeSecreteModeDataManage;->mContentObserver:Landroid/database/ContentObserver;

    .line 208
    invoke-static {v0, v1}, Lcom/meizu/settings/security/FlymeLockPasswordUtils;->unregisterSecretsModeRunningObserver(Landroid/content/ContentResolver;Landroid/database/ContentObserver;)V

    .line 210
    iget-object p0, p0, Lcom/meizu/settings/secretsmode/FlymeSecreteModeDataManage;->mSecretsControlHelper:Lcom/meizu/settings/secretsmode/FlymeSecretsControlHelper;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/meizu/settings/secretsmode/FlymeSecretsControlHelper;->setFlymeSecretsControlCallback(Lcom/meizu/settings/secretsmode/FlymeSecretsControlHelper$FlymeSecretsControlCallback;)V

    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .registers 4

    .line 146
    iget-object v0, p0, Lcom/meizu/settings/secretsmode/FlymeSecreteModeDataManage;->mClearPref:Landroid/preference/Preference;

    if-ne p2, v0, :cond_8

    .line 147
    invoke-direct {p0}, Lcom/meizu/settings/secretsmode/FlymeSecreteModeDataManage;->showClearDataWarningDialog()V

    goto :goto_f

    .line 148
    :cond_8
    iget-object v0, p0, Lcom/meizu/settings/secretsmode/FlymeSecreteModeDataManage;->mExportPef:Landroid/preference/Preference;

    if-ne p2, v0, :cond_f

    .line 149
    invoke-direct {p0}, Lcom/meizu/settings/secretsmode/FlymeSecreteModeDataManage;->showExportDataWarningDialog()V

    .line 151
    :cond_f
    :goto_f
    invoke-super {p0, p1, p2}, Lcom/meizu/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result p0

    return p0
.end method
