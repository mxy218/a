.class public Lcom/meizu/settings/applications/FlymeApplicationManagementFragment;
.super Lcom/meizu/settings/SettingsPreferenceFragment;
.source "FlymeApplicationManagementFragment.java"

# interfaces
.implements Lcom/meizu/settings/search/Indexable;


# static fields
.field private static final MY_USER_ID:I

.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/meizu/settings/search/Indexable$SearchIndexProvider;


# instance fields
.field private mAllApps:Landroid/preference/PreferenceScreen;

.field private mAppClone:Landroid/preference/PreferenceScreen;

.field private mAppPasswordControl:Landroid/preference/PreferenceScreen;

.field private mAppPermissions:Landroid/preference/PreferenceScreen;

.field private mDefaultApps:Landroid/preference/PreferenceScreen;

.field private mIsGuestUser:Z

.field private mLockPasswordUtils:Lcom/meizu/settings/security/FlymeLockPasswordUtils;

.field private mNeedOverridePending:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 44
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    sput v0, Lcom/meizu/settings/applications/FlymeApplicationManagementFragment;->MY_USER_ID:I

    .line 261
    new-instance v0, Lcom/meizu/settings/applications/FlymeApplicationManagementFragment$1;

    invoke-direct {v0}, Lcom/meizu/settings/applications/FlymeApplicationManagementFragment$1;-><init>()V

    sput-object v0, Lcom/meizu/settings/applications/FlymeApplicationManagementFragment;->SEARCH_INDEX_DATA_PROVIDER:Lcom/meizu/settings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 40
    invoke-direct {p0}, Lcom/meizu/settings/SettingsPreferenceFragment;-><init>()V

    const/4 v0, 0x0

    .line 58
    iput-object v0, p0, Lcom/meizu/settings/applications/FlymeApplicationManagementFragment;->mLockPasswordUtils:Lcom/meizu/settings/security/FlymeLockPasswordUtils;

    const/4 v0, 0x0

    .line 61
    iput-boolean v0, p0, Lcom/meizu/settings/applications/FlymeApplicationManagementFragment;->mNeedOverridePending:Z

    return-void
.end method

.method private initPreference()V
    .registers 4

    const-string v0, "all_apps"

    .line 79
    invoke-virtual {p0, v0}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/meizu/settings/applications/FlymeApplicationManagementFragment;->mAllApps:Landroid/preference/PreferenceScreen;

    const-string v0, "app_permissions"

    .line 80
    invoke-virtual {p0, v0}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/meizu/settings/applications/FlymeApplicationManagementFragment;->mAppPermissions:Landroid/preference/PreferenceScreen;

    const-string v0, "add_password_control"

    .line 81
    invoke-virtual {p0, v0}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/meizu/settings/applications/FlymeApplicationManagementFragment;->mAppPasswordControl:Landroid/preference/PreferenceScreen;

    const-string v0, "app_clone"

    .line 82
    invoke-virtual {p0, v0}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/meizu/settings/applications/FlymeApplicationManagementFragment;->mAppClone:Landroid/preference/PreferenceScreen;

    const-string v0, "default_apps"

    .line 83
    invoke-virtual {p0, v0}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/meizu/settings/applications/FlymeApplicationManagementFragment;->mDefaultApps:Landroid/preference/PreferenceScreen;

    .line 85
    iget-boolean v0, p0, Lcom/meizu/settings/applications/FlymeApplicationManagementFragment;->mIsGuestUser:Z

    if-eqz v0, :cond_48

    .line 86
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/meizu/settings/applications/FlymeApplicationManagementFragment;->mDefaultApps:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 87
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/meizu/settings/applications/FlymeApplicationManagementFragment;->mAppPasswordControl:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 91
    :cond_48
    iget-boolean v0, p0, Lcom/meizu/settings/applications/FlymeApplicationManagementFragment;->mIsGuestUser:Z

    if-nez v0, :cond_5a

    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "com.meizu.safe"

    const-string v2, "com.meizu.safe.ManagePermissions"

    invoke-static {v0, v1, v2}, Lcom/meizu/settings/utils/MzUtils;->isPackageExistAndHasAction(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_63

    .line 93
    :cond_5a
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object p0, p0, Lcom/meizu/settings/applications/FlymeApplicationManagementFragment;->mAppPermissions:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, p0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :cond_63
    return-void
.end method

.method private initValue()V
    .registers 2

    .line 74
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/meizu/settings/security/FlymeLockPasswordUtils;->getInstance(Landroid/content/Context;)Lcom/meizu/settings/security/FlymeLockPasswordUtils;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/settings/applications/FlymeApplicationManagementFragment;->mLockPasswordUtils:Lcom/meizu/settings/security/FlymeLockPasswordUtils;

    .line 75
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/meizu/settings/utils/MzUtils;->isGuestUser(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/meizu/settings/applications/FlymeApplicationManagementFragment;->mIsGuestUser:Z

    return-void
.end method

.method private startAppPermissionActivity()V
    .registers 3

    .line 209
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.meizu.safe.ManagePermissions"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.meizu.safe"

    .line 210
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    .line 212
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 214
    invoke-virtual {p0, v0}, Landroid/preference/PreferenceFragment;->startActivity(Landroid/content/Intent;)V

    .line 215
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object p0

    invoke-static {p0}, Lcom/meizu/settings/utils/MzUtils;->setOpenAnimationToNextPage(Landroid/content/Context;)V
    :try_end_1b
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_1b} :catch_1c

    goto :goto_20

    :catch_1c
    move-exception p0

    .line 217
    invoke-virtual {p0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    :goto_20
    return-void
.end method

.method private startApplockFragment()V
    .registers 7

    .line 121
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v0, "password_confirmed"

    const/4 v1, 0x1

    .line 122
    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 123
    const-class v0, Lcom/meizu/settings/security/FlymeAccessPasswordSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f1201b9

    const/4 v4, -0x1

    move-object v0, p0

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lcom/meizu/settings/SettingsPreferenceFragment;->startFragment(Landroid/app/Fragment;Ljava/lang/String;IILandroid/os/Bundle;)Z

    return-void
.end method

.method private startAppsFragment(II)V
    .registers 9

    .line 103
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    const-string v0, "currentListType"

    .line 104
    invoke-virtual {v5, v0, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 105
    const-class p1, Lcom/meizu/settings/applications/ManageApplications;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const/4 v4, -0x1

    move-object v0, p0

    move-object v1, p0

    move v3, p2

    invoke-virtual/range {v0 .. v5}, Lcom/meizu/settings/SettingsPreferenceFragment;->startFragment(Landroid/app/Fragment;Ljava/lang/String;IILandroid/os/Bundle;)Z

    return-void
.end method

.method private startConfirmPasswordFragment(III)V
    .registers 6

    .line 109
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "password_from"

    .line 110
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p1, "android.intent.extra.USER_ID"

    .line 111
    invoke-virtual {v0, p1, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 112
    invoke-direct {p0, v0, p2}, Lcom/meizu/settings/applications/FlymeApplicationManagementFragment;->startConfirmPasswordFragment(Landroid/os/Bundle;I)V

    return-void
.end method

.method private startConfirmPasswordFragment(Landroid/os/Bundle;I)V
    .registers 10

    .line 116
    const-class v0, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, -0x1

    move-object v1, p0

    move-object v2, p0

    move v5, p2

    move-object v6, p1

    invoke-virtual/range {v1 .. v6}, Lcom/meizu/settings/SettingsPreferenceFragment;->startFragment(Landroid/app/Fragment;Ljava/lang/String;IILandroid/os/Bundle;)Z

    return-void
.end method

.method private updateAllsAppsSummary()V
    .registers 7

    .line 152
    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    const v1, 0x8200

    .line 153
    sget v2, Lcom/meizu/settings/applications/FlymeApplicationManagementFragment;->MY_USER_ID:I

    .line 154
    invoke-interface {v0, v1, v2}, Landroid/content/pm/IPackageManager;->getInstalledApplications(II)Landroid/content/pm/ParceledListSlice;

    move-result-object v0

    .line 159
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v2, "android.intent.category.LAUNCHER"

    .line 160
    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 161
    invoke-virtual {p0}, Lcom/meizu/settings/SettingsPreferenceFragment;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const v3, 0xc0200

    sget v4, Lcom/meizu/settings/applications/FlymeApplicationManagementFragment;->MY_USER_ID:I

    invoke-virtual {v2, v1, v3, v4}, Landroid/content/pm/PackageManager;->queryIntentActivitiesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v1

    .line 168
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 169
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_31
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_45

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    .line 170
    iget-object v3, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_31

    .line 175
    :cond_45
    invoke-virtual {v0}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v0

    .line 176
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    move v3, v1

    :cond_4f
    :goto_4f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_73

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ApplicationInfo;

    .line 177
    iget-boolean v5, v4, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-nez v5, :cond_60

    goto :goto_4f

    .line 180
    :cond_60
    sget-object v5, Lcom/meizu/settings/applications/ApplicationsState;->FILTER_DOWNLOADED_AND_LAUNCHER:Lcom/meizu/settings/applications/ApplicationsState$AppFilter;

    invoke-interface {v5, v4}, Lcom/meizu/settings/applications/ApplicationsState$AppFilter;->filterApp(Landroid/content/pm/ApplicationInfo;)Z

    move-result v5

    if-nez v5, :cond_70

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 181
    invoke-interface {v2, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4f

    :cond_70
    add-int/lit8 v3, v3, 0x1

    goto :goto_4f

    .line 186
    :cond_73
    iget-object v0, p0, Lcom/meizu/settings/applications/FlymeApplicationManagementFragment;->mAllApps:Landroid/preference/PreferenceScreen;

    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v2, 0x7f100009

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    .line 187
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    .line 186
    invoke-virtual {p0, v2, v3, v4}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V
    :try_end_8c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8c} :catch_8d

    goto :goto_91

    :catch_8d
    move-exception p0

    .line 190
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_91
    return-void
.end method

.method private updateAppLockSummary()V
    .registers 2

    .line 98
    iget-object v0, p0, Lcom/meizu/settings/applications/FlymeApplicationManagementFragment;->mAppPasswordControl:Landroid/preference/PreferenceScreen;

    iget-object p0, p0, Lcom/meizu/settings/applications/FlymeApplicationManagementFragment;->mLockPasswordUtils:Lcom/meizu/settings/security/FlymeLockPasswordUtils;

    invoke-virtual {p0}, Lcom/meizu/settings/security/FlymeLockPasswordUtils;->isAppLockEnable()Z

    move-result p0

    if-eqz p0, :cond_e

    const p0, 0x7f120fa9

    goto :goto_11

    :cond_e
    const p0, 0x7f1204f2

    :goto_11
    invoke-virtual {v0, p0}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    return-void
.end method

.method private updateCloneAppPreference()V
    .registers 5

    .line 196
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    .line 198
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/meizu/settings/appclone/AppCloneUtil;->showAppCloneEntry(Landroid/content/Context;)Z

    move-result v1

    const-string v2, "app_clone"

    if-nez v1, :cond_1c

    .line 200
    invoke-virtual {v0, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    if-eqz v3, :cond_1c

    .line 201
    iget-object p0, p0, Lcom/meizu/settings/applications/FlymeApplicationManagementFragment;->mAppClone:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, p0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_29

    :cond_1c
    if-eqz v1, :cond_29

    .line 202
    invoke-virtual {v0, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    if-nez v1, :cond_29

    .line 203
    iget-object p0, p0, Lcom/meizu/settings/applications/FlymeApplicationManagementFragment;->mAppClone:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, p0}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    :cond_29
    :goto_29
    return-void
.end method

.method private updatePreference()V
    .registers 1

    .line 145
    invoke-direct {p0}, Lcom/meizu/settings/applications/FlymeApplicationManagementFragment;->updateAllsAppsSummary()V

    .line 146
    invoke-direct {p0}, Lcom/meizu/settings/applications/FlymeApplicationManagementFragment;->updateAppLockSummary()V

    .line 147
    invoke-direct {p0}, Lcom/meizu/settings/applications/FlymeApplicationManagementFragment;->updateCloneAppPreference()V

    return-void
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 5

    const/4 v0, 0x2

    if-ne p1, v0, :cond_9

    const/4 v0, -0x1

    if-ne p2, v0, :cond_9

    .line 255
    invoke-direct {p0}, Lcom/meizu/settings/applications/FlymeApplicationManagementFragment;->startApplockFragment()V

    .line 258
    :cond_9
    invoke-super {p0, p1, p2, p3}, Landroid/preference/PreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 2

    .line 65
    invoke-super {p0, p1}, Lcom/meizu/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f160021

    .line 67
    invoke-virtual {p0, p1}, Landroid/preference/PreferenceFragment;->addPreferencesFromResource(I)V

    .line 69
    invoke-direct {p0}, Lcom/meizu/settings/applications/FlymeApplicationManagementFragment;->initValue()V

    .line 70
    invoke-direct {p0}, Lcom/meizu/settings/applications/FlymeApplicationManagementFragment;->initPreference()V

    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .registers 11

    .line 223
    invoke-virtual {p0, p2}, Lcom/meizu/settings/SettingsPreferenceFragment;->reportPreferenceTreeClickUsageStats(Landroid/preference/Preference;)V

    .line 225
    iget-object v0, p0, Lcom/meizu/settings/applications/FlymeApplicationManagementFragment;->mAllApps:Landroid/preference/PreferenceScreen;

    const/4 v1, 0x1

    if-ne p2, v0, :cond_10

    const/4 p1, 0x6

    const p2, 0x7f120112

    .line 226
    invoke-direct {p0, p1, p2}, Lcom/meizu/settings/applications/FlymeApplicationManagementFragment;->startAppsFragment(II)V

    return v1

    .line 228
    :cond_10
    iget-object v0, p0, Lcom/meizu/settings/applications/FlymeApplicationManagementFragment;->mAppPermissions:Landroid/preference/PreferenceScreen;

    if-ne p2, v0, :cond_1a

    .line 229
    invoke-direct {p0}, Lcom/meizu/settings/applications/FlymeApplicationManagementFragment;->startAppPermissionActivity()V

    .line 230
    iput-boolean v1, p0, Lcom/meizu/settings/applications/FlymeApplicationManagementFragment;->mNeedOverridePending:Z

    return v1

    .line 232
    :cond_1a
    iget-object v0, p0, Lcom/meizu/settings/applications/FlymeApplicationManagementFragment;->mAppPasswordControl:Landroid/preference/PreferenceScreen;

    if-ne p2, v0, :cond_31

    .line 233
    iget-object p1, p0, Lcom/meizu/settings/applications/FlymeApplicationManagementFragment;->mLockPasswordUtils:Lcom/meizu/settings/security/FlymeLockPasswordUtils;

    invoke-virtual {p1}, Lcom/meizu/settings/security/FlymeLockPasswordUtils;->isAppLockEnable()Z

    move-result p1

    if-eqz p1, :cond_2d

    .line 234
    sget p1, Lcom/meizu/settings/applications/FlymeApplicationManagementFragment;->MY_USER_ID:I

    const/4 p2, 0x2

    invoke-direct {p0, p2, p2, p1}, Lcom/meizu/settings/applications/FlymeApplicationManagementFragment;->startConfirmPasswordFragment(III)V

    goto :goto_30

    .line 237
    :cond_2d
    invoke-direct {p0}, Lcom/meizu/settings/applications/FlymeApplicationManagementFragment;->startApplockFragment()V

    :goto_30
    return v1

    .line 240
    :cond_31
    iget-object v0, p0, Lcom/meizu/settings/applications/FlymeApplicationManagementFragment;->mAppClone:Landroid/preference/PreferenceScreen;

    if-ne p2, v0, :cond_46

    .line 241
    const-class p1, Lcom/meizu/settings/appclone/AppCloneSettings;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    const v5, 0x7f120165

    const/4 v6, -0x1

    const/4 v7, 0x0

    move-object v2, p0

    move-object v3, p0

    invoke-virtual/range {v2 .. v7}, Lcom/meizu/settings/SettingsPreferenceFragment;->startFragment(Landroid/app/Fragment;Ljava/lang/String;IILandroid/os/Bundle;)Z

    return v1

    .line 243
    :cond_46
    iget-object v0, p0, Lcom/meizu/settings/applications/FlymeApplicationManagementFragment;->mDefaultApps:Landroid/preference/PreferenceScreen;

    if-ne p2, v0, :cond_52

    const/4 p1, 0x5

    const p2, 0x7f12068b

    .line 244
    invoke-direct {p0, p1, p2}, Lcom/meizu/settings/applications/FlymeApplicationManagementFragment;->startAppsFragment(II)V

    return v1

    .line 249
    :cond_52
    invoke-super {p0, p1, p2}, Lcom/meizu/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result p0

    return p0
.end method

.method public onResume()V
    .registers 1

    .line 129
    invoke-super {p0}, Lcom/meizu/settings/SettingsPreferenceFragment;->onResume()V

    .line 131
    invoke-direct {p0}, Lcom/meizu/settings/applications/FlymeApplicationManagementFragment;->updatePreference()V

    return-void
.end method

.method public onStart()V
    .registers 2

    .line 136
    invoke-super {p0}, Lcom/meizu/settings/core/lifecycle/ObservablePreferenceFragment;->onStart()V

    .line 138
    iget-boolean v0, p0, Lcom/meizu/settings/applications/FlymeApplicationManagementFragment;->mNeedOverridePending:Z

    if-eqz v0, :cond_11

    .line 139
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/meizu/settings/utils/MzUtils;->setCloseAnimationToPreviousPage(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 140
    iput-boolean v0, p0, Lcom/meizu/settings/applications/FlymeApplicationManagementFragment;->mNeedOverridePending:Z

    :cond_11
    return-void
.end method
