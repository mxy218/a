.class public Lcom/meizu/settings/deviceinfo/FlymePrivacySettings;
.super Lcom/meizu/settings/SettingsPreferenceFragment;
.source "FlymePrivacySettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Lcom/meizu/settings/search/Indexable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/settings/deviceinfo/FlymePrivacySettings$PrivacySearchIndexProvider;
    }
.end annotation


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/meizu/settings/search/Indexable$SearchIndexProvider;


# instance fields
.field private mAutoRestore:Lcom/meizu/common/preference/SwitchPreference;

.field private mBackup:Lcom/meizu/common/preference/SwitchPreference;

.field private mBackupManager:Landroid/app/backup/IBackupManager;

.field private mConfigure:Landroid/preference/PreferenceScreen;

.field private mConfirmDialog:Landroid/app/Dialog;

.field private mDialogType:I

.field private mEnabled:Z

.field private preferenceChangeListener:Landroid/preference/Preference$OnPreferenceChangeListener;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 271
    new-instance v0, Lcom/meizu/settings/deviceinfo/FlymePrivacySettings$PrivacySearchIndexProvider;

    invoke-direct {v0}, Lcom/meizu/settings/deviceinfo/FlymePrivacySettings$PrivacySearchIndexProvider;-><init>()V

    sput-object v0, Lcom/meizu/settings/deviceinfo/FlymePrivacySettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/meizu/settings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 53
    invoke-direct {p0}, Lcom/meizu/settings/SettingsPreferenceFragment;-><init>()V

    .line 137
    new-instance v0, Lcom/meizu/settings/deviceinfo/FlymePrivacySettings$1;

    invoke-direct {v0, p0}, Lcom/meizu/settings/deviceinfo/FlymePrivacySettings$1;-><init>(Lcom/meizu/settings/deviceinfo/FlymePrivacySettings;)V

    iput-object v0, p0, Lcom/meizu/settings/deviceinfo/FlymePrivacySettings;->preferenceChangeListener:Landroid/preference/Preference$OnPreferenceChangeListener;

    return-void
.end method

.method static synthetic access$000(Lcom/meizu/settings/deviceinfo/FlymePrivacySettings;)Lcom/meizu/common/preference/SwitchPreference;
    .registers 1

    .line 53
    iget-object p0, p0, Lcom/meizu/settings/deviceinfo/FlymePrivacySettings;->mBackup:Lcom/meizu/common/preference/SwitchPreference;

    return-object p0
.end method

.method static synthetic access$100(Lcom/meizu/settings/deviceinfo/FlymePrivacySettings;)V
    .registers 1

    .line 53
    invoke-direct {p0}, Lcom/meizu/settings/deviceinfo/FlymePrivacySettings;->showEraseBackupDialog()V

    return-void
.end method

.method static synthetic access$200(Lcom/meizu/settings/deviceinfo/FlymePrivacySettings;Z)V
    .registers 2

    .line 53
    invoke-direct {p0, p1}, Lcom/meizu/settings/deviceinfo/FlymePrivacySettings;->setBackupEnabled(Z)V

    return-void
.end method

.method static synthetic access$300(Lcom/meizu/settings/deviceinfo/FlymePrivacySettings;)Lcom/meizu/common/preference/SwitchPreference;
    .registers 1

    .line 53
    iget-object p0, p0, Lcom/meizu/settings/deviceinfo/FlymePrivacySettings;->mAutoRestore:Lcom/meizu/common/preference/SwitchPreference;

    return-object p0
.end method

.method static synthetic access$400(Lcom/meizu/settings/deviceinfo/FlymePrivacySettings;)Landroid/app/backup/IBackupManager;
    .registers 1

    .line 53
    iget-object p0, p0, Lcom/meizu/settings/deviceinfo/FlymePrivacySettings;->mBackupManager:Landroid/app/backup/IBackupManager;

    return-object p0
.end method

.method static synthetic access$500(Landroid/content/Context;)Ljava/util/ArrayList;
    .registers 1

    .line 53
    invoke-static {p0}, Lcom/meizu/settings/deviceinfo/FlymePrivacySettings;->getNonVisibleKeys(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method private static getNonVisibleKeys(Landroid/content/Context;)Ljava/util/ArrayList;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 309
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "backup"

    .line 311
    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    .line 310
    invoke-static {v1}, Landroid/app/backup/IBackupManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/backup/IBackupManager;

    move-result-object v1

    const/4 v2, 0x0

    .line 314
    :try_start_10
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    invoke-interface {v1, v3}, Landroid/app/backup/IBackupManager;->isBackupServiceActive(I)Z

    move-result v1
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_18} :catch_19

    goto :goto_21

    :catch_19
    const-string v1, "FlymePrivateSettings"

    const-string v3, "Failed querying backup manager service activity status. Assuming it is inactive."

    .line 316
    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v2

    :goto_21
    if-eqz v1, :cond_29

    const-string v1, "backup_inactive"

    .line 320
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_38

    :cond_29
    const-string v1, "auto_restore"

    .line 322
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "configure_account"

    .line 323
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "backup_data"

    .line 324
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 327
    :goto_38
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string v1, "com.google.settings"

    .line 328
    invoke-virtual {p0, v1, v2}, Landroid/content/pm/PackageManager;->resolveContentProvider(Ljava/lang/String;I)Landroid/content/pm/ProviderInfo;

    move-result-object p0

    if-nez p0, :cond_49

    const-string p0, "backup_category"

    .line 329
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_49
    return-object v0
.end method

.method private setBackupEnabled(Z)V
    .registers 4

    .line 249
    iget-object v0, p0, Lcom/meizu/settings/deviceinfo/FlymePrivacySettings;->mBackupManager:Landroid/app/backup/IBackupManager;

    if-eqz v0, :cond_17

    .line 251
    :try_start_4
    invoke-interface {v0, p1}, Landroid/app/backup/IBackupManager;->setBackupEnabled(Z)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_7} :catch_8

    goto :goto_17

    .line 253
    :catch_8
    iget-object v0, p0, Lcom/meizu/settings/deviceinfo/FlymePrivacySettings;->mBackup:Lcom/meizu/common/preference/SwitchPreference;

    xor-int/lit8 v1, p1, 0x1

    invoke-virtual {v0, v1}, Lcom/meizu/common/preference/SwitchPreference;->setChecked(Z)V

    .line 254
    iget-object p0, p0, Lcom/meizu/settings/deviceinfo/FlymePrivacySettings;->mAutoRestore:Lcom/meizu/common/preference/SwitchPreference;

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1}, Landroid/preference/TwoStatePreference;->setEnabled(Z)V

    return-void

    .line 258
    :cond_17
    :goto_17
    iget-object v0, p0, Lcom/meizu/settings/deviceinfo/FlymePrivacySettings;->mBackup:Lcom/meizu/common/preference/SwitchPreference;

    invoke-virtual {v0, p1}, Lcom/meizu/common/preference/SwitchPreference;->setChecked(Z)V

    .line 259
    iget-object v0, p0, Lcom/meizu/settings/deviceinfo/FlymePrivacySettings;->mAutoRestore:Lcom/meizu/common/preference/SwitchPreference;

    invoke-virtual {v0, p1}, Landroid/preference/TwoStatePreference;->setEnabled(Z)V

    .line 260
    iget-object p0, p0, Lcom/meizu/settings/deviceinfo/FlymePrivacySettings;->mConfigure:Landroid/preference/PreferenceScreen;

    invoke-virtual {p0, p1}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    return-void
.end method

.method private setConfigureSummary(Ljava/lang/String;)V
    .registers 2

    if-eqz p1, :cond_8

    .line 209
    iget-object p0, p0, Lcom/meizu/settings/deviceinfo/FlymePrivacySettings;->mConfigure:Landroid/preference/PreferenceScreen;

    invoke-virtual {p0, p1}, Landroid/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_10

    .line 211
    :cond_8
    iget-object p0, p0, Lcom/meizu/settings/deviceinfo/FlymePrivacySettings;->mConfigure:Landroid/preference/PreferenceScreen;

    const p1, 0x7f120234

    invoke-virtual {p0, p1}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    :goto_10
    return-void
.end method

.method private showEraseBackupDialog()V
    .registers 4

    const/4 v0, 0x2

    .line 167
    iput v0, p0, Lcom/meizu/settings/deviceinfo/FlymePrivacySettings;->mDialogType:I

    .line 168
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f12023a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 170
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f12023b

    .line 171
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    .line 172
    invoke-virtual {v0, v1, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/high16 v1, 0x1040000

    .line 173
    invoke-virtual {v0, v1, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 174
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/settings/deviceinfo/FlymePrivacySettings;->mConfirmDialog:Landroid/app/Dialog;

    return-void
.end method

.method private updateConfigureSummary()V
    .registers 3

    .line 217
    :try_start_0
    iget-object v0, p0, Lcom/meizu/settings/deviceinfo/FlymePrivacySettings;->mBackupManager:Landroid/app/backup/IBackupManager;

    invoke-interface {v0}, Landroid/app/backup/IBackupManager;->getCurrentTransport()Ljava/lang/String;

    move-result-object v0

    .line 218
    iget-object v1, p0, Lcom/meizu/settings/deviceinfo/FlymePrivacySettings;->mBackupManager:Landroid/app/backup/IBackupManager;

    invoke-interface {v1, v0}, Landroid/app/backup/IBackupManager;->getDestinationString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 219
    invoke-direct {p0, v0}, Lcom/meizu/settings/deviceinfo/FlymePrivacySettings;->setConfigureSummary(Ljava/lang/String;)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_f} :catch_f

    :catch_f
    return-void
.end method

.method private updateToggles()V
    .registers 9

    .line 181
    invoke-virtual {p0}, Lcom/meizu/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 187
    :try_start_6
    iget-object v3, p0, Lcom/meizu/settings/deviceinfo/FlymePrivacySettings;->mBackupManager:Landroid/app/backup/IBackupManager;

    invoke-interface {v3}, Landroid/app/backup/IBackupManager;->isBackupEnabled()Z

    move-result v3
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_c} :catch_21

    .line 188
    :try_start_c
    iget-object v4, p0, Lcom/meizu/settings/deviceinfo/FlymePrivacySettings;->mBackupManager:Landroid/app/backup/IBackupManager;

    invoke-interface {v4}, Landroid/app/backup/IBackupManager;->getCurrentTransport()Ljava/lang/String;

    move-result-object v4

    .line 189
    iget-object v5, p0, Lcom/meizu/settings/deviceinfo/FlymePrivacySettings;->mBackupManager:Landroid/app/backup/IBackupManager;

    invoke-interface {v5, v4}, Landroid/app/backup/IBackupManager;->getConfigurationIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v5
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_18} :catch_1f

    .line 190
    :try_start_18
    iget-object v6, p0, Lcom/meizu/settings/deviceinfo/FlymePrivacySettings;->mBackupManager:Landroid/app/backup/IBackupManager;

    invoke-interface {v6, v4}, Landroid/app/backup/IBackupManager;->getDestinationString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_1e
    .catch Landroid/os/RemoteException; {:try_start_18 .. :try_end_1e} :catch_23

    goto :goto_28

    :catch_1f
    move-object v5, v1

    goto :goto_23

    :catch_21
    move-object v5, v1

    move v3, v2

    .line 193
    :catch_23
    :goto_23
    iget-object v4, p0, Lcom/meizu/settings/deviceinfo/FlymePrivacySettings;->mBackup:Lcom/meizu/common/preference/SwitchPreference;

    invoke-virtual {v4, v2}, Landroid/preference/TwoStatePreference;->setEnabled(Z)V

    .line 195
    :goto_28
    iget-object v4, p0, Lcom/meizu/settings/deviceinfo/FlymePrivacySettings;->mBackup:Lcom/meizu/common/preference/SwitchPreference;

    invoke-virtual {v4, v3}, Lcom/meizu/common/preference/SwitchPreference;->setChecked(Z)V

    .line 197
    iget-object v4, p0, Lcom/meizu/settings/deviceinfo/FlymePrivacySettings;->mAutoRestore:Lcom/meizu/common/preference/SwitchPreference;

    const/4 v6, 0x1

    const-string v7, "backup_auto_restore"

    invoke-static {v0, v7, v6}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v6, :cond_3a

    move v0, v6

    goto :goto_3b

    :cond_3a
    move v0, v2

    :goto_3b
    invoke-virtual {v4, v0}, Lcom/meizu/common/preference/SwitchPreference;->setChecked(Z)V

    .line 199
    iget-object v0, p0, Lcom/meizu/settings/deviceinfo/FlymePrivacySettings;->mAutoRestore:Lcom/meizu/common/preference/SwitchPreference;

    invoke-virtual {v0, v3}, Landroid/preference/TwoStatePreference;->setEnabled(Z)V

    if-eqz v5, :cond_48

    if-eqz v3, :cond_48

    move v2, v6

    .line 202
    :cond_48
    iget-object v0, p0, Lcom/meizu/settings/deviceinfo/FlymePrivacySettings;->mConfigure:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 203
    iget-object v0, p0, Lcom/meizu/settings/deviceinfo/FlymePrivacySettings;->mConfigure:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, v5}, Landroid/preference/PreferenceScreen;->setIntent(Landroid/content/Intent;)V

    .line 204
    invoke-direct {p0, v1}, Lcom/meizu/settings/deviceinfo/FlymePrivacySettings;->setConfigureSummary(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected getHelpResource()I
    .registers 1

    const p0, 0x7f120993

    return p0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5

    .line 230
    iget p1, p0, Lcom/meizu/settings/deviceinfo/FlymePrivacySettings;->mDialogType:I

    const/4 v0, 0x0

    const/4 v1, 0x2

    if-ne p1, v1, :cond_17

    const/4 p1, -0x1

    if-ne p2, p1, :cond_d

    .line 233
    invoke-direct {p0, v0}, Lcom/meizu/settings/deviceinfo/FlymePrivacySettings;->setBackupEnabled(Z)V

    goto :goto_14

    :cond_d
    const/4 p1, -0x2

    if-ne p2, p1, :cond_14

    const/4 p1, 0x1

    .line 236
    invoke-direct {p0, p1}, Lcom/meizu/settings/deviceinfo/FlymePrivacySettings;->setBackupEnabled(Z)V

    .line 238
    :cond_14
    :goto_14
    invoke-direct {p0}, Lcom/meizu/settings/deviceinfo/FlymePrivacySettings;->updateConfigureSummary()V

    .line 240
    :cond_17
    iput v0, p0, Lcom/meizu/settings/deviceinfo/FlymePrivacySettings;->mDialogType:I

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 6

    .line 76
    invoke-super {p0, p1}, Lcom/meizu/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 78
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/UserHandle;->isOwner()Z

    move-result p1

    iput-boolean p1, p0, Lcom/meizu/settings/deviceinfo/FlymePrivacySettings;->mEnabled:Z

    .line 79
    iget-boolean p1, p0, Lcom/meizu/settings/deviceinfo/FlymePrivacySettings;->mEnabled:Z

    if-nez p1, :cond_12

    return-void

    :cond_12
    const p1, 0x7f1600ac

    .line 83
    invoke-virtual {p0, p1}, Landroid/preference/PreferenceFragment;->addPreferencesFromResource(I)V

    .line 84
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object p1

    const-string v0, "backup"

    .line 86
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 85
    invoke-static {v0}, Landroid/app/backup/IBackupManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/backup/IBackupManager;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/settings/deviceinfo/FlymePrivacySettings;->mBackupManager:Landroid/app/backup/IBackupManager;

    const-string v0, "backup_data"

    .line 88
    invoke-virtual {p1, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/meizu/common/preference/SwitchPreference;

    iput-object v0, p0, Lcom/meizu/settings/deviceinfo/FlymePrivacySettings;->mBackup:Lcom/meizu/common/preference/SwitchPreference;

    .line 89
    iget-object v0, p0, Lcom/meizu/settings/deviceinfo/FlymePrivacySettings;->mBackup:Lcom/meizu/common/preference/SwitchPreference;

    iget-object v1, p0, Lcom/meizu/settings/deviceinfo/FlymePrivacySettings;->preferenceChangeListener:Landroid/preference/Preference$OnPreferenceChangeListener;

    invoke-virtual {v0, v1}, Landroid/preference/TwoStatePreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    const-string v0, "auto_restore"

    .line 91
    invoke-virtual {p1, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/meizu/common/preference/SwitchPreference;

    iput-object v0, p0, Lcom/meizu/settings/deviceinfo/FlymePrivacySettings;->mAutoRestore:Lcom/meizu/common/preference/SwitchPreference;

    .line 92
    iget-object v0, p0, Lcom/meizu/settings/deviceinfo/FlymePrivacySettings;->mAutoRestore:Lcom/meizu/common/preference/SwitchPreference;

    iget-object v1, p0, Lcom/meizu/settings/deviceinfo/FlymePrivacySettings;->preferenceChangeListener:Landroid/preference/Preference$OnPreferenceChangeListener;

    invoke-virtual {v0, v1}, Landroid/preference/TwoStatePreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    const-string v0, "configure_account"

    .line 94
    invoke-virtual {p1, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/meizu/settings/deviceinfo/FlymePrivacySettings;->mConfigure:Landroid/preference/PreferenceScreen;

    .line 96
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/meizu/settings/deviceinfo/FlymePrivacySettings;->getNonVisibleKeys(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v0

    .line 97
    invoke-virtual {p1}, Landroid/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_62
    if-ltz v1, :cond_78

    .line 99
    invoke-virtual {p1, v1}, Landroid/preference/PreferenceScreen;->getPreference(I)Landroid/preference/Preference;

    move-result-object v2

    .line 100
    invoke-virtual {v2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_75

    .line 101
    invoke-virtual {p1, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :cond_75
    add-int/lit8 v1, v1, -0x1

    goto :goto_62

    :cond_78
    const-string p1, "backup_category"

    .line 104
    invoke-virtual {p0, p1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p1

    check-cast p1, Landroid/preference/PreferenceCategory;

    if-eqz p1, :cond_9e

    .line 106
    invoke-virtual {p1}, Landroid/preference/PreferenceCategory;->getPreferenceCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_88
    if-ltz v1, :cond_9e

    .line 108
    invoke-virtual {p1, v1}, Landroid/preference/PreferenceCategory;->getPreference(I)Landroid/preference/Preference;

    move-result-object v2

    .line 109
    invoke-virtual {v2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9b

    .line 110
    invoke-virtual {p1, v2}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    :cond_9b
    add-int/lit8 v1, v1, -0x1

    goto :goto_88

    .line 114
    :cond_9e
    invoke-direct {p0}, Lcom/meizu/settings/deviceinfo/FlymePrivacySettings;->updateToggles()V

    return-void
.end method

.method public onResume()V
    .registers 2

    .line 119
    invoke-super {p0}, Lcom/meizu/settings/SettingsPreferenceFragment;->onResume()V

    .line 122
    iget-boolean v0, p0, Lcom/meizu/settings/deviceinfo/FlymePrivacySettings;->mEnabled:Z

    if-eqz v0, :cond_a

    .line 123
    invoke-direct {p0}, Lcom/meizu/settings/deviceinfo/FlymePrivacySettings;->updateToggles()V

    :cond_a
    return-void
.end method

.method public onStop()V
    .registers 2

    .line 129
    iget-object v0, p0, Lcom/meizu/settings/deviceinfo/FlymePrivacySettings;->mConfirmDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_f

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 130
    iget-object v0, p0, Lcom/meizu/settings/deviceinfo/FlymePrivacySettings;->mConfirmDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    :cond_f
    const/4 v0, 0x0

    .line 132
    iput-object v0, p0, Lcom/meizu/settings/deviceinfo/FlymePrivacySettings;->mConfirmDialog:Landroid/app/Dialog;

    const/4 v0, 0x0

    .line 133
    iput v0, p0, Lcom/meizu/settings/deviceinfo/FlymePrivacySettings;->mDialogType:I

    .line 134
    invoke-super {p0}, Lcom/meizu/settings/SettingsPreferenceFragment;->onStop()V

    return-void
.end method
