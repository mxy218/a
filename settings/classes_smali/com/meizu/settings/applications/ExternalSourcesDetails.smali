.class public Lcom/meizu/settings/applications/ExternalSourcesDetails;
.super Lcom/meizu/settings/RestrictedSettingsFragment;
.source "ExternalSourcesDetails.java"

# interfaces
.implements Lcom/meizu/settings/applications/ApplicationsState$Callbacks;
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "ExternalSourcesDetails"


# instance fields
.field private mAppBridge:Lcom/meizu/settings/applications/AppStateInstallAppsBridge;

.field private mAppEntry:Lcom/meizu/settings/applications/ApplicationsState$AppEntry;

.field private mAppOpsManager:Landroid/app/AppOpsManager;

.field private mFinishing:Z

.field private mInstallAppsState:Lcom/meizu/settings/applications/AppStateInstallAppsBridge$InstallAppsState;

.field private mListeningToPackageRemove:Z

.field private mPackageName:Ljava/lang/String;

.field private final mPackageRemovedReceiver:Landroid/content/BroadcastReceiver;

.field private mSession:Lcom/meizu/settings/applications/ApplicationsState$Session;

.field private mState:Lcom/meizu/settings/applications/ApplicationsState;

.field private mSwitchPref:Lcom/meizu/settings/widget/RestrictedSwitchPreference;

.field private mUserId:I

.field private mUserManager:Landroid/os/UserManager;


# direct methods
.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    .line 97
    invoke-direct {p0, v0}, Lcom/meizu/settings/RestrictedSettingsFragment;-><init>(Ljava/lang/String;)V

    .line 335
    new-instance v0, Lcom/meizu/settings/applications/ExternalSourcesDetails$1;

    invoke-direct {v0, p0}, Lcom/meizu/settings/applications/ExternalSourcesDetails$1;-><init>(Lcom/meizu/settings/applications/ExternalSourcesDetails;)V

    iput-object v0, p0, Lcom/meizu/settings/applications/ExternalSourcesDetails;->mPackageRemovedReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/meizu/settings/applications/ExternalSourcesDetails;)Z
    .registers 1

    .line 33
    iget-boolean p0, p0, Lcom/meizu/settings/applications/ExternalSourcesDetails;->mFinishing:Z

    return p0
.end method

.method static synthetic access$100(Lcom/meizu/settings/applications/ExternalSourcesDetails;)Lcom/meizu/settings/applications/ApplicationsState$AppEntry;
    .registers 1

    .line 33
    iget-object p0, p0, Lcom/meizu/settings/applications/ExternalSourcesDetails;->mAppEntry:Lcom/meizu/settings/applications/ApplicationsState$AppEntry;

    return-object p0
.end method

.method static synthetic access$200(Lcom/meizu/settings/applications/ExternalSourcesDetails;)V
    .registers 1

    .line 33
    invoke-direct {p0}, Lcom/meizu/settings/applications/ExternalSourcesDetails;->onPackageRemoved()V

    return-void
.end method

.method static getPreferenceSummary(Landroid/content/Context;Lcom/meizu/settings/applications/ApplicationsState$AppEntry;)Ljava/lang/CharSequence;
    .registers 3

    .line 202
    iget-object v0, p1, Lcom/meizu/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object p1, p1, Lcom/meizu/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget p1, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {p0, v0, p1}, Lcom/meizu/settings/applications/ExternalSourcesDetails;->getPreferenceSummary(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method static getPreferenceSummary(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/CharSequence;
    .registers 6

    .line 206
    invoke-static {p0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v0

    .line 209
    invoke-static {p2}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    move-result-object v1

    const-string v2, "no_install_unknown_sources"

    .line 207
    invoke-virtual {v0, v2, v1}, Landroid/os/UserManager;->getUserRestrictionSource(Ljava/lang/String;Landroid/os/UserHandle;)I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3b

    const/4 v1, 0x2

    if-eq v0, v1, :cond_33

    const/4 v1, 0x4

    if-eq v0, v1, :cond_33

    .line 217
    new-instance v0, Lcom/meizu/settings/applications/AppStateInstallAppsBridge;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1, v1}, Lcom/meizu/settings/applications/AppStateInstallAppsBridge;-><init>(Landroid/content/Context;Lcom/meizu/settings/applications/ApplicationsState;Lcom/meizu/settings/applications/AppStateBaseBridge$Callback;)V

    .line 218
    invoke-virtual {v0, p1, p2}, Lcom/meizu/settings/applications/AppStateInstallAppsBridge;->createInstallAppsStateFor(Ljava/lang/String;I)Lcom/meizu/settings/applications/AppStateInstallAppsBridge$InstallAppsState;

    move-result-object p1

    .line 219
    invoke-virtual {p1}, Lcom/meizu/settings/applications/AppStateInstallAppsBridge$InstallAppsState;->canInstallApps()Z

    move-result p1

    if-eqz p1, :cond_2b

    const p1, 0x7f1201a4

    goto :goto_2e

    :cond_2b
    const p1, 0x7f1201a5

    :goto_2e
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_33
    const p1, 0x7f1206fd

    .line 213
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3b
    const p1, 0x7f1206fb

    .line 215
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private onPackageRemoved()V
    .registers 3

    .line 330
    sget-object v0, Lcom/meizu/settings/applications/ExternalSourcesDetails;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onPackageRemoved, finish"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    .line 331
    iput-boolean v0, p0, Lcom/meizu/settings/applications/ExternalSourcesDetails;->mFinishing:Z

    .line 332
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->finishAndRemoveTask()V

    return-void
.end method

.method private refreshUi()Z
    .registers 6

    .line 238
    iget-object v0, p0, Lcom/meizu/settings/applications/ExternalSourcesDetails;->mUserManager:Landroid/os/UserManager;

    .line 239
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-static {v1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v1

    const-string v2, "no_install_unknown_sources"

    .line 238
    invoke-virtual {v0, v2, v1}, Landroid/os/UserManager;->hasBaseUserRestriction(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_27

    .line 240
    iget-object v0, p0, Lcom/meizu/settings/applications/ExternalSourcesDetails;->mSwitchPref:Lcom/meizu/settings/widget/RestrictedSwitchPreference;

    invoke-virtual {v0, v1}, Lcom/meizu/common/preference/SwitchPreference;->setChecked(Z)V

    .line 241
    iget-object v0, p0, Lcom/meizu/settings/applications/ExternalSourcesDetails;->mSwitchPref:Lcom/meizu/settings/widget/RestrictedSwitchPreference;

    const v2, 0x7f1206fb

    invoke-virtual {v0, v2}, Landroid/preference/TwoStatePreference;->setSummary(I)V

    .line 242
    iget-object p0, p0, Lcom/meizu/settings/applications/ExternalSourcesDetails;->mSwitchPref:Lcom/meizu/settings/widget/RestrictedSwitchPreference;

    invoke-virtual {p0, v1}, Lcom/meizu/settings/widget/RestrictedSwitchPreference;->setEnabled(Z)V

    return v3

    .line 245
    :cond_27
    iget-object v0, p0, Lcom/meizu/settings/applications/ExternalSourcesDetails;->mSwitchPref:Lcom/meizu/settings/widget/RestrictedSwitchPreference;

    invoke-virtual {v0, v2}, Lcom/meizu/settings/widget/RestrictedSwitchPreference;->checkRestrictionAndSetDisabled(Ljava/lang/String;)V

    .line 246
    iget-object v0, p0, Lcom/meizu/settings/applications/ExternalSourcesDetails;->mSwitchPref:Lcom/meizu/settings/widget/RestrictedSwitchPreference;

    invoke-virtual {v0}, Lcom/meizu/settings/widget/RestrictedSwitchPreference;->isDisabledByAdmin()Z

    move-result v0

    if-eqz v0, :cond_35

    return v3

    .line 249
    :cond_35
    iget-object v0, p0, Lcom/meizu/settings/applications/ExternalSourcesDetails;->mAppBridge:Lcom/meizu/settings/applications/AppStateInstallAppsBridge;

    iget-object v2, p0, Lcom/meizu/settings/applications/ExternalSourcesDetails;->mPackageName:Ljava/lang/String;

    iget-object v4, p0, Lcom/meizu/settings/applications/ExternalSourcesDetails;->mAppEntry:Lcom/meizu/settings/applications/ApplicationsState$AppEntry;

    iget-object v4, v4, Lcom/meizu/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v0, v2, v4}, Lcom/meizu/settings/applications/AppStateInstallAppsBridge;->createInstallAppsStateFor(Ljava/lang/String;I)Lcom/meizu/settings/applications/AppStateInstallAppsBridge$InstallAppsState;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/settings/applications/ExternalSourcesDetails;->mInstallAppsState:Lcom/meizu/settings/applications/AppStateInstallAppsBridge$InstallAppsState;

    .line 251
    iget-object v0, p0, Lcom/meizu/settings/applications/ExternalSourcesDetails;->mInstallAppsState:Lcom/meizu/settings/applications/AppStateInstallAppsBridge$InstallAppsState;

    invoke-virtual {v0}, Lcom/meizu/settings/applications/AppStateInstallAppsBridge$InstallAppsState;->isPotentialAppSource()Z

    move-result v0

    if-nez v0, :cond_53

    .line 252
    iget-object p0, p0, Lcom/meizu/settings/applications/ExternalSourcesDetails;->mSwitchPref:Lcom/meizu/settings/widget/RestrictedSwitchPreference;

    invoke-virtual {p0, v1}, Lcom/meizu/settings/widget/RestrictedSwitchPreference;->setEnabled(Z)V

    return v3

    .line 255
    :cond_53
    iget-object v0, p0, Lcom/meizu/settings/applications/ExternalSourcesDetails;->mSwitchPref:Lcom/meizu/settings/widget/RestrictedSwitchPreference;

    iget-object p0, p0, Lcom/meizu/settings/applications/ExternalSourcesDetails;->mInstallAppsState:Lcom/meizu/settings/applications/AppStateInstallAppsBridge$InstallAppsState;

    invoke-virtual {p0}, Lcom/meizu/settings/applications/AppStateInstallAppsBridge$InstallAppsState;->canInstallApps()Z

    move-result p0

    invoke-virtual {v0, p0}, Lcom/meizu/common/preference/SwitchPreference;->setChecked(Z)V

    return v3
.end method

.method private retrieveAppEntry()Ljava/lang/String;
    .registers 5

    .line 150
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_e

    const-string/jumbo v1, "package"

    .line 151
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_f

    :cond_e
    const/4 v1, 0x0

    :goto_f
    iput-object v1, p0, Lcom/meizu/settings/applications/ExternalSourcesDetails;->mPackageName:Ljava/lang/String;

    .line 152
    iget-object v1, p0, Lcom/meizu/settings/applications/ExternalSourcesDetails;->mPackageName:Ljava/lang/String;

    if-nez v1, :cond_3a

    if-nez v0, :cond_20

    .line 154
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    goto :goto_28

    :cond_20
    const-string v1, "intent"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/content/Intent;

    :goto_28
    if-eqz v1, :cond_3a

    .line 155
    invoke-virtual {v1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    if-eqz v2, :cond_3a

    .line 156
    invoke-virtual {v1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/meizu/settings/applications/ExternalSourcesDetails;->mPackageName:Ljava/lang/String;

    .line 160
    :cond_3a
    sget-object v1, Lcom/meizu/settings/applications/ExternalSourcesDetails;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "retrieveAppEntry, mPackageName:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/meizu/settings/applications/ExternalSourcesDetails;->mPackageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    iget-object v1, p0, Lcom/meizu/settings/applications/ExternalSourcesDetails;->mPackageName:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5e

    const-string p0, ""

    return-object p0

    :cond_5e
    if-nez v0, :cond_67

    .line 167
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    iput v0, p0, Lcom/meizu/settings/applications/ExternalSourcesDetails;->mUserId:I

    goto :goto_96

    :cond_67
    const/16 v1, -0x2710

    const-string v2, "android.intent.extra.USER_ID"

    .line 169
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/meizu/settings/applications/ExternalSourcesDetails;->mUserId:I

    .line 170
    iget v3, p0, Lcom/meizu/settings/applications/ExternalSourcesDetails;->mUserId:I

    if-ne v3, v1, :cond_96

    .line 171
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    if-eqz v1, :cond_96

    const-string v1, ":settings:show_fragment_args"

    .line 173
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_90

    .line 175
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    goto :goto_94

    .line 176
    :cond_90
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    :goto_94
    iput v0, p0, Lcom/meizu/settings/applications/ExternalSourcesDetails;->mUserId:I

    .line 180
    :cond_96
    :goto_96
    iget-object v0, p0, Lcom/meizu/settings/applications/ExternalSourcesDetails;->mState:Lcom/meizu/settings/applications/ApplicationsState;

    iget-object v1, p0, Lcom/meizu/settings/applications/ExternalSourcesDetails;->mPackageName:Ljava/lang/String;

    iget v2, p0, Lcom/meizu/settings/applications/ExternalSourcesDetails;->mUserId:I

    invoke-virtual {v0, v1, v2}, Lcom/meizu/settings/applications/ApplicationsState;->getEntry(Ljava/lang/String;I)Lcom/meizu/settings/applications/ApplicationsState$AppEntry;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/settings/applications/ExternalSourcesDetails;->mAppEntry:Lcom/meizu/settings/applications/ApplicationsState$AppEntry;

    .line 182
    iget-object p0, p0, Lcom/meizu/settings/applications/ExternalSourcesDetails;->mPackageName:Ljava/lang/String;

    return-object p0
.end method

.method private setCanInstallApps(Z)V
    .registers 5

    .line 225
    iget-object v0, p0, Lcom/meizu/settings/applications/ExternalSourcesDetails;->mAppOpsManager:Landroid/app/AppOpsManager;

    iget-object v1, p0, Lcom/meizu/settings/applications/ExternalSourcesDetails;->mAppEntry:Lcom/meizu/settings/applications/ApplicationsState$AppEntry;

    iget-object v1, v1, Lcom/meizu/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object p0, p0, Lcom/meizu/settings/applications/ExternalSourcesDetails;->mPackageName:Ljava/lang/String;

    if-eqz p1, :cond_e

    const/4 p1, 0x0

    goto :goto_f

    :cond_e
    const/4 p1, 0x2

    :goto_f
    const/16 v2, 0x42

    invoke-virtual {v0, v2, v1, p0, p1}, Landroid/app/AppOpsManager;->setMode(IILjava/lang/String;I)V

    return-void
.end method

.method private setResult(I)V
    .registers 3

    .line 231
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_7

    return-void

    .line 234
    :cond_7
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setResult(I)V

    return-void
.end method

.method public static startExternalSourcesDetails(Landroid/content/Context;Ljava/lang/String;IILjava/lang/String;)V
    .registers 12

    .line 88
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v0, "package"

    .line 89
    invoke-virtual {v2, v0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo p1, "uid"

    .line 90
    invoke-virtual {v2, p1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 92
    const-class p1, Lcom/meizu/settings/applications/ExternalSourcesDetails;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v4, -0x1

    move-object v0, p0

    move v5, p3

    move-object v6, p4

    invoke-static/range {v0 .. v6}, Lcom/android/settings/Utils;->startWithFragment(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Fragment;IILjava/lang/CharSequence;)V

    return-void
.end method

.method public static startExternalSourcesDetails(Landroid/app/Fragment;Ljava/lang/String;IILjava/lang/String;I)Z
    .registers 16

    .line 60
    const-class v0, Lcom/meizu/settings/applications/ExternalSourcesDetails;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 62
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "package"

    .line 63
    invoke-virtual {v4, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo p1, "uid"

    .line 64
    invoke-virtual {v4, p1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 66
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    .line 68
    instance-of p2, p1, Lcom/android/settings/SettingsActivity;

    const/4 v9, 0x1

    if-eqz p2, :cond_2d

    .line 69
    move-object v1, p1

    check-cast v1, Lcom/android/settings/SettingsActivity;

    move-object v2, p0

    move-object v3, v0

    move v5, p3

    move-object v6, p4

    move-object v7, p0

    move v8, p5

    .line 70
    invoke-virtual/range {v1 .. v8}, Lcom/android/settings/SettingsActivity;->startPreferencePanel(Landroid/app/Fragment;Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    return v9

    .line 73
    :cond_2d
    instance-of p2, p1, Landroid/preference/PreferenceActivity;

    if-eqz p2, :cond_3e

    .line 74
    move-object v1, p1

    check-cast v1, Landroid/preference/PreferenceActivity;

    move-object v2, v0

    move-object v3, v4

    move v4, p3

    move-object v5, p4

    move-object v6, p0

    move v7, p5

    .line 75
    invoke-virtual/range {v1 .. v7}, Landroid/preference/PreferenceActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    return v9

    .line 78
    :cond_3e
    sget-object p0, Lcom/meizu/settings/applications/ExternalSourcesDetails;->TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Parent i sn\'t SettingsActivity nor PreferenceActivity, thus there\'s no way to launch the given Fragment (name: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ", requestCode: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ")"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method private startListeningToPackageRemove()V
    .registers 3

    .line 260
    iget-boolean v0, p0, Lcom/meizu/settings/applications/ExternalSourcesDetails;->mListeningToPackageRemove:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    const/4 v0, 0x1

    .line 263
    iput-boolean v0, p0, Lcom/meizu/settings/applications/ExternalSourcesDetails;->mListeningToPackageRemove:Z

    .line 264
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "package"

    .line 265
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 266
    invoke-virtual {p0}, Lcom/meizu/settings/SettingsPreferenceFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object p0, p0, Lcom/meizu/settings/applications/ExternalSourcesDetails;->mPackageRemovedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private stopListeningToPackageRemove()V
    .registers 2

    .line 270
    iget-boolean v0, p0, Lcom/meizu/settings/applications/ExternalSourcesDetails;->mListeningToPackageRemove:Z

    if-nez v0, :cond_5

    return-void

    :cond_5
    const/4 v0, 0x0

    .line 273
    iput-boolean v0, p0, Lcom/meizu/settings/applications/ExternalSourcesDetails;->mListeningToPackageRemove:Z

    .line 274
    invoke-virtual {p0}, Lcom/meizu/settings/SettingsPreferenceFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object p0, p0, Lcom/meizu/settings/applications/ExternalSourcesDetails;->mPackageRemovedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method


# virtual methods
.method public onAllSizesComputed()V
    .registers 1

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 6

    .line 102
    invoke-super {p0, p1}, Lcom/meizu/settings/RestrictedSettingsFragment;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x0

    .line 104
    iput-boolean p1, p0, Lcom/meizu/settings/applications/ExternalSourcesDetails;->mFinishing:Z

    .line 106
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 107
    invoke-virtual {v0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-static {v1}, Lcom/meizu/settings/applications/ApplicationsState;->getInstance(Landroid/app/Application;)Lcom/meizu/settings/applications/ApplicationsState;

    move-result-object v1

    iput-object v1, p0, Lcom/meizu/settings/applications/ExternalSourcesDetails;->mState:Lcom/meizu/settings/applications/ApplicationsState;

    .line 108
    iget-object v1, p0, Lcom/meizu/settings/applications/ExternalSourcesDetails;->mState:Lcom/meizu/settings/applications/ApplicationsState;

    invoke-virtual {v1, p0}, Lcom/meizu/settings/applications/ApplicationsState;->newSession(Lcom/meizu/settings/applications/ApplicationsState$Callbacks;)Lcom/meizu/settings/applications/ApplicationsState$Session;

    move-result-object v1

    iput-object v1, p0, Lcom/meizu/settings/applications/ExternalSourcesDetails;->mSession:Lcom/meizu/settings/applications/ApplicationsState$Session;

    .line 109
    new-instance v1, Lcom/meizu/settings/applications/AppStateInstallAppsBridge;

    iget-object v2, p0, Lcom/meizu/settings/applications/ExternalSourcesDetails;->mState:Lcom/meizu/settings/applications/ApplicationsState;

    const/4 v3, 0x0

    invoke-direct {v1, v0, v2, v3}, Lcom/meizu/settings/applications/AppStateInstallAppsBridge;-><init>(Landroid/content/Context;Lcom/meizu/settings/applications/ApplicationsState;Lcom/meizu/settings/applications/AppStateBaseBridge$Callback;)V

    iput-object v1, p0, Lcom/meizu/settings/applications/ExternalSourcesDetails;->mAppBridge:Lcom/meizu/settings/applications/AppStateInstallAppsBridge;

    const-string v1, "appops"

    .line 111
    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AppOpsManager;

    iput-object v1, p0, Lcom/meizu/settings/applications/ExternalSourcesDetails;->mAppOpsManager:Landroid/app/AppOpsManager;

    const-string/jumbo v1, "user"

    .line 112
    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, p0, Lcom/meizu/settings/applications/ExternalSourcesDetails;->mUserManager:Landroid/os/UserManager;

    .line 114
    invoke-direct {p0}, Lcom/meizu/settings/applications/ExternalSourcesDetails;->retrieveAppEntry()Ljava/lang/String;

    .line 115
    iget-object v0, p0, Lcom/meizu/settings/applications/ExternalSourcesDetails;->mAppEntry:Lcom/meizu/settings/applications/ApplicationsState$AppEntry;

    if-nez v0, :cond_4f

    .line 116
    sget-object v0, Lcom/meizu/settings/applications/ExternalSourcesDetails;->TAG:Ljava/lang/String;

    const-string v1, "mAppEntry is null, finish"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    invoke-virtual {p0}, Lcom/meizu/settings/SettingsPreferenceFragment;->finish()V

    const/4 v0, 0x1

    .line 118
    iput-boolean v0, p0, Lcom/meizu/settings/applications/ExternalSourcesDetails;->mFinishing:Z

    :cond_4f
    const v0, 0x7f1600a4

    .line 121
    invoke-virtual {p0, v0}, Landroid/preference/PreferenceFragment;->addPreferencesFromResource(I)V

    const-string v0, "external_sources_settings_switch"

    .line 122
    invoke-virtual {p0, v0}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/meizu/settings/widget/RestrictedSwitchPreference;

    iput-object v0, p0, Lcom/meizu/settings/applications/ExternalSourcesDetails;->mSwitchPref:Lcom/meizu/settings/widget/RestrictedSwitchPreference;

    .line 123
    iget-object v0, p0, Lcom/meizu/settings/applications/ExternalSourcesDetails;->mSwitchPref:Lcom/meizu/settings/widget/RestrictedSwitchPreference;

    invoke-virtual {v0, p1}, Lcom/meizu/common/preference/SwitchPreference;->setTitleSingleLine(Z)V

    .line 124
    iget-object p1, p0, Lcom/meizu/settings/applications/ExternalSourcesDetails;->mSwitchPref:Lcom/meizu/settings/widget/RestrictedSwitchPreference;

    invoke-virtual {p1, p0}, Landroid/preference/TwoStatePreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 126
    invoke-direct {p0}, Lcom/meizu/settings/applications/ExternalSourcesDetails;->startListeningToPackageRemove()V

    return-void
.end method

.method public onDestroy()V
    .registers 2

    .line 144
    invoke-direct {p0}, Lcom/meizu/settings/applications/ExternalSourcesDetails;->stopListeningToPackageRemove()V

    .line 145
    iget-object v0, p0, Lcom/meizu/settings/applications/ExternalSourcesDetails;->mSession:Lcom/meizu/settings/applications/ApplicationsState$Session;

    invoke-virtual {v0}, Lcom/meizu/settings/applications/ApplicationsState$Session;->release()V

    .line 146
    invoke-super {p0}, Lcom/meizu/settings/RestrictedSettingsFragment;->onDestroy()V

    return-void
.end method

.method public onLauncherInfoChanged()V
    .registers 1

    return-void
.end method

.method public onLoadEntriesCompleted()V
    .registers 1

    return-void
.end method

.method public onPackageIconChanged()V
    .registers 1

    return-void
.end method

.method public onPackageListChanged()V
    .registers 1

    return-void
.end method

.method public onPackageSizeChanged(Ljava/lang/String;)V
    .registers 2

    return-void
.end method

.method public onPause()V
    .registers 2

    .line 138
    iget-object v0, p0, Lcom/meizu/settings/applications/ExternalSourcesDetails;->mSession:Lcom/meizu/settings/applications/ApplicationsState$Session;

    invoke-virtual {v0}, Lcom/meizu/settings/applications/ApplicationsState$Session;->pause()V

    .line 139
    invoke-super {p0}, Lcom/meizu/settings/InstrumentedPreferenceFragment;->onPause()V

    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .registers 5

    .line 187
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    .line 188
    iget-object v0, p0, Lcom/meizu/settings/applications/ExternalSourcesDetails;->mSwitchPref:Lcom/meizu/settings/widget/RestrictedSwitchPreference;

    const/4 v1, 0x0

    if-ne p1, v0, :cond_3b

    .line 189
    iget-object p1, p0, Lcom/meizu/settings/applications/ExternalSourcesDetails;->mInstallAppsState:Lcom/meizu/settings/applications/AppStateInstallAppsBridge$InstallAppsState;

    if-eqz p1, :cond_3b

    invoke-virtual {p1}, Lcom/meizu/settings/applications/AppStateInstallAppsBridge$InstallAppsState;->canInstallApps()Z

    move-result p1

    if-eq p2, p1, :cond_3b

    .line 190
    const-class p1, Lcom/android/settings/Settings$ManageAppExternalSourcesActivity;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    .line 191
    invoke-virtual {p0}, Lcom/meizu/settings/SettingsPreferenceFragment;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    .line 190
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_35

    if-eqz p2, :cond_31

    const/4 p1, -0x1

    goto :goto_32

    :cond_31
    move p1, v1

    .line 192
    :goto_32
    invoke-direct {p0, p1}, Lcom/meizu/settings/applications/ExternalSourcesDetails;->setResult(I)V

    .line 194
    :cond_35
    invoke-direct {p0, p2}, Lcom/meizu/settings/applications/ExternalSourcesDetails;->setCanInstallApps(Z)V

    .line 195
    invoke-direct {p0}, Lcom/meizu/settings/applications/ExternalSourcesDetails;->refreshUi()Z

    :cond_3b
    return v1
.end method

.method public onRebuildComplete(Ljava/util/ArrayList;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/meizu/settings/applications/ApplicationsState$AppEntry;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public onRequestPackageIconDone(Lcom/meizu/settings/applications/ApplicationsState$AppEntry;)V
    .registers 2

    return-void
.end method

.method public onResume()V
    .registers 2

    .line 131
    invoke-super {p0}, Lcom/meizu/settings/RestrictedSettingsFragment;->onResume()V

    .line 132
    iget-object v0, p0, Lcom/meizu/settings/applications/ExternalSourcesDetails;->mSession:Lcom/meizu/settings/applications/ApplicationsState$Session;

    invoke-virtual {v0}, Lcom/meizu/settings/applications/ApplicationsState$Session;->resume()V

    .line 133
    invoke-direct {p0}, Lcom/meizu/settings/applications/ExternalSourcesDetails;->refreshUi()Z

    return-void
.end method

.method public onRunningStateChanged(Z)V
    .registers 2

    return-void
.end method
