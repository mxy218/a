.class public Lcom/android/settings/development/MockLocationAppPreferenceController;
.super Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;
.source "MockLocationAppPreferenceController.java"

# interfaces
.implements Lcom/android/settings/core/PreferenceControllerMixin;
.implements Lcom/android/settings/development/OnActivityResultListener;


# static fields
.field private static final MOCK_LOCATION_APP_OPS:[I


# instance fields
.field private final mAppsOpsManager:Landroid/app/AppOpsManager;

.field private final mFragment:Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;

.field private final mPackageManager:Landroid/content/pm/PackageManager;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x3a

    aput v2, v0, v1

    .line 42
    sput-object v0, Lcom/android/settings/development/MockLocationAppPreferenceController;->MOCK_LOCATION_APP_OPS:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;)V
    .registers 3

    .line 50
    invoke-direct {p0, p1}, Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;-><init>(Landroid/content/Context;)V

    .line 52
    iput-object p2, p0, Lcom/android/settings/development/MockLocationAppPreferenceController;->mFragment:Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;

    const-string p2, "appops"

    .line 53
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/app/AppOpsManager;

    iput-object p2, p0, Lcom/android/settings/development/MockLocationAppPreferenceController;->mAppsOpsManager:Landroid/app/AppOpsManager;

    .line 54
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/development/MockLocationAppPreferenceController;->mPackageManager:Landroid/content/pm/PackageManager;

    return-void
.end method

.method private getAppLabel(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 119
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/development/MockLocationAppPreferenceController;->mPackageManager:Landroid/content/pm/PackageManager;

    const/16 v1, 0x200

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 121
    iget-object p0, p0, Lcom/android/settings/development/MockLocationAppPreferenceController;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object p0

    if-eqz p0, :cond_14

    .line 122
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_14
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_14} :catch_14

    :catch_14
    :cond_14
    return-object p1
.end method

.method private getCurrentMockLocationApp()Ljava/lang/String;
    .registers 4

    .line 155
    iget-object p0, p0, Lcom/android/settings/development/MockLocationAppPreferenceController;->mAppsOpsManager:Landroid/app/AppOpsManager;

    sget-object v0, Lcom/android/settings/development/MockLocationAppPreferenceController;->MOCK_LOCATION_APP_OPS:[I

    invoke-virtual {p0, v0}, Landroid/app/AppOpsManager;->getPackagesForOps([I)Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_36

    .line 158
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_36

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AppOpsManager$PackageOps;

    .line 159
    invoke-virtual {v1}, Landroid/app/AppOpsManager$PackageOps;->getOps()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AppOpsManager$OpEntry;

    invoke-virtual {v1}, Landroid/app/AppOpsManager$OpEntry;->getMode()I

    move-result v1

    if-nez v1, :cond_e

    .line 160
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/AppOpsManager$PackageOps;

    invoke-virtual {p0}, Landroid/app/AppOpsManager$PackageOps;->getPackageName()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_36
    const/4 p0, 0x0

    return-object p0
.end method

.method private removeAllMockLocations()V
    .registers 5

    .line 130
    iget-object v0, p0, Lcom/android/settings/development/MockLocationAppPreferenceController;->mAppsOpsManager:Landroid/app/AppOpsManager;

    sget-object v1, Lcom/android/settings/development/MockLocationAppPreferenceController;->MOCK_LOCATION_APP_OPS:[I

    invoke-virtual {v0, v1}, Landroid/app/AppOpsManager;->getPackagesForOps([I)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_b

    return-void

    .line 136
    :cond_b
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_f
    :goto_f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_35

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AppOpsManager$PackageOps;

    .line 137
    invoke-virtual {v1}, Landroid/app/AppOpsManager$PackageOps;->getOps()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/AppOpsManager$OpEntry;

    invoke-virtual {v2}, Landroid/app/AppOpsManager$OpEntry;->getMode()I

    move-result v2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_f

    .line 138
    invoke-virtual {v1}, Landroid/app/AppOpsManager$PackageOps;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/settings/development/MockLocationAppPreferenceController;->removeMockLocationForApp(Ljava/lang/String;)V

    goto :goto_f

    :cond_35
    return-void
.end method

.method private removeMockLocationForApp(Ljava/lang/String;)V
    .registers 5

    .line 145
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/development/MockLocationAppPreferenceController;->mPackageManager:Landroid/content/pm/PackageManager;

    const/16 v1, 0x200

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 147
    iget-object p0, p0, Lcom/android/settings/development/MockLocationAppPreferenceController;->mAppsOpsManager:Landroid/app/AppOpsManager;

    const/16 v1, 0x3a

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    const/4 v2, 0x2

    invoke-virtual {p0, v1, v0, p1, v2}, Landroid/app/AppOpsManager;->setMode(IILjava/lang/String;I)V
    :try_end_12
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_12} :catch_12

    :catch_12
    return-void
.end method

.method private updateMockLocation()V
    .registers 7

    .line 90
    invoke-direct {p0}, Lcom/android/settings/development/MockLocationAppPreferenceController;->getCurrentMockLocationApp()Ljava/lang/String;

    move-result-object v0

    .line 92
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_27

    .line 93
    iget-object v1, p0, Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;->mPreference:Landroidx/preference/Preference;

    iget-object v2, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    .line 94
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f120d03

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    .line 95
    invoke-direct {p0, v0}, Lcom/android/settings/development/MockLocationAppPreferenceController;->getAppLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    aput-object p0, v4, v5

    .line 94
    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 93
    invoke-virtual {v1, p0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_39

    .line 97
    :cond_27
    iget-object v0, p0, Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;->mPreference:Landroidx/preference/Preference;

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    .line 98
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v1, 0x7f120d02

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    .line 97
    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :goto_39
    return-void
.end method

.method private writeMockLocation(Ljava/lang/String;)V
    .registers 5

    .line 103
    invoke-direct {p0}, Lcom/android/settings/development/MockLocationAppPreferenceController;->removeAllMockLocations()V

    .line 105
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1b

    .line 107
    :try_start_9
    iget-object v0, p0, Lcom/android/settings/development/MockLocationAppPreferenceController;->mPackageManager:Landroid/content/pm/PackageManager;

    const/16 v1, 0x200

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 109
    iget-object p0, p0, Lcom/android/settings/development/MockLocationAppPreferenceController;->mAppsOpsManager:Landroid/app/AppOpsManager;

    const/16 v1, 0x3a

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v0, p1, v2}, Landroid/app/AppOpsManager;->setMode(IILjava/lang/String;I)V
    :try_end_1b
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_9 .. :try_end_1b} :catch_1b

    :catch_1b
    :cond_1b
    return-void
.end method


# virtual methods
.method public getPreferenceKey()Ljava/lang/String;
    .registers 1

    const-string p0, "mock_location_app"

    return-object p0
.end method

.method public handlePreferenceTreeClick(Landroidx/preference/Preference;)Z
    .registers 4

    .line 64
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/android/settings/development/MockLocationAppPreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_10

    const/4 p0, 0x0

    return p0

    .line 67
    :cond_10
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const-class v1, Lcom/android/settings/development/AppPicker;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "com.android.settings.extra.REQUESTIING_PERMISSION"

    const-string v1, "android.permission.ACCESS_MOCK_LOCATION"

    .line 68
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 70
    iget-object p0, p0, Lcom/android/settings/development/MockLocationAppPreferenceController;->mFragment:Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;

    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    const/4 p0, 0x1

    return p0
.end method

.method public onActivityResult(IILandroid/content/Intent;)Z
    .registers 5

    const/4 v0, 0x2

    if-ne p1, v0, :cond_13

    const/4 p1, -0x1

    if-eq p2, p1, :cond_7

    goto :goto_13

    .line 84
    :cond_7
    invoke-virtual {p3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/settings/development/MockLocationAppPreferenceController;->writeMockLocation(Ljava/lang/String;)V

    .line 85
    invoke-direct {p0}, Lcom/android/settings/development/MockLocationAppPreferenceController;->updateMockLocation()V

    const/4 p0, 0x1

    return p0

    :cond_13
    :goto_13
    const/4 p0, 0x0

    return p0
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .registers 2

    .line 76
    invoke-direct {p0}, Lcom/android/settings/development/MockLocationAppPreferenceController;->updateMockLocation()V

    return-void
.end method
