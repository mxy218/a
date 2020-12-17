.class public Lcom/meizu/settings/development/FlymeDevelopmentSettings;
.super Ljava/lang/Object;
.source "FlymeDevelopmentSettings.java"


# static fields
.field private static final CATEGORY_KEYS:[Ljava/lang/String;

.field private static final HIDE_PREFERENCE_KEYS:[Ljava/lang/String;


# instance fields
.field private editor:Landroid/content/SharedPreferences$Editor;

.field private final mCloseDeveloperOptionReceiver:Landroid/content/BroadcastReceiver;

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mContext:Landroid/content/Context;

.field private mCopyFingerprintDataDialog:Lcom/meizu/common/app/LoadingDialog;

.field private mDCLightPref:Landroidx/preference/SwitchPreference;

.field private mDevelopmentSettingsFragment:Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;

.field private mDeviceControl:Lmeizu/os/IDeviceControlService;

.field private mEnableDevelopmentSettings:Landroidx/preference/SwitchPreference;

.field private mEnablemBackDiagnosePref:Landroidx/preference/SwitchPreference;

.field private mPerfUI:Landroidx/preference/Preference;

.field private mRefreshRateForceNintyHzPref:Landroidx/preference/SwitchPreference;

.field private mRootPreferenceScreen:Landroidx/preference/PreferenceScreen;

.field private mSharedPreferences:Landroid/content/SharedPreferences;

.field private mTouchEventSwitch:Landroidx/preference/SwitchPreference;


# direct methods
.method static constructor <clinit>()V
    .registers 12

    const-string/jumbo v0, "ota_disable_automatic_update"

    const-string v1, "local_backup_password"

    const-string v2, "demo_mode"

    const-string v3, "memory"

    const-string v4, "bugreport"

    const-string v5, "default_usb_configuration"

    const-string v6, "feature_flags_dashboard"

    const-string v7, "background_check"

    const-string v8, "inactive_apps"

    const-string v9, "dark_ui_mode"

    const-string v10, "display_cutout_emulation"

    const-string/jumbo v11, "oem_unlock_enable"

    .line 58
    filled-new-array/range {v0 .. v11}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/meizu/settings/development/FlymeDevelopmentSettings;->HIDE_PREFERENCE_KEYS:[Ljava/lang/String;

    const-string v1, "debug_debugging_category"

    const-string v2, "debug_networking_category"

    const-string v3, "debug_input_category"

    const-string v4, "debug_drawing_category"

    const-string v5, "debug_hw_drawing_category"

    const-string v6, "media_category"

    const-string v7, "debug_monitoring_category"

    const-string v8, "debug_applications_category"

    const-string v9, "ext_feature"

    .line 62
    filled-new-array/range {v1 .. v9}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/meizu/settings/development/FlymeDevelopmentSettings;->CATEGORY_KEYS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroidx/fragment/app/Fragment;Landroidx/preference/PreferenceScreen;)V
    .registers 4

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 371
    new-instance v0, Lcom/meizu/settings/development/FlymeDevelopmentSettings$3;

    invoke-direct {v0, p0}, Lcom/meizu/settings/development/FlymeDevelopmentSettings$3;-><init>(Lcom/meizu/settings/development/FlymeDevelopmentSettings;)V

    iput-object v0, p0, Lcom/meizu/settings/development/FlymeDevelopmentSettings;->mCloseDeveloperOptionReceiver:Landroid/content/BroadcastReceiver;

    .line 97
    move-object v0, p1

    check-cast v0, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;

    iput-object v0, p0, Lcom/meizu/settings/development/FlymeDevelopmentSettings;->mDevelopmentSettingsFragment:Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;

    .line 98
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iput-object p1, p0, Lcom/meizu/settings/development/FlymeDevelopmentSettings;->mContext:Landroid/content/Context;

    .line 99
    iput-object p2, p0, Lcom/meizu/settings/development/FlymeDevelopmentSettings;->mRootPreferenceScreen:Landroidx/preference/PreferenceScreen;

    .line 100
    iget-object p1, p0, Lcom/meizu/settings/development/FlymeDevelopmentSettings;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iput-object p1, p0, Lcom/meizu/settings/development/FlymeDevelopmentSettings;->mContentResolver:Landroid/content/ContentResolver;

    const-string p1, "device_control"

    .line 101
    invoke-static {p1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lmeizu/os/IDeviceControlService$Stub;->asInterface(Landroid/os/IBinder;)Lmeizu/os/IDeviceControlService;

    move-result-object p1

    iput-object p1, p0, Lcom/meizu/settings/development/FlymeDevelopmentSettings;->mDeviceControl:Lmeizu/os/IDeviceControlService;

    return-void
.end method

.method static synthetic access$000(Lcom/meizu/settings/development/FlymeDevelopmentSettings;Ljava/lang/String;)V
    .registers 2

    .line 44
    invoke-direct {p0, p1}, Lcom/meizu/settings/development/FlymeDevelopmentSettings;->copyFileToSdcard(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/meizu/settings/development/FlymeDevelopmentSettings;I)V
    .registers 2

    .line 44
    invoke-direct {p0, p1}, Lcom/meizu/settings/development/FlymeDevelopmentSettings;->showCopyFingerprintDataToast(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/meizu/settings/development/FlymeDevelopmentSettings;)Lcom/meizu/common/app/LoadingDialog;
    .registers 1

    .line 44
    iget-object p0, p0, Lcom/meizu/settings/development/FlymeDevelopmentSettings;->mCopyFingerprintDataDialog:Lcom/meizu/common/app/LoadingDialog;

    return-object p0
.end method

.method static synthetic access$300(Lcom/meizu/settings/development/FlymeDevelopmentSettings;)Landroid/content/Context;
    .registers 1

    .line 44
    iget-object p0, p0, Lcom/meizu/settings/development/FlymeDevelopmentSettings;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$400(Lcom/meizu/settings/development/FlymeDevelopmentSettings;)Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;
    .registers 1

    .line 44
    iget-object p0, p0, Lcom/meizu/settings/development/FlymeDevelopmentSettings;->mDevelopmentSettingsFragment:Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;

    return-object p0
.end method

.method public static addNonIndexKeys(Landroid/content/Context;Ljava/util/List;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 326
    sget-object v0, Lcom/meizu/settings/development/FlymeDevelopmentSettings;->HIDE_PREFERENCE_KEYS:[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_5
    if-ge v3, v1, :cond_f

    aget-object v4, v0, v3

    .line 327
    invoke-interface {p1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    :cond_f
    const-string/jumbo v0, "ro.adb.secure"

    .line 330
    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_1d

    const-string v0, "clear_adb_keys"

    .line 331
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1d
    const-string v0, "development_prefs_screen"

    .line 334
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "copy_gf_data"

    .line 335
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 337
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f05001f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-nez v0, :cond_39

    const-string v0, "camera_laser_sensor_switch"

    .line 338
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 341
    :cond_39
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f050053

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p0

    if-nez p0, :cond_4c

    const-string/jumbo p0, "wifi_connected_mac_randomization"

    .line 343
    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4c
    const-string p0, "hdcp_checking"

    .line 346
    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string p0, "direct_current_light"

    .line 348
    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string/jumbo p0, "refresh_rate_force_ninty_hz"

    .line 350
    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private copyFileToSdcard(Ljava/lang/String;)V
    .registers 8

    .line 271
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 272
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    const-string v2, "/sdcard/fpdata/gf_data"

    if-eqz v1, :cond_5e

    .line 273
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {p1, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 274
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 275
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_3c

    const-string v1, "gf_data"

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3c

    .line 276
    invoke-virtual {v3}, Ljava/io/File;->mkdir()Z

    .line 279
    :cond_3c
    invoke-virtual {v0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v0

    .line 280
    array-length v1, v0

    const/4 v3, 0x0

    :goto_42
    if-ge v3, v1, :cond_76

    aget-object v4, v0, v3

    .line 281
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/meizu/settings/development/FlymeDevelopmentSettings;->copyFileToSdcard(Ljava/lang/String;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_42

    :cond_5e
    :try_start_5e
    const-string p0, "/data/vendor/gf_data"

    .line 285
    invoke-virtual {p1, p0, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 286
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance p1, Ljava/io/File;

    invoke-direct {p1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0, p1}, Landroid/os/FileUtils;->copy(Ljava/io/File;Ljava/io/File;)J
    :try_end_71
    .catch Ljava/io/IOException; {:try_start_5e .. :try_end_71} :catch_72

    goto :goto_76

    :catch_72
    move-exception p0

    .line 288
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :cond_76
    :goto_76
    return-void
.end method

.method private copyFingerprintDataToSdcard()V
    .registers 2

    .line 241
    new-instance v0, Lcom/meizu/settings/development/FlymeDevelopmentSettings$1;

    invoke-direct {v0, p0}, Lcom/meizu/settings/development/FlymeDevelopmentSettings$1;-><init>(Lcom/meizu/settings/development/FlymeDevelopmentSettings;)V

    invoke-static {v0}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private hidePreference()V
    .registers 5

    .line 161
    sget-object v0, Lcom/meizu/settings/development/FlymeDevelopmentSettings;->HIDE_PREFERENCE_KEYS:[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_4
    if-ge v2, v1, :cond_e

    aget-object v3, v0, v2

    .line 162
    invoke-direct {p0, v3}, Lcom/meizu/settings/development/FlymeDevelopmentSettings;->removePreference(Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_e
    return-void
.end method

.method private initPreference()V
    .registers 5

    .line 119
    iget-object v0, p0, Lcom/meizu/settings/development/FlymeDevelopmentSettings;->mRootPreferenceScreen:Landroidx/preference/PreferenceScreen;

    const-string/jumbo v1, "open_development_settings"

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/SwitchPreference;

    iput-object v0, p0, Lcom/meizu/settings/development/FlymeDevelopmentSettings;->mEnableDevelopmentSettings:Landroidx/preference/SwitchPreference;

    const/4 v0, 0x0

    const-string/jumbo v1, "ro.adb.secure"

    .line 121
    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_1c

    const-string v1, "clear_adb_keys"

    .line 122
    invoke-direct {p0, v1}, Lcom/meizu/settings/development/FlymeDevelopmentSettings;->removePreference(Ljava/lang/String;)V

    .line 125
    :cond_1c
    iget-object v1, p0, Lcom/meizu/settings/development/FlymeDevelopmentSettings;->mRootPreferenceScreen:Landroidx/preference/PreferenceScreen;

    const-string/jumbo v2, "perf_ui_key"

    invoke-virtual {v1, v2}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/meizu/settings/development/FlymeDevelopmentSettings;->mPerfUI:Landroidx/preference/Preference;

    .line 126
    iget-object v1, p0, Lcom/meizu/settings/development/FlymeDevelopmentSettings;->mContext:Landroid/content/Context;

    const-string v2, "com.meizu.perfui"

    invoke-static {v1, v2}, Lcom/meizu/settings/utils/MzUtils;->isPackageExist(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_40

    .line 127
    iget-object v1, p0, Lcom/meizu/settings/development/FlymeDevelopmentSettings;->mRootPreferenceScreen:Landroidx/preference/PreferenceScreen;

    const-string v2, "ext_feature"

    invoke-virtual {v1, v2}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    check-cast v1, Landroidx/preference/PreferenceCategory;

    iget-object v2, p0, Lcom/meizu/settings/development/FlymeDevelopmentSettings;->mPerfUI:Landroidx/preference/Preference;

    invoke-virtual {v1, v2}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    .line 131
    :cond_40
    iget-object v1, p0, Lcom/meizu/settings/development/FlymeDevelopmentSettings;->mRootPreferenceScreen:Landroidx/preference/PreferenceScreen;

    const-string/jumbo v2, "touch_event"

    invoke-virtual {v1, v2}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    check-cast v1, Landroidx/preference/SwitchPreference;

    iput-object v1, p0, Lcom/meizu/settings/development/FlymeDevelopmentSettings;->mTouchEventSwitch:Landroidx/preference/SwitchPreference;

    .line 132
    iget-object v1, p0, Lcom/meizu/settings/development/FlymeDevelopmentSettings;->mTouchEventSwitch:Landroidx/preference/SwitchPreference;

    const/4 v2, 0x1

    if-eqz v1, :cond_6f

    const-string/jumbo v1, "sys.inputlog.enabled"

    const-string v3, "false"

    .line 133
    invoke-static {v1, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v3, "true"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6a

    .line 134
    iget-object v1, p0, Lcom/meizu/settings/development/FlymeDevelopmentSettings;->mTouchEventSwitch:Landroidx/preference/SwitchPreference;

    invoke-virtual {v1, v2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    goto :goto_6f

    .line 136
    :cond_6a
    iget-object v1, p0, Lcom/meizu/settings/development/FlymeDevelopmentSettings;->mTouchEventSwitch:Landroidx/preference/SwitchPreference;

    invoke-virtual {v1, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 140
    :cond_6f
    :goto_6f
    iget-object v1, p0, Lcom/meizu/settings/development/FlymeDevelopmentSettings;->mRootPreferenceScreen:Landroidx/preference/PreferenceScreen;

    const-string v3, "enable_mback_diagnose"

    invoke-virtual {v1, v3}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    check-cast v1, Landroidx/preference/SwitchPreference;

    iput-object v1, p0, Lcom/meizu/settings/development/FlymeDevelopmentSettings;->mEnablemBackDiagnosePref:Landroidx/preference/SwitchPreference;

    .line 142
    iget-object v1, p0, Lcom/meizu/settings/development/FlymeDevelopmentSettings;->mEnablemBackDiagnosePref:Landroidx/preference/SwitchPreference;

    const-string v3, "debug.fp.test"

    .line 143
    invoke-static {v3, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v2, :cond_86

    move v0, v2

    .line 142
    :cond_86
    invoke-virtual {v1, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    const-string v0, "copy_gf_data"

    .line 146
    invoke-direct {p0, v0}, Lcom/meizu/settings/development/FlymeDevelopmentSettings;->removePreference(Ljava/lang/String;)V

    const-string v0, "direct_current_light"

    .line 151
    invoke-direct {p0, v0}, Lcom/meizu/settings/development/FlymeDevelopmentSettings;->removePreference(Ljava/lang/String;)V

    const-string/jumbo v0, "refresh_rate_force_ninty_hz"

    .line 157
    invoke-direct {p0, v0}, Lcom/meizu/settings/development/FlymeDevelopmentSettings;->removePreference(Ljava/lang/String;)V

    return-void
.end method

.method private removePreference(Ljava/lang/String;)V
    .registers 7

    .line 167
    iget-object v0, p0, Lcom/meizu/settings/development/FlymeDevelopmentSettings;->mRootPreferenceScreen:Landroidx/preference/PreferenceScreen;

    invoke-virtual {v0, p1}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    if-nez p1, :cond_9

    return-void

    .line 172
    :cond_9
    iget-object v0, p0, Lcom/meizu/settings/development/FlymeDevelopmentSettings;->mRootPreferenceScreen:Landroidx/preference/PreferenceScreen;

    invoke-virtual {v0, p1}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    .line 174
    sget-object v0, Lcom/meizu/settings/development/FlymeDevelopmentSettings;->CATEGORY_KEYS:[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_12
    if-ge v2, v1, :cond_26

    aget-object v3, v0, v2

    .line 175
    iget-object v4, p0, Lcom/meizu/settings/development/FlymeDevelopmentSettings;->mRootPreferenceScreen:Landroidx/preference/PreferenceScreen;

    invoke-virtual {v4, v3}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v3

    check-cast v3, Landroidx/preference/PreferenceCategory;

    if-eqz v3, :cond_23

    .line 177
    invoke-virtual {v3, p1}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    :cond_23
    add-int/lit8 v2, v2, 0x1

    goto :goto_12

    :cond_26
    return-void
.end method

.method private showCopyFingerprintDataDialog()V
    .registers 8

    .line 236
    iget-object v0, p0, Lcom/meizu/settings/development/FlymeDevelopmentSettings;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    const/4 v2, -0x1

    const/4 v3, 0x0

    const v4, 0x7f120586

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lcom/meizu/settings/utils/MzUtils;->showLoadingDialog(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;IZLandroid/content/DialogInterface$OnCancelListener;)Lcom/meizu/common/app/LoadingDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/settings/development/FlymeDevelopmentSettings;->mCopyFingerprintDataDialog:Lcom/meizu/common/app/LoadingDialog;

    return-void
.end method

.method private showCopyFingerprintDataToast(I)V
    .registers 4

    .line 295
    iget-object v0, p0, Lcom/meizu/settings/development/FlymeDevelopmentSettings;->mDevelopmentSettingsFragment:Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Lcom/meizu/settings/development/FlymeDevelopmentSettings$2;

    invoke-direct {v1, p0, p1}, Lcom/meizu/settings/development/FlymeDevelopmentSettings$2;-><init>(Lcom/meizu/settings/development/FlymeDevelopmentSettings;I)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private updateDcPreference()V
    .registers 5

    .line 355
    iget-object v0, p0, Lcom/meizu/settings/development/FlymeDevelopmentSettings;->mDCLightPref:Landroidx/preference/SwitchPreference;

    if-eqz v0, :cond_41

    .line 356
    iget-object v0, p0, Lcom/meizu/settings/development/FlymeDevelopmentSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0}, Lcom/meizu/settings/display/BluelightUtils;->isBluelightReductionEnabled(Landroid/content/ContentResolver;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_20

    .line 357
    iget-object v0, p0, Lcom/meizu/settings/development/FlymeDevelopmentSettings;->mDCLightPref:Landroidx/preference/SwitchPreference;

    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 358
    iget-object v0, p0, Lcom/meizu/settings/development/FlymeDevelopmentSettings;->mDCLightPref:Landroidx/preference/SwitchPreference;

    const v3, 0x7f1206f1

    invoke-virtual {v0, v3}, Landroidx/preference/Preference;->setSummary(I)V

    goto :goto_2d

    .line 360
    :cond_20
    iget-object v0, p0, Lcom/meizu/settings/development/FlymeDevelopmentSettings;->mDCLightPref:Landroidx/preference/SwitchPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 361
    iget-object v0, p0, Lcom/meizu/settings/development/FlymeDevelopmentSettings;->mDCLightPref:Landroidx/preference/SwitchPreference;

    const v3, 0x7f1206f2

    invoke-virtual {v0, v3}, Landroidx/preference/Preference;->setSummary(I)V

    :goto_2d
    const-string/jumbo v0, "persist.sys.enable.dc"

    .line 363
    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 364
    iget-object p0, p0, Lcom/meizu/settings/development/FlymeDevelopmentSettings;->mDCLightPref:Landroidx/preference/SwitchPreference;

    invoke-virtual {p0, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    goto :goto_41

    .line 366
    :cond_3c
    iget-object p0, p0, Lcom/meizu/settings/development/FlymeDevelopmentSettings;->mDCLightPref:Landroidx/preference/SwitchPreference;

    invoke-virtual {p0, v2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    :cond_41
    :goto_41
    return-void
.end method


# virtual methods
.method public onCreate()V
    .registers 4

    .line 105
    invoke-direct {p0}, Lcom/meizu/settings/development/FlymeDevelopmentSettings;->initPreference()V

    .line 106
    invoke-direct {p0}, Lcom/meizu/settings/development/FlymeDevelopmentSettings;->hidePreference()V

    .line 107
    invoke-direct {p0}, Lcom/meizu/settings/development/FlymeDevelopmentSettings;->updateDcPreference()V

    .line 109
    iget-object v0, p0, Lcom/meizu/settings/development/FlymeDevelopmentSettings;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v0

    iget-object p0, p0, Lcom/meizu/settings/development/FlymeDevelopmentSettings;->mCloseDeveloperOptionReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "close_developer_option"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 110
    invoke-virtual {v0, p0, v1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    return-void
.end method

.method public onDestroy()V
    .registers 2

    .line 115
    iget-object v0, p0, Lcom/meizu/settings/development/FlymeDevelopmentSettings;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v0

    iget-object p0, p0, Lcom/meizu/settings/development/FlymeDevelopmentSettings;->mCloseDeveloperOptionReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, p0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public onPause()V
    .registers 2

    .line 318
    iget-object v0, p0, Lcom/meizu/settings/development/FlymeDevelopmentSettings;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 319
    iget-object p0, p0, Lcom/meizu/settings/development/FlymeDevelopmentSettings;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public onPreferenceTreeClick(Landroidx/preference/Preference;)Z
    .registers 6

    .line 183
    iget-object v0, p0, Lcom/meizu/settings/development/FlymeDevelopmentSettings;->mPerfUI:Landroidx/preference/Preference;

    const-string v1, "MzDevelopmentSettings"

    const/4 v2, 0x1

    if-ne p1, v0, :cond_35

    .line 185
    :try_start_7
    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.intent.action.MAIN"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v0, "com.meizu.perfui"

    const-string v3, "com.meizu.perfui.settings.SettingsActivity"

    .line 186
    invoke-virtual {p1, v0, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 187
    iget-object p0, p0, Lcom/meizu/settings/development/FlymeDevelopmentSettings;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_1a} :catch_1b

    goto :goto_34

    :catch_1b
    move-exception p0

    .line 189
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Start activity fail:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_34
    return v2

    .line 192
    :cond_35
    iget-object v0, p0, Lcom/meizu/settings/development/FlymeDevelopmentSettings;->mTouchEventSwitch:Landroidx/preference/SwitchPreference;

    const/4 v3, 0x0

    if-ne p1, v0, :cond_86

    .line 193
    iget-object p1, p0, Lcom/meizu/settings/development/FlymeDevelopmentSettings;->mContentResolver:Landroid/content/ContentResolver;

    .line 194
    invoke-virtual {v0}, Landroidx/preference/TwoStatePreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_43

    move v3, v2

    :cond_43
    const-string/jumbo v0, "touch_event"

    .line 193
    invoke-static {p1, v0, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 195
    iget-object p0, p0, Lcom/meizu/settings/development/FlymeDevelopmentSettings;->mTouchEventSwitch:Landroidx/preference/SwitchPreference;

    invoke-virtual {p0}, Landroidx/preference/TwoStatePreference;->isChecked()Z

    move-result p0

    const-string p1, "false"

    const-string/jumbo v0, "sys.inputlog.enabled"

    if-eqz p0, :cond_5d

    const-string/jumbo p0, "true"

    .line 196
    invoke-static {v0, p0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_60

    .line 198
    :cond_5d
    invoke-static {v0, p1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    :goto_60
    const-string/jumbo p0, "sys.input.TouchFilterEnable"

    .line 200
    invoke-static {p0, p1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    :try_start_66
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object p0

    const-string p1, "dumpsys input"

    invoke-virtual {p0, p1}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;
    :try_end_6f
    .catch Ljava/io/IOException; {:try_start_66 .. :try_end_6f} :catch_70

    goto :goto_85

    :catch_70
    move-exception p0

    .line 205
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "dumpsys "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_85
    return v2

    .line 209
    :cond_86
    iget-object v0, p0, Lcom/meizu/settings/development/FlymeDevelopmentSettings;->mEnablemBackDiagnosePref:Landroidx/preference/SwitchPreference;

    if-ne p1, v0, :cond_9b

    .line 211
    invoke-virtual {v0}, Landroidx/preference/TwoStatePreference;->isChecked()Z

    move-result p0

    if-eqz p0, :cond_91

    move v3, v2

    :cond_91
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    const-string p1, "debug.fp.test"

    .line 210
    invoke-static {p1, p0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    .line 213
    :cond_9b
    iget-object v0, p0, Lcom/meizu/settings/development/FlymeDevelopmentSettings;->mEnableDevelopmentSettings:Landroidx/preference/SwitchPreference;

    if-ne p1, v0, :cond_c2

    .line 214
    iget-object p1, p0, Lcom/meizu/settings/development/FlymeDevelopmentSettings;->mDevelopmentSettingsFragment:Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;

    invoke-virtual {p1}, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;->getSwitchbar()Lcom/android/settings/widget/SwitchBar;

    move-result-object p1

    iget-object v0, p0, Lcom/meizu/settings/development/FlymeDevelopmentSettings;->mEnableDevelopmentSettings:Landroidx/preference/SwitchPreference;

    invoke-virtual {v0}, Landroidx/preference/TwoStatePreference;->isChecked()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    .line 215
    iget-object p1, p0, Lcom/meizu/settings/development/FlymeDevelopmentSettings;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/settings/overlay/FeatureFactory;->getFlymeSearchFeatureProvider()Lcom/meizu/settings/search/SearchFeatureProvider;

    move-result-object p1

    iget-object p0, p0, Lcom/meizu/settings/development/FlymeDevelopmentSettings;->mContext:Landroid/content/Context;

    .line 216
    invoke-interface {p1, p0}, Lcom/meizu/settings/search/SearchFeatureProvider;->getIndexingManager(Landroid/content/Context;)Lcom/meizu/settings/search/DatabaseIndexingManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/meizu/settings/search/DatabaseIndexingManager;->rebuildDatabase()V

    return v2

    .line 218
    :cond_c2
    invoke-virtual {p1}, Landroidx/preference/Preference;->hasKey()Z

    move-result v0

    if-eqz v0, :cond_db

    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "copy_gf_data"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_db

    .line 219
    invoke-direct {p0}, Lcom/meizu/settings/development/FlymeDevelopmentSettings;->showCopyFingerprintDataDialog()V

    .line 220
    invoke-direct {p0}, Lcom/meizu/settings/development/FlymeDevelopmentSettings;->copyFingerprintDataToSdcard()V

    return v2

    .line 222
    :cond_db
    iget-object v0, p0, Lcom/meizu/settings/development/FlymeDevelopmentSettings;->mDCLightPref:Landroidx/preference/SwitchPreference;

    if-ne p1, v0, :cond_f1

    .line 223
    invoke-virtual {v0}, Landroidx/preference/TwoStatePreference;->isChecked()Z

    move-result p1

    iget-object p0, p0, Lcom/meizu/settings/development/FlymeDevelopmentSettings;->mDCLightPref:Landroidx/preference/SwitchPreference;

    invoke-virtual {p0}, Landroidx/preference/TwoStatePreference;->isChecked()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/meizu/settings/display/BluelightUtils;->setDcLightEnable(ZLjava/lang/String;)V

    return v2

    .line 225
    :cond_f1
    iget-object v0, p0, Lcom/meizu/settings/development/FlymeDevelopmentSettings;->mRefreshRateForceNintyHzPref:Landroidx/preference/SwitchPreference;

    if-ne p1, v0, :cond_104

    .line 226
    invoke-virtual {v0}, Landroidx/preference/TwoStatePreference;->isChecked()Z

    move-result p1

    .line 227
    iget-object p0, p0, Lcom/meizu/settings/development/FlymeDevelopmentSettings;->mContentResolver:Landroid/content/ContentResolver;

    if-eqz p1, :cond_fe

    const/4 v2, 0x2

    :cond_fe
    const-string/jumbo p1, "screen_refresh_rate"

    invoke-static {p0, p1, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_104
    return v3
.end method

.method public onResume()V
    .registers 4

    .line 309
    iget-object v0, p0, Lcom/meizu/settings/development/FlymeDevelopmentSettings;->mEnableDevelopmentSettings:Landroidx/preference/SwitchPreference;

    iget-object v1, p0, Lcom/meizu/settings/development/FlymeDevelopmentSettings;->mDevelopmentSettingsFragment:Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;

    invoke-virtual {v1}, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;->getSwitchbar()Lcom/android/settings/widget/SwitchBar;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settings/widget/SwitchBar;->isChecked()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 310
    invoke-direct {p0}, Lcom/meizu/settings/development/FlymeDevelopmentSettings;->updateDcPreference()V

    .line 311
    iget-object v0, p0, Lcom/meizu/settings/development/FlymeDevelopmentSettings;->mContext:Landroid/content/Context;

    const-string v1, "data_file"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/settings/development/FlymeDevelopmentSettings;->mSharedPreferences:Landroid/content/SharedPreferences;

    .line 312
    iget-object v0, p0, Lcom/meizu/settings/development/FlymeDevelopmentSettings;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/settings/development/FlymeDevelopmentSettings;->editor:Landroid/content/SharedPreferences$Editor;

    .line 313
    iget-object v0, p0, Lcom/meizu/settings/development/FlymeDevelopmentSettings;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "development_fragment_on_screen"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 314
    iget-object p0, p0, Lcom/meizu/settings/development/FlymeDevelopmentSettings;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public onSwitchChanged(Z)V
    .registers 2

    .line 322
    iget-object p0, p0, Lcom/meizu/settings/development/FlymeDevelopmentSettings;->mEnableDevelopmentSettings:Landroidx/preference/SwitchPreference;

    invoke-virtual {p0, p1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    return-void
.end method
