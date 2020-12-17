.class public Lcom/meizu/settings/notificationstatusbar/AppNotificationSettings;
.super Lcom/meizu/settings/SettingsPreferenceFragment;
.source "AppNotificationSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# static fields
.field private static final DEBUG:Z


# instance fields
.field private mAppRow:Lcom/meizu/settings/notificationstatusbar/FlymeNotificationAppList$AppRow;

.field private final mBackend:Lcom/meizu/settings/notificationstatusbar/FlymeNotificationAppList$Backend;

.field private mBlock:Lcom/meizu/common/preference/SwitchPreference;

.field private mContext:Landroid/content/Context;

.field private final mCurrentFilterObserver:Landroid/database/ContentObserver;

.field private mDesktopNewTipsPreference:Lcom/meizu/common/preference/SwitchPreference;

.field private mFloatNotificationPreference:Lcom/meizu/common/preference/SwitchPreference;

.field private mHasLauncherIcon:Z

.field private mInfo:Landroid/content/pm/PackageInfo;

.field private mIntent:Landroid/content/Intent;

.field private mLastAppDesktopNewTipsSettingsState:Z

.field private mLastBlockState:Z

.field private mNofiticationFilterPreference:Landroid/preference/ListPreference;

.field private mNotificationRemindPreference:Lcom/meizu/common/preference/SwitchPreference;

.field private mPM:Landroid/content/pm/PackageManager;

.field private mPkg:Ljava/lang/String;

.field private mPriority:Lcom/meizu/common/preference/SwitchPreference;

.field private mUid:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-string v0, "AppNotificationSettings"

    const/4 v1, 0x3

    .line 78
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/meizu/settings/notificationstatusbar/AppNotificationSettings;->DEBUG:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 4

    .line 58
    invoke-direct {p0}, Lcom/meizu/settings/SettingsPreferenceFragment;-><init>()V

    .line 85
    new-instance v0, Lcom/meizu/settings/notificationstatusbar/FlymeNotificationAppList$Backend;

    invoke-direct {v0}, Lcom/meizu/settings/notificationstatusbar/FlymeNotificationAppList$Backend;-><init>()V

    iput-object v0, p0, Lcom/meizu/settings/notificationstatusbar/AppNotificationSettings;->mBackend:Lcom/meizu/settings/notificationstatusbar/FlymeNotificationAppList$Backend;

    .line 101
    new-instance v0, Lcom/meizu/settings/notificationstatusbar/AppNotificationSettings$1;

    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v0, p0, v1}, Lcom/meizu/settings/notificationstatusbar/AppNotificationSettings$1;-><init>(Lcom/meizu/settings/notificationstatusbar/AppNotificationSettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/meizu/settings/notificationstatusbar/AppNotificationSettings;->mCurrentFilterObserver:Landroid/database/ContentObserver;

    return-void
.end method

.method static synthetic access$000(Lcom/meizu/settings/notificationstatusbar/AppNotificationSettings;)Landroid/content/Context;
    .registers 1

    .line 58
    iget-object p0, p0, Lcom/meizu/settings/notificationstatusbar/AppNotificationSettings;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$100(Lcom/meizu/settings/notificationstatusbar/AppNotificationSettings;)Ljava/lang/String;
    .registers 1

    .line 58
    iget-object p0, p0, Lcom/meizu/settings/notificationstatusbar/AppNotificationSettings;->mPkg:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$200(Lcom/meizu/settings/notificationstatusbar/AppNotificationSettings;)Landroid/preference/ListPreference;
    .registers 1

    .line 58
    iget-object p0, p0, Lcom/meizu/settings/notificationstatusbar/AppNotificationSettings;->mNofiticationFilterPreference:Landroid/preference/ListPreference;

    return-object p0
.end method

.method private static findPackageInfo(Landroid/content/pm/PackageManager;Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    .registers 8

    .line 346
    invoke-virtual {p0, p2}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_35

    if-eqz p1, :cond_35

    .line 348
    array-length v0, p2

    const/4 v1, 0x0

    :goto_a
    if-ge v1, v0, :cond_35

    .line 350
    aget-object v2, p2, v1

    .line 351
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_32

    const/16 v2, 0x40

    .line 353
    :try_start_16
    invoke-virtual {p0, p1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0
    :try_end_1a
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_16 .. :try_end_1a} :catch_1b

    return-object p0

    :catch_1b
    move-exception v2

    .line 355
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to load package "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "AppNotificationSettings"

    invoke-static {v4, v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_32
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    :cond_35
    const/4 p0, 0x0

    return-object p0
.end method

.method private static hasLauncherIcon(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 3

    const-string v0, "launcherapps"

    .line 369
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/pm/LauncherApps;

    .line 371
    invoke-static {}, Landroid/os/Binder;->getCallingUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    .line 370
    invoke-virtual {p0, p1, v0}, Landroid/content/pm/LauncherApps;->getActivityList(Ljava/lang/String;Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_1a

    .line 372
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_1a

    const/4 p0, 0x1

    goto :goto_1b

    :cond_1a
    const/4 p0, 0x0

    :goto_1b
    return p0
.end method

.method private initAppRow()V
    .registers 6

    .line 311
    iget-object v0, p0, Lcom/meizu/settings/notificationstatusbar/AppNotificationSettings;->mInfo:Landroid/content/pm/PackageInfo;

    if-eqz v0, :cond_4d

    .line 312
    iget-object v1, p0, Lcom/meizu/settings/notificationstatusbar/AppNotificationSettings;->mPM:Landroid/content/pm/PackageManager;

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, p0, Lcom/meizu/settings/notificationstatusbar/AppNotificationSettings;->mBackend:Lcom/meizu/settings/notificationstatusbar/FlymeNotificationAppList$Backend;

    iget-boolean v3, p0, Lcom/meizu/settings/notificationstatusbar/AppNotificationSettings;->mHasLauncherIcon:Z

    iget-object v4, p0, Lcom/meizu/settings/notificationstatusbar/AppNotificationSettings;->mContext:Landroid/content/Context;

    .line 313
    invoke-static {v4}, Lcom/meizu/settings/utils/MzUtils;->isGuestUser(Landroid/content/Context;)Z

    move-result v4

    .line 312
    invoke-static {v1, v0, v2, v3, v4}, Lcom/meizu/settings/notificationstatusbar/FlymeNotificationAppList;->loadAppRow(Landroid/content/pm/PackageManager;Landroid/content/pm/ApplicationInfo;Lcom/meizu/settings/notificationstatusbar/FlymeNotificationAppList$Backend;ZZ)Lcom/meizu/settings/notificationstatusbar/FlymeNotificationAppList$AppRow;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/settings/notificationstatusbar/AppNotificationSettings;->mAppRow:Lcom/meizu/settings/notificationstatusbar/FlymeNotificationAppList$AppRow;

    .line 314
    iget-object v0, p0, Lcom/meizu/settings/notificationstatusbar/AppNotificationSettings;->mIntent:Landroid/content/Intent;

    const-string v1, "has_settings_intent"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3a

    .line 316
    iget-object v0, p0, Lcom/meizu/settings/notificationstatusbar/AppNotificationSettings;->mIntent:Landroid/content/Intent;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_4d

    .line 317
    iget-object v0, p0, Lcom/meizu/settings/notificationstatusbar/AppNotificationSettings;->mAppRow:Lcom/meizu/settings/notificationstatusbar/FlymeNotificationAppList$AppRow;

    iget-object p0, p0, Lcom/meizu/settings/notificationstatusbar/AppNotificationSettings;->mIntent:Landroid/content/Intent;

    const-string v1, "settings_intent"

    invoke-virtual {p0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p0

    check-cast p0, Landroid/content/Intent;

    iput-object p0, v0, Lcom/meizu/settings/notificationstatusbar/FlymeNotificationAppList$AppRow;->settingsIntent:Landroid/content/Intent;

    goto :goto_4d

    .line 321
    :cond_3a
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 322
    iget-object v1, p0, Lcom/meizu/settings/notificationstatusbar/AppNotificationSettings;->mAppRow:Lcom/meizu/settings/notificationstatusbar/FlymeNotificationAppList$AppRow;

    iget-object v2, v1, Lcom/meizu/settings/notificationstatusbar/FlymeNotificationAppList$AppRow;->pkg:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 323
    invoke-virtual {p0}, Lcom/meizu/settings/SettingsPreferenceFragment;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-static {p0, v0}, Lcom/meizu/settings/notificationstatusbar/FlymeNotificationAppList;->collectConfigActivities(Landroid/content/pm/PackageManager;Landroid/util/ArrayMap;)V

    :cond_4d
    :goto_4d
    return-void
.end method

.method private initPackageData()V
    .registers 9

    .line 170
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/settings/notificationstatusbar/AppNotificationSettings;->mIntent:Landroid/content/Intent;

    .line 171
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onCreate getIntent()="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/meizu/settings/notificationstatusbar/AppNotificationSettings;->mIntent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AppNotificationSettings"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    iget-object v0, p0, Lcom/meizu/settings/notificationstatusbar/AppNotificationSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/settings/notificationstatusbar/AppNotificationSettings;->mPM:Landroid/content/pm/PackageManager;

    .line 175
    iget-object v0, p0, Lcom/meizu/settings/notificationstatusbar/AppNotificationSettings;->mIntent:Landroid/content/Intent;

    if-nez v0, :cond_32

    .line 176
    invoke-direct {p0}, Lcom/meizu/settings/notificationstatusbar/AppNotificationSettings;->toastAndFinish()V

    return-void

    :cond_32
    const-string v2, "app_uid"

    const/4 v3, -0x1

    .line 179
    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 180
    iget-object v4, p0, Lcom/meizu/settings/notificationstatusbar/AppNotificationSettings;->mIntent:Landroid/content/Intent;

    const-string v5, "android.provider.extra.APP_PACKAGE"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eq v0, v3, :cond_49

    .line 181
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_6a

    .line 182
    :cond_49
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v6

    if-nez v6, :cond_58

    const-string v0, "No arguments!"

    .line 184
    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    invoke-direct {p0}, Lcom/meizu/settings/notificationstatusbar/AppNotificationSettings;->toastAndFinish()V

    return-void

    .line 188
    :cond_58
    invoke-virtual {v6, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v7

    if-eq v7, v3, :cond_5f

    move v0, v7

    .line 192
    :cond_5f
    invoke-virtual {v6, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 193
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_6a

    move-object v4, v5

    :cond_6a
    if-gez v0, :cond_73

    .line 202
    :try_start_6c
    iget-object v5, p0, Lcom/meizu/settings/notificationstatusbar/AppNotificationSettings;->mPM:Landroid/content/pm/PackageManager;

    const/4 v6, 0x0

    invoke-virtual {v5, v4, v6}, Landroid/content/pm/PackageManager;->getPackageUid(Ljava/lang/String;I)I

    move-result v0
    :try_end_73
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_6c .. :try_end_73} :catch_73

    :catch_73
    :cond_73
    const-string v5, " was "

    const-string v6, ", "

    if-eq v0, v3, :cond_d5

    .line 211
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_80

    goto :goto_d5

    .line 218
    :cond_80
    sget-boolean v3, Lcom/meizu/settings/notificationstatusbar/AppNotificationSettings;->DEBUG:Z

    if-eqz v3, :cond_a0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Load details for pkg="

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " uid="

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    :cond_a0
    invoke-virtual {p0}, Lcom/meizu/settings/SettingsPreferenceFragment;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 220
    invoke-static {v3, v4, v0}, Lcom/meizu/settings/notificationstatusbar/AppNotificationSettings;->findPackageInfo(Landroid/content/pm/PackageManager;Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    if-nez v3, :cond_ce

    .line 222
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to find package info: android.provider.extra.APP_PACKAGE was "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    invoke-direct {p0}, Lcom/meizu/settings/notificationstatusbar/AppNotificationSettings;->toastAndFinish()V

    return-void

    .line 228
    :cond_ce
    iput-object v3, p0, Lcom/meizu/settings/notificationstatusbar/AppNotificationSettings;->mInfo:Landroid/content/pm/PackageInfo;

    .line 229
    iput-object v4, p0, Lcom/meizu/settings/notificationstatusbar/AppNotificationSettings;->mPkg:Ljava/lang/String;

    .line 230
    iput v0, p0, Lcom/meizu/settings/notificationstatusbar/AppNotificationSettings;->mUid:I

    return-void

    .line 212
    :cond_d5
    :goto_d5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Missing extras: android.provider.extra.APP_PACKAGE was "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    invoke-direct {p0}, Lcom/meizu/settings/notificationstatusbar/AppNotificationSettings;->toastAndFinish()V

    return-void
.end method

.method private initPreference()V
    .registers 7

    const v0, 0x7f160096

    .line 235
    invoke-virtual {p0, v0}, Landroid/preference/PreferenceFragment;->addPreferencesFromResource(I)V

    .line 236
    iget-object v0, p0, Lcom/meizu/settings/notificationstatusbar/AppNotificationSettings;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/meizu/settings/notificationstatusbar/AppNotificationSettings;->mPkg:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/meizu/settings/notificationstatusbar/AppNotificationSettings;->hasLauncherIcon(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/meizu/settings/notificationstatusbar/AppNotificationSettings;->mHasLauncherIcon:Z

    .line 237
    iget-object v0, p0, Lcom/meizu/settings/notificationstatusbar/AppNotificationSettings;->mBackend:Lcom/meizu/settings/notificationstatusbar/FlymeNotificationAppList$Backend;

    iget-object v1, p0, Lcom/meizu/settings/notificationstatusbar/AppNotificationSettings;->mPkg:Ljava/lang/String;

    iget v2, p0, Lcom/meizu/settings/notificationstatusbar/AppNotificationSettings;->mUid:I

    .line 238
    invoke-virtual {v0, v1, v2}, Lcom/meizu/settings/notificationstatusbar/FlymeNotificationAppList$Backend;->getPackageHeadsUpVisibility(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-ne v0, v3, :cond_21

    move v0, v1

    goto :goto_22

    :cond_21
    move v0, v2

    .line 240
    :goto_22
    invoke-direct {p0}, Lcom/meizu/settings/notificationstatusbar/AppNotificationSettings;->initAppRow()V

    const-string v3, "block"

    .line 242
    invoke-virtual {p0, v3}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Lcom/meizu/common/preference/SwitchPreference;

    iput-object v3, p0, Lcom/meizu/settings/notificationstatusbar/AppNotificationSettings;->mBlock:Lcom/meizu/common/preference/SwitchPreference;

    const-string v3, "float_notification"

    .line 246
    invoke-virtual {p0, v3}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Lcom/meizu/common/preference/SwitchPreference;

    iput-object v3, p0, Lcom/meizu/settings/notificationstatusbar/AppNotificationSettings;->mFloatNotificationPreference:Lcom/meizu/common/preference/SwitchPreference;

    const-string v3, "desktop_icon_subscript"

    .line 247
    invoke-virtual {p0, v3}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Lcom/meizu/common/preference/SwitchPreference;

    iput-object v3, p0, Lcom/meizu/settings/notificationstatusbar/AppNotificationSettings;->mDesktopNewTipsPreference:Lcom/meizu/common/preference/SwitchPreference;

    const-string v3, "notification_remind"

    .line 248
    invoke-virtual {p0, v3}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Lcom/meizu/common/preference/SwitchPreference;

    iput-object v3, p0, Lcom/meizu/settings/notificationstatusbar/AppNotificationSettings;->mNotificationRemindPreference:Lcom/meizu/common/preference/SwitchPreference;

    const-string v3, "notification_filter"

    .line 249
    invoke-virtual {p0, v3}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/ListPreference;

    iput-object v3, p0, Lcom/meizu/settings/notificationstatusbar/AppNotificationSettings;->mNofiticationFilterPreference:Landroid/preference/ListPreference;

    .line 251
    iget-object v3, p0, Lcom/meizu/settings/notificationstatusbar/AppNotificationSettings;->mAppRow:Lcom/meizu/settings/notificationstatusbar/FlymeNotificationAppList$AppRow;

    if-eqz v3, :cond_63

    .line 252
    iget-object v4, p0, Lcom/meizu/settings/notificationstatusbar/AppNotificationSettings;->mBlock:Lcom/meizu/common/preference/SwitchPreference;

    iget-boolean v3, v3, Lcom/meizu/settings/notificationstatusbar/FlymeNotificationAppList$AppRow;->banned:Z

    xor-int/2addr v3, v1

    invoke-virtual {v4, v3}, Lcom/meizu/common/preference/SwitchPreference;->setChecked(Z)V

    .line 257
    :cond_63
    iget-object v3, p0, Lcom/meizu/settings/notificationstatusbar/AppNotificationSettings;->mFloatNotificationPreference:Lcom/meizu/common/preference/SwitchPreference;

    invoke-virtual {v3, v0}, Lcom/meizu/common/preference/SwitchPreference;->setChecked(Z)V

    .line 258
    iget-object v0, p0, Lcom/meizu/settings/notificationstatusbar/AppNotificationSettings;->mDesktopNewTipsPreference:Lcom/meizu/common/preference/SwitchPreference;

    iget-object v3, p0, Lcom/meizu/settings/notificationstatusbar/AppNotificationSettings;->mBackend:Lcom/meizu/settings/notificationstatusbar/FlymeNotificationAppList$Backend;

    iget-object v4, p0, Lcom/meizu/settings/notificationstatusbar/AppNotificationSettings;->mPkg:Ljava/lang/String;

    iget v5, p0, Lcom/meizu/settings/notificationstatusbar/AppNotificationSettings;->mUid:I

    invoke-virtual {v3, v4, v5}, Lcom/meizu/settings/notificationstatusbar/FlymeNotificationAppList$Backend;->getPackageDesktopNewTipsEnable(Ljava/lang/String;I)Z

    move-result v3

    invoke-virtual {v0, v3}, Lcom/meizu/common/preference/SwitchPreference;->setChecked(Z)V

    .line 259
    iget-object v0, p0, Lcom/meizu/settings/notificationstatusbar/AppNotificationSettings;->mNotificationRemindPreference:Lcom/meizu/common/preference/SwitchPreference;

    iget-object v3, p0, Lcom/meizu/settings/notificationstatusbar/AppNotificationSettings;->mBackend:Lcom/meizu/settings/notificationstatusbar/FlymeNotificationAppList$Backend;

    iget-object v4, p0, Lcom/meizu/settings/notificationstatusbar/AppNotificationSettings;->mPkg:Ljava/lang/String;

    iget v5, p0, Lcom/meizu/settings/notificationstatusbar/AppNotificationSettings;->mUid:I

    invoke-virtual {v3, v4, v5}, Lcom/meizu/settings/notificationstatusbar/FlymeNotificationAppList$Backend;->getPackageRemindEnable(Ljava/lang/String;I)Z

    move-result v3

    invoke-virtual {v0, v3}, Lcom/meizu/common/preference/SwitchPreference;->setChecked(Z)V

    .line 263
    iget-object v0, p0, Lcom/meizu/settings/notificationstatusbar/AppNotificationSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "current_notification_filter_value"

    invoke-static {v0, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    if-eqz v0, :cond_be

    const-string v3, ","

    .line 267
    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 268
    aget-object v3, v0, v2

    .line 269
    aget-object v0, v0, v1

    .line 270
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "initPreference: bart - pkg = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ",value = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v4, "AppNotificationSettings"

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_bf

    :cond_be
    move-object v0, v3

    :goto_bf
    if-eqz v3, :cond_da

    if-eqz v0, :cond_da

    .line 272
    iget-object v1, p0, Lcom/meizu/settings/notificationstatusbar/AppNotificationSettings;->mPkg:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_da

    .line 273
    iget-object v1, p0, Lcom/meizu/settings/notificationstatusbar/AppNotificationSettings;->mNofiticationFilterPreference:Landroid/preference/ListPreference;

    invoke-virtual {v1, v0}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 274
    iget-object v0, p0, Lcom/meizu/settings/notificationstatusbar/AppNotificationSettings;->mNofiticationFilterPreference:Landroid/preference/ListPreference;

    invoke-virtual {v0}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_f4

    .line 276
    :cond_da
    iget-object v0, p0, Lcom/meizu/settings/notificationstatusbar/AppNotificationSettings;->mNofiticationFilterPreference:Landroid/preference/ListPreference;

    iget-object v1, p0, Lcom/meizu/settings/notificationstatusbar/AppNotificationSettings;->mBackend:Lcom/meizu/settings/notificationstatusbar/FlymeNotificationAppList$Backend;

    iget-object v3, p0, Lcom/meizu/settings/notificationstatusbar/AppNotificationSettings;->mPkg:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lcom/meizu/settings/notificationstatusbar/FlymeNotificationAppList$Backend;->getUserFilter(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 277
    iget-object v0, p0, Lcom/meizu/settings/notificationstatusbar/AppNotificationSettings;->mNofiticationFilterPreference:Landroid/preference/ListPreference;

    invoke-virtual {v0}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 280
    :goto_f4
    iget-object v0, p0, Lcom/meizu/settings/notificationstatusbar/AppNotificationSettings;->mBlock:Lcom/meizu/common/preference/SwitchPreference;

    invoke-virtual {v0, p0}, Landroid/preference/TwoStatePreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 284
    iget-object v0, p0, Lcom/meizu/settings/notificationstatusbar/AppNotificationSettings;->mFloatNotificationPreference:Lcom/meizu/common/preference/SwitchPreference;

    invoke-virtual {v0, p0}, Landroid/preference/TwoStatePreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 285
    iget-object v0, p0, Lcom/meizu/settings/notificationstatusbar/AppNotificationSettings;->mDesktopNewTipsPreference:Lcom/meizu/common/preference/SwitchPreference;

    invoke-virtual {v0, p0}, Landroid/preference/TwoStatePreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 286
    iget-object v0, p0, Lcom/meizu/settings/notificationstatusbar/AppNotificationSettings;->mNotificationRemindPreference:Lcom/meizu/common/preference/SwitchPreference;

    invoke-virtual {v0, p0}, Landroid/preference/TwoStatePreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 287
    iget-object v0, p0, Lcom/meizu/settings/notificationstatusbar/AppNotificationSettings;->mNofiticationFilterPreference:Landroid/preference/ListPreference;

    invoke-virtual {v0, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 289
    iget-boolean v0, p0, Lcom/meizu/settings/notificationstatusbar/AppNotificationSettings;->mHasLauncherIcon:Z

    if-eqz v0, :cond_123

    iget-object v0, p0, Lcom/meizu/settings/notificationstatusbar/AppNotificationSettings;->mPkg:Ljava/lang/String;

    const-string v1, "com.meizu.flyme.launcher"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_123

    iget-object v0, p0, Lcom/meizu/settings/notificationstatusbar/AppNotificationSettings;->mContext:Landroid/content/Context;

    .line 290
    invoke-static {v0}, Lcom/meizu/settings/utils/MzUtils;->isGuestUser(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_12c

    .line 291
    :cond_123
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/meizu/settings/notificationstatusbar/AppNotificationSettings;->mDesktopNewTipsPreference:Lcom/meizu/common/preference/SwitchPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 294
    :cond_12c
    iget-object v0, p0, Lcom/meizu/settings/notificationstatusbar/AppNotificationSettings;->mBlock:Lcom/meizu/common/preference/SwitchPreference;

    invoke-virtual {v0}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/meizu/settings/notificationstatusbar/AppNotificationSettings;->updatePreference(Z)V

    .line 296
    iget-object v0, p0, Lcom/meizu/settings/notificationstatusbar/AppNotificationSettings;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/meizu/settings/notificationstatusbar/AppNotificationSettings;->mPkg:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/meizu/settings/notificationstatusbar/AppNotificationSettings;->isAppCanBeManage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_145

    invoke-direct {p0}, Lcom/meizu/settings/notificationstatusbar/AppNotificationSettings;->isAppRejectManage()Z

    move-result v0

    if-eqz v0, :cond_154

    .line 297
    :cond_145
    iget-object v0, p0, Lcom/meizu/settings/notificationstatusbar/AppNotificationSettings;->mBlock:Lcom/meizu/common/preference/SwitchPreference;

    invoke-virtual {v0, v2}, Landroid/preference/TwoStatePreference;->setEnabled(Z)V

    .line 301
    iget-object v0, p0, Lcom/meizu/settings/notificationstatusbar/AppNotificationSettings;->mFloatNotificationPreference:Lcom/meizu/common/preference/SwitchPreference;

    invoke-virtual {v0, v2}, Landroid/preference/TwoStatePreference;->setEnabled(Z)V

    .line 302
    iget-object v0, p0, Lcom/meizu/settings/notificationstatusbar/AppNotificationSettings;->mNotificationRemindPreference:Lcom/meizu/common/preference/SwitchPreference;

    invoke-virtual {v0, v2}, Landroid/preference/TwoStatePreference;->setEnabled(Z)V

    .line 305
    :cond_154
    invoke-static {}, Lcom/meizu/settings/utils/MzUtils;->isSupportBreatheLight()Z

    move-result v0

    if-nez v0, :cond_162

    .line 306
    iget-object p0, p0, Lcom/meizu/settings/notificationstatusbar/AppNotificationSettings;->mNotificationRemindPreference:Lcom/meizu/common/preference/SwitchPreference;

    const v0, 0x7f120f6d

    invoke-virtual {p0, v0}, Landroid/preference/TwoStatePreference;->setSummary(I)V

    :cond_162
    return-void
.end method

.method public static isAppCanBeManage(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 7

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 382
    :cond_4
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    sget-object v2, Lcom/meizu/settings/notificationstatusbar/FlymeNotificationAppList;->APP_NOTIFICATION_PREFS_CATEGORY_INTENT:Landroid/content/Intent;

    invoke-virtual {v1, v2, v0}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x1

    if-eqz v1, :cond_37

    .line 386
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_15
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_37

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    if-eqz v3, :cond_15

    .line 387
    iget-object v4, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v4, :cond_15

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    if-eqz v4, :cond_15

    iget-object v3, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 389
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_15

    move v1, v2

    goto :goto_38

    :cond_37
    move v1, v0

    .line 396
    :goto_38
    invoke-static {p0, p1}, Lcom/meizu/settings/utils/MzUtils;->isSystemPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    .line 397
    invoke-static {p0, p1, v3}, Lcom/meizu/settings/notificationstatusbar/FlymeNotificationAppList;->isAppNotificationCanManage(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v4

    .line 399
    invoke-static {p0, p1}, Lcom/meizu/settings/notificationstatusbar/AppNotificationSettings;->hasLauncherIcon(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_4e

    if-nez v1, :cond_4e

    if-nez v4, :cond_4e

    if-nez v3, :cond_4f

    if-nez p0, :cond_4f

    :cond_4e
    move v0, v2

    :cond_4f
    return v0
.end method

.method private isAppRejectManage()Z
    .registers 3

    .line 364
    iget-object v0, p0, Lcom/meizu/settings/notificationstatusbar/AppNotificationSettings;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/meizu/settings/notificationstatusbar/AppNotificationSettings;->mPkg:Ljava/lang/String;

    .line 365
    invoke-static {v0, p0}, Lcom/meizu/settings/utils/MzUtils;->isSystemPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    .line 364
    invoke-static {v0, p0, v1}, Lcom/meizu/settings/notificationstatusbar/FlymeNotificationAppList;->isAppRejectManage(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method private sendDesktopNewTipsChangeBroadcast(Landroid/content/Context;Ljava/lang/String;)V
    .registers 5

    .line 406
    new-instance p0, Landroid/content/Intent;

    const-string v0, "com.flyme.systemuitools.launcher.REDPOINT_PERMISSION_CHANGE"

    invoke-direct {p0, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v0, "com.flyme.systemuitools"

    .line 407
    invoke-virtual {p0, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    const-string p2, "extra_redpoint_permission_change_pkgs"

    .line 408
    invoke-virtual {p0, p2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 409
    invoke-virtual {p1, p0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method private toastAndFinish()V
    .registers 4

    .line 341
    iget-object v0, p0, Lcom/meizu/settings/notificationstatusbar/AppNotificationSettings;->mContext:Landroid/content/Context;

    const v1, 0x7f12018f

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 342
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method private updatePreference(Z)V
    .registers 3

    .line 334
    iget-object v0, p0, Lcom/meizu/settings/notificationstatusbar/AppNotificationSettings;->mFloatNotificationPreference:Lcom/meizu/common/preference/SwitchPreference;

    invoke-virtual {v0, p1}, Landroid/preference/TwoStatePreference;->setEnabled(Z)V

    .line 335
    iget-object v0, p0, Lcom/meizu/settings/notificationstatusbar/AppNotificationSettings;->mNotificationRemindPreference:Lcom/meizu/common/preference/SwitchPreference;

    invoke-virtual {v0, p1}, Landroid/preference/TwoStatePreference;->setEnabled(Z)V

    .line 336
    iget-object v0, p0, Lcom/meizu/settings/notificationstatusbar/AppNotificationSettings;->mDesktopNewTipsPreference:Lcom/meizu/common/preference/SwitchPreference;

    invoke-virtual {v0, p1}, Landroid/preference/TwoStatePreference;->setEnabled(Z)V

    .line 337
    iget-object p0, p0, Lcom/meizu/settings/notificationstatusbar/AppNotificationSettings;->mNofiticationFilterPreference:Landroid/preference/ListPreference;

    invoke-virtual {p0, p1}, Landroid/preference/ListPreference;->setEnabled(Z)V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 6

    .line 130
    invoke-super {p0, p1}, Lcom/meizu/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 132
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    iput-object p1, p0, Lcom/meizu/settings/notificationstatusbar/AppNotificationSettings;->mContext:Landroid/content/Context;

    .line 133
    iget-object p1, p0, Lcom/meizu/settings/notificationstatusbar/AppNotificationSettings;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "current_notification_filter_value"

    .line 134
    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iget-object v1, p0, Lcom/meizu/settings/notificationstatusbar/AppNotificationSettings;->mCurrentFilterObserver:Landroid/database/ContentObserver;

    const/4 v2, 0x0

    const/4 v3, -0x1

    .line 133
    invoke-virtual {p1, v0, v2, v1, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 138
    invoke-direct {p0}, Lcom/meizu/settings/notificationstatusbar/AppNotificationSettings;->initPackageData()V

    .line 139
    invoke-direct {p0}, Lcom/meizu/settings/notificationstatusbar/AppNotificationSettings;->initPreference()V

    return-void
.end method

.method public onDestroy()V
    .registers 2

    .line 165
    invoke-super {p0}, Lcom/meizu/settings/SettingsPreferenceFragment;->onDestroy()V

    .line 166
    iget-object v0, p0, Lcom/meizu/settings/notificationstatusbar/AppNotificationSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object p0, p0, Lcom/meizu/settings/notificationstatusbar/AppNotificationSettings;->mCurrentFilterObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .registers 6

    .line 414
    iget-object v0, p0, Lcom/meizu/settings/notificationstatusbar/AppNotificationSettings;->mBlock:Lcom/meizu/common/preference/SwitchPreference;

    const/4 v1, 0x1

    if-ne p1, v0, :cond_1a

    .line 415
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 416
    invoke-direct {p0, p1}, Lcom/meizu/settings/notificationstatusbar/AppNotificationSettings;->updatePreference(Z)V

    .line 417
    iget-object p2, p0, Lcom/meizu/settings/notificationstatusbar/AppNotificationSettings;->mBackend:Lcom/meizu/settings/notificationstatusbar/FlymeNotificationAppList$Backend;

    iget-object v0, p0, Lcom/meizu/settings/notificationstatusbar/AppNotificationSettings;->mPkg:Ljava/lang/String;

    iget p0, p0, Lcom/meizu/settings/notificationstatusbar/AppNotificationSettings;->mUid:I

    xor-int/2addr p1, v1

    invoke-virtual {p2, v0, p0, p1}, Lcom/meizu/settings/notificationstatusbar/FlymeNotificationAppList$Backend;->setNotificationsBanned(Ljava/lang/String;IZ)Z

    move-result p0

    return p0

    .line 418
    :cond_1a
    iget-object v0, p0, Lcom/meizu/settings/notificationstatusbar/AppNotificationSettings;->mPriority:Lcom/meizu/common/preference/SwitchPreference;

    const/4 v2, 0x0

    if-ne p1, v0, :cond_21

    goto/16 :goto_d9

    .line 424
    :cond_21
    iget-object v0, p0, Lcom/meizu/settings/notificationstatusbar/AppNotificationSettings;->mFloatNotificationPreference:Lcom/meizu/common/preference/SwitchPreference;

    if-ne p1, v0, :cond_38

    .line 425
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_2e

    const/4 v2, 0x2

    .line 427
    :cond_2e
    iget-object p1, p0, Lcom/meizu/settings/notificationstatusbar/AppNotificationSettings;->mBackend:Lcom/meizu/settings/notificationstatusbar/FlymeNotificationAppList$Backend;

    iget-object p2, p0, Lcom/meizu/settings/notificationstatusbar/AppNotificationSettings;->mPkg:Ljava/lang/String;

    iget p0, p0, Lcom/meizu/settings/notificationstatusbar/AppNotificationSettings;->mUid:I

    invoke-virtual {p1, p2, p0, v2}, Lcom/meizu/settings/notificationstatusbar/FlymeNotificationAppList$Backend;->setPackageHeadsUpVisibility(Ljava/lang/String;II)V

    return v1

    .line 429
    :cond_38
    iget-object v0, p0, Lcom/meizu/settings/notificationstatusbar/AppNotificationSettings;->mDesktopNewTipsPreference:Lcom/meizu/common/preference/SwitchPreference;

    if-ne p1, v0, :cond_4c

    .line 430
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 431
    iget-object p2, p0, Lcom/meizu/settings/notificationstatusbar/AppNotificationSettings;->mBackend:Lcom/meizu/settings/notificationstatusbar/FlymeNotificationAppList$Backend;

    iget-object v0, p0, Lcom/meizu/settings/notificationstatusbar/AppNotificationSettings;->mPkg:Ljava/lang/String;

    iget p0, p0, Lcom/meizu/settings/notificationstatusbar/AppNotificationSettings;->mUid:I

    invoke-virtual {p2, v0, p0, p1}, Lcom/meizu/settings/notificationstatusbar/FlymeNotificationAppList$Backend;->setPackageDesktopNewTipsEnable(Ljava/lang/String;IZ)V

    return v1

    .line 433
    :cond_4c
    iget-object v0, p0, Lcom/meizu/settings/notificationstatusbar/AppNotificationSettings;->mNotificationRemindPreference:Lcom/meizu/common/preference/SwitchPreference;

    if-ne p1, v0, :cond_60

    .line 434
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 435
    iget-object p2, p0, Lcom/meizu/settings/notificationstatusbar/AppNotificationSettings;->mBackend:Lcom/meizu/settings/notificationstatusbar/FlymeNotificationAppList$Backend;

    iget-object v0, p0, Lcom/meizu/settings/notificationstatusbar/AppNotificationSettings;->mPkg:Ljava/lang/String;

    iget p0, p0, Lcom/meizu/settings/notificationstatusbar/AppNotificationSettings;->mUid:I

    invoke-virtual {p2, v0, p0, p1}, Lcom/meizu/settings/notificationstatusbar/FlymeNotificationAppList$Backend;->setPackageRemindEnable(Ljava/lang/String;IZ)V

    return v1

    .line 437
    :cond_60
    iget-object v0, p0, Lcom/meizu/settings/notificationstatusbar/AppNotificationSettings;->mNofiticationFilterPreference:Landroid/preference/ListPreference;

    if-ne p1, v0, :cond_d9

    .line 439
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 440
    iget-object p1, p0, Lcom/meizu/settings/notificationstatusbar/AppNotificationSettings;->mNofiticationFilterPreference:Landroid/preference/ListPreference;

    invoke-virtual {p1}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 441
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    .line 442
    iget-object p2, p0, Lcom/meizu/settings/notificationstatusbar/AppNotificationSettings;->mBackend:Lcom/meizu/settings/notificationstatusbar/FlymeNotificationAppList$Backend;

    iget-object v0, p0, Lcom/meizu/settings/notificationstatusbar/AppNotificationSettings;->mPkg:Ljava/lang/String;

    iget v2, p0, Lcom/meizu/settings/notificationstatusbar/AppNotificationSettings;->mUid:I

    invoke-virtual {p2, v0, v2, p1}, Lcom/meizu/settings/notificationstatusbar/FlymeNotificationAppList$Backend;->setUserFilter(Ljava/lang/String;II)V

    .line 444
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/meizu/settings/notificationstatusbar/AppNotificationSettings;->mPkg:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ","

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 445
    iget-object v0, p0, Lcom/meizu/settings/notificationstatusbar/AppNotificationSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "current_notification_filter_value"

    invoke-static {v0, v2, p2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 447
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPreferenceChange: value = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ",summary = "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/meizu/settings/notificationstatusbar/AppNotificationSettings;->mNofiticationFilterPreference:Landroid/preference/ListPreference;

    invoke-virtual {p0}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "currentPkgAndFilter = "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "AppNotificationSettings"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_d9
    :goto_d9
    return v2
.end method

.method public onStart()V
    .registers 2

    .line 145
    invoke-super {p0}, Lcom/meizu/settings/core/lifecycle/ObservablePreferenceFragment;->onStart()V

    .line 146
    iget-object v0, p0, Lcom/meizu/settings/notificationstatusbar/AppNotificationSettings;->mBlock:Lcom/meizu/common/preference/SwitchPreference;

    if-eqz v0, :cond_d

    .line 147
    invoke-virtual {v0}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v0

    iput-boolean v0, p0, Lcom/meizu/settings/notificationstatusbar/AppNotificationSettings;->mLastBlockState:Z

    .line 149
    :cond_d
    iget-object v0, p0, Lcom/meizu/settings/notificationstatusbar/AppNotificationSettings;->mDesktopNewTipsPreference:Lcom/meizu/common/preference/SwitchPreference;

    invoke-virtual {v0}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v0

    iput-boolean v0, p0, Lcom/meizu/settings/notificationstatusbar/AppNotificationSettings;->mLastAppDesktopNewTipsSettingsState:Z

    return-void
.end method

.method public onStop()V
    .registers 3

    .line 154
    invoke-super {p0}, Lcom/meizu/settings/SettingsPreferenceFragment;->onStop()V

    .line 155
    iget-boolean v0, p0, Lcom/meizu/settings/notificationstatusbar/AppNotificationSettings;->mLastBlockState:Z

    iget-object v1, p0, Lcom/meizu/settings/notificationstatusbar/AppNotificationSettings;->mBlock:Lcom/meizu/common/preference/SwitchPreference;

    invoke-virtual {v1}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v1

    if-eq v0, v1, :cond_14

    .line 156
    iget-object v0, p0, Lcom/meizu/settings/notificationstatusbar/AppNotificationSettings;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/meizu/settings/notificationstatusbar/AppNotificationSettings;->mPkg:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/meizu/settings/notificationstatusbar/AppNotificationSettings;->sendDesktopNewTipsChangeBroadcast(Landroid/content/Context;Ljava/lang/String;)V

    .line 158
    :cond_14
    iget-boolean v0, p0, Lcom/meizu/settings/notificationstatusbar/AppNotificationSettings;->mLastAppDesktopNewTipsSettingsState:Z

    iget-object v1, p0, Lcom/meizu/settings/notificationstatusbar/AppNotificationSettings;->mDesktopNewTipsPreference:Lcom/meizu/common/preference/SwitchPreference;

    invoke-virtual {v1}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v1

    if-eq v0, v1, :cond_25

    .line 159
    iget-object v0, p0, Lcom/meizu/settings/notificationstatusbar/AppNotificationSettings;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/meizu/settings/notificationstatusbar/AppNotificationSettings;->mPkg:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/meizu/settings/notificationstatusbar/AppNotificationSettings;->sendDesktopNewTipsChangeBroadcast(Landroid/content/Context;Ljava/lang/String;)V

    :cond_25
    return-void
.end method
