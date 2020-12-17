.class public Lcom/meizu/settings/accessibility/FlymeAccessibilitySettings;
.super Lcom/meizu/settings/SettingsPreferenceFragment;
.source "FlymeAccessibilitySettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/meizu/settings/search/Indexable;


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/meizu/settings/search/Indexable$SearchIndexProvider;

.field private static gmsIntent:Landroid/content/Intent;

.field private static final sIgonoreInstalledServices:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private isBatteryPluggedWireless:Z

.field private mAudioManager:Landroid/media/AudioManager;

.field private mBatteryInfoReceiver:Landroid/content/BroadcastReceiver;

.field private mBatteryPower:I

.field private mChargeDialog:Landroid/app/Dialog;

.field private mChargeLevel:I

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mContext:Landroid/content/Context;

.field private mDataCollectionDialog:Landroid/content/DialogInterface;

.field private mDataCollectionSwitch:Lcom/meizu/common/preference/SwitchPreference;

.field private mDesktopAppRecommendSwitchPreference:Lcom/meizu/common/preference/SwitchPreference;

.field private mEarphoneDialog:Landroid/app/Dialog;

.field private mEarphoneFeedback:Lcom/meizu/common/preference/SwitchPreference;

.field private mEarphonePlugedListenerHelper:Lcom/meizu/settings/utils/EarphonePlugedListenerHelper;

.field private mEnableReverseCharge:Z

.field private mFastCharge:Lcom/meizu/common/preference/SwitchPreference;

.field private mFlymeInnovation:Lcom/meizu/settings/innovation/FlymeInnovation;

.field private mForceTouchArrays:[Ljava/lang/CharSequence;

.field private mForceTouchPreference:Landroid/preference/Preference;

.field private mGameModePreference:Landroid/preference/Preference;

.field private mGmsGoogle:Landroid/preference/Preference;

.field private mGoogleBasicService:Lcom/meizu/common/preference/SwitchPreference;

.field private mHallSwitch:Lcom/meizu/common/preference/SwitchPreference;

.field private mHomeLightSwitchPreference:Lcom/meizu/common/preference/SwitchPreference;

.field private mIDeviceControlService:Lmeizu/os/IDeviceControlService;

.field private mNeedOverridePending:Z

.field private mPalmRejection:Lcom/meizu/common/preference/SwitchPreference;

.field private mResources:Landroid/content/res/Resources;

.field private mReversePowerProtection:Landroid/preference/ListPreference;

.field private mReversePowerProtectionSummary:Ljava/lang/CharSequence;

.field private mRootPreferenceScreen:Landroid/preference/PreferenceScreen;

.field private mSearchPreference:Landroid/preference/Preference;

.field private mUsageStatsProxy:Lcom/meizu/settings/datareport/UsageStatsProxy;

.field private mWirelessReverseCharge:Lcom/meizu/common/preference/SwitchPreference;

.field private mWirelessReverseChargeValues:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .line 132
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/meizu/settings/accessibility/FlymeAccessibilitySettings;->sIgonoreInstalledServices:Ljava/util/Set;

    .line 153
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.meizu.luckymoney"

    const-string v2, "com.meizu.luckymoney.LuckyMoneyAccessibilityService"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    sget-object v1, Lcom/meizu/settings/accessibility/FlymeAccessibilitySettings;->sIgonoreInstalledServices:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 157
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/meizu/settings/accessibility/FlymeAccessibilitySettings;->gmsIntent:Landroid/content/Intent;

    .line 158
    sget-object v0, Lcom/meizu/settings/accessibility/FlymeAccessibilitySettings;->gmsIntent:Landroid/content/Intent;

    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.google.android.gms"

    const-string v3, "com.google.android.gms.app.settings.BasicGoogleSettingsActivity"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 592
    new-instance v0, Lcom/meizu/settings/accessibility/FlymeAccessibilitySettings$4;

    invoke-direct {v0}, Lcom/meizu/settings/accessibility/FlymeAccessibilitySettings$4;-><init>()V

    sput-object v0, Lcom/meizu/settings/accessibility/FlymeAccessibilitySettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/meizu/settings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .line 62
    invoke-direct {p0}, Lcom/meizu/settings/SettingsPreferenceFragment;-><init>()V

    const/4 v0, 0x0

    .line 134
    iput-boolean v0, p0, Lcom/meizu/settings/accessibility/FlymeAccessibilitySettings;->mNeedOverridePending:Z

    const/4 v1, 0x1

    .line 144
    iput-boolean v1, p0, Lcom/meizu/settings/accessibility/FlymeAccessibilitySettings;->mEnableReverseCharge:Z

    const/16 v1, 0x64

    .line 148
    iput v1, p0, Lcom/meizu/settings/accessibility/FlymeAccessibilitySettings;->mBatteryPower:I

    .line 149
    iput-boolean v0, p0, Lcom/meizu/settings/accessibility/FlymeAccessibilitySettings;->isBatteryPluggedWireless:Z

    .line 689
    new-instance v0, Lcom/meizu/settings/accessibility/FlymeAccessibilitySettings$5;

    invoke-direct {v0, p0}, Lcom/meizu/settings/accessibility/FlymeAccessibilitySettings$5;-><init>(Lcom/meizu/settings/accessibility/FlymeAccessibilitySettings;)V

    iput-object v0, p0, Lcom/meizu/settings/accessibility/FlymeAccessibilitySettings;->mBatteryInfoReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/meizu/settings/accessibility/FlymeAccessibilitySettings;)Lcom/meizu/common/preference/SwitchPreference;
    .registers 1

    .line 62
    iget-object p0, p0, Lcom/meizu/settings/accessibility/FlymeAccessibilitySettings;->mEarphoneFeedback:Lcom/meizu/common/preference/SwitchPreference;

    return-object p0
.end method

.method static synthetic access$100(Lcom/meizu/settings/accessibility/FlymeAccessibilitySettings;)Landroid/content/ContentResolver;
    .registers 1

    .line 62
    iget-object p0, p0, Lcom/meizu/settings/accessibility/FlymeAccessibilitySettings;->mContentResolver:Landroid/content/ContentResolver;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/meizu/settings/accessibility/FlymeAccessibilitySettings;)Lmeizu/os/IDeviceControlService;
    .registers 1

    .line 62
    iget-object p0, p0, Lcom/meizu/settings/accessibility/FlymeAccessibilitySettings;->mIDeviceControlService:Lmeizu/os/IDeviceControlService;

    return-object p0
.end method

.method static synthetic access$200(Lcom/meizu/settings/accessibility/FlymeAccessibilitySettings;)Lcom/meizu/common/preference/SwitchPreference;
    .registers 1

    .line 62
    iget-object p0, p0, Lcom/meizu/settings/accessibility/FlymeAccessibilitySettings;->mFastCharge:Lcom/meizu/common/preference/SwitchPreference;

    return-object p0
.end method

.method static synthetic access$300(Lcom/meizu/settings/accessibility/FlymeAccessibilitySettings;)Landroid/content/DialogInterface;
    .registers 1

    .line 62
    iget-object p0, p0, Lcom/meizu/settings/accessibility/FlymeAccessibilitySettings;->mDataCollectionDialog:Landroid/content/DialogInterface;

    return-object p0
.end method

.method static synthetic access$400(Lcom/meizu/settings/accessibility/FlymeAccessibilitySettings;)Lcom/meizu/common/preference/SwitchPreference;
    .registers 1

    .line 62
    iget-object p0, p0, Lcom/meizu/settings/accessibility/FlymeAccessibilitySettings;->mDataCollectionSwitch:Lcom/meizu/common/preference/SwitchPreference;

    return-object p0
.end method

.method static synthetic access$500()Landroid/content/Intent;
    .registers 1

    .line 62
    sget-object v0, Lcom/meizu/settings/accessibility/FlymeAccessibilitySettings;->gmsIntent:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic access$600(Lcom/meizu/settings/accessibility/FlymeAccessibilitySettings;Landroid/content/Intent;)V
    .registers 2

    .line 62
    invoke-direct {p0, p1}, Lcom/meizu/settings/accessibility/FlymeAccessibilitySettings;->initBatteryPower(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$702(Lcom/meizu/settings/accessibility/FlymeAccessibilitySettings;Z)Z
    .registers 2

    .line 62
    iput-boolean p1, p0, Lcom/meizu/settings/accessibility/FlymeAccessibilitySettings;->isBatteryPluggedWireless:Z

    return p1
.end method

.method static synthetic access$800(Lcom/meizu/settings/accessibility/FlymeAccessibilitySettings;)Z
    .registers 1

    .line 62
    invoke-direct {p0}, Lcom/meizu/settings/accessibility/FlymeAccessibilitySettings;->isWirelessReverseChargeEnable()Z

    move-result p0

    return p0
.end method

.method static synthetic access$900(Lcom/meizu/settings/accessibility/FlymeAccessibilitySettings;)Lcom/meizu/common/preference/SwitchPreference;
    .registers 1

    .line 62
    iget-object p0, p0, Lcom/meizu/settings/accessibility/FlymeAccessibilitySettings;->mWirelessReverseCharge:Lcom/meizu/common/preference/SwitchPreference;

    return-object p0
.end method

.method private checkIfNeedRemovePreference()V
    .registers 6

    .line 343
    iget-object v0, p0, Lcom/meizu/settings/accessibility/FlymeAccessibilitySettings;->mHomeLightSwitchPreference:Lcom/meizu/common/preference/SwitchPreference;

    if-eqz v0, :cond_9

    .line 344
    iget-object v1, p0, Lcom/meizu/settings/accessibility/FlymeAccessibilitySettings;->mRootPreferenceScreen:Landroid/preference/PreferenceScreen;

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 347
    :cond_9
    invoke-static {}, Landroid/os/BuildExt;->isShopDemoVersion()Z

    move-result v0

    .line 348
    invoke-static {}, Landroid/os/BuildExt;->isProductInternational()Z

    move-result v1

    .line 349
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/meizu/settings/utils/MzUtils;->isGuestUser(Landroid/content/Context;)Z

    move-result v2

    .line 351
    iget-object v3, p0, Lcom/meizu/settings/accessibility/FlymeAccessibilitySettings;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/settingslib/development/DevelopmentSettingsEnabler;->isDevelopmentSettingsEnabled(Landroid/content/Context;)Z

    move-result v3

    if-nez v2, :cond_23

    if-nez v3, :cond_36

    .line 354
    :cond_23
    iget-object v3, p0, Lcom/meizu/settings/accessibility/FlymeAccessibilitySettings;->mRootPreferenceScreen:Landroid/preference/PreferenceScreen;

    const-string v4, "development_settings"

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    if-eqz v3, :cond_36

    .line 355
    iget-object v3, p0, Lcom/meizu/settings/accessibility/FlymeAccessibilitySettings;->mRootPreferenceScreen:Landroid/preference/PreferenceScreen;

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 365
    :cond_36
    iget-object v3, p0, Lcom/meizu/settings/accessibility/FlymeAccessibilitySettings;->mContext:Landroid/content/Context;

    const-string v4, "com.meizu.net.search"

    invoke-static {v3, v4}, Lcom/meizu/settings/utils/MzUtils;->isPackageExist(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_49

    iget-object v3, p0, Lcom/meizu/settings/accessibility/FlymeAccessibilitySettings;->mSearchPreference:Landroid/preference/Preference;

    if-eqz v3, :cond_49

    .line 367
    iget-object v4, p0, Lcom/meizu/settings/accessibility/FlymeAccessibilitySettings;->mRootPreferenceScreen:Landroid/preference/PreferenceScreen;

    invoke-virtual {v4, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 370
    :cond_49
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const-string v4, "android.hardware.touchscreen.forcetouch"

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_62

    iget-object v3, p0, Lcom/meizu/settings/accessibility/FlymeAccessibilitySettings;->mForceTouchPreference:Landroid/preference/Preference;

    if-eqz v3, :cond_62

    .line 372
    iget-object v4, p0, Lcom/meizu/settings/accessibility/FlymeAccessibilitySettings;->mRootPreferenceScreen:Landroid/preference/PreferenceScreen;

    invoke-virtual {v4, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :cond_62
    const-string v3, "desktop_app_recommend"

    if-nez v2, :cond_74

    if-nez v1, :cond_74

    if-nez v0, :cond_74

    .line 375
    iget-object v0, p0, Lcom/meizu/settings/accessibility/FlymeAccessibilitySettings;->mContentResolver:Landroid/content/ContentResolver;

    const/4 v2, 0x1

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_83

    .line 377
    :cond_74
    invoke-virtual {p0, v3}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_83

    .line 378
    iget-object v0, p0, Lcom/meizu/settings/accessibility/FlymeAccessibilitySettings;->mRootPreferenceScreen:Landroid/preference/PreferenceScreen;

    invoke-virtual {p0, v3}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :cond_83
    if-eqz v1, :cond_96

    const-string v0, "drive_mode"

    .line 382
    invoke-virtual {p0, v0}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    if-eqz v1, :cond_96

    .line 383
    iget-object v1, p0, Lcom/meizu/settings/accessibility/FlymeAccessibilitySettings;->mRootPreferenceScreen:Landroid/preference/PreferenceScreen;

    invoke-virtual {p0, v0}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 387
    :cond_96
    iget-object v0, p0, Lcom/meizu/settings/accessibility/FlymeAccessibilitySettings;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/meizu/settings/accessibility/FlymeAccessibilitySettings;->gmsIntent:Landroid/content/Intent;

    invoke-static {v0, v1}, Lcom/meizu/settings/utils/MzUtils;->isIntentResolvable(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v0

    if-nez v0, :cond_a7

    .line 388
    iget-object v0, p0, Lcom/meizu/settings/accessibility/FlymeAccessibilitySettings;->mRootPreferenceScreen:Landroid/preference/PreferenceScreen;

    iget-object v1, p0, Lcom/meizu/settings/accessibility/FlymeAccessibilitySettings;->mGmsGoogle:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 391
    :cond_a7
    iget-object v0, p0, Lcom/meizu/settings/accessibility/FlymeAccessibilitySettings;->mContext:Landroid/content/Context;

    const-string v1, "com.google.android.gms"

    invoke-static {v0, v1}, Lcom/meizu/settings/utils/MzUtils;->isPackageExist(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_bb

    .line 392
    iget-object v0, p0, Lcom/meizu/settings/accessibility/FlymeAccessibilitySettings;->mGoogleBasicService:Lcom/meizu/common/preference/SwitchPreference;

    invoke-virtual {v0}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/meizu/settings/accessibility/FlymeAccessibilitySettings;->updateGmsGooglePreferenceEnable(Z)V

    goto :goto_c2

    .line 394
    :cond_bb
    iget-object v0, p0, Lcom/meizu/settings/accessibility/FlymeAccessibilitySettings;->mRootPreferenceScreen:Landroid/preference/PreferenceScreen;

    iget-object p0, p0, Lcom/meizu/settings/accessibility/FlymeAccessibilitySettings;->mGoogleBasicService:Lcom/meizu/common/preference/SwitchPreference;

    invoke-virtual {v0, p0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :goto_c2
    return-void
.end method

.method private createDialogOnCancelListener()Landroid/content/DialogInterface$OnCancelListener;
    .registers 2

    .line 546
    new-instance v0, Lcom/meizu/settings/accessibility/FlymeAccessibilitySettings$3;

    invoke-direct {v0, p0}, Lcom/meizu/settings/accessibility/FlymeAccessibilitySettings$3;-><init>(Lcom/meizu/settings/accessibility/FlymeAccessibilitySettings;)V

    return-object v0
.end method

.method private initBatteryPower(Landroid/content/Intent;)V
    .registers 3

    .line 751
    :try_start_0
    invoke-static {}, Ljava/text/NumberFormat;->getInstance()Ljava/text/NumberFormat;

    move-result-object v0

    invoke-static {p1}, Lcom/android/settings/Utils;->getBatteryPercentage(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/text/NumberFormat;->parse(Ljava/lang/String;)Ljava/lang/Number;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    iput p1, p0, Lcom/meizu/settings/accessibility/FlymeAccessibilitySettings;->mBatteryPower:I
    :try_end_12
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_12} :catch_13

    goto :goto_17

    :catch_13
    move-exception p0

    .line 753
    invoke-virtual {p0}, Ljava/text/ParseException;->printStackTrace()V

    :goto_17
    return-void
.end method

.method private initData()V
    .registers 3

    .line 177
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/settings/accessibility/FlymeAccessibilitySettings;->mContext:Landroid/content/Context;

    .line 178
    iget-object v0, p0, Lcom/meizu/settings/accessibility/FlymeAccessibilitySettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/settings/accessibility/FlymeAccessibilitySettings;->mContentResolver:Landroid/content/ContentResolver;

    .line 179
    iget-object v0, p0, Lcom/meizu/settings/accessibility/FlymeAccessibilitySettings;->mContext:Landroid/content/Context;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/meizu/settings/accessibility/FlymeAccessibilitySettings;->mAudioManager:Landroid/media/AudioManager;

    .line 180
    iget-object v0, p0, Lcom/meizu/settings/accessibility/FlymeAccessibilitySettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/settings/accessibility/FlymeAccessibilitySettings;->mResources:Landroid/content/res/Resources;

    .line 181
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/settings/accessibility/FlymeAccessibilitySettings;->mRootPreferenceScreen:Landroid/preference/PreferenceScreen;

    .line 182
    iget-object v0, p0, Lcom/meizu/settings/accessibility/FlymeAccessibilitySettings;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/meizu/settings/datareport/UsageStatsProxy;->getInstance(Landroid/content/Context;)Lcom/meizu/settings/datareport/UsageStatsProxy;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/settings/accessibility/FlymeAccessibilitySettings;->mUsageStatsProxy:Lcom/meizu/settings/datareport/UsageStatsProxy;

    .line 184
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f03009a

    .line 185
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/settings/accessibility/FlymeAccessibilitySettings;->mForceTouchArrays:[Ljava/lang/CharSequence;

    .line 187
    iget-object v0, p0, Lcom/meizu/settings/accessibility/FlymeAccessibilitySettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0300f0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/settings/accessibility/FlymeAccessibilitySettings;->mWirelessReverseChargeValues:[Ljava/lang/String;

    const-string v0, "device_control"

    .line 188
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lmeizu/os/IDeviceControlService$Stub;->asInterface(Landroid/os/IBinder;)Lmeizu/os/IDeviceControlService;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/settings/accessibility/FlymeAccessibilitySettings;->mIDeviceControlService:Lmeizu/os/IDeviceControlService;

    .line 190
    :try_start_5c
    iget-object v0, p0, Lcom/meizu/settings/accessibility/FlymeAccessibilitySettings;->mIDeviceControlService:Lmeizu/os/IDeviceControlService;

    const-string v1, "/sys/class/meizu/wireless/reverse_chg_enable"

    invoke-interface {v0, v1}, Lmeizu/os/IDeviceControlService;->readNode(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_68

    goto :goto_69

    :cond_68
    const/4 v1, 0x0

    :goto_69
    iput-boolean v1, p0, Lcom/meizu/settings/accessibility/FlymeAccessibilitySettings;->mEnableReverseCharge:Z
    :try_end_6b
    .catch Landroid/os/RemoteException; {:try_start_5c .. :try_end_6b} :catch_6c

    goto :goto_8a

    :catch_6c
    move-exception p0

    .line 192
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 193
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "exception is: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "AccessibilitySettings"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_8a
    return-void
.end method

.method private initEarphonePlugedListenerHelper()V
    .registers 3

    .line 300
    new-instance v0, Lcom/meizu/settings/utils/EarphonePlugedListenerHelper;

    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/meizu/settings/utils/EarphonePlugedListenerHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/meizu/settings/accessibility/FlymeAccessibilitySettings;->mEarphonePlugedListenerHelper:Lcom/meizu/settings/utils/EarphonePlugedListenerHelper;

    .line 301
    iget-object v0, p0, Lcom/meizu/settings/accessibility/FlymeAccessibilitySettings;->mEarphonePlugedListenerHelper:Lcom/meizu/settings/utils/EarphonePlugedListenerHelper;

    new-instance v1, Lcom/meizu/settings/accessibility/FlymeAccessibilitySettings$1;

    invoke-direct {v1, p0}, Lcom/meizu/settings/accessibility/FlymeAccessibilitySettings$1;-><init>(Lcom/meizu/settings/accessibility/FlymeAccessibilitySettings;)V

    invoke-virtual {v0, v1}, Lcom/meizu/settings/utils/EarphonePlugedListenerHelper;->setOnEarphoneStateChangedListener(Lcom/meizu/settings/utils/EarphonePlugedListenerHelper$OnEarphoneStateChangedListener;)V

    return-void
.end method

.method private initPreference()V
    .registers 6

    const-string v0, "game_mode"

    .line 198
    invoke-virtual {p0, v0}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/settings/accessibility/FlymeAccessibilitySettings;->mGameModePreference:Landroid/preference/Preference;

    .line 200
    iget-object v0, p0, Lcom/meizu/settings/accessibility/FlymeAccessibilitySettings;->mRootPreferenceScreen:Landroid/preference/PreferenceScreen;

    const-string v1, "light_feedback"

    .line 201
    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/meizu/common/preference/SwitchPreference;

    iput-object v0, p0, Lcom/meizu/settings/accessibility/FlymeAccessibilitySettings;->mHomeLightSwitchPreference:Lcom/meizu/common/preference/SwitchPreference;

    .line 202
    iget-object v0, p0, Lcom/meizu/settings/accessibility/FlymeAccessibilitySettings;->mHomeLightSwitchPreference:Lcom/meizu/common/preference/SwitchPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/TwoStatePreference;->setPersistent(Z)V

    .line 206
    iget-object v0, p0, Lcom/meizu/settings/accessibility/FlymeAccessibilitySettings;->mRootPreferenceScreen:Landroid/preference/PreferenceScreen;

    const-string v2, "data_collection"

    .line 207
    invoke-virtual {v0, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/meizu/common/preference/SwitchPreference;

    iput-object v0, p0, Lcom/meizu/settings/accessibility/FlymeAccessibilitySettings;->mDataCollectionSwitch:Lcom/meizu/common/preference/SwitchPreference;

    .line 208
    iget-object v0, p0, Lcom/meizu/settings/accessibility/FlymeAccessibilitySettings;->mDataCollectionSwitch:Lcom/meizu/common/preference/SwitchPreference;

    iget-object v2, p0, Lcom/meizu/settings/accessibility/FlymeAccessibilitySettings;->mContentResolver:Landroid/content/ContentResolver;

    const-string v3, "meizu_data_collection"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_35

    move v2, v3

    goto :goto_36

    :cond_35
    move v2, v1

    :goto_36
    invoke-virtual {v0, v2}, Lcom/meizu/common/preference/SwitchPreference;->setChecked(Z)V

    .line 211
    iget-object v0, p0, Lcom/meizu/settings/accessibility/FlymeAccessibilitySettings;->mRootPreferenceScreen:Landroid/preference/PreferenceScreen;

    const-string/jumbo v2, "search_settings"

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/settings/accessibility/FlymeAccessibilitySettings;->mSearchPreference:Landroid/preference/Preference;

    const-string v0, "force_touch"

    .line 213
    invoke-virtual {p0, v0}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/settings/accessibility/FlymeAccessibilitySettings;->mForceTouchPreference:Landroid/preference/Preference;

    .line 216
    iget-object v0, p0, Lcom/meizu/settings/accessibility/FlymeAccessibilitySettings;->mRootPreferenceScreen:Landroid/preference/PreferenceScreen;

    const-string/jumbo v2, "palm_rejection"

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/meizu/common/preference/SwitchPreference;

    iput-object v0, p0, Lcom/meizu/settings/accessibility/FlymeAccessibilitySettings;->mPalmRejection:Lcom/meizu/common/preference/SwitchPreference;

    .line 220
    iget-object v0, p0, Lcom/meizu/settings/accessibility/FlymeAccessibilitySettings;->mPalmRejection:Lcom/meizu/common/preference/SwitchPreference;

    iget-object v2, p0, Lcom/meizu/settings/accessibility/FlymeAccessibilitySettings;->mContentResolver:Landroid/content/ContentResolver;

    const-string v4, "keyguard_palm_rejection"

    invoke-static {v2, v4, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v3, :cond_67

    move v2, v3

    goto :goto_68

    :cond_67
    move v2, v1

    :goto_68
    invoke-virtual {v0, v2}, Lcom/meizu/common/preference/SwitchPreference;->setChecked(Z)V

    .line 224
    iget-object v0, p0, Lcom/meizu/settings/accessibility/FlymeAccessibilitySettings;->mRootPreferenceScreen:Landroid/preference/PreferenceScreen;

    const-string v2, "earphone_feedback"

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/meizu/common/preference/SwitchPreference;

    iput-object v0, p0, Lcom/meizu/settings/accessibility/FlymeAccessibilitySettings;->mEarphoneFeedback:Lcom/meizu/common/preference/SwitchPreference;

    .line 225
    iget-object v0, p0, Lcom/meizu/settings/accessibility/FlymeAccessibilitySettings;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/meizu/settings/utils/MzUtils;->isGuestUser(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_83

    .line 226
    invoke-virtual {p0, v2}, Lcom/meizu/settings/SettingsPreferenceFragment;->removePreference(Ljava/lang/String;)V

    goto :goto_a7

    .line 228
    :cond_83
    invoke-direct {p0}, Lcom/meizu/settings/accessibility/FlymeAccessibilitySettings;->initEarphonePlugedListenerHelper()V

    .line 229
    iget-object v0, p0, Lcom/meizu/settings/accessibility/FlymeAccessibilitySettings;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->isWiredHeadsetOn()Z

    move-result v0

    if-nez v0, :cond_97

    .line 230
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v4, p0, Lcom/meizu/settings/accessibility/FlymeAccessibilitySettings;->mEarphoneFeedback:Lcom/meizu/common/preference/SwitchPreference;

    invoke-virtual {v0, v4}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 232
    :cond_97
    iget-object v0, p0, Lcom/meizu/settings/accessibility/FlymeAccessibilitySettings;->mEarphoneFeedback:Lcom/meizu/common/preference/SwitchPreference;

    iget-object v4, p0, Lcom/meizu/settings/accessibility/FlymeAccessibilitySettings;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {v4, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v3, :cond_a3

    move v2, v3

    goto :goto_a4

    :cond_a3
    move v2, v1

    :goto_a4
    invoke-virtual {v0, v2}, Lcom/meizu/common/preference/SwitchPreference;->setChecked(Z)V

    .line 244
    :goto_a7
    iget-object v0, p0, Lcom/meizu/settings/accessibility/FlymeAccessibilitySettings;->mRootPreferenceScreen:Landroid/preference/PreferenceScreen;

    const-string v2, "fast_charge"

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/meizu/common/preference/SwitchPreference;

    iput-object v0, p0, Lcom/meizu/settings/accessibility/FlymeAccessibilitySettings;->mFastCharge:Lcom/meizu/common/preference/SwitchPreference;

    .line 246
    invoke-virtual {p0, v2}, Lcom/meizu/settings/SettingsPreferenceFragment;->removePreference(Ljava/lang/String;)V

    .line 251
    iget-object v0, p0, Lcom/meizu/settings/accessibility/FlymeAccessibilitySettings;->mRootPreferenceScreen:Landroid/preference/PreferenceScreen;

    const-string/jumbo v2, "use_cover"

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/meizu/common/preference/SwitchPreference;

    iput-object v0, p0, Lcom/meizu/settings/accessibility/FlymeAccessibilitySettings;->mHallSwitch:Lcom/meizu/common/preference/SwitchPreference;

    .line 252
    iget-object v0, p0, Lcom/meizu/settings/accessibility/FlymeAccessibilitySettings;->mHallSwitch:Lcom/meizu/common/preference/SwitchPreference;

    iget-object v2, p0, Lcom/meizu/settings/accessibility/FlymeAccessibilitySettings;->mContentResolver:Landroid/content/ContentResolver;

    const-string v4, "hall_switch"

    invoke-static {v2, v4, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v3, :cond_d1

    move v2, v3

    goto :goto_d2

    :cond_d1
    move v2, v1

    :goto_d2
    invoke-virtual {v0, v2}, Lcom/meizu/common/preference/SwitchPreference;->setChecked(Z)V

    .line 255
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v2, p0, Lcom/meizu/settings/accessibility/FlymeAccessibilitySettings;->mHallSwitch:Lcom/meizu/common/preference/SwitchPreference;

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 258
    iget-object v0, p0, Lcom/meizu/settings/accessibility/FlymeAccessibilitySettings;->mRootPreferenceScreen:Landroid/preference/PreferenceScreen;

    const-string v2, "desktop_app_recommend"

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/meizu/common/preference/SwitchPreference;

    iput-object v0, p0, Lcom/meizu/settings/accessibility/FlymeAccessibilitySettings;->mDesktopAppRecommendSwitchPreference:Lcom/meizu/common/preference/SwitchPreference;

    .line 260
    iget-object v0, p0, Lcom/meizu/settings/accessibility/FlymeAccessibilitySettings;->mDesktopAppRecommendSwitchPreference:Lcom/meizu/common/preference/SwitchPreference;

    if-eqz v0, :cond_fc

    .line 261
    iget-object v4, p0, Lcom/meizu/settings/accessibility/FlymeAccessibilitySettings;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {v4, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v3, :cond_f8

    move v2, v3

    goto :goto_f9

    :cond_f8
    move v2, v1

    :goto_f9
    invoke-virtual {v0, v2}, Lcom/meizu/common/preference/SwitchPreference;->setChecked(Z)V

    .line 265
    :cond_fc
    iget-object v0, p0, Lcom/meizu/settings/accessibility/FlymeAccessibilitySettings;->mRootPreferenceScreen:Landroid/preference/PreferenceScreen;

    const-string v2, "gms_google"

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/settings/accessibility/FlymeAccessibilitySettings;->mGmsGoogle:Landroid/preference/Preference;

    .line 266
    iget-object v0, p0, Lcom/meizu/settings/accessibility/FlymeAccessibilitySettings;->mRootPreferenceScreen:Landroid/preference/PreferenceScreen;

    const-string/jumbo v2, "wireless_reverse_charging"

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/meizu/common/preference/SwitchPreference;

    iput-object v0, p0, Lcom/meizu/settings/accessibility/FlymeAccessibilitySettings;->mWirelessReverseCharge:Lcom/meizu/common/preference/SwitchPreference;

    .line 267
    iget-object v0, p0, Lcom/meizu/settings/accessibility/FlymeAccessibilitySettings;->mWirelessReverseCharge:Lcom/meizu/common/preference/SwitchPreference;

    iget-boolean v2, p0, Lcom/meizu/settings/accessibility/FlymeAccessibilitySettings;->mEnableReverseCharge:Z

    invoke-virtual {v0, v2}, Lcom/meizu/common/preference/SwitchPreference;->setChecked(Z)V

    const-string/jumbo v0, "reverse_power_protection"

    .line 269
    invoke-virtual {p0, v0}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    iput-object v0, p0, Lcom/meizu/settings/accessibility/FlymeAccessibilitySettings;->mReversePowerProtection:Landroid/preference/ListPreference;

    .line 270
    iget-object v0, p0, Lcom/meizu/settings/accessibility/FlymeAccessibilitySettings;->mReversePowerProtection:Landroid/preference/ListPreference;

    invoke-virtual {v0, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 271
    iget-object v0, p0, Lcom/meizu/settings/accessibility/FlymeAccessibilitySettings;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v2, p0, Lcom/meizu/settings/accessibility/FlymeAccessibilitySettings;->mWirelessReverseChargeValues:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    const-string/jumbo v4, "reverse_charging_limiting_level"

    invoke-static {v0, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/meizu/settings/accessibility/FlymeAccessibilitySettings;->mChargeLevel:I

    .line 273
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v2, p0, Lcom/meizu/settings/accessibility/FlymeAccessibilitySettings;->mWirelessReverseCharge:Lcom/meizu/common/preference/SwitchPreference;

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 274
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v2, p0, Lcom/meizu/settings/accessibility/FlymeAccessibilitySettings;->mReversePowerProtection:Landroid/preference/ListPreference;

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 277
    iget-object v0, p0, Lcom/meizu/settings/accessibility/FlymeAccessibilitySettings;->mRootPreferenceScreen:Landroid/preference/PreferenceScreen;

    const-string v2, "cn_gms_core"

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/meizu/common/preference/SwitchPreference;

    iput-object v0, p0, Lcom/meizu/settings/accessibility/FlymeAccessibilitySettings;->mGoogleBasicService:Lcom/meizu/common/preference/SwitchPreference;

    .line 278
    iget-object v0, p0, Lcom/meizu/settings/accessibility/FlymeAccessibilitySettings;->mGoogleBasicService:Lcom/meizu/common/preference/SwitchPreference;

    iget-object p0, p0, Lcom/meizu/settings/accessibility/FlymeAccessibilitySettings;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {p0, v2, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-ne p0, v3, :cond_166

    move v1, v3

    :cond_166
    invoke-virtual {v0, v1}, Lcom/meizu/common/preference/SwitchPreference;->setChecked(Z)V

    return-void
.end method

.method private isWirelessReverseChargeEnable()Z
    .registers 4

    .line 757
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mBatteryPower is ----------"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/meizu/settings/accessibility/FlymeAccessibilitySettings;->mBatteryPower:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "; mChargeLevel is -------"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/meizu/settings/accessibility/FlymeAccessibilitySettings;->mChargeLevel:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AccessibilitySettings"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 758
    iget v0, p0, Lcom/meizu/settings/accessibility/FlymeAccessibilitySettings;->mBatteryPower:I

    iget v1, p0, Lcom/meizu/settings/accessibility/FlymeAccessibilitySettings;->mChargeLevel:I

    const/4 v2, 0x0

    if-lt v0, v1, :cond_38

    iget-boolean v0, p0, Lcom/meizu/settings/accessibility/FlymeAccessibilitySettings;->isBatteryPluggedWireless:Z

    if-eqz v0, :cond_2e

    goto :goto_38

    :cond_2e
    if-nez v0, :cond_37

    .line 768
    iget-object p0, p0, Lcom/meizu/settings/accessibility/FlymeAccessibilitySettings;->mWirelessReverseCharge:Lcom/meizu/common/preference/SwitchPreference;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/preference/TwoStatePreference;->setEnabled(Z)V

    return v0

    :cond_37
    return v2

    .line 759
    :cond_38
    :goto_38
    iget-object v0, p0, Lcom/meizu/settings/accessibility/FlymeAccessibilitySettings;->mWirelessReverseCharge:Lcom/meizu/common/preference/SwitchPreference;

    invoke-virtual {v0, v2}, Landroid/preference/TwoStatePreference;->setEnabled(Z)V

    .line 760
    iget-object v0, p0, Lcom/meizu/settings/accessibility/FlymeAccessibilitySettings;->mWirelessReverseCharge:Lcom/meizu/common/preference/SwitchPreference;

    invoke-virtual {v0, v2}, Lcom/meizu/common/preference/SwitchPreference;->setChecked(Z)V

    .line 762
    :try_start_42
    iget-object p0, p0, Lcom/meizu/settings/accessibility/FlymeAccessibilitySettings;->mIDeviceControlService:Lmeizu/os/IDeviceControlService;

    const-string v0, "/sys/class/meizu/wireless/reverse_chg_enable"

    const-string v1, "0"

    invoke-interface {p0, v0, v1}, Lmeizu/os/IDeviceControlService;->writeNode(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4b
    .catch Landroid/os/RemoteException; {:try_start_42 .. :try_end_4b} :catch_4c

    goto :goto_50

    :catch_4c
    move-exception p0

    .line 764
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_50
    return v2
.end method

.method private registerBatteryReceiver()V
    .registers 3

    .line 775
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.BATTERY_CHANGED"

    .line 776
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.BATTERY_REVERSE_CHANGED"

    .line 777
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 778
    iget-object v1, p0, Lcom/meizu/settings/accessibility/FlymeAccessibilitySettings;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/meizu/settings/accessibility/FlymeAccessibilitySettings;->mBatteryInfoReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private updateForceTouchPreference()V
    .registers 6

    .line 318
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "mz_force_touch_level_index"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 321
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "mz_force_touch_switch"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v2, :cond_2d

    if-eqz v0, :cond_2c

    if-eq v0, v4, :cond_2a

    if-eq v0, v3, :cond_28

    goto :goto_2d

    :cond_28
    move v1, v4

    goto :goto_2d

    :cond_2a
    move v1, v3

    goto :goto_2d

    :cond_2c
    const/4 v1, 0x3

    .line 339
    :cond_2d
    :goto_2d
    iget-object v0, p0, Lcom/meizu/settings/accessibility/FlymeAccessibilitySettings;->mForceTouchPreference:Landroid/preference/Preference;

    iget-object p0, p0, Lcom/meizu/settings/accessibility/FlymeAccessibilitySettings;->mForceTouchArrays:[Ljava/lang/CharSequence;

    aget-object p0, p0, v1

    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private updateGmsGooglePreferenceEnable(Z)V
    .registers 2

    if-eqz p1, :cond_a

    .line 783
    iget-object p1, p0, Lcom/meizu/settings/accessibility/FlymeAccessibilitySettings;->mRootPreferenceScreen:Landroid/preference/PreferenceScreen;

    iget-object p0, p0, Lcom/meizu/settings/accessibility/FlymeAccessibilitySettings;->mGmsGoogle:Landroid/preference/Preference;

    invoke-virtual {p1, p0}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_11

    .line 785
    :cond_a
    iget-object p1, p0, Lcom/meizu/settings/accessibility/FlymeAccessibilitySettings;->mRootPreferenceScreen:Landroid/preference/PreferenceScreen;

    iget-object p0, p0, Lcom/meizu/settings/accessibility/FlymeAccessibilitySettings;->mGmsGoogle:Landroid/preference/Preference;

    invoke-virtual {p1, p0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :goto_11
    return-void
.end method

.method private updateOtherPreferenceSummary()V
    .registers 4

    .line 428
    iget-object v0, p0, Lcom/meizu/settings/accessibility/FlymeAccessibilitySettings;->mHomeLightSwitchPreference:Lcom/meizu/common/preference/SwitchPreference;

    iget-object p0, p0, Lcom/meizu/settings/accessibility/FlymeAccessibilitySettings;->mContentResolver:Landroid/content/ContentResolver;

    const/4 v1, 0x0

    const-string v2, "light_feedback_enabled"

    invoke-static {p0, v2, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-eqz p0, :cond_e

    const/4 v1, 0x1

    :cond_e
    invoke-virtual {v0, v1}, Lcom/meizu/common/preference/SwitchPreference;->setChecked(Z)V

    return-void
.end method

.method private updatePreference()V
    .registers 1

    .line 423
    invoke-direct {p0}, Lcom/meizu/settings/accessibility/FlymeAccessibilitySettings;->updateOtherPreferenceSummary()V

    .line 424
    invoke-direct {p0}, Lcom/meizu/settings/accessibility/FlymeAccessibilitySettings;->updateForceTouchPreference()V

    return-void
.end method

.method private updateReversePowerProtection()V
    .registers 4

    .line 741
    iget v0, p0, Lcom/meizu/settings/accessibility/FlymeAccessibilitySettings;->mChargeLevel:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 742
    iget-object v1, p0, Lcom/meizu/settings/accessibility/FlymeAccessibilitySettings;->mReversePowerProtection:Landroid/preference/ListPreference;

    invoke-virtual {v1, v0}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 743
    iget-object v0, p0, Lcom/meizu/settings/accessibility/FlymeAccessibilitySettings;->mReversePowerProtection:Landroid/preference/ListPreference;

    invoke-virtual {v0}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/settings/accessibility/FlymeAccessibilitySettings;->mReversePowerProtectionSummary:Ljava/lang/CharSequence;

    .line 744
    iget-object v0, p0, Lcom/meizu/settings/accessibility/FlymeAccessibilitySettings;->mReversePowerProtection:Landroid/preference/ListPreference;

    iget-object v1, p0, Lcom/meizu/settings/accessibility/FlymeAccessibilitySettings;->mReversePowerProtectionSummary:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 745
    iget-object v0, p0, Lcom/meizu/settings/accessibility/FlymeAccessibilitySettings;->mContentResolver:Landroid/content/ContentResolver;

    iget v1, p0, Lcom/meizu/settings/accessibility/FlymeAccessibilitySettings;->mChargeLevel:I

    const-string/jumbo v2, "reverse_charging_limiting_level"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 746
    invoke-direct {p0}, Lcom/meizu/settings/accessibility/FlymeAccessibilitySettings;->isWirelessReverseChargeEnable()Z

    return-void
.end method

.method private warnDataCollection()V
    .registers 4

    .line 583
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/meizu/settings/accessibility/FlymeAccessibilitySettings;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/meizu/settings/accessibility/FlymeAccessibilitySettings;->mResources:Landroid/content/res/Resources;

    const v2, 0x7f1205e6

    .line 584
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 583
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/meizu/settings/accessibility/FlymeAccessibilitySettings;->mResources:Landroid/content/res/Resources;

    const v2, 0x7f1205e5

    .line 585
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1040013

    .line 586
    invoke-virtual {v0, v1, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1040009

    .line 587
    invoke-virtual {v0, v1, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 588
    invoke-direct {p0}, Lcom/meizu/settings/accessibility/FlymeAccessibilitySettings;->createDialogOnCancelListener()Landroid/content/DialogInterface$OnCancelListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 589
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/settings/accessibility/FlymeAccessibilitySettings;->mDataCollectionDialog:Landroid/content/DialogInterface;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 6

    .line 559
    iget-object v0, p0, Lcom/meizu/settings/accessibility/FlymeAccessibilitySettings;->mDataCollectionDialog:Landroid/content/DialogInterface;

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-ne p1, v0, :cond_20

    if-ne p2, v1, :cond_18

    .line 561
    iget-object p1, p0, Lcom/meizu/settings/accessibility/FlymeAccessibilitySettings;->mContentResolver:Landroid/content/ContentResolver;

    const/4 p2, 0x1

    const-string v0, "meizu_data_collection"

    invoke-static {p1, v0, p2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 563
    iget-object p0, p0, Lcom/meizu/settings/accessibility/FlymeAccessibilitySettings;->mDataCollectionSwitch:Lcom/meizu/common/preference/SwitchPreference;

    if-eqz p0, :cond_38

    .line 564
    invoke-virtual {p0, p2}, Lcom/meizu/common/preference/SwitchPreference;->setChecked(Z)V

    goto :goto_38

    .line 567
    :cond_18
    iget-object p0, p0, Lcom/meizu/settings/accessibility/FlymeAccessibilitySettings;->mDataCollectionSwitch:Lcom/meizu/common/preference/SwitchPreference;

    if-eqz p0, :cond_38

    .line 568
    invoke-virtual {p0, v2}, Lcom/meizu/common/preference/SwitchPreference;->setChecked(Z)V

    goto :goto_38

    .line 571
    :cond_20
    iget-object v0, p0, Lcom/meizu/settings/accessibility/FlymeAccessibilitySettings;->mChargeDialog:Landroid/app/Dialog;

    if-ne p1, v0, :cond_38

    if-eqz v0, :cond_29

    .line 572
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    :cond_29
    if-ne p2, v1, :cond_33

    .line 575
    iget-object p0, p0, Lcom/meizu/settings/accessibility/FlymeAccessibilitySettings;->mContentResolver:Landroid/content/ContentResolver;

    const-string p1, "mz_fast_charge"

    invoke-static {p0, p1, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_38

    .line 577
    :cond_33
    iget-object p0, p0, Lcom/meizu/settings/accessibility/FlymeAccessibilitySettings;->mFastCharge:Lcom/meizu/common/preference/SwitchPreference;

    invoke-virtual {p0, v2}, Lcom/meizu/common/preference/SwitchPreference;->setChecked(Z)V

    :cond_38
    :goto_38
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 2

    .line 164
    invoke-super {p0, p1}, Lcom/meizu/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f160095

    .line 165
    invoke-virtual {p0, p1}, Landroid/preference/PreferenceFragment;->addPreferencesFromResource(I)V

    .line 166
    invoke-direct {p0}, Lcom/meizu/settings/accessibility/FlymeAccessibilitySettings;->initData()V

    .line 167
    invoke-direct {p0}, Lcom/meizu/settings/accessibility/FlymeAccessibilitySettings;->initPreference()V

    .line 169
    new-instance p1, Lcom/meizu/settings/innovation/FlymeInnovation;

    invoke-direct {p1, p0}, Lcom/meizu/settings/innovation/FlymeInnovation;-><init>(Lcom/meizu/settings/SettingsPreferenceFragment;)V

    iput-object p1, p0, Lcom/meizu/settings/accessibility/FlymeAccessibilitySettings;->mFlymeInnovation:Lcom/meizu/settings/innovation/FlymeInnovation;

    .line 171
    iget-object p0, p0, Lcom/meizu/settings/accessibility/FlymeAccessibilitySettings;->mEarphonePlugedListenerHelper:Lcom/meizu/settings/utils/EarphonePlugedListenerHelper;

    if-eqz p0, :cond_1d

    .line 172
    invoke-virtual {p0}, Lcom/meizu/settings/utils/EarphonePlugedListenerHelper;->registerEarpodRecevier()V

    :cond_1d
    return-void
.end method

.method public onDestroy()V
    .registers 1

    .line 416
    invoke-super {p0}, Lcom/meizu/settings/SettingsPreferenceFragment;->onDestroy()V

    .line 417
    iget-object p0, p0, Lcom/meizu/settings/accessibility/FlymeAccessibilitySettings;->mEarphonePlugedListenerHelper:Lcom/meizu/settings/utils/EarphonePlugedListenerHelper;

    if-eqz p0, :cond_a

    .line 418
    invoke-virtual {p0}, Lcom/meizu/settings/utils/EarphonePlugedListenerHelper;->unregisterEarpodReceiver()V

    :cond_a
    return-void
.end method

.method public onPause()V
    .registers 2

    .line 410
    invoke-super {p0}, Lcom/meizu/settings/InstrumentedPreferenceFragment;->onPause()V

    .line 411
    iget-object v0, p0, Lcom/meizu/settings/accessibility/FlymeAccessibilitySettings;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/meizu/settings/accessibility/FlymeAccessibilitySettings;->mBatteryInfoReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .registers 5

    const-string v0, "AccessibilitySettings"

    const-string/jumbo v1, "onPreferenceChange:"

    .line 732
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 733
    iget-object v0, p0, Lcom/meizu/settings/accessibility/FlymeAccessibilitySettings;->mReversePowerProtection:Landroid/preference/ListPreference;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1b

    .line 734
    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/meizu/settings/accessibility/FlymeAccessibilitySettings;->mChargeLevel:I

    .line 735
    invoke-direct {p0}, Lcom/meizu/settings/accessibility/FlymeAccessibilitySettings;->updateReversePowerProtection()V

    :cond_1b
    const/4 p0, 0x1

    return p0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .registers 10

    const-string v0, "/sys/class/meizu/wireless/reverse_chg_enable"

    .line 434
    iget-object v1, p0, Lcom/meizu/settings/accessibility/FlymeAccessibilitySettings;->mUsageStatsProxy:Lcom/meizu/settings/datareport/UsageStatsProxy;

    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    const-string v3, "AccessibilitySettings"

    invoke-virtual {v1, v3, v2, p2}, Lcom/meizu/settings/datareport/UsageStatsProxy;->reportData(Ljava/lang/String;Ljava/lang/String;Landroid/preference/Preference;)V

    .line 435
    iget-object v1, p0, Lcom/meizu/settings/accessibility/FlymeAccessibilitySettings;->mHomeLightSwitchPreference:Lcom/meizu/common/preference/SwitchPreference;

    const/4 v2, 0x0

    const/4 v4, 0x1

    if-ne p2, v1, :cond_22

    .line 436
    iget-object p0, p0, Lcom/meizu/settings/accessibility/FlymeAccessibilitySettings;->mContentResolver:Landroid/content/ContentResolver;

    .line 437
    invoke-virtual {v1}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result p1

    if-eqz p1, :cond_1c

    move v2, v4

    :cond_1c
    const-string p1, "light_feedback_enabled"

    .line 436
    invoke-static {p0, p1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return v4

    .line 439
    :cond_22
    iget-object v1, p0, Lcom/meizu/settings/accessibility/FlymeAccessibilitySettings;->mDataCollectionSwitch:Lcom/meizu/common/preference/SwitchPreference;

    if-ne p2, v1, :cond_38

    .line 440
    invoke-virtual {v1}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result p1

    if-eqz p1, :cond_30

    .line 441
    invoke-direct {p0}, Lcom/meizu/settings/accessibility/FlymeAccessibilitySettings;->warnDataCollection()V

    goto :goto_37

    .line 443
    :cond_30
    iget-object p0, p0, Lcom/meizu/settings/accessibility/FlymeAccessibilitySettings;->mContentResolver:Landroid/content/ContentResolver;

    const-string p1, "meizu_data_collection"

    invoke-static {p0, p1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :goto_37
    return v4

    .line 447
    :cond_38
    iget-object v1, p0, Lcom/meizu/settings/accessibility/FlymeAccessibilitySettings;->mSearchPreference:Landroid/preference/Preference;

    if-ne p2, v1, :cond_5e

    .line 448
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const-string p2, "com.meizu.net.search.setting"

    .line 449
    invoke-virtual {p1, p2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 p2, 0x14000000

    .line 450
    invoke-virtual {p1, p2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 452
    :try_start_4b
    invoke-virtual {p0, p1}, Landroid/preference/PreferenceFragment;->startActivity(Landroid/content/Intent;)V

    .line 453
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-static {p1}, Lcom/meizu/settings/utils/MzUtils;->setOpenAnimationToNextPage(Landroid/content/Context;)V

    .line 454
    iput-boolean v4, p0, Lcom/meizu/settings/accessibility/FlymeAccessibilitySettings;->mNeedOverridePending:Z
    :try_end_57
    .catch Landroid/content/ActivityNotFoundException; {:try_start_4b .. :try_end_57} :catch_58

    goto :goto_5d

    :catch_58
    const-string p0, "ActivityNotFoundException for search preference"

    .line 456
    invoke-static {v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_5d
    return v4

    .line 459
    :cond_5e
    iget-object v1, p0, Lcom/meizu/settings/accessibility/FlymeAccessibilitySettings;->mFlymeInnovation:Lcom/meizu/settings/innovation/FlymeInnovation;

    invoke-virtual {v1, p1, p2}, Lcom/meizu/settings/innovation/FlymeInnovation;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v1

    if-eqz v1, :cond_67

    return v4

    .line 461
    :cond_67
    iget-object v1, p0, Lcom/meizu/settings/accessibility/FlymeAccessibilitySettings;->mPalmRejection:Lcom/meizu/common/preference/SwitchPreference;

    if-ne p2, v1, :cond_7a

    .line 462
    iget-object p0, p0, Lcom/meizu/settings/accessibility/FlymeAccessibilitySettings;->mContentResolver:Landroid/content/ContentResolver;

    .line 464
    invoke-virtual {v1}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result p1

    if-eqz p1, :cond_74

    move v2, v4

    :cond_74
    const-string p1, "keyguard_palm_rejection"

    .line 462
    invoke-static {p0, p1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return v4

    .line 466
    :cond_7a
    iget-object v1, p0, Lcom/meizu/settings/accessibility/FlymeAccessibilitySettings;->mFastCharge:Lcom/meizu/common/preference/SwitchPreference;

    if-ne p2, v1, :cond_bb

    .line 467
    invoke-virtual {v1}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v0

    if-nez v0, :cond_b2

    .line 468
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/meizu/settings/accessibility/FlymeAccessibilitySettings;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f120c77

    .line 469
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1040013

    .line 470
    invoke-virtual {v0, v1, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1040009

    .line 471
    invoke-virtual {v0, v1, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 472
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/settings/accessibility/FlymeAccessibilitySettings;->mChargeDialog:Landroid/app/Dialog;

    .line 473
    iget-object v0, p0, Lcom/meizu/settings/accessibility/FlymeAccessibilitySettings;->mChargeDialog:Landroid/app/Dialog;

    new-instance v1, Lcom/meizu/settings/accessibility/FlymeAccessibilitySettings$2;

    invoke-direct {v1, p0}, Lcom/meizu/settings/accessibility/FlymeAccessibilitySettings$2;-><init>(Lcom/meizu/settings/accessibility/FlymeAccessibilitySettings;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    goto/16 :goto_1ef

    .line 480
    :cond_b2
    iget-object v0, p0, Lcom/meizu/settings/accessibility/FlymeAccessibilitySettings;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "mz_fast_charge"

    invoke-static {v0, v1, v4}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_1ef

    .line 482
    :cond_bb
    iget-object v1, p0, Lcom/meizu/settings/accessibility/FlymeAccessibilitySettings;->mEarphoneFeedback:Lcom/meizu/common/preference/SwitchPreference;

    if-ne p2, v1, :cond_f2

    .line 483
    invoke-virtual {v1}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_e0

    .line 484
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/meizu/settings/accessibility/FlymeAccessibilitySettings;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f1207a7

    .line 485
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f1207a6

    .line 486
    invoke-virtual {v0, v1, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 487
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/settings/accessibility/FlymeAccessibilitySettings;->mEarphoneDialog:Landroid/app/Dialog;

    .line 489
    :cond_e0
    iget-object v0, p0, Lcom/meizu/settings/accessibility/FlymeAccessibilitySettings;->mContentResolver:Landroid/content/ContentResolver;

    .line 491
    iget-object v1, p0, Lcom/meizu/settings/accessibility/FlymeAccessibilitySettings;->mEarphoneFeedback:Lcom/meizu/common/preference/SwitchPreference;

    invoke-virtual {v1}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_eb

    move v2, v4

    :cond_eb
    const-string v1, "earphone_feedback"

    .line 489
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_1ef

    .line 492
    :cond_f2
    iget-object v1, p0, Lcom/meizu/settings/accessibility/FlymeAccessibilitySettings;->mHallSwitch:Lcom/meizu/common/preference/SwitchPreference;

    if-ne p2, v1, :cond_115

    .line 493
    invoke-virtual {v1}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v0

    .line 494
    iget-object v1, p0, Lcom/meizu/settings/accessibility/FlymeAccessibilitySettings;->mContentResolver:Landroid/content/ContentResolver;

    if-eqz v0, :cond_ff

    move v2, v4

    :cond_ff
    const-string v0, "hall_switch"

    invoke-static {v1, v0, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 495
    iget-object v0, p0, Lcom/meizu/settings/accessibility/FlymeAccessibilitySettings;->mUsageStatsProxy:Lcom/meizu/settings/datareport/UsageStatsProxy;

    const-class v1, Lcom/meizu/settings/accessibility/FlymeAccessibilitySettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2, p2}, Lcom/meizu/settings/datareport/UsageStatsProxy;->reportData(Ljava/lang/String;Ljava/lang/String;Landroid/preference/Preference;)V

    goto/16 :goto_1ef

    .line 496
    :cond_115
    iget-object v1, p0, Lcom/meizu/settings/accessibility/FlymeAccessibilitySettings;->mGameModePreference:Landroid/preference/Preference;

    const-string v5, "com.flyme.systemuitools"

    if-ne p2, v1, :cond_134

    .line 497
    new-instance p1, Landroid/content/Intent;

    const-string p2, "android.flyme.settings.GAME_MODE_SETTINGS"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 498
    invoke-virtual {p1, v5}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 p2, 0x20000000

    .line 499
    invoke-virtual {p1, p2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 501
    :try_start_12a
    invoke-virtual {p0, p1}, Landroid/preference/PreferenceFragment;->startActivity(Landroid/content/Intent;)V
    :try_end_12d
    .catch Landroid/content/ActivityNotFoundException; {:try_start_12a .. :try_end_12d} :catch_12e

    goto :goto_133

    :catch_12e
    const-string p0, "ActivityNotFoundException for game-mode"

    .line 503
    invoke-static {v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_133
    return v4

    .line 506
    :cond_134
    iget-object v1, p0, Lcom/meizu/settings/accessibility/FlymeAccessibilitySettings;->mDesktopAppRecommendSwitchPreference:Lcom/meizu/common/preference/SwitchPreference;

    if-ne p2, v1, :cond_148

    .line 507
    iget-object v0, p0, Lcom/meizu/settings/accessibility/FlymeAccessibilitySettings;->mContentResolver:Landroid/content/ContentResolver;

    .line 509
    invoke-virtual {v1}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_141

    move v2, v4

    :cond_141
    const-string v1, "desktop_app_recommend"

    .line 507
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_1ef

    .line 510
    :cond_148
    invoke-virtual {p2}, Landroid/preference/Preference;->hasKey()Z

    move-result v1

    if-eqz v1, :cond_173

    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    const-string v6, "drive_mode"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_173

    .line 511
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.flyme.systemuitools.drivemode.settings.DriveModeSettingsActivity"

    invoke-direct {v0, v5, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Landroid/content/Intent;->makeRestartActivityTask(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v0

    .line 513
    invoke-virtual {p0, v0}, Landroid/preference/PreferenceFragment;->startActivity(Landroid/content/Intent;)V

    .line 514
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/meizu/settings/utils/MzUtils;->setOpenAnimationToNextPage(Landroid/content/Context;)V

    .line 515
    iput-boolean v4, p0, Lcom/meizu/settings/accessibility/FlymeAccessibilitySettings;->mNeedOverridePending:Z

    goto/16 :goto_1ef

    .line 516
    :cond_173
    invoke-virtual {p2}, Landroid/preference/Preference;->hasKey()Z

    move-result v1

    if-eqz v1, :cond_199

    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    const-string v5, "gms_google"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_199

    .line 518
    :try_start_185
    sget-object v0, Lcom/meizu/settings/accessibility/FlymeAccessibilitySettings;->gmsIntent:Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/preference/PreferenceFragment;->startActivity(Landroid/content/Intent;)V

    .line 519
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/meizu/settings/utils/MzUtils;->setOpenAnimationToNextPage(Landroid/content/Context;)V

    .line 520
    iput-boolean v4, p0, Lcom/meizu/settings/accessibility/FlymeAccessibilitySettings;->mNeedOverridePending:Z
    :try_end_193
    .catch Landroid/content/ActivityNotFoundException; {:try_start_185 .. :try_end_193} :catch_194

    goto :goto_1ef

    :catch_194
    move-exception v0

    .line 522
    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_1ef

    .line 524
    :cond_199
    iget-object v1, p0, Lcom/meizu/settings/accessibility/FlymeAccessibilitySettings;->mWirelessReverseCharge:Lcom/meizu/common/preference/SwitchPreference;

    if-ne p2, v1, :cond_1d4

    .line 526
    invoke-virtual {v1}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_1ac

    invoke-direct {p0}, Lcom/meizu/settings/accessibility/FlymeAccessibilitySettings;->isWirelessReverseChargeEnable()Z

    move-result v1

    if-eqz v1, :cond_1ac

    const-string v1, "1"

    goto :goto_1ae

    :cond_1ac
    const-string v1, "0"

    .line 532
    :goto_1ae
    :try_start_1ae
    iget-object v2, p0, Lcom/meizu/settings/accessibility/FlymeAccessibilitySettings;->mIDeviceControlService:Lmeizu/os/IDeviceControlService;

    invoke-interface {v2, v0, v1}, Lmeizu/os/IDeviceControlService;->writeNode(Ljava/lang/String;Ljava/lang/String;)I

    .line 533
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "writeNode is : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/meizu/settings/accessibility/FlymeAccessibilitySettings;->mIDeviceControlService:Lmeizu/os/IDeviceControlService;

    invoke-interface {v4, v0, v1}, Lmeizu/os/IDeviceControlService;->writeNode(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1ce
    .catch Landroid/os/RemoteException; {:try_start_1ae .. :try_end_1ce} :catch_1cf

    goto :goto_1ef

    :catch_1cf
    move-exception v0

    .line 535
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1ef

    .line 537
    :cond_1d4
    iget-object v0, p0, Lcom/meizu/settings/accessibility/FlymeAccessibilitySettings;->mGoogleBasicService:Lcom/meizu/common/preference/SwitchPreference;

    if-ne p2, v0, :cond_1ef

    .line 538
    iget-object v1, p0, Lcom/meizu/settings/accessibility/FlymeAccessibilitySettings;->mContentResolver:Landroid/content/ContentResolver;

    invoke-virtual {v0}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1e1

    move v2, v4

    :cond_1e1
    const-string v0, "cn_gms_core"

    invoke-static {v1, v0, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 539
    iget-object v0, p0, Lcom/meizu/settings/accessibility/FlymeAccessibilitySettings;->mGoogleBasicService:Lcom/meizu/common/preference/SwitchPreference;

    invoke-virtual {v0}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/meizu/settings/accessibility/FlymeAccessibilitySettings;->updateGmsGooglePreferenceEnable(Z)V

    .line 542
    :cond_1ef
    :goto_1ef
    invoke-super {p0, p1, p2}, Lcom/meizu/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result p0

    return p0
.end method

.method public onResume()V
    .registers 2

    .line 400
    invoke-super {p0}, Lcom/meizu/settings/SettingsPreferenceFragment;->onResume()V

    .line 401
    invoke-direct {p0}, Lcom/meizu/settings/accessibility/FlymeAccessibilitySettings;->checkIfNeedRemovePreference()V

    .line 402
    invoke-direct {p0}, Lcom/meizu/settings/accessibility/FlymeAccessibilitySettings;->updatePreference()V

    .line 403
    iget-object v0, p0, Lcom/meizu/settings/accessibility/FlymeAccessibilitySettings;->mFlymeInnovation:Lcom/meizu/settings/innovation/FlymeInnovation;

    invoke-virtual {v0}, Lcom/meizu/settings/innovation/FlymeInnovation;->onResume()V

    .line 404
    invoke-direct {p0}, Lcom/meizu/settings/accessibility/FlymeAccessibilitySettings;->registerBatteryReceiver()V

    .line 405
    invoke-direct {p0}, Lcom/meizu/settings/accessibility/FlymeAccessibilitySettings;->updateReversePowerProtection()V

    return-void
.end method

.method public onStart()V
    .registers 3

    .line 290
    invoke-super {p0}, Lcom/meizu/settings/core/lifecycle/ObservablePreferenceFragment;->onStart()V

    .line 291
    iget-object v0, p0, Lcom/meizu/settings/accessibility/FlymeAccessibilitySettings;->mUsageStatsProxy:Lcom/meizu/settings/datareport/UsageStatsProxy;

    const-string v1, "AccessibilitySettings"

    invoke-virtual {v0, v1}, Lcom/meizu/settings/datareport/UsageStatsProxy;->onPageStart(Ljava/lang/String;)V

    .line 293
    iget-boolean v0, p0, Lcom/meizu/settings/accessibility/FlymeAccessibilitySettings;->mNeedOverridePending:Z

    if-eqz v0, :cond_18

    .line 294
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/meizu/settings/utils/MzUtils;->setCloseAnimationToPreviousPage(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 295
    iput-boolean v0, p0, Lcom/meizu/settings/accessibility/FlymeAccessibilitySettings;->mNeedOverridePending:Z

    :cond_18
    return-void
.end method

.method public onStop()V
    .registers 2

    .line 284
    invoke-super {p0}, Lcom/meizu/settings/SettingsPreferenceFragment;->onStop()V

    .line 285
    iget-object p0, p0, Lcom/meizu/settings/accessibility/FlymeAccessibilitySettings;->mUsageStatsProxy:Lcom/meizu/settings/datareport/UsageStatsProxy;

    const-string v0, "AccessibilitySettings"

    invoke-virtual {p0, v0}, Lcom/meizu/settings/datareport/UsageStatsProxy;->onPageStop(Ljava/lang/String;)V

    return-void
.end method
